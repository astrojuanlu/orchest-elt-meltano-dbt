#!/bin/bash

sudo apt update && sudo -E apt install -y --no-install-recommends build-essential libpq-dev git

pip install -r requirements.txt

