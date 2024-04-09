; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26412 () Bool)

(assert start!26412)

(declare-fun b!273802 () Bool)

(declare-fun res!137834 () Bool)

(declare-fun e!175418 () Bool)

(assert (=> b!273802 (=> (not res!137834) (not e!175418))))

(declare-datatypes ((array!13498 0))(
  ( (array!13499 (arr!6398 (Array (_ BitVec 32) (_ BitVec 64))) (size!6750 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13498)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!273802 (= res!137834 (validKeyInArray!0 (select (arr!6398 a!3325) startIndex!26)))))

(declare-fun b!273803 () Bool)

(assert (=> b!273803 (= e!175418 (not true))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13498 (_ BitVec 32)) Bool)

(assert (=> b!273803 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8600 0))(
  ( (Unit!8601) )
))
(declare-fun lt!136634 () Unit!8600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13498 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8600)

(assert (=> b!273803 (= lt!136634 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!136633 () array!13498)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1567 0))(
  ( (MissingZero!1567 (index!8438 (_ BitVec 32))) (Found!1567 (index!8439 (_ BitVec 32))) (Intermediate!1567 (undefined!2379 Bool) (index!8440 (_ BitVec 32)) (x!26708 (_ BitVec 32))) (Undefined!1567) (MissingVacant!1567 (index!8441 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13498 (_ BitVec 32)) SeekEntryResult!1567)

(assert (=> b!273803 (= (seekEntryOrOpen!0 (select (arr!6398 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6398 a!3325) i!1267 k0!2581) startIndex!26) lt!136633 mask!3868))))

(declare-fun lt!136632 () Unit!8600)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13498 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8600)

(assert (=> b!273803 (= lt!136632 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4227 0))(
  ( (Nil!4224) (Cons!4223 (h!4890 (_ BitVec 64)) (t!9317 List!4227)) )
))
(declare-fun arrayNoDuplicates!0 (array!13498 (_ BitVec 32) List!4227) Bool)

(assert (=> b!273803 (arrayNoDuplicates!0 lt!136633 #b00000000000000000000000000000000 Nil!4224)))

(declare-fun lt!136630 () Unit!8600)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13498 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4227) Unit!8600)

(assert (=> b!273803 (= lt!136630 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4224))))

(declare-fun res!137836 () Bool)

(declare-fun e!175417 () Bool)

(assert (=> start!26412 (=> (not res!137836) (not e!175417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26412 (= res!137836 (validMask!0 mask!3868))))

(assert (=> start!26412 e!175417))

(declare-fun array_inv!4352 (array!13498) Bool)

(assert (=> start!26412 (array_inv!4352 a!3325)))

(assert (=> start!26412 true))

(declare-fun b!273804 () Bool)

(declare-fun res!137831 () Bool)

(declare-fun e!175420 () Bool)

(assert (=> b!273804 (=> (not res!137831) (not e!175420))))

(assert (=> b!273804 (= res!137831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!273805 () Bool)

(declare-fun res!137832 () Bool)

(assert (=> b!273805 (=> (not res!137832) (not e!175417))))

(assert (=> b!273805 (= res!137832 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4224))))

(declare-fun b!273806 () Bool)

(assert (=> b!273806 (= e!175417 e!175420)))

(declare-fun res!137830 () Bool)

(assert (=> b!273806 (=> (not res!137830) (not e!175420))))

(declare-fun lt!136631 () SeekEntryResult!1567)

(assert (=> b!273806 (= res!137830 (or (= lt!136631 (MissingZero!1567 i!1267)) (= lt!136631 (MissingVacant!1567 i!1267))))))

(assert (=> b!273806 (= lt!136631 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!273807 () Bool)

(declare-fun res!137833 () Bool)

(assert (=> b!273807 (=> (not res!137833) (not e!175417))))

(declare-fun arrayContainsKey!0 (array!13498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!273807 (= res!137833 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!273808 () Bool)

(declare-fun res!137835 () Bool)

(assert (=> b!273808 (=> (not res!137835) (not e!175417))))

(assert (=> b!273808 (= res!137835 (validKeyInArray!0 k0!2581))))

(declare-fun b!273809 () Bool)

(declare-fun res!137838 () Bool)

(assert (=> b!273809 (=> (not res!137838) (not e!175417))))

(assert (=> b!273809 (= res!137838 (and (= (size!6750 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6750 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6750 a!3325))))))

(declare-fun b!273810 () Bool)

(assert (=> b!273810 (= e!175420 e!175418)))

(declare-fun res!137837 () Bool)

(assert (=> b!273810 (=> (not res!137837) (not e!175418))))

(assert (=> b!273810 (= res!137837 (not (= startIndex!26 i!1267)))))

(assert (=> b!273810 (= lt!136633 (array!13499 (store (arr!6398 a!3325) i!1267 k0!2581) (size!6750 a!3325)))))

(assert (= (and start!26412 res!137836) b!273809))

(assert (= (and b!273809 res!137838) b!273808))

(assert (= (and b!273808 res!137835) b!273805))

(assert (= (and b!273805 res!137832) b!273807))

(assert (= (and b!273807 res!137833) b!273806))

(assert (= (and b!273806 res!137830) b!273804))

(assert (= (and b!273804 res!137831) b!273810))

(assert (= (and b!273810 res!137837) b!273802))

(assert (= (and b!273802 res!137834) b!273803))

(declare-fun m!289171 () Bool)

(assert (=> b!273808 m!289171))

(declare-fun m!289173 () Bool)

(assert (=> b!273803 m!289173))

(declare-fun m!289175 () Bool)

(assert (=> b!273803 m!289175))

(declare-fun m!289177 () Bool)

(assert (=> b!273803 m!289177))

(declare-fun m!289179 () Bool)

(assert (=> b!273803 m!289179))

(assert (=> b!273803 m!289177))

(declare-fun m!289181 () Bool)

(assert (=> b!273803 m!289181))

(declare-fun m!289183 () Bool)

(assert (=> b!273803 m!289183))

(declare-fun m!289185 () Bool)

(assert (=> b!273803 m!289185))

(declare-fun m!289187 () Bool)

(assert (=> b!273803 m!289187))

(declare-fun m!289189 () Bool)

(assert (=> b!273803 m!289189))

(assert (=> b!273803 m!289185))

(declare-fun m!289191 () Bool)

(assert (=> b!273803 m!289191))

(declare-fun m!289193 () Bool)

(assert (=> b!273804 m!289193))

(declare-fun m!289195 () Bool)

(assert (=> start!26412 m!289195))

(declare-fun m!289197 () Bool)

(assert (=> start!26412 m!289197))

(assert (=> b!273810 m!289181))

(assert (=> b!273802 m!289185))

(assert (=> b!273802 m!289185))

(declare-fun m!289199 () Bool)

(assert (=> b!273802 m!289199))

(declare-fun m!289201 () Bool)

(assert (=> b!273807 m!289201))

(declare-fun m!289203 () Bool)

(assert (=> b!273806 m!289203))

(declare-fun m!289205 () Bool)

(assert (=> b!273805 m!289205))

(check-sat (not b!273808) (not start!26412) (not b!273807) (not b!273802) (not b!273803) (not b!273805) (not b!273804) (not b!273806))
(check-sat)
