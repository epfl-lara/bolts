; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102298 () Bool)

(assert start!102298)

(declare-fun b!1230736 () Bool)

(declare-fun res!819303 () Bool)

(declare-fun e!698286 () Bool)

(assert (=> b!1230736 (=> (not res!819303) (not e!698286))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79379 0))(
  ( (array!79380 (arr!38304 (Array (_ BitVec 32) (_ BitVec 64))) (size!38841 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79379)

(declare-fun arrayContainsKey!0 (array!79379 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230736 (= res!819303 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230737 () Bool)

(declare-fun res!819309 () Bool)

(assert (=> b!1230737 (=> (not res!819309) (not e!698286))))

(assert (=> b!1230737 (= res!819309 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38841 a!3806)) (bvslt from!3184 (size!38841 a!3806))))))

(declare-fun b!1230738 () Bool)

(assert (=> b!1230738 (= e!698286 (not (bvsle from!3184 (size!38841 a!3806))))))

(declare-datatypes ((List!27255 0))(
  ( (Nil!27252) (Cons!27251 (h!28460 (_ BitVec 64)) (t!40725 List!27255)) )
))
(declare-fun acc!823 () List!27255)

(declare-fun arrayNoDuplicates!0 (array!79379 (_ BitVec 32) List!27255) Bool)

(assert (=> b!1230738 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27251 (select (arr!38304 a!3806) from!3184) acc!823))))

(declare-fun b!1230739 () Bool)

(declare-fun res!819308 () Bool)

(assert (=> b!1230739 (=> (not res!819308) (not e!698286))))

(declare-fun noDuplicate!1777 (List!27255) Bool)

(assert (=> b!1230739 (= res!819308 (noDuplicate!1777 acc!823))))

(declare-fun b!1230740 () Bool)

(declare-fun res!819305 () Bool)

(assert (=> b!1230740 (=> (not res!819305) (not e!698286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230740 (= res!819305 (validKeyInArray!0 k!2913))))

(declare-fun b!1230741 () Bool)

(declare-fun res!819311 () Bool)

(assert (=> b!1230741 (=> (not res!819311) (not e!698286))))

(declare-fun contains!7170 (List!27255 (_ BitVec 64)) Bool)

(assert (=> b!1230741 (= res!819311 (not (contains!7170 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230742 () Bool)

(declare-fun res!819306 () Bool)

(assert (=> b!1230742 (=> (not res!819306) (not e!698286))))

(assert (=> b!1230742 (= res!819306 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!819310 () Bool)

(assert (=> start!102298 (=> (not res!819310) (not e!698286))))

(assert (=> start!102298 (= res!819310 (bvslt (size!38841 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102298 e!698286))

(declare-fun array_inv!29080 (array!79379) Bool)

(assert (=> start!102298 (array_inv!29080 a!3806)))

(assert (=> start!102298 true))

(declare-fun b!1230743 () Bool)

(declare-fun res!819304 () Bool)

(assert (=> b!1230743 (=> (not res!819304) (not e!698286))))

(assert (=> b!1230743 (= res!819304 (validKeyInArray!0 (select (arr!38304 a!3806) from!3184)))))

(declare-fun b!1230744 () Bool)

(declare-fun res!819307 () Bool)

(assert (=> b!1230744 (=> (not res!819307) (not e!698286))))

(assert (=> b!1230744 (= res!819307 (not (contains!7170 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102298 res!819310) b!1230740))

(assert (= (and b!1230740 res!819305) b!1230737))

(assert (= (and b!1230737 res!819309) b!1230739))

(assert (= (and b!1230739 res!819308) b!1230741))

(assert (= (and b!1230741 res!819311) b!1230744))

(assert (= (and b!1230744 res!819307) b!1230736))

(assert (= (and b!1230736 res!819303) b!1230742))

(assert (= (and b!1230742 res!819306) b!1230743))

(assert (= (and b!1230743 res!819304) b!1230738))

(declare-fun m!1135121 () Bool)

(assert (=> start!102298 m!1135121))

(declare-fun m!1135123 () Bool)

(assert (=> b!1230736 m!1135123))

(declare-fun m!1135125 () Bool)

(assert (=> b!1230741 m!1135125))

(declare-fun m!1135127 () Bool)

(assert (=> b!1230739 m!1135127))

(declare-fun m!1135129 () Bool)

(assert (=> b!1230744 m!1135129))

(declare-fun m!1135131 () Bool)

(assert (=> b!1230738 m!1135131))

(declare-fun m!1135133 () Bool)

(assert (=> b!1230738 m!1135133))

(declare-fun m!1135135 () Bool)

(assert (=> b!1230740 m!1135135))

(declare-fun m!1135137 () Bool)

(assert (=> b!1230742 m!1135137))

(assert (=> b!1230743 m!1135131))

(assert (=> b!1230743 m!1135131))

(declare-fun m!1135139 () Bool)

(assert (=> b!1230743 m!1135139))

(push 1)

(assert (not b!1230742))

(assert (not start!102298))

(assert (not b!1230741))

(assert (not b!1230736))

(assert (not b!1230740))

(assert (not b!1230739))

(assert (not b!1230738))

(assert (not b!1230743))

(assert (not b!1230744))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

