; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45012 () Bool)

(assert start!45012)

(declare-fun b!493481 () Bool)

(declare-fun res!296209 () Bool)

(declare-fun e!289774 () Bool)

(assert (=> b!493481 (=> (not res!296209) (not e!289774))))

(declare-datatypes ((array!31917 0))(
  ( (array!31918 (arr!15340 (Array (_ BitVec 32) (_ BitVec 64))) (size!15704 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31917)

(declare-datatypes ((List!9551 0))(
  ( (Nil!9548) (Cons!9547 (h!10415 (_ BitVec 64)) (t!15787 List!9551)) )
))
(declare-fun arrayNoDuplicates!0 (array!31917 (_ BitVec 32) List!9551) Bool)

(assert (=> b!493481 (= res!296209 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9548))))

(declare-fun b!493482 () Bool)

(declare-fun e!289771 () Bool)

(assert (=> b!493482 (= e!289774 (not e!289771))))

(declare-fun res!296207 () Bool)

(assert (=> b!493482 (=> res!296207 e!289771)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3814 0))(
  ( (MissingZero!3814 (index!17435 (_ BitVec 32))) (Found!3814 (index!17436 (_ BitVec 32))) (Intermediate!3814 (undefined!4626 Bool) (index!17437 (_ BitVec 32)) (x!46543 (_ BitVec 32))) (Undefined!3814) (MissingVacant!3814 (index!17438 (_ BitVec 32))) )
))
(declare-fun lt!223278 () SeekEntryResult!3814)

(declare-fun lt!223280 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31917 (_ BitVec 32)) SeekEntryResult!3814)

(assert (=> b!493482 (= res!296207 (= lt!223278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223280 (select (store (arr!15340 a!3235) i!1204 k0!2280) j!176) (array!31918 (store (arr!15340 a!3235) i!1204 k0!2280) (size!15704 a!3235)) mask!3524)))))

(declare-fun lt!223277 () (_ BitVec 32))

(assert (=> b!493482 (= lt!223278 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!223277 (select (arr!15340 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!493482 (= lt!223280 (toIndex!0 (select (store (arr!15340 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!493482 (= lt!223277 (toIndex!0 (select (arr!15340 a!3235) j!176) mask!3524))))

(declare-fun lt!223279 () SeekEntryResult!3814)

(assert (=> b!493482 (= lt!223279 (Found!3814 j!176))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31917 (_ BitVec 32)) SeekEntryResult!3814)

(assert (=> b!493482 (= lt!223279 (seekEntryOrOpen!0 (select (arr!15340 a!3235) j!176) a!3235 mask!3524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31917 (_ BitVec 32)) Bool)

(assert (=> b!493482 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-datatypes ((Unit!14566 0))(
  ( (Unit!14567) )
))
(declare-fun lt!223275 () Unit!14566)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31917 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14566)

(assert (=> b!493482 (= lt!223275 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!493484 () Bool)

(declare-fun res!296210 () Bool)

(assert (=> b!493484 (=> res!296210 e!289771)))

(get-info :version)

(assert (=> b!493484 (= res!296210 (or (not ((_ is Intermediate!3814) lt!223278)) (not (undefined!4626 lt!223278))))))

(declare-fun b!493485 () Bool)

(declare-fun res!296205 () Bool)

(declare-fun e!289772 () Bool)

(assert (=> b!493485 (=> (not res!296205) (not e!289772))))

(declare-fun arrayContainsKey!0 (array!31917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!493485 (= res!296205 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!493486 () Bool)

(assert (=> b!493486 (= e!289772 e!289774)))

(declare-fun res!296203 () Bool)

(assert (=> b!493486 (=> (not res!296203) (not e!289774))))

(declare-fun lt!223276 () SeekEntryResult!3814)

(assert (=> b!493486 (= res!296203 (or (= lt!223276 (MissingZero!3814 i!1204)) (= lt!223276 (MissingVacant!3814 i!1204))))))

(assert (=> b!493486 (= lt!223276 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!493487 () Bool)

(declare-fun res!296208 () Bool)

(assert (=> b!493487 (=> (not res!296208) (not e!289772))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!493487 (= res!296208 (validKeyInArray!0 (select (arr!15340 a!3235) j!176)))))

(declare-fun b!493488 () Bool)

(declare-fun res!296201 () Bool)

(assert (=> b!493488 (=> (not res!296201) (not e!289772))))

(assert (=> b!493488 (= res!296201 (and (= (size!15704 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15704 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15704 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!493483 () Bool)

(declare-fun res!296202 () Bool)

(assert (=> b!493483 (=> (not res!296202) (not e!289774))))

(assert (=> b!493483 (= res!296202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!296204 () Bool)

(assert (=> start!45012 (=> (not res!296204) (not e!289772))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45012 (= res!296204 (validMask!0 mask!3524))))

(assert (=> start!45012 e!289772))

(assert (=> start!45012 true))

(declare-fun array_inv!11114 (array!31917) Bool)

(assert (=> start!45012 (array_inv!11114 a!3235)))

(declare-fun b!493489 () Bool)

(assert (=> b!493489 (= e!289771 true)))

(assert (=> b!493489 (= lt!223279 Undefined!3814)))

(declare-fun b!493490 () Bool)

(declare-fun res!296206 () Bool)

(assert (=> b!493490 (=> (not res!296206) (not e!289772))))

(assert (=> b!493490 (= res!296206 (validKeyInArray!0 k0!2280))))

(assert (= (and start!45012 res!296204) b!493488))

(assert (= (and b!493488 res!296201) b!493487))

(assert (= (and b!493487 res!296208) b!493490))

(assert (= (and b!493490 res!296206) b!493485))

(assert (= (and b!493485 res!296205) b!493486))

(assert (= (and b!493486 res!296203) b!493483))

(assert (= (and b!493483 res!296202) b!493481))

(assert (= (and b!493481 res!296209) b!493482))

(assert (= (and b!493482 (not res!296207)) b!493484))

(assert (= (and b!493484 (not res!296210)) b!493489))

(declare-fun m!474409 () Bool)

(assert (=> b!493487 m!474409))

(assert (=> b!493487 m!474409))

(declare-fun m!474411 () Bool)

(assert (=> b!493487 m!474411))

(declare-fun m!474413 () Bool)

(assert (=> b!493486 m!474413))

(declare-fun m!474415 () Bool)

(assert (=> b!493481 m!474415))

(declare-fun m!474417 () Bool)

(assert (=> start!45012 m!474417))

(declare-fun m!474419 () Bool)

(assert (=> start!45012 m!474419))

(declare-fun m!474421 () Bool)

(assert (=> b!493485 m!474421))

(declare-fun m!474423 () Bool)

(assert (=> b!493490 m!474423))

(declare-fun m!474425 () Bool)

(assert (=> b!493483 m!474425))

(declare-fun m!474427 () Bool)

(assert (=> b!493482 m!474427))

(declare-fun m!474429 () Bool)

(assert (=> b!493482 m!474429))

(declare-fun m!474431 () Bool)

(assert (=> b!493482 m!474431))

(assert (=> b!493482 m!474409))

(assert (=> b!493482 m!474409))

(declare-fun m!474433 () Bool)

(assert (=> b!493482 m!474433))

(declare-fun m!474435 () Bool)

(assert (=> b!493482 m!474435))

(assert (=> b!493482 m!474409))

(declare-fun m!474437 () Bool)

(assert (=> b!493482 m!474437))

(assert (=> b!493482 m!474431))

(declare-fun m!474439 () Bool)

(assert (=> b!493482 m!474439))

(assert (=> b!493482 m!474409))

(declare-fun m!474441 () Bool)

(assert (=> b!493482 m!474441))

(assert (=> b!493482 m!474431))

(declare-fun m!474443 () Bool)

(assert (=> b!493482 m!474443))

(check-sat (not b!493482) (not b!493483) (not b!493487) (not b!493490) (not b!493486) (not b!493481) (not b!493485) (not start!45012))
(check-sat)
