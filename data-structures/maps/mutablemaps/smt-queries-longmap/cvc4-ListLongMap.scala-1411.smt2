; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27398 () Bool)

(assert start!27398)

(declare-fun b!283414 () Bool)

(declare-fun e!179830 () Bool)

(declare-fun e!179831 () Bool)

(assert (=> b!283414 (= e!179830 e!179831)))

(declare-fun res!146374 () Bool)

(assert (=> b!283414 (=> (not res!146374) (not e!179831))))

(declare-datatypes ((SeekEntryResult!1880 0))(
  ( (MissingZero!1880 (index!9690 (_ BitVec 32))) (Found!1880 (index!9691 (_ BitVec 32))) (Intermediate!1880 (undefined!2692 Bool) (index!9692 (_ BitVec 32)) (x!27862 (_ BitVec 32))) (Undefined!1880) (MissingVacant!1880 (index!9693 (_ BitVec 32))) )
))
(declare-fun lt!140128 () SeekEntryResult!1880)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!283414 (= res!146374 (or (= lt!140128 (MissingZero!1880 i!1267)) (= lt!140128 (MissingVacant!1880 i!1267))))))

(declare-datatypes ((array!14142 0))(
  ( (array!14143 (arr!6711 (Array (_ BitVec 32) (_ BitVec 64))) (size!7063 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14142)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14142 (_ BitVec 32)) SeekEntryResult!1880)

(assert (=> b!283414 (= lt!140128 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!283415 () Bool)

(declare-fun res!146379 () Bool)

(declare-fun e!179832 () Bool)

(assert (=> b!283415 (=> (not res!146379) (not e!179832))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!283415 (= res!146379 (validKeyInArray!0 (select (arr!6711 a!3325) startIndex!26)))))

(declare-fun b!283416 () Bool)

(declare-fun res!146377 () Bool)

(assert (=> b!283416 (=> (not res!146377) (not e!179830))))

(assert (=> b!283416 (= res!146377 (validKeyInArray!0 k!2581))))

(declare-fun b!283417 () Bool)

(declare-fun res!146371 () Bool)

(assert (=> b!283417 (=> (not res!146371) (not e!179830))))

(assert (=> b!283417 (= res!146371 (and (= (size!7063 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7063 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7063 a!3325))))))

(declare-fun b!283418 () Bool)

(declare-fun res!146375 () Bool)

(assert (=> b!283418 (=> (not res!146375) (not e!179831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14142 (_ BitVec 32)) Bool)

(assert (=> b!283418 (= res!146375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!146376 () Bool)

(assert (=> start!27398 (=> (not res!146376) (not e!179830))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27398 (= res!146376 (validMask!0 mask!3868))))

(assert (=> start!27398 e!179830))

(declare-fun array_inv!4665 (array!14142) Bool)

(assert (=> start!27398 (array_inv!4665 a!3325)))

(assert (=> start!27398 true))

(declare-fun b!283419 () Bool)

(declare-fun res!146372 () Bool)

(assert (=> b!283419 (=> (not res!146372) (not e!179830))))

(declare-datatypes ((List!4540 0))(
  ( (Nil!4537) (Cons!4536 (h!5206 (_ BitVec 64)) (t!9630 List!4540)) )
))
(declare-fun arrayNoDuplicates!0 (array!14142 (_ BitVec 32) List!4540) Bool)

(assert (=> b!283419 (= res!146372 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4537))))

(declare-fun b!283420 () Bool)

(assert (=> b!283420 (= e!179832 (not true))))

(assert (=> b!283420 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9023 0))(
  ( (Unit!9024) )
))
(declare-fun lt!140129 () Unit!9023)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14142 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9023)

(assert (=> b!283420 (= lt!140129 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!140130 () array!14142)

(assert (=> b!283420 (= (seekEntryOrOpen!0 (select (arr!6711 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6711 a!3325) i!1267 k!2581) startIndex!26) lt!140130 mask!3868))))

(declare-fun lt!140132 () Unit!9023)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14142 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9023)

(assert (=> b!283420 (= lt!140132 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!283420 (arrayNoDuplicates!0 lt!140130 #b00000000000000000000000000000000 Nil!4537)))

(declare-fun lt!140131 () Unit!9023)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14142 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4540) Unit!9023)

(assert (=> b!283420 (= lt!140131 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4537))))

(declare-fun b!283421 () Bool)

(declare-fun res!146378 () Bool)

(assert (=> b!283421 (=> (not res!146378) (not e!179830))))

(declare-fun arrayContainsKey!0 (array!14142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!283421 (= res!146378 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!283422 () Bool)

(assert (=> b!283422 (= e!179831 e!179832)))

(declare-fun res!146373 () Bool)

(assert (=> b!283422 (=> (not res!146373) (not e!179832))))

(assert (=> b!283422 (= res!146373 (not (= startIndex!26 i!1267)))))

(assert (=> b!283422 (= lt!140130 (array!14143 (store (arr!6711 a!3325) i!1267 k!2581) (size!7063 a!3325)))))

(assert (= (and start!27398 res!146376) b!283417))

(assert (= (and b!283417 res!146371) b!283416))

(assert (= (and b!283416 res!146377) b!283419))

(assert (= (and b!283419 res!146372) b!283421))

(assert (= (and b!283421 res!146378) b!283414))

(assert (= (and b!283414 res!146374) b!283418))

(assert (= (and b!283418 res!146375) b!283422))

(assert (= (and b!283422 res!146373) b!283415))

(assert (= (and b!283415 res!146379) b!283420))

(declare-fun m!298351 () Bool)

(assert (=> b!283415 m!298351))

(assert (=> b!283415 m!298351))

(declare-fun m!298353 () Bool)

(assert (=> b!283415 m!298353))

(declare-fun m!298355 () Bool)

(assert (=> b!283422 m!298355))

(declare-fun m!298357 () Bool)

(assert (=> b!283420 m!298357))

(declare-fun m!298359 () Bool)

(assert (=> b!283420 m!298359))

(declare-fun m!298361 () Bool)

(assert (=> b!283420 m!298361))

(assert (=> b!283420 m!298355))

(declare-fun m!298363 () Bool)

(assert (=> b!283420 m!298363))

(assert (=> b!283420 m!298361))

(declare-fun m!298365 () Bool)

(assert (=> b!283420 m!298365))

(assert (=> b!283420 m!298351))

(declare-fun m!298367 () Bool)

(assert (=> b!283420 m!298367))

(declare-fun m!298369 () Bool)

(assert (=> b!283420 m!298369))

(assert (=> b!283420 m!298351))

(declare-fun m!298371 () Bool)

(assert (=> b!283420 m!298371))

(declare-fun m!298373 () Bool)

(assert (=> b!283421 m!298373))

(declare-fun m!298375 () Bool)

(assert (=> b!283419 m!298375))

(declare-fun m!298377 () Bool)

(assert (=> b!283418 m!298377))

(declare-fun m!298379 () Bool)

(assert (=> b!283416 m!298379))

(declare-fun m!298381 () Bool)

(assert (=> b!283414 m!298381))

(declare-fun m!298383 () Bool)

(assert (=> start!27398 m!298383))

(declare-fun m!298385 () Bool)

(assert (=> start!27398 m!298385))

(push 1)

