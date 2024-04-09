; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26562 () Bool)

(assert start!26562)

(declare-fun b!275544 () Bool)

(declare-fun res!139576 () Bool)

(declare-fun e!176241 () Bool)

(assert (=> b!275544 (=> (not res!139576) (not e!176241))))

(declare-datatypes ((array!13648 0))(
  ( (array!13649 (arr!6473 (Array (_ BitVec 32) (_ BitVec 64))) (size!6825 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13648)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13648 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!275544 (= res!139576 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun b!275545 () Bool)

(declare-fun res!139581 () Bool)

(declare-fun e!176242 () Bool)

(assert (=> b!275545 (=> (not res!139581) (not e!176242))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13648 (_ BitVec 32)) Bool)

(assert (=> b!275545 (= res!139581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!139580 () Bool)

(assert (=> start!26562 (=> (not res!139580) (not e!176241))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26562 (= res!139580 (validMask!0 mask!3868))))

(assert (=> start!26562 e!176241))

(declare-fun array_inv!4427 (array!13648) Bool)

(assert (=> start!26562 (array_inv!4427 a!3325)))

(assert (=> start!26562 true))

(declare-fun b!275546 () Bool)

(assert (=> b!275546 (= e!176242 (not true))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!275546 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000001 startIndex!26) (array!13649 (store (arr!6473 a!3325) i!1267 k0!2581) (size!6825 a!3325)) mask!3868)))

(declare-datatypes ((Unit!8678 0))(
  ( (Unit!8679) )
))
(declare-fun lt!137453 () Unit!8678)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 (array!13648 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!8678)

(assert (=> b!275546 (= lt!137453 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenStartIndex!0 a!3325 i!1267 k0!2581 (bvadd #b00000000000000000000000000000001 startIndex!26) mask!3868))))

(declare-fun b!275547 () Bool)

(declare-fun res!139574 () Bool)

(assert (=> b!275547 (=> (not res!139574) (not e!176241))))

(assert (=> b!275547 (= res!139574 (and (= (size!6825 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6825 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6825 a!3325))))))

(declare-fun b!275548 () Bool)

(declare-fun res!139579 () Bool)

(assert (=> b!275548 (=> (not res!139579) (not e!176241))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!275548 (= res!139579 (validKeyInArray!0 k0!2581))))

(declare-fun b!275549 () Bool)

(declare-fun res!139573 () Bool)

(assert (=> b!275549 (=> (not res!139573) (not e!176241))))

(declare-datatypes ((List!4302 0))(
  ( (Nil!4299) (Cons!4298 (h!4965 (_ BitVec 64)) (t!9392 List!4302)) )
))
(declare-fun arrayNoDuplicates!0 (array!13648 (_ BitVec 32) List!4302) Bool)

(assert (=> b!275549 (= res!139573 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4299))))

(declare-fun b!275550 () Bool)

(declare-fun res!139578 () Bool)

(assert (=> b!275550 (=> (not res!139578) (not e!176242))))

(assert (=> b!275550 (= res!139578 (and (bvslt startIndex!26 (bvsub (size!6825 a!3325) #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 startIndex!26) #b00000000000000000000000000000000)))))

(declare-fun b!275551 () Bool)

(assert (=> b!275551 (= e!176241 e!176242)))

(declare-fun res!139572 () Bool)

(assert (=> b!275551 (=> (not res!139572) (not e!176242))))

(declare-datatypes ((SeekEntryResult!1642 0))(
  ( (MissingZero!1642 (index!8738 (_ BitVec 32))) (Found!1642 (index!8739 (_ BitVec 32))) (Intermediate!1642 (undefined!2454 Bool) (index!8740 (_ BitVec 32)) (x!26983 (_ BitVec 32))) (Undefined!1642) (MissingVacant!1642 (index!8741 (_ BitVec 32))) )
))
(declare-fun lt!137452 () SeekEntryResult!1642)

(assert (=> b!275551 (= res!139572 (or (= lt!137452 (MissingZero!1642 i!1267)) (= lt!137452 (MissingVacant!1642 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13648 (_ BitVec 32)) SeekEntryResult!1642)

(assert (=> b!275551 (= lt!137452 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!275552 () Bool)

(declare-fun res!139575 () Bool)

(assert (=> b!275552 (=> (not res!139575) (not e!176242))))

(assert (=> b!275552 (= res!139575 (not (= startIndex!26 i!1267)))))

(declare-fun b!275553 () Bool)

(declare-fun res!139577 () Bool)

(assert (=> b!275553 (=> (not res!139577) (not e!176242))))

(assert (=> b!275553 (= res!139577 (not (validKeyInArray!0 (select (arr!6473 a!3325) startIndex!26))))))

(assert (= (and start!26562 res!139580) b!275547))

(assert (= (and b!275547 res!139574) b!275548))

(assert (= (and b!275548 res!139579) b!275549))

(assert (= (and b!275549 res!139573) b!275544))

(assert (= (and b!275544 res!139576) b!275551))

(assert (= (and b!275551 res!139572) b!275545))

(assert (= (and b!275545 res!139581) b!275552))

(assert (= (and b!275552 res!139575) b!275553))

(assert (= (and b!275553 res!139577) b!275550))

(assert (= (and b!275550 res!139578) b!275546))

(declare-fun m!291115 () Bool)

(assert (=> b!275546 m!291115))

(declare-fun m!291117 () Bool)

(assert (=> b!275546 m!291117))

(declare-fun m!291119 () Bool)

(assert (=> b!275546 m!291119))

(declare-fun m!291121 () Bool)

(assert (=> b!275551 m!291121))

(declare-fun m!291123 () Bool)

(assert (=> start!26562 m!291123))

(declare-fun m!291125 () Bool)

(assert (=> start!26562 m!291125))

(declare-fun m!291127 () Bool)

(assert (=> b!275548 m!291127))

(declare-fun m!291129 () Bool)

(assert (=> b!275553 m!291129))

(assert (=> b!275553 m!291129))

(declare-fun m!291131 () Bool)

(assert (=> b!275553 m!291131))

(declare-fun m!291133 () Bool)

(assert (=> b!275549 m!291133))

(declare-fun m!291135 () Bool)

(assert (=> b!275544 m!291135))

(declare-fun m!291137 () Bool)

(assert (=> b!275545 m!291137))

(check-sat (not start!26562) (not b!275549) (not b!275546) (not b!275553) (not b!275544) (not b!275551) (not b!275545) (not b!275548))
(check-sat)
