Shader "_UdemyShaders/2/PackedArrays"
{
    Properties
    {
        _Color ("Color", Color) = (1,1,1,1)
    }
    SubShader
    {
        Tags { "RenderType"="Opaque" }
        LOD 200

        CGPROGRAM
        // Physically based Standard lighting model, and enable shadows on all light types
        #pragma surface surf Lambert


        struct Input
        {
            float2 uv_MainTex;
        };


        fixed4 _Color;

        void surf (Input IN, inout SurfaceOutput o)
        {
            o.Albedo = _Color.r;
        }
        ENDCG
    }
    FallBack "Diffuse"
}
