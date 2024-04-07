//Modified from Hipshot's original "alley" sky with light settings
textures/paswdm1/hipshot_night_lightmod
{
	qer_editorimage env/alleyskybox/grimmnight_ft.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm sky
	q3map_surfacelight 200
	q3map_sun 0.52021 0.711518 1 75 350 45
	skyParms env/alleyskybox/grimmnight 128 -
}

textures/paswdm1/bubbles
{
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	{
		map textures/paswdm1/bubble.tga
		blendfunc add
	}
}

textures/paswdm1/guage_clockwise
{
	qer_editorimage textures/paswdm1/paswdm1_guage.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	{
		map textures/paswdm1/paswdm1_guage.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map textures/paswdm1/paswdm1_guage_needle.tga
		blendfunc blend
		rgbGen identity
		tcMod rotate 512
	}
}

textures/paswdm1/guage_counterclockwise
{
	qer_editorimage textures/paswdm1/paswdm1_guage.tga
	surfaceparm noimpact
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	{
		map textures/paswdm1/paswdm1_guage.tga
		blendfunc blend
		rgbGen identity
	}
	{
		map textures/paswdm1/paswdm1_guage_needle.tga
		blendfunc blend
		rgbGen identity
		tcMod rotate -512
	}
}

textures/paswdm1/rainfall
{
	qer_editorimage textures/paswdm1/paswdm1_rain.tga
	surfaceparm noimpact
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nonsolid
	surfaceparm trans
	cull disable
	{
		map textures/paswdm1/paswdm1_rain.tga
		blendfunc add
		tcMod scroll 0 -4
	}
}

textures/paswdm1/wet_tile
{
	qer_editorimage textures/paswdm1/paswdm1_tile_wet.tga
	{
		map textures/paswdm1/paswdm1_tile_wet_reflectionmap.tga
		tcMod scroll 0.05 0.05
		tcGen environment 
	}
	{
		map textures/paswdm1/paswdm1_tile_wet.tga
		blendfunc blend
	}

if deluxe
        {
                material textures/paswdm1/paswdm1_tile_wet.tga textures/paswdm1/paswdm1_tile_wet_norm.tga
		blendfunc blend
        }
endif
}

textures/paswdm1/wet_tile2
{
	qer_editorimage textures/paswdm1/paswdm1_tile_wet2.tga
	{
		map textures/paswdm1/paswdm1_tile_wet_reflectionmap2.tga		
		tcMod scroll 0.05 0.05
		tcGen environment 
	}
	{
		map textures/paswdm1/paswdm1_tile_wet2.tga
		blendfunc blend
	}

if deluxe
        {
                material textures/paswdm1/paswdm1_tile_wet2.tga textures/paswdm1/paswdm1_tile_wet2_norm.tga
		blendfunc blend
        }
endif
}

//Regular advertising + EmeraldProductions advertisement
textures/paswdm1/board_512_256_1_emerald
{
	qer_editorimage textures/billboard/bigbill1.tga
	q3map_lightimage textures/billboard/bigbill9.tga
	q3map_surfacelight 500
	q3map_forceMeta
	q3map_lightmapSampleSize 64
	q3map_lightsubdivide 64
	surfaceparm	nomarks
	surfaceparm nonsolid
	nopicmip

	{
		animClampMap 0.1 textures/billboard/bigbill1.tga textures/billboard/bigbill2.tga textures/billboard/bigbill3.tga textures/billboard/bigbill4.tga textures/billboard/bigbill9.tga textures/billboard/bigbill2.tga textures/billboard/bigbill7.tga textures/billboard/bigbill8.tga textures/billboard/bigbill9.tga textures/paswdm1/paswdm1_emeraldproductions_advertisement.tga
		rgbGen wave sawtooth 0.5 1 0 .15
	}

	{
		clampmap textures/billboard/code.jpg
		blendfunc add
		tcmod scroll 0 0.3 
		rgbGen wave sawtooth 0.1 0.3 0 .1
	}

	{
		map textures/billboard/scanlinenoise.tga
		blendfunc add
		rgbGen wave sin 0.4 0.4 0 .5
		tcmod scroll 10 .15 
	}    		
}
