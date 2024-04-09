; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26372 () Bool)

(assert start!26372)

(declare-fun b!273262 () Bool)

(declare-fun res!137296 () Bool)

(declare-fun e!175178 () Bool)

(assert (=> b!273262 (=> (not res!137296) (not e!175178))))

(declare-datatypes ((array!13458 0))(
  ( (array!13459 (arr!6378 (Array (_ BitVec 32) (_ BitVec 64))) (size!6730 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13458)

(declare-datatypes ((List!4207 0))(
  ( (Nil!4204) (Cons!4203 (h!4870 (_ BitVec 64)) (t!9297 List!4207)) )
))
(declare-fun arrayNoDuplicates!0 (array!13458 (_ BitVec 32) List!4207) Bool)

(assert (=> b!273262 (= res!137296 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4204))))

(declare-fun res!137295 () Bool)

(assert (=> start!26372 (=> (not res!137295) (not e!175178))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26372 (= res!137295 (validMask!0 mask!3868))))

(assert (=> start!26372 e!175178))

(declare-fun array_inv!4332 (array!13458) Bool)

(assert (=> start!26372 (array_inv!4332 a!3325)))

(assert (=> start!26372 true))

(declare-fun b!273263 () Bool)

(declare-fun res!137292 () Bool)

(assert (=> b!273263 (=> (not res!137292) (not e!175178))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273263 (= res!137292 (and (= (size!6730 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6730 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6730 a!3325))))))

(declare-fun b!273264 () Bool)

(declare-fun e!175179 () Bool)

(assert (=> b!273264 (= e!175179 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13458 (_ BitVec 32)) Bool)

(assert (=> b!273264 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8560 0))(
  ( (Unit!8561) )
))
(declare-fun lt!136332 () Unit!8560)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13458 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8560)

(assert (=> b!273264 (= lt!136332 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136330 () array!13458)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1547 0))(
  ( (MissingZero!1547 (index!8358 (_ BitVec 32))) (Found!1547 (index!8359 (_ BitVec 32))) (Intermediate!1547 (undefined!2359 Bool) (index!8360 (_ BitVec 32)) (x!26632 (_ BitVec 32))) (Undefined!1547) (MissingVacant!1547 (index!8361 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13458 (_ BitVec 32)) SeekEntryResult!1547)

(assert (=> b!273264 (= (seekEntryOrOpen!0 (select (arr!6378 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6378 a!3325) i!1267 k!2581) startIndex!26) lt!136330 mask!3868))))

(declare-fun lt!136331 () Unit!8560)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13458 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8560)

(assert (=> b!273264 (= lt!136331 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273264 (arrayNoDuplicates!0 lt!136330 #b00000000000000000000000000000000 Nil!4204)))

(declare-fun lt!136333 () Unit!8560)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13458 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4207) Unit!8560)

(assert (=> b!273264 (= lt!136333 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4204))))

(declare-fun b!273265 () Bool)

(declare-fun e!175180 () Bool)

(assert (=> b!273265 (= e!175178 e!175180)))

(declare-fun res!137294 () Bool)

(assert (=> b!273265 (=> (not res!137294) (not e!175180))))

(declare-fun lt!136334 () SeekEntryResult!1547)

(assert (=> b!273265 (= res!137294 (or (= lt!136334 (MissingZero!1547 i!1267)) (= lt!136334 (MissingVacant!1547 i!1267))))))

(assert (=> b!273265 (= lt!136334 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273266 () Bool)

(declare-fun res!137293 () Bool)

(assert (=> b!273266 (=> (not res!137293) (not e!175180))))

(assert (=> b!273266 (= res!137293 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273267 () Bool)

(declare-fun res!137291 () Bool)

(assert (=> b!273267 (=> (not res!137291) (not e!175179))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273267 (= res!137291 (validKeyInArray!0 (select (arr!6378 a!3325) startIndex!26)))))

(declare-fun b!273268 () Bool)

(declare-fun res!137290 () Bool)

(assert (=> b!273268 (=> (not res!137290) (not e!175178))))

(declare-fun arrayContainsKey!0 (array!13458 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273268 (= res!137290 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273269 () Bool)

(declare-fun res!137298 () Bool)

(assert (=> b!273269 (=> (not res!137298) (not e!175178))))

(assert (=> b!273269 (= res!137298 (validKeyInArray!0 k!2581))))

(declare-fun b!273270 () Bool)

(assert (=> b!273270 (= e!175180 e!175179)))

(declare-fun res!137297 () Bool)

(assert (=> b!273270 (=> (not res!137297) (not e!175179))))

(assert (=> b!273270 (= res!137297 (not (= startIndex!26 i!1267)))))

(assert (=> b!273270 (= lt!136330 (array!13459 (store (arr!6378 a!3325) i!1267 k!2581) (size!6730 a!3325)))))

(assert (= (and start!26372 res!137295) b!273263))

(assert (= (and b!273263 res!137292) b!273269))

(assert (= (and b!273269 res!137298) b!273262))

(assert (= (and b!273262 res!137296) b!273268))

(assert (= (and b!273268 res!137290) b!273265))

(assert (= (and b!273265 res!137294) b!273266))

(assert (= (and b!273266 res!137293) b!273270))

(assert (= (and b!273270 res!137297) b!273267))

(assert (= (and b!273267 res!137291) b!273264))

(declare-fun m!288451 () Bool)

(assert (=> b!273264 m!288451))

(declare-fun m!288453 () Bool)

(assert (=> b!273264 m!288453))

(declare-fun m!288455 () Bool)

(assert (=> b!273264 m!288455))

(assert (=> b!273264 m!288453))

(declare-fun m!288457 () Bool)

(assert (=> b!273264 m!288457))

(declare-fun m!288459 () Bool)

(assert (=> b!273264 m!288459))

(declare-fun m!288461 () Bool)

(assert (=> b!273264 m!288461))

(declare-fun m!288463 () Bool)

(assert (=> b!273264 m!288463))

(declare-fun m!288465 () Bool)

(assert (=> b!273264 m!288465))

(assert (=> b!273264 m!288461))

(declare-fun m!288467 () Bool)

(assert (=> b!273264 m!288467))

(declare-fun m!288469 () Bool)

(assert (=> b!273264 m!288469))

(declare-fun m!288471 () Bool)

(assert (=> b!273265 m!288471))

(assert (=> b!273270 m!288455))

(declare-fun m!288473 () Bool)

(assert (=> b!273269 m!288473))

(declare-fun m!288475 () Bool)

(assert (=> b!273266 m!288475))

(assert (=> b!273267 m!288461))

(assert (=> b!273267 m!288461))

(declare-fun m!288477 () Bool)

(assert (=> b!273267 m!288477))

(declare-fun m!288479 () Bool)

(assert (=> b!273262 m!288479))

(declare-fun m!288481 () Bool)

(assert (=> start!26372 m!288481))

(declare-fun m!288483 () Bool)

(assert (=> start!26372 m!288483))

(declare-fun m!288485 () Bool)

(assert (=> b!273268 m!288485))

(push 1)

