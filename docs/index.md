# Management of Electronic Traffic Regulations (METR)

<div class="draft4-watermark" aria-hidden="true"></div>

!!! note
    ==This is a draft website for ISO TC 204 WG 19 (and other invited experts) to review via HuddleKit. Items that are highlighted in yellow will be removed before the final version is published. The website is managed within GitHub and updates can be made at any time, but the status shown on each page is an indicator of how close the page is to being ready for publication to the main public website.==

    ==Each page on this site is labelled as one of the following:==

    - ==FINAL DRAFT: The page is considered essentially ready for publication on the [public website](https://isotc204.org/iso24315/) and is waiting for final approval from ISO TC 204 WG 19. Comments are still welcome to further enhance the page and detailed comments for issues such as grammar are useful.==
    - ==DRAFT: The page is believed to have the major key points and the outline is not expected to radically change. However, further details and content are expected to be added, including examples, diagrams, hyperlinks and other content. Detailed reviews are encouraged.==
    - ==PRE-DRAFT: The page has substantial content already, but major points might still be missing and the outline of the content might change. Comments are welcome to further enhance the content of the page but detailed reviews are not yet encouraged.==
    - ==NOT READY FOR REVIEW: The page is expected to change significantly and therefore any review beyond looking at the high-level content and structure is not yet encouraged.==

!!! note
    ==Audience: Non-technical, unfamiliar with METR==

    ==Purpose: inform industry, encourage deployment==

    ==Scope: “Is it needed?”, “Why should I care?”, “How does it fit into priorities?”==

!!! question
    ==What style rules do we want to use for this website? For example, do we use all aspects of ISO (sentence case titles, numbered clauses, no hanging paragraphs, ISO spelling, etc.) or do we use a more relaxed style?==

!!! abstract ""
    METR provides users with geo-specific, trustworthy, timely, authoritative, machine-interpretable **<u>[rules](https://isotc204.org/iso24315-vocab/latest/terms/rule/)</u> and <u>[regulations](https://isotc204.org/iso24315-vocab/latest/terms/regulation/)</u> (R&amp;Rs)** established by jurisdictional entities

!!! note
    This website uses the [METR vocabulary](https://isotc204.org/iso24315-vocab/latest/) to define key terms. This website includes updates to ISO 24315-1:2025 that are not yet approved by ISO, but will be submitted for consideration for teh next edition of the standard.

## The Challenge

The modern driving experience is rapidly evolving. The use of navigation systems is extremely widespread and the adoption of Level 1-3 Automated Driving Systems (ADS) continues to expand. However, there are challenges in moving into Level 4 and 5 ADS. For the most part, current systems still rely upon a human driver in the loop due to challenges in consistently and accurately recognizing and following rules and regulations (R&amp;Rs).

Most users are familiar with the problems. Systems leveraging databases face challenges in maintaining up-to-date information. As a result, many users of these systems have experienced their systems reporting an erroneous speed limit.

![Example of database error](images/SpeedLimitDiscrepancy.png)

<figure><figcaption>Example of database error</figcaption></figure>

Video image processing systems also have challenges. Not only can signs be obscured, but signs can sometimes be misinterpreted.

![Video image processing error](images/VideoProcessingError.png)

<figure><figcaption>Example of video image processing error</figcaption></figure>

## Limitations of the Status Quo

These errors can lead to drivers unintentionally violating the intended R&amp;Rs; however, at present, the driver is still responsible for catching these inaccuracies and ensuring that the vehicle is operated in a safe and compliant manner. Migrating to Level 4 and Level 5 ADS requires a process that prevents these errors from happening. While there are some Level 4 Automated Driving Systems in operation, they have operational design domains (ODDs) that are limited to areas where the operating entities ensure that all R&amp;Rs are properly understood. This type of solution can work for prototype and early deployments, but is not scalable for large-scale use. To achieve large scale deployments, the industry needs a way to provide R&amp;Rs to vehicles in a trustworthy, electronic manner.

If these errors persist, users will lose trust in driving automation and information systems and deployment of life-saving technologies will be delayed.

## The METR Solution

<div class="video-container">
    <iframe
        width="560"
        height="315"
        src="https://www.youtube.com/embed/kqrGo-4EMe4?si=P_dMfUkAk8rlYHUM"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        referrerpolicy="strict-origin-when-cross-origin"
        allowfullscreen>
    </iframe>
</div>

<figure><figcaption>METR solution</figcaption></figure>

<div class="button-row" markdown="span">

[METR Vision](METRVision.pdf "A 13-page PDF describing METR"){ .md-button .md-button--primary target="_blank" }
[Vocabulary](https://isotc204.org/iso24315-vocab/latest/ "Definitions for key terms used in METR"){ .md-button .md-button--primary }
[Overview Presentation](METROverview.pdf "A 36-slide presentation describing METR"){ .md-button .md-button--primary target="_blank" }
[Discussion forum](https://github.com/ISO-TC204/iso24315/discussions){ .md-button .md-button--primary target="_blank" }

</div>

METR defines a complete, end-to-end (i.e., from rule-maker to user) approach to managing and distributing R&amp;Rs. METR's holistic approach enables the secure electronic dissemination of trustworthy R&amp;Rs, ensuring that all stakeholders and their driving and navigation support systems have access to current R&amp;Rs. The system can be used to disseminate all [types of regulations](what-is-metr.md), including regulatory, advisory, and guidance information, as well as rules of the road, as defined in the highway code. The technology will assist in both improving the quality of information provided to human drivers as well as enabling better trust of Automated Driving Systems (ADS).

Enabling the trustworthy distribution of electronic regulations results in a complex system of systems, where the components are acquired and managed by independent entities but are still interoperable. The reference architecture for METR is defined in ISO 24315-3 and summarized in the [physical view](physical-view.md).

## Purpose of this Website

This website is intended to provide an overview of the METR standards, as defined in the ISO 24315 series, and to provide guidance on the development, deployment and operation of systems conforming to the METR standards. The normative METR requirements that are internationally applicable are are defined in the ISO 24315 series. However, these standards are intended to be supplemented by regional (e.g., European, North American, etc.) standards that refine the reference architecture into preferred deployment scenarios and protocols required for interoperability. This site provides links to these regional customizations of the international standards.
