#!/bin/bash

nc -l 19000 | ffplay -fflags nobuffer -
