; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26426 () Bool)

(assert start!26426)

(declare-fun b!273991 () Bool)

(declare-fun res!138019 () Bool)

(declare-fun e!175503 () Bool)

(assert (=> b!273991 (=> (not res!138019) (not e!175503))))

(declare-datatypes ((array!13512 0))(
  ( (array!13513 (arr!6405 (Array (_ BitVec 32) (_ BitVec 64))) (size!6757 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13512)

(declare-datatypes ((List!4234 0))(
  ( (Nil!4231) (Cons!4230 (h!4897 (_ BitVec 64)) (t!9324 List!4234)) )
))
(declare-fun arrayNoDuplicates!0 (array!13512 (_ BitVec 32) List!4234) Bool)

(assert (=> b!273991 (= res!138019 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4231))))

(declare-fun b!273992 () Bool)

(declare-fun res!138023 () Bool)

(declare-fun e!175501 () Bool)

(assert (=> b!273992 (=> (not res!138023) (not e!175501))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273992 (= res!138023 (validKeyInArray!0 (select (arr!6405 a!3325) startIndex!26)))))

(declare-fun b!273993 () Bool)

(declare-fun e!175502 () Bool)

(assert (=> b!273993 (= e!175502 e!175501)))

(declare-fun res!138026 () Bool)

(assert (=> b!273993 (=> (not res!138026) (not e!175501))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273993 (= res!138026 (not (= startIndex!26 i!1267)))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun lt!136735 () array!13512)

(assert (=> b!273993 (= lt!136735 (array!13513 (store (arr!6405 a!3325) i!1267 k!2581) (size!6757 a!3325)))))

(declare-fun res!138024 () Bool)

(assert (=> start!26426 (=> (not res!138024) (not e!175503))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26426 (= res!138024 (validMask!0 mask!3868))))

(assert (=> start!26426 e!175503))

(declare-fun array_inv!4359 (array!13512) Bool)

(assert (=> start!26426 (array_inv!4359 a!3325)))

(assert (=> start!26426 true))

(declare-fun b!273994 () Bool)

(declare-fun res!138021 () Bool)

(assert (=> b!273994 (=> (not res!138021) (not e!175503))))

(assert (=> b!273994 (= res!138021 (validKeyInArray!0 k!2581))))

(declare-fun b!273995 () Bool)

(declare-fun res!138027 () Bool)

(assert (=> b!273995 (=> (not res!138027) (not e!175502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13512 (_ BitVec 32)) Bool)

(assert (=> b!273995 (= res!138027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273996 () Bool)

(assert (=> b!273996 (= e!175503 e!175502)))

(declare-fun res!138025 () Bool)

(assert (=> b!273996 (=> (not res!138025) (not e!175502))))

(declare-datatypes ((SeekEntryResult!1574 0))(
  ( (MissingZero!1574 (index!8466 (_ BitVec 32))) (Found!1574 (index!8467 (_ BitVec 32))) (Intermediate!1574 (undefined!2386 Bool) (index!8468 (_ BitVec 32)) (x!26731 (_ BitVec 32))) (Undefined!1574) (MissingVacant!1574 (index!8469 (_ BitVec 32))) )
))
(declare-fun lt!136737 () SeekEntryResult!1574)

(assert (=> b!273996 (= res!138025 (or (= lt!136737 (MissingZero!1574 i!1267)) (= lt!136737 (MissingVacant!1574 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13512 (_ BitVec 32)) SeekEntryResult!1574)

(assert (=> b!273996 (= lt!136737 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273997 () Bool)

(declare-fun res!138022 () Bool)

(assert (=> b!273997 (=> (not res!138022) (not e!175503))))

(assert (=> b!273997 (= res!138022 (and (= (size!6757 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6757 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6757 a!3325))))))

(declare-fun b!273998 () Bool)

(declare-fun res!138020 () Bool)

(assert (=> b!273998 (=> (not res!138020) (not e!175503))))

(declare-fun arrayContainsKey!0 (array!13512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273998 (= res!138020 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273999 () Bool)

(assert (=> b!273999 (= e!175501 (not true))))

(assert (=> b!273999 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8614 0))(
  ( (Unit!8615) )
))
(declare-fun lt!136736 () Unit!8614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13512 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8614)

(assert (=> b!273999 (= lt!136736 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!273999 (= (seekEntryOrOpen!0 (select (arr!6405 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6405 a!3325) i!1267 k!2581) startIndex!26) lt!136735 mask!3868))))

(declare-fun lt!136739 () Unit!8614)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13512 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8614)

(assert (=> b!273999 (= lt!136739 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273999 (arrayNoDuplicates!0 lt!136735 #b00000000000000000000000000000000 Nil!4231)))

(declare-fun lt!136738 () Unit!8614)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13512 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4234) Unit!8614)

(assert (=> b!273999 (= lt!136738 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4231))))

(assert (= (and start!26426 res!138024) b!273997))

(assert (= (and b!273997 res!138022) b!273994))

(assert (= (and b!273994 res!138021) b!273991))

(assert (= (and b!273991 res!138019) b!273998))

(assert (= (and b!273998 res!138020) b!273996))

(assert (= (and b!273996 res!138025) b!273995))

(assert (= (and b!273995 res!138027) b!273993))

(assert (= (and b!273993 res!138026) b!273992))

(assert (= (and b!273992 res!138023) b!273999))

(declare-fun m!289423 () Bool)

(assert (=> b!273995 m!289423))

(declare-fun m!289425 () Bool)

(assert (=> b!273994 m!289425))

(declare-fun m!289427 () Bool)

(assert (=> b!273996 m!289427))

(declare-fun m!289429 () Bool)

(assert (=> b!273992 m!289429))

(assert (=> b!273992 m!289429))

(declare-fun m!289431 () Bool)

(assert (=> b!273992 m!289431))

(declare-fun m!289433 () Bool)

(assert (=> b!273991 m!289433))

(declare-fun m!289435 () Bool)

(assert (=> start!26426 m!289435))

(declare-fun m!289437 () Bool)

(assert (=> start!26426 m!289437))

(declare-fun m!289439 () Bool)

(assert (=> b!273993 m!289439))

(declare-fun m!289441 () Bool)

(assert (=> b!273998 m!289441))

(declare-fun m!289443 () Bool)

(assert (=> b!273999 m!289443))

(declare-fun m!289445 () Bool)

(assert (=> b!273999 m!289445))

(declare-fun m!289447 () Bool)

(assert (=> b!273999 m!289447))

(assert (=> b!273999 m!289445))

(assert (=> b!273999 m!289439))

(declare-fun m!289449 () Bool)

(assert (=> b!273999 m!289449))

(declare-fun m!289451 () Bool)

(assert (=> b!273999 m!289451))

(assert (=> b!273999 m!289429))

(declare-fun m!289453 () Bool)

(assert (=> b!273999 m!289453))

(declare-fun m!289455 () Bool)

(assert (=> b!273999 m!289455))

(assert (=> b!273999 m!289429))

(declare-fun m!289457 () Bool)

(assert (=> b!273999 m!289457))

(push 1)

