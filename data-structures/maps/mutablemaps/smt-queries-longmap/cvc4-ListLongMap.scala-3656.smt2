; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50514 () Bool)

(assert start!50514)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!551759 () Bool)

(declare-datatypes ((array!34750 0))(
  ( (array!34751 (arr!16682 (Array (_ BitVec 32) (_ BitVec 64))) (size!17046 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34750)

(declare-fun e!318429 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5138 0))(
  ( (MissingZero!5138 (index!22779 (_ BitVec 32))) (Found!5138 (index!22780 (_ BitVec 32))) (Intermediate!5138 (undefined!5950 Bool) (index!22781 (_ BitVec 32)) (x!51737 (_ BitVec 32))) (Undefined!5138) (MissingVacant!5138 (index!22782 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34750 (_ BitVec 32)) SeekEntryResult!5138)

(assert (=> b!551759 (= e!318429 (= (seekEntryOrOpen!0 (select (arr!16682 a!3118) j!142) a!3118 mask!3119) (Found!5138 j!142)))))

(declare-fun b!551760 () Bool)

(declare-fun e!318427 () Bool)

(assert (=> b!551760 (= e!318427 (not true))))

(assert (=> b!551760 e!318429))

(declare-fun res!344513 () Bool)

(assert (=> b!551760 (=> (not res!344513) (not e!318429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34750 (_ BitVec 32)) Bool)

(assert (=> b!551760 (= res!344513 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17050 0))(
  ( (Unit!17051) )
))
(declare-fun lt!250966 () Unit!17050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34750 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17050)

(assert (=> b!551760 (= lt!250966 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!344510 () Bool)

(declare-fun e!318430 () Bool)

(assert (=> start!50514 (=> (not res!344510) (not e!318430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50514 (= res!344510 (validMask!0 mask!3119))))

(assert (=> start!50514 e!318430))

(assert (=> start!50514 true))

(declare-fun array_inv!12456 (array!34750) Bool)

(assert (=> start!50514 (array_inv!12456 a!3118)))

(declare-fun b!551761 () Bool)

(declare-fun res!344505 () Bool)

(assert (=> b!551761 (=> (not res!344505) (not e!318430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551761 (= res!344505 (validKeyInArray!0 (select (arr!16682 a!3118) j!142)))))

(declare-fun b!551762 () Bool)

(declare-fun res!344506 () Bool)

(assert (=> b!551762 (=> (not res!344506) (not e!318427))))

(declare-datatypes ((List!10815 0))(
  ( (Nil!10812) (Cons!10811 (h!11793 (_ BitVec 64)) (t!17051 List!10815)) )
))
(declare-fun arrayNoDuplicates!0 (array!34750 (_ BitVec 32) List!10815) Bool)

(assert (=> b!551762 (= res!344506 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10812))))

(declare-fun b!551763 () Bool)

(declare-fun res!344509 () Bool)

(assert (=> b!551763 (=> (not res!344509) (not e!318430))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551763 (= res!344509 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551764 () Bool)

(declare-fun res!344507 () Bool)

(assert (=> b!551764 (=> (not res!344507) (not e!318430))))

(assert (=> b!551764 (= res!344507 (validKeyInArray!0 k!1914))))

(declare-fun b!551765 () Bool)

(declare-fun res!344512 () Bool)

(assert (=> b!551765 (=> (not res!344512) (not e!318427))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34750 (_ BitVec 32)) SeekEntryResult!5138)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551765 (= res!344512 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16682 a!3118) j!142) mask!3119) (select (arr!16682 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16682 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16682 a!3118) i!1132 k!1914) j!142) (array!34751 (store (arr!16682 a!3118) i!1132 k!1914) (size!17046 a!3118)) mask!3119)))))

(declare-fun b!551766 () Bool)

(declare-fun res!344511 () Bool)

(assert (=> b!551766 (=> (not res!344511) (not e!318430))))

(assert (=> b!551766 (= res!344511 (and (= (size!17046 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17046 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17046 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551767 () Bool)

(declare-fun res!344508 () Bool)

(assert (=> b!551767 (=> (not res!344508) (not e!318427))))

(assert (=> b!551767 (= res!344508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551768 () Bool)

(assert (=> b!551768 (= e!318430 e!318427)))

(declare-fun res!344504 () Bool)

(assert (=> b!551768 (=> (not res!344504) (not e!318427))))

(declare-fun lt!250967 () SeekEntryResult!5138)

(assert (=> b!551768 (= res!344504 (or (= lt!250967 (MissingZero!5138 i!1132)) (= lt!250967 (MissingVacant!5138 i!1132))))))

(assert (=> b!551768 (= lt!250967 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50514 res!344510) b!551766))

(assert (= (and b!551766 res!344511) b!551761))

(assert (= (and b!551761 res!344505) b!551764))

(assert (= (and b!551764 res!344507) b!551763))

(assert (= (and b!551763 res!344509) b!551768))

(assert (= (and b!551768 res!344504) b!551767))

(assert (= (and b!551767 res!344508) b!551762))

(assert (= (and b!551762 res!344506) b!551765))

(assert (= (and b!551765 res!344512) b!551760))

(assert (= (and b!551760 res!344513) b!551759))

(declare-fun m!528733 () Bool)

(assert (=> b!551767 m!528733))

(declare-fun m!528735 () Bool)

(assert (=> b!551765 m!528735))

(declare-fun m!528737 () Bool)

(assert (=> b!551765 m!528737))

(assert (=> b!551765 m!528735))

(declare-fun m!528739 () Bool)

(assert (=> b!551765 m!528739))

(declare-fun m!528741 () Bool)

(assert (=> b!551765 m!528741))

(assert (=> b!551765 m!528739))

(declare-fun m!528743 () Bool)

(assert (=> b!551765 m!528743))

(assert (=> b!551765 m!528737))

(assert (=> b!551765 m!528735))

(declare-fun m!528745 () Bool)

(assert (=> b!551765 m!528745))

(declare-fun m!528747 () Bool)

(assert (=> b!551765 m!528747))

(assert (=> b!551765 m!528739))

(assert (=> b!551765 m!528741))

(assert (=> b!551761 m!528735))

(assert (=> b!551761 m!528735))

(declare-fun m!528749 () Bool)

(assert (=> b!551761 m!528749))

(assert (=> b!551759 m!528735))

(assert (=> b!551759 m!528735))

(declare-fun m!528751 () Bool)

(assert (=> b!551759 m!528751))

(declare-fun m!528753 () Bool)

(assert (=> b!551762 m!528753))

(declare-fun m!528755 () Bool)

(assert (=> b!551763 m!528755))

(declare-fun m!528757 () Bool)

(assert (=> b!551768 m!528757))

(declare-fun m!528759 () Bool)

(assert (=> b!551764 m!528759))

(declare-fun m!528761 () Bool)

(assert (=> start!50514 m!528761))

(declare-fun m!528763 () Bool)

(assert (=> start!50514 m!528763))

(declare-fun m!528765 () Bool)

(assert (=> b!551760 m!528765))

(declare-fun m!528767 () Bool)

(assert (=> b!551760 m!528767))

(push 1)

