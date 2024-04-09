; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102686 () Bool)

(assert start!102686)

(declare-fun res!822170 () Bool)

(declare-fun e!699928 () Bool)

(assert (=> start!102686 (=> (not res!822170) (not e!699928))))

(declare-datatypes ((array!79517 0))(
  ( (array!79518 (arr!38364 (Array (_ BitVec 32) (_ BitVec 64))) (size!38901 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79517)

(assert (=> start!102686 (= res!822170 (bvslt (size!38901 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102686 e!699928))

(declare-fun array_inv!29140 (array!79517) Bool)

(assert (=> start!102686 (array_inv!29140 a!3806)))

(assert (=> start!102686 true))

(declare-fun b!1233873 () Bool)

(declare-fun res!822172 () Bool)

(assert (=> b!1233873 (=> (not res!822172) (not e!699928))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1233873 (= res!822172 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38901 a!3806)) (bvslt from!3184 (size!38901 a!3806))))))

(declare-fun b!1233874 () Bool)

(declare-fun res!822173 () Bool)

(assert (=> b!1233874 (=> (not res!822173) (not e!699928))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79517 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233874 (= res!822173 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233875 () Bool)

(declare-fun res!822169 () Bool)

(assert (=> b!1233875 (=> (not res!822169) (not e!699928))))

(declare-datatypes ((List!27315 0))(
  ( (Nil!27312) (Cons!27311 (h!28520 (_ BitVec 64)) (t!40785 List!27315)) )
))
(declare-fun acc!823 () List!27315)

(declare-fun contains!7230 (List!27315 (_ BitVec 64)) Bool)

(assert (=> b!1233875 (= res!822169 (not (contains!7230 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233876 () Bool)

(declare-fun e!699927 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79517 (_ BitVec 32) List!27315) Bool)

(assert (=> b!1233876 (= e!699927 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27311 (select (arr!38364 a!3806) from!3184) Nil!27312)))))

(declare-fun b!1233877 () Bool)

(assert (=> b!1233877 (= e!699928 (not (not (= (select (arr!38364 a!3806) from!3184) k!2913))))))

(assert (=> b!1233877 (not (arrayContainsKey!0 a!3806 (select (arr!38364 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40808 0))(
  ( (Unit!40809) )
))
(declare-fun lt!559717 () Unit!40808)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79517 (_ BitVec 32) (_ BitVec 64) List!27315) Unit!40808)

(assert (=> b!1233877 (= lt!559717 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38364 a!3806) from!3184) (Cons!27311 (select (arr!38364 a!3806) from!3184) Nil!27312)))))

(assert (=> b!1233877 e!699927))

(declare-fun res!822168 () Bool)

(assert (=> b!1233877 (=> (not res!822168) (not e!699927))))

(assert (=> b!1233877 (= res!822168 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27312))))

(declare-fun lt!559716 () Unit!40808)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79517 List!27315 List!27315 (_ BitVec 32)) Unit!40808)

(assert (=> b!1233877 (= lt!559716 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27312 from!3184))))

(assert (=> b!1233877 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27311 (select (arr!38364 a!3806) from!3184) acc!823))))

(declare-fun b!1233878 () Bool)

(declare-fun res!822167 () Bool)

(assert (=> b!1233878 (=> (not res!822167) (not e!699928))))

(declare-fun noDuplicate!1837 (List!27315) Bool)

(assert (=> b!1233878 (= res!822167 (noDuplicate!1837 acc!823))))

(declare-fun b!1233879 () Bool)

(declare-fun res!822171 () Bool)

(assert (=> b!1233879 (=> (not res!822171) (not e!699928))))

(assert (=> b!1233879 (= res!822171 (not (contains!7230 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233880 () Bool)

(declare-fun res!822165 () Bool)

(assert (=> b!1233880 (=> (not res!822165) (not e!699928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233880 (= res!822165 (validKeyInArray!0 k!2913))))

(declare-fun b!1233881 () Bool)

(declare-fun res!822166 () Bool)

(assert (=> b!1233881 (=> (not res!822166) (not e!699928))))

(assert (=> b!1233881 (= res!822166 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233882 () Bool)

(declare-fun res!822164 () Bool)

(assert (=> b!1233882 (=> (not res!822164) (not e!699928))))

(assert (=> b!1233882 (= res!822164 (validKeyInArray!0 (select (arr!38364 a!3806) from!3184)))))

(assert (= (and start!102686 res!822170) b!1233880))

(assert (= (and b!1233880 res!822165) b!1233873))

(assert (= (and b!1233873 res!822172) b!1233878))

(assert (= (and b!1233878 res!822167) b!1233875))

(assert (= (and b!1233875 res!822169) b!1233879))

(assert (= (and b!1233879 res!822171) b!1233874))

(assert (= (and b!1233874 res!822173) b!1233881))

(assert (= (and b!1233881 res!822166) b!1233882))

(assert (= (and b!1233882 res!822164) b!1233877))

(assert (= (and b!1233877 res!822168) b!1233876))

(declare-fun m!1137983 () Bool)

(assert (=> b!1233877 m!1137983))

(declare-fun m!1137985 () Bool)

(assert (=> b!1233877 m!1137985))

(declare-fun m!1137987 () Bool)

(assert (=> b!1233877 m!1137987))

(declare-fun m!1137989 () Bool)

(assert (=> b!1233877 m!1137989))

(assert (=> b!1233877 m!1137987))

(declare-fun m!1137991 () Bool)

(assert (=> b!1233877 m!1137991))

(assert (=> b!1233877 m!1137987))

(declare-fun m!1137993 () Bool)

(assert (=> b!1233877 m!1137993))

(assert (=> b!1233876 m!1137987))

(declare-fun m!1137995 () Bool)

(assert (=> b!1233876 m!1137995))

(declare-fun m!1137997 () Bool)

(assert (=> b!1233881 m!1137997))

(declare-fun m!1137999 () Bool)

(assert (=> b!1233880 m!1137999))

(declare-fun m!1138001 () Bool)

(assert (=> b!1233875 m!1138001))

(declare-fun m!1138003 () Bool)

(assert (=> start!102686 m!1138003))

(declare-fun m!1138005 () Bool)

(assert (=> b!1233874 m!1138005))

(declare-fun m!1138007 () Bool)

(assert (=> b!1233878 m!1138007))

(declare-fun m!1138009 () Bool)

(assert (=> b!1233879 m!1138009))

(assert (=> b!1233882 m!1137987))

(assert (=> b!1233882 m!1137987))

(declare-fun m!1138011 () Bool)

(assert (=> b!1233882 m!1138011))

(push 1)

