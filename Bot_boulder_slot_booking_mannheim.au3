#cs
data: Bot_boulder_slot_booking_mannheim.au3
author: Luca Deutrich
date: 08.06.2021
version: v1.0
description:

You must chose time slot and person number first. This bot fills only the person data and finishing the booking.
To do this, you need to double-click the bot to start it like an .exe and then click in the first text field of the web form.
The bot starts a sequence of buttons, this sequence must pass to the formular structure.
#ce

;; click time (time after start the bot and click into the first textfield of the web form)
sleep(3000)

#cs
person structure

first name
last name
email
email
mobile number
#ce

;; ----------------------------------
;; customized personal data
;; ----------------------------------

   ;; first person
	  send("Max")
	  send("{TAB}")
	  send("Mustermann")
	  send("{TAB}")
	  send("max.mustermann@gmail.com")
	  send("{TAB}")
	  send("max.mustermann@gmail.com")
	  send("{TAB}")
	  send("123456789") ;; mobile number
	  send("{TAB}")
	  
#cs comment start
   ;; second person
	  send("Max")
	  send("{TAB}")
	  send("Mustermann")
	  send("{TAB}")
	  send("max.mustermann@gmail.com")
	  send("{TAB}")
	  send("max.mustermann@gmail.com")
	  send("{TAB}")
	  send("123456789") ;; mobile number
	  send("{TAB}")

   ;; third person
	  send("Max")
	  send("{TAB}")
	  send("Mustermann")
	  send("{TAB}")
	  send("max.mustermann@gmail.com")
	  send("{TAB}")
	  send("max.mustermann@gmail.com")
	  send("{TAB}")
	  send("123456789") ;; mobile number
	  send("{TAB}")

   ;; fourth person
	  send("Max")
	  send("{TAB}")
	  send("Mustermann")
	  send("{TAB}")
	  send("max.mustermann@gmail.com")
	  send("{TAB}")
	  send("max.mustermann@gmail.com")
	  send("{TAB}")
	  send("123456789") ;; mobile number
	  send("{TAB}")
	  
#ce comment end
;; ----------------------------------
;; dont change any script below this if u dont know what you do
;; ----------------------------------

;; proof person data
send("{SPACE}")

;; jump over contact person fields
send("{TAB}")
send("{TAB}")
send("{TAB}")
send("{TAB}")

;; set checkbox for aggreeing the policy
send("{SPACE}")

;; book
send("{TAB}")
send("{SPACE}")