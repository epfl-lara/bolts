; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!61984 () Bool)

(assert start!61984)

(declare-fun b!693056 () Bool)

(declare-fun e!394338 () Bool)

(declare-fun e!394339 () Bool)

(assert (=> b!693056 (= e!394338 e!394339)))

(declare-fun res!457400 () Bool)

(assert (=> b!693056 (=> (not res!457400) (not e!394339))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!693056 (= res!457400 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693057 () Bool)

(declare-fun e!394347 () Bool)

(assert (=> b!693057 (= e!394347 false)))

(declare-fun lt!316668 () Bool)

(assert (=> b!693057 (= lt!316668 e!394338)))

(declare-fun res!457388 () Bool)

(assert (=> b!693057 (=> res!457388 e!394338)))

(declare-fun e!394346 () Bool)

(assert (=> b!693057 (= res!457388 e!394346)))

(declare-fun res!457398 () Bool)

(assert (=> b!693057 (=> (not res!457398) (not e!394346))))

(assert (=> b!693057 (= res!457398 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!693058 () Bool)

(declare-fun res!457391 () Bool)

(declare-fun e!394341 () Bool)

(assert (=> b!693058 (=> (not res!457391) (not e!394341))))

(declare-datatypes ((array!39826 0))(
  ( (array!39827 (arr!19073 (Array (_ BitVec 32) (_ BitVec 64))) (size!19456 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39826)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!693058 (= res!457391 (validKeyInArray!0 (select (arr!19073 a!3626) from!3004)))))

(declare-fun b!693059 () Bool)

(declare-datatypes ((Unit!24462 0))(
  ( (Unit!24463) )
))
(declare-fun e!394348 () Unit!24462)

(declare-fun Unit!24464 () Unit!24462)

(assert (=> b!693059 (= e!394348 Unit!24464)))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!39826 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!693059 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316671 () Unit!24462)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39826 (_ BitVec 64) (_ BitVec 32)) Unit!24462)

(assert (=> b!693059 (= lt!316671 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!693059 false))

(declare-fun b!693060 () Bool)

(declare-fun res!457384 () Bool)

(assert (=> b!693060 (=> (not res!457384) (not e!394347))))

(declare-datatypes ((List!13167 0))(
  ( (Nil!13164) (Cons!13163 (h!14208 (_ BitVec 64)) (t!19451 List!13167)) )
))
(declare-fun lt!316670 () List!13167)

(declare-fun noDuplicate!957 (List!13167) Bool)

(assert (=> b!693060 (= res!457384 (noDuplicate!957 lt!316670))))

(declare-fun b!693061 () Bool)

(declare-fun res!457394 () Bool)

(assert (=> b!693061 (=> (not res!457394) (not e!394341))))

(declare-fun e!394342 () Bool)

(assert (=> b!693061 (= res!457394 e!394342)))

(declare-fun res!457396 () Bool)

(assert (=> b!693061 (=> res!457396 e!394342)))

(declare-fun e!394343 () Bool)

(assert (=> b!693061 (= res!457396 e!394343)))

(declare-fun res!457393 () Bool)

(assert (=> b!693061 (=> (not res!457393) (not e!394343))))

(assert (=> b!693061 (= res!457393 (bvsgt from!3004 i!1382))))

(declare-fun b!693062 () Bool)

(declare-fun res!457395 () Bool)

(assert (=> b!693062 (=> (not res!457395) (not e!394341))))

(declare-fun acc!681 () List!13167)

(assert (=> b!693062 (= res!457395 (noDuplicate!957 acc!681))))

(declare-fun b!693063 () Bool)

(declare-fun res!457383 () Bool)

(assert (=> b!693063 (=> (not res!457383) (not e!394347))))

(declare-fun contains!3710 (List!13167 (_ BitVec 64)) Bool)

(assert (=> b!693063 (= res!457383 (not (contains!3710 lt!316670 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693064 () Bool)

(declare-fun res!457390 () Bool)

(assert (=> b!693064 (=> (not res!457390) (not e!394341))))

(assert (=> b!693064 (= res!457390 (not (contains!3710 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693065 () Bool)

(declare-fun res!457392 () Bool)

(assert (=> b!693065 (=> (not res!457392) (not e!394341))))

(assert (=> b!693065 (= res!457392 (validKeyInArray!0 k!2843))))

(declare-fun b!693066 () Bool)

(assert (=> b!693066 (= e!394339 (not (contains!3710 lt!316670 k!2843)))))

(declare-fun b!693067 () Bool)

(assert (=> b!693067 (= e!394346 (contains!3710 lt!316670 k!2843))))

(declare-fun b!693069 () Bool)

(declare-fun res!457397 () Bool)

(assert (=> b!693069 (=> (not res!457397) (not e!394341))))

(declare-fun arrayNoDuplicates!0 (array!39826 (_ BitVec 32) List!13167) Bool)

(assert (=> b!693069 (= res!457397 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13164))))

(declare-fun b!693070 () Bool)

(declare-fun res!457387 () Bool)

(assert (=> b!693070 (=> (not res!457387) (not e!394341))))

(assert (=> b!693070 (= res!457387 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19456 a!3626))))))

(declare-fun b!693071 () Bool)

(declare-fun e!394345 () Bool)

(assert (=> b!693071 (= e!394341 e!394345)))

(declare-fun res!457381 () Bool)

(assert (=> b!693071 (=> (not res!457381) (not e!394345))))

(assert (=> b!693071 (= res!457381 (not (= (select (arr!19073 a!3626) from!3004) k!2843)))))

(declare-fun lt!316669 () Unit!24462)

(assert (=> b!693071 (= lt!316669 e!394348)))

(declare-fun c!78206 () Bool)

(assert (=> b!693071 (= c!78206 (= (select (arr!19073 a!3626) from!3004) k!2843))))

(declare-fun b!693072 () Bool)

(declare-fun res!457399 () Bool)

(assert (=> b!693072 (=> (not res!457399) (not e!394347))))

(assert (=> b!693072 (= res!457399 (not (contains!3710 lt!316670 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693073 () Bool)

(declare-fun res!457379 () Bool)

(assert (=> b!693073 (=> (not res!457379) (not e!394341))))

(assert (=> b!693073 (= res!457379 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!693074 () Bool)

(declare-fun res!457378 () Bool)

(assert (=> b!693074 (=> (not res!457378) (not e!394341))))

(assert (=> b!693074 (= res!457378 (not (contains!3710 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!693075 () Bool)

(declare-fun Unit!24465 () Unit!24462)

(assert (=> b!693075 (= e!394348 Unit!24465)))

(declare-fun b!693076 () Bool)

(declare-fun res!457380 () Bool)

(assert (=> b!693076 (=> (not res!457380) (not e!394341))))

(assert (=> b!693076 (= res!457380 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19456 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!693077 () Bool)

(declare-fun e!394340 () Bool)

(assert (=> b!693077 (= e!394342 e!394340)))

(declare-fun res!457382 () Bool)

(assert (=> b!693077 (=> (not res!457382) (not e!394340))))

(assert (=> b!693077 (= res!457382 (bvsle from!3004 i!1382))))

(declare-fun b!693078 () Bool)

(assert (=> b!693078 (= e!394343 (contains!3710 acc!681 k!2843))))

(declare-fun res!457386 () Bool)

(assert (=> start!61984 (=> (not res!457386) (not e!394341))))

(assert (=> start!61984 (= res!457386 (and (bvslt (size!19456 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19456 a!3626))))))

(assert (=> start!61984 e!394341))

(assert (=> start!61984 true))

(declare-fun array_inv!14847 (array!39826) Bool)

(assert (=> start!61984 (array_inv!14847 a!3626)))

(declare-fun b!693068 () Bool)

(assert (=> b!693068 (= e!394345 e!394347)))

(declare-fun res!457385 () Bool)

(assert (=> b!693068 (=> (not res!457385) (not e!394347))))

(assert (=> b!693068 (= res!457385 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!420 (List!13167 (_ BitVec 64)) List!13167)

(assert (=> b!693068 (= lt!316670 ($colon$colon!420 acc!681 (select (arr!19073 a!3626) from!3004)))))

(declare-fun b!693079 () Bool)

(declare-fun res!457389 () Bool)

(assert (=> b!693079 (=> (not res!457389) (not e!394341))))

(assert (=> b!693079 (= res!457389 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!693080 () Bool)

(assert (=> b!693080 (= e!394340 (not (contains!3710 acc!681 k!2843)))))

(assert (= (and start!61984 res!457386) b!693062))

(assert (= (and b!693062 res!457395) b!693074))

(assert (= (and b!693074 res!457378) b!693064))

(assert (= (and b!693064 res!457390) b!693061))

(assert (= (and b!693061 res!457393) b!693078))

(assert (= (and b!693061 (not res!457396)) b!693077))

(assert (= (and b!693077 res!457382) b!693080))

(assert (= (and b!693061 res!457394) b!693069))

(assert (= (and b!693069 res!457397) b!693073))

(assert (= (and b!693073 res!457379) b!693070))

(assert (= (and b!693070 res!457387) b!693065))

(assert (= (and b!693065 res!457392) b!693079))

(assert (= (and b!693079 res!457389) b!693076))

(assert (= (and b!693076 res!457380) b!693058))

(assert (= (and b!693058 res!457391) b!693071))

(assert (= (and b!693071 c!78206) b!693059))

(assert (= (and b!693071 (not c!78206)) b!693075))

(assert (= (and b!693071 res!457381) b!693068))

(assert (= (and b!693068 res!457385) b!693060))

(assert (= (and b!693060 res!457384) b!693072))

(assert (= (and b!693072 res!457399) b!693063))

(assert (= (and b!693063 res!457383) b!693057))

(assert (= (and b!693057 res!457398) b!693067))

(assert (= (and b!693057 (not res!457388)) b!693056))

(assert (= (and b!693056 res!457400) b!693066))

(declare-fun m!655455 () Bool)

(assert (=> b!693060 m!655455))

(declare-fun m!655457 () Bool)

(assert (=> b!693078 m!655457))

(declare-fun m!655459 () Bool)

(assert (=> b!693058 m!655459))

(assert (=> b!693058 m!655459))

(declare-fun m!655461 () Bool)

(assert (=> b!693058 m!655461))

(declare-fun m!655463 () Bool)

(assert (=> b!693069 m!655463))

(assert (=> b!693068 m!655459))

(assert (=> b!693068 m!655459))

(declare-fun m!655465 () Bool)

(assert (=> b!693068 m!655465))

(declare-fun m!655467 () Bool)

(assert (=> b!693059 m!655467))

(declare-fun m!655469 () Bool)

(assert (=> b!693059 m!655469))

(declare-fun m!655471 () Bool)

(assert (=> start!61984 m!655471))

(assert (=> b!693071 m!655459))

(assert (=> b!693080 m!655457))

(declare-fun m!655473 () Bool)

(assert (=> b!693073 m!655473))

(declare-fun m!655475 () Bool)

(assert (=> b!693064 m!655475))

(declare-fun m!655477 () Bool)

(assert (=> b!693062 m!655477))

(declare-fun m!655479 () Bool)

(assert (=> b!693074 m!655479))

(declare-fun m!655481 () Bool)

(assert (=> b!693063 m!655481))

(declare-fun m!655483 () Bool)

(assert (=> b!693065 m!655483))

(declare-fun m!655485 () Bool)

(assert (=> b!693067 m!655485))

(assert (=> b!693066 m!655485))

(declare-fun m!655487 () Bool)

(assert (=> b!693079 m!655487))

(declare-fun m!655489 () Bool)

(assert (=> b!693072 m!655489))

(push 1)

