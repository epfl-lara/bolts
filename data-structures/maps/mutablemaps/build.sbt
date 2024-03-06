name := "MutableMaps"
version := "0.1.0-SNAPSHOT"
scalaVersion :="3.3.0" 

run / fork := true

stainlessEnabled := false

enablePlugins(StainlessPlugin, JmhPlugin)