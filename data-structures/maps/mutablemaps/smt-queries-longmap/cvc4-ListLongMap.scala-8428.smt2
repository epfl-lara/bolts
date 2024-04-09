; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102696 () Bool)

(assert start!102696)

(declare-fun b!1233999 () Bool)

(declare-fun res!822296 () Bool)

(declare-fun e!699964 () Bool)

(assert (=> b!1233999 (=> (not res!822296) (not e!699964))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79527 0))(
  ( (array!79528 (arr!38369 (Array (_ BitVec 32) (_ BitVec 64))) (size!38906 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79527)

(assert (=> b!1233999 (= res!822296 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38906 a!3806)) (bvslt from!3184 (size!38906 a!3806))))))

(declare-fun res!822294 () Bool)

(assert (=> start!102696 (=> (not res!822294) (not e!699964))))

(assert (=> start!102696 (= res!822294 (bvslt (size!38906 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102696 e!699964))

(declare-fun array_inv!29145 (array!79527) Bool)

(assert (=> start!102696 (array_inv!29145 a!3806)))

(assert (=> start!102696 true))

(declare-fun b!1234000 () Bool)

(declare-fun res!822293 () Bool)

(assert (=> b!1234000 (=> (not res!822293) (not e!699964))))

(declare-datatypes ((List!27320 0))(
  ( (Nil!27317) (Cons!27316 (h!28525 (_ BitVec 64)) (t!40790 List!27320)) )
))
(declare-fun acc!823 () List!27320)

(declare-fun noDuplicate!1842 (List!27320) Bool)

(assert (=> b!1234000 (= res!822293 (noDuplicate!1842 acc!823))))

(declare-fun b!1234001 () Bool)

(declare-fun res!822292 () Bool)

(assert (=> b!1234001 (=> (not res!822292) (not e!699964))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79527 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1234001 (= res!822292 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1234002 () Bool)

(assert (=> b!1234002 (= e!699964 false)))

(declare-fun lt!559738 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79527 (_ BitVec 32) List!27320) Bool)

(assert (=> b!1234002 (= lt!559738 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1234003 () Bool)

(declare-fun res!822290 () Bool)

(assert (=> b!1234003 (=> (not res!822290) (not e!699964))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234003 (= res!822290 (validKeyInArray!0 k!2913))))

(declare-fun b!1234004 () Bool)

(declare-fun res!822295 () Bool)

(assert (=> b!1234004 (=> (not res!822295) (not e!699964))))

(declare-fun contains!7235 (List!27320 (_ BitVec 64)) Bool)

(assert (=> b!1234004 (= res!822295 (not (contains!7235 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234005 () Bool)

(declare-fun res!822291 () Bool)

(assert (=> b!1234005 (=> (not res!822291) (not e!699964))))

(assert (=> b!1234005 (= res!822291 (not (contains!7235 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102696 res!822294) b!1234003))

(assert (= (and b!1234003 res!822290) b!1233999))

(assert (= (and b!1233999 res!822296) b!1234000))

(assert (= (and b!1234000 res!822293) b!1234004))

(assert (= (and b!1234004 res!822295) b!1234005))

(assert (= (and b!1234005 res!822291) b!1234001))

(assert (= (and b!1234001 res!822292) b!1234002))

(declare-fun m!1138101 () Bool)

(assert (=> b!1234000 m!1138101))

(declare-fun m!1138103 () Bool)

(assert (=> b!1234004 m!1138103))

(declare-fun m!1138105 () Bool)

(assert (=> start!102696 m!1138105))

(declare-fun m!1138107 () Bool)

(assert (=> b!1234001 m!1138107))

(declare-fun m!1138109 () Bool)

(assert (=> b!1234005 m!1138109))

(declare-fun m!1138111 () Bool)

(assert (=> b!1234003 m!1138111))

(declare-fun m!1138113 () Bool)

(assert (=> b!1234002 m!1138113))

(push 1)

(assert (not b!1234004))

(assert (not b!1234000))

(assert (not b!1234001))

(assert (not start!102696))

(assert (not b!1234002))

(assert (not b!1234005))

(assert (not b!1234003))

(check-sat)

