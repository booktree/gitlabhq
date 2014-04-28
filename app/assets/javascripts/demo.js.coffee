key = "demo_disclaimer_shown"
unless $.cookie(key)
  $.cookie(key, "a", {expires:1, path:'/'})
  alert("THIS IS ONLY A DEMO.\n\nWITHOUT ANY WARNING THE FOLLOWING MAY HAPPEN:" +
    "\n\n- DATA LOSS\n- DOWNTIME\n- INTERFACE CHANGES\n\n" +
    "WE WILL DO OU BEST TO AVOID THAT, BUT MAKE NO GUARANTEES AT PRESENT.")
