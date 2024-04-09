; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26376 () Bool)

(assert start!26376)

(declare-fun b!273316 () Bool)

(declare-fun res!137347 () Bool)

(declare-fun e!175203 () Bool)

(assert (=> b!273316 (=> (not res!137347) (not e!175203))))

(declare-datatypes ((array!13462 0))(
  ( (array!13463 (arr!6380 (Array (_ BitVec 32) (_ BitVec 64))) (size!6732 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13462)

(declare-datatypes ((List!4209 0))(
  ( (Nil!4206) (Cons!4205 (h!4872 (_ BitVec 64)) (t!9299 List!4209)) )
))
(declare-fun arrayNoDuplicates!0 (array!13462 (_ BitVec 32) List!4209) Bool)

(assert (=> b!273316 (= res!137347 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4206))))

(declare-fun b!273317 () Bool)

(declare-fun e!175201 () Bool)

(assert (=> b!273317 (= e!175203 e!175201)))

(declare-fun res!137351 () Bool)

(assert (=> b!273317 (=> (not res!137351) (not e!175201))))

(declare-datatypes ((SeekEntryResult!1549 0))(
  ( (MissingZero!1549 (index!8366 (_ BitVec 32))) (Found!1549 (index!8367 (_ BitVec 32))) (Intermediate!1549 (undefined!2361 Bool) (index!8368 (_ BitVec 32)) (x!26642 (_ BitVec 32))) (Undefined!1549) (MissingVacant!1549 (index!8369 (_ BitVec 32))) )
))
(declare-fun lt!136361 () SeekEntryResult!1549)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273317 (= res!137351 (or (= lt!136361 (MissingZero!1549 i!1267)) (= lt!136361 (MissingVacant!1549 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13462 (_ BitVec 32)) SeekEntryResult!1549)

(assert (=> b!273317 (= lt!136361 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273318 () Bool)

(declare-fun res!137345 () Bool)

(declare-fun e!175204 () Bool)

(assert (=> b!273318 (=> (not res!137345) (not e!175204))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273318 (= res!137345 (validKeyInArray!0 (select (arr!6380 a!3325) startIndex!26)))))

(declare-fun b!273319 () Bool)

(assert (=> b!273319 (= e!175201 e!175204)))

(declare-fun res!137352 () Bool)

(assert (=> b!273319 (=> (not res!137352) (not e!175204))))

(assert (=> b!273319 (= res!137352 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136360 () array!13462)

(assert (=> b!273319 (= lt!136360 (array!13463 (store (arr!6380 a!3325) i!1267 k0!2581) (size!6732 a!3325)))))

(declare-fun b!273320 () Bool)

(assert (=> b!273320 (= e!175204 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13462 (_ BitVec 32)) Bool)

(assert (=> b!273320 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8564 0))(
  ( (Unit!8565) )
))
(declare-fun lt!136364 () Unit!8564)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13462 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8564)

(assert (=> b!273320 (= lt!136364 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!273320 (= (seekEntryOrOpen!0 (select (arr!6380 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6380 a!3325) i!1267 k0!2581) startIndex!26) lt!136360 mask!3868))))

(declare-fun lt!136362 () Unit!8564)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13462 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8564)

(assert (=> b!273320 (= lt!136362 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!273320 (arrayNoDuplicates!0 lt!136360 #b00000000000000000000000000000000 Nil!4206)))

(declare-fun lt!136363 () Unit!8564)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13462 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4209) Unit!8564)

(assert (=> b!273320 (= lt!136363 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4206))))

(declare-fun b!273321 () Bool)

(declare-fun res!137350 () Bool)

(assert (=> b!273321 (=> (not res!137350) (not e!175203))))

(assert (=> b!273321 (= res!137350 (validKeyInArray!0 k0!2581))))

(declare-fun b!273322 () Bool)

(declare-fun res!137349 () Bool)

(assert (=> b!273322 (=> (not res!137349) (not e!175203))))

(assert (=> b!273322 (= res!137349 (and (= (size!6732 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6732 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6732 a!3325))))))

(declare-fun b!273323 () Bool)

(declare-fun res!137344 () Bool)

(assert (=> b!273323 (=> (not res!137344) (not e!175201))))

(assert (=> b!273323 (= res!137344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!137348 () Bool)

(assert (=> start!26376 (=> (not res!137348) (not e!175203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26376 (= res!137348 (validMask!0 mask!3868))))

(assert (=> start!26376 e!175203))

(declare-fun array_inv!4334 (array!13462) Bool)

(assert (=> start!26376 (array_inv!4334 a!3325)))

(assert (=> start!26376 true))

(declare-fun b!273324 () Bool)

(declare-fun res!137346 () Bool)

(assert (=> b!273324 (=> (not res!137346) (not e!175203))))

(declare-fun arrayContainsKey!0 (array!13462 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273324 (= res!137346 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26376 res!137348) b!273322))

(assert (= (and b!273322 res!137349) b!273321))

(assert (= (and b!273321 res!137350) b!273316))

(assert (= (and b!273316 res!137347) b!273324))

(assert (= (and b!273324 res!137346) b!273317))

(assert (= (and b!273317 res!137351) b!273323))

(assert (= (and b!273323 res!137344) b!273319))

(assert (= (and b!273319 res!137352) b!273318))

(assert (= (and b!273318 res!137345) b!273320))

(declare-fun m!288523 () Bool)

(assert (=> b!273319 m!288523))

(declare-fun m!288525 () Bool)

(assert (=> b!273318 m!288525))

(assert (=> b!273318 m!288525))

(declare-fun m!288527 () Bool)

(assert (=> b!273318 m!288527))

(declare-fun m!288529 () Bool)

(assert (=> b!273323 m!288529))

(declare-fun m!288531 () Bool)

(assert (=> b!273324 m!288531))

(declare-fun m!288533 () Bool)

(assert (=> start!26376 m!288533))

(declare-fun m!288535 () Bool)

(assert (=> start!26376 m!288535))

(declare-fun m!288537 () Bool)

(assert (=> b!273317 m!288537))

(declare-fun m!288539 () Bool)

(assert (=> b!273316 m!288539))

(declare-fun m!288541 () Bool)

(assert (=> b!273320 m!288541))

(declare-fun m!288543 () Bool)

(assert (=> b!273320 m!288543))

(declare-fun m!288545 () Bool)

(assert (=> b!273320 m!288545))

(assert (=> b!273320 m!288523))

(assert (=> b!273320 m!288525))

(declare-fun m!288547 () Bool)

(assert (=> b!273320 m!288547))

(declare-fun m!288549 () Bool)

(assert (=> b!273320 m!288549))

(assert (=> b!273320 m!288525))

(declare-fun m!288551 () Bool)

(assert (=> b!273320 m!288551))

(declare-fun m!288553 () Bool)

(assert (=> b!273320 m!288553))

(assert (=> b!273320 m!288545))

(declare-fun m!288555 () Bool)

(assert (=> b!273320 m!288555))

(declare-fun m!288557 () Bool)

(assert (=> b!273321 m!288557))

(check-sat (not b!273318) (not b!273321) (not b!273324) (not start!26376) (not b!273323) (not b!273320) (not b!273317) (not b!273316))
(check-sat)
