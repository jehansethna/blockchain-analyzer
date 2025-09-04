"""
The main module, starts up the flask server
"""

from lib import utils

from lib.constants import HEALTHZ
from lib.infura import get_balance

from flask import Flask, jsonify
from flask_healthz import healthz, HealthError


log = utils.setup_logger("blockexplorer")


app = Flask(__name__)
app.register_blueprint(healthz, url_prefix="/healthz", no_log=True)
app.config.update(HEALTHZ=HEALTHZ)

@app.route("/")
@app.route("/address/balance/<eth_address>", methods=["GET"])
def process_address(eth_address: str):
    """
    Checks for the balance of a given eth address
    """
    if not utils.validate_eth_address(eth_address):
        log.info("address has invalid syntax, address: %s submitted", eth_address)
        return jsonify({"error": "invalid address syntax"})

    key = eth_address + "_balance"

    balance = get_balance(eth_address)

    log.debug("returning value for address %s", eth_address)
    return jsonify({"balance": balance})


def liveness():
    pass

def readiness():
    pass


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
