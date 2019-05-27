;;;======================================================
;;;   Travel Expert System 
;;;     
;;;   Helps to make decision on travel destination
;;;   CLIPS Version 6.3 
;;;
;;;   To execute, merely load, reset and run.
;;;======================================================


; (defmodule LOCATIONS) 

(deftemplate location
  (slot location-name (default ?NONE))
  (slot popularity (type INTEGER))	
  (slot russian-lang (type INTEGER))
  (slot english-lang (type INTEGER))
  (slot trip-availiable (type INTEGER))
  (slot price-level (default $$$$))
  (slot children-oriented (type INTEGER))
  (slot party-oriented (type INTEGER))
; (multislot specific-entertainment)
  (slot sightseeing (type INTEGER))
  (slot sea (type INTEGER))
  (slot exotic (type INTEGER))
)

(deffacts the_location_list
  (location (location-name Russia-Cities) (popularity 8) (russian-lang 1) (english-lang 0) (trip-availiable 1) (price-level $) 
	(children-oriented 1) (party-oriented 1)  (sightseeing 1) (sea 0) (exotic 0))
)