# Firewall Policy Summary

## Firewall Platform

- Firewall: OPNsense 26.7
- WAN interface: `em0` — VMnet8 NAT
- LAN interface: `em1` — VMnet2 Host-only
- SERVERS interface: `em2` — VMnet1 Host-only

## Baseline Policy

| Interface | Observed Policy | Purpose / Effect |
|---|---|---|
| LAN | Default IPv4 allow rule from LAN net to any | Permits broad outbound traffic from LAN |
| LAN | Default IPv6 allow rule | Permits IPv6 traffic according to the configured rule |
| SERVERS | Interface configured as `192.168.10.1/24` | Provides a gateway for the additional subnet |

The LAN baseline includes a broad allow rule. Therefore, the current configuration should not be described as a restrictive, production-ready segmentation policy.

## Firewall Enforcement Test

A temporary rule was used to block ICMP traffic from `192.168.20.165` to `1.1.1.1`. During the test, ping failed while HTTPS connectivity and DNS resolution remained functional. Firewall logs recorded the blocked traffic.

A second temporary rule blocked ICMP traffic from `192.168.10.128` to the SERVERS gateway `192.168.10.1`. The block was observed in the firewall log.

## Cleanup Status

The temporary SERVERS block rule was deleted from the visible rules list. Successful restoration of gateway connectivity after removal was not confirmed.

Do not treat the temporary test rules as permanent security policy. Confirm the final applied configuration before describing the firewall as restored.

## Limitations

The available evidence demonstrates specific firewall rule enforcement, but does not establish complete isolation between LAN and SERVERS or a hardened, least-privilege firewall configuration.