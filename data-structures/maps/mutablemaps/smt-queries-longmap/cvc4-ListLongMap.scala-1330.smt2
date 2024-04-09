; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26552 () Bool)

(assert start!26552)

(declare-fun b!275434 () Bool)

(declare-fun e!176196 () Bool)

(assert (=> b!275434 (= e!176196 false)))

(declare-fun lt!137422 () Bool)

(declare-datatypes ((array!13638 0))(
  ( (array!13639 (arr!6468 (Array (_ BitVec 32) (_ BitVec 64))) (size!6820 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13638)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13638 (_ BitVec 32)) Bool)

(assert (=> b!275434 (= lt!137422 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!275435 () Bool)

(declare-fun res!139465 () Bool)

(declare-fun e!176197 () Bool)

(assert (=> b!275435 (=> (not res!139465) (not e!176197))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13638 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275435 (= res!139465 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275436 () Bool)

(declare-fun res!139462 () Bool)

(assert (=> b!275436 (=> (not res!139462) (not e!176197))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275436 (= res!139462 (and (= (size!6820 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6820 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6820 a!3325))))))

(declare-fun b!275437 () Bool)

(assert (=> b!275437 (= e!176197 e!176196)))

(declare-fun res!139464 () Bool)

(assert (=> b!275437 (=> (not res!139464) (not e!176196))))

(declare-datatypes ((SeekEntryResult!1637 0))(
  ( (MissingZero!1637 (index!8718 (_ BitVec 32))) (Found!1637 (index!8719 (_ BitVec 32))) (Intermediate!1637 (undefined!2449 Bool) (index!8720 (_ BitVec 32)) (x!26962 (_ BitVec 32))) (Undefined!1637) (MissingVacant!1637 (index!8721 (_ BitVec 32))) )
))
(declare-fun lt!137423 () SeekEntryResult!1637)

(assert (=> b!275437 (= res!139464 (or (= lt!137423 (MissingZero!1637 i!1267)) (= lt!137423 (MissingVacant!1637 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13638 (_ BitVec 32)) SeekEntryResult!1637)

(assert (=> b!275437 (= lt!137423 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!275438 () Bool)

(declare-fun res!139463 () Bool)

(assert (=> b!275438 (=> (not res!139463) (not e!176197))))

(declare-datatypes ((List!4297 0))(
  ( (Nil!4294) (Cons!4293 (h!4960 (_ BitVec 64)) (t!9387 List!4297)) )
))
(declare-fun arrayNoDuplicates!0 (array!13638 (_ BitVec 32) List!4297) Bool)

(assert (=> b!275438 (= res!139463 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4294))))

(declare-fun b!275439 () Bool)

(declare-fun res!139466 () Bool)

(assert (=> b!275439 (=> (not res!139466) (not e!176197))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275439 (= res!139466 (validKeyInArray!0 k!2581))))

(declare-fun res!139467 () Bool)

(assert (=> start!26552 (=> (not res!139467) (not e!176197))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26552 (= res!139467 (validMask!0 mask!3868))))

(assert (=> start!26552 e!176197))

(declare-fun array_inv!4422 (array!13638) Bool)

(assert (=> start!26552 (array_inv!4422 a!3325)))

(assert (=> start!26552 true))

(assert (= (and start!26552 res!139467) b!275436))

(assert (= (and b!275436 res!139462) b!275439))

(assert (= (and b!275439 res!139466) b!275438))

(assert (= (and b!275438 res!139463) b!275435))

(assert (= (and b!275435 res!139465) b!275437))

(assert (= (and b!275437 res!139464) b!275434))

(declare-fun m!291035 () Bool)

(assert (=> b!275438 m!291035))

(declare-fun m!291037 () Bool)

(assert (=> b!275437 m!291037))

(declare-fun m!291039 () Bool)

(assert (=> start!26552 m!291039))

(declare-fun m!291041 () Bool)

(assert (=> start!26552 m!291041))

(declare-fun m!291043 () Bool)

(assert (=> b!275439 m!291043))

(declare-fun m!291045 () Bool)

(assert (=> b!275435 m!291045))

(declare-fun m!291047 () Bool)

(assert (=> b!275434 m!291047))

(push 1)

(assert (not b!275437))

(assert (not b!275439))

(assert (not b!275435))

(assert (not b!275434))

(assert (not b!275438))

