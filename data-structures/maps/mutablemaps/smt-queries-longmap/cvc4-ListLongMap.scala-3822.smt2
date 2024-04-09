; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52440 () Bool)

(assert start!52440)

(declare-fun b!571997 () Bool)

(declare-fun e!329023 () Bool)

(declare-fun e!329021 () Bool)

(assert (=> b!571997 (= e!329023 e!329021)))

(declare-fun res!361656 () Bool)

(assert (=> b!571997 (=> (not res!361656) (not e!329021))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5636 0))(
  ( (MissingZero!5636 (index!24771 (_ BitVec 32))) (Found!5636 (index!24772 (_ BitVec 32))) (Intermediate!5636 (undefined!6448 Bool) (index!24773 (_ BitVec 32)) (x!53668 (_ BitVec 32))) (Undefined!5636) (MissingVacant!5636 (index!24774 (_ BitVec 32))) )
))
(declare-fun lt!261034 () SeekEntryResult!5636)

(declare-fun lt!261030 () SeekEntryResult!5636)

(declare-datatypes ((array!35791 0))(
  ( (array!35792 (arr!17180 (Array (_ BitVec 32) (_ BitVec 64))) (size!17544 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35791)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35791 (_ BitVec 32)) SeekEntryResult!5636)

(assert (=> b!571997 (= res!361656 (= lt!261030 (seekKeyOrZeroReturnVacant!0 (x!53668 lt!261034) (index!24773 lt!261034) (index!24773 lt!261034) (select (arr!17180 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571998 () Bool)

(declare-fun res!361663 () Bool)

(declare-fun e!329020 () Bool)

(assert (=> b!571998 (=> (not res!361663) (not e!329020))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571998 (= res!361663 (validKeyInArray!0 k!1914))))

(declare-fun b!571999 () Bool)

(declare-fun res!361667 () Bool)

(assert (=> b!571999 (=> (not res!361667) (not e!329020))))

(declare-fun arrayContainsKey!0 (array!35791 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571999 (= res!361667 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572000 () Bool)

(declare-fun res!361662 () Bool)

(assert (=> b!572000 (=> (not res!361662) (not e!329020))))

(assert (=> b!572000 (= res!361662 (validKeyInArray!0 (select (arr!17180 a!3118) j!142)))))

(declare-fun b!572001 () Bool)

(declare-fun e!329018 () Bool)

(assert (=> b!572001 (= e!329020 e!329018)))

(declare-fun res!361665 () Bool)

(assert (=> b!572001 (=> (not res!361665) (not e!329018))))

(declare-fun lt!261033 () SeekEntryResult!5636)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572001 (= res!361665 (or (= lt!261033 (MissingZero!5636 i!1132)) (= lt!261033 (MissingVacant!5636 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35791 (_ BitVec 32)) SeekEntryResult!5636)

(assert (=> b!572001 (= lt!261033 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!361660 () Bool)

(assert (=> start!52440 (=> (not res!361660) (not e!329020))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52440 (= res!361660 (validMask!0 mask!3119))))

(assert (=> start!52440 e!329020))

(assert (=> start!52440 true))

(declare-fun array_inv!12954 (array!35791) Bool)

(assert (=> start!52440 (array_inv!12954 a!3118)))

(declare-fun b!572002 () Bool)

(declare-fun res!361661 () Bool)

(assert (=> b!572002 (=> (not res!361661) (not e!329018))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35791 (_ BitVec 32)) Bool)

(assert (=> b!572002 (= res!361661 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572003 () Bool)

(declare-fun e!329019 () Bool)

(assert (=> b!572003 (= e!329019 e!329023)))

(declare-fun res!361658 () Bool)

(assert (=> b!572003 (=> res!361658 e!329023)))

(declare-fun lt!261027 () (_ BitVec 64))

(assert (=> b!572003 (= res!361658 (or (= lt!261027 (select (arr!17180 a!3118) j!142)) (= lt!261027 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572003 (= lt!261027 (select (arr!17180 a!3118) (index!24773 lt!261034)))))

(declare-fun b!572004 () Bool)

(declare-fun e!329016 () Bool)

(assert (=> b!572004 (= e!329016 e!329019)))

(declare-fun res!361666 () Bool)

(assert (=> b!572004 (=> res!361666 e!329019)))

(assert (=> b!572004 (= res!361666 (or (undefined!6448 lt!261034) (not (is-Intermediate!5636 lt!261034))))))

(declare-fun b!572005 () Bool)

(declare-fun res!361655 () Bool)

(assert (=> b!572005 (=> (not res!361655) (not e!329020))))

(assert (=> b!572005 (= res!361655 (and (= (size!17544 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17544 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17544 a!3118)) (not (= i!1132 j!142))))))

(declare-fun lt!261029 () (_ BitVec 64))

(declare-fun b!572006 () Bool)

(declare-fun lt!261032 () array!35791)

(assert (=> b!572006 (= e!329021 (= (seekEntryOrOpen!0 lt!261029 lt!261032 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53668 lt!261034) (index!24773 lt!261034) (index!24773 lt!261034) lt!261029 lt!261032 mask!3119)))))

(declare-fun b!572007 () Bool)

(declare-fun e!329017 () Bool)

(assert (=> b!572007 (= e!329017 (not true))))

(assert (=> b!572007 e!329016))

(declare-fun res!361657 () Bool)

(assert (=> b!572007 (=> (not res!361657) (not e!329016))))

(assert (=> b!572007 (= res!361657 (= lt!261030 (Found!5636 j!142)))))

(assert (=> b!572007 (= lt!261030 (seekEntryOrOpen!0 (select (arr!17180 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!572007 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17974 0))(
  ( (Unit!17975) )
))
(declare-fun lt!261035 () Unit!17974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17974)

(assert (=> b!572007 (= lt!261035 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572008 () Bool)

(assert (=> b!572008 (= e!329018 e!329017)))

(declare-fun res!361659 () Bool)

(assert (=> b!572008 (=> (not res!361659) (not e!329017))))

(declare-fun lt!261031 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35791 (_ BitVec 32)) SeekEntryResult!5636)

(assert (=> b!572008 (= res!361659 (= lt!261034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261031 lt!261029 lt!261032 mask!3119)))))

(declare-fun lt!261028 () (_ BitVec 32))

(assert (=> b!572008 (= lt!261034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261028 (select (arr!17180 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572008 (= lt!261031 (toIndex!0 lt!261029 mask!3119))))

(assert (=> b!572008 (= lt!261029 (select (store (arr!17180 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572008 (= lt!261028 (toIndex!0 (select (arr!17180 a!3118) j!142) mask!3119))))

(assert (=> b!572008 (= lt!261032 (array!35792 (store (arr!17180 a!3118) i!1132 k!1914) (size!17544 a!3118)))))

(declare-fun b!572009 () Bool)

(declare-fun res!361664 () Bool)

(assert (=> b!572009 (=> (not res!361664) (not e!329018))))

(declare-datatypes ((List!11313 0))(
  ( (Nil!11310) (Cons!11309 (h!12336 (_ BitVec 64)) (t!17549 List!11313)) )
))
(declare-fun arrayNoDuplicates!0 (array!35791 (_ BitVec 32) List!11313) Bool)

(assert (=> b!572009 (= res!361664 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11310))))

(assert (= (and start!52440 res!361660) b!572005))

(assert (= (and b!572005 res!361655) b!572000))

(assert (= (and b!572000 res!361662) b!571998))

(assert (= (and b!571998 res!361663) b!571999))

(assert (= (and b!571999 res!361667) b!572001))

(assert (= (and b!572001 res!361665) b!572002))

(assert (= (and b!572002 res!361661) b!572009))

(assert (= (and b!572009 res!361664) b!572008))

(assert (= (and b!572008 res!361659) b!572007))

(assert (= (and b!572007 res!361657) b!572004))

(assert (= (and b!572004 (not res!361666)) b!572003))

(assert (= (and b!572003 (not res!361658)) b!571997))

(assert (= (and b!571997 res!361656) b!572006))

(declare-fun m!550979 () Bool)

(assert (=> b!571999 m!550979))

(declare-fun m!550981 () Bool)

(assert (=> b!572000 m!550981))

(assert (=> b!572000 m!550981))

(declare-fun m!550983 () Bool)

(assert (=> b!572000 m!550983))

(declare-fun m!550985 () Bool)

(assert (=> b!572006 m!550985))

(declare-fun m!550987 () Bool)

(assert (=> b!572006 m!550987))

(assert (=> b!572008 m!550981))

(declare-fun m!550989 () Bool)

(assert (=> b!572008 m!550989))

(assert (=> b!572008 m!550981))

(declare-fun m!550991 () Bool)

(assert (=> b!572008 m!550991))

(declare-fun m!550993 () Bool)

(assert (=> b!572008 m!550993))

(assert (=> b!572008 m!550981))

(declare-fun m!550995 () Bool)

(assert (=> b!572008 m!550995))

(declare-fun m!550997 () Bool)

(assert (=> b!572008 m!550997))

(declare-fun m!550999 () Bool)

(assert (=> b!572008 m!550999))

(declare-fun m!551001 () Bool)

(assert (=> b!572001 m!551001))

(declare-fun m!551003 () Bool)

(assert (=> b!572009 m!551003))

(assert (=> b!572007 m!550981))

(assert (=> b!572007 m!550981))

(declare-fun m!551005 () Bool)

(assert (=> b!572007 m!551005))

(declare-fun m!551007 () Bool)

(assert (=> b!572007 m!551007))

(declare-fun m!551009 () Bool)

(assert (=> b!572007 m!551009))

(declare-fun m!551011 () Bool)

(assert (=> b!571998 m!551011))

(declare-fun m!551013 () Bool)

(assert (=> b!572002 m!551013))

(assert (=> b!571997 m!550981))

(assert (=> b!571997 m!550981))

(declare-fun m!551015 () Bool)

(assert (=> b!571997 m!551015))

(declare-fun m!551017 () Bool)

(assert (=> start!52440 m!551017))

(declare-fun m!551019 () Bool)

(assert (=> start!52440 m!551019))

(assert (=> b!572003 m!550981))

(declare-fun m!551021 () Bool)

(assert (=> b!572003 m!551021))

(push 1)

