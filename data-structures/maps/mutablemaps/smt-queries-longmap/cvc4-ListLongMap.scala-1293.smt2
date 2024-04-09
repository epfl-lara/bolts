; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26330 () Bool)

(assert start!26330)

(declare-fun b!272695 () Bool)

(declare-fun e!174937 () Bool)

(assert (=> b!272695 (= e!174937 (not true))))

(declare-datatypes ((array!13416 0))(
  ( (array!13417 (arr!6357 (Array (_ BitVec 32) (_ BitVec 64))) (size!6709 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13416)

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun k!2581 () (_ BitVec 64))

(declare-datatypes ((List!4186 0))(
  ( (Nil!4183) (Cons!4182 (h!4849 (_ BitVec 64)) (t!9276 List!4186)) )
))
(declare-fun arrayNoDuplicates!0 (array!13416 (_ BitVec 32) List!4186) Bool)

(assert (=> b!272695 (arrayNoDuplicates!0 (array!13417 (store (arr!6357 a!3325) i!1267 k!2581) (size!6709 a!3325)) #b00000000000000000000000000000000 Nil!4183)))

(declare-datatypes ((Unit!8518 0))(
  ( (Unit!8519) )
))
(declare-fun lt!136091 () Unit!8518)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13416 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4186) Unit!8518)

(assert (=> b!272695 (= lt!136091 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4183))))

(declare-fun b!272696 () Bool)

(declare-fun res!136729 () Bool)

(declare-fun e!174936 () Bool)

(assert (=> b!272696 (=> (not res!136729) (not e!174936))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!272696 (= res!136729 (validKeyInArray!0 k!2581))))

(declare-fun b!272698 () Bool)

(declare-fun res!136725 () Bool)

(assert (=> b!272698 (=> (not res!136725) (not e!174937))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13416 (_ BitVec 32)) Bool)

(assert (=> b!272698 (= res!136725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!272699 () Bool)

(declare-fun res!136723 () Bool)

(assert (=> b!272699 (=> (not res!136723) (not e!174936))))

(assert (=> b!272699 (= res!136723 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4183))))

(declare-fun b!272700 () Bool)

(declare-fun res!136727 () Bool)

(assert (=> b!272700 (=> (not res!136727) (not e!174936))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!272700 (= res!136727 (and (= (size!6709 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6709 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6709 a!3325))))))

(declare-fun b!272701 () Bool)

(declare-fun res!136731 () Bool)

(assert (=> b!272701 (=> (not res!136731) (not e!174937))))

(assert (=> b!272701 (= res!136731 (validKeyInArray!0 (select (arr!6357 a!3325) startIndex!26)))))

(declare-fun b!272697 () Bool)

(declare-fun res!136724 () Bool)

(assert (=> b!272697 (=> (not res!136724) (not e!174936))))

(declare-fun arrayContainsKey!0 (array!13416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!272697 (= res!136724 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!136730 () Bool)

(assert (=> start!26330 (=> (not res!136730) (not e!174936))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26330 (= res!136730 (validMask!0 mask!3868))))

(assert (=> start!26330 e!174936))

(declare-fun array_inv!4311 (array!13416) Bool)

(assert (=> start!26330 (array_inv!4311 a!3325)))

(assert (=> start!26330 true))

(declare-fun b!272702 () Bool)

(declare-fun res!136726 () Bool)

(assert (=> b!272702 (=> (not res!136726) (not e!174937))))

(assert (=> b!272702 (= res!136726 (not (= startIndex!26 i!1267)))))

(declare-fun b!272703 () Bool)

(assert (=> b!272703 (= e!174936 e!174937)))

(declare-fun res!136728 () Bool)

(assert (=> b!272703 (=> (not res!136728) (not e!174937))))

(declare-datatypes ((SeekEntryResult!1526 0))(
  ( (MissingZero!1526 (index!8274 (_ BitVec 32))) (Found!1526 (index!8275 (_ BitVec 32))) (Intermediate!1526 (undefined!2338 Bool) (index!8276 (_ BitVec 32)) (x!26555 (_ BitVec 32))) (Undefined!1526) (MissingVacant!1526 (index!8277 (_ BitVec 32))) )
))
(declare-fun lt!136090 () SeekEntryResult!1526)

(assert (=> b!272703 (= res!136728 (or (= lt!136090 (MissingZero!1526 i!1267)) (= lt!136090 (MissingVacant!1526 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13416 (_ BitVec 32)) SeekEntryResult!1526)

(assert (=> b!272703 (= lt!136090 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(assert (= (and start!26330 res!136730) b!272700))

(assert (= (and b!272700 res!136727) b!272696))

(assert (= (and b!272696 res!136729) b!272699))

(assert (= (and b!272699 res!136723) b!272697))

(assert (= (and b!272697 res!136724) b!272703))

(assert (= (and b!272703 res!136728) b!272698))

(assert (= (and b!272698 res!136725) b!272702))

(assert (= (and b!272702 res!136726) b!272701))

(assert (= (and b!272701 res!136731) b!272695))

(declare-fun m!287803 () Bool)

(assert (=> start!26330 m!287803))

(declare-fun m!287805 () Bool)

(assert (=> start!26330 m!287805))

(declare-fun m!287807 () Bool)

(assert (=> b!272701 m!287807))

(assert (=> b!272701 m!287807))

(declare-fun m!287809 () Bool)

(assert (=> b!272701 m!287809))

(declare-fun m!287811 () Bool)

(assert (=> b!272696 m!287811))

(declare-fun m!287813 () Bool)

(assert (=> b!272703 m!287813))

(declare-fun m!287815 () Bool)

(assert (=> b!272695 m!287815))

(declare-fun m!287817 () Bool)

(assert (=> b!272695 m!287817))

(declare-fun m!287819 () Bool)

(assert (=> b!272695 m!287819))

(declare-fun m!287821 () Bool)

(assert (=> b!272698 m!287821))

(declare-fun m!287823 () Bool)

(assert (=> b!272697 m!287823))

(declare-fun m!287825 () Bool)

(assert (=> b!272699 m!287825))

(push 1)

