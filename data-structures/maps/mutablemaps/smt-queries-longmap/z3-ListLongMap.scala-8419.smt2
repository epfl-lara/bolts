; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102492 () Bool)

(assert start!102492)

(declare-fun b!1232307 () Bool)

(declare-fun e!698993 () Bool)

(declare-datatypes ((array!79462 0))(
  ( (array!79463 (arr!38341 (Array (_ BitVec 32) (_ BitVec 64))) (size!38878 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79462)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27292 0))(
  ( (Nil!27289) (Cons!27288 (h!28497 (_ BitVec 64)) (t!40762 List!27292)) )
))
(declare-fun arrayNoDuplicates!0 (array!79462 (_ BitVec 32) List!27292) Bool)

(assert (=> b!1232307 (= e!698993 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27288 (select (arr!38341 a!3806) from!3184) Nil!27289)))))

(declare-fun b!1232308 () Bool)

(declare-fun res!820799 () Bool)

(declare-fun e!698995 () Bool)

(assert (=> b!1232308 (=> (not res!820799) (not e!698995))))

(declare-fun acc!823 () List!27292)

(assert (=> b!1232308 (= res!820799 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1232309 () Bool)

(declare-fun res!820795 () Bool)

(assert (=> b!1232309 (=> (not res!820795) (not e!698995))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232309 (= res!820795 (validKeyInArray!0 (select (arr!38341 a!3806) from!3184)))))

(declare-fun b!1232310 () Bool)

(declare-fun res!820796 () Bool)

(assert (=> b!1232310 (=> (not res!820796) (not e!698995))))

(declare-fun noDuplicate!1814 (List!27292) Bool)

(assert (=> b!1232310 (= res!820796 (noDuplicate!1814 acc!823))))

(declare-fun b!1232312 () Bool)

(declare-fun res!820794 () Bool)

(assert (=> b!1232312 (=> (not res!820794) (not e!698995))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1232312 (= res!820794 (validKeyInArray!0 k0!2913))))

(declare-fun b!1232313 () Bool)

(declare-fun res!820791 () Bool)

(assert (=> b!1232313 (=> (not res!820791) (not e!698995))))

(declare-fun contains!7207 (List!27292 (_ BitVec 64)) Bool)

(assert (=> b!1232313 (= res!820791 (not (contains!7207 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232314 () Bool)

(assert (=> b!1232314 (= e!698995 (not true))))

(assert (=> b!1232314 e!698993))

(declare-fun res!820793 () Bool)

(assert (=> b!1232314 (=> (not res!820793) (not e!698993))))

(assert (=> b!1232314 (= res!820793 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27289))))

(declare-datatypes ((Unit!40762 0))(
  ( (Unit!40763) )
))
(declare-fun lt!559454 () Unit!40762)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79462 List!27292 List!27292 (_ BitVec 32)) Unit!40762)

(assert (=> b!1232314 (= lt!559454 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27289 from!3184))))

(assert (=> b!1232314 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27288 (select (arr!38341 a!3806) from!3184) acc!823))))

(declare-fun res!820797 () Bool)

(assert (=> start!102492 (=> (not res!820797) (not e!698995))))

(assert (=> start!102492 (= res!820797 (bvslt (size!38878 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102492 e!698995))

(declare-fun array_inv!29117 (array!79462) Bool)

(assert (=> start!102492 (array_inv!29117 a!3806)))

(assert (=> start!102492 true))

(declare-fun b!1232311 () Bool)

(declare-fun res!820792 () Bool)

(assert (=> b!1232311 (=> (not res!820792) (not e!698995))))

(declare-fun arrayContainsKey!0 (array!79462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232311 (= res!820792 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232315 () Bool)

(declare-fun res!820790 () Bool)

(assert (=> b!1232315 (=> (not res!820790) (not e!698995))))

(assert (=> b!1232315 (= res!820790 (not (contains!7207 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232316 () Bool)

(declare-fun res!820798 () Bool)

(assert (=> b!1232316 (=> (not res!820798) (not e!698995))))

(assert (=> b!1232316 (= res!820798 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38878 a!3806)) (bvslt from!3184 (size!38878 a!3806))))))

(assert (= (and start!102492 res!820797) b!1232312))

(assert (= (and b!1232312 res!820794) b!1232316))

(assert (= (and b!1232316 res!820798) b!1232310))

(assert (= (and b!1232310 res!820796) b!1232313))

(assert (= (and b!1232313 res!820791) b!1232315))

(assert (= (and b!1232315 res!820790) b!1232311))

(assert (= (and b!1232311 res!820792) b!1232308))

(assert (= (and b!1232308 res!820799) b!1232309))

(assert (= (and b!1232309 res!820795) b!1232314))

(assert (= (and b!1232314 res!820793) b!1232307))

(declare-fun m!1136377 () Bool)

(assert (=> b!1232312 m!1136377))

(declare-fun m!1136379 () Bool)

(assert (=> b!1232314 m!1136379))

(declare-fun m!1136381 () Bool)

(assert (=> b!1232314 m!1136381))

(declare-fun m!1136383 () Bool)

(assert (=> b!1232314 m!1136383))

(declare-fun m!1136385 () Bool)

(assert (=> b!1232314 m!1136385))

(declare-fun m!1136387 () Bool)

(assert (=> b!1232313 m!1136387))

(declare-fun m!1136389 () Bool)

(assert (=> b!1232308 m!1136389))

(declare-fun m!1136391 () Bool)

(assert (=> b!1232310 m!1136391))

(assert (=> b!1232309 m!1136383))

(assert (=> b!1232309 m!1136383))

(declare-fun m!1136393 () Bool)

(assert (=> b!1232309 m!1136393))

(declare-fun m!1136395 () Bool)

(assert (=> b!1232315 m!1136395))

(declare-fun m!1136397 () Bool)

(assert (=> b!1232311 m!1136397))

(assert (=> b!1232307 m!1136383))

(declare-fun m!1136399 () Bool)

(assert (=> b!1232307 m!1136399))

(declare-fun m!1136401 () Bool)

(assert (=> start!102492 m!1136401))

(check-sat (not b!1232315) (not start!102492) (not b!1232307) (not b!1232313) (not b!1232311) (not b!1232314) (not b!1232312) (not b!1232308) (not b!1232310) (not b!1232309))
(check-sat)
