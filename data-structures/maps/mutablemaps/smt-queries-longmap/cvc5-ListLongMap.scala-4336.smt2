; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60060 () Bool)

(assert start!60060)

(declare-fun b!668009 () Bool)

(declare-fun e!382246 () Bool)

(declare-datatypes ((List!12814 0))(
  ( (Nil!12811) (Cons!12810 (h!13855 (_ BitVec 64)) (t!19050 List!12814)) )
))
(declare-fun acc!681 () List!12814)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3357 (List!12814 (_ BitVec 64)) Bool)

(assert (=> b!668009 (= e!382246 (not (contains!3357 acc!681 k!2843)))))

(declare-fun b!668010 () Bool)

(declare-datatypes ((Unit!23395 0))(
  ( (Unit!23396) )
))
(declare-fun e!382251 () Unit!23395)

(declare-fun Unit!23397 () Unit!23395)

(assert (=> b!668010 (= e!382251 Unit!23397)))

(declare-fun b!668011 () Bool)

(declare-fun e!382248 () Bool)

(assert (=> b!668011 (= e!382248 e!382246)))

(declare-fun res!435277 () Bool)

(assert (=> b!668011 (=> (not res!435277) (not e!382246))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668011 (= res!435277 (bvsle from!3004 i!1382))))

(declare-fun b!668012 () Bool)

(declare-fun e!382249 () Bool)

(declare-fun e!382253 () Bool)

(assert (=> b!668012 (= e!382249 e!382253)))

(declare-fun res!435286 () Bool)

(assert (=> b!668012 (=> (not res!435286) (not e!382253))))

(assert (=> b!668012 (= res!435286 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668013 () Bool)

(declare-fun e!382245 () Bool)

(assert (=> b!668013 (= e!382245 (contains!3357 acc!681 k!2843))))

(declare-fun b!668014 () Bool)

(declare-fun res!435285 () Bool)

(declare-fun e!382247 () Bool)

(assert (=> b!668014 (=> (not res!435285) (not e!382247))))

(assert (=> b!668014 (= res!435285 (not (contains!3357 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668015 () Bool)

(declare-fun res!435271 () Bool)

(assert (=> b!668015 (=> (not res!435271) (not e!382247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668015 (= res!435271 (validKeyInArray!0 k!2843))))

(declare-fun b!668016 () Bool)

(declare-fun e!382255 () Bool)

(assert (=> b!668016 (= e!382255 true)))

(declare-fun lt!311073 () Bool)

(assert (=> b!668016 (= lt!311073 e!382249)))

(declare-fun res!435280 () Bool)

(assert (=> b!668016 (=> res!435280 e!382249)))

(declare-fun e!382250 () Bool)

(assert (=> b!668016 (= res!435280 e!382250)))

(declare-fun res!435269 () Bool)

(assert (=> b!668016 (=> (not res!435269) (not e!382250))))

(assert (=> b!668016 (= res!435269 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668017 () Bool)

(declare-fun res!435283 () Bool)

(assert (=> b!668017 (=> (not res!435283) (not e!382247))))

(assert (=> b!668017 (= res!435283 (not (contains!3357 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668018 () Bool)

(declare-fun e!382252 () Unit!23395)

(declare-fun lt!311080 () Unit!23395)

(assert (=> b!668018 (= e!382252 lt!311080)))

(declare-fun lt!311078 () Unit!23395)

(declare-fun lemmaListSubSeqRefl!0 (List!12814) Unit!23395)

(assert (=> b!668018 (= lt!311078 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!95 (List!12814 List!12814) Bool)

(assert (=> b!668018 (subseq!95 acc!681 acc!681)))

(declare-datatypes ((array!39063 0))(
  ( (array!39064 (arr!18720 (Array (_ BitVec 32) (_ BitVec 64))) (size!19084 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39063)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39063 List!12814 List!12814 (_ BitVec 32)) Unit!23395)

(declare-fun $colon$colon!226 (List!12814 (_ BitVec 64)) List!12814)

(assert (=> b!668018 (= lt!311080 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!226 acc!681 (select (arr!18720 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39063 (_ BitVec 32) List!12814) Bool)

(assert (=> b!668018 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668019 () Bool)

(declare-fun res!435270 () Bool)

(assert (=> b!668019 (=> (not res!435270) (not e!382247))))

(declare-fun noDuplicate!604 (List!12814) Bool)

(assert (=> b!668019 (= res!435270 (noDuplicate!604 acc!681))))

(declare-fun b!668020 () Bool)

(declare-fun Unit!23398 () Unit!23395)

(assert (=> b!668020 (= e!382251 Unit!23398)))

(declare-fun lt!311074 () Unit!23395)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39063 (_ BitVec 64) (_ BitVec 32)) Unit!23395)

(assert (=> b!668020 (= lt!311074 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!668020 false))

(declare-fun b!668022 () Bool)

(declare-fun lt!311082 () List!12814)

(assert (=> b!668022 (= e!382253 (not (contains!3357 lt!311082 k!2843)))))

(declare-fun b!668023 () Bool)

(declare-fun Unit!23399 () Unit!23395)

(assert (=> b!668023 (= e!382252 Unit!23399)))

(declare-fun b!668024 () Bool)

(declare-fun res!435276 () Bool)

(assert (=> b!668024 (=> res!435276 e!382255)))

(assert (=> b!668024 (= res!435276 (not (noDuplicate!604 lt!311082)))))

(declare-fun b!668025 () Bool)

(declare-fun res!435284 () Bool)

(assert (=> b!668025 (=> (not res!435284) (not e!382247))))

(assert (=> b!668025 (= res!435284 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19084 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!668026 () Bool)

(assert (=> b!668026 (= e!382250 (contains!3357 lt!311082 k!2843))))

(declare-fun b!668027 () Bool)

(declare-fun res!435278 () Bool)

(assert (=> b!668027 (=> (not res!435278) (not e!382247))))

(assert (=> b!668027 (= res!435278 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19084 a!3626))))))

(declare-fun b!668028 () Bool)

(declare-fun res!435287 () Bool)

(assert (=> b!668028 (=> res!435287 e!382255)))

(assert (=> b!668028 (= res!435287 (contains!3357 lt!311082 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668029 () Bool)

(assert (=> b!668029 (= e!382247 (not e!382255))))

(declare-fun res!435267 () Bool)

(assert (=> b!668029 (=> res!435267 e!382255)))

(assert (=> b!668029 (= res!435267 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!668029 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311082)))

(declare-fun lt!311076 () Unit!23395)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39063 (_ BitVec 64) (_ BitVec 32) List!12814 List!12814) Unit!23395)

(assert (=> b!668029 (= lt!311076 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311082))))

(declare-fun -!93 (List!12814 (_ BitVec 64)) List!12814)

(assert (=> b!668029 (= (-!93 lt!311082 k!2843) acc!681)))

(assert (=> b!668029 (= lt!311082 ($colon$colon!226 acc!681 k!2843))))

(declare-fun lt!311081 () Unit!23395)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12814) Unit!23395)

(assert (=> b!668029 (= lt!311081 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!668029 (subseq!95 acc!681 acc!681)))

(declare-fun lt!311079 () Unit!23395)

(assert (=> b!668029 (= lt!311079 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668029 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311075 () Unit!23395)

(assert (=> b!668029 (= lt!311075 e!382252)))

(declare-fun c!76738 () Bool)

(assert (=> b!668029 (= c!76738 (validKeyInArray!0 (select (arr!18720 a!3626) from!3004)))))

(declare-fun lt!311077 () Unit!23395)

(assert (=> b!668029 (= lt!311077 e!382251)))

(declare-fun c!76739 () Bool)

(declare-fun arrayContainsKey!0 (array!39063 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668029 (= c!76739 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668029 (arrayContainsKey!0 (array!39064 (store (arr!18720 a!3626) i!1382 k!2843) (size!19084 a!3626)) k!2843 from!3004)))

(declare-fun b!668030 () Bool)

(declare-fun res!435273 () Bool)

(assert (=> b!668030 (=> res!435273 e!382255)))

(assert (=> b!668030 (= res!435273 (contains!3357 lt!311082 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668031 () Bool)

(declare-fun res!435279 () Bool)

(assert (=> b!668031 (=> (not res!435279) (not e!382247))))

(assert (=> b!668031 (= res!435279 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668021 () Bool)

(declare-fun res!435275 () Bool)

(assert (=> b!668021 (=> (not res!435275) (not e!382247))))

(assert (=> b!668021 (= res!435275 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12811))))

(declare-fun res!435281 () Bool)

(assert (=> start!60060 (=> (not res!435281) (not e!382247))))

(assert (=> start!60060 (= res!435281 (and (bvslt (size!19084 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19084 a!3626))))))

(assert (=> start!60060 e!382247))

(assert (=> start!60060 true))

(declare-fun array_inv!14494 (array!39063) Bool)

(assert (=> start!60060 (array_inv!14494 a!3626)))

(declare-fun b!668032 () Bool)

(declare-fun res!435268 () Bool)

(assert (=> b!668032 (=> (not res!435268) (not e!382247))))

(assert (=> b!668032 (= res!435268 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668033 () Bool)

(declare-fun res!435274 () Bool)

(assert (=> b!668033 (=> (not res!435274) (not e!382247))))

(assert (=> b!668033 (= res!435274 e!382248)))

(declare-fun res!435282 () Bool)

(assert (=> b!668033 (=> res!435282 e!382248)))

(assert (=> b!668033 (= res!435282 e!382245)))

(declare-fun res!435272 () Bool)

(assert (=> b!668033 (=> (not res!435272) (not e!382245))))

(assert (=> b!668033 (= res!435272 (bvsgt from!3004 i!1382))))

(assert (= (and start!60060 res!435281) b!668019))

(assert (= (and b!668019 res!435270) b!668017))

(assert (= (and b!668017 res!435283) b!668014))

(assert (= (and b!668014 res!435285) b!668033))

(assert (= (and b!668033 res!435272) b!668013))

(assert (= (and b!668033 (not res!435282)) b!668011))

(assert (= (and b!668011 res!435277) b!668009))

(assert (= (and b!668033 res!435274) b!668021))

(assert (= (and b!668021 res!435275) b!668032))

(assert (= (and b!668032 res!435268) b!668027))

(assert (= (and b!668027 res!435278) b!668015))

(assert (= (and b!668015 res!435271) b!668031))

(assert (= (and b!668031 res!435279) b!668025))

(assert (= (and b!668025 res!435284) b!668029))

(assert (= (and b!668029 c!76739) b!668020))

(assert (= (and b!668029 (not c!76739)) b!668010))

(assert (= (and b!668029 c!76738) b!668018))

(assert (= (and b!668029 (not c!76738)) b!668023))

(assert (= (and b!668029 (not res!435267)) b!668024))

(assert (= (and b!668024 (not res!435276)) b!668030))

(assert (= (and b!668030 (not res!435273)) b!668028))

(assert (= (and b!668028 (not res!435287)) b!668016))

(assert (= (and b!668016 res!435269) b!668026))

(assert (= (and b!668016 (not res!435280)) b!668012))

(assert (= (and b!668012 res!435286) b!668022))

(declare-fun m!638451 () Bool)

(assert (=> b!668026 m!638451))

(declare-fun m!638453 () Bool)

(assert (=> b!668009 m!638453))

(declare-fun m!638455 () Bool)

(assert (=> b!668024 m!638455))

(assert (=> b!668013 m!638453))

(declare-fun m!638457 () Bool)

(assert (=> b!668017 m!638457))

(declare-fun m!638459 () Bool)

(assert (=> b!668019 m!638459))

(declare-fun m!638461 () Bool)

(assert (=> start!60060 m!638461))

(declare-fun m!638463 () Bool)

(assert (=> b!668030 m!638463))

(assert (=> b!668022 m!638451))

(declare-fun m!638465 () Bool)

(assert (=> b!668032 m!638465))

(declare-fun m!638467 () Bool)

(assert (=> b!668031 m!638467))

(declare-fun m!638469 () Bool)

(assert (=> b!668014 m!638469))

(declare-fun m!638471 () Bool)

(assert (=> b!668028 m!638471))

(declare-fun m!638473 () Bool)

(assert (=> b!668021 m!638473))

(declare-fun m!638475 () Bool)

(assert (=> b!668029 m!638475))

(declare-fun m!638477 () Bool)

(assert (=> b!668029 m!638477))

(declare-fun m!638479 () Bool)

(assert (=> b!668029 m!638479))

(declare-fun m!638481 () Bool)

(assert (=> b!668029 m!638481))

(declare-fun m!638483 () Bool)

(assert (=> b!668029 m!638483))

(declare-fun m!638485 () Bool)

(assert (=> b!668029 m!638485))

(declare-fun m!638487 () Bool)

(assert (=> b!668029 m!638487))

(assert (=> b!668029 m!638477))

(declare-fun m!638489 () Bool)

(assert (=> b!668029 m!638489))

(declare-fun m!638491 () Bool)

(assert (=> b!668029 m!638491))

(declare-fun m!638493 () Bool)

(assert (=> b!668029 m!638493))

(declare-fun m!638495 () Bool)

(assert (=> b!668029 m!638495))

(declare-fun m!638497 () Bool)

(assert (=> b!668029 m!638497))

(declare-fun m!638499 () Bool)

(assert (=> b!668029 m!638499))

(declare-fun m!638501 () Bool)

(assert (=> b!668015 m!638501))

(assert (=> b!668018 m!638475))

(assert (=> b!668018 m!638477))

(declare-fun m!638503 () Bool)

(assert (=> b!668018 m!638503))

(declare-fun m!638505 () Bool)

(assert (=> b!668018 m!638505))

(assert (=> b!668018 m!638477))

(assert (=> b!668018 m!638503))

(assert (=> b!668018 m!638485))

(assert (=> b!668018 m!638497))

(declare-fun m!638507 () Bool)

(assert (=> b!668020 m!638507))

(push 1)

(assert (not b!668015))

(assert (not b!668014))

(assert (not b!668032))

(assert (not b!668013))

(assert (not b!668009))

(assert (not b!668029))

(assert (not b!668018))

(assert (not b!668021))

(assert (not b!668019))

(assert (not b!668020))

(assert (not b!668017))

(assert (not b!668026))

(assert (not b!668022))

(assert (not b!668024))

(assert (not b!668031))

(assert (not b!668030))

(assert (not b!668028))

