# IP Addressing Plan

## Network Overview

The lab uses VMware virtual networks and OPNsense to provide routing and firewall capabilities across the WAN, LAN, and SERVERS interfaces.

| Network | VMware Network | Subnet | Gateway / Interface IP | Purpose |
|---|---|---|---|---|
| WAN | VMnet8 (NAT) | `192.168.148.0/24` | `192.168.148.129` (DHCP) | Upstream connectivity |
| LAN | VMnet2 (Host-only) | `192.168.20.0/24` | `192.168.20.1` | Client network |
| SERVERS | VMnet1 (Host-only) | `192.168.10.0/24` | `192.168.10.1` | Additional lab subnet |

## Endpoint Addressing

| Endpoint | Network | Addressing | Observed IP | Role |
|---|---|---|---|---|
| WIN11-CLIENT01 | LAN | DHCP | `192.168.20.165` (previously observed) | Windows test client |
| WIN11-CLIENT01 | SERVERS | DHCP | `192.168.10.128` (observed during testing) | Temporary firewall test endpoint |
| NS-DC01 | VMnet8 | Static | `192.168.148.10` | Windows Server, Active Directory and DNS |

The Windows client was moved between LAN and SERVERS for testing. The observed client addresses represent different test configurations, not simultaneous connections.

## DHCP

- LAN DHCP is provided by OPNsense using Kea DHCPv4.
- LAN DHCP pool: `192.168.20.100–192.168.20.199`.
- The SERVERS test client received `192.168.10.128`; its DHCP configuration was observed during testing.

## Scope and Limitations

The SERVERS subnet and OPNsense interface were configured, and gateway reachability was demonstrated during testing. Complete inter-subnet isolation has not been established by the available test evidence.

The existing domain controller remains on VMnet8. Its network placement was preserved to avoid disrupting existing Active Directory and DNS services.