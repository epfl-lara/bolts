; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26424 () Bool)

(assert start!26424)

(declare-fun b!273964 () Bool)

(declare-fun e!175491 () Bool)

(declare-fun e!175490 () Bool)

(assert (=> b!273964 (= e!175491 e!175490)))

(declare-fun res!137995 () Bool)

(assert (=> b!273964 (=> (not res!137995) (not e!175490))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273964 (= res!137995 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!13510 0))(
  ( (array!13511 (arr!6404 (Array (_ BitVec 32) (_ BitVec 64))) (size!6756 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13510)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!136722 () array!13510)

(assert (=> b!273964 (= lt!136722 (array!13511 (store (arr!6404 a!3325) i!1267 k0!2581) (size!6756 a!3325)))))

(declare-fun b!273966 () Bool)

(declare-fun e!175489 () Bool)

(assert (=> b!273966 (= e!175489 e!175491)))

(declare-fun res!137992 () Bool)

(assert (=> b!273966 (=> (not res!137992) (not e!175491))))

(declare-datatypes ((SeekEntryResult!1573 0))(
  ( (MissingZero!1573 (index!8462 (_ BitVec 32))) (Found!1573 (index!8463 (_ BitVec 32))) (Intermediate!1573 (undefined!2385 Bool) (index!8464 (_ BitVec 32)) (x!26730 (_ BitVec 32))) (Undefined!1573) (MissingVacant!1573 (index!8465 (_ BitVec 32))) )
))
(declare-fun lt!136720 () SeekEntryResult!1573)

(assert (=> b!273966 (= res!137992 (or (= lt!136720 (MissingZero!1573 i!1267)) (= lt!136720 (MissingVacant!1573 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13510 (_ BitVec 32)) SeekEntryResult!1573)

(assert (=> b!273966 (= lt!136720 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273967 () Bool)

(declare-fun res!137996 () Bool)

(assert (=> b!273967 (=> (not res!137996) (not e!175489))))

(declare-fun arrayContainsKey!0 (array!13510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273967 (= res!137996 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273968 () Bool)

(declare-fun res!137998 () Bool)

(assert (=> b!273968 (=> (not res!137998) (not e!175489))))

(declare-datatypes ((List!4233 0))(
  ( (Nil!4230) (Cons!4229 (h!4896 (_ BitVec 64)) (t!9323 List!4233)) )
))
(declare-fun arrayNoDuplicates!0 (array!13510 (_ BitVec 32) List!4233) Bool)

(assert (=> b!273968 (= res!137998 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4230))))

(declare-fun b!273969 () Bool)

(declare-fun res!137999 () Bool)

(assert (=> b!273969 (=> (not res!137999) (not e!175489))))

(assert (=> b!273969 (= res!137999 (and (= (size!6756 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6756 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6756 a!3325))))))

(declare-fun b!273970 () Bool)

(declare-fun res!137993 () Bool)

(assert (=> b!273970 (=> (not res!137993) (not e!175490))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273970 (= res!137993 (validKeyInArray!0 (select (arr!6404 a!3325) startIndex!26)))))

(declare-fun res!137997 () Bool)

(assert (=> start!26424 (=> (not res!137997) (not e!175489))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26424 (= res!137997 (validMask!0 mask!3868))))

(assert (=> start!26424 e!175489))

(declare-fun array_inv!4358 (array!13510) Bool)

(assert (=> start!26424 (array_inv!4358 a!3325)))

(assert (=> start!26424 true))

(declare-fun b!273965 () Bool)

(declare-fun res!138000 () Bool)

(assert (=> b!273965 (=> (not res!138000) (not e!175489))))

(assert (=> b!273965 (= res!138000 (validKeyInArray!0 k0!2581))))

(declare-fun b!273971 () Bool)

(declare-fun res!137994 () Bool)

(assert (=> b!273971 (=> (not res!137994) (not e!175491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13510 (_ BitVec 32)) Bool)

(assert (=> b!273971 (= res!137994 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273972 () Bool)

(assert (=> b!273972 (= e!175490 (not true))))

(assert (=> b!273972 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8612 0))(
  ( (Unit!8613) )
))
(declare-fun lt!136721 () Unit!8612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8612)

(assert (=> b!273972 (= lt!136721 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!273972 (= (seekEntryOrOpen!0 (select (arr!6404 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6404 a!3325) i!1267 k0!2581) startIndex!26) lt!136722 mask!3868))))

(declare-fun lt!136723 () Unit!8612)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13510 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8612)

(assert (=> b!273972 (= lt!136723 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!273972 (arrayNoDuplicates!0 lt!136722 #b00000000000000000000000000000000 Nil!4230)))

(declare-fun lt!136724 () Unit!8612)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13510 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4233) Unit!8612)

(assert (=> b!273972 (= lt!136724 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4230))))

(assert (= (and start!26424 res!137997) b!273969))

(assert (= (and b!273969 res!137999) b!273965))

(assert (= (and b!273965 res!138000) b!273968))

(assert (= (and b!273968 res!137998) b!273967))

(assert (= (and b!273967 res!137996) b!273966))

(assert (= (and b!273966 res!137992) b!273971))

(assert (= (and b!273971 res!137994) b!273964))

(assert (= (and b!273964 res!137995) b!273970))

(assert (= (and b!273970 res!137993) b!273972))

(declare-fun m!289387 () Bool)

(assert (=> b!273966 m!289387))

(declare-fun m!289389 () Bool)

(assert (=> start!26424 m!289389))

(declare-fun m!289391 () Bool)

(assert (=> start!26424 m!289391))

(declare-fun m!289393 () Bool)

(assert (=> b!273968 m!289393))

(declare-fun m!289395 () Bool)

(assert (=> b!273965 m!289395))

(declare-fun m!289397 () Bool)

(assert (=> b!273970 m!289397))

(assert (=> b!273970 m!289397))

(declare-fun m!289399 () Bool)

(assert (=> b!273970 m!289399))

(declare-fun m!289401 () Bool)

(assert (=> b!273971 m!289401))

(declare-fun m!289403 () Bool)

(assert (=> b!273967 m!289403))

(declare-fun m!289405 () Bool)

(assert (=> b!273964 m!289405))

(declare-fun m!289407 () Bool)

(assert (=> b!273972 m!289407))

(declare-fun m!289409 () Bool)

(assert (=> b!273972 m!289409))

(declare-fun m!289411 () Bool)

(assert (=> b!273972 m!289411))

(assert (=> b!273972 m!289405))

(declare-fun m!289413 () Bool)

(assert (=> b!273972 m!289413))

(assert (=> b!273972 m!289397))

(declare-fun m!289415 () Bool)

(assert (=> b!273972 m!289415))

(declare-fun m!289417 () Bool)

(assert (=> b!273972 m!289417))

(assert (=> b!273972 m!289409))

(declare-fun m!289419 () Bool)

(assert (=> b!273972 m!289419))

(assert (=> b!273972 m!289397))

(declare-fun m!289421 () Bool)

(assert (=> b!273972 m!289421))

(check-sat (not b!273965) (not b!273968) (not b!273967) (not b!273966) (not start!26424) (not b!273972) (not b!273970) (not b!273971))
(check-sat)
