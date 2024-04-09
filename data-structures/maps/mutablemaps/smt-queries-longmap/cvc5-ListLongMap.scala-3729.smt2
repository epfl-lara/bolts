; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51386 () Bool)

(assert start!51386)

(declare-fun b!560672 () Bool)

(declare-fun e!323068 () Bool)

(declare-fun e!323062 () Bool)

(assert (=> b!560672 (= e!323068 e!323062)))

(declare-fun res!351986 () Bool)

(assert (=> b!560672 (=> (not res!351986) (not e!323062))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35205 0))(
  ( (array!35206 (arr!16899 (Array (_ BitVec 32) (_ BitVec 64))) (size!17263 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35205)

(declare-datatypes ((SeekEntryResult!5355 0))(
  ( (MissingZero!5355 (index!23647 (_ BitVec 32))) (Found!5355 (index!23648 (_ BitVec 32))) (Intermediate!5355 (undefined!6167 Bool) (index!23649 (_ BitVec 32)) (x!52589 (_ BitVec 32))) (Undefined!5355) (MissingVacant!5355 (index!23650 (_ BitVec 32))) )
))
(declare-fun lt!255075 () SeekEntryResult!5355)

(declare-fun lt!255077 () SeekEntryResult!5355)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35205 (_ BitVec 32)) SeekEntryResult!5355)

(assert (=> b!560672 (= res!351986 (= lt!255075 (seekKeyOrZeroReturnVacant!0 (x!52589 lt!255077) (index!23649 lt!255077) (index!23649 lt!255077) (select (arr!16899 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560673 () Bool)

(declare-fun e!323064 () Bool)

(declare-fun e!323067 () Bool)

(assert (=> b!560673 (= e!323064 e!323067)))

(declare-fun res!351983 () Bool)

(assert (=> b!560673 (=> (not res!351983) (not e!323067))))

(declare-fun lt!255082 () (_ BitVec 64))

(declare-fun lt!255078 () array!35205)

(declare-fun lt!255080 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35205 (_ BitVec 32)) SeekEntryResult!5355)

(assert (=> b!560673 (= res!351983 (= lt!255077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255080 lt!255082 lt!255078 mask!3119)))))

(declare-fun lt!255076 () (_ BitVec 32))

(assert (=> b!560673 (= lt!255077 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255076 (select (arr!16899 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560673 (= lt!255080 (toIndex!0 lt!255082 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560673 (= lt!255082 (select (store (arr!16899 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560673 (= lt!255076 (toIndex!0 (select (arr!16899 a!3118) j!142) mask!3119))))

(assert (=> b!560673 (= lt!255078 (array!35206 (store (arr!16899 a!3118) i!1132 k!1914) (size!17263 a!3118)))))

(declare-fun b!560674 () Bool)

(declare-fun res!351976 () Bool)

(declare-fun e!323065 () Bool)

(assert (=> b!560674 (=> (not res!351976) (not e!323065))))

(assert (=> b!560674 (= res!351976 (and (= (size!17263 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17263 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17263 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560675 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35205 (_ BitVec 32)) SeekEntryResult!5355)

(assert (=> b!560675 (= e!323062 (= (seekEntryOrOpen!0 lt!255082 lt!255078 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52589 lt!255077) (index!23649 lt!255077) (index!23649 lt!255077) lt!255082 lt!255078 mask!3119)))))

(declare-fun b!560676 () Bool)

(assert (=> b!560676 (= e!323065 e!323064)))

(declare-fun res!351985 () Bool)

(assert (=> b!560676 (=> (not res!351985) (not e!323064))))

(declare-fun lt!255081 () SeekEntryResult!5355)

(assert (=> b!560676 (= res!351985 (or (= lt!255081 (MissingZero!5355 i!1132)) (= lt!255081 (MissingVacant!5355 i!1132))))))

(assert (=> b!560676 (= lt!255081 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!351975 () Bool)

(assert (=> start!51386 (=> (not res!351975) (not e!323065))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51386 (= res!351975 (validMask!0 mask!3119))))

(assert (=> start!51386 e!323065))

(assert (=> start!51386 true))

(declare-fun array_inv!12673 (array!35205) Bool)

(assert (=> start!51386 (array_inv!12673 a!3118)))

(declare-fun b!560677 () Bool)

(declare-fun res!351984 () Bool)

(assert (=> b!560677 (=> (not res!351984) (not e!323065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560677 (= res!351984 (validKeyInArray!0 k!1914))))

(declare-fun b!560678 () Bool)

(declare-fun res!351980 () Bool)

(assert (=> b!560678 (=> (not res!351980) (not e!323064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35205 (_ BitVec 32)) Bool)

(assert (=> b!560678 (= res!351980 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560679 () Bool)

(declare-fun res!351982 () Bool)

(assert (=> b!560679 (=> (not res!351982) (not e!323065))))

(assert (=> b!560679 (= res!351982 (validKeyInArray!0 (select (arr!16899 a!3118) j!142)))))

(declare-fun b!560680 () Bool)

(assert (=> b!560680 (= e!323067 (not true))))

(declare-fun e!323066 () Bool)

(assert (=> b!560680 e!323066))

(declare-fun res!351979 () Bool)

(assert (=> b!560680 (=> (not res!351979) (not e!323066))))

(assert (=> b!560680 (= res!351979 (= lt!255075 (Found!5355 j!142)))))

(assert (=> b!560680 (= lt!255075 (seekEntryOrOpen!0 (select (arr!16899 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560680 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17484 0))(
  ( (Unit!17485) )
))
(declare-fun lt!255079 () Unit!17484)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35205 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17484)

(assert (=> b!560680 (= lt!255079 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560681 () Bool)

(declare-fun res!351974 () Bool)

(assert (=> b!560681 (=> (not res!351974) (not e!323064))))

(declare-datatypes ((List!11032 0))(
  ( (Nil!11029) (Cons!11028 (h!12031 (_ BitVec 64)) (t!17268 List!11032)) )
))
(declare-fun arrayNoDuplicates!0 (array!35205 (_ BitVec 32) List!11032) Bool)

(assert (=> b!560681 (= res!351974 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11029))))

(declare-fun b!560682 () Bool)

(declare-fun e!323063 () Bool)

(assert (=> b!560682 (= e!323063 e!323068)))

(declare-fun res!351977 () Bool)

(assert (=> b!560682 (=> res!351977 e!323068)))

(declare-fun lt!255083 () (_ BitVec 64))

(assert (=> b!560682 (= res!351977 (or (= lt!255083 (select (arr!16899 a!3118) j!142)) (= lt!255083 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560682 (= lt!255083 (select (arr!16899 a!3118) (index!23649 lt!255077)))))

(declare-fun b!560683 () Bool)

(assert (=> b!560683 (= e!323066 e!323063)))

(declare-fun res!351981 () Bool)

(assert (=> b!560683 (=> res!351981 e!323063)))

(assert (=> b!560683 (= res!351981 (or (undefined!6167 lt!255077) (not (is-Intermediate!5355 lt!255077))))))

(declare-fun b!560684 () Bool)

(declare-fun res!351978 () Bool)

(assert (=> b!560684 (=> (not res!351978) (not e!323065))))

(declare-fun arrayContainsKey!0 (array!35205 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560684 (= res!351978 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51386 res!351975) b!560674))

(assert (= (and b!560674 res!351976) b!560679))

(assert (= (and b!560679 res!351982) b!560677))

(assert (= (and b!560677 res!351984) b!560684))

(assert (= (and b!560684 res!351978) b!560676))

(assert (= (and b!560676 res!351985) b!560678))

(assert (= (and b!560678 res!351980) b!560681))

(assert (= (and b!560681 res!351974) b!560673))

(assert (= (and b!560673 res!351983) b!560680))

(assert (= (and b!560680 res!351979) b!560683))

(assert (= (and b!560683 (not res!351981)) b!560682))

(assert (= (and b!560682 (not res!351977)) b!560672))

(assert (= (and b!560672 res!351986) b!560675))

(declare-fun m!538531 () Bool)

(assert (=> b!560677 m!538531))

(declare-fun m!538533 () Bool)

(assert (=> b!560673 m!538533))

(declare-fun m!538535 () Bool)

(assert (=> b!560673 m!538535))

(assert (=> b!560673 m!538533))

(declare-fun m!538537 () Bool)

(assert (=> b!560673 m!538537))

(assert (=> b!560673 m!538533))

(declare-fun m!538539 () Bool)

(assert (=> b!560673 m!538539))

(declare-fun m!538541 () Bool)

(assert (=> b!560673 m!538541))

(declare-fun m!538543 () Bool)

(assert (=> b!560673 m!538543))

(declare-fun m!538545 () Bool)

(assert (=> b!560673 m!538545))

(assert (=> b!560672 m!538533))

(assert (=> b!560672 m!538533))

(declare-fun m!538547 () Bool)

(assert (=> b!560672 m!538547))

(declare-fun m!538549 () Bool)

(assert (=> b!560676 m!538549))

(declare-fun m!538551 () Bool)

(assert (=> b!560675 m!538551))

(declare-fun m!538553 () Bool)

(assert (=> b!560675 m!538553))

(declare-fun m!538555 () Bool)

(assert (=> start!51386 m!538555))

(declare-fun m!538557 () Bool)

(assert (=> start!51386 m!538557))

(assert (=> b!560680 m!538533))

(assert (=> b!560680 m!538533))

(declare-fun m!538559 () Bool)

(assert (=> b!560680 m!538559))

(declare-fun m!538561 () Bool)

(assert (=> b!560680 m!538561))

(declare-fun m!538563 () Bool)

(assert (=> b!560680 m!538563))

(declare-fun m!538565 () Bool)

(assert (=> b!560678 m!538565))

(declare-fun m!538567 () Bool)

(assert (=> b!560684 m!538567))

(assert (=> b!560679 m!538533))

(assert (=> b!560679 m!538533))

(declare-fun m!538569 () Bool)

(assert (=> b!560679 m!538569))

(assert (=> b!560682 m!538533))

(declare-fun m!538571 () Bool)

(assert (=> b!560682 m!538571))

(declare-fun m!538573 () Bool)

(assert (=> b!560681 m!538573))

(push 1)

