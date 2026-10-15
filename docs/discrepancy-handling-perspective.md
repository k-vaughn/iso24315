# Guidance for METR Discrepancy Handling System

<div class="draft3-watermark" aria-hidden="true"></div>

!!! note
    ==Audience: Deployer of METR discrepancy handling system (e.g., larger jurisdictions, OEMs, map providers)==

    ==Purpose: Guidance for implementation, deployment, maintenance, and operation, including legal and cybersecurity responsibilities==

    ==Scope: Guidance on:==

    - ==Prerequisites and policies that need to be established/considered==
    - ==Account management & relationships that may need to be created==
    - ==Resources & capabilities needed==
    - ==Data quality & consistency, certification, certificate management==
    - ==Responsibilities of owner/operator (including any legal responsibilities)==
    - ==Sample project-level architecture, existing systems with similar or related capabilities==

## ==Introduction==

### ==Purpose of Page==

==This page serves as a guide for deploying and managing a Management of Electronic Traffic Regulations (METR) discrepancy handling system. It provides essential information for entities responsible for identifying, reporting, and resolving discrepancies in transportation regulations within the METR framework. The page outlines key prerequisites, maintenance requirements, data management, and policies to ensure the effective operation of the system. By focusing on these areas, the guide helps stakeholders build robust, interoperable systems that support the accurate implementation and enforcement of rules and regulations.==

### ==Audience==

==This page is intended for system administrators, IT professionals, transportation regulators, and other stakeholders responsible for deploying and operating METR discrepancy handling systems. It is also relevant for rule makers, policy makers, and legal experts who oversee transportation regulations and need to ensure the system's reliability and accuracy. Additionally, consultants and service providers working with transportation agencies will find this guide valuable for supporting their clients' needs in managing regulatory discrepancies.==

## What Are the Prerequisites for Deploying a METR Discrepancy Handling System?

Deploying a METR discrepancy handling system requires meeting several prerequisites to ensure successful implementation. These include all of the prerequisites identified for the **[system management perspective](system-management-perspective.md)**, and the following:

1. Identify the geographic area(s) that the discrepancy handling system will serve.
1. Identify the types of discrepancies that will be supported.
1. Identify the interoperability standards that will be required.
1. Identify the certification and certificate management requirements as established by the **[regional body](regional-body-perspective.md)**.
1. Become aware of the legal responsibilities of the owner/operator as established by the **[regional body](regional-body-perspective.md)**.
1. Identify the regulation system(s) that the discrepancy handling system will need to connect to.
1. Establish policies regarding the verification steps that will be required to validate the discrepancies, the time commitments required for verification, and the conditions that must be met for the discrepancy to be verified and delivered to the regulation system.
1. Establish agreements with the regulation system(s) to exchange the necessary data.
1. Define the deployment architecture.
1. Implement the discrepancy handling system in accordance with the **[regional body policies and guidelines](regional-body-perspective.md)**.

## Discrepancy and collection credentials

When a jurisdiction hosts a discrepancy handling system, it needs to ensure that a framework exists for establishing credentials for the following:

- consumer systems need authenticated channels to provide reports;
- regulation systems and peer discrepancy handling systems need mutual authentication for exchanging reports;
- operators need credentials to investigate reports without gaining unnecessary rights to alter reports or regulations.

## What Is Involved with Managing the Data?

### What Are the Policies for Handling Received Discrepancies?

Handling received discrepancies requires clear policies that define how discrepancies should be processed, prioritized, and resolved. The system must categorize discrepancies based on severity and impact, ensuring that critical issues are addressed promptly. Policies should also define the workflow for reviewing and validating discrepancies before they are reported to regulation systems. Establishing transparent and efficient processes will ensure that discrepancies are handled consistently and in compliance with regulatory standards.

### What Steps Are Required to Validate the Discrepancies Prior to Reporting Them to a Regulation System?

Before discrepancies can be reported to a regulation system, they must undergo a validation process. This process should be defined by the jurisdiction and can include:

1. waiting for multiple reports to be received;
1. verifying the accuracy of the data;
1. ensuring that the discrepancy is relevant to the regulation system;
1. confirming that it has not already been addressed; or
1. a combination of the above.

Verification can involve automated checks as well as manual reviews by system operators.

### What Are the Time Requirements for Processing Reported Discrepancies?

Time requirements for processing discrepancies will vary depending on the severity and type of the issue. Critical discrepancies, such as those affecting public safety or causing significant regulatory violations, must be processed as quickly as possible—often within hours. Less urgent discrepancies may have longer time frames, allowing for more detailed review and validation. It is important to establish clear timelines for processing discrepancies to ensure that they are resolved in a timely manner and do not negatively impact the overall regulation system. The jurisdiction should establish policies for the time requirements for processing discrepancies and communicate them to the regulation system(s) and the discrepancy handling system(s).

## What Auditing Information Needs to Be Captured?

To ensure transparency and accountability, a METR discrepancy handling system must capture comprehensive auditing information. This includes tracking when discrepancies are reported, how they are processed, and when they are resolved. Auditing data should also include information on the individuals or systems responsible for handling discrepancies, as well as any changes made to the data throughout the process. Proper auditing ensures compliance with regulatory standards and allows for ongoing monitoring and improvement of the system.

## How to Tailor the Guide and the Standards

While this guide provides a general framework for deploying a METR discrepancy handling system, it is important for regional bodies and operators to tailor the guidance and standards to their specific operational environment. Tailoring may involve adjusting the system's architecture, prioritizing certain types of discrepancies, or implementing additional security measures. By adapting the guide to local conditions, operators can create a discrepancy handling system that is both effective and sustainable, ensuring reliable regulation management across the METR ecosystem.
