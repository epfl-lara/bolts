name := "MutableMaps"
version := "0.1.0-SNAPSHOT"
// The Scala version Stainless 0.10.5 is built with: a build of the LARA fork of the compiler, published under ch.epfl.lara
scalaVersion := "3.10.1-RC1-bin-20260903-e1f9361-NIGHTLY"
scalaOrganization := "ch.epfl.lara"
// The ch.epfl.lara compiler ships its own sbt bridge; sbt would otherwise look it up under org.scala-lang
scalaCompilerBridgeBinaryJar := {
  val bridge = ("ch.epfl.lara" % "scala3-sbt-bridge" % scalaVersion.value).intransitive()
  dependencyResolution.value
    .retrieve(bridge, scalaModuleInfo.value, target.value / "compiler-bridge", streams.value.log)
    .toOption
    .flatMap(_.find(_.getName.startsWith("scala3-sbt-bridge")))
}

run / fork := true

// sbt-stainless adds the stainless library sources to Test as well (sbt-jmh compiles it), but only passes
// the qualified-types flags they need (e.g. for UInt31) to Compile
Test / scalacOptions ++= Seq(
  "-language:experimental.qualifiedTypes",
  "-language:experimental.qualifiedTypes.silent",
  "-Yqualified-types-anf",
)

stainlessEnabled := false

enablePlugins(StainlessPlugin, JmhPlugin)
