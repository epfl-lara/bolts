; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102036 () Bool)

(assert start!102036)

(declare-fun b!1228107 () Bool)

(declare-fun res!816845 () Bool)

(declare-fun e!697152 () Bool)

(assert (=> b!1228107 (=> res!816845 e!697152)))

(declare-datatypes ((List!27196 0))(
  ( (Nil!27193) (Cons!27192 (h!28401 (_ BitVec 64)) (t!40666 List!27196)) )
))
(declare-fun contains!7111 (List!27196 (_ BitVec 64)) Bool)

(assert (=> b!1228107 (= res!816845 (contains!7111 Nil!27193 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228109 () Bool)

(declare-fun res!816838 () Bool)

(declare-fun e!697151 () Bool)

(assert (=> b!1228109 (=> (not res!816838) (not e!697151))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79252 0))(
  ( (array!79253 (arr!38245 (Array (_ BitVec 32) (_ BitVec 64))) (size!38782 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79252)

(assert (=> b!1228109 (= res!816838 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38782 a!3806)) (bvslt from!3184 (size!38782 a!3806))))))

(declare-fun b!1228110 () Bool)

(declare-fun res!816846 () Bool)

(assert (=> b!1228110 (=> res!816846 e!697152)))

(assert (=> b!1228110 (= res!816846 (contains!7111 Nil!27193 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228111 () Bool)

(declare-fun res!816844 () Bool)

(assert (=> b!1228111 (=> (not res!816844) (not e!697151))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228111 (= res!816844 (validKeyInArray!0 k0!2913))))

(declare-fun b!1228112 () Bool)

(declare-fun res!816842 () Bool)

(assert (=> b!1228112 (=> (not res!816842) (not e!697151))))

(assert (=> b!1228112 (= res!816842 (validKeyInArray!0 (select (arr!38245 a!3806) from!3184)))))

(declare-fun b!1228113 () Bool)

(declare-fun res!816839 () Bool)

(assert (=> b!1228113 (=> (not res!816839) (not e!697151))))

(declare-fun acc!823 () List!27196)

(assert (=> b!1228113 (= res!816839 (not (contains!7111 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228114 () Bool)

(declare-fun res!816843 () Bool)

(assert (=> b!1228114 (=> (not res!816843) (not e!697151))))

(declare-fun noDuplicate!1718 (List!27196) Bool)

(assert (=> b!1228114 (= res!816843 (noDuplicate!1718 acc!823))))

(declare-fun b!1228115 () Bool)

(declare-fun res!816847 () Bool)

(assert (=> b!1228115 (=> (not res!816847) (not e!697151))))

(declare-fun arrayContainsKey!0 (array!79252 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228115 (= res!816847 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228116 () Bool)

(assert (=> b!1228116 (= e!697151 (not e!697152))))

(declare-fun res!816836 () Bool)

(assert (=> b!1228116 (=> res!816836 e!697152)))

(assert (=> b!1228116 (= res!816836 (bvsgt from!3184 (size!38782 a!3806)))))

(declare-fun arrayNoDuplicates!0 (array!79252 (_ BitVec 32) List!27196) Bool)

(assert (=> b!1228116 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27192 (select (arr!38245 a!3806) from!3184) acc!823))))

(declare-fun b!1228117 () Bool)

(declare-fun res!816837 () Bool)

(assert (=> b!1228117 (=> (not res!816837) (not e!697151))))

(assert (=> b!1228117 (= res!816837 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!816841 () Bool)

(assert (=> start!102036 (=> (not res!816841) (not e!697151))))

(assert (=> start!102036 (= res!816841 (bvslt (size!38782 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102036 e!697151))

(declare-fun array_inv!29021 (array!79252) Bool)

(assert (=> start!102036 (array_inv!29021 a!3806)))

(assert (=> start!102036 true))

(declare-fun b!1228108 () Bool)

(assert (=> b!1228108 (= e!697152 true)))

(declare-datatypes ((Unit!40630 0))(
  ( (Unit!40631) )
))
(declare-fun lt!558911 () Unit!40630)

(declare-fun noDuplicateSubseq!51 (List!27196 List!27196) Unit!40630)

(assert (=> b!1228108 (= lt!558911 (noDuplicateSubseq!51 Nil!27193 acc!823))))

(declare-fun b!1228118 () Bool)

(declare-fun res!816848 () Bool)

(assert (=> b!1228118 (=> res!816848 e!697152)))

(declare-fun subseq!498 (List!27196 List!27196) Bool)

(assert (=> b!1228118 (= res!816848 (not (subseq!498 Nil!27193 acc!823)))))

(declare-fun b!1228119 () Bool)

(declare-fun res!816840 () Bool)

(assert (=> b!1228119 (=> (not res!816840) (not e!697151))))

(assert (=> b!1228119 (= res!816840 (not (contains!7111 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102036 res!816841) b!1228111))

(assert (= (and b!1228111 res!816844) b!1228109))

(assert (= (and b!1228109 res!816838) b!1228114))

(assert (= (and b!1228114 res!816843) b!1228119))

(assert (= (and b!1228119 res!816840) b!1228113))

(assert (= (and b!1228113 res!816839) b!1228115))

(assert (= (and b!1228115 res!816847) b!1228117))

(assert (= (and b!1228117 res!816837) b!1228112))

(assert (= (and b!1228112 res!816842) b!1228116))

(assert (= (and b!1228116 (not res!816836)) b!1228110))

(assert (= (and b!1228110 (not res!816846)) b!1228107))

(assert (= (and b!1228107 (not res!816845)) b!1228118))

(assert (= (and b!1228118 (not res!816848)) b!1228108))

(declare-fun m!1132725 () Bool)

(assert (=> b!1228107 m!1132725))

(declare-fun m!1132727 () Bool)

(assert (=> b!1228117 m!1132727))

(declare-fun m!1132729 () Bool)

(assert (=> b!1228115 m!1132729))

(declare-fun m!1132731 () Bool)

(assert (=> b!1228114 m!1132731))

(declare-fun m!1132733 () Bool)

(assert (=> b!1228110 m!1132733))

(declare-fun m!1132735 () Bool)

(assert (=> b!1228111 m!1132735))

(declare-fun m!1132737 () Bool)

(assert (=> b!1228108 m!1132737))

(declare-fun m!1132739 () Bool)

(assert (=> b!1228112 m!1132739))

(assert (=> b!1228112 m!1132739))

(declare-fun m!1132741 () Bool)

(assert (=> b!1228112 m!1132741))

(declare-fun m!1132743 () Bool)

(assert (=> b!1228119 m!1132743))

(assert (=> b!1228116 m!1132739))

(declare-fun m!1132745 () Bool)

(assert (=> b!1228116 m!1132745))

(declare-fun m!1132747 () Bool)

(assert (=> start!102036 m!1132747))

(declare-fun m!1132749 () Bool)

(assert (=> b!1228118 m!1132749))

(declare-fun m!1132751 () Bool)

(assert (=> b!1228113 m!1132751))

(check-sat (not b!1228115) (not b!1228110) (not b!1228113) (not b!1228112) (not b!1228107) (not b!1228108) (not start!102036) (not b!1228119) (not b!1228117) (not b!1228116) (not b!1228111) (not b!1228114) (not b!1228118))
(check-sat)
