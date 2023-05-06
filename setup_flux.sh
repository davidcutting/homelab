#!/bin/bash

flux bootstrap github \
    --owner=davidcutting \
    --repository=homelab \
    --branch=master \
    --path=clusters/blackhole --personal