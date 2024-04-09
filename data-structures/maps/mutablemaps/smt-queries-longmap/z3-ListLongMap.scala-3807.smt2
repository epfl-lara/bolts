; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52216 () Bool)

(assert start!52216)

(declare-fun b!569642 () Bool)

(declare-fun res!359811 () Bool)

(declare-fun e!327647 () Bool)

(assert (=> b!569642 (=> (not res!359811) (not e!327647))))

(declare-datatypes ((array!35693 0))(
  ( (array!35694 (arr!17134 (Array (_ BitVec 32) (_ BitVec 64))) (size!17498 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35693)

(declare-datatypes ((List!11267 0))(
  ( (Nil!11264) (Cons!11263 (h!12284 (_ BitVec 64)) (t!17503 List!11267)) )
))
(declare-fun arrayNoDuplicates!0 (array!35693 (_ BitVec 32) List!11267) Bool)

(assert (=> b!569642 (= res!359811 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11264))))

(declare-fun b!569643 () Bool)

(declare-fun res!359819 () Bool)

(declare-fun e!327649 () Bool)

(assert (=> b!569643 (=> (not res!359819) (not e!327649))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569643 (= res!359819 (validKeyInArray!0 (select (arr!17134 a!3118) j!142)))))

(declare-fun b!569644 () Bool)

(declare-fun res!359813 () Bool)

(assert (=> b!569644 (=> (not res!359813) (not e!327647))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35693 (_ BitVec 32)) Bool)

(assert (=> b!569644 (= res!359813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!359810 () Bool)

(assert (=> start!52216 (=> (not res!359810) (not e!327649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52216 (= res!359810 (validMask!0 mask!3119))))

(assert (=> start!52216 e!327649))

(assert (=> start!52216 true))

(declare-fun array_inv!12908 (array!35693) Bool)

(assert (=> start!52216 (array_inv!12908 a!3118)))

(declare-fun b!569645 () Bool)

(assert (=> b!569645 (= e!327649 e!327647)))

(declare-fun res!359817 () Bool)

(assert (=> b!569645 (=> (not res!359817) (not e!327647))))

(declare-datatypes ((SeekEntryResult!5590 0))(
  ( (MissingZero!5590 (index!24587 (_ BitVec 32))) (Found!5590 (index!24588 (_ BitVec 32))) (Intermediate!5590 (undefined!6402 Bool) (index!24589 (_ BitVec 32)) (x!53484 (_ BitVec 32))) (Undefined!5590) (MissingVacant!5590 (index!24590 (_ BitVec 32))) )
))
(declare-fun lt!259747 () SeekEntryResult!5590)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569645 (= res!359817 (or (= lt!259747 (MissingZero!5590 i!1132)) (= lt!259747 (MissingVacant!5590 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35693 (_ BitVec 32)) SeekEntryResult!5590)

(assert (=> b!569645 (= lt!259747 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun e!327648 () Bool)

(declare-fun b!569646 () Bool)

(assert (=> b!569646 (= e!327648 (= (seekEntryOrOpen!0 (select (arr!17134 a!3118) j!142) a!3118 mask!3119) (Found!5590 j!142)))))

(declare-fun b!569647 () Bool)

(declare-fun res!359818 () Bool)

(assert (=> b!569647 (=> (not res!359818) (not e!327647))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35693 (_ BitVec 32)) SeekEntryResult!5590)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569647 (= res!359818 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17134 a!3118) j!142) mask!3119) (select (arr!17134 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17134 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17134 a!3118) i!1132 k0!1914) j!142) (array!35694 (store (arr!17134 a!3118) i!1132 k0!1914) (size!17498 a!3118)) mask!3119)))))

(declare-fun b!569648 () Bool)

(assert (=> b!569648 (= e!327647 (not true))))

(assert (=> b!569648 e!327648))

(declare-fun res!359815 () Bool)

(assert (=> b!569648 (=> (not res!359815) (not e!327648))))

(assert (=> b!569648 (= res!359815 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17882 0))(
  ( (Unit!17883) )
))
(declare-fun lt!259748 () Unit!17882)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35693 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17882)

(assert (=> b!569648 (= lt!259748 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569649 () Bool)

(declare-fun res!359814 () Bool)

(assert (=> b!569649 (=> (not res!359814) (not e!327649))))

(declare-fun arrayContainsKey!0 (array!35693 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569649 (= res!359814 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569650 () Bool)

(declare-fun res!359816 () Bool)

(assert (=> b!569650 (=> (not res!359816) (not e!327649))))

(assert (=> b!569650 (= res!359816 (validKeyInArray!0 k0!1914))))

(declare-fun b!569651 () Bool)

(declare-fun res!359812 () Bool)

(assert (=> b!569651 (=> (not res!359812) (not e!327649))))

(assert (=> b!569651 (= res!359812 (and (= (size!17498 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17498 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17498 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52216 res!359810) b!569651))

(assert (= (and b!569651 res!359812) b!569643))

(assert (= (and b!569643 res!359819) b!569650))

(assert (= (and b!569650 res!359816) b!569649))

(assert (= (and b!569649 res!359814) b!569645))

(assert (= (and b!569645 res!359817) b!569644))

(assert (= (and b!569644 res!359813) b!569642))

(assert (= (and b!569642 res!359811) b!569647))

(assert (= (and b!569647 res!359818) b!569648))

(assert (= (and b!569648 res!359815) b!569646))

(declare-fun m!548563 () Bool)

(assert (=> b!569647 m!548563))

(declare-fun m!548565 () Bool)

(assert (=> b!569647 m!548565))

(assert (=> b!569647 m!548563))

(declare-fun m!548567 () Bool)

(assert (=> b!569647 m!548567))

(declare-fun m!548569 () Bool)

(assert (=> b!569647 m!548569))

(assert (=> b!569647 m!548567))

(declare-fun m!548571 () Bool)

(assert (=> b!569647 m!548571))

(assert (=> b!569647 m!548565))

(assert (=> b!569647 m!548563))

(declare-fun m!548573 () Bool)

(assert (=> b!569647 m!548573))

(declare-fun m!548575 () Bool)

(assert (=> b!569647 m!548575))

(assert (=> b!569647 m!548567))

(assert (=> b!569647 m!548569))

(declare-fun m!548577 () Bool)

(assert (=> b!569642 m!548577))

(declare-fun m!548579 () Bool)

(assert (=> b!569644 m!548579))

(assert (=> b!569646 m!548563))

(assert (=> b!569646 m!548563))

(declare-fun m!548581 () Bool)

(assert (=> b!569646 m!548581))

(assert (=> b!569643 m!548563))

(assert (=> b!569643 m!548563))

(declare-fun m!548583 () Bool)

(assert (=> b!569643 m!548583))

(declare-fun m!548585 () Bool)

(assert (=> b!569645 m!548585))

(declare-fun m!548587 () Bool)

(assert (=> b!569648 m!548587))

(declare-fun m!548589 () Bool)

(assert (=> b!569648 m!548589))

(declare-fun m!548591 () Bool)

(assert (=> start!52216 m!548591))

(declare-fun m!548593 () Bool)

(assert (=> start!52216 m!548593))

(declare-fun m!548595 () Bool)

(assert (=> b!569649 m!548595))

(declare-fun m!548597 () Bool)

(assert (=> b!569650 m!548597))

(check-sat (not b!569644) (not start!52216) (not b!569642) (not b!569649) (not b!569646) (not b!569648) (not b!569650) (not b!569645) (not b!569643) (not b!569647))
(check-sat)
