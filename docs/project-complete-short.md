# Networking-Infrastructure-Engineering

Status: In progress

## Project story
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

## What we shipped
- The project was completed with a clear objective, technical execution, and proof captured in the logs.
- The implementation and project records are documented in the repository for future context.
- The work can be reviewed quickly by anyone familiar with the project.

## Key proof moments
### Highlight: Opnsense Kea Dhcp Service Status Active
![Opnsense Kea Dhcp Service Status Active](../screenshots/2026-10-20_163430_opnsense-kea-dhcp-service-status-active.png)
This screenshot shows the working interface or project state that is currently being shaped to communicate the latest status, progress, and story. It highlights the key detail the viewer should notice in this stage of the project.
### Highlight: Activity_2026 10 11_142320
![Activity_2026 10 11_142320](../screenshots/activity_2026-10-11_142320.jpg)
This screenshot captures the most important project evidence for the current phase, showing the main state, artifact, or operational view being reviewed. It highlights the key detail the viewer should notice in this stage of the project.
### Highlight: Activity_2026 10 11_140856
![Activity_2026 10 11_140856](../screenshots/activity_2026-10-11_140856.jpg)
This screenshot captures the most important project evidence for the current phase, showing the main state, artifact, or operational view being reviewed. It highlights the key detail the viewer should notice in this stage of the project.


## Lessons learned
- Keep documentation close to delivery.
- Use screenshots as proof points.
- Write the project story in plain language for future reviewers.

## Next steps
- Continue from the handoff notes and current project status.
- Capture final cleanup or deployment follow-up items as they are completed.
