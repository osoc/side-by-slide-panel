#!/bin/sh
URL1=https://github.com/osoc/source-code-pro/raw/release/
URL2=https://raw.githubusercontent.com/osoc/source-code-pro/release/
FILES='EOT/SourceCodePro-ExtraLight.eot
    WOFF2/TTF/SourceCodePro-ExtraLight.ttf.woff2
    WOFF/OTF/SourceCodePro-ExtraLight.otf.woff
    OTF/SourceCodePro-ExtraLight.otf
    TTF/SourceCodePro-ExtraLight.ttf
    EOT/SourceCodePro-ExtraLightIt.eot
    WOFF2/TTF/SourceCodePro-ExtraLightIt.ttf.woff2
    WOFF/OTF/SourceCodePro-ExtraLightIt.otf.woff
    OTF/SourceCodePro-ExtraLightIt.otf
    TTF/SourceCodePro-ExtraLightIt.ttf
    EOT/SourceCodePro-Light.eot
    WOFF2/TTF/SourceCodePro-Light.ttf.woff2
    WOFF/OTF/SourceCodePro-Light.otf.woff
    OTF/SourceCodePro-Light.otf
    TTF/SourceCodePro-Light.ttf
    EOT/SourceCodePro-LightIt.eot
    WOFF2/TTF/SourceCodePro-LightIt.ttf.woff2
    WOFF/OTF/SourceCodePro-LightIt.otf.woff
    OTF/SourceCodePro-LightIt.otf
    TTF/SourceCodePro-LightIt.ttf
    EOT/SourceCodePro-Regular.eot
    WOFF2/TTF/SourceCodePro-Regular.ttf.woff2
    WOFF/OTF/SourceCodePro-Regular.otf.woff
    OTF/SourceCodePro-Regular.otf
    TTF/SourceCodePro-Regular.ttf
    EOT/SourceCodePro-It.eot
    WOFF2/TTF/SourceCodePro-It.ttf.woff2
    WOFF/OTF/SourceCodePro-It.otf.woff
    OTF/SourceCodePro-It.otf
    TTF/SourceCodePro-It.ttf
    EOT/SourceCodePro-Medium.eot
    WOFF2/TTF/SourceCodePro-Medium.ttf.woff2
    WOFF/OTF/SourceCodePro-Medium.otf.woff
    OTF/SourceCodePro-Medium.otf
    TTF/SourceCodePro-Medium.ttf
    EOT/SourceCodePro-MediumIt.eot
    WOFF2/TTF/SourceCodePro-MediumIt.ttf.woff2
    WOFF/OTF/SourceCodePro-MediumIt.otf.woff
    OTF/SourceCodePro-MediumIt.otf
    TTF/SourceCodePro-MediumIt.ttf
    EOT/SourceCodePro-Semibold.eot
    WOFF2/TTF/SourceCodePro-Semibold.ttf.woff2
    WOFF/OTF/SourceCodePro-Semibold.otf.woff
    OTF/SourceCodePro-Semibold.otf
    TTF/SourceCodePro-Semibold.ttf
    EOT/SourceCodePro-SemiboldIt.eot
    WOFF2/TTF/SourceCodePro-SemiboldIt.ttf.woff2
    WOFF/OTF/SourceCodePro-SemiboldIt.otf.woff
    OTF/SourceCodePro-SemiboldIt.otf
    TTF/SourceCodePro-SemiboldIt.ttf
    EOT/SourceCodePro-Bold.eot
    WOFF2/TTF/SourceCodePro-Bold.ttf.woff2
    WOFF/OTF/SourceCodePro-Bold.otf.woff
    OTF/SourceCodePro-Bold.otf
    TTF/SourceCodePro-Bold.ttf
    EOT/SourceCodePro-BoldIt.eot
    WOFF2/TTF/SourceCodePro-BoldIt.ttf.woff2
    WOFF/OTF/SourceCodePro-BoldIt.otf.woff
    OTF/SourceCodePro-BoldIt.otf
    TTF/SourceCodePro-BoldIt.ttf
    EOT/SourceCodePro-Black.eot
    WOFF2/TTF/SourceCodePro-Black.ttf.woff2
    WOFF/OTF/SourceCodePro-Black.otf.woff
    OTF/SourceCodePro-Black.otf
    TTF/SourceCodePro-Black.ttf
    EOT/SourceCodePro-BlackIt.eot
    WOFF2/TTF/SourceCodePro-BlackIt.ttf.woff2
    WOFF/OTF/SourceCodePro-BlackIt.otf.woff
    OTF/SourceCodePro-BlackIt.otf
    TTF/SourceCodePro-BlackIt.ttf
    LICENSE.txt
    README.md
    source-code-pro.css'

[ -d ../font/source-code-pro ] ||\
        mkdir -p ../font/source-code-pro
cd ../font/source-code-pro &&
for FILE in $FILES; do
    N=$( echo $FILE | sed 's/\//\n/g' | wc -l )
    if [ $N -gt 1 ]
        then
            echo wget -p $URL1$FILE
            wget -p $URL1$FILE
        else
            echo wget $URL2$FILE
            wget $URL2$FILE
    fi
done
mv github.com/osoc/source-code-pro/raw/release/* ./
rm -rf github.com/osoc/source-code-pro/raw/release/

unset URL1 URL2 FILES N
