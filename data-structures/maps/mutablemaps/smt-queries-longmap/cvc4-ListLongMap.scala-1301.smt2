; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26378 () Bool)

(assert start!26378)

(declare-fun b!273343 () Bool)

(declare-fun res!137378 () Bool)

(declare-fun e!175214 () Bool)

(assert (=> b!273343 (=> (not res!137378) (not e!175214))))

(declare-datatypes ((array!13464 0))(
  ( (array!13465 (arr!6381 (Array (_ BitVec 32) (_ BitVec 64))) (size!6733 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13464)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13464 (_ BitVec 32)) Bool)

(assert (=> b!273343 (= res!137378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273344 () Bool)

(declare-fun res!137371 () Bool)

(declare-fun e!175215 () Bool)

(assert (=> b!273344 (=> (not res!137371) (not e!175215))))

(declare-datatypes ((List!4210 0))(
  ( (Nil!4207) (Cons!4206 (h!4873 (_ BitVec 64)) (t!9300 List!4210)) )
))
(declare-fun arrayNoDuplicates!0 (array!13464 (_ BitVec 32) List!4210) Bool)

(assert (=> b!273344 (= res!137371 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4207))))

(declare-fun b!273345 () Bool)

(declare-fun e!175216 () Bool)

(assert (=> b!273345 (= e!175216 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273345 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8566 0))(
  ( (Unit!8567) )
))
(declare-fun lt!136377 () Unit!8566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13464 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8566)

(assert (=> b!273345 (= lt!136377 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136376 () array!13464)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1550 0))(
  ( (MissingZero!1550 (index!8370 (_ BitVec 32))) (Found!1550 (index!8371 (_ BitVec 32))) (Intermediate!1550 (undefined!2362 Bool) (index!8372 (_ BitVec 32)) (x!26643 (_ BitVec 32))) (Undefined!1550) (MissingVacant!1550 (index!8373 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13464 (_ BitVec 32)) SeekEntryResult!1550)

(assert (=> b!273345 (= (seekEntryOrOpen!0 (select (arr!6381 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6381 a!3325) i!1267 k!2581) startIndex!26) lt!136376 mask!3868))))

(declare-fun lt!136375 () Unit!8566)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13464 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8566)

(assert (=> b!273345 (= lt!136375 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273345 (arrayNoDuplicates!0 lt!136376 #b00000000000000000000000000000000 Nil!4207)))

(declare-fun lt!136378 () Unit!8566)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13464 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4210) Unit!8566)

(assert (=> b!273345 (= lt!136378 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4207))))

(declare-fun b!273346 () Bool)

(declare-fun res!137375 () Bool)

(assert (=> b!273346 (=> (not res!137375) (not e!175215))))

(assert (=> b!273346 (= res!137375 (and (= (size!6733 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6733 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6733 a!3325))))))

(declare-fun b!273347 () Bool)

(assert (=> b!273347 (= e!175215 e!175214)))

(declare-fun res!137376 () Bool)

(assert (=> b!273347 (=> (not res!137376) (not e!175214))))

(declare-fun lt!136379 () SeekEntryResult!1550)

(assert (=> b!273347 (= res!137376 (or (= lt!136379 (MissingZero!1550 i!1267)) (= lt!136379 (MissingVacant!1550 i!1267))))))

(assert (=> b!273347 (= lt!136379 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273348 () Bool)

(declare-fun res!137379 () Bool)

(assert (=> b!273348 (=> (not res!137379) (not e!175215))))

(declare-fun arrayContainsKey!0 (array!13464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273348 (= res!137379 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273349 () Bool)

(declare-fun res!137372 () Bool)

(assert (=> b!273349 (=> (not res!137372) (not e!175216))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273349 (= res!137372 (validKeyInArray!0 (select (arr!6381 a!3325) startIndex!26)))))

(declare-fun b!273350 () Bool)

(assert (=> b!273350 (= e!175214 e!175216)))

(declare-fun res!137374 () Bool)

(assert (=> b!273350 (=> (not res!137374) (not e!175216))))

(assert (=> b!273350 (= res!137374 (not (= startIndex!26 i!1267)))))

(assert (=> b!273350 (= lt!136376 (array!13465 (store (arr!6381 a!3325) i!1267 k!2581) (size!6733 a!3325)))))

(declare-fun res!137377 () Bool)

(assert (=> start!26378 (=> (not res!137377) (not e!175215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26378 (= res!137377 (validMask!0 mask!3868))))

(assert (=> start!26378 e!175215))

(declare-fun array_inv!4335 (array!13464) Bool)

(assert (=> start!26378 (array_inv!4335 a!3325)))

(assert (=> start!26378 true))

(declare-fun b!273351 () Bool)

(declare-fun res!137373 () Bool)

(assert (=> b!273351 (=> (not res!137373) (not e!175215))))

(assert (=> b!273351 (= res!137373 (validKeyInArray!0 k!2581))))

(assert (= (and start!26378 res!137377) b!273346))

(assert (= (and b!273346 res!137375) b!273351))

(assert (= (and b!273351 res!137373) b!273344))

(assert (= (and b!273344 res!137371) b!273348))

(assert (= (and b!273348 res!137379) b!273347))

(assert (= (and b!273347 res!137376) b!273343))

(assert (= (and b!273343 res!137378) b!273350))

(assert (= (and b!273350 res!137374) b!273349))

(assert (= (and b!273349 res!137372) b!273345))

(declare-fun m!288559 () Bool)

(assert (=> b!273347 m!288559))

(declare-fun m!288561 () Bool)

(assert (=> b!273345 m!288561))

(declare-fun m!288563 () Bool)

(assert (=> b!273345 m!288563))

(assert (=> b!273345 m!288563))

(declare-fun m!288565 () Bool)

(assert (=> b!273345 m!288565))

(declare-fun m!288567 () Bool)

(assert (=> b!273345 m!288567))

(declare-fun m!288569 () Bool)

(assert (=> b!273345 m!288569))

(declare-fun m!288571 () Bool)

(assert (=> b!273345 m!288571))

(declare-fun m!288573 () Bool)

(assert (=> b!273345 m!288573))

(assert (=> b!273345 m!288569))

(declare-fun m!288575 () Bool)

(assert (=> b!273345 m!288575))

(declare-fun m!288577 () Bool)

(assert (=> b!273345 m!288577))

(declare-fun m!288579 () Bool)

(assert (=> b!273345 m!288579))

(declare-fun m!288581 () Bool)

(assert (=> b!273343 m!288581))

(assert (=> b!273350 m!288577))

(assert (=> b!273349 m!288569))

(assert (=> b!273349 m!288569))

(declare-fun m!288583 () Bool)

(assert (=> b!273349 m!288583))

(declare-fun m!288585 () Bool)

(assert (=> b!273344 m!288585))

(declare-fun m!288587 () Bool)

(assert (=> b!273348 m!288587))

(declare-fun m!288589 () Bool)

(assert (=> b!273351 m!288589))

(declare-fun m!288591 () Bool)

(assert (=> start!26378 m!288591))

(declare-fun m!288593 () Bool)

(assert (=> start!26378 m!288593))

(push 1)

