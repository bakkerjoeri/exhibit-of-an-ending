VAR has_coin = false

Night is falling. Your settlement is further behind you with every step. Your feet ache as your third day on the salt flats comes to a close.

You walk alongside a thick yellow-and-black electricity cable that snakes over the cracked floor. Just a day or so ago you found out the rumors were true: There is power here.

It's been a while since you've updated the map in your notebook.

* Stop and take out your notebook
- You take a ring-bound notebook out of your satchel, a pen is sitting inside the rings. You flip it open. The first page shows a crude map of the salt flats. Your settlement, marked with a cross, sits at the edge of the flats. A dashed line represents the cable. The next few pages contain journal entries of the previous days.

- (notebook_options)
+ Read yesterday's journal entry
    The handwriting, yours, shows tired loops and streaks.
    
    "I have finally found the power cable! I guess last week's storm exposed most of it. It comes up out of the ground about one and a half day's travel north-northwest of home, so no clue where it's coming from. Spent the day following its trail to see where it end thoughs. Perhaps another settlement? Maybe they can help us tap its source. Cable's thinner than rumored. Won't provide enough for our entire settlement, but it's a start."
    -> notebook_options
* (update_map) Update the map
    You check your compass and your watch, and carefully add 6 dashes to your representation of the powerline, one for each mile in your journey alongside the rubber cable.
    -> notebook_options
* {update_map} Put the notebook away and start walking

- Your tired feet get moving again. As you walk, your eyes follow the electricity cable to the horizon. There is something there, at the end of the cable. You pause again. Some kind of structure?

- (some_kind_of_structure_options)
* Squint your eyes
    It is a squat one storey building, not much wider than it is tall. The walls appear white. You cannot make out much more from this distance.
    -> some_kind_of_structure_options
* Continue following the electric cable

- You keep walking. It's getting chilly outside. The moon hangs high now, and the building is getting closer. You finally stop when you are a few feet away from it.

- (building_options)
* {not other_side} What is the building like?
     You're facing a blank wall made out of sandstone. It shines a bright white as it reflects the moonlight. The constant wind has not been kind to it.
    -> building_options
* {not other_side} Look at the power cable
    It zigzags over the salt ridden surface and then ducks underneath the wall facing you, entering the building. This is where its journey ends.
    -> building_options
* (other_side) Check around the building for an entrance
    You walk around the building to the opposite side. -> outside
    -> building_options

=== outside ===
In the sandstone wall sits a bright blue door. Above it hangs a wooden sign with bold hand-painted red lettering. It reads: "Exhibit of an ending". A smaller sign right below exclaims: "Water for sale!"

{inside:It occurs to you that you record your findings in your notebook before you go home.}

- (outside_options)
* {inside} Take out your notebook
    Your pen is poised over the page. You write:
    ** "The power cable leads to an exhibit."
        *** "We should tap the electricity for our settlement"
            "The exhibit will have to do without power" you conclude.
            
            This building only contains the past, and crumbles hidden in the middle of nowhere. The power has more use flowing through your settlement, allowing some kind of future.
            
            You mark the remaining path of the cable on your map.
            -> outside_options
        *** "I think we should keep the exhibit powered."
            "There are lessons here. Lessons that are best not forgotten, not by our generation or the next or the one after that."
            
            You resolve to bring others from your settlement here. You mark the building on your map.
            -> outside_options
    ** "The cable is a dead end and I don't think any power runs through it."
        "We'll have to find a solution elsewhere"
        
        You give the exhibit another look. Best no one else finds out about this. You crumple the map and your notes and put them in your satchel with your kindling.
    -> outside_options
+ Enter the exhibit
    You step inside. It's pleasantly warm from the retained heat of the day. -> inside
* {inside} Start on your journey home.
    You turn your back on the exhibit. It will be a long walk. You miss your bed. -> END

=== inside ===

{look_around:In the open space you see a balance scale on a pedestal, a reclining chair sitting under a skylight, and a writing desk. At the far end of the space you see a door marked "Archive". Next to it stands some kind of vending machine.}

- (inside_options)
+ (look_around) What do I see?
    There is a big open space in the middle of the building, lit softly by electric lightbulbs hanging from the ceiling by thin black cables. -> inside
    -> inside_options
+ {look_around} Approach the balance scale
    -> balance_scale
+ {look_around} Approach the reclining chair
    -> reclining_chair
+ {look_around} Approach the writing desk
    -> writing_desk
+ {look_around} Check out the vending machine
    -> vending_machine
+ {look_around} Enter the door marked "Archive"
    -> archive
+ Leave the Exhibit
    -> outside

=== balance_scale ===
A balance scale sits atop the pedestal. On the left-hand plate sits a teetering stack of reports. {take_coin:The plate on the right is empty.|On the right a single metallic coin of old-world currency.}

{not take_coin:The scale are tilted in favor of the coin, while the reports are lifted in the air.|The plate with the reports rests against the pedestal}

- (balance_scale_options)
+ Read the titles of the reports
	You make out some titles: "Salt levels in the Amazon Rivers", "Effects of the drying air on eczema", "We cannot hydrate with oil", "Bricks to dust: an analaysis of structural damage caused by extreme heat", "Who drank it? Socio-economic effects of water shortage", "Liquid profit: meta-analysis of quarterly earnings of the Big Five in water".
	-> balance_scale_options
+ {not take_coin} Examine the coin
    The side facing upward shows a map of the earth after The Flood. It is centered on the North Pole Ocean and flanked by two olive branches. The emblem of the United Nations.
   ++ Pick the coin up to have a closer look
	    As you lift the coin from its plate the true weight of the reports is unleashed. The plate that carries crashes into the pedestal. The pile shudders as it comes to a halt.
		
		The coin feels cool in the palm of your hand. It weighs about as much as you'd expect. {vending_machine.inspect:Looks like a perfect fit for the vending machine's coin slot.}
		
		You turn it over to look at the other side. An icon resembling a drop of liquid is imprinted on its face. Below it you read "10 drams".
		+++ Put the coin back
		    The coin clinks onto its plate. Slowly, like a rocket in the early stages of take-off, the reports rise. The coin, meanwhile, sinks and sinks. With a soft tap its plate touches the pedestal. The scale rests.
		    -> balance_scale_options
        +++ (take_coin) Keep the coin
			You drop the coin into your coat pocket.
			~ has_coin = true
			
			The reports, their gravity no longer contested, hold the scales in its uncomfortable tilt.
		    -> balance_scale_options
+ Go back to the main hall
    -> inside


=== reclining_chair ===
A reclining chair sits underneath a sky-light.

- (reclining_chair_options)
+ Sit down
    Your aching body welcomes the comfortable chair. Its angle has you looking directly through the sky-light. A clear night sky teems with lights that flicker and jitter and move from end to end accross the dark. Most of them feel too white. Under your right hand you feel a button.
    -- (sitting_in_chair_options)
    ++ Look at the button
		It is shiny. There is a small brass plaque underneath it. It reads "only the stars"
		-> sitting_in_chair_options
	++ Push the button
		It starts in the corners. One of the lights blinks out. Then another. At first you try to notice what is leaving, but then your attention turns to what is left behind.
		
		Some softly flicker, others burn bright. None that remain move. It is still. As you look an old feeling of familiarity grows. Older than you. Older than the ground this exhibit was built on.
		
		Your eyes are at rest, focussed on infinity.
		
		You forget your thoughts.
		
		You forget your body.
		
		Only the stars.
		
		Then all at once the others are back, taking up space, violently pushing the stars to the background with their movement and harsh ugly light. You snap out of your reverie.
		-> sitting_in_chair_options
	++ Get up
	    -> reclining_chair_options
	** Close your eyes
	    Tiredness fills you as you sit in this chair. IT is the most comfortable you have been in a while.
	    
	    You sleep.
	    
	    When you wake up it is still dark outside.
	    -> sitting_in_chair_options
	    
+ Go back to the main hall
    -> inside


=== writing_desk ===
A wooden writing desk stands underneath a hanging bulb, projecting a weak spotlight onto a thick sheet of recycled stock laying on its desktop. -> paper

- (paper) The sheet of paper reads: "We tried." {written_still:Below it you replied: "We are still trying"}{written_hard:Below it you replied: "Not hard enough"}{written_yet:Below it you replied: "And yet here we are"}{written_okay:Below it you replied: "I know, it's okay"}{written_fuckyou:Below it you replied: "FUCK YOU!"}{drawn:Below it you drew a picture of a cat}

- (writing_desk_choices)
+ Read the paper
    -> paper
+ Read the plaque
    This piece appears to be titled: "A message to the future"
    -> writing_desk_choices
* Take out your pen
    This warrants a reply.
    ** (written_still) Write "We are still trying"
        You write your message below and stand back to admire your work
        -> writing_desk_choices
    ** (written_hard) Write "Not hard enough"
        You write your message below and stand back to admire your work
        -> writing_desk_choices
    ** (written_yet) Write "And yet here we are"
        You write your message below and stand back to admire your work
        -> writing_desk_choices
    ** (written_okay) Write "I know, it's okay"
        You write your message below and stand back to admire your work
        -> writing_desk_choices
    ** (written_fuckyou) Write "FUCK YOU!"
        You write your message below and stand back to admire your work
        -> writing_desk_choices
    ** (drawn) Draw a cat
        You draw a cat below (it is so cute) and stand back to admire your work
        -> writing_desk_choices
    
+ Go back to the main hall
    -> inside

=== vending_machine ===
A vending machine stands against the wall. It hums softly, keeping its wares cold. The top right has a small slit. Behind thick glass you can see a handful glass bottles with {not water:a clear liquid|what looks like water}.
- (vending_machine_options)
* (water) Is that water?
    {drink:Sure tasted like it!|Sure looks like it!}
    -> vending_machine_options
+ (inspect) Inspect the slot
    It's about two inches high. Looks like a  perfect fit for a coin.
    -> vending_machine_options
* {inspect && has_coin} Put the coin into the slot.

    The coin clinks and clanks into the machine. Silence.
    
    Then the machine springs to life, buzzing excitedly as one of the glass bottles inches forward. It leans as it's about to fall...
    
    And then drops down with a thud!
    ** Retreive the bottle
        It feels cold in your hand, your hand wiping a bit of condensation off it.
        *** (drink) Open it up and drink
            You didn't realise your lips were this dry until the water touches them. It is fresh and cold and it envigorates you totally.
            
            Small sips become big ones and before you know it the bottle is empty. That was amazing.
            -> vending_machine_options
        *** Put it in your satchel for later
            This will come in handy on the journey home.
            -> vending_machine_options
* Shove the machine
    This thing is immovable. Your shoulder hurts as if to affirm this fact.
    -> vending_machine_options
+ Go back to the main hall
    -> inside
    
=== archive ===
The room is cool. Bookshelves line the walls. A display case lit from the back stands over in the right corner. {not hum:Somewhere you hear a hum...}
- (archive_options)
* (hum) Check out where that hum is coming from
    You look around and see a white apparatus hanging from the ceiling. You put your hand under it and feel cool air. You assume it's controlling the room's climate to preserve the books.
    -> archive_options
* (power_cable) What's that over by the wall...?
    It's an old familiar! The power cable appears from underneath the wall and runs into a switchbox. It must be powering this whole exhibit.
    -> archive_options
+ Inspect the display case
    A wooden box with a glass top and lights on the inside contains a single bound volume. The cover shows: "IPCC report 2098". The display case is locked.
    -> archive_options
+ Look at the books
    It runs the gammut. You see history books, scientific journals, encyclopedias, spanning centuries.
    
    Some titles jump out: "The Water Wars", "The first year without ice", "Mars: how you can make the journey", "The cost of living"...
    
    You feel small standing in near so much of the past documented and ready to be understood.
    
    But you don't have that kind of time right now.
    -> archive_options
+ Leave the archives and go back to the main hall
    -> inside