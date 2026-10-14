# Regulation States

<div class="draft-watermark" aria-hidden="true"></div>

Every traffic regulation moves through a lifecycle. METR defines a standardized language for referencing the various states of the lifecycle to provide a common baseline understanding of the METR documents. The actual terms used and states defined for a particular jurisdiction can vary.

## Core states

| State | Meaning | Practical notes |
| --- | --- | --- |
| **proposed** | not yet approved by the rule maker | Still open for comment / revision |
| **approved** | approved with a future inception time | Not yet be installed or enforceable |
| **beingImplemented** | installation and enablement of associated traffic control devices (TCDs) is under way | After approval, a posted traffic regulation requires time to install and enable associated TCDs. Enablement can occur during installation or require a secondary action; for example, a traffic sign can be installed but visually obscured until the inception time when the TCD can be enabled by removing the visual obstruction. |
| **implemented** | Inception time is in the past; termination is undefined or in the future | The inception time indicates when the traffic regulation can first become applicable whenever all defined conditions are met. The termination time indicates when the traffic regulation can no longer become active. Implemented traffic regulations can be active, inactive (e.g., an implemented traffic regulation that has a time-of-day condition), or overridden (e.g., a temporary work-zone regulation that overrides a permanent regulation). |
| **active** | Implemented and presently in effect | For a traffic regulation to be active, it must be implemented and meet all regulatory conditions (e.g., time-of-day condition). |
| **inactive** | Implemented but not presently in effect | An inactive traffic regulation is implemented but fails to meet at least one regulatory conditions (e.g., time-of-day condition) |
| **overridden / suspended** | Implemented but temporarily nullified or replaced | It is generally expected that overrides will terminate eventually. For example, a temporary work-zone regulation can override a permanent regulation. |
| **dormant** | Approved but requires additional legal action to enable | Activating any dormant traffic regulation requires a rule maker to formally announce the enabling of the containing TRO.<br />
Dormant traffic regulations are typically associated with emergency response plans that are designed for specific emergency scenarios (e.g., natural disasters). |
| **annulled** | Declared invalid, void, or unenforceable as if it never existed | An annulled rule is a rule that is completely withdrawn as if it never existed, often because a court found that it was improperly made, erroneous, or otherwise unlawful. |
| **terminated** | past the termination time | A traffic regulation is terminated by its termination time. |

## Why rule makers care

Electronic METR records must carry sufficient details to allow:

1. A METR distribution system:
    1. That distributes information to vehicles: to determine whether the traffic regulation can potentially become implemented during the **[freshness period](https://isotc204.org/iso24315-vocab/latest/terms/freshness%20period/)** of the distributed METR information. Most METR information is pre-announced; it is distributed in advance and associated with a freshness period during which the information can be considered reliable. Any electronic regulation that can be in the implemented state during the freshness period needs to be distributed, even if not currently implemented at time of distribution.
    1. That distributes information for pre-trip planning: to determine whether the traffic regulation can be active based on the users estimated time of arrival at the regulated location.
2. a METR user device to determine whether the traffic regulation is active. This requires understanding whether the traffic regulation is currently implemented as well as understanding any conditions that must be met for the traffic regulation to be active and being able to assess whether that condition is currently met based on Supporting data.
