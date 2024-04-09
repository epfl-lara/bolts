; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26470 () Bool)

(assert start!26470)

(declare-fun b!274621 () Bool)

(declare-fun res!138656 () Bool)

(declare-fun e!175804 () Bool)

(assert (=> b!274621 (=> (not res!138656) (not e!175804))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274621 (= res!138656 (validKeyInArray!0 k!2581))))

(declare-fun res!138653 () Bool)

(assert (=> start!26470 (=> (not res!138653) (not e!175804))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26470 (= res!138653 (validMask!0 mask!3868))))

(assert (=> start!26470 e!175804))

(declare-datatypes ((array!13556 0))(
  ( (array!13557 (arr!6427 (Array (_ BitVec 32) (_ BitVec 64))) (size!6779 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13556)

(declare-fun array_inv!4381 (array!13556) Bool)

(assert (=> start!26470 (array_inv!4381 a!3325)))

(assert (=> start!26470 true))

(declare-fun b!274622 () Bool)

(declare-fun e!175803 () Bool)

(assert (=> b!274622 (= e!175804 e!175803)))

(declare-fun res!138654 () Bool)

(assert (=> b!274622 (=> (not res!138654) (not e!175803))))

(declare-datatypes ((SeekEntryResult!1596 0))(
  ( (MissingZero!1596 (index!8554 (_ BitVec 32))) (Found!1596 (index!8555 (_ BitVec 32))) (Intermediate!1596 (undefined!2408 Bool) (index!8556 (_ BitVec 32)) (x!26817 (_ BitVec 32))) (Undefined!1596) (MissingVacant!1596 (index!8557 (_ BitVec 32))) )
))
(declare-fun lt!137103 () SeekEntryResult!1596)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274622 (= res!138654 (or (= lt!137103 (MissingZero!1596 i!1267)) (= lt!137103 (MissingVacant!1596 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13556 (_ BitVec 32)) SeekEntryResult!1596)

(assert (=> b!274622 (= lt!137103 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!274623 () Bool)

(declare-fun e!175802 () Bool)

(assert (=> b!274623 (= e!175802 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13556 (_ BitVec 32)) Bool)

(assert (=> b!274623 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8658 0))(
  ( (Unit!8659) )
))
(declare-fun lt!137102 () Unit!8658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13556 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8658)

(assert (=> b!274623 (= lt!137102 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!137105 () array!13556)

(assert (=> b!274623 (= (seekEntryOrOpen!0 (select (arr!6427 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6427 a!3325) i!1267 k!2581) startIndex!26) lt!137105 mask!3868))))

(declare-fun lt!137101 () Unit!8658)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13556 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8658)

(assert (=> b!274623 (= lt!137101 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4256 0))(
  ( (Nil!4253) (Cons!4252 (h!4919 (_ BitVec 64)) (t!9346 List!4256)) )
))
(declare-fun arrayNoDuplicates!0 (array!13556 (_ BitVec 32) List!4256) Bool)

(assert (=> b!274623 (arrayNoDuplicates!0 lt!137105 #b00000000000000000000000000000000 Nil!4253)))

(declare-fun lt!137104 () Unit!8658)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13556 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4256) Unit!8658)

(assert (=> b!274623 (= lt!137104 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4253))))

(declare-fun b!274624 () Bool)

(assert (=> b!274624 (= e!175803 e!175802)))

(declare-fun res!138651 () Bool)

(assert (=> b!274624 (=> (not res!138651) (not e!175802))))

(assert (=> b!274624 (= res!138651 (not (= startIndex!26 i!1267)))))

(assert (=> b!274624 (= lt!137105 (array!13557 (store (arr!6427 a!3325) i!1267 k!2581) (size!6779 a!3325)))))

(declare-fun b!274625 () Bool)

(declare-fun res!138652 () Bool)

(assert (=> b!274625 (=> (not res!138652) (not e!175804))))

(assert (=> b!274625 (= res!138652 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4253))))

(declare-fun b!274626 () Bool)

(declare-fun res!138657 () Bool)

(assert (=> b!274626 (=> (not res!138657) (not e!175804))))

(declare-fun arrayContainsKey!0 (array!13556 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274626 (= res!138657 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274627 () Bool)

(declare-fun res!138649 () Bool)

(assert (=> b!274627 (=> (not res!138649) (not e!175804))))

(assert (=> b!274627 (= res!138649 (and (= (size!6779 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6779 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6779 a!3325))))))

(declare-fun b!274628 () Bool)

(declare-fun res!138655 () Bool)

(assert (=> b!274628 (=> (not res!138655) (not e!175802))))

(assert (=> b!274628 (= res!138655 (validKeyInArray!0 (select (arr!6427 a!3325) startIndex!26)))))

(declare-fun b!274629 () Bool)

(declare-fun res!138650 () Bool)

(assert (=> b!274629 (=> (not res!138650) (not e!175803))))

(assert (=> b!274629 (= res!138650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26470 res!138653) b!274627))

(assert (= (and b!274627 res!138649) b!274621))

(assert (= (and b!274621 res!138656) b!274625))

(assert (= (and b!274625 res!138652) b!274626))

(assert (= (and b!274626 res!138657) b!274622))

(assert (= (and b!274622 res!138654) b!274629))

(assert (= (and b!274629 res!138650) b!274624))

(assert (= (and b!274624 res!138651) b!274628))

(assert (= (and b!274628 res!138655) b!274623))

(declare-fun m!290263 () Bool)

(assert (=> b!274623 m!290263))

(declare-fun m!290265 () Bool)

(assert (=> b!274623 m!290265))

(declare-fun m!290267 () Bool)

(assert (=> b!274623 m!290267))

(assert (=> b!274623 m!290265))

(declare-fun m!290269 () Bool)

(assert (=> b!274623 m!290269))

(declare-fun m!290271 () Bool)

(assert (=> b!274623 m!290271))

(declare-fun m!290273 () Bool)

(assert (=> b!274623 m!290273))

(declare-fun m!290275 () Bool)

(assert (=> b!274623 m!290275))

(declare-fun m!290277 () Bool)

(assert (=> b!274623 m!290277))

(assert (=> b!274623 m!290273))

(declare-fun m!290279 () Bool)

(assert (=> b!274623 m!290279))

(declare-fun m!290281 () Bool)

(assert (=> b!274623 m!290281))

(assert (=> b!274624 m!290269))

(assert (=> b!274628 m!290273))

(assert (=> b!274628 m!290273))

(declare-fun m!290283 () Bool)

(assert (=> b!274628 m!290283))

(declare-fun m!290285 () Bool)

(assert (=> start!26470 m!290285))

(declare-fun m!290287 () Bool)

(assert (=> start!26470 m!290287))

(declare-fun m!290289 () Bool)

(assert (=> b!274626 m!290289))

(declare-fun m!290291 () Bool)

(assert (=> b!274621 m!290291))

(declare-fun m!290293 () Bool)

(assert (=> b!274622 m!290293))

(declare-fun m!290295 () Bool)

(assert (=> b!274629 m!290295))

(declare-fun m!290297 () Bool)

(assert (=> b!274625 m!290297))

(push 1)

(assert (not b!274629))

(assert (not b!274625))

