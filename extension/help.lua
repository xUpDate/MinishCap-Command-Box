function helpbox()
helpmouse = input.getmouse()
if helpmouse["X"] >= 102 and helpmouse["X"] <= 112 and helpmouse["Y"] >= 150 and helpmouse["Y"] <= 158 and helpmouse["Left"] and helpswitch == false then
help = not help
helpswitch = true
end

if help == false then
gui.drawBox(102, 150, 112, 158, "white", 0x45363fe3)
gui.pixelText(105, 151, "?", "white", 0x00000000)
elseif help == true then
gui.drawBox(102, 150, 112, 158, "white", 0x85363fe3)
gui.pixelText(105, 151, "?", "white", 0x00000000)

gui.drawBox(100,8, 110,18, "white", 0x85363fe3)
gui.pixelText(103, 10, "<", "white", 0x00000000)
gui.drawBox(112,8, 122,18, "white", 0x85363fe3)
gui.pixelText(115, 10, ">", "white", 0x00000000)

end

if helpx > 0 then helpx = 0 
elseif helpx < 0-138 then helpx = 0-138 end

if helpmouse["X"] >= 100 and helpmouse["X"] <= 110 and helpmouse["Y"] >= 8 and helpmouse["Y"] <= 18 and helpmouse["Left"] then
helpx = helpx+6
elseif helpmouse["X"] >= 112 and helpmouse["X"] <= 121 and helpmouse["Y"] >= 8 and helpmouse["Y"] <= 18 and helpmouse["Left"] then
helpx = helpx-6
end

if help == true then
	gui.pixelText(7+helpx,25, "Commands: \n\nhave	all \nlose	all \n\nrefill	hearts \nrupee	(x) \nreset	room \ntoggle	minish \n\nfight	big green chu\n 	big blue chu\n 	gleerok\n 	mazaal\n 	big octorok\n	gyorg pair\n 	vaati               ", "white")
	gui.pixelText(95+helpx,25, "pos 	(x) (y) \n\nbombs 	(x)\narrows 	(x)\n\njump\ncharm 	nayru\n 	din\n 	farore\nwallet 	100\n 	300\n 	500\n 	999\nbottle 	(x[1-4]) (itemid)\nhearts 	all\nwarp 	(0xAREA ID) (0xROOM ID)\nnewname 	type new name          ", "white")
	gui.pixelText(128+95+helpx,25, "godmode\n\n\nsavepos 	(name)\nloadpos 	(name)\nresetpos\n\nredhouse 	nayru\n 		farore\n 		din\nbluehouse 	nayru\n 		farore\n 		din\n\ndisplay 	rng\nrnglock 	on/off\nrngset 		(x)             ", "white")
end

if not helpmouse["Left"] then helpswitch = false end
end