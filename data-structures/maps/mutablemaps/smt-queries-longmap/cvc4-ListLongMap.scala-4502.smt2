; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62500 () Bool)

(assert start!62500)

(declare-fun b!703059 () Bool)

(declare-fun res!467046 () Bool)

(declare-fun e!397479 () Bool)

(assert (=> b!703059 (=> (not res!467046) (not e!397479))))

(declare-datatypes ((List!13314 0))(
  ( (Nil!13311) (Cons!13310 (h!14355 (_ BitVec 64)) (t!19604 List!13314)) )
))
(declare-fun newAcc!49 () List!13314)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!3857 (List!13314 (_ BitVec 64)) Bool)

(assert (=> b!703059 (= res!467046 (contains!3857 newAcc!49 k!2824))))

(declare-fun b!703060 () Bool)

(declare-fun res!467054 () Bool)

(assert (=> b!703060 (=> (not res!467054) (not e!397479))))

(declare-datatypes ((array!40135 0))(
  ( (array!40136 (arr!19220 (Array (_ BitVec 32) (_ BitVec 64))) (size!19603 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40135)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!703060 (= res!467054 (not (validKeyInArray!0 (select (arr!19220 a!3591) from!2969))))))

(declare-fun b!703061 () Bool)

(declare-fun res!467060 () Bool)

(assert (=> b!703061 (=> (not res!467060) (not e!397479))))

(declare-fun noDuplicate!1104 (List!13314) Bool)

(assert (=> b!703061 (= res!467060 (noDuplicate!1104 newAcc!49))))

(declare-fun b!703062 () Bool)

(declare-fun res!467050 () Bool)

(assert (=> b!703062 (=> (not res!467050) (not e!397479))))

(declare-fun acc!652 () List!13314)

(declare-fun arrayNoDuplicates!0 (array!40135 (_ BitVec 32) List!13314) Bool)

(assert (=> b!703062 (= res!467050 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!703063 () Bool)

(declare-fun res!467058 () Bool)

(assert (=> b!703063 (=> (not res!467058) (not e!397479))))

(assert (=> b!703063 (= res!467058 (not (contains!3857 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703064 () Bool)

(assert (=> b!703064 (= e!397479 false)))

(declare-fun lt!317721 () Bool)

(assert (=> b!703064 (= lt!317721 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!703065 () Bool)

(declare-fun res!467043 () Bool)

(assert (=> b!703065 (=> (not res!467043) (not e!397479))))

(assert (=> b!703065 (= res!467043 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun res!467047 () Bool)

(assert (=> start!62500 (=> (not res!467047) (not e!397479))))

(assert (=> start!62500 (= res!467047 (and (bvslt (size!19603 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19603 a!3591))))))

(assert (=> start!62500 e!397479))

(assert (=> start!62500 true))

(declare-fun array_inv!14994 (array!40135) Bool)

(assert (=> start!62500 (array_inv!14994 a!3591)))

(declare-fun b!703066 () Bool)

(declare-fun res!467056 () Bool)

(assert (=> b!703066 (=> (not res!467056) (not e!397479))))

(assert (=> b!703066 (= res!467056 (validKeyInArray!0 k!2824))))

(declare-fun b!703067 () Bool)

(declare-fun res!467059 () Bool)

(assert (=> b!703067 (=> (not res!467059) (not e!397479))))

(assert (=> b!703067 (= res!467059 (not (contains!3857 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703068 () Bool)

(declare-fun res!467053 () Bool)

(assert (=> b!703068 (=> (not res!467053) (not e!397479))))

(assert (=> b!703068 (= res!467053 (not (contains!3857 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703069 () Bool)

(declare-fun res!467045 () Bool)

(assert (=> b!703069 (=> (not res!467045) (not e!397479))))

(assert (=> b!703069 (= res!467045 (not (contains!3857 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!703070 () Bool)

(declare-fun res!467057 () Bool)

(assert (=> b!703070 (=> (not res!467057) (not e!397479))))

(declare-fun arrayContainsKey!0 (array!40135 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!703070 (= res!467057 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!703071 () Bool)

(declare-fun res!467051 () Bool)

(assert (=> b!703071 (=> (not res!467051) (not e!397479))))

(declare-fun -!266 (List!13314 (_ BitVec 64)) List!13314)

(assert (=> b!703071 (= res!467051 (= (-!266 newAcc!49 k!2824) acc!652))))

(declare-fun b!703072 () Bool)

(declare-fun res!467049 () Bool)

(assert (=> b!703072 (=> (not res!467049) (not e!397479))))

(assert (=> b!703072 (= res!467049 (noDuplicate!1104 acc!652))))

(declare-fun b!703073 () Bool)

(declare-fun res!467048 () Bool)

(assert (=> b!703073 (=> (not res!467048) (not e!397479))))

(assert (=> b!703073 (= res!467048 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19603 a!3591)))))

(declare-fun b!703074 () Bool)

(declare-fun res!467044 () Bool)

(assert (=> b!703074 (=> (not res!467044) (not e!397479))))

(assert (=> b!703074 (= res!467044 (not (contains!3857 acc!652 k!2824)))))

(declare-fun b!703075 () Bool)

(declare-fun res!467052 () Bool)

(assert (=> b!703075 (=> (not res!467052) (not e!397479))))

(assert (=> b!703075 (= res!467052 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!703076 () Bool)

(declare-fun res!467055 () Bool)

(assert (=> b!703076 (=> (not res!467055) (not e!397479))))

(declare-fun subseq!301 (List!13314 List!13314) Bool)

(assert (=> b!703076 (= res!467055 (subseq!301 acc!652 newAcc!49))))

(assert (= (and start!62500 res!467047) b!703072))

(assert (= (and b!703072 res!467049) b!703061))

(assert (= (and b!703061 res!467060) b!703069))

(assert (= (and b!703069 res!467045) b!703068))

(assert (= (and b!703068 res!467053) b!703070))

(assert (= (and b!703070 res!467057) b!703074))

(assert (= (and b!703074 res!467044) b!703066))

(assert (= (and b!703066 res!467056) b!703062))

(assert (= (and b!703062 res!467050) b!703076))

(assert (= (and b!703076 res!467055) b!703059))

(assert (= (and b!703059 res!467046) b!703071))

(assert (= (and b!703071 res!467051) b!703063))

(assert (= (and b!703063 res!467058) b!703067))

(assert (= (and b!703067 res!467059) b!703073))

(assert (= (and b!703073 res!467048) b!703060))

(assert (= (and b!703060 res!467054) b!703065))

(assert (= (and b!703065 res!467043) b!703075))

(assert (= (and b!703075 res!467052) b!703064))

(declare-fun m!662031 () Bool)

(assert (=> b!703067 m!662031))

(declare-fun m!662033 () Bool)

(assert (=> start!62500 m!662033))

(declare-fun m!662035 () Bool)

(assert (=> b!703068 m!662035))

(declare-fun m!662037 () Bool)

(assert (=> b!703075 m!662037))

(declare-fun m!662039 () Bool)

(assert (=> b!703074 m!662039))

(declare-fun m!662041 () Bool)

(assert (=> b!703072 m!662041))

(declare-fun m!662043 () Bool)

(assert (=> b!703069 m!662043))

(declare-fun m!662045 () Bool)

(assert (=> b!703064 m!662045))

(declare-fun m!662047 () Bool)

(assert (=> b!703062 m!662047))

(declare-fun m!662049 () Bool)

(assert (=> b!703070 m!662049))

(declare-fun m!662051 () Bool)

(assert (=> b!703076 m!662051))

(declare-fun m!662053 () Bool)

(assert (=> b!703071 m!662053))

(declare-fun m!662055 () Bool)

(assert (=> b!703066 m!662055))

(declare-fun m!662057 () Bool)

(assert (=> b!703059 m!662057))

(declare-fun m!662059 () Bool)

(assert (=> b!703060 m!662059))

(assert (=> b!703060 m!662059))

(declare-fun m!662061 () Bool)

(assert (=> b!703060 m!662061))

(declare-fun m!662063 () Bool)

(assert (=> b!703061 m!662063))

(declare-fun m!662065 () Bool)

(assert (=> b!703063 m!662065))

(push 1)

(assert (not b!703075))

(assert (not b!703064))

(assert (not b!703071))

(assert (not b!703059))

(assert (not b!703070))

(assert (not b!703063))

(assert (not b!703069))

(assert (not b!703067))

(assert (not b!703076))

(assert (not b!703060))

(assert (not start!62500))

(assert (not b!703072))

(assert (not b!703074))

(assert (not b!703062))

(assert (not b!703061))

(assert (not b!703066))

(assert (not b!703068))

(check-sat)

(pop 1)

(push 1)

(check-sat)

