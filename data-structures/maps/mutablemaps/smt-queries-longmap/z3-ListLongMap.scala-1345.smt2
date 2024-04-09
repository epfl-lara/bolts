; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26640 () Bool)

(assert start!26640)

(declare-fun b!276406 () Bool)

(declare-fun res!140439 () Bool)

(declare-fun e!176591 () Bool)

(assert (=> b!276406 (=> (not res!140439) (not e!176591))))

(declare-datatypes ((array!13726 0))(
  ( (array!13727 (arr!6512 (Array (_ BitVec 32) (_ BitVec 64))) (size!6864 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13726)

(declare-datatypes ((List!4341 0))(
  ( (Nil!4338) (Cons!4337 (h!5004 (_ BitVec 64)) (t!9431 List!4341)) )
))
(declare-fun arrayNoDuplicates!0 (array!13726 (_ BitVec 32) List!4341) Bool)

(assert (=> b!276406 (= res!140439 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4338))))

(declare-fun b!276407 () Bool)

(declare-fun res!140435 () Bool)

(assert (=> b!276407 (=> (not res!140435) (not e!176591))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13726 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276407 (= res!140435 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!140437 () Bool)

(assert (=> start!26640 (=> (not res!140437) (not e!176591))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26640 (= res!140437 (validMask!0 mask!3868))))

(assert (=> start!26640 e!176591))

(declare-fun array_inv!4466 (array!13726) Bool)

(assert (=> start!26640 (array_inv!4466 a!3325)))

(assert (=> start!26640 true))

(declare-fun b!276408 () Bool)

(declare-fun e!176592 () Bool)

(assert (=> b!276408 (= e!176592 false)))

(declare-fun lt!137669 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13726 (_ BitVec 32)) Bool)

(assert (=> b!276408 (= lt!137669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276409 () Bool)

(declare-fun res!140438 () Bool)

(assert (=> b!276409 (=> (not res!140438) (not e!176591))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276409 (= res!140438 (and (= (size!6864 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6864 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6864 a!3325))))))

(declare-fun b!276410 () Bool)

(assert (=> b!276410 (= e!176591 e!176592)))

(declare-fun res!140434 () Bool)

(assert (=> b!276410 (=> (not res!140434) (not e!176592))))

(declare-datatypes ((SeekEntryResult!1681 0))(
  ( (MissingZero!1681 (index!8894 (_ BitVec 32))) (Found!1681 (index!8895 (_ BitVec 32))) (Intermediate!1681 (undefined!2493 Bool) (index!8896 (_ BitVec 32)) (x!27126 (_ BitVec 32))) (Undefined!1681) (MissingVacant!1681 (index!8897 (_ BitVec 32))) )
))
(declare-fun lt!137668 () SeekEntryResult!1681)

(assert (=> b!276410 (= res!140434 (or (= lt!137668 (MissingZero!1681 i!1267)) (= lt!137668 (MissingVacant!1681 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13726 (_ BitVec 32)) SeekEntryResult!1681)

(assert (=> b!276410 (= lt!137668 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276411 () Bool)

(declare-fun res!140436 () Bool)

(assert (=> b!276411 (=> (not res!140436) (not e!176591))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276411 (= res!140436 (validKeyInArray!0 k0!2581))))

(assert (= (and start!26640 res!140437) b!276409))

(assert (= (and b!276409 res!140438) b!276411))

(assert (= (and b!276411 res!140436) b!276406))

(assert (= (and b!276406 res!140439) b!276407))

(assert (= (and b!276407 res!140435) b!276410))

(assert (= (and b!276410 res!140434) b!276408))

(declare-fun m!291783 () Bool)

(assert (=> b!276410 m!291783))

(declare-fun m!291785 () Bool)

(assert (=> b!276408 m!291785))

(declare-fun m!291787 () Bool)

(assert (=> b!276406 m!291787))

(declare-fun m!291789 () Bool)

(assert (=> start!26640 m!291789))

(declare-fun m!291791 () Bool)

(assert (=> start!26640 m!291791))

(declare-fun m!291793 () Bool)

(assert (=> b!276411 m!291793))

(declare-fun m!291795 () Bool)

(assert (=> b!276407 m!291795))

(check-sat (not b!276410) (not b!276408) (not b!276407) (not start!26640) (not b!276411) (not b!276406))
(check-sat)
