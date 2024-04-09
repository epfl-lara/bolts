; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27120 () Bool)

(assert start!27120)

(declare-fun b!280215 () Bool)

(declare-fun res!143322 () Bool)

(declare-fun e!178478 () Bool)

(assert (=> b!280215 (=> (not res!143322) (not e!178478))))

(declare-datatypes ((array!13927 0))(
  ( (array!13928 (arr!6605 (Array (_ BitVec 32) (_ BitVec 64))) (size!6957 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13927)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!280215 (= res!143322 (and (= (size!6957 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6957 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6957 a!3325))))))

(declare-fun b!280216 () Bool)

(declare-fun e!178480 () Bool)

(assert (=> b!280216 (= e!178478 e!178480)))

(declare-fun res!143326 () Bool)

(assert (=> b!280216 (=> (not res!143326) (not e!178480))))

(declare-datatypes ((SeekEntryResult!1774 0))(
  ( (MissingZero!1774 (index!9266 (_ BitVec 32))) (Found!1774 (index!9267 (_ BitVec 32))) (Intermediate!1774 (undefined!2586 Bool) (index!9268 (_ BitVec 32)) (x!27476 (_ BitVec 32))) (Undefined!1774) (MissingVacant!1774 (index!9269 (_ BitVec 32))) )
))
(declare-fun lt!138820 () SeekEntryResult!1774)

(assert (=> b!280216 (= res!143326 (or (= lt!138820 (MissingZero!1774 i!1267)) (= lt!138820 (MissingVacant!1774 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13927 (_ BitVec 32)) SeekEntryResult!1774)

(assert (=> b!280216 (= lt!138820 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!280217 () Bool)

(declare-fun res!143333 () Bool)

(assert (=> b!280217 (=> (not res!143333) (not e!178480))))

(assert (=> b!280217 (= res!143333 (not (= startIndex!26 i!1267)))))

(declare-fun b!280218 () Bool)

(declare-fun res!143323 () Bool)

(assert (=> b!280218 (=> (not res!143323) (not e!178480))))

(declare-datatypes ((List!4434 0))(
  ( (Nil!4431) (Cons!4430 (h!5100 (_ BitVec 64)) (t!9524 List!4434)) )
))
(declare-fun contains!1984 (List!4434 (_ BitVec 64)) Bool)

(assert (=> b!280218 (= res!143323 (not (contains!1984 Nil!4431 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280219 () Bool)

(declare-fun res!143332 () Bool)

(assert (=> b!280219 (=> (not res!143332) (not e!178478))))

(declare-fun arrayContainsKey!0 (array!13927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280219 (= res!143332 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280221 () Bool)

(declare-fun res!143325 () Bool)

(assert (=> b!280221 (=> (not res!143325) (not e!178480))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13927 (_ BitVec 32)) Bool)

(assert (=> b!280221 (= res!143325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280222 () Bool)

(declare-fun res!143324 () Bool)

(assert (=> b!280222 (=> (not res!143324) (not e!178480))))

(declare-fun noDuplicate!168 (List!4434) Bool)

(assert (=> b!280222 (= res!143324 (noDuplicate!168 Nil!4431))))

(declare-fun b!280223 () Bool)

(assert (=> b!280223 (= e!178480 false)))

(declare-fun lt!138821 () Bool)

(assert (=> b!280223 (= lt!138821 (contains!1984 Nil!4431 k0!2581))))

(declare-fun b!280224 () Bool)

(declare-fun res!143329 () Bool)

(assert (=> b!280224 (=> (not res!143329) (not e!178480))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280224 (= res!143329 (validKeyInArray!0 (select (arr!6605 a!3325) startIndex!26)))))

(declare-fun b!280225 () Bool)

(declare-fun res!143327 () Bool)

(assert (=> b!280225 (=> (not res!143327) (not e!178478))))

(assert (=> b!280225 (= res!143327 (validKeyInArray!0 k0!2581))))

(declare-fun b!280226 () Bool)

(declare-fun res!143334 () Bool)

(assert (=> b!280226 (=> (not res!143334) (not e!178480))))

(assert (=> b!280226 (= res!143334 (not (contains!1984 Nil!4431 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!280227 () Bool)

(declare-fun res!143328 () Bool)

(assert (=> b!280227 (=> (not res!143328) (not e!178480))))

(assert (=> b!280227 (= res!143328 (and (bvslt (size!6957 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6957 a!3325))))))

(declare-fun res!143330 () Bool)

(assert (=> start!27120 (=> (not res!143330) (not e!178478))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27120 (= res!143330 (validMask!0 mask!3868))))

(assert (=> start!27120 e!178478))

(declare-fun array_inv!4559 (array!13927) Bool)

(assert (=> start!27120 (array_inv!4559 a!3325)))

(assert (=> start!27120 true))

(declare-fun b!280220 () Bool)

(declare-fun res!143331 () Bool)

(assert (=> b!280220 (=> (not res!143331) (not e!178478))))

(declare-fun arrayNoDuplicates!0 (array!13927 (_ BitVec 32) List!4434) Bool)

(assert (=> b!280220 (= res!143331 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4431))))

(assert (= (and start!27120 res!143330) b!280215))

(assert (= (and b!280215 res!143322) b!280225))

(assert (= (and b!280225 res!143327) b!280220))

(assert (= (and b!280220 res!143331) b!280219))

(assert (= (and b!280219 res!143332) b!280216))

(assert (= (and b!280216 res!143326) b!280221))

(assert (= (and b!280221 res!143325) b!280217))

(assert (= (and b!280217 res!143333) b!280224))

(assert (= (and b!280224 res!143329) b!280227))

(assert (= (and b!280227 res!143328) b!280222))

(assert (= (and b!280222 res!143324) b!280226))

(assert (= (and b!280226 res!143334) b!280218))

(assert (= (and b!280218 res!143323) b!280223))

(declare-fun m!294747 () Bool)

(assert (=> b!280226 m!294747))

(declare-fun m!294749 () Bool)

(assert (=> b!280220 m!294749))

(declare-fun m!294751 () Bool)

(assert (=> b!280216 m!294751))

(declare-fun m!294753 () Bool)

(assert (=> b!280222 m!294753))

(declare-fun m!294755 () Bool)

(assert (=> start!27120 m!294755))

(declare-fun m!294757 () Bool)

(assert (=> start!27120 m!294757))

(declare-fun m!294759 () Bool)

(assert (=> b!280221 m!294759))

(declare-fun m!294761 () Bool)

(assert (=> b!280218 m!294761))

(declare-fun m!294763 () Bool)

(assert (=> b!280224 m!294763))

(assert (=> b!280224 m!294763))

(declare-fun m!294765 () Bool)

(assert (=> b!280224 m!294765))

(declare-fun m!294767 () Bool)

(assert (=> b!280223 m!294767))

(declare-fun m!294769 () Bool)

(assert (=> b!280225 m!294769))

(declare-fun m!294771 () Bool)

(assert (=> b!280219 m!294771))

(check-sat (not start!27120) (not b!280216) (not b!280218) (not b!280220) (not b!280223) (not b!280226) (not b!280225) (not b!280221) (not b!280222) (not b!280219) (not b!280224))
(check-sat)
