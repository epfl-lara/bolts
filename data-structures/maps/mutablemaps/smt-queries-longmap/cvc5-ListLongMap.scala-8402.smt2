; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102232 () Bool)

(assert start!102232)

(declare-fun res!818834 () Bool)

(declare-fun e!698089 () Bool)

(assert (=> start!102232 (=> (not res!818834) (not e!698089))))

(declare-datatypes ((array!79346 0))(
  ( (array!79347 (arr!38289 (Array (_ BitVec 32) (_ BitVec 64))) (size!38826 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79346)

(assert (=> start!102232 (= res!818834 (bvslt (size!38826 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102232 e!698089))

(declare-fun array_inv!29065 (array!79346) Bool)

(assert (=> start!102232 (array_inv!29065 a!3806)))

(assert (=> start!102232 true))

(declare-fun b!1230243 () Bool)

(declare-fun res!818839 () Bool)

(assert (=> b!1230243 (=> (not res!818839) (not e!698089))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79346 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230243 (= res!818839 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230244 () Bool)

(declare-fun res!818837 () Bool)

(assert (=> b!1230244 (=> (not res!818837) (not e!698089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230244 (= res!818837 (validKeyInArray!0 k!2913))))

(declare-fun b!1230245 () Bool)

(assert (=> b!1230245 (= e!698089 false)))

(declare-datatypes ((List!27240 0))(
  ( (Nil!27237) (Cons!27236 (h!28445 (_ BitVec 64)) (t!40710 List!27240)) )
))
(declare-fun acc!823 () List!27240)

(declare-fun lt!559301 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79346 (_ BitVec 32) List!27240) Bool)

(assert (=> b!1230245 (= lt!559301 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230246 () Bool)

(declare-fun res!818838 () Bool)

(assert (=> b!1230246 (=> (not res!818838) (not e!698089))))

(declare-fun noDuplicate!1762 (List!27240) Bool)

(assert (=> b!1230246 (= res!818838 (noDuplicate!1762 acc!823))))

(declare-fun b!1230247 () Bool)

(declare-fun res!818836 () Bool)

(assert (=> b!1230247 (=> (not res!818836) (not e!698089))))

(declare-fun contains!7155 (List!27240 (_ BitVec 64)) Bool)

(assert (=> b!1230247 (= res!818836 (not (contains!7155 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230248 () Bool)

(declare-fun res!818840 () Bool)

(assert (=> b!1230248 (=> (not res!818840) (not e!698089))))

(assert (=> b!1230248 (= res!818840 (not (contains!7155 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230249 () Bool)

(declare-fun res!818835 () Bool)

(assert (=> b!1230249 (=> (not res!818835) (not e!698089))))

(assert (=> b!1230249 (= res!818835 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38826 a!3806)) (bvslt from!3184 (size!38826 a!3806))))))

(assert (= (and start!102232 res!818834) b!1230244))

(assert (= (and b!1230244 res!818837) b!1230249))

(assert (= (and b!1230249 res!818835) b!1230246))

(assert (= (and b!1230246 res!818838) b!1230248))

(assert (= (and b!1230248 res!818840) b!1230247))

(assert (= (and b!1230247 res!818836) b!1230243))

(assert (= (and b!1230243 res!818839) b!1230245))

(declare-fun m!1134773 () Bool)

(assert (=> b!1230246 m!1134773))

(declare-fun m!1134775 () Bool)

(assert (=> b!1230243 m!1134775))

(declare-fun m!1134777 () Bool)

(assert (=> b!1230244 m!1134777))

(declare-fun m!1134779 () Bool)

(assert (=> b!1230248 m!1134779))

(declare-fun m!1134781 () Bool)

(assert (=> start!102232 m!1134781))

(declare-fun m!1134783 () Bool)

(assert (=> b!1230247 m!1134783))

(declare-fun m!1134785 () Bool)

(assert (=> b!1230245 m!1134785))

(push 1)

(assert (not b!1230244))

(assert (not b!1230246))

(assert (not start!102232))

(assert (not b!1230247))

(assert (not b!1230243))

(assert (not b!1230248))

(assert (not b!1230245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

