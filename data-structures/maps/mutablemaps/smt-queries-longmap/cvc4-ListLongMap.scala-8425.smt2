; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102678 () Bool)

(assert start!102678)

(declare-fun b!1233753 () Bool)

(declare-fun e!699892 () Bool)

(declare-datatypes ((array!79509 0))(
  ( (array!79510 (arr!38360 (Array (_ BitVec 32) (_ BitVec 64))) (size!38897 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79509)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27311 0))(
  ( (Nil!27308) (Cons!27307 (h!28516 (_ BitVec 64)) (t!40781 List!27311)) )
))
(declare-fun arrayNoDuplicates!0 (array!79509 (_ BitVec 32) List!27311) Bool)

(assert (=> b!1233753 (= e!699892 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27307 (select (arr!38360 a!3806) from!3184) Nil!27308)))))

(declare-fun b!1233754 () Bool)

(declare-fun res!822051 () Bool)

(declare-fun e!699891 () Bool)

(assert (=> b!1233754 (=> (not res!822051) (not e!699891))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233754 (= res!822051 (validKeyInArray!0 k!2913))))

(declare-fun b!1233755 () Bool)

(declare-fun res!822049 () Bool)

(assert (=> b!1233755 (=> (not res!822049) (not e!699891))))

(declare-fun acc!823 () List!27311)

(declare-fun contains!7226 (List!27311 (_ BitVec 64)) Bool)

(assert (=> b!1233755 (= res!822049 (not (contains!7226 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233756 () Bool)

(declare-fun res!822053 () Bool)

(assert (=> b!1233756 (=> (not res!822053) (not e!699891))))

(assert (=> b!1233756 (= res!822053 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38897 a!3806)) (bvslt from!3184 (size!38897 a!3806))))))

(declare-fun res!822052 () Bool)

(assert (=> start!102678 (=> (not res!822052) (not e!699891))))

(assert (=> start!102678 (= res!822052 (bvslt (size!38897 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102678 e!699891))

(declare-fun array_inv!29136 (array!79509) Bool)

(assert (=> start!102678 (array_inv!29136 a!3806)))

(assert (=> start!102678 true))

(declare-fun b!1233757 () Bool)

(declare-fun res!822045 () Bool)

(assert (=> b!1233757 (=> (not res!822045) (not e!699891))))

(assert (=> b!1233757 (= res!822045 (not (contains!7226 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233758 () Bool)

(declare-fun res!822048 () Bool)

(assert (=> b!1233758 (=> (not res!822048) (not e!699891))))

(assert (=> b!1233758 (= res!822048 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233759 () Bool)

(declare-fun res!822046 () Bool)

(assert (=> b!1233759 (=> (not res!822046) (not e!699891))))

(declare-fun noDuplicate!1833 (List!27311) Bool)

(assert (=> b!1233759 (= res!822046 (noDuplicate!1833 acc!823))))

(declare-fun b!1233760 () Bool)

(assert (=> b!1233760 (= e!699891 (not true))))

(declare-fun arrayContainsKey!0 (array!79509 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233760 (not (arrayContainsKey!0 a!3806 (select (arr!38360 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40800 0))(
  ( (Unit!40801) )
))
(declare-fun lt!559692 () Unit!40800)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79509 (_ BitVec 32) (_ BitVec 64) List!27311) Unit!40800)

(assert (=> b!1233760 (= lt!559692 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38360 a!3806) from!3184) (Cons!27307 (select (arr!38360 a!3806) from!3184) Nil!27308)))))

(assert (=> b!1233760 e!699892))

(declare-fun res!822047 () Bool)

(assert (=> b!1233760 (=> (not res!822047) (not e!699892))))

(assert (=> b!1233760 (= res!822047 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27308))))

(declare-fun lt!559693 () Unit!40800)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79509 List!27311 List!27311 (_ BitVec 32)) Unit!40800)

(assert (=> b!1233760 (= lt!559693 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27308 from!3184))))

(assert (=> b!1233760 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27307 (select (arr!38360 a!3806) from!3184) acc!823))))

(declare-fun b!1233761 () Bool)

(declare-fun res!822044 () Bool)

(assert (=> b!1233761 (=> (not res!822044) (not e!699891))))

(assert (=> b!1233761 (= res!822044 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233762 () Bool)

(declare-fun res!822050 () Bool)

(assert (=> b!1233762 (=> (not res!822050) (not e!699891))))

(assert (=> b!1233762 (= res!822050 (validKeyInArray!0 (select (arr!38360 a!3806) from!3184)))))

(assert (= (and start!102678 res!822052) b!1233754))

(assert (= (and b!1233754 res!822051) b!1233756))

(assert (= (and b!1233756 res!822053) b!1233759))

(assert (= (and b!1233759 res!822046) b!1233755))

(assert (= (and b!1233755 res!822049) b!1233757))

(assert (= (and b!1233757 res!822045) b!1233761))

(assert (= (and b!1233761 res!822044) b!1233758))

(assert (= (and b!1233758 res!822048) b!1233762))

(assert (= (and b!1233762 res!822050) b!1233760))

(assert (= (and b!1233760 res!822047) b!1233753))

(declare-fun m!1137863 () Bool)

(assert (=> b!1233759 m!1137863))

(declare-fun m!1137865 () Bool)

(assert (=> b!1233755 m!1137865))

(declare-fun m!1137867 () Bool)

(assert (=> b!1233758 m!1137867))

(declare-fun m!1137869 () Bool)

(assert (=> b!1233754 m!1137869))

(declare-fun m!1137871 () Bool)

(assert (=> b!1233760 m!1137871))

(declare-fun m!1137873 () Bool)

(assert (=> b!1233760 m!1137873))

(declare-fun m!1137875 () Bool)

(assert (=> b!1233760 m!1137875))

(declare-fun m!1137877 () Bool)

(assert (=> b!1233760 m!1137877))

(assert (=> b!1233760 m!1137875))

(declare-fun m!1137879 () Bool)

(assert (=> b!1233760 m!1137879))

(assert (=> b!1233760 m!1137875))

(declare-fun m!1137881 () Bool)

(assert (=> b!1233760 m!1137881))

(assert (=> b!1233762 m!1137875))

(assert (=> b!1233762 m!1137875))

(declare-fun m!1137883 () Bool)

(assert (=> b!1233762 m!1137883))

(declare-fun m!1137885 () Bool)

(assert (=> b!1233761 m!1137885))

(declare-fun m!1137887 () Bool)

(assert (=> start!102678 m!1137887))

(assert (=> b!1233753 m!1137875))

(declare-fun m!1137889 () Bool)

(assert (=> b!1233753 m!1137889))

(declare-fun m!1137891 () Bool)

(assert (=> b!1233757 m!1137891))

(push 1)

(assert (not b!1233762))

(assert (not start!102678))

(assert (not b!1233758))

(assert (not b!1233757))

(assert (not b!1233755))

(assert (not b!1233761))

(assert (not b!1233753))

(assert (not b!1233754))

(assert (not b!1233759))

(assert (not b!1233760))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

