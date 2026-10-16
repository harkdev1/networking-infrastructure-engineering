# Networking-Infrastructure-Engineering

Status: In progress

## Project story
Here is a concise project summary for 'Networking-Infrastructure-Engineering', with an 'In progress' status.

---

# Networking-Infrastructure-Engineering Project Summary

## 1. Project story

This 'Networking-Infrastructure-Engineering' project is actively building a robust, virtualized network lab centered around an OPNsense firewall. Currently in progress, the work involves establishing foundational network connectivity, resolving critical infrastructure conflicts, and validating core services to support a segregated lab environment. Initial efforts focused on bringing OPNsense WAN online, followed by detailed troubleshooting and configuration of the LAN segment to prepare for client integration. The project is systematically addressing network architecture challenges to ensure a stable and functional base for further development.

## 2. Key achievements

*   **OPNsense WAN Operationalization:** Successfully configured OPNsense for dynamic WAN connectivity (DHCP), validated its default route, external reachability, and DNS resolution capabilities.
*   **Critical IP Conflict Resolution:** Identified and rectified a significant IP address conflict between the OPNsense LAN interface (192.168.20.1/24) and the Windows host's VMnet2 adapter by reconfiguring the host's adapter to 192.168.20.2/24.
*   **Restored Firewall Management Access:** Re-established essential HTTPS management connectivity to the OPNsense web interface from the physical Windows host post-conflict resolution.
*   **Core Network Verification:** Confirmed OPNsense interface assignments (WAN: `em0` at 192.168.148.129/24; LAN: `em1` at 192.168.20.1/24), validated its routing table, and confirmed the HTTPS service is actively listening on the LAN interface.
*   **Preservation of Existing Infrastructure:** Ensured no alterations were made to existing domain controller configurations or unrelated firewall rules, maintaining environment stability during critical network changes.

## 3. Lessons learned

*   **Systematic Diagnostic Importance:** Highlighted the absolute necessity of systematic, layered troubleshooting and thorough verification of all virtual network components and firewall settings in complex virtual environments.
*   **Host-VM Network Synergy:** Emphasized that host-level virtual network adapter configurations are just as critical as guest VM settings, particularly for preventing IP conflicts and ensuring proper network segregation.
*   **Focused Troubleshooting Strategy:** Gained experience in differentiating and isolating issues originating from the host network versus those within the virtualized firewall configuration, streamlining diagnostic efforts.
*   **Phased Validation in Complex Systems:** Reinforced the value of a phased approach to validation, acknowledging that comprehensive testing (e.g., DHCP functionality) may span multiple sessions due to underlying issues or time constraints.

## 4. Next steps

The immediate priority is to validate DHCP functionality on the OPNsense LAN interface. Following this, future steps will include:

*   Identifying or creating a dedicated Windows client VM and integrating it into the VMnet2 lab network.
*   Validating DHCP lease assignment, default gateway, and DNS configuration from the client VM's perspective.
*   Testing LAN gateway reachability, firewall policy effectiveness, and external connectivity from the client.
*   Capturing final evidence of successful client integration and overall network functionality.

## 5. Proof points

*   **Detailed Engineering Log (2026-10-16):** Provides comprehensive documentation of the IP conflict's identification, systematic resolution steps, and subsequent successful HTTPS management connectivity verification from the host.
*   **AI Peer Review Confirmation (2026-10-16):** Offers independent verification of OPNsense interface status, default route presence, HTTPS service listener, the Windows host's VMnet2 IP address change, and successful TCP connectivity to the OPNsense LAN management interface (192.168.20.1:443).
*   **Initial WAN Setup Screenshots (2026-10-13):** Captions like "WAN DHCP Success", "WAN Default Route Validated", "WAN External Connectivity", and "WAN DNS Resolution" visibly demonstrate the successful initial configuration and validation of OPNsense's external network connectivity.
*   **Network Topology Plan Screenshot (2026-10-13):** "Network Topology Plan (Current)" illustrates ongoing architectural planning and design for the environment.

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
### Highlight: WAN DNS Resolution
![WAN DNS Resolution](../screenshots/2026-10-13_144046_wan-dns-resolution.png)
This screenshot captures the most important project evidence for the current phase, showing the main state, artifact, or operational view being reviewed. It highlights the key detail the viewer should notice in this stage of the project.


## Lessons learned
- Keep documentation close to delivery.
- Use screenshots as proof points.
- Write the project story in plain language for future reviewers.

## Next steps
- Continue from the handoff notes and current project status.
- Capture final cleanup or deployment follow-up items as they are completed.
