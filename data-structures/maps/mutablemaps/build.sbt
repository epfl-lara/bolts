name := "MutableMaps"
version := "0.1.0-SNAPSHOT"
scalaOrganization := "ch.epfl.lara"
scalaVersion := "3.8.3-RC1-bin-20260218-bb6fc60-NIGHTLY"

run / fork := true

excludeDependencies ++= Seq(
      ExclusionRule("org.scala-lang", "scala-library"),
      ExclusionRule("org.scala-lang", "scala3-library_3"),
      ExclusionRule("org.scala-lang", "scala3-compiler_3"),
    )

stainlessEnabled := false

enablePlugins(StainlessPlugin, JmhPlugin)
