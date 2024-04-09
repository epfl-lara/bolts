; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27140 () Bool)

(assert start!27140)

(declare-fun res!143648 () Bool)

(declare-fun e!178569 () Bool)

(assert (=> start!27140 (=> (not res!143648) (not e!178569))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27140 (= res!143648 (validMask!0 mask!3868))))

(assert (=> start!27140 e!178569))

(declare-datatypes ((array!13947 0))(
  ( (array!13948 (arr!6615 (Array (_ BitVec 32) (_ BitVec 64))) (size!6967 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13947)

(declare-fun array_inv!4569 (array!13947) Bool)

(assert (=> start!27140 (array_inv!4569 a!3325)))

(assert (=> start!27140 true))

(declare-fun b!280537 () Bool)

(declare-fun res!143644 () Bool)

(assert (=> b!280537 (=> (not res!143644) (not e!178569))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!280537 (= res!143644 (and (= (size!6967 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6967 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6967 a!3325))))))

(declare-fun b!280538 () Bool)

(declare-fun res!143651 () Bool)

(declare-fun e!178570 () Bool)

(assert (=> b!280538 (=> (not res!143651) (not e!178570))))

(assert (=> b!280538 (= res!143651 (not (= startIndex!26 i!1267)))))

(declare-fun b!280539 () Bool)

(declare-fun res!143652 () Bool)

(assert (=> b!280539 (=> (not res!143652) (not e!178569))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!280539 (= res!143652 (validKeyInArray!0 k!2581))))

(declare-fun b!280540 () Bool)

(declare-fun res!143649 () Bool)

(assert (=> b!280540 (=> (not res!143649) (not e!178570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13947 (_ BitVec 32)) Bool)

(assert (=> b!280540 (= res!143649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!280541 () Bool)

(assert (=> b!280541 (= e!178569 e!178570)))

(declare-fun res!143645 () Bool)

(assert (=> b!280541 (=> (not res!143645) (not e!178570))))

(declare-datatypes ((SeekEntryResult!1784 0))(
  ( (MissingZero!1784 (index!9306 (_ BitVec 32))) (Found!1784 (index!9307 (_ BitVec 32))) (Intermediate!1784 (undefined!2596 Bool) (index!9308 (_ BitVec 32)) (x!27510 (_ BitVec 32))) (Undefined!1784) (MissingVacant!1784 (index!9309 (_ BitVec 32))) )
))
(declare-fun lt!138880 () SeekEntryResult!1784)

(assert (=> b!280541 (= res!143645 (or (= lt!138880 (MissingZero!1784 i!1267)) (= lt!138880 (MissingVacant!1784 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13947 (_ BitVec 32)) SeekEntryResult!1784)

(assert (=> b!280541 (= lt!138880 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!280542 () Bool)

(declare-fun res!143646 () Bool)

(assert (=> b!280542 (=> (not res!143646) (not e!178569))))

(declare-datatypes ((List!4444 0))(
  ( (Nil!4441) (Cons!4440 (h!5110 (_ BitVec 64)) (t!9534 List!4444)) )
))
(declare-fun arrayNoDuplicates!0 (array!13947 (_ BitVec 32) List!4444) Bool)

(assert (=> b!280542 (= res!143646 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4441))))

(declare-fun b!280543 () Bool)

(assert (=> b!280543 (= e!178570 (not true))))

(assert (=> b!280543 (arrayNoDuplicates!0 (array!13948 (store (arr!6615 a!3325) i!1267 k!2581) (size!6967 a!3325)) #b00000000000000000000000000000000 Nil!4441)))

(declare-datatypes ((Unit!8831 0))(
  ( (Unit!8832) )
))
(declare-fun lt!138881 () Unit!8831)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13947 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4444) Unit!8831)

(assert (=> b!280543 (= lt!138881 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4441))))

(declare-fun b!280544 () Bool)

(declare-fun res!143647 () Bool)

(assert (=> b!280544 (=> (not res!143647) (not e!178569))))

(declare-fun arrayContainsKey!0 (array!13947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!280544 (= res!143647 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!280545 () Bool)

(declare-fun res!143650 () Bool)

(assert (=> b!280545 (=> (not res!143650) (not e!178570))))

(assert (=> b!280545 (= res!143650 (validKeyInArray!0 (select (arr!6615 a!3325) startIndex!26)))))

(assert (= (and start!27140 res!143648) b!280537))

(assert (= (and b!280537 res!143644) b!280539))

(assert (= (and b!280539 res!143652) b!280542))

(assert (= (and b!280542 res!143646) b!280544))

(assert (= (and b!280544 res!143647) b!280541))

(assert (= (and b!280541 res!143645) b!280540))

(assert (= (and b!280540 res!143649) b!280538))

(assert (= (and b!280538 res!143651) b!280545))

(assert (= (and b!280545 res!143650) b!280543))

(declare-fun m!294997 () Bool)

(assert (=> b!280541 m!294997))

(declare-fun m!294999 () Bool)

(assert (=> b!280542 m!294999))

(declare-fun m!295001 () Bool)

(assert (=> b!280544 m!295001))

(declare-fun m!295003 () Bool)

(assert (=> b!280545 m!295003))

(assert (=> b!280545 m!295003))

(declare-fun m!295005 () Bool)

(assert (=> b!280545 m!295005))

(declare-fun m!295007 () Bool)

(assert (=> b!280543 m!295007))

(declare-fun m!295009 () Bool)

(assert (=> b!280543 m!295009))

(declare-fun m!295011 () Bool)

(assert (=> b!280543 m!295011))

(declare-fun m!295013 () Bool)

(assert (=> b!280539 m!295013))

(declare-fun m!295015 () Bool)

(assert (=> start!27140 m!295015))

(declare-fun m!295017 () Bool)

(assert (=> start!27140 m!295017))

(declare-fun m!295019 () Bool)

(assert (=> b!280540 m!295019))

(push 1)

