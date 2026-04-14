#!/bin/bash

# יצור את strings.xml
cat > app/src/main/res/values/strings.xml << 'STRINGS'
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">ZAMINNNN</string>
</resources>
STRINGS

# יצור את settings.gradle
cat > settings.gradle << 'SETTINGS'
rootProject.name = "ZAMINNNN"
include ':app'
SETTINGS

# יצור את build.gradle root
cat > build.gradle << 'BUILDROOT'
buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath 'com.android.tools.build:gradle:4.2.0'
        classpath 'org.jetbrains.kotlin:kotlin-gradle-plugin:1.5.0'
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}
BUILDROOT

echo "✅ הכל נוצר בהצלחה!"
