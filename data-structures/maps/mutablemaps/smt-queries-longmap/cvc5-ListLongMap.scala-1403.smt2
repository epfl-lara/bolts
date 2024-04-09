; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27280 () Bool)

(assert start!27280)

(declare-fun b!282427 () Bool)

(declare-fun e!179308 () Bool)

(declare-fun e!179311 () Bool)

(assert (=> b!282427 (= e!179308 e!179311)))

(declare-fun res!145541 () Bool)

(assert (=> b!282427 (=> (not res!145541) (not e!179311))))

(declare-datatypes ((SeekEntryResult!1854 0))(
  ( (MissingZero!1854 (index!9586 (_ BitVec 32))) (Found!1854 (index!9587 (_ BitVec 32))) (Intermediate!1854 (undefined!2666 Bool) (index!9588 (_ BitVec 32)) (x!27772 (_ BitVec 32))) (Undefined!1854) (MissingVacant!1854 (index!9589 (_ BitVec 32))) )
))
(declare-fun lt!139588 () SeekEntryResult!1854)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282427 (= res!145541 (or (= lt!139588 (MissingZero!1854 i!1267)) (= lt!139588 (MissingVacant!1854 i!1267))))))

(declare-datatypes ((array!14087 0))(
  ( (array!14088 (arr!6685 (Array (_ BitVec 32) (_ BitVec 64))) (size!7037 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14087)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14087 (_ BitVec 32)) SeekEntryResult!1854)

(assert (=> b!282427 (= lt!139588 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282428 () Bool)

(declare-fun e!179309 () Bool)

(assert (=> b!282428 (= e!179309 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14087 (_ BitVec 32)) Bool)

(assert (=> b!282428 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8971 0))(
  ( (Unit!8972) )
))
(declare-fun lt!139587 () Unit!8971)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8971)

(assert (=> b!282428 (= lt!139587 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139586 () array!14087)

(assert (=> b!282428 (= (seekEntryOrOpen!0 (select (arr!6685 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6685 a!3325) i!1267 k!2581) startIndex!26) lt!139586 mask!3868))))

(declare-fun lt!139585 () Unit!8971)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14087 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8971)

(assert (=> b!282428 (= lt!139585 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4514 0))(
  ( (Nil!4511) (Cons!4510 (h!5180 (_ BitVec 64)) (t!9604 List!4514)) )
))
(declare-fun arrayNoDuplicates!0 (array!14087 (_ BitVec 32) List!4514) Bool)

(assert (=> b!282428 (arrayNoDuplicates!0 lt!139586 #b00000000000000000000000000000000 Nil!4511)))

(declare-fun lt!139589 () Unit!8971)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14087 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4514) Unit!8971)

(assert (=> b!282428 (= lt!139589 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4511))))

(declare-fun b!282429 () Bool)

(declare-fun res!145536 () Bool)

(assert (=> b!282429 (=> (not res!145536) (not e!179308))))

(assert (=> b!282429 (= res!145536 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4511))))

(declare-fun b!282430 () Bool)

(declare-fun res!145540 () Bool)

(assert (=> b!282430 (=> (not res!145540) (not e!179308))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282430 (= res!145540 (validKeyInArray!0 k!2581))))

(declare-fun b!282431 () Bool)

(declare-fun res!145534 () Bool)

(assert (=> b!282431 (=> (not res!145534) (not e!179308))))

(assert (=> b!282431 (= res!145534 (and (= (size!7037 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7037 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7037 a!3325))))))

(declare-fun b!282432 () Bool)

(declare-fun res!145537 () Bool)

(assert (=> b!282432 (=> (not res!145537) (not e!179311))))

(assert (=> b!282432 (= res!145537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!145539 () Bool)

(assert (=> start!27280 (=> (not res!145539) (not e!179308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27280 (= res!145539 (validMask!0 mask!3868))))

(assert (=> start!27280 e!179308))

(declare-fun array_inv!4639 (array!14087) Bool)

(assert (=> start!27280 (array_inv!4639 a!3325)))

(assert (=> start!27280 true))

(declare-fun b!282433 () Bool)

(declare-fun res!145542 () Bool)

(assert (=> b!282433 (=> (not res!145542) (not e!179308))))

(declare-fun arrayContainsKey!0 (array!14087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282433 (= res!145542 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282434 () Bool)

(assert (=> b!282434 (= e!179311 e!179309)))

(declare-fun res!145535 () Bool)

(assert (=> b!282434 (=> (not res!145535) (not e!179309))))

(assert (=> b!282434 (= res!145535 (not (= startIndex!26 i!1267)))))

(assert (=> b!282434 (= lt!139586 (array!14088 (store (arr!6685 a!3325) i!1267 k!2581) (size!7037 a!3325)))))

(declare-fun b!282435 () Bool)

(declare-fun res!145538 () Bool)

(assert (=> b!282435 (=> (not res!145538) (not e!179309))))

(assert (=> b!282435 (= res!145538 (validKeyInArray!0 (select (arr!6685 a!3325) startIndex!26)))))

(assert (= (and start!27280 res!145539) b!282431))

(assert (= (and b!282431 res!145534) b!282430))

(assert (= (and b!282430 res!145540) b!282429))

(assert (= (and b!282429 res!145536) b!282433))

(assert (= (and b!282433 res!145542) b!282427))

(assert (= (and b!282427 res!145541) b!282432))

(assert (= (and b!282432 res!145537) b!282434))

(assert (= (and b!282434 res!145535) b!282435))

(assert (= (and b!282435 res!145538) b!282428))

(declare-fun m!297049 () Bool)

(assert (=> b!282435 m!297049))

(assert (=> b!282435 m!297049))

(declare-fun m!297051 () Bool)

(assert (=> b!282435 m!297051))

(declare-fun m!297053 () Bool)

(assert (=> start!27280 m!297053))

(declare-fun m!297055 () Bool)

(assert (=> start!27280 m!297055))

(declare-fun m!297057 () Bool)

(assert (=> b!282427 m!297057))

(declare-fun m!297059 () Bool)

(assert (=> b!282430 m!297059))

(declare-fun m!297061 () Bool)

(assert (=> b!282429 m!297061))

(declare-fun m!297063 () Bool)

(assert (=> b!282428 m!297063))

(declare-fun m!297065 () Bool)

(assert (=> b!282428 m!297065))

(declare-fun m!297067 () Bool)

(assert (=> b!282428 m!297067))

(assert (=> b!282428 m!297049))

(declare-fun m!297069 () Bool)

(assert (=> b!282428 m!297069))

(declare-fun m!297071 () Bool)

(assert (=> b!282428 m!297071))

(declare-fun m!297073 () Bool)

(assert (=> b!282428 m!297073))

(assert (=> b!282428 m!297049))

(declare-fun m!297075 () Bool)

(assert (=> b!282428 m!297075))

(assert (=> b!282428 m!297065))

(declare-fun m!297077 () Bool)

(assert (=> b!282428 m!297077))

(declare-fun m!297079 () Bool)

(assert (=> b!282428 m!297079))

(assert (=> b!282434 m!297067))

(declare-fun m!297081 () Bool)

(assert (=> b!282433 m!297081))

(declare-fun m!297083 () Bool)

(assert (=> b!282432 m!297083))

(push 1)

