"""
A module for utility functions
"""

import os
import re

import logging


def setup_logger(name: str) -> logging.Logger:
    """
    A function to setup a logger.
    Takes a module name as input and outputs a logger object.
    """
    logger = logging.getLogger(name)
    if os.getenv("DEBUG"):
        logger.setLevel(level=logging.DEBUG)
    else:
        logger.setLevel(level=logging.INFO)
    formatter = logging.Formatter("%(asctime)s:%(levelname)s:%(module)s:%(message)s")
    streamhandler = logging.StreamHandler()
    streamhandler.setFormatter(formatter)
    logger.addHandler(streamhandler)
    logger.propogate = False
    return logger


def validate_eth_address(address: str) -> bool:
    """
    A function that checks if a given ethereum address is correctly formatted.
    Takes a string as input and returns boolean.
    """

    pattern = r"0x[0-9A-F]{40}$"

    return bool(re.match(pattern, address, flags=re.I))

