# Networking & Infrastructure Engineering

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
Networking-Infrastructure-Engineering is currently in progress, with progress and evidence captured in the project logs and screenshots. The work centers on delivering practical outcomes, documenting the engineering process, and making progress easy to review. Key lessons include keeping documentation close to delivery, recording proof as work progresses, and making handoff notes explicit.

## Latest session
### Work completed
Configured OPNsense Kea DHCPv4 for the LAN subnet 192.168.20.0/24, configured the DHCP pool 192.168.20.100–192.168.20.199, connected the Windows 11 client WIN11-CLIENT01 to VMnet2, verified its assigned address 192.168.20.165, verified gateway connectivity to 192.168.20.1, verified external connectivity with ping 1.1.1.1, verified public DNS resolution with nslookup example.com, verified HTTPS connectivity with Test-NetConnection example.com -Port 443, reviewed the default IPv4 and IPv6 LAN firewall pass rules.

### AI-reviewed session summary
Summary:
The Windows 11 client is receiving a DHCP lease from OPNsense, can reach the LAN gateway, resolve public DNS names, reach the internet by IP, and establish an HTTPS connection.

Tasks Completed:
Configured OPNsense Kea DHCPv4 for LAN subnet, configured DHCP address pool, connected Windows 11 client to VMnet2, verified DHCP lease assignment, verified LAN gateway connectivity, validated external IP connectivity, verified public DNS resolution, validated outbound HTTPS connectivity, reviewed default IPv4 and IPv6 LAN firewall rules, identified default allow rules requiring segmentation testing

Issues Encountered:
DHCP configuration verification required multiple checks, distinguishing automatically generated firewall rules from editable interface rules, default LAN rules allow broad traffic and do not yet demonstrate segmentation, Windows 11 client setup added time to the session

Next Steps:
Validate controlled firewall behavior on the OPNsense LAN, begin testing permitted and blocked traffic from WIN11-CLIENT01

Notes:

**Session time:** 2026-10-22, 05:05 to 05:36

**Goal:** Complete Windows 11 initial setup on WIN11-CLIENT01, verify that OPNsense assigns a valid DHCP lease, test gateway connectivity if time permits.

**Goal achieved:** Yes

**Duration:** 31 minutes (planned: 30 minutes)

**Working story:** Implemented and validated a virtual firewall LAN, configured DHCP address assignment, verified gateway reachability, validated external IP connectivity and public DNS resolution, confirmed outbound HTTPS connectivity, identified default firewall permissions that require further testing.

**Friction or blockers:** Distinguishing automatically generated firewall rules from editable interface rules, understanding how VMware virtual networks connect to OPNsense interfaces, confirming the client received its configuration from the intended DHCP server.

**AI gaps:** None

**AI peer review:** Approved by human at 2026-10-22 05:39:24

**Reviewer notes:** The Windows 11 client has successfully obtained a DHCP lease on the isolated LAN. Connectivity tests passed, but firewall segmentation and deny-rule behavior remain unverified.

**Notes:** Client hostname WIN11-CLIENT01, client LAN address 192.168.20.165/24, DHCP server and DNS server 192.168.20.1, default gateway 192.168.20.1, OPNsense WAN 192.168.148.129 on VMnet8, domain controller NS-DC01 at 192.168.148.10 remains on VMnet8. Preserve the existing domain controller network placement.

**Handoff:** At OPNsense Firewall → Rules, with the default LAN IPv4 and IPv6 pass rules visible. The next session should focus on creating and validating a controlled firewall rule for the intended segmentation test. Do not remove the existing rules until the replacement behavior and management access are planned. The Windows 11 client is ready for further testing.

<!-- autodoc:project-snapshot:end -->

## Project Overview

Build and validate an enterprise-style virtual network that provides the networking and infrastructure foundation for subsequent Linux administration, centralized logging, and detection engineering projects.

The project covers network architecture and subnetting, routing and network services, firewall enforcement and zone segmentation, traffic analysis and security monitoring, enterprise services, PowerShell validation and automation, controlled failure testing, troubleshooting, and reproducible engineering documentation.

## Target Network Zones

Management, Enterprise LAN, DMZ, Security/Logging.

## Project Status

Planning and repository setup complete, infrastructure implementation not yet started.

## Documentation

AutoDoc session records are maintained in `logs/`, supporting documentation in `docs/`, and screenshots in `screenshots/`.

---


Initialized with AutoDoc.
