; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26370 () Bool)

(assert start!26370)

(declare-fun res!137263 () Bool)

(declare-fun e!175165 () Bool)

(assert (=> start!26370 (=> (not res!137263) (not e!175165))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26370 (= res!137263 (validMask!0 mask!3868))))

(assert (=> start!26370 e!175165))

(declare-datatypes ((array!13456 0))(
  ( (array!13457 (arr!6377 (Array (_ BitVec 32) (_ BitVec 64))) (size!6729 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13456)

(declare-fun array_inv!4331 (array!13456) Bool)

(assert (=> start!26370 (array_inv!4331 a!3325)))

(assert (=> start!26370 true))

(declare-fun b!273235 () Bool)

(declare-fun res!137267 () Bool)

(assert (=> b!273235 (=> (not res!137267) (not e!175165))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273235 (= res!137267 (validKeyInArray!0 k0!2581))))

(declare-fun b!273236 () Bool)

(declare-fun res!137269 () Bool)

(declare-fun e!175168 () Bool)

(assert (=> b!273236 (=> (not res!137269) (not e!175168))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273236 (= res!137269 (validKeyInArray!0 (select (arr!6377 a!3325) startIndex!26)))))

(declare-fun b!273237 () Bool)

(assert (=> b!273237 (= e!175168 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13456 (_ BitVec 32)) Bool)

(assert (=> b!273237 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8558 0))(
  ( (Unit!8559) )
))
(declare-fun lt!136318 () Unit!8558)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13456 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8558)

(assert (=> b!273237 (= lt!136318 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!136315 () array!13456)

(declare-datatypes ((SeekEntryResult!1546 0))(
  ( (MissingZero!1546 (index!8354 (_ BitVec 32))) (Found!1546 (index!8355 (_ BitVec 32))) (Intermediate!1546 (undefined!2358 Bool) (index!8356 (_ BitVec 32)) (x!26631 (_ BitVec 32))) (Undefined!1546) (MissingVacant!1546 (index!8357 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13456 (_ BitVec 32)) SeekEntryResult!1546)

(assert (=> b!273237 (= (seekEntryOrOpen!0 (select (arr!6377 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6377 a!3325) i!1267 k0!2581) startIndex!26) lt!136315 mask!3868))))

(declare-fun lt!136317 () Unit!8558)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13456 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8558)

(assert (=> b!273237 (= lt!136317 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4206 0))(
  ( (Nil!4203) (Cons!4202 (h!4869 (_ BitVec 64)) (t!9296 List!4206)) )
))
(declare-fun arrayNoDuplicates!0 (array!13456 (_ BitVec 32) List!4206) Bool)

(assert (=> b!273237 (arrayNoDuplicates!0 lt!136315 #b00000000000000000000000000000000 Nil!4203)))

(declare-fun lt!136319 () Unit!8558)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13456 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4206) Unit!8558)

(assert (=> b!273237 (= lt!136319 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4203))))

(declare-fun b!273238 () Bool)

(declare-fun res!137265 () Bool)

(assert (=> b!273238 (=> (not res!137265) (not e!175165))))

(declare-fun arrayContainsKey!0 (array!13456 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273238 (= res!137265 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273239 () Bool)

(declare-fun e!175166 () Bool)

(assert (=> b!273239 (= e!175166 e!175168)))

(declare-fun res!137271 () Bool)

(assert (=> b!273239 (=> (not res!137271) (not e!175168))))

(assert (=> b!273239 (= res!137271 (not (= startIndex!26 i!1267)))))

(assert (=> b!273239 (= lt!136315 (array!13457 (store (arr!6377 a!3325) i!1267 k0!2581) (size!6729 a!3325)))))

(declare-fun b!273240 () Bool)

(declare-fun res!137268 () Bool)

(assert (=> b!273240 (=> (not res!137268) (not e!175165))))

(assert (=> b!273240 (= res!137268 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4203))))

(declare-fun b!273241 () Bool)

(declare-fun res!137264 () Bool)

(assert (=> b!273241 (=> (not res!137264) (not e!175166))))

(assert (=> b!273241 (= res!137264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273242 () Bool)

(assert (=> b!273242 (= e!175165 e!175166)))

(declare-fun res!137266 () Bool)

(assert (=> b!273242 (=> (not res!137266) (not e!175166))))

(declare-fun lt!136316 () SeekEntryResult!1546)

(assert (=> b!273242 (= res!137266 (or (= lt!136316 (MissingZero!1546 i!1267)) (= lt!136316 (MissingVacant!1546 i!1267))))))

(assert (=> b!273242 (= lt!136316 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273243 () Bool)

(declare-fun res!137270 () Bool)

(assert (=> b!273243 (=> (not res!137270) (not e!175165))))

(assert (=> b!273243 (= res!137270 (and (= (size!6729 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6729 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6729 a!3325))))))

(assert (= (and start!26370 res!137263) b!273243))

(assert (= (and b!273243 res!137270) b!273235))

(assert (= (and b!273235 res!137267) b!273240))

(assert (= (and b!273240 res!137268) b!273238))

(assert (= (and b!273238 res!137265) b!273242))

(assert (= (and b!273242 res!137266) b!273241))

(assert (= (and b!273241 res!137264) b!273239))

(assert (= (and b!273239 res!137271) b!273236))

(assert (= (and b!273236 res!137269) b!273237))

(declare-fun m!288415 () Bool)

(assert (=> b!273235 m!288415))

(declare-fun m!288417 () Bool)

(assert (=> start!26370 m!288417))

(declare-fun m!288419 () Bool)

(assert (=> start!26370 m!288419))

(declare-fun m!288421 () Bool)

(assert (=> b!273237 m!288421))

(declare-fun m!288423 () Bool)

(assert (=> b!273237 m!288423))

(declare-fun m!288425 () Bool)

(assert (=> b!273237 m!288425))

(declare-fun m!288427 () Bool)

(assert (=> b!273237 m!288427))

(declare-fun m!288429 () Bool)

(assert (=> b!273237 m!288429))

(assert (=> b!273237 m!288421))

(declare-fun m!288431 () Bool)

(assert (=> b!273237 m!288431))

(declare-fun m!288433 () Bool)

(assert (=> b!273237 m!288433))

(assert (=> b!273237 m!288427))

(declare-fun m!288435 () Bool)

(assert (=> b!273237 m!288435))

(declare-fun m!288437 () Bool)

(assert (=> b!273237 m!288437))

(declare-fun m!288439 () Bool)

(assert (=> b!273237 m!288439))

(assert (=> b!273236 m!288427))

(assert (=> b!273236 m!288427))

(declare-fun m!288441 () Bool)

(assert (=> b!273236 m!288441))

(declare-fun m!288443 () Bool)

(assert (=> b!273241 m!288443))

(declare-fun m!288445 () Bool)

(assert (=> b!273238 m!288445))

(assert (=> b!273239 m!288423))

(declare-fun m!288447 () Bool)

(assert (=> b!273242 m!288447))

(declare-fun m!288449 () Bool)

(assert (=> b!273240 m!288449))

(check-sat (not b!273236) (not start!26370) (not b!273238) (not b!273237) (not b!273242) (not b!273235) (not b!273241) (not b!273240))
(check-sat)
