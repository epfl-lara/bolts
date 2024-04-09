; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26634 () Bool)

(assert start!26634)

(declare-fun b!276352 () Bool)

(declare-fun res!140383 () Bool)

(declare-fun e!176566 () Bool)

(assert (=> b!276352 (=> (not res!140383) (not e!176566))))

(declare-datatypes ((array!13720 0))(
  ( (array!13721 (arr!6509 (Array (_ BitVec 32) (_ BitVec 64))) (size!6861 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13720)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13720 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276352 (= res!140383 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276353 () Bool)

(declare-fun res!140384 () Bool)

(assert (=> b!276353 (=> (not res!140384) (not e!176566))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!276353 (= res!140384 (and (= (size!6861 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6861 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6861 a!3325))))))

(declare-fun b!276354 () Bool)

(declare-fun e!176565 () Bool)

(assert (=> b!276354 (= e!176566 e!176565)))

(declare-fun res!140385 () Bool)

(assert (=> b!276354 (=> (not res!140385) (not e!176565))))

(declare-datatypes ((SeekEntryResult!1678 0))(
  ( (MissingZero!1678 (index!8882 (_ BitVec 32))) (Found!1678 (index!8883 (_ BitVec 32))) (Intermediate!1678 (undefined!2490 Bool) (index!8884 (_ BitVec 32)) (x!27115 (_ BitVec 32))) (Undefined!1678) (MissingVacant!1678 (index!8885 (_ BitVec 32))) )
))
(declare-fun lt!137651 () SeekEntryResult!1678)

(assert (=> b!276354 (= res!140385 (or (= lt!137651 (MissingZero!1678 i!1267)) (= lt!137651 (MissingVacant!1678 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13720 (_ BitVec 32)) SeekEntryResult!1678)

(assert (=> b!276354 (= lt!137651 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!276355 () Bool)

(assert (=> b!276355 (= e!176565 false)))

(declare-fun lt!137650 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13720 (_ BitVec 32)) Bool)

(assert (=> b!276355 (= lt!137650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276356 () Bool)

(declare-fun res!140380 () Bool)

(assert (=> b!276356 (=> (not res!140380) (not e!176566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276356 (= res!140380 (validKeyInArray!0 k0!2581))))

(declare-fun res!140381 () Bool)

(assert (=> start!26634 (=> (not res!140381) (not e!176566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26634 (= res!140381 (validMask!0 mask!3868))))

(assert (=> start!26634 e!176566))

(declare-fun array_inv!4463 (array!13720) Bool)

(assert (=> start!26634 (array_inv!4463 a!3325)))

(assert (=> start!26634 true))

(declare-fun b!276357 () Bool)

(declare-fun res!140382 () Bool)

(assert (=> b!276357 (=> (not res!140382) (not e!176566))))

(declare-datatypes ((List!4338 0))(
  ( (Nil!4335) (Cons!4334 (h!5001 (_ BitVec 64)) (t!9428 List!4338)) )
))
(declare-fun arrayNoDuplicates!0 (array!13720 (_ BitVec 32) List!4338) Bool)

(assert (=> b!276357 (= res!140382 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4335))))

(assert (= (and start!26634 res!140381) b!276353))

(assert (= (and b!276353 res!140384) b!276356))

(assert (= (and b!276356 res!140380) b!276357))

(assert (= (and b!276357 res!140382) b!276352))

(assert (= (and b!276352 res!140383) b!276354))

(assert (= (and b!276354 res!140385) b!276355))

(declare-fun m!291741 () Bool)

(assert (=> b!276356 m!291741))

(declare-fun m!291743 () Bool)

(assert (=> b!276352 m!291743))

(declare-fun m!291745 () Bool)

(assert (=> b!276357 m!291745))

(declare-fun m!291747 () Bool)

(assert (=> start!26634 m!291747))

(declare-fun m!291749 () Bool)

(assert (=> start!26634 m!291749))

(declare-fun m!291751 () Bool)

(assert (=> b!276354 m!291751))

(declare-fun m!291753 () Bool)

(assert (=> b!276355 m!291753))

(check-sat (not b!276352) (not start!26634) (not b!276354) (not b!276357) (not b!276356) (not b!276355))
(check-sat)
