# Networking & Infrastructure Engineering

<!-- autodoc:project-snapshot:start -->

## Status: In progress

## Project summary
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

## Latest session
### Work completed
Configured OPNsense WAN and LAN baseline, confirmed DHCP/DNS and outbound client connectivity, validated firewall enforcement with a temporary ICMP block and reviewed firewall logs, added a third virtual network adapter, assigned em2 to the SERVERS interface, configured the intended address 192.168.10.1/24, mapped the new adapter to VMware VMnet1

### AI-reviewed session summary
Summary:
This phase established the foundational OPNsense networking baseline, configuring both WAN and LAN interfaces and validating essential network services such as DHCP and DNS, along with outbound client connectivity. Firewall rule enforcement was successfully demonstrated through temporary ICMP blocking and log analysis. The network topology was further extended with the addition of a third interface designated for a future server network.

Tasks Completed:
*   Configured the OPNsense WAN and LAN interfaces.
*   Confirmed DHCP, DNS resolution, and outbound internet connectivity for client devices.
*   Validated firewall rule enforcement by implementing and logging a temporary ICMP block.
*   Added a third virtual network adapter within VMware and mapped it to VMnet1.
*   Assigned the new virtual adapter (em2) within OPNsense to the 'SERVERS' interface.
*   Configured the 'SERVERS' interface with the intended static IP address of 192.168.10.1/24.

Issues Encountered:
*   The expected VMnet3 option was unexpectedly unavailable in the OPNsense adapter dropdown list, necessitating alternative mapping.
*   Interface detection and subsequent assignment within OPNsense required direct console troubleshooting due to initial challenges.
*   Project progress was slower than anticipated due to repeated configuration checks and verification steps.

Next Steps:
*   Adopt a more efficient, milestone-based validation approach for future tasks to ensure steady progress and minimize redundant checks.

Notes:
Observations indicate that prior procedural steps involved repeating previously completed verification, revisiting known interface and VMware settings, and a lack of consistent comparison of new screenshots against established evidence before proceeding. This led to prioritizing repeated checking over moving to the next deliverable, highlighting an area for process improvement in future engineering documentation workflows.

**Session time:** 2026-10-22, 12:47 to 15:13

**Goal:** Validate OPNsense firewall enforcement using a controlled test, verify expected versus actual network behavior, preserve the intended final firewall configuration.

**Goal achieved:** No

**Duration:** 104 minutes (planned: 90 minutes)

**Working story:** Established the OPNsense networking baseline, demonstrated firewall rule enforcement with logged evidence, extended the topology with a third interface for a future server network, adopted a more efficient milestone-based validation approach

**Friction or blockers:** VMnet3 was unavailable in the OPNsense adapter dropdown, repeated configuration checks consumed time, interface detection and assignment required console troubleshooting, project progress was slower than planned

**AI gaps:** Repeated previously completed verification steps, revisited known interface and VMware settings, did not consistently compare new screenshots against established evidence before giving the next instruction, prioritized repeated checking over moving to the next deliverable

**AI peer review:** Approved by human at 2026-10-22 15:14:20

**Reviewer notes:** WAN remains on em0 / VMnet8, LAN remains on em1 / VMnet2, SERVERS is assigned to em2 / VMnet1, the intended SERVERS address is 192.168.10.1/24, the Windows client’s DHCP/DNS/outbound connectivity and the temporary ICMP enforcement test were previously validated. End-to-end connectivity for the new SERVERS network has not yet been tested, and the current LAN allow rules remain broad. Do not report multi-zone isolation as complete.

**Notes:** Prioritize implementation over repeated checks, reuse existing evidence, validate once at meaningful milestones, defer VLANs and advanced monitoring to the CyberOps Sandbox unless required for the core project exit criteria

**Handoff:** The OPNsense SERVERS interface has been assigned to em2 and configured with the intended static address 192.168.10.1/24, the VMware adapter is mapped to VMnet1. Next, connect a test endpoint to VMnet1, verify connectivity to the firewall, implement a safe and explicit inter-network policy, validate allowed and blocked traffic, then capture focused packet evidence and complete project documentation.

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
