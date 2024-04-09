; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102194 () Bool)

(assert start!102194)

(declare-fun b!1229567 () Bool)

(declare-fun res!818165 () Bool)

(declare-fun e!697894 () Bool)

(assert (=> b!1229567 (=> (not res!818165) (not e!697894))))

(declare-datatypes ((array!79308 0))(
  ( (array!79309 (arr!38270 (Array (_ BitVec 32) (_ BitVec 64))) (size!38807 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79308)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79308 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229567 (= res!818165 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229568 () Bool)

(declare-fun res!818166 () Bool)

(assert (=> b!1229568 (=> (not res!818166) (not e!697894))))

(declare-datatypes ((List!27221 0))(
  ( (Nil!27218) (Cons!27217 (h!28426 (_ BitVec 64)) (t!40691 List!27221)) )
))
(declare-fun acc!823 () List!27221)

(declare-fun noDuplicate!1743 (List!27221) Bool)

(assert (=> b!1229568 (= res!818166 (noDuplicate!1743 acc!823))))

(declare-fun b!1229569 () Bool)

(declare-fun res!818168 () Bool)

(declare-fun e!697892 () Bool)

(assert (=> b!1229569 (=> res!818168 e!697892)))

(declare-fun lt!559162 () List!27221)

(declare-fun contains!7136 (List!27221 (_ BitVec 64)) Bool)

(assert (=> b!1229569 (= res!818168 (contains!7136 lt!559162 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229570 () Bool)

(declare-fun res!818161 () Bool)

(assert (=> b!1229570 (=> (not res!818161) (not e!697894))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229570 (= res!818161 (validKeyInArray!0 (select (arr!38270 a!3806) from!3184)))))

(declare-fun b!1229571 () Bool)

(declare-fun res!818169 () Bool)

(assert (=> b!1229571 (=> (not res!818169) (not e!697894))))

(declare-fun arrayNoDuplicates!0 (array!79308 (_ BitVec 32) List!27221) Bool)

(assert (=> b!1229571 (= res!818169 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229572 () Bool)

(declare-fun res!818171 () Bool)

(assert (=> b!1229572 (=> res!818171 e!697892)))

(assert (=> b!1229572 (= res!818171 (contains!7136 lt!559162 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229573 () Bool)

(declare-fun e!697893 () Bool)

(assert (=> b!1229573 (= e!697893 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27217 (select (arr!38270 a!3806) from!3184) Nil!27218)))))

(declare-fun b!1229574 () Bool)

(declare-fun res!818167 () Bool)

(assert (=> b!1229574 (=> (not res!818167) (not e!697894))))

(assert (=> b!1229574 (= res!818167 (not (contains!7136 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!818164 () Bool)

(assert (=> start!102194 (=> (not res!818164) (not e!697894))))

(assert (=> start!102194 (= res!818164 (bvslt (size!38807 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102194 e!697894))

(declare-fun array_inv!29046 (array!79308) Bool)

(assert (=> start!102194 (array_inv!29046 a!3806)))

(assert (=> start!102194 true))

(declare-fun b!1229575 () Bool)

(declare-fun res!818170 () Bool)

(assert (=> b!1229575 (=> (not res!818170) (not e!697894))))

(assert (=> b!1229575 (= res!818170 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38807 a!3806)) (bvslt from!3184 (size!38807 a!3806))))))

(declare-fun b!1229576 () Bool)

(declare-fun res!818158 () Bool)

(assert (=> b!1229576 (=> res!818158 e!697892)))

(assert (=> b!1229576 (= res!818158 (not (noDuplicate!1743 lt!559162)))))

(declare-fun b!1229577 () Bool)

(declare-fun res!818163 () Bool)

(assert (=> b!1229577 (=> (not res!818163) (not e!697894))))

(assert (=> b!1229577 (= res!818163 (not (contains!7136 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229578 () Bool)

(assert (=> b!1229578 (= e!697892 true)))

(declare-fun lt!559161 () Bool)

(assert (=> b!1229578 (= lt!559161 (contains!7136 lt!559162 (select (arr!38270 a!3806) from!3184)))))

(declare-fun b!1229579 () Bool)

(assert (=> b!1229579 (= e!697894 (not e!697892))))

(declare-fun res!818159 () Bool)

(assert (=> b!1229579 (=> res!818159 e!697892)))

(assert (=> b!1229579 (= res!818159 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229579 (= lt!559162 (Cons!27217 (select (arr!38270 a!3806) from!3184) Nil!27218))))

(assert (=> b!1229579 e!697893))

(declare-fun res!818162 () Bool)

(assert (=> b!1229579 (=> (not res!818162) (not e!697893))))

(assert (=> b!1229579 (= res!818162 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27218))))

(declare-datatypes ((Unit!40680 0))(
  ( (Unit!40681) )
))
(declare-fun lt!559163 () Unit!40680)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79308 List!27221 List!27221 (_ BitVec 32)) Unit!40680)

(assert (=> b!1229579 (= lt!559163 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27218 from!3184))))

(assert (=> b!1229579 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27217 (select (arr!38270 a!3806) from!3184) acc!823))))

(declare-fun b!1229580 () Bool)

(declare-fun res!818160 () Bool)

(assert (=> b!1229580 (=> (not res!818160) (not e!697894))))

(assert (=> b!1229580 (= res!818160 (validKeyInArray!0 k!2913))))

(assert (= (and start!102194 res!818164) b!1229580))

(assert (= (and b!1229580 res!818160) b!1229575))

(assert (= (and b!1229575 res!818170) b!1229568))

(assert (= (and b!1229568 res!818166) b!1229577))

(assert (= (and b!1229577 res!818163) b!1229574))

(assert (= (and b!1229574 res!818167) b!1229567))

(assert (= (and b!1229567 res!818165) b!1229571))

(assert (= (and b!1229571 res!818169) b!1229570))

(assert (= (and b!1229570 res!818161) b!1229579))

(assert (= (and b!1229579 res!818162) b!1229573))

(assert (= (and b!1229579 (not res!818159)) b!1229576))

(assert (= (and b!1229576 (not res!818158)) b!1229569))

(assert (= (and b!1229569 (not res!818168)) b!1229572))

(assert (= (and b!1229572 (not res!818171)) b!1229578))

(declare-fun m!1134163 () Bool)

(assert (=> b!1229569 m!1134163))

(declare-fun m!1134165 () Bool)

(assert (=> start!102194 m!1134165))

(declare-fun m!1134167 () Bool)

(assert (=> b!1229580 m!1134167))

(declare-fun m!1134169 () Bool)

(assert (=> b!1229577 m!1134169))

(declare-fun m!1134171 () Bool)

(assert (=> b!1229572 m!1134171))

(declare-fun m!1134173 () Bool)

(assert (=> b!1229579 m!1134173))

(declare-fun m!1134175 () Bool)

(assert (=> b!1229579 m!1134175))

(declare-fun m!1134177 () Bool)

(assert (=> b!1229579 m!1134177))

(declare-fun m!1134179 () Bool)

(assert (=> b!1229579 m!1134179))

(assert (=> b!1229573 m!1134173))

(declare-fun m!1134181 () Bool)

(assert (=> b!1229573 m!1134181))

(assert (=> b!1229570 m!1134173))

(assert (=> b!1229570 m!1134173))

(declare-fun m!1134183 () Bool)

(assert (=> b!1229570 m!1134183))

(declare-fun m!1134185 () Bool)

(assert (=> b!1229574 m!1134185))

(declare-fun m!1134187 () Bool)

(assert (=> b!1229571 m!1134187))

(assert (=> b!1229578 m!1134173))

(assert (=> b!1229578 m!1134173))

(declare-fun m!1134189 () Bool)

(assert (=> b!1229578 m!1134189))

(declare-fun m!1134191 () Bool)

(assert (=> b!1229576 m!1134191))

(declare-fun m!1134193 () Bool)

(assert (=> b!1229567 m!1134193))

(declare-fun m!1134195 () Bool)

(assert (=> b!1229568 m!1134195))

(push 1)

(assert (not b!1229569))

(assert (not b!1229570))

(assert (not b!1229579))

(assert (not b!1229577))

(assert (not b!1229571))

(assert (not b!1229572))

(assert (not b!1229580))

(assert (not b!1229567))

(assert (not start!102194))

