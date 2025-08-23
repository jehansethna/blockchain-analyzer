"""
A module to handle calls to Infura
"""

import os
import requests

from lib import utils

log = utils.setup_logger("infura")


def get_balance(address: str) -> int:
    """
    A function that gets the current balance of an ethereum address from infura.io
    Takes an eth address as a string and returns balance as an int.
    """
    api_key = os.environ["INFURA_API_KEY"]
    url = f"https://mainnet.infura.io/v3/{api_key}"
    headers = {"Content-Type": "application/json"}

    json_data = {
        "jsonrpc": "2.0",
        "method": "eth_getBalance",
        "params": [
            address,
            "latest",
        ],
        "id": 1,
    }

    response = requests.post(url, headers=headers, json=json_data)

    log.debug("response status code %s", response.status_code)
    log.debug("response content is %s", response.json())

    if response.status_code != 200:
        log.error("Response code was unsuccessful")
        return 0

    hex_amount = response.json()["result"]
    wei_amount = int(hex_amount, base=16)
    eth_amount = wei_amount / 1_000_000_000_000_000_000
    log.debug("eth_amount is %s", eth_amount)
    return eth_amount
