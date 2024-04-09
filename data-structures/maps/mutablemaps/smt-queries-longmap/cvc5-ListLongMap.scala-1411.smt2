; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27394 () Bool)

(assert start!27394)

(declare-fun b!283360 () Bool)

(declare-fun e!179807 () Bool)

(assert (=> b!283360 (= e!179807 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14138 0))(
  ( (array!14139 (arr!6709 (Array (_ BitVec 32) (_ BitVec 64))) (size!7061 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14138)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14138 (_ BitVec 32)) Bool)

(assert (=> b!283360 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9019 0))(
  ( (Unit!9020) )
))
(declare-fun lt!140102 () Unit!9019)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14138 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9019)

(assert (=> b!283360 (= lt!140102 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!140099 () array!14138)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1878 0))(
  ( (MissingZero!1878 (index!9682 (_ BitVec 32))) (Found!1878 (index!9683 (_ BitVec 32))) (Intermediate!1878 (undefined!2690 Bool) (index!9684 (_ BitVec 32)) (x!27860 (_ BitVec 32))) (Undefined!1878) (MissingVacant!1878 (index!9685 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14138 (_ BitVec 32)) SeekEntryResult!1878)

(assert (=> b!283360 (= (seekEntryOrOpen!0 (select (arr!6709 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6709 a!3325) i!1267 k!2581) startIndex!26) lt!140099 mask!3868))))

(declare-fun lt!140101 () Unit!9019)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14138 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9019)

(assert (=> b!283360 (= lt!140101 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4538 0))(
  ( (Nil!4535) (Cons!4534 (h!5204 (_ BitVec 64)) (t!9628 List!4538)) )
))
(declare-fun arrayNoDuplicates!0 (array!14138 (_ BitVec 32) List!4538) Bool)

(assert (=> b!283360 (arrayNoDuplicates!0 lt!140099 #b00000000000000000000000000000000 Nil!4535)))

(declare-fun lt!140098 () Unit!9019)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14138 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4538) Unit!9019)

(assert (=> b!283360 (= lt!140098 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4535))))

(declare-fun b!283361 () Bool)

(declare-fun res!146318 () Bool)

(declare-fun e!179808 () Bool)

(assert (=> b!283361 (=> (not res!146318) (not e!179808))))

(assert (=> b!283361 (= res!146318 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4535))))

(declare-fun b!283362 () Bool)

(declare-fun res!146317 () Bool)

(assert (=> b!283362 (=> (not res!146317) (not e!179808))))

(assert (=> b!283362 (= res!146317 (and (= (size!7061 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7061 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7061 a!3325))))))

(declare-fun b!283363 () Bool)

(declare-fun e!179806 () Bool)

(assert (=> b!283363 (= e!179806 e!179807)))

(declare-fun res!146322 () Bool)

(assert (=> b!283363 (=> (not res!146322) (not e!179807))))

(assert (=> b!283363 (= res!146322 (not (= startIndex!26 i!1267)))))

(assert (=> b!283363 (= lt!140099 (array!14139 (store (arr!6709 a!3325) i!1267 k!2581) (size!7061 a!3325)))))

(declare-fun b!283364 () Bool)

(declare-fun res!146321 () Bool)

(assert (=> b!283364 (=> (not res!146321) (not e!179806))))

(assert (=> b!283364 (= res!146321 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!283365 () Bool)

(declare-fun res!146324 () Bool)

(assert (=> b!283365 (=> (not res!146324) (not e!179807))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!283365 (= res!146324 (validKeyInArray!0 (select (arr!6709 a!3325) startIndex!26)))))

(declare-fun b!283366 () Bool)

(declare-fun res!146320 () Bool)

(assert (=> b!283366 (=> (not res!146320) (not e!179808))))

(declare-fun arrayContainsKey!0 (array!14138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!283366 (= res!146320 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!283367 () Bool)

(declare-fun res!146319 () Bool)

(assert (=> b!283367 (=> (not res!146319) (not e!179808))))

(assert (=> b!283367 (= res!146319 (validKeyInArray!0 k!2581))))

(declare-fun b!283368 () Bool)

(assert (=> b!283368 (= e!179808 e!179806)))

(declare-fun res!146325 () Bool)

(assert (=> b!283368 (=> (not res!146325) (not e!179806))))

(declare-fun lt!140100 () SeekEntryResult!1878)

(assert (=> b!283368 (= res!146325 (or (= lt!140100 (MissingZero!1878 i!1267)) (= lt!140100 (MissingVacant!1878 i!1267))))))

(assert (=> b!283368 (= lt!140100 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!146323 () Bool)

(assert (=> start!27394 (=> (not res!146323) (not e!179808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27394 (= res!146323 (validMask!0 mask!3868))))

(assert (=> start!27394 e!179808))

(declare-fun array_inv!4663 (array!14138) Bool)

(assert (=> start!27394 (array_inv!4663 a!3325)))

(assert (=> start!27394 true))

(assert (= (and start!27394 res!146323) b!283362))

(assert (= (and b!283362 res!146317) b!283367))

(assert (= (and b!283367 res!146319) b!283361))

(assert (= (and b!283361 res!146318) b!283366))

(assert (= (and b!283366 res!146320) b!283368))

(assert (= (and b!283368 res!146325) b!283364))

(assert (= (and b!283364 res!146321) b!283363))

(assert (= (and b!283363 res!146322) b!283365))

(assert (= (and b!283365 res!146324) b!283360))

(declare-fun m!298279 () Bool)

(assert (=> b!283360 m!298279))

(declare-fun m!298281 () Bool)

(assert (=> b!283360 m!298281))

(declare-fun m!298283 () Bool)

(assert (=> b!283360 m!298283))

(declare-fun m!298285 () Bool)

(assert (=> b!283360 m!298285))

(assert (=> b!283360 m!298281))

(declare-fun m!298287 () Bool)

(assert (=> b!283360 m!298287))

(declare-fun m!298289 () Bool)

(assert (=> b!283360 m!298289))

(declare-fun m!298291 () Bool)

(assert (=> b!283360 m!298291))

(declare-fun m!298293 () Bool)

(assert (=> b!283360 m!298293))

(declare-fun m!298295 () Bool)

(assert (=> b!283360 m!298295))

(assert (=> b!283360 m!298291))

(declare-fun m!298297 () Bool)

(assert (=> b!283360 m!298297))

(declare-fun m!298299 () Bool)

(assert (=> b!283364 m!298299))

(declare-fun m!298301 () Bool)

(assert (=> b!283366 m!298301))

(declare-fun m!298303 () Bool)

(assert (=> b!283368 m!298303))

(declare-fun m!298305 () Bool)

(assert (=> start!27394 m!298305))

(declare-fun m!298307 () Bool)

(assert (=> start!27394 m!298307))

(assert (=> b!283363 m!298287))

(assert (=> b!283365 m!298291))

(assert (=> b!283365 m!298291))

(declare-fun m!298309 () Bool)

(assert (=> b!283365 m!298309))

(declare-fun m!298311 () Bool)

(assert (=> b!283367 m!298311))

(declare-fun m!298313 () Bool)

(assert (=> b!283361 m!298313))

(push 1)

