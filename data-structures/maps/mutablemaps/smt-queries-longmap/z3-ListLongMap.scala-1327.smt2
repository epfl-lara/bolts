; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26532 () Bool)

(assert start!26532)

(declare-fun res!139282 () Bool)

(declare-fun e!176106 () Bool)

(assert (=> start!26532 (=> (not res!139282) (not e!176106))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26532 (= res!139282 (validMask!0 mask!3868))))

(assert (=> start!26532 e!176106))

(declare-datatypes ((array!13618 0))(
  ( (array!13619 (arr!6458 (Array (_ BitVec 32) (_ BitVec 64))) (size!6810 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13618)

(declare-fun array_inv!4412 (array!13618) Bool)

(assert (=> start!26532 (array_inv!4412 a!3325)))

(assert (=> start!26532 true))

(declare-fun b!275254 () Bool)

(declare-fun res!139287 () Bool)

(assert (=> b!275254 (=> (not res!139287) (not e!176106))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13618 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275254 (= res!139287 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275255 () Bool)

(declare-fun e!176105 () Bool)

(assert (=> b!275255 (= e!176105 false)))

(declare-fun lt!137363 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13618 (_ BitVec 32)) Bool)

(assert (=> b!275255 (= lt!137363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275256 () Bool)

(declare-fun res!139284 () Bool)

(assert (=> b!275256 (=> (not res!139284) (not e!176106))))

(declare-datatypes ((List!4287 0))(
  ( (Nil!4284) (Cons!4283 (h!4950 (_ BitVec 64)) (t!9377 List!4287)) )
))
(declare-fun arrayNoDuplicates!0 (array!13618 (_ BitVec 32) List!4287) Bool)

(assert (=> b!275256 (= res!139284 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4284))))

(declare-fun b!275257 () Bool)

(assert (=> b!275257 (= e!176106 e!176105)))

(declare-fun res!139286 () Bool)

(assert (=> b!275257 (=> (not res!139286) (not e!176105))))

(declare-datatypes ((SeekEntryResult!1627 0))(
  ( (MissingZero!1627 (index!8678 (_ BitVec 32))) (Found!1627 (index!8679 (_ BitVec 32))) (Intermediate!1627 (undefined!2439 Bool) (index!8680 (_ BitVec 32)) (x!26928 (_ BitVec 32))) (Undefined!1627) (MissingVacant!1627 (index!8681 (_ BitVec 32))) )
))
(declare-fun lt!137362 () SeekEntryResult!1627)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!275257 (= res!139286 (or (= lt!137362 (MissingZero!1627 i!1267)) (= lt!137362 (MissingVacant!1627 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13618 (_ BitVec 32)) SeekEntryResult!1627)

(assert (=> b!275257 (= lt!137362 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275258 () Bool)

(declare-fun res!139283 () Bool)

(assert (=> b!275258 (=> (not res!139283) (not e!176106))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275258 (= res!139283 (validKeyInArray!0 k0!2581))))

(declare-fun b!275259 () Bool)

(declare-fun res!139285 () Bool)

(assert (=> b!275259 (=> (not res!139285) (not e!176106))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275259 (= res!139285 (and (= (size!6810 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6810 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6810 a!3325))))))

(assert (= (and start!26532 res!139282) b!275259))

(assert (= (and b!275259 res!139285) b!275258))

(assert (= (and b!275258 res!139283) b!275256))

(assert (= (and b!275256 res!139284) b!275254))

(assert (= (and b!275254 res!139287) b!275257))

(assert (= (and b!275257 res!139286) b!275255))

(declare-fun m!290895 () Bool)

(assert (=> start!26532 m!290895))

(declare-fun m!290897 () Bool)

(assert (=> start!26532 m!290897))

(declare-fun m!290899 () Bool)

(assert (=> b!275255 m!290899))

(declare-fun m!290901 () Bool)

(assert (=> b!275256 m!290901))

(declare-fun m!290903 () Bool)

(assert (=> b!275257 m!290903))

(declare-fun m!290905 () Bool)

(assert (=> b!275254 m!290905))

(declare-fun m!290907 () Bool)

(assert (=> b!275258 m!290907))

(check-sat (not b!275254) (not b!275257) (not b!275256) (not b!275255) (not b!275258) (not start!26532))
(check-sat)
