# Networking & Infrastructure Engineering

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
This 'Networking-Infrastructure-Engineering' project is actively building out a robust virtualized network environment using OPNsense 26.7. The initial phase successfully established foundational management connectivity by resolving critical IP address conflicts, restoring HTTPS access to the firewall from the host. Building on this, the current focus is on configuring essential network services, specifically laying the groundwork for dynamic IP address management on the LAN segment using Kea DHCPv4. The project is progressing through systematic configuration and validation to ensure a stable and functional core network infrastructure.

### 1. Project story

This project entails the design and implementation of a virtualized network infrastructure centered around OPNsense 26.7. It commenced with establishing a stable management plane, which involved critical troubleshooting to resolve an IP address conflict preventing HTTPS access to the firewall. With management access secured, the current phase is dedicated to configuring core network services. This includes the initial setup of the Kea DHCPv4 service to manage IP address assignments within the isolated LAN environment, ensuring a structured and functional network foundation is in place. The project is actively moving towards client connectivity validation and further service integration.

### 2. Key achievements

*   **Critical IP Conflict Resolution:** Successfully identified and resolved an IP address conflict between the OPNsense LAN interface (192.168.20.1/24) and the VMware VMnet2 host-only adapter, reconfiguring the host to 192.168.20.2/24.
*   **Restored Management Access:** Verified and restored reliable HTTPS management access to the OPNsense firewall from the physical host on port 443.
*   **Core Network Configuration Verification:** Confirmed OPNsense interface assignments (WAN: `em0`@`192.168.148.129/24`, LAN: `em1`@`192.168.20.1/24`) and validated internal routing tables.
*   **DHCP Service Initial Setup:** Performed foundational configuration of the Kea DHCPv4 service on OPNsense, selecting the LAN interface and defining an address pool (192.168.20.100–192.168.20.199) for the 192.168.20.0/24 LAN subnet.

### 3. Lessons learned

*   **Prioritize Foundational Connectivity:** Establishing and thoroughly validating management connectivity is paramount before proceeding with advanced service configurations. Unresolved conflicts at this layer can block subsequent progress.
*   **Systematic Troubleshooting is Key:** When facing connectivity issues in virtualized environments, a methodical approach is essential to distinguish between host-level network configuration problems and guest (firewall) service configuration issues.
*   **Incremental Configuration and Validation:** For complex network services like DHCP, configure settings incrementally and plan for immediate validation of operational status. Delaying validation can complicate debugging when issues arise.
*   **Document Initial State:** Recording existing, even incomplete, configurations before making changes provides a valuable baseline for troubleshooting and understanding the environment's evolution.

### 4. Next steps

*   Apply the configured Kea DHCPv4 settings on OPNsense and validate the service's operational status by testing client IP address assignments on the LAN.
*   Connect a Windows client to the isolated VMnet2 lab network, then validate DHCP addressing, default gateway assignment, and test LAN gateway reachability, including DNS configuration.
*   Record DNS configuration and identify any remaining client connectivity issues.

### 5. Proof points

*   OPNSense LAN DHCP Subnet
*   WAN DHCP Success
*   WAN Default Route Validated
*   Network Topology Plan (Current)
*   WAN External Connectivity
*   WAN DNS Resolution
*   VMware DHCP Investigation
*   OPNsense Live Boot

## Latest session
### Work completed
Accessed the OPNsense 26.7 web interface through the host-only LAN network, verified the LAN interface at 192.168.20.1/24 and host adapter at 192.168.20.2/24, inspected Kea DHCPv4 settings and confirmed the service was initially disabled with no interface selected, inspected the subnet configuration and found zero existing subnet entries, created a LAN subnet entry for 192.168.20.0/24 with the address pool 192.168.20.100–192.168.20.199, selected LAN as the Kea DHCPv4 service interface, checked the service Enabled option.

### AI-reviewed session summary
Summary:
Initial configuration of the Kea DHCPv4 service on OPNsense 26.7 was performed, including verification of network interfaces and creation of a DHCP subnet with an address pool for the LAN network.

Tasks Completed:
1.  Accessed the OPNsense 26.7 web interface through the host-only LAN network.
2.  Verified the LAN interface (192.168.20.1/24) and host adapter (192.168.20.2/24) network configurations.
3.  Inspected Kea DHCPv4 settings, confirming the service was initially disabled with no interface selected.
4.  Inspected subnet configuration, finding zero existing subnet entries.
5.  Created a LAN subnet entry for 192.168.20.0/24 with the address pool 192.168.20.100–192.168.20.199.
6.  Selected the LAN interface for the Kea DHCPv4 service.
7.  Checked the service 'Enabled' option for Kea DHCPv4.

Issues Encountered:
1.  The existing DHCP configuration was incomplete upon inspection.
2.  Required identification of the correct Kea DHCPv4 settings and subnet configuration pages within the OPNsense interface.
3.  Limited session time prevented applying the configuration and validating service operation.

Next Steps:
1.  Apply the configured Kea DHCPv4 settings.
2.  Validate the operation of the DHCPv4 service on the LAN interface by testing client IP address assignments.

Notes:
The work focused on the foundational setup of Kea DHCPv4 to provide IP addresses within the 192.168.20.0/24 network segment. The host-only network configuration was essential for initial access and verification.

**Session time:** 2026-10-20, 05:57 to 06:07

**Goal:** Verify the existing OPNsense LAN DHCP configuration and record its current state.

**Goal achieved:** No

**Duration:** 10 minutes (planned: 20 minutes)

**Working story:** None

**Friction or blockers:** Existing DHCP configuration was incomplete, the correct Kea DHCPv4 settings and subnet pages needed to be identified, limited session time prevented applying the configuration and validating service operation.

**AI gaps:** None

**AI peer review:** Approved by human at 2026-10-20 06:08:27

**Reviewer notes:** The OPNsense WAN interface remains em0 at 192.168.148.129/24, the LAN interface remains em1 at 192.168.20.1/24, the physical Windows host's VMnet2 adapter is 192.168.20.2/24, VMnet2 remains host-only on 192.168.20.0/24. The Kea DHCPv4 subnet entry was created with pool 192.168.20.100–192.168.20.199. The latest screenshot shows LAN selected and the main service Enabled checkbox checked, but the Apply button is still present. Application of these service settings and successful DHCP operation are not yet verified.

**Notes:** None.

**Handoff:** On Services → Kea DHCP → Kea DHCPv4 → Settings, LAN is selected and the main service Enabled checkbox is checked. The next step is to click Apply, confirm whether OPNsense accepts the configuration and starts the service, inspect any validation errors, then verify the subnet entry persists and confirm DHCP operation before proceeding to client testing. Do not claim a successful lease until a client actually obtains one.

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
