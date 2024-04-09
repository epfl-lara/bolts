; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27396 () Bool)

(assert start!27396)

(declare-fun b!283387 () Bool)

(declare-fun e!179820 () Bool)

(declare-fun e!179819 () Bool)

(assert (=> b!283387 (= e!179820 e!179819)))

(declare-fun res!146348 () Bool)

(assert (=> b!283387 (=> (not res!146348) (not e!179819))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!283387 (= res!146348 (not (= startIndex!26 i!1267)))))

(declare-datatypes ((array!14140 0))(
  ( (array!14141 (arr!6710 (Array (_ BitVec 32) (_ BitVec 64))) (size!7062 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14140)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!140115 () array!14140)

(assert (=> b!283387 (= lt!140115 (array!14141 (store (arr!6710 a!3325) i!1267 k0!2581) (size!7062 a!3325)))))

(declare-fun b!283388 () Bool)

(declare-fun res!146351 () Bool)

(declare-fun e!179818 () Bool)

(assert (=> b!283388 (=> (not res!146351) (not e!179818))))

(declare-datatypes ((List!4539 0))(
  ( (Nil!4536) (Cons!4535 (h!5205 (_ BitVec 64)) (t!9629 List!4539)) )
))
(declare-fun arrayNoDuplicates!0 (array!14140 (_ BitVec 32) List!4539) Bool)

(assert (=> b!283388 (= res!146351 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4536))))

(declare-fun b!283389 () Bool)

(assert (=> b!283389 (= e!179819 (not true))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14140 (_ BitVec 32)) Bool)

(assert (=> b!283389 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!9021 0))(
  ( (Unit!9022) )
))
(declare-fun lt!140113 () Unit!9021)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14140 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9021)

(assert (=> b!283389 (= lt!140113 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-datatypes ((SeekEntryResult!1879 0))(
  ( (MissingZero!1879 (index!9686 (_ BitVec 32))) (Found!1879 (index!9687 (_ BitVec 32))) (Intermediate!1879 (undefined!2691 Bool) (index!9688 (_ BitVec 32)) (x!27861 (_ BitVec 32))) (Undefined!1879) (MissingVacant!1879 (index!9689 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14140 (_ BitVec 32)) SeekEntryResult!1879)

(assert (=> b!283389 (= (seekEntryOrOpen!0 (select (arr!6710 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6710 a!3325) i!1267 k0!2581) startIndex!26) lt!140115 mask!3868))))

(declare-fun lt!140117 () Unit!9021)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14140 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!9021)

(assert (=> b!283389 (= lt!140117 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!283389 (arrayNoDuplicates!0 lt!140115 #b00000000000000000000000000000000 Nil!4536)))

(declare-fun lt!140116 () Unit!9021)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14140 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4539) Unit!9021)

(assert (=> b!283389 (= lt!140116 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4536))))

(declare-fun b!283390 () Bool)

(declare-fun res!146344 () Bool)

(assert (=> b!283390 (=> (not res!146344) (not e!179818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!283390 (= res!146344 (validKeyInArray!0 k0!2581))))

(declare-fun b!283391 () Bool)

(declare-fun res!146349 () Bool)

(assert (=> b!283391 (=> (not res!146349) (not e!179819))))

(assert (=> b!283391 (= res!146349 (validKeyInArray!0 (select (arr!6710 a!3325) startIndex!26)))))

(declare-fun b!283392 () Bool)

(declare-fun res!146346 () Bool)

(assert (=> b!283392 (=> (not res!146346) (not e!179820))))

(assert (=> b!283392 (= res!146346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!146345 () Bool)

(assert (=> start!27396 (=> (not res!146345) (not e!179818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27396 (= res!146345 (validMask!0 mask!3868))))

(assert (=> start!27396 e!179818))

(declare-fun array_inv!4664 (array!14140) Bool)

(assert (=> start!27396 (array_inv!4664 a!3325)))

(assert (=> start!27396 true))

(declare-fun b!283393 () Bool)

(assert (=> b!283393 (= e!179818 e!179820)))

(declare-fun res!146350 () Bool)

(assert (=> b!283393 (=> (not res!146350) (not e!179820))))

(declare-fun lt!140114 () SeekEntryResult!1879)

(assert (=> b!283393 (= res!146350 (or (= lt!140114 (MissingZero!1879 i!1267)) (= lt!140114 (MissingVacant!1879 i!1267))))))

(assert (=> b!283393 (= lt!140114 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!283394 () Bool)

(declare-fun res!146352 () Bool)

(assert (=> b!283394 (=> (not res!146352) (not e!179818))))

(declare-fun arrayContainsKey!0 (array!14140 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!283394 (= res!146352 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!283395 () Bool)

(declare-fun res!146347 () Bool)

(assert (=> b!283395 (=> (not res!146347) (not e!179818))))

(assert (=> b!283395 (= res!146347 (and (= (size!7062 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7062 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7062 a!3325))))))

(assert (= (and start!27396 res!146345) b!283395))

(assert (= (and b!283395 res!146347) b!283390))

(assert (= (and b!283390 res!146344) b!283388))

(assert (= (and b!283388 res!146351) b!283394))

(assert (= (and b!283394 res!146352) b!283393))

(assert (= (and b!283393 res!146350) b!283392))

(assert (= (and b!283392 res!146346) b!283387))

(assert (= (and b!283387 res!146348) b!283391))

(assert (= (and b!283391 res!146349) b!283389))

(declare-fun m!298315 () Bool)

(assert (=> b!283390 m!298315))

(declare-fun m!298317 () Bool)

(assert (=> b!283388 m!298317))

(declare-fun m!298319 () Bool)

(assert (=> b!283393 m!298319))

(declare-fun m!298321 () Bool)

(assert (=> b!283387 m!298321))

(declare-fun m!298323 () Bool)

(assert (=> b!283391 m!298323))

(assert (=> b!283391 m!298323))

(declare-fun m!298325 () Bool)

(assert (=> b!283391 m!298325))

(declare-fun m!298327 () Bool)

(assert (=> b!283392 m!298327))

(declare-fun m!298329 () Bool)

(assert (=> b!283394 m!298329))

(declare-fun m!298331 () Bool)

(assert (=> b!283389 m!298331))

(declare-fun m!298333 () Bool)

(assert (=> b!283389 m!298333))

(assert (=> b!283389 m!298321))

(declare-fun m!298335 () Bool)

(assert (=> b!283389 m!298335))

(assert (=> b!283389 m!298323))

(declare-fun m!298337 () Bool)

(assert (=> b!283389 m!298337))

(declare-fun m!298339 () Bool)

(assert (=> b!283389 m!298339))

(assert (=> b!283389 m!298323))

(declare-fun m!298341 () Bool)

(assert (=> b!283389 m!298341))

(assert (=> b!283389 m!298333))

(declare-fun m!298343 () Bool)

(assert (=> b!283389 m!298343))

(declare-fun m!298345 () Bool)

(assert (=> b!283389 m!298345))

(declare-fun m!298347 () Bool)

(assert (=> start!27396 m!298347))

(declare-fun m!298349 () Bool)

(assert (=> start!27396 m!298349))

(check-sat (not b!283393) (not start!27396) (not b!283390) (not b!283392) (not b!283388) (not b!283391) (not b!283394) (not b!283389))
(check-sat)
