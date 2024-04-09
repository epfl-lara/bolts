; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26388 () Bool)

(assert start!26388)

(declare-fun res!137510 () Bool)

(declare-fun e!175276 () Bool)

(assert (=> start!26388 (=> (not res!137510) (not e!175276))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26388 (= res!137510 (validMask!0 mask!3868))))

(assert (=> start!26388 e!175276))

(declare-datatypes ((array!13474 0))(
  ( (array!13475 (arr!6386 (Array (_ BitVec 32) (_ BitVec 64))) (size!6738 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13474)

(declare-fun array_inv!4340 (array!13474) Bool)

(assert (=> start!26388 (array_inv!4340 a!3325)))

(assert (=> start!26388 true))

(declare-fun b!273478 () Bool)

(declare-fun res!137514 () Bool)

(declare-fun e!175273 () Bool)

(assert (=> b!273478 (=> (not res!137514) (not e!175273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13474 (_ BitVec 32)) Bool)

(assert (=> b!273478 (= res!137514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273479 () Bool)

(declare-fun e!175275 () Bool)

(assert (=> b!273479 (= e!175275 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!273479 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8576 0))(
  ( (Unit!8577) )
))
(declare-fun lt!136454 () Unit!8576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8576)

(assert (=> b!273479 (= lt!136454 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!136450 () array!13474)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1555 0))(
  ( (MissingZero!1555 (index!8390 (_ BitVec 32))) (Found!1555 (index!8391 (_ BitVec 32))) (Intermediate!1555 (undefined!2367 Bool) (index!8392 (_ BitVec 32)) (x!26664 (_ BitVec 32))) (Undefined!1555) (MissingVacant!1555 (index!8393 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13474 (_ BitVec 32)) SeekEntryResult!1555)

(assert (=> b!273479 (= (seekEntryOrOpen!0 (select (arr!6386 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6386 a!3325) i!1267 k0!2581) startIndex!26) lt!136450 mask!3868))))

(declare-fun lt!136453 () Unit!8576)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13474 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8576)

(assert (=> b!273479 (= lt!136453 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4215 0))(
  ( (Nil!4212) (Cons!4211 (h!4878 (_ BitVec 64)) (t!9305 List!4215)) )
))
(declare-fun arrayNoDuplicates!0 (array!13474 (_ BitVec 32) List!4215) Bool)

(assert (=> b!273479 (arrayNoDuplicates!0 lt!136450 #b00000000000000000000000000000000 Nil!4212)))

(declare-fun lt!136451 () Unit!8576)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13474 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4215) Unit!8576)

(assert (=> b!273479 (= lt!136451 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4212))))

(declare-fun b!273480 () Bool)

(declare-fun res!137513 () Bool)

(assert (=> b!273480 (=> (not res!137513) (not e!175276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273480 (= res!137513 (validKeyInArray!0 k0!2581))))

(declare-fun b!273481 () Bool)

(declare-fun res!137508 () Bool)

(assert (=> b!273481 (=> (not res!137508) (not e!175276))))

(assert (=> b!273481 (= res!137508 (and (= (size!6738 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6738 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6738 a!3325))))))

(declare-fun b!273482 () Bool)

(assert (=> b!273482 (= e!175273 e!175275)))

(declare-fun res!137506 () Bool)

(assert (=> b!273482 (=> (not res!137506) (not e!175275))))

(assert (=> b!273482 (= res!137506 (not (= startIndex!26 i!1267)))))

(assert (=> b!273482 (= lt!136450 (array!13475 (store (arr!6386 a!3325) i!1267 k0!2581) (size!6738 a!3325)))))

(declare-fun b!273483 () Bool)

(assert (=> b!273483 (= e!175276 e!175273)))

(declare-fun res!137512 () Bool)

(assert (=> b!273483 (=> (not res!137512) (not e!175273))))

(declare-fun lt!136452 () SeekEntryResult!1555)

(assert (=> b!273483 (= res!137512 (or (= lt!136452 (MissingZero!1555 i!1267)) (= lt!136452 (MissingVacant!1555 i!1267))))))

(assert (=> b!273483 (= lt!136452 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273484 () Bool)

(declare-fun res!137511 () Bool)

(assert (=> b!273484 (=> (not res!137511) (not e!175275))))

(assert (=> b!273484 (= res!137511 (validKeyInArray!0 (select (arr!6386 a!3325) startIndex!26)))))

(declare-fun b!273485 () Bool)

(declare-fun res!137507 () Bool)

(assert (=> b!273485 (=> (not res!137507) (not e!175276))))

(assert (=> b!273485 (= res!137507 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4212))))

(declare-fun b!273486 () Bool)

(declare-fun res!137509 () Bool)

(assert (=> b!273486 (=> (not res!137509) (not e!175276))))

(declare-fun arrayContainsKey!0 (array!13474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273486 (= res!137509 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26388 res!137510) b!273481))

(assert (= (and b!273481 res!137508) b!273480))

(assert (= (and b!273480 res!137513) b!273485))

(assert (= (and b!273485 res!137507) b!273486))

(assert (= (and b!273486 res!137509) b!273483))

(assert (= (and b!273483 res!137512) b!273478))

(assert (= (and b!273478 res!137514) b!273482))

(assert (= (and b!273482 res!137506) b!273484))

(assert (= (and b!273484 res!137511) b!273479))

(declare-fun m!288739 () Bool)

(assert (=> b!273485 m!288739))

(declare-fun m!288741 () Bool)

(assert (=> b!273482 m!288741))

(declare-fun m!288743 () Bool)

(assert (=> start!26388 m!288743))

(declare-fun m!288745 () Bool)

(assert (=> start!26388 m!288745))

(declare-fun m!288747 () Bool)

(assert (=> b!273478 m!288747))

(declare-fun m!288749 () Bool)

(assert (=> b!273479 m!288749))

(declare-fun m!288751 () Bool)

(assert (=> b!273479 m!288751))

(assert (=> b!273479 m!288751))

(declare-fun m!288753 () Bool)

(assert (=> b!273479 m!288753))

(assert (=> b!273479 m!288741))

(declare-fun m!288755 () Bool)

(assert (=> b!273479 m!288755))

(declare-fun m!288757 () Bool)

(assert (=> b!273479 m!288757))

(declare-fun m!288759 () Bool)

(assert (=> b!273479 m!288759))

(declare-fun m!288761 () Bool)

(assert (=> b!273479 m!288761))

(declare-fun m!288763 () Bool)

(assert (=> b!273479 m!288763))

(assert (=> b!273479 m!288759))

(declare-fun m!288765 () Bool)

(assert (=> b!273479 m!288765))

(declare-fun m!288767 () Bool)

(assert (=> b!273483 m!288767))

(assert (=> b!273484 m!288759))

(assert (=> b!273484 m!288759))

(declare-fun m!288769 () Bool)

(assert (=> b!273484 m!288769))

(declare-fun m!288771 () Bool)

(assert (=> b!273486 m!288771))

(declare-fun m!288773 () Bool)

(assert (=> b!273480 m!288773))

(check-sat (not b!273480) (not b!273486) (not start!26388) (not b!273485) (not b!273479) (not b!273484) (not b!273478) (not b!273483))
(check-sat)
