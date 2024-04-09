; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59896 () Bool)

(assert start!59896)

(declare-fun res!430464 () Bool)

(declare-fun e!380215 () Bool)

(assert (=> start!59896 (=> (not res!430464) (not e!380215))))

(declare-datatypes ((array!38899 0))(
  ( (array!38900 (arr!18638 (Array (_ BitVec 32) (_ BitVec 64))) (size!19002 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38899)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59896 (= res!430464 (and (bvslt (size!19002 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19002 a!3626))))))

(assert (=> start!59896 e!380215))

(assert (=> start!59896 true))

(declare-fun array_inv!14412 (array!38899) Bool)

(assert (=> start!59896 (array_inv!14412 a!3626)))

(declare-fun b!662285 () Bool)

(declare-fun e!380213 () Bool)

(assert (=> b!662285 (= e!380213 true)))

(declare-fun lt!308971 () Bool)

(declare-datatypes ((List!12732 0))(
  ( (Nil!12729) (Cons!12728 (h!13773 (_ BitVec 64)) (t!18968 List!12732)) )
))
(declare-fun lt!308970 () List!12732)

(declare-fun arrayNoDuplicates!0 (array!38899 (_ BitVec 32) List!12732) Bool)

(assert (=> b!662285 (= lt!308971 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!308970))))

(declare-datatypes ((Unit!22998 0))(
  ( (Unit!22999) )
))
(declare-fun lt!308973 () Unit!22998)

(declare-fun acc!681 () List!12732)

(declare-fun noDuplicateSubseq!13 (List!12732 List!12732) Unit!22998)

(assert (=> b!662285 (= lt!308973 (noDuplicateSubseq!13 acc!681 lt!308970))))

(declare-fun b!662286 () Bool)

(declare-fun e!380211 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3275 (List!12732 (_ BitVec 64)) Bool)

(assert (=> b!662286 (= e!380211 (not (contains!3275 acc!681 k!2843)))))

(declare-fun b!662287 () Bool)

(declare-fun res!430471 () Bool)

(assert (=> b!662287 (=> (not res!430471) (not e!380215))))

(assert (=> b!662287 (= res!430471 (not (contains!3275 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662288 () Bool)

(declare-fun e!380209 () Bool)

(assert (=> b!662288 (= e!380209 (contains!3275 acc!681 k!2843))))

(declare-fun b!662289 () Bool)

(declare-fun res!430462 () Bool)

(assert (=> b!662289 (=> res!430462 e!380213)))

(assert (=> b!662289 (= res!430462 (contains!3275 lt!308970 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662290 () Bool)

(declare-fun e!380210 () Unit!22998)

(declare-fun Unit!23000 () Unit!22998)

(assert (=> b!662290 (= e!380210 Unit!23000)))

(declare-fun b!662291 () Bool)

(declare-fun res!430470 () Bool)

(assert (=> b!662291 (=> (not res!430470) (not e!380215))))

(declare-fun e!380208 () Bool)

(assert (=> b!662291 (= res!430470 e!380208)))

(declare-fun res!430460 () Bool)

(assert (=> b!662291 (=> res!430460 e!380208)))

(assert (=> b!662291 (= res!430460 e!380209)))

(declare-fun res!430456 () Bool)

(assert (=> b!662291 (=> (not res!430456) (not e!380209))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662291 (= res!430456 (bvsgt from!3004 i!1382))))

(declare-fun b!662292 () Bool)

(assert (=> b!662292 (= e!380208 e!380211)))

(declare-fun res!430455 () Bool)

(assert (=> b!662292 (=> (not res!430455) (not e!380211))))

(assert (=> b!662292 (= res!430455 (bvsle from!3004 i!1382))))

(declare-fun b!662293 () Bool)

(declare-fun res!430466 () Bool)

(assert (=> b!662293 (=> (not res!430466) (not e!380215))))

(assert (=> b!662293 (= res!430466 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12729))))

(declare-fun b!662294 () Bool)

(declare-fun Unit!23001 () Unit!22998)

(assert (=> b!662294 (= e!380210 Unit!23001)))

(declare-fun lt!308972 () Unit!22998)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38899 (_ BitVec 64) (_ BitVec 32)) Unit!22998)

(assert (=> b!662294 (= lt!308972 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662294 false))

(declare-fun b!662295 () Bool)

(declare-fun e!380212 () Bool)

(assert (=> b!662295 (= e!380212 e!380213)))

(declare-fun res!430468 () Bool)

(assert (=> b!662295 (=> res!430468 e!380213)))

(assert (=> b!662295 (= res!430468 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!144 (List!12732 (_ BitVec 64)) List!12732)

(assert (=> b!662295 (= lt!308970 ($colon$colon!144 acc!681 (select (arr!18638 a!3626) from!3004)))))

(declare-fun subseq!13 (List!12732 List!12732) Bool)

(assert (=> b!662295 (subseq!13 acc!681 acc!681)))

(declare-fun lt!308969 () Unit!22998)

(declare-fun lemmaListSubSeqRefl!0 (List!12732) Unit!22998)

(assert (=> b!662295 (= lt!308969 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662296 () Bool)

(declare-fun res!430458 () Bool)

(assert (=> b!662296 (=> (not res!430458) (not e!380215))))

(assert (=> b!662296 (= res!430458 (not (contains!3275 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662297 () Bool)

(declare-fun res!430461 () Bool)

(assert (=> b!662297 (=> (not res!430461) (not e!380215))))

(assert (=> b!662297 (= res!430461 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19002 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662298 () Bool)

(declare-fun res!430469 () Bool)

(assert (=> b!662298 (=> (not res!430469) (not e!380215))))

(assert (=> b!662298 (= res!430469 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19002 a!3626))))))

(declare-fun b!662299 () Bool)

(declare-fun res!430472 () Bool)

(assert (=> b!662299 (=> res!430472 e!380213)))

(declare-fun noDuplicate!522 (List!12732) Bool)

(assert (=> b!662299 (= res!430472 (not (noDuplicate!522 lt!308970)))))

(declare-fun b!662300 () Bool)

(declare-fun res!430467 () Bool)

(assert (=> b!662300 (=> (not res!430467) (not e!380215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662300 (= res!430467 (validKeyInArray!0 k!2843))))

(declare-fun b!662301 () Bool)

(declare-fun res!430457 () Bool)

(assert (=> b!662301 (=> (not res!430457) (not e!380215))))

(assert (=> b!662301 (= res!430457 (noDuplicate!522 acc!681))))

(declare-fun b!662302 () Bool)

(declare-fun res!430463 () Bool)

(assert (=> b!662302 (=> res!430463 e!380213)))

(assert (=> b!662302 (= res!430463 (contains!3275 lt!308970 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662303 () Bool)

(assert (=> b!662303 (= e!380215 (not e!380212))))

(declare-fun res!430454 () Bool)

(assert (=> b!662303 (=> res!430454 e!380212)))

(assert (=> b!662303 (= res!430454 (not (validKeyInArray!0 (select (arr!18638 a!3626) from!3004))))))

(declare-fun lt!308968 () Unit!22998)

(assert (=> b!662303 (= lt!308968 e!380210)))

(declare-fun c!76283 () Bool)

(declare-fun arrayContainsKey!0 (array!38899 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662303 (= c!76283 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662303 (arrayContainsKey!0 (array!38900 (store (arr!18638 a!3626) i!1382 k!2843) (size!19002 a!3626)) k!2843 from!3004)))

(declare-fun b!662304 () Bool)

(declare-fun res!430465 () Bool)

(assert (=> b!662304 (=> (not res!430465) (not e!380215))))

(assert (=> b!662304 (= res!430465 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662305 () Bool)

(declare-fun res!430453 () Bool)

(assert (=> b!662305 (=> res!430453 e!380213)))

(assert (=> b!662305 (= res!430453 (not (subseq!13 acc!681 lt!308970)))))

(declare-fun b!662306 () Bool)

(declare-fun res!430459 () Bool)

(assert (=> b!662306 (=> (not res!430459) (not e!380215))))

(assert (=> b!662306 (= res!430459 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59896 res!430464) b!662301))

(assert (= (and b!662301 res!430457) b!662287))

(assert (= (and b!662287 res!430471) b!662296))

(assert (= (and b!662296 res!430458) b!662291))

(assert (= (and b!662291 res!430456) b!662288))

(assert (= (and b!662291 (not res!430460)) b!662292))

(assert (= (and b!662292 res!430455) b!662286))

(assert (= (and b!662291 res!430470) b!662293))

(assert (= (and b!662293 res!430466) b!662306))

(assert (= (and b!662306 res!430459) b!662298))

(assert (= (and b!662298 res!430469) b!662300))

(assert (= (and b!662300 res!430467) b!662304))

(assert (= (and b!662304 res!430465) b!662297))

(assert (= (and b!662297 res!430461) b!662303))

(assert (= (and b!662303 c!76283) b!662294))

(assert (= (and b!662303 (not c!76283)) b!662290))

(assert (= (and b!662303 (not res!430454)) b!662295))

(assert (= (and b!662295 (not res!430468)) b!662299))

(assert (= (and b!662299 (not res!430472)) b!662302))

(assert (= (and b!662302 (not res!430463)) b!662289))

(assert (= (and b!662289 (not res!430462)) b!662305))

(assert (= (and b!662305 (not res!430453)) b!662285))

(declare-fun m!634179 () Bool)

(assert (=> b!662302 m!634179))

(declare-fun m!634181 () Bool)

(assert (=> b!662299 m!634181))

(declare-fun m!634183 () Bool)

(assert (=> b!662295 m!634183))

(assert (=> b!662295 m!634183))

(declare-fun m!634185 () Bool)

(assert (=> b!662295 m!634185))

(declare-fun m!634187 () Bool)

(assert (=> b!662295 m!634187))

(declare-fun m!634189 () Bool)

(assert (=> b!662295 m!634189))

(declare-fun m!634191 () Bool)

(assert (=> b!662289 m!634191))

(declare-fun m!634193 () Bool)

(assert (=> b!662300 m!634193))

(declare-fun m!634195 () Bool)

(assert (=> b!662294 m!634195))

(declare-fun m!634197 () Bool)

(assert (=> b!662301 m!634197))

(declare-fun m!634199 () Bool)

(assert (=> b!662288 m!634199))

(declare-fun m!634201 () Bool)

(assert (=> b!662287 m!634201))

(assert (=> b!662286 m!634199))

(declare-fun m!634203 () Bool)

(assert (=> b!662304 m!634203))

(declare-fun m!634205 () Bool)

(assert (=> b!662306 m!634205))

(declare-fun m!634207 () Bool)

(assert (=> b!662285 m!634207))

(declare-fun m!634209 () Bool)

(assert (=> b!662285 m!634209))

(declare-fun m!634211 () Bool)

(assert (=> start!59896 m!634211))

(declare-fun m!634213 () Bool)

(assert (=> b!662293 m!634213))

(declare-fun m!634215 () Bool)

(assert (=> b!662305 m!634215))

(assert (=> b!662303 m!634183))

(declare-fun m!634217 () Bool)

(assert (=> b!662303 m!634217))

(declare-fun m!634219 () Bool)

(assert (=> b!662303 m!634219))

(assert (=> b!662303 m!634183))

(declare-fun m!634221 () Bool)

(assert (=> b!662303 m!634221))

(declare-fun m!634223 () Bool)

(assert (=> b!662303 m!634223))

(declare-fun m!634225 () Bool)

(assert (=> b!662296 m!634225))

(push 1)

