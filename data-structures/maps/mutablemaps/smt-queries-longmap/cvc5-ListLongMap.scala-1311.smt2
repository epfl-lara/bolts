; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26434 () Bool)

(assert start!26434)

(declare-fun b!274099 () Bool)

(declare-fun e!175551 () Bool)

(declare-fun e!175552 () Bool)

(assert (=> b!274099 (= e!175551 e!175552)))

(declare-fun res!138132 () Bool)

(assert (=> b!274099 (=> (not res!138132) (not e!175552))))

(declare-datatypes ((SeekEntryResult!1578 0))(
  ( (MissingZero!1578 (index!8482 (_ BitVec 32))) (Found!1578 (index!8483 (_ BitVec 32))) (Intermediate!1578 (undefined!2390 Bool) (index!8484 (_ BitVec 32)) (x!26751 (_ BitVec 32))) (Undefined!1578) (MissingVacant!1578 (index!8485 (_ BitVec 32))) )
))
(declare-fun lt!136795 () SeekEntryResult!1578)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274099 (= res!138132 (or (= lt!136795 (MissingZero!1578 i!1267)) (= lt!136795 (MissingVacant!1578 i!1267))))))

(declare-datatypes ((array!13520 0))(
  ( (array!13521 (arr!6409 (Array (_ BitVec 32) (_ BitVec 64))) (size!6761 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13520)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13520 (_ BitVec 32)) SeekEntryResult!1578)

(assert (=> b!274099 (= lt!136795 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274100 () Bool)

(declare-fun res!138128 () Bool)

(assert (=> b!274100 (=> (not res!138128) (not e!175551))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274100 (= res!138128 (and (= (size!6761 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6761 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6761 a!3325))))))

(declare-fun b!274101 () Bool)

(declare-fun res!138134 () Bool)

(assert (=> b!274101 (=> (not res!138134) (not e!175552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13520 (_ BitVec 32)) Bool)

(assert (=> b!274101 (= res!138134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!138127 () Bool)

(assert (=> start!26434 (=> (not res!138127) (not e!175551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26434 (= res!138127 (validMask!0 mask!3868))))

(assert (=> start!26434 e!175551))

(declare-fun array_inv!4363 (array!13520) Bool)

(assert (=> start!26434 (array_inv!4363 a!3325)))

(assert (=> start!26434 true))

(declare-fun b!274102 () Bool)

(declare-fun res!138133 () Bool)

(assert (=> b!274102 (=> (not res!138133) (not e!175551))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274102 (= res!138133 (validKeyInArray!0 k!2581))))

(declare-fun b!274103 () Bool)

(declare-fun res!138129 () Bool)

(assert (=> b!274103 (=> (not res!138129) (not e!175551))))

(declare-fun arrayContainsKey!0 (array!13520 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274103 (= res!138129 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274104 () Bool)

(declare-fun res!138131 () Bool)

(declare-fun e!175550 () Bool)

(assert (=> b!274104 (=> (not res!138131) (not e!175550))))

(assert (=> b!274104 (= res!138131 (validKeyInArray!0 (select (arr!6409 a!3325) startIndex!26)))))

(declare-fun b!274105 () Bool)

(assert (=> b!274105 (= e!175550 (not true))))

(assert (=> b!274105 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8622 0))(
  ( (Unit!8623) )
))
(declare-fun lt!136798 () Unit!8622)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13520 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8622)

(assert (=> b!274105 (= lt!136798 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136799 () array!13520)

(assert (=> b!274105 (= (seekEntryOrOpen!0 (select (arr!6409 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6409 a!3325) i!1267 k!2581) startIndex!26) lt!136799 mask!3868))))

(declare-fun lt!136797 () Unit!8622)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13520 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8622)

(assert (=> b!274105 (= lt!136797 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4238 0))(
  ( (Nil!4235) (Cons!4234 (h!4901 (_ BitVec 64)) (t!9328 List!4238)) )
))
(declare-fun arrayNoDuplicates!0 (array!13520 (_ BitVec 32) List!4238) Bool)

(assert (=> b!274105 (arrayNoDuplicates!0 lt!136799 #b00000000000000000000000000000000 Nil!4235)))

(declare-fun lt!136796 () Unit!8622)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13520 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4238) Unit!8622)

(assert (=> b!274105 (= lt!136796 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4235))))

(declare-fun b!274106 () Bool)

(declare-fun res!138135 () Bool)

(assert (=> b!274106 (=> (not res!138135) (not e!175551))))

(assert (=> b!274106 (= res!138135 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4235))))

(declare-fun b!274107 () Bool)

(assert (=> b!274107 (= e!175552 e!175550)))

(declare-fun res!138130 () Bool)

(assert (=> b!274107 (=> (not res!138130) (not e!175550))))

(assert (=> b!274107 (= res!138130 (not (= startIndex!26 i!1267)))))

(assert (=> b!274107 (= lt!136799 (array!13521 (store (arr!6409 a!3325) i!1267 k!2581) (size!6761 a!3325)))))

(assert (= (and start!26434 res!138127) b!274100))

(assert (= (and b!274100 res!138128) b!274102))

(assert (= (and b!274102 res!138133) b!274106))

(assert (= (and b!274106 res!138135) b!274103))

(assert (= (and b!274103 res!138129) b!274099))

(assert (= (and b!274099 res!138132) b!274101))

(assert (= (and b!274101 res!138134) b!274107))

(assert (= (and b!274107 res!138130) b!274104))

(assert (= (and b!274104 res!138131) b!274105))

(declare-fun m!289567 () Bool)

(assert (=> start!26434 m!289567))

(declare-fun m!289569 () Bool)

(assert (=> start!26434 m!289569))

(declare-fun m!289571 () Bool)

(assert (=> b!274104 m!289571))

(assert (=> b!274104 m!289571))

(declare-fun m!289573 () Bool)

(assert (=> b!274104 m!289573))

(declare-fun m!289575 () Bool)

(assert (=> b!274101 m!289575))

(declare-fun m!289577 () Bool)

(assert (=> b!274102 m!289577))

(declare-fun m!289579 () Bool)

(assert (=> b!274099 m!289579))

(declare-fun m!289581 () Bool)

(assert (=> b!274105 m!289581))

(declare-fun m!289583 () Bool)

(assert (=> b!274105 m!289583))

(assert (=> b!274105 m!289583))

(declare-fun m!289585 () Bool)

(assert (=> b!274105 m!289585))

(declare-fun m!289587 () Bool)

(assert (=> b!274105 m!289587))

(assert (=> b!274105 m!289571))

(declare-fun m!289589 () Bool)

(assert (=> b!274105 m!289589))

(declare-fun m!289591 () Bool)

(assert (=> b!274105 m!289591))

(assert (=> b!274105 m!289571))

(declare-fun m!289593 () Bool)

(assert (=> b!274105 m!289593))

(declare-fun m!289595 () Bool)

(assert (=> b!274105 m!289595))

(declare-fun m!289597 () Bool)

(assert (=> b!274105 m!289597))

(assert (=> b!274107 m!289587))

(declare-fun m!289599 () Bool)

(assert (=> b!274103 m!289599))

(declare-fun m!289601 () Bool)

(assert (=> b!274106 m!289601))

(push 1)

