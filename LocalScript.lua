wait(1)



local NPCs = game.Workspace.NPCs

local Character = game.Workspace.NPCs.patrickrush

local HumanoidRootPart = game.Workspace.NPCs.patrickrush.HumanoidRootPart

local ClickDetector = game.Workspace.NPCs.patrickrush.HumanoidRootPart.ClickDetector



ClickDetector.MouseClick:Connect(function()

 script.Parent.Text.Enabled = true

 local text = script.Parent.Text

 local frame = script.Parent.Text.Frame

 local textLabel = script.Parent.Text.Frame.Text

 local continue = script.Parent.Text.Continue

 local close = script.Parent.Text.Close

 close.Visible = false

 continue.Visible = false


 textLabel.Text = "Are you a stand user?"

 wait(0.01)

 

 close.Visible = true

 continue.Visible = true

 close.MouseButton1Click:Connect(function()

  text.Enabled = false

 end)

 continue.MouseButton1Click:Connect(function()

  close.Visible = false

  continue.Visible = false



  textLabel.Text = "You must be a stand user. I'LL KILL YOU!"

  wait(0.01)

  continue.Visible = true

  close.Visible = true

  close.MouseButton1Click:Connect(function()

   text.Enabled = false

  end)

 end)

end)