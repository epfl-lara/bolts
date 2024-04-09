; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102704 () Bool)

(assert start!102704)

(declare-fun b!1234095 () Bool)

(declare-fun res!822388 () Bool)

(declare-fun e!699988 () Bool)

(assert (=> b!1234095 (=> (not res!822388) (not e!699988))))

(declare-datatypes ((List!27324 0))(
  ( (Nil!27321) (Cons!27320 (h!28529 (_ BitVec 64)) (t!40794 List!27324)) )
))
(declare-fun acc!846 () List!27324)

(declare-fun noDuplicate!1846 (List!27324) Bool)

(assert (=> b!1234095 (= res!822388 (noDuplicate!1846 acc!846))))

(declare-fun b!1234097 () Bool)

(declare-fun res!822386 () Bool)

(assert (=> b!1234097 (=> (not res!822386) (not e!699988))))

(declare-fun contains!7239 (List!27324 (_ BitVec 64)) Bool)

(assert (=> b!1234097 (= res!822386 (not (contains!7239 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!822389 () Bool)

(assert (=> start!102704 (=> (not res!822389) (not e!699988))))

(declare-datatypes ((array!79535 0))(
  ( (array!79536 (arr!38373 (Array (_ BitVec 32) (_ BitVec 64))) (size!38910 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79535)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102704 (= res!822389 (and (bvslt (size!38910 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38910 a!3835))))))

(assert (=> start!102704 e!699988))

(declare-fun array_inv!29149 (array!79535) Bool)

(assert (=> start!102704 (array_inv!29149 a!3835)))

(assert (=> start!102704 true))

(declare-fun b!1234096 () Bool)

(declare-fun res!822387 () Bool)

(assert (=> b!1234096 (=> (not res!822387) (not e!699988))))

(assert (=> b!1234096 (= res!822387 (not (contains!7239 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234098 () Bool)

(assert (=> b!1234098 (= e!699988 (bvsgt from!3213 (size!38910 a!3835)))))

(assert (= (and start!102704 res!822389) b!1234095))

(assert (= (and b!1234095 res!822388) b!1234096))

(assert (= (and b!1234096 res!822387) b!1234097))

(assert (= (and b!1234097 res!822386) b!1234098))

(declare-fun m!1138169 () Bool)

(assert (=> b!1234095 m!1138169))

(declare-fun m!1138171 () Bool)

(assert (=> b!1234097 m!1138171))

(declare-fun m!1138173 () Bool)

(assert (=> start!102704 m!1138173))

(declare-fun m!1138175 () Bool)

(assert (=> b!1234096 m!1138175))

(push 1)

(assert (not b!1234097))

(assert (not b!1234095))

(assert (not start!102704))

(assert (not b!1234096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

