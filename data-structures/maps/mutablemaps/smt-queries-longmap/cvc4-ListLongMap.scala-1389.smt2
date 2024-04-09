; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27200 () Bool)

(assert start!27200)

(declare-fun b!281347 () Bool)

(declare-fun e!178839 () Bool)

(declare-fun e!178838 () Bool)

(assert (=> b!281347 (= e!178839 e!178838)))

(declare-fun res!144460 () Bool)

(assert (=> b!281347 (=> (not res!144460) (not e!178838))))

(declare-datatypes ((SeekEntryResult!1814 0))(
  ( (MissingZero!1814 (index!9426 (_ BitVec 32))) (Found!1814 (index!9427 (_ BitVec 32))) (Intermediate!1814 (undefined!2626 Bool) (index!9428 (_ BitVec 32)) (x!27620 (_ BitVec 32))) (Undefined!1814) (MissingVacant!1814 (index!9429 (_ BitVec 32))) )
))
(declare-fun lt!139061 () SeekEntryResult!1814)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281347 (= res!144460 (or (= lt!139061 (MissingZero!1814 i!1267)) (= lt!139061 (MissingVacant!1814 i!1267))))))

(declare-datatypes ((array!14007 0))(
  ( (array!14008 (arr!6645 (Array (_ BitVec 32) (_ BitVec 64))) (size!6997 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14007)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14007 (_ BitVec 32)) SeekEntryResult!1814)

(assert (=> b!281347 (= lt!139061 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!281348 () Bool)

(declare-fun res!144459 () Bool)

(assert (=> b!281348 (=> (not res!144459) (not e!178838))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!281348 (= res!144459 (not (= startIndex!26 i!1267)))))

(declare-fun res!144461 () Bool)

(assert (=> start!27200 (=> (not res!144461) (not e!178839))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27200 (= res!144461 (validMask!0 mask!3868))))

(assert (=> start!27200 e!178839))

(declare-fun array_inv!4599 (array!14007) Bool)

(assert (=> start!27200 (array_inv!4599 a!3325)))

(assert (=> start!27200 true))

(declare-fun b!281349 () Bool)

(declare-fun res!144457 () Bool)

(assert (=> b!281349 (=> (not res!144457) (not e!178838))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281349 (= res!144457 (validKeyInArray!0 (select (arr!6645 a!3325) startIndex!26)))))

(declare-fun b!281350 () Bool)

(declare-fun res!144455 () Bool)

(assert (=> b!281350 (=> (not res!144455) (not e!178839))))

(assert (=> b!281350 (= res!144455 (validKeyInArray!0 k!2581))))

(declare-fun b!281351 () Bool)

(declare-fun res!144454 () Bool)

(assert (=> b!281351 (=> (not res!144454) (not e!178839))))

(assert (=> b!281351 (= res!144454 (and (= (size!6997 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6997 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6997 a!3325))))))

(declare-fun b!281352 () Bool)

(declare-fun res!144462 () Bool)

(assert (=> b!281352 (=> (not res!144462) (not e!178838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14007 (_ BitVec 32)) Bool)

(assert (=> b!281352 (= res!144462 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281353 () Bool)

(declare-fun res!144456 () Bool)

(assert (=> b!281353 (=> (not res!144456) (not e!178839))))

(declare-fun arrayContainsKey!0 (array!14007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281353 (= res!144456 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281354 () Bool)

(assert (=> b!281354 (= e!178838 (not true))))

(declare-datatypes ((List!4474 0))(
  ( (Nil!4471) (Cons!4470 (h!5140 (_ BitVec 64)) (t!9564 List!4474)) )
))
(declare-fun arrayNoDuplicates!0 (array!14007 (_ BitVec 32) List!4474) Bool)

(assert (=> b!281354 (arrayNoDuplicates!0 (array!14008 (store (arr!6645 a!3325) i!1267 k!2581) (size!6997 a!3325)) #b00000000000000000000000000000000 Nil!4471)))

(declare-datatypes ((Unit!8891 0))(
  ( (Unit!8892) )
))
(declare-fun lt!139060 () Unit!8891)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14007 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4474) Unit!8891)

(assert (=> b!281354 (= lt!139060 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4471))))

(declare-fun b!281355 () Bool)

(declare-fun res!144458 () Bool)

(assert (=> b!281355 (=> (not res!144458) (not e!178839))))

(assert (=> b!281355 (= res!144458 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4471))))

(assert (= (and start!27200 res!144461) b!281351))

(assert (= (and b!281351 res!144454) b!281350))

(assert (= (and b!281350 res!144455) b!281355))

(assert (= (and b!281355 res!144458) b!281353))

(assert (= (and b!281353 res!144456) b!281347))

(assert (= (and b!281347 res!144460) b!281352))

(assert (= (and b!281352 res!144462) b!281348))

(assert (= (and b!281348 res!144459) b!281349))

(assert (= (and b!281349 res!144457) b!281354))

(declare-fun m!295717 () Bool)

(assert (=> b!281355 m!295717))

(declare-fun m!295719 () Bool)

(assert (=> b!281347 m!295719))

(declare-fun m!295721 () Bool)

(assert (=> b!281352 m!295721))

(declare-fun m!295723 () Bool)

(assert (=> b!281349 m!295723))

(assert (=> b!281349 m!295723))

(declare-fun m!295725 () Bool)

(assert (=> b!281349 m!295725))

(declare-fun m!295727 () Bool)

(assert (=> b!281350 m!295727))

(declare-fun m!295729 () Bool)

(assert (=> b!281354 m!295729))

(declare-fun m!295731 () Bool)

(assert (=> b!281354 m!295731))

(declare-fun m!295733 () Bool)

(assert (=> b!281354 m!295733))

(declare-fun m!295735 () Bool)

(assert (=> b!281353 m!295735))

(declare-fun m!295737 () Bool)

(assert (=> start!27200 m!295737))

(declare-fun m!295739 () Bool)

(assert (=> start!27200 m!295739))

(push 1)

(assert (not b!281350))

