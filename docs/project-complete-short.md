# Networking-Infrastructure-Engineering

Status: In progress

## Project story
This project is an ongoing initiative to design, implement, and validate a secure and scalable virtual network infrastructure using OPNsense.

---

### 1. Project story

The 'Networking-Infrastructure-Engineering' project is systematically building out a robust virtualized network environment, centralizing control and security through OPNsense. Initial efforts focused on establishing foundational network services, including configuring WAN and LAN interfaces, dynamic IP address allocation (DHCP), and DNS resolution. We successfully integrated a Windows 11 client, verifying its ability to obtain a DHCP lease, reach the LAN gateway, resolve public DNS, and establish outbound internet connectivity.

A critical phase involved validating the OPNsense firewall's enforcement capabilities. We successfully demonstrated rule enforcement by implementing and logging temporary ICMP blocks, confirming expected traffic behavior. The network topology is currently expanding, with a new virtual network adapter assigned for a future 'SERVERS' interface, laying the groundwork for further segmentation and service deployment. The project emphasizes thorough verification at each step, albeit acknowledging areas for process optimization.

### 2. Key achievements

*   **Core Network Services Established:** Configured OPNsense with functional WAN and LAN interfaces, validated Kea DHCPv4 service, and ensured public DNS resolution.
*   **Client Integration and Connectivity:** Successfully installed and configured a Windows 11 client (WIN11-CLIENT01), verifying its DHCP lease acquisition, LAN gateway reachability, and outbound HTTPS connectivity.
*   **Firewall Enforcement Validated:** Demonstrated OPNsense's ability to enforce firewall rules through controlled ICMP blocking tests, with associated log evidence confirming traffic control.
*   **Network Topology Expansion:** Added a third virtual network adapter and assigned it within OPNsense as a dedicated 'SERVERS' interface with a static IP, preparing for future network segmentation.

### 3. Lessons learned

*   **Refining Verification Workflows:** Identifying the need for a more efficient, milestone-based validation approach to avoid redundant checks and ensure steady progress. Repeated verification steps consumed more time than anticipated.
*   **Navigating Platform Nuances:** Gained practical experience in distinguishing automatically generated OPNsense firewall rules from configurable interface rules, and understanding the interplay between VMware virtual networks and OPNsense interface assignments.
*   **Streamlining Troubleshooting:** Encountered challenges with interface detection and mapping within OPNsense and VMware, highlighting the importance of direct console troubleshooting and methodical configuration checks.

### 4. Next steps

*   Validate controlled firewall behavior on the OPNsense LAN, specifically testing permitted and blocked traffic from WIN11-CLIENT01.
*   Implement segmentation policies across established interfaces to secure and isolate network segments.
*   Adopt and apply a more efficient, milestone-based validation approach for future tasks to streamline progress and minimize redundant checks.

### 5. Proof points

*   WIN11-CLIENT Installation Complete
*   Win11 Client01 Single LAN DHCP Verified
*   Win11 Client01 Outbound Connectivity Test
*   OPNSense LAN Firewall Rules Baseline
*   OPNsense ICMP Block Log Evidence
*   OPNsense Firewall Test Results
*   OPNSense LAN DHCP Subnet
*   OPNsense Kea DHCP Service Status (Active)
*   WAN DHCP Success
*   WAN Default Route Validated

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
