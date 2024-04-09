; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102918 () Bool)

(assert start!102918)

(declare-fun b!1236425 () Bool)

(declare-fun res!824518 () Bool)

(declare-fun e!700857 () Bool)

(assert (=> b!1236425 (=> (not res!824518) (not e!700857))))

(declare-datatypes ((List!27407 0))(
  ( (Nil!27404) (Cons!27403 (h!28612 (_ BitVec 64)) (t!40877 List!27407)) )
))
(declare-fun acc!846 () List!27407)

(declare-fun noDuplicate!1929 (List!27407) Bool)

(assert (=> b!1236425 (= res!824518 (noDuplicate!1929 acc!846))))

(declare-fun b!1236426 () Bool)

(declare-fun res!824522 () Bool)

(assert (=> b!1236426 (=> (not res!824522) (not e!700857))))

(declare-datatypes ((array!79704 0))(
  ( (array!79705 (arr!38456 (Array (_ BitVec 32) (_ BitVec 64))) (size!38993 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79704)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79704 (_ BitVec 32) List!27407) Bool)

(assert (=> b!1236426 (= res!824522 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!824519 () Bool)

(assert (=> start!102918 (=> (not res!824519) (not e!700857))))

(assert (=> start!102918 (= res!824519 (and (bvslt (size!38993 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38993 a!3835))))))

(assert (=> start!102918 e!700857))

(declare-fun array_inv!29232 (array!79704) Bool)

(assert (=> start!102918 (array_inv!29232 a!3835)))

(assert (=> start!102918 true))

(declare-fun b!1236427 () Bool)

(declare-fun res!824521 () Bool)

(assert (=> b!1236427 (=> (not res!824521) (not e!700857))))

(declare-fun contains!7322 (List!27407 (_ BitVec 64)) Bool)

(assert (=> b!1236427 (= res!824521 (not (contains!7322 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236428 () Bool)

(assert (=> b!1236428 (= e!700857 false)))

(declare-fun lt!560743 () Bool)

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236428 (= lt!560743 (contains!7322 acc!846 k!2925))))

(declare-fun b!1236429 () Bool)

(declare-fun res!824520 () Bool)

(assert (=> b!1236429 (=> (not res!824520) (not e!700857))))

(assert (=> b!1236429 (= res!824520 (not (contains!7322 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102918 res!824519) b!1236425))

(assert (= (and b!1236425 res!824518) b!1236429))

(assert (= (and b!1236429 res!824520) b!1236427))

(assert (= (and b!1236427 res!824521) b!1236426))

(assert (= (and b!1236426 res!824522) b!1236428))

(declare-fun m!1140275 () Bool)

(assert (=> b!1236429 m!1140275))

(declare-fun m!1140277 () Bool)

(assert (=> b!1236427 m!1140277))

(declare-fun m!1140279 () Bool)

(assert (=> start!102918 m!1140279))

(declare-fun m!1140281 () Bool)

(assert (=> b!1236428 m!1140281))

(declare-fun m!1140283 () Bool)

(assert (=> b!1236425 m!1140283))

(declare-fun m!1140285 () Bool)

(assert (=> b!1236426 m!1140285))

(push 1)

(assert (not b!1236425))

(assert (not b!1236426))

(assert (not start!102918))

(assert (not b!1236428))

(assert (not b!1236427))

(assert (not b!1236429))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

