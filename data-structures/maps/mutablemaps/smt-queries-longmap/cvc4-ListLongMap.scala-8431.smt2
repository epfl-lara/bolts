; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102714 () Bool)

(assert start!102714)

(declare-fun res!822440 () Bool)

(declare-fun e!700018 () Bool)

(assert (=> start!102714 (=> (not res!822440) (not e!700018))))

(declare-datatypes ((array!79545 0))(
  ( (array!79546 (arr!38378 (Array (_ BitVec 32) (_ BitVec 64))) (size!38915 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79545)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102714 (= res!822440 (and (bvslt (size!38915 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38915 a!3835))))))

(assert (=> start!102714 e!700018))

(declare-fun array_inv!29154 (array!79545) Bool)

(assert (=> start!102714 (array_inv!29154 a!3835)))

(assert (=> start!102714 true))

(declare-fun b!1234147 () Bool)

(declare-fun res!822439 () Bool)

(assert (=> b!1234147 (=> (not res!822439) (not e!700018))))

(declare-datatypes ((List!27329 0))(
  ( (Nil!27326) (Cons!27325 (h!28534 (_ BitVec 64)) (t!40799 List!27329)) )
))
(declare-fun acc!846 () List!27329)

(declare-fun noDuplicate!1851 (List!27329) Bool)

(assert (=> b!1234147 (= res!822439 (noDuplicate!1851 acc!846))))

(declare-fun b!1234148 () Bool)

(declare-fun res!822438 () Bool)

(assert (=> b!1234148 (=> (not res!822438) (not e!700018))))

(declare-fun contains!7244 (List!27329 (_ BitVec 64)) Bool)

(assert (=> b!1234148 (= res!822438 (not (contains!7244 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234149 () Bool)

(assert (=> b!1234149 (= e!700018 false)))

(declare-fun lt!559747 () Bool)

(assert (=> b!1234149 (= lt!559747 (contains!7244 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102714 res!822440) b!1234147))

(assert (= (and b!1234147 res!822439) b!1234148))

(assert (= (and b!1234148 res!822438) b!1234149))

(declare-fun m!1138209 () Bool)

(assert (=> start!102714 m!1138209))

(declare-fun m!1138211 () Bool)

(assert (=> b!1234147 m!1138211))

(declare-fun m!1138213 () Bool)

(assert (=> b!1234148 m!1138213))

(declare-fun m!1138215 () Bool)

(assert (=> b!1234149 m!1138215))

(push 1)

(assert (not b!1234148))

(assert (not start!102714))

(assert (not b!1234149))

(assert (not b!1234147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

