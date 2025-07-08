-- RAG Decal GUI 🥷💜⚫

-- Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Garantir que o evento exista
local evento = ReplicatedStorage:FindFirstChild("AplicarDecal")
if not evento then
	local novoEvento = Instance.new("RemoteEvent")
	novoEvento.Name = "AplicarDecal"
	novoEvento.Parent = ReplicatedStorage
	evento = novoEvento
end

-- Criar a GUI
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "RAG_Decal_GUI"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

-- Frame principal
local framePrincipal = Instance.new("Frame")
framePrincipal.Name = "FramePrincipal"
framePrincipal.Size = UDim2.new(0, 300, 0, 200)
framePrincipal.Position = UDim2.new(0.5, -150, 0.5, -100)
framePrincipal.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
framePrincipal.Parent = gui

-- Frame interno
local frameInterno = Instance.new("Frame")
frameInterno.Name = "FrameInterno"
frameInterno.Size = UDim2.new(1, -20, 0, 80)
frameInterno.Position = UDim2.new(0, 10, 0, 10)
frameInterno.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
frameInterno.Parent = framePrincipal

-- Botão de decal dentro do frame interno
local btnDecal = Instance.new("TextButton")
btnDecal.Name = "BotaoDecal"
btnDecal.Size = UDim2.new(0, 150, 0, 40)
btnDecal.Position = UDim2.new(0.5, -75, 0.5, -20)
btnDecal.BackgroundColor3 = Color3.fromRGB(100, 0, 200)
btnDecal.TextColor3 = Color3.fromRGB(255, 255, 255)
btnDecal.Font = Enum.Font.GothamBold
btnDecal.TextSize = 14
btnDecal.Text = "Ativar Decal 🧱"
btnDecal.Parent = frameInterno

-- Conecta o botão ao evento
btnDecal.MouseButton1Click:Connect(function()
	evento:FireServer()
end)
