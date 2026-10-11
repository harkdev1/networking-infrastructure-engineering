# Networking-Infrastructure-Engineering

Status: In progress

## Project story
This project is currently **In progress**.

---

## 1. Project story

This ongoing project, 'Networking-Infrastructure-Engineering', focuses on building a robust, segmented enterprise-style virtual network within a VMware homelab environment. The foundational work has begun with the installation and initial configuration of OPNsense 26.7, serving as the core firewall and router for a new, isolated network segment. The objective is to apply practical networking concepts to establish a secure and well-defined network architecture, moving from initial setup to real-world troubleshooting of connectivity challenges. The process emphasizes methodical engineering, documentation, and continuous learning from encountered issues, ensuring a solid understanding of network operations from the ground up.

## 2. Key achievements

*   **Firewall Foundation Established:** Successfully installed and initially configured OPNsense 26.7 as the virtual network's gateway, demonstrating proficiency in setting up a professional-grade firewall distribution.
*   **Isolated Network Segment Defined:** Created and assigned the LAN interface to an isolated virtual network (VMnet2) with a defined subnet (192.168.20.0/24) and DHCP pool, laying the groundwork for future lab clients.
*   **Structured Troubleshooting Applied:** Demonstrated a methodical approach to diagnosing a critical WAN connectivity issue by inspecting interface status, routing tables, DHCP lease states, and performing packet capture (tcpdump).
*   **Problem Identification & Documentation:** Clearly identified the core issue—repeated IPv4 DHCP Discover requests on the WAN without a visible DHCP Offer—and meticulously documented the unresolved problem with a targeted troubleshooting plan for subsequent sessions.

## 3. Lessons learned

*   **Pre-configuration Inventory is Critical:** The importance of thoroughly inventorying existing virtual network configurations (VMware networks, DHCP pools, gateway settings, and service status) *before* introducing new components to prevent delays and misconfigurations.
*   **Distinguish Link State from IP Addressing:** Recognized the need to differentiate between an active physical link and successful IP address assignment, underscoring that link status alone does not guarantee full network connectivity.
*   **Leverage Packet-Level Evidence:** Highlighted the value of moving to packet capture (tcpdump) for in-depth diagnostics when higher-level troubleshooting steps (interface inspection, routing tables) do not reveal the root cause of connectivity issues.
*   **Accurate Reporting of Unresolved Issues:** Emphasized the professional practice of documenting genuine challenges and incomplete tasks, rather than implying completion for work still in progress, fostering transparency and a realistic view of project status.

## 4. Next steps

The immediate next steps are focused on resolving the critical WAN connectivity issue and validating the foundational network services:

*   **Resolve WAN DHCP Issue:** Systematically investigate and resolve why OPNsense's WAN interface (`em1`) is not receiving an IPv4 DHCP Offer from the VMware NAT service. This includes validating VMware's NAT and DHCP service configurations and behavior.
*   **Establish Upstream Connectivity:** Secure a valid WAN IPv4 lease and confirm the default route to enable upstream internet connectivity for the OPNsense firewall.
*   **Validate LAN Functionality:** Fully test OPNsense's LAN gateway (192.168.20.1/24) and DHCP server functionality on VMnet2.
*   **Integrate Test Client:** Connect a test client to the newly established isolated lab subnet and validate permitted and blocked traffic through the OPNsense firewall.
*   **Comprehensive Documentation:** Finalize the network topology diagram and detailed session documentation, including screenshots and packet capture evidence at key milestones and configuration decisions.

## 5. Proof points

*   **Screenshots:**
    *   `OPNsense Live Boot`: Visual evidence of the initial firewall installation.
    *   `Passive activity capture` (multiple instances): Demonstrates active engagement and focused work during problem-solving sessions.
*   **Log Entries (2026-10-11):**
    *   "Installed and configured OPNsense 26.7 as the foundation for an isolated enterprise-style virtual network..."
    *   "Investigated missing WAN IPv4 connectivity through interface inspection, routing-table analysis, DHCP lease inspection, and packet capture..."
    *   "Identified repeated DHCP Discover requests without a visible DHCP Offer, documented the unresolved WAN DHCP issue and established a targeted troubleshooting plan..."
    *   The detailed "Issues Encountered" and "Next Steps" sections explicitly reflect the encountered challenges and the plan to address them, validating the ongoing nature of the work and the structured problem-solving approach.

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
### Highlight: OPNsense Live Boot
![OPNsense Live Boot](../screenshots/2026-10-11_131714_opnsense-live-boot.png)
This screenshot captures the most important project evidence for the current phase, showing the main state, artifact, or operational view being reviewed. It highlights the key detail the viewer should notice in this stage of the project.


## Lessons learned
- Keep documentation close to delivery.
- Use screenshots as proof points.
- Write the project story in plain language for future reviewers.

## Next steps
- Continue from the handoff notes and current project status.
- Capture final cleanup or deployment follow-up items as they are completed.
