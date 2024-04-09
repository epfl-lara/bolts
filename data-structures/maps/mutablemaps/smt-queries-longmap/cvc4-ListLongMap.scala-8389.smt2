; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102050 () Bool)

(assert start!102050)

(declare-fun res!817047 () Bool)

(declare-fun e!697197 () Bool)

(assert (=> start!102050 (=> (not res!817047) (not e!697197))))

(declare-datatypes ((array!79266 0))(
  ( (array!79267 (arr!38252 (Array (_ BitVec 32) (_ BitVec 64))) (size!38789 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79266)

(assert (=> start!102050 (= res!817047 (bvslt (size!38789 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102050 e!697197))

(declare-fun array_inv!29028 (array!79266) Bool)

(assert (=> start!102050 (array_inv!29028 a!3806)))

(assert (=> start!102050 true))

(declare-fun b!1228312 () Bool)

(declare-fun res!817049 () Bool)

(assert (=> b!1228312 (=> (not res!817049) (not e!697197))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228312 (= res!817049 (validKeyInArray!0 (select (arr!38252 a!3806) from!3184)))))

(declare-fun b!1228313 () Bool)

(declare-fun res!817042 () Bool)

(assert (=> b!1228313 (=> (not res!817042) (not e!697197))))

(declare-datatypes ((List!27203 0))(
  ( (Nil!27200) (Cons!27199 (h!28408 (_ BitVec 64)) (t!40673 List!27203)) )
))
(declare-fun acc!823 () List!27203)

(declare-fun noDuplicate!1725 (List!27203) Bool)

(assert (=> b!1228313 (= res!817042 (noDuplicate!1725 acc!823))))

(declare-fun b!1228314 () Bool)

(declare-fun res!817045 () Bool)

(assert (=> b!1228314 (=> (not res!817045) (not e!697197))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79266 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228314 (= res!817045 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228315 () Bool)

(declare-fun res!817044 () Bool)

(assert (=> b!1228315 (=> (not res!817044) (not e!697197))))

(declare-fun contains!7118 (List!27203 (_ BitVec 64)) Bool)

(assert (=> b!1228315 (= res!817044 (not (contains!7118 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228316 () Bool)

(declare-fun res!817043 () Bool)

(assert (=> b!1228316 (=> (not res!817043) (not e!697197))))

(assert (=> b!1228316 (= res!817043 (not (contains!7118 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228317 () Bool)

(declare-fun res!817046 () Bool)

(assert (=> b!1228317 (=> (not res!817046) (not e!697197))))

(assert (=> b!1228317 (= res!817046 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38789 a!3806)) (bvslt from!3184 (size!38789 a!3806))))))

(declare-fun b!1228318 () Bool)

(declare-fun res!817048 () Bool)

(assert (=> b!1228318 (=> (not res!817048) (not e!697197))))

(assert (=> b!1228318 (= res!817048 (validKeyInArray!0 k!2913))))

(declare-fun b!1228319 () Bool)

(declare-fun res!817041 () Bool)

(assert (=> b!1228319 (=> (not res!817041) (not e!697197))))

(declare-fun arrayNoDuplicates!0 (array!79266 (_ BitVec 32) List!27203) Bool)

(assert (=> b!1228319 (= res!817041 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228320 () Bool)

(assert (=> b!1228320 (= e!697197 (not true))))

(assert (=> b!1228320 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27200)))

(declare-datatypes ((Unit!40644 0))(
  ( (Unit!40645) )
))
(declare-fun lt!558932 () Unit!40644)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79266 List!27203 List!27203 (_ BitVec 32)) Unit!40644)

(assert (=> b!1228320 (= lt!558932 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27200 from!3184))))

(assert (=> b!1228320 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27199 (select (arr!38252 a!3806) from!3184) acc!823))))

(assert (= (and start!102050 res!817047) b!1228318))

(assert (= (and b!1228318 res!817048) b!1228317))

(assert (= (and b!1228317 res!817046) b!1228313))

(assert (= (and b!1228313 res!817042) b!1228315))

(assert (= (and b!1228315 res!817044) b!1228316))

(assert (= (and b!1228316 res!817043) b!1228314))

(assert (= (and b!1228314 res!817045) b!1228319))

(assert (= (and b!1228319 res!817041) b!1228312))

(assert (= (and b!1228312 res!817049) b!1228320))

(declare-fun m!1132901 () Bool)

(assert (=> b!1228315 m!1132901))

(declare-fun m!1132903 () Bool)

(assert (=> start!102050 m!1132903))

(declare-fun m!1132905 () Bool)

(assert (=> b!1228320 m!1132905))

(declare-fun m!1132907 () Bool)

(assert (=> b!1228320 m!1132907))

(declare-fun m!1132909 () Bool)

(assert (=> b!1228320 m!1132909))

(declare-fun m!1132911 () Bool)

(assert (=> b!1228320 m!1132911))

(declare-fun m!1132913 () Bool)

(assert (=> b!1228314 m!1132913))

(declare-fun m!1132915 () Bool)

(assert (=> b!1228318 m!1132915))

(declare-fun m!1132917 () Bool)

(assert (=> b!1228319 m!1132917))

(assert (=> b!1228312 m!1132909))

(assert (=> b!1228312 m!1132909))

(declare-fun m!1132919 () Bool)

(assert (=> b!1228312 m!1132919))

(declare-fun m!1132921 () Bool)

(assert (=> b!1228313 m!1132921))

(declare-fun m!1132923 () Bool)

(assert (=> b!1228316 m!1132923))

(push 1)

(assert (not b!1228319))

(assert (not start!102050))

(assert (not b!1228320))

(assert (not b!1228314))

(assert (not b!1228316))

(assert (not b!1228313))

(assert (not b!1228318))

(assert (not b!1228312))

(assert (not b!1228315))

(check-sat)

