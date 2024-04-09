; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62502 () Bool)

(assert start!62502)

(declare-fun b!703113 () Bool)

(declare-fun e!397485 () Bool)

(assert (=> b!703113 (= e!397485 false)))

(declare-datatypes ((array!40137 0))(
  ( (array!40138 (arr!19221 (Array (_ BitVec 32) (_ BitVec 64))) (size!19604 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40137)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun lt!317724 () Bool)

(declare-datatypes ((List!13315 0))(
  ( (Nil!13312) (Cons!13311 (h!14356 (_ BitVec 64)) (t!19605 List!13315)) )
))
(declare-fun acc!652 () List!13315)

(declare-fun arrayNoDuplicates!0 (array!40137 (_ BitVec 32) List!13315) Bool)

(assert (=> b!703113 (= lt!317724 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703114 () Bool)

(declare-fun res!467099 () Bool)

(assert (=> b!703114 (=> (not res!467099) (not e!397485))))

(declare-fun contains!3858 (List!13315 (_ BitVec 64)) Bool)

(assert (=> b!703114 (= res!467099 (not (contains!3858 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703115 () Bool)

(declare-fun res!467098 () Bool)

(assert (=> b!703115 (=> (not res!467098) (not e!397485))))

(declare-fun newAcc!49 () List!13315)

(declare-fun noDuplicate!1105 (List!13315) Bool)

(assert (=> b!703115 (= res!467098 (noDuplicate!1105 newAcc!49))))

(declare-fun b!703116 () Bool)

(declare-fun res!467108 () Bool)

(assert (=> b!703116 (=> (not res!467108) (not e!397485))))

(assert (=> b!703116 (= res!467108 (not (contains!3858 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703118 () Bool)

(declare-fun res!467111 () Bool)

(assert (=> b!703118 (=> (not res!467111) (not e!397485))))

(assert (=> b!703118 (= res!467111 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703119 () Bool)

(declare-fun res!467114 () Bool)

(assert (=> b!703119 (=> (not res!467114) (not e!397485))))

(assert (=> b!703119 (= res!467114 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19604 a!3591)))))

(declare-fun b!703120 () Bool)

(declare-fun res!467106 () Bool)

(assert (=> b!703120 (=> (not res!467106) (not e!397485))))

(declare-fun subseq!302 (List!13315 List!13315) Bool)

(assert (=> b!703120 (= res!467106 (subseq!302 acc!652 newAcc!49))))

(declare-fun b!703121 () Bool)

(declare-fun res!467101 () Bool)

(assert (=> b!703121 (=> (not res!467101) (not e!397485))))

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!703121 (= res!467101 (not (contains!3858 acc!652 k!2824)))))

(declare-fun b!703122 () Bool)

(declare-fun res!467109 () Bool)

(assert (=> b!703122 (=> (not res!467109) (not e!397485))))

(assert (=> b!703122 (= res!467109 (noDuplicate!1105 acc!652))))

(declare-fun b!703123 () Bool)

(declare-fun res!467113 () Bool)

(assert (=> b!703123 (=> (not res!467113) (not e!397485))))

(assert (=> b!703123 (= res!467113 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!703124 () Bool)

(declare-fun res!467104 () Bool)

(assert (=> b!703124 (=> (not res!467104) (not e!397485))))

(assert (=> b!703124 (= res!467104 (not (contains!3858 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703125 () Bool)

(declare-fun res!467110 () Bool)

(assert (=> b!703125 (=> (not res!467110) (not e!397485))))

(declare-fun arrayContainsKey!0 (array!40137 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703125 (= res!467110 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703126 () Bool)

(declare-fun res!467103 () Bool)

(assert (=> b!703126 (=> (not res!467103) (not e!397485))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703126 (= res!467103 (not (validKeyInArray!0 (select (arr!19221 a!3591) from!2969))))))

(declare-fun b!703127 () Bool)

(declare-fun res!467105 () Bool)

(assert (=> b!703127 (=> (not res!467105) (not e!397485))))

(assert (=> b!703127 (= res!467105 (not (contains!3858 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703128 () Bool)

(declare-fun res!467097 () Bool)

(assert (=> b!703128 (=> (not res!467097) (not e!397485))))

(assert (=> b!703128 (= res!467097 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703129 () Bool)

(declare-fun res!467107 () Bool)

(assert (=> b!703129 (=> (not res!467107) (not e!397485))))

(declare-fun -!267 (List!13315 (_ BitVec 64)) List!13315)

(assert (=> b!703129 (= res!467107 (= (-!267 newAcc!49 k!2824) acc!652))))

(declare-fun b!703130 () Bool)

(declare-fun res!467112 () Bool)

(assert (=> b!703130 (=> (not res!467112) (not e!397485))))

(assert (=> b!703130 (= res!467112 (validKeyInArray!0 k!2824))))

(declare-fun b!703117 () Bool)

(declare-fun res!467100 () Bool)

(assert (=> b!703117 (=> (not res!467100) (not e!397485))))

(assert (=> b!703117 (= res!467100 (contains!3858 newAcc!49 k!2824))))

(declare-fun res!467102 () Bool)

(assert (=> start!62502 (=> (not res!467102) (not e!397485))))

(assert (=> start!62502 (= res!467102 (and (bvslt (size!19604 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19604 a!3591))))))

(assert (=> start!62502 e!397485))

(assert (=> start!62502 true))

(declare-fun array_inv!14995 (array!40137) Bool)

(assert (=> start!62502 (array_inv!14995 a!3591)))

(assert (= (and start!62502 res!467102) b!703122))

(assert (= (and b!703122 res!467109) b!703115))

(assert (= (and b!703115 res!467098) b!703114))

(assert (= (and b!703114 res!467099) b!703127))

(assert (= (and b!703127 res!467105) b!703128))

(assert (= (and b!703128 res!467097) b!703121))

(assert (= (and b!703121 res!467101) b!703130))

(assert (= (and b!703130 res!467112) b!703118))

(assert (= (and b!703118 res!467111) b!703120))

(assert (= (and b!703120 res!467106) b!703117))

(assert (= (and b!703117 res!467100) b!703129))

(assert (= (and b!703129 res!467107) b!703124))

(assert (= (and b!703124 res!467104) b!703116))

(assert (= (and b!703116 res!467108) b!703119))

(assert (= (and b!703119 res!467114) b!703126))

(assert (= (and b!703126 res!467103) b!703123))

(assert (= (and b!703123 res!467113) b!703125))

(assert (= (and b!703125 res!467110) b!703113))

(declare-fun m!662067 () Bool)

(assert (=> b!703117 m!662067))

(declare-fun m!662069 () Bool)

(assert (=> b!703128 m!662069))

(declare-fun m!662071 () Bool)

(assert (=> b!703130 m!662071))

(declare-fun m!662073 () Bool)

(assert (=> b!703127 m!662073))

(declare-fun m!662075 () Bool)

(assert (=> b!703125 m!662075))

(declare-fun m!662077 () Bool)

(assert (=> b!703118 m!662077))

(declare-fun m!662079 () Bool)

(assert (=> b!703113 m!662079))

(declare-fun m!662081 () Bool)

(assert (=> start!62502 m!662081))

(declare-fun m!662083 () Bool)

(assert (=> b!703126 m!662083))

(assert (=> b!703126 m!662083))

(declare-fun m!662085 () Bool)

(assert (=> b!703126 m!662085))

(declare-fun m!662087 () Bool)

(assert (=> b!703124 m!662087))

(declare-fun m!662089 () Bool)

(assert (=> b!703121 m!662089))

(declare-fun m!662091 () Bool)

(assert (=> b!703129 m!662091))

(declare-fun m!662093 () Bool)

(assert (=> b!703115 m!662093))

(declare-fun m!662095 () Bool)

(assert (=> b!703114 m!662095))

(declare-fun m!662097 () Bool)

(assert (=> b!703116 m!662097))

(declare-fun m!662099 () Bool)

(assert (=> b!703120 m!662099))

(declare-fun m!662101 () Bool)

(assert (=> b!703122 m!662101))

(push 1)

(assert (not b!703128))

(assert (not b!703117))

(assert (not b!703120))

(assert (not b!703130))

(assert (not b!703114))

(assert (not b!703124))

(assert (not b!703122))

(assert (not b!703126))

(assert (not b!703115))

(assert (not b!703113))

(assert (not b!703127))

(assert (not b!703121))

(assert (not b!703118))

(assert (not b!703125))

(assert (not b!703116))

(assert (not b!703129))

(assert (not start!62502))

(check-sat)

(pop 1)

