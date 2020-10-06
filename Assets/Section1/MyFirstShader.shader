Shader "_UdemyShaders/1/HelloShader" {
	Properties{
		_MainColor("Color", Color) = (1,1,1,1)
		_Emission("Emiision Color", Color) = (1,1,1,1)
		_Normal("Normal Color", Color) = (1,1,1,1)
	}

		SubShader{
		CGPROGRAM
			#pragma surface surf Lambert
			struct Input 
			{
				float2 uvMainTex;
			};

			fixed4 _MainColor;
			fixed4 _Emission;
			fixed4 _Normal;

			void surf(Input IN, inout SurfaceOutput OUT)
			{
				OUT.Emission = _Emission.rbg;
				OUT.Albedo = _MainColor.rgb;
				OUT.Normal = _Normal;
			}

		ENDCG
		}
	FallBack "Diffuse"
}