# Regulatory Environment

<div class="draft-watermark" aria-hidden="true"></div>

METR publishes electronic **rules and regulations (R&amp;Rs)** that already exist in law. Those R&amp;Rs are created by authorized actors, through required processes, inside a stack of overlapping governments. The regulatory environment is the set of constraints that stack imposes on what can be published, by whom, for where, and when it is in force.

A deployment that ignores those constraints can distribute data that is complete as a file and still wrong as law: issued by the wrong body, ahead of approval, or in conflict with a higher-level instrument that still applies.

## Constraints imposed by regulatory processes

Regulatory processes limit METR in several recurring ways.

**Authority is delegated and scoped.** A [jurisdictional entity](tro-jurisdictional-entity.md) decides which [rule makers](tro-jurisdictional-entity.md#rule-makers-within-a-jurisdiction) may establish which kinds of R&amp;Rs, on which facilities, and inside which area. Publishing an electronic record does not create that authority. The electronic record has to name the rule maker and stay inside the scope that rule maker was given.

**Establishment and activation are different steps.** A regulation can be proposed and approved for a future time, installed in the field, and only later become active. For example, regulations can be scheduled (e.g., a school-zone speed limit), conditional (e.g., when raining), or dormant (e.g., regulations for emergency plans). These regulations only become active when their conditions are met. METR defines a standard set of [regulation states](tro-regulation-states.md) to ensure that all parties understand the status of a regulation. METR is designed to provide approved regulations to users along with the conditions that must be met for the regulation to be active. It is the responsibility of the METR user device or METR user to determine if the regulation is active within the context of use (e.g., in the case of pre-trip planning, the relevance of a scheduled regulation will be dependent upon the user's time of arrival at the regulated location).

**Different processes move at different speeds and produce different legal packages.** R&Rs can be issued through legislative acts, permanent design documents, or orders issued by road operators, maintenance personnel, or emergency responders. Each source has its own evidentiary, consultation, approval, and recording requirements. While the distinction is generally irrelevant for the METR user, it impacts how regulations are managed and distributed to ensure efficient and timely delivery of complete and accurate information. 

**Several instruments apply at once.** At a single point, a standing speed limit, a work-zone order, and an incident closure can all be legally relevant. The local framework defines the precise legal relationship among various R&Rs (e.g., which regulations have precedence over others, the extent to which campus regulations are enforceable and by whom). METR is designed to allow regulations to be published in a way that preserves those relationships so a user system does not treat every published regulation as simultaneously binding.

**Higher levels set the rules of the game for lower levels.** National or sub-national legislation typically defines lower-level entities within their jurisdictional boundaries and the types of facilities that they are responsible for regulating. They can also impose general R&amp;Rs that apply to all lower-level entities within their jurisdiction (e.g., maximum speed limit) and whether these general R&Rs can be overridden by lower-level entities. Some of these constraints can be strictly enforced by METR. For example, METR can automatically ensure that regulations are only considered valid within the jurisdictional boundaries of the issuing by a jurisdictional entity, as indicated by the digital signature on the regulation. However, METR does not attempt to resolve political disputes between jurisdictional entities, but it can help identify them. For example, it is conceivable that national legislation is passed to establish a national maximum speed limit while a lower-level entity issues a regulation that exceeds the national limit. As long as both electronic regulations are properly signed by their issuing authorities, METR would distribute both regulations. It is then up to the METR user device and METR user to determine which regulation to use. Luckily, such a conflict is likely to be detected, at which point any of the METR component systems can report the discrepancy and highlight the issue so that it can be resolved. Once identified and confirmed, the regulators can revise their electronic regulations to either resolve the conflict or to suppress discrepancy reports (e.g., if this is a true political dispute between jurisdictional entities attempting to impose conflicting regulations).

## A hierarchy of governments

Responsibility for traffic R&amp;Rs is stacked. The names differ by country, but the pattern is a hierarchy of areas that overlap. Any point on a road is usually inside several of them at once.

| Level | Typical bodies | What this level usually controls |
| --- | --- | --- |
| **National** | Legislature, national road or transport authority | Highway code and rules of the road; regulation of nationally managed facilities such as motorways; the framework that assigns authority to lower levels. In some countries, these responsibilities are largely delegated to the sub-national level. |
| **Sub-national** | State, province, canton, or similar | Further rules and regulations for facilities regulated by this level. |
| **Local** | County, city, borough, or similar | Most location-specific regulations on local facilities: speed limits, parking, turn restrictions, kerbside use, and local traffic control; may also include local refinements to the highway code (e.g., which micromobility vehicles are allowed to use a bike lane, which vehicles are allowed to use a bus lane, etc.) |
| **Campus** | University, hospital, port, toll road, or other site owner, including parking facilities | Regulations on facilities that authority controls, within the limits the parent jurisdiction allows. |

In addition, METR must accommodate the complexity of real geography and governance structures:

- smaller governmental areas contained inside a parent jurisdiction (towns within a county; campuses within a city)
- non-contiguous “islands” of an authority (e.g., Hawaii and Alaska are both part of the United States even though they are not contiguous)
- higher-authority roads that pass through a lower-authority area (e.g., a state highway that passes through a city)
- neighbouring jurisdictions that prefer to use a nearby parent platform rather than stand up their own (e.g., a city may prefer to use the regulation system of a larger metropolitan area rather than stand up its own regulation system)
- A higher-level entity can issue regulations, even if they are located inside the jurisdictional boundary of a lower-level entity. For example, it is not uncommon for a city to regulate its own streets while the state or nation regulates the motorway through that city, while the city police are assigned the ability to exercise a narrow power to issue temporary orders on that motorway during an incident. Sorting this out is a legal question. METR's job is to report the issued R&Rs and to identify the rule maker that issued each R&R.

## Responsibilities within each level

Significant jurisdictional entities typically designate several rule makers for their jurisdiction rather than having a single office that issues every R&amp;R. For example, a legislative body is often responsible for issuing rules of the road, while a road authority is responsible for issuing permanent regulations, and a road operator, road maintenance department, and emergency responders are responsible for issuing operational regulations. This can be simplified, even to a single individual (e.g., for a small campus), but larger entities typically separate these responsibilities into multiple rule makers.

| Responsibility | Typical actors | What they establish |
| --- | --- | --- |
| **Legislative** | Legislature, council, or equivalent governing body | Rules of the road and other provisions that require a deliberative process, such as a default speed limit. The legislative body can also keep the power to adopt any regulation itself, or require another body to adopt one. |
| **Planning regulatory** | Road authority, traffic engineering, or planning office acting as a regulator | Standing, location-specific regulations based on engineering practice: stop signs, posted speed limits, parking schemes, permanent lane use. These are usually adopted through an administrative or engineering process and recorded in a traffic regulation order. |
| **Operational regulatory** | Road operators, traffic management centres, maintenance organizations, and law enforcement or emergency responders | A narrow set of regulations that depend on current conditions and can require field operations to implement. Examples include dynamic speed limits and reversible lanes, temporary regulations for road works, and closures for a collision, flood, or similar incident. |

Operational authority is usually the most time-critical and the most limited. The highway code or a parent regulation defines which events those actors may respond to and which regulation types they may use.

These actors often keep separate drafting tools and separate approval chains. METR has to accept R&amp;Rs from each of them, store them so the legal source remains traceable, and make them available in a common electronic form. The [rule maker perspective](rule-maker-perspective.md) describes how those actors participate. The [jurisdictional entities](tro-jurisdictional-entity.md) page describes how their areas and scopes relate.

## Related pages

- [What is METR](what-is-metr.md)
- [Rule maker perspective](rule-maker-perspective.md)
- [What is a TRO?](tro-what-is-a-tro.md)
- [Jurisdictional entities and rule makers](tro-jurisdictional-entity.md)
- [Regulation states](tro-regulation-states.md)
