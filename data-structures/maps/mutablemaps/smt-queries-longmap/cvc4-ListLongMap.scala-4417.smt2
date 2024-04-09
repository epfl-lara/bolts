; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61012 () Bool)

(assert start!61012)

(declare-fun b!684081 () Bool)

(declare-datatypes ((Unit!24062 0))(
  ( (Unit!24063) )
))
(declare-fun e!389604 () Unit!24062)

(declare-fun lt!314202 () Unit!24062)

(assert (=> b!684081 (= e!389604 lt!314202)))

(declare-fun lt!314196 () Unit!24062)

(declare-datatypes ((List!13059 0))(
  ( (Nil!13056) (Cons!13055 (h!14100 (_ BitVec 64)) (t!19313 List!13059)) )
))
(declare-fun acc!681 () List!13059)

(declare-fun lemmaListSubSeqRefl!0 (List!13059) Unit!24062)

(assert (=> b!684081 (= lt!314196 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!187 (List!13059 List!13059) Bool)

(assert (=> b!684081 (subseq!187 acc!681 acc!681)))

(declare-datatypes ((array!39577 0))(
  ( (array!39578 (arr!18965 (Array (_ BitVec 32) (_ BitVec 64))) (size!19331 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39577)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39577 List!13059 List!13059 (_ BitVec 32)) Unit!24062)

(declare-fun $colon$colon!351 (List!13059 (_ BitVec 64)) List!13059)

(assert (=> b!684081 (= lt!314202 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!351 acc!681 (select (arr!18965 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39577 (_ BitVec 32) List!13059) Bool)

(assert (=> b!684081 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!684082 () Bool)

(declare-fun res!449859 () Bool)

(declare-fun e!389605 () Bool)

(assert (=> b!684082 (=> (not res!449859) (not e!389605))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!684082 (= res!449859 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!684083 () Bool)

(declare-fun res!449845 () Bool)

(assert (=> b!684083 (=> (not res!449845) (not e!389605))))

(declare-fun e!389600 () Bool)

(assert (=> b!684083 (= res!449845 e!389600)))

(declare-fun res!449855 () Bool)

(assert (=> b!684083 (=> res!449855 e!389600)))

(declare-fun e!389601 () Bool)

(assert (=> b!684083 (= res!449855 e!389601)))

(declare-fun res!449852 () Bool)

(assert (=> b!684083 (=> (not res!449852) (not e!389601))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!684083 (= res!449852 (bvsgt from!3004 i!1382))))

(declare-fun b!684084 () Bool)

(declare-fun e!389602 () Bool)

(assert (=> b!684084 (= e!389600 e!389602)))

(declare-fun res!449847 () Bool)

(assert (=> b!684084 (=> (not res!449847) (not e!389602))))

(assert (=> b!684084 (= res!449847 (bvsle from!3004 i!1382))))

(declare-fun b!684085 () Bool)

(declare-fun e!389598 () Unit!24062)

(declare-fun Unit!24064 () Unit!24062)

(assert (=> b!684085 (= e!389598 Unit!24064)))

(declare-fun lt!314205 () Unit!24062)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39577 (_ BitVec 64) (_ BitVec 32)) Unit!24062)

(assert (=> b!684085 (= lt!314205 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!684085 false))

(declare-fun b!684086 () Bool)

(declare-fun res!449850 () Bool)

(assert (=> b!684086 (=> (not res!449850) (not e!389605))))

(declare-fun noDuplicate!849 (List!13059) Bool)

(assert (=> b!684086 (= res!449850 (noDuplicate!849 acc!681))))

(declare-fun b!684087 () Bool)

(declare-fun res!449860 () Bool)

(assert (=> b!684087 (=> (not res!449860) (not e!389605))))

(assert (=> b!684087 (= res!449860 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!684088 () Bool)

(declare-fun res!449854 () Bool)

(assert (=> b!684088 (=> (not res!449854) (not e!389605))))

(declare-fun contains!3602 (List!13059 (_ BitVec 64)) Bool)

(assert (=> b!684088 (= res!449854 (not (contains!3602 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!684089 () Bool)

(declare-fun res!449849 () Bool)

(assert (=> b!684089 (=> (not res!449849) (not e!389605))))

(assert (=> b!684089 (= res!449849 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19331 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!684090 () Bool)

(declare-fun Unit!24065 () Unit!24062)

(assert (=> b!684090 (= e!389604 Unit!24065)))

(declare-fun b!684091 () Bool)

(assert (=> b!684091 (= e!389602 (not (contains!3602 acc!681 k!2843)))))

(declare-fun b!684092 () Bool)

(declare-fun res!449856 () Bool)

(declare-fun e!389603 () Bool)

(assert (=> b!684092 (=> res!449856 e!389603)))

(declare-fun lt!314204 () List!13059)

(assert (=> b!684092 (= res!449856 (not (noDuplicate!849 lt!314204)))))

(declare-fun b!684093 () Bool)

(declare-fun Unit!24066 () Unit!24062)

(assert (=> b!684093 (= e!389598 Unit!24066)))

(declare-fun b!684094 () Bool)

(assert (=> b!684094 (= e!389605 (not e!389603))))

(declare-fun res!449846 () Bool)

(assert (=> b!684094 (=> res!449846 e!389603)))

(assert (=> b!684094 (= res!449846 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun -!152 (List!13059 (_ BitVec 64)) List!13059)

(assert (=> b!684094 (= (-!152 lt!314204 k!2843) acc!681)))

(assert (=> b!684094 (= lt!314204 ($colon$colon!351 acc!681 k!2843))))

(declare-fun lt!314197 () Unit!24062)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13059) Unit!24062)

(assert (=> b!684094 (= lt!314197 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!684094 (subseq!187 acc!681 acc!681)))

(declare-fun lt!314199 () Unit!24062)

(assert (=> b!684094 (= lt!314199 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!684094 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314200 () Unit!24062)

(assert (=> b!684094 (= lt!314200 e!389604)))

(declare-fun c!77486 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!684094 (= c!77486 (validKeyInArray!0 (select (arr!18965 a!3626) from!3004)))))

(declare-fun lt!314201 () Unit!24062)

(assert (=> b!684094 (= lt!314201 e!389598)))

(declare-fun c!77485 () Bool)

(declare-fun lt!314198 () Bool)

(assert (=> b!684094 (= c!77485 lt!314198)))

(assert (=> b!684094 (= lt!314198 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!684094 (arrayContainsKey!0 (array!39578 (store (arr!18965 a!3626) i!1382 k!2843) (size!19331 a!3626)) k!2843 from!3004)))

(declare-fun res!449858 () Bool)

(assert (=> start!61012 (=> (not res!449858) (not e!389605))))

(assert (=> start!61012 (= res!449858 (and (bvslt (size!19331 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19331 a!3626))))))

(assert (=> start!61012 e!389605))

(assert (=> start!61012 true))

(declare-fun array_inv!14739 (array!39577) Bool)

(assert (=> start!61012 (array_inv!14739 a!3626)))

(declare-fun b!684095 () Bool)

(declare-fun res!449851 () Bool)

(assert (=> b!684095 (=> (not res!449851) (not e!389605))))

(assert (=> b!684095 (= res!449851 (validKeyInArray!0 k!2843))))

(declare-fun b!684096 () Bool)

(declare-fun res!449853 () Bool)

(assert (=> b!684096 (=> (not res!449853) (not e!389605))))

(assert (=> b!684096 (= res!449853 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19331 a!3626))))))

(declare-fun b!684097 () Bool)

(declare-fun res!449848 () Bool)

(assert (=> b!684097 (=> (not res!449848) (not e!389605))))

(assert (=> b!684097 (= res!449848 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13056))))

(declare-fun b!684098 () Bool)

(assert (=> b!684098 (= e!389601 (contains!3602 acc!681 k!2843))))

(declare-fun b!684099 () Bool)

(declare-fun res!449861 () Bool)

(assert (=> b!684099 (=> res!449861 e!389603)))

(assert (=> b!684099 (= res!449861 lt!314198)))

(declare-fun b!684100 () Bool)

(assert (=> b!684100 (= e!389603 true)))

(declare-fun lt!314203 () Bool)

(assert (=> b!684100 (= lt!314203 (contains!3602 acc!681 k!2843))))

(declare-fun b!684101 () Bool)

(declare-fun res!449857 () Bool)

(assert (=> b!684101 (=> (not res!449857) (not e!389605))))

(assert (=> b!684101 (= res!449857 (not (contains!3602 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61012 res!449858) b!684086))

(assert (= (and b!684086 res!449850) b!684101))

(assert (= (and b!684101 res!449857) b!684088))

(assert (= (and b!684088 res!449854) b!684083))

(assert (= (and b!684083 res!449852) b!684098))

(assert (= (and b!684083 (not res!449855)) b!684084))

(assert (= (and b!684084 res!449847) b!684091))

(assert (= (and b!684083 res!449845) b!684097))

(assert (= (and b!684097 res!449848) b!684087))

(assert (= (and b!684087 res!449860) b!684096))

(assert (= (and b!684096 res!449853) b!684095))

(assert (= (and b!684095 res!449851) b!684082))

(assert (= (and b!684082 res!449859) b!684089))

(assert (= (and b!684089 res!449849) b!684094))

(assert (= (and b!684094 c!77485) b!684085))

(assert (= (and b!684094 (not c!77485)) b!684093))

(assert (= (and b!684094 c!77486) b!684081))

(assert (= (and b!684094 (not c!77486)) b!684090))

(assert (= (and b!684094 (not res!449846)) b!684092))

(assert (= (and b!684092 (not res!449856)) b!684099))

(assert (= (and b!684099 (not res!449861)) b!684100))

(declare-fun m!648543 () Bool)

(assert (=> b!684100 m!648543))

(declare-fun m!648545 () Bool)

(assert (=> b!684086 m!648545))

(declare-fun m!648547 () Bool)

(assert (=> b!684081 m!648547))

(declare-fun m!648549 () Bool)

(assert (=> b!684081 m!648549))

(declare-fun m!648551 () Bool)

(assert (=> b!684081 m!648551))

(declare-fun m!648553 () Bool)

(assert (=> b!684081 m!648553))

(assert (=> b!684081 m!648549))

(assert (=> b!684081 m!648551))

(declare-fun m!648555 () Bool)

(assert (=> b!684081 m!648555))

(declare-fun m!648557 () Bool)

(assert (=> b!684081 m!648557))

(declare-fun m!648559 () Bool)

(assert (=> b!684092 m!648559))

(declare-fun m!648561 () Bool)

(assert (=> start!61012 m!648561))

(declare-fun m!648563 () Bool)

(assert (=> b!684095 m!648563))

(declare-fun m!648565 () Bool)

(assert (=> b!684082 m!648565))

(declare-fun m!648567 () Bool)

(assert (=> b!684085 m!648567))

(declare-fun m!648569 () Bool)

(assert (=> b!684101 m!648569))

(declare-fun m!648571 () Bool)

(assert (=> b!684087 m!648571))

(assert (=> b!684091 m!648543))

(assert (=> b!684094 m!648547))

(assert (=> b!684094 m!648549))

(declare-fun m!648573 () Bool)

(assert (=> b!684094 m!648573))

(declare-fun m!648575 () Bool)

(assert (=> b!684094 m!648575))

(declare-fun m!648577 () Bool)

(assert (=> b!684094 m!648577))

(assert (=> b!684094 m!648555))

(declare-fun m!648579 () Bool)

(assert (=> b!684094 m!648579))

(declare-fun m!648581 () Bool)

(assert (=> b!684094 m!648581))

(assert (=> b!684094 m!648549))

(declare-fun m!648583 () Bool)

(assert (=> b!684094 m!648583))

(declare-fun m!648585 () Bool)

(assert (=> b!684094 m!648585))

(assert (=> b!684094 m!648557))

(declare-fun m!648587 () Bool)

(assert (=> b!684097 m!648587))

(declare-fun m!648589 () Bool)

(assert (=> b!684088 m!648589))

(assert (=> b!684098 m!648543))

(push 1)

(assert (not b!684098))

(assert (not b!684101))

(assert (not b!684086))

(assert (not b!684082))

(assert (not b!684081))

(assert (not b!684100))

(assert (not b!684088))

(assert (not b!684092))

(assert (not b!684087))

(assert (not b!684091))

(assert (not start!61012))

(assert (not b!684095))

(assert (not b!684094))

