; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26332 () Bool)

(assert start!26332)

(declare-fun b!272722 () Bool)

(declare-fun res!136752 () Bool)

(declare-fun e!174945 () Bool)

(assert (=> b!272722 (=> (not res!136752) (not e!174945))))

(declare-datatypes ((array!13418 0))(
  ( (array!13419 (arr!6358 (Array (_ BitVec 32) (_ BitVec 64))) (size!6710 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13418)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!272722 (= res!136752 (and (= (size!6710 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6710 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6710 a!3325))))))

(declare-fun b!272723 () Bool)

(declare-fun e!174946 () Bool)

(assert (=> b!272723 (= e!174945 e!174946)))

(declare-fun res!136756 () Bool)

(assert (=> b!272723 (=> (not res!136756) (not e!174946))))

(declare-datatypes ((SeekEntryResult!1527 0))(
  ( (MissingZero!1527 (index!8278 (_ BitVec 32))) (Found!1527 (index!8279 (_ BitVec 32))) (Intermediate!1527 (undefined!2339 Bool) (index!8280 (_ BitVec 32)) (x!26564 (_ BitVec 32))) (Undefined!1527) (MissingVacant!1527 (index!8281 (_ BitVec 32))) )
))
(declare-fun lt!136097 () SeekEntryResult!1527)

(assert (=> b!272723 (= res!136756 (or (= lt!136097 (MissingZero!1527 i!1267)) (= lt!136097 (MissingVacant!1527 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13418 (_ BitVec 32)) SeekEntryResult!1527)

(assert (=> b!272723 (= lt!136097 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!272724 () Bool)

(declare-fun res!136755 () Bool)

(assert (=> b!272724 (=> (not res!136755) (not e!174945))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272724 (= res!136755 (validKeyInArray!0 k!2581))))

(declare-fun b!272725 () Bool)

(declare-fun res!136753 () Bool)

(assert (=> b!272725 (=> (not res!136753) (not e!174945))))

(declare-fun arrayContainsKey!0 (array!13418 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272725 (= res!136753 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!272726 () Bool)

(declare-fun res!136754 () Bool)

(assert (=> b!272726 (=> (not res!136754) (not e!174946))))

(assert (=> b!272726 (= res!136754 (validKeyInArray!0 (select (arr!6358 a!3325) startIndex!26)))))

(declare-fun b!272728 () Bool)

(declare-fun res!136750 () Bool)

(assert (=> b!272728 (=> (not res!136750) (not e!174945))))

(declare-datatypes ((List!4187 0))(
  ( (Nil!4184) (Cons!4183 (h!4850 (_ BitVec 64)) (t!9277 List!4187)) )
))
(declare-fun arrayNoDuplicates!0 (array!13418 (_ BitVec 32) List!4187) Bool)

(assert (=> b!272728 (= res!136750 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4184))))

(declare-fun b!272729 () Bool)

(declare-fun res!136758 () Bool)

(assert (=> b!272729 (=> (not res!136758) (not e!174946))))

(assert (=> b!272729 (= res!136758 (not (= startIndex!26 i!1267)))))

(declare-fun b!272730 () Bool)

(declare-fun res!136757 () Bool)

(assert (=> b!272730 (=> (not res!136757) (not e!174946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13418 (_ BitVec 32)) Bool)

(assert (=> b!272730 (= res!136757 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272727 () Bool)

(assert (=> b!272727 (= e!174946 (not true))))

(assert (=> b!272727 (arrayNoDuplicates!0 (array!13419 (store (arr!6358 a!3325) i!1267 k!2581) (size!6710 a!3325)) #b00000000000000000000000000000000 Nil!4184)))

(declare-datatypes ((Unit!8520 0))(
  ( (Unit!8521) )
))
(declare-fun lt!136096 () Unit!8520)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13418 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4187) Unit!8520)

(assert (=> b!272727 (= lt!136096 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4184))))

(declare-fun res!136751 () Bool)

(assert (=> start!26332 (=> (not res!136751) (not e!174945))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26332 (= res!136751 (validMask!0 mask!3868))))

(assert (=> start!26332 e!174945))

(declare-fun array_inv!4312 (array!13418) Bool)

(assert (=> start!26332 (array_inv!4312 a!3325)))

(assert (=> start!26332 true))

(assert (= (and start!26332 res!136751) b!272722))

(assert (= (and b!272722 res!136752) b!272724))

(assert (= (and b!272724 res!136755) b!272728))

(assert (= (and b!272728 res!136750) b!272725))

(assert (= (and b!272725 res!136753) b!272723))

(assert (= (and b!272723 res!136756) b!272730))

(assert (= (and b!272730 res!136757) b!272729))

(assert (= (and b!272729 res!136758) b!272726))

(assert (= (and b!272726 res!136754) b!272727))

(declare-fun m!287827 () Bool)

(assert (=> b!272723 m!287827))

(declare-fun m!287829 () Bool)

(assert (=> b!272728 m!287829))

(declare-fun m!287831 () Bool)

(assert (=> b!272725 m!287831))

(declare-fun m!287833 () Bool)

(assert (=> b!272730 m!287833))

(declare-fun m!287835 () Bool)

(assert (=> b!272724 m!287835))

(declare-fun m!287837 () Bool)

(assert (=> b!272726 m!287837))

(assert (=> b!272726 m!287837))

(declare-fun m!287839 () Bool)

(assert (=> b!272726 m!287839))

(declare-fun m!287841 () Bool)

(assert (=> b!272727 m!287841))

(declare-fun m!287843 () Bool)

(assert (=> b!272727 m!287843))

(declare-fun m!287845 () Bool)

(assert (=> b!272727 m!287845))

(declare-fun m!287847 () Bool)

(assert (=> start!26332 m!287847))

(declare-fun m!287849 () Bool)

(assert (=> start!26332 m!287849))

(push 1)

