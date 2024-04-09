; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102692 () Bool)

(assert start!102692)

(declare-fun res!822250 () Bool)

(declare-fun e!699951 () Bool)

(assert (=> start!102692 (=> (not res!822250) (not e!699951))))

(declare-datatypes ((array!79523 0))(
  ( (array!79524 (arr!38367 (Array (_ BitVec 32) (_ BitVec 64))) (size!38904 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79523)

(assert (=> start!102692 (= res!822250 (bvslt (size!38904 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102692 e!699951))

(declare-fun array_inv!29143 (array!79523) Bool)

(assert (=> start!102692 (array_inv!29143 a!3806)))

(assert (=> start!102692 true))

(declare-fun b!1233957 () Bool)

(declare-fun res!822248 () Bool)

(assert (=> b!1233957 (=> (not res!822248) (not e!699951))))

(declare-datatypes ((List!27318 0))(
  ( (Nil!27315) (Cons!27314 (h!28523 (_ BitVec 64)) (t!40788 List!27318)) )
))
(declare-fun acc!823 () List!27318)

(declare-fun noDuplicate!1840 (List!27318) Bool)

(assert (=> b!1233957 (= res!822248 (noDuplicate!1840 acc!823))))

(declare-fun b!1233958 () Bool)

(assert (=> b!1233958 (= e!699951 false)))

(declare-fun lt!559732 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79523 (_ BitVec 32) List!27318) Bool)

(assert (=> b!1233958 (= lt!559732 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233959 () Bool)

(declare-fun res!822251 () Bool)

(assert (=> b!1233959 (=> (not res!822251) (not e!699951))))

(declare-fun contains!7233 (List!27318 (_ BitVec 64)) Bool)

(assert (=> b!1233959 (= res!822251 (not (contains!7233 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233960 () Bool)

(declare-fun res!822253 () Bool)

(assert (=> b!1233960 (=> (not res!822253) (not e!699951))))

(assert (=> b!1233960 (= res!822253 (not (contains!7233 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233961 () Bool)

(declare-fun res!822252 () Bool)

(assert (=> b!1233961 (=> (not res!822252) (not e!699951))))

(assert (=> b!1233961 (= res!822252 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38904 a!3806)) (bvslt from!3184 (size!38904 a!3806))))))

(declare-fun b!1233962 () Bool)

(declare-fun res!822254 () Bool)

(assert (=> b!1233962 (=> (not res!822254) (not e!699951))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79523 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233962 (= res!822254 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233963 () Bool)

(declare-fun res!822249 () Bool)

(assert (=> b!1233963 (=> (not res!822249) (not e!699951))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233963 (= res!822249 (validKeyInArray!0 k!2913))))

(assert (= (and start!102692 res!822250) b!1233963))

(assert (= (and b!1233963 res!822249) b!1233961))

(assert (= (and b!1233961 res!822252) b!1233957))

(assert (= (and b!1233957 res!822248) b!1233959))

(assert (= (and b!1233959 res!822251) b!1233960))

(assert (= (and b!1233960 res!822253) b!1233962))

(assert (= (and b!1233962 res!822254) b!1233958))

(declare-fun m!1138073 () Bool)

(assert (=> b!1233960 m!1138073))

(declare-fun m!1138075 () Bool)

(assert (=> b!1233959 m!1138075))

(declare-fun m!1138077 () Bool)

(assert (=> b!1233962 m!1138077))

(declare-fun m!1138079 () Bool)

(assert (=> start!102692 m!1138079))

(declare-fun m!1138081 () Bool)

(assert (=> b!1233957 m!1138081))

(declare-fun m!1138083 () Bool)

(assert (=> b!1233963 m!1138083))

(declare-fun m!1138085 () Bool)

(assert (=> b!1233958 m!1138085))

(push 1)

(assert (not b!1233962))

(assert (not start!102692))

(assert (not b!1233960))

(assert (not b!1233963))

(assert (not b!1233957))

(assert (not b!1233959))

(assert (not b!1233958))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

