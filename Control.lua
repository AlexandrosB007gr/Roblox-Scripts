local admins = {"AlexandrosB007gr_4"}
local kill = {"shinu","die","psofa","kill"}

cmd = function(plr)
	plr.Chatted:Connect(function(message)
		
		if table.find(admins, plr.Name) ~= nil then
			
			message = string.lower(message)
			
			local splitString = message:split(" ")
			local command = splitString[1]
			local target = splitString[2]
			local argument = splitString[3]
			
			if table.find(admins, target) == nil or table.find(admins, target) > table.find(admins, plr.Name) then
				if command == "admin" then
					for i,v in pairs(game.Players:GetChildren()) do
						if string.lower(v.Name) == target and table.find(admins, v.Name) == nil then
							table.insert(admins, v.Name)
						end
					end
				end

				if table.find(kill, command) ~= nil then
					if target == string.lower(game.Players.LocalPlayer.Name) then
						game.Players.LocalPlayer.Character.Humanoid.Health = 0
					end
				end

				if command == "freeze" then
					if target == string.lower(game.Players.LocalPlayer.Name) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
					end
				elseif command == "unfreeze" then
					if target == string.lower(game.Players.LocalPlayer.Name) then
						game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
					end
				end
			end
		end
	end)
end




for _, plr in pairs(game.Players:GetChildren()) do
	cmd(plr)
end

game.Players.PlayerAdded:connect(function(player)
	cmd(player)
end) 
