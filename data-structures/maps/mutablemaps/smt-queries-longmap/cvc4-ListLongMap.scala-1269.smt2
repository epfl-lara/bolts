; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26186 () Bool)

(assert start!26186)

(declare-fun res!134394 () Bool)

(declare-fun e!174270 () Bool)

(assert (=> start!26186 (=> (not res!134394) (not e!174270))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26186 (= res!134394 (validMask!0 mask!3868))))

(assert (=> start!26186 e!174270))

(declare-datatypes ((array!13272 0))(
  ( (array!13273 (arr!6285 (Array (_ BitVec 32) (_ BitVec 64))) (size!6637 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13272)

(declare-fun array_inv!4239 (array!13272) Bool)

(assert (=> start!26186 (array_inv!4239 a!3325)))

(assert (=> start!26186 true))

(declare-fun b!270345 () Bool)

(declare-fun res!134396 () Bool)

(declare-fun e!174268 () Bool)

(assert (=> b!270345 (=> (not res!134396) (not e!174268))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13272 (_ BitVec 32)) Bool)

(assert (=> b!270345 (= res!134396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!270346 () Bool)

(assert (=> b!270346 (= e!174270 e!174268)))

(declare-fun res!134398 () Bool)

(assert (=> b!270346 (=> (not res!134398) (not e!174268))))

(declare-datatypes ((SeekEntryResult!1454 0))(
  ( (MissingZero!1454 (index!7986 (_ BitVec 32))) (Found!1454 (index!7987 (_ BitVec 32))) (Intermediate!1454 (undefined!2266 Bool) (index!7988 (_ BitVec 32)) (x!26291 (_ BitVec 32))) (Undefined!1454) (MissingVacant!1454 (index!7989 (_ BitVec 32))) )
))
(declare-fun lt!135632 () SeekEntryResult!1454)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!270346 (= res!134398 (or (= lt!135632 (MissingZero!1454 i!1267)) (= lt!135632 (MissingVacant!1454 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13272 (_ BitVec 32)) SeekEntryResult!1454)

(assert (=> b!270346 (= lt!135632 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!270347 () Bool)

(declare-datatypes ((Unit!8436 0))(
  ( (Unit!8437) )
))
(declare-fun e!174271 () Unit!8436)

(declare-fun lt!135629 () Unit!8436)

(assert (=> b!270347 (= e!174271 lt!135629)))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13272 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8436)

(assert (=> b!270347 (= lt!135629 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun lt!135630 () array!13272)

(assert (=> b!270347 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!135630 mask!3868)))

(declare-fun b!270348 () Bool)

(declare-fun res!134395 () Bool)

(assert (=> b!270348 (=> (not res!134395) (not e!174270))))

(assert (=> b!270348 (= res!134395 (and (= (size!6637 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6637 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6637 a!3325))))))

(declare-fun b!270349 () Bool)

(declare-fun res!134400 () Bool)

(assert (=> b!270349 (=> (not res!134400) (not e!174270))))

(declare-fun arrayContainsKey!0 (array!13272 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!270349 (= res!134400 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!270350 () Bool)

(declare-fun e!174267 () Bool)

(assert (=> b!270350 (= e!174268 e!174267)))

(declare-fun res!134399 () Bool)

(assert (=> b!270350 (=> (not res!134399) (not e!174267))))

(assert (=> b!270350 (= res!134399 (= startIndex!26 i!1267))))

(assert (=> b!270350 (= lt!135630 (array!13273 (store (arr!6285 a!3325) i!1267 k!2581) (size!6637 a!3325)))))

(declare-fun b!270351 () Bool)

(assert (=> b!270351 (= e!174267 (not true))))

(assert (=> b!270351 (= (seekEntryOrOpen!0 k!2581 lt!135630 mask!3868) (Found!1454 i!1267))))

(declare-fun lt!135628 () Unit!8436)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFinds!0 (array!13272 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!8436)

(assert (=> b!270351 (= lt!135628 (lemmaPutValidKeyAtRightPlaceThenFinds!0 a!3325 i!1267 k!2581 mask!3868))))

(declare-fun lt!135631 () Unit!8436)

(assert (=> b!270351 (= lt!135631 e!174271)))

(declare-fun c!45527 () Bool)

(assert (=> b!270351 (= c!45527 (bvslt startIndex!26 (bvsub (size!6637 a!3325) #b00000000000000000000000000000001)))))

(declare-fun b!270352 () Bool)

(declare-fun Unit!8438 () Unit!8436)

(assert (=> b!270352 (= e!174271 Unit!8438)))

(declare-fun b!270353 () Bool)

(declare-fun res!134397 () Bool)

(assert (=> b!270353 (=> (not res!134397) (not e!174270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!270353 (= res!134397 (validKeyInArray!0 k!2581))))

(declare-fun b!270354 () Bool)

(declare-fun res!134393 () Bool)

(assert (=> b!270354 (=> (not res!134393) (not e!174270))))

(declare-datatypes ((List!4114 0))(
  ( (Nil!4111) (Cons!4110 (h!4777 (_ BitVec 64)) (t!9204 List!4114)) )
))
(declare-fun arrayNoDuplicates!0 (array!13272 (_ BitVec 32) List!4114) Bool)

(assert (=> b!270354 (= res!134393 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4111))))

(assert (= (and start!26186 res!134394) b!270348))

(assert (= (and b!270348 res!134395) b!270353))

(assert (= (and b!270353 res!134397) b!270354))

(assert (= (and b!270354 res!134393) b!270349))

(assert (= (and b!270349 res!134400) b!270346))

(assert (= (and b!270346 res!134398) b!270345))

(assert (= (and b!270345 res!134396) b!270350))

(assert (= (and b!270350 res!134399) b!270351))

(assert (= (and b!270351 c!45527) b!270347))

(assert (= (and b!270351 (not c!45527)) b!270352))

(declare-fun m!286009 () Bool)

(assert (=> b!270345 m!286009))

(declare-fun m!286011 () Bool)

(assert (=> b!270353 m!286011))

(declare-fun m!286013 () Bool)

(assert (=> start!26186 m!286013))

(declare-fun m!286015 () Bool)

(assert (=> start!26186 m!286015))

(declare-fun m!286017 () Bool)

(assert (=> b!270351 m!286017))

(declare-fun m!286019 () Bool)

(assert (=> b!270351 m!286019))

(declare-fun m!286021 () Bool)

(assert (=> b!270346 m!286021))

(declare-fun m!286023 () Bool)

(assert (=> b!270350 m!286023))

(declare-fun m!286025 () Bool)

(assert (=> b!270354 m!286025))

(declare-fun m!286027 () Bool)

(assert (=> b!270349 m!286027))

(declare-fun m!286029 () Bool)

(assert (=> b!270347 m!286029))

(declare-fun m!286031 () Bool)

(assert (=> b!270347 m!286031))

(push 1)

