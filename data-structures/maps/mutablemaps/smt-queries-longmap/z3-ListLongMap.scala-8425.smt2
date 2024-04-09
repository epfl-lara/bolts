; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102676 () Bool)

(assert start!102676)

(declare-fun b!1233723 () Bool)

(declare-fun e!699881 () Bool)

(assert (=> b!1233723 (= e!699881 (not true))))

(declare-datatypes ((array!79507 0))(
  ( (array!79508 (arr!38359 (Array (_ BitVec 32) (_ BitVec 64))) (size!38896 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79507)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79507 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233723 (not (arrayContainsKey!0 a!3806 (select (arr!38359 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40798 0))(
  ( (Unit!40799) )
))
(declare-fun lt!559687 () Unit!40798)

(declare-datatypes ((List!27310 0))(
  ( (Nil!27307) (Cons!27306 (h!28515 (_ BitVec 64)) (t!40780 List!27310)) )
))
(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79507 (_ BitVec 32) (_ BitVec 64) List!27310) Unit!40798)

(assert (=> b!1233723 (= lt!559687 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38359 a!3806) from!3184) (Cons!27306 (select (arr!38359 a!3806) from!3184) Nil!27307)))))

(declare-fun e!699883 () Bool)

(assert (=> b!1233723 e!699883))

(declare-fun res!822021 () Bool)

(assert (=> b!1233723 (=> (not res!822021) (not e!699883))))

(declare-fun arrayNoDuplicates!0 (array!79507 (_ BitVec 32) List!27310) Bool)

(assert (=> b!1233723 (= res!822021 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27307))))

(declare-fun lt!559686 () Unit!40798)

(declare-fun acc!823 () List!27310)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79507 List!27310 List!27310 (_ BitVec 32)) Unit!40798)

(assert (=> b!1233723 (= lt!559686 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27307 from!3184))))

(assert (=> b!1233723 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27306 (select (arr!38359 a!3806) from!3184) acc!823))))

(declare-fun b!1233724 () Bool)

(declare-fun res!822017 () Bool)

(assert (=> b!1233724 (=> (not res!822017) (not e!699881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233724 (= res!822017 (validKeyInArray!0 (select (arr!38359 a!3806) from!3184)))))

(declare-fun b!1233726 () Bool)

(declare-fun res!822018 () Bool)

(assert (=> b!1233726 (=> (not res!822018) (not e!699881))))

(declare-fun contains!7225 (List!27310 (_ BitVec 64)) Bool)

(assert (=> b!1233726 (= res!822018 (not (contains!7225 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233727 () Bool)

(declare-fun res!822020 () Bool)

(assert (=> b!1233727 (=> (not res!822020) (not e!699881))))

(declare-fun noDuplicate!1832 (List!27310) Bool)

(assert (=> b!1233727 (= res!822020 (noDuplicate!1832 acc!823))))

(declare-fun b!1233728 () Bool)

(assert (=> b!1233728 (= e!699883 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27306 (select (arr!38359 a!3806) from!3184) Nil!27307)))))

(declare-fun b!1233729 () Bool)

(declare-fun res!822022 () Bool)

(assert (=> b!1233729 (=> (not res!822022) (not e!699881))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1233729 (= res!822022 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233730 () Bool)

(declare-fun res!822019 () Bool)

(assert (=> b!1233730 (=> (not res!822019) (not e!699881))))

(assert (=> b!1233730 (= res!822019 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38896 a!3806)) (bvslt from!3184 (size!38896 a!3806))))))

(declare-fun b!1233731 () Bool)

(declare-fun res!822015 () Bool)

(assert (=> b!1233731 (=> (not res!822015) (not e!699881))))

(assert (=> b!1233731 (= res!822015 (not (contains!7225 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233732 () Bool)

(declare-fun res!822016 () Bool)

(assert (=> b!1233732 (=> (not res!822016) (not e!699881))))

(assert (=> b!1233732 (= res!822016 (validKeyInArray!0 k0!2913))))

(declare-fun b!1233725 () Bool)

(declare-fun res!822023 () Bool)

(assert (=> b!1233725 (=> (not res!822023) (not e!699881))))

(assert (=> b!1233725 (= res!822023 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!822014 () Bool)

(assert (=> start!102676 (=> (not res!822014) (not e!699881))))

(assert (=> start!102676 (= res!822014 (bvslt (size!38896 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102676 e!699881))

(declare-fun array_inv!29135 (array!79507) Bool)

(assert (=> start!102676 (array_inv!29135 a!3806)))

(assert (=> start!102676 true))

(assert (= (and start!102676 res!822014) b!1233732))

(assert (= (and b!1233732 res!822016) b!1233730))

(assert (= (and b!1233730 res!822019) b!1233727))

(assert (= (and b!1233727 res!822020) b!1233726))

(assert (= (and b!1233726 res!822018) b!1233731))

(assert (= (and b!1233731 res!822015) b!1233729))

(assert (= (and b!1233729 res!822022) b!1233725))

(assert (= (and b!1233725 res!822023) b!1233724))

(assert (= (and b!1233724 res!822017) b!1233723))

(assert (= (and b!1233723 res!822021) b!1233728))

(declare-fun m!1137833 () Bool)

(assert (=> b!1233723 m!1137833))

(declare-fun m!1137835 () Bool)

(assert (=> b!1233723 m!1137835))

(declare-fun m!1137837 () Bool)

(assert (=> b!1233723 m!1137837))

(declare-fun m!1137839 () Bool)

(assert (=> b!1233723 m!1137839))

(assert (=> b!1233723 m!1137837))

(declare-fun m!1137841 () Bool)

(assert (=> b!1233723 m!1137841))

(assert (=> b!1233723 m!1137837))

(declare-fun m!1137843 () Bool)

(assert (=> b!1233723 m!1137843))

(assert (=> b!1233724 m!1137837))

(assert (=> b!1233724 m!1137837))

(declare-fun m!1137845 () Bool)

(assert (=> b!1233724 m!1137845))

(assert (=> b!1233728 m!1137837))

(declare-fun m!1137847 () Bool)

(assert (=> b!1233728 m!1137847))

(declare-fun m!1137849 () Bool)

(assert (=> b!1233732 m!1137849))

(declare-fun m!1137851 () Bool)

(assert (=> b!1233726 m!1137851))

(declare-fun m!1137853 () Bool)

(assert (=> b!1233725 m!1137853))

(declare-fun m!1137855 () Bool)

(assert (=> b!1233731 m!1137855))

(declare-fun m!1137857 () Bool)

(assert (=> b!1233727 m!1137857))

(declare-fun m!1137859 () Bool)

(assert (=> b!1233729 m!1137859))

(declare-fun m!1137861 () Bool)

(assert (=> start!102676 m!1137861))

(check-sat (not b!1233728) (not b!1233723) (not b!1233729) (not b!1233726) (not start!102676) (not b!1233724) (not b!1233725) (not b!1233727) (not b!1233731) (not b!1233732))
(check-sat)
