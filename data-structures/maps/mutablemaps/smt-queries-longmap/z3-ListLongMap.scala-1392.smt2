; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!27216 () Bool)

(assert start!27216)

(declare-fun res!144670 () Bool)

(declare-fun e!178926 () Bool)

(assert (=> start!27216 (=> (not res!144670) (not e!178926))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27216 (= res!144670 (validMask!0 mask!3868))))

(assert (=> start!27216 e!178926))

(declare-datatypes ((array!14023 0))(
  ( (array!14024 (arr!6653 (Array (_ BitVec 32) (_ BitVec 64))) (size!7005 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!14023)

(declare-fun array_inv!4607 (array!14023) Bool)

(assert (=> start!27216 (array_inv!4607 a!3325)))

(assert (=> start!27216 true))

(declare-fun b!281563 () Bool)

(declare-fun res!144678 () Bool)

(declare-fun e!178925 () Bool)

(assert (=> b!281563 (=> (not res!144678) (not e!178925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14023 (_ BitVec 32)) Bool)

(assert (=> b!281563 (= res!144678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!281564 () Bool)

(declare-fun res!144676 () Bool)

(assert (=> b!281564 (=> (not res!144676) (not e!178926))))

(declare-datatypes ((List!4482 0))(
  ( (Nil!4479) (Cons!4478 (h!5148 (_ BitVec 64)) (t!9572 List!4482)) )
))
(declare-fun arrayNoDuplicates!0 (array!14023 (_ BitVec 32) List!4482) Bool)

(assert (=> b!281564 (= res!144676 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4479))))

(declare-fun b!281565 () Bool)

(declare-fun e!178924 () Bool)

(assert (=> b!281565 (= e!178925 e!178924)))

(declare-fun res!144671 () Bool)

(assert (=> b!281565 (=> (not res!144671) (not e!178924))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!281565 (= res!144671 (not (= startIndex!26 i!1267)))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun lt!139136 () array!14023)

(assert (=> b!281565 (= lt!139136 (array!14024 (store (arr!6653 a!3325) i!1267 k0!2581) (size!7005 a!3325)))))

(declare-fun b!281566 () Bool)

(declare-fun res!144675 () Bool)

(assert (=> b!281566 (=> (not res!144675) (not e!178926))))

(assert (=> b!281566 (= res!144675 (and (= (size!7005 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!7005 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!7005 a!3325))))))

(declare-fun b!281567 () Bool)

(declare-fun res!144677 () Bool)

(assert (=> b!281567 (=> (not res!144677) (not e!178926))))

(declare-fun arrayContainsKey!0 (array!14023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!281567 (= res!144677 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!281568 () Bool)

(assert (=> b!281568 (= e!178924 (not true))))

(declare-datatypes ((SeekEntryResult!1822 0))(
  ( (MissingZero!1822 (index!9458 (_ BitVec 32))) (Found!1822 (index!9459 (_ BitVec 32))) (Intermediate!1822 (undefined!2634 Bool) (index!9460 (_ BitVec 32)) (x!27652 (_ BitVec 32))) (Undefined!1822) (MissingVacant!1822 (index!9461 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14023 (_ BitVec 32)) SeekEntryResult!1822)

(assert (=> b!281568 (= (seekEntryOrOpen!0 (select (arr!6653 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6653 a!3325) i!1267 k0!2581) startIndex!26) lt!139136 mask!3868))))

(declare-datatypes ((Unit!8907 0))(
  ( (Unit!8908) )
))
(declare-fun lt!139138 () Unit!8907)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!14023 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8907)

(assert (=> b!281568 (= lt!139138 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(assert (=> b!281568 (arrayNoDuplicates!0 lt!139136 #b00000000000000000000000000000000 Nil!4479)))

(declare-fun lt!139137 () Unit!8907)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!14023 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4482) Unit!8907)

(assert (=> b!281568 (= lt!139137 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4479))))

(declare-fun b!281569 () Bool)

(declare-fun res!144672 () Bool)

(assert (=> b!281569 (=> (not res!144672) (not e!178924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!281569 (= res!144672 (validKeyInArray!0 (select (arr!6653 a!3325) startIndex!26)))))

(declare-fun b!281570 () Bool)

(assert (=> b!281570 (= e!178926 e!178925)))

(declare-fun res!144674 () Bool)

(assert (=> b!281570 (=> (not res!144674) (not e!178925))))

(declare-fun lt!139139 () SeekEntryResult!1822)

(assert (=> b!281570 (= res!144674 (or (= lt!139139 (MissingZero!1822 i!1267)) (= lt!139139 (MissingVacant!1822 i!1267))))))

(assert (=> b!281570 (= lt!139139 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!281571 () Bool)

(declare-fun res!144673 () Bool)

(assert (=> b!281571 (=> (not res!144673) (not e!178926))))

(assert (=> b!281571 (= res!144673 (validKeyInArray!0 k0!2581))))

(assert (= (and start!27216 res!144670) b!281566))

(assert (= (and b!281566 res!144675) b!281571))

(assert (= (and b!281571 res!144673) b!281564))

(assert (= (and b!281564 res!144676) b!281567))

(assert (= (and b!281567 res!144677) b!281570))

(assert (= (and b!281570 res!144674) b!281563))

(assert (= (and b!281563 res!144678) b!281565))

(assert (= (and b!281565 res!144671) b!281569))

(assert (= (and b!281569 res!144672) b!281568))

(declare-fun m!295941 () Bool)

(assert (=> b!281565 m!295941))

(declare-fun m!295943 () Bool)

(assert (=> b!281570 m!295943))

(declare-fun m!295945 () Bool)

(assert (=> b!281563 m!295945))

(declare-fun m!295947 () Bool)

(assert (=> b!281567 m!295947))

(declare-fun m!295949 () Bool)

(assert (=> b!281564 m!295949))

(declare-fun m!295951 () Bool)

(assert (=> b!281571 m!295951))

(declare-fun m!295953 () Bool)

(assert (=> b!281568 m!295953))

(assert (=> b!281568 m!295941))

(declare-fun m!295955 () Bool)

(assert (=> b!281568 m!295955))

(declare-fun m!295957 () Bool)

(assert (=> b!281568 m!295957))

(assert (=> b!281568 m!295955))

(declare-fun m!295959 () Bool)

(assert (=> b!281568 m!295959))

(declare-fun m!295961 () Bool)

(assert (=> b!281568 m!295961))

(declare-fun m!295963 () Bool)

(assert (=> b!281568 m!295963))

(assert (=> b!281568 m!295953))

(declare-fun m!295965 () Bool)

(assert (=> b!281568 m!295965))

(declare-fun m!295967 () Bool)

(assert (=> start!27216 m!295967))

(declare-fun m!295969 () Bool)

(assert (=> start!27216 m!295969))

(assert (=> b!281569 m!295955))

(assert (=> b!281569 m!295955))

(declare-fun m!295971 () Bool)

(assert (=> b!281569 m!295971))

(check-sat (not b!281568) (not start!27216) (not b!281564) (not b!281571) (not b!281567) (not b!281563) (not b!281570) (not b!281569))
(check-sat)
