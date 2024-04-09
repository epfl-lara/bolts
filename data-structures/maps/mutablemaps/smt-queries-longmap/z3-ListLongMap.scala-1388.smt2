; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27192 () Bool)

(assert start!27192)

(declare-fun b!281239 () Bool)

(declare-fun res!144354 () Bool)

(declare-fun e!178804 () Bool)

(assert (=> b!281239 (=> (not res!144354) (not e!178804))))

(declare-datatypes ((array!13999 0))(
  ( (array!14000 (arr!6641 (Array (_ BitVec 32) (_ BitVec 64))) (size!6993 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13999)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!281239 (= res!144354 (and (= (size!6993 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6993 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6993 a!3325))))))

(declare-fun b!281240 () Bool)

(declare-fun e!178803 () Bool)

(assert (=> b!281240 (= e!178804 e!178803)))

(declare-fun res!144351 () Bool)

(assert (=> b!281240 (=> (not res!144351) (not e!178803))))

(declare-datatypes ((SeekEntryResult!1810 0))(
  ( (MissingZero!1810 (index!9410 (_ BitVec 32))) (Found!1810 (index!9411 (_ BitVec 32))) (Intermediate!1810 (undefined!2622 Bool) (index!9412 (_ BitVec 32)) (x!27608 (_ BitVec 32))) (Undefined!1810) (MissingVacant!1810 (index!9413 (_ BitVec 32))) )
))
(declare-fun lt!139037 () SeekEntryResult!1810)

(assert (=> b!281240 (= res!144351 (or (= lt!139037 (MissingZero!1810 i!1267)) (= lt!139037 (MissingVacant!1810 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13999 (_ BitVec 32)) SeekEntryResult!1810)

(assert (=> b!281240 (= lt!139037 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281241 () Bool)

(declare-fun res!144347 () Bool)

(assert (=> b!281241 (=> (not res!144347) (not e!178803))))

(assert (=> b!281241 (= res!144347 (not (= startIndex!26 i!1267)))))

(declare-fun res!144348 () Bool)

(assert (=> start!27192 (=> (not res!144348) (not e!178804))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27192 (= res!144348 (validMask!0 mask!3868))))

(assert (=> start!27192 e!178804))

(declare-fun array_inv!4595 (array!13999) Bool)

(assert (=> start!27192 (array_inv!4595 a!3325)))

(assert (=> start!27192 true))

(declare-fun b!281242 () Bool)

(declare-fun res!144350 () Bool)

(assert (=> b!281242 (=> (not res!144350) (not e!178804))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281242 (= res!144350 (validKeyInArray!0 k0!2581))))

(declare-fun b!281243 () Bool)

(declare-fun res!144353 () Bool)

(assert (=> b!281243 (=> (not res!144353) (not e!178804))))

(declare-datatypes ((List!4470 0))(
  ( (Nil!4467) (Cons!4466 (h!5136 (_ BitVec 64)) (t!9560 List!4470)) )
))
(declare-fun arrayNoDuplicates!0 (array!13999 (_ BitVec 32) List!4470) Bool)

(assert (=> b!281243 (= res!144353 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4467))))

(declare-fun b!281244 () Bool)

(assert (=> b!281244 (= e!178803 (not true))))

(assert (=> b!281244 (arrayNoDuplicates!0 (array!14000 (store (arr!6641 a!3325) i!1267 k0!2581) (size!6993 a!3325)) #b00000000000000000000000000000000 Nil!4467)))

(declare-datatypes ((Unit!8883 0))(
  ( (Unit!8884) )
))
(declare-fun lt!139036 () Unit!8883)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13999 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4470) Unit!8883)

(assert (=> b!281244 (= lt!139036 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4467))))

(declare-fun b!281245 () Bool)

(declare-fun res!144346 () Bool)

(assert (=> b!281245 (=> (not res!144346) (not e!178803))))

(assert (=> b!281245 (= res!144346 (validKeyInArray!0 (select (arr!6641 a!3325) startIndex!26)))))

(declare-fun b!281246 () Bool)

(declare-fun res!144352 () Bool)

(assert (=> b!281246 (=> (not res!144352) (not e!178804))))

(declare-fun arrayContainsKey!0 (array!13999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281246 (= res!144352 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281247 () Bool)

(declare-fun res!144349 () Bool)

(assert (=> b!281247 (=> (not res!144349) (not e!178803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13999 (_ BitVec 32)) Bool)

(assert (=> b!281247 (= res!144349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!27192 res!144348) b!281239))

(assert (= (and b!281239 res!144354) b!281242))

(assert (= (and b!281242 res!144350) b!281243))

(assert (= (and b!281243 res!144353) b!281246))

(assert (= (and b!281246 res!144352) b!281240))

(assert (= (and b!281240 res!144351) b!281247))

(assert (= (and b!281247 res!144349) b!281241))

(assert (= (and b!281241 res!144347) b!281245))

(assert (= (and b!281245 res!144346) b!281244))

(declare-fun m!295621 () Bool)

(assert (=> start!27192 m!295621))

(declare-fun m!295623 () Bool)

(assert (=> start!27192 m!295623))

(declare-fun m!295625 () Bool)

(assert (=> b!281242 m!295625))

(declare-fun m!295627 () Bool)

(assert (=> b!281240 m!295627))

(declare-fun m!295629 () Bool)

(assert (=> b!281243 m!295629))

(declare-fun m!295631 () Bool)

(assert (=> b!281244 m!295631))

(declare-fun m!295633 () Bool)

(assert (=> b!281244 m!295633))

(declare-fun m!295635 () Bool)

(assert (=> b!281244 m!295635))

(declare-fun m!295637 () Bool)

(assert (=> b!281245 m!295637))

(assert (=> b!281245 m!295637))

(declare-fun m!295639 () Bool)

(assert (=> b!281245 m!295639))

(declare-fun m!295641 () Bool)

(assert (=> b!281246 m!295641))

(declare-fun m!295643 () Bool)

(assert (=> b!281247 m!295643))

(check-sat (not b!281245) (not b!281247) (not b!281240) (not b!281242) (not b!281246) (not start!27192) (not b!281243) (not b!281244))
(check-sat)
