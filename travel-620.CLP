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

(deftemplate start
	(slot name)
)

(deftemplate finish
	(slot name)
)

(deffacts str (finish (name "start")))


(deffacts the_location_list
  (location
    (location-name Moscow)
    (popularity 8)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping)
    (sightseeing 1)
    (sea 0)
    (exotic 0)
    (out-of-civilization 2)
    (region russia)
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
    (specific-entertainment shopping)
    (sightseeing 1)
    (sea 0)
    (exotic 0)
    (out-of-civilization 2)
    (region russia)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 1)
  )
  
  (location
    (location-name Khimki)
    (popularity 9)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment motocross safari shopping)
    (sightseeing 1)
    (sea 0)
    (exotic 1)
    (out-of-civilization 1)
    (region russia)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 0)
  )
  
  (location
    (location-name Kazan)
    (popularity 9)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 0)
    (specific-entertainment shopping motocross safari)
    (sightseeing 1)
    (sea 0)
    (exotic 0)
    (out-of-civilization 1)
    (region russia)
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
    (out-of-civilization 2)
    (region near-east)
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
    (out-of-civilization 0)
    (region far-east)
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
    (region africa)
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
    (region africa)
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
    (region africa)
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
    (region africa)
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
    (region africa)
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
    (region africa)
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
    (out-of-civilization 0)
    (region america)
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
    (region america)
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
    (out-of-civilization 1)
    (region america)
    (top-season oct nov dec jan feb march apr)
    (far-away 8)
  )

  (location
    (location-name Brazil)
    (popularity 3)
    (russian-lang 0)
    (trip-availiable 0)
    (price-level $$) 
    (children-oriented 0)
    (party-oriented 1)
    (specific-entertainment diving surfing motocross)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region america)
    (top-season oct nov dec jan feb march apr)
    (far-away 9)
  )

  (location
    (location-name Argentina)
    (popularity 3)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$$) 
    (children-oriented 1)
    (party-oriented 0)
    (specific-entertainment diving surfing safari motocross)
    (sightseeing 0)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region america)
    (top-season oct nov dec jan feb march apr)
    (far-away 9)
  )

  (location
    (location-name Canada)
    (popularity 4)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment motocross shopping)
    (sightseeing 1)
    (sea 0)
    (exotic 1)
    (out-of-civilization 1)
    (region america)
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
    (out-of-civilization 2)
    (region america)
    (top-season oct nov dec jan feb march apr jun jul aug)
    (far-away 7)
  )

  (location
    (location-name Singapore)
    (popularity 3)
    (russian-lang 0)
    (trip-availiable 0)
    (price-level $$$) 
    (children-oriented 1)
    (party-oriented 0)
    (specific-entertainment shopping)
    (sightseeing 1)
    (sea 1)
    (exotic 0)
    (out-of-civilization 2)
    (region far-east)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 8)
  )

  (location
    (location-name Japan)
    (popularity 5)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping)
    (sightseeing 1)
    (sea 0)
    (exotic 1)
    (out-of-civilization 2)
    (region far-east)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 7)
  )

  (location
    (location-name China)
    (popularity 5)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping motocross)
    (sightseeing 1)
    (sea 0)
    (exotic 1)
    (out-of-civilization 1)
    (region far-east)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 5)
  )

  (location
    (location-name "South Korea")
    (popularity 4)
    (russian-lang 0)
    (trip-availiable 0)
    (price-level $$) 
    (children-oriented 0)
    (party-oriented 0)
    (specific-entertainment shopping)
    (sightseeing 1)
    (sea 0)
    (exotic 1)
    (out-of-civilization 1)
    (region far-east)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 6)
  )

  (location
    (location-name Thailand)
    (popularity 6)
    (russian-lang 1)
    (trip-availiable 0)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping)
    (sightseeing 0)
    (sea 1)
    (exotic 0)
    (out-of-civilization 2)
    (region far-east)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 5)
  )

  (location
    (location-name Laos)
    (popularity 3)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $$$) 
    (children-oriented 1)
    (party-oriented 0)
    (specific-entertainment motocross)
    (sightseeing 1)
    (sea 0)
    (exotic 1)
    (out-of-civilization 1)
    (region far-east)
    (top-season apr may jun jul aug sep oct)
    (far-away 5)
  )

  (location
    (location-name Saratov)
    (popularity 1)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 0)
    (specific-entertainment motocross safari)
    (sightseeing 0)
    (sea 0)
    (exotic 1)
    (out-of-civilization 0)
    (region russia)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 1)
  )

  (location
    (location-name Kuriles)
    (popularity 2)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 0)
    (party-oriented 1)
    (specific-entertainment motocross safari diving)
    (sightseeing 0)
    (sea 1)
    (exotic 1)
    (out-of-civilization 0)
    (region russia)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 6)
  )

  (location
    (location-name Kamchatka)
    (popularity 4)
    (russian-lang 1)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 0)
    (party-oriented 0)
    (specific-entertainment motocross diving ski)
    (sightseeing 0)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region russia)
    (top-season jan feb march apr may jun jul aug sep oct nov dec)
    (far-away 6)
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
    (out-of-civilization 1)
    (region near-east)
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
    (out-of-civilization 1)
    (region near-east)
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
    (region near-east)
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
    (region near-east)
    (top-season march apr may jun jul aug sep oct nov)
    (far-away 2)
  )

  (location
    (location-name Germany)
    (popularity 5)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping)
    (sightseeing 1)
    (sea 0)
    (exotic 0)
    (out-of-civilization 2)
    (region europe)
    (top-season march apr may jun jul aug sep oct nov dec jan)
    (far-away 3)
  )

  (location
    (location-name France)
    (popularity 6)
    (russian-lang 0)
    (trip-availiable 0)
    (price-level $$$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping)
    (sightseeing 1)
    (sea 0)
    (exotic 0)
    (out-of-civilization 2)
    (region europe)
    (top-season march apr may jun jul aug sep oct nov dec jan)
    (far-away 3)
  )

  (location
    (location-name London)
    (popularity 5)
    (russian-lang 0)
    (trip-availiable 0)
    (price-level $$$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping)
    (sightseeing 1)
    (sea 0)
    (exotic 1)
    (out-of-civilization 2)
    (region europe)
    (top-season march apr may jun jul aug sep oct nov)
    (far-away 3)
  )

  (location
    (location-name Scotland)
    (popularity 4)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping motocross)
    (sightseeing 1)
    (sea 1)
    (exotic 0)
    (out-of-civilization 1)
    (region europe)
    (top-season march apr may jun jul aug sep oct nov)
    (far-away 3)
  )

  (location
    (location-name Ireland)
    (popularity 4)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$) 
    (children-oriented 0)
    (party-oriented 1)
    (specific-entertainment shopping motocross safari)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region europe)
    (top-season march apr may jun jul aug sep oct nov)
    (far-away 3)
  )

  (location
    (location-name Barcelona)
    (popularity 6)
    (russian-lang 0)
    (trip-availiable 0)
    (price-level $$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping ski)
    (sightseeing 1)
    (sea 1)
    (exotic 1)
    (out-of-civilization 1)
    (region europe)
    (top-season march apr may jun jul aug sep oct nov)
    (far-away 4)
  )

  (location
    (location-name Portugal)
    (popularity 5)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping motocross)
    (sightseeing 0)
    (sea 1)
    (exotic 0)
    (out-of-civilization 1)
    (region europe)
    (top-season march apr may jun jul aug sep oct nov)
    (far-away 4)
  )

  (location
    (location-name Italy)
    (popularity 6)
    (russian-lang 0)
    (trip-availiable 1)
    (price-level $$$) 
    (children-oriented 1)
    (party-oriented 1)
    (specific-entertainment shopping ski)
    (sightseeing 1)
    (sea 0)
    (exotic 1)
    (out-of-civilization 2)
    (region europe)
    (top-season march apr may jun jul aug sep oct nov)
    (far-away 3)
  )
)

(deffacts question-set
	(question
        (answer-name far-away)
        (the-question "How far are you ready to go?" )
        (valid-answers near normal far)
    )
    (question
        (answer-name sea)
        (the-question "Do you want to go to the sea?" )
        (valid-answers yes no mb)
    )
    (question
        (answer-name trip-availiable)
        (the-question "Are planning to trip around?" )
        (valid-answers yes no mb)
    )
    (question
        (answer-name sightseeing)
        (the-question "Do you want some sightseeing?" )
        (valid-answers yes no mb)
    )
    (question
        (answer-name out-of-civilization)
        (the-question "Do you need civilization around there?" )
        (valid-answers yes no mb)
    )
    (question
        (answer-name exotic)
        (the-question "Wanna have some exotic?))" )
        (valid-answers yes no mb)
    )
    (question
        (answer-name children-oriented)
        (the-question "Are you going with children?" )
        (valid-answers yes no)
    )
    (question
        (answer-name party-oriented)
        (the-question "Are you going a big party?" )
        (valid-answers yes no)
    )
    (question
        (answer-name top-season)
        (the-question "When are you planning to go?" )
        (valid-answers jan feb march apr may jun jul aug sep oct nov dec)
    )
    (question
        (answer-name specific-entertainment)
        (the-question "What activities do you want to perform?" )
        (valid-answers diving motocross safari surfing shopping ski none)
    )
    (question
        (answer-name region)
        (the-question "What region you wanna go?" )
        (valid-answers europe africa far-east near-east russia america mb)
    )
    (question
        (answer-name price-level)
        (the-question "How much money are you ready to spend?" )
        (valid-answers $ $$ $$$ $$$$)
    )
    (question
        (answer-name russian-lang)
        (the-question "Can you speek English?" )
        (valid-answers yes no)
    )
)

(deffunction count-facts (?template)
  (bind ?count 0)
  (do-for-all-facts ((?fct ?template)) TRUE
    (bind ?count (+ ?count 1)))
 ?count)
 
(deffunction destruct (?template)
	(do-for-all-facts ((?fct ?template)) TRUE
        (retract ?fct))
 )
 
(deffunction end ()
    (do-for-all-facts ((?loc location)) TRUE 
        (printout t "Destination found: ")
        (printout t ?loc:location-name crlf))
    (if (= (count-facts location) 0) then (printout t "Nothing found" crlf))
)


(deffunction cmd-process (?cmd)
	(if (eq ?cmd #exit) then (destruct question))
		
	(if (eq ?cmd #show) then (do-for-all-facts ((?loc location)) TRUE
    (printout t ?loc:location-name " "))
	(printout t crlf))
	
	(if (eq ?cmd #status) then (bind ?locations (count-facts location)) 
	(printout t ?locations "/")
	(printout t	"40 ") 
	(printout t "Locations ")
	(printout t "selected" crlf))
	
	(if (eq ?cmd #info) then 
	(printout t "What location do you want to lear about?" crlf)
	(bind ?got-answer (read))
	(do-for-all-facts ((?loc location)) (eq ?loc:location-name ?got-answer) 
        (printout t "Location: " ?loc:location-name crlf)
		(printout t "Region: " ?loc:region crlf)
		(printout t "Price level: " ?loc:price-level crlf)
		(printout t "May be visited in: " ?loc:top-season crlf)
		(if (eq ?loc:russian-lang 0) then (printout t "You should know English" crlf))
		(if (eq ?loc:trip-availiable 0) then (printout t "Nowhere to hang around" crlf) else 
			(printout t "It's possible to investigate surroundings" crlf))
		(if (eq ?loc:children-oriented 1) then (printout t "Fits for children" crlf))
		(if (eq ?loc:party-oriented 1) then (printout t "Good for parties" crlf))
		(if (eq ?loc:sightseeing 1) then (printout t "Has interesting sights" crlf))
		(if (eq ?loc:sea 1) then (printout t "Good for beach holiday" crlf))
		(if (eq ?loc:exotic 1) then (printout t "Has some kind of exotics" crlf))
		(if (eq ?loc:out-of-civilization 0) then (printout t "Has no civilization around" crlf))
		(if (eq ?loc:out-of-civilization 1) then (printout t "It's possible to stay somewhere out of civilization" crlf))
		(printout t "Possible specific entertainments: " ?loc:specific-entertainment crlf)
		(printout t "Destination popularity is " ?loc:popularity "/10" crlf)
		(printout t "Far away from home " ?loc:far-away "/10" crlf)
		(printout t crlf)
	))
	
	(if (eq ?cmd #help) then 
		(printout t "Trip recomendation system" crlf)
		(printout t "Usage: answer the questions, type #[command-name] if you want to do something special" crlf)
		(printout t "Possible command-name: " crlf)
		(printout t "    #status: the number of currently matched locations" crlf)
		(printout t "    #show: print currently mathced location names" crlf)
		(printout t "    #info: get info about any location" crlf)
		(printout t "    #exit: return matched locations and exit" crlf)
		(printout t "    #restart: can be called only after execution is completed" crlf)
		(printout t "    #help: get this message" crlf)
		(printout t crlf)
	)
	
	(if (eq ?cmd #restart) then 
		(destruct question)
		(reset)
		(destruct start)
		(run)
	)
	
	(if (eq ?cmd #rollback) then
	
		(printout t "Select answer you want to rollback to" crlf)
		(printout t (count-facts location) " " (count-facts question) crlf)
		(do-for-all-facts ((?ans answer)) TRUE
			(printout t ?ans:name " " ?ans:value crlf)
		)
		(bind ?selected (read))
		(bind ?flag 0)
		(do-for-all-facts ((?ans answer)) TRUE
			(if (eq ?selected ?ans:name) then (bind ?flag 1))
			(if (eq ?flag 1) then (retract ?ans))
		)
		(save-facts "tmp.CLP" visible answer)
		(reset)
		(destruct start)
		(load-facts "tmp.CLP")
		(do-for-all-facts ((?ans answer) (?qst question)) (eq ?ans:name ?qst:answer-name)
			(retract ?qst)
		)
		(run)
	)
)


(deffunction ask (?question ?allowed-values)
       (bind ?number (count-facts location))
       (if (< ?number 4) then 
       (destruct question)
        else
       (printout t ?question crlf)
       (if (not (eq (length$ ?allowed-values) 0)) then (printout t "Select one of: " ?allowed-values crlf))
       (bind ?got-answer (read))
       (if (lexemep ?got-answer) then (bind ?got-answer (lowcase ?got-answer)))
	   (bind ?answer ?got-answer)
       (if (not (eq (length$ ?allowed-values) 0)) then 
          (while (not (member$ ?got-answer ?allowed-values)) do
			(if (member$ ?got-answer (create$ #exit #show #status #help #info #rollback)) then 
			(cmd-process ?got-answer) 
			)
			(if (and (not (eq ?got-answer #exit)) (not (eq ?got-answer #rollback))) then 
            (printout t ?question crlf)
            (bind ?got-answer (read))
            (if (lexemep ?got-answer) then (bind ?got-answer (lowcase ?got-answer)) (bind ?answer ?got-answer)) else
			(break) else (bind ?answer STOP)(break))
		   )
        )?answer)
)

(defrule start (declare (salience 1000))
	?run <- (start)
	=>
	(cmd-process #help)
	(retract ?run)
)



(defrule differ-lang
	?qst <- (question (answer-name trip-availiable))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:trip-availiable) else
		(if (not (eq ?loc:trip-availiable ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-price
	?qst <- (question (answer-name price-level))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:price-level) else
		(if (not (eq ?loc:price-level ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-trip
	?qst <- (question (answer-name russian-lang))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:russian-lang) else
		(if (not (eq ?loc:russian-lang ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-child
	?qst <- (question (answer-name children-oriented))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:children-oriented) else
		(if (not (eq ?loc:children-oriented ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-party
	?qst <- (question (answer-name party-oriented))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:party-oriented) else
		(if (not (eq ?loc:party-oriented ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-entertainment
	?qst <- (question (answer-name specific-entertainment))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:specific-entertainment) else
		(if (not (eq ?loc:specific-entertainment ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

  
 (defrule differ-sights
	?qst <- (question (answer-name sightseening))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:sightseening) else
		(if (not (eq ?loc:sightseening ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-sea
	?qst <- (question (answer-name sea))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:sea) else
		(if (not (eq ?loc:sea ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-exotic
	?qst <- (question (answer-name exotic))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:exotic) else
		(if (not (eq ?loc:exotic ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-civilization
	?qst <- (question (answer-name out-of-civilization))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:out-of-civilization) else
		(if (not (eq ?loc:out-of-civilization ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-region
	?qst <- (question (answer-name region))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:region) else
		(if (not (eq ?loc:region ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)

 (defrule differ-far
	?qst <- (question (answer-name far-away))
	=>
	(bind ?value NOOOO)
	(bind ?result 0)
	(do-for-all-facts ((?loc location)) TRUE 
		(if (eq ?value NOOOO) then (bind ?value ?loc:far-away) else
		(if (not (eq ?loc:far-away ?value)) then (bind ?result 1)))
	)
	(if (eq ?result 0) then (retract ?qst))
)



(defrule ask-a-question (declare (salience 0))
   ?f <- (question (the-question ?the-question)
                   (valid-answers $?valid-answers)
                   (answer-name ?name))
   =>
   (bind ?answer (ask ?the-question ?valid-answers))
   (if (not (eq ?answer STOP)) then 
		(assert (answer (name ?name) (value ?answer)))
	)
)

(defrule select-month "Select month" (declare (salience 10))
    (answer (name top-season) (value ?value))
    ?dest <- (location (location-name ?name) (top-season $?season))
    => 
    (if (not (member$ ?value ?season)) then 
    (retract ?dest))
)

(defrule select-price "Select price" (declare (salience 10))
    (answer (name price-level) (value ?value))
    ?dest <- (location (location-name ?name) (price-level ?price))
    => 
    (if (> (length$ ?price) (length$ ?value)) then 
        (retract ?dest)
    )
)

(defrule select-region-value "Select region" (declare (salience 10))
    (answer (name region) (value ?value))  
    ?dest <- (location (location-name ?name) (region ~?value))
    => 
	(if (not (eq ?value mb)) then 
    (retract ?dest))
)

(defrule select-near "If destination should be near" (declare (salience 10))
    (answer (name far-away) (value near))  
    ?dest <- (location (location-name ?name) (far-away ?value))
    => 
    (if (> ?value 2) then (retract ?dest))
)

(defrule select-normal "If destination should be not far" (declare (salience 10))
    (answer (name far-away) (value normal))  
    ?dest <- (location (location-name ?name) (far-away ?value))
    => 
    (if (> ?value 6) then (retract ?dest))
)

(defrule select-specific-entertainment-value "Select specific-entertainment" (declare (salience 10))
    (answer (name specific-entertainment) (value ?value))
    ?dest <- (location (location-name ?name) (specific-entertainment $?entertainment))
    => 
	(if (not (eq ?value none)) then 
    (if (not (member$ ?value ?entertainment)) then 
    (retract ?dest)))
)

(defrule select-english-no "Select lang" (declare (salience 10))
    (answer (name russian-lang) (value no))
    ?dest <- (location (russian-lang 0))
    => 
    (retract ?dest)
)

(defrule select-trip-availiable-yes "Select trip-availiable" (declare (salience 10))
    (answer (name trip-availiable) (value yes))
    ?dest <- (location (trip-availiable 0))
    => 
    (retract ?dest)
)
(defrule select-trip-availiable-no "Select trip-availiable" (declare (salience 10))
    (answer (name trip-availiable) (value no))
    ?dest <- (location (trip-availiable 1))
    => 
    (retract ?dest)
)

(defrule select-sightseeing-yes "Select sightseeing" (declare (salience 10))
    (answer (name sightseeing) (value yes))
    ?dest <- (location (sightseeing 0))
    => 
    (retract ?dest)
)
(defrule select-sightseeing-no "Select sightseeing" (declare (salience 10))
    (answer (name sightseeing) (value no))
    ?dest <- (location (sightseeing 1))
    => 
    (retract ?dest)
)

(defrule select-civilization-yes "Select civilization" (declare (salience 10))
    (answer (name out-of-civilization) (value yes))
    ?dest <- (location (out-of-civilization 0))
    => 
    (retract ?dest)
)

(defrule select-civilization-no "Select civilization" (declare (salience 10))
    (answer (name out-of-civilization) (value no))
    ?dest <- (location (out-of-civilization 2))
    => 
    (retract ?dest)
)

(defrule select-children-yes "Select children" (declare (salience 10))
    (answer (name children-oriented) (value yes))
    ?dest <- (location (children-oriented 0))
    => 
    (retract ?dest)
)

(defrule select-children-no "Select children" (declare (salience 10))
    (answer (name children-oriented) (value no))
    ?dest <- (location (children-oriented 1))
    => 
    (retract ?dest)
)

(defrule select-party-yes "Select party" (declare (salience 10))
    (answer (name party-oriented) (value yes))
    ?dest <- (location (party-oriented 0))
    => 
    (retract ?dest)
)

(defrule select-party-no "Select party" (declare (salience 10))
    (answer (name party-oriented) (value no))
    ?dest <- (location (party-oriented 1))
    => 
    (retract ?dest)
)


(defrule select-exotic-yes "Select exotic" (declare (salience 10))
    (answer (name exotic) (value yes))
    ?dest <- (location (exotic 0))
    => 
    (retract ?dest)
)

(defrule select-exotic-no "Select exotic" (declare (salience 10))
    (answer (name exotic) (value no))
    ?dest <- (location (exotic 1))
    => 
    (retract ?dest)
)

(defrule select-beach-yes "Select sea holiday" (declare (salience 10))
    (answer (name sea) (value yes))
    ?dest <- (location (sea 0))
    => 
    (retract ?dest)
)

(defrule select-beach-no "Select sea holiday" (declare (salience 10))
    (answer (name sea) (value no))
    ?dest <- (location (sea 1))
    => 
    (retract ?dest)
)

(defrule finish "Finish" (declare (salience -1))
	(finish)
	=> 
	(end)
	(printout t "The execution is over. You have last chance to input any command :) Input any trash to exit" crlf)
	(bind ?repeat (read))
	(if (member$ ?repeat (create$ #exit #show #status #help #info #restart #rollback)) then 
		(cmd-process ?repeat) 
	)
)