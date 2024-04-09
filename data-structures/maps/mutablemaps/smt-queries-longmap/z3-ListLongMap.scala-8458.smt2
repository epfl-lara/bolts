; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102922 () Bool)

(assert start!102922)

(declare-fun res!824551 () Bool)

(declare-fun e!700869 () Bool)

(assert (=> start!102922 (=> (not res!824551) (not e!700869))))

(declare-datatypes ((array!79708 0))(
  ( (array!79709 (arr!38458 (Array (_ BitVec 32) (_ BitVec 64))) (size!38995 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79708)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102922 (= res!824551 (and (bvslt (size!38995 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38995 a!3835))))))

(assert (=> start!102922 e!700869))

(declare-fun array_inv!29234 (array!79708) Bool)

(assert (=> start!102922 (array_inv!29234 a!3835)))

(assert (=> start!102922 true))

(declare-fun b!1236455 () Bool)

(declare-fun res!824548 () Bool)

(assert (=> b!1236455 (=> (not res!824548) (not e!700869))))

(declare-datatypes ((List!27409 0))(
  ( (Nil!27406) (Cons!27405 (h!28614 (_ BitVec 64)) (t!40879 List!27409)) )
))
(declare-fun acc!846 () List!27409)

(declare-fun arrayNoDuplicates!0 (array!79708 (_ BitVec 32) List!27409) Bool)

(assert (=> b!1236455 (= res!824548 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236456 () Bool)

(declare-fun res!824552 () Bool)

(assert (=> b!1236456 (=> (not res!824552) (not e!700869))))

(declare-fun noDuplicate!1931 (List!27409) Bool)

(assert (=> b!1236456 (= res!824552 (noDuplicate!1931 acc!846))))

(declare-fun b!1236457 () Bool)

(assert (=> b!1236457 (= e!700869 false)))

(declare-fun lt!560749 () Bool)

(declare-fun k0!2925 () (_ BitVec 64))

(declare-fun contains!7324 (List!27409 (_ BitVec 64)) Bool)

(assert (=> b!1236457 (= lt!560749 (contains!7324 acc!846 k0!2925))))

(declare-fun b!1236458 () Bool)

(declare-fun res!824549 () Bool)

(assert (=> b!1236458 (=> (not res!824549) (not e!700869))))

(assert (=> b!1236458 (= res!824549 (not (contains!7324 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236459 () Bool)

(declare-fun res!824550 () Bool)

(assert (=> b!1236459 (=> (not res!824550) (not e!700869))))

(assert (=> b!1236459 (= res!824550 (not (contains!7324 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102922 res!824551) b!1236456))

(assert (= (and b!1236456 res!824552) b!1236459))

(assert (= (and b!1236459 res!824550) b!1236458))

(assert (= (and b!1236458 res!824549) b!1236455))

(assert (= (and b!1236455 res!824548) b!1236457))

(declare-fun m!1140299 () Bool)

(assert (=> b!1236459 m!1140299))

(declare-fun m!1140301 () Bool)

(assert (=> b!1236457 m!1140301))

(declare-fun m!1140303 () Bool)

(assert (=> b!1236458 m!1140303))

(declare-fun m!1140305 () Bool)

(assert (=> b!1236455 m!1140305))

(declare-fun m!1140307 () Bool)

(assert (=> b!1236456 m!1140307))

(declare-fun m!1140309 () Bool)

(assert (=> start!102922 m!1140309))

(check-sat (not b!1236459) (not b!1236458) (not b!1236455) (not b!1236456) (not b!1236457) (not start!102922))
(check-sat)
