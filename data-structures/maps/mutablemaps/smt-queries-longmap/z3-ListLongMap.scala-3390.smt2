; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46764 () Bool)

(assert start!46764)

(declare-fun b!516109 () Bool)

(declare-fun e!301236 () Bool)

(assert (=> b!516109 (= e!301236 true)))

(declare-datatypes ((SeekEntryResult!4357 0))(
  ( (MissingZero!4357 (index!19616 (_ BitVec 32))) (Found!4357 (index!19617 (_ BitVec 32))) (Intermediate!4357 (undefined!5169 Bool) (index!19618 (_ BitVec 32)) (x!48603 (_ BitVec 32))) (Undefined!4357) (MissingVacant!4357 (index!19619 (_ BitVec 32))) )
))
(declare-fun lt!236321 () SeekEntryResult!4357)

(declare-datatypes ((array!33036 0))(
  ( (array!33037 (arr!15883 (Array (_ BitVec 32) (_ BitVec 64))) (size!16247 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33036)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!516109 (and (bvslt (x!48603 lt!236321) #b01111111111111111111111111111110) (or (= (select (arr!15883 a!3235) (index!19618 lt!236321)) (select (arr!15883 a!3235) j!176)) (= (select (arr!15883 a!3235) (index!19618 lt!236321)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15883 a!3235) (index!19618 lt!236321)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516110 () Bool)

(declare-fun res!315829 () Bool)

(declare-fun e!301237 () Bool)

(assert (=> b!516110 (=> (not res!315829) (not e!301237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516110 (= res!315829 (validKeyInArray!0 (select (arr!15883 a!3235) j!176)))))

(declare-fun b!516111 () Bool)

(declare-fun res!315828 () Bool)

(assert (=> b!516111 (=> res!315828 e!301236)))

(get-info :version)

(assert (=> b!516111 (= res!315828 (or (undefined!5169 lt!236321) (not ((_ is Intermediate!4357) lt!236321))))))

(declare-fun b!516112 () Bool)

(declare-fun e!301234 () Bool)

(assert (=> b!516112 (= e!301237 e!301234)))

(declare-fun res!315827 () Bool)

(assert (=> b!516112 (=> (not res!315827) (not e!301234))))

(declare-fun lt!236320 () SeekEntryResult!4357)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!516112 (= res!315827 (or (= lt!236320 (MissingZero!4357 i!1204)) (= lt!236320 (MissingVacant!4357 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33036 (_ BitVec 32)) SeekEntryResult!4357)

(assert (=> b!516112 (= lt!236320 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!516113 () Bool)

(declare-fun res!315831 () Bool)

(assert (=> b!516113 (=> (not res!315831) (not e!301234))))

(declare-datatypes ((List!10094 0))(
  ( (Nil!10091) (Cons!10090 (h!10988 (_ BitVec 64)) (t!16330 List!10094)) )
))
(declare-fun arrayNoDuplicates!0 (array!33036 (_ BitVec 32) List!10094) Bool)

(assert (=> b!516113 (= res!315831 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10091))))

(declare-fun b!516114 () Bool)

(declare-fun e!301233 () Bool)

(assert (=> b!516114 (= e!301233 (= (seekEntryOrOpen!0 (select (arr!15883 a!3235) j!176) a!3235 mask!3524) (Found!4357 j!176)))))

(declare-fun b!516115 () Bool)

(declare-fun res!315823 () Bool)

(assert (=> b!516115 (=> (not res!315823) (not e!301237))))

(assert (=> b!516115 (= res!315823 (and (= (size!16247 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16247 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16247 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516116 () Bool)

(assert (=> b!516116 (= e!301234 (not e!301236))))

(declare-fun res!315832 () Bool)

(assert (=> b!516116 (=> res!315832 e!301236)))

(declare-fun lt!236319 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33036 (_ BitVec 32)) SeekEntryResult!4357)

(assert (=> b!516116 (= res!315832 (= lt!236321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236319 (select (store (arr!15883 a!3235) i!1204 k0!2280) j!176) (array!33037 (store (arr!15883 a!3235) i!1204 k0!2280) (size!16247 a!3235)) mask!3524)))))

(declare-fun lt!236317 () (_ BitVec 32))

(assert (=> b!516116 (= lt!236321 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236317 (select (arr!15883 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516116 (= lt!236319 (toIndex!0 (select (store (arr!15883 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!516116 (= lt!236317 (toIndex!0 (select (arr!15883 a!3235) j!176) mask!3524))))

(assert (=> b!516116 e!301233))

(declare-fun res!315830 () Bool)

(assert (=> b!516116 (=> (not res!315830) (not e!301233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33036 (_ BitVec 32)) Bool)

(assert (=> b!516116 (= res!315830 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15964 0))(
  ( (Unit!15965) )
))
(declare-fun lt!236318 () Unit!15964)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33036 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15964)

(assert (=> b!516116 (= lt!236318 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!516117 () Bool)

(declare-fun res!315825 () Bool)

(assert (=> b!516117 (=> (not res!315825) (not e!301237))))

(assert (=> b!516117 (= res!315825 (validKeyInArray!0 k0!2280))))

(declare-fun res!315826 () Bool)

(assert (=> start!46764 (=> (not res!315826) (not e!301237))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46764 (= res!315826 (validMask!0 mask!3524))))

(assert (=> start!46764 e!301237))

(assert (=> start!46764 true))

(declare-fun array_inv!11657 (array!33036) Bool)

(assert (=> start!46764 (array_inv!11657 a!3235)))

(declare-fun b!516118 () Bool)

(declare-fun res!315833 () Bool)

(assert (=> b!516118 (=> (not res!315833) (not e!301234))))

(assert (=> b!516118 (= res!315833 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516119 () Bool)

(declare-fun res!315824 () Bool)

(assert (=> b!516119 (=> (not res!315824) (not e!301237))))

(declare-fun arrayContainsKey!0 (array!33036 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516119 (= res!315824 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46764 res!315826) b!516115))

(assert (= (and b!516115 res!315823) b!516110))

(assert (= (and b!516110 res!315829) b!516117))

(assert (= (and b!516117 res!315825) b!516119))

(assert (= (and b!516119 res!315824) b!516112))

(assert (= (and b!516112 res!315827) b!516118))

(assert (= (and b!516118 res!315833) b!516113))

(assert (= (and b!516113 res!315831) b!516116))

(assert (= (and b!516116 res!315830) b!516114))

(assert (= (and b!516116 (not res!315832)) b!516111))

(assert (= (and b!516111 (not res!315828)) b!516109))

(declare-fun m!497613 () Bool)

(assert (=> b!516114 m!497613))

(assert (=> b!516114 m!497613))

(declare-fun m!497615 () Bool)

(assert (=> b!516114 m!497615))

(declare-fun m!497617 () Bool)

(assert (=> b!516109 m!497617))

(assert (=> b!516109 m!497613))

(declare-fun m!497619 () Bool)

(assert (=> b!516117 m!497619))

(declare-fun m!497621 () Bool)

(assert (=> b!516112 m!497621))

(declare-fun m!497623 () Bool)

(assert (=> b!516119 m!497623))

(declare-fun m!497625 () Bool)

(assert (=> start!46764 m!497625))

(declare-fun m!497627 () Bool)

(assert (=> start!46764 m!497627))

(declare-fun m!497629 () Bool)

(assert (=> b!516116 m!497629))

(declare-fun m!497631 () Bool)

(assert (=> b!516116 m!497631))

(assert (=> b!516116 m!497613))

(declare-fun m!497633 () Bool)

(assert (=> b!516116 m!497633))

(assert (=> b!516116 m!497613))

(declare-fun m!497635 () Bool)

(assert (=> b!516116 m!497635))

(declare-fun m!497637 () Bool)

(assert (=> b!516116 m!497637))

(declare-fun m!497639 () Bool)

(assert (=> b!516116 m!497639))

(assert (=> b!516116 m!497637))

(declare-fun m!497641 () Bool)

(assert (=> b!516116 m!497641))

(assert (=> b!516116 m!497613))

(declare-fun m!497643 () Bool)

(assert (=> b!516116 m!497643))

(assert (=> b!516116 m!497637))

(assert (=> b!516110 m!497613))

(assert (=> b!516110 m!497613))

(declare-fun m!497645 () Bool)

(assert (=> b!516110 m!497645))

(declare-fun m!497647 () Bool)

(assert (=> b!516118 m!497647))

(declare-fun m!497649 () Bool)

(assert (=> b!516113 m!497649))

(check-sat (not b!516116) (not b!516119) (not b!516110) (not start!46764) (not b!516114) (not b!516118) (not b!516113) (not b!516117) (not b!516112))
(check-sat)
