; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102710 () Bool)

(assert start!102710)

(declare-fun res!822422 () Bool)

(declare-fun e!700005 () Bool)

(assert (=> start!102710 (=> (not res!822422) (not e!700005))))

(declare-datatypes ((array!79541 0))(
  ( (array!79542 (arr!38376 (Array (_ BitVec 32) (_ BitVec 64))) (size!38913 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79541)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102710 (= res!822422 (and (bvslt (size!38913 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38913 a!3835))))))

(assert (=> start!102710 e!700005))

(declare-fun array_inv!29152 (array!79541) Bool)

(assert (=> start!102710 (array_inv!29152 a!3835)))

(assert (=> start!102710 true))

(declare-fun b!1234129 () Bool)

(declare-fun res!822421 () Bool)

(assert (=> b!1234129 (=> (not res!822421) (not e!700005))))

(declare-datatypes ((List!27327 0))(
  ( (Nil!27324) (Cons!27323 (h!28532 (_ BitVec 64)) (t!40797 List!27327)) )
))
(declare-fun acc!846 () List!27327)

(declare-fun noDuplicate!1849 (List!27327) Bool)

(assert (=> b!1234129 (= res!822421 (noDuplicate!1849 acc!846))))

(declare-fun b!1234130 () Bool)

(declare-fun res!822420 () Bool)

(assert (=> b!1234130 (=> (not res!822420) (not e!700005))))

(declare-fun contains!7242 (List!27327 (_ BitVec 64)) Bool)

(assert (=> b!1234130 (= res!822420 (not (contains!7242 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234131 () Bool)

(assert (=> b!1234131 (= e!700005 false)))

(declare-fun lt!559741 () Bool)

(assert (=> b!1234131 (= lt!559741 (contains!7242 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102710 res!822422) b!1234129))

(assert (= (and b!1234129 res!822421) b!1234130))

(assert (= (and b!1234130 res!822420) b!1234131))

(declare-fun m!1138193 () Bool)

(assert (=> start!102710 m!1138193))

(declare-fun m!1138195 () Bool)

(assert (=> b!1234129 m!1138195))

(declare-fun m!1138197 () Bool)

(assert (=> b!1234130 m!1138197))

(declare-fun m!1138199 () Bool)

(assert (=> b!1234131 m!1138199))

(push 1)

(assert (not b!1234129))

(assert (not start!102710))

(assert (not b!1234131))

(assert (not b!1234130))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

