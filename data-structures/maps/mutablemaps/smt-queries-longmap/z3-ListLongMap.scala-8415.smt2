; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102468 () Bool)

(assert start!102468)

(declare-fun b!1231947 () Bool)

(declare-fun res!820432 () Bool)

(declare-fun e!698887 () Bool)

(assert (=> b!1231947 (=> (not res!820432) (not e!698887))))

(declare-datatypes ((array!79438 0))(
  ( (array!79439 (arr!38329 (Array (_ BitVec 32) (_ BitVec 64))) (size!38866 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79438)

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79438 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231947 (= res!820432 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231948 () Bool)

(declare-fun res!820439 () Bool)

(assert (=> b!1231948 (=> (not res!820439) (not e!698887))))

(declare-datatypes ((List!27280 0))(
  ( (Nil!27277) (Cons!27276 (h!28485 (_ BitVec 64)) (t!40750 List!27280)) )
))
(declare-fun acc!823 () List!27280)

(declare-fun contains!7195 (List!27280 (_ BitVec 64)) Bool)

(assert (=> b!1231948 (= res!820439 (not (contains!7195 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231949 () Bool)

(declare-fun res!820437 () Bool)

(assert (=> b!1231949 (=> (not res!820437) (not e!698887))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231949 (= res!820437 (validKeyInArray!0 k0!2913))))

(declare-fun b!1231950 () Bool)

(declare-fun res!820435 () Bool)

(assert (=> b!1231950 (=> (not res!820435) (not e!698887))))

(declare-fun noDuplicate!1802 (List!27280) Bool)

(assert (=> b!1231950 (= res!820435 (noDuplicate!1802 acc!823))))

(declare-fun res!820438 () Bool)

(assert (=> start!102468 (=> (not res!820438) (not e!698887))))

(assert (=> start!102468 (= res!820438 (bvslt (size!38866 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102468 e!698887))

(declare-fun array_inv!29105 (array!79438) Bool)

(assert (=> start!102468 (array_inv!29105 a!3806)))

(assert (=> start!102468 true))

(declare-fun b!1231951 () Bool)

(assert (=> b!1231951 (= e!698887 (not true))))

(declare-fun e!698886 () Bool)

(assert (=> b!1231951 e!698886))

(declare-fun res!820436 () Bool)

(assert (=> b!1231951 (=> (not res!820436) (not e!698886))))

(declare-fun arrayNoDuplicates!0 (array!79438 (_ BitVec 32) List!27280) Bool)

(assert (=> b!1231951 (= res!820436 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27277))))

(declare-datatypes ((Unit!40738 0))(
  ( (Unit!40739) )
))
(declare-fun lt!559418 () Unit!40738)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79438 List!27280 List!27280 (_ BitVec 32)) Unit!40738)

(assert (=> b!1231951 (= lt!559418 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27277 from!3184))))

(assert (=> b!1231951 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27276 (select (arr!38329 a!3806) from!3184) acc!823))))

(declare-fun b!1231952 () Bool)

(assert (=> b!1231952 (= e!698886 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27276 (select (arr!38329 a!3806) from!3184) Nil!27277)))))

(declare-fun b!1231953 () Bool)

(declare-fun res!820433 () Bool)

(assert (=> b!1231953 (=> (not res!820433) (not e!698887))))

(assert (=> b!1231953 (= res!820433 (validKeyInArray!0 (select (arr!38329 a!3806) from!3184)))))

(declare-fun b!1231954 () Bool)

(declare-fun res!820430 () Bool)

(assert (=> b!1231954 (=> (not res!820430) (not e!698887))))

(assert (=> b!1231954 (= res!820430 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38866 a!3806)) (bvslt from!3184 (size!38866 a!3806))))))

(declare-fun b!1231955 () Bool)

(declare-fun res!820431 () Bool)

(assert (=> b!1231955 (=> (not res!820431) (not e!698887))))

(assert (=> b!1231955 (= res!820431 (not (contains!7195 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231956 () Bool)

(declare-fun res!820434 () Bool)

(assert (=> b!1231956 (=> (not res!820434) (not e!698887))))

(assert (=> b!1231956 (= res!820434 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(assert (= (and start!102468 res!820438) b!1231949))

(assert (= (and b!1231949 res!820437) b!1231954))

(assert (= (and b!1231954 res!820430) b!1231950))

(assert (= (and b!1231950 res!820435) b!1231955))

(assert (= (and b!1231955 res!820431) b!1231948))

(assert (= (and b!1231948 res!820439) b!1231947))

(assert (= (and b!1231947 res!820432) b!1231956))

(assert (= (and b!1231956 res!820434) b!1231953))

(assert (= (and b!1231953 res!820433) b!1231951))

(assert (= (and b!1231951 res!820436) b!1231952))

(declare-fun m!1136065 () Bool)

(assert (=> b!1231952 m!1136065))

(declare-fun m!1136067 () Bool)

(assert (=> b!1231952 m!1136067))

(declare-fun m!1136069 () Bool)

(assert (=> b!1231947 m!1136069))

(declare-fun m!1136071 () Bool)

(assert (=> b!1231955 m!1136071))

(declare-fun m!1136073 () Bool)

(assert (=> start!102468 m!1136073))

(declare-fun m!1136075 () Bool)

(assert (=> b!1231948 m!1136075))

(declare-fun m!1136077 () Bool)

(assert (=> b!1231951 m!1136077))

(declare-fun m!1136079 () Bool)

(assert (=> b!1231951 m!1136079))

(assert (=> b!1231951 m!1136065))

(declare-fun m!1136081 () Bool)

(assert (=> b!1231951 m!1136081))

(declare-fun m!1136083 () Bool)

(assert (=> b!1231956 m!1136083))

(declare-fun m!1136085 () Bool)

(assert (=> b!1231949 m!1136085))

(declare-fun m!1136087 () Bool)

(assert (=> b!1231950 m!1136087))

(assert (=> b!1231953 m!1136065))

(assert (=> b!1231953 m!1136065))

(declare-fun m!1136089 () Bool)

(assert (=> b!1231953 m!1136089))

(check-sat (not b!1231956) (not start!102468) (not b!1231952) (not b!1231948) (not b!1231947) (not b!1231953) (not b!1231950) (not b!1231955) (not b!1231951) (not b!1231949))
(check-sat)
