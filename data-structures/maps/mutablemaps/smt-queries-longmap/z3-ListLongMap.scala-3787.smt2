; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51916 () Bool)

(assert start!51916)

(declare-fun b!567068 () Bool)

(declare-fun res!357808 () Bool)

(declare-fun e!326342 () Bool)

(assert (=> b!567068 (=> (not res!357808) (not e!326342))))

(declare-datatypes ((array!35564 0))(
  ( (array!35565 (arr!17074 (Array (_ BitVec 32) (_ BitVec 64))) (size!17438 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35564)

(declare-datatypes ((List!11207 0))(
  ( (Nil!11204) (Cons!11203 (h!12215 (_ BitVec 64)) (t!17443 List!11207)) )
))
(declare-fun arrayNoDuplicates!0 (array!35564 (_ BitVec 32) List!11207) Bool)

(assert (=> b!567068 (= res!357808 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11204))))

(declare-fun b!567069 () Bool)

(assert (=> b!567069 (= e!326342 (not true))))

(declare-fun e!326344 () Bool)

(assert (=> b!567069 e!326344))

(declare-fun res!357812 () Bool)

(assert (=> b!567069 (=> (not res!357812) (not e!326344))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35564 (_ BitVec 32)) Bool)

(assert (=> b!567069 (= res!357812 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17762 0))(
  ( (Unit!17763) )
))
(declare-fun lt!258442 () Unit!17762)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35564 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17762)

(assert (=> b!567069 (= lt!258442 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!567070 () Bool)

(declare-fun res!357806 () Bool)

(declare-fun e!326341 () Bool)

(assert (=> b!567070 (=> (not res!357806) (not e!326341))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!567070 (= res!357806 (validKeyInArray!0 k0!1914))))

(declare-fun b!567071 () Bool)

(declare-fun res!357804 () Bool)

(assert (=> b!567071 (=> (not res!357804) (not e!326342))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5530 0))(
  ( (MissingZero!5530 (index!24347 (_ BitVec 32))) (Found!5530 (index!24348 (_ BitVec 32))) (Intermediate!5530 (undefined!6342 Bool) (index!24349 (_ BitVec 32)) (x!53246 (_ BitVec 32))) (Undefined!5530) (MissingVacant!5530 (index!24350 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35564 (_ BitVec 32)) SeekEntryResult!5530)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!567071 (= res!357804 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17074 a!3118) j!142) mask!3119) (select (arr!17074 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17074 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17074 a!3118) i!1132 k0!1914) j!142) (array!35565 (store (arr!17074 a!3118) i!1132 k0!1914) (size!17438 a!3118)) mask!3119)))))

(declare-fun b!567072 () Bool)

(declare-fun res!357807 () Bool)

(assert (=> b!567072 (=> (not res!357807) (not e!326341))))

(assert (=> b!567072 (= res!357807 (validKeyInArray!0 (select (arr!17074 a!3118) j!142)))))

(declare-fun b!567073 () Bool)

(declare-fun res!357810 () Bool)

(assert (=> b!567073 (=> (not res!357810) (not e!326341))))

(assert (=> b!567073 (= res!357810 (and (= (size!17438 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17438 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17438 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!357809 () Bool)

(assert (=> start!51916 (=> (not res!357809) (not e!326341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51916 (= res!357809 (validMask!0 mask!3119))))

(assert (=> start!51916 e!326341))

(assert (=> start!51916 true))

(declare-fun array_inv!12848 (array!35564) Bool)

(assert (=> start!51916 (array_inv!12848 a!3118)))

(declare-fun b!567074 () Bool)

(declare-fun res!357811 () Bool)

(assert (=> b!567074 (=> (not res!357811) (not e!326342))))

(assert (=> b!567074 (= res!357811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!567075 () Bool)

(assert (=> b!567075 (= e!326341 e!326342)))

(declare-fun res!357805 () Bool)

(assert (=> b!567075 (=> (not res!357805) (not e!326342))))

(declare-fun lt!258443 () SeekEntryResult!5530)

(assert (=> b!567075 (= res!357805 (or (= lt!258443 (MissingZero!5530 i!1132)) (= lt!258443 (MissingVacant!5530 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35564 (_ BitVec 32)) SeekEntryResult!5530)

(assert (=> b!567075 (= lt!258443 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!567076 () Bool)

(declare-fun res!357803 () Bool)

(assert (=> b!567076 (=> (not res!357803) (not e!326341))))

(declare-fun arrayContainsKey!0 (array!35564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!567076 (= res!357803 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!567077 () Bool)

(assert (=> b!567077 (= e!326344 (= (seekEntryOrOpen!0 (select (arr!17074 a!3118) j!142) a!3118 mask!3119) (Found!5530 j!142)))))

(assert (= (and start!51916 res!357809) b!567073))

(assert (= (and b!567073 res!357810) b!567072))

(assert (= (and b!567072 res!357807) b!567070))

(assert (= (and b!567070 res!357806) b!567076))

(assert (= (and b!567076 res!357803) b!567075))

(assert (= (and b!567075 res!357805) b!567074))

(assert (= (and b!567074 res!357811) b!567068))

(assert (= (and b!567068 res!357808) b!567071))

(assert (= (and b!567071 res!357804) b!567069))

(assert (= (and b!567069 res!357812) b!567077))

(declare-fun m!545659 () Bool)

(assert (=> b!567074 m!545659))

(declare-fun m!545661 () Bool)

(assert (=> b!567076 m!545661))

(declare-fun m!545663 () Bool)

(assert (=> b!567070 m!545663))

(declare-fun m!545665 () Bool)

(assert (=> b!567075 m!545665))

(declare-fun m!545667 () Bool)

(assert (=> b!567068 m!545667))

(declare-fun m!545669 () Bool)

(assert (=> b!567071 m!545669))

(declare-fun m!545671 () Bool)

(assert (=> b!567071 m!545671))

(assert (=> b!567071 m!545669))

(declare-fun m!545673 () Bool)

(assert (=> b!567071 m!545673))

(declare-fun m!545675 () Bool)

(assert (=> b!567071 m!545675))

(assert (=> b!567071 m!545673))

(declare-fun m!545677 () Bool)

(assert (=> b!567071 m!545677))

(assert (=> b!567071 m!545671))

(assert (=> b!567071 m!545669))

(declare-fun m!545679 () Bool)

(assert (=> b!567071 m!545679))

(declare-fun m!545681 () Bool)

(assert (=> b!567071 m!545681))

(assert (=> b!567071 m!545673))

(assert (=> b!567071 m!545675))

(assert (=> b!567072 m!545669))

(assert (=> b!567072 m!545669))

(declare-fun m!545683 () Bool)

(assert (=> b!567072 m!545683))

(declare-fun m!545685 () Bool)

(assert (=> b!567069 m!545685))

(declare-fun m!545687 () Bool)

(assert (=> b!567069 m!545687))

(assert (=> b!567077 m!545669))

(assert (=> b!567077 m!545669))

(declare-fun m!545689 () Bool)

(assert (=> b!567077 m!545689))

(declare-fun m!545691 () Bool)

(assert (=> start!51916 m!545691))

(declare-fun m!545693 () Bool)

(assert (=> start!51916 m!545693))

(check-sat (not b!567068) (not b!567069) (not b!567075) (not b!567074) (not b!567076) (not start!51916) (not b!567070) (not b!567071) (not b!567077) (not b!567072))
(check-sat)
