; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26482 () Bool)

(assert start!26482)

(declare-fun b!274783 () Bool)

(declare-fun e!175875 () Bool)

(declare-fun e!175873 () Bool)

(assert (=> b!274783 (= e!175875 e!175873)))

(declare-fun res!138811 () Bool)

(assert (=> b!274783 (=> (not res!138811) (not e!175873))))

(declare-datatypes ((SeekEntryResult!1602 0))(
  ( (MissingZero!1602 (index!8578 (_ BitVec 32))) (Found!1602 (index!8579 (_ BitVec 32))) (Intermediate!1602 (undefined!2414 Bool) (index!8580 (_ BitVec 32)) (x!26839 (_ BitVec 32))) (Undefined!1602) (MissingVacant!1602 (index!8581 (_ BitVec 32))) )
))
(declare-fun lt!137194 () SeekEntryResult!1602)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274783 (= res!138811 (or (= lt!137194 (MissingZero!1602 i!1267)) (= lt!137194 (MissingVacant!1602 i!1267))))))

(declare-datatypes ((array!13568 0))(
  ( (array!13569 (arr!6433 (Array (_ BitVec 32) (_ BitVec 64))) (size!6785 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13568)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13568 (_ BitVec 32)) SeekEntryResult!1602)

(assert (=> b!274783 (= lt!137194 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!138819 () Bool)

(assert (=> start!26482 (=> (not res!138819) (not e!175875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26482 (= res!138819 (validMask!0 mask!3868))))

(assert (=> start!26482 e!175875))

(declare-fun array_inv!4387 (array!13568) Bool)

(assert (=> start!26482 (array_inv!4387 a!3325)))

(assert (=> start!26482 true))

(declare-fun b!274784 () Bool)

(declare-fun res!138813 () Bool)

(assert (=> b!274784 (=> (not res!138813) (not e!175875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274784 (= res!138813 (validKeyInArray!0 k!2581))))

(declare-fun b!274785 () Bool)

(declare-fun res!138814 () Bool)

(assert (=> b!274785 (=> (not res!138814) (not e!175873))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13568 (_ BitVec 32)) Bool)

(assert (=> b!274785 (= res!138814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274786 () Bool)

(declare-fun res!138818 () Bool)

(assert (=> b!274786 (=> (not res!138818) (not e!175875))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!274786 (= res!138818 (and (= (size!6785 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6785 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6785 a!3325))))))

(declare-fun b!274787 () Bool)

(declare-fun res!138817 () Bool)

(declare-fun e!175876 () Bool)

(assert (=> b!274787 (=> (not res!138817) (not e!175876))))

(assert (=> b!274787 (= res!138817 (validKeyInArray!0 (select (arr!6433 a!3325) startIndex!26)))))

(declare-fun b!274788 () Bool)

(assert (=> b!274788 (= e!175876 (not (or (bvslt startIndex!26 (bvsub (size!6785 a!3325) #b00000000000000000000000000000001)) (bvsle startIndex!26 (size!6785 a!3325)))))))

(assert (=> b!274788 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8670 0))(
  ( (Unit!8671) )
))
(declare-fun lt!137192 () Unit!8670)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8670)

(assert (=> b!274788 (= lt!137192 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!137191 () array!13568)

(assert (=> b!274788 (= (seekEntryOrOpen!0 (select (arr!6433 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6433 a!3325) i!1267 k!2581) startIndex!26) lt!137191 mask!3868))))

(declare-fun lt!137195 () Unit!8670)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13568 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8670)

(assert (=> b!274788 (= lt!137195 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4262 0))(
  ( (Nil!4259) (Cons!4258 (h!4925 (_ BitVec 64)) (t!9352 List!4262)) )
))
(declare-fun arrayNoDuplicates!0 (array!13568 (_ BitVec 32) List!4262) Bool)

(assert (=> b!274788 (arrayNoDuplicates!0 lt!137191 #b00000000000000000000000000000000 Nil!4259)))

(declare-fun lt!137193 () Unit!8670)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13568 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4262) Unit!8670)

(assert (=> b!274788 (= lt!137193 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4259))))

(declare-fun b!274789 () Bool)

(assert (=> b!274789 (= e!175873 e!175876)))

(declare-fun res!138812 () Bool)

(assert (=> b!274789 (=> (not res!138812) (not e!175876))))

(assert (=> b!274789 (= res!138812 (not (= startIndex!26 i!1267)))))

(assert (=> b!274789 (= lt!137191 (array!13569 (store (arr!6433 a!3325) i!1267 k!2581) (size!6785 a!3325)))))

(declare-fun b!274790 () Bool)

(declare-fun res!138815 () Bool)

(assert (=> b!274790 (=> (not res!138815) (not e!175875))))

(assert (=> b!274790 (= res!138815 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4259))))

(declare-fun b!274791 () Bool)

(declare-fun res!138816 () Bool)

(assert (=> b!274791 (=> (not res!138816) (not e!175875))))

(declare-fun arrayContainsKey!0 (array!13568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274791 (= res!138816 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26482 res!138819) b!274786))

(assert (= (and b!274786 res!138818) b!274784))

(assert (= (and b!274784 res!138813) b!274790))

(assert (= (and b!274790 res!138815) b!274791))

(assert (= (and b!274791 res!138816) b!274783))

(assert (= (and b!274783 res!138811) b!274785))

(assert (= (and b!274785 res!138814) b!274789))

(assert (= (and b!274789 res!138812) b!274787))

(assert (= (and b!274787 res!138817) b!274788))

(declare-fun m!290479 () Bool)

(assert (=> b!274788 m!290479))

(declare-fun m!290481 () Bool)

(assert (=> b!274788 m!290481))

(declare-fun m!290483 () Bool)

(assert (=> b!274788 m!290483))

(assert (=> b!274788 m!290481))

(declare-fun m!290485 () Bool)

(assert (=> b!274788 m!290485))

(declare-fun m!290487 () Bool)

(assert (=> b!274788 m!290487))

(declare-fun m!290489 () Bool)

(assert (=> b!274788 m!290489))

(declare-fun m!290491 () Bool)

(assert (=> b!274788 m!290491))

(declare-fun m!290493 () Bool)

(assert (=> b!274788 m!290493))

(declare-fun m!290495 () Bool)

(assert (=> b!274788 m!290495))

(assert (=> b!274788 m!290491))

(declare-fun m!290497 () Bool)

(assert (=> b!274788 m!290497))

(declare-fun m!290499 () Bool)

(assert (=> b!274784 m!290499))

(declare-fun m!290501 () Bool)

(assert (=> start!26482 m!290501))

(declare-fun m!290503 () Bool)

(assert (=> start!26482 m!290503))

(declare-fun m!290505 () Bool)

(assert (=> b!274790 m!290505))

(assert (=> b!274789 m!290485))

(assert (=> b!274787 m!290491))

(assert (=> b!274787 m!290491))

(declare-fun m!290507 () Bool)

(assert (=> b!274787 m!290507))

(declare-fun m!290509 () Bool)

(assert (=> b!274791 m!290509))

(declare-fun m!290511 () Bool)

(assert (=> b!274785 m!290511))

(declare-fun m!290513 () Bool)

(assert (=> b!274783 m!290513))

(push 1)

(assert (not b!274790))

(assert (not b!274788))

(assert (not start!26482))

(assert (not b!274787))

(assert (not b!274783))

(assert (not b!274785))

(assert (not b!274791))

(assert (not b!274784))

(check-sat)

(pop 1)

(push 1)

(check-sat)

