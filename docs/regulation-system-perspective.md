# Guidance for METR Regulation System

<div class="draft-watermark" aria-hidden="true"></div>

!!! note
    ==Audience: Deployer of METR regulation system (e.g., larger jurisdictions)==

    ==Purpose: Guidance for implementation, deployment, maintenance, and operation, including legal and cybersecurity responsibilities==
    
    ==Scope: Guidance on:==
    ==- Prerequisites and policies that need to be established/considered==
    ==- Account management & relationships that may need to be created==
    ==- Resources & capabilities needed==
    ==- Data quality & consistency, certification, certificate management==
    ==- Responsibilities of owner/operator (including any legal responsibilities)==
    ==- Sample project-level architecture, existing systems with similar or related capabilities==

This guide is for the organization that hosts the regulation system, including: state and local transportation agencies, their IT and policy staff, infrastructure owner-operators, and the consultants who support them. The host is responsible for the implementation, operation, and maintenance of the regulation system, including oversight to ensure that the contents of the regulation system are consistent with the regulatory environment and are trustworthy. The regulation system is responsible for the secure ingestion, verification, signing, storage, and maintenance of the official, electronic regulations from all authorized rule makers according to the host's policies. The regulation system is also responsible for providing these rules to other METR systems (primarily distribution systems) in a trustworthy electronic form.

In addition to the issues discussed on this page, stakeholders of the regulation system should also be familiar with the [system management perspective](system-management-perspective.md) for responsibilities that apply to every METR component system.

## Where the regulation system sits

The regulation system is the catalogue. Rule makers define regulations, which are either natively in or are converted into an electronic form, verified, and stored in the regulation system. The electronic regulations are then provided to the distribution systems to deliver to METR user systems. The regulation system also receives discrepancy reports, which are used to correct the electronic regulations or traffic control devices, as needed. 

![The METR regulation system between rule makers, distribution, users, and discrepancy handling](images/concept-arch.png)

## Who may publish, and how far that authority goes

The operator of the regulation system is responsible for setting the policies that determine **who** may define **which** regulations **where** and with **what** authority. 

- **Who**: The operator needs to identify the jurisdictional entities to be supported by the regulation system and then identify each rule maker authorized by the entity, and the representatives authorized by the rule maker. Finally, the regulation system needs to identify how it will authenticate the representatives of the rule makers when they publish regulations.
- **which**: The operator needs to identify the regulation type categories that are supported by the regulation system for defined geographic areas and to what extent permanent, temporary, and emergent regulations are supported.
- **where**: The operator needs to identify the jurisdictional boundaries of each recognized jurisdictional entity and rule maker. Rule makers are not allowed to define electronic regulations outside their rule maker boundaries and the rule maker boundaries cannot extend beyond the jurisdictional boundaries of its parent jurisdictional entity. The security certificate on the electronic regulation should indicate the jurisdictional boundaries of the rule maker so that the receiving system can validate the legitimacy of the regulation. 
- **what**: The operator needs to identify the level of authority granted to each rule maker. This might be the authority to establish regulations that are enforceable by law, the authority to establish regulations that are enforced by the rule maker, or the authority to establish advisory regulations that can be considered in the case of a collision, but are not considered a primary offence.

### Several rule makers inside one jurisdiction

A single jurisdiction often splits the work. A municipality might assign speed limits to the road authority, parking regulations to the city manager, and emergency regulations to its response teams. A large rule maker might also sub-divide its area into smaller areas, which might be managed by sub-rule makers or to allow for better management (e.g., to declare all parking restrictions are available in one area even when they are not available in other areas of the same jurisdiction). The regulation system needs to be aware of these scopes and ensure that one rule maker is prevented from publishing a regulation outside its own authority.

### Types of rule makers

The host of the regulation system needs to establish policies and procedures for recognizing jurisdictional entities and needs to consider the types of entities to be supported by the regulation system. For example, a regulation system can support the following types of rule makers:

![Rule-maker authority narrows from a municipality to a single parking space](images/regulation-system-scopes.svg)

- Governmental entities, such as municipality;
- Large government or quasi-governmental campuses, such as a government-owned university or airport;
- Large private campuses, such as a shopping centre, business park, or university; and
- Small entities, such as a single store, car park, or private driveway.

While each global region and locale will need to establish its own policies, it is envisioned that most regulation systems will support multiple rule makers and that small rule makers are unlikely to establish their own regulation system. Because of this, it is envisioned that most regulation systems will need to support data entry from multiple rule makers, likely from remote locations. To enable this, the host of the regulation system needs to define:

1. a process to become a recognized rule maker;
2. how to manage credentials so that regulations properly indicate their authority;
3. tools or services to all remote rule makers to enter, update, and retire their own regulations;
4. clear expectations for data quality and completeness;
5. a way to transfer responsibility for the regulations if and when a campus is sold or transferred; and
6. a way to handle discrepancies and corrections when they are reported.
 
Hosts of regulation systems should realize that small rule makers are unlikely to establish their own regulation system; if they are unable to post to the regulation system used by their parent jurisdiction, their regulations likely will not be available within METR. Even if they are able to enter their regulations, smaller campuses are less likely provide and update their electronic regulations. For the trustworthiness of METR, it is important for the regulation system to be able to clearly communicate the limits of electronic regulation availability and quality to end users.

### Onboarding before anyone can publish

Establish a formal process to:

- verify that an applicant is a legitimate authority for the claimed facilities and regulation types
- record the legal basis and the contact points for escalation
- assign organizational identifiers used in audit and provenance metadata
- approve, suspend, or revoke recognition when ownership or responsibility changes

While campus onboarding will likely be lighter than onboarding another public agency, it still has to be deliberate: an unrecognized party must not be able to publish regulations that look authoritative to vehicles and navigation systems.

### Completeness only for a defined area

Before a regulation category is advertised as electronically trustworthy, the catalogue for that category in that area has to be necessary and sufficient for users. Every regulation system should support **defined areas** so completeness can be claimed in phases — speed limits on a corridor first, parking later — and so a subordinate rule maker can declare completeness only for the facilities inside its scope.

## How a regulation becomes publishable

Every regulation should follow the same path on the hosted system. The extent of verification should be established by policy, but can vary based on the authority of the rule maker (e.g., government entity vs private campus) and the type of regulation (e.g., regulatory vs advisory).

![From recognizing a rule maker through publish, with optional discrepancy handling and discovery](images/regulation-system-path.svg)

### Which regulation categories to convert first

The host of the regulation system should work with the rule makers to establish a preferred order of R&R conversion — speed limits, right of way, parking, road works, etc. — so users see a consistent service across the area the system covers.

### Regulation Packaging

In most cases, the rule makers will enter the regulations in an electronic **[traffic regulation order](tro-what-is-a-tro.md)**, which is an electronic representation of the legal document that establishes one ore more traffic regulations. The rule maker is likely to want to be able to manage each TRO as a unit because the TRO serves as the legal basis for the regulations it contains. However, TROs group regulations from a traffic operations perspective rather than a user need-to-know perspective. For example, a single TRO for a road works project can contain regulations for lane shifts (including the positioning of traffic cones), speed limits, parking restrictions, and restrictions for different types of vehicles for both directions on multiple roads over multiple phases of a project. By comparison, a distribution system can choose to limit its scope to only a small portion of these contained regulations. For example, a distribution system could be limited to providing R&Rs for public-area mobile robots (PMRs), in which case, it would not need many of the regulations in the TRO, but it would potentially need some. The exchange agreement between the rule maker and the regulation system should establish whose responsibility it is for filtering out the relevant electronic regulations from the TRO.

### How much notice counts as pre-announced

Change is inevitable; while many individual regulations are fairly stable, the number of regulations that exist result in constant changes to the full set of regulations for any large jurisdictional area. However, there are time delays between a change being approved and implemented as well as between the time that a change is approved, entered into the regulation system, provided to the distribution system, and distributed to the user. Likewise, complexities in the communication environment result in the user in not necessarily having access to the latest regulation information. Nonetheless, the user needs to know whether the information that they have is still trustworthy, METR calls this the **freshness period**. 

The host of the regulation system needs to define a policy that establishes a viable freshness period for distributed electronic regulations. This policy should be communicated to the rule makers and to the distribution systems of the regulation system as a part of the respective agreements. The freshness period impacts how early the rule maker needs to submit a regulation for distribution and how long the consumer system should keep the regulation available for use. Any regulation that is implemented before the time defined by the signing of the electronic regulation plus the freshness period should be treated as an **emergent regulation**. If the jurisdiction claims to publish emergent regulations, it it is responsible for ensuring the emergent regulations are published through the defined emergent regulation distribution process as announced.

### Maintaining fresh electronic regulations

The regulation system also needs to determine policies for the freshness period of the electronic regulations and how the regulations are to be maintained. For example, once a permanent regulation is established, it often does not change for years or decades. However, there are several practical limits that need to be considered when storing this information in a regulation system, including:

1. The rule maker can have policies to review the appropriateness of regulations at some interval.
1. The encryption used to protect a signed, electronic regulation will eventually exceed its useful life, i.e., by exceeding its algorithm security lifetime, which decreases with time due to advancements in computer technologies. As such, the regulation system will need to re-encrypt the regulations at some interval and the regulation system needs to establish policies for how to handle the re-encryption.
1. The term permanent regulation is slight misnomer; permanent only means that there is no known expected end time, but any regulation can be changed through the establishment of another TRO. Thus, just because a regulation system has provided a permanent regulation to a distribution system does not mean that it will never change. The agreement between regulation systems and the rule makers and the external systems (e.g., distribution systems) need to explicitly indicate that these regulations can change and are to be considered **stale** after their freshness period expires. The agreement should also indicate the responsibilities and timelines related to keeping this information fresh.

### Who receives the published regulations

The host of the regulation system needs to be aware of the regional policies that govern the distribution of electronic regulations to other systems and to identify each distributor, peer system, and other party that may need to access the electronic regulations.

## Optional capabilities worth turning on

These features are not required for a minimal catalogue. Each one improves trust or access and adds operational work.

### Discrepancy reporting

Discrepancy reports identify conflicts between publicized regulations, such as those between an electronic regulation and a traffic control device, between two electronic regulations, or between two traffic control devices. Linking the regulation system to a discrepancy handling system allows users to report these discrepancies so that the responsible rule maker can investigate the report and take appropriate action.

### Regulation discovery

Regulation discovery is similar to discrepancy reporting, but uses authorized devices and vehicles to report traffic control devices that are identified in the field rather than relying upon users at large. This allows the rule maker to quickly identify and create draft electronic regulations for verification and approval so that the existing regulations can more easily be added to the METR network.

### Independent verification

A check by someone other than the person who entered the regulation raises confidence in accuracy. It also adds cost and another role in the workflow. Regional policies and certification levels should say when that extra check is required.

## Related pages

- [System management perspective](system-management-perspective.md)
- [Jurisdictional management perspective](jurisdictional-management-perspective.md)
- [Rule maker perspective](rule-maker-perspective.md)
- [Regulatory environment](regulatory-environment.md)
- [Key components](key-components.md)
