; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102046 () Bool)

(assert start!102046)

(declare-fun b!1228258 () Bool)

(declare-fun res!816987 () Bool)

(declare-fun e!697186 () Bool)

(assert (=> b!1228258 (=> (not res!816987) (not e!697186))))

(declare-datatypes ((array!79262 0))(
  ( (array!79263 (arr!38250 (Array (_ BitVec 32) (_ BitVec 64))) (size!38787 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79262)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228258 (= res!816987 (validKeyInArray!0 (select (arr!38250 a!3806) from!3184)))))

(declare-fun b!1228259 () Bool)

(declare-fun res!816991 () Bool)

(assert (=> b!1228259 (=> (not res!816991) (not e!697186))))

(declare-fun k!2913 () (_ BitVec 64))

(assert (=> b!1228259 (= res!816991 (validKeyInArray!0 k!2913))))

(declare-fun b!1228260 () Bool)

(declare-fun res!816993 () Bool)

(assert (=> b!1228260 (=> (not res!816993) (not e!697186))))

(declare-datatypes ((List!27201 0))(
  ( (Nil!27198) (Cons!27197 (h!28406 (_ BitVec 64)) (t!40671 List!27201)) )
))
(declare-fun acc!823 () List!27201)

(declare-fun noDuplicate!1723 (List!27201) Bool)

(assert (=> b!1228260 (= res!816993 (noDuplicate!1723 acc!823))))

(declare-fun b!1228261 () Bool)

(declare-fun res!816989 () Bool)

(assert (=> b!1228261 (=> (not res!816989) (not e!697186))))

(assert (=> b!1228261 (= res!816989 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38787 a!3806)) (bvslt from!3184 (size!38787 a!3806))))))

(declare-fun res!816994 () Bool)

(assert (=> start!102046 (=> (not res!816994) (not e!697186))))

(assert (=> start!102046 (= res!816994 (bvslt (size!38787 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102046 e!697186))

(declare-fun array_inv!29026 (array!79262) Bool)

(assert (=> start!102046 (array_inv!29026 a!3806)))

(assert (=> start!102046 true))

(declare-fun b!1228262 () Bool)

(declare-fun res!816990 () Bool)

(assert (=> b!1228262 (=> (not res!816990) (not e!697186))))

(declare-fun arrayNoDuplicates!0 (array!79262 (_ BitVec 32) List!27201) Bool)

(assert (=> b!1228262 (= res!816990 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228263 () Bool)

(declare-fun res!816995 () Bool)

(assert (=> b!1228263 (=> (not res!816995) (not e!697186))))

(declare-fun contains!7116 (List!27201 (_ BitVec 64)) Bool)

(assert (=> b!1228263 (= res!816995 (not (contains!7116 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228264 () Bool)

(declare-fun res!816988 () Bool)

(assert (=> b!1228264 (=> (not res!816988) (not e!697186))))

(declare-fun arrayContainsKey!0 (array!79262 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228264 (= res!816988 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228265 () Bool)

(assert (=> b!1228265 (= e!697186 (not true))))

(assert (=> b!1228265 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27198)))

(declare-datatypes ((Unit!40640 0))(
  ( (Unit!40641) )
))
(declare-fun lt!558926 () Unit!40640)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79262 List!27201 List!27201 (_ BitVec 32)) Unit!40640)

(assert (=> b!1228265 (= lt!558926 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27198 from!3184))))

(assert (=> b!1228265 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27197 (select (arr!38250 a!3806) from!3184) acc!823))))

(declare-fun b!1228266 () Bool)

(declare-fun res!816992 () Bool)

(assert (=> b!1228266 (=> (not res!816992) (not e!697186))))

(assert (=> b!1228266 (= res!816992 (not (contains!7116 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102046 res!816994) b!1228259))

(assert (= (and b!1228259 res!816991) b!1228261))

(assert (= (and b!1228261 res!816989) b!1228260))

(assert (= (and b!1228260 res!816993) b!1228266))

(assert (= (and b!1228266 res!816992) b!1228263))

(assert (= (and b!1228263 res!816995) b!1228264))

(assert (= (and b!1228264 res!816988) b!1228262))

(assert (= (and b!1228262 res!816990) b!1228258))

(assert (= (and b!1228258 res!816987) b!1228265))

(declare-fun m!1132853 () Bool)

(assert (=> start!102046 m!1132853))

(declare-fun m!1132855 () Bool)

(assert (=> b!1228266 m!1132855))

(declare-fun m!1132857 () Bool)

(assert (=> b!1228263 m!1132857))

(declare-fun m!1132859 () Bool)

(assert (=> b!1228258 m!1132859))

(assert (=> b!1228258 m!1132859))

(declare-fun m!1132861 () Bool)

(assert (=> b!1228258 m!1132861))

(declare-fun m!1132863 () Bool)

(assert (=> b!1228259 m!1132863))

(declare-fun m!1132865 () Bool)

(assert (=> b!1228260 m!1132865))

(declare-fun m!1132867 () Bool)

(assert (=> b!1228264 m!1132867))

(declare-fun m!1132869 () Bool)

(assert (=> b!1228265 m!1132869))

(declare-fun m!1132871 () Bool)

(assert (=> b!1228265 m!1132871))

(assert (=> b!1228265 m!1132859))

(declare-fun m!1132873 () Bool)

(assert (=> b!1228265 m!1132873))

(declare-fun m!1132875 () Bool)

(assert (=> b!1228262 m!1132875))

(push 1)

(assert (not b!1228264))

(assert (not b!1228265))

(assert (not b!1228266))

(assert (not b!1228260))

(assert (not b!1228263))

(assert (not b!1228258))

(assert (not b!1228262))

(assert (not start!102046))

(assert (not b!1228259))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

