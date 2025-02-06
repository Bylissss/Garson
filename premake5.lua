workspace "Garson"

    configurations { 
        "Debug",
        "Release" 
    }

    project "HelloWorld"
        kind "ConsoleApp"
        language "C"
        targetdir "bin/%{prj.name}-%{cfg.buildcfg}-%{cfg.architecture}-%{cfg.platform}"
        targetname "%{prj.name}"
        objdir "bin-int/%{prj.name}-%{cfg.buildcfg}-%{cfg.architecture}-%{cfg.platform}"
        
        files {
            "src/**.c",
            "src/**.h",
        }

        includedirs{
            "vendor/Komut"
        }

        filter "configurations:Debug"
            defines{"GARSON_DEBUG"}
            symbols "On"
        
        
        filter "configurations:Release"
            defines{"GARSON_RELEASE"}
            symbols "Off"
            optimize "On"
          