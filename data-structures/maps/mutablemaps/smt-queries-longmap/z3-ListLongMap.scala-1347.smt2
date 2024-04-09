; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26652 () Bool)

(assert start!26652)

(declare-fun b!276523 () Bool)

(declare-fun e!176647 () Bool)

(declare-fun e!176645 () Bool)

(assert (=> b!276523 (= e!176647 e!176645)))

(declare-fun res!140556 () Bool)

(assert (=> b!276523 (=> (not res!140556) (not e!176645))))

(declare-datatypes ((SeekEntryResult!1687 0))(
  ( (MissingZero!1687 (index!8918 (_ BitVec 32))) (Found!1687 (index!8919 (_ BitVec 32))) (Intermediate!1687 (undefined!2499 Bool) (index!8920 (_ BitVec 32)) (x!27148 (_ BitVec 32))) (Undefined!1687) (MissingVacant!1687 (index!8921 (_ BitVec 32))) )
))
(declare-fun lt!137696 () SeekEntryResult!1687)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276523 (= res!140556 (or (= lt!137696 (MissingZero!1687 i!1267)) (= lt!137696 (MissingVacant!1687 i!1267))))))

(declare-datatypes ((array!13738 0))(
  ( (array!13739 (arr!6518 (Array (_ BitVec 32) (_ BitVec 64))) (size!6870 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13738)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13738 (_ BitVec 32)) SeekEntryResult!1687)

(assert (=> b!276523 (= lt!137696 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276524 () Bool)

(declare-fun res!140552 () Bool)

(assert (=> b!276524 (=> (not res!140552) (not e!176647))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276524 (= res!140552 (and (= (size!6870 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6870 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6870 a!3325))))))

(declare-fun b!276525 () Bool)

(declare-fun res!140551 () Bool)

(assert (=> b!276525 (=> (not res!140551) (not e!176647))))

(declare-fun arrayContainsKey!0 (array!13738 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276525 (= res!140551 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276526 () Bool)

(declare-fun res!140553 () Bool)

(assert (=> b!276526 (=> (not res!140553) (not e!176647))))

(declare-datatypes ((List!4347 0))(
  ( (Nil!4344) (Cons!4343 (h!5010 (_ BitVec 64)) (t!9437 List!4347)) )
))
(declare-fun arrayNoDuplicates!0 (array!13738 (_ BitVec 32) List!4347) Bool)

(assert (=> b!276526 (= res!140553 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4344))))

(declare-fun res!140555 () Bool)

(assert (=> start!26652 (=> (not res!140555) (not e!176647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26652 (= res!140555 (validMask!0 mask!3868))))

(assert (=> start!26652 e!176647))

(declare-fun array_inv!4472 (array!13738) Bool)

(assert (=> start!26652 (array_inv!4472 a!3325)))

(assert (=> start!26652 true))

(declare-fun b!276527 () Bool)

(assert (=> b!276527 (= e!176645 false)))

(declare-fun lt!137695 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13738 (_ BitVec 32)) Bool)

(assert (=> b!276527 (= lt!137695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276528 () Bool)

(declare-fun res!140554 () Bool)

(assert (=> b!276528 (=> (not res!140554) (not e!176647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276528 (= res!140554 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26652 res!140555) b!276524))

(assert (= (and b!276524 res!140552) b!276528))

(assert (= (and b!276528 res!140554) b!276526))

(assert (= (and b!276526 res!140553) b!276525))

(assert (= (and b!276525 res!140551) b!276523))

(assert (= (and b!276523 res!140556) b!276527))

(declare-fun m!291867 () Bool)

(assert (=> start!26652 m!291867))

(declare-fun m!291869 () Bool)

(assert (=> start!26652 m!291869))

(declare-fun m!291871 () Bool)

(assert (=> b!276523 m!291871))

(declare-fun m!291873 () Bool)

(assert (=> b!276527 m!291873))

(declare-fun m!291875 () Bool)

(assert (=> b!276525 m!291875))

(declare-fun m!291877 () Bool)

(assert (=> b!276528 m!291877))

(declare-fun m!291879 () Bool)

(assert (=> b!276526 m!291879))

(check-sat (not b!276525) (not b!276528) (not b!276523) (not b!276526) (not start!26652) (not b!276527))
(check-sat)
