; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26646 () Bool)

(assert start!26646)

(declare-fun b!276465 () Bool)

(declare-fun res!140493 () Bool)

(declare-fun e!176619 () Bool)

(assert (=> b!276465 (=> (not res!140493) (not e!176619))))

(declare-datatypes ((array!13732 0))(
  ( (array!13733 (arr!6515 (Array (_ BitVec 32) (_ BitVec 64))) (size!6867 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13732)

(declare-datatypes ((List!4344 0))(
  ( (Nil!4341) (Cons!4340 (h!5007 (_ BitVec 64)) (t!9434 List!4344)) )
))
(declare-fun arrayNoDuplicates!0 (array!13732 (_ BitVec 32) List!4344) Bool)

(assert (=> b!276465 (= res!140493 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4341))))

(declare-fun b!276466 () Bool)

(declare-fun res!140496 () Bool)

(assert (=> b!276466 (=> (not res!140496) (not e!176619))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!276466 (= res!140496 (and (= (size!6867 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6867 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6867 a!3325))))))

(declare-fun res!140498 () Bool)

(assert (=> start!26646 (=> (not res!140498) (not e!176619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26646 (= res!140498 (validMask!0 mask!3868))))

(assert (=> start!26646 e!176619))

(declare-fun array_inv!4469 (array!13732) Bool)

(assert (=> start!26646 (array_inv!4469 a!3325)))

(assert (=> start!26646 true))

(declare-fun b!276467 () Bool)

(declare-fun res!140494 () Bool)

(assert (=> b!276467 (=> (not res!140494) (not e!176619))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276467 (= res!140494 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276468 () Bool)

(declare-fun e!176620 () Bool)

(assert (=> b!276468 (= e!176619 e!176620)))

(declare-fun res!140495 () Bool)

(assert (=> b!276468 (=> (not res!140495) (not e!176620))))

(declare-datatypes ((SeekEntryResult!1684 0))(
  ( (MissingZero!1684 (index!8906 (_ BitVec 32))) (Found!1684 (index!8907 (_ BitVec 32))) (Intermediate!1684 (undefined!2496 Bool) (index!8908 (_ BitVec 32)) (x!27137 (_ BitVec 32))) (Undefined!1684) (MissingVacant!1684 (index!8909 (_ BitVec 32))) )
))
(declare-fun lt!137681 () SeekEntryResult!1684)

(assert (=> b!276468 (= res!140495 (or (= lt!137681 (MissingZero!1684 i!1267)) (= lt!137681 (MissingVacant!1684 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13732 (_ BitVec 32)) SeekEntryResult!1684)

(assert (=> b!276468 (= lt!137681 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276469 () Bool)

(assert (=> b!276469 (= e!176620 (and (= startIndex!26 i!1267) (bvslt startIndex!26 (bvsub (size!6867 a!3325) #b00000000000000000000000000000001)) (bvslt (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!276470 () Bool)

(declare-fun res!140497 () Bool)

(assert (=> b!276470 (=> (not res!140497) (not e!176620))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13732 (_ BitVec 32)) Bool)

(assert (=> b!276470 (= res!140497 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276471 () Bool)

(declare-fun res!140499 () Bool)

(assert (=> b!276471 (=> (not res!140499) (not e!176619))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276471 (= res!140499 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26646 res!140498) b!276466))

(assert (= (and b!276466 res!140496) b!276471))

(assert (= (and b!276471 res!140499) b!276465))

(assert (= (and b!276465 res!140493) b!276467))

(assert (= (and b!276467 res!140494) b!276468))

(assert (= (and b!276468 res!140495) b!276470))

(assert (= (and b!276470 res!140497) b!276469))

(declare-fun m!291825 () Bool)

(assert (=> b!276467 m!291825))

(declare-fun m!291827 () Bool)

(assert (=> b!276471 m!291827))

(declare-fun m!291829 () Bool)

(assert (=> b!276470 m!291829))

(declare-fun m!291831 () Bool)

(assert (=> start!26646 m!291831))

(declare-fun m!291833 () Bool)

(assert (=> start!26646 m!291833))

(declare-fun m!291835 () Bool)

(assert (=> b!276465 m!291835))

(declare-fun m!291837 () Bool)

(assert (=> b!276468 m!291837))

(check-sat (not b!276468) (not b!276465) (not b!276471) (not b!276470) (not start!26646) (not b!276467))
(check-sat)
