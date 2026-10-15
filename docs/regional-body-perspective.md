# Regional Guidance

<div class="draft-watermark" aria-hidden="true"></div>

==## Introduction==

==### Purpose of Page==

==This page focuses on understanding METR's scope, deployment and usage scenarios, regional frameworks to support region-specific needs and environments, and stakeholder benefits, without delving into deep technical implementation details.==

==### Audience==

==This page is designed for a broad audience. The primary audience includes planners, decision makers, and end-user representatives such as fleet managers. The guide also serves as an introduction to METR and related issues for transportation infrastructure owners and operators, rule makers, original equipment manufacturers (OEMs), transportation service providers, navigation system developers, and emergency responders. Additionally, it serves as a valuable resource for policymakers, legal professionals, and public safety officials who are involved in transportation regulation and safety.==

## Need for Regional Implementation Guidance

As METR systems become more widespread, regional implementation guides are essential to ensure interoperability across different jurisdictions within a **[global region](https://isotc204.org/iso24315-vocab/latest/terms/global%20region/)**. These guides provide a consistent framework that aligns with national and international standards while allowing for local customization. This complementary layered approach thus safely supports METR infrastructure and deployment across the METR ecosystem.

![Three-tiered approach](images/three-tiered-approach.png)

<figure><figcaption>Three-tiered approach</figcaption></figure>

Without clear regional guidance, there is a risk of fragmented or incompatible systems that could undermine the effectiveness of METR, leading to potential safety issues, inefficiencies, and challenges in regulation enforcement.

## Key Points for Regional Guidance

A reference architecture provides a generic representation of how systems could be designed so that key interfaces can be identified and interoperability standards developed. However, each deployment will likely vary from the more theoretical reference architecture. 

The reference architecture defined in ISO 24315-3 is intended to be a generic representation that can cover any conceivable deployment scenario. In practice, regions should refine this reference architecture to provide further guidance to jurisdictions within their global region.

For example, the regional body should consider providing **guidance** on:

- The expectations for who will host their own regulation systems and which rule makers will likely enter regulations using regulation systems hosted by others. This will help manage expectations of both the rule makers and the managers of regulation and distribution systems.
- Whether any collection systems (i.e., distribution systems focused on collecting regulations from multiple regulation systems and providing them to other distribution systems for distribution to users) are expected to be deployed and respective scopes. For example, a central access point could collect and provide all regulations established by multiple regulation systems within a country. Establishing such a guideline will assist distribution system owners to manage their expectations on integration efforts.
- Whether any service discovery systems (i.e., systems offering query services to to discover and provide information on the existence of regulation systems and their respective scopes) are expected to be deployed and respective scopes. For example, rather than providing all regulations directly, a central access point could offer a query service to guide distribution systems to the various regulation systems within a country. This provides a level of confidence that new regulation systems can be discovered and integrated into the regional METR ecosystem in a seamless manner.
- How regulation systems ensure that their regulations are discoverable to the METR ecosystem.
- Expectations regarding who will host distribution systems to METR user devices and how to establish information sharing agreements. For example, should each regulation system provide its own distribution system, rely on a higher-level government system, merely provide their regulations to a central access point, or support connections to third parties, such as navigation systems and original equipment manufacturers (OEMs)?
- Whether any discrepancy handling systems are expected to be deployed, their respective scopes, any expected hierarchy arrangements, and how to establish information sharing agreements. For example, within the region, is it acceptable for a vehicle manufacturer to report all detected discrepancies to an OEM discrepancy handling system? Is there any requirement for this information to be provided to public agencies (e.g., regulators) to alert them of problems with the public infrastructure or issues with the OEM software in potentially misinterpreting regulations? 
- Any formal policies or legal requirements imposed on any METR stakeholders. For example, some regions may require that all regulation systems provide certain types of regulations by a certain date, that regulation systems and distribution systems be certified by a regional body, or that all regulation systems and distribution systems conform to defined interface standards to ensure interoperability with a regional body's system. Conversely, a region could impose requirements on METR user devices to obtain METR regulations if they are to operate in automated driving mode.

## Factors that Impact Decisions

Factors that impact the regional body decisions on how to deploy METR systems include:

- Jurisdictional complexity: If all regulations are issued by a single or small number of authorities, a single regulation system can more readily perform the collection role for the entire region (e.g., the region might be an island consisting of a single jurisdictional entity with no significant cross-border traffic) and may even be able to act as a distribution system. By comparison, complex regions with multiple levels of jurisdictional hierarchy and multiple rule makers within each jurisdictional level will likely need to keep regulations distinctly separate from the collection and distribution of regulations.
- Cross-border coordination: Jurisdictions that deal with heavy cross-border traffic (e.g., Europe) ideally will adopt regional policies and standards so that vehicles can seamlessly interoperate throughout the region. In this case, the different jurisdictions can more readily share system components (e.g., multiple jurisdictions can share a common regulation system).
- Inter-regional coordination: Jurisdictions that do not adopt compatible policies and standards will create an operational boundary and will need to establish policies on how vehicles from foreign jurisdictions can enter and operate within its new environment. This distinct jurisdictional boundary will likely result in a distinct system boundary as well. For example, vehicles crossing such a boundary might need a software update to support the interoperability standards for the new region or perhaps to change radio configuration to support the new region's radio frequencies.
- Breadth of METR users: METR is designed to support regulations for a variety of users, including general motor vehicles, regulated vehicles (e.g., heavy vehicles, buses, taxis), public-area mobile robots (PMRs), etc. These regulations are often made by different rule makers but can have overlapping application (e.g., heavy vehicles still have to comply with most motor vehicle regulations). Market factors within each industry can impact how the region decides to deploy METR systems.
- Breadth of regulations: Early deployments are likely to focus on limited regulation sets (e.g., speed limits), but as the content of the METR system of systems expands, the number of regulations will increase. The regional body can provide guidance on which regulations should be digitized and whether different distribution schemes are envisioned for different types of regulations.
- Geographic extent: The number of regulations within a deployment will scale with geographic and population size, but most end-user systems will only need relevant regulations at any point in time. However, maintaining a limited set of regulations within a METR user device can result in the device not being able to provide the most relevant regulations to the user, especially if the user changes his route without prior notice to the navigation engine. The regional body can provide guidance on the expected breadth of regulations to be held within a METR user device, especially automated devices.
- Funding for distribution: The distribution of regulations could be seen as providing an important public benefit, and funded by a public agency, or could be perceived to be more of an advanced feature for higher-end vehicles and left to the private sector. The boundary between public and private sector involvement can impact boundaries between systems and impact the decisions made by various stakeholders. Importantly, the lack of advice in this areas can delay or result in inefficient deployment of METR systems as various stakeholders wait for others to make decisions.

## Example Deployment Architectures

These factors can influence the deployment architecture for a region. Example deployment architectures can include any of the following or some sort of hybrid among them:

**Consolidated System**: A single authority records, collects and distributes the regulations for an area; this can be ideal for small, uniform systems or for prototype deployments.

**Distributed Regulation-Making System:** A variety of authorities record regulations for an area while a single agency collects the regulations and distributes them.

**Distributed Regulation Management System:** A variety of authorities record regulations for an area, a single agency consolidates the regulations, and a third entity (often private) is responsible for delivery of relevant regulations to the end user.

**Distributed Regulation Management System with Service Discovery:** A variety of authorities record regulations for an area, each of these authorities registers their existence with a central authority, and a third entity (often private) is responsible for delivery of relevant regulations to the end user.
