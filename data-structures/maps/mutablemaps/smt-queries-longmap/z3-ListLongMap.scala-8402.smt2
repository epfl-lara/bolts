; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102234 () Bool)

(assert start!102234)

(declare-fun b!1230264 () Bool)

(declare-fun res!818857 () Bool)

(declare-fun e!698094 () Bool)

(assert (=> b!1230264 (=> (not res!818857) (not e!698094))))

(declare-datatypes ((List!27241 0))(
  ( (Nil!27238) (Cons!27237 (h!28446 (_ BitVec 64)) (t!40711 List!27241)) )
))
(declare-fun acc!823 () List!27241)

(declare-fun contains!7156 (List!27241 (_ BitVec 64)) Bool)

(assert (=> b!1230264 (= res!818857 (not (contains!7156 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230265 () Bool)

(declare-fun res!818856 () Bool)

(assert (=> b!1230265 (=> (not res!818856) (not e!698094))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79348 0))(
  ( (array!79349 (arr!38290 (Array (_ BitVec 32) (_ BitVec 64))) (size!38827 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79348)

(assert (=> b!1230265 (= res!818856 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38827 a!3806)) (bvslt from!3184 (size!38827 a!3806))))))

(declare-fun b!1230266 () Bool)

(declare-fun res!818855 () Bool)

(assert (=> b!1230266 (=> (not res!818855) (not e!698094))))

(declare-fun noDuplicate!1763 (List!27241) Bool)

(assert (=> b!1230266 (= res!818855 (noDuplicate!1763 acc!823))))

(declare-fun b!1230267 () Bool)

(declare-fun res!818859 () Bool)

(assert (=> b!1230267 (=> (not res!818859) (not e!698094))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230267 (= res!818859 (validKeyInArray!0 k0!2913))))

(declare-fun res!818861 () Bool)

(assert (=> start!102234 (=> (not res!818861) (not e!698094))))

(assert (=> start!102234 (= res!818861 (bvslt (size!38827 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102234 e!698094))

(declare-fun array_inv!29066 (array!79348) Bool)

(assert (=> start!102234 (array_inv!29066 a!3806)))

(assert (=> start!102234 true))

(declare-fun b!1230268 () Bool)

(declare-fun res!818858 () Bool)

(assert (=> b!1230268 (=> (not res!818858) (not e!698094))))

(assert (=> b!1230268 (= res!818858 (not (contains!7156 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230269 () Bool)

(assert (=> b!1230269 (= e!698094 false)))

(declare-fun lt!559304 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79348 (_ BitVec 32) List!27241) Bool)

(assert (=> b!1230269 (= lt!559304 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230270 () Bool)

(declare-fun res!818860 () Bool)

(assert (=> b!1230270 (=> (not res!818860) (not e!698094))))

(declare-fun arrayContainsKey!0 (array!79348 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230270 (= res!818860 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102234 res!818861) b!1230267))

(assert (= (and b!1230267 res!818859) b!1230265))

(assert (= (and b!1230265 res!818856) b!1230266))

(assert (= (and b!1230266 res!818855) b!1230264))

(assert (= (and b!1230264 res!818857) b!1230268))

(assert (= (and b!1230268 res!818858) b!1230270))

(assert (= (and b!1230270 res!818860) b!1230269))

(declare-fun m!1134787 () Bool)

(assert (=> b!1230264 m!1134787))

(declare-fun m!1134789 () Bool)

(assert (=> b!1230268 m!1134789))

(declare-fun m!1134791 () Bool)

(assert (=> b!1230269 m!1134791))

(declare-fun m!1134793 () Bool)

(assert (=> b!1230270 m!1134793))

(declare-fun m!1134795 () Bool)

(assert (=> b!1230267 m!1134795))

(declare-fun m!1134797 () Bool)

(assert (=> start!102234 m!1134797))

(declare-fun m!1134799 () Bool)

(assert (=> b!1230266 m!1134799))

(check-sat (not b!1230268) (not start!102234) (not b!1230264) (not b!1230269) (not b!1230267) (not b!1230266) (not b!1230270))
(check-sat)
