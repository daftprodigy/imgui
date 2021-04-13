project "Imgui"
	kind "StaticLib"
	language "C++"
	staticruntime "On"
	cppdialect "c++17" 

	targetdir (targetDirGeneral)
	objdir (objdirGeneral)

	files
	{
		"imconfig.h",
		"imgui.cpp",
		"imgui.h",
		"imgui_demo.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h"
	}
	
	filter "system:windows"
		systemversion "latest"
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"