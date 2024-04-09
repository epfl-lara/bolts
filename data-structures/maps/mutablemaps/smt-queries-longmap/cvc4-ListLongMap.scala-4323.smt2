; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59986 () Bool)

(assert start!59986)

(declare-fun b!665234 () Bool)

(declare-fun res!432955 () Bool)

(declare-fun e!381250 () Bool)

(assert (=> b!665234 (=> (not res!432955) (not e!381250))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!665234 (= res!432955 (validKeyInArray!0 k!2843))))

(declare-fun b!665235 () Bool)

(declare-fun e!381243 () Bool)

(assert (=> b!665235 (= e!381243 true)))

(declare-fun lt!309964 () Bool)

(declare-datatypes ((List!12777 0))(
  ( (Nil!12774) (Cons!12773 (h!13818 (_ BitVec 64)) (t!19013 List!12777)) )
))
(declare-fun lt!309966 () List!12777)

(declare-fun contains!3320 (List!12777 (_ BitVec 64)) Bool)

(assert (=> b!665235 (= lt!309964 (contains!3320 lt!309966 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665236 () Bool)

(assert (=> b!665236 (= e!381250 (not e!381243))))

(declare-fun res!432942 () Bool)

(assert (=> b!665236 (=> res!432942 e!381243)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!665236 (= res!432942 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun acc!681 () List!12777)

(declare-fun -!56 (List!12777 (_ BitVec 64)) List!12777)

(assert (=> b!665236 (= (-!56 lt!309966 k!2843) acc!681)))

(declare-fun $colon$colon!189 (List!12777 (_ BitVec 64)) List!12777)

(assert (=> b!665236 (= lt!309966 ($colon$colon!189 acc!681 k!2843))))

(declare-datatypes ((Unit!23210 0))(
  ( (Unit!23211) )
))
(declare-fun lt!309967 () Unit!23210)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12777) Unit!23210)

(assert (=> b!665236 (= lt!309967 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(declare-fun subseq!58 (List!12777 List!12777) Bool)

(assert (=> b!665236 (subseq!58 acc!681 acc!681)))

(declare-fun lt!309968 () Unit!23210)

(declare-fun lemmaListSubSeqRefl!0 (List!12777) Unit!23210)

(assert (=> b!665236 (= lt!309968 (lemmaListSubSeqRefl!0 acc!681))))

(declare-datatypes ((array!38989 0))(
  ( (array!38990 (arr!18683 (Array (_ BitVec 32) (_ BitVec 64))) (size!19047 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38989)

(declare-fun arrayNoDuplicates!0 (array!38989 (_ BitVec 32) List!12777) Bool)

(assert (=> b!665236 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309970 () Unit!23210)

(declare-fun e!381244 () Unit!23210)

(assert (=> b!665236 (= lt!309970 e!381244)))

(declare-fun c!76517 () Bool)

(assert (=> b!665236 (= c!76517 (validKeyInArray!0 (select (arr!18683 a!3626) from!3004)))))

(declare-fun lt!309972 () Unit!23210)

(declare-fun e!381245 () Unit!23210)

(assert (=> b!665236 (= lt!309972 e!381245)))

(declare-fun c!76516 () Bool)

(declare-fun lt!309969 () Bool)

(assert (=> b!665236 (= c!76516 lt!309969)))

(declare-fun arrayContainsKey!0 (array!38989 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!665236 (= lt!309969 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!665236 (arrayContainsKey!0 (array!38990 (store (arr!18683 a!3626) i!1382 k!2843) (size!19047 a!3626)) k!2843 from!3004)))

(declare-fun b!665237 () Bool)

(declare-fun res!432953 () Bool)

(assert (=> b!665237 (=> res!432953 e!381243)))

(assert (=> b!665237 (= res!432953 (not (subseq!58 acc!681 lt!309966)))))

(declare-fun b!665238 () Bool)

(declare-fun e!381249 () Bool)

(declare-fun e!381248 () Bool)

(assert (=> b!665238 (= e!381249 e!381248)))

(declare-fun res!432949 () Bool)

(assert (=> b!665238 (=> (not res!432949) (not e!381248))))

(assert (=> b!665238 (= res!432949 (bvsle from!3004 i!1382))))

(declare-fun b!665239 () Bool)

(declare-fun Unit!23212 () Unit!23210)

(assert (=> b!665239 (= e!381244 Unit!23212)))

(declare-fun b!665240 () Bool)

(declare-fun res!432944 () Bool)

(assert (=> b!665240 (=> (not res!432944) (not e!381250))))

(assert (=> b!665240 (= res!432944 (not (contains!3320 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!432939 () Bool)

(assert (=> start!59986 (=> (not res!432939) (not e!381250))))

(assert (=> start!59986 (= res!432939 (and (bvslt (size!19047 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19047 a!3626))))))

(assert (=> start!59986 e!381250))

(assert (=> start!59986 true))

(declare-fun array_inv!14457 (array!38989) Bool)

(assert (=> start!59986 (array_inv!14457 a!3626)))

(declare-fun b!665241 () Bool)

(declare-fun res!432937 () Bool)

(assert (=> b!665241 (=> res!432937 e!381243)))

(assert (=> b!665241 (= res!432937 lt!309969)))

(declare-fun b!665242 () Bool)

(declare-fun res!432938 () Bool)

(assert (=> b!665242 (=> res!432938 e!381243)))

(assert (=> b!665242 (= res!432938 (not (contains!3320 lt!309966 k!2843)))))

(declare-fun b!665243 () Bool)

(declare-fun res!432948 () Bool)

(assert (=> b!665243 (=> res!432948 e!381243)))

(assert (=> b!665243 (= res!432948 (contains!3320 acc!681 k!2843))))

(declare-fun b!665244 () Bool)

(declare-fun res!432950 () Bool)

(assert (=> b!665244 (=> res!432950 e!381243)))

(declare-fun noDuplicate!567 (List!12777) Bool)

(assert (=> b!665244 (= res!432950 (not (noDuplicate!567 lt!309966)))))

(declare-fun b!665245 () Bool)

(declare-fun res!432951 () Bool)

(assert (=> b!665245 (=> (not res!432951) (not e!381250))))

(assert (=> b!665245 (= res!432951 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19047 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!665246 () Bool)

(declare-fun res!432954 () Bool)

(assert (=> b!665246 (=> (not res!432954) (not e!381250))))

(assert (=> b!665246 (= res!432954 (not (contains!3320 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!665247 () Bool)

(declare-fun res!432936 () Bool)

(assert (=> b!665247 (=> res!432936 e!381243)))

(assert (=> b!665247 (= res!432936 (contains!3320 lt!309966 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!665248 () Bool)

(declare-fun res!432947 () Bool)

(assert (=> b!665248 (=> (not res!432947) (not e!381250))))

(assert (=> b!665248 (= res!432947 e!381249)))

(declare-fun res!432943 () Bool)

(assert (=> b!665248 (=> res!432943 e!381249)))

(declare-fun e!381246 () Bool)

(assert (=> b!665248 (= res!432943 e!381246)))

(declare-fun res!432956 () Bool)

(assert (=> b!665248 (=> (not res!432956) (not e!381246))))

(assert (=> b!665248 (= res!432956 (bvsgt from!3004 i!1382))))

(declare-fun b!665249 () Bool)

(declare-fun res!432941 () Bool)

(assert (=> b!665249 (=> (not res!432941) (not e!381250))))

(assert (=> b!665249 (= res!432941 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12774))))

(declare-fun b!665250 () Bool)

(assert (=> b!665250 (= e!381248 (not (contains!3320 acc!681 k!2843)))))

(declare-fun b!665251 () Bool)

(declare-fun res!432945 () Bool)

(assert (=> b!665251 (=> (not res!432945) (not e!381250))))

(assert (=> b!665251 (= res!432945 (noDuplicate!567 acc!681))))

(declare-fun b!665252 () Bool)

(declare-fun res!432940 () Bool)

(assert (=> b!665252 (=> (not res!432940) (not e!381250))))

(assert (=> b!665252 (= res!432940 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19047 a!3626))))))

(declare-fun b!665253 () Bool)

(declare-fun Unit!23213 () Unit!23210)

(assert (=> b!665253 (= e!381245 Unit!23213)))

(declare-fun lt!309965 () Unit!23210)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38989 (_ BitVec 64) (_ BitVec 32)) Unit!23210)

(assert (=> b!665253 (= lt!309965 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!665253 false))

(declare-fun b!665254 () Bool)

(declare-fun res!432946 () Bool)

(assert (=> b!665254 (=> (not res!432946) (not e!381250))))

(assert (=> b!665254 (= res!432946 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!665255 () Bool)

(assert (=> b!665255 (= e!381246 (contains!3320 acc!681 k!2843))))

(declare-fun b!665256 () Bool)

(declare-fun res!432952 () Bool)

(assert (=> b!665256 (=> (not res!432952) (not e!381250))))

(assert (=> b!665256 (= res!432952 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!665257 () Bool)

(declare-fun Unit!23214 () Unit!23210)

(assert (=> b!665257 (= e!381245 Unit!23214)))

(declare-fun b!665258 () Bool)

(declare-fun lt!309971 () Unit!23210)

(assert (=> b!665258 (= e!381244 lt!309971)))

(declare-fun lt!309963 () Unit!23210)

(assert (=> b!665258 (= lt!309963 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!665258 (subseq!58 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38989 List!12777 List!12777 (_ BitVec 32)) Unit!23210)

(assert (=> b!665258 (= lt!309971 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!189 acc!681 (select (arr!18683 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!665258 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!59986 res!432939) b!665251))

(assert (= (and b!665251 res!432945) b!665240))

(assert (= (and b!665240 res!432944) b!665246))

(assert (= (and b!665246 res!432954) b!665248))

(assert (= (and b!665248 res!432956) b!665255))

(assert (= (and b!665248 (not res!432943)) b!665238))

(assert (= (and b!665238 res!432949) b!665250))

(assert (= (and b!665248 res!432947) b!665249))

(assert (= (and b!665249 res!432941) b!665254))

(assert (= (and b!665254 res!432946) b!665252))

(assert (= (and b!665252 res!432940) b!665234))

(assert (= (and b!665234 res!432955) b!665256))

(assert (= (and b!665256 res!432952) b!665245))

(assert (= (and b!665245 res!432951) b!665236))

(assert (= (and b!665236 c!76516) b!665253))

(assert (= (and b!665236 (not c!76516)) b!665257))

(assert (= (and b!665236 c!76517) b!665258))

(assert (= (and b!665236 (not c!76517)) b!665239))

(assert (= (and b!665236 (not res!432942)) b!665244))

(assert (= (and b!665244 (not res!432950)) b!665241))

(assert (= (and b!665241 (not res!432937)) b!665243))

(assert (= (and b!665243 (not res!432948)) b!665237))

(assert (= (and b!665237 (not res!432953)) b!665242))

(assert (= (and b!665242 (not res!432938)) b!665247))

(assert (= (and b!665247 (not res!432936)) b!665235))

(declare-fun m!636355 () Bool)

(assert (=> b!665247 m!636355))

(declare-fun m!636357 () Bool)

(assert (=> b!665255 m!636357))

(declare-fun m!636359 () Bool)

(assert (=> start!59986 m!636359))

(declare-fun m!636361 () Bool)

(assert (=> b!665249 m!636361))

(declare-fun m!636363 () Bool)

(assert (=> b!665254 m!636363))

(assert (=> b!665243 m!636357))

(declare-fun m!636365 () Bool)

(assert (=> b!665256 m!636365))

(declare-fun m!636367 () Bool)

(assert (=> b!665251 m!636367))

(declare-fun m!636369 () Bool)

(assert (=> b!665258 m!636369))

(declare-fun m!636371 () Bool)

(assert (=> b!665258 m!636371))

(declare-fun m!636373 () Bool)

(assert (=> b!665258 m!636373))

(declare-fun m!636375 () Bool)

(assert (=> b!665258 m!636375))

(assert (=> b!665258 m!636371))

(assert (=> b!665258 m!636373))

(declare-fun m!636377 () Bool)

(assert (=> b!665258 m!636377))

(declare-fun m!636379 () Bool)

(assert (=> b!665258 m!636379))

(declare-fun m!636381 () Bool)

(assert (=> b!665244 m!636381))

(declare-fun m!636383 () Bool)

(assert (=> b!665242 m!636383))

(assert (=> b!665250 m!636357))

(declare-fun m!636385 () Bool)

(assert (=> b!665246 m!636385))

(declare-fun m!636387 () Bool)

(assert (=> b!665240 m!636387))

(assert (=> b!665236 m!636369))

(assert (=> b!665236 m!636371))

(declare-fun m!636389 () Bool)

(assert (=> b!665236 m!636389))

(declare-fun m!636391 () Bool)

(assert (=> b!665236 m!636391))

(assert (=> b!665236 m!636377))

(declare-fun m!636393 () Bool)

(assert (=> b!665236 m!636393))

(assert (=> b!665236 m!636371))

(declare-fun m!636395 () Bool)

(assert (=> b!665236 m!636395))

(declare-fun m!636397 () Bool)

(assert (=> b!665236 m!636397))

(declare-fun m!636399 () Bool)

(assert (=> b!665236 m!636399))

(declare-fun m!636401 () Bool)

(assert (=> b!665236 m!636401))

(assert (=> b!665236 m!636379))

(declare-fun m!636403 () Bool)

(assert (=> b!665235 m!636403))

(declare-fun m!636405 () Bool)

(assert (=> b!665253 m!636405))

(declare-fun m!636407 () Bool)

(assert (=> b!665234 m!636407))

(declare-fun m!636409 () Bool)

(assert (=> b!665237 m!636409))

(push 1)

(assert (not b!665253))

(assert (not b!665258))

(assert (not b!665249))

(assert (not b!665235))

(assert (not b!665256))

(assert (not b!665234))

(assert (not b!665236))

(assert (not b!665242))

(assert (not start!59986))

(assert (not b!665251))

(assert (not b!665237))

(assert (not b!665246))

(assert (not b!665254))

(assert (not b!665255))

(assert (not b!665247))

(assert (not b!665240))

(assert (not b!665244))

(assert (not b!665250))

(assert (not b!665243))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

