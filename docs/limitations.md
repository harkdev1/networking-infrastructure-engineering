# Known Limitations and Future Work

## Current Limitations

- The LAN baseline contains a broad IPv4 allow rule.
- Complete isolation between LAN and SERVERS has not been demonstrated.
- Restoration of SERVERS gateway connectivity after deleting the temporary ICMP block rule was not confirmed.
- The SERVERS subnet was tested using the existing Windows client, temporarily moved from LAN; a dedicated SERVERS endpoint was not deployed.
- Advanced IDS/IPS tuning, VLAN trunks, multiple security zones, and complex automation are outside the current MVP scope.
- The current validation evidence covers selected connectivity and firewall tests rather than comprehensive security testing.

## Future Improvements

1. Confirm the final applied SERVERS rules and gateway connectivity.
2. Add explicit allow/deny policies based on least privilege.
3. Test permitted and denied traffic between LAN and SERVERS.
4. Add a repeatable PowerShell validation script.
5. Expand packet capture and firewall log evidence.
6. Integrate network telemetry into the broader CyberOps Sandbox.

## Project Boundary

This project establishes foundational networking and firewall capabilities for the CyberOps Sandbox. It is not intended to represent a fully hardened enterprise network or a production-ready security architecture.