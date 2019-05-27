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
  (multislot top-season (default any))

(deffacts REGIONS::the-region-list
  (region (name Russioa) (color red) (body medium) (sweetness bitter))
)


(defmodule LOCATIONS (import MAIN ?ALL))
  
(defmodule DESTINATION (import MAIN ?ALL))
