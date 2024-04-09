; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27248 () Bool)

(assert start!27248)

(declare-fun b!281995 () Bool)

(declare-fun e!179116 () Bool)

(assert (=> b!281995 (= e!179116 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!14055 0))(
  ( (array!14056 (arr!6669 (Array (_ BitVec 32) (_ BitVec 64))) (size!7021 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14055)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14055 (_ BitVec 32)) Bool)

(assert (=> b!281995 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8939 0))(
  ( (Unit!8940) )
))
(declare-fun lt!139349 () Unit!8939)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8939)

(assert (=> b!281995 (= lt!139349 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139346 () array!14055)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1838 0))(
  ( (MissingZero!1838 (index!9522 (_ BitVec 32))) (Found!1838 (index!9523 (_ BitVec 32))) (Intermediate!1838 (undefined!2650 Bool) (index!9524 (_ BitVec 32)) (x!27708 (_ BitVec 32))) (Undefined!1838) (MissingVacant!1838 (index!9525 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14055 (_ BitVec 32)) SeekEntryResult!1838)

(assert (=> b!281995 (= (seekEntryOrOpen!0 (select (arr!6669 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6669 a!3325) i!1267 k!2581) startIndex!26) lt!139346 mask!3868))))

(declare-fun lt!139348 () Unit!8939)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14055 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8939)

(assert (=> b!281995 (= lt!139348 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4498 0))(
  ( (Nil!4495) (Cons!4494 (h!5164 (_ BitVec 64)) (t!9588 List!4498)) )
))
(declare-fun arrayNoDuplicates!0 (array!14055 (_ BitVec 32) List!4498) Bool)

(assert (=> b!281995 (arrayNoDuplicates!0 lt!139346 #b00000000000000000000000000000000 Nil!4495)))

(declare-fun lt!139347 () Unit!8939)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14055 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4498) Unit!8939)

(assert (=> b!281995 (= lt!139347 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4495))))

(declare-fun b!281996 () Bool)

(declare-fun e!179118 () Bool)

(assert (=> b!281996 (= e!179118 e!179116)))

(declare-fun res!145110 () Bool)

(assert (=> b!281996 (=> (not res!145110) (not e!179116))))

(assert (=> b!281996 (= res!145110 (not (= startIndex!26 i!1267)))))

(assert (=> b!281996 (= lt!139346 (array!14056 (store (arr!6669 a!3325) i!1267 k!2581) (size!7021 a!3325)))))

(declare-fun b!281997 () Bool)

(declare-fun e!179119 () Bool)

(assert (=> b!281997 (= e!179119 e!179118)))

(declare-fun res!145104 () Bool)

(assert (=> b!281997 (=> (not res!145104) (not e!179118))))

(declare-fun lt!139345 () SeekEntryResult!1838)

(assert (=> b!281997 (= res!145104 (or (= lt!139345 (MissingZero!1838 i!1267)) (= lt!139345 (MissingVacant!1838 i!1267))))))

(assert (=> b!281997 (= lt!139345 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!145103 () Bool)

(assert (=> start!27248 (=> (not res!145103) (not e!179119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27248 (= res!145103 (validMask!0 mask!3868))))

(assert (=> start!27248 e!179119))

(declare-fun array_inv!4623 (array!14055) Bool)

(assert (=> start!27248 (array_inv!4623 a!3325)))

(assert (=> start!27248 true))

(declare-fun b!281998 () Bool)

(declare-fun res!145102 () Bool)

(assert (=> b!281998 (=> (not res!145102) (not e!179119))))

(assert (=> b!281998 (= res!145102 (and (= (size!7021 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7021 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7021 a!3325))))))

(declare-fun b!281999 () Bool)

(declare-fun res!145106 () Bool)

(assert (=> b!281999 (=> (not res!145106) (not e!179119))))

(assert (=> b!281999 (= res!145106 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4495))))

(declare-fun b!282000 () Bool)

(declare-fun res!145105 () Bool)

(assert (=> b!282000 (=> (not res!145105) (not e!179118))))

(assert (=> b!282000 (= res!145105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282001 () Bool)

(declare-fun res!145108 () Bool)

(assert (=> b!282001 (=> (not res!145108) (not e!179119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282001 (= res!145108 (validKeyInArray!0 k!2581))))

(declare-fun b!282002 () Bool)

(declare-fun res!145107 () Bool)

(assert (=> b!282002 (=> (not res!145107) (not e!179116))))

(assert (=> b!282002 (= res!145107 (validKeyInArray!0 (select (arr!6669 a!3325) startIndex!26)))))

(declare-fun b!282003 () Bool)

(declare-fun res!145109 () Bool)

(assert (=> b!282003 (=> (not res!145109) (not e!179119))))

(declare-fun arrayContainsKey!0 (array!14055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282003 (= res!145109 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27248 res!145103) b!281998))

(assert (= (and b!281998 res!145102) b!282001))

(assert (= (and b!282001 res!145108) b!281999))

(assert (= (and b!281999 res!145106) b!282003))

(assert (= (and b!282003 res!145109) b!281997))

(assert (= (and b!281997 res!145104) b!282000))

(assert (= (and b!282000 res!145105) b!281996))

(assert (= (and b!281996 res!145110) b!282002))

(assert (= (and b!282002 res!145107) b!281995))

(declare-fun m!296473 () Bool)

(assert (=> b!282000 m!296473))

(declare-fun m!296475 () Bool)

(assert (=> b!282002 m!296475))

(assert (=> b!282002 m!296475))

(declare-fun m!296477 () Bool)

(assert (=> b!282002 m!296477))

(declare-fun m!296479 () Bool)

(assert (=> b!281996 m!296479))

(declare-fun m!296481 () Bool)

(assert (=> b!281995 m!296481))

(declare-fun m!296483 () Bool)

(assert (=> b!281995 m!296483))

(assert (=> b!281995 m!296479))

(assert (=> b!281995 m!296483))

(declare-fun m!296485 () Bool)

(assert (=> b!281995 m!296485))

(declare-fun m!296487 () Bool)

(assert (=> b!281995 m!296487))

(declare-fun m!296489 () Bool)

(assert (=> b!281995 m!296489))

(declare-fun m!296491 () Bool)

(assert (=> b!281995 m!296491))

(assert (=> b!281995 m!296475))

(declare-fun m!296493 () Bool)

(assert (=> b!281995 m!296493))

(declare-fun m!296495 () Bool)

(assert (=> b!281995 m!296495))

(assert (=> b!281995 m!296475))

(declare-fun m!296497 () Bool)

(assert (=> b!282003 m!296497))

(declare-fun m!296499 () Bool)

(assert (=> b!282001 m!296499))

(declare-fun m!296501 () Bool)

(assert (=> start!27248 m!296501))

(declare-fun m!296503 () Bool)

(assert (=> start!27248 m!296503))

(declare-fun m!296505 () Bool)

(assert (=> b!281997 m!296505))

(declare-fun m!296507 () Bool)

(assert (=> b!281999 m!296507))

(push 1)

