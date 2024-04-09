; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62052 () Bool)

(assert start!62052)

(declare-fun b!694006 () Bool)

(declare-fun e!394828 () Bool)

(declare-datatypes ((List!13177 0))(
  ( (Nil!13174) (Cons!13173 (h!14218 (_ BitVec 64)) (t!19464 List!13177)) )
))
(declare-fun acc!681 () List!13177)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3720 (List!13177 (_ BitVec 64)) Bool)

(assert (=> b!694006 (= e!394828 (not (contains!3720 acc!681 k!2843)))))

(declare-fun b!694007 () Bool)

(declare-fun res!458253 () Bool)

(declare-fun e!394826 () Bool)

(assert (=> b!694007 (=> (not res!458253) (not e!394826))))

(declare-datatypes ((array!39849 0))(
  ( (array!39850 (arr!19083 (Array (_ BitVec 32) (_ BitVec 64))) (size!19466 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39849)

(declare-fun arrayContainsKey!0 (array!39849 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!694007 (= res!458253 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!694008 () Bool)

(declare-fun res!458251 () Bool)

(declare-fun e!394827 () Bool)

(assert (=> b!694008 (=> (not res!458251) (not e!394827))))

(declare-fun lt!316814 () List!13177)

(assert (=> b!694008 (= res!458251 (not (contains!3720 lt!316814 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694009 () Bool)

(assert (=> b!694009 (= e!394827 false)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!316812 () Bool)

(declare-fun arrayNoDuplicates!0 (array!39849 (_ BitVec 32) List!13177) Bool)

(assert (=> b!694009 (= lt!316812 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!316814))))

(declare-fun b!694010 () Bool)

(declare-fun res!458242 () Bool)

(assert (=> b!694010 (=> (not res!458242) (not e!394826))))

(declare-fun e!394833 () Bool)

(assert (=> b!694010 (= res!458242 e!394833)))

(declare-fun res!458239 () Bool)

(assert (=> b!694010 (=> res!458239 e!394833)))

(declare-fun e!394829 () Bool)

(assert (=> b!694010 (= res!458239 e!394829)))

(declare-fun res!458254 () Bool)

(assert (=> b!694010 (=> (not res!458254) (not e!394829))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!694010 (= res!458254 (bvsgt from!3004 i!1382))))

(declare-fun b!694011 () Bool)

(declare-fun res!458243 () Bool)

(assert (=> b!694011 (=> (not res!458243) (not e!394826))))

(assert (=> b!694011 (= res!458243 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19466 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!694012 () Bool)

(declare-fun res!458250 () Bool)

(assert (=> b!694012 (=> (not res!458250) (not e!394827))))

(assert (=> b!694012 (= res!458250 (not (contains!3720 lt!316814 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694013 () Bool)

(declare-fun res!458241 () Bool)

(assert (=> b!694013 (=> (not res!458241) (not e!394827))))

(declare-fun noDuplicate!967 (List!13177) Bool)

(assert (=> b!694013 (= res!458241 (noDuplicate!967 lt!316814))))

(declare-fun b!694014 () Bool)

(declare-fun e!394832 () Bool)

(assert (=> b!694014 (= e!394826 e!394832)))

(declare-fun res!458258 () Bool)

(assert (=> b!694014 (=> (not res!458258) (not e!394832))))

(assert (=> b!694014 (= res!458258 (not (= (select (arr!19083 a!3626) from!3004) k!2843)))))

(declare-datatypes ((Unit!24502 0))(
  ( (Unit!24503) )
))
(declare-fun lt!316815 () Unit!24502)

(declare-fun e!394830 () Unit!24502)

(assert (=> b!694014 (= lt!316815 e!394830)))

(declare-fun c!78251 () Bool)

(assert (=> b!694014 (= c!78251 (= (select (arr!19083 a!3626) from!3004) k!2843))))

(declare-fun b!694015 () Bool)

(assert (=> b!694015 (= e!394833 e!394828)))

(declare-fun res!458249 () Bool)

(assert (=> b!694015 (=> (not res!458249) (not e!394828))))

(assert (=> b!694015 (= res!458249 (bvsle from!3004 i!1382))))

(declare-fun b!694016 () Bool)

(declare-fun res!458244 () Bool)

(assert (=> b!694016 (=> (not res!458244) (not e!394827))))

(declare-fun e!394831 () Bool)

(assert (=> b!694016 (= res!458244 e!394831)))

(declare-fun res!458247 () Bool)

(assert (=> b!694016 (=> res!458247 e!394831)))

(declare-fun e!394824 () Bool)

(assert (=> b!694016 (= res!458247 e!394824)))

(declare-fun res!458240 () Bool)

(assert (=> b!694016 (=> (not res!458240) (not e!394824))))

(assert (=> b!694016 (= res!458240 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694017 () Bool)

(declare-fun res!458248 () Bool)

(assert (=> b!694017 (=> (not res!458248) (not e!394826))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!694017 (= res!458248 (validKeyInArray!0 k!2843))))

(declare-fun b!694018 () Bool)

(declare-fun res!458261 () Bool)

(assert (=> b!694018 (=> (not res!458261) (not e!394826))))

(assert (=> b!694018 (= res!458261 (not (contains!3720 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694019 () Bool)

(declare-fun Unit!24504 () Unit!24502)

(assert (=> b!694019 (= e!394830 Unit!24504)))

(assert (=> b!694019 (arrayContainsKey!0 a!3626 k!2843 from!3004)))

(declare-fun lt!316813 () Unit!24502)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39849 (_ BitVec 64) (_ BitVec 32)) Unit!24502)

(assert (=> b!694019 (= lt!316813 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!694019 false))

(declare-fun b!694020 () Bool)

(declare-fun res!458260 () Bool)

(assert (=> b!694020 (=> (not res!458260) (not e!394826))))

(assert (=> b!694020 (= res!458260 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!694021 () Bool)

(declare-fun res!458246 () Bool)

(assert (=> b!694021 (=> (not res!458246) (not e!394826))))

(assert (=> b!694021 (= res!458246 (noDuplicate!967 acc!681))))

(declare-fun b!694022 () Bool)

(declare-fun res!458252 () Bool)

(assert (=> b!694022 (=> (not res!458252) (not e!394826))))

(assert (=> b!694022 (= res!458252 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19466 a!3626))))))

(declare-fun b!694023 () Bool)

(declare-fun res!458245 () Bool)

(assert (=> b!694023 (=> (not res!458245) (not e!394826))))

(assert (=> b!694023 (= res!458245 (validKeyInArray!0 (select (arr!19083 a!3626) from!3004)))))

(declare-fun res!458256 () Bool)

(assert (=> start!62052 (=> (not res!458256) (not e!394826))))

(assert (=> start!62052 (= res!458256 (and (bvslt (size!19466 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19466 a!3626))))))

(assert (=> start!62052 e!394826))

(assert (=> start!62052 true))

(declare-fun array_inv!14857 (array!39849) Bool)

(assert (=> start!62052 (array_inv!14857 a!3626)))

(declare-fun b!694024 () Bool)

(declare-fun res!458257 () Bool)

(assert (=> b!694024 (=> (not res!458257) (not e!394826))))

(assert (=> b!694024 (= res!458257 (not (contains!3720 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!694025 () Bool)

(assert (=> b!694025 (= e!394824 (contains!3720 lt!316814 k!2843))))

(declare-fun b!694026 () Bool)

(declare-fun e!394834 () Bool)

(assert (=> b!694026 (= e!394834 (not (contains!3720 lt!316814 k!2843)))))

(declare-fun b!694027 () Bool)

(assert (=> b!694027 (= e!394832 e!394827)))

(declare-fun res!458259 () Bool)

(assert (=> b!694027 (=> (not res!458259) (not e!394827))))

(assert (=> b!694027 (= res!458259 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!430 (List!13177 (_ BitVec 64)) List!13177)

(assert (=> b!694027 (= lt!316814 ($colon$colon!430 acc!681 (select (arr!19083 a!3626) from!3004)))))

(declare-fun b!694028 () Bool)

(assert (=> b!694028 (= e!394831 e!394834)))

(declare-fun res!458255 () Bool)

(assert (=> b!694028 (=> (not res!458255) (not e!394834))))

(assert (=> b!694028 (= res!458255 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!694029 () Bool)

(assert (=> b!694029 (= e!394829 (contains!3720 acc!681 k!2843))))

(declare-fun b!694030 () Bool)

(declare-fun Unit!24505 () Unit!24502)

(assert (=> b!694030 (= e!394830 Unit!24505)))

(declare-fun b!694031 () Bool)

(declare-fun res!458238 () Bool)

(assert (=> b!694031 (=> (not res!458238) (not e!394826))))

(assert (=> b!694031 (= res!458238 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13174))))

(assert (= (and start!62052 res!458256) b!694021))

(assert (= (and b!694021 res!458246) b!694018))

(assert (= (and b!694018 res!458261) b!694024))

(assert (= (and b!694024 res!458257) b!694010))

(assert (= (and b!694010 res!458254) b!694029))

(assert (= (and b!694010 (not res!458239)) b!694015))

(assert (= (and b!694015 res!458249) b!694006))

(assert (= (and b!694010 res!458242) b!694031))

(assert (= (and b!694031 res!458238) b!694020))

(assert (= (and b!694020 res!458260) b!694022))

(assert (= (and b!694022 res!458252) b!694017))

(assert (= (and b!694017 res!458248) b!694007))

(assert (= (and b!694007 res!458253) b!694011))

(assert (= (and b!694011 res!458243) b!694023))

(assert (= (and b!694023 res!458245) b!694014))

(assert (= (and b!694014 c!78251) b!694019))

(assert (= (and b!694014 (not c!78251)) b!694030))

(assert (= (and b!694014 res!458258) b!694027))

(assert (= (and b!694027 res!458259) b!694013))

(assert (= (and b!694013 res!458241) b!694008))

(assert (= (and b!694008 res!458251) b!694012))

(assert (= (and b!694012 res!458250) b!694016))

(assert (= (and b!694016 res!458240) b!694025))

(assert (= (and b!694016 (not res!458247)) b!694028))

(assert (= (and b!694028 res!458255) b!694026))

(assert (= (and b!694016 res!458244) b!694009))

(declare-fun m!656019 () Bool)

(assert (=> b!694007 m!656019))

(declare-fun m!656021 () Bool)

(assert (=> b!694027 m!656021))

(assert (=> b!694027 m!656021))

(declare-fun m!656023 () Bool)

(assert (=> b!694027 m!656023))

(declare-fun m!656025 () Bool)

(assert (=> b!694025 m!656025))

(declare-fun m!656027 () Bool)

(assert (=> b!694008 m!656027))

(declare-fun m!656029 () Bool)

(assert (=> b!694019 m!656029))

(declare-fun m!656031 () Bool)

(assert (=> b!694019 m!656031))

(declare-fun m!656033 () Bool)

(assert (=> b!694018 m!656033))

(assert (=> b!694014 m!656021))

(declare-fun m!656035 () Bool)

(assert (=> b!694031 m!656035))

(declare-fun m!656037 () Bool)

(assert (=> b!694013 m!656037))

(declare-fun m!656039 () Bool)

(assert (=> b!694012 m!656039))

(declare-fun m!656041 () Bool)

(assert (=> b!694020 m!656041))

(declare-fun m!656043 () Bool)

(assert (=> b!694009 m!656043))

(declare-fun m!656045 () Bool)

(assert (=> start!62052 m!656045))

(declare-fun m!656047 () Bool)

(assert (=> b!694017 m!656047))

(declare-fun m!656049 () Bool)

(assert (=> b!694021 m!656049))

(declare-fun m!656051 () Bool)

(assert (=> b!694029 m!656051))

(assert (=> b!694026 m!656025))

(assert (=> b!694023 m!656021))

(assert (=> b!694023 m!656021))

(declare-fun m!656053 () Bool)

(assert (=> b!694023 m!656053))

(assert (=> b!694006 m!656051))

(declare-fun m!656055 () Bool)

(assert (=> b!694024 m!656055))

(push 1)

