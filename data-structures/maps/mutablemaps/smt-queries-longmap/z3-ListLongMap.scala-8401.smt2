; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102228 () Bool)

(assert start!102228)

(declare-fun b!1230189 () Bool)

(declare-fun e!698074 () Bool)

(declare-datatypes ((array!79342 0))(
  ( (array!79343 (arr!38287 (Array (_ BitVec 32) (_ BitVec 64))) (size!38824 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79342)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27238 0))(
  ( (Nil!27235) (Cons!27234 (h!28443 (_ BitVec 64)) (t!40708 List!27238)) )
))
(declare-fun arrayNoDuplicates!0 (array!79342 (_ BitVec 32) List!27238) Bool)

(assert (=> b!1230189 (= e!698074 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27234 (select (arr!38287 a!3806) from!3184) Nil!27235)))))

(declare-fun b!1230190 () Bool)

(declare-fun res!818788 () Bool)

(declare-fun e!698072 () Bool)

(assert (=> b!1230190 (=> (not res!818788) (not e!698072))))

(declare-fun acc!823 () List!27238)

(declare-fun noDuplicate!1760 (List!27238) Bool)

(assert (=> b!1230190 (= res!818788 (noDuplicate!1760 acc!823))))

(declare-fun b!1230191 () Bool)

(declare-fun res!818785 () Bool)

(assert (=> b!1230191 (=> (not res!818785) (not e!698072))))

(assert (=> b!1230191 (= res!818785 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38824 a!3806)) (bvslt from!3184 (size!38824 a!3806))))))

(declare-fun b!1230192 () Bool)

(declare-fun res!818786 () Bool)

(assert (=> b!1230192 (=> (not res!818786) (not e!698072))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79342 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230192 (= res!818786 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!818784 () Bool)

(assert (=> start!102228 (=> (not res!818784) (not e!698072))))

(assert (=> start!102228 (= res!818784 (bvslt (size!38824 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102228 e!698072))

(declare-fun array_inv!29063 (array!79342) Bool)

(assert (=> start!102228 (array_inv!29063 a!3806)))

(assert (=> start!102228 true))

(declare-fun b!1230193 () Bool)

(declare-fun res!818789 () Bool)

(assert (=> b!1230193 (=> (not res!818789) (not e!698072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230193 (= res!818789 (validKeyInArray!0 k0!2913))))

(declare-fun b!1230194 () Bool)

(declare-fun res!818780 () Bool)

(assert (=> b!1230194 (=> (not res!818780) (not e!698072))))

(declare-fun contains!7153 (List!27238 (_ BitVec 64)) Bool)

(assert (=> b!1230194 (= res!818780 (not (contains!7153 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230195 () Bool)

(assert (=> b!1230195 (= e!698072 (not true))))

(assert (=> b!1230195 (not (arrayContainsKey!0 a!3806 (select (arr!38287 a!3806) from!3184) (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-datatypes ((Unit!40714 0))(
  ( (Unit!40715) )
))
(declare-fun lt!559291 () Unit!40714)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!79342 (_ BitVec 32) (_ BitVec 64) List!27238) Unit!40714)

(assert (=> b!1230195 (= lt!559291 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (select (arr!38287 a!3806) from!3184) (Cons!27234 (select (arr!38287 a!3806) from!3184) Nil!27235)))))

(assert (=> b!1230195 e!698074))

(declare-fun res!818781 () Bool)

(assert (=> b!1230195 (=> (not res!818781) (not e!698074))))

(assert (=> b!1230195 (= res!818781 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27235))))

(declare-fun lt!559292 () Unit!40714)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79342 List!27238 List!27238 (_ BitVec 32)) Unit!40714)

(assert (=> b!1230195 (= lt!559292 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27235 from!3184))))

(assert (=> b!1230195 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27234 (select (arr!38287 a!3806) from!3184) acc!823))))

(declare-fun b!1230196 () Bool)

(declare-fun res!818787 () Bool)

(assert (=> b!1230196 (=> (not res!818787) (not e!698072))))

(assert (=> b!1230196 (= res!818787 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230197 () Bool)

(declare-fun res!818783 () Bool)

(assert (=> b!1230197 (=> (not res!818783) (not e!698072))))

(assert (=> b!1230197 (= res!818783 (not (contains!7153 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230198 () Bool)

(declare-fun res!818782 () Bool)

(assert (=> b!1230198 (=> (not res!818782) (not e!698072))))

(assert (=> b!1230198 (= res!818782 (validKeyInArray!0 (select (arr!38287 a!3806) from!3184)))))

(assert (= (and start!102228 res!818784) b!1230193))

(assert (= (and b!1230193 res!818789) b!1230191))

(assert (= (and b!1230191 res!818785) b!1230190))

(assert (= (and b!1230190 res!818788) b!1230194))

(assert (= (and b!1230194 res!818780) b!1230197))

(assert (= (and b!1230197 res!818783) b!1230192))

(assert (= (and b!1230192 res!818786) b!1230196))

(assert (= (and b!1230196 res!818787) b!1230198))

(assert (= (and b!1230198 res!818782) b!1230195))

(assert (= (and b!1230195 res!818781) b!1230189))

(declare-fun m!1134713 () Bool)

(assert (=> b!1230190 m!1134713))

(declare-fun m!1134715 () Bool)

(assert (=> b!1230194 m!1134715))

(declare-fun m!1134717 () Bool)

(assert (=> b!1230189 m!1134717))

(declare-fun m!1134719 () Bool)

(assert (=> b!1230189 m!1134719))

(declare-fun m!1134721 () Bool)

(assert (=> b!1230196 m!1134721))

(declare-fun m!1134723 () Bool)

(assert (=> b!1230192 m!1134723))

(declare-fun m!1134725 () Bool)

(assert (=> b!1230193 m!1134725))

(declare-fun m!1134727 () Bool)

(assert (=> b!1230195 m!1134727))

(declare-fun m!1134729 () Bool)

(assert (=> b!1230195 m!1134729))

(assert (=> b!1230195 m!1134717))

(declare-fun m!1134731 () Bool)

(assert (=> b!1230195 m!1134731))

(assert (=> b!1230195 m!1134717))

(declare-fun m!1134733 () Bool)

(assert (=> b!1230195 m!1134733))

(assert (=> b!1230195 m!1134717))

(declare-fun m!1134735 () Bool)

(assert (=> b!1230195 m!1134735))

(assert (=> b!1230198 m!1134717))

(assert (=> b!1230198 m!1134717))

(declare-fun m!1134737 () Bool)

(assert (=> b!1230198 m!1134737))

(declare-fun m!1134739 () Bool)

(assert (=> b!1230197 m!1134739))

(declare-fun m!1134741 () Bool)

(assert (=> start!102228 m!1134741))

(check-sat (not b!1230196) (not b!1230195) (not b!1230197) (not b!1230190) (not b!1230192) (not b!1230198) (not b!1230194) (not b!1230189) (not start!102228) (not b!1230193))
(check-sat)
