; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62476 () Bool)

(assert start!62476)

(declare-fun b!702103 () Bool)

(declare-fun res!466107 () Bool)

(declare-fun e!397381 () Bool)

(assert (=> b!702103 (=> (not res!466107) (not e!397381))))

(declare-datatypes ((List!13302 0))(
  ( (Nil!13299) (Cons!13298 (h!14343 (_ BitVec 64)) (t!19592 List!13302)) )
))
(declare-fun newAcc!49 () List!13302)

(declare-fun contains!3845 (List!13302 (_ BitVec 64)) Bool)

(assert (=> b!702103 (= res!466107 (not (contains!3845 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702104 () Bool)

(declare-fun e!397379 () Bool)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40111 0))(
  ( (array!40112 (arr!19208 (Array (_ BitVec 32) (_ BitVec 64))) (size!19591 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40111)

(assert (=> b!702104 (= e!397379 (not (bvsle from!2969 (size!19591 a!3591))))))

(declare-fun lt!317631 () List!13302)

(declare-fun arrayNoDuplicates!0 (array!40111 (_ BitVec 32) List!13302) Bool)

(assert (=> b!702104 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317631)))

(declare-fun lt!317629 () List!13302)

(declare-fun k!2824 () (_ BitVec 64))

(declare-datatypes ((Unit!24566 0))(
  ( (Unit!24567) )
))
(declare-fun lt!317630 () Unit!24566)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40111 (_ BitVec 64) (_ BitVec 32) List!13302 List!13302) Unit!24566)

(assert (=> b!702104 (= lt!317630 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317629 lt!317631))))

(declare-fun b!702105 () Bool)

(declare-fun res!466111 () Bool)

(assert (=> b!702105 (=> (not res!466111) (not e!397379))))

(assert (=> b!702105 (= res!466111 (not (contains!3845 lt!317629 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702106 () Bool)

(assert (=> b!702106 (= e!397381 e!397379)))

(declare-fun res!466108 () Bool)

(assert (=> b!702106 (=> (not res!466108) (not e!397379))))

(assert (=> b!702106 (= res!466108 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!486 (List!13302 (_ BitVec 64)) List!13302)

(assert (=> b!702106 (= lt!317631 ($colon$colon!486 newAcc!49 (select (arr!19208 a!3591) from!2969)))))

(declare-fun acc!652 () List!13302)

(assert (=> b!702106 (= lt!317629 ($colon$colon!486 acc!652 (select (arr!19208 a!3591) from!2969)))))

(declare-fun b!702107 () Bool)

(declare-fun res!466101 () Bool)

(assert (=> b!702107 (=> (not res!466101) (not e!397381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702107 (= res!466101 (validKeyInArray!0 k!2824))))

(declare-fun b!702108 () Bool)

(declare-fun res!466113 () Bool)

(assert (=> b!702108 (=> (not res!466113) (not e!397379))))

(assert (=> b!702108 (= res!466113 (not (contains!3845 lt!317631 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702109 () Bool)

(declare-fun res!466112 () Bool)

(assert (=> b!702109 (=> (not res!466112) (not e!397381))))

(declare-fun -!254 (List!13302 (_ BitVec 64)) List!13302)

(assert (=> b!702109 (= res!466112 (= (-!254 newAcc!49 k!2824) acc!652))))

(declare-fun b!702110 () Bool)

(declare-fun res!466099 () Bool)

(assert (=> b!702110 (=> (not res!466099) (not e!397381))))

(assert (=> b!702110 (= res!466099 (not (contains!3845 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702111 () Bool)

(declare-fun res!466106 () Bool)

(assert (=> b!702111 (=> (not res!466106) (not e!397381))))

(declare-fun arrayContainsKey!0 (array!40111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702111 (= res!466106 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!702113 () Bool)

(declare-fun res!466102 () Bool)

(assert (=> b!702113 (=> (not res!466102) (not e!397379))))

(assert (=> b!702113 (= res!466102 (not (contains!3845 lt!317629 k!2824)))))

(declare-fun b!702114 () Bool)

(declare-fun res!466090 () Bool)

(assert (=> b!702114 (=> (not res!466090) (not e!397379))))

(declare-fun subseq!289 (List!13302 List!13302) Bool)

(assert (=> b!702114 (= res!466090 (subseq!289 lt!317629 lt!317631))))

(declare-fun b!702115 () Bool)

(declare-fun res!466088 () Bool)

(assert (=> b!702115 (=> (not res!466088) (not e!397381))))

(assert (=> b!702115 (= res!466088 (not (contains!3845 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702116 () Bool)

(declare-fun res!466098 () Bool)

(assert (=> b!702116 (=> (not res!466098) (not e!397381))))

(assert (=> b!702116 (= res!466098 (validKeyInArray!0 (select (arr!19208 a!3591) from!2969)))))

(declare-fun b!702117 () Bool)

(declare-fun res!466100 () Bool)

(assert (=> b!702117 (=> (not res!466100) (not e!397379))))

(assert (=> b!702117 (= res!466100 (not (contains!3845 lt!317629 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702118 () Bool)

(declare-fun res!466103 () Bool)

(assert (=> b!702118 (=> (not res!466103) (not e!397381))))

(assert (=> b!702118 (= res!466103 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702119 () Bool)

(declare-fun res!466115 () Bool)

(assert (=> b!702119 (=> (not res!466115) (not e!397379))))

(assert (=> b!702119 (= res!466115 (not (contains!3845 lt!317631 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702120 () Bool)

(declare-fun res!466094 () Bool)

(assert (=> b!702120 (=> (not res!466094) (not e!397381))))

(assert (=> b!702120 (= res!466094 (not (contains!3845 acc!652 k!2824)))))

(declare-fun b!702121 () Bool)

(declare-fun res!466093 () Bool)

(assert (=> b!702121 (=> (not res!466093) (not e!397381))))

(assert (=> b!702121 (= res!466093 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19591 a!3591)))))

(declare-fun b!702122 () Bool)

(declare-fun res!466109 () Bool)

(assert (=> b!702122 (=> (not res!466109) (not e!397379))))

(assert (=> b!702122 (= res!466109 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702123 () Bool)

(declare-fun res!466091 () Bool)

(assert (=> b!702123 (=> (not res!466091) (not e!397379))))

(assert (=> b!702123 (= res!466091 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317629))))

(declare-fun b!702124 () Bool)

(declare-fun res!466114 () Bool)

(assert (=> b!702124 (=> (not res!466114) (not e!397379))))

(assert (=> b!702124 (= res!466114 (= (-!254 lt!317631 k!2824) lt!317629))))

(declare-fun b!702125 () Bool)

(declare-fun res!466097 () Bool)

(assert (=> b!702125 (=> (not res!466097) (not e!397379))))

(declare-fun noDuplicate!1092 (List!13302) Bool)

(assert (=> b!702125 (= res!466097 (noDuplicate!1092 lt!317629))))

(declare-fun b!702126 () Bool)

(declare-fun res!466110 () Bool)

(assert (=> b!702126 (=> (not res!466110) (not e!397381))))

(assert (=> b!702126 (= res!466110 (not (contains!3845 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702127 () Bool)

(declare-fun res!466092 () Bool)

(assert (=> b!702127 (=> (not res!466092) (not e!397381))))

(assert (=> b!702127 (= res!466092 (contains!3845 newAcc!49 k!2824))))

(declare-fun b!702128 () Bool)

(declare-fun res!466096 () Bool)

(assert (=> b!702128 (=> (not res!466096) (not e!397381))))

(assert (=> b!702128 (= res!466096 (noDuplicate!1092 newAcc!49))))

(declare-fun b!702112 () Bool)

(declare-fun res!466089 () Bool)

(assert (=> b!702112 (=> (not res!466089) (not e!397381))))

(assert (=> b!702112 (= res!466089 (noDuplicate!1092 acc!652))))

(declare-fun res!466104 () Bool)

(assert (=> start!62476 (=> (not res!466104) (not e!397381))))

(assert (=> start!62476 (= res!466104 (and (bvslt (size!19591 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19591 a!3591))))))

(assert (=> start!62476 e!397381))

(assert (=> start!62476 true))

(declare-fun array_inv!14982 (array!40111) Bool)

(assert (=> start!62476 (array_inv!14982 a!3591)))

(declare-fun b!702129 () Bool)

(declare-fun res!466105 () Bool)

(assert (=> b!702129 (=> (not res!466105) (not e!397381))))

(assert (=> b!702129 (= res!466105 (subseq!289 acc!652 newAcc!49))))

(declare-fun b!702130 () Bool)

(declare-fun res!466095 () Bool)

(assert (=> b!702130 (=> (not res!466095) (not e!397379))))

(assert (=> b!702130 (= res!466095 (contains!3845 lt!317631 k!2824))))

(declare-fun b!702131 () Bool)

(declare-fun res!466087 () Bool)

(assert (=> b!702131 (=> (not res!466087) (not e!397379))))

(assert (=> b!702131 (= res!466087 (noDuplicate!1092 lt!317631))))

(assert (= (and start!62476 res!466104) b!702112))

(assert (= (and b!702112 res!466089) b!702128))

(assert (= (and b!702128 res!466096) b!702126))

(assert (= (and b!702126 res!466110) b!702115))

(assert (= (and b!702115 res!466088) b!702111))

(assert (= (and b!702111 res!466106) b!702120))

(assert (= (and b!702120 res!466094) b!702107))

(assert (= (and b!702107 res!466101) b!702118))

(assert (= (and b!702118 res!466103) b!702129))

(assert (= (and b!702129 res!466105) b!702127))

(assert (= (and b!702127 res!466092) b!702109))

(assert (= (and b!702109 res!466112) b!702103))

(assert (= (and b!702103 res!466107) b!702110))

(assert (= (and b!702110 res!466099) b!702121))

(assert (= (and b!702121 res!466093) b!702116))

(assert (= (and b!702116 res!466098) b!702106))

(assert (= (and b!702106 res!466108) b!702125))

(assert (= (and b!702125 res!466097) b!702131))

(assert (= (and b!702131 res!466087) b!702105))

(assert (= (and b!702105 res!466111) b!702117))

(assert (= (and b!702117 res!466100) b!702122))

(assert (= (and b!702122 res!466109) b!702113))

(assert (= (and b!702113 res!466102) b!702123))

(assert (= (and b!702123 res!466091) b!702114))

(assert (= (and b!702114 res!466090) b!702130))

(assert (= (and b!702130 res!466095) b!702124))

(assert (= (and b!702124 res!466114) b!702108))

(assert (= (and b!702108 res!466113) b!702119))

(assert (= (and b!702119 res!466115) b!702104))

(declare-fun m!661319 () Bool)

(assert (=> b!702112 m!661319))

(declare-fun m!661321 () Bool)

(assert (=> b!702114 m!661321))

(declare-fun m!661323 () Bool)

(assert (=> b!702113 m!661323))

(declare-fun m!661325 () Bool)

(assert (=> b!702131 m!661325))

(declare-fun m!661327 () Bool)

(assert (=> b!702104 m!661327))

(declare-fun m!661329 () Bool)

(assert (=> b!702104 m!661329))

(declare-fun m!661331 () Bool)

(assert (=> b!702116 m!661331))

(assert (=> b!702116 m!661331))

(declare-fun m!661333 () Bool)

(assert (=> b!702116 m!661333))

(declare-fun m!661335 () Bool)

(assert (=> b!702124 m!661335))

(declare-fun m!661337 () Bool)

(assert (=> b!702118 m!661337))

(declare-fun m!661339 () Bool)

(assert (=> b!702120 m!661339))

(declare-fun m!661341 () Bool)

(assert (=> b!702125 m!661341))

(declare-fun m!661343 () Bool)

(assert (=> b!702110 m!661343))

(declare-fun m!661345 () Bool)

(assert (=> b!702123 m!661345))

(assert (=> b!702106 m!661331))

(assert (=> b!702106 m!661331))

(declare-fun m!661347 () Bool)

(assert (=> b!702106 m!661347))

(assert (=> b!702106 m!661331))

(declare-fun m!661349 () Bool)

(assert (=> b!702106 m!661349))

(declare-fun m!661351 () Bool)

(assert (=> b!702105 m!661351))

(declare-fun m!661353 () Bool)

(assert (=> b!702128 m!661353))

(declare-fun m!661355 () Bool)

(assert (=> b!702127 m!661355))

(declare-fun m!661357 () Bool)

(assert (=> b!702108 m!661357))

(declare-fun m!661359 () Bool)

(assert (=> b!702126 m!661359))

(declare-fun m!661361 () Bool)

(assert (=> b!702103 m!661361))

(declare-fun m!661363 () Bool)

(assert (=> b!702130 m!661363))

(declare-fun m!661365 () Bool)

(assert (=> b!702119 m!661365))

(declare-fun m!661367 () Bool)

(assert (=> start!62476 m!661367))

(declare-fun m!661369 () Bool)

(assert (=> b!702122 m!661369))

(declare-fun m!661371 () Bool)

(assert (=> b!702107 m!661371))

(declare-fun m!661373 () Bool)

(assert (=> b!702129 m!661373))

(declare-fun m!661375 () Bool)

(assert (=> b!702117 m!661375))

(declare-fun m!661377 () Bool)

(assert (=> b!702111 m!661377))

(declare-fun m!661379 () Bool)

(assert (=> b!702109 m!661379))

(declare-fun m!661381 () Bool)

(assert (=> b!702115 m!661381))

(push 1)

(assert (not b!702127))

(assert (not start!62476))

(assert (not b!702112))

(assert (not b!702108))

(assert (not b!702110))

(assert (not b!702123))

(assert (not b!702120))

(assert (not b!702114))

(assert (not b!702103))

(assert (not b!702118))

(assert (not b!702105))

(assert (not b!702115))

(assert (not b!702131))

(assert (not b!702104))

(assert (not b!702126))

(assert (not b!702128))

(assert (not b!702113))

(assert (not b!702107))

(assert (not b!702124))

(assert (not b!702130))

(assert (not b!702111))

(assert (not b!702117))

(assert (not b!702125))

(assert (not b!702122))

