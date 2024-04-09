; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102044 () Bool)

(assert start!102044)

(declare-fun b!1228231 () Bool)

(declare-fun res!816961 () Bool)

(declare-fun e!697180 () Bool)

(assert (=> b!1228231 (=> (not res!816961) (not e!697180))))

(declare-datatypes ((array!79260 0))(
  ( (array!79261 (arr!38249 (Array (_ BitVec 32) (_ BitVec 64))) (size!38786 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79260)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79260 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228231 (= res!816961 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228232 () Bool)

(declare-fun res!816962 () Bool)

(assert (=> b!1228232 (=> (not res!816962) (not e!697180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228232 (= res!816962 (validKeyInArray!0 k!2913))))

(declare-fun b!1228233 () Bool)

(assert (=> b!1228233 (= e!697180 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!27200 0))(
  ( (Nil!27197) (Cons!27196 (h!28405 (_ BitVec 64)) (t!40670 List!27200)) )
))
(declare-fun arrayNoDuplicates!0 (array!79260 (_ BitVec 32) List!27200) Bool)

(assert (=> b!1228233 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27197)))

(declare-datatypes ((Unit!40638 0))(
  ( (Unit!40639) )
))
(declare-fun lt!558923 () Unit!40638)

(declare-fun acc!823 () List!27200)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79260 List!27200 List!27200 (_ BitVec 32)) Unit!40638)

(assert (=> b!1228233 (= lt!558923 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27197 from!3184))))

(assert (=> b!1228233 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27196 (select (arr!38249 a!3806) from!3184) acc!823))))

(declare-fun b!1228234 () Bool)

(declare-fun res!816963 () Bool)

(assert (=> b!1228234 (=> (not res!816963) (not e!697180))))

(assert (=> b!1228234 (= res!816963 (validKeyInArray!0 (select (arr!38249 a!3806) from!3184)))))

(declare-fun b!1228235 () Bool)

(declare-fun res!816960 () Bool)

(assert (=> b!1228235 (=> (not res!816960) (not e!697180))))

(assert (=> b!1228235 (= res!816960 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!816965 () Bool)

(assert (=> start!102044 (=> (not res!816965) (not e!697180))))

(assert (=> start!102044 (= res!816965 (bvslt (size!38786 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102044 e!697180))

(declare-fun array_inv!29025 (array!79260) Bool)

(assert (=> start!102044 (array_inv!29025 a!3806)))

(assert (=> start!102044 true))

(declare-fun b!1228236 () Bool)

(declare-fun res!816968 () Bool)

(assert (=> b!1228236 (=> (not res!816968) (not e!697180))))

(declare-fun noDuplicate!1722 (List!27200) Bool)

(assert (=> b!1228236 (= res!816968 (noDuplicate!1722 acc!823))))

(declare-fun b!1228237 () Bool)

(declare-fun res!816967 () Bool)

(assert (=> b!1228237 (=> (not res!816967) (not e!697180))))

(declare-fun contains!7115 (List!27200 (_ BitVec 64)) Bool)

(assert (=> b!1228237 (= res!816967 (not (contains!7115 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228238 () Bool)

(declare-fun res!816964 () Bool)

(assert (=> b!1228238 (=> (not res!816964) (not e!697180))))

(assert (=> b!1228238 (= res!816964 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38786 a!3806)) (bvslt from!3184 (size!38786 a!3806))))))

(declare-fun b!1228239 () Bool)

(declare-fun res!816966 () Bool)

(assert (=> b!1228239 (=> (not res!816966) (not e!697180))))

(assert (=> b!1228239 (= res!816966 (not (contains!7115 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102044 res!816965) b!1228232))

(assert (= (and b!1228232 res!816962) b!1228238))

(assert (= (and b!1228238 res!816964) b!1228236))

(assert (= (and b!1228236 res!816968) b!1228237))

(assert (= (and b!1228237 res!816967) b!1228239))

(assert (= (and b!1228239 res!816966) b!1228231))

(assert (= (and b!1228231 res!816961) b!1228235))

(assert (= (and b!1228235 res!816960) b!1228234))

(assert (= (and b!1228234 res!816963) b!1228233))

(declare-fun m!1132829 () Bool)

(assert (=> b!1228234 m!1132829))

(assert (=> b!1228234 m!1132829))

(declare-fun m!1132831 () Bool)

(assert (=> b!1228234 m!1132831))

(declare-fun m!1132833 () Bool)

(assert (=> b!1228237 m!1132833))

(declare-fun m!1132835 () Bool)

(assert (=> b!1228239 m!1132835))

(declare-fun m!1132837 () Bool)

(assert (=> b!1228233 m!1132837))

(declare-fun m!1132839 () Bool)

(assert (=> b!1228233 m!1132839))

(assert (=> b!1228233 m!1132829))

(declare-fun m!1132841 () Bool)

(assert (=> b!1228233 m!1132841))

(declare-fun m!1132843 () Bool)

(assert (=> b!1228235 m!1132843))

(declare-fun m!1132845 () Bool)

(assert (=> start!102044 m!1132845))

(declare-fun m!1132847 () Bool)

(assert (=> b!1228231 m!1132847))

(declare-fun m!1132849 () Bool)

(assert (=> b!1228236 m!1132849))

(declare-fun m!1132851 () Bool)

(assert (=> b!1228232 m!1132851))

(push 1)

(assert (not b!1228233))

(assert (not b!1228237))

(assert (not b!1228232))

(assert (not b!1228234))

(assert (not b!1228235))

(assert (not b!1228231))

(assert (not start!102044))

(assert (not b!1228236))

(assert (not b!1228239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

