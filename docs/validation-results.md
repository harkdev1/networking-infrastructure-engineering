# Network Validation Results

## LAN Connectivity

**Test endpoint:** WIN11-CLIENT01  
**Client IPv4:** `192.168.20.165`  
**Default gateway:** `192.168.20.1`  
**DNS server:** `192.168.20.1`

| Test | Result | Status |
|---|---|---|
| Ping OPNsense LAN gateway | 2/2 replies | PASS |
| Ping public IP `1.1.1.1` | 2/2 replies | PASS |
| Resolve `example.com` | DNS A and AAAA records returned | PASS |
| HTTPS to `example.com:443` | `TcpTestSucceeded: True` | PASS |

## Interpretation

The Windows client successfully reached the OPNsense LAN gateway, reached a public IP address, resolved a public DNS name, and established a TCP connection to an HTTPS endpoint.

These results confirm basic LAN connectivity and outbound access during this test. They do not independently prove complete isolation between LAN and SERVERS.

**Evidence:** ![LAN validation results](../screenshots/2026-10-25_181025_lan-validation.png)