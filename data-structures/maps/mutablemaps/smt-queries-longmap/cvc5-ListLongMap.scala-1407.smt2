; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27304 () Bool)

(assert start!27304)

(declare-fun b!282751 () Bool)

(declare-fun res!145861 () Bool)

(declare-fun e!179452 () Bool)

(assert (=> b!282751 (=> (not res!145861) (not e!179452))))

(declare-datatypes ((array!14111 0))(
  ( (array!14112 (arr!6697 (Array (_ BitVec 32) (_ BitVec 64))) (size!7049 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14111)

(declare-datatypes ((List!4526 0))(
  ( (Nil!4523) (Cons!4522 (h!5192 (_ BitVec 64)) (t!9616 List!4526)) )
))
(declare-fun arrayNoDuplicates!0 (array!14111 (_ BitVec 32) List!4526) Bool)

(assert (=> b!282751 (= res!145861 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4523))))

(declare-fun res!145866 () Bool)

(assert (=> start!27304 (=> (not res!145866) (not e!179452))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27304 (= res!145866 (validMask!0 mask!3868))))

(assert (=> start!27304 e!179452))

(declare-fun array_inv!4651 (array!14111) Bool)

(assert (=> start!27304 (array_inv!4651 a!3325)))

(assert (=> start!27304 true))

(declare-fun b!282752 () Bool)

(declare-fun res!145865 () Bool)

(declare-fun e!179454 () Bool)

(assert (=> b!282752 (=> (not res!145865) (not e!179454))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14111 (_ BitVec 32)) Bool)

(assert (=> b!282752 (= res!145865 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282753 () Bool)

(assert (=> b!282753 (= e!179452 e!179454)))

(declare-fun res!145863 () Bool)

(assert (=> b!282753 (=> (not res!145863) (not e!179454))))

(declare-datatypes ((SeekEntryResult!1866 0))(
  ( (MissingZero!1866 (index!9634 (_ BitVec 32))) (Found!1866 (index!9635 (_ BitVec 32))) (Intermediate!1866 (undefined!2678 Bool) (index!9636 (_ BitVec 32)) (x!27816 (_ BitVec 32))) (Undefined!1866) (MissingVacant!1866 (index!9637 (_ BitVec 32))) )
))
(declare-fun lt!139765 () SeekEntryResult!1866)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!282753 (= res!145863 (or (= lt!139765 (MissingZero!1866 i!1267)) (= lt!139765 (MissingVacant!1866 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14111 (_ BitVec 32)) SeekEntryResult!1866)

(assert (=> b!282753 (= lt!139765 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!282754 () Bool)

(declare-fun res!145858 () Bool)

(assert (=> b!282754 (=> (not res!145858) (not e!179452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282754 (= res!145858 (validKeyInArray!0 k!2581))))

(declare-fun b!282755 () Bool)

(declare-fun e!179453 () Bool)

(assert (=> b!282755 (= e!179454 e!179453)))

(declare-fun res!145864 () Bool)

(assert (=> b!282755 (=> (not res!145864) (not e!179453))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282755 (= res!145864 (not (= startIndex!26 i!1267)))))

(declare-fun lt!139769 () array!14111)

(assert (=> b!282755 (= lt!139769 (array!14112 (store (arr!6697 a!3325) i!1267 k!2581) (size!7049 a!3325)))))

(declare-fun b!282756 () Bool)

(assert (=> b!282756 (= e!179453 (not true))))

(assert (=> b!282756 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8995 0))(
  ( (Unit!8996) )
))
(declare-fun lt!139767 () Unit!8995)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14111 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8995)

(assert (=> b!282756 (= lt!139767 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(assert (=> b!282756 (= (seekEntryOrOpen!0 (select (arr!6697 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6697 a!3325) i!1267 k!2581) startIndex!26) lt!139769 mask!3868))))

(declare-fun lt!139768 () Unit!8995)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14111 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8995)

(assert (=> b!282756 (= lt!139768 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k!2581 startIndex!26 mask!3868))))

(assert (=> b!282756 (arrayNoDuplicates!0 lt!139769 #b00000000000000000000000000000000 Nil!4523)))

(declare-fun lt!139766 () Unit!8995)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14111 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4526) Unit!8995)

(assert (=> b!282756 (= lt!139766 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k!2581 i!1267 #b00000000000000000000000000000000 Nil!4523))))

(declare-fun b!282757 () Bool)

(declare-fun res!145859 () Bool)

(assert (=> b!282757 (=> (not res!145859) (not e!179453))))

(assert (=> b!282757 (= res!145859 (validKeyInArray!0 (select (arr!6697 a!3325) startIndex!26)))))

(declare-fun b!282758 () Bool)

(declare-fun res!145862 () Bool)

(assert (=> b!282758 (=> (not res!145862) (not e!179452))))

(declare-fun arrayContainsKey!0 (array!14111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282758 (= res!145862 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282759 () Bool)

(declare-fun res!145860 () Bool)

(assert (=> b!282759 (=> (not res!145860) (not e!179452))))

(assert (=> b!282759 (= res!145860 (and (= (size!7049 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7049 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7049 a!3325))))))

(assert (= (and start!27304 res!145866) b!282759))

(assert (= (and b!282759 res!145860) b!282754))

(assert (= (and b!282754 res!145858) b!282751))

(assert (= (and b!282751 res!145861) b!282758))

(assert (= (and b!282758 res!145862) b!282753))

(assert (= (and b!282753 res!145863) b!282752))

(assert (= (and b!282752 res!145865) b!282755))

(assert (= (and b!282755 res!145864) b!282757))

(assert (= (and b!282757 res!145859) b!282756))

(declare-fun m!297481 () Bool)

(assert (=> b!282757 m!297481))

(assert (=> b!282757 m!297481))

(declare-fun m!297483 () Bool)

(assert (=> b!282757 m!297483))

(declare-fun m!297485 () Bool)

(assert (=> b!282756 m!297485))

(declare-fun m!297487 () Bool)

(assert (=> b!282756 m!297487))

(declare-fun m!297489 () Bool)

(assert (=> b!282756 m!297489))

(declare-fun m!297491 () Bool)

(assert (=> b!282756 m!297491))

(assert (=> b!282756 m!297481))

(declare-fun m!297493 () Bool)

(assert (=> b!282756 m!297493))

(declare-fun m!297495 () Bool)

(assert (=> b!282756 m!297495))

(assert (=> b!282756 m!297487))

(declare-fun m!297497 () Bool)

(assert (=> b!282756 m!297497))

(declare-fun m!297499 () Bool)

(assert (=> b!282756 m!297499))

(assert (=> b!282756 m!297481))

(declare-fun m!297501 () Bool)

(assert (=> b!282756 m!297501))

(declare-fun m!297503 () Bool)

(assert (=> start!27304 m!297503))

(declare-fun m!297505 () Bool)

(assert (=> start!27304 m!297505))

(declare-fun m!297507 () Bool)

(assert (=> b!282758 m!297507))

(declare-fun m!297509 () Bool)

(assert (=> b!282753 m!297509))

(declare-fun m!297511 () Bool)

(assert (=> b!282751 m!297511))

(declare-fun m!297513 () Bool)

(assert (=> b!282754 m!297513))

(declare-fun m!297515 () Bool)

(assert (=> b!282752 m!297515))

(assert (=> b!282755 m!297489))

(push 1)

