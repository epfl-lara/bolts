; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26410 () Bool)

(assert start!26410)

(declare-fun b!273775 () Bool)

(declare-fun res!137805 () Bool)

(declare-fun e!175408 () Bool)

(assert (=> b!273775 (=> (not res!137805) (not e!175408))))

(declare-datatypes ((array!13496 0))(
  ( (array!13497 (arr!6397 (Array (_ BitVec 32) (_ BitVec 64))) (size!6749 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13496)

(declare-datatypes ((List!4226 0))(
  ( (Nil!4223) (Cons!4222 (h!4889 (_ BitVec 64)) (t!9316 List!4226)) )
))
(declare-fun arrayNoDuplicates!0 (array!13496 (_ BitVec 32) List!4226) Bool)

(assert (=> b!273775 (= res!137805 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4223))))

(declare-fun b!273776 () Bool)

(declare-fun e!175405 () Bool)

(assert (=> b!273776 (= e!175408 e!175405)))

(declare-fun res!137811 () Bool)

(assert (=> b!273776 (=> (not res!137811) (not e!175405))))

(declare-datatypes ((SeekEntryResult!1566 0))(
  ( (MissingZero!1566 (index!8434 (_ BitVec 32))) (Found!1566 (index!8435 (_ BitVec 32))) (Intermediate!1566 (undefined!2378 Bool) (index!8436 (_ BitVec 32)) (x!26707 (_ BitVec 32))) (Undefined!1566) (MissingVacant!1566 (index!8437 (_ BitVec 32))) )
))
(declare-fun lt!136616 () SeekEntryResult!1566)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!273776 (= res!137811 (or (= lt!136616 (MissingZero!1566 i!1267)) (= lt!136616 (MissingVacant!1566 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13496 (_ BitVec 32)) SeekEntryResult!1566)

(assert (=> b!273776 (= lt!136616 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!273777 () Bool)

(declare-fun res!137806 () Bool)

(declare-fun e!175407 () Bool)

(assert (=> b!273777 (=> (not res!137806) (not e!175407))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273777 (= res!137806 (validKeyInArray!0 (select (arr!6397 a!3325) startIndex!26)))))

(declare-fun b!273778 () Bool)

(assert (=> b!273778 (= e!175407 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13496 (_ BitVec 32)) Bool)

(assert (=> b!273778 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8598 0))(
  ( (Unit!8599) )
))
(declare-fun lt!136615 () Unit!8598)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13496 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8598)

(assert (=> b!273778 (= lt!136615 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136617 () array!13496)

(assert (=> b!273778 (= (seekEntryOrOpen!0 (select (arr!6397 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6397 a!3325) i!1267 k!2581) startIndex!26) lt!136617 mask!3868))))

(declare-fun lt!136619 () Unit!8598)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13496 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8598)

(assert (=> b!273778 (= lt!136619 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!273778 (arrayNoDuplicates!0 lt!136617 #b00000000000000000000000000000000 Nil!4223)))

(declare-fun lt!136618 () Unit!8598)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13496 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4226) Unit!8598)

(assert (=> b!273778 (= lt!136618 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4223))))

(declare-fun b!273779 () Bool)

(declare-fun res!137807 () Bool)

(assert (=> b!273779 (=> (not res!137807) (not e!175408))))

(assert (=> b!273779 (= res!137807 (and (= (size!6749 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6749 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6749 a!3325))))))

(declare-fun b!273780 () Bool)

(declare-fun res!137808 () Bool)

(assert (=> b!273780 (=> (not res!137808) (not e!175405))))

(assert (=> b!273780 (= res!137808 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!137804 () Bool)

(assert (=> start!26410 (=> (not res!137804) (not e!175408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26410 (= res!137804 (validMask!0 mask!3868))))

(assert (=> start!26410 e!175408))

(declare-fun array_inv!4351 (array!13496) Bool)

(assert (=> start!26410 (array_inv!4351 a!3325)))

(assert (=> start!26410 true))

(declare-fun b!273781 () Bool)

(assert (=> b!273781 (= e!175405 e!175407)))

(declare-fun res!137810 () Bool)

(assert (=> b!273781 (=> (not res!137810) (not e!175407))))

(assert (=> b!273781 (= res!137810 (not (= startIndex!26 i!1267)))))

(assert (=> b!273781 (= lt!136617 (array!13497 (store (arr!6397 a!3325) i!1267 k!2581) (size!6749 a!3325)))))

(declare-fun b!273782 () Bool)

(declare-fun res!137809 () Bool)

(assert (=> b!273782 (=> (not res!137809) (not e!175408))))

(declare-fun arrayContainsKey!0 (array!13496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273782 (= res!137809 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273783 () Bool)

(declare-fun res!137803 () Bool)

(assert (=> b!273783 (=> (not res!137803) (not e!175408))))

(assert (=> b!273783 (= res!137803 (validKeyInArray!0 k!2581))))

(assert (= (and start!26410 res!137804) b!273779))

(assert (= (and b!273779 res!137807) b!273783))

(assert (= (and b!273783 res!137803) b!273775))

(assert (= (and b!273775 res!137805) b!273782))

(assert (= (and b!273782 res!137809) b!273776))

(assert (= (and b!273776 res!137811) b!273780))

(assert (= (and b!273780 res!137808) b!273781))

(assert (= (and b!273781 res!137810) b!273777))

(assert (= (and b!273777 res!137806) b!273778))

(declare-fun m!289135 () Bool)

(assert (=> start!26410 m!289135))

(declare-fun m!289137 () Bool)

(assert (=> start!26410 m!289137))

(declare-fun m!289139 () Bool)

(assert (=> b!273781 m!289139))

(declare-fun m!289141 () Bool)

(assert (=> b!273780 m!289141))

(declare-fun m!289143 () Bool)

(assert (=> b!273776 m!289143))

(declare-fun m!289145 () Bool)

(assert (=> b!273775 m!289145))

(declare-fun m!289147 () Bool)

(assert (=> b!273778 m!289147))

(declare-fun m!289149 () Bool)

(assert (=> b!273778 m!289149))

(assert (=> b!273778 m!289139))

(declare-fun m!289151 () Bool)

(assert (=> b!273778 m!289151))

(declare-fun m!289153 () Bool)

(assert (=> b!273778 m!289153))

(declare-fun m!289155 () Bool)

(assert (=> b!273778 m!289155))

(declare-fun m!289157 () Bool)

(assert (=> b!273778 m!289157))

(assert (=> b!273778 m!289153))

(declare-fun m!289159 () Bool)

(assert (=> b!273778 m!289159))

(declare-fun m!289161 () Bool)

(assert (=> b!273778 m!289161))

(declare-fun m!289163 () Bool)

(assert (=> b!273778 m!289163))

(assert (=> b!273778 m!289161))

(declare-fun m!289165 () Bool)

(assert (=> b!273783 m!289165))

(assert (=> b!273777 m!289153))

(assert (=> b!273777 m!289153))

(declare-fun m!289167 () Bool)

(assert (=> b!273777 m!289167))

(declare-fun m!289169 () Bool)

(assert (=> b!273782 m!289169))

(push 1)

