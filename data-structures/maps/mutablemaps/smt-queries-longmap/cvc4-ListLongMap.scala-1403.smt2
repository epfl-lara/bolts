; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27284 () Bool)

(assert start!27284)

(declare-fun res!145595 () Bool)

(declare-fun e!179332 () Bool)

(assert (=> start!27284 (=> (not res!145595) (not e!179332))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27284 (= res!145595 (validMask!0 mask!3868))))

(assert (=> start!27284 e!179332))

(declare-datatypes ((array!14091 0))(
  ( (array!14092 (arr!6687 (Array (_ BitVec 32) (_ BitVec 64))) (size!7039 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14091)

(declare-fun array_inv!4641 (array!14091) Bool)

(assert (=> start!27284 (array_inv!4641 a!3325)))

(assert (=> start!27284 true))

(declare-fun b!282481 () Bool)

(declare-fun res!145592 () Bool)

(declare-fun e!179333 () Bool)

(assert (=> b!282481 (=> (not res!145592) (not e!179333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14091 (_ BitVec 32)) Bool)

(assert (=> b!282481 (= res!145592 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282482 () Bool)

(declare-fun e!179334 () Bool)

(assert (=> b!282482 (= e!179334 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282482 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8975 0))(
  ( (Unit!8976) )
))
(declare-fun lt!139617 () Unit!8975)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8975)

(assert (=> b!282482 (= lt!139617 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!139618 () array!14091)

(declare-datatypes ((SeekEntryResult!1856 0))(
  ( (MissingZero!1856 (index!9594 (_ BitVec 32))) (Found!1856 (index!9595 (_ BitVec 32))) (Intermediate!1856 (undefined!2668 Bool) (index!9596 (_ BitVec 32)) (x!27774 (_ BitVec 32))) (Undefined!1856) (MissingVacant!1856 (index!9597 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14091 (_ BitVec 32)) SeekEntryResult!1856)

(assert (=> b!282482 (= (seekEntryOrOpen!0 (select (arr!6687 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6687 a!3325) i!1267 k!2581) startIndex!26) lt!139618 mask!3868))))

(declare-fun lt!139615 () Unit!8975)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14091 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8975)

(assert (=> b!282482 (= lt!139615 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4516 0))(
  ( (Nil!4513) (Cons!4512 (h!5182 (_ BitVec 64)) (t!9606 List!4516)) )
))
(declare-fun arrayNoDuplicates!0 (array!14091 (_ BitVec 32) List!4516) Bool)

(assert (=> b!282482 (arrayNoDuplicates!0 lt!139618 #b00000000000000000000000000000000 Nil!4513)))

(declare-fun lt!139616 () Unit!8975)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14091 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4516) Unit!8975)

(assert (=> b!282482 (= lt!139616 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4513))))

(declare-fun b!282483 () Bool)

(declare-fun res!145589 () Bool)

(assert (=> b!282483 (=> (not res!145589) (not e!179332))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282483 (= res!145589 (validKeyInArray!0 k!2581))))

(declare-fun b!282484 () Bool)

(declare-fun res!145594 () Bool)

(assert (=> b!282484 (=> (not res!145594) (not e!179332))))

(declare-fun arrayContainsKey!0 (array!14091 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282484 (= res!145594 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282485 () Bool)

(assert (=> b!282485 (= e!179333 e!179334)))

(declare-fun res!145596 () Bool)

(assert (=> b!282485 (=> (not res!145596) (not e!179334))))

(assert (=> b!282485 (= res!145596 (not (= startIndex!26 i!1267)))))

(assert (=> b!282485 (= lt!139618 (array!14092 (store (arr!6687 a!3325) i!1267 k!2581) (size!7039 a!3325)))))

(declare-fun b!282486 () Bool)

(declare-fun res!145588 () Bool)

(assert (=> b!282486 (=> (not res!145588) (not e!179332))))

(assert (=> b!282486 (= res!145588 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4513))))

(declare-fun b!282487 () Bool)

(assert (=> b!282487 (= e!179332 e!179333)))

(declare-fun res!145590 () Bool)

(assert (=> b!282487 (=> (not res!145590) (not e!179333))))

(declare-fun lt!139619 () SeekEntryResult!1856)

(assert (=> b!282487 (= res!145590 (or (= lt!139619 (MissingZero!1856 i!1267)) (= lt!139619 (MissingVacant!1856 i!1267))))))

(assert (=> b!282487 (= lt!139619 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282488 () Bool)

(declare-fun res!145593 () Bool)

(assert (=> b!282488 (=> (not res!145593) (not e!179332))))

(assert (=> b!282488 (= res!145593 (and (= (size!7039 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7039 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7039 a!3325))))))

(declare-fun b!282489 () Bool)

(declare-fun res!145591 () Bool)

(assert (=> b!282489 (=> (not res!145591) (not e!179334))))

(assert (=> b!282489 (= res!145591 (validKeyInArray!0 (select (arr!6687 a!3325) startIndex!26)))))

(assert (= (and start!27284 res!145595) b!282488))

(assert (= (and b!282488 res!145593) b!282483))

(assert (= (and b!282483 res!145589) b!282486))

(assert (= (and b!282486 res!145588) b!282484))

(assert (= (and b!282484 res!145594) b!282487))

(assert (= (and b!282487 res!145590) b!282481))

(assert (= (and b!282481 res!145592) b!282485))

(assert (= (and b!282485 res!145596) b!282489))

(assert (= (and b!282489 res!145591) b!282482))

(declare-fun m!297121 () Bool)

(assert (=> b!282487 m!297121))

(declare-fun m!297123 () Bool)

(assert (=> b!282484 m!297123))

(declare-fun m!297125 () Bool)

(assert (=> b!282481 m!297125))

(declare-fun m!297127 () Bool)

(assert (=> start!27284 m!297127))

(declare-fun m!297129 () Bool)

(assert (=> start!27284 m!297129))

(declare-fun m!297131 () Bool)

(assert (=> b!282486 m!297131))

(declare-fun m!297133 () Bool)

(assert (=> b!282483 m!297133))

(declare-fun m!297135 () Bool)

(assert (=> b!282482 m!297135))

(declare-fun m!297137 () Bool)

(assert (=> b!282482 m!297137))

(declare-fun m!297139 () Bool)

(assert (=> b!282482 m!297139))

(assert (=> b!282482 m!297137))

(declare-fun m!297141 () Bool)

(assert (=> b!282482 m!297141))

(declare-fun m!297143 () Bool)

(assert (=> b!282482 m!297143))

(declare-fun m!297145 () Bool)

(assert (=> b!282482 m!297145))

(declare-fun m!297147 () Bool)

(assert (=> b!282482 m!297147))

(declare-fun m!297149 () Bool)

(assert (=> b!282482 m!297149))

(declare-fun m!297151 () Bool)

(assert (=> b!282482 m!297151))

(assert (=> b!282482 m!297145))

(declare-fun m!297153 () Bool)

(assert (=> b!282482 m!297153))

(assert (=> b!282485 m!297141))

(assert (=> b!282489 m!297145))

(assert (=> b!282489 m!297145))

(declare-fun m!297155 () Bool)

(assert (=> b!282489 m!297155))

(push 1)

(assert (not b!282484))

