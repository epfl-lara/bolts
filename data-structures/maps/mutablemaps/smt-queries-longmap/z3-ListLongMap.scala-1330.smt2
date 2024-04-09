; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26550 () Bool)

(assert start!26550)

(declare-fun b!275416 () Bool)

(declare-fun res!139448 () Bool)

(declare-fun e!176188 () Bool)

(assert (=> b!275416 (=> (not res!139448) (not e!176188))))

(declare-datatypes ((array!13636 0))(
  ( (array!13637 (arr!6467 (Array (_ BitVec 32) (_ BitVec 64))) (size!6819 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13636)

(declare-datatypes ((List!4296 0))(
  ( (Nil!4293) (Cons!4292 (h!4959 (_ BitVec 64)) (t!9386 List!4296)) )
))
(declare-fun arrayNoDuplicates!0 (array!13636 (_ BitVec 32) List!4296) Bool)

(assert (=> b!275416 (= res!139448 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4293))))

(declare-fun b!275417 () Bool)

(declare-fun res!139449 () Bool)

(assert (=> b!275417 (=> (not res!139449) (not e!176188))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun mask!3868 () (_ BitVec 32))

(assert (=> b!275417 (= res!139449 (and (= (size!6819 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6819 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6819 a!3325))))))

(declare-fun b!275418 () Bool)

(declare-fun res!139445 () Bool)

(assert (=> b!275418 (=> (not res!139445) (not e!176188))))

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275418 (= res!139445 (validKeyInArray!0 k0!2581))))

(declare-fun res!139444 () Bool)

(assert (=> start!26550 (=> (not res!139444) (not e!176188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26550 (= res!139444 (validMask!0 mask!3868))))

(assert (=> start!26550 e!176188))

(declare-fun array_inv!4421 (array!13636) Bool)

(assert (=> start!26550 (array_inv!4421 a!3325)))

(assert (=> start!26550 true))

(declare-fun b!275419 () Bool)

(declare-fun res!139447 () Bool)

(assert (=> b!275419 (=> (not res!139447) (not e!176188))))

(declare-fun arrayContainsKey!0 (array!13636 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275419 (= res!139447 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275420 () Bool)

(declare-fun e!176186 () Bool)

(assert (=> b!275420 (= e!176188 e!176186)))

(declare-fun res!139446 () Bool)

(assert (=> b!275420 (=> (not res!139446) (not e!176186))))

(declare-datatypes ((SeekEntryResult!1636 0))(
  ( (MissingZero!1636 (index!8714 (_ BitVec 32))) (Found!1636 (index!8715 (_ BitVec 32))) (Intermediate!1636 (undefined!2448 Bool) (index!8716 (_ BitVec 32)) (x!26961 (_ BitVec 32))) (Undefined!1636) (MissingVacant!1636 (index!8717 (_ BitVec 32))) )
))
(declare-fun lt!137416 () SeekEntryResult!1636)

(assert (=> b!275420 (= res!139446 (or (= lt!137416 (MissingZero!1636 i!1267)) (= lt!137416 (MissingVacant!1636 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13636 (_ BitVec 32)) SeekEntryResult!1636)

(assert (=> b!275420 (= lt!137416 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275421 () Bool)

(assert (=> b!275421 (= e!176186 false)))

(declare-fun lt!137417 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13636 (_ BitVec 32)) Bool)

(assert (=> b!275421 (= lt!137417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(assert (= (and start!26550 res!139444) b!275417))

(assert (= (and b!275417 res!139449) b!275418))

(assert (= (and b!275418 res!139445) b!275416))

(assert (= (and b!275416 res!139448) b!275419))

(assert (= (and b!275419 res!139447) b!275420))

(assert (= (and b!275420 res!139446) b!275421))

(declare-fun m!291021 () Bool)

(assert (=> b!275416 m!291021))

(declare-fun m!291023 () Bool)

(assert (=> start!26550 m!291023))

(declare-fun m!291025 () Bool)

(assert (=> start!26550 m!291025))

(declare-fun m!291027 () Bool)

(assert (=> b!275419 m!291027))

(declare-fun m!291029 () Bool)

(assert (=> b!275421 m!291029))

(declare-fun m!291031 () Bool)

(assert (=> b!275420 m!291031))

(declare-fun m!291033 () Bool)

(assert (=> b!275418 m!291033))

(check-sat (not b!275420) (not b!275416) (not start!26550) (not b!275421) (not b!275418) (not b!275419))
(check-sat)
