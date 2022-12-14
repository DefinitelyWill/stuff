local debug = require("debug")
local Vars
local DefaultFunctions = {
	"assert",
	"collectgarbage",
	"dofile",
	"error",
	"getfenv",
	"getmetatable",
	"ipairs",
	"load",
	"loadfile",
	"loadstring",
	"next",
	"pairs",
	"pcall",
	"print",
	"rawequal",
	"rawget",
	"rawset",
	"select",
	"setfenv",
	"setmetatable",
	"tonumber",
	"tostring",
	"type",
	"unpack",
	"xpcall",
    "warn"
}
local CommonWords = {
    "and",
    "break",
    "do",
    "else",
    "elseif",
    "end",
    "false",
    "for",
    "function",
    "if",
    "in",
    "local",
    "nil",
    "not",
    "or",
    "repeat",
    "return",
    "then",
    "true",
    "until",
    "while"
}

function table.find(table, value)
    for _, v in pairs(table) do
        if v == value then
            return true
        end
    end
    return false
end

local function Obfuscate(code)
	-- // Wrapper / Start
	local Obfuscated="do return(function("

	-- // Obfuscated Contents
	local FunctionArgs={}
	local Variables={["Useable"]={},["Ignore"]={}}
	local function RandomString(length)
		letters={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'}
		Output=""
        repeat
            for i=1,length do
                if math.random(1,2)==1 then
                    Output=Output..letters[math.random(1,#letters)]
                else
                    Output=Output..string.upper(letters[math.random(1,#letters)])
                end
            end
        until not table.find(CommonWords,Output)
		
		return Output
	end
	local function NewString(length)
		Output=""
		repeat
			Output=RandomString(length)
		until not table.find(FunctionArgs,Output)and not table.find(Variables["Useable"],Output)and not table.find(Variables["Ignore"],Output)
		return Output
	end
	function DetectStrings(Code)
	  local Strings = {}
	  for String in string.gmatch(Code,"'.-'") do
		table.insert(Strings,String)
	  end
	  return Strings
	end
	function GenerateEquation(Num)
		local Equation = ""
		local Numbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
		local Operations = {"+", "-", "*", "/"}
		
		for i = 1, 5 do
			Equation = Equation .. Numbers[math.random(#Numbers)] .. Operations[math.random(#Operations)]
		end
		Equation = Equation .. Numbers[math.random(#Numbers)]
		
		local Result = load("return " .. Equation)()
		if Result ~= Num then
			if Result > Num then
				Equation = Equation .. "-" .. (Result - Num)
			else
				Equation = Equation .. "+" .. (Num - Result)
			end
		end

		return Equation
	end
	function Minify(Code)
		Code = Code:gsub("%-%-.-\n", " ")
		Code = Code:gsub("%-%-[^\n]*", " ")
		Code = Code:gsub("%-%-%[%[.-%]%]", "")
		Code = Code:gsub("%s+", " ")
		Code = Code:gsub("^%s+", ""):gsub("%s+$", "")
		Code =
			code:gsub(
			"function%s+x%d+%s*%((.-)%)%s*%b{}",
			function(args, block)
				return block:gsub(
					"x%d+",
					function(name)
						if args:find(name, 1, true) then
							return name
						end
						return names[name] or name
					end
				)
			end
		)
		
		Code = Code:gsub("(local%s+x%d+%s*=.-\n)%s*x%d+", "%1")
		return Code
	end
	swagger=5
	function en(s, w, a, gg, e, r)
		if w then
			s = "you get NO bitches"
		else
			NoBitches = w and w or a and a or gg and gg or e and e or r and r
			s = Nobitches and NoBitches or s
		end
		local NumberOfBitchesYouGet, wa =
			(2 * math.pi - math.acos(math.cos(2 * math.pi * math.abs(0)))) / (math.huge * math.pi),0
		repeat
			if w and w >= a and a then
				wa = w + a
			end
			if gg and gg >= wa then
				NumberOfBitchesYouGet = (2 * math.pi - math.acos(math.cos(2 * math.pi * math.abs(0)))) / (0 * math.pi)
			else
				NumberOfBitchesYouGet =
					(2 * math.pi - math.acos(math.cos(2 * math.pi * math.abs(0)))) / (math.huge * math.pi)
			end
			wa = NumberOfBitchesYouGet
		until wa == 0
		return string.gsub(
			s,
			".",
			function(c)
				return string.char(string.byte(c) + NumberOfBitchesYouGet + 3)
			end
		)
	end
	function ReplaceFunctions(Code)
        function ReplaceName(input)
            return string.gsub(
                input,
                ".",
                function(c)
                    return string.char(string.byte(c)+1)
                end
            )
        end
		for func in string.gmatch(Code, "function%s+([%w_]+)%s*%(") do
            Code = Code:gsub(func, ReplaceName(func))
        end

		return Code
	end
    local function GenerateWhileLoop()
        local Output="local "
        local RandomMessages={"😀😁😂🤣😃😄😅😆😊😎😀😁😂🤣😃😄😅😆😊😎😀😁😂🤣😃😄😅😆😊😎😀😁😂🤣😃😄😅😆😊😎😀😁😂🤣😃😄😅😆😊😎😀😁😂🤣😃😄😅😆😊😎😀😁😂🤣😃😄😅😆😊😎😀😁😂🤣😃😄😅😆😊😎😀😁😂🤣😃😄😅😆😊😎😀😁😂🤣😃😄😅😆😊😎 ","😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧😒😓😔😕☹🙁😖😞😟😢😭😦😧 ","                                                                                                                                                                          ","                                                                                                        who tf even uses extorius obfuscator lmfao                                                                           "}
        Vars={}
    
        for i=1,6 do
            String=NewString(4)
            table.insert(Variables["Ignore"],String)
            if i~=6 then
                Output=Output..String..","
            else
                Output=Output..String.."="
            end
        end
        for i=1,6 do
            Var=math.random(1,1000)
            table.insert(Vars,Var)
            if i~=6 then
                Output=Output..tostring(Var)..","
            else
                Output=Output..tostring(Var)
            end
        end
    
        table.sort(Vars, function(a, b) return a > b end)
        Output=Output.." while("..GenerateEquation(Vars[1])..")and("..GenerateEquation(Vars[1])..")>=("..GenerateEquation(Vars[2])..")and("..GenerateEquation(Vars[2])..")do"
        Output=Output.." if("..GenerateEquation(Vars[2])..")<=("..GenerateEquation(Vars[3])..")and("..GenerateEquation(Vars[3])..")<=("..GenerateEquation(Vars[1])..")then lolmessage='"
        
        for i=1,10 do
            if i~=10 then
                Output=Output..RandomMessages[math.random(1,#RandomMessages)]
            else
                Output=Output..RandomMessages[math.random(1,#RandomMessages)].."'"
            end
        end
    
        Output=Output.." repeat a"..Vars[1].."=("..GenerateEquation(Vars[1])..")+("..GenerateEquation(Vars[4])..")until("..GenerateEquation(Vars[4])..")>=("..GenerateEquation(Vars[1])..")"
        Output=Output.." elseif("..GenerateEquation(Vars[4])..")>=("..GenerateEquation(Vars[6])..")and("..GenerateEquation(Vars[5])..")<=("..GenerateEquation(Vars[2])..")then repeat until("..GenerateEquation(Vars[4])..")<=("..GenerateEquation(Vars[1])..")"
        Output=Output.." break;end;end;"
    
        return Output
    end

	for i=1,32 do
		RandomLetter=RandomString(2)
		Obfuscated=Obfuscated..RandomLetter..","
		table.insert(FunctionArgs,RandomLetter)
	end
	RandomLetter=RandomString(1)
	Obfuscated=Obfuscated..RandomLetter..",...)"
	table.insert(FunctionArgs,RandomLetter)

	Obfuscated=Obfuscated.."local "..NewString(2).."=(1);local "
	for i=1,5 do
		if i~=5 then
			Variable=NewString(2)
			table.insert(Variables["Useable"],Variable)
			Obfuscated=Obfuscated..Variable..","
		else
			Variable=NewString(1)
			table.insert(Variables["Useable"],Variable)
			Obfuscated=Obfuscated..Variable.."="
		end
	end
	for i=1,5 do
		if i~=5 then
			Obfuscated=Obfuscated.."nil,"
		else
			Obfuscated=Obfuscated.."(nil);"..GenerateWhileLoop()
		end
	end

    Obfuscated=Obfuscated.."swagger=5 function de(a,b,c,d,e,f)if b then a='you get NO bitches'else NoBitches=b and b or c and c or d and d or e and e or f and f;a=Nobitches and NoBitches or a end;local g,h=(2*math.pi-math.acos(math.cos(2*math.pi*math.abs(0))))/(math.huge*math.pi)repeat if b and b>=c and c then h=b+c end;if d and d>=h then g=(2*math.pi-math.acos(math.cos(2*math.pi*math.abs(0))))/(0*math.pi)else g=(2*math.pi-math.acos(math.cos(2*math.pi*math.abs(0))))/(math.huge*math.pi)end;h=g until h==0;return string.gsub(a,'.',function(i)return string.char(string.byte(i)-g-3)end)end;while "..Variables["Useable"][1].." and "..Variables["Useable"][1]..">="..Variables["Useable"][3].." and "..Variables["Useable"][3].." do repeat "..Variables["Useable"][1].."="..Variables["Useable"][2].."-NumberOfBitchesYouGet until NumberOfBitchesYouGet>="..Variables["Useable"][3]..";end;local "

	for i=1,3 do
		if i~=3 then
			Variable=NewString(2)
			table.insert(Variables["Useable"],Variable)
			Obfuscated=Obfuscated..Variable..","
		else
			Variable=NewString(2)
			table.insert(Variables["Useable"],Variable)
			Obfuscated=Obfuscated..Variable.."=nil,nil,(nil)"
		end
	end
	Obfuscated=Obfuscated.."if not "..Variables["Useable"][1].." then "..Variables["Useable"][6]..","..Variables["Useable"][7]..","..Variables["Useable"][1].."='"
	Obfuscated=Obfuscated..RandomString(50000).."',_ENV,nil else repeat "..Variables["Useable"][7].."="..Variables["Useable"][4].."+3 until "..Variables["Useable"][7].."~="..Variables["Useable"][3]..";end;"
    for i=1,5 do
        Obfuscated=Obfuscated..GenerateWhileLoop()
    end

    code=string.gsub(code,'"',"'")
	code = code:gsub("%d+",function(num)if not type(num)=="string"then return GenerateEquation(tonumber(num))else return num;end;end)
	code=ReplaceFunctions(code)
    for i,v in pairs(DefaultFunctions)do
	    code=string.gsub(code,v.."(",Variables["Useable"][7].."['"..v.."']")
    end
	
	Strings=DetectStrings(code)
	for i,v in ipairs(Strings)do
		New=v:gsub("'","")
		New="de('"..en(New).."')"
		code=string.gsub(code,v,New)
	end
	
	Obfuscated=Obfuscated..Minify(code).." "

	-- // Wrapper / End
    for i=1,5 do
        Obfuscated=Obfuscated..GenerateWhileLoop()
    end

	Obfuscated=Obfuscated..";end)()end"
    Obfuscated=os.date("--[[\n Obfusctated Using Extorius Obfuscator\n    [v1]\n\n   "..string.len(Obfuscated).." characters of unreadable (and working) mess\n\n   Created on %Y-%m-%d at %H:%M:%S\n]]--\n\n")..Obfuscated
    return Obfuscated
end
