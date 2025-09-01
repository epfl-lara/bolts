name := "MutableMaps"
version := "0.1.0-SNAPSHOT"
scalaVersion :="3.7.2" 

run / fork := true

stainlessEnabled := false


ThisBuild / scalacOptions ++= Seq(
  "-source:3.7-migration", // enable migration mode
  "-rewrite"               // apply rewrites automatically
)


enablePlugins(StainlessPlugin, JmhPlugin)
