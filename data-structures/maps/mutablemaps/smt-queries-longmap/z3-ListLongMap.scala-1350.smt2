; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26670 () Bool)

(assert start!26670)

(declare-fun res!140718 () Bool)

(declare-fun e!176728 () Bool)

(assert (=> start!26670 (=> (not res!140718) (not e!176728))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26670 (= res!140718 (validMask!0 mask!3868))))

(assert (=> start!26670 e!176728))

(declare-datatypes ((array!13756 0))(
  ( (array!13757 (arr!6527 (Array (_ BitVec 32) (_ BitVec 64))) (size!6879 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13756)

(declare-fun array_inv!4481 (array!13756) Bool)

(assert (=> start!26670 (array_inv!4481 a!3325)))

(assert (=> start!26670 true))

(declare-fun b!276685 () Bool)

(declare-fun res!140717 () Bool)

(assert (=> b!276685 (=> (not res!140717) (not e!176728))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276685 (= res!140717 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276686 () Bool)

(declare-fun res!140713 () Bool)

(assert (=> b!276686 (=> (not res!140713) (not e!176728))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276686 (= res!140713 (and (= (size!6879 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6879 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6879 a!3325))))))

(declare-fun b!276687 () Bool)

(declare-fun res!140716 () Bool)

(assert (=> b!276687 (=> (not res!140716) (not e!176728))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276687 (= res!140716 (validKeyInArray!0 k0!2581))))

(declare-fun b!276688 () Bool)

(declare-fun e!176727 () Bool)

(assert (=> b!276688 (= e!176728 e!176727)))

(declare-fun res!140714 () Bool)

(assert (=> b!276688 (=> (not res!140714) (not e!176727))))

(declare-datatypes ((SeekEntryResult!1696 0))(
  ( (MissingZero!1696 (index!8954 (_ BitVec 32))) (Found!1696 (index!8955 (_ BitVec 32))) (Intermediate!1696 (undefined!2508 Bool) (index!8956 (_ BitVec 32)) (x!27181 (_ BitVec 32))) (Undefined!1696) (MissingVacant!1696 (index!8957 (_ BitVec 32))) )
))
(declare-fun lt!137750 () SeekEntryResult!1696)

(assert (=> b!276688 (= res!140714 (or (= lt!137750 (MissingZero!1696 i!1267)) (= lt!137750 (MissingVacant!1696 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13756 (_ BitVec 32)) SeekEntryResult!1696)

(assert (=> b!276688 (= lt!137750 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276689 () Bool)

(declare-fun res!140715 () Bool)

(assert (=> b!276689 (=> (not res!140715) (not e!176728))))

(declare-datatypes ((List!4356 0))(
  ( (Nil!4353) (Cons!4352 (h!5019 (_ BitVec 64)) (t!9446 List!4356)) )
))
(declare-fun arrayNoDuplicates!0 (array!13756 (_ BitVec 32) List!4356) Bool)

(assert (=> b!276689 (= res!140715 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4353))))

(declare-fun b!276690 () Bool)

(assert (=> b!276690 (= e!176727 false)))

(declare-fun lt!137749 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13756 (_ BitVec 32)) Bool)

(assert (=> b!276690 (= lt!137749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26670 res!140718) b!276686))

(assert (= (and b!276686 res!140713) b!276687))

(assert (= (and b!276687 res!140716) b!276689))

(assert (= (and b!276689 res!140715) b!276685))

(assert (= (and b!276685 res!140717) b!276688))

(assert (= (and b!276688 res!140714) b!276690))

(declare-fun m!291993 () Bool)

(assert (=> b!276688 m!291993))

(declare-fun m!291995 () Bool)

(assert (=> b!276690 m!291995))

(declare-fun m!291997 () Bool)

(assert (=> start!26670 m!291997))

(declare-fun m!291999 () Bool)

(assert (=> start!26670 m!291999))

(declare-fun m!292001 () Bool)

(assert (=> b!276687 m!292001))

(declare-fun m!292003 () Bool)

(assert (=> b!276685 m!292003))

(declare-fun m!292005 () Bool)

(assert (=> b!276689 m!292005))

(check-sat (not b!276688) (not b!276685) (not start!26670) (not b!276690) (not b!276687) (not b!276689))
(check-sat)
