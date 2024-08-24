#!/bin/bash

ab -t 30 -p user-payload.json -T application/json http://127.0.0.1:8080/api/users