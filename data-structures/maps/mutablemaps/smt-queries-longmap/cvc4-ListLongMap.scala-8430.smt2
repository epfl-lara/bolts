; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102708 () Bool)

(assert start!102708)

(declare-fun b!1234122 () Bool)

(declare-fun e!700000 () Bool)

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79539 0))(
  ( (array!79540 (arr!38375 (Array (_ BitVec 32) (_ BitVec 64))) (size!38912 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79539)

(assert (=> b!1234122 (= e!700000 (bvsgt from!3213 (size!38912 a!3835)))))

(declare-fun res!822411 () Bool)

(assert (=> start!102708 (=> (not res!822411) (not e!700000))))

(assert (=> start!102708 (= res!822411 (and (bvslt (size!38912 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38912 a!3835))))))

(assert (=> start!102708 e!700000))

(declare-fun array_inv!29151 (array!79539) Bool)

(assert (=> start!102708 (array_inv!29151 a!3835)))

(assert (=> start!102708 true))

(declare-fun b!1234119 () Bool)

(declare-fun res!822413 () Bool)

(assert (=> b!1234119 (=> (not res!822413) (not e!700000))))

(declare-datatypes ((List!27326 0))(
  ( (Nil!27323) (Cons!27322 (h!28531 (_ BitVec 64)) (t!40796 List!27326)) )
))
(declare-fun acc!846 () List!27326)

(declare-fun noDuplicate!1848 (List!27326) Bool)

(assert (=> b!1234119 (= res!822413 (noDuplicate!1848 acc!846))))

(declare-fun b!1234120 () Bool)

(declare-fun res!822410 () Bool)

(assert (=> b!1234120 (=> (not res!822410) (not e!700000))))

(declare-fun contains!7241 (List!27326 (_ BitVec 64)) Bool)

(assert (=> b!1234120 (= res!822410 (not (contains!7241 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234121 () Bool)

(declare-fun res!822412 () Bool)

(assert (=> b!1234121 (=> (not res!822412) (not e!700000))))

(assert (=> b!1234121 (= res!822412 (not (contains!7241 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102708 res!822411) b!1234119))

(assert (= (and b!1234119 res!822413) b!1234120))

(assert (= (and b!1234120 res!822410) b!1234121))

(assert (= (and b!1234121 res!822412) b!1234122))

(declare-fun m!1138185 () Bool)

(assert (=> start!102708 m!1138185))

(declare-fun m!1138187 () Bool)

(assert (=> b!1234119 m!1138187))

(declare-fun m!1138189 () Bool)

(assert (=> b!1234120 m!1138189))

(declare-fun m!1138191 () Bool)

(assert (=> b!1234121 m!1138191))

(push 1)

(assert (not b!1234119))

(assert (not start!102708))

(assert (not b!1234120))

(assert (not b!1234121))

(check-sat)

(pop 1)

(push 1)

(check-sat)

