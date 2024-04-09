; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102724 () Bool)

(assert start!102724)

(declare-fun res!822484 () Bool)

(declare-fun e!700047 () Bool)

(assert (=> start!102724 (=> (not res!822484) (not e!700047))))

(declare-datatypes ((array!79555 0))(
  ( (array!79556 (arr!38383 (Array (_ BitVec 32) (_ BitVec 64))) (size!38920 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79555)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102724 (= res!822484 (and (bvslt (size!38920 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38920 a!3835))))))

(assert (=> start!102724 e!700047))

(declare-fun array_inv!29159 (array!79555) Bool)

(assert (=> start!102724 (array_inv!29159 a!3835)))

(assert (=> start!102724 true))

(declare-fun b!1234192 () Bool)

(declare-fun res!822485 () Bool)

(assert (=> b!1234192 (=> (not res!822485) (not e!700047))))

(declare-datatypes ((List!27334 0))(
  ( (Nil!27331) (Cons!27330 (h!28539 (_ BitVec 64)) (t!40804 List!27334)) )
))
(declare-fun acc!846 () List!27334)

(declare-fun noDuplicate!1856 (List!27334) Bool)

(assert (=> b!1234192 (= res!822485 (noDuplicate!1856 acc!846))))

(declare-fun b!1234193 () Bool)

(declare-fun res!822483 () Bool)

(assert (=> b!1234193 (=> (not res!822483) (not e!700047))))

(declare-fun contains!7249 (List!27334 (_ BitVec 64)) Bool)

(assert (=> b!1234193 (= res!822483 (not (contains!7249 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234194 () Bool)

(assert (=> b!1234194 (= e!700047 false)))

(declare-fun lt!559762 () Bool)

(assert (=> b!1234194 (= lt!559762 (contains!7249 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102724 res!822484) b!1234192))

(assert (= (and b!1234192 res!822485) b!1234193))

(assert (= (and b!1234193 res!822483) b!1234194))

(declare-fun m!1138249 () Bool)

(assert (=> start!102724 m!1138249))

(declare-fun m!1138251 () Bool)

(assert (=> b!1234192 m!1138251))

(declare-fun m!1138253 () Bool)

(assert (=> b!1234193 m!1138253))

(declare-fun m!1138255 () Bool)

(assert (=> b!1234194 m!1138255))

(check-sat (not b!1234192) (not b!1234193) (not start!102724) (not b!1234194))
(check-sat)
