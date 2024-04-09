; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46854 () Bool)

(assert start!46854)

(declare-fun b!516895 () Bool)

(declare-fun res!316429 () Bool)

(declare-fun e!301645 () Bool)

(assert (=> b!516895 (=> (not res!316429) (not e!301645))))

(declare-datatypes ((array!33069 0))(
  ( (array!33070 (arr!15898 (Array (_ BitVec 32) (_ BitVec 64))) (size!16262 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33069)

(declare-datatypes ((List!10109 0))(
  ( (Nil!10106) (Cons!10105 (h!11006 (_ BitVec 64)) (t!16345 List!10109)) )
))
(declare-fun arrayNoDuplicates!0 (array!33069 (_ BitVec 32) List!10109) Bool)

(assert (=> b!516895 (= res!316429 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10106))))

(declare-fun res!316433 () Bool)

(declare-fun e!301646 () Bool)

(assert (=> start!46854 (=> (not res!316433) (not e!301646))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46854 (= res!316433 (validMask!0 mask!3524))))

(assert (=> start!46854 e!301646))

(assert (=> start!46854 true))

(declare-fun array_inv!11672 (array!33069) Bool)

(assert (=> start!46854 (array_inv!11672 a!3235)))

(declare-fun b!516896 () Bool)

(declare-fun res!316431 () Bool)

(declare-fun e!301648 () Bool)

(assert (=> b!516896 (=> res!316431 e!301648)))

(declare-datatypes ((SeekEntryResult!4372 0))(
  ( (MissingZero!4372 (index!19676 (_ BitVec 32))) (Found!4372 (index!19677 (_ BitVec 32))) (Intermediate!4372 (undefined!5184 Bool) (index!19678 (_ BitVec 32)) (x!48664 (_ BitVec 32))) (Undefined!4372) (MissingVacant!4372 (index!19679 (_ BitVec 32))) )
))
(declare-fun lt!236671 () SeekEntryResult!4372)

(get-info :version)

(assert (=> b!516896 (= res!316431 (or (undefined!5184 lt!236671) (not ((_ is Intermediate!4372) lt!236671))))))

(declare-fun b!516897 () Bool)

(declare-fun res!316432 () Bool)

(assert (=> b!516897 (=> (not res!316432) (not e!301646))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516897 (= res!316432 (validKeyInArray!0 (select (arr!15898 a!3235) j!176)))))

(declare-fun b!516898 () Bool)

(declare-fun res!316435 () Bool)

(assert (=> b!516898 (=> (not res!316435) (not e!301646))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516898 (= res!316435 (and (= (size!16262 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16262 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16262 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516899 () Bool)

(assert (=> b!516899 (= e!301645 (not e!301648))))

(declare-fun res!316428 () Bool)

(assert (=> b!516899 (=> res!316428 e!301648)))

(declare-fun lt!236673 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33069 (_ BitVec 32)) SeekEntryResult!4372)

(assert (=> b!516899 (= res!316428 (= lt!236671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236673 (select (store (arr!15898 a!3235) i!1204 k0!2280) j!176) (array!33070 (store (arr!15898 a!3235) i!1204 k0!2280) (size!16262 a!3235)) mask!3524)))))

(declare-fun lt!236675 () (_ BitVec 32))

(assert (=> b!516899 (= lt!236671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236675 (select (arr!15898 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516899 (= lt!236673 (toIndex!0 (select (store (arr!15898 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!516899 (= lt!236675 (toIndex!0 (select (arr!15898 a!3235) j!176) mask!3524))))

(declare-fun e!301644 () Bool)

(assert (=> b!516899 e!301644))

(declare-fun res!316436 () Bool)

(assert (=> b!516899 (=> (not res!316436) (not e!301644))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33069 (_ BitVec 32)) Bool)

(assert (=> b!516899 (= res!316436 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15994 0))(
  ( (Unit!15995) )
))
(declare-fun lt!236672 () Unit!15994)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33069 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15994)

(assert (=> b!516899 (= lt!236672 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516900 () Bool)

(assert (=> b!516900 (= e!301648 true)))

(assert (=> b!516900 (and (bvslt (x!48664 lt!236671) #b01111111111111111111111111111110) (or (= (select (arr!15898 a!3235) (index!19678 lt!236671)) (select (arr!15898 a!3235) j!176)) (= (select (arr!15898 a!3235) (index!19678 lt!236671)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15898 a!3235) (index!19678 lt!236671)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516901 () Bool)

(declare-fun res!316427 () Bool)

(assert (=> b!516901 (=> (not res!316427) (not e!301646))))

(declare-fun arrayContainsKey!0 (array!33069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516901 (= res!316427 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516902 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33069 (_ BitVec 32)) SeekEntryResult!4372)

(assert (=> b!516902 (= e!301644 (= (seekEntryOrOpen!0 (select (arr!15898 a!3235) j!176) a!3235 mask!3524) (Found!4372 j!176)))))

(declare-fun b!516903 () Bool)

(declare-fun res!316430 () Bool)

(assert (=> b!516903 (=> (not res!316430) (not e!301646))))

(assert (=> b!516903 (= res!316430 (validKeyInArray!0 k0!2280))))

(declare-fun b!516904 () Bool)

(assert (=> b!516904 (= e!301646 e!301645)))

(declare-fun res!316426 () Bool)

(assert (=> b!516904 (=> (not res!316426) (not e!301645))))

(declare-fun lt!236674 () SeekEntryResult!4372)

(assert (=> b!516904 (= res!316426 (or (= lt!236674 (MissingZero!4372 i!1204)) (= lt!236674 (MissingVacant!4372 i!1204))))))

(assert (=> b!516904 (= lt!236674 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!516905 () Bool)

(declare-fun res!316434 () Bool)

(assert (=> b!516905 (=> (not res!316434) (not e!301645))))

(assert (=> b!516905 (= res!316434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46854 res!316433) b!516898))

(assert (= (and b!516898 res!316435) b!516897))

(assert (= (and b!516897 res!316432) b!516903))

(assert (= (and b!516903 res!316430) b!516901))

(assert (= (and b!516901 res!316427) b!516904))

(assert (= (and b!516904 res!316426) b!516905))

(assert (= (and b!516905 res!316434) b!516895))

(assert (= (and b!516895 res!316429) b!516899))

(assert (= (and b!516899 res!316436) b!516902))

(assert (= (and b!516899 (not res!316428)) b!516896))

(assert (= (and b!516896 (not res!316431)) b!516900))

(declare-fun m!498387 () Bool)

(assert (=> b!516903 m!498387))

(declare-fun m!498389 () Bool)

(assert (=> b!516895 m!498389))

(declare-fun m!498391 () Bool)

(assert (=> b!516902 m!498391))

(assert (=> b!516902 m!498391))

(declare-fun m!498393 () Bool)

(assert (=> b!516902 m!498393))

(declare-fun m!498395 () Bool)

(assert (=> b!516899 m!498395))

(declare-fun m!498397 () Bool)

(assert (=> b!516899 m!498397))

(declare-fun m!498399 () Bool)

(assert (=> b!516899 m!498399))

(assert (=> b!516899 m!498391))

(declare-fun m!498401 () Bool)

(assert (=> b!516899 m!498401))

(assert (=> b!516899 m!498391))

(declare-fun m!498403 () Bool)

(assert (=> b!516899 m!498403))

(assert (=> b!516899 m!498391))

(declare-fun m!498405 () Bool)

(assert (=> b!516899 m!498405))

(assert (=> b!516899 m!498399))

(declare-fun m!498407 () Bool)

(assert (=> b!516899 m!498407))

(assert (=> b!516899 m!498399))

(declare-fun m!498409 () Bool)

(assert (=> b!516899 m!498409))

(declare-fun m!498411 () Bool)

(assert (=> start!46854 m!498411))

(declare-fun m!498413 () Bool)

(assert (=> start!46854 m!498413))

(assert (=> b!516897 m!498391))

(assert (=> b!516897 m!498391))

(declare-fun m!498415 () Bool)

(assert (=> b!516897 m!498415))

(declare-fun m!498417 () Bool)

(assert (=> b!516900 m!498417))

(assert (=> b!516900 m!498391))

(declare-fun m!498419 () Bool)

(assert (=> b!516901 m!498419))

(declare-fun m!498421 () Bool)

(assert (=> b!516905 m!498421))

(declare-fun m!498423 () Bool)

(assert (=> b!516904 m!498423))

(check-sat (not b!516895) (not b!516904) (not b!516897) (not b!516901) (not b!516903) (not b!516899) (not start!46854) (not b!516902) (not b!516905))
(check-sat)
