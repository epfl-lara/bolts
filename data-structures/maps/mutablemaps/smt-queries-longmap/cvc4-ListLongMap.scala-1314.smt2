; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26456 () Bool)

(assert start!26456)

(declare-fun b!274422 () Bool)

(declare-fun res!138454 () Bool)

(declare-fun e!175707 () Bool)

(assert (=> b!274422 (=> (not res!138454) (not e!175707))))

(declare-datatypes ((array!13542 0))(
  ( (array!13543 (arr!6420 (Array (_ BitVec 32) (_ BitVec 64))) (size!6772 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13542)

(declare-datatypes ((List!4249 0))(
  ( (Nil!4246) (Cons!4245 (h!4912 (_ BitVec 64)) (t!9339 List!4249)) )
))
(declare-fun arrayNoDuplicates!0 (array!13542 (_ BitVec 32) List!4249) Bool)

(assert (=> b!274422 (= res!138454 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4246))))

(declare-fun b!274423 () Bool)

(declare-fun e!175708 () Bool)

(declare-fun e!175709 () Bool)

(assert (=> b!274423 (= e!175708 (not e!175709))))

(declare-fun res!138453 () Bool)

(assert (=> b!274423 (=> res!138453 e!175709)))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274423 (= res!138453 (or (bvsge startIndex!26 (bvsub (size!6772 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13542 (_ BitVec 32)) Bool)

(assert (=> b!274423 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8644 0))(
  ( (Unit!8645) )
))
(declare-fun lt!136986 () Unit!8644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13542 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8644)

(assert (=> b!274423 (= lt!136986 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!136990 () array!13542)

(declare-datatypes ((SeekEntryResult!1589 0))(
  ( (MissingZero!1589 (index!8526 (_ BitVec 32))) (Found!1589 (index!8527 (_ BitVec 32))) (Intermediate!1589 (undefined!2401 Bool) (index!8528 (_ BitVec 32)) (x!26786 (_ BitVec 32))) (Undefined!1589) (MissingVacant!1589 (index!8529 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13542 (_ BitVec 32)) SeekEntryResult!1589)

(assert (=> b!274423 (= (seekEntryOrOpen!0 (select (arr!6420 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6420 a!3325) i!1267 k!2581) startIndex!26) lt!136990 mask!3868))))

(declare-fun lt!136991 () Unit!8644)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13542 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8644)

(assert (=> b!274423 (= lt!136991 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274423 (arrayNoDuplicates!0 lt!136990 #b00000000000000000000000000000000 Nil!4246)))

(declare-fun lt!136989 () Unit!8644)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13542 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4249) Unit!8644)

(assert (=> b!274423 (= lt!136989 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4246))))

(declare-fun b!274424 () Bool)

(declare-fun res!138456 () Bool)

(assert (=> b!274424 (=> (not res!138456) (not e!175708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274424 (= res!138456 (validKeyInArray!0 (select (arr!6420 a!3325) startIndex!26)))))

(declare-fun res!138450 () Bool)

(assert (=> start!26456 (=> (not res!138450) (not e!175707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26456 (= res!138450 (validMask!0 mask!3868))))

(assert (=> start!26456 e!175707))

(declare-fun array_inv!4374 (array!13542) Bool)

(assert (=> start!26456 (array_inv!4374 a!3325)))

(assert (=> start!26456 true))

(declare-fun b!274425 () Bool)

(declare-fun res!138457 () Bool)

(declare-fun e!175711 () Bool)

(assert (=> b!274425 (=> (not res!138457) (not e!175711))))

(assert (=> b!274425 (= res!138457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274426 () Bool)

(declare-fun res!138451 () Bool)

(assert (=> b!274426 (=> (not res!138451) (not e!175707))))

(declare-fun arrayContainsKey!0 (array!13542 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274426 (= res!138451 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274427 () Bool)

(declare-fun res!138458 () Bool)

(assert (=> b!274427 (=> (not res!138458) (not e!175707))))

(assert (=> b!274427 (= res!138458 (validKeyInArray!0 k!2581))))

(declare-fun b!274428 () Bool)

(assert (=> b!274428 (= e!175711 e!175708)))

(declare-fun res!138455 () Bool)

(assert (=> b!274428 (=> (not res!138455) (not e!175708))))

(assert (=> b!274428 (= res!138455 (not (= startIndex!26 i!1267)))))

(assert (=> b!274428 (= lt!136990 (array!13543 (store (arr!6420 a!3325) i!1267 k!2581) (size!6772 a!3325)))))

(declare-fun b!274429 () Bool)

(assert (=> b!274429 (= e!175709 true)))

(assert (=> b!274429 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) lt!136990 mask!3868)))

(declare-fun lt!136988 () Unit!8644)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13542 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8644)

(assert (=> b!274429 (= lt!136988 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!274430 () Bool)

(assert (=> b!274430 (= e!175707 e!175711)))

(declare-fun res!138452 () Bool)

(assert (=> b!274430 (=> (not res!138452) (not e!175711))))

(declare-fun lt!136987 () SeekEntryResult!1589)

(assert (=> b!274430 (= res!138452 (or (= lt!136987 (MissingZero!1589 i!1267)) (= lt!136987 (MissingVacant!1589 i!1267))))))

(assert (=> b!274430 (= lt!136987 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274431 () Bool)

(declare-fun res!138459 () Bool)

(assert (=> b!274431 (=> (not res!138459) (not e!175707))))

(assert (=> b!274431 (= res!138459 (and (= (size!6772 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6772 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6772 a!3325))))))

(assert (= (and start!26456 res!138450) b!274431))

(assert (= (and b!274431 res!138459) b!274427))

(assert (= (and b!274427 res!138458) b!274422))

(assert (= (and b!274422 res!138454) b!274426))

(assert (= (and b!274426 res!138451) b!274430))

(assert (= (and b!274430 res!138452) b!274425))

(assert (= (and b!274425 res!138457) b!274428))

(assert (= (and b!274428 res!138455) b!274424))

(assert (= (and b!274424 res!138456) b!274423))

(assert (= (and b!274423 (not res!138453)) b!274429))

(declare-fun m!289995 () Bool)

(assert (=> b!274422 m!289995))

(declare-fun m!289997 () Bool)

(assert (=> b!274428 m!289997))

(declare-fun m!289999 () Bool)

(assert (=> b!274427 m!289999))

(declare-fun m!290001 () Bool)

(assert (=> b!274424 m!290001))

(assert (=> b!274424 m!290001))

(declare-fun m!290003 () Bool)

(assert (=> b!274424 m!290003))

(declare-fun m!290005 () Bool)

(assert (=> b!274425 m!290005))

(declare-fun m!290007 () Bool)

(assert (=> b!274423 m!290007))

(declare-fun m!290009 () Bool)

(assert (=> b!274423 m!290009))

(declare-fun m!290011 () Bool)

(assert (=> b!274423 m!290011))

(assert (=> b!274423 m!290009))

(assert (=> b!274423 m!289997))

(declare-fun m!290013 () Bool)

(assert (=> b!274423 m!290013))

(declare-fun m!290015 () Bool)

(assert (=> b!274423 m!290015))

(assert (=> b!274423 m!290001))

(declare-fun m!290017 () Bool)

(assert (=> b!274423 m!290017))

(declare-fun m!290019 () Bool)

(assert (=> b!274423 m!290019))

(assert (=> b!274423 m!290001))

(declare-fun m!290021 () Bool)

(assert (=> b!274423 m!290021))

(declare-fun m!290023 () Bool)

(assert (=> start!26456 m!290023))

(declare-fun m!290025 () Bool)

(assert (=> start!26456 m!290025))

(declare-fun m!290027 () Bool)

(assert (=> b!274426 m!290027))

(declare-fun m!290029 () Bool)

(assert (=> b!274429 m!290029))

(declare-fun m!290031 () Bool)

(assert (=> b!274429 m!290031))

(declare-fun m!290033 () Bool)

(assert (=> b!274430 m!290033))

(push 1)

(assert (not b!274423))

