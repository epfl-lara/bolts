; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45852 () Bool)

(assert start!45852)

(declare-fun b!507481 () Bool)

(declare-fun res!308597 () Bool)

(declare-fun e!296985 () Bool)

(assert (=> b!507481 (=> (not res!308597) (not e!296985))))

(declare-datatypes ((array!32568 0))(
  ( (array!32569 (arr!15661 (Array (_ BitVec 32) (_ BitVec 64))) (size!16025 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32568)

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32568 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!507481 (= res!308597 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!296989 () Bool)

(declare-fun b!507482 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4135 0))(
  ( (MissingZero!4135 (index!18728 (_ BitVec 32))) (Found!4135 (index!18729 (_ BitVec 32))) (Intermediate!4135 (undefined!4947 Bool) (index!18730 (_ BitVec 32)) (x!47747 (_ BitVec 32))) (Undefined!4135) (MissingVacant!4135 (index!18731 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32568 (_ BitVec 32)) SeekEntryResult!4135)

(assert (=> b!507482 (= e!296989 (= (seekEntryOrOpen!0 (select (arr!15661 a!3235) j!176) a!3235 mask!3524) (Found!4135 j!176)))))

(declare-fun b!507483 () Bool)

(declare-fun res!308594 () Bool)

(assert (=> b!507483 (=> (not res!308594) (not e!296985))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!507483 (= res!308594 (and (= (size!16025 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16025 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16025 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!507484 () Bool)

(declare-fun e!296984 () Bool)

(declare-fun e!296986 () Bool)

(assert (=> b!507484 (= e!296984 (not e!296986))))

(declare-fun res!308592 () Bool)

(assert (=> b!507484 (=> res!308592 e!296986)))

(declare-fun lt!231886 () array!32568)

(declare-fun lt!231880 () SeekEntryResult!4135)

(declare-fun lt!231883 () (_ BitVec 32))

(declare-fun lt!231887 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32568 (_ BitVec 32)) SeekEntryResult!4135)

(assert (=> b!507484 (= res!308592 (= lt!231880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231883 lt!231887 lt!231886 mask!3524)))))

(declare-fun lt!231885 () (_ BitVec 32))

(assert (=> b!507484 (= lt!231880 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!231885 (select (arr!15661 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!507484 (= lt!231883 (toIndex!0 lt!231887 mask!3524))))

(assert (=> b!507484 (= lt!231887 (select (store (arr!15661 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!507484 (= lt!231885 (toIndex!0 (select (arr!15661 a!3235) j!176) mask!3524))))

(assert (=> b!507484 (= lt!231886 (array!32569 (store (arr!15661 a!3235) i!1204 k0!2280) (size!16025 a!3235)))))

(assert (=> b!507484 e!296989))

(declare-fun res!308590 () Bool)

(assert (=> b!507484 (=> (not res!308590) (not e!296989))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32568 (_ BitVec 32)) Bool)

(assert (=> b!507484 (= res!308590 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15550 0))(
  ( (Unit!15551) )
))
(declare-fun lt!231884 () Unit!15550)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32568 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15550)

(assert (=> b!507484 (= lt!231884 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!507485 () Bool)

(declare-fun e!296988 () Bool)

(assert (=> b!507485 (= e!296986 e!296988)))

(declare-fun res!308600 () Bool)

(assert (=> b!507485 (=> res!308600 e!296988)))

(declare-fun lt!231882 () Bool)

(assert (=> b!507485 (= res!308600 (or (and (not lt!231882) (undefined!4947 lt!231880)) (and (not lt!231882) (not (undefined!4947 lt!231880)))))))

(get-info :version)

(assert (=> b!507485 (= lt!231882 (not ((_ is Intermediate!4135) lt!231880)))))

(declare-fun res!308595 () Bool)

(assert (=> start!45852 (=> (not res!308595) (not e!296985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45852 (= res!308595 (validMask!0 mask!3524))))

(assert (=> start!45852 e!296985))

(assert (=> start!45852 true))

(declare-fun array_inv!11435 (array!32568) Bool)

(assert (=> start!45852 (array_inv!11435 a!3235)))

(declare-fun b!507486 () Bool)

(declare-fun res!308593 () Bool)

(assert (=> b!507486 (=> (not res!308593) (not e!296985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!507486 (= res!308593 (validKeyInArray!0 (select (arr!15661 a!3235) j!176)))))

(declare-fun b!507487 () Bool)

(declare-fun res!308599 () Bool)

(assert (=> b!507487 (=> (not res!308599) (not e!296984))))

(declare-datatypes ((List!9872 0))(
  ( (Nil!9869) (Cons!9868 (h!10745 (_ BitVec 64)) (t!16108 List!9872)) )
))
(declare-fun arrayNoDuplicates!0 (array!32568 (_ BitVec 32) List!9872) Bool)

(assert (=> b!507487 (= res!308599 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9869))))

(declare-fun b!507488 () Bool)

(assert (=> b!507488 (= e!296988 true)))

(declare-fun lt!231879 () SeekEntryResult!4135)

(assert (=> b!507488 (= lt!231879 (seekEntryOrOpen!0 lt!231887 lt!231886 mask!3524))))

(assert (=> b!507488 false))

(declare-fun b!507489 () Bool)

(declare-fun res!308591 () Bool)

(assert (=> b!507489 (=> (not res!308591) (not e!296985))))

(assert (=> b!507489 (= res!308591 (validKeyInArray!0 k0!2280))))

(declare-fun b!507490 () Bool)

(declare-fun res!308598 () Bool)

(assert (=> b!507490 (=> (not res!308598) (not e!296984))))

(assert (=> b!507490 (= res!308598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!507491 () Bool)

(assert (=> b!507491 (= e!296985 e!296984)))

(declare-fun res!308596 () Bool)

(assert (=> b!507491 (=> (not res!308596) (not e!296984))))

(declare-fun lt!231881 () SeekEntryResult!4135)

(assert (=> b!507491 (= res!308596 (or (= lt!231881 (MissingZero!4135 i!1204)) (= lt!231881 (MissingVacant!4135 i!1204))))))

(assert (=> b!507491 (= lt!231881 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(assert (= (and start!45852 res!308595) b!507483))

(assert (= (and b!507483 res!308594) b!507486))

(assert (= (and b!507486 res!308593) b!507489))

(assert (= (and b!507489 res!308591) b!507481))

(assert (= (and b!507481 res!308597) b!507491))

(assert (= (and b!507491 res!308596) b!507490))

(assert (= (and b!507490 res!308598) b!507487))

(assert (= (and b!507487 res!308599) b!507484))

(assert (= (and b!507484 res!308590) b!507482))

(assert (= (and b!507484 (not res!308592)) b!507485))

(assert (= (and b!507485 (not res!308600)) b!507488))

(declare-fun m!488325 () Bool)

(assert (=> b!507482 m!488325))

(assert (=> b!507482 m!488325))

(declare-fun m!488327 () Bool)

(assert (=> b!507482 m!488327))

(declare-fun m!488329 () Bool)

(assert (=> b!507487 m!488329))

(declare-fun m!488331 () Bool)

(assert (=> b!507489 m!488331))

(declare-fun m!488333 () Bool)

(assert (=> start!45852 m!488333))

(declare-fun m!488335 () Bool)

(assert (=> start!45852 m!488335))

(declare-fun m!488337 () Bool)

(assert (=> b!507490 m!488337))

(assert (=> b!507486 m!488325))

(assert (=> b!507486 m!488325))

(declare-fun m!488339 () Bool)

(assert (=> b!507486 m!488339))

(declare-fun m!488341 () Bool)

(assert (=> b!507491 m!488341))

(declare-fun m!488343 () Bool)

(assert (=> b!507488 m!488343))

(assert (=> b!507484 m!488325))

(declare-fun m!488345 () Bool)

(assert (=> b!507484 m!488345))

(declare-fun m!488347 () Bool)

(assert (=> b!507484 m!488347))

(declare-fun m!488349 () Bool)

(assert (=> b!507484 m!488349))

(declare-fun m!488351 () Bool)

(assert (=> b!507484 m!488351))

(assert (=> b!507484 m!488325))

(declare-fun m!488353 () Bool)

(assert (=> b!507484 m!488353))

(declare-fun m!488355 () Bool)

(assert (=> b!507484 m!488355))

(declare-fun m!488357 () Bool)

(assert (=> b!507484 m!488357))

(assert (=> b!507484 m!488325))

(declare-fun m!488359 () Bool)

(assert (=> b!507484 m!488359))

(declare-fun m!488361 () Bool)

(assert (=> b!507481 m!488361))

(check-sat (not b!507490) (not b!507488) (not b!507491) (not b!507489) (not b!507487) (not start!45852) (not b!507486) (not b!507482) (not b!507484) (not b!507481))
(check-sat)
