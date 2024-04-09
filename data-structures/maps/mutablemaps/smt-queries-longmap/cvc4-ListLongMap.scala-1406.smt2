; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27302 () Bool)

(assert start!27302)

(declare-fun b!282724 () Bool)

(declare-fun e!179441 () Bool)

(declare-fun e!179443 () Bool)

(assert (=> b!282724 (= e!179441 e!179443)))

(declare-fun res!145839 () Bool)

(assert (=> b!282724 (=> (not res!145839) (not e!179443))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282724 (= res!145839 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!14109 0))(
  ( (array!14110 (arr!6696 (Array (_ BitVec 32) (_ BitVec 64))) (size!7048 (_ BitVec 32))) )
))
(declare-fun lt!139754 () array!14109)

(declare-fun a!3325 () array!14109)

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!282724 (= lt!139754 (array!14110 (store (arr!6696 a!3325) i!1267 k!2581) (size!7048 a!3325)))))

(declare-fun b!282725 () Bool)

(declare-fun res!145836 () Bool)

(assert (=> b!282725 (=> (not res!145836) (not e!179443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282725 (= res!145836 (validKeyInArray!0 (select (arr!6696 a!3325) startIndex!26)))))

(declare-fun b!282726 () Bool)

(assert (=> b!282726 (= e!179443 (not true))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14109 (_ BitVec 32)) Bool)

(assert (=> b!282726 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8993 0))(
  ( (Unit!8994) )
))
(declare-fun lt!139753 () Unit!8993)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14109 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8993)

(assert (=> b!282726 (= lt!139753 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1865 0))(
  ( (MissingZero!1865 (index!9630 (_ BitVec 32))) (Found!1865 (index!9631 (_ BitVec 32))) (Intermediate!1865 (undefined!2677 Bool) (index!9632 (_ BitVec 32)) (x!27807 (_ BitVec 32))) (Undefined!1865) (MissingVacant!1865 (index!9633 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14109 (_ BitVec 32)) SeekEntryResult!1865)

(assert (=> b!282726 (= (seekEntryOrOpen!0 (select (arr!6696 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6696 a!3325) i!1267 k!2581) startIndex!26) lt!139754 mask!3868))))

(declare-fun lt!139752 () Unit!8993)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14109 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8993)

(assert (=> b!282726 (= lt!139752 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4525 0))(
  ( (Nil!4522) (Cons!4521 (h!5191 (_ BitVec 64)) (t!9615 List!4525)) )
))
(declare-fun arrayNoDuplicates!0 (array!14109 (_ BitVec 32) List!4525) Bool)

(assert (=> b!282726 (arrayNoDuplicates!0 lt!139754 #b00000000000000000000000000000000 Nil!4522)))

(declare-fun lt!139751 () Unit!8993)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14109 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4525) Unit!8993)

(assert (=> b!282726 (= lt!139751 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4522))))

(declare-fun b!282727 () Bool)

(declare-fun res!145832 () Bool)

(declare-fun e!179440 () Bool)

(assert (=> b!282727 (=> (not res!145832) (not e!179440))))

(assert (=> b!282727 (= res!145832 (and (= (size!7048 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7048 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7048 a!3325))))))

(declare-fun b!282728 () Bool)

(declare-fun res!145835 () Bool)

(assert (=> b!282728 (=> (not res!145835) (not e!179441))))

(assert (=> b!282728 (= res!145835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282730 () Bool)

(declare-fun res!145834 () Bool)

(assert (=> b!282730 (=> (not res!145834) (not e!179440))))

(assert (=> b!282730 (= res!145834 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4522))))

(declare-fun res!145833 () Bool)

(assert (=> start!27302 (=> (not res!145833) (not e!179440))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27302 (= res!145833 (validMask!0 mask!3868))))

(assert (=> start!27302 e!179440))

(declare-fun array_inv!4650 (array!14109) Bool)

(assert (=> start!27302 (array_inv!4650 a!3325)))

(assert (=> start!27302 true))

(declare-fun b!282729 () Bool)

(declare-fun res!145831 () Bool)

(assert (=> b!282729 (=> (not res!145831) (not e!179440))))

(assert (=> b!282729 (= res!145831 (validKeyInArray!0 k!2581))))

(declare-fun b!282731 () Bool)

(assert (=> b!282731 (= e!179440 e!179441)))

(declare-fun res!145837 () Bool)

(assert (=> b!282731 (=> (not res!145837) (not e!179441))))

(declare-fun lt!139750 () SeekEntryResult!1865)

(assert (=> b!282731 (= res!145837 (or (= lt!139750 (MissingZero!1865 i!1267)) (= lt!139750 (MissingVacant!1865 i!1267))))))

(assert (=> b!282731 (= lt!139750 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282732 () Bool)

(declare-fun res!145838 () Bool)

(assert (=> b!282732 (=> (not res!145838) (not e!179440))))

(declare-fun arrayContainsKey!0 (array!14109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282732 (= res!145838 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27302 res!145833) b!282727))

(assert (= (and b!282727 res!145832) b!282729))

(assert (= (and b!282729 res!145831) b!282730))

(assert (= (and b!282730 res!145834) b!282732))

(assert (= (and b!282732 res!145838) b!282731))

(assert (= (and b!282731 res!145837) b!282728))

(assert (= (and b!282728 res!145835) b!282724))

(assert (= (and b!282724 res!145839) b!282725))

(assert (= (and b!282725 res!145836) b!282726))

(declare-fun m!297445 () Bool)

(assert (=> b!282725 m!297445))

(assert (=> b!282725 m!297445))

(declare-fun m!297447 () Bool)

(assert (=> b!282725 m!297447))

(declare-fun m!297449 () Bool)

(assert (=> b!282732 m!297449))

(declare-fun m!297451 () Bool)

(assert (=> b!282730 m!297451))

(declare-fun m!297453 () Bool)

(assert (=> b!282724 m!297453))

(declare-fun m!297455 () Bool)

(assert (=> b!282726 m!297455))

(declare-fun m!297457 () Bool)

(assert (=> b!282726 m!297457))

(declare-fun m!297459 () Bool)

(assert (=> b!282726 m!297459))

(assert (=> b!282726 m!297453))

(assert (=> b!282726 m!297459))

(declare-fun m!297461 () Bool)

(assert (=> b!282726 m!297461))

(declare-fun m!297463 () Bool)

(assert (=> b!282726 m!297463))

(assert (=> b!282726 m!297445))

(declare-fun m!297465 () Bool)

(assert (=> b!282726 m!297465))

(declare-fun m!297467 () Bool)

(assert (=> b!282726 m!297467))

(assert (=> b!282726 m!297445))

(declare-fun m!297469 () Bool)

(assert (=> b!282726 m!297469))

(declare-fun m!297471 () Bool)

(assert (=> b!282731 m!297471))

(declare-fun m!297473 () Bool)

(assert (=> b!282729 m!297473))

(declare-fun m!297475 () Bool)

(assert (=> b!282728 m!297475))

(declare-fun m!297477 () Bool)

(assert (=> start!27302 m!297477))

(declare-fun m!297479 () Bool)

(assert (=> start!27302 m!297479))

(push 1)

(assert (not start!27302))

(assert (not b!282732))

(assert (not b!282731))

(assert (not b!282726))

(assert (not b!282729))

(assert (not b!282725))

(assert (not b!282730))

(assert (not b!282728))

(check-sat)

(pop 1)

(push 1)

(check-sat)

