#!/bin/bash
docker() { if [[ $@ == "ps" || $@ == "ps -a" ]]; then command docker "$@" -s --format nContainert{{.Names}}[{{.ID}}]nImagett{{.Image}}nStatustt{{.Status}}nSizett{{.Size}}nPortstt{{.Ports}}; else command docker "$@"; fi; }
