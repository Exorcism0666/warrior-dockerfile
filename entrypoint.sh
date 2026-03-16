#!/usr/bin/env bash

set -euo pipefail

export ATEAM_DNS_IPv4="$(sudo python3 /get_random_ipv4.py)"
(while true; do sudo dnsmasq -k --listen-address="${ATEAM_DNS_IPv4}" -C /etc/dnsmasq.conf || true; sleep 1; done) &
cd /home/warrior
exec python start.py

