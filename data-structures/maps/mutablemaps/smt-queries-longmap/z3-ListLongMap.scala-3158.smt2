; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!44532 () Bool)

(assert start!44532)

(declare-fun b!488481 () Bool)

(declare-fun e!287366 () Bool)

(assert (=> b!488481 (= e!287366 (not true))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31602 0))(
  ( (array!31603 (arr!15187 (Array (_ BitVec 32) (_ BitVec 64))) (size!15551 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31602)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!220455 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!488481 (= lt!220455 (toIndex!0 (select (store (arr!15187 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(declare-fun e!287367 () Bool)

(assert (=> b!488481 e!287367))

(declare-fun res!291680 () Bool)

(assert (=> b!488481 (=> (not res!291680) (not e!287367))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31602 (_ BitVec 32)) Bool)

(assert (=> b!488481 (= res!291680 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14260 0))(
  ( (Unit!14261) )
))
(declare-fun lt!220456 () Unit!14260)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31602 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14260)

(assert (=> b!488481 (= lt!220456 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488482 () Bool)

(declare-fun res!291678 () Bool)

(declare-fun e!287365 () Bool)

(assert (=> b!488482 (=> (not res!291678) (not e!287365))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488482 (= res!291678 (validKeyInArray!0 (select (arr!15187 a!3235) j!176)))))

(declare-fun b!488483 () Bool)

(declare-fun res!291682 () Bool)

(assert (=> b!488483 (=> (not res!291682) (not e!287366))))

(assert (=> b!488483 (= res!291682 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488484 () Bool)

(declare-fun res!291679 () Bool)

(assert (=> b!488484 (=> (not res!291679) (not e!287366))))

(declare-datatypes ((List!9398 0))(
  ( (Nil!9395) (Cons!9394 (h!10253 (_ BitVec 64)) (t!15634 List!9398)) )
))
(declare-fun arrayNoDuplicates!0 (array!31602 (_ BitVec 32) List!9398) Bool)

(assert (=> b!488484 (= res!291679 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9395))))

(declare-fun res!291684 () Bool)

(assert (=> start!44532 (=> (not res!291684) (not e!287365))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44532 (= res!291684 (validMask!0 mask!3524))))

(assert (=> start!44532 e!287365))

(assert (=> start!44532 true))

(declare-fun array_inv!10961 (array!31602) Bool)

(assert (=> start!44532 (array_inv!10961 a!3235)))

(declare-fun b!488485 () Bool)

(declare-fun res!291685 () Bool)

(assert (=> b!488485 (=> (not res!291685) (not e!287365))))

(assert (=> b!488485 (= res!291685 (and (= (size!15551 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15551 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15551 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488486 () Bool)

(assert (=> b!488486 (= e!287365 e!287366)))

(declare-fun res!291681 () Bool)

(assert (=> b!488486 (=> (not res!291681) (not e!287366))))

(declare-datatypes ((SeekEntryResult!3661 0))(
  ( (MissingZero!3661 (index!16823 (_ BitVec 32))) (Found!3661 (index!16824 (_ BitVec 32))) (Intermediate!3661 (undefined!4473 Bool) (index!16825 (_ BitVec 32)) (x!45967 (_ BitVec 32))) (Undefined!3661) (MissingVacant!3661 (index!16826 (_ BitVec 32))) )
))
(declare-fun lt!220457 () SeekEntryResult!3661)

(assert (=> b!488486 (= res!291681 (or (= lt!220457 (MissingZero!3661 i!1204)) (= lt!220457 (MissingVacant!3661 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31602 (_ BitVec 32)) SeekEntryResult!3661)

(assert (=> b!488486 (= lt!220457 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!488487 () Bool)

(declare-fun res!291686 () Bool)

(assert (=> b!488487 (=> (not res!291686) (not e!287365))))

(declare-fun arrayContainsKey!0 (array!31602 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488487 (= res!291686 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488488 () Bool)

(declare-fun res!291683 () Bool)

(assert (=> b!488488 (=> (not res!291683) (not e!287365))))

(assert (=> b!488488 (= res!291683 (validKeyInArray!0 k0!2280))))

(declare-fun b!488489 () Bool)

(assert (=> b!488489 (= e!287367 (= (seekEntryOrOpen!0 (select (arr!15187 a!3235) j!176) a!3235 mask!3524) (Found!3661 j!176)))))

(assert (= (and start!44532 res!291684) b!488485))

(assert (= (and b!488485 res!291685) b!488482))

(assert (= (and b!488482 res!291678) b!488488))

(assert (= (and b!488488 res!291683) b!488487))

(assert (= (and b!488487 res!291686) b!488486))

(assert (= (and b!488486 res!291681) b!488483))

(assert (= (and b!488483 res!291682) b!488484))

(assert (= (and b!488484 res!291679) b!488481))

(assert (= (and b!488481 res!291680) b!488489))

(declare-fun m!468229 () Bool)

(assert (=> b!488484 m!468229))

(declare-fun m!468231 () Bool)

(assert (=> b!488481 m!468231))

(declare-fun m!468233 () Bool)

(assert (=> b!488481 m!468233))

(declare-fun m!468235 () Bool)

(assert (=> b!488481 m!468235))

(declare-fun m!468237 () Bool)

(assert (=> b!488481 m!468237))

(assert (=> b!488481 m!468235))

(declare-fun m!468239 () Bool)

(assert (=> b!488481 m!468239))

(declare-fun m!468241 () Bool)

(assert (=> b!488483 m!468241))

(declare-fun m!468243 () Bool)

(assert (=> b!488488 m!468243))

(declare-fun m!468245 () Bool)

(assert (=> b!488489 m!468245))

(assert (=> b!488489 m!468245))

(declare-fun m!468247 () Bool)

(assert (=> b!488489 m!468247))

(assert (=> b!488482 m!468245))

(assert (=> b!488482 m!468245))

(declare-fun m!468249 () Bool)

(assert (=> b!488482 m!468249))

(declare-fun m!468251 () Bool)

(assert (=> b!488487 m!468251))

(declare-fun m!468253 () Bool)

(assert (=> b!488486 m!468253))

(declare-fun m!468255 () Bool)

(assert (=> start!44532 m!468255))

(declare-fun m!468257 () Bool)

(assert (=> start!44532 m!468257))

(check-sat (not b!488489) (not b!488482) (not start!44532) (not b!488488) (not b!488487) (not b!488483) (not b!488486) (not b!488484) (not b!488481))
(check-sat)
