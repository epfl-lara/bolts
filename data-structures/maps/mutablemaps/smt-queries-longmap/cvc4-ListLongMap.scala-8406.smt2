; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102296 () Bool)

(assert start!102296)

(declare-fun b!1230709 () Bool)

(declare-fun res!819279 () Bool)

(declare-fun e!698280 () Bool)

(assert (=> b!1230709 (=> (not res!819279) (not e!698280))))

(declare-datatypes ((array!79377 0))(
  ( (array!79378 (arr!38303 (Array (_ BitVec 32) (_ BitVec 64))) (size!38840 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79377)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230709 (= res!819279 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230710 () Bool)

(declare-fun res!819283 () Bool)

(assert (=> b!1230710 (=> (not res!819283) (not e!698280))))

(declare-datatypes ((List!27254 0))(
  ( (Nil!27251) (Cons!27250 (h!28459 (_ BitVec 64)) (t!40724 List!27254)) )
))
(declare-fun acc!823 () List!27254)

(declare-fun contains!7169 (List!27254 (_ BitVec 64)) Bool)

(assert (=> b!1230710 (= res!819283 (not (contains!7169 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!819281 () Bool)

(assert (=> start!102296 (=> (not res!819281) (not e!698280))))

(assert (=> start!102296 (= res!819281 (bvslt (size!38840 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102296 e!698280))

(declare-fun array_inv!29079 (array!79377) Bool)

(assert (=> start!102296 (array_inv!29079 a!3806)))

(assert (=> start!102296 true))

(declare-fun b!1230711 () Bool)

(declare-fun res!819278 () Bool)

(assert (=> b!1230711 (=> (not res!819278) (not e!698280))))

(assert (=> b!1230711 (= res!819278 (not (contains!7169 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230712 () Bool)

(declare-fun res!819276 () Bool)

(assert (=> b!1230712 (=> (not res!819276) (not e!698280))))

(declare-fun noDuplicate!1776 (List!27254) Bool)

(assert (=> b!1230712 (= res!819276 (noDuplicate!1776 acc!823))))

(declare-fun b!1230713 () Bool)

(declare-fun res!819284 () Bool)

(assert (=> b!1230713 (=> (not res!819284) (not e!698280))))

(declare-fun arrayNoDuplicates!0 (array!79377 (_ BitVec 32) List!27254) Bool)

(assert (=> b!1230713 (= res!819284 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230714 () Bool)

(assert (=> b!1230714 (= e!698280 (not true))))

(assert (=> b!1230714 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27250 (select (arr!38303 a!3806) from!3184) acc!823))))

(declare-fun b!1230715 () Bool)

(declare-fun res!819277 () Bool)

(assert (=> b!1230715 (=> (not res!819277) (not e!698280))))

(assert (=> b!1230715 (= res!819277 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38840 a!3806)) (bvslt from!3184 (size!38840 a!3806))))))

(declare-fun b!1230716 () Bool)

(declare-fun res!819280 () Bool)

(assert (=> b!1230716 (=> (not res!819280) (not e!698280))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230716 (= res!819280 (validKeyInArray!0 (select (arr!38303 a!3806) from!3184)))))

(declare-fun b!1230717 () Bool)

(declare-fun res!819282 () Bool)

(assert (=> b!1230717 (=> (not res!819282) (not e!698280))))

(assert (=> b!1230717 (= res!819282 (validKeyInArray!0 k!2913))))

(assert (= (and start!102296 res!819281) b!1230717))

(assert (= (and b!1230717 res!819282) b!1230715))

(assert (= (and b!1230715 res!819277) b!1230712))

(assert (= (and b!1230712 res!819276) b!1230710))

(assert (= (and b!1230710 res!819283) b!1230711))

(assert (= (and b!1230711 res!819278) b!1230709))

(assert (= (and b!1230709 res!819279) b!1230713))

(assert (= (and b!1230713 res!819284) b!1230716))

(assert (= (and b!1230716 res!819280) b!1230714))

(declare-fun m!1135101 () Bool)

(assert (=> b!1230710 m!1135101))

(declare-fun m!1135103 () Bool)

(assert (=> start!102296 m!1135103))

(declare-fun m!1135105 () Bool)

(assert (=> b!1230714 m!1135105))

(declare-fun m!1135107 () Bool)

(assert (=> b!1230714 m!1135107))

(declare-fun m!1135109 () Bool)

(assert (=> b!1230711 m!1135109))

(declare-fun m!1135111 () Bool)

(assert (=> b!1230717 m!1135111))

(declare-fun m!1135113 () Bool)

(assert (=> b!1230713 m!1135113))

(declare-fun m!1135115 () Bool)

(assert (=> b!1230712 m!1135115))

(assert (=> b!1230716 m!1135105))

(assert (=> b!1230716 m!1135105))

(declare-fun m!1135117 () Bool)

(assert (=> b!1230716 m!1135117))

(declare-fun m!1135119 () Bool)

(assert (=> b!1230709 m!1135119))

(push 1)

(assert (not b!1230709))

(assert (not b!1230717))

(assert (not b!1230716))

(assert (not b!1230712))

(assert (not b!1230713))

(assert (not b!1230710))

(assert (not start!102296))

(assert (not b!1230711))

(assert (not b!1230714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

