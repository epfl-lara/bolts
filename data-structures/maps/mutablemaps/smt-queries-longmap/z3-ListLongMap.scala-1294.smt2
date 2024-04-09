; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26334 () Bool)

(assert start!26334)

(declare-fun b!272749 () Bool)

(declare-fun res!136785 () Bool)

(declare-fun e!174955 () Bool)

(assert (=> b!272749 (=> (not res!136785) (not e!174955))))

(declare-datatypes ((array!13420 0))(
  ( (array!13421 (arr!6359 (Array (_ BitVec 32) (_ BitVec 64))) (size!6711 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13420)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13420 (_ BitVec 32)) Bool)

(assert (=> b!272749 (= res!136785 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272750 () Bool)

(declare-fun res!136780 () Bool)

(declare-fun e!174954 () Bool)

(assert (=> b!272750 (=> (not res!136780) (not e!174954))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272750 (= res!136780 (and (= (size!6711 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6711 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6711 a!3325))))))

(declare-fun b!272751 () Bool)

(assert (=> b!272751 (= e!174955 (not true))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-datatypes ((List!4188 0))(
  ( (Nil!4185) (Cons!4184 (h!4851 (_ BitVec 64)) (t!9278 List!4188)) )
))
(declare-fun arrayNoDuplicates!0 (array!13420 (_ BitVec 32) List!4188) Bool)

(assert (=> b!272751 (arrayNoDuplicates!0 (array!13421 (store (arr!6359 a!3325) i!1267 k0!2581) (size!6711 a!3325)) #b00000000000000000000000000000000 Nil!4185)))

(declare-datatypes ((Unit!8522 0))(
  ( (Unit!8523) )
))
(declare-fun lt!136102 () Unit!8522)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13420 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4188) Unit!8522)

(assert (=> b!272751 (= lt!136102 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4185))))

(declare-fun b!272752 () Bool)

(declare-fun res!136784 () Bool)

(assert (=> b!272752 (=> (not res!136784) (not e!174954))))

(declare-fun arrayContainsKey!0 (array!13420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272752 (= res!136784 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272753 () Bool)

(declare-fun res!136778 () Bool)

(assert (=> b!272753 (=> (not res!136778) (not e!174955))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272753 (= res!136778 (validKeyInArray!0 (select (arr!6359 a!3325) startIndex!26)))))

(declare-fun res!136779 () Bool)

(assert (=> start!26334 (=> (not res!136779) (not e!174954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26334 (= res!136779 (validMask!0 mask!3868))))

(assert (=> start!26334 e!174954))

(declare-fun array_inv!4313 (array!13420) Bool)

(assert (=> start!26334 (array_inv!4313 a!3325)))

(assert (=> start!26334 true))

(declare-fun b!272754 () Bool)

(declare-fun res!136782 () Bool)

(assert (=> b!272754 (=> (not res!136782) (not e!174954))))

(assert (=> b!272754 (= res!136782 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4185))))

(declare-fun b!272755 () Bool)

(declare-fun res!136781 () Bool)

(assert (=> b!272755 (=> (not res!136781) (not e!174955))))

(assert (=> b!272755 (= res!136781 (not (= startIndex!26 i!1267)))))

(declare-fun b!272756 () Bool)

(assert (=> b!272756 (= e!174954 e!174955)))

(declare-fun res!136777 () Bool)

(assert (=> b!272756 (=> (not res!136777) (not e!174955))))

(declare-datatypes ((SeekEntryResult!1528 0))(
  ( (MissingZero!1528 (index!8282 (_ BitVec 32))) (Found!1528 (index!8283 (_ BitVec 32))) (Intermediate!1528 (undefined!2340 Bool) (index!8284 (_ BitVec 32)) (x!26565 (_ BitVec 32))) (Undefined!1528) (MissingVacant!1528 (index!8285 (_ BitVec 32))) )
))
(declare-fun lt!136103 () SeekEntryResult!1528)

(assert (=> b!272756 (= res!136777 (or (= lt!136103 (MissingZero!1528 i!1267)) (= lt!136103 (MissingVacant!1528 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13420 (_ BitVec 32)) SeekEntryResult!1528)

(assert (=> b!272756 (= lt!136103 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!272757 () Bool)

(declare-fun res!136783 () Bool)

(assert (=> b!272757 (=> (not res!136783) (not e!174954))))

(assert (=> b!272757 (= res!136783 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26334 res!136779) b!272750))

(assert (= (and b!272750 res!136780) b!272757))

(assert (= (and b!272757 res!136783) b!272754))

(assert (= (and b!272754 res!136782) b!272752))

(assert (= (and b!272752 res!136784) b!272756))

(assert (= (and b!272756 res!136777) b!272749))

(assert (= (and b!272749 res!136785) b!272755))

(assert (= (and b!272755 res!136781) b!272753))

(assert (= (and b!272753 res!136778) b!272751))

(declare-fun m!287851 () Bool)

(assert (=> b!272751 m!287851))

(declare-fun m!287853 () Bool)

(assert (=> b!272751 m!287853))

(declare-fun m!287855 () Bool)

(assert (=> b!272751 m!287855))

(declare-fun m!287857 () Bool)

(assert (=> b!272753 m!287857))

(assert (=> b!272753 m!287857))

(declare-fun m!287859 () Bool)

(assert (=> b!272753 m!287859))

(declare-fun m!287861 () Bool)

(assert (=> b!272749 m!287861))

(declare-fun m!287863 () Bool)

(assert (=> b!272756 m!287863))

(declare-fun m!287865 () Bool)

(assert (=> start!26334 m!287865))

(declare-fun m!287867 () Bool)

(assert (=> start!26334 m!287867))

(declare-fun m!287869 () Bool)

(assert (=> b!272752 m!287869))

(declare-fun m!287871 () Bool)

(assert (=> b!272754 m!287871))

(declare-fun m!287873 () Bool)

(assert (=> b!272757 m!287873))

(check-sat (not b!272752) (not b!272756) (not b!272749) (not b!272757) (not b!272751) (not start!26334) (not b!272754) (not b!272753))
(check-sat)
