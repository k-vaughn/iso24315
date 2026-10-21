# Transport Environment

<div class="draft3-watermark" aria-hidden="true"></div>

## Travel Characteristics

A traveller must comply with all relevant R&amp;Rs when operating a vehicle. The nature of trips impact how one might design a vehicle to store R&amp;Rs.

Studies[^vmt] have shown that a significant portion of vehicle miles travelled is accumulated within a short distance of where a vehicle is garaged (for surface transport). Another significant portion of vehicle miles travelled is accumulated when travelling long distances. However, even on these longer trips, a significant portion of the journey is often on routes that the vehicle has previously travelled. These longer trips often include routes that the vehicle has never previously travelled, which can include routes that the vehicle has never previously travelled. As a result, most of the miles travelled by a vehicle are on routes that the vehicle has previously travelled.

Nonetheless, the operator of a vehicle must be able to comply with all relevant R&amp;Rs, even when operating a vehicle on a route that the vehicle has never previously travelled, including cases when there is little notice of the roads to be travelled. For example, a traveller may be on a road trip and decide to diverge to avoid a traffic issue, refuel, visit a store, etc. If the vehicle is operated by an automated system, the system must be prepared for such a change in plans while still complying with relevant R&amp;Rs.

To make matters worse, even when the traveller knows about the planned trip well in advance, the traveller often does not share their plans with the vehicle until the journey is about to start or is already underway; yet the traveller has an expectation to be able to get into the vehicle and immediately start the journey without any significant delay. To meet user's expectations, the vehicle needs to be designed to gain access to relevant R&amp;Rs within the user's time expectations, even when external factors prove challenging (e.g. WiFi is not available and cellular service is poor).

!!! note
    The studies are based on road vehicles; but the essence that the vast majority of miles travelled by any vehicle (including PMRs and micromobility vehicles) will be travelled over a set of roads that the vehicle has previously travelled. 

## Vehicle Limitations

Vehicles are limited in their ability to store R&amp;Rs and communications are generally limited to wireless communication. 

Due to the challenges in maintaining perfect connectivity with wireless communications, it is preferable that a vehicle be able to store R&amp;Rs for its entire journey; thus, even if connectivity is lost, the vehicle can still comply with relevant pre-announced R&amp;Rs. This storage will likely need to include rules near the expected route, in case of any diversions along the way. And since most trips are close to where the vehicle is garaged, vehicles may be designed to store all relevant local R&amp;Rs. 

## Privacy Considerations

Privacy is a critical consideration when designing a vehicle to store R&amp;Rs. The vehicle must be designed to protect the privacy of the traveller and the traveller's personally identifiable information (PII). PII includes information that can be used to derive the traveller's identity. For example, if a vehicle only collected rules in its immediate vicinity, an entity monitoring the communications could potentially locate the center of the request and derive the location of the vehicle. Over time, the entity could likely determine where the vehicle is garaged and then derive the identity of a small number of users based o the residents of the address. With additional monitoring, the entity could identify travel patterns and other characteristics about the user.

The system needs to ensure that PII is protected and obfuscated as much as possible.

## Impact on METR Design

To accommodate these issues and support marketplace flexibility, METR is designed to allow the vehicle to request which R&amp;Rs are relevant to its needs. This decision is completely left to the vehicle (i.e., the adapter system), which is external to METR. For example, a vehicle may choose to store:

1. All relevant motion-related R&amp;Rs in the immediate vicinity (e.g., 5km) of the vehicle's current location,
1. All relevant motion-related R&amp;Rs within the vehicle's historic operating area,
1. All relevant motion-related R&amp;Rs along a planned journey,
1. All relevant parking-related R&amp;Rs in areas where the vehicle has historically parked,
1. All relevant parking-related R&amp;Rs near the destination of the current journey, and 
1. All of the above for several additional fictitious datasets to obfuscate the vehicle's operating patterns.

To support this, METR needs to be able to handle each vehicle having multiple subscriptions for R&amp;Rs. Further, to efficiently manage communications given slowly evolving regulatory environment, METR needs to be able to manage the updates to the vehicle's store of R&amp;Rs without constantly downloading the entire set of R&amp;Rs when a single electronic regulation changes. Finally, METR needs to be able to respond to these requests quickly and reliably.

[^vmt]: Federal Highway Administration, [Percent of Trips and Vehicle Miles by Trip Length](https://www.fhwa.dot.gov/policyinformation/pubs/pl08021/fig4_5.cfm), *Our Nation's Highways: 2008*, Figure 4-5; McGuckin, N. and Fucci, A., [Summary of Travel Trends: 2017 National Household Travel Survey](https://nhts.ornl.gov/assets/2017_nhts_summary_travel_trends.pdf), Federal Highway Administration, 2018.
