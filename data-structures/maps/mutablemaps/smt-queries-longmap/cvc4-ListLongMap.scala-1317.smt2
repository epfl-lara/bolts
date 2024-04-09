; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26474 () Bool)

(assert start!26474)

(declare-fun b!274675 () Bool)

(declare-fun res!138709 () Bool)

(declare-fun e!175827 () Bool)

(assert (=> b!274675 (=> (not res!138709) (not e!175827))))

(declare-datatypes ((array!13560 0))(
  ( (array!13561 (arr!6429 (Array (_ BitVec 32) (_ BitVec 64))) (size!6781 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13560)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274675 (= res!138709 (validKeyInArray!0 (select (arr!6429 a!3325) startIndex!26)))))

(declare-fun b!274676 () Bool)

(declare-fun e!175826 () Bool)

(assert (=> b!274676 (= e!175826 e!175827)))

(declare-fun res!138706 () Bool)

(assert (=> b!274676 (=> (not res!138706) (not e!175827))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!274676 (= res!138706 (not (= startIndex!26 i!1267)))))

(declare-fun lt!137131 () array!13560)

(declare-fun k!2581 () (_ BitVec 64))

(assert (=> b!274676 (= lt!137131 (array!13561 (store (arr!6429 a!3325) i!1267 k!2581) (size!6781 a!3325)))))

(declare-fun b!274677 () Bool)

(declare-fun res!138707 () Bool)

(declare-fun e!175828 () Bool)

(assert (=> b!274677 (=> (not res!138707) (not e!175828))))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!274677 (= res!138707 (and (= (size!6781 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6781 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6781 a!3325))))))

(declare-fun b!274678 () Bool)

(declare-fun res!138705 () Bool)

(assert (=> b!274678 (=> (not res!138705) (not e!175828))))

(declare-datatypes ((List!4258 0))(
  ( (Nil!4255) (Cons!4254 (h!4921 (_ BitVec 64)) (t!9348 List!4258)) )
))
(declare-fun arrayNoDuplicates!0 (array!13560 (_ BitVec 32) List!4258) Bool)

(assert (=> b!274678 (= res!138705 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4255))))

(declare-fun b!274679 () Bool)

(declare-fun res!138711 () Bool)

(assert (=> b!274679 (=> (not res!138711) (not e!175826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13560 (_ BitVec 32)) Bool)

(assert (=> b!274679 (= res!138711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274680 () Bool)

(declare-fun res!138703 () Bool)

(assert (=> b!274680 (=> (not res!138703) (not e!175828))))

(declare-fun arrayContainsKey!0 (array!13560 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274680 (= res!138703 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274681 () Bool)

(assert (=> b!274681 (= e!175828 e!175826)))

(declare-fun res!138708 () Bool)

(assert (=> b!274681 (=> (not res!138708) (not e!175826))))

(declare-datatypes ((SeekEntryResult!1598 0))(
  ( (MissingZero!1598 (index!8562 (_ BitVec 32))) (Found!1598 (index!8563 (_ BitVec 32))) (Intermediate!1598 (undefined!2410 Bool) (index!8564 (_ BitVec 32)) (x!26819 (_ BitVec 32))) (Undefined!1598) (MissingVacant!1598 (index!8565 (_ BitVec 32))) )
))
(declare-fun lt!137135 () SeekEntryResult!1598)

(assert (=> b!274681 (= res!138708 (or (= lt!137135 (MissingZero!1598 i!1267)) (= lt!137135 (MissingVacant!1598 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13560 (_ BitVec 32)) SeekEntryResult!1598)

(assert (=> b!274681 (= lt!137135 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!138710 () Bool)

(assert (=> start!26474 (=> (not res!138710) (not e!175828))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26474 (= res!138710 (validMask!0 mask!3868))))

(assert (=> start!26474 e!175828))

(declare-fun array_inv!4383 (array!13560) Bool)

(assert (=> start!26474 (array_inv!4383 a!3325)))

(assert (=> start!26474 true))

(declare-fun b!274682 () Bool)

(assert (=> b!274682 (= e!175827 (not true))))

(assert (=> b!274682 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8662 0))(
  ( (Unit!8663) )
))
(declare-fun lt!137134 () Unit!8662)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13560 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8662)

(assert (=> b!274682 (= lt!137134 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!274682 (= (seekEntryOrOpen!0 (select (arr!6429 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6429 a!3325) i!1267 k!2581) startIndex!26) lt!137131 mask!3868))))

(declare-fun lt!137132 () Unit!8662)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13560 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8662)

(assert (=> b!274682 (= lt!137132 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!274682 (arrayNoDuplicates!0 lt!137131 #b00000000000000000000000000000000 Nil!4255)))

(declare-fun lt!137133 () Unit!8662)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13560 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4258) Unit!8662)

(assert (=> b!274682 (= lt!137133 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4255))))

(declare-fun b!274683 () Bool)

(declare-fun res!138704 () Bool)

(assert (=> b!274683 (=> (not res!138704) (not e!175828))))

(assert (=> b!274683 (= res!138704 (validKeyInArray!0 k!2581))))

(assert (= (and start!26474 res!138710) b!274677))

(assert (= (and b!274677 res!138707) b!274683))

(assert (= (and b!274683 res!138704) b!274678))

(assert (= (and b!274678 res!138705) b!274680))

(assert (= (and b!274680 res!138703) b!274681))

(assert (= (and b!274681 res!138708) b!274679))

(assert (= (and b!274679 res!138711) b!274676))

(assert (= (and b!274676 res!138706) b!274675))

(assert (= (and b!274675 res!138709) b!274682))

(declare-fun m!290335 () Bool)

(assert (=> start!26474 m!290335))

(declare-fun m!290337 () Bool)

(assert (=> start!26474 m!290337))

(declare-fun m!290339 () Bool)

(assert (=> b!274678 m!290339))

(declare-fun m!290341 () Bool)

(assert (=> b!274680 m!290341))

(declare-fun m!290343 () Bool)

(assert (=> b!274681 m!290343))

(declare-fun m!290345 () Bool)

(assert (=> b!274675 m!290345))

(assert (=> b!274675 m!290345))

(declare-fun m!290347 () Bool)

(assert (=> b!274675 m!290347))

(declare-fun m!290349 () Bool)

(assert (=> b!274682 m!290349))

(declare-fun m!290351 () Bool)

(assert (=> b!274682 m!290351))

(declare-fun m!290353 () Bool)

(assert (=> b!274682 m!290353))

(declare-fun m!290355 () Bool)

(assert (=> b!274682 m!290355))

(assert (=> b!274682 m!290345))

(declare-fun m!290357 () Bool)

(assert (=> b!274682 m!290357))

(declare-fun m!290359 () Bool)

(assert (=> b!274682 m!290359))

(assert (=> b!274682 m!290345))

(declare-fun m!290361 () Bool)

(assert (=> b!274682 m!290361))

(declare-fun m!290363 () Bool)

(assert (=> b!274682 m!290363))

(assert (=> b!274682 m!290351))

(declare-fun m!290365 () Bool)

(assert (=> b!274682 m!290365))

(declare-fun m!290367 () Bool)

(assert (=> b!274683 m!290367))

(declare-fun m!290369 () Bool)

(assert (=> b!274679 m!290369))

(assert (=> b!274676 m!290363))

(push 1)

