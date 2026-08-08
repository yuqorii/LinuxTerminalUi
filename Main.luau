local Lib = {}

local ScreenGui = {
	ScreenGui = Instance.new("ScreenGui"),
	Frame = Instance.new("Frame"),
	TextFrame = Instance.new("Frame"),
	UIStroke = Instance.new("UIStroke"),
	UICorner = Instance.new("UICorner"),
	Display = Instance.new("TextLabel"),
	InputBox = Instance.new("TextBox"),
	TopBar = Instance.new("Frame"),
	Seperator = Instance.new("Frame"),
	Title = Instance.new("TextLabel"),
	OutputFrame = Instance.new("ScrollingFrame"),
	UIStroke_2 = Instance.new("UIStroke"),
	UIListLayout = Instance.new("UIListLayout"),
	ExampleOutput = Instance.new("TextLabel"),
	UIPadding = Instance.new("UIPadding"),
}

local Screen = gethui():FindFirstChild("LinuxTerminal")
if Screen then
	Screen:Destroy()
end

function Lib:CreateWindow( title : string )

	ScreenGui.ScreenGui.Parent = gethui()
	ScreenGui.ScreenGui.Name = "LinuxTerminal"
	print(ScreenGui.ScreenGui:GetFullName())
	ScreenGui.Frame.Parent = ScreenGui.ScreenGui
	ScreenGui.TextFrame.Parent = ScreenGui.Frame
	ScreenGui.UIStroke.Parent = ScreenGui.TextFrame
	ScreenGui.UICorner.Parent = ScreenGui.TextFrame
	ScreenGui.Display.Parent = ScreenGui.TextFrame
	ScreenGui.InputBox.Parent = ScreenGui.TextFrame
	ScreenGui.TopBar.Parent = ScreenGui.Frame
	ScreenGui.Seperator.Parent = ScreenGui.TopBar
	ScreenGui.Title.Parent = ScreenGui.TopBar
	ScreenGui.OutputFrame.Parent = ScreenGui.Frame
	ScreenGui.UIStroke_2.Parent = ScreenGui.OutputFrame
	ScreenGui.UIListLayout.Parent = ScreenGui.OutputFrame
	ScreenGui.ExampleOutput.Parent = ScreenGui.OutputFrame
	ScreenGui.UIPadding.Parent = ScreenGui.OutputFrame

	ScreenGui.ScreenGui.Name = "ScreenGui"
	ScreenGui.ScreenGui.ResetOnSpawn = true
	ScreenGui.ScreenGui.IgnoreGuiInset = false
	ScreenGui.ScreenGui.DisplayOrder = 0

	ScreenGui.Frame.Name = "Frame"
	ScreenGui.Frame.ZIndex = 1
	ScreenGui.Frame.Position = UDim2.new(0.266401589, 0, 0.247566059, 0)
	ScreenGui.Frame.Size = UDim2.new(0, 704, 0, 381)
	ScreenGui.Frame.BackgroundColor3 = Color3.fromRGB(16,16,16)
	ScreenGui.Frame.BackgroundTransparency = 0
	ScreenGui.Frame.Visible = true
	ScreenGui.Frame.AnchorPoint = Vector2.new(0, 0)
	ScreenGui.Frame.ClipsDescendants = false
	ScreenGui.Frame.BorderSizePixel = 0

	ScreenGui.TextFrame.Name = "TextFrame"
	ScreenGui.TextFrame.ZIndex = 1
	ScreenGui.TextFrame.Position = UDim2.new(0.0639204532, 0, 0.845144331, 0)
	ScreenGui.TextFrame.Size = UDim2.new(0, 619, 0, 36)
	ScreenGui.TextFrame.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.TextFrame.BackgroundTransparency = 1
	ScreenGui.TextFrame.Visible = true
	ScreenGui.TextFrame.AnchorPoint = Vector2.new(0, 0)
	ScreenGui.TextFrame.ClipsDescendants = false
	ScreenGui.TextFrame.BorderSizePixel = 0

	ScreenGui.UIStroke.Name = "UIStroke"
	ScreenGui.UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	ScreenGui.UIStroke.Color = Color3.fromRGB(255,255,255)
	ScreenGui.UIStroke.LineJoinMode = Enum.LineJoinMode.Round
	ScreenGui.UIStroke.Thickness = 1
	ScreenGui.UIStroke.Transparency = 0
	ScreenGui.UIStroke.Enabled = true

	ScreenGui.UICorner.Name = "UICorner"
	ScreenGui.UICorner.CornerRadius = UDim.new(0, 0)

	ScreenGui.Display.Name = "Display"
	ScreenGui.Display.ZIndex = 1
	ScreenGui.Display.Position = UDim2.new(0, 0, 0, 0)
	ScreenGui.Display.Size = UDim2.new(0, 46, 0, 36)
	ScreenGui.Display.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.Display.BackgroundTransparency = 1
	ScreenGui.Display.Text = ">"
	ScreenGui.Display.TextScaled = true
	ScreenGui.Display.TextSize = 14
	ScreenGui.Display.Font = Enum.Font.SourceSans
	ScreenGui.Display.TextColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.Display.TextStrokeColor3 = Color3.fromRGB(0,0,0)
	ScreenGui.Display.TextStrokeTransparency = 1
	ScreenGui.Display.TextWrapped = true
	ScreenGui.Display.TextXAlignment = Enum.TextXAlignment.Center
	ScreenGui.Display.TextYAlignment = Enum.TextYAlignment.Center
	ScreenGui.Display.TextTransparency = 0
	ScreenGui.Display.Visible = true
	ScreenGui.Display.AnchorPoint = Vector2.new(0, 0)
	ScreenGui.Display.ClipsDescendants = false

	ScreenGui.InputBox.Name = "InputBox"
	ScreenGui.InputBox.ZIndex = 1
	ScreenGui.InputBox.Position = UDim2.new(0.0743134096, 0, 0, 0)
	ScreenGui.InputBox.Size = UDim2.new(0, 573, 0, 36)
	ScreenGui.InputBox.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.InputBox.BackgroundTransparency = 1
	ScreenGui.InputBox.Text = ""
	ScreenGui.InputBox.TextScaled = false
	ScreenGui.InputBox.TextSize = 12
	ScreenGui.InputBox.Font = Enum.Font.Unknown
	ScreenGui.InputBox.TextColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.InputBox.TextStrokeColor3 = Color3.fromRGB(0,0,0)
	ScreenGui.InputBox.TextStrokeTransparency = 1
	ScreenGui.InputBox.TextWrapped = false
	ScreenGui.InputBox.TextXAlignment = Enum.TextXAlignment.Left
	ScreenGui.InputBox.TextYAlignment = Enum.TextYAlignment.Center
	ScreenGui.InputBox.TextTransparency = 0
	ScreenGui.InputBox.ClearTextOnFocus = true
	ScreenGui.InputBox.MultiLine = false
	ScreenGui.InputBox.Visible = true
	ScreenGui.InputBox.AnchorPoint = Vector2.new(0, 0)
	ScreenGui.InputBox.ClipsDescendants = false

	ScreenGui.TopBar.Name = "TopBar"
	ScreenGui.TopBar.ZIndex = 1
	ScreenGui.TopBar.Position = UDim2.new(0, 0, 0, 0)
	ScreenGui.TopBar.Size = UDim2.new(0, 704, 0, 39)
	ScreenGui.TopBar.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.TopBar.BackgroundTransparency = 1
	ScreenGui.TopBar.Visible = true
	ScreenGui.TopBar.AnchorPoint = Vector2.new(0, 0)
	ScreenGui.TopBar.ClipsDescendants = false
	ScreenGui.TopBar.BorderSizePixel = 0

	ScreenGui.Seperator.Name = "Seperator"
	ScreenGui.Seperator.ZIndex = 1
	ScreenGui.Seperator.Position = UDim2.new(0, 0, 0.846153855, 0)
	ScreenGui.Seperator.Size = UDim2.new(0, 704, 0, 1)
	ScreenGui.Seperator.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.Seperator.BackgroundTransparency = 0
	ScreenGui.Seperator.Visible = true
	ScreenGui.Seperator.AnchorPoint = Vector2.new(0, 0)
	ScreenGui.Seperator.ClipsDescendants = false
	ScreenGui.Seperator.BorderSizePixel = 0

	ScreenGui.Title.Name = "Title"
	ScreenGui.Title.ZIndex = 1
	ScreenGui.Title.Position = UDim2.new(0.357954532, 0, 0, 0)
	ScreenGui.Title.Size = UDim2.new(0, 200, 0, 33)
	ScreenGui.Title.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.Title.BackgroundTransparency = 1
	ScreenGui.Title.Text = title or "TITLE BAR"
	ScreenGui.Title.TextScaled = false
	ScreenGui.Title.TextSize = 14
	ScreenGui.Title.Font = Enum.Font.Unknown
	ScreenGui.Title.TextColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.Title.TextStrokeColor3 = Color3.fromRGB(0,0,0)
	ScreenGui.Title.TextStrokeTransparency = 1
	ScreenGui.Title.TextWrapped = false
	ScreenGui.Title.TextXAlignment = Enum.TextXAlignment.Center
	ScreenGui.Title.TextYAlignment = Enum.TextYAlignment.Center
	ScreenGui.Title.TextTransparency = 0
	ScreenGui.Title.Visible = true
	ScreenGui.Title.AnchorPoint = Vector2.new(0, 0)
	ScreenGui.Title.ClipsDescendants = false

	ScreenGui.OutputFrame.Name = "OutputFrame"
	ScreenGui.OutputFrame.ZIndex = 1
	ScreenGui.OutputFrame.Position = UDim2.new(0.0639204532, 0, 0.133858263, 0)
	ScreenGui.OutputFrame.Size = UDim2.new(0, 619, 0, 261)
	ScreenGui.OutputFrame.BackgroundColor3 = Color3.fromRGB(16,16,16)
	ScreenGui.OutputFrame.BackgroundTransparency = 0
	ScreenGui.OutputFrame.Visible = true
	ScreenGui.OutputFrame.AnchorPoint = Vector2.new(0, 0)
	ScreenGui.OutputFrame.ClipsDescendants = true
	ScreenGui.OutputFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
	ScreenGui.OutputFrame.CanvasSize = UDim2.new(0, 0, 0, 0)

	ScreenGui.UIListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
		ScreenGui.OutputFrame.CanvasSize = UDim2.new(0, 0, 0, ScreenGui.UIListLayout.AbsoluteContentSize.Y)
	end)
	ScreenGui.OutputFrame.ScrollBarThickness = 3
	ScreenGui.OutputFrame.ScrollingEnabled = true
	ScreenGui.OutputFrame.BorderSizePixel = 0

	ScreenGui.UIStroke_2.Name = "UIStroke"
	ScreenGui.UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
	ScreenGui.UIStroke_2.Color = Color3.fromRGB(255,255,255)
	ScreenGui.UIStroke_2.LineJoinMode = Enum.LineJoinMode.Round
	ScreenGui.UIStroke_2.Thickness = 1
	ScreenGui.UIStroke_2.Transparency = 0
	ScreenGui.UIStroke_2.Enabled = true

	ScreenGui.UIListLayout.Name = "UIListLayout"
	ScreenGui.UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	ScreenGui.UIListLayout.Padding = UDim.new(0, 0)
	ScreenGui.UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
	ScreenGui.UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	ScreenGui.UIListLayout.FillDirection = Enum.FillDirection.Vertical

	ScreenGui.ExampleOutput.Name = "ExampleOutput"
	ScreenGui.ExampleOutput.ZIndex = 1
	ScreenGui.ExampleOutput.Position = UDim2.new(0, 0, 0, 0)
	ScreenGui.ExampleOutput.Size = UDim2.new(0, 200, 0, 20)
	ScreenGui.ExampleOutput.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.ExampleOutput.BackgroundTransparency = 1
	ScreenGui.ExampleOutput.Text = "Loaded Ui"
	ScreenGui.ExampleOutput.TextScaled = false
	ScreenGui.ExampleOutput.TextSize = 14
	ScreenGui.ExampleOutput.Font = Enum.Font.SourceSans
	ScreenGui.ExampleOutput.TextColor3 = Color3.fromRGB(255,255,255)
	ScreenGui.ExampleOutput.TextStrokeColor3 = Color3.fromRGB(0,0,0)
	ScreenGui.ExampleOutput.TextStrokeTransparency = 1
	ScreenGui.ExampleOutput.TextWrapped = true
	ScreenGui.ExampleOutput.TextXAlignment = Enum.TextXAlignment.Left
	ScreenGui.ExampleOutput.TextYAlignment = Enum.TextYAlignment.Center
	ScreenGui.ExampleOutput.TextTransparency = 0
	ScreenGui.ExampleOutput.Visible = true
	ScreenGui.ExampleOutput.AnchorPoint = Vector2.new(0, 0)
	ScreenGui.ExampleOutput.ClipsDescendants = false

	ScreenGui.UIPadding.Name = "UIPadding"
	ScreenGui.UIPadding.PaddingBottom = UDim.new(0, 0)
	ScreenGui.UIPadding.PaddingTop = UDim.new(0, 0)
	ScreenGui.UIPadding.PaddingLeft = UDim.new(0.0199999996, 0)
	ScreenGui.UIPadding.PaddingRight = UDim.new(0, 0)

end

function Lib:DisplayUi( state : boolean )
	ScreenGui.ScreenGui.Enabled = state
end

function Lib:AddOutput( text : string, level : string )
	local NewOutput = ScreenGui.ExampleOutput:Clone()
	NewOutput.Parent = ScreenGui.OutputFrame
	NewOutput.FontFace.Bold = true
	NewOutput.Font = Enum.Font.Unknown
	NewOutput.TextSize = 15
	
	NewOutput.Text = string.upper(level) .. ": " .. text
	
	if string.lower(level) == "warn" then
		NewOutput.TextColor3 = Color3.fromRGB(216, 187, 42)
	elseif string.lower(level) == "error" then
		NewOutput.TextColor3 = Color3.fromRGB(176, 0, 0)
	else
		NewOutput.TextColor3 = Color3.fromRGB(255, 255, 255)
	end
end

function Lib:TextEntered( func )
	ScreenGui.InputBox.FocusLost:Connect(function(...)
		func(ScreenGui.InputBox.Text)
		ScreenGui.InputBox.Text = ""
	end)
end

return Lib
