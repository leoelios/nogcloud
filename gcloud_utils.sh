#!/bin/bash

function gcloud_not_signed() {
    auth_list_output=$(gcloud auth list 2>&1)

    if [[ $auth_list_output == *"ACTIVE"* ]]; then
        return 1;
    else
        return 0;
    fi
}

function gcloud_command_not_exists() {
    if command -v "gcloud" >/dev/null 2>&1; then
        return 1;
    else
        return 0;
    fi
}

function gcloud_get_external_ip() {
    EXTERNAL_IP=$(curl -s -H "Metadata-Flavor: Google" http://metadata.google.internal/computeMetadata/v1/instance/network-interfaces/0/access-configs/0/external-ip)

    if [ -n "$EXTERNAL_IP" ]; then
        echo "$EXTERNAL_IP"
        return 1
    else
        echo "Failed to retrieve external IP address from Metadata Server."
        return -1
    fi
}