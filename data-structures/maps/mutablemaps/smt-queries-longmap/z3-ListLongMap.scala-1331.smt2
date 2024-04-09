; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26556 () Bool)

(assert start!26556)

(declare-fun b!275470 () Bool)

(declare-fun e!176213 () Bool)

(declare-fun e!176214 () Bool)

(assert (=> b!275470 (= e!176213 e!176214)))

(declare-fun res!139503 () Bool)

(assert (=> b!275470 (=> (not res!139503) (not e!176214))))

(declare-datatypes ((SeekEntryResult!1639 0))(
  ( (MissingZero!1639 (index!8726 (_ BitVec 32))) (Found!1639 (index!8727 (_ BitVec 32))) (Intermediate!1639 (undefined!2451 Bool) (index!8728 (_ BitVec 32)) (x!26972 (_ BitVec 32))) (Undefined!1639) (MissingVacant!1639 (index!8729 (_ BitVec 32))) )
))
(declare-fun lt!137434 () SeekEntryResult!1639)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275470 (= res!139503 (or (= lt!137434 (MissingZero!1639 i!1267)) (= lt!137434 (MissingVacant!1639 i!1267))))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-datatypes ((array!13642 0))(
  ( (array!13643 (arr!6470 (Array (_ BitVec 32) (_ BitVec 64))) (size!6822 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13642)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13642 (_ BitVec 32)) SeekEntryResult!1639)

(assert (=> b!275470 (= lt!137434 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275471 () Bool)

(declare-fun res!139501 () Bool)

(assert (=> b!275471 (=> (not res!139501) (not e!176213))))

(declare-datatypes ((List!4299 0))(
  ( (Nil!4296) (Cons!4295 (h!4962 (_ BitVec 64)) (t!9389 List!4299)) )
))
(declare-fun arrayNoDuplicates!0 (array!13642 (_ BitVec 32) List!4299) Bool)

(assert (=> b!275471 (= res!139501 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4296))))

(declare-fun res!139498 () Bool)

(assert (=> start!26556 (=> (not res!139498) (not e!176213))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26556 (= res!139498 (validMask!0 mask!3868))))

(assert (=> start!26556 e!176213))

(declare-fun array_inv!4424 (array!13642) Bool)

(assert (=> start!26556 (array_inv!4424 a!3325)))

(assert (=> start!26556 true))

(declare-fun b!275472 () Bool)

(declare-fun res!139499 () Bool)

(assert (=> b!275472 (=> (not res!139499) (not e!176213))))

(declare-fun arrayContainsKey!0 (array!13642 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275472 (= res!139499 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275473 () Bool)

(declare-fun res!139500 () Bool)

(assert (=> b!275473 (=> (not res!139500) (not e!176213))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275473 (= res!139500 (and (= (size!6822 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6822 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6822 a!3325))))))

(declare-fun b!275474 () Bool)

(declare-fun res!139502 () Bool)

(assert (=> b!275474 (=> (not res!139502) (not e!176213))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275474 (= res!139502 (validKeyInArray!0 k0!2581))))

(declare-fun b!275475 () Bool)

(assert (=> b!275475 (= e!176214 false)))

(declare-fun lt!137435 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13642 (_ BitVec 32)) Bool)

(assert (=> b!275475 (= lt!137435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26556 res!139498) b!275473))

(assert (= (and b!275473 res!139500) b!275474))

(assert (= (and b!275474 res!139502) b!275471))

(assert (= (and b!275471 res!139501) b!275472))

(assert (= (and b!275472 res!139499) b!275470))

(assert (= (and b!275470 res!139503) b!275475))

(declare-fun m!291063 () Bool)

(assert (=> b!275470 m!291063))

(declare-fun m!291065 () Bool)

(assert (=> b!275471 m!291065))

(declare-fun m!291067 () Bool)

(assert (=> b!275475 m!291067))

(declare-fun m!291069 () Bool)

(assert (=> b!275472 m!291069))

(declare-fun m!291071 () Bool)

(assert (=> b!275474 m!291071))

(declare-fun m!291073 () Bool)

(assert (=> start!26556 m!291073))

(declare-fun m!291075 () Bool)

(assert (=> start!26556 m!291075))

(check-sat (not b!275474) (not start!26556) (not b!275470) (not b!275472) (not b!275471) (not b!275475))
(check-sat)
