; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26478 () Bool)

(assert start!26478)

(declare-fun b!274729 () Bool)

(declare-fun e!175850 () Bool)

(assert (=> b!274729 (= e!175850 (not true))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-datatypes ((array!13564 0))(
  ( (array!13565 (arr!6431 (Array (_ BitVec 32) (_ BitVec 64))) (size!6783 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13564)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13564 (_ BitVec 32)) Bool)

(assert (=> b!274729 (arrayForallSeekEntryOrOpenFound!0 startIndex!26 a!3325 mask!3868)))

(declare-datatypes ((Unit!8666 0))(
  ( (Unit!8667) )
))
(declare-fun lt!137162 () Unit!8666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!13564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!8666)

(assert (=> b!274729 (= lt!137162 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3325 mask!3868 #b00000000000000000000000000000000 startIndex!26))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun lt!137163 () array!13564)

(declare-datatypes ((SeekEntryResult!1600 0))(
  ( (MissingZero!1600 (index!8570 (_ BitVec 32))) (Found!1600 (index!8571 (_ BitVec 32))) (Intermediate!1600 (undefined!2412 Bool) (index!8572 (_ BitVec 32)) (x!26829 (_ BitVec 32))) (Undefined!1600) (MissingVacant!1600 (index!8573 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13564 (_ BitVec 32)) SeekEntryResult!1600)

(assert (=> b!274729 (= (seekEntryOrOpen!0 (select (arr!6431 a!3325) startIndex!26) a!3325 mask!3868) (seekEntryOrOpen!0 (select (store (arr!6431 a!3325) i!1267 k0!2581) startIndex!26) lt!137163 mask!3868))))

(declare-fun lt!137161 () Unit!8666)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 (array!13564 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8666)

(assert (=> b!274729 (= lt!137161 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2!0 a!3325 i!1267 k0!2581 startIndex!26 mask!3868))))

(declare-datatypes ((List!4260 0))(
  ( (Nil!4257) (Cons!4256 (h!4923 (_ BitVec 64)) (t!9350 List!4260)) )
))
(declare-fun arrayNoDuplicates!0 (array!13564 (_ BitVec 32) List!4260) Bool)

(assert (=> b!274729 (arrayNoDuplicates!0 lt!137163 #b00000000000000000000000000000000 Nil!4257)))

(declare-fun lt!137164 () Unit!8666)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!13564 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!4260) Unit!8666)

(assert (=> b!274729 (= lt!137164 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3325 k0!2581 i!1267 #b00000000000000000000000000000000 Nil!4257))))

(declare-fun b!274730 () Bool)

(declare-fun res!138757 () Bool)

(declare-fun e!175851 () Bool)

(assert (=> b!274730 (=> (not res!138757) (not e!175851))))

(declare-fun arrayContainsKey!0 (array!13564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!274730 (= res!138757 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!274731 () Bool)

(declare-fun res!138759 () Bool)

(declare-fun e!175852 () Bool)

(assert (=> b!274731 (=> (not res!138759) (not e!175852))))

(assert (=> b!274731 (= res!138759 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!274732 () Bool)

(declare-fun res!138764 () Bool)

(assert (=> b!274732 (=> (not res!138764) (not e!175851))))

(assert (=> b!274732 (= res!138764 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4257))))

(declare-fun b!274733 () Bool)

(declare-fun res!138765 () Bool)

(assert (=> b!274733 (=> (not res!138765) (not e!175851))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!274733 (= res!138765 (validKeyInArray!0 k0!2581))))

(declare-fun b!274734 () Bool)

(declare-fun res!138763 () Bool)

(assert (=> b!274734 (=> (not res!138763) (not e!175851))))

(assert (=> b!274734 (= res!138763 (and (= (size!6783 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6783 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6783 a!3325))))))

(declare-fun b!274736 () Bool)

(declare-fun res!138758 () Bool)

(assert (=> b!274736 (=> (not res!138758) (not e!175850))))

(assert (=> b!274736 (= res!138758 (validKeyInArray!0 (select (arr!6431 a!3325) startIndex!26)))))

(declare-fun b!274737 () Bool)

(assert (=> b!274737 (= e!175851 e!175852)))

(declare-fun res!138762 () Bool)

(assert (=> b!274737 (=> (not res!138762) (not e!175852))))

(declare-fun lt!137165 () SeekEntryResult!1600)

(assert (=> b!274737 (= res!138762 (or (= lt!137165 (MissingZero!1600 i!1267)) (= lt!137165 (MissingVacant!1600 i!1267))))))

(assert (=> b!274737 (= lt!137165 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!274735 () Bool)

(assert (=> b!274735 (= e!175852 e!175850)))

(declare-fun res!138761 () Bool)

(assert (=> b!274735 (=> (not res!138761) (not e!175850))))

(assert (=> b!274735 (= res!138761 (not (= startIndex!26 i!1267)))))

(assert (=> b!274735 (= lt!137163 (array!13565 (store (arr!6431 a!3325) i!1267 k0!2581) (size!6783 a!3325)))))

(declare-fun res!138760 () Bool)

(assert (=> start!26478 (=> (not res!138760) (not e!175851))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26478 (= res!138760 (validMask!0 mask!3868))))

(assert (=> start!26478 e!175851))

(declare-fun array_inv!4385 (array!13564) Bool)

(assert (=> start!26478 (array_inv!4385 a!3325)))

(assert (=> start!26478 true))

(assert (= (and start!26478 res!138760) b!274734))

(assert (= (and b!274734 res!138763) b!274733))

(assert (= (and b!274733 res!138765) b!274732))

(assert (= (and b!274732 res!138764) b!274730))

(assert (= (and b!274730 res!138757) b!274737))

(assert (= (and b!274737 res!138762) b!274731))

(assert (= (and b!274731 res!138759) b!274735))

(assert (= (and b!274735 res!138761) b!274736))

(assert (= (and b!274736 res!138758) b!274729))

(declare-fun m!290407 () Bool)

(assert (=> b!274735 m!290407))

(declare-fun m!290409 () Bool)

(assert (=> b!274730 m!290409))

(declare-fun m!290411 () Bool)

(assert (=> b!274736 m!290411))

(assert (=> b!274736 m!290411))

(declare-fun m!290413 () Bool)

(assert (=> b!274736 m!290413))

(declare-fun m!290415 () Bool)

(assert (=> start!26478 m!290415))

(declare-fun m!290417 () Bool)

(assert (=> start!26478 m!290417))

(declare-fun m!290419 () Bool)

(assert (=> b!274737 m!290419))

(declare-fun m!290421 () Bool)

(assert (=> b!274733 m!290421))

(declare-fun m!290423 () Bool)

(assert (=> b!274732 m!290423))

(declare-fun m!290425 () Bool)

(assert (=> b!274729 m!290425))

(declare-fun m!290427 () Bool)

(assert (=> b!274729 m!290427))

(declare-fun m!290429 () Bool)

(assert (=> b!274729 m!290429))

(assert (=> b!274729 m!290427))

(assert (=> b!274729 m!290407))

(declare-fun m!290431 () Bool)

(assert (=> b!274729 m!290431))

(assert (=> b!274729 m!290411))

(declare-fun m!290433 () Bool)

(assert (=> b!274729 m!290433))

(declare-fun m!290435 () Bool)

(assert (=> b!274729 m!290435))

(declare-fun m!290437 () Bool)

(assert (=> b!274729 m!290437))

(assert (=> b!274729 m!290411))

(declare-fun m!290439 () Bool)

(assert (=> b!274729 m!290439))

(declare-fun m!290441 () Bool)

(assert (=> b!274731 m!290441))

(check-sat (not b!274737) (not b!274729) (not b!274736) (not b!274733) (not b!274730) (not b!274732) (not start!26478) (not b!274731))
(check-sat)
