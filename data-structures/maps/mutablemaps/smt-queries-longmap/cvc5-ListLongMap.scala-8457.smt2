; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102914 () Bool)

(assert start!102914)

(declare-fun res!824489 () Bool)

(declare-fun e!700846 () Bool)

(assert (=> start!102914 (=> (not res!824489) (not e!700846))))

(declare-datatypes ((array!79700 0))(
  ( (array!79701 (arr!38454 (Array (_ BitVec 32) (_ BitVec 64))) (size!38991 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79700)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102914 (= res!824489 (and (bvslt (size!38991 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38991 a!3835))))))

(assert (=> start!102914 e!700846))

(declare-fun array_inv!29230 (array!79700) Bool)

(assert (=> start!102914 (array_inv!29230 a!3835)))

(assert (=> start!102914 true))

(declare-fun b!1236395 () Bool)

(assert (=> b!1236395 (= e!700846 false)))

(declare-fun lt!560737 () Bool)

(declare-datatypes ((List!27405 0))(
  ( (Nil!27402) (Cons!27401 (h!28610 (_ BitVec 64)) (t!40875 List!27405)) )
))
(declare-fun acc!846 () List!27405)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7320 (List!27405 (_ BitVec 64)) Bool)

(assert (=> b!1236395 (= lt!560737 (contains!7320 acc!846 k!2925))))

(declare-fun b!1236396 () Bool)

(declare-fun res!824492 () Bool)

(assert (=> b!1236396 (=> (not res!824492) (not e!700846))))

(assert (=> b!1236396 (= res!824492 (not (contains!7320 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236397 () Bool)

(declare-fun res!824491 () Bool)

(assert (=> b!1236397 (=> (not res!824491) (not e!700846))))

(assert (=> b!1236397 (= res!824491 (not (contains!7320 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236398 () Bool)

(declare-fun res!824488 () Bool)

(assert (=> b!1236398 (=> (not res!824488) (not e!700846))))

(declare-fun arrayNoDuplicates!0 (array!79700 (_ BitVec 32) List!27405) Bool)

(assert (=> b!1236398 (= res!824488 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236399 () Bool)

(declare-fun res!824490 () Bool)

(assert (=> b!1236399 (=> (not res!824490) (not e!700846))))

(declare-fun noDuplicate!1927 (List!27405) Bool)

(assert (=> b!1236399 (= res!824490 (noDuplicate!1927 acc!846))))

(assert (= (and start!102914 res!824489) b!1236399))

(assert (= (and b!1236399 res!824490) b!1236396))

(assert (= (and b!1236396 res!824492) b!1236397))

(assert (= (and b!1236397 res!824491) b!1236398))

(assert (= (and b!1236398 res!824488) b!1236395))

(declare-fun m!1140251 () Bool)

(assert (=> b!1236399 m!1140251))

(declare-fun m!1140253 () Bool)

(assert (=> b!1236398 m!1140253))

(declare-fun m!1140255 () Bool)

(assert (=> b!1236395 m!1140255))

(declare-fun m!1140257 () Bool)

(assert (=> b!1236396 m!1140257))

(declare-fun m!1140259 () Bool)

(assert (=> b!1236397 m!1140259))

(declare-fun m!1140261 () Bool)

(assert (=> start!102914 m!1140261))

(push 1)

(assert (not b!1236396))

(assert (not b!1236398))

(assert (not b!1236395))

(assert (not b!1236397))

(assert (not b!1236399))

(assert (not start!102914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

