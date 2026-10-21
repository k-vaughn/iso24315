# TRO States

<div class="draft3-watermark" aria-hidden="true"></div>

A TRO also has a lifecycle. Because one TRO can contain many traffic regulations, TRO state and regulation state are related but not identical: an order can be in operation while individual traffic regulations inside can be in any state.

!!! question
    ==I was under the impression that a single TRO could cover multiple phases of road works, evacuation, etc. If that is true, then some traffic regulations within a TRO might be active while others might not be implemented - and the discussion on this page is overly simplified and should be updated.==

!!! question
    ==Do electronic regulations need to be defined in an electronic TRO? Does an electronic TRO need to be complete? METR needs to be able to provide a complete set of regulations of a particular type (e.g., speed limits); but TROs containing speed limits can include other traffic regulations. Requiring all traffic regulations to be contained in a TRO and requiring the TRO to contain all defined traffic regulations would be counter-productive to getting METR up and running for core information as quickly as possible. I am inclined to say that for the purposes of METR, traffic regulations do not need to be in a TRO and that TROs do not need to be complete (i.e., the METR user device only cares about the traffic regulations not the TRO - the TRO seems to be for the regulator from a legal context). If this is true, it would then be up to the regional body and/or local jurisdictions to define the importance of defining TROs. Perhaps the one exception to this is when a group of traffic regulations are always enacted (moved into operation) as a group, such as a phase of an emergency response plan.==

!!! question
    ==Would a TRO that defines the operation of a reversible flow lane according to a standard schedule be considered dormant when not active - what if multiple phases are defined in one TRO?==

## TRO state summary

| TRO state | Meaning | Practical notes |
| --- | --- | --- |
| **proposed** | Not yet approved | Still open for comment / revision |
| **approved** | Approved with a future inception time for the regulations in the order | Ready for installation / engagement planning |
| **dormant** | Approved, but none of the contained regulations are engaged | Typical for emergency-preparedness packages |
| **in operation** | In force; regulations are applicable within the jurisdiction at present | Contained regulations may individually be active, inactive, or overridden |
| **terminated** | Previously in effect | Ended by regulation termination times, cancellation, annulment, or replacement by a new TRO |
| **annulled** | Declared invalid as if it never existed | Improper, erroneous, or unlawful order |

## Relationship to regulation states

- Approving a TRO typically approves the package of regulations it contains (subject to local procedure).
- Bringing a TRO **in operation** does not force every contained regulation to be **active** at every moment — time and condition logic still apply.
- **Dormant** TROs are especially important for METR: electronic information may be pre-positioned so that engagement is mostly an activation, not a full redesign, when an emergency occurs.

## Rule-maker checklist

When you change a TRO's state, confirm:

1. which contained regulations change state with it
2. whether physical TCDs must be installed, uncovered, covered, or removed
3. whether electronic METR information must be published, activated, overridden, or withdrawn
4. who is notified (enforcers, partners, public consultation lists)

Next: how the same TRO and regulations appear as [legal, electronic, METR, and physical representations](tro-representations.md).
