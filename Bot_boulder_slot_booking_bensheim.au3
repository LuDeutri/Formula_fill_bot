#cs
data: Bot_boulder_slot_booking_bensheim.au3
author: Luca Deutrich
date: 08.06.2021
version: v1.0
description:

You must chose the time slot first. This bot fills only the person data and finishing the booking.
To do this, you need to double-click the bot to start it like an .exe and then click in the first text field of the web form.
The bot starts a sequence of buttons, this sequence must pass to the formular structure.
#ce

;; parameter
Enum $abo, $ermaessigt, $kind, $kleinKind, $regulaer, $familieCard

;; ----------------------------------
;; 		USER CODE ZONE begin
;; ----------------------------------

$commentField = "" 					;; book comment field

;; ----------------------------------
;; person data begin (must be adjusted)
;; ----------------------------------

$personNumber = 3; ;; 0 - 9			;; personNumber without the organisator

;; organisator data
$firstName_orga 	= "OberMax"
$lastName_orga 		= "Mustermann"
$streetAdress_orga 	= "Musterstraße 123"
$plz_orga			= "12345"
$city_orga			= "Musterdorf"
$mobilNumber_orga	= "1234567891011"
$email_orga			= "max.musterman@gmail.com"
$customerID_orga	= "" 			;; if not available fill an empty string  --> ""
$tarif_orga			= $regulaer		;; must be filled with one the following arguments: $abo, $ermaessigt, $kind, $kleinKind, $regulaer, $familieCard


;; person_1
$firstName_1 	= "Max"
$lastName_1 	= "Musterman"
$email_1 		= "max.musterman@gmail.com"
$customerID_1 	= ""				;; if not available fill an empty string  --> ""
$tarif_1		= $ermaessigt		;; must be filled with one the following arguments: $abo, $ermaessigt, $kind, $kleinKind, $regulaer, $familieCard

#cs (comment start)
;; person_2
$firstName_2	= "Max"
$lastName_2 	= "Musterman"
$email_2 		= "max.musterman@gmail.com"
$customerID_2 	= ""				;; if not available fill an empty string  --> ""
$tarif_2		= $ermaessigt		;; must be filled with one the following arguments: $abo, $ermaessigt, $kind, $kleinKind, $regulaer, $familieCard

;; person_3
$firstName_3 	= "Max"
$lastName_3 	= "Musterman"
$email_3 		= "max.musterman@gmail.com"
$customerID_3 	= ""				;; if not available fill an empty string  --> ""
$tarif_3		= $regulaer			;; must be filled with one the following arguments: $abo, $ermaessigt, $kind, $kleinKind, $regulaer, $familieCard


;; person_4
$firstName_4 	= "Max"
$lastName_4 	= "Musterman"
$email_4 		= "max.musterman@gmail.com"
$customerID_4 	= ""				;; if not available fill an empty string  --> ""
$tarif_4		= $regulaer			;; must be filled with one the following arguments: $abo, $ermaessigt, $kind, $kleinKind, $regulaer, $familieCard

;; person_5
$firstName_5 	= "Max"
$lastName_5 	= "Musterman"
$email_5 		= "max.musterman@gmail.com"
$customerID_5 	= ""				;; if not available fill an empty string  --> ""
$tarif_5		= $regulaer			;; must be filled with one the following arguments: $abo, $ermaessigt, $kind, $kleinKind, $regulaer, $familieCard
#ce (comment end)

;; up to 9 persons possible with always the same structure

;; ----------------------------------
;; 		USER CODE ZONE end
;;
;; person data end (don´t change anything below this lines if you dont know what you do)
;; ----------------------------------

;; ----------------------------------
;; 	PROGRAMMER CODE ZONE begin
;;
;; don´t change anything below this lines if you dont know what you do
;; ----------------------------------

;; error checking
if $personNumber > 9 or $personNumber < 0 Then Exit

;; click time (time after start the bot and click into the first textfield of the web form)
sleep(3000)

;; ----------------------------------
;; set organisator data begin
;; ----------------------------------

send($firstName_orga)
nextLine(1)
send($lastName_orga)
nextLine(1)
send($streetAdress_orga)
nextLine(1)
send($plz_orga)
nextLine(1)
send($city_orga)
nextLine(1)
send($mobilNumber_orga)
nextLine(2)
send($email_orga)
nextLine(1)
send($customerID_orga)

nextLine(2)
send("{SPACE}")
for $i=0 to $tarif_orga
   send("{DOWN}")
Next
send("{ENTER}")
nextLine(1)
sleep(1000)

;; at this point coursor is set to "add participant"

;; ----------------------------------
;; organisator data end
;; ----------------------------------

;; ----------------------------------
;; person data begin
;; ----------------------------------

if $personNumber > 0 Then
   createPerson()
   setPerson($firstName_1, $lastName_1, $email_1, $customerID_1, $tarif_1)
EndIf
if $personNumber > 1 Then
   createPerson()
   setPerson($firstName_2, $lastName_2, $email_2, $customerID_2, $tarif_2)
EndIf
if $personNumber > 2 Then
   createPerson()
   setPerson($firstName_3, $lastName_3, $email_3, $customerID_3, $tarif_3)
EndIf
if $personNumber > 3 Then
   createPerson()
   setPerson($firstName_4, $lastName_4, $email_4, $customerID_4, $tarif_4)
EndIf
if $personNumber > 4 Then
   createPerson()
   setPerson($firstName_5, $lastName_5, $email_5, $customerID_5, $tarif_5)
EndIf
if $personNumber > 5 Then
   createPerson()
   setPerson($firstName_6, $lastName_6, $email_6, $customerID_6, $tarif_6)
EndIf
if $personNumber > 6 Then
   createPerson()
   setPerson($firstName_7, $lastName_7, $email_7, $customerID_7, $tarif_7)
EndIf
if $personNumber > 7 Then
   createPerson()
   setPerson($firstName_8, $lastName_8, $email_8, $customerID_8, $tarif_8)
EndIf
if $personNumber > 8 Then
   createPerson()
   setPerson($firstName_9, $lastName_9, $email_9, $customerID_9, $tarif_9)
EndIf

;; ----------------------------------
;; person data end
;; ----------------------------------

;; ----------------------------------
;; booking finish begin
;; ----------------------------------

nextLine(2)
send($commentField) ;; comment field
nextLine(1)
send("{SPACE}") 	;; deactivate informations about offers
nextLine(1)
send("{SPACE}") 	;; set checkbox for the AGB
nextLine(3)
send("{SPACE}") 	;; set checkbox for the datause
nextLine("{SPACE}")
send("{ENTER}")

;; ----------------------------------
;; booking finish end
;; ----------------------------------

;; ----------------------------------
;; functions begin
;; ----------------------------------

#cs
   fill person data
#ce
Func setPerson( $firstName, $lastName, $email, $customerID, $tarif)
   send($firstName)
   nextLine(1)
   send($lastName)
   nextLine(1)
   send($email)
   nextLine(1)
   send($customerID)
   nextLine(1)
   send("{SPACE}")
   for $i=0 to $tarif
	  send("{DOWN}")
   Next
   send("{ENTER}")
   nextLine(2)
   sleep(2000)
EndFunc

#cs
   add one more person
#ce
Func createPerson()
   send("{SPACE}")
   backLine(6)
EndFunc

Func nextLine($numberOfJumpingLines)
   for $i=1 to $numberOfJumpingLines
	  send("{TAB}")
   Next
EndFunc

Func backLine($numberOfJumpingLines)
   for $i=1 to $numberOfJumpingLines
	  send("+{TAB}")
   Next
EndFunc

;; ----------------------------------
;; functions end
;; ----------------------------------