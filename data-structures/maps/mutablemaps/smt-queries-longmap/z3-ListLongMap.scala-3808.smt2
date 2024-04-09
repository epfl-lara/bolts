; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52222 () Bool)

(assert start!52222)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!569732 () Bool)

(declare-fun e!327682 () Bool)

(declare-datatypes ((array!35699 0))(
  ( (array!35700 (arr!17137 (Array (_ BitVec 32) (_ BitVec 64))) (size!17501 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35699)

(declare-datatypes ((SeekEntryResult!5593 0))(
  ( (MissingZero!5593 (index!24599 (_ BitVec 32))) (Found!5593 (index!24600 (_ BitVec 32))) (Intermediate!5593 (undefined!6405 Bool) (index!24601 (_ BitVec 32)) (x!53495 (_ BitVec 32))) (Undefined!5593) (MissingVacant!5593 (index!24602 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35699 (_ BitVec 32)) SeekEntryResult!5593)

(assert (=> b!569732 (= e!327682 (= (seekEntryOrOpen!0 (select (arr!17137 a!3118) j!142) a!3118 mask!3119) (Found!5593 j!142)))))

(declare-fun b!569733 () Bool)

(declare-fun res!359903 () Bool)

(declare-fun e!327683 () Bool)

(assert (=> b!569733 (=> (not res!359903) (not e!327683))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569733 (= res!359903 (validKeyInArray!0 (select (arr!17137 a!3118) j!142)))))

(declare-fun b!569734 () Bool)

(declare-fun e!327685 () Bool)

(assert (=> b!569734 (= e!327685 (not true))))

(assert (=> b!569734 e!327682))

(declare-fun res!359905 () Bool)

(assert (=> b!569734 (=> (not res!359905) (not e!327682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35699 (_ BitVec 32)) Bool)

(assert (=> b!569734 (= res!359905 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17888 0))(
  ( (Unit!17889) )
))
(declare-fun lt!259766 () Unit!17888)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35699 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17888)

(assert (=> b!569734 (= lt!259766 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569735 () Bool)

(declare-fun res!359900 () Bool)

(assert (=> b!569735 (=> (not res!359900) (not e!327683))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!569735 (= res!359900 (validKeyInArray!0 k0!1914))))

(declare-fun b!569736 () Bool)

(declare-fun res!359906 () Bool)

(assert (=> b!569736 (=> (not res!359906) (not e!327683))))

(declare-fun arrayContainsKey!0 (array!35699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569736 (= res!359906 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!359904 () Bool)

(assert (=> start!52222 (=> (not res!359904) (not e!327683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52222 (= res!359904 (validMask!0 mask!3119))))

(assert (=> start!52222 e!327683))

(assert (=> start!52222 true))

(declare-fun array_inv!12911 (array!35699) Bool)

(assert (=> start!52222 (array_inv!12911 a!3118)))

(declare-fun b!569737 () Bool)

(declare-fun res!359909 () Bool)

(assert (=> b!569737 (=> (not res!359909) (not e!327685))))

(declare-datatypes ((List!11270 0))(
  ( (Nil!11267) (Cons!11266 (h!12287 (_ BitVec 64)) (t!17506 List!11270)) )
))
(declare-fun arrayNoDuplicates!0 (array!35699 (_ BitVec 32) List!11270) Bool)

(assert (=> b!569737 (= res!359909 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11267))))

(declare-fun b!569738 () Bool)

(declare-fun res!359902 () Bool)

(assert (=> b!569738 (=> (not res!359902) (not e!327685))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35699 (_ BitVec 32)) SeekEntryResult!5593)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569738 (= res!359902 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17137 a!3118) j!142) mask!3119) (select (arr!17137 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17137 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17137 a!3118) i!1132 k0!1914) j!142) (array!35700 (store (arr!17137 a!3118) i!1132 k0!1914) (size!17501 a!3118)) mask!3119)))))

(declare-fun b!569739 () Bool)

(declare-fun res!359908 () Bool)

(assert (=> b!569739 (=> (not res!359908) (not e!327685))))

(assert (=> b!569739 (= res!359908 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569740 () Bool)

(declare-fun res!359901 () Bool)

(assert (=> b!569740 (=> (not res!359901) (not e!327683))))

(assert (=> b!569740 (= res!359901 (and (= (size!17501 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17501 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17501 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569741 () Bool)

(assert (=> b!569741 (= e!327683 e!327685)))

(declare-fun res!359907 () Bool)

(assert (=> b!569741 (=> (not res!359907) (not e!327685))))

(declare-fun lt!259765 () SeekEntryResult!5593)

(assert (=> b!569741 (= res!359907 (or (= lt!259765 (MissingZero!5593 i!1132)) (= lt!259765 (MissingVacant!5593 i!1132))))))

(assert (=> b!569741 (= lt!259765 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!52222 res!359904) b!569740))

(assert (= (and b!569740 res!359901) b!569733))

(assert (= (and b!569733 res!359903) b!569735))

(assert (= (and b!569735 res!359900) b!569736))

(assert (= (and b!569736 res!359906) b!569741))

(assert (= (and b!569741 res!359907) b!569739))

(assert (= (and b!569739 res!359908) b!569737))

(assert (= (and b!569737 res!359909) b!569738))

(assert (= (and b!569738 res!359902) b!569734))

(assert (= (and b!569734 res!359905) b!569732))

(declare-fun m!548671 () Bool)

(assert (=> b!569732 m!548671))

(assert (=> b!569732 m!548671))

(declare-fun m!548673 () Bool)

(assert (=> b!569732 m!548673))

(declare-fun m!548675 () Bool)

(assert (=> start!52222 m!548675))

(declare-fun m!548677 () Bool)

(assert (=> start!52222 m!548677))

(declare-fun m!548679 () Bool)

(assert (=> b!569741 m!548679))

(declare-fun m!548681 () Bool)

(assert (=> b!569735 m!548681))

(assert (=> b!569733 m!548671))

(assert (=> b!569733 m!548671))

(declare-fun m!548683 () Bool)

(assert (=> b!569733 m!548683))

(declare-fun m!548685 () Bool)

(assert (=> b!569736 m!548685))

(declare-fun m!548687 () Bool)

(assert (=> b!569739 m!548687))

(declare-fun m!548689 () Bool)

(assert (=> b!569737 m!548689))

(assert (=> b!569738 m!548671))

(declare-fun m!548691 () Bool)

(assert (=> b!569738 m!548691))

(assert (=> b!569738 m!548671))

(declare-fun m!548693 () Bool)

(assert (=> b!569738 m!548693))

(declare-fun m!548695 () Bool)

(assert (=> b!569738 m!548695))

(assert (=> b!569738 m!548693))

(declare-fun m!548697 () Bool)

(assert (=> b!569738 m!548697))

(assert (=> b!569738 m!548691))

(assert (=> b!569738 m!548671))

(declare-fun m!548699 () Bool)

(assert (=> b!569738 m!548699))

(declare-fun m!548701 () Bool)

(assert (=> b!569738 m!548701))

(assert (=> b!569738 m!548693))

(assert (=> b!569738 m!548695))

(declare-fun m!548703 () Bool)

(assert (=> b!569734 m!548703))

(declare-fun m!548705 () Bool)

(assert (=> b!569734 m!548705))

(check-sat (not b!569732) (not b!569738) (not b!569741) (not b!569736) (not b!569735) (not b!569739) (not b!569733) (not start!52222) (not b!569737) (not b!569734))
(check-sat)
