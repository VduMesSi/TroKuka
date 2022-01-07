#!/bin/sh

# config trojan
cat << EOF > /etc/trojan-go/config.json
{
    "password": [
        "$PASSWORD"
    ],
    "websocket": {
        "enabled": true,
        "path": "/otakaoky",
        "host": ""
    }
}
EOF

# run trojan
/usr/local/bin/trojan-go -config /etc/trojan-go/config.json
