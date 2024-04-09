; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102240 () Bool)

(assert start!102240)

(declare-fun b!1230327 () Bool)

(declare-fun res!818918 () Bool)

(declare-fun e!698112 () Bool)

(assert (=> b!1230327 (=> (not res!818918) (not e!698112))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79354 0))(
  ( (array!79355 (arr!38293 (Array (_ BitVec 32) (_ BitVec 64))) (size!38830 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79354)

(assert (=> b!1230327 (= res!818918 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38830 a!3806)) (bvslt from!3184 (size!38830 a!3806))))))

(declare-fun b!1230328 () Bool)

(declare-fun res!818919 () Bool)

(assert (=> b!1230328 (=> (not res!818919) (not e!698112))))

(declare-datatypes ((List!27244 0))(
  ( (Nil!27241) (Cons!27240 (h!28449 (_ BitVec 64)) (t!40714 List!27244)) )
))
(declare-fun acc!823 () List!27244)

(declare-fun contains!7159 (List!27244 (_ BitVec 64)) Bool)

(assert (=> b!1230328 (= res!818919 (not (contains!7159 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230329 () Bool)

(declare-fun res!818922 () Bool)

(assert (=> b!1230329 (=> (not res!818922) (not e!698112))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79354 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230329 (= res!818922 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230330 () Bool)

(declare-fun res!818920 () Bool)

(assert (=> b!1230330 (=> (not res!818920) (not e!698112))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230330 (= res!818920 (validKeyInArray!0 k0!2913))))

(declare-fun b!1230331 () Bool)

(assert (=> b!1230331 (= e!698112 false)))

(declare-fun lt!559313 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79354 (_ BitVec 32) List!27244) Bool)

(assert (=> b!1230331 (= lt!559313 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!818924 () Bool)

(assert (=> start!102240 (=> (not res!818924) (not e!698112))))

(assert (=> start!102240 (= res!818924 (bvslt (size!38830 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102240 e!698112))

(declare-fun array_inv!29069 (array!79354) Bool)

(assert (=> start!102240 (array_inv!29069 a!3806)))

(assert (=> start!102240 true))

(declare-fun b!1230332 () Bool)

(declare-fun res!818923 () Bool)

(assert (=> b!1230332 (=> (not res!818923) (not e!698112))))

(assert (=> b!1230332 (= res!818923 (not (contains!7159 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230333 () Bool)

(declare-fun res!818921 () Bool)

(assert (=> b!1230333 (=> (not res!818921) (not e!698112))))

(declare-fun noDuplicate!1766 (List!27244) Bool)

(assert (=> b!1230333 (= res!818921 (noDuplicate!1766 acc!823))))

(assert (= (and start!102240 res!818924) b!1230330))

(assert (= (and b!1230330 res!818920) b!1230327))

(assert (= (and b!1230327 res!818918) b!1230333))

(assert (= (and b!1230333 res!818921) b!1230328))

(assert (= (and b!1230328 res!818919) b!1230332))

(assert (= (and b!1230332 res!818923) b!1230329))

(assert (= (and b!1230329 res!818922) b!1230331))

(declare-fun m!1134829 () Bool)

(assert (=> b!1230330 m!1134829))

(declare-fun m!1134831 () Bool)

(assert (=> b!1230329 m!1134831))

(declare-fun m!1134833 () Bool)

(assert (=> b!1230333 m!1134833))

(declare-fun m!1134835 () Bool)

(assert (=> start!102240 m!1134835))

(declare-fun m!1134837 () Bool)

(assert (=> b!1230331 m!1134837))

(declare-fun m!1134839 () Bool)

(assert (=> b!1230332 m!1134839))

(declare-fun m!1134841 () Bool)

(assert (=> b!1230328 m!1134841))

(check-sat (not b!1230332) (not start!102240) (not b!1230331) (not b!1230329) (not b!1230330) (not b!1230333) (not b!1230328))
(check-sat)
