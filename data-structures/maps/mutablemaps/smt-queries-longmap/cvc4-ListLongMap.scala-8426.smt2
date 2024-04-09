; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102684 () Bool)

(assert start!102684)

(declare-fun b!1233843 () Bool)

(declare-fun res!822134 () Bool)

(declare-fun e!699919 () Bool)

(assert (=> b!1233843 (=> (not res!822134) (not e!699919))))

(declare-datatypes ((array!79515 0))(
  ( (array!79516 (arr!38363 (Array (_ BitVec 32) (_ BitVec 64))) (size!38900 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79515)

(declare-datatypes ((List!27314 0))(
  ( (Nil!27311) (Cons!27310 (h!28519 (_ BitVec 64)) (t!40784 List!27314)) )
))
(declare-fun acc!823 () List!27314)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79515 (_ BitVec 32) List!27314) Bool)

(assert (=> b!1233843 (= res!822134 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233844 () Bool)

(declare-fun res!822139 () Bool)

(assert (=> b!1233844 (=> (not res!822139) (not e!699919))))

(declare-fun contains!7229 (List!27314 (_ BitVec 64)) Bool)

(assert (=> b!1233844 (= res!822139 (not (contains!7229 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233845 () Bool)

(declare-fun e!699918 () Bool)

(assert (=> b!1233845 (= e!699918 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27310 (select (arr!38363 a!3806) from!3184) Nil!27311)))))

(declare-fun b!1233846 () Bool)

(declare-fun res!822137 () Bool)

(assert (=> b!1233846 (=> (not res!822137) (not e!699919))))

(declare-fun noDuplicate!1836 (List!27314) Bool)

(assert (=> b!1233846 (= res!822137 (noDuplicate!1836 acc!823))))

(declare-fun b!1233847 () Bool)

(declare-fun res!822136 () Bool)

(assert (=> b!1233847 (=> (not res!822136) (not e!699919))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79515 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233847 (= res!822136 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233848 () Bool)

(declare-fun res!822138 () Bool)

(assert (=> b!1233848 (=> (not res!822138) (not e!699919))))

(assert (=> b!1233848 (= res!822138 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38900 a!3806)) (bvslt from!3184 (size!38900 a!3806))))))

(declare-fun b!1233849 () Bool)

(declare-fun res!822141 () Bool)

(assert (=> b!1233849 (=> (not res!822141) (not e!699919))))

(assert (=> b!1233849 (= res!822141 (not (contains!7229 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233850 () Bool)

(assert (=> b!1233850 (= e!699919 (not true))))

(assert (=> b!1233850 (not (arrayContainsKey!0 a!3806 (select (arr!38363 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40806 0))(
  ( (Unit!40807) )
))
(declare-fun lt!559710 () Unit!40806)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79515 (_ BitVec 32) (_ BitVec 64) List!27314) Unit!40806)

(assert (=> b!1233850 (= lt!559710 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38363 a!3806) from!3184) (Cons!27310 (select (arr!38363 a!3806) from!3184) Nil!27311)))))

(assert (=> b!1233850 e!699918))

(declare-fun res!822140 () Bool)

(assert (=> b!1233850 (=> (not res!822140) (not e!699918))))

(assert (=> b!1233850 (= res!822140 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27311))))

(declare-fun lt!559711 () Unit!40806)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79515 List!27314 List!27314 (_ BitVec 32)) Unit!40806)

(assert (=> b!1233850 (= lt!559711 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27311 from!3184))))

(assert (=> b!1233850 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27310 (select (arr!38363 a!3806) from!3184) acc!823))))

(declare-fun res!822143 () Bool)

(assert (=> start!102684 (=> (not res!822143) (not e!699919))))

(assert (=> start!102684 (= res!822143 (bvslt (size!38900 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102684 e!699919))

(declare-fun array_inv!29139 (array!79515) Bool)

(assert (=> start!102684 (array_inv!29139 a!3806)))

(assert (=> start!102684 true))

(declare-fun b!1233851 () Bool)

(declare-fun res!822142 () Bool)

(assert (=> b!1233851 (=> (not res!822142) (not e!699919))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233851 (= res!822142 (validKeyInArray!0 k!2913))))

(declare-fun b!1233852 () Bool)

(declare-fun res!822135 () Bool)

(assert (=> b!1233852 (=> (not res!822135) (not e!699919))))

(assert (=> b!1233852 (= res!822135 (validKeyInArray!0 (select (arr!38363 a!3806) from!3184)))))

(assert (= (and start!102684 res!822143) b!1233851))

(assert (= (and b!1233851 res!822142) b!1233848))

(assert (= (and b!1233848 res!822138) b!1233846))

(assert (= (and b!1233846 res!822137) b!1233844))

(assert (= (and b!1233844 res!822139) b!1233849))

(assert (= (and b!1233849 res!822141) b!1233847))

(assert (= (and b!1233847 res!822136) b!1233843))

(assert (= (and b!1233843 res!822134) b!1233852))

(assert (= (and b!1233852 res!822135) b!1233850))

(assert (= (and b!1233850 res!822140) b!1233845))

(declare-fun m!1137953 () Bool)

(assert (=> b!1233852 m!1137953))

(assert (=> b!1233852 m!1137953))

(declare-fun m!1137955 () Bool)

(assert (=> b!1233852 m!1137955))

(declare-fun m!1137957 () Bool)

(assert (=> start!102684 m!1137957))

(declare-fun m!1137959 () Bool)

(assert (=> b!1233849 m!1137959))

(declare-fun m!1137961 () Bool)

(assert (=> b!1233844 m!1137961))

(declare-fun m!1137963 () Bool)

(assert (=> b!1233850 m!1137963))

(declare-fun m!1137965 () Bool)

(assert (=> b!1233850 m!1137965))

(assert (=> b!1233850 m!1137953))

(declare-fun m!1137967 () Bool)

(assert (=> b!1233850 m!1137967))

(assert (=> b!1233850 m!1137953))

(declare-fun m!1137969 () Bool)

(assert (=> b!1233850 m!1137969))

(assert (=> b!1233850 m!1137953))

(declare-fun m!1137971 () Bool)

(assert (=> b!1233850 m!1137971))

(assert (=> b!1233845 m!1137953))

(declare-fun m!1137973 () Bool)

(assert (=> b!1233845 m!1137973))

(declare-fun m!1137975 () Bool)

(assert (=> b!1233846 m!1137975))

(declare-fun m!1137977 () Bool)

(assert (=> b!1233851 m!1137977))

(declare-fun m!1137979 () Bool)

(assert (=> b!1233843 m!1137979))

(declare-fun m!1137981 () Bool)

(assert (=> b!1233847 m!1137981))

(push 1)

(assert (not b!1233844))

(assert (not b!1233852))

(assert (not b!1233847))

(assert (not start!102684))

(assert (not b!1233843))

(assert (not b!1233845))

(assert (not b!1233846))

(assert (not b!1233849))

(assert (not b!1233851))

(assert (not b!1233850))

(check-sat)

