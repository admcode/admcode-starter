#!/bin/bash

# Show the new random APP_KEY
echo `php -r "echo md5(uniqid()).\"\n\";"`;