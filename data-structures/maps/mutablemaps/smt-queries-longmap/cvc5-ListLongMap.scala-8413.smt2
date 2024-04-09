; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102412 () Bool)

(assert start!102412)

(declare-fun b!1231603 () Bool)

(declare-fun res!820128 () Bool)

(declare-fun e!698707 () Bool)

(assert (=> b!1231603 (=> (not res!820128) (not e!698707))))

(declare-datatypes ((List!27273 0))(
  ( (Nil!27270) (Cons!27269 (h!28478 (_ BitVec 64)) (t!40743 List!27273)) )
))
(declare-fun acc!823 () List!27273)

(declare-fun noDuplicate!1795 (List!27273) Bool)

(assert (=> b!1231603 (= res!820128 (noDuplicate!1795 acc!823))))

(declare-fun res!820125 () Bool)

(assert (=> start!102412 (=> (not res!820125) (not e!698707))))

(declare-datatypes ((array!79421 0))(
  ( (array!79422 (arr!38322 (Array (_ BitVec 32) (_ BitVec 64))) (size!38859 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79421)

(assert (=> start!102412 (= res!820125 (bvslt (size!38859 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102412 e!698707))

(declare-fun array_inv!29098 (array!79421) Bool)

(assert (=> start!102412 (array_inv!29098 a!3806)))

(assert (=> start!102412 true))

(declare-fun b!1231604 () Bool)

(declare-fun res!820126 () Bool)

(assert (=> b!1231604 (=> (not res!820126) (not e!698707))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79421 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1231604 (= res!820126 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1231605 () Bool)

(declare-fun res!820122 () Bool)

(assert (=> b!1231605 (=> (not res!820122) (not e!698707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1231605 (= res!820122 (validKeyInArray!0 (select (arr!38322 a!3806) from!3184)))))

(declare-fun b!1231606 () Bool)

(declare-fun res!820130 () Bool)

(assert (=> b!1231606 (=> (not res!820130) (not e!698707))))

(declare-fun contains!7188 (List!27273 (_ BitVec 64)) Bool)

(assert (=> b!1231606 (= res!820130 (not (contains!7188 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231607 () Bool)

(declare-fun res!820129 () Bool)

(assert (=> b!1231607 (=> (not res!820129) (not e!698707))))

(assert (=> b!1231607 (= res!820129 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38859 a!3806)) (bvslt from!3184 (size!38859 a!3806))))))

(declare-fun b!1231608 () Bool)

(declare-fun res!820124 () Bool)

(assert (=> b!1231608 (=> (not res!820124) (not e!698707))))

(assert (=> b!1231608 (= res!820124 (not (contains!7188 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1231609 () Bool)

(declare-fun res!820127 () Bool)

(assert (=> b!1231609 (=> (not res!820127) (not e!698707))))

(declare-fun arrayNoDuplicates!0 (array!79421 (_ BitVec 32) List!27273) Bool)

(assert (=> b!1231609 (= res!820127 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1231610 () Bool)

(declare-fun res!820123 () Bool)

(assert (=> b!1231610 (=> (not res!820123) (not e!698707))))

(assert (=> b!1231610 (= res!820123 (validKeyInArray!0 k!2913))))

(declare-fun b!1231611 () Bool)

(assert (=> b!1231611 (= e!698707 (not true))))

(assert (=> b!1231611 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27270)))

(declare-datatypes ((Unit!40724 0))(
  ( (Unit!40725) )
))
(declare-fun lt!559376 () Unit!40724)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79421 List!27273 List!27273 (_ BitVec 32)) Unit!40724)

(assert (=> b!1231611 (= lt!559376 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27270 from!3184))))

(assert (=> b!1231611 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27269 (select (arr!38322 a!3806) from!3184) acc!823))))

(assert (= (and start!102412 res!820125) b!1231610))

(assert (= (and b!1231610 res!820123) b!1231607))

(assert (= (and b!1231607 res!820129) b!1231603))

(assert (= (and b!1231603 res!820128) b!1231608))

(assert (= (and b!1231608 res!820124) b!1231606))

(assert (= (and b!1231606 res!820130) b!1231604))

(assert (= (and b!1231604 res!820126) b!1231609))

(assert (= (and b!1231609 res!820127) b!1231605))

(assert (= (and b!1231605 res!820122) b!1231611))

(declare-fun m!1135775 () Bool)

(assert (=> start!102412 m!1135775))

(declare-fun m!1135777 () Bool)

(assert (=> b!1231604 m!1135777))

(declare-fun m!1135779 () Bool)

(assert (=> b!1231606 m!1135779))

(declare-fun m!1135781 () Bool)

(assert (=> b!1231603 m!1135781))

(declare-fun m!1135783 () Bool)

(assert (=> b!1231608 m!1135783))

(declare-fun m!1135785 () Bool)

(assert (=> b!1231609 m!1135785))

(declare-fun m!1135787 () Bool)

(assert (=> b!1231610 m!1135787))

(declare-fun m!1135789 () Bool)

(assert (=> b!1231605 m!1135789))

(assert (=> b!1231605 m!1135789))

(declare-fun m!1135791 () Bool)

(assert (=> b!1231605 m!1135791))

(declare-fun m!1135793 () Bool)

(assert (=> b!1231611 m!1135793))

(declare-fun m!1135795 () Bool)

(assert (=> b!1231611 m!1135795))

(assert (=> b!1231611 m!1135789))

(declare-fun m!1135797 () Bool)

(assert (=> b!1231611 m!1135797))

(push 1)

(assert (not b!1231609))

(assert (not b!1231606))

(assert (not b!1231603))

(assert (not b!1231605))

(assert (not b!1231604))

(assert (not b!1231611))

(assert (not b!1231610))

(assert (not start!102412))

(assert (not b!1231608))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

