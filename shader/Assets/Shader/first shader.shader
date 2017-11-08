// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Custom/First Shader"
{
	SubShader
	{
		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag

            float4 vert(float4 v : POSITION) : SV_POSITION{
            	return UnityObjectToClipPos(v);
            }

            fixed4 frag() : SV_Target{
            	return fixed4(1.0, 1.0, 1.0, 1.0);
            } 
			ENDCG
		}
	}
}

//	SV_POSITION	裁剪空间中的顶点坐标,
//  结构体中必须包含一个用该语义修饰的变量。等同于DirectX9中的POSITION，但最好使用SV_POSITION
//
//  SV_Target 输出值将会存储到渲染目标(render target)中。等同于DirectX9中的COLOR语义，但最好使用SV_Target
