; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102694 () Bool)

(assert start!102694)

(declare-fun b!1233978 () Bool)

(declare-fun res!822274 () Bool)

(declare-fun e!699958 () Bool)

(assert (=> b!1233978 (=> (not res!822274) (not e!699958))))

(declare-datatypes ((List!27319 0))(
  ( (Nil!27316) (Cons!27315 (h!28524 (_ BitVec 64)) (t!40789 List!27319)) )
))
(declare-fun acc!823 () List!27319)

(declare-fun contains!7234 (List!27319 (_ BitVec 64)) Bool)

(assert (=> b!1233978 (= res!822274 (not (contains!7234 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!822272 () Bool)

(assert (=> start!102694 (=> (not res!822272) (not e!699958))))

(declare-datatypes ((array!79525 0))(
  ( (array!79526 (arr!38368 (Array (_ BitVec 32) (_ BitVec 64))) (size!38905 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79525)

(assert (=> start!102694 (= res!822272 (bvslt (size!38905 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102694 e!699958))

(declare-fun array_inv!29144 (array!79525) Bool)

(assert (=> start!102694 (array_inv!29144 a!3806)))

(assert (=> start!102694 true))

(declare-fun b!1233979 () Bool)

(declare-fun res!822270 () Bool)

(assert (=> b!1233979 (=> (not res!822270) (not e!699958))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233979 (= res!822270 (validKeyInArray!0 k0!2913))))

(declare-fun b!1233980 () Bool)

(declare-fun res!822269 () Bool)

(assert (=> b!1233980 (=> (not res!822269) (not e!699958))))

(assert (=> b!1233980 (= res!822269 (not (contains!7234 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233981 () Bool)

(declare-fun res!822275 () Bool)

(assert (=> b!1233981 (=> (not res!822275) (not e!699958))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1233981 (= res!822275 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38905 a!3806)) (bvslt from!3184 (size!38905 a!3806))))))

(declare-fun b!1233982 () Bool)

(declare-fun res!822271 () Bool)

(assert (=> b!1233982 (=> (not res!822271) (not e!699958))))

(declare-fun arrayContainsKey!0 (array!79525 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233982 (= res!822271 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233983 () Bool)

(assert (=> b!1233983 (= e!699958 false)))

(declare-fun lt!559735 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79525 (_ BitVec 32) List!27319) Bool)

(assert (=> b!1233983 (= lt!559735 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233984 () Bool)

(declare-fun res!822273 () Bool)

(assert (=> b!1233984 (=> (not res!822273) (not e!699958))))

(declare-fun noDuplicate!1841 (List!27319) Bool)

(assert (=> b!1233984 (= res!822273 (noDuplicate!1841 acc!823))))

(assert (= (and start!102694 res!822272) b!1233979))

(assert (= (and b!1233979 res!822270) b!1233981))

(assert (= (and b!1233981 res!822275) b!1233984))

(assert (= (and b!1233984 res!822273) b!1233978))

(assert (= (and b!1233978 res!822274) b!1233980))

(assert (= (and b!1233980 res!822269) b!1233982))

(assert (= (and b!1233982 res!822271) b!1233983))

(declare-fun m!1138087 () Bool)

(assert (=> b!1233978 m!1138087))

(declare-fun m!1138089 () Bool)

(assert (=> b!1233984 m!1138089))

(declare-fun m!1138091 () Bool)

(assert (=> b!1233980 m!1138091))

(declare-fun m!1138093 () Bool)

(assert (=> start!102694 m!1138093))

(declare-fun m!1138095 () Bool)

(assert (=> b!1233979 m!1138095))

(declare-fun m!1138097 () Bool)

(assert (=> b!1233982 m!1138097))

(declare-fun m!1138099 () Bool)

(assert (=> b!1233983 m!1138099))

(check-sat (not b!1233980) (not b!1233984) (not b!1233979) (not b!1233983) (not b!1233982) (not b!1233978) (not start!102694))
