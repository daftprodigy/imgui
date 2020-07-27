project "Imgui"
	kind "StaticLib"
	language "C++"

	targetdir (targetDirGeneral)
    objdir (objdirGeneral)

	files
	{
		"include/GLFW/glfw3.h",
		"include/GLFW/glfw3native.h",
		"src/glfw_config.h",
		"src/context.c",
		"src/init.c",
		"src/input.c",
		"src/monitor.c",
		"src/vulkan.c",
		"src/window.c"
	}
	filter "system:windows"
		systemversion "latest"
		staticruntime "On"
		cppdialect "c++17" 
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

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
		buildoptions "/MT"