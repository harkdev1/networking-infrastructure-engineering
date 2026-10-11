# Networking & Infrastructure Engineering

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
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

## Latest session
### Work completed
Installed OPNsense 26.7 on a 20 GB virtual disk, configured the VM with 4 GB RAM and 2 CPU cores, established WAN/LAN interface assignments (em1 WAN and em0 LAN), created an isolated VMware Host-only network on VMnet2 using 192.168.20.0/24, configured the OPNsense LAN gateway as 192.168.20.1/24, enabled LAN DHCP with a pool of 192.168.20.100–192.168.20.199, verified VMnet8 NAT configuration using subnet 192.168.148.0/24 and gateway 192.168.148.2, inspected the VMware DHCP pool 192.168.148.128–192.168.148.254, confirmed the VMware DHCP service was running, inspected interface status and routing tables, captured WAN DHCP traffic using tcpdump, observed repeated IPv4 DHCP Discover requests without a visible DHCP Offer, documented the unresolved WAN addressing issue.

### AI-reviewed session summary
Summary:
Installed and configured OPNsense 26.7 as the foundation for an isolated enterprise-style virtual network, established the LAN gateway at 192.168.20.1/24 and configured the DHCP pool for future lab clients, assigned WAN and LAN interfaces and verified VMware NAT addressing, investigated missing WAN IPv4 connectivity through interface inspection, routing-table analysis, DHCP lease inspection, and packet capture, identified repeated DHCP Discover requests without a visible DHCP Offer, documented the unresolved WAN DHCP issue and established a targeted troubleshooting plan for the next session.

Tasks Completed:
Installed OPNsense 26.7 on a dedicated virtual machine, configured WAN and LAN interface assignments, created the isolated VMnet2 network using 192.168.20.0/24, assigned the LAN gateway 192.168.20.1/24, configured the LAN DHCP pool from 192.168.20.100 to 192.168.20.199, verified VMware VMnet8 NAT subnet and gateway settings, inspected VMware DHCP pool configuration and service status, inspected OPNsense interface status and routing tables, examined DHCP lease state, captured WAN IPv4 DHCP traffic with tcpdump, identified repeated DHCP Discover requests without a visible DHCP Offer, documented the unresolved WAN connectivity issue and next troubleshooting steps.

Issues Encountered:
WAN failed to obtain an IPv4 address through DHCP despite the virtual interface reporting an active link, repeated DHCP Discover requests were captured without a visible DHCP Offer, the WAN DHCP lease file was empty, the default IPv4 route was absent, the LAN virtual adapter was initially attached to VMnet0 instead of the intended VMnet2 and required correction, initial troubleshooting was slowed by incomplete inventory of the existing virtual network configuration, DHCPv6 log messages initially complicated interpretation of the IPv4 DHCP issue, Gemini AI generation encountered a temporary 503 service availability error and required manual documentation.

Next Steps:
Inventory and validate the existing VMware virtual network configuration before making further changes, investigate why OPNsense WAN (`em1`) sends IPv4 DHCP Discover requests without receiving a visible DHCP Offer, verify VMware NAT and DHCP service behavior, obtain a valid WAN IPv4 lease and confirm the default route, test upstream connectivity, verify OPNsense LAN gateway and DHCP functionality on VMnet2, connect a test client to the isolated lab subnet, validate permitted and blocked traffic through the firewall, capture screenshots and packet evidence at key milestones, document troubleshooting findings and configuration decisions, finalize the network topology diagram and session documentation.

Notes:
OPNsense installation and LAN configuration are complete, WAN is assigned to em1 and connected to VMware NAT, LAN is assigned to em0 on VMnet2, WAN currently has no IPv4 address, the DHCP lease file is empty, IPv4 DHCP Discover requests were captured on em1 without a visible Offer, the cause remains unresolved, do not mark WAN routing or firewall functionality as validated.

**Session time:** 2026-10-11, 11:44 to 15:04

**Goal:** Establish the baseline of the existing VMware homelab network, identify virtual network connections and IP addressing, examine routing and DNS behavior within the lab, identify one genuine networking issue or discrepancy, and establish the foundation for the segmented enterprise network.

**Goal achieved:** No

**Duration:** 178 minutes (planned: 60 minutes)

**Working story:** Building an isolated virtual network and installing an enterprise-style firewall, translating Network+ concepts into practical interface and subnet configuration, learning to distinguish link state from IP addressing and routing, using packet capture to investigate a real DHCP connectivity failure, identifying the importance of inventory-first engineering, documenting evidence and unresolved issues rather than claiming an unverified success.

**Friction or blockers:** WAN DHCP troubleshooting took longer than expected, initial infrastructure assumptions were not fully validated before configuration, the second virtual network adapter was initially attached to VMnet0 instead of VMnet2 and required correction, distinguishing IPv4 DHCP from DHCPv6 log activity required additional investigation, console scrollback and shell diagnostics added friction, the root cause of the missing WAN IPv4 lease remains unidentified.

**AI gaps:** The initial workflow should have inventoried existing VMware networks, DHCP pools, gateway settings, service state, and adapter mappings before configuring OPNsense, troubleshooting repeated the same checks instead of moving to packet-level evidence sooner, the initial interface investigation did not distinguish DHCPv6 Solicit messages from IPv4 DHCP requests clearly enough, the DHCP pool was initially treated as a potential mismatch even though its range was valid for VMnet8, the cause of the missing WAN DHCP response was not established and must not be presented as a confirmed VMware service fault.

**AI peer review:** Approved by human at 2026-10-11 15:08:23

**Reviewer notes:** OPNsense installation and LAN configuration are complete, WAN is assigned to em1 and connected to VMware NAT, LAN is assigned to em0 on VMnet2, WAN currently has no IPv4 address, the DHCP lease file is empty, IPv4 DHCP Discover requests were captured on em1 without a visible Offer, the cause remains unresolved, do not mark WAN routing or firewall functionality as validated.

**Notes:** VMnet2 is configured as Host-only with subnet 192.168.20.0/24 and VMware DHCP disabled, OPNsense LAN is 192.168.20.1/24, the intended OPNsense LAN DHCP pool is 192.168.20.100–192.168.20.199, VMnet8 is configured as NAT with subnet 192.168.148.0/24, VMware NAT gateway is 192.168.148.2, VMware DHCP pool is 192.168.148.128–192.168.148.254, VMware DHCP Service was reported running, WAN adapter settings were confirmed as NAT with Connected and Connect at power on enabled, WAN DHCP response path still requires investigation.

**Handoff:** OPNsense is at the shell prompt after a DHCP packet capture showed repeated IPv4 Discover requests on WAN em1 without a visible DHCP Offer, the next session should investigate the VMware DHCP response path, obtain and verify a WAN IPv4 lease and default route, validate upstream connectivity, then connect a test client to VMnet2 and test LAN DHCP and firewall behavior.

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
