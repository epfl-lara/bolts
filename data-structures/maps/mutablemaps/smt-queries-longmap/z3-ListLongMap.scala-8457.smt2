; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102916 () Bool)

(assert start!102916)

(declare-fun b!1236410 () Bool)

(declare-fun res!824505 () Bool)

(declare-fun e!700851 () Bool)

(assert (=> b!1236410 (=> (not res!824505) (not e!700851))))

(declare-datatypes ((List!27406 0))(
  ( (Nil!27403) (Cons!27402 (h!28611 (_ BitVec 64)) (t!40876 List!27406)) )
))
(declare-fun acc!846 () List!27406)

(declare-fun noDuplicate!1928 (List!27406) Bool)

(assert (=> b!1236410 (= res!824505 (noDuplicate!1928 acc!846))))

(declare-fun b!1236411 () Bool)

(declare-fun res!824506 () Bool)

(assert (=> b!1236411 (=> (not res!824506) (not e!700851))))

(declare-fun contains!7321 (List!27406 (_ BitVec 64)) Bool)

(assert (=> b!1236411 (= res!824506 (not (contains!7321 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236412 () Bool)

(declare-fun res!824507 () Bool)

(assert (=> b!1236412 (=> (not res!824507) (not e!700851))))

(declare-datatypes ((array!79702 0))(
  ( (array!79703 (arr!38455 (Array (_ BitVec 32) (_ BitVec 64))) (size!38992 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79702)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79702 (_ BitVec 32) List!27406) Bool)

(assert (=> b!1236412 (= res!824507 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236413 () Bool)

(declare-fun res!824503 () Bool)

(assert (=> b!1236413 (=> (not res!824503) (not e!700851))))

(assert (=> b!1236413 (= res!824503 (not (contains!7321 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!824504 () Bool)

(assert (=> start!102916 (=> (not res!824504) (not e!700851))))

(assert (=> start!102916 (= res!824504 (and (bvslt (size!38992 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38992 a!3835))))))

(assert (=> start!102916 e!700851))

(declare-fun array_inv!29231 (array!79702) Bool)

(assert (=> start!102916 (array_inv!29231 a!3835)))

(assert (=> start!102916 true))

(declare-fun b!1236414 () Bool)

(assert (=> b!1236414 (= e!700851 false)))

(declare-fun lt!560740 () Bool)

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1236414 (= lt!560740 (contains!7321 acc!846 k0!2925))))

(assert (= (and start!102916 res!824504) b!1236410))

(assert (= (and b!1236410 res!824505) b!1236413))

(assert (= (and b!1236413 res!824503) b!1236411))

(assert (= (and b!1236411 res!824506) b!1236412))

(assert (= (and b!1236412 res!824507) b!1236414))

(declare-fun m!1140263 () Bool)

(assert (=> b!1236414 m!1140263))

(declare-fun m!1140265 () Bool)

(assert (=> b!1236412 m!1140265))

(declare-fun m!1140267 () Bool)

(assert (=> b!1236410 m!1140267))

(declare-fun m!1140269 () Bool)

(assert (=> b!1236413 m!1140269))

(declare-fun m!1140271 () Bool)

(assert (=> b!1236411 m!1140271))

(declare-fun m!1140273 () Bool)

(assert (=> start!102916 m!1140273))

(check-sat (not start!102916) (not b!1236412) (not b!1236411) (not b!1236410) (not b!1236414) (not b!1236413))
