# Networking & Infrastructure Engineering

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
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

## Latest session
### Work completed
Investigated OPNsense WAN DHCP failure, verified WAN interface em1 and repeated DHCP Discover transmissions, confirmed VMware VMnet8 NAT and DHCP configuration, checked VMware DHCP and NAT service status, restarted VMware DHCP without restoring the lease, examined Windows DHCP event channels and VMware lease records, started a PCAP capture for future Wireshark analysis

### AI-reviewed session summary
Summary:
This documentation outlines the initial phase of troubleshooting a persistent WAN DHCP failure experienced by an OPNsense virtual machine within a VMware environment. Despite a systematic approach to verifying both the OPNsense client's behavior and the VMware virtual network configuration, the issue remains unresolved. Limited visibility into the DHCP negotiation process has hindered fault isolation. Recognizing diminishing returns from further configuration checks, the focus is now shifting to evidence-based, packet-level analysis to pinpoint the root cause.

Tasks Completed:
*   Investigated the OPNsense WAN DHCP failure.
*   Verified the OPNsense WAN interface (em1) configuration and confirmed repeated DHCP Discover transmissions.
*   Confirmed the VMware VMnet8 NAT and DHCP configuration.
*   Checked the operational status of the VMware DHCP and NAT services.
*   Restarted the VMware DHCP service without restoring existing leases.
*   Examined Windows DHCP event channels on the host.
*   Reviewed VMware DHCP lease records for any relevant entries.
*   Initiated a PCAP capture for subsequent Wireshark analysis.

Issues Encountered:
*   Repeated configuration checks did not succeed in isolating the fault.
*   Limited visibility into whether the VMware DHCP server was receiving OPNsense DHCP broadcast messages.
*   Initial host-side packet captures proved inconclusive in diagnosing the problem.
*   The WAN DHCP failure for OPNsense persists.
*   A tendency to repeat verification steps without establishing new observation points or distinguishing clearly between confirmed findings and assumptions.

Next Steps:
*   Perform a detailed Wireshark analysis of the captured PCAP file to thoroughly examine DHCP negotiation packets and identify communication breakdowns.
*   Establish a more granular and effective observation point, potentially capturing traffic directly on the VMnet8 interface within the host, or within the guest VM itself (if feasible), to ensure visibility of DHCP Discover requests reaching the VMware DHCP server and its subsequent responses.
*   Based on the packet-level analysis, systematically isolate the fault to either the OPNsense client, the VMware virtual network's routing/bridging, or the VMware DHCP service itself.

Notes:

**Session time:** 2026-10-12, 04:27 to 05:39

**Goal:** Investigate and troubleshoot the missing IPv4 DHCP lease on the OPNsense WAN interface, identify the cause of the missing DHCP Offer if possible, restore upstream connectivity, validate the default route, document findings and remaining blockers.

**Goal achieved:** No

**Duration:** 72 minutes (planned: 60 minutes)

**Working story:** Systematic troubleshooting of a virtual networking failure, evidence-based fault isolation, verification of DHCP client behavior and virtual network configuration, recognition of diminishing returns and a plan to use packet-level analysis for the next diagnostic step

**Friction or blockers:** Repeated configuration checks without isolating the fault, limited visibility into whether VMware DHCP receives OPNsense broadcasts, inconclusive host-side packet captures, unresolved WAN DHCP failure

**AI gaps:** Repeated checks of settings and service status already verified, insufficiently distinguished confirmed findings from assumptions, did not establish a new observation point before recommending further troubleshooting

**AI peer review:** Approved by human at 2026-10-12 05:41:25

**Reviewer notes:** None.

**Notes:** WAN DHCP failure remains unresolved, VMware VMnet8 configuration matches the intended subnet and gateway, existing VMware DHCP lease file contains only an old NS-DC01 lease, saved PCAP pending analysis in Wireshark

**Handoff:** WAN em1 is repeatedly transmitting DHCP Discover packets without an observed DHCP Offer, /tmp/wan-dhcp.pcap was being captured on em1 and must be finalized with Ctrl+C before transfer to Windows, next session should analyze the PCAP and choose the next diagnostic test based on its contents

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
