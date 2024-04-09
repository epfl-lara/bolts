; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26480 () Bool)

(assert start!26480)

(declare-fun b!274756 () Bool)

(declare-fun e!175861 () Bool)

(declare-fun e!175863 () Bool)

(assert (=> b!274756 (= e!175861 e!175863)))

(declare-fun res!138784 () Bool)

(assert (=> b!274756 (=> (not res!138784) (not e!175863))))

(declare-datatypes ((SeekEntryResult!1601 0))(
  ( (MissingZero!1601 (index!8574 (_ BitVec 32))) (Found!1601 (index!8575 (_ BitVec 32))) (Intermediate!1601 (undefined!2413 Bool) (index!8576 (_ BitVec 32)) (x!26830 (_ BitVec 32))) (Undefined!1601) (MissingVacant!1601 (index!8577 (_ BitVec 32))) )
))
(declare-fun lt!137180 () SeekEntryResult!1601)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274756 (= res!138784 (or (= lt!137180 (MissingZero!1601 i!1267)) (= lt!137180 (MissingVacant!1601 i!1267))))))

(declare-datatypes ((array!13566 0))(
  ( (array!13567 (arr!6432 (Array (_ BitVec 32) (_ BitVec 64))) (size!6784 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13566)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13566 (_ BitVec 32)) SeekEntryResult!1601)

(assert (=> b!274756 (= lt!137180 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274757 () Bool)

(declare-fun res!138791 () Bool)

(assert (=> b!274757 (=> (not res!138791) (not e!175861))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274757 (= res!138791 (validKeyInArray!0 k!2581))))

(declare-fun b!274758 () Bool)

(declare-fun res!138787 () Bool)

(assert (=> b!274758 (=> (not res!138787) (not e!175861))))

(declare-datatypes ((List!4261 0))(
  ( (Nil!4258) (Cons!4257 (h!4924 (_ BitVec 64)) (t!9351 List!4261)) )
))
(declare-fun arrayNoDuplicates!0 (array!13566 (_ BitVec 32) List!4261) Bool)

(assert (=> b!274758 (= res!138787 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4258))))

(declare-fun b!274759 () Bool)

(declare-fun res!138790 () Bool)

(assert (=> b!274759 (=> (not res!138790) (not e!175863))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13566 (_ BitVec 32)) Bool)

(assert (=> b!274759 (= res!138790 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274760 () Bool)

(declare-fun e!175864 () Bool)

(assert (=> b!274760 (= e!175864 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274760 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8668 0))(
  ( (Unit!8669) )
))
(declare-fun lt!137176 () Unit!8668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13566 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8668)

(assert (=> b!274760 (= lt!137176 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!137179 () array!13566)

(assert (=> b!274760 (= (seekEntryOrOpen!0 (select (arr!6432 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6432 a!3325) i!1267 k!2581) startIndex!26) lt!137179 mask!3868))))

(declare-fun lt!137177 () Unit!8668)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13566 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8668)

(assert (=> b!274760 (= lt!137177 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274760 (arrayNoDuplicates!0 lt!137179 #b00000000000000000000000000000000 Nil!4258)))

(declare-fun lt!137178 () Unit!8668)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13566 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4261) Unit!8668)

(assert (=> b!274760 (= lt!137178 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4258))))

(declare-fun b!274761 () Bool)

(declare-fun res!138786 () Bool)

(assert (=> b!274761 (=> (not res!138786) (not e!175861))))

(assert (=> b!274761 (= res!138786 (and (= (size!6784 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6784 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6784 a!3325))))))

(declare-fun b!274762 () Bool)

(declare-fun res!138789 () Bool)

(assert (=> b!274762 (=> (not res!138789) (not e!175861))))

(declare-fun arrayContainsKey!0 (array!13566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274762 (= res!138789 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274764 () Bool)

(assert (=> b!274764 (= e!175863 e!175864)))

(declare-fun res!138788 () Bool)

(assert (=> b!274764 (=> (not res!138788) (not e!175864))))

(assert (=> b!274764 (= res!138788 (not (= startIndex!26 i!1267)))))

(assert (=> b!274764 (= lt!137179 (array!13567 (store (arr!6432 a!3325) i!1267 k!2581) (size!6784 a!3325)))))

(declare-fun res!138785 () Bool)

(assert (=> start!26480 (=> (not res!138785) (not e!175861))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26480 (= res!138785 (validMask!0 mask!3868))))

(assert (=> start!26480 e!175861))

(declare-fun array_inv!4386 (array!13566) Bool)

(assert (=> start!26480 (array_inv!4386 a!3325)))

(assert (=> start!26480 true))

(declare-fun b!274763 () Bool)

(declare-fun res!138792 () Bool)

(assert (=> b!274763 (=> (not res!138792) (not e!175864))))

(assert (=> b!274763 (= res!138792 (validKeyInArray!0 (select (arr!6432 a!3325) startIndex!26)))))

(assert (= (and start!26480 res!138785) b!274761))

(assert (= (and b!274761 res!138786) b!274757))

(assert (= (and b!274757 res!138791) b!274758))

(assert (= (and b!274758 res!138787) b!274762))

(assert (= (and b!274762 res!138789) b!274756))

(assert (= (and b!274756 res!138784) b!274759))

(assert (= (and b!274759 res!138790) b!274764))

(assert (= (and b!274764 res!138788) b!274763))

(assert (= (and b!274763 res!138792) b!274760))

(declare-fun m!290443 () Bool)

(assert (=> b!274759 m!290443))

(declare-fun m!290445 () Bool)

(assert (=> b!274757 m!290445))

(declare-fun m!290447 () Bool)

(assert (=> b!274763 m!290447))

(assert (=> b!274763 m!290447))

(declare-fun m!290449 () Bool)

(assert (=> b!274763 m!290449))

(declare-fun m!290451 () Bool)

(assert (=> b!274760 m!290451))

(declare-fun m!290453 () Bool)

(assert (=> b!274760 m!290453))

(declare-fun m!290455 () Bool)

(assert (=> b!274760 m!290455))

(declare-fun m!290457 () Bool)

(assert (=> b!274760 m!290457))

(declare-fun m!290459 () Bool)

(assert (=> b!274760 m!290459))

(assert (=> b!274760 m!290447))

(declare-fun m!290461 () Bool)

(assert (=> b!274760 m!290461))

(declare-fun m!290463 () Bool)

(assert (=> b!274760 m!290463))

(assert (=> b!274760 m!290453))

(declare-fun m!290465 () Bool)

(assert (=> b!274760 m!290465))

(assert (=> b!274760 m!290447))

(declare-fun m!290467 () Bool)

(assert (=> b!274760 m!290467))

(declare-fun m!290469 () Bool)

(assert (=> b!274758 m!290469))

(declare-fun m!290471 () Bool)

(assert (=> start!26480 m!290471))

(declare-fun m!290473 () Bool)

(assert (=> start!26480 m!290473))

(assert (=> b!274764 m!290455))

(declare-fun m!290475 () Bool)

(assert (=> b!274756 m!290475))

(declare-fun m!290477 () Bool)

(assert (=> b!274762 m!290477))

(push 1)

