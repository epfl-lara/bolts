; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60192 () Bool)

(assert start!60192)

(declare-fun b!672277 () Bool)

(declare-datatypes ((Unit!23608 0))(
  ( (Unit!23609) )
))
(declare-fun e!384049 () Unit!23608)

(declare-fun Unit!23610 () Unit!23608)

(assert (=> b!672277 (= e!384049 Unit!23610)))

(declare-fun b!672279 () Bool)

(declare-fun res!439072 () Bool)

(declare-fun e!384053 () Bool)

(assert (=> b!672279 (=> (not res!439072) (not e!384053))))

(declare-fun e!384045 () Bool)

(assert (=> b!672279 (= res!439072 e!384045)))

(declare-fun res!439076 () Bool)

(assert (=> b!672279 (=> res!439076 e!384045)))

(declare-fun e!384055 () Bool)

(assert (=> b!672279 (= res!439076 e!384055)))

(declare-fun res!439081 () Bool)

(assert (=> b!672279 (=> (not res!439081) (not e!384055))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672279 (= res!439081 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672280 () Bool)

(declare-fun res!439078 () Bool)

(declare-fun e!384047 () Bool)

(assert (=> b!672280 (=> (not res!439078) (not e!384047))))

(declare-datatypes ((array!39195 0))(
  ( (array!39196 (arr!18786 (Array (_ BitVec 32) (_ BitVec 64))) (size!19150 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39195)

(declare-datatypes ((List!12880 0))(
  ( (Nil!12877) (Cons!12876 (h!13921 (_ BitVec 64)) (t!19116 List!12880)) )
))
(declare-fun arrayNoDuplicates!0 (array!39195 (_ BitVec 32) List!12880) Bool)

(assert (=> b!672280 (= res!439078 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12877))))

(declare-fun b!672281 () Bool)

(declare-fun e!384048 () Bool)

(declare-fun acc!681 () List!12880)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3423 (List!12880 (_ BitVec 64)) Bool)

(assert (=> b!672281 (= e!384048 (not (contains!3423 acc!681 k!2843)))))

(declare-fun b!672282 () Bool)

(declare-fun lt!312259 () List!12880)

(assert (=> b!672282 (= e!384055 (contains!3423 lt!312259 k!2843))))

(declare-fun b!672283 () Bool)

(declare-fun res!439085 () Bool)

(assert (=> b!672283 (=> (not res!439085) (not e!384047))))

(assert (=> b!672283 (= res!439085 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672284 () Bool)

(declare-fun e!384046 () Bool)

(assert (=> b!672284 (= e!384046 e!384048)))

(declare-fun res!439094 () Bool)

(assert (=> b!672284 (=> (not res!439094) (not e!384048))))

(assert (=> b!672284 (= res!439094 (bvsle from!3004 i!1382))))

(declare-fun b!672285 () Bool)

(declare-fun Unit!23611 () Unit!23608)

(assert (=> b!672285 (= e!384049 Unit!23611)))

(declare-fun arrayContainsKey!0 (array!39195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672285 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!312258 () Unit!23608)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39195 (_ BitVec 64) (_ BitVec 32)) Unit!23608)

(assert (=> b!672285 (= lt!312258 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!672285 false))

(declare-fun b!672286 () Bool)

(declare-fun res!439083 () Bool)

(assert (=> b!672286 (=> (not res!439083) (not e!384047))))

(assert (=> b!672286 (= res!439083 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19150 a!3626))))))

(declare-fun b!672287 () Bool)

(declare-fun res!439074 () Bool)

(assert (=> b!672287 (=> (not res!439074) (not e!384047))))

(assert (=> b!672287 (= res!439074 (not (contains!3423 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672288 () Bool)

(declare-fun res!439091 () Bool)

(assert (=> b!672288 (=> (not res!439091) (not e!384053))))

(declare-fun noDuplicate!670 (List!12880) Bool)

(assert (=> b!672288 (= res!439091 (noDuplicate!670 lt!312259))))

(declare-fun b!672289 () Bool)

(declare-fun res!439090 () Bool)

(assert (=> b!672289 (=> (not res!439090) (not e!384047))))

(assert (=> b!672289 (= res!439090 (not (contains!3423 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672278 () Bool)

(declare-fun res!439088 () Bool)

(assert (=> b!672278 (=> (not res!439088) (not e!384047))))

(assert (=> b!672278 (= res!439088 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19150 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun res!439092 () Bool)

(assert (=> start!60192 (=> (not res!439092) (not e!384047))))

(assert (=> start!60192 (= res!439092 (and (bvslt (size!19150 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19150 a!3626))))))

(assert (=> start!60192 e!384047))

(assert (=> start!60192 true))

(declare-fun array_inv!14560 (array!39195) Bool)

(assert (=> start!60192 (array_inv!14560 a!3626)))

(declare-fun b!672290 () Bool)

(declare-fun e!384052 () Bool)

(assert (=> b!672290 (= e!384045 e!384052)))

(declare-fun res!439075 () Bool)

(assert (=> b!672290 (=> (not res!439075) (not e!384052))))

(assert (=> b!672290 (= res!439075 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672291 () Bool)

(assert (=> b!672291 (= e!384052 (not (contains!3423 lt!312259 k!2843)))))

(declare-fun b!672292 () Bool)

(declare-fun res!439089 () Bool)

(assert (=> b!672292 (=> (not res!439089) (not e!384053))))

(assert (=> b!672292 (= res!439089 (not (contains!3423 lt!312259 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672293 () Bool)

(declare-fun res!439093 () Bool)

(assert (=> b!672293 (=> (not res!439093) (not e!384047))))

(assert (=> b!672293 (= res!439093 e!384046)))

(declare-fun res!439084 () Bool)

(assert (=> b!672293 (=> res!439084 e!384046)))

(declare-fun e!384050 () Bool)

(assert (=> b!672293 (= res!439084 e!384050)))

(declare-fun res!439079 () Bool)

(assert (=> b!672293 (=> (not res!439079) (not e!384050))))

(assert (=> b!672293 (= res!439079 (bvsgt from!3004 i!1382))))

(declare-fun b!672294 () Bool)

(declare-fun res!439073 () Bool)

(assert (=> b!672294 (=> (not res!439073) (not e!384047))))

(assert (=> b!672294 (= res!439073 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672295 () Bool)

(assert (=> b!672295 (= e!384050 (contains!3423 acc!681 k!2843))))

(declare-fun b!672296 () Bool)

(assert (=> b!672296 (= e!384053 false)))

(declare-fun lt!312261 () Bool)

(assert (=> b!672296 (= lt!312261 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312259))))

(declare-fun b!672297 () Bool)

(declare-fun e!384054 () Bool)

(assert (=> b!672297 (= e!384054 e!384053)))

(declare-fun res!439082 () Bool)

(assert (=> b!672297 (=> (not res!439082) (not e!384053))))

(assert (=> b!672297 (= res!439082 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!271 (List!12880 (_ BitVec 64)) List!12880)

(assert (=> b!672297 (= lt!312259 ($colon$colon!271 acc!681 (select (arr!18786 a!3626) from!3004)))))

(declare-fun b!672298 () Bool)

(declare-fun res!439077 () Bool)

(assert (=> b!672298 (=> (not res!439077) (not e!384047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672298 (= res!439077 (validKeyInArray!0 k!2843))))

(declare-fun b!672299 () Bool)

(declare-fun res!439071 () Bool)

(assert (=> b!672299 (=> (not res!439071) (not e!384047))))

(assert (=> b!672299 (= res!439071 (validKeyInArray!0 (select (arr!18786 a!3626) from!3004)))))

(declare-fun b!672300 () Bool)

(assert (=> b!672300 (= e!384047 e!384054)))

(declare-fun res!439086 () Bool)

(assert (=> b!672300 (=> (not res!439086) (not e!384054))))

(assert (=> b!672300 (= res!439086 (not (= (select (arr!18786 a!3626) from!3004) k!2843)))))

(declare-fun lt!312260 () Unit!23608)

(assert (=> b!672300 (= lt!312260 e!384049)))

(declare-fun c!76970 () Bool)

(assert (=> b!672300 (= c!76970 (= (select (arr!18786 a!3626) from!3004) k!2843))))

(declare-fun b!672301 () Bool)

(declare-fun res!439087 () Bool)

(assert (=> b!672301 (=> (not res!439087) (not e!384047))))

(assert (=> b!672301 (= res!439087 (noDuplicate!670 acc!681))))

(declare-fun b!672302 () Bool)

(declare-fun res!439080 () Bool)

(assert (=> b!672302 (=> (not res!439080) (not e!384053))))

(assert (=> b!672302 (= res!439080 (not (contains!3423 lt!312259 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!60192 res!439092) b!672301))

(assert (= (and b!672301 res!439087) b!672289))

(assert (= (and b!672289 res!439090) b!672287))

(assert (= (and b!672287 res!439074) b!672293))

(assert (= (and b!672293 res!439079) b!672295))

(assert (= (and b!672293 (not res!439084)) b!672284))

(assert (= (and b!672284 res!439094) b!672281))

(assert (= (and b!672293 res!439093) b!672280))

(assert (= (and b!672280 res!439078) b!672283))

(assert (= (and b!672283 res!439085) b!672286))

(assert (= (and b!672286 res!439083) b!672298))

(assert (= (and b!672298 res!439077) b!672294))

(assert (= (and b!672294 res!439073) b!672278))

(assert (= (and b!672278 res!439088) b!672299))

(assert (= (and b!672299 res!439071) b!672300))

(assert (= (and b!672300 c!76970) b!672285))

(assert (= (and b!672300 (not c!76970)) b!672277))

(assert (= (and b!672300 res!439086) b!672297))

(assert (= (and b!672297 res!439082) b!672288))

(assert (= (and b!672288 res!439091) b!672302))

(assert (= (and b!672302 res!439080) b!672292))

(assert (= (and b!672292 res!439089) b!672279))

(assert (= (and b!672279 res!439081) b!672282))

(assert (= (and b!672279 (not res!439076)) b!672290))

(assert (= (and b!672290 res!439075) b!672291))

(assert (= (and b!672279 res!439072) b!672296))

(declare-fun m!641283 () Bool)

(assert (=> b!672292 m!641283))

(declare-fun m!641285 () Bool)

(assert (=> b!672302 m!641285))

(declare-fun m!641287 () Bool)

(assert (=> b!672287 m!641287))

(declare-fun m!641289 () Bool)

(assert (=> b!672298 m!641289))

(declare-fun m!641291 () Bool)

(assert (=> b!672294 m!641291))

(declare-fun m!641293 () Bool)

(assert (=> b!672289 m!641293))

(declare-fun m!641295 () Bool)

(assert (=> b!672288 m!641295))

(declare-fun m!641297 () Bool)

(assert (=> b!672285 m!641297))

(declare-fun m!641299 () Bool)

(assert (=> b!672285 m!641299))

(declare-fun m!641301 () Bool)

(assert (=> start!60192 m!641301))

(declare-fun m!641303 () Bool)

(assert (=> b!672282 m!641303))

(declare-fun m!641305 () Bool)

(assert (=> b!672300 m!641305))

(assert (=> b!672297 m!641305))

(assert (=> b!672297 m!641305))

(declare-fun m!641307 () Bool)

(assert (=> b!672297 m!641307))

(declare-fun m!641309 () Bool)

(assert (=> b!672296 m!641309))

(declare-fun m!641311 () Bool)

(assert (=> b!672295 m!641311))

(declare-fun m!641313 () Bool)

(assert (=> b!672280 m!641313))

(assert (=> b!672281 m!641311))

(declare-fun m!641315 () Bool)

(assert (=> b!672283 m!641315))

(declare-fun m!641317 () Bool)

(assert (=> b!672301 m!641317))

(assert (=> b!672291 m!641303))

(assert (=> b!672299 m!641305))

(assert (=> b!672299 m!641305))

(declare-fun m!641319 () Bool)

(assert (=> b!672299 m!641319))

(push 1)

