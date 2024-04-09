; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27282 () Bool)

(assert start!27282)

(declare-fun b!282455 () Bool)

(declare-fun res!145565 () Bool)

(declare-fun e!179323 () Bool)

(assert (=> b!282455 (=> (not res!145565) (not e!179323))))

(declare-datatypes ((array!14089 0))(
  ( (array!14090 (arr!6686 (Array (_ BitVec 32) (_ BitVec 64))) (size!7038 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14089)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14089 (_ BitVec 32)) Bool)

(assert (=> b!282455 (= res!145565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282456 () Bool)

(declare-fun res!145567 () Bool)

(declare-fun e!179322 () Bool)

(assert (=> b!282456 (=> (not res!145567) (not e!179322))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282456 (= res!145567 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282457 () Bool)

(declare-fun res!145563 () Bool)

(assert (=> b!282457 (=> (not res!145563) (not e!179322))))

(declare-datatypes ((List!4515 0))(
  ( (Nil!4512) (Cons!4511 (h!5181 (_ BitVec 64)) (t!9605 List!4515)) )
))
(declare-fun arrayNoDuplicates!0 (array!14089 (_ BitVec 32) List!4515) Bool)

(assert (=> b!282457 (= res!145563 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4512))))

(declare-fun b!282458 () Bool)

(assert (=> b!282458 (= e!179322 e!179323)))

(declare-fun res!145561 () Bool)

(assert (=> b!282458 (=> (not res!145561) (not e!179323))))

(declare-datatypes ((SeekEntryResult!1855 0))(
  ( (MissingZero!1855 (index!9590 (_ BitVec 32))) (Found!1855 (index!9591 (_ BitVec 32))) (Intermediate!1855 (undefined!2667 Bool) (index!9592 (_ BitVec 32)) (x!27773 (_ BitVec 32))) (Undefined!1855) (MissingVacant!1855 (index!9593 (_ BitVec 32))) )
))
(declare-fun lt!139604 () SeekEntryResult!1855)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282458 (= res!145561 (or (= lt!139604 (MissingZero!1855 i!1267)) (= lt!139604 (MissingVacant!1855 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14089 (_ BitVec 32)) SeekEntryResult!1855)

(assert (=> b!282458 (= lt!139604 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282454 () Bool)

(declare-fun e!179321 () Bool)

(assert (=> b!282454 (= e!179321 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282454 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8973 0))(
  ( (Unit!8974) )
))
(declare-fun lt!139602 () Unit!8973)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14089 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8973)

(assert (=> b!282454 (= lt!139602 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139603 () array!14089)

(assert (=> b!282454 (= (seekEntryOrOpen!0 (select (arr!6686 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6686 a!3325) i!1267 k0!2581) startIndex!26) lt!139603 mask!3868))))

(declare-fun lt!139601 () Unit!8973)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14089 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8973)

(assert (=> b!282454 (= lt!139601 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!282454 (arrayNoDuplicates!0 lt!139603 #b00000000000000000000000000000000 Nil!4512)))

(declare-fun lt!139600 () Unit!8973)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14089 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4515) Unit!8973)

(assert (=> b!282454 (= lt!139600 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4512))))

(declare-fun res!145566 () Bool)

(assert (=> start!27282 (=> (not res!145566) (not e!179322))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27282 (= res!145566 (validMask!0 mask!3868))))

(assert (=> start!27282 e!179322))

(declare-fun array_inv!4640 (array!14089) Bool)

(assert (=> start!27282 (array_inv!4640 a!3325)))

(assert (=> start!27282 true))

(declare-fun b!282459 () Bool)

(assert (=> b!282459 (= e!179323 e!179321)))

(declare-fun res!145568 () Bool)

(assert (=> b!282459 (=> (not res!145568) (not e!179321))))

(assert (=> b!282459 (= res!145568 (not (= startIndex!26 i!1267)))))

(assert (=> b!282459 (= lt!139603 (array!14090 (store (arr!6686 a!3325) i!1267 k0!2581) (size!7038 a!3325)))))

(declare-fun b!282460 () Bool)

(declare-fun res!145562 () Bool)

(assert (=> b!282460 (=> (not res!145562) (not e!179322))))

(assert (=> b!282460 (= res!145562 (and (= (size!7038 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7038 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7038 a!3325))))))

(declare-fun b!282461 () Bool)

(declare-fun res!145564 () Bool)

(assert (=> b!282461 (=> (not res!145564) (not e!179321))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282461 (= res!145564 (validKeyInArray!0 (select (arr!6686 a!3325) startIndex!26)))))

(declare-fun b!282462 () Bool)

(declare-fun res!145569 () Bool)

(assert (=> b!282462 (=> (not res!145569) (not e!179322))))

(assert (=> b!282462 (= res!145569 (validKeyInArray!0 k0!2581))))

(assert (= (and start!27282 res!145566) b!282460))

(assert (= (and b!282460 res!145562) b!282462))

(assert (= (and b!282462 res!145569) b!282457))

(assert (= (and b!282457 res!145563) b!282456))

(assert (= (and b!282456 res!145567) b!282458))

(assert (= (and b!282458 res!145561) b!282455))

(assert (= (and b!282455 res!145565) b!282459))

(assert (= (and b!282459 res!145568) b!282461))

(assert (= (and b!282461 res!145564) b!282454))

(declare-fun m!297085 () Bool)

(assert (=> b!282456 m!297085))

(declare-fun m!297087 () Bool)

(assert (=> start!27282 m!297087))

(declare-fun m!297089 () Bool)

(assert (=> start!27282 m!297089))

(declare-fun m!297091 () Bool)

(assert (=> b!282459 m!297091))

(declare-fun m!297093 () Bool)

(assert (=> b!282457 m!297093))

(declare-fun m!297095 () Bool)

(assert (=> b!282462 m!297095))

(declare-fun m!297097 () Bool)

(assert (=> b!282461 m!297097))

(assert (=> b!282461 m!297097))

(declare-fun m!297099 () Bool)

(assert (=> b!282461 m!297099))

(declare-fun m!297101 () Bool)

(assert (=> b!282455 m!297101))

(declare-fun m!297103 () Bool)

(assert (=> b!282458 m!297103))

(declare-fun m!297105 () Bool)

(assert (=> b!282454 m!297105))

(declare-fun m!297107 () Bool)

(assert (=> b!282454 m!297107))

(declare-fun m!297109 () Bool)

(assert (=> b!282454 m!297109))

(assert (=> b!282454 m!297107))

(assert (=> b!282454 m!297091))

(assert (=> b!282454 m!297097))

(declare-fun m!297111 () Bool)

(assert (=> b!282454 m!297111))

(declare-fun m!297113 () Bool)

(assert (=> b!282454 m!297113))

(assert (=> b!282454 m!297097))

(declare-fun m!297115 () Bool)

(assert (=> b!282454 m!297115))

(declare-fun m!297117 () Bool)

(assert (=> b!282454 m!297117))

(declare-fun m!297119 () Bool)

(assert (=> b!282454 m!297119))

(check-sat (not b!282458) (not b!282455) (not b!282462) (not b!282456) (not b!282454) (not b!282457) (not start!27282) (not b!282461))
(check-sat)
