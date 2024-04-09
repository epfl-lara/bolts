; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102618 () Bool)

(assert start!102618)

(declare-fun b!1233270 () Bool)

(declare-fun e!699643 () Bool)

(assert (=> b!1233270 (= e!699643 true)))

(declare-fun lt!559608 () Bool)

(declare-datatypes ((List!27302 0))(
  ( (Nil!27299) (Cons!27298 (h!28507 (_ BitVec 64)) (t!40772 List!27302)) )
))
(declare-fun lt!559607 () List!27302)

(declare-fun contains!7217 (List!27302 (_ BitVec 64)) Bool)

(assert (=> b!1233270 (= lt!559608 (contains!7217 lt!559607 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!821609 () Bool)

(declare-fun e!699645 () Bool)

(assert (=> start!102618 (=> (not res!821609) (not e!699645))))

(declare-datatypes ((array!79488 0))(
  ( (array!79489 (arr!38351 (Array (_ BitVec 32) (_ BitVec 64))) (size!38888 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79488)

(assert (=> start!102618 (= res!821609 (bvslt (size!38888 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102618 e!699645))

(declare-fun array_inv!29127 (array!79488) Bool)

(assert (=> start!102618 (array_inv!29127 a!3806)))

(assert (=> start!102618 true))

(declare-fun b!1233271 () Bool)

(declare-fun res!821599 () Bool)

(assert (=> b!1233271 (=> (not res!821599) (not e!699645))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1233271 (= res!821599 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1233272 () Bool)

(declare-fun res!821597 () Bool)

(assert (=> b!1233272 (=> (not res!821597) (not e!699645))))

(declare-fun acc!823 () List!27302)

(declare-fun noDuplicate!1824 (List!27302) Bool)

(assert (=> b!1233272 (= res!821597 (noDuplicate!1824 acc!823))))

(declare-fun b!1233273 () Bool)

(declare-fun res!821603 () Bool)

(assert (=> b!1233273 (=> res!821603 e!699643)))

(assert (=> b!1233273 (= res!821603 (not (noDuplicate!1824 lt!559607)))))

(declare-fun b!1233274 () Bool)

(assert (=> b!1233274 (= e!699645 (not e!699643))))

(declare-fun res!821607 () Bool)

(assert (=> b!1233274 (=> res!821607 e!699643)))

(assert (=> b!1233274 (= res!821607 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1233274 (= lt!559607 (Cons!27298 (select (arr!38351 a!3806) from!3184) Nil!27299))))

(declare-fun e!699644 () Bool)

(assert (=> b!1233274 e!699644))

(declare-fun res!821602 () Bool)

(assert (=> b!1233274 (=> (not res!821602) (not e!699644))))

(declare-fun arrayNoDuplicates!0 (array!79488 (_ BitVec 32) List!27302) Bool)

(assert (=> b!1233274 (= res!821602 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27299))))

(declare-datatypes ((Unit!40782 0))(
  ( (Unit!40783) )
))
(declare-fun lt!559609 () Unit!40782)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79488 List!27302 List!27302 (_ BitVec 32)) Unit!40782)

(assert (=> b!1233274 (= lt!559609 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27299 from!3184))))

(assert (=> b!1233274 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27298 (select (arr!38351 a!3806) from!3184) acc!823))))

(declare-fun b!1233275 () Bool)

(declare-fun res!821604 () Bool)

(assert (=> b!1233275 (=> (not res!821604) (not e!699645))))

(assert (=> b!1233275 (= res!821604 (not (contains!7217 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233276 () Bool)

(declare-fun res!821605 () Bool)

(assert (=> b!1233276 (=> res!821605 e!699643)))

(assert (=> b!1233276 (= res!821605 (contains!7217 lt!559607 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1233277 () Bool)

(assert (=> b!1233277 (= e!699644 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27298 (select (arr!38351 a!3806) from!3184) Nil!27299)))))

(declare-fun b!1233278 () Bool)

(declare-fun res!821600 () Bool)

(assert (=> b!1233278 (=> (not res!821600) (not e!699645))))

(assert (=> b!1233278 (= res!821600 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1233279 () Bool)

(declare-fun res!821608 () Bool)

(assert (=> b!1233279 (=> (not res!821608) (not e!699645))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1233279 (= res!821608 (validKeyInArray!0 k!2913))))

(declare-fun b!1233280 () Bool)

(declare-fun res!821598 () Bool)

(assert (=> b!1233280 (=> (not res!821598) (not e!699645))))

(assert (=> b!1233280 (= res!821598 (not (contains!7217 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1233281 () Bool)

(declare-fun res!821606 () Bool)

(assert (=> b!1233281 (=> (not res!821606) (not e!699645))))

(assert (=> b!1233281 (= res!821606 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38888 a!3806)) (bvslt from!3184 (size!38888 a!3806))))))

(declare-fun b!1233282 () Bool)

(declare-fun res!821601 () Bool)

(assert (=> b!1233282 (=> (not res!821601) (not e!699645))))

(assert (=> b!1233282 (= res!821601 (validKeyInArray!0 (select (arr!38351 a!3806) from!3184)))))

(assert (= (and start!102618 res!821609) b!1233279))

(assert (= (and b!1233279 res!821608) b!1233281))

(assert (= (and b!1233281 res!821606) b!1233272))

(assert (= (and b!1233272 res!821597) b!1233280))

(assert (= (and b!1233280 res!821598) b!1233275))

(assert (= (and b!1233275 res!821604) b!1233271))

(assert (= (and b!1233271 res!821599) b!1233278))

(assert (= (and b!1233278 res!821600) b!1233282))

(assert (= (and b!1233282 res!821601) b!1233274))

(assert (= (and b!1233274 res!821602) b!1233277))

(assert (= (and b!1233274 (not res!821607)) b!1233273))

(assert (= (and b!1233273 (not res!821603)) b!1233276))

(assert (= (and b!1233276 (not res!821605)) b!1233270))

(declare-fun m!1137411 () Bool)

(assert (=> b!1233271 m!1137411))

(declare-fun m!1137413 () Bool)

(assert (=> b!1233270 m!1137413))

(declare-fun m!1137415 () Bool)

(assert (=> b!1233272 m!1137415))

(declare-fun m!1137417 () Bool)

(assert (=> start!102618 m!1137417))

(declare-fun m!1137419 () Bool)

(assert (=> b!1233276 m!1137419))

(declare-fun m!1137421 () Bool)

(assert (=> b!1233274 m!1137421))

(declare-fun m!1137423 () Bool)

(assert (=> b!1233274 m!1137423))

(declare-fun m!1137425 () Bool)

(assert (=> b!1233274 m!1137425))

(declare-fun m!1137427 () Bool)

(assert (=> b!1233274 m!1137427))

(assert (=> b!1233282 m!1137421))

(assert (=> b!1233282 m!1137421))

(declare-fun m!1137429 () Bool)

(assert (=> b!1233282 m!1137429))

(declare-fun m!1137431 () Bool)

(assert (=> b!1233280 m!1137431))

(declare-fun m!1137433 () Bool)

(assert (=> b!1233278 m!1137433))

(assert (=> b!1233277 m!1137421))

(declare-fun m!1137435 () Bool)

(assert (=> b!1233277 m!1137435))

(declare-fun m!1137437 () Bool)

(assert (=> b!1233273 m!1137437))

(declare-fun m!1137439 () Bool)

(assert (=> b!1233275 m!1137439))

(declare-fun m!1137441 () Bool)

(assert (=> b!1233279 m!1137441))

(push 1)

(assert (not b!1233279))

(assert (not b!1233272))

(assert (not b!1233277))

(assert (not start!102618))

(assert (not b!1233274))

(assert (not b!1233275))

(assert (not b!1233282))

(assert (not b!1233270))

(assert (not b!1233280))

(assert (not b!1233278))

(assert (not b!1233271))

(assert (not b!1233276))

(assert (not b!1233273))

(check-sat)

