#!/bin/bash
domain="$domain_name"
curl -X PATCH https://api.godaddy.com/v1/domains/"$domain"/records -H 'Authorization: sso-key e42ndEgx5BPX_ushGJAT6p5mhyLWL8DQwL:uspmuywEmfzoB9rXqinHY' -H 'Content-Type: application/json' --data '[{"type": "A","name": "'"$subdomain_name"'","data": "'"$subdomain_ip"'","ttl": 3600}]'
