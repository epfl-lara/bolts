; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26512 () Bool)

(assert start!26512)

(declare-fun b!275074 () Bool)

(declare-fun e!176017 () Bool)

(declare-fun e!176015 () Bool)

(assert (=> b!275074 (= e!176017 e!176015)))

(declare-fun res!139102 () Bool)

(assert (=> b!275074 (=> (not res!139102) (not e!176015))))

(declare-datatypes ((SeekEntryResult!1617 0))(
  ( (MissingZero!1617 (index!8638 (_ BitVec 32))) (Found!1617 (index!8639 (_ BitVec 32))) (Intermediate!1617 (undefined!2429 Bool) (index!8640 (_ BitVec 32)) (x!26894 (_ BitVec 32))) (Undefined!1617) (MissingVacant!1617 (index!8641 (_ BitVec 32))) )
))
(declare-fun lt!137302 () SeekEntryResult!1617)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275074 (= res!139102 (or (= lt!137302 (MissingZero!1617 i!1267)) (= lt!137302 (MissingVacant!1617 i!1267))))))

(declare-datatypes ((array!13598 0))(
  ( (array!13599 (arr!6448 (Array (_ BitVec 32) (_ BitVec 64))) (size!6800 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13598)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13598 (_ BitVec 32)) SeekEntryResult!1617)

(assert (=> b!275074 (= lt!137302 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275075 () Bool)

(declare-fun res!139103 () Bool)

(assert (=> b!275075 (=> (not res!139103) (not e!176017))))

(declare-fun arrayContainsKey!0 (array!13598 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275075 (= res!139103 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun res!139105 () Bool)

(assert (=> start!26512 (=> (not res!139105) (not e!176017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26512 (= res!139105 (validMask!0 mask!3868))))

(assert (=> start!26512 e!176017))

(declare-fun array_inv!4402 (array!13598) Bool)

(assert (=> start!26512 (array_inv!4402 a!3325)))

(assert (=> start!26512 true))

(declare-fun b!275076 () Bool)

(assert (=> b!275076 (= e!176015 false)))

(declare-fun lt!137303 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13598 (_ BitVec 32)) Bool)

(assert (=> b!275076 (= lt!137303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275077 () Bool)

(declare-fun res!139104 () Bool)

(assert (=> b!275077 (=> (not res!139104) (not e!176017))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275077 (= res!139104 (and (= (size!6800 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6800 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6800 a!3325))))))

(declare-fun b!275078 () Bool)

(declare-fun res!139107 () Bool)

(assert (=> b!275078 (=> (not res!139107) (not e!176017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275078 (= res!139107 (validKeyInArray!0 k!2581))))

(declare-fun b!275079 () Bool)

(declare-fun res!139106 () Bool)

(assert (=> b!275079 (=> (not res!139106) (not e!176017))))

(declare-datatypes ((List!4277 0))(
  ( (Nil!4274) (Cons!4273 (h!4940 (_ BitVec 64)) (t!9367 List!4277)) )
))
(declare-fun arrayNoDuplicates!0 (array!13598 (_ BitVec 32) List!4277) Bool)

(assert (=> b!275079 (= res!139106 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4274))))

(assert (= (and start!26512 res!139105) b!275077))

(assert (= (and b!275077 res!139104) b!275078))

(assert (= (and b!275078 res!139107) b!275079))

(assert (= (and b!275079 res!139106) b!275075))

(assert (= (and b!275075 res!139103) b!275074))

(assert (= (and b!275074 res!139102) b!275076))

(declare-fun m!290755 () Bool)

(assert (=> b!275078 m!290755))

(declare-fun m!290757 () Bool)

(assert (=> b!275074 m!290757))

(declare-fun m!290759 () Bool)

(assert (=> b!275075 m!290759))

(declare-fun m!290761 () Bool)

(assert (=> start!26512 m!290761))

(declare-fun m!290763 () Bool)

(assert (=> start!26512 m!290763))

(declare-fun m!290765 () Bool)

(assert (=> b!275079 m!290765))

(declare-fun m!290767 () Bool)

(assert (=> b!275076 m!290767))

(push 1)

(assert (not b!275079))

(assert (not b!275075))

(assert (not b!275078))

(assert (not b!275076))

(assert (not b!275074))

