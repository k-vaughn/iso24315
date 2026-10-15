# Guidance for METR Distribution System

<div class="draft4-watermark" aria-hidden="true"></div>

!!! note
    ==Audience: Deployer of METR distribution system (e.g., OEMs, navigation systems, NAPs)==

    ==Purpose: Guidance for implementation, deployment, maintenance, and operation, including legal and cybersecurity responsibilities==

    ==Scope: Guidance on:==

    ==- Prerequisites and policies that need to be established/considered==

    ==- Account management & relationships that may need to be created==

    ==- Resources & capabilities needed==
    
    ==- Data quality & consistency, certification, certificate management==

    ==- Responsibilities of owner/operator (including any legal responsibilities)==
    
    ==- Sample project-level architecture, existing systems with similar or related capabilities==

## ==Introduction==

### ==Purpose of Page==

==This page is intended to provide comprehensive guidance for deploying and managing a Management of Electronic Traffic Regulations (METR) distribution system. It focuses on the critical aspects that must be considered by entities responsible for distributing METR data, including prerequisites for deployment, maintenance requirements, interoperability standards, and optional features. This guide aims to equip stakeholders with the knowledge needed to establish and operate a robust and efficient distribution system that meets the needs of diverse user groups and ensures the reliable dissemination of rules and regulations.==

### ==Audience==

==This page is designed for a broad audience, including system administrators, IT professionals, transportation planners, and regulatory authorities involved in the deployment and management of METR distribution systems. It is also valuable for consultants and service providers who support these entities, as well as policymakers who oversee transportation regulations and ensure that these systems meet legal and operational standards.==

## Position within the reference architecture

The distribution system is the delivery system. It receives the electronic regulations from the regulation system(s) and delivers them to the METR user systems.

![The METR distribution system between regulation systems and users](images/concept-arch.png)

<figure><figcaption>The METR distribution system between regulation systems and users</figcaption></figure>

## Prerequisites

Deploying a METR distribution system requires meeting several prerequisites to ensure successful implementation. These include all of the prerequisites identified for the **[system management perspective](system-management-perspective.md)**, and the following:

1. Identify the geographic area(s) that the distribution system will serve.
1. Identify whether the distribution system will support pre-announced regulations, emergent regulations, or both.
1. Identify the types of regulations that will be supported.
1. Identify the types of vehicles that will be supported.
1. Identify the interoperability standards that will be required.
1. Identify the certification and certificate management requirements as established by the **[regional body](regional-body-perspective.md)**.
1. Become aware of the legal responsibilities of the owner/operator as established by the **[regional body](regional-body-perspective.md)**.
1. Identify the regulation system(s) that the distribution system will need to connect to.
1. Establish agreements with the regulation system(s) to obtain the necessary data.
1. Define the deployment architecture.
1. Implement the distribution system in accordance with the **[regional body policies and guidelines](regional-body-perspective.md)**.

## What Are the Minimal Requirements for Interoperability?

Interoperability is a key factor in the success of a METR distribution system. To do its job, the METR distribution system must be able to obtain the electronic regulations from the regulation system(s) (typically multiple regulation systems) and distribute them to typically a large number of user devices. The regional body should adopt standards for these interfaces to simplify integration, but if not, the distribution system will still need to coordinate with these other systems to ensure that the distribution system can perform its job.

### Who Is the Target Market for the Distribution System?

The reference architecture for the regional body will likely provide guidance on the target market for a METR distribution system within the region. For example, the region can provide provide guidance that distribution systems are assumed to be private third parties, such as navigation systems and OEMs. In this case, the interface between the distribution system and the user device is more likely to be proprietary. Whereas if the regional guidance is that government agencies should provide the regulations directly to METR users, the interface will need to be fully standardized to ensure that it is readily accessible.

The needs of each user group can vary. For example, in-vehicle navigation systems may require real-time access to regulation updates and emergent regulations, while pre-trip planning services are primarily concerned about pre-announced regulations. Understanding the needs of these different user groups is essential for designing a system that meets their expectations and supports their operations.

### Regulation Packaging

In most cases, the distribution system will need to be able to repackage the electronic regulations provided by the regulation system(s) into a structure that is more appropriate for the user device.

The regulation system will likely package and sign the regulations into a electronic **[traffic regulation order](tro-what-is-a-tro.md)**, which is an electronic representation of the legal document that establishes one ore more traffic regulations. However, TROs group regulations from a traffic operations perspective rather than a user need-to-know perspective. For example, a single TRO for a road works project can contain regulations for lane shifts (including the positioning of traffic cones), speed limits, parking restrictions, and other regulations for both directions on multiple roads over multiple phases of a project. By comparison, a user device may only need to know about the speed limit and lane shift regulations for a specific direction on a specific road at a specific time. Distributing the entire TRO is not necessary, wasteful of bandwidth, processing, and memory resources, and can delay the delivery of other (e.g., emergent) regulations to the user device that could be safety relevant.

#### Types of Vehicles

A distribution system can choose to support different types of vehicles, including passenger cars, commercial trucks, public transit vehicles, autonomous vehicles, micromobility vehicles, public-area mobile robots (PMRs), etc. Each vehicle type may require different regulation sets and the system must be able to deliver the appropriate information to each user group supported. For example, autonomous vehicles may need highly detailed and precise regulation data to ensure safe and compliant operation, while traditional vehicles may require simpler, more general information.

## What Is Involved with Managing the Data?

### How Long Do the Received Regulations Remain Reliable Once They Are Received from the Regulation System?

The reliability of received regulations is determined by several factors, including the frequency of updates and the nature of the regulations themselves. Generally, regulations remain reliable as long as they reflect current regulations and have not been superseded by new updates or emergent regulations. Operators must establish clear policies for how long received regulations are considered fresh and implement mechanisms to ensure that users receive the most up-to-date information. This may involve setting specific freshness periods for different types of regulations and ensuring that regulations are refreshed regularly.

### How Often Should Regulations Be Refreshed for the User?

The frequency of regulation refreshes depends on the type of regulation and the needs of the user. For example, static regulations, such as speed limits, may require less frequent updates, while dynamic regulations, such as lane closures or temporary restrictions, may need to be refreshed more frequently to ensure accuracy. Operators should establish guidelines for how often different types of regulations should be refreshed and implement systems that automatically update users with the latest information based on these guidelines.

### What Is the Difference Between Pre-Announced and Emergent Regulations and How Does This Affect a Distribution System?

Pre-announced regulations are planned and communicated well in advance of their implementation, allowing for more straightforward processing and distribution. Emergent regulations, on the other hand, are created in response to immediate needs or unforeseen circumstances and must be distributed quickly to be effective. The METR deployment needs to identify which types of regulations are supported and how distribution of the different types of regulations is to be managed.

## How to Tailor the Guide and the Standards

While this guide provides a comprehensive framework for deploying a METR distribution system, it is important for regional bodies and operators to tailor the guidance and standards to their specific needs and contexts.
