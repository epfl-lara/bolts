name := "ZipLex"
version := "0.1.0-SNAPSHOT"
scalaVersion :="3.10.1-RC1-bin-20260903-e1f9361-NIGHTLY" 
scalaOrganization := "ch.epfl.lara"
organization := "ch.epfl.lara"
// The ch.epfl.lara compiler ships its own sbt bridge; sbt would otherwise look it up under org.scala-lang
scalaCompilerBridgeBinaryJar := {
  val bridge = ("ch.epfl.lara" % "scala3-sbt-bridge" % scalaVersion.value).intransitive()
  dependencyResolution.value
    .retrieve(bridge, scalaModuleInfo.value, target.value / "compiler-bridge", streams.value.log)
    .toOption
    .flatMap(_.find(_.getName.startsWith("scala3-sbt-bridge")))
}

run / fork := true

// sbt-stainless adds the stainless library sources to Test as well as to Compile. Test already gets them compiled
// through Compile's classes, and unjarring them from both configurations in parallel races on the same directory
// (FileAlreadyExistsException on .../stainless-library_3-sources/META-INF/MANIFEST.MF), so Test only keeps its own generators
Test / managedSources := Defaults.generate(Test / sourceGenerators).value

stainlessEnabled := false

Compile / mainClass := Some("com.ziplex.lexer.Main")
assembly / mainClass := Some("com.ziplex.lexer.Main")

assembly / assemblyMergeStrategy := {
  case PathList("META-INF", xs @ _*) => MergeStrategy.discard
  case x => MergeStrategy.first
}

enablePlugins(StainlessPlugin, JmhPlugin)
