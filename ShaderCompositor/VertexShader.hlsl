
struct ShaderOutput
{
	float4 Position : SV_Position;
	float3 Color : COLOR;
	int ID : CUSTOM_NAME;
};

struct ObjectBufferData
{
	float4x4 WorldMatrix;
};

cbuffer<ObjectBufferData> ObjectBuffer : register(b0);

cbuffer CameraBuffer : register(b2)
{
	struct {
		matrix View;
		matrix Projection;

		float3 Position;
		float NearZ;

		float3 Direction;
		float Farz;

		float3 UpDirection;
		float Padding;
	} Camera ;
}

ShaderOutput VS_main(float3 position : POSITION, float3 color : COLOR, uint vertexID : SV_VertexID)
{

}