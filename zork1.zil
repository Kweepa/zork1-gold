"ZORK1 for
	        Zork I: The Great Underground Empire
	(c) Copyright 1983 Infocom, Inc. All Rights Reserved.
	-- CHEAPO EDITION"
 
<VERSION XZIP>
<SETG ZORK-NUMBER 1>
<SETG PLUS-MODE T>
<SET REDEFINE T>
<SETG NEW-VOC? T>
<FREQUENT-WORDS?>
<CONSTANT RELEASEID 42>
 
<PRINC "Compiling Grueland...
">

<COND (<GASSIGNED? PREDGEN>
       <ID 0>)>
 
ON!-INITIAL
OFF!-INITIAL   ;"makes dubugging possible -pld"

<DIRECTIONS NORTH EAST WEST SOUTH NE NW SE SW UP DOWN IN OUT LAND>
<PROPDEF SIZE 5>
<PROPDEF CAPACITY 0>
<PROPDEF VALUE 0>
<PROPDEF TVALUE 0>

<INSERT-FILE "TELLS" T>
<INSERT-FILE "SYNTAX" T>
<INSERT-FILE "DUNGEON" T>
<INSERT-FILE "GLOBALS" T>

<INSERT-FILE "CLOCK" T>
<INSERT-FILE "LOOP" T>
<INSERT-FILE "PARSER" T>
<INSERT-FILE "VERBS" T>
<INSERT-FILE "ACTIONS" T>
<INSERT-FILE "HINTS" T>
<INSERT-FILE "COMPANION" T>