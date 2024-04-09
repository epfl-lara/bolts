; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27306 () Bool)

(assert start!27306)

(declare-fun b!282778 () Bool)

(declare-fun e!179466 () Bool)

(declare-fun e!179464 () Bool)

(assert (=> b!282778 (= e!179466 e!179464)))

(declare-fun res!145892 () Bool)

(assert (=> b!282778 (=> (not res!145892) (not e!179464))))

(declare-datatypes ((SeekEntryResult!1867 0))(
  ( (MissingZero!1867 (index!9638 (_ BitVec 32))) (Found!1867 (index!9639 (_ BitVec 32))) (Intermediate!1867 (undefined!2679 Bool) (index!9640 (_ BitVec 32)) (x!27817 (_ BitVec 32))) (Undefined!1867) (MissingVacant!1867 (index!9641 (_ BitVec 32))) )
))
(declare-fun lt!139782 () SeekEntryResult!1867)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282778 (= res!145892 (or (= lt!139782 (MissingZero!1867 i!1267)) (= lt!139782 (MissingVacant!1867 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((array!14113 0))(
  ( (array!14114 (arr!6698 (Array (_ BitVec 32) (_ BitVec 64))) (size!7050 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14113)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14113 (_ BitVec 32)) SeekEntryResult!1867)

(assert (=> b!282778 (= lt!139782 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!282779 () Bool)

(declare-fun res!145889 () Bool)

(assert (=> b!282779 (=> (not res!145889) (not e!179466))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282779 (= res!145889 (and (= (size!7050 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7050 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7050 a!3325))))))

(declare-fun b!282780 () Bool)

(declare-fun e!179465 () Bool)

(assert (=> b!282780 (= e!179464 e!179465)))

(declare-fun res!145887 () Bool)

(assert (=> b!282780 (=> (not res!145887) (not e!179465))))

(assert (=> b!282780 (= res!145887 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139783 () array!14113)

(assert (=> b!282780 (= lt!139783 (array!14114 (store (arr!6698 a!3325) i!1267 k0!2581) (size!7050 a!3325)))))

(declare-fun res!145886 () Bool)

(assert (=> start!27306 (=> (not res!145886) (not e!179466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27306 (= res!145886 (validMask!0 mask!3868))))

(assert (=> start!27306 e!179466))

(declare-fun array_inv!4652 (array!14113) Bool)

(assert (=> start!27306 (array_inv!4652 a!3325)))

(assert (=> start!27306 true))

(declare-fun b!282781 () Bool)

(declare-fun res!145885 () Bool)

(assert (=> b!282781 (=> (not res!145885) (not e!179465))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282781 (= res!145885 (validKeyInArray!0 (select (arr!6698 a!3325) startIndex!26)))))

(declare-fun b!282782 () Bool)

(declare-fun res!145890 () Bool)

(assert (=> b!282782 (=> (not res!145890) (not e!179466))))

(assert (=> b!282782 (= res!145890 (validKeyInArray!0 k0!2581))))

(declare-fun b!282783 () Bool)

(declare-fun res!145891 () Bool)

(assert (=> b!282783 (=> (not res!145891) (not e!179466))))

(declare-fun arrayContainsKey!0 (array!14113 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282783 (= res!145891 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282784 () Bool)

(declare-fun res!145893 () Bool)

(assert (=> b!282784 (=> (not res!145893) (not e!179466))))

(declare-datatypes ((List!4527 0))(
  ( (Nil!4524) (Cons!4523 (h!5193 (_ BitVec 64)) (t!9617 List!4527)) )
))
(declare-fun arrayNoDuplicates!0 (array!14113 (_ BitVec 32) List!4527) Bool)

(assert (=> b!282784 (= res!145893 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4524))))

(declare-fun b!282785 () Bool)

(declare-fun res!145888 () Bool)

(assert (=> b!282785 (=> (not res!145888) (not e!179464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14113 (_ BitVec 32)) Bool)

(assert (=> b!282785 (= res!145888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282786 () Bool)

(assert (=> b!282786 (= e!179465 (not true))))

(assert (=> b!282786 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8997 0))(
  ( (Unit!8998) )
))
(declare-fun lt!139781 () Unit!8997)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14113 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8997)

(assert (=> b!282786 (= lt!139781 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!282786 (= (seekEntryOrOpen!0 (select (arr!6698 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6698 a!3325) i!1267 k0!2581) startIndex!26) lt!139783 mask!3868))))

(declare-fun lt!139784 () Unit!8997)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14113 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8997)

(assert (=> b!282786 (= lt!139784 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!282786 (arrayNoDuplicates!0 lt!139783 #b00000000000000000000000000000000 Nil!4524)))

(declare-fun lt!139780 () Unit!8997)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14113 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4527) Unit!8997)

(assert (=> b!282786 (= lt!139780 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4524))))

(assert (= (and start!27306 res!145886) b!282779))

(assert (= (and b!282779 res!145889) b!282782))

(assert (= (and b!282782 res!145890) b!282784))

(assert (= (and b!282784 res!145893) b!282783))

(assert (= (and b!282783 res!145891) b!282778))

(assert (= (and b!282778 res!145892) b!282785))

(assert (= (and b!282785 res!145888) b!282780))

(assert (= (and b!282780 res!145887) b!282781))

(assert (= (and b!282781 res!145885) b!282786))

(declare-fun m!297517 () Bool)

(assert (=> b!282781 m!297517))

(assert (=> b!282781 m!297517))

(declare-fun m!297519 () Bool)

(assert (=> b!282781 m!297519))

(declare-fun m!297521 () Bool)

(assert (=> b!282780 m!297521))

(declare-fun m!297523 () Bool)

(assert (=> b!282785 m!297523))

(declare-fun m!297525 () Bool)

(assert (=> b!282782 m!297525))

(declare-fun m!297527 () Bool)

(assert (=> b!282778 m!297527))

(declare-fun m!297529 () Bool)

(assert (=> b!282786 m!297529))

(declare-fun m!297531 () Bool)

(assert (=> b!282786 m!297531))

(declare-fun m!297533 () Bool)

(assert (=> b!282786 m!297533))

(assert (=> b!282786 m!297531))

(assert (=> b!282786 m!297521))

(declare-fun m!297535 () Bool)

(assert (=> b!282786 m!297535))

(assert (=> b!282786 m!297517))

(declare-fun m!297537 () Bool)

(assert (=> b!282786 m!297537))

(declare-fun m!297539 () Bool)

(assert (=> b!282786 m!297539))

(declare-fun m!297541 () Bool)

(assert (=> b!282786 m!297541))

(assert (=> b!282786 m!297517))

(declare-fun m!297543 () Bool)

(assert (=> b!282786 m!297543))

(declare-fun m!297545 () Bool)

(assert (=> b!282784 m!297545))

(declare-fun m!297547 () Bool)

(assert (=> start!27306 m!297547))

(declare-fun m!297549 () Bool)

(assert (=> start!27306 m!297549))

(declare-fun m!297551 () Bool)

(assert (=> b!282783 m!297551))

(check-sat (not b!282786) (not b!282783) (not b!282785) (not start!27306) (not b!282782) (not b!282781) (not b!282784) (not b!282778))
(check-sat)
