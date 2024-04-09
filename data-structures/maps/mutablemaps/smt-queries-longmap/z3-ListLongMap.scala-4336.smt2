; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60062 () Bool)

(assert start!60062)

(declare-fun b!668084 () Bool)

(declare-fun res!435333 () Bool)

(declare-fun e!382281 () Bool)

(assert (=> b!668084 (=> (not res!435333) (not e!382281))))

(declare-datatypes ((array!39065 0))(
  ( (array!39066 (arr!18721 (Array (_ BitVec 32) (_ BitVec 64))) (size!19085 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39065)

(declare-datatypes ((List!12815 0))(
  ( (Nil!12812) (Cons!12811 (h!13856 (_ BitVec 64)) (t!19051 List!12815)) )
))
(declare-fun arrayNoDuplicates!0 (array!39065 (_ BitVec 32) List!12815) Bool)

(assert (=> b!668084 (= res!435333 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12812))))

(declare-fun b!668085 () Bool)

(declare-fun res!435341 () Bool)

(assert (=> b!668085 (=> (not res!435341) (not e!382281))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!668085 (= res!435341 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19085 a!3626))))))

(declare-fun b!668086 () Bool)

(declare-datatypes ((Unit!23400 0))(
  ( (Unit!23401) )
))
(declare-fun e!382278 () Unit!23400)

(declare-fun Unit!23402 () Unit!23400)

(assert (=> b!668086 (= e!382278 Unit!23402)))

(declare-fun lt!311107 () Unit!23400)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39065 (_ BitVec 64) (_ BitVec 32)) Unit!23400)

(assert (=> b!668086 (= lt!311107 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!668086 false))

(declare-fun b!668087 () Bool)

(declare-fun e!382288 () Bool)

(assert (=> b!668087 (= e!382281 (not e!382288))))

(declare-fun res!435334 () Bool)

(assert (=> b!668087 (=> res!435334 e!382288)))

(assert (=> b!668087 (= res!435334 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!311103 () List!12815)

(assert (=> b!668087 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311103)))

(declare-fun acc!681 () List!12815)

(declare-fun lt!311106 () Unit!23400)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39065 (_ BitVec 64) (_ BitVec 32) List!12815 List!12815) Unit!23400)

(assert (=> b!668087 (= lt!311106 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311103))))

(declare-fun -!94 (List!12815 (_ BitVec 64)) List!12815)

(assert (=> b!668087 (= (-!94 lt!311103 k0!2843) acc!681)))

(declare-fun $colon$colon!227 (List!12815 (_ BitVec 64)) List!12815)

(assert (=> b!668087 (= lt!311103 ($colon$colon!227 acc!681 k0!2843))))

(declare-fun lt!311111 () Unit!23400)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12815) Unit!23400)

(assert (=> b!668087 (= lt!311111 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!96 (List!12815 List!12815) Bool)

(assert (=> b!668087 (subseq!96 acc!681 acc!681)))

(declare-fun lt!311109 () Unit!23400)

(declare-fun lemmaListSubSeqRefl!0 (List!12815) Unit!23400)

(assert (=> b!668087 (= lt!311109 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668087 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311105 () Unit!23400)

(declare-fun e!382279 () Unit!23400)

(assert (=> b!668087 (= lt!311105 e!382279)))

(declare-fun c!76744 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!668087 (= c!76744 (validKeyInArray!0 (select (arr!18721 a!3626) from!3004)))))

(declare-fun lt!311108 () Unit!23400)

(assert (=> b!668087 (= lt!311108 e!382278)))

(declare-fun c!76745 () Bool)

(declare-fun arrayContainsKey!0 (array!39065 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!668087 (= c!76745 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668087 (arrayContainsKey!0 (array!39066 (store (arr!18721 a!3626) i!1382 k0!2843) (size!19085 a!3626)) k0!2843 from!3004)))

(declare-fun b!668088 () Bool)

(declare-fun e!382287 () Bool)

(declare-fun e!382283 () Bool)

(assert (=> b!668088 (= e!382287 e!382283)))

(declare-fun res!435348 () Bool)

(assert (=> b!668088 (=> (not res!435348) (not e!382283))))

(assert (=> b!668088 (= res!435348 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668089 () Bool)

(declare-fun res!435337 () Bool)

(assert (=> b!668089 (=> res!435337 e!382288)))

(declare-fun noDuplicate!605 (List!12815) Bool)

(assert (=> b!668089 (= res!435337 (not (noDuplicate!605 lt!311103)))))

(declare-fun b!668090 () Bool)

(declare-fun res!435349 () Bool)

(assert (=> b!668090 (=> (not res!435349) (not e!382281))))

(assert (=> b!668090 (= res!435349 (noDuplicate!605 acc!681))))

(declare-fun b!668091 () Bool)

(declare-fun lt!311110 () Unit!23400)

(assert (=> b!668091 (= e!382279 lt!311110)))

(declare-fun lt!311104 () Unit!23400)

(assert (=> b!668091 (= lt!311104 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!668091 (subseq!96 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39065 List!12815 List!12815 (_ BitVec 32)) Unit!23400)

(assert (=> b!668091 (= lt!311110 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!227 acc!681 (select (arr!18721 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!668091 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!668092 () Bool)

(assert (=> b!668092 (= e!382288 true)))

(declare-fun lt!311112 () Bool)

(assert (=> b!668092 (= lt!311112 e!382287)))

(declare-fun res!435343 () Bool)

(assert (=> b!668092 (=> res!435343 e!382287)))

(declare-fun e!382284 () Bool)

(assert (=> b!668092 (= res!435343 e!382284)))

(declare-fun res!435330 () Bool)

(assert (=> b!668092 (=> (not res!435330) (not e!382284))))

(assert (=> b!668092 (= res!435330 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!668094 () Bool)

(declare-fun e!382280 () Bool)

(declare-fun contains!3358 (List!12815 (_ BitVec 64)) Bool)

(assert (=> b!668094 (= e!382280 (contains!3358 acc!681 k0!2843))))

(declare-fun b!668095 () Bool)

(declare-fun res!435342 () Bool)

(assert (=> b!668095 (=> res!435342 e!382288)))

(assert (=> b!668095 (= res!435342 (contains!3358 lt!311103 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668096 () Bool)

(declare-fun Unit!23403 () Unit!23400)

(assert (=> b!668096 (= e!382279 Unit!23403)))

(declare-fun b!668097 () Bool)

(declare-fun res!435338 () Bool)

(assert (=> b!668097 (=> (not res!435338) (not e!382281))))

(assert (=> b!668097 (= res!435338 (validKeyInArray!0 k0!2843))))

(declare-fun b!668098 () Bool)

(declare-fun res!435350 () Bool)

(assert (=> b!668098 (=> (not res!435350) (not e!382281))))

(assert (=> b!668098 (= res!435350 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!668099 () Bool)

(declare-fun e!382285 () Bool)

(assert (=> b!668099 (= e!382285 (not (contains!3358 acc!681 k0!2843)))))

(declare-fun b!668100 () Bool)

(declare-fun e!382286 () Bool)

(assert (=> b!668100 (= e!382286 e!382285)))

(declare-fun res!435344 () Bool)

(assert (=> b!668100 (=> (not res!435344) (not e!382285))))

(assert (=> b!668100 (= res!435344 (bvsle from!3004 i!1382))))

(declare-fun b!668101 () Bool)

(declare-fun res!435336 () Bool)

(assert (=> b!668101 (=> (not res!435336) (not e!382281))))

(assert (=> b!668101 (= res!435336 (not (contains!3358 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668102 () Bool)

(declare-fun res!435332 () Bool)

(assert (=> b!668102 (=> res!435332 e!382288)))

(assert (=> b!668102 (= res!435332 (contains!3358 lt!311103 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!668103 () Bool)

(declare-fun Unit!23404 () Unit!23400)

(assert (=> b!668103 (= e!382278 Unit!23404)))

(declare-fun b!668104 () Bool)

(assert (=> b!668104 (= e!382284 (contains!3358 lt!311103 k0!2843))))

(declare-fun b!668105 () Bool)

(declare-fun res!435331 () Bool)

(assert (=> b!668105 (=> (not res!435331) (not e!382281))))

(assert (=> b!668105 (= res!435331 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!668106 () Bool)

(declare-fun res!435345 () Bool)

(assert (=> b!668106 (=> (not res!435345) (not e!382281))))

(assert (=> b!668106 (= res!435345 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19085 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!435347 () Bool)

(assert (=> start!60062 (=> (not res!435347) (not e!382281))))

(assert (=> start!60062 (= res!435347 (and (bvslt (size!19085 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19085 a!3626))))))

(assert (=> start!60062 e!382281))

(assert (=> start!60062 true))

(declare-fun array_inv!14495 (array!39065) Bool)

(assert (=> start!60062 (array_inv!14495 a!3626)))

(declare-fun b!668093 () Bool)

(assert (=> b!668093 (= e!382283 (not (contains!3358 lt!311103 k0!2843)))))

(declare-fun b!668107 () Bool)

(declare-fun res!435335 () Bool)

(assert (=> b!668107 (=> (not res!435335) (not e!382281))))

(assert (=> b!668107 (= res!435335 (not (contains!3358 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!668108 () Bool)

(declare-fun res!435346 () Bool)

(assert (=> b!668108 (=> (not res!435346) (not e!382281))))

(assert (=> b!668108 (= res!435346 e!382286)))

(declare-fun res!435339 () Bool)

(assert (=> b!668108 (=> res!435339 e!382286)))

(assert (=> b!668108 (= res!435339 e!382280)))

(declare-fun res!435340 () Bool)

(assert (=> b!668108 (=> (not res!435340) (not e!382280))))

(assert (=> b!668108 (= res!435340 (bvsgt from!3004 i!1382))))

(assert (= (and start!60062 res!435347) b!668090))

(assert (= (and b!668090 res!435349) b!668101))

(assert (= (and b!668101 res!435336) b!668107))

(assert (= (and b!668107 res!435335) b!668108))

(assert (= (and b!668108 res!435340) b!668094))

(assert (= (and b!668108 (not res!435339)) b!668100))

(assert (= (and b!668100 res!435344) b!668099))

(assert (= (and b!668108 res!435346) b!668084))

(assert (= (and b!668084 res!435333) b!668105))

(assert (= (and b!668105 res!435331) b!668085))

(assert (= (and b!668085 res!435341) b!668097))

(assert (= (and b!668097 res!435338) b!668098))

(assert (= (and b!668098 res!435350) b!668106))

(assert (= (and b!668106 res!435345) b!668087))

(assert (= (and b!668087 c!76745) b!668086))

(assert (= (and b!668087 (not c!76745)) b!668103))

(assert (= (and b!668087 c!76744) b!668091))

(assert (= (and b!668087 (not c!76744)) b!668096))

(assert (= (and b!668087 (not res!435334)) b!668089))

(assert (= (and b!668089 (not res!435337)) b!668095))

(assert (= (and b!668095 (not res!435342)) b!668102))

(assert (= (and b!668102 (not res!435332)) b!668092))

(assert (= (and b!668092 res!435330) b!668104))

(assert (= (and b!668092 (not res!435343)) b!668088))

(assert (= (and b!668088 res!435348) b!668093))

(declare-fun m!638509 () Bool)

(assert (=> b!668093 m!638509))

(declare-fun m!638511 () Bool)

(assert (=> b!668097 m!638511))

(declare-fun m!638513 () Bool)

(assert (=> b!668094 m!638513))

(declare-fun m!638515 () Bool)

(assert (=> b!668095 m!638515))

(declare-fun m!638517 () Bool)

(assert (=> b!668084 m!638517))

(declare-fun m!638519 () Bool)

(assert (=> b!668087 m!638519))

(declare-fun m!638521 () Bool)

(assert (=> b!668087 m!638521))

(declare-fun m!638523 () Bool)

(assert (=> b!668087 m!638523))

(declare-fun m!638525 () Bool)

(assert (=> b!668087 m!638525))

(declare-fun m!638527 () Bool)

(assert (=> b!668087 m!638527))

(declare-fun m!638529 () Bool)

(assert (=> b!668087 m!638529))

(declare-fun m!638531 () Bool)

(assert (=> b!668087 m!638531))

(declare-fun m!638533 () Bool)

(assert (=> b!668087 m!638533))

(declare-fun m!638535 () Bool)

(assert (=> b!668087 m!638535))

(assert (=> b!668087 m!638523))

(declare-fun m!638537 () Bool)

(assert (=> b!668087 m!638537))

(declare-fun m!638539 () Bool)

(assert (=> b!668087 m!638539))

(declare-fun m!638541 () Bool)

(assert (=> b!668087 m!638541))

(declare-fun m!638543 () Bool)

(assert (=> b!668087 m!638543))

(declare-fun m!638545 () Bool)

(assert (=> b!668089 m!638545))

(declare-fun m!638547 () Bool)

(assert (=> b!668090 m!638547))

(declare-fun m!638549 () Bool)

(assert (=> b!668105 m!638549))

(assert (=> b!668091 m!638521))

(assert (=> b!668091 m!638523))

(declare-fun m!638551 () Bool)

(assert (=> b!668091 m!638551))

(declare-fun m!638553 () Bool)

(assert (=> b!668091 m!638553))

(assert (=> b!668091 m!638523))

(assert (=> b!668091 m!638551))

(assert (=> b!668091 m!638531))

(assert (=> b!668091 m!638543))

(assert (=> b!668104 m!638509))

(declare-fun m!638555 () Bool)

(assert (=> b!668101 m!638555))

(declare-fun m!638557 () Bool)

(assert (=> start!60062 m!638557))

(assert (=> b!668099 m!638513))

(declare-fun m!638559 () Bool)

(assert (=> b!668086 m!638559))

(declare-fun m!638561 () Bool)

(assert (=> b!668098 m!638561))

(declare-fun m!638563 () Bool)

(assert (=> b!668102 m!638563))

(declare-fun m!638565 () Bool)

(assert (=> b!668107 m!638565))

(check-sat (not b!668087) (not b!668097) (not b!668095) (not b!668093) (not b!668084) (not start!60062) (not b!668089) (not b!668090) (not b!668091) (not b!668094) (not b!668101) (not b!668086) (not b!668102) (not b!668105) (not b!668099) (not b!668098) (not b!668107) (not b!668104))
