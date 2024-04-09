; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60880 () Bool)

(assert start!60880)

(declare-fun b!682296 () Bool)

(declare-fun res!448460 () Bool)

(declare-fun e!388778 () Bool)

(assert (=> b!682296 (=> (not res!448460) (not e!388778))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39520 0))(
  ( (array!39521 (arr!18938 (Array (_ BitVec 32) (_ BitVec 64))) (size!19302 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39520)

(assert (=> b!682296 (= res!448460 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19302 a!3626))))))

(declare-fun b!682297 () Bool)

(declare-fun e!388777 () Bool)

(declare-datatypes ((List!13032 0))(
  ( (Nil!13029) (Cons!13028 (h!14073 (_ BitVec 64)) (t!19283 List!13032)) )
))
(declare-fun acc!681 () List!13032)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3575 (List!13032 (_ BitVec 64)) Bool)

(assert (=> b!682297 (= e!388777 (not (contains!3575 acc!681 k!2843)))))

(declare-fun b!682298 () Bool)

(declare-fun res!448453 () Bool)

(assert (=> b!682298 (=> (not res!448453) (not e!388778))))

(assert (=> b!682298 (= res!448453 (not (contains!3575 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682299 () Bool)

(assert (=> b!682299 (= e!388778 (not (not (contains!3575 acc!681 k!2843))))))

(declare-fun subseq!160 (List!13032 List!13032) Bool)

(assert (=> b!682299 (subseq!160 acc!681 acc!681)))

(declare-datatypes ((Unit!23927 0))(
  ( (Unit!23928) )
))
(declare-fun lt!313483 () Unit!23927)

(declare-fun lemmaListSubSeqRefl!0 (List!13032) Unit!23927)

(assert (=> b!682299 (= lt!313483 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39520 (_ BitVec 32) List!13032) Bool)

(assert (=> b!682299 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313488 () Unit!23927)

(declare-fun e!388783 () Unit!23927)

(assert (=> b!682299 (= lt!313488 e!388783)))

(declare-fun c!77290 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682299 (= c!77290 (validKeyInArray!0 (select (arr!18938 a!3626) from!3004)))))

(declare-fun lt!313484 () Unit!23927)

(declare-fun e!388781 () Unit!23927)

(assert (=> b!682299 (= lt!313484 e!388781)))

(declare-fun c!77291 () Bool)

(declare-fun arrayContainsKey!0 (array!39520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682299 (= c!77291 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682299 (arrayContainsKey!0 (array!39521 (store (arr!18938 a!3626) i!1382 k!2843) (size!19302 a!3626)) k!2843 from!3004)))

(declare-fun b!682300 () Bool)

(declare-fun res!448461 () Bool)

(assert (=> b!682300 (=> (not res!448461) (not e!388778))))

(assert (=> b!682300 (= res!448461 (not (contains!3575 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682301 () Bool)

(declare-fun e!388780 () Bool)

(assert (=> b!682301 (= e!388780 e!388777)))

(declare-fun res!448457 () Bool)

(assert (=> b!682301 (=> (not res!448457) (not e!388777))))

(assert (=> b!682301 (= res!448457 (bvsle from!3004 i!1382))))

(declare-fun b!682302 () Bool)

(declare-fun Unit!23929 () Unit!23927)

(assert (=> b!682302 (= e!388781 Unit!23929)))

(declare-fun lt!313487 () Unit!23927)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39520 (_ BitVec 64) (_ BitVec 32)) Unit!23927)

(assert (=> b!682302 (= lt!313487 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682302 false))

(declare-fun b!682303 () Bool)

(declare-fun Unit!23930 () Unit!23927)

(assert (=> b!682303 (= e!388783 Unit!23930)))

(declare-fun b!682304 () Bool)

(declare-fun res!448454 () Bool)

(assert (=> b!682304 (=> (not res!448454) (not e!388778))))

(declare-fun noDuplicate!822 (List!13032) Bool)

(assert (=> b!682304 (= res!448454 (noDuplicate!822 acc!681))))

(declare-fun b!682305 () Bool)

(declare-fun res!448452 () Bool)

(assert (=> b!682305 (=> (not res!448452) (not e!388778))))

(assert (=> b!682305 (= res!448452 e!388780)))

(declare-fun res!448458 () Bool)

(assert (=> b!682305 (=> res!448458 e!388780)))

(declare-fun e!388779 () Bool)

(assert (=> b!682305 (= res!448458 e!388779)))

(declare-fun res!448450 () Bool)

(assert (=> b!682305 (=> (not res!448450) (not e!388779))))

(assert (=> b!682305 (= res!448450 (bvsgt from!3004 i!1382))))

(declare-fun res!448451 () Bool)

(assert (=> start!60880 (=> (not res!448451) (not e!388778))))

(assert (=> start!60880 (= res!448451 (and (bvslt (size!19302 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19302 a!3626))))))

(assert (=> start!60880 e!388778))

(assert (=> start!60880 true))

(declare-fun array_inv!14712 (array!39520) Bool)

(assert (=> start!60880 (array_inv!14712 a!3626)))

(declare-fun b!682306 () Bool)

(declare-fun res!448459 () Bool)

(assert (=> b!682306 (=> (not res!448459) (not e!388778))))

(assert (=> b!682306 (= res!448459 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682307 () Bool)

(declare-fun res!448455 () Bool)

(assert (=> b!682307 (=> (not res!448455) (not e!388778))))

(assert (=> b!682307 (= res!448455 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682308 () Bool)

(assert (=> b!682308 (= e!388779 (contains!3575 acc!681 k!2843))))

(declare-fun b!682309 () Bool)

(declare-fun Unit!23931 () Unit!23927)

(assert (=> b!682309 (= e!388781 Unit!23931)))

(declare-fun b!682310 () Bool)

(declare-fun res!448456 () Bool)

(assert (=> b!682310 (=> (not res!448456) (not e!388778))))

(assert (=> b!682310 (= res!448456 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19302 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!682311 () Bool)

(declare-fun res!448463 () Bool)

(assert (=> b!682311 (=> (not res!448463) (not e!388778))))

(assert (=> b!682311 (= res!448463 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13029))))

(declare-fun b!682312 () Bool)

(declare-fun res!448462 () Bool)

(assert (=> b!682312 (=> (not res!448462) (not e!388778))))

(assert (=> b!682312 (= res!448462 (validKeyInArray!0 k!2843))))

(declare-fun b!682313 () Bool)

(declare-fun lt!313485 () Unit!23927)

(assert (=> b!682313 (= e!388783 lt!313485)))

(declare-fun lt!313486 () Unit!23927)

(assert (=> b!682313 (= lt!313486 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682313 (subseq!160 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39520 List!13032 List!13032 (_ BitVec 32)) Unit!23927)

(declare-fun $colon$colon!324 (List!13032 (_ BitVec 64)) List!13032)

(assert (=> b!682313 (= lt!313485 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!324 acc!681 (select (arr!18938 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682313 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(assert (= (and start!60880 res!448451) b!682304))

(assert (= (and b!682304 res!448454) b!682298))

(assert (= (and b!682298 res!448453) b!682300))

(assert (= (and b!682300 res!448461) b!682305))

(assert (= (and b!682305 res!448450) b!682308))

(assert (= (and b!682305 (not res!448458)) b!682301))

(assert (= (and b!682301 res!448457) b!682297))

(assert (= (and b!682305 res!448452) b!682311))

(assert (= (and b!682311 res!448463) b!682307))

(assert (= (and b!682307 res!448455) b!682296))

(assert (= (and b!682296 res!448460) b!682312))

(assert (= (and b!682312 res!448462) b!682306))

(assert (= (and b!682306 res!448459) b!682310))

(assert (= (and b!682310 res!448456) b!682299))

(assert (= (and b!682299 c!77291) b!682302))

(assert (= (and b!682299 (not c!77291)) b!682309))

(assert (= (and b!682299 c!77290) b!682313))

(assert (= (and b!682299 (not c!77290)) b!682303))

(declare-fun m!647051 () Bool)

(assert (=> b!682307 m!647051))

(declare-fun m!647053 () Bool)

(assert (=> b!682302 m!647053))

(declare-fun m!647055 () Bool)

(assert (=> b!682308 m!647055))

(declare-fun m!647057 () Bool)

(assert (=> b!682312 m!647057))

(declare-fun m!647059 () Bool)

(assert (=> b!682304 m!647059))

(declare-fun m!647061 () Bool)

(assert (=> b!682313 m!647061))

(declare-fun m!647063 () Bool)

(assert (=> b!682313 m!647063))

(declare-fun m!647065 () Bool)

(assert (=> b!682313 m!647065))

(declare-fun m!647067 () Bool)

(assert (=> b!682313 m!647067))

(assert (=> b!682313 m!647063))

(assert (=> b!682313 m!647065))

(declare-fun m!647069 () Bool)

(assert (=> b!682313 m!647069))

(declare-fun m!647071 () Bool)

(assert (=> b!682313 m!647071))

(declare-fun m!647073 () Bool)

(assert (=> b!682311 m!647073))

(declare-fun m!647075 () Bool)

(assert (=> b!682306 m!647075))

(declare-fun m!647077 () Bool)

(assert (=> start!60880 m!647077))

(assert (=> b!682299 m!647061))

(assert (=> b!682299 m!647063))

(assert (=> b!682299 m!647055))

(declare-fun m!647079 () Bool)

(assert (=> b!682299 m!647079))

(assert (=> b!682299 m!647069))

(declare-fun m!647081 () Bool)

(assert (=> b!682299 m!647081))

(assert (=> b!682299 m!647063))

(declare-fun m!647083 () Bool)

(assert (=> b!682299 m!647083))

(declare-fun m!647085 () Bool)

(assert (=> b!682299 m!647085))

(assert (=> b!682299 m!647071))

(assert (=> b!682297 m!647055))

(declare-fun m!647087 () Bool)

(assert (=> b!682300 m!647087))

(declare-fun m!647089 () Bool)

(assert (=> b!682298 m!647089))

(push 1)

(assert (not b!682299))

(assert (not b!682308))

(assert (not b!682313))

(assert (not b!682311))

(assert (not b!682304))

(assert (not b!682300))

(assert (not b!682312))

(assert (not b!682302))

(assert (not b!682306))

(assert (not b!682297))

(assert (not start!60880))

(assert (not b!682307))

(assert (not b!682298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

