                                                                                      if game:IsLoaded() then

                                                                                     local p = game.Players.LocalPlayer
                                                                                    local PlayerGui = p:WaitForChild("PlayerGui");
                                                                                   local Gui_Find = PlayerGui:FindFirstChild("BGS_yea");

                                                                                  if Gui_Find then
                                                                                 print("You already have the gui");
                                                                                else

--Making Objects--
                                                                               local Gui = Instance.new("ScreenGui");
                                                                              local Gui_Frame = Instance.new("Frame");
                                                                             local FarmB = Instance.new("TextButton");
                                                                            local Farming = false
                                                                           local GetAllIslands = Instance.new("TextButton");
                                                                          local BuyEgg = Instance.new("TextButton");
                                                                         local BuyEggTB = Instance.new("TextBox");

--Setting Up Gui--
                                                                        Gui_Frame.Size = UDim2.new(0, 356, 0, 322);
                                                                       Gui_Frame.Position = UDim2.new(0.681, 0, 0.138, 0);
                                                                      Gui_Frame.BackgroundTransparency = 0.9;
                                                                     Gui_Frame.BorderColor3 = Color3.new(255, 0, 0);

                                                                    FarmB.Size = UDim2.new(0, 108, 0, 32);
                                                                   FarmB.Position = UDim2.new(0, 0, 0.155, 0);
                                                                  FarmB.BorderSizePixel = 0;
                                                                 FarmB.Font = "Arcade"

                                                                GetAllIslands.Size = UDim2.new(0, 117, 0, 32);
                                                               GetAllIslands.Position = UDim2.new(0.671, 0, 0.155, 0);
                                                              GetAllIslands.BorderSizePixel = 0;
                                                             GetAllIslands.Font = "Arcade";

                                                            BuyEgg.Size = UDim2.new(0, 131, 0, 32);
                                                           BuyEgg.Position = UDim2.new(0.303, 0, 0.155, 0);
                                                          BuyEgg.BorderSizePixel = 0;
                                                         BuyEgg.Font = "Arcade";

                                                        BuyEggTB.Size = UDim2.new(0, 131, 0, 26);
                                                       BuyEggTB.Position = UDim2.new(0.303, 0, 0.252, 0);
                                                      BuyEggTB.BorderSizePixel = 0;

--Setting Gui Parents--
                                                     FarmB.Parent = Gui_Frame;
                                                    GetAllIslands.Parent = Gui_Frame;
                                                   BuyEgg.Parent = Gui_Frame;
                                                  BuyEggTB.Parent = Gui_Frame;
                                                 Gui_Frame.Parent = Gui;
                                                Gui.Parent = game.Players.LocalPlayer.PlayerGui;

--I dont even know what to put here--
                                               Gui.Name = "BGS_yea"

                                              FarmB.Name = "FarmB"
                                             FarmB.Text = "Farm"
                                            FarmB.TextScaled = true;

                                           GetAllIslands.Name = "GetIslandsB"
                                          GetAllIslands.Text = "Unlock Islands"
                                         GetAllIslands.TextScaled = true;

                                        BuyEgg.Name = "BuyEggB"
                                       BuyEgg.Text = "Buy Egg"
                                      BuyEgg.TextScaled = true;
                                     BuyEggTB.Name = "BuyEggTB"
                                    BuyEggTB.Text = "";
                                   BuyEggTB.PlaceholderText = "Egg Name Here:"

--When FarmB is left clicked--
                                  FarmB.MouseButton1Click:Connect(function()
                                 if Farming == true then
                                Farming = false
                               else
                              Farming = true
                             end
 
                            while Farming == true do
                           game.ReplicatedStorage.NetworkRemoteEvent:FireServer("BlowBubble");
                          game.ReplicatedStorage.NetworkRemoteEvent:FireServer("SellBubble", "TwilightSell");
                         wait(1);
                        end
                       end)

                      GetAllIslands.MouseButton1Click:Connect(function()
                     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(68.5513992, 900.014282, -278.621735);
                    wait(0.2);
                   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(71.3429718, 5225.73828, -264.634064);
                  wait(0.2);
                 game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(59.1365509, 11385.0117, -226.218231);
                wait(0.2);
               game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.9746857, 21100.0098, -261.422211);
              wait(0.2);
             game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(92.1605682, 32133.0098, -254.276108);
            wait(0.2);
           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.9109344, 40700, -259.481079);
          wait(0.2);
         game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(89.9745483, 53432.9961, -261.422394);
        end)

       BuyEgg.MouseButton1Click:Connect(function()
      game.ReplicatedStorage.NetworkRemoteEvent:FireServer("PurchaseEgg", BuyEggTB.Text)
  end)
 end
end
