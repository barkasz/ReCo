#!/bin/bash

ssh -f -R 40000:localhost:22 tunneler@152.66.246.223 -p42222 "sleep 10"
