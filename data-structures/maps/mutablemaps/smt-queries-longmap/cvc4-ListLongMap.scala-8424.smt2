; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102672 () Bool)

(assert start!102672)

(declare-fun b!1233663 () Bool)

(declare-fun res!821960 () Bool)

(declare-fun e!699864 () Bool)

(assert (=> b!1233663 (=> (not res!821960) (not e!699864))))

(declare-datatypes ((array!79503 0))(
  ( (array!79504 (arr!38357 (Array (_ BitVec 32) (_ BitVec 64))) (size!38894 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79503)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79503 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233663 (= res!821960 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233664 () Bool)

(declare-fun res!821957 () Bool)

(assert (=> b!1233664 (=> (not res!821957) (not e!699864))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233664 (= res!821957 (validKeyInArray!0 (select (arr!38357 a!3806) from!3184)))))

(declare-fun b!1233665 () Bool)

(declare-fun res!821954 () Bool)

(assert (=> b!1233665 (=> (not res!821954) (not e!699864))))

(assert (=> b!1233665 (= res!821954 (validKeyInArray!0 k!2913))))

(declare-fun b!1233666 () Bool)

(declare-fun res!821962 () Bool)

(assert (=> b!1233666 (=> (not res!821962) (not e!699864))))

(assert (=> b!1233666 (= res!821962 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38894 a!3806)) (bvslt from!3184 (size!38894 a!3806))))))

(declare-fun b!1233667 () Bool)

(declare-fun res!821958 () Bool)

(assert (=> b!1233667 (=> (not res!821958) (not e!699864))))

(declare-datatypes ((List!27308 0))(
  ( (Nil!27305) (Cons!27304 (h!28513 (_ BitVec 64)) (t!40778 List!27308)) )
))
(declare-fun acc!823 () List!27308)

(declare-fun contains!7223 (List!27308 (_ BitVec 64)) Bool)

(assert (=> b!1233667 (= res!821958 (not (contains!7223 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233668 () Bool)

(assert (=> b!1233668 (= e!699864 (not true))))

(assert (=> b!1233668 (not (arrayContainsKey!0 a!3806 (select (arr!38357 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40794 0))(
  ( (Unit!40795) )
))
(declare-fun lt!559674 () Unit!40794)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79503 (_ BitVec 32) (_ BitVec 64) List!27308) Unit!40794)

(assert (=> b!1233668 (= lt!559674 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38357 a!3806) from!3184) (Cons!27304 (select (arr!38357 a!3806) from!3184) Nil!27305)))))

(declare-fun e!699863 () Bool)

(assert (=> b!1233668 e!699863))

(declare-fun res!821956 () Bool)

(assert (=> b!1233668 (=> (not res!821956) (not e!699863))))

(declare-fun arrayNoDuplicates!0 (array!79503 (_ BitVec 32) List!27308) Bool)

(assert (=> b!1233668 (= res!821956 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27305))))

(declare-fun lt!559675 () Unit!40794)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79503 List!27308 List!27308 (_ BitVec 32)) Unit!40794)

(assert (=> b!1233668 (= lt!559675 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27305 from!3184))))

(assert (=> b!1233668 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27304 (select (arr!38357 a!3806) from!3184) acc!823))))

(declare-fun b!1233669 () Bool)

(declare-fun res!821959 () Bool)

(assert (=> b!1233669 (=> (not res!821959) (not e!699864))))

(assert (=> b!1233669 (= res!821959 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!821961 () Bool)

(assert (=> start!102672 (=> (not res!821961) (not e!699864))))

(assert (=> start!102672 (= res!821961 (bvslt (size!38894 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102672 e!699864))

(declare-fun array_inv!29133 (array!79503) Bool)

(assert (=> start!102672 (array_inv!29133 a!3806)))

(assert (=> start!102672 true))

(declare-fun b!1233670 () Bool)

(declare-fun res!821955 () Bool)

(assert (=> b!1233670 (=> (not res!821955) (not e!699864))))

(declare-fun noDuplicate!1830 (List!27308) Bool)

(assert (=> b!1233670 (= res!821955 (noDuplicate!1830 acc!823))))

(declare-fun b!1233671 () Bool)

(declare-fun res!821963 () Bool)

(assert (=> b!1233671 (=> (not res!821963) (not e!699864))))

(assert (=> b!1233671 (= res!821963 (not (contains!7223 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233672 () Bool)

(assert (=> b!1233672 (= e!699863 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27304 (select (arr!38357 a!3806) from!3184) Nil!27305)))))

(assert (= (and start!102672 res!821961) b!1233665))

(assert (= (and b!1233665 res!821954) b!1233666))

(assert (= (and b!1233666 res!821962) b!1233670))

(assert (= (and b!1233670 res!821955) b!1233667))

(assert (= (and b!1233667 res!821958) b!1233671))

(assert (= (and b!1233671 res!821963) b!1233663))

(assert (= (and b!1233663 res!821960) b!1233669))

(assert (= (and b!1233669 res!821959) b!1233664))

(assert (= (and b!1233664 res!821957) b!1233668))

(assert (= (and b!1233668 res!821956) b!1233672))

(declare-fun m!1137773 () Bool)

(assert (=> b!1233663 m!1137773))

(declare-fun m!1137775 () Bool)

(assert (=> b!1233672 m!1137775))

(declare-fun m!1137777 () Bool)

(assert (=> b!1233672 m!1137777))

(declare-fun m!1137779 () Bool)

(assert (=> b!1233671 m!1137779))

(declare-fun m!1137781 () Bool)

(assert (=> start!102672 m!1137781))

(declare-fun m!1137783 () Bool)

(assert (=> b!1233669 m!1137783))

(declare-fun m!1137785 () Bool)

(assert (=> b!1233667 m!1137785))

(declare-fun m!1137787 () Bool)

(assert (=> b!1233668 m!1137787))

(declare-fun m!1137789 () Bool)

(assert (=> b!1233668 m!1137789))

(assert (=> b!1233668 m!1137775))

(declare-fun m!1137791 () Bool)

(assert (=> b!1233668 m!1137791))

(assert (=> b!1233668 m!1137775))

(declare-fun m!1137793 () Bool)

(assert (=> b!1233668 m!1137793))

(assert (=> b!1233668 m!1137775))

(declare-fun m!1137795 () Bool)

(assert (=> b!1233668 m!1137795))

(declare-fun m!1137797 () Bool)

(assert (=> b!1233670 m!1137797))

(assert (=> b!1233664 m!1137775))

(assert (=> b!1233664 m!1137775))

(declare-fun m!1137799 () Bool)

(assert (=> b!1233664 m!1137799))

(declare-fun m!1137801 () Bool)

(assert (=> b!1233665 m!1137801))

(push 1)

(assert (not start!102672))

(assert (not b!1233670))

(assert (not b!1233667))

(assert (not b!1233663))

(assert (not b!1233668))

(assert (not b!1233672))

(assert (not b!1233664))

(assert (not b!1233671))

(assert (not b!1233665))

(assert (not b!1233669))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

