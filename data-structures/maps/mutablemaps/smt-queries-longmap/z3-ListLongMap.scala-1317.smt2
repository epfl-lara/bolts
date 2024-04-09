; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26472 () Bool)

(assert start!26472)

(declare-fun b!274648 () Bool)

(declare-fun e!175814 () Bool)

(declare-fun e!175816 () Bool)

(assert (=> b!274648 (= e!175814 e!175816)))

(declare-fun res!138679 () Bool)

(assert (=> b!274648 (=> (not res!138679) (not e!175816))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274648 (= res!138679 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!13558 0))(
  ( (array!13559 (arr!6428 (Array (_ BitVec 32) (_ BitVec 64))) (size!6780 (_ BitVec 32))) )
))
(declare-fun lt!137119 () array!13558)

(declare-fun a!3325 () array!13558)

(declare-fun k0!2581 () (_ BitVec 64))

(assert (=> b!274648 (= lt!137119 (array!13559 (store (arr!6428 a!3325) i!1267 k0!2581) (size!6780 a!3325)))))

(declare-fun b!274649 () Bool)

(declare-fun res!138678 () Bool)

(assert (=> b!274649 (=> (not res!138678) (not e!175814))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13558 (_ BitVec 32)) Bool)

(assert (=> b!274649 (= res!138678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274650 () Bool)

(declare-fun res!138676 () Bool)

(declare-fun e!175813 () Bool)

(assert (=> b!274650 (=> (not res!138676) (not e!175813))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274650 (= res!138676 (validKeyInArray!0 k0!2581))))

(declare-fun b!274651 () Bool)

(declare-fun res!138677 () Bool)

(assert (=> b!274651 (=> (not res!138677) (not e!175816))))

(assert (=> b!274651 (= res!138677 (validKeyInArray!0 (select (arr!6428 a!3325) startIndex!26)))))

(declare-fun b!274652 () Bool)

(assert (=> b!274652 (= e!175816 (not true))))

(assert (=> b!274652 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8660 0))(
  ( (Unit!8661) )
))
(declare-fun lt!137118 () Unit!8660)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13558 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8660)

(assert (=> b!274652 (= lt!137118 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1597 0))(
  ( (MissingZero!1597 (index!8558 (_ BitVec 32))) (Found!1597 (index!8559 (_ BitVec 32))) (Intermediate!1597 (undefined!2409 Bool) (index!8560 (_ BitVec 32)) (x!26818 (_ BitVec 32))) (Undefined!1597) (MissingVacant!1597 (index!8561 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13558 (_ BitVec 32)) SeekEntryResult!1597)

(assert (=> b!274652 (= (seekEntryOrOpen!0 (select (arr!6428 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6428 a!3325) i!1267 k0!2581) startIndex!26) lt!137119 mask!3868))))

(declare-fun lt!137116 () Unit!8660)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13558 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8660)

(assert (=> b!274652 (= lt!137116 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4257 0))(
  ( (Nil!4254) (Cons!4253 (h!4920 (_ BitVec 64)) (t!9347 List!4257)) )
))
(declare-fun arrayNoDuplicates!0 (array!13558 (_ BitVec 32) List!4257) Bool)

(assert (=> b!274652 (arrayNoDuplicates!0 lt!137119 #b00000000000000000000000000000000 Nil!4254)))

(declare-fun lt!137117 () Unit!8660)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13558 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4257) Unit!8660)

(assert (=> b!274652 (= lt!137117 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4254))))

(declare-fun b!274653 () Bool)

(declare-fun res!138682 () Bool)

(assert (=> b!274653 (=> (not res!138682) (not e!175813))))

(assert (=> b!274653 (= res!138682 (and (= (size!6780 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6780 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6780 a!3325))))))

(declare-fun b!274654 () Bool)

(declare-fun res!138683 () Bool)

(assert (=> b!274654 (=> (not res!138683) (not e!175813))))

(declare-fun arrayContainsKey!0 (array!13558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274654 (= res!138683 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!138684 () Bool)

(assert (=> start!26472 (=> (not res!138684) (not e!175813))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26472 (= res!138684 (validMask!0 mask!3868))))

(assert (=> start!26472 e!175813))

(declare-fun array_inv!4382 (array!13558) Bool)

(assert (=> start!26472 (array_inv!4382 a!3325)))

(assert (=> start!26472 true))

(declare-fun b!274655 () Bool)

(assert (=> b!274655 (= e!175813 e!175814)))

(declare-fun res!138680 () Bool)

(assert (=> b!274655 (=> (not res!138680) (not e!175814))))

(declare-fun lt!137120 () SeekEntryResult!1597)

(assert (=> b!274655 (= res!138680 (or (= lt!137120 (MissingZero!1597 i!1267)) (= lt!137120 (MissingVacant!1597 i!1267))))))

(assert (=> b!274655 (= lt!137120 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274656 () Bool)

(declare-fun res!138681 () Bool)

(assert (=> b!274656 (=> (not res!138681) (not e!175813))))

(assert (=> b!274656 (= res!138681 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4254))))

(assert (= (and start!26472 res!138684) b!274653))

(assert (= (and b!274653 res!138682) b!274650))

(assert (= (and b!274650 res!138676) b!274656))

(assert (= (and b!274656 res!138681) b!274654))

(assert (= (and b!274654 res!138683) b!274655))

(assert (= (and b!274655 res!138680) b!274649))

(assert (= (and b!274649 res!138678) b!274648))

(assert (= (and b!274648 res!138679) b!274651))

(assert (= (and b!274651 res!138677) b!274652))

(declare-fun m!290299 () Bool)

(assert (=> b!274655 m!290299))

(declare-fun m!290301 () Bool)

(assert (=> b!274649 m!290301))

(declare-fun m!290303 () Bool)

(assert (=> start!26472 m!290303))

(declare-fun m!290305 () Bool)

(assert (=> start!26472 m!290305))

(declare-fun m!290307 () Bool)

(assert (=> b!274656 m!290307))

(declare-fun m!290309 () Bool)

(assert (=> b!274651 m!290309))

(assert (=> b!274651 m!290309))

(declare-fun m!290311 () Bool)

(assert (=> b!274651 m!290311))

(declare-fun m!290313 () Bool)

(assert (=> b!274650 m!290313))

(declare-fun m!290315 () Bool)

(assert (=> b!274648 m!290315))

(declare-fun m!290317 () Bool)

(assert (=> b!274652 m!290317))

(declare-fun m!290319 () Bool)

(assert (=> b!274652 m!290319))

(declare-fun m!290321 () Bool)

(assert (=> b!274652 m!290321))

(assert (=> b!274652 m!290319))

(declare-fun m!290323 () Bool)

(assert (=> b!274652 m!290323))

(assert (=> b!274652 m!290315))

(declare-fun m!290325 () Bool)

(assert (=> b!274652 m!290325))

(assert (=> b!274652 m!290309))

(declare-fun m!290327 () Bool)

(assert (=> b!274652 m!290327))

(declare-fun m!290329 () Bool)

(assert (=> b!274652 m!290329))

(assert (=> b!274652 m!290309))

(declare-fun m!290331 () Bool)

(assert (=> b!274652 m!290331))

(declare-fun m!290333 () Bool)

(assert (=> b!274654 m!290333))

(check-sat (not b!274654) (not b!274656) (not b!274651) (not b!274649) (not b!274655) (not b!274652) (not start!26472) (not b!274650))
(check-sat)
