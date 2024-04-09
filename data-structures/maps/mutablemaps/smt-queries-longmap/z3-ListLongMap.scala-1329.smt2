; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26544 () Bool)

(assert start!26544)

(declare-fun b!275362 () Bool)

(declare-fun e!176159 () Bool)

(assert (=> b!275362 (= e!176159 false)))

(declare-fun lt!137399 () Bool)

(declare-datatypes ((array!13630 0))(
  ( (array!13631 (arr!6464 (Array (_ BitVec 32) (_ BitVec 64))) (size!6816 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13630)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13630 (_ BitVec 32)) Bool)

(assert (=> b!275362 (= lt!137399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275363 () Bool)

(declare-fun res!139393 () Bool)

(declare-fun e!176160 () Bool)

(assert (=> b!275363 (=> (not res!139393) (not e!176160))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275363 (= res!139393 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275364 () Bool)

(declare-fun res!139390 () Bool)

(assert (=> b!275364 (=> (not res!139390) (not e!176160))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275364 (= res!139390 (validKeyInArray!0 k0!2581))))

(declare-fun res!139395 () Bool)

(assert (=> start!26544 (=> (not res!139395) (not e!176160))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26544 (= res!139395 (validMask!0 mask!3868))))

(assert (=> start!26544 e!176160))

(declare-fun array_inv!4418 (array!13630) Bool)

(assert (=> start!26544 (array_inv!4418 a!3325)))

(assert (=> start!26544 true))

(declare-fun b!275365 () Bool)

(declare-fun res!139391 () Bool)

(assert (=> b!275365 (=> (not res!139391) (not e!176160))))

(declare-datatypes ((List!4293 0))(
  ( (Nil!4290) (Cons!4289 (h!4956 (_ BitVec 64)) (t!9383 List!4293)) )
))
(declare-fun arrayNoDuplicates!0 (array!13630 (_ BitVec 32) List!4293) Bool)

(assert (=> b!275365 (= res!139391 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4290))))

(declare-fun b!275366 () Bool)

(declare-fun res!139392 () Bool)

(assert (=> b!275366 (=> (not res!139392) (not e!176160))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275366 (= res!139392 (and (= (size!6816 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6816 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6816 a!3325))))))

(declare-fun b!275367 () Bool)

(assert (=> b!275367 (= e!176160 e!176159)))

(declare-fun res!139394 () Bool)

(assert (=> b!275367 (=> (not res!139394) (not e!176159))))

(declare-datatypes ((SeekEntryResult!1633 0))(
  ( (MissingZero!1633 (index!8702 (_ BitVec 32))) (Found!1633 (index!8703 (_ BitVec 32))) (Intermediate!1633 (undefined!2445 Bool) (index!8704 (_ BitVec 32)) (x!26950 (_ BitVec 32))) (Undefined!1633) (MissingVacant!1633 (index!8705 (_ BitVec 32))) )
))
(declare-fun lt!137398 () SeekEntryResult!1633)

(assert (=> b!275367 (= res!139394 (or (= lt!137398 (MissingZero!1633 i!1267)) (= lt!137398 (MissingVacant!1633 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13630 (_ BitVec 32)) SeekEntryResult!1633)

(assert (=> b!275367 (= lt!137398 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(assert (= (and start!26544 res!139395) b!275366))

(assert (= (and b!275366 res!139392) b!275364))

(assert (= (and b!275364 res!139390) b!275365))

(assert (= (and b!275365 res!139391) b!275363))

(assert (= (and b!275363 res!139393) b!275367))

(assert (= (and b!275367 res!139394) b!275362))

(declare-fun m!290979 () Bool)

(assert (=> b!275365 m!290979))

(declare-fun m!290981 () Bool)

(assert (=> b!275363 m!290981))

(declare-fun m!290983 () Bool)

(assert (=> b!275367 m!290983))

(declare-fun m!290985 () Bool)

(assert (=> b!275362 m!290985))

(declare-fun m!290987 () Bool)

(assert (=> start!26544 m!290987))

(declare-fun m!290989 () Bool)

(assert (=> start!26544 m!290989))

(declare-fun m!290991 () Bool)

(assert (=> b!275364 m!290991))

(check-sat (not b!275365) (not start!26544) (not b!275367) (not b!275362) (not b!275363) (not b!275364))
(check-sat)
