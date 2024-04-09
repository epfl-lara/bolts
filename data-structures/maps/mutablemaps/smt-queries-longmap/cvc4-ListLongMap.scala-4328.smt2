; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60016 () Bool)

(assert start!60016)

(declare-fun b!666359 () Bool)

(declare-fun res!433886 () Bool)

(declare-fun e!381607 () Bool)

(assert (=> b!666359 (=> (not res!433886) (not e!381607))))

(declare-datatypes ((List!12792 0))(
  ( (Nil!12789) (Cons!12788 (h!13833 (_ BitVec 64)) (t!19028 List!12792)) )
))
(declare-fun acc!681 () List!12792)

(declare-fun contains!3335 (List!12792 (_ BitVec 64)) Bool)

(assert (=> b!666359 (= res!433886 (not (contains!3335 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666360 () Bool)

(declare-fun res!433898 () Bool)

(declare-fun e!381605 () Bool)

(assert (=> b!666360 (=> res!433898 e!381605)))

(declare-fun lt!310416 () Bool)

(assert (=> b!666360 (= res!433898 lt!310416)))

(declare-fun b!666361 () Bool)

(declare-fun res!433899 () Bool)

(assert (=> b!666361 (=> (not res!433899) (not e!381607))))

(declare-datatypes ((array!39019 0))(
  ( (array!39020 (arr!18698 (Array (_ BitVec 32) (_ BitVec 64))) (size!19062 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39019)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39019 (_ BitVec 32) List!12792) Bool)

(assert (=> b!666361 (= res!433899 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!666362 () Bool)

(declare-fun res!433892 () Bool)

(assert (=> b!666362 (=> res!433892 e!381605)))

(declare-fun lt!310415 () List!12792)

(assert (=> b!666362 (= res!433892 (contains!3335 lt!310415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!433889 () Bool)

(assert (=> start!60016 (=> (not res!433889) (not e!381607))))

(assert (=> start!60016 (= res!433889 (and (bvslt (size!19062 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19062 a!3626))))))

(assert (=> start!60016 e!381607))

(assert (=> start!60016 true))

(declare-fun array_inv!14472 (array!39019) Bool)

(assert (=> start!60016 (array_inv!14472 a!3626)))

(declare-fun b!666363 () Bool)

(declare-fun e!381606 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!666363 (= e!381606 (contains!3335 acc!681 k!2843))))

(declare-fun b!666364 () Bool)

(declare-datatypes ((Unit!23285 0))(
  ( (Unit!23286) )
))
(declare-fun e!381603 () Unit!23285)

(declare-fun Unit!23287 () Unit!23285)

(assert (=> b!666364 (= e!381603 Unit!23287)))

(declare-fun lt!310422 () Unit!23285)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39019 (_ BitVec 64) (_ BitVec 32)) Unit!23285)

(assert (=> b!666364 (= lt!310422 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!666364 false))

(declare-fun b!666365 () Bool)

(declare-fun Unit!23288 () Unit!23285)

(assert (=> b!666365 (= e!381603 Unit!23288)))

(declare-fun b!666366 () Bool)

(declare-fun res!433885 () Bool)

(assert (=> b!666366 (=> res!433885 e!381605)))

(declare-fun noDuplicate!582 (List!12792) Bool)

(assert (=> b!666366 (= res!433885 (not (noDuplicate!582 lt!310415)))))

(declare-fun b!666367 () Bool)

(declare-fun res!433900 () Bool)

(assert (=> b!666367 (=> (not res!433900) (not e!381607))))

(assert (=> b!666367 (= res!433900 (noDuplicate!582 acc!681))))

(declare-fun b!666368 () Bool)

(declare-fun e!381609 () Unit!23285)

(declare-fun lt!310418 () Unit!23285)

(assert (=> b!666368 (= e!381609 lt!310418)))

(declare-fun lt!310413 () Unit!23285)

(declare-fun lemmaListSubSeqRefl!0 (List!12792) Unit!23285)

(assert (=> b!666368 (= lt!310413 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!73 (List!12792 List!12792) Bool)

(assert (=> b!666368 (subseq!73 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39019 List!12792 List!12792 (_ BitVec 32)) Unit!23285)

(declare-fun $colon$colon!204 (List!12792 (_ BitVec 64)) List!12792)

(assert (=> b!666368 (= lt!310418 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!204 acc!681 (select (arr!18698 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666368 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!666369 () Bool)

(declare-fun res!433896 () Bool)

(assert (=> b!666369 (=> (not res!433896) (not e!381607))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!666369 (= res!433896 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19062 a!3626))))))

(declare-fun b!666370 () Bool)

(declare-fun res!433887 () Bool)

(assert (=> b!666370 (=> (not res!433887) (not e!381607))))

(assert (=> b!666370 (= res!433887 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12789))))

(declare-fun b!666371 () Bool)

(assert (=> b!666371 (= e!381607 (not e!381605))))

(declare-fun res!433894 () Bool)

(assert (=> b!666371 (=> res!433894 e!381605)))

(assert (=> b!666371 (= res!433894 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!71 (List!12792 (_ BitVec 64)) List!12792)

(assert (=> b!666371 (= (-!71 lt!310415 k!2843) acc!681)))

(assert (=> b!666371 (= lt!310415 ($colon$colon!204 acc!681 k!2843))))

(declare-fun lt!310421 () Unit!23285)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12792) Unit!23285)

(assert (=> b!666371 (= lt!310421 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!666371 (subseq!73 acc!681 acc!681)))

(declare-fun lt!310419 () Unit!23285)

(assert (=> b!666371 (= lt!310419 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!666371 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!310414 () Unit!23285)

(assert (=> b!666371 (= lt!310414 e!381609)))

(declare-fun c!76606 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!666371 (= c!76606 (validKeyInArray!0 (select (arr!18698 a!3626) from!3004)))))

(declare-fun lt!310420 () Unit!23285)

(assert (=> b!666371 (= lt!310420 e!381603)))

(declare-fun c!76607 () Bool)

(assert (=> b!666371 (= c!76607 lt!310416)))

(declare-fun arrayContainsKey!0 (array!39019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!666371 (= lt!310416 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!666371 (arrayContainsKey!0 (array!39020 (store (arr!18698 a!3626) i!1382 k!2843) (size!19062 a!3626)) k!2843 from!3004)))

(declare-fun b!666372 () Bool)

(declare-fun res!433895 () Bool)

(assert (=> b!666372 (=> (not res!433895) (not e!381607))))

(assert (=> b!666372 (= res!433895 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19062 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!666373 () Bool)

(declare-fun e!381610 () Bool)

(assert (=> b!666373 (= e!381610 (not (contains!3335 acc!681 k!2843)))))

(declare-fun b!666374 () Bool)

(declare-fun res!433901 () Bool)

(assert (=> b!666374 (=> res!433901 e!381605)))

(assert (=> b!666374 (= res!433901 (not (contains!3335 lt!310415 k!2843)))))

(declare-fun b!666375 () Bool)

(assert (=> b!666375 (= e!381605 true)))

(declare-fun lt!310417 () Bool)

(assert (=> b!666375 (= lt!310417 (contains!3335 lt!310415 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!666376 () Bool)

(declare-fun res!433881 () Bool)

(assert (=> b!666376 (=> (not res!433881) (not e!381607))))

(assert (=> b!666376 (= res!433881 (validKeyInArray!0 k!2843))))

(declare-fun b!666377 () Bool)

(declare-fun Unit!23289 () Unit!23285)

(assert (=> b!666377 (= e!381609 Unit!23289)))

(declare-fun b!666378 () Bool)

(declare-fun res!433888 () Bool)

(assert (=> b!666378 (=> (not res!433888) (not e!381607))))

(assert (=> b!666378 (= res!433888 (not (contains!3335 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!666379 () Bool)

(declare-fun e!381608 () Bool)

(assert (=> b!666379 (= e!381608 e!381610)))

(declare-fun res!433890 () Bool)

(assert (=> b!666379 (=> (not res!433890) (not e!381610))))

(assert (=> b!666379 (= res!433890 (bvsle from!3004 i!1382))))

(declare-fun b!666380 () Bool)

(declare-fun res!433883 () Bool)

(assert (=> b!666380 (=> res!433883 e!381605)))

(assert (=> b!666380 (= res!433883 (contains!3335 acc!681 k!2843))))

(declare-fun b!666381 () Bool)

(declare-fun res!433891 () Bool)

(assert (=> b!666381 (=> (not res!433891) (not e!381607))))

(assert (=> b!666381 (= res!433891 e!381608)))

(declare-fun res!433893 () Bool)

(assert (=> b!666381 (=> res!433893 e!381608)))

(assert (=> b!666381 (= res!433893 e!381606)))

(declare-fun res!433882 () Bool)

(assert (=> b!666381 (=> (not res!433882) (not e!381606))))

(assert (=> b!666381 (= res!433882 (bvsgt from!3004 i!1382))))

(declare-fun b!666382 () Bool)

(declare-fun res!433884 () Bool)

(assert (=> b!666382 (=> (not res!433884) (not e!381607))))

(assert (=> b!666382 (= res!433884 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!666383 () Bool)

(declare-fun res!433897 () Bool)

(assert (=> b!666383 (=> res!433897 e!381605)))

(assert (=> b!666383 (= res!433897 (not (subseq!73 acc!681 lt!310415)))))

(assert (= (and start!60016 res!433889) b!666367))

(assert (= (and b!666367 res!433900) b!666378))

(assert (= (and b!666378 res!433888) b!666359))

(assert (= (and b!666359 res!433886) b!666381))

(assert (= (and b!666381 res!433882) b!666363))

(assert (= (and b!666381 (not res!433893)) b!666379))

(assert (= (and b!666379 res!433890) b!666373))

(assert (= (and b!666381 res!433891) b!666370))

(assert (= (and b!666370 res!433887) b!666361))

(assert (= (and b!666361 res!433899) b!666369))

(assert (= (and b!666369 res!433896) b!666376))

(assert (= (and b!666376 res!433881) b!666382))

(assert (= (and b!666382 res!433884) b!666372))

(assert (= (and b!666372 res!433895) b!666371))

(assert (= (and b!666371 c!76607) b!666364))

(assert (= (and b!666371 (not c!76607)) b!666365))

(assert (= (and b!666371 c!76606) b!666368))

(assert (= (and b!666371 (not c!76606)) b!666377))

(assert (= (and b!666371 (not res!433894)) b!666366))

(assert (= (and b!666366 (not res!433885)) b!666360))

(assert (= (and b!666360 (not res!433898)) b!666380))

(assert (= (and b!666380 (not res!433883)) b!666383))

(assert (= (and b!666383 (not res!433897)) b!666374))

(assert (= (and b!666374 (not res!433901)) b!666362))

(assert (= (and b!666362 (not res!433892)) b!666375))

(declare-fun m!637195 () Bool)

(assert (=> b!666367 m!637195))

(declare-fun m!637197 () Bool)

(assert (=> b!666363 m!637197))

(declare-fun m!637199 () Bool)

(assert (=> b!666371 m!637199))

(declare-fun m!637201 () Bool)

(assert (=> b!666371 m!637201))

(declare-fun m!637203 () Bool)

(assert (=> b!666371 m!637203))

(declare-fun m!637205 () Bool)

(assert (=> b!666371 m!637205))

(declare-fun m!637207 () Bool)

(assert (=> b!666371 m!637207))

(declare-fun m!637209 () Bool)

(assert (=> b!666371 m!637209))

(declare-fun m!637211 () Bool)

(assert (=> b!666371 m!637211))

(declare-fun m!637213 () Bool)

(assert (=> b!666371 m!637213))

(assert (=> b!666371 m!637203))

(declare-fun m!637215 () Bool)

(assert (=> b!666371 m!637215))

(declare-fun m!637217 () Bool)

(assert (=> b!666371 m!637217))

(declare-fun m!637219 () Bool)

(assert (=> b!666371 m!637219))

(declare-fun m!637221 () Bool)

(assert (=> b!666378 m!637221))

(declare-fun m!637223 () Bool)

(assert (=> b!666374 m!637223))

(declare-fun m!637225 () Bool)

(assert (=> b!666382 m!637225))

(declare-fun m!637227 () Bool)

(assert (=> b!666364 m!637227))

(declare-fun m!637229 () Bool)

(assert (=> b!666362 m!637229))

(declare-fun m!637231 () Bool)

(assert (=> b!666359 m!637231))

(declare-fun m!637233 () Bool)

(assert (=> b!666375 m!637233))

(assert (=> b!666373 m!637197))

(assert (=> b!666368 m!637201))

(assert (=> b!666368 m!637203))

(declare-fun m!637235 () Bool)

(assert (=> b!666368 m!637235))

(declare-fun m!637237 () Bool)

(assert (=> b!666368 m!637237))

(assert (=> b!666368 m!637203))

(assert (=> b!666368 m!637235))

(assert (=> b!666368 m!637209))

(assert (=> b!666368 m!637219))

(declare-fun m!637239 () Bool)

(assert (=> b!666366 m!637239))

(declare-fun m!637241 () Bool)

(assert (=> b!666370 m!637241))

(assert (=> b!666380 m!637197))

(declare-fun m!637243 () Bool)

(assert (=> b!666376 m!637243))

(declare-fun m!637245 () Bool)

(assert (=> b!666361 m!637245))

(declare-fun m!637247 () Bool)

(assert (=> b!666383 m!637247))

(declare-fun m!637249 () Bool)

(assert (=> start!60016 m!637249))

(push 1)

(assert (not b!666380))

(assert (not b!666378))

(assert (not b!666362))

(assert (not b!666364))

(assert (not b!666367))

(assert (not b!666368))

(assert (not start!60016))

(assert (not b!666371))

(assert (not b!666361))

(assert (not b!666382))

(assert (not b!666375))

(assert (not b!666363))

(assert (not b!666366))

(assert (not b!666359))

