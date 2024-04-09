; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27160 () Bool)

(assert start!27160)

(declare-fun b!280807 () Bool)

(declare-fun res!143920 () Bool)

(declare-fun e!178658 () Bool)

(assert (=> b!280807 (=> (not res!143920) (not e!178658))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280807 (= res!143920 (validKeyInArray!0 k!2581))))

(declare-fun b!280808 () Bool)

(declare-fun e!178659 () Bool)

(assert (=> b!280808 (= e!178659 (not true))))

(declare-datatypes ((array!13967 0))(
  ( (array!13968 (arr!6625 (Array (_ BitVec 32) (_ BitVec 64))) (size!6977 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13967)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((List!4454 0))(
  ( (Nil!4451) (Cons!4450 (h!5120 (_ BitVec 64)) (t!9544 List!4454)) )
))
(declare-fun arrayNoDuplicates!0 (array!13967 (_ BitVec 32) List!4454) Bool)

(assert (=> b!280808 (arrayNoDuplicates!0 (array!13968 (store (arr!6625 a!3325) i!1267 k!2581) (size!6977 a!3325)) #b00000000000000000000000000000000 Nil!4451)))

(declare-datatypes ((Unit!8851 0))(
  ( (Unit!8852) )
))
(declare-fun lt!138940 () Unit!8851)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13967 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4454) Unit!8851)

(assert (=> b!280808 (= lt!138940 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4451))))

(declare-fun b!280809 () Bool)

(declare-fun res!143915 () Bool)

(assert (=> b!280809 (=> (not res!143915) (not e!178659))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!280809 (= res!143915 (not (= startIndex!26 i!1267)))))

(declare-fun b!280810 () Bool)

(declare-fun res!143914 () Bool)

(assert (=> b!280810 (=> (not res!143914) (not e!178658))))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!280810 (= res!143914 (and (= (size!6977 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6977 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6977 a!3325))))))

(declare-fun b!280811 () Bool)

(declare-fun res!143918 () Bool)

(assert (=> b!280811 (=> (not res!143918) (not e!178659))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13967 (_ BitVec 32)) Bool)

(assert (=> b!280811 (= res!143918 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280812 () Bool)

(assert (=> b!280812 (= e!178658 e!178659)))

(declare-fun res!143921 () Bool)

(assert (=> b!280812 (=> (not res!143921) (not e!178659))))

(declare-datatypes ((SeekEntryResult!1794 0))(
  ( (MissingZero!1794 (index!9346 (_ BitVec 32))) (Found!1794 (index!9347 (_ BitVec 32))) (Intermediate!1794 (undefined!2606 Bool) (index!9348 (_ BitVec 32)) (x!27552 (_ BitVec 32))) (Undefined!1794) (MissingVacant!1794 (index!9349 (_ BitVec 32))) )
))
(declare-fun lt!138941 () SeekEntryResult!1794)

(assert (=> b!280812 (= res!143921 (or (= lt!138941 (MissingZero!1794 i!1267)) (= lt!138941 (MissingVacant!1794 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13967 (_ BitVec 32)) SeekEntryResult!1794)

(assert (=> b!280812 (= lt!138941 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!143916 () Bool)

(assert (=> start!27160 (=> (not res!143916) (not e!178658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27160 (= res!143916 (validMask!0 mask!3868))))

(assert (=> start!27160 e!178658))

(declare-fun array_inv!4579 (array!13967) Bool)

(assert (=> start!27160 (array_inv!4579 a!3325)))

(assert (=> start!27160 true))

(declare-fun b!280813 () Bool)

(declare-fun res!143919 () Bool)

(assert (=> b!280813 (=> (not res!143919) (not e!178658))))

(assert (=> b!280813 (= res!143919 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4451))))

(declare-fun b!280814 () Bool)

(declare-fun res!143922 () Bool)

(assert (=> b!280814 (=> (not res!143922) (not e!178658))))

(declare-fun arrayContainsKey!0 (array!13967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280814 (= res!143922 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280815 () Bool)

(declare-fun res!143917 () Bool)

(assert (=> b!280815 (=> (not res!143917) (not e!178659))))

(assert (=> b!280815 (= res!143917 (validKeyInArray!0 (select (arr!6625 a!3325) startIndex!26)))))

(assert (= (and start!27160 res!143916) b!280810))

(assert (= (and b!280810 res!143914) b!280807))

(assert (= (and b!280807 res!143920) b!280813))

(assert (= (and b!280813 res!143919) b!280814))

(assert (= (and b!280814 res!143922) b!280812))

(assert (= (and b!280812 res!143921) b!280811))

(assert (= (and b!280811 res!143918) b!280809))

(assert (= (and b!280809 res!143915) b!280815))

(assert (= (and b!280815 res!143917) b!280808))

(declare-fun m!295237 () Bool)

(assert (=> b!280813 m!295237))

(declare-fun m!295239 () Bool)

(assert (=> b!280811 m!295239))

(declare-fun m!295241 () Bool)

(assert (=> b!280812 m!295241))

(declare-fun m!295243 () Bool)

(assert (=> b!280808 m!295243))

(declare-fun m!295245 () Bool)

(assert (=> b!280808 m!295245))

(declare-fun m!295247 () Bool)

(assert (=> b!280808 m!295247))

(declare-fun m!295249 () Bool)

(assert (=> start!27160 m!295249))

(declare-fun m!295251 () Bool)

(assert (=> start!27160 m!295251))

(declare-fun m!295253 () Bool)

(assert (=> b!280807 m!295253))

(declare-fun m!295255 () Bool)

(assert (=> b!280814 m!295255))

(declare-fun m!295257 () Bool)

(assert (=> b!280815 m!295257))

(assert (=> b!280815 m!295257))

(declare-fun m!295259 () Bool)

(assert (=> b!280815 m!295259))

(push 1)

