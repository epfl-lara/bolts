; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102722 () Bool)

(assert start!102722)

(declare-fun res!822474 () Bool)

(declare-fun e!700041 () Bool)

(assert (=> start!102722 (=> (not res!822474) (not e!700041))))

(declare-datatypes ((array!79553 0))(
  ( (array!79554 (arr!38382 (Array (_ BitVec 32) (_ BitVec 64))) (size!38919 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79553)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102722 (= res!822474 (and (bvslt (size!38919 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38919 a!3835))))))

(assert (=> start!102722 e!700041))

(declare-fun array_inv!29158 (array!79553) Bool)

(assert (=> start!102722 (array_inv!29158 a!3835)))

(assert (=> start!102722 true))

(declare-fun b!1234183 () Bool)

(declare-fun res!822475 () Bool)

(assert (=> b!1234183 (=> (not res!822475) (not e!700041))))

(declare-datatypes ((List!27333 0))(
  ( (Nil!27330) (Cons!27329 (h!28538 (_ BitVec 64)) (t!40803 List!27333)) )
))
(declare-fun acc!846 () List!27333)

(declare-fun noDuplicate!1855 (List!27333) Bool)

(assert (=> b!1234183 (= res!822475 (noDuplicate!1855 acc!846))))

(declare-fun b!1234184 () Bool)

(declare-fun res!822476 () Bool)

(assert (=> b!1234184 (=> (not res!822476) (not e!700041))))

(declare-fun contains!7248 (List!27333 (_ BitVec 64)) Bool)

(assert (=> b!1234184 (= res!822476 (not (contains!7248 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234185 () Bool)

(assert (=> b!1234185 (= e!700041 false)))

(declare-fun lt!559759 () Bool)

(assert (=> b!1234185 (= lt!559759 (contains!7248 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102722 res!822474) b!1234183))

(assert (= (and b!1234183 res!822475) b!1234184))

(assert (= (and b!1234184 res!822476) b!1234185))

(declare-fun m!1138241 () Bool)

(assert (=> start!102722 m!1138241))

(declare-fun m!1138243 () Bool)

(assert (=> b!1234183 m!1138243))

(declare-fun m!1138245 () Bool)

(assert (=> b!1234184 m!1138245))

(declare-fun m!1138247 () Bool)

(assert (=> b!1234185 m!1138247))

(push 1)

(assert (not start!102722))

(assert (not b!1234185))

(assert (not b!1234184))

(assert (not b!1234183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

