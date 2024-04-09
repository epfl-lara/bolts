; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102698 () Bool)

(assert start!102698)

(declare-fun b!1234024 () Bool)

(declare-fun res!822316 () Bool)

(declare-fun e!699969 () Bool)

(assert (=> b!1234024 (=> (not res!822316) (not e!699969))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79529 0))(
  ( (array!79530 (arr!38370 (Array (_ BitVec 32) (_ BitVec 64))) (size!38907 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79529)

(assert (=> b!1234024 (= res!822316 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38907 a!3806)) (bvslt from!3184 (size!38907 a!3806))))))

(declare-fun b!1234025 () Bool)

(declare-fun res!822320 () Bool)

(assert (=> b!1234025 (=> (not res!822320) (not e!699969))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234025 (= res!822320 (validKeyInArray!0 k!2913))))

(declare-fun b!1234026 () Bool)

(declare-fun res!822322 () Bool)

(assert (=> b!1234026 (=> (not res!822322) (not e!699969))))

(declare-datatypes ((List!27321 0))(
  ( (Nil!27318) (Cons!27317 (h!28526 (_ BitVec 64)) (t!40791 List!27321)) )
))
(declare-fun acc!823 () List!27321)

(declare-fun contains!7236 (List!27321 (_ BitVec 64)) Bool)

(assert (=> b!1234026 (= res!822322 (not (contains!7236 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234027 () Bool)

(declare-fun res!822321 () Bool)

(assert (=> b!1234027 (=> (not res!822321) (not e!699969))))

(declare-fun arrayNoDuplicates!0 (array!79529 (_ BitVec 32) List!27321) Bool)

(assert (=> b!1234027 (= res!822321 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!822318 () Bool)

(assert (=> start!102698 (=> (not res!822318) (not e!699969))))

(assert (=> start!102698 (= res!822318 (bvslt (size!38907 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102698 e!699969))

(declare-fun array_inv!29146 (array!79529) Bool)

(assert (=> start!102698 (array_inv!29146 a!3806)))

(assert (=> start!102698 true))

(declare-fun b!1234028 () Bool)

(declare-fun res!822319 () Bool)

(assert (=> b!1234028 (=> (not res!822319) (not e!699969))))

(declare-fun arrayContainsKey!0 (array!79529 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1234028 (= res!822319 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1234029 () Bool)

(declare-fun res!822317 () Bool)

(assert (=> b!1234029 (=> (not res!822317) (not e!699969))))

(assert (=> b!1234029 (= res!822317 (not (contains!7236 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234030 () Bool)

(assert (=> b!1234030 (= e!699969 (= (select (arr!38370 a!3806) from!3184) k!2913))))

(declare-fun b!1234031 () Bool)

(declare-fun res!822323 () Bool)

(assert (=> b!1234031 (=> (not res!822323) (not e!699969))))

(declare-fun noDuplicate!1843 (List!27321) Bool)

(assert (=> b!1234031 (= res!822323 (noDuplicate!1843 acc!823))))

(declare-fun b!1234032 () Bool)

(declare-fun res!822315 () Bool)

(assert (=> b!1234032 (=> (not res!822315) (not e!699969))))

(assert (=> b!1234032 (= res!822315 (not (validKeyInArray!0 (select (arr!38370 a!3806) from!3184))))))

(assert (= (and start!102698 res!822318) b!1234025))

(assert (= (and b!1234025 res!822320) b!1234024))

(assert (= (and b!1234024 res!822316) b!1234031))

(assert (= (and b!1234031 res!822323) b!1234026))

(assert (= (and b!1234026 res!822322) b!1234029))

(assert (= (and b!1234029 res!822317) b!1234028))

(assert (= (and b!1234028 res!822319) b!1234027))

(assert (= (and b!1234027 res!822321) b!1234032))

(assert (= (and b!1234032 res!822315) b!1234030))

(declare-fun m!1138115 () Bool)

(assert (=> b!1234030 m!1138115))

(declare-fun m!1138117 () Bool)

(assert (=> b!1234026 m!1138117))

(declare-fun m!1138119 () Bool)

(assert (=> b!1234031 m!1138119))

(declare-fun m!1138121 () Bool)

(assert (=> b!1234028 m!1138121))

(declare-fun m!1138123 () Bool)

(assert (=> b!1234027 m!1138123))

(declare-fun m!1138125 () Bool)

(assert (=> b!1234025 m!1138125))

(assert (=> b!1234032 m!1138115))

(assert (=> b!1234032 m!1138115))

(declare-fun m!1138127 () Bool)

(assert (=> b!1234032 m!1138127))

(declare-fun m!1138129 () Bool)

(assert (=> b!1234029 m!1138129))

(declare-fun m!1138131 () Bool)

(assert (=> start!102698 m!1138131))

(push 1)

(assert (not b!1234027))

(assert (not b!1234029))

(assert (not b!1234028))

(assert (not start!102698))

(assert (not b!1234026))

(assert (not b!1234032))

(assert (not b!1234025))

(assert (not b!1234031))

(check-sat)

(pop 1)

