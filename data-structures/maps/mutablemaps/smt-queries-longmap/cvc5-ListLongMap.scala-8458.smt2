; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102920 () Bool)

(assert start!102920)

(declare-fun b!1236440 () Bool)

(declare-fun e!700863 () Bool)

(assert (=> b!1236440 (= e!700863 false)))

(declare-fun lt!560746 () Bool)

(declare-datatypes ((List!27408 0))(
  ( (Nil!27405) (Cons!27404 (h!28613 (_ BitVec 64)) (t!40878 List!27408)) )
))
(declare-fun acc!846 () List!27408)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7323 (List!27408 (_ BitVec 64)) Bool)

(assert (=> b!1236440 (= lt!560746 (contains!7323 acc!846 k!2925))))

(declare-fun res!824533 () Bool)

(assert (=> start!102920 (=> (not res!824533) (not e!700863))))

(declare-datatypes ((array!79706 0))(
  ( (array!79707 (arr!38457 (Array (_ BitVec 32) (_ BitVec 64))) (size!38994 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79706)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102920 (= res!824533 (and (bvslt (size!38994 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38994 a!3835))))))

(assert (=> start!102920 e!700863))

(declare-fun array_inv!29233 (array!79706) Bool)

(assert (=> start!102920 (array_inv!29233 a!3835)))

(assert (=> start!102920 true))

(declare-fun b!1236441 () Bool)

(declare-fun res!824537 () Bool)

(assert (=> b!1236441 (=> (not res!824537) (not e!700863))))

(declare-fun arrayNoDuplicates!0 (array!79706 (_ BitVec 32) List!27408) Bool)

(assert (=> b!1236441 (= res!824537 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236442 () Bool)

(declare-fun res!824536 () Bool)

(assert (=> b!1236442 (=> (not res!824536) (not e!700863))))

(assert (=> b!1236442 (= res!824536 (not (contains!7323 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236443 () Bool)

(declare-fun res!824535 () Bool)

(assert (=> b!1236443 (=> (not res!824535) (not e!700863))))

(assert (=> b!1236443 (= res!824535 (not (contains!7323 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236444 () Bool)

(declare-fun res!824534 () Bool)

(assert (=> b!1236444 (=> (not res!824534) (not e!700863))))

(declare-fun noDuplicate!1930 (List!27408) Bool)

(assert (=> b!1236444 (= res!824534 (noDuplicate!1930 acc!846))))

(assert (= (and start!102920 res!824533) b!1236444))

(assert (= (and b!1236444 res!824534) b!1236443))

(assert (= (and b!1236443 res!824535) b!1236442))

(assert (= (and b!1236442 res!824536) b!1236441))

(assert (= (and b!1236441 res!824537) b!1236440))

(declare-fun m!1140287 () Bool)

(assert (=> b!1236443 m!1140287))

(declare-fun m!1140289 () Bool)

(assert (=> b!1236440 m!1140289))

(declare-fun m!1140291 () Bool)

(assert (=> b!1236442 m!1140291))

(declare-fun m!1140293 () Bool)

(assert (=> b!1236444 m!1140293))

(declare-fun m!1140295 () Bool)

(assert (=> b!1236441 m!1140295))

(declare-fun m!1140297 () Bool)

(assert (=> start!102920 m!1140297))

(push 1)

(assert (not b!1236443))

(assert (not b!1236440))

(assert (not start!102920))

(assert (not b!1236441))

(assert (not b!1236444))

(assert (not b!1236442))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

