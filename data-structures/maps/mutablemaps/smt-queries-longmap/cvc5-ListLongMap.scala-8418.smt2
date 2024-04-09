; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102484 () Bool)

(assert start!102484)

(declare-fun b!1232187 () Bool)

(declare-fun res!820678 () Bool)

(declare-fun e!698958 () Bool)

(assert (=> b!1232187 (=> (not res!820678) (not e!698958))))

(declare-datatypes ((List!27288 0))(
  ( (Nil!27285) (Cons!27284 (h!28493 (_ BitVec 64)) (t!40758 List!27288)) )
))
(declare-fun acc!823 () List!27288)

(declare-fun contains!7203 (List!27288 (_ BitVec 64)) Bool)

(assert (=> b!1232187 (= res!820678 (not (contains!7203 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232188 () Bool)

(declare-fun res!820677 () Bool)

(assert (=> b!1232188 (=> (not res!820677) (not e!698958))))

(declare-datatypes ((array!79454 0))(
  ( (array!79455 (arr!38337 (Array (_ BitVec 32) (_ BitVec 64))) (size!38874 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79454)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232188 (= res!820677 (validKeyInArray!0 (select (arr!38337 a!3806) from!3184)))))

(declare-fun b!1232189 () Bool)

(declare-fun res!820672 () Bool)

(assert (=> b!1232189 (=> (not res!820672) (not e!698958))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79454 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232189 (= res!820672 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232190 () Bool)

(declare-fun res!820671 () Bool)

(assert (=> b!1232190 (=> (not res!820671) (not e!698958))))

(assert (=> b!1232190 (= res!820671 (not (contains!7203 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232191 () Bool)

(declare-fun res!820676 () Bool)

(assert (=> b!1232191 (=> (not res!820676) (not e!698958))))

(assert (=> b!1232191 (= res!820676 (validKeyInArray!0 k!2913))))

(declare-fun b!1232192 () Bool)

(declare-fun res!820675 () Bool)

(assert (=> b!1232192 (=> (not res!820675) (not e!698958))))

(assert (=> b!1232192 (= res!820675 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38874 a!3806)) (bvslt from!3184 (size!38874 a!3806))))))

(declare-fun b!1232193 () Bool)

(declare-fun e!698959 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79454 (_ BitVec 32) List!27288) Bool)

(assert (=> b!1232193 (= e!698959 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27284 (select (arr!38337 a!3806) from!3184) Nil!27285)))))

(declare-fun b!1232195 () Bool)

(declare-fun res!820679 () Bool)

(assert (=> b!1232195 (=> (not res!820679) (not e!698958))))

(assert (=> b!1232195 (= res!820679 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232196 () Bool)

(assert (=> b!1232196 (= e!698958 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000)))))

(assert (=> b!1232196 e!698959))

(declare-fun res!820674 () Bool)

(assert (=> b!1232196 (=> (not res!820674) (not e!698959))))

(assert (=> b!1232196 (= res!820674 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27285))))

(declare-datatypes ((Unit!40754 0))(
  ( (Unit!40755) )
))
(declare-fun lt!559442 () Unit!40754)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79454 List!27288 List!27288 (_ BitVec 32)) Unit!40754)

(assert (=> b!1232196 (= lt!559442 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27285 from!3184))))

(assert (=> b!1232196 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27284 (select (arr!38337 a!3806) from!3184) acc!823))))

(declare-fun res!820673 () Bool)

(assert (=> start!102484 (=> (not res!820673) (not e!698958))))

(assert (=> start!102484 (= res!820673 (bvslt (size!38874 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102484 e!698958))

(declare-fun array_inv!29113 (array!79454) Bool)

(assert (=> start!102484 (array_inv!29113 a!3806)))

(assert (=> start!102484 true))

(declare-fun b!1232194 () Bool)

(declare-fun res!820670 () Bool)

(assert (=> b!1232194 (=> (not res!820670) (not e!698958))))

(declare-fun noDuplicate!1810 (List!27288) Bool)

(assert (=> b!1232194 (= res!820670 (noDuplicate!1810 acc!823))))

(assert (= (and start!102484 res!820673) b!1232191))

(assert (= (and b!1232191 res!820676) b!1232192))

(assert (= (and b!1232192 res!820675) b!1232194))

(assert (= (and b!1232194 res!820670) b!1232187))

(assert (= (and b!1232187 res!820678) b!1232190))

(assert (= (and b!1232190 res!820671) b!1232189))

(assert (= (and b!1232189 res!820672) b!1232195))

(assert (= (and b!1232195 res!820679) b!1232188))

(assert (= (and b!1232188 res!820677) b!1232196))

(assert (= (and b!1232196 res!820674) b!1232193))

(declare-fun m!1136273 () Bool)

(assert (=> b!1232195 m!1136273))

(declare-fun m!1136275 () Bool)

(assert (=> b!1232187 m!1136275))

(declare-fun m!1136277 () Bool)

(assert (=> b!1232190 m!1136277))

(declare-fun m!1136279 () Bool)

(assert (=> b!1232193 m!1136279))

(declare-fun m!1136281 () Bool)

(assert (=> b!1232193 m!1136281))

(declare-fun m!1136283 () Bool)

(assert (=> b!1232194 m!1136283))

(assert (=> b!1232188 m!1136279))

(assert (=> b!1232188 m!1136279))

(declare-fun m!1136285 () Bool)

(assert (=> b!1232188 m!1136285))

(declare-fun m!1136287 () Bool)

(assert (=> start!102484 m!1136287))

(declare-fun m!1136289 () Bool)

(assert (=> b!1232196 m!1136289))

(declare-fun m!1136291 () Bool)

(assert (=> b!1232196 m!1136291))

(assert (=> b!1232196 m!1136279))

(declare-fun m!1136293 () Bool)

(assert (=> b!1232196 m!1136293))

(declare-fun m!1136295 () Bool)

(assert (=> b!1232191 m!1136295))

(declare-fun m!1136297 () Bool)

(assert (=> b!1232189 m!1136297))

(push 1)

