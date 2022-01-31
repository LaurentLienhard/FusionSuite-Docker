#!/bin/bash

apt-get update
apt-get install virtualenv git -y 
git clone https://github.com/fusionSuite/documentation.git
cd documentation
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
mkdocs serve
