; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102312 () Bool)

(assert start!102312)

(declare-fun b!1230925 () Bool)

(declare-fun res!819497 () Bool)

(declare-fun e!698328 () Bool)

(assert (=> b!1230925 (=> (not res!819497) (not e!698328))))

(declare-datatypes ((List!27262 0))(
  ( (Nil!27259) (Cons!27258 (h!28467 (_ BitVec 64)) (t!40732 List!27262)) )
))
(declare-fun acc!823 () List!27262)

(declare-fun contains!7177 (List!27262 (_ BitVec 64)) Bool)

(assert (=> b!1230925 (= res!819497 (not (contains!7177 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!819500 () Bool)

(assert (=> start!102312 (=> (not res!819500) (not e!698328))))

(declare-datatypes ((array!79393 0))(
  ( (array!79394 (arr!38311 (Array (_ BitVec 32) (_ BitVec 64))) (size!38848 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79393)

(assert (=> start!102312 (= res!819500 (bvslt (size!38848 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102312 e!698328))

(declare-fun array_inv!29087 (array!79393) Bool)

(assert (=> start!102312 (array_inv!29087 a!3806)))

(assert (=> start!102312 true))

(declare-fun b!1230926 () Bool)

(declare-fun res!819498 () Bool)

(assert (=> b!1230926 (=> (not res!819498) (not e!698328))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79393 (_ BitVec 32) List!27262) Bool)

(assert (=> b!1230926 (= res!819498 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230927 () Bool)

(declare-fun res!819492 () Bool)

(assert (=> b!1230927 (=> (not res!819492) (not e!698328))))

(assert (=> b!1230927 (= res!819492 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38848 a!3806)) (bvslt from!3184 (size!38848 a!3806))))))

(declare-fun b!1230928 () Bool)

(declare-fun res!819496 () Bool)

(assert (=> b!1230928 (=> (not res!819496) (not e!698328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230928 (= res!819496 (validKeyInArray!0 (select (arr!38311 a!3806) from!3184)))))

(declare-fun b!1230929 () Bool)

(declare-fun res!819493 () Bool)

(assert (=> b!1230929 (=> (not res!819493) (not e!698328))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230929 (= res!819493 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230930 () Bool)

(declare-fun res!819495 () Bool)

(assert (=> b!1230930 (=> (not res!819495) (not e!698328))))

(declare-fun noDuplicate!1784 (List!27262) Bool)

(assert (=> b!1230930 (= res!819495 (noDuplicate!1784 acc!823))))

(declare-fun b!1230931 () Bool)

(declare-fun res!819499 () Bool)

(assert (=> b!1230931 (=> (not res!819499) (not e!698328))))

(assert (=> b!1230931 (= res!819499 (validKeyInArray!0 k0!2913))))

(declare-fun b!1230932 () Bool)

(declare-fun res!819494 () Bool)

(assert (=> b!1230932 (=> (not res!819494) (not e!698328))))

(assert (=> b!1230932 (= res!819494 (not (contains!7177 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230933 () Bool)

(assert (=> b!1230933 (= e!698328 (not true))))

(assert (=> b!1230933 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27258 (select (arr!38311 a!3806) from!3184) acc!823))))

(assert (= (and start!102312 res!819500) b!1230931))

(assert (= (and b!1230931 res!819499) b!1230927))

(assert (= (and b!1230927 res!819492) b!1230930))

(assert (= (and b!1230930 res!819495) b!1230925))

(assert (= (and b!1230925 res!819497) b!1230932))

(assert (= (and b!1230932 res!819494) b!1230929))

(assert (= (and b!1230929 res!819493) b!1230926))

(assert (= (and b!1230926 res!819498) b!1230928))

(assert (= (and b!1230928 res!819496) b!1230933))

(declare-fun m!1135261 () Bool)

(assert (=> b!1230929 m!1135261))

(declare-fun m!1135263 () Bool)

(assert (=> b!1230926 m!1135263))

(declare-fun m!1135265 () Bool)

(assert (=> b!1230925 m!1135265))

(declare-fun m!1135267 () Bool)

(assert (=> b!1230931 m!1135267))

(declare-fun m!1135269 () Bool)

(assert (=> b!1230932 m!1135269))

(declare-fun m!1135271 () Bool)

(assert (=> b!1230930 m!1135271))

(declare-fun m!1135273 () Bool)

(assert (=> start!102312 m!1135273))

(declare-fun m!1135275 () Bool)

(assert (=> b!1230933 m!1135275))

(declare-fun m!1135277 () Bool)

(assert (=> b!1230933 m!1135277))

(assert (=> b!1230928 m!1135275))

(assert (=> b!1230928 m!1135275))

(declare-fun m!1135279 () Bool)

(assert (=> b!1230928 m!1135279))

(check-sat (not b!1230926) (not b!1230928) (not b!1230931) (not b!1230933) (not start!102312) (not b!1230932) (not b!1230925) (not b!1230929) (not b!1230930))
(check-sat)
