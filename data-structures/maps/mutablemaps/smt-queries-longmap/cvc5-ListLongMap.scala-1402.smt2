; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27274 () Bool)

(assert start!27274)

(declare-fun b!282346 () Bool)

(declare-fun res!145459 () Bool)

(declare-fun e!179275 () Bool)

(assert (=> b!282346 (=> (not res!145459) (not e!179275))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282346 (= res!145459 (validKeyInArray!0 k!2581))))

(declare-fun b!282347 () Bool)

(declare-fun res!145454 () Bool)

(declare-fun e!179272 () Bool)

(assert (=> b!282347 (=> (not res!145454) (not e!179272))))

(declare-datatypes ((array!14081 0))(
  ( (array!14082 (arr!6682 (Array (_ BitVec 32) (_ BitVec 64))) (size!7034 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14081)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282347 (= res!145454 (validKeyInArray!0 (select (arr!6682 a!3325) startIndex!26)))))

(declare-fun b!282348 () Bool)

(assert (=> b!282348 (= e!179272 (not true))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14081 (_ BitVec 32)) Bool)

(assert (=> b!282348 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8965 0))(
  ( (Unit!8966) )
))
(declare-fun lt!139543 () Unit!8965)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14081 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8965)

(assert (=> b!282348 (= lt!139543 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139540 () array!14081)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1851 0))(
  ( (MissingZero!1851 (index!9574 (_ BitVec 32))) (Found!1851 (index!9575 (_ BitVec 32))) (Intermediate!1851 (undefined!2663 Bool) (index!9576 (_ BitVec 32)) (x!27761 (_ BitVec 32))) (Undefined!1851) (MissingVacant!1851 (index!9577 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14081 (_ BitVec 32)) SeekEntryResult!1851)

(assert (=> b!282348 (= (seekEntryOrOpen!0 (select (arr!6682 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6682 a!3325) i!1267 k!2581) startIndex!26) lt!139540 mask!3868))))

(declare-fun lt!139542 () Unit!8965)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14081 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8965)

(assert (=> b!282348 (= lt!139542 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4511 0))(
  ( (Nil!4508) (Cons!4507 (h!5177 (_ BitVec 64)) (t!9601 List!4511)) )
))
(declare-fun arrayNoDuplicates!0 (array!14081 (_ BitVec 32) List!4511) Bool)

(assert (=> b!282348 (arrayNoDuplicates!0 lt!139540 #b00000000000000000000000000000000 Nil!4508)))

(declare-fun lt!139544 () Unit!8965)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14081 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4511) Unit!8965)

(assert (=> b!282348 (= lt!139544 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4508))))

(declare-fun b!282349 () Bool)

(declare-fun res!145457 () Bool)

(declare-fun e!179274 () Bool)

(assert (=> b!282349 (=> (not res!145457) (not e!179274))))

(assert (=> b!282349 (= res!145457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282350 () Bool)

(assert (=> b!282350 (= e!179275 e!179274)))

(declare-fun res!145460 () Bool)

(assert (=> b!282350 (=> (not res!145460) (not e!179274))))

(declare-fun lt!139541 () SeekEntryResult!1851)

(assert (=> b!282350 (= res!145460 (or (= lt!139541 (MissingZero!1851 i!1267)) (= lt!139541 (MissingVacant!1851 i!1267))))))

(assert (=> b!282350 (= lt!139541 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!145455 () Bool)

(assert (=> start!27274 (=> (not res!145455) (not e!179275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27274 (= res!145455 (validMask!0 mask!3868))))

(assert (=> start!27274 e!179275))

(declare-fun array_inv!4636 (array!14081) Bool)

(assert (=> start!27274 (array_inv!4636 a!3325)))

(assert (=> start!27274 true))

(declare-fun b!282351 () Bool)

(declare-fun res!145458 () Bool)

(assert (=> b!282351 (=> (not res!145458) (not e!179275))))

(declare-fun arrayContainsKey!0 (array!14081 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282351 (= res!145458 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282352 () Bool)

(declare-fun res!145453 () Bool)

(assert (=> b!282352 (=> (not res!145453) (not e!179275))))

(assert (=> b!282352 (= res!145453 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4508))))

(declare-fun b!282353 () Bool)

(declare-fun res!145456 () Bool)

(assert (=> b!282353 (=> (not res!145456) (not e!179275))))

(assert (=> b!282353 (= res!145456 (and (= (size!7034 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7034 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7034 a!3325))))))

(declare-fun b!282354 () Bool)

(assert (=> b!282354 (= e!179274 e!179272)))

(declare-fun res!145461 () Bool)

(assert (=> b!282354 (=> (not res!145461) (not e!179272))))

(assert (=> b!282354 (= res!145461 (not (= startIndex!26 i!1267)))))

(assert (=> b!282354 (= lt!139540 (array!14082 (store (arr!6682 a!3325) i!1267 k!2581) (size!7034 a!3325)))))

(assert (= (and start!27274 res!145455) b!282353))

(assert (= (and b!282353 res!145456) b!282346))

(assert (= (and b!282346 res!145459) b!282352))

(assert (= (and b!282352 res!145453) b!282351))

(assert (= (and b!282351 res!145458) b!282350))

(assert (= (and b!282350 res!145460) b!282349))

(assert (= (and b!282349 res!145457) b!282354))

(assert (= (and b!282354 res!145461) b!282347))

(assert (= (and b!282347 res!145454) b!282348))

(declare-fun m!296941 () Bool)

(assert (=> b!282347 m!296941))

(assert (=> b!282347 m!296941))

(declare-fun m!296943 () Bool)

(assert (=> b!282347 m!296943))

(declare-fun m!296945 () Bool)

(assert (=> b!282346 m!296945))

(declare-fun m!296947 () Bool)

(assert (=> b!282352 m!296947))

(declare-fun m!296949 () Bool)

(assert (=> b!282354 m!296949))

(declare-fun m!296951 () Bool)

(assert (=> start!27274 m!296951))

(declare-fun m!296953 () Bool)

(assert (=> start!27274 m!296953))

(declare-fun m!296955 () Bool)

(assert (=> b!282349 m!296955))

(declare-fun m!296957 () Bool)

(assert (=> b!282348 m!296957))

(declare-fun m!296959 () Bool)

(assert (=> b!282348 m!296959))

(declare-fun m!296961 () Bool)

(assert (=> b!282348 m!296961))

(declare-fun m!296963 () Bool)

(assert (=> b!282348 m!296963))

(assert (=> b!282348 m!296959))

(assert (=> b!282348 m!296949))

(declare-fun m!296965 () Bool)

(assert (=> b!282348 m!296965))

(assert (=> b!282348 m!296941))

(declare-fun m!296967 () Bool)

(assert (=> b!282348 m!296967))

(declare-fun m!296969 () Bool)

(assert (=> b!282348 m!296969))

(assert (=> b!282348 m!296941))

(declare-fun m!296971 () Bool)

(assert (=> b!282348 m!296971))

(declare-fun m!296973 () Bool)

(assert (=> b!282350 m!296973))

(declare-fun m!296975 () Bool)

(assert (=> b!282351 m!296975))

(push 1)

