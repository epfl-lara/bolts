; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27298 () Bool)

(assert start!27298)

(declare-fun b!282670 () Bool)

(declare-fun res!145779 () Bool)

(declare-fun e!179419 () Bool)

(assert (=> b!282670 (=> (not res!145779) (not e!179419))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282670 (= res!145779 (validKeyInArray!0 k!2581))))

(declare-fun b!282671 () Bool)

(declare-fun res!145780 () Bool)

(declare-fun e!179418 () Bool)

(assert (=> b!282671 (=> (not res!145780) (not e!179418))))

(declare-datatypes ((array!14105 0))(
  ( (array!14106 (arr!6694 (Array (_ BitVec 32) (_ BitVec 64))) (size!7046 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14105)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14105 (_ BitVec 32)) Bool)

(assert (=> b!282671 (= res!145780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282672 () Bool)

(declare-fun res!145782 () Bool)

(assert (=> b!282672 (=> (not res!145782) (not e!179419))))

(declare-datatypes ((List!4523 0))(
  ( (Nil!4520) (Cons!4519 (h!5189 (_ BitVec 64)) (t!9613 List!4523)) )
))
(declare-fun arrayNoDuplicates!0 (array!14105 (_ BitVec 32) List!4523) Bool)

(assert (=> b!282672 (= res!145782 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4520))))

(declare-fun b!282673 () Bool)

(declare-fun e!179417 () Bool)

(assert (=> b!282673 (= e!179417 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282673 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8989 0))(
  ( (Unit!8990) )
))
(declare-fun lt!139722 () Unit!8989)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8989)

(assert (=> b!282673 (= lt!139722 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139723 () array!14105)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1863 0))(
  ( (MissingZero!1863 (index!9622 (_ BitVec 32))) (Found!1863 (index!9623 (_ BitVec 32))) (Intermediate!1863 (undefined!2675 Bool) (index!9624 (_ BitVec 32)) (x!27805 (_ BitVec 32))) (Undefined!1863) (MissingVacant!1863 (index!9625 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14105 (_ BitVec 32)) SeekEntryResult!1863)

(assert (=> b!282673 (= (seekEntryOrOpen!0 (select (arr!6694 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6694 a!3325) i!1267 k!2581) startIndex!26) lt!139723 mask!3868))))

(declare-fun lt!139724 () Unit!8989)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14105 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8989)

(assert (=> b!282673 (= lt!139724 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!282673 (arrayNoDuplicates!0 lt!139723 #b00000000000000000000000000000000 Nil!4520)))

(declare-fun lt!139721 () Unit!8989)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14105 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4523) Unit!8989)

(assert (=> b!282673 (= lt!139721 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4520))))

(declare-fun b!282674 () Bool)

(assert (=> b!282674 (= e!179418 e!179417)))

(declare-fun res!145783 () Bool)

(assert (=> b!282674 (=> (not res!145783) (not e!179417))))

(assert (=> b!282674 (= res!145783 (not (= startIndex!26 i!1267)))))

(assert (=> b!282674 (= lt!139723 (array!14106 (store (arr!6694 a!3325) i!1267 k!2581) (size!7046 a!3325)))))

(declare-fun b!282676 () Bool)

(declare-fun res!145781 () Bool)

(assert (=> b!282676 (=> (not res!145781) (not e!179419))))

(declare-fun arrayContainsKey!0 (array!14105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282676 (= res!145781 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282677 () Bool)

(assert (=> b!282677 (= e!179419 e!179418)))

(declare-fun res!145784 () Bool)

(assert (=> b!282677 (=> (not res!145784) (not e!179418))))

(declare-fun lt!139720 () SeekEntryResult!1863)

(assert (=> b!282677 (= res!145784 (or (= lt!139720 (MissingZero!1863 i!1267)) (= lt!139720 (MissingVacant!1863 i!1267))))))

(assert (=> b!282677 (= lt!139720 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282678 () Bool)

(declare-fun res!145785 () Bool)

(assert (=> b!282678 (=> (not res!145785) (not e!179417))))

(assert (=> b!282678 (= res!145785 (validKeyInArray!0 (select (arr!6694 a!3325) startIndex!26)))))

(declare-fun b!282675 () Bool)

(declare-fun res!145778 () Bool)

(assert (=> b!282675 (=> (not res!145778) (not e!179419))))

(assert (=> b!282675 (= res!145778 (and (= (size!7046 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7046 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7046 a!3325))))))

(declare-fun res!145777 () Bool)

(assert (=> start!27298 (=> (not res!145777) (not e!179419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27298 (= res!145777 (validMask!0 mask!3868))))

(assert (=> start!27298 e!179419))

(declare-fun array_inv!4648 (array!14105) Bool)

(assert (=> start!27298 (array_inv!4648 a!3325)))

(assert (=> start!27298 true))

(assert (= (and start!27298 res!145777) b!282675))

(assert (= (and b!282675 res!145778) b!282670))

(assert (= (and b!282670 res!145779) b!282672))

(assert (= (and b!282672 res!145782) b!282676))

(assert (= (and b!282676 res!145781) b!282677))

(assert (= (and b!282677 res!145784) b!282671))

(assert (= (and b!282671 res!145780) b!282674))

(assert (= (and b!282674 res!145783) b!282678))

(assert (= (and b!282678 res!145785) b!282673))

(declare-fun m!297373 () Bool)

(assert (=> b!282677 m!297373))

(declare-fun m!297375 () Bool)

(assert (=> b!282670 m!297375))

(declare-fun m!297377 () Bool)

(assert (=> b!282678 m!297377))

(assert (=> b!282678 m!297377))

(declare-fun m!297379 () Bool)

(assert (=> b!282678 m!297379))

(declare-fun m!297381 () Bool)

(assert (=> b!282672 m!297381))

(declare-fun m!297383 () Bool)

(assert (=> b!282676 m!297383))

(declare-fun m!297385 () Bool)

(assert (=> start!27298 m!297385))

(declare-fun m!297387 () Bool)

(assert (=> start!27298 m!297387))

(declare-fun m!297389 () Bool)

(assert (=> b!282671 m!297389))

(declare-fun m!297391 () Bool)

(assert (=> b!282674 m!297391))

(declare-fun m!297393 () Bool)

(assert (=> b!282673 m!297393))

(declare-fun m!297395 () Bool)

(assert (=> b!282673 m!297395))

(assert (=> b!282673 m!297391))

(declare-fun m!297397 () Bool)

(assert (=> b!282673 m!297397))

(assert (=> b!282673 m!297377))

(declare-fun m!297399 () Bool)

(assert (=> b!282673 m!297399))

(declare-fun m!297401 () Bool)

(assert (=> b!282673 m!297401))

(assert (=> b!282673 m!297377))

(declare-fun m!297403 () Bool)

(assert (=> b!282673 m!297403))

(declare-fun m!297405 () Bool)

(assert (=> b!282673 m!297405))

(assert (=> b!282673 m!297395))

(declare-fun m!297407 () Bool)

(assert (=> b!282673 m!297407))

(push 1)

