; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102898 () Bool)

(assert start!102898)

(declare-fun b!1236266 () Bool)

(declare-fun res!824363 () Bool)

(declare-fun e!700798 () Bool)

(assert (=> b!1236266 (=> (not res!824363) (not e!700798))))

(declare-datatypes ((List!27397 0))(
  ( (Nil!27394) (Cons!27393 (h!28602 (_ BitVec 64)) (t!40867 List!27397)) )
))
(declare-fun acc!846 () List!27397)

(declare-fun noDuplicate!1919 (List!27397) Bool)

(assert (=> b!1236266 (= res!824363 (noDuplicate!1919 acc!846))))

(declare-fun b!1236267 () Bool)

(declare-fun res!824361 () Bool)

(assert (=> b!1236267 (=> (not res!824361) (not e!700798))))

(declare-datatypes ((array!79684 0))(
  ( (array!79685 (arr!38446 (Array (_ BitVec 32) (_ BitVec 64))) (size!38983 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79684)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79684 (_ BitVec 32) List!27397) Bool)

(assert (=> b!1236267 (= res!824361 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236268 () Bool)

(declare-fun res!824360 () Bool)

(assert (=> b!1236268 (=> (not res!824360) (not e!700798))))

(declare-fun contains!7312 (List!27397 (_ BitVec 64)) Bool)

(assert (=> b!1236268 (= res!824360 (not (contains!7312 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236269 () Bool)

(declare-fun res!824362 () Bool)

(assert (=> b!1236269 (=> (not res!824362) (not e!700798))))

(assert (=> b!1236269 (= res!824362 (not (contains!7312 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824359 () Bool)

(assert (=> start!102898 (=> (not res!824359) (not e!700798))))

(assert (=> start!102898 (= res!824359 (and (bvslt (size!38983 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38983 a!3835))))))

(assert (=> start!102898 e!700798))

(declare-fun array_inv!29222 (array!79684) Bool)

(assert (=> start!102898 (array_inv!29222 a!3835)))

(assert (=> start!102898 true))

(declare-fun b!1236270 () Bool)

(assert (=> b!1236270 (= e!700798 false)))

(declare-fun lt!560722 () Bool)

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1236270 (= lt!560722 (contains!7312 acc!846 k0!2925))))

(assert (= (and start!102898 res!824359) b!1236266))

(assert (= (and b!1236266 res!824363) b!1236268))

(assert (= (and b!1236268 res!824360) b!1236269))

(assert (= (and b!1236269 res!824362) b!1236267))

(assert (= (and b!1236267 res!824361) b!1236270))

(declare-fun m!1140155 () Bool)

(assert (=> start!102898 m!1140155))

(declare-fun m!1140157 () Bool)

(assert (=> b!1236269 m!1140157))

(declare-fun m!1140159 () Bool)

(assert (=> b!1236268 m!1140159))

(declare-fun m!1140161 () Bool)

(assert (=> b!1236267 m!1140161))

(declare-fun m!1140163 () Bool)

(assert (=> b!1236270 m!1140163))

(declare-fun m!1140165 () Bool)

(assert (=> b!1236266 m!1140165))

(check-sat (not b!1236270) (not b!1236269) (not start!102898) (not b!1236266) (not b!1236267) (not b!1236268))
(check-sat)
