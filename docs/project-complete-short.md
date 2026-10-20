# Networking-Infrastructure-Engineering

Status: In progress

## Project story
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

## What we shipped
- The project was completed with a clear objective, technical execution, and proof captured in the logs.
- The implementation and project records are documented in the repository for future context.
- The work can be reviewed quickly by anyone familiar with the project.

## Key proof moments
### Highlight: Activity_2026 10 11_142320
![Activity_2026 10 11_142320](../screenshots/activity_2026-10-11_142320.jpg)
This screenshot captures the most important project evidence for the current phase, showing the main state, artifact, or operational view being reviewed. It highlights the key detail the viewer should notice in this stage of the project.
### Highlight: Activity_2026 10 11_140856
![Activity_2026 10 11_140856](../screenshots/activity_2026-10-11_140856.jpg)
This screenshot captures the most important project evidence for the current phase, showing the main state, artifact, or operational view being reviewed. It highlights the key detail the viewer should notice in this stage of the project.
### Highlight: OPNSense LAN DHCP Subnet
![OPNSense LAN DHCP Subnet](../screenshots/2026-10-20_060316_opnsense-lan-dhcp-subnet.png)
This screenshot captures the most important project evidence for the current phase, showing the main state, artifact, or operational view being reviewed. It highlights the key detail the viewer should notice in this stage of the project.


## Lessons learned
- Keep documentation close to delivery.
- Use screenshots as proof points.
- Write the project story in plain language for future reviewers.

## Next steps
- Continue from the handoff notes and current project status.
- Capture final cleanup or deployment follow-up items as they are completed.
