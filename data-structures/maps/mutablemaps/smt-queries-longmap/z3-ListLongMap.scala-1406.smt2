; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27300 () Bool)

(assert start!27300)

(declare-fun b!282697 () Bool)

(declare-fun res!145808 () Bool)

(declare-fun e!179428 () Bool)

(assert (=> b!282697 (=> (not res!145808) (not e!179428))))

(declare-datatypes ((array!14107 0))(
  ( (array!14108 (arr!6695 (Array (_ BitVec 32) (_ BitVec 64))) (size!7047 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14107)

(declare-datatypes ((List!4524 0))(
  ( (Nil!4521) (Cons!4520 (h!5190 (_ BitVec 64)) (t!9614 List!4524)) )
))
(declare-fun arrayNoDuplicates!0 (array!14107 (_ BitVec 32) List!4524) Bool)

(assert (=> b!282697 (= res!145808 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4521))))

(declare-fun b!282698 () Bool)

(declare-fun res!145804 () Bool)

(assert (=> b!282698 (=> (not res!145804) (not e!179428))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!282698 (= res!145804 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!282699 () Bool)

(declare-fun res!145809 () Bool)

(declare-fun e!179429 () Bool)

(assert (=> b!282699 (=> (not res!145809) (not e!179429))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14107 (_ BitVec 32)) Bool)

(assert (=> b!282699 (= res!145809 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!282701 () Bool)

(declare-fun e!179430 () Bool)

(assert (=> b!282701 (= e!179430 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!282701 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8991 0))(
  ( (Unit!8992) )
))
(declare-fun lt!139738 () Unit!8991)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!14107 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8991)

(assert (=> b!282701 (= lt!139738 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun lt!139735 () array!14107)

(declare-fun i!1267 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!1864 0))(
  ( (MissingZero!1864 (index!9626 (_ BitVec 32))) (Found!1864 (index!9627 (_ BitVec 32))) (Intermediate!1864 (undefined!2676 Bool) (index!9628 (_ BitVec 32)) (x!27806 (_ BitVec 32))) (Undefined!1864) (MissingVacant!1864 (index!9629 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14107 (_ BitVec 32)) SeekEntryResult!1864)

(assert (=> b!282701 (= (seekEntryOrOpen!0 (select (arr!6695 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6695 a!3325) i!1267 k0!2581) startIndex!26) lt!139735 mask!3868))))

(declare-fun lt!139739 () Unit!8991)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14107 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8991)

(assert (=> b!282701 (= lt!139739 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!282701 (arrayNoDuplicates!0 lt!139735 #b00000000000000000000000000000000 Nil!4521)))

(declare-fun lt!139737 () Unit!8991)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14107 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4524) Unit!8991)

(assert (=> b!282701 (= lt!139737 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4521))))

(declare-fun b!282702 () Bool)

(declare-fun res!145807 () Bool)

(assert (=> b!282702 (=> (not res!145807) (not e!179428))))

(assert (=> b!282702 (= res!145807 (and (= (size!7047 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7047 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7047 a!3325))))))

(declare-fun b!282703 () Bool)

(declare-fun res!145812 () Bool)

(assert (=> b!282703 (=> (not res!145812) (not e!179430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!282703 (= res!145812 (validKeyInArray!0 (select (arr!6695 a!3325) startIndex!26)))))

(declare-fun b!282704 () Bool)

(declare-fun res!145811 () Bool)

(assert (=> b!282704 (=> (not res!145811) (not e!179428))))

(assert (=> b!282704 (= res!145811 (validKeyInArray!0 k0!2581))))

(declare-fun b!282705 () Bool)

(assert (=> b!282705 (= e!179429 e!179430)))

(declare-fun res!145810 () Bool)

(assert (=> b!282705 (=> (not res!145810) (not e!179430))))

(assert (=> b!282705 (= res!145810 (not (= startIndex!26 i!1267)))))

(assert (=> b!282705 (= lt!139735 (array!14108 (store (arr!6695 a!3325) i!1267 k0!2581) (size!7047 a!3325)))))

(declare-fun b!282700 () Bool)

(assert (=> b!282700 (= e!179428 e!179429)))

(declare-fun res!145806 () Bool)

(assert (=> b!282700 (=> (not res!145806) (not e!179429))))

(declare-fun lt!139736 () SeekEntryResult!1864)

(assert (=> b!282700 (= res!145806 (or (= lt!139736 (MissingZero!1864 i!1267)) (= lt!139736 (MissingVacant!1864 i!1267))))))

(assert (=> b!282700 (= lt!139736 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun res!145805 () Bool)

(assert (=> start!27300 (=> (not res!145805) (not e!179428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27300 (= res!145805 (validMask!0 mask!3868))))

(assert (=> start!27300 e!179428))

(declare-fun array_inv!4649 (array!14107) Bool)

(assert (=> start!27300 (array_inv!4649 a!3325)))

(assert (=> start!27300 true))

(assert (= (and start!27300 res!145805) b!282702))

(assert (= (and b!282702 res!145807) b!282704))

(assert (= (and b!282704 res!145811) b!282697))

(assert (= (and b!282697 res!145808) b!282698))

(assert (= (and b!282698 res!145804) b!282700))

(assert (= (and b!282700 res!145806) b!282699))

(assert (= (and b!282699 res!145809) b!282705))

(assert (= (and b!282705 res!145810) b!282703))

(assert (= (and b!282703 res!145812) b!282701))

(declare-fun m!297409 () Bool)

(assert (=> b!282701 m!297409))

(declare-fun m!297411 () Bool)

(assert (=> b!282701 m!297411))

(declare-fun m!297413 () Bool)

(assert (=> b!282701 m!297413))

(assert (=> b!282701 m!297411))

(declare-fun m!297415 () Bool)

(assert (=> b!282701 m!297415))

(declare-fun m!297417 () Bool)

(assert (=> b!282701 m!297417))

(declare-fun m!297419 () Bool)

(assert (=> b!282701 m!297419))

(declare-fun m!297421 () Bool)

(assert (=> b!282701 m!297421))

(declare-fun m!297423 () Bool)

(assert (=> b!282701 m!297423))

(assert (=> b!282701 m!297419))

(declare-fun m!297425 () Bool)

(assert (=> b!282701 m!297425))

(declare-fun m!297427 () Bool)

(assert (=> b!282701 m!297427))

(declare-fun m!297429 () Bool)

(assert (=> b!282698 m!297429))

(declare-fun m!297431 () Bool)

(assert (=> b!282697 m!297431))

(declare-fun m!297433 () Bool)

(assert (=> b!282700 m!297433))

(assert (=> b!282705 m!297415))

(declare-fun m!297435 () Bool)

(assert (=> start!27300 m!297435))

(declare-fun m!297437 () Bool)

(assert (=> start!27300 m!297437))

(declare-fun m!297439 () Bool)

(assert (=> b!282704 m!297439))

(declare-fun m!297441 () Bool)

(assert (=> b!282699 m!297441))

(assert (=> b!282703 m!297419))

(assert (=> b!282703 m!297419))

(declare-fun m!297443 () Bool)

(assert (=> b!282703 m!297443))

(check-sat (not b!282703) (not b!282698) (not b!282701) (not b!282704) (not b!282700) (not b!282699) (not start!27300) (not b!282697))
(check-sat)
