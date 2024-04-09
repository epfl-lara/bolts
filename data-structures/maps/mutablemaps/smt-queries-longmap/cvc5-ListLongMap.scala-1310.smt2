; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26428 () Bool)

(assert start!26428)

(declare-fun b!274018 () Bool)

(declare-fun res!138048 () Bool)

(declare-fun e!175516 () Bool)

(assert (=> b!274018 (=> (not res!138048) (not e!175516))))

(declare-datatypes ((array!13514 0))(
  ( (array!13515 (arr!6406 (Array (_ BitVec 32) (_ BitVec 64))) (size!6758 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13514)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13514 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274018 (= res!138048 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274019 () Bool)

(declare-fun e!175513 () Bool)

(assert (=> b!274019 (= e!175513 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13514 (_ BitVec 32)) Bool)

(assert (=> b!274019 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8616 0))(
  ( (Unit!8617) )
))
(declare-fun lt!136751 () Unit!8616)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13514 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8616)

(assert (=> b!274019 (= lt!136751 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!136753 () array!13514)

(declare-datatypes ((SeekEntryResult!1575 0))(
  ( (MissingZero!1575 (index!8470 (_ BitVec 32))) (Found!1575 (index!8471 (_ BitVec 32))) (Intermediate!1575 (undefined!2387 Bool) (index!8472 (_ BitVec 32)) (x!26740 (_ BitVec 32))) (Undefined!1575) (MissingVacant!1575 (index!8473 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13514 (_ BitVec 32)) SeekEntryResult!1575)

(assert (=> b!274019 (= (seekEntryOrOpen!0 (select (arr!6406 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6406 a!3325) i!1267 k!2581) startIndex!26) lt!136753 mask!3868))))

(declare-fun lt!136750 () Unit!8616)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13514 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8616)

(assert (=> b!274019 (= lt!136750 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4235 0))(
  ( (Nil!4232) (Cons!4231 (h!4898 (_ BitVec 64)) (t!9325 List!4235)) )
))
(declare-fun arrayNoDuplicates!0 (array!13514 (_ BitVec 32) List!4235) Bool)

(assert (=> b!274019 (arrayNoDuplicates!0 lt!136753 #b00000000000000000000000000000000 Nil!4232)))

(declare-fun lt!136752 () Unit!8616)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13514 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4235) Unit!8616)

(assert (=> b!274019 (= lt!136752 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4232))))

(declare-fun b!274020 () Bool)

(declare-fun e!175514 () Bool)

(assert (=> b!274020 (= e!175514 e!175513)))

(declare-fun res!138052 () Bool)

(assert (=> b!274020 (=> (not res!138052) (not e!175513))))

(assert (=> b!274020 (= res!138052 (not (= startIndex!26 i!1267)))))

(assert (=> b!274020 (= lt!136753 (array!13515 (store (arr!6406 a!3325) i!1267 k!2581) (size!6758 a!3325)))))

(declare-fun b!274022 () Bool)

(declare-fun res!138053 () Bool)

(assert (=> b!274022 (=> (not res!138053) (not e!175516))))

(assert (=> b!274022 (= res!138053 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4232))))

(declare-fun b!274023 () Bool)

(declare-fun res!138054 () Bool)

(assert (=> b!274023 (=> (not res!138054) (not e!175513))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274023 (= res!138054 (validKeyInArray!0 (select (arr!6406 a!3325) startIndex!26)))))

(declare-fun b!274024 () Bool)

(declare-fun res!138049 () Bool)

(assert (=> b!274024 (=> (not res!138049) (not e!175516))))

(assert (=> b!274024 (= res!138049 (and (= (size!6758 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6758 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6758 a!3325))))))

(declare-fun b!274025 () Bool)

(declare-fun res!138050 () Bool)

(assert (=> b!274025 (=> (not res!138050) (not e!175516))))

(assert (=> b!274025 (= res!138050 (validKeyInArray!0 k!2581))))

(declare-fun b!274026 () Bool)

(declare-fun res!138047 () Bool)

(assert (=> b!274026 (=> (not res!138047) (not e!175514))))

(assert (=> b!274026 (= res!138047 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!138046 () Bool)

(assert (=> start!26428 (=> (not res!138046) (not e!175516))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26428 (= res!138046 (validMask!0 mask!3868))))

(assert (=> start!26428 e!175516))

(declare-fun array_inv!4360 (array!13514) Bool)

(assert (=> start!26428 (array_inv!4360 a!3325)))

(assert (=> start!26428 true))

(declare-fun b!274021 () Bool)

(assert (=> b!274021 (= e!175516 e!175514)))

(declare-fun res!138051 () Bool)

(assert (=> b!274021 (=> (not res!138051) (not e!175514))))

(declare-fun lt!136754 () SeekEntryResult!1575)

(assert (=> b!274021 (= res!138051 (or (= lt!136754 (MissingZero!1575 i!1267)) (= lt!136754 (MissingVacant!1575 i!1267))))))

(assert (=> b!274021 (= lt!136754 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26428 res!138046) b!274024))

(assert (= (and b!274024 res!138049) b!274025))

(assert (= (and b!274025 res!138050) b!274022))

(assert (= (and b!274022 res!138053) b!274018))

(assert (= (and b!274018 res!138048) b!274021))

(assert (= (and b!274021 res!138051) b!274026))

(assert (= (and b!274026 res!138047) b!274020))

(assert (= (and b!274020 res!138052) b!274023))

(assert (= (and b!274023 res!138054) b!274019))

(declare-fun m!289459 () Bool)

(assert (=> b!274026 m!289459))

(declare-fun m!289461 () Bool)

(assert (=> b!274022 m!289461))

(declare-fun m!289463 () Bool)

(assert (=> b!274019 m!289463))

(declare-fun m!289465 () Bool)

(assert (=> b!274019 m!289465))

(declare-fun m!289467 () Bool)

(assert (=> b!274019 m!289467))

(declare-fun m!289469 () Bool)

(assert (=> b!274019 m!289469))

(declare-fun m!289471 () Bool)

(assert (=> b!274019 m!289471))

(declare-fun m!289473 () Bool)

(assert (=> b!274019 m!289473))

(declare-fun m!289475 () Bool)

(assert (=> b!274019 m!289475))

(assert (=> b!274019 m!289471))

(declare-fun m!289477 () Bool)

(assert (=> b!274019 m!289477))

(declare-fun m!289479 () Bool)

(assert (=> b!274019 m!289479))

(assert (=> b!274019 m!289465))

(declare-fun m!289481 () Bool)

(assert (=> b!274019 m!289481))

(declare-fun m!289483 () Bool)

(assert (=> b!274025 m!289483))

(declare-fun m!289485 () Bool)

(assert (=> b!274018 m!289485))

(declare-fun m!289487 () Bool)

(assert (=> start!26428 m!289487))

(declare-fun m!289489 () Bool)

(assert (=> start!26428 m!289489))

(assert (=> b!274023 m!289471))

(assert (=> b!274023 m!289471))

(declare-fun m!289491 () Bool)

(assert (=> b!274023 m!289491))

(declare-fun m!289493 () Bool)

(assert (=> b!274021 m!289493))

(assert (=> b!274020 m!289467))

(push 1)

