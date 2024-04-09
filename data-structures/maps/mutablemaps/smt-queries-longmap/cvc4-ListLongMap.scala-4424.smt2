; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61288 () Bool)

(assert start!61288)

(declare-fun b!686214 () Bool)

(declare-fun res!451540 () Bool)

(declare-fun e!390786 () Bool)

(assert (=> b!686214 (=> (not res!451540) (not e!390786))))

(declare-datatypes ((array!39628 0))(
  ( (array!39629 (arr!18986 (Array (_ BitVec 32) (_ BitVec 64))) (size!19359 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39628)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39628 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!686214 (= res!451540 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!686215 () Bool)

(declare-fun res!451531 () Bool)

(assert (=> b!686215 (=> (not res!451531) (not e!390786))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!686215 (= res!451531 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19359 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!686216 () Bool)

(declare-fun res!451541 () Bool)

(assert (=> b!686216 (=> (not res!451541) (not e!390786))))

(declare-datatypes ((List!13080 0))(
  ( (Nil!13077) (Cons!13076 (h!14121 (_ BitVec 64)) (t!19343 List!13080)) )
))
(declare-fun acc!681 () List!13080)

(declare-fun noDuplicate!870 (List!13080) Bool)

(assert (=> b!686216 (= res!451541 (noDuplicate!870 acc!681))))

(declare-fun b!686217 () Bool)

(declare-datatypes ((Unit!24167 0))(
  ( (Unit!24168) )
))
(declare-fun e!390785 () Unit!24167)

(declare-fun Unit!24169 () Unit!24167)

(assert (=> b!686217 (= e!390785 Unit!24169)))

(declare-fun lt!314982 () Unit!24167)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39628 (_ BitVec 64) (_ BitVec 32)) Unit!24167)

(assert (=> b!686217 (= lt!314982 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!686217 false))

(declare-fun b!686218 () Bool)

(declare-fun e!390790 () Unit!24167)

(declare-fun lt!314981 () Unit!24167)

(assert (=> b!686218 (= e!390790 lt!314981)))

(declare-fun lt!314978 () Unit!24167)

(declare-fun lemmaListSubSeqRefl!0 (List!13080) Unit!24167)

(assert (=> b!686218 (= lt!314978 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!208 (List!13080 List!13080) Bool)

(assert (=> b!686218 (subseq!208 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39628 List!13080 List!13080 (_ BitVec 32)) Unit!24167)

(declare-fun $colon$colon!372 (List!13080 (_ BitVec 64)) List!13080)

(assert (=> b!686218 (= lt!314981 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!372 acc!681 (select (arr!18986 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39628 (_ BitVec 32) List!13080) Bool)

(assert (=> b!686218 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!686219 () Bool)

(declare-fun Unit!24170 () Unit!24167)

(assert (=> b!686219 (= e!390790 Unit!24170)))

(declare-fun b!686220 () Bool)

(declare-fun e!390787 () Bool)

(declare-fun contains!3623 (List!13080 (_ BitVec 64)) Bool)

(assert (=> b!686220 (= e!390787 (contains!3623 acc!681 k!2843))))

(declare-fun b!686221 () Bool)

(declare-fun e!390788 () Bool)

(declare-fun e!390789 () Bool)

(assert (=> b!686221 (= e!390788 e!390789)))

(declare-fun res!451536 () Bool)

(assert (=> b!686221 (=> (not res!451536) (not e!390789))))

(assert (=> b!686221 (= res!451536 (bvsle from!3004 i!1382))))

(declare-fun b!686222 () Bool)

(declare-fun res!451534 () Bool)

(assert (=> b!686222 (=> (not res!451534) (not e!390786))))

(assert (=> b!686222 (= res!451534 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!686224 () Bool)

(assert (=> b!686224 (= e!390789 (not (contains!3623 acc!681 k!2843)))))

(declare-fun res!451529 () Bool)

(assert (=> start!61288 (=> (not res!451529) (not e!390786))))

(assert (=> start!61288 (= res!451529 (and (bvslt (size!19359 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19359 a!3626))))))

(assert (=> start!61288 e!390786))

(assert (=> start!61288 true))

(declare-fun array_inv!14760 (array!39628) Bool)

(assert (=> start!61288 (array_inv!14760 a!3626)))

(declare-fun b!686223 () Bool)

(declare-fun res!451533 () Bool)

(assert (=> b!686223 (=> (not res!451533) (not e!390786))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!686223 (= res!451533 (validKeyInArray!0 k!2843))))

(declare-fun b!686225 () Bool)

(declare-fun res!451528 () Bool)

(assert (=> b!686225 (=> (not res!451528) (not e!390786))))

(assert (=> b!686225 (= res!451528 e!390788)))

(declare-fun res!451537 () Bool)

(assert (=> b!686225 (=> res!451537 e!390788)))

(assert (=> b!686225 (= res!451537 e!390787)))

(declare-fun res!451539 () Bool)

(assert (=> b!686225 (=> (not res!451539) (not e!390787))))

(assert (=> b!686225 (= res!451539 (bvsgt from!3004 i!1382))))

(declare-fun b!686226 () Bool)

(declare-fun res!451535 () Bool)

(assert (=> b!686226 (=> (not res!451535) (not e!390786))))

(assert (=> b!686226 (= res!451535 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13077))))

(declare-fun b!686227 () Bool)

(declare-fun res!451530 () Bool)

(assert (=> b!686227 (=> (not res!451530) (not e!390786))))

(assert (=> b!686227 (= res!451530 (not (contains!3623 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!686228 () Bool)

(declare-fun Unit!24171 () Unit!24167)

(assert (=> b!686228 (= e!390785 Unit!24171)))

(declare-fun b!686229 () Bool)

(declare-fun res!451538 () Bool)

(assert (=> b!686229 (=> (not res!451538) (not e!390786))))

(assert (=> b!686229 (= res!451538 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19359 a!3626))))))

(declare-fun b!686230 () Bool)

(assert (=> b!686230 (= e!390786 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(declare-fun lt!314976 () List!13080)

(assert (=> b!686230 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!314976)))

(declare-fun lt!314975 () Unit!24167)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39628 (_ BitVec 64) (_ BitVec 32) List!13080 List!13080) Unit!24167)

(assert (=> b!686230 (= lt!314975 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!314976))))

(declare-fun -!173 (List!13080 (_ BitVec 64)) List!13080)

(assert (=> b!686230 (= (-!173 lt!314976 k!2843) acc!681)))

(assert (=> b!686230 (= lt!314976 ($colon$colon!372 acc!681 k!2843))))

(declare-fun lt!314977 () Unit!24167)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13080) Unit!24167)

(assert (=> b!686230 (= lt!314977 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!686230 (subseq!208 acc!681 acc!681)))

(declare-fun lt!314979 () Unit!24167)

(assert (=> b!686230 (= lt!314979 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!686230 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!314974 () Unit!24167)

(assert (=> b!686230 (= lt!314974 e!390790)))

(declare-fun c!77711 () Bool)

(assert (=> b!686230 (= c!77711 (validKeyInArray!0 (select (arr!18986 a!3626) from!3004)))))

(declare-fun lt!314980 () Unit!24167)

(assert (=> b!686230 (= lt!314980 e!390785)))

(declare-fun c!77710 () Bool)

(assert (=> b!686230 (= c!77710 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!686230 (arrayContainsKey!0 (array!39629 (store (arr!18986 a!3626) i!1382 k!2843) (size!19359 a!3626)) k!2843 from!3004)))

(declare-fun b!686231 () Bool)

(declare-fun res!451532 () Bool)

(assert (=> b!686231 (=> (not res!451532) (not e!390786))))

(assert (=> b!686231 (= res!451532 (not (contains!3623 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!61288 res!451529) b!686216))

(assert (= (and b!686216 res!451541) b!686227))

(assert (= (and b!686227 res!451530) b!686231))

(assert (= (and b!686231 res!451532) b!686225))

(assert (= (and b!686225 res!451539) b!686220))

(assert (= (and b!686225 (not res!451537)) b!686221))

(assert (= (and b!686221 res!451536) b!686224))

(assert (= (and b!686225 res!451528) b!686226))

(assert (= (and b!686226 res!451535) b!686222))

(assert (= (and b!686222 res!451534) b!686229))

(assert (= (and b!686229 res!451538) b!686223))

(assert (= (and b!686223 res!451533) b!686214))

(assert (= (and b!686214 res!451540) b!686215))

(assert (= (and b!686215 res!451531) b!686230))

(assert (= (and b!686230 c!77710) b!686217))

(assert (= (and b!686230 (not c!77710)) b!686228))

(assert (= (and b!686230 c!77711) b!686218))

(assert (= (and b!686230 (not c!77711)) b!686219))

(declare-fun m!650383 () Bool)

(assert (=> b!686224 m!650383))

(declare-fun m!650385 () Bool)

(assert (=> start!61288 m!650385))

(declare-fun m!650387 () Bool)

(assert (=> b!686230 m!650387))

(declare-fun m!650389 () Bool)

(assert (=> b!686230 m!650389))

(declare-fun m!650391 () Bool)

(assert (=> b!686230 m!650391))

(declare-fun m!650393 () Bool)

(assert (=> b!686230 m!650393))

(declare-fun m!650395 () Bool)

(assert (=> b!686230 m!650395))

(declare-fun m!650397 () Bool)

(assert (=> b!686230 m!650397))

(assert (=> b!686230 m!650389))

(declare-fun m!650399 () Bool)

(assert (=> b!686230 m!650399))

(declare-fun m!650401 () Bool)

(assert (=> b!686230 m!650401))

(declare-fun m!650403 () Bool)

(assert (=> b!686230 m!650403))

(declare-fun m!650405 () Bool)

(assert (=> b!686230 m!650405))

(declare-fun m!650407 () Bool)

(assert (=> b!686230 m!650407))

(declare-fun m!650409 () Bool)

(assert (=> b!686230 m!650409))

(declare-fun m!650411 () Bool)

(assert (=> b!686230 m!650411))

(declare-fun m!650413 () Bool)

(assert (=> b!686214 m!650413))

(assert (=> b!686218 m!650387))

(assert (=> b!686218 m!650389))

(declare-fun m!650415 () Bool)

(assert (=> b!686218 m!650415))

(declare-fun m!650417 () Bool)

(assert (=> b!686218 m!650417))

(assert (=> b!686218 m!650389))

(assert (=> b!686218 m!650415))

(assert (=> b!686218 m!650397))

(assert (=> b!686218 m!650411))

(assert (=> b!686220 m!650383))

(declare-fun m!650419 () Bool)

(assert (=> b!686231 m!650419))

(declare-fun m!650421 () Bool)

(assert (=> b!686222 m!650421))

(declare-fun m!650423 () Bool)

(assert (=> b!686226 m!650423))

(declare-fun m!650425 () Bool)

(assert (=> b!686227 m!650425))

(declare-fun m!650427 () Bool)

(assert (=> b!686217 m!650427))

(declare-fun m!650429 () Bool)

(assert (=> b!686223 m!650429))

(declare-fun m!650431 () Bool)

(assert (=> b!686216 m!650431))

(push 1)

