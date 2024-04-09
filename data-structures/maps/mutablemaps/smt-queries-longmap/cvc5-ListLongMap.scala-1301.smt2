; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26374 () Bool)

(assert start!26374)

(declare-fun b!273289 () Bool)

(declare-fun res!137325 () Bool)

(declare-fun e!175189 () Bool)

(assert (=> b!273289 (=> (not res!137325) (not e!175189))))

(declare-datatypes ((array!13460 0))(
  ( (array!13461 (arr!6379 (Array (_ BitVec 32) (_ BitVec 64))) (size!6731 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13460)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273289 (= res!137325 (validKeyInArray!0 (select (arr!6379 a!3325) startIndex!26)))))

(declare-fun b!273290 () Bool)

(declare-fun res!137318 () Bool)

(declare-fun e!175192 () Bool)

(assert (=> b!273290 (=> (not res!137318) (not e!175192))))

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!273290 (= res!137318 (validKeyInArray!0 k!2581))))

(declare-fun b!273291 () Bool)

(declare-fun e!175190 () Bool)

(assert (=> b!273291 (= e!175190 e!175189)))

(declare-fun res!137320 () Bool)

(assert (=> b!273291 (=> (not res!137320) (not e!175189))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273291 (= res!137320 (not (= startIndex!26 i!1267)))))

(declare-fun lt!136347 () array!13460)

(assert (=> b!273291 (= lt!136347 (array!13461 (store (arr!6379 a!3325) i!1267 k!2581) (size!6731 a!3325)))))

(declare-fun b!273292 () Bool)

(declare-fun res!137319 () Bool)

(assert (=> b!273292 (=> (not res!137319) (not e!175192))))

(declare-datatypes ((List!4208 0))(
  ( (Nil!4205) (Cons!4204 (h!4871 (_ BitVec 64)) (t!9298 List!4208)) )
))
(declare-fun arrayNoDuplicates!0 (array!13460 (_ BitVec 32) List!4208) Bool)

(assert (=> b!273292 (= res!137319 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4205))))

(declare-fun res!137322 () Bool)

(assert (=> start!26374 (=> (not res!137322) (not e!175192))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26374 (= res!137322 (validMask!0 mask!3868))))

(assert (=> start!26374 e!175192))

(declare-fun array_inv!4333 (array!13460) Bool)

(assert (=> start!26374 (array_inv!4333 a!3325)))

(assert (=> start!26374 true))

(declare-fun b!273293 () Bool)

(declare-fun res!137321 () Bool)

(assert (=> b!273293 (=> (not res!137321) (not e!175190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13460 (_ BitVec 32)) Bool)

(assert (=> b!273293 (= res!137321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273294 () Bool)

(declare-fun res!137324 () Bool)

(assert (=> b!273294 (=> (not res!137324) (not e!175192))))

(declare-fun arrayContainsKey!0 (array!13460 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273294 (= res!137324 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273295 () Bool)

(assert (=> b!273295 (= e!175189 (not true))))

(assert (=> b!273295 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8562 0))(
  ( (Unit!8563) )
))
(declare-fun lt!136348 () Unit!8562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13460 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8562)

(assert (=> b!273295 (= lt!136348 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1548 0))(
  ( (MissingZero!1548 (index!8362 (_ BitVec 32))) (Found!1548 (index!8363 (_ BitVec 32))) (Intermediate!1548 (undefined!2360 Bool) (index!8364 (_ BitVec 32)) (x!26641 (_ BitVec 32))) (Undefined!1548) (MissingVacant!1548 (index!8365 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13460 (_ BitVec 32)) SeekEntryResult!1548)

(assert (=> b!273295 (= (seekEntryOrOpen!0 (select (arr!6379 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6379 a!3325) i!1267 k!2581) startIndex!26) lt!136347 mask!3868))))

(declare-fun lt!136346 () Unit!8562)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13460 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8562)

(assert (=> b!273295 (= lt!136346 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273295 (arrayNoDuplicates!0 lt!136347 #b00000000000000000000000000000000 Nil!4205)))

(declare-fun lt!136349 () Unit!8562)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13460 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4208) Unit!8562)

(assert (=> b!273295 (= lt!136349 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4205))))

(declare-fun b!273296 () Bool)

(assert (=> b!273296 (= e!175192 e!175190)))

(declare-fun res!137317 () Bool)

(assert (=> b!273296 (=> (not res!137317) (not e!175190))))

(declare-fun lt!136345 () SeekEntryResult!1548)

(assert (=> b!273296 (= res!137317 (or (= lt!136345 (MissingZero!1548 i!1267)) (= lt!136345 (MissingVacant!1548 i!1267))))))

(assert (=> b!273296 (= lt!136345 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273297 () Bool)

(declare-fun res!137323 () Bool)

(assert (=> b!273297 (=> (not res!137323) (not e!175192))))

(assert (=> b!273297 (= res!137323 (and (= (size!6731 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6731 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6731 a!3325))))))

(assert (= (and start!26374 res!137322) b!273297))

(assert (= (and b!273297 res!137323) b!273290))

(assert (= (and b!273290 res!137318) b!273292))

(assert (= (and b!273292 res!137319) b!273294))

(assert (= (and b!273294 res!137324) b!273296))

(assert (= (and b!273296 res!137317) b!273293))

(assert (= (and b!273293 res!137321) b!273291))

(assert (= (and b!273291 res!137320) b!273289))

(assert (= (and b!273289 res!137325) b!273295))

(declare-fun m!288487 () Bool)

(assert (=> b!273296 m!288487))

(declare-fun m!288489 () Bool)

(assert (=> b!273290 m!288489))

(declare-fun m!288491 () Bool)

(assert (=> b!273289 m!288491))

(assert (=> b!273289 m!288491))

(declare-fun m!288493 () Bool)

(assert (=> b!273289 m!288493))

(declare-fun m!288495 () Bool)

(assert (=> b!273294 m!288495))

(declare-fun m!288497 () Bool)

(assert (=> b!273293 m!288497))

(declare-fun m!288499 () Bool)

(assert (=> b!273292 m!288499))

(declare-fun m!288501 () Bool)

(assert (=> b!273291 m!288501))

(declare-fun m!288503 () Bool)

(assert (=> b!273295 m!288503))

(declare-fun m!288505 () Bool)

(assert (=> b!273295 m!288505))

(declare-fun m!288507 () Bool)

(assert (=> b!273295 m!288507))

(assert (=> b!273295 m!288507))

(declare-fun m!288509 () Bool)

(assert (=> b!273295 m!288509))

(assert (=> b!273295 m!288501))

(declare-fun m!288511 () Bool)

(assert (=> b!273295 m!288511))

(assert (=> b!273295 m!288491))

(declare-fun m!288513 () Bool)

(assert (=> b!273295 m!288513))

(declare-fun m!288515 () Bool)

(assert (=> b!273295 m!288515))

(assert (=> b!273295 m!288491))

(declare-fun m!288517 () Bool)

(assert (=> b!273295 m!288517))

(declare-fun m!288519 () Bool)

(assert (=> start!26374 m!288519))

(declare-fun m!288521 () Bool)

(assert (=> start!26374 m!288521))

(push 1)

(assert (not b!273289))

(assert (not b!273290))

