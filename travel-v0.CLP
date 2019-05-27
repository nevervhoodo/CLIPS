;;;======================================================
;;;   Travel Expert System 
;;;     
;;;   Helps to make decision on travel destination
;;;   CLIPS Version 6.3 
;;;
;;;   To execute, merely load, reset and run.
;;;======================================================

(defmodule REGIONS (import MAIN ?ALL))

(deftemplate REGIONS::region
  (slot region-name (default ?NONE))
  (multislot top-season )

(deffacts REGIONS::the-region-list
  (region (name Russia) (top-season (jun, jul, aug)) (body medium))
)

(defmodule LOCATIONS (import MAIN ?ALL)) 

(deftemplate LOCATIONS::location
  (slot location-name (default ?NONE))
  (slot popularity (type INTEGER))
  (slot far-away (type INTEGER))	
  (slot russian-lang (type INTEGER))
  (slot english-lang (type INTEGER))
  (slot trip-availiable (type INTEGER))
  (slot price-level (default $$$$))
  (slot children-oriented (type INTEGER))
  (slot party-oriented (type INTEGER))
  (multislot specific-entertainment)
  (slot sightseeing (type INTEGER))
  (slot sea (type INTEGER))
  (slot exotic (type INTEGER))
)

(deffacts LOCATIONS::the-location-list
  (location (location-name Moscow) (popularity 8) (far-away 0) (russian-lang 1) (english-lang 0) (trip-availiable 1) 
	(price-level $$) (children-oriented 1) (party-oriented 1) (specific-entertainment ()) (sightseeing 1) (sea 0) (exotic 0))
)
  
(defmodule DESTINATION (import MAIN ?ALL))
