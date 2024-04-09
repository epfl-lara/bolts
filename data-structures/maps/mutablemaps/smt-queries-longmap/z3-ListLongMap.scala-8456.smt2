; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102910 () Bool)

(assert start!102910)

(declare-fun b!1236361 () Bool)

(declare-fun res!824456 () Bool)

(declare-fun e!700834 () Bool)

(assert (=> b!1236361 (=> (not res!824456) (not e!700834))))

(declare-datatypes ((array!79696 0))(
  ( (array!79697 (arr!38452 (Array (_ BitVec 32) (_ BitVec 64))) (size!38989 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79696)

(declare-datatypes ((List!27403 0))(
  ( (Nil!27400) (Cons!27399 (h!28608 (_ BitVec 64)) (t!40873 List!27403)) )
))
(declare-fun acc!846 () List!27403)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79696 (_ BitVec 32) List!27403) Bool)

(assert (=> b!1236361 (= res!824456 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236362 () Bool)

(assert (=> b!1236362 (= e!700834 (bvslt (bvsub (size!38989 a!3835) from!3213) #b00000000000000000000000000000000))))

(declare-fun b!1236364 () Bool)

(declare-fun res!824457 () Bool)

(assert (=> b!1236364 (=> (not res!824457) (not e!700834))))

(declare-fun contains!7318 (List!27403 (_ BitVec 64)) Bool)

(assert (=> b!1236364 (= res!824457 (not (contains!7318 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236365 () Bool)

(declare-fun res!824454 () Bool)

(assert (=> b!1236365 (=> (not res!824454) (not e!700834))))

(assert (=> b!1236365 (= res!824454 (not (contains!7318 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236366 () Bool)

(declare-fun res!824459 () Bool)

(assert (=> b!1236366 (=> (not res!824459) (not e!700834))))

(declare-fun noDuplicate!1925 (List!27403) Bool)

(assert (=> b!1236366 (= res!824459 (noDuplicate!1925 acc!846))))

(declare-fun res!824458 () Bool)

(assert (=> start!102910 (=> (not res!824458) (not e!700834))))

(assert (=> start!102910 (= res!824458 (and (bvslt (size!38989 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38989 a!3835))))))

(assert (=> start!102910 e!700834))

(declare-fun array_inv!29228 (array!79696) Bool)

(assert (=> start!102910 (array_inv!29228 a!3835)))

(assert (=> start!102910 true))

(declare-fun b!1236363 () Bool)

(declare-fun res!824455 () Bool)

(assert (=> b!1236363 (=> (not res!824455) (not e!700834))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1236363 (= res!824455 (contains!7318 acc!846 k0!2925))))

(assert (= (and start!102910 res!824458) b!1236366))

(assert (= (and b!1236366 res!824459) b!1236365))

(assert (= (and b!1236365 res!824454) b!1236364))

(assert (= (and b!1236364 res!824457) b!1236361))

(assert (= (and b!1236361 res!824456) b!1236363))

(assert (= (and b!1236363 res!824455) b!1236362))

(declare-fun m!1140227 () Bool)

(assert (=> start!102910 m!1140227))

(declare-fun m!1140229 () Bool)

(assert (=> b!1236361 m!1140229))

(declare-fun m!1140231 () Bool)

(assert (=> b!1236365 m!1140231))

(declare-fun m!1140233 () Bool)

(assert (=> b!1236366 m!1140233))

(declare-fun m!1140235 () Bool)

(assert (=> b!1236364 m!1140235))

(declare-fun m!1140237 () Bool)

(assert (=> b!1236363 m!1140237))

(check-sat (not start!102910) (not b!1236364) (not b!1236365) (not b!1236366) (not b!1236363) (not b!1236361))
(check-sat)
