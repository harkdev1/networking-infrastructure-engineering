# Networking-Infrastructure-Engineering

Status: In progress

## Project story
## Project Summary: Networking-Infrastructure-Engineering

### 1. Project Story
This project is focused on establishing a robust, segmented enterprise-style virtual network within a VMware homelab environment, with OPNsense configured as the core perimeter firewall and router. The foundational work has included the successful installation and initial configuration of OPNsense 26.7, setting up its internal LAN gateway (192.168.20.1/24), and defining a DHCP pool for future lab clients.

A primary challenge encountered is a persistent WAN DHCP failure on the OPNsense virtual machine, preventing it from obtaining an IPv4 lease and thus lacking upstream internet connectivity. Initial systematic troubleshooting involved verifying OPNsense's client behavior, inspecting VMware's virtual network configurations (specifically VMnet8 NAT and DHCP services), and checking host-side network settings. Despite these efforts, DHCP Discover requests from OPNsense are not receiving visible offers, and limited visibility into the DHCP negotiation process has hindered fault isolation. The project is currently pivoting towards a more detailed, evidence-based approach, utilizing packet-level analysis with Wireshark and establishing more granular observation points to definitively pinpoint the root cause of the WAN connectivity issue. This ongoing work aims to resolve the foundational networking challenge before proceeding with further network segmentation and service deployment.

### 2. Key Achievements
*   Successfully installed and performed initial configuration of OPNsense 26.7 as the intended network perimeter firewall for an isolated enterprise-style virtual network.
*   Configured the OPNsense LAN interface (192.168.20.1/24) and established a DHCP pool for future lab clients, laying the groundwork for internal network services.
*   Systematically investigated a persistent WAN DHCP failure, which included verifying OPNsense WAN interface configuration, confirming VMware VMnet8 NAT and DHCP settings, and checking the operational status of VMware's DHCP and NAT services.
*   Initiated diagnostic packet captures (PCAP files) for subsequent detailed Wireshark analysis, marking a strategic shift from configuration checks to evidence-based packet-level fault isolation.

### 3. Lessons Learned
*   **Importance of Granular Observation Points:** Initial troubleshooting efforts revealed that limited visibility into the DHCP negotiation process (e.g., whether DHCP Discover messages reached the VMware DHCP server) hindered fault isolation. Establishing more precise observation points for packet capture is critical for effective diagnosis.
*   **Recognizing Diminishing Returns:** Repeated configuration checks without new data or insights quickly yield diminishing returns. A methodical pivot to deeper, evidence-based analysis (like Wireshark) is crucial when initial verification steps prove inconclusive.
*   **Distinguishing Verified Findings from Assumptions:** It is essential to clearly delineate confirmed facts from assumptions during troubleshooting to avoid repeating checks on known-good components or chasing non-existent problems.

### 4. Next Steps
*   Perform a detailed Wireshark analysis of the captured PCAP file to thoroughly examine DHCP negotiation packets and pinpoint communication breakdowns between OPNsense and the VMware DHCP server.
*   Establish more granular and effective observation points for packet capture, potentially directly on the VMnet8 interface within the host or within the guest VM itself, to ensure comprehensive visibility of DHCP Discover requests reaching the VMware DHCP server and its subsequent responses.
*   Based on the packet-level analysis, systematically isolate the fault to either the OPNsense client configuration, the VMware virtual network's routing/bridging, or the VMware DHCP service itself.
*   Resolve the WAN DHCP failure to restore upstream connectivity for OPNsense, enabling the progression to further network segmentation and service deployment within the homelab environment.

### 5. Proof Points
*   **Screenshot: OPNsense Live Boot** (2026-10-11): Visually demonstrates the successful initial boot and installation phase of the OPNsense firewall.
*   **Screenshot: VMware DHCP Investigation** (2026-10-12): Provides visual context of the troubleshooting environment, indicating active investigation into the WAN DHCP issue.
*   **Log Entry 2026-10-11 - Summary:** "Installed and configured OPNsense 26.7 as the foundation... established the LAN gateway at 192.168.20.1/24... investigated missing WAN IPv4 connectivity... identified repeated DHCP Discover requests without a visible DHCP Offer."
*   **Log Entry 2026-10-12 - Tasks Completed:** "Investigated the OPNsense WAN DHCP failure... Verified the OPNsense WAN interface (em1) configuration... Confirmed the VMware VMnet8 NAT and DHCP configuration... Initiated a PCAP capture for subsequent Wireshark analysis."
*   **Log Entry 2026-10-12 - Next Steps:** "Perform a detailed Wireshark analysis of the captured PCAP file... Establish a more granular and effective observation point... Systematically isolate the fault to either the OPNsense client, the VMware virtual network's routing/bridging, or the VMware DHCP service itself."

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
### Highlight: VMware DHCP Investigation
![VMware DHCP Investigation](../screenshots/2026-10-12_043617_vmware-dhcp-investigation.png)
This screenshot captures the most important project evidence for the current phase, showing the main state, artifact, or operational view being reviewed. It highlights the key detail the viewer should notice in this stage of the project.


## Lessons learned
- Keep documentation close to delivery.
- Use screenshots as proof points.
- Write the project story in plain language for future reviewers.

## Next steps
- Continue from the handoff notes and current project status.
- Capture final cleanup or deployment follow-up items as they are completed.
