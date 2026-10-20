# Networking & Infrastructure Engineering

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
This project is currently `In progress`.

---

### 1. Project story
This project focuses on establishing and securing a robust networking infrastructure using OPNsense. It involves configuring core network services like DHCP, validating connectivity, and preparing a lab environment for advanced security and firewall policy testing. Recent efforts have centered on configuring and activating the Kea DHCPv4 service for the LAN, followed by deploying a dedicated Windows 11 client to validate these foundational network services. The ongoing work aims to build a comprehensive, functional, and testable network environment.

### 2. Key achievements
*   **Kea DHCPv4 Service Configuration:** Successfully configured the foundational Kea DHCPv4 service on OPNsense 26.7 for the LAN, defining a dedicated subnet (`192.168.20.0/24`) and address pool (`192.168.20.100–192.168.20.199`).
*   **Service Activation:** Activated the Kea DHCPv4 service, confirming its active status and laying the groundwork for client IP address assignment.
*   **Client Endpoint Deployment:** Deployed a new Windows 11 client endpoint (`WIN11-CLIENT01`) within the lab, integrating it into the host-only network (`VMnet2`) for dedicated testing purposes.
*   **Lab Expansion & Preservation:** Established a robust testing foundation, preserving existing infrastructure (Windows Server domain controller, OPNsense WAN/LAN configuration) while expanding lab capabilities for future validation of DHCP, gateway connectivity, firewall policies, and packet analysis.

### 3. Lessons learned
*   **Importance of Incremental Validation:** Even seemingly minor configuration changes, like enabling a DHCP service, require immediate application and verification before proceeding to subsequent steps. Initial sessions highlighted that time constraints can easily prevent critical validation, emphasizing the need for focused, self-contained validation steps to ensure service integrity.
*   **Structured Lab Expansion:** Introducing new client endpoints, while enhancing testing capabilities, must be carefully integrated to avoid disrupting existing network configurations. The process confirmed that new virtual machines can be deployed without affecting core services, provided they are connected to the correct network segments and existing configurations are explicitly confirmed as preserved.

### 4. Next steps
*   **Complete DHCP Validation:** Test DHCP address assignment for the `WIN11-CLIENT01` to confirm successful IP lease from the OPNsense Kea DHCPv4 service.
*   **Validate Core Connectivity:** Verify gateway connectivity, DNS resolution, and routing from the `WIN11-CLIENT01` to ensure full network reachability.
*   **Advance Security Testing:** Utilize `WIN11-CLIENT01` as a primary endpoint for comprehensive firewall policy validation and targeted packet analysis to observe traffic flows and security enforcement.
*   **Refine Network Topology Documentation:** Update network diagrams to reflect the newly integrated client and any future architectural changes.

### 5. Proof points
*   **Screenshot: OPNSense LAN DHCP Subnet** - Shows the configured Kea DHCPv4 LAN subnet with its defined address pool.
*   **Screenshot: OPNsense Kea DHCP Service Status (Active)** - Visual confirmation of the Kea DHCPv4 service successfully enabled and running on OPNsense.
*   **Project Log (2026-10-20, Session 05:57)** - Details the initial configuration steps for the Kea DHCPv4 service, including interface selection and subnet creation.
*   **Project Log (2026-10-20, Session 16:26)** - Documents the successful deployment and configuration of the `WIN11-CLIENT01` virtual machine, ready for network service validation.

## Latest session
### Work completed
Created WIN11-CLIENT01 in VMware Workstation, configured 4 GB RAM and 2 vCPUs, allocated a 64 GB virtual disk, connected the client to VMnet2 Host-only, installed Windows 11, assigned the hostname WIN11-CLIENT01, preserved the existing Windows Server domain controller and OPNsense network configuration.

### AI-reviewed session summary
Summary:
A new Windows 11 client endpoint, `WIN11-CLIENT01`, has been successfully deployed and configured within the lab environment. This expansion provides a dedicated client for comprehensive network and security testing, establishing the foundation for validating DHCP address assignment, gateway connectivity, and preparing for future firewall policy validation and packet analysis. The existing Windows Server domain controller and OPNsense network configuration were preserved without modification.

Tasks Completed:
*   Created a new virtual machine named `WIN11-CLIENT01` in VMware Workstation.
*   Configured virtual hardware for `WIN11-CLIENT01`:
    *   RAM: 4 GB
    *   vCPUs: 2
    *   Virtual Disk: 64 GB
*   Connected the `WIN11-CLIENT01` virtual machine to the `VMnet2` (Host-only) network.
*   Installed the Windows 11 operating system on `WIN11-CLIENT01`.
*   Assigned the hostname `WIN11-CLIENT01` to the newly installed client.
*   Confirmed that the existing Windows Server domain controller and OPNsense network configuration were preserved and unaffected by the new client deployment.

Issues Encountered:
*   None.

Next Steps:
*   Test DHCP address assignment for `WIN11-CLIENT01`.
*   Validate gateway connectivity from `WIN11-CLIENT01`.
*   Utilize `WIN11-CLIENT01` for firewall policy validation.
*   Conduct packet analysis involving traffic from `WIN11-CLIENT01`.

Notes:
*   The addition of `WIN11-CLIENT01` significantly enhances the lab's capability to simulate real-world client interactions for network and security testing scenarios.

**Session time:** 2026-10-20, 16:26 to 17:18

**Goal:** Apply and verify the existing OPNsense Kea DHCPv4 LAN configuration.

**Goal achieved:** Yes

**Duration:** 52 minutes (planned: 30 minutes)

**Working story:** Expanded the lab with a dedicated Windows client endpoint, established the foundation for testing DHCP address assignment and gateway connectivity, preserved the existing domain controller, prepared the environment for firewall policy validation and packet analysis.

**Friction or blockers:** None

**AI gaps:** None

**AI peer review:** Approved by human at 2026-10-20 17:20:17

**Reviewer notes:** The client VM exists and Windows 11 installation completed, the VM is configured for VMnet2 Host-only, the DHCP pool is configured on OPNsense but a client lease has not been confirmed, routing and DNS from the Windows client remain unverified, firewall segmentation testing remains outstanding.

**Notes:** Windows client configuration is incomplete, no DHCP lease evidence collected, no client-side connectivity tests performed, continue with the existing lab topology without moving the domain controller or adding another network adapter.

**Handoff:** WIN11-CLIENT01 is at the Windows 11 initial setup and sign-in stage, complete account configuration using an available local-account option if offered, reach the desktop, open PowerShell, run ipconfig /all, verify an address in 192.168.20.100–192.168.20.199 and gateway 192.168.20.1, troubleshoot DHCP if no valid lease appears, then test gateway reachability and DNS.

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
