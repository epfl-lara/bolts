; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102616 () Bool)

(assert start!102616)

(declare-fun b!1233231 () Bool)

(declare-fun res!821566 () Bool)

(declare-fun e!699634 () Bool)

(assert (=> b!1233231 (=> res!821566 e!699634)))

(declare-datatypes ((List!27301 0))(
  ( (Nil!27298) (Cons!27297 (h!28506 (_ BitVec 64)) (t!40771 List!27301)) )
))
(declare-fun lt!559599 () List!27301)

(declare-fun noDuplicate!1823 (List!27301) Bool)

(assert (=> b!1233231 (= res!821566 (not (noDuplicate!1823 lt!559599)))))

(declare-fun b!1233232 () Bool)

(declare-fun res!821570 () Bool)

(declare-fun e!699631 () Bool)

(assert (=> b!1233232 (=> (not res!821570) (not e!699631))))

(declare-datatypes ((array!79486 0))(
  ( (array!79487 (arr!38350 (Array (_ BitVec 32) (_ BitVec 64))) (size!38887 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79486)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233232 (= res!821570 (validKeyInArray!0 (select (arr!38350 a!3806) from!3184)))))

(declare-fun b!1233233 () Bool)

(declare-fun res!821561 () Bool)

(assert (=> b!1233233 (=> (not res!821561) (not e!699631))))

(declare-fun acc!823 () List!27301)

(declare-fun contains!7216 (List!27301 (_ BitVec 64)) Bool)

(assert (=> b!1233233 (= res!821561 (not (contains!7216 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233234 () Bool)

(assert (=> b!1233234 (= e!699634 true)))

(declare-fun lt!559598 () Bool)

(assert (=> b!1233234 (= lt!559598 (contains!7216 lt!559599 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233235 () Bool)

(declare-fun res!821568 () Bool)

(assert (=> b!1233235 (=> (not res!821568) (not e!699631))))

(assert (=> b!1233235 (= res!821568 (not (contains!7216 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233236 () Bool)

(assert (=> b!1233236 (= e!699631 (not e!699634))))

(declare-fun res!821562 () Bool)

(assert (=> b!1233236 (=> res!821562 e!699634)))

(assert (=> b!1233236 (= res!821562 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1233236 (= lt!559599 (Cons!27297 (select (arr!38350 a!3806) from!3184) Nil!27298))))

(declare-fun e!699633 () Bool)

(assert (=> b!1233236 e!699633))

(declare-fun res!821558 () Bool)

(assert (=> b!1233236 (=> (not res!821558) (not e!699633))))

(declare-fun arrayNoDuplicates!0 (array!79486 (_ BitVec 32) List!27301) Bool)

(assert (=> b!1233236 (= res!821558 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27298))))

(declare-datatypes ((Unit!40780 0))(
  ( (Unit!40781) )
))
(declare-fun lt!559600 () Unit!40780)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79486 List!27301 List!27301 (_ BitVec 32)) Unit!40780)

(assert (=> b!1233236 (= lt!559600 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27298 from!3184))))

(assert (=> b!1233236 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27297 (select (arr!38350 a!3806) from!3184) acc!823))))

(declare-fun b!1233237 () Bool)

(declare-fun res!821564 () Bool)

(assert (=> b!1233237 (=> (not res!821564) (not e!699631))))

(assert (=> b!1233237 (= res!821564 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38887 a!3806)) (bvslt from!3184 (size!38887 a!3806))))))

(declare-fun res!821569 () Bool)

(assert (=> start!102616 (=> (not res!821569) (not e!699631))))

(assert (=> start!102616 (= res!821569 (bvslt (size!38887 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102616 e!699631))

(declare-fun array_inv!29126 (array!79486) Bool)

(assert (=> start!102616 (array_inv!29126 a!3806)))

(assert (=> start!102616 true))

(declare-fun b!1233238 () Bool)

(declare-fun res!821567 () Bool)

(assert (=> b!1233238 (=> (not res!821567) (not e!699631))))

(assert (=> b!1233238 (= res!821567 (noDuplicate!1823 acc!823))))

(declare-fun b!1233239 () Bool)

(assert (=> b!1233239 (= e!699633 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27297 (select (arr!38350 a!3806) from!3184) Nil!27298)))))

(declare-fun b!1233240 () Bool)

(declare-fun res!821560 () Bool)

(assert (=> b!1233240 (=> (not res!821560) (not e!699631))))

(assert (=> b!1233240 (= res!821560 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233241 () Bool)

(declare-fun res!821559 () Bool)

(assert (=> b!1233241 (=> res!821559 e!699634)))

(assert (=> b!1233241 (= res!821559 (contains!7216 lt!559599 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233242 () Bool)

(declare-fun res!821563 () Bool)

(assert (=> b!1233242 (=> (not res!821563) (not e!699631))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233242 (= res!821563 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233243 () Bool)

(declare-fun res!821565 () Bool)

(assert (=> b!1233243 (=> (not res!821565) (not e!699631))))

(assert (=> b!1233243 (= res!821565 (validKeyInArray!0 k0!2913))))

(assert (= (and start!102616 res!821569) b!1233243))

(assert (= (and b!1233243 res!821565) b!1233237))

(assert (= (and b!1233237 res!821564) b!1233238))

(assert (= (and b!1233238 res!821567) b!1233235))

(assert (= (and b!1233235 res!821568) b!1233233))

(assert (= (and b!1233233 res!821561) b!1233242))

(assert (= (and b!1233242 res!821563) b!1233240))

(assert (= (and b!1233240 res!821560) b!1233232))

(assert (= (and b!1233232 res!821570) b!1233236))

(assert (= (and b!1233236 res!821558) b!1233239))

(assert (= (and b!1233236 (not res!821562)) b!1233231))

(assert (= (and b!1233231 (not res!821566)) b!1233241))

(assert (= (and b!1233241 (not res!821559)) b!1233234))

(declare-fun m!1137379 () Bool)

(assert (=> b!1233234 m!1137379))

(declare-fun m!1137381 () Bool)

(assert (=> b!1233243 m!1137381))

(declare-fun m!1137383 () Bool)

(assert (=> b!1233241 m!1137383))

(declare-fun m!1137385 () Bool)

(assert (=> b!1233240 m!1137385))

(declare-fun m!1137387 () Bool)

(assert (=> b!1233242 m!1137387))

(declare-fun m!1137389 () Bool)

(assert (=> b!1233232 m!1137389))

(assert (=> b!1233232 m!1137389))

(declare-fun m!1137391 () Bool)

(assert (=> b!1233232 m!1137391))

(declare-fun m!1137393 () Bool)

(assert (=> start!102616 m!1137393))

(assert (=> b!1233239 m!1137389))

(declare-fun m!1137395 () Bool)

(assert (=> b!1233239 m!1137395))

(declare-fun m!1137397 () Bool)

(assert (=> b!1233231 m!1137397))

(declare-fun m!1137399 () Bool)

(assert (=> b!1233233 m!1137399))

(declare-fun m!1137401 () Bool)

(assert (=> b!1233238 m!1137401))

(assert (=> b!1233236 m!1137389))

(declare-fun m!1137403 () Bool)

(assert (=> b!1233236 m!1137403))

(declare-fun m!1137405 () Bool)

(assert (=> b!1233236 m!1137405))

(declare-fun m!1137407 () Bool)

(assert (=> b!1233236 m!1137407))

(declare-fun m!1137409 () Bool)

(assert (=> b!1233235 m!1137409))

(check-sat (not b!1233231) (not b!1233240) (not start!102616) (not b!1233233) (not b!1233242) (not b!1233243) (not b!1233235) (not b!1233239) (not b!1233241) (not b!1233236) (not b!1233232) (not b!1233234) (not b!1233238))
(check-sat)
