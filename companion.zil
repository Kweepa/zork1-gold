<OBJECT JENNI
    (LOC LOCAL-GLOBALS)
    (DESC "Jenni")
    (SYNONYM COMPANION JENNI)
    (FLAGS ACTORBIT CONTBIT NDESCBIT)
    (ACTION COMPANION-F)>

<OBJECT JEPPI
    (LOC LOCAL-GLOBALS)
    (DESC "Jeppi")
    (SYNONYM COMPANION JEPPI)
    (FLAGS ACTORBIT CONTBIT NDESCBIT)
    (ACTION COMPANION-F)>

<OBJECT JEQQI
    (LOC LOCAL-GLOBALS)
    (DESC "Jeqqi")
    (SYNONYM COMPANION JEQQI)
    (FLAGS ACTORBIT CONTBIT NDESCBIT)
    (ACTION COMPANION-F)>

<OBJECT JERRI
    (LOC LOCAL-GLOBALS)
    (DESC "Jerri")
    (SYNONYM COMPANION JERRI)
    (FLAGS ACTORBIT CONTBIT NDESCBIT)
    (ACTION COMPANION-F)>

<OBJECT JESSI
    (LOC LOCAL-GLOBALS)
    (DESC "Jessi")
    (SYNONYM COMPANION JESSI)
    (FLAGS ACTORBIT CONTBIT NDESCBIT)
    (ACTION COMPANION-F)>

<ROUTINE COMPANION-F ("OPTIONAL" (MODE <>) "AUX" (FLG <>) X N)
    <COND (<VERB? TELL> <TELL "She doesn't seem interested."> <CRLF>)
        (<VERB? EXAMINE>
            <TELL D ,COMPANION>
            <TELL " is a ">
            <TELL <GET ,COMPANION-ATTRIBS ,COMPANION-ATTRIB>>
            <TELL " ">
            <TELL <GET ,COMPANION-TYPES ,COMPANION-TYPE>>
            <TELL " with a ">
            <TELL <GET ,COMPANION-ACCENTS ,COMPANION-ACCENT>>
            <TELL " accent. She has ">
            <PRINT-CONTENTS ,COMPANION>
            <TELL ".">
            <CRLF>)>
>

<CONSTANT RELAXED-FIDGETS
    <LTABLE
        0
        "hums a few bars from a space ballad"
        "pokes at her phone"
        "picks at her jumper"
        "practices some dance moves"
        "sighs and looks at you with a bored expression"
        "juggles jade, jet, and jackfruit"
        "catches a dust mote and eyes it suspiciously">>

<CONSTANT STRESSED-FIDGETS
    <LTABLE
        0
        "hops anxiously from side to side"
        "hums a few bars from a funeral dirge"
        "looks around nervously"
        "glares at you expectantly"
        "wipes sweat from her brow"
        "frantically types something into her phone"
        "shivers and hugs herself"
        >>

<CONSTANT DOC-COATS
    <PLTABLE "duffel coat" "hoodie" "smoking jacket" "dressing gown" "lab coat">>

<CONSTANT COMPANION-ATTRIBS <PLTABLE
    "spacey" "speedy" "spindly" "sporty" "spurious">>

<CONSTANT COMPANION-TYPES <PLTABLE
    "punk" "queen" "rasta" "sexpot" "teenager">>

<CONSTANT COMPANION-ACCENTS <PLTABLE
    "rigelian" "brummie" "welsh" "cornish" "highland">>

<OBJECT AARDVARK
    (DESC "aardvark")
    (FLAGS VOWELBIT)
    (LOC LOCAL-GLOBALS)>
<OBJECT ABACUS
    (DESC "abacus")
    (FLAGS VOWELBIT)
    (LOC LOCAL-GLOBALS)>
<OBJECT ACCORDION
    (DESC "accordion")
    (FLAGS VOWELBIT)
    (LOC LOCAL-GLOBALS)>
<OBJECT ADDICTION
    (DESC "addiction")
    (FLAGS VOWELBIT)
    (LOC LOCAL-GLOBALS)>
<OBJECT AEROSOL
    (DESC "aerosol")
    (FLAGS VOWELBIT)
    (LOC LOCAL-GLOBALS)>

<GLOBAL COMPANION <>>
<GLOBAL COMPANION-ATTRIB 1>
<GLOBAL COMPANION-TYPE 1>
<GLOBAL COMPANION-ACCENT 1>

<ROUTINE COMPANION-INIT ("AUX" R)
    <SETG COMPANION-ATTRIB <RANDOM 5>>
    <SETG COMPANION-TYPE <RANDOM 5>>
    <SETG COMPANION-ACCENT <RANDOM 5>>
    <SET R <RANDOM 5>>
    <COND (<EQUAL? .R 1> <SETG COMPANION ,JENNI>)
            (<EQUAL? .R 2> <SETG COMPANION ,JEPPI>)
            (<EQUAL? .R 3> <SETG COMPANION ,JEQQI>)
            (<EQUAL? .R 4> <SETG COMPANION ,JERRI>)
            (<EQUAL? .R 5> <SETG COMPANION ,JESSI>)>
    <MOVE ,COMPANION ,WEST-OF-HOUSE>
    <SET R <RANDOM 5>>
    <COND (<EQUAL? .R 1> <MOVE ,AARDVARK ,COMPANION>)
            (<EQUAL? .R 2> <MOVE ,ABACUS ,COMPANION>)
            (<EQUAL? .R 3> <MOVE ,ACCORDION ,COMPANION>)
            (<EQUAL? .R 4> <MOVE ,ADDICTION ,COMPANION>)
            (<EQUAL? .R 5> <MOVE ,AEROSOL ,COMPANION>)>
>

<ROUTINE I-COMPANION ()
    <COND (<NOT <EQUAL? ,HERE WEST-OF-HOUSE>>
            <TELL D ,COMPANION>
            <TELL " pokes at the mailbox."> <CRLF>)
        (T <TELL D ,COMPANION>
            <TELL " ">
            <TELL <PICK-ONE ,RELAXED-FIDGETS>>
            <TELL ".">
            <CRLF>)>>