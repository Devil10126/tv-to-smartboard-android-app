# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

# Keep OpenCV classes
-keep class org.opencv.** { *; }
-keepclassmembers class org.opencv.** { *; }

# Keep Apache POI classes for PowerPoint support
-keep class org.apache.poi.** { *; }
-keepclassmembers class org.apache.poi.** { *; }

# Keep XML Beans for PPTX support
-keep class org.apache.xmlbeans.** { *; }
-keepclassmembers class org.apache.xmlbeans.** { *; }

# Keep our custom classes
-keep class com.android.tvtosmartboard.** { *; }
-keepclassmembers class com.android.tvtosmartboard.** { *; }

# Keep MediaProjection classes
-keep class android.media.projection.** { *; }

# Keep Camera2 API classes
-keep class android.hardware.camera2.** { *; }

# Prevent obfuscation of native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep Parcelable implementations
-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# Keep Serializable classes
-keepnames class * implements java.io.Serializable
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}
