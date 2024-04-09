; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102292 () Bool)

(assert start!102292)

(declare-fun b!1230655 () Bool)

(declare-fun res!819228 () Bool)

(declare-fun e!698268 () Bool)

(assert (=> b!1230655 (=> (not res!819228) (not e!698268))))

(declare-datatypes ((List!27252 0))(
  ( (Nil!27249) (Cons!27248 (h!28457 (_ BitVec 64)) (t!40722 List!27252)) )
))
(declare-fun acc!823 () List!27252)

(declare-fun contains!7167 (List!27252 (_ BitVec 64)) Bool)

(assert (=> b!1230655 (= res!819228 (not (contains!7167 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230656 () Bool)

(declare-fun res!819223 () Bool)

(assert (=> b!1230656 (=> (not res!819223) (not e!698268))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230656 (= res!819223 (validKeyInArray!0 k!2913))))

(declare-fun b!1230657 () Bool)

(declare-fun res!819229 () Bool)

(assert (=> b!1230657 (=> (not res!819229) (not e!698268))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79373 0))(
  ( (array!79374 (arr!38301 (Array (_ BitVec 32) (_ BitVec 64))) (size!38838 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79373)

(assert (=> b!1230657 (= res!819229 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38838 a!3806)) (bvslt from!3184 (size!38838 a!3806))))))

(declare-fun b!1230658 () Bool)

(declare-fun res!819226 () Bool)

(assert (=> b!1230658 (=> (not res!819226) (not e!698268))))

(assert (=> b!1230658 (= res!819226 (validKeyInArray!0 (select (arr!38301 a!3806) from!3184)))))

(declare-fun res!819225 () Bool)

(assert (=> start!102292 (=> (not res!819225) (not e!698268))))

(assert (=> start!102292 (= res!819225 (bvslt (size!38838 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102292 e!698268))

(declare-fun array_inv!29077 (array!79373) Bool)

(assert (=> start!102292 (array_inv!29077 a!3806)))

(assert (=> start!102292 true))

(declare-fun b!1230659 () Bool)

(declare-fun res!819227 () Bool)

(assert (=> b!1230659 (=> (not res!819227) (not e!698268))))

(declare-fun noDuplicate!1774 (List!27252) Bool)

(assert (=> b!1230659 (= res!819227 (noDuplicate!1774 acc!823))))

(declare-fun b!1230660 () Bool)

(declare-fun res!819222 () Bool)

(assert (=> b!1230660 (=> (not res!819222) (not e!698268))))

(declare-fun arrayNoDuplicates!0 (array!79373 (_ BitVec 32) List!27252) Bool)

(assert (=> b!1230660 (= res!819222 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230661 () Bool)

(declare-fun res!819224 () Bool)

(assert (=> b!1230661 (=> (not res!819224) (not e!698268))))

(assert (=> b!1230661 (= res!819224 (not (contains!7167 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230662 () Bool)

(assert (=> b!1230662 (= e!698268 (not true))))

(assert (=> b!1230662 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27248 (select (arr!38301 a!3806) from!3184) acc!823))))

(declare-fun b!1230663 () Bool)

(declare-fun res!819230 () Bool)

(assert (=> b!1230663 (=> (not res!819230) (not e!698268))))

(declare-fun arrayContainsKey!0 (array!79373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230663 (= res!819230 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(assert (= (and start!102292 res!819225) b!1230656))

(assert (= (and b!1230656 res!819223) b!1230657))

(assert (= (and b!1230657 res!819229) b!1230659))

(assert (= (and b!1230659 res!819227) b!1230661))

(assert (= (and b!1230661 res!819224) b!1230655))

(assert (= (and b!1230655 res!819228) b!1230663))

(assert (= (and b!1230663 res!819230) b!1230660))

(assert (= (and b!1230660 res!819222) b!1230658))

(assert (= (and b!1230658 res!819226) b!1230662))

(declare-fun m!1135061 () Bool)

(assert (=> start!102292 m!1135061))

(declare-fun m!1135063 () Bool)

(assert (=> b!1230660 m!1135063))

(declare-fun m!1135065 () Bool)

(assert (=> b!1230659 m!1135065))

(declare-fun m!1135067 () Bool)

(assert (=> b!1230656 m!1135067))

(declare-fun m!1135069 () Bool)

(assert (=> b!1230662 m!1135069))

(declare-fun m!1135071 () Bool)

(assert (=> b!1230662 m!1135071))

(declare-fun m!1135073 () Bool)

(assert (=> b!1230661 m!1135073))

(declare-fun m!1135075 () Bool)

(assert (=> b!1230655 m!1135075))

(assert (=> b!1230658 m!1135069))

(assert (=> b!1230658 m!1135069))

(declare-fun m!1135077 () Bool)

(assert (=> b!1230658 m!1135077))

(declare-fun m!1135079 () Bool)

(assert (=> b!1230663 m!1135079))

(push 1)

(assert (not b!1230662))

(assert (not b!1230658))

(assert (not b!1230661))

(assert (not b!1230663))

(assert (not b!1230659))

(assert (not b!1230660))

(assert (not b!1230656))

(assert (not b!1230655))

(assert (not start!102292))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

