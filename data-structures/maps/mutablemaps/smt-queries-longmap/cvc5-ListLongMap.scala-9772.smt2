; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115838 () Bool)

(assert start!115838)

(declare-fun b!1369079 () Bool)

(declare-fun res!912681 () Bool)

(declare-fun e!775615 () Bool)

(assert (=> b!1369079 (=> (not res!912681) (not e!775615))))

(declare-datatypes ((List!32120 0))(
  ( (Nil!32117) (Cons!32116 (h!33325 (_ BitVec 64)) (t!46821 List!32120)) )
))
(declare-fun newAcc!98 () List!32120)

(declare-fun contains!9658 (List!32120 (_ BitVec 64)) Bool)

(assert (=> b!1369079 (= res!912681 (not (contains!9658 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369080 () Bool)

(declare-fun res!912682 () Bool)

(assert (=> b!1369080 (=> (not res!912682) (not e!775615))))

(declare-fun acc!866 () List!32120)

(declare-fun noDuplicate!2537 (List!32120) Bool)

(assert (=> b!1369080 (= res!912682 (noDuplicate!2537 acc!866))))

(declare-fun b!1369081 () Bool)

(declare-fun res!912680 () Bool)

(assert (=> b!1369081 (=> (not res!912680) (not e!775615))))

(assert (=> b!1369081 (= res!912680 (not (contains!9658 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912678 () Bool)

(assert (=> start!115838 (=> (not res!912678) (not e!775615))))

(declare-datatypes ((array!92908 0))(
  ( (array!92909 (arr!44872 (Array (_ BitVec 32) (_ BitVec 64))) (size!45423 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92908)

(declare-fun from!3239 () (_ BitVec 32))

(assert (=> start!115838 (= res!912678 (and (bvslt (size!45423 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45423 a!3861))))))

(assert (=> start!115838 e!775615))

(declare-fun array_inv!33817 (array!92908) Bool)

(assert (=> start!115838 (array_inv!33817 a!3861)))

(assert (=> start!115838 true))

(declare-fun b!1369082 () Bool)

(declare-fun res!912683 () Bool)

(assert (=> b!1369082 (=> (not res!912683) (not e!775615))))

(assert (=> b!1369082 (= res!912683 (not (contains!9658 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369083 () Bool)

(assert (=> b!1369083 (= e!775615 false)))

(declare-fun lt!602141 () Bool)

(declare-fun arrayNoDuplicates!0 (array!92908 (_ BitVec 32) List!32120) Bool)

(assert (=> b!1369083 (= lt!602141 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45179 0))(
  ( (Unit!45180) )
))
(declare-fun lt!602140 () Unit!45179)

(declare-fun noDuplicateSubseq!236 (List!32120 List!32120) Unit!45179)

(assert (=> b!1369083 (= lt!602140 (noDuplicateSubseq!236 newAcc!98 acc!866))))

(declare-fun b!1369084 () Bool)

(declare-fun res!912679 () Bool)

(assert (=> b!1369084 (=> (not res!912679) (not e!775615))))

(assert (=> b!1369084 (= res!912679 (not (contains!9658 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1369085 () Bool)

(declare-fun res!912684 () Bool)

(assert (=> b!1369085 (=> (not res!912684) (not e!775615))))

(declare-fun subseq!1049 (List!32120 List!32120) Bool)

(assert (=> b!1369085 (= res!912684 (subseq!1049 newAcc!98 acc!866))))

(assert (= (and start!115838 res!912678) b!1369080))

(assert (= (and b!1369080 res!912682) b!1369084))

(assert (= (and b!1369084 res!912679) b!1369082))

(assert (= (and b!1369082 res!912683) b!1369081))

(assert (= (and b!1369081 res!912680) b!1369079))

(assert (= (and b!1369079 res!912681) b!1369085))

(assert (= (and b!1369085 res!912684) b!1369083))

(declare-fun m!1252951 () Bool)

(assert (=> b!1369083 m!1252951))

(declare-fun m!1252953 () Bool)

(assert (=> b!1369083 m!1252953))

(declare-fun m!1252955 () Bool)

(assert (=> b!1369084 m!1252955))

(declare-fun m!1252957 () Bool)

(assert (=> b!1369080 m!1252957))

(declare-fun m!1252959 () Bool)

(assert (=> b!1369079 m!1252959))

(declare-fun m!1252961 () Bool)

(assert (=> start!115838 m!1252961))

(declare-fun m!1252963 () Bool)

(assert (=> b!1369082 m!1252963))

(declare-fun m!1252965 () Bool)

(assert (=> b!1369085 m!1252965))

(declare-fun m!1252967 () Bool)

(assert (=> b!1369081 m!1252967))

(push 1)

(assert (not b!1369085))

(assert (not b!1369084))

(assert (not b!1369081))

(assert (not b!1369080))

(assert (not b!1369082))

(assert (not b!1369079))

(assert (not start!115838))

(assert (not b!1369083))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

