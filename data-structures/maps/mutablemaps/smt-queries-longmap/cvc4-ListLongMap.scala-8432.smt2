; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102720 () Bool)

(assert start!102720)

(declare-fun res!822466 () Bool)

(declare-fun e!700035 () Bool)

(assert (=> start!102720 (=> (not res!822466) (not e!700035))))

(declare-datatypes ((array!79551 0))(
  ( (array!79552 (arr!38381 (Array (_ BitVec 32) (_ BitVec 64))) (size!38918 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79551)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102720 (= res!822466 (and (bvslt (size!38918 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38918 a!3835))))))

(assert (=> start!102720 e!700035))

(declare-fun array_inv!29157 (array!79551) Bool)

(assert (=> start!102720 (array_inv!29157 a!3835)))

(assert (=> start!102720 true))

(declare-fun b!1234174 () Bool)

(declare-fun res!822467 () Bool)

(assert (=> b!1234174 (=> (not res!822467) (not e!700035))))

(declare-datatypes ((List!27332 0))(
  ( (Nil!27329) (Cons!27328 (h!28537 (_ BitVec 64)) (t!40802 List!27332)) )
))
(declare-fun acc!846 () List!27332)

(declare-fun noDuplicate!1854 (List!27332) Bool)

(assert (=> b!1234174 (= res!822467 (noDuplicate!1854 acc!846))))

(declare-fun b!1234175 () Bool)

(declare-fun res!822465 () Bool)

(assert (=> b!1234175 (=> (not res!822465) (not e!700035))))

(declare-fun contains!7247 (List!27332 (_ BitVec 64)) Bool)

(assert (=> b!1234175 (= res!822465 (not (contains!7247 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234176 () Bool)

(assert (=> b!1234176 (= e!700035 false)))

(declare-fun lt!559756 () Bool)

(assert (=> b!1234176 (= lt!559756 (contains!7247 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102720 res!822466) b!1234174))

(assert (= (and b!1234174 res!822467) b!1234175))

(assert (= (and b!1234175 res!822465) b!1234176))

(declare-fun m!1138233 () Bool)

(assert (=> start!102720 m!1138233))

(declare-fun m!1138235 () Bool)

(assert (=> b!1234174 m!1138235))

(declare-fun m!1138237 () Bool)

(assert (=> b!1234175 m!1138237))

(declare-fun m!1138239 () Bool)

(assert (=> b!1234176 m!1138239))

(push 1)

(assert (not b!1234174))

(assert (not start!102720))

(assert (not b!1234176))

(assert (not b!1234175))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

