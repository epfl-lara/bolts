; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26666 () Bool)

(assert start!26666)

(declare-fun b!276649 () Bool)

(declare-fun e!176710 () Bool)

(declare-fun e!176708 () Bool)

(assert (=> b!276649 (= e!176710 e!176708)))

(declare-fun res!140681 () Bool)

(assert (=> b!276649 (=> (not res!140681) (not e!176708))))

(declare-datatypes ((SeekEntryResult!1694 0))(
  ( (MissingZero!1694 (index!8946 (_ BitVec 32))) (Found!1694 (index!8947 (_ BitVec 32))) (Intermediate!1694 (undefined!2506 Bool) (index!8948 (_ BitVec 32)) (x!27171 (_ BitVec 32))) (Undefined!1694) (MissingVacant!1694 (index!8949 (_ BitVec 32))) )
))
(declare-fun lt!137738 () SeekEntryResult!1694)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!276649 (= res!140681 (or (= lt!137738 (MissingZero!1694 i!1267)) (= lt!137738 (MissingVacant!1694 i!1267))))))

(declare-datatypes ((array!13752 0))(
  ( (array!13753 (arr!6525 (Array (_ BitVec 32) (_ BitVec 64))) (size!6877 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13752)

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13752 (_ BitVec 32)) SeekEntryResult!1694)

(assert (=> b!276649 (= lt!137738 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!276650 () Bool)

(declare-fun res!140677 () Bool)

(assert (=> b!276650 (=> (not res!140677) (not e!176710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!276650 (= res!140677 (validKeyInArray!0 k!2581))))

(declare-fun res!140680 () Bool)

(assert (=> start!26666 (=> (not res!140680) (not e!176710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26666 (= res!140680 (validMask!0 mask!3868))))

(assert (=> start!26666 e!176710))

(declare-fun array_inv!4479 (array!13752) Bool)

(assert (=> start!26666 (array_inv!4479 a!3325)))

(assert (=> start!26666 true))

(declare-fun b!276651 () Bool)

(assert (=> b!276651 (= e!176708 false)))

(declare-fun lt!137737 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13752 (_ BitVec 32)) Bool)

(assert (=> b!276651 (= lt!137737 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!276652 () Bool)

(declare-fun res!140679 () Bool)

(assert (=> b!276652 (=> (not res!140679) (not e!176710))))

(declare-datatypes ((List!4354 0))(
  ( (Nil!4351) (Cons!4350 (h!5017 (_ BitVec 64)) (t!9444 List!4354)) )
))
(declare-fun arrayNoDuplicates!0 (array!13752 (_ BitVec 32) List!4354) Bool)

(assert (=> b!276652 (= res!140679 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4351))))

(declare-fun b!276653 () Bool)

(declare-fun res!140678 () Bool)

(assert (=> b!276653 (=> (not res!140678) (not e!176710))))

(declare-fun arrayContainsKey!0 (array!13752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!276653 (= res!140678 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!276654 () Bool)

(declare-fun res!140682 () Bool)

(assert (=> b!276654 (=> (not res!140682) (not e!176710))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!276654 (= res!140682 (and (= (size!6877 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6877 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6877 a!3325))))))

(assert (= (and start!26666 res!140680) b!276654))

(assert (= (and b!276654 res!140682) b!276650))

(assert (= (and b!276650 res!140677) b!276652))

(assert (= (and b!276652 res!140679) b!276653))

(assert (= (and b!276653 res!140678) b!276649))

(assert (= (and b!276649 res!140681) b!276651))

(declare-fun m!291965 () Bool)

(assert (=> b!276650 m!291965))

(declare-fun m!291967 () Bool)

(assert (=> b!276653 m!291967))

(declare-fun m!291969 () Bool)

(assert (=> b!276649 m!291969))

(declare-fun m!291971 () Bool)

(assert (=> start!26666 m!291971))

(declare-fun m!291973 () Bool)

(assert (=> start!26666 m!291973))

(declare-fun m!291975 () Bool)

(assert (=> b!276652 m!291975))

(declare-fun m!291977 () Bool)

(assert (=> b!276651 m!291977))

(push 1)

(assert (not start!26666))

(assert (not b!276652))

(assert (not b!276653))

