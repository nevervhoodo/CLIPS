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
  (slot trip-availiable (type INTEGER))
  (slot price-level (default $$$$))
  (slot children-oriented (type INTEGER))
  (slot party-oriented (type INTEGER))
  (multislot specific-entertainment)
  (slot sightseeing (type INTEGER))
  (slot sea (type INTEGER))
  (slot exotic (type INTEGER))
  (slot out-of-civilization (type INTEGER))
  (slot region)
  (multislot top-season)
  (slot far-away (type INTEGER))
)

(deffacts the_location_list
  (location 
    (location-name Moscow)
    (popularity 8)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
	(children-oriented 1)
    (party-oriented 1)
    (specific-entertainment)
    (sightseeing 1)
    (sea 0)
    (exotic 0)
	(out-of-civilization 0)
	(region Russia)
	(top-season jan feb march apr may jun jul aug sep oct nov dec)
	(far-away 0)
  )
  
  (location 
    (location-name Saint-Petersburg)
    (popularity 9)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
	(children-oriented 1)
    (party-oriented 1)
    (specific-entertainment)
    (sightseeing 1)
    (sea 0)
    (exotic 0)
	(out-of-civilization 0)
	(region Russia)
	(top-season jan feb march apr may jun jul aug sep oct nov dec)
	(far-away 1)
  )
  
  (location 
    (location-name Kazan)
    (popularity 9)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
	(children-oriented 1)
    (party-oriented 0)
    (specific-entertainment)
    (sightseeing 1)
    (sea 0)
    (exotic 0)
	(out-of-civilization 0)
	(region Russia)
	(top-season jan feb march apr may jun jul aug sep oct nov dec)
	(far-away 1)
  )
  
  (location 
    (location-name Turkey)
    (popularity 9)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
	(children-oriented 1)
    (party-oriented 1)
    (specific-entertainment diving)
    (sightseeing 0)
    (sea 1)
    (exotic 0)
	(out-of-civilization 0)
	(region Near-East)
	(top-season may jun jul aug sep oct)
	(far-away 2)
  )
	; =================================================================
  
  (location 
    (location-name Vietnam)
    (popularity 6)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment diving motocross)
    (sightseeing 0)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region Far-East)
    (top-season oct nov dec jan feb march apr)
    (far-away 4)
  )

  (location 
    (location-name Egypt)
    (popularity 3)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment diving safari)
    (sightseeing 0)
    (sea 1)
    (exotic 0)
    (out-of-civilization 0)
    (region Africa)
    (top-season oct nov dec jan feb march apr)
    (far-away 3)
  )
  
  (location 
    (location-name Tunisia)
    (popularity 2)
    (russian-lang 1)
    (trip-availiable 0)
    (price-level $$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment diving safari)
    (sightseeing 0)
    (sea 1)
    (exotic 0)
    (out-of-civilization 0)
    (region Africa)
    (top-season oct nov dec jan feb march apr)
    (far-away 3)
  )

  (location 
    (location-name Morocco)
    (popularity 3)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$) 
    (children-oriented 0)
    (party-oriented 0)
    (specific-entertainment diving surfing safari)
    (sightseeing 0)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region Africa)
    (top-season nov dec jan feb march)
    (far-away 4)
  )

  (location 
    (location-name Tanzania)
    (popularity 1)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$) 
    (children-oriented 0)
    (party-oriented 0)
    (specific-entertainment surfing diving safari motocross)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region Africa)
    (top-season sep oct nov dec jan feb march apr may)
    (far-away 5)
  )

  (location 
    (location-name Seychelles)
    (popularity 4)
    (russian-lang 0)
    (trip-availiable 0)
    (price-level $$$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment surfing diving)
    (sightseeing 0)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region Africa)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 5)
  )

  (location 
    (location-name Maldives)
    (popularity 5)
    (russian-lang 1)
    (trip-availiable 0)
    (price-level $$$) 
    (children-oriented 0)
    (party-oriented 1)
    (specific-entertainment surfing diving)
    (sightseeing 0)
    (sea 1)
    (exotic 0)
    (out-of-civilization 0)
    (region Africa)
    (top-season oct nov dec jan feb march apr)
    (far-away 5)
  )

  (location 
    (location-name Cuba)
    (popularity 4)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$$) 
    (children-oriented 0)
    (party-oriented 0)
    (specific-entertainment diving surfing motocross)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region America)
    (top-season may jun jul aug sep oct)
    (far-away 7)
  )

  (location 
    (location-name "Dominican Republic")
    (popularity 3)
    (russian-lang 0)
    (trip-availiable 0)
    (price-level $$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment diving surfing)
    (sightseeing 0)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region America)
    (top-season oct nov dec jan feb march apr)
    (far-away 7)
  )

  (location 
    (location-name Mexico)
    (popularity 3)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$) 
    (children-oriented 0)
    (party-oriented 1)
    (specific-entertainment diving surfing safari motocross)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 0)
    (region America)
    (top-season oct nov dec jan feb march apr)
    (far-away 8)
  )

  (location 
    (location-name USA)
    (popularity 6)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$$$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment diving surfing shopping motocross)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region America)
    (top-season oct nov dec jan feb march apr)
    (far-away 7)
  )

  (location 
    (location-name Singapore)
    (popularity 3)
    (russian-lang 0)
    (trip-availiable 0)
    (price-level $$$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping)
    (sightseeing 1)
    (sea 1)
    (exotic 0)
    (out-of-civilization 0)
    (region Far-East)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 8)
  )

  (location 
    (location-name UAE)
    (popularity 4)
    (russian-lang 1)
    (trip-availiable 0)
    (price-level $$$$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment diving shopping)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 0)
    (region Near-East)
    (top-season nov dec jan feb march)
    (far-away 3)
  )

  (location 
    (location-name Israel)
    (popularity 5)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment diving shopping)
    (sightseeing 1)
    (sea 1)
    (exotic 0)
    (out-of-civilization 0)
    (region Near-East)
    (top-season oct nov dec jan feb march apr)
    (far-away 3)
  )

  (location 
    (location-name Georgia)
    (popularity 5)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment motocross)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region Near-East)
    (top-season march apr may jun jul aug sep oct nov)
    (far-away 2)
  )

  (location 
    (location-name Armenia)
    (popularity 5)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment motocross)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region Near-East)
    (top-season march apr may jun jul aug sep oct nov)
    (far-away 2)
  )
)

(deftemplate response (slot destination))

(deftemplate question
   (slot the-question)
   (multislot valid-answers)
   (slot answer-name)
)
   
(deftemplate answer 
	(slot name)
	(slot value)
)

(deffunction count-facts (?template)
  (bind ?count 0)
  (do-for-all-facts ((?fct ?template)) TRUE
    (bind ?count (+ ?count 1)))
 ?count)

(deffunction ask (?question ?allowed-values)
	;(if (< (count-facts location) 3) then (
	;	(printout t ((first$ the_location_list) name) crlf)
	;) else (

	   (printout t ?question crlf)
	   (if (not (eq (length$ ?allowed-values) 0)) then (printout t "Select one of: " ?allowed-values crlf))
	   (bind ?got-answer (read))
	   (if (lexemep ?got-answer) then (bind ?got-answer (lowcase ?got-answer)))
	   (if (not (eq (length$ ?allowed-values) 0)) then 
		  (while (not (member$ ?got-answer ?allowed-values)) do
			(printout t ?question)
			(bind ?got-answer (read))
			(if (lexemep ?got-answer) then (bind ?got-answer (lowcase ?got-answer))))
		)
   ?got-answer
   ;)
)

(deffacts question-set
    (question (answer-name price)
            (the-question "How much money are you ready to spend?" )
            (valid-answers $ $$ $$$ $$$$))
    
    (question (answer-name distance)
            (the-question "How far you want to go?" )
            (valid-answers near normal far))
    
    (question (answer-name sea)
            (the-question "Do you want to go to the sea?" )
            (valid-answers yes no "no matter"))
    
    (question (answer-name language)
            (the-question "Can you speek English?" )
            (valid-answers yes no "no matter"))
    
    (question (answer-name trip-around)
            (the-question "Are planning to trip around?" )
            (valid-answers yes no "no matter"))
    
    (question (answer-name sightseeing)
            (the-question "Do you want some sightseeing?" )
            (valid-answers yes no "no matter"))
    
    (question (answer-name civilization)
            (the-question "Do you need civilization around there?" )
            (valid-answers yes no "no matter"))
    
    (question (answer-name activities)
            (the-question "What activities to you want to have?" )
            (valid-answers diving motocross safari surfing shopping ski none))
    
    (question (answer-name children)
            (the-question "Are you going with children?" )
            (valid-answers yes no))
    
    (question (answer-name party)
            (the-question "Are you going a big party?" )
            (valid-answers yes no))
    
    (question (answer-name top-season)
            (the-question "When are you planning to go?" )
            (valid-answers jan feb march apr may jun jul aug sep oct nov dec))
    
    (question (answer-name exotic)
            (the-question "Wanna have some exotic?))" )
            (valid-answers yes no "no matter"))
    
    (question (answer-name region)
            (the-question "What region you wanna go?" )
            (valid-answers Africa Far-East Near-East Russia America "no matter"))
)

(defrule ask-a-question
   ?t <- (question (the-question ?the-question)
             (valid-answers ?valid-answers)
			 (answer-name ?slot-name))
	;?l1 <- (location)
	;?l2 <- (location)
	;(not (eq ?l1:?slot-name ?l2:?slot-name))
    =>
   (assert (answer (name ?slot-name)
					(value (ask ?the-question ?valid-answers))))	
	;(retract ?t)
)

(defrule select-month "Select month" 
    (answer (name top-season) (value ?value))
    ?dest <- (location (top-season !~?value))
    => 
    (retract ?dest)
)

(defrule select-region-value "Select region" 
    (answer (name region) (value ?value))  
    ?dest <- (location (location-name ?name) (region ?reg))
	(not (eq ?reg ?value))
    => 
	(retract ?dest)
)


(defrule select-specific-entertainment-value "Select specific-entertainment" 
    (answer (name specific-entertainment) (value ?value))
    ?dest <- (location (specific-entertainment ?entertainment))
	(not (eq ?entertainment ?value))
    => 
    (retract ?dest)
)

(defrule select-english-no "Select lang" 
    (answer (name russian-lang) (value no))
    ?dest <- (location (russian-lang 0))
    => 
    (retract ?dest)
)

(defrule select-trip-around-yes "Select trip-around" 
    (answer (name trip-availiable) (value yes))
    ?dest <- (location (trip-availiable 0))
    => 
    (retract ?dest)
)
(defrule select-trip-around-no "Select trip-around" 
    (answer (name trip-availiable) (value no))
    ?dest <- (location (trip-availiable 1))
    => 
    (retract ?dest)
)

(defrule select-sightseeing-yes "Select sightseeing" 
    (answer (name sightseeing) (value yes))
    ?dest <- (location (sightseeing 0))
    => 
    (retract ?dest)
)
(defrule select-sightseeing-no "Select sightseeing" 
    (answer (name sightseeing) (value no))
    ?dest <- (location (sightseeing 1))
    => 
    (retract ?dest)
)

(defrule select-civilization-yes "Select civilization" 
    (answer (name out-of-civilization) (value yes))
    ?dest <- (location (out-of-civilization 0))
    => 
    (retract ?dest)
)
(defrule select-civilization-no "Select civilization" 
    (answer (name out-of-civilization) (value no))
    ?dest <- (location (out-of-civilization 1))
    => 
    (retract ?dest)
)

(defrule select-children-yes "Select children" 
    (answer (name children-oriented) (value yes))
    ?dest <- (location (children-oriented 0))
    => 
    (retract ?dest)
)
(defrule select-children-no "Select children" 
    (answer (name children-oriented) (value no))
    ?dest <- (location (children-oriented 1))
    => 
    (retract ?dest)
)

(defrule select-party-yes "Select party" 
    (answer (name party-oriented) (value yes))
    ?dest <- (location (party-oriented 0))
    => 
    (retract ?dest)
)
(defrule select-party-no "Select party" 
    (answer (name party-oriented) (value no))
    ?dest <- (location (party-oriented 1))
    => 
    (retract ?dest)
)

(defrule select-exotic-yes "Select exotic" 
    (answer (name exotic) (value yes))
    ?dest <- (location (exotic 0))
    => 
    (retract ?dest)
)
(defrule select-exotic-no "Select exotic" 
    (answer (name exotic) (value no))
    ?dest <- (location (exotic 1))
    => 
    (retract ?dest)
)


(defrule select-beach-yes "Select sea holiday" 
	(answer (name sea) (value yes))
	?dest <- (location (sea 0))
	=> 
	(retract ?dest)
)
(defrule select-beach-no "Select sea holiday" 
	(answer (name sea) (value no))
	?dest <- (location (sea 1))
	=> 
	(retract ?dest)
)

