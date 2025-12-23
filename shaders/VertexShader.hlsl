// Vertex Shader
// Simple pass-through vertex shader for DirectX 11 learning

struct VS_INPUT
{
    float4 Pos : POSITION;
    float4 Color : COLOR;
};

struct VS_OUTPUT
{
    float4 Pos : SV_POSITION;
    float4 Color : COLOR;
};

VS_OUTPUT main(VS_INPUT input)
{
    VS_OUTPUT output;
    output.Pos = input.Pos;
    output.Color = input.Color;
    return output;
}
