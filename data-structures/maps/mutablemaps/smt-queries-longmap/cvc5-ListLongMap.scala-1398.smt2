; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27250 () Bool)

(assert start!27250)

(declare-fun b!282022 () Bool)

(declare-fun res!145132 () Bool)

(declare-fun e!179131 () Bool)

(assert (=> b!282022 (=> (not res!145132) (not e!179131))))

(declare-datatypes ((array!14057 0))(
  ( (array!14058 (arr!6670 (Array (_ BitVec 32) (_ BitVec 64))) (size!7022 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14057)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!282022 (= res!145132 (and (= (size!7022 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7022 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7022 a!3325))))))

(declare-fun b!282023 () Bool)

(declare-fun res!145131 () Bool)

(declare-fun e!179130 () Bool)

(assert (=> b!282023 (=> (not res!145131) (not e!179130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14057 (_ BitVec 32)) Bool)

(assert (=> b!282023 (= res!145131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282024 () Bool)

(declare-fun e!179129 () Bool)

(assert (=> b!282024 (= e!179129 (not true))))

(assert (=> b!282024 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8941 0))(
  ( (Unit!8942) )
))
(declare-fun lt!139362 () Unit!8941)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8941)

(assert (=> b!282024 (= lt!139362 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139364 () array!14057)

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1839 0))(
  ( (MissingZero!1839 (index!9526 (_ BitVec 32))) (Found!1839 (index!9527 (_ BitVec 32))) (Intermediate!1839 (undefined!2651 Bool) (index!9528 (_ BitVec 32)) (x!27717 (_ BitVec 32))) (Undefined!1839) (MissingVacant!1839 (index!9529 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14057 (_ BitVec 32)) SeekEntryResult!1839)

(assert (=> b!282024 (= (seekEntryOrOpen!0 (select (arr!6670 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6670 a!3325) i!1267 k!2581) startIndex!26) lt!139364 mask!3868))))

(declare-fun lt!139361 () Unit!8941)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14057 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8941)

(assert (=> b!282024 (= lt!139361 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4499 0))(
  ( (Nil!4496) (Cons!4495 (h!5165 (_ BitVec 64)) (t!9589 List!4499)) )
))
(declare-fun arrayNoDuplicates!0 (array!14057 (_ BitVec 32) List!4499) Bool)

(assert (=> b!282024 (arrayNoDuplicates!0 lt!139364 #b00000000000000000000000000000000 Nil!4496)))

(declare-fun lt!139363 () Unit!8941)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14057 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4499) Unit!8941)

(assert (=> b!282024 (= lt!139363 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4496))))

(declare-fun res!145129 () Bool)

(assert (=> start!27250 (=> (not res!145129) (not e!179131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27250 (= res!145129 (validMask!0 mask!3868))))

(assert (=> start!27250 e!179131))

(declare-fun array_inv!4624 (array!14057) Bool)

(assert (=> start!27250 (array_inv!4624 a!3325)))

(assert (=> start!27250 true))

(declare-fun b!282025 () Bool)

(declare-fun res!145137 () Bool)

(assert (=> b!282025 (=> (not res!145137) (not e!179131))))

(declare-fun arrayContainsKey!0 (array!14057 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282025 (= res!145137 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282026 () Bool)

(assert (=> b!282026 (= e!179130 e!179129)))

(declare-fun res!145134 () Bool)

(assert (=> b!282026 (=> (not res!145134) (not e!179129))))

(assert (=> b!282026 (= res!145134 (not (= startIndex!26 i!1267)))))

(assert (=> b!282026 (= lt!139364 (array!14058 (store (arr!6670 a!3325) i!1267 k!2581) (size!7022 a!3325)))))

(declare-fun b!282027 () Bool)

(assert (=> b!282027 (= e!179131 e!179130)))

(declare-fun res!145130 () Bool)

(assert (=> b!282027 (=> (not res!145130) (not e!179130))))

(declare-fun lt!139360 () SeekEntryResult!1839)

(assert (=> b!282027 (= res!145130 (or (= lt!139360 (MissingZero!1839 i!1267)) (= lt!139360 (MissingVacant!1839 i!1267))))))

(assert (=> b!282027 (= lt!139360 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282028 () Bool)

(declare-fun res!145135 () Bool)

(assert (=> b!282028 (=> (not res!145135) (not e!179131))))

(assert (=> b!282028 (= res!145135 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4496))))

(declare-fun b!282029 () Bool)

(declare-fun res!145136 () Bool)

(assert (=> b!282029 (=> (not res!145136) (not e!179129))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282029 (= res!145136 (validKeyInArray!0 (select (arr!6670 a!3325) startIndex!26)))))

(declare-fun b!282030 () Bool)

(declare-fun res!145133 () Bool)

(assert (=> b!282030 (=> (not res!145133) (not e!179131))))

(assert (=> b!282030 (= res!145133 (validKeyInArray!0 k!2581))))

(assert (= (and start!27250 res!145129) b!282022))

(assert (= (and b!282022 res!145132) b!282030))

(assert (= (and b!282030 res!145133) b!282028))

(assert (= (and b!282028 res!145135) b!282025))

(assert (= (and b!282025 res!145137) b!282027))

(assert (= (and b!282027 res!145130) b!282023))

(assert (= (and b!282023 res!145131) b!282026))

(assert (= (and b!282026 res!145134) b!282029))

(assert (= (and b!282029 res!145136) b!282024))

(declare-fun m!296509 () Bool)

(assert (=> b!282026 m!296509))

(declare-fun m!296511 () Bool)

(assert (=> start!27250 m!296511))

(declare-fun m!296513 () Bool)

(assert (=> start!27250 m!296513))

(declare-fun m!296515 () Bool)

(assert (=> b!282025 m!296515))

(declare-fun m!296517 () Bool)

(assert (=> b!282030 m!296517))

(declare-fun m!296519 () Bool)

(assert (=> b!282028 m!296519))

(declare-fun m!296521 () Bool)

(assert (=> b!282024 m!296521))

(assert (=> b!282024 m!296509))

(declare-fun m!296523 () Bool)

(assert (=> b!282024 m!296523))

(declare-fun m!296525 () Bool)

(assert (=> b!282024 m!296525))

(declare-fun m!296527 () Bool)

(assert (=> b!282024 m!296527))

(assert (=> b!282024 m!296523))

(declare-fun m!296529 () Bool)

(assert (=> b!282024 m!296529))

(declare-fun m!296531 () Bool)

(assert (=> b!282024 m!296531))

(declare-fun m!296533 () Bool)

(assert (=> b!282024 m!296533))

(assert (=> b!282024 m!296533))

(declare-fun m!296535 () Bool)

(assert (=> b!282024 m!296535))

(declare-fun m!296537 () Bool)

(assert (=> b!282024 m!296537))

(declare-fun m!296539 () Bool)

(assert (=> b!282023 m!296539))

(assert (=> b!282029 m!296523))

(assert (=> b!282029 m!296523))

(declare-fun m!296541 () Bool)

(assert (=> b!282029 m!296541))

(declare-fun m!296543 () Bool)

(assert (=> b!282027 m!296543))

(push 1)

