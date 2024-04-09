; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102716 () Bool)

(assert start!102716)

(declare-fun res!822447 () Bool)

(declare-fun e!700024 () Bool)

(assert (=> start!102716 (=> (not res!822447) (not e!700024))))

(declare-datatypes ((array!79547 0))(
  ( (array!79548 (arr!38379 (Array (_ BitVec 32) (_ BitVec 64))) (size!38916 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79547)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102716 (= res!822447 (and (bvslt (size!38916 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38916 a!3835))))))

(assert (=> start!102716 e!700024))

(declare-fun array_inv!29155 (array!79547) Bool)

(assert (=> start!102716 (array_inv!29155 a!3835)))

(assert (=> start!102716 true))

(declare-fun b!1234156 () Bool)

(declare-fun res!822449 () Bool)

(assert (=> b!1234156 (=> (not res!822449) (not e!700024))))

(declare-datatypes ((List!27330 0))(
  ( (Nil!27327) (Cons!27326 (h!28535 (_ BitVec 64)) (t!40800 List!27330)) )
))
(declare-fun acc!846 () List!27330)

(declare-fun noDuplicate!1852 (List!27330) Bool)

(assert (=> b!1234156 (= res!822449 (noDuplicate!1852 acc!846))))

(declare-fun b!1234157 () Bool)

(declare-fun res!822448 () Bool)

(assert (=> b!1234157 (=> (not res!822448) (not e!700024))))

(declare-fun contains!7245 (List!27330 (_ BitVec 64)) Bool)

(assert (=> b!1234157 (= res!822448 (not (contains!7245 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234158 () Bool)

(assert (=> b!1234158 (= e!700024 false)))

(declare-fun lt!559750 () Bool)

(assert (=> b!1234158 (= lt!559750 (contains!7245 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!102716 res!822447) b!1234156))

(assert (= (and b!1234156 res!822449) b!1234157))

(assert (= (and b!1234157 res!822448) b!1234158))

(declare-fun m!1138217 () Bool)

(assert (=> start!102716 m!1138217))

(declare-fun m!1138219 () Bool)

(assert (=> b!1234156 m!1138219))

(declare-fun m!1138221 () Bool)

(assert (=> b!1234157 m!1138221))

(declare-fun m!1138223 () Bool)

(assert (=> b!1234158 m!1138223))

(push 1)

(assert (not b!1234156))

(assert (not b!1234157))

(assert (not start!102716))

(assert (not b!1234158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

