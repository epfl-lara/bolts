; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50738 () Bool)

(assert start!50738)

(declare-fun b!554518 () Bool)

(declare-fun res!347081 () Bool)

(declare-fun e!319707 () Bool)

(assert (=> b!554518 (=> (not res!347081) (not e!319707))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554518 (= res!347081 (validKeyInArray!0 k!1914))))

(declare-fun b!554519 () Bool)

(declare-fun res!347079 () Bool)

(declare-fun e!319705 () Bool)

(assert (=> b!554519 (=> (not res!347079) (not e!319705))))

(declare-datatypes ((array!34917 0))(
  ( (array!34918 (arr!16764 (Array (_ BitVec 32) (_ BitVec 64))) (size!17128 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34917)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34917 (_ BitVec 32)) Bool)

(assert (=> b!554519 (= res!347079 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554520 () Bool)

(declare-fun res!347087 () Bool)

(assert (=> b!554520 (=> (not res!347087) (not e!319707))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!554520 (= res!347087 (validKeyInArray!0 (select (arr!16764 a!3118) j!142)))))

(declare-fun b!554521 () Bool)

(declare-fun res!347086 () Bool)

(assert (=> b!554521 (=> (not res!347086) (not e!319707))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554521 (= res!347086 (and (= (size!17128 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17128 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17128 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!347083 () Bool)

(assert (=> start!50738 (=> (not res!347083) (not e!319707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50738 (= res!347083 (validMask!0 mask!3119))))

(assert (=> start!50738 e!319707))

(assert (=> start!50738 true))

(declare-fun array_inv!12538 (array!34917) Bool)

(assert (=> start!50738 (array_inv!12538 a!3118)))

(declare-fun b!554517 () Bool)

(declare-fun e!319708 () Bool)

(assert (=> b!554517 (= e!319705 e!319708)))

(declare-fun res!347080 () Bool)

(assert (=> b!554517 (=> (not res!347080) (not e!319708))))

(declare-datatypes ((SeekEntryResult!5220 0))(
  ( (MissingZero!5220 (index!23107 (_ BitVec 32))) (Found!5220 (index!23108 (_ BitVec 32))) (Intermediate!5220 (undefined!6032 Bool) (index!23109 (_ BitVec 32)) (x!52049 (_ BitVec 32))) (Undefined!5220) (MissingVacant!5220 (index!23110 (_ BitVec 32))) )
))
(declare-fun lt!251892 () SeekEntryResult!5220)

(declare-fun lt!251896 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34917 (_ BitVec 32)) SeekEntryResult!5220)

(assert (=> b!554517 (= res!347080 (= lt!251892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251896 (select (store (arr!16764 a!3118) i!1132 k!1914) j!142) (array!34918 (store (arr!16764 a!3118) i!1132 k!1914) (size!17128 a!3118)) mask!3119)))))

(declare-fun lt!251895 () (_ BitVec 32))

(assert (=> b!554517 (= lt!251892 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251895 (select (arr!16764 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554517 (= lt!251896 (toIndex!0 (select (store (arr!16764 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554517 (= lt!251895 (toIndex!0 (select (arr!16764 a!3118) j!142) mask!3119))))

(declare-fun b!554522 () Bool)

(declare-fun res!347085 () Bool)

(assert (=> b!554522 (=> (not res!347085) (not e!319705))))

(declare-datatypes ((List!10897 0))(
  ( (Nil!10894) (Cons!10893 (h!11878 (_ BitVec 64)) (t!17133 List!10897)) )
))
(declare-fun arrayNoDuplicates!0 (array!34917 (_ BitVec 32) List!10897) Bool)

(assert (=> b!554522 (= res!347085 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10894))))

(declare-fun b!554523 () Bool)

(declare-fun res!347082 () Bool)

(assert (=> b!554523 (=> (not res!347082) (not e!319707))))

(declare-fun arrayContainsKey!0 (array!34917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554523 (= res!347082 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554524 () Bool)

(assert (=> b!554524 (= e!319707 e!319705)))

(declare-fun res!347084 () Bool)

(assert (=> b!554524 (=> (not res!347084) (not e!319705))))

(declare-fun lt!251893 () SeekEntryResult!5220)

(assert (=> b!554524 (= res!347084 (or (= lt!251893 (MissingZero!5220 i!1132)) (= lt!251893 (MissingVacant!5220 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34917 (_ BitVec 32)) SeekEntryResult!5220)

(assert (=> b!554524 (= lt!251893 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554525 () Bool)

(assert (=> b!554525 (= e!319708 (not true))))

(declare-fun lt!251894 () SeekEntryResult!5220)

(assert (=> b!554525 (and (= lt!251894 (Found!5220 j!142)) (or (undefined!6032 lt!251892) (not (is-Intermediate!5220 lt!251892)) (= (select (arr!16764 a!3118) (index!23109 lt!251892)) (select (arr!16764 a!3118) j!142)) (not (= (select (arr!16764 a!3118) (index!23109 lt!251892)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251894 (MissingZero!5220 (index!23109 lt!251892)))))))

(assert (=> b!554525 (= lt!251894 (seekEntryOrOpen!0 (select (arr!16764 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554525 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17214 0))(
  ( (Unit!17215) )
))
(declare-fun lt!251897 () Unit!17214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34917 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17214)

(assert (=> b!554525 (= lt!251897 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50738 res!347083) b!554521))

(assert (= (and b!554521 res!347086) b!554520))

(assert (= (and b!554520 res!347087) b!554518))

(assert (= (and b!554518 res!347081) b!554523))

(assert (= (and b!554523 res!347082) b!554524))

(assert (= (and b!554524 res!347084) b!554519))

(assert (= (and b!554519 res!347079) b!554522))

(assert (= (and b!554522 res!347085) b!554517))

(assert (= (and b!554517 res!347080) b!554525))

(declare-fun m!531943 () Bool)

(assert (=> b!554524 m!531943))

(declare-fun m!531945 () Bool)

(assert (=> start!50738 m!531945))

(declare-fun m!531947 () Bool)

(assert (=> start!50738 m!531947))

(declare-fun m!531949 () Bool)

(assert (=> b!554519 m!531949))

(declare-fun m!531951 () Bool)

(assert (=> b!554523 m!531951))

(declare-fun m!531953 () Bool)

(assert (=> b!554520 m!531953))

(assert (=> b!554520 m!531953))

(declare-fun m!531955 () Bool)

(assert (=> b!554520 m!531955))

(declare-fun m!531957 () Bool)

(assert (=> b!554522 m!531957))

(assert (=> b!554517 m!531953))

(declare-fun m!531959 () Bool)

(assert (=> b!554517 m!531959))

(declare-fun m!531961 () Bool)

(assert (=> b!554517 m!531961))

(assert (=> b!554517 m!531961))

(declare-fun m!531963 () Bool)

(assert (=> b!554517 m!531963))

(assert (=> b!554517 m!531953))

(declare-fun m!531965 () Bool)

(assert (=> b!554517 m!531965))

(assert (=> b!554517 m!531953))

(declare-fun m!531967 () Bool)

(assert (=> b!554517 m!531967))

(assert (=> b!554517 m!531961))

(declare-fun m!531969 () Bool)

(assert (=> b!554517 m!531969))

(declare-fun m!531971 () Bool)

(assert (=> b!554518 m!531971))

(assert (=> b!554525 m!531953))

(declare-fun m!531973 () Bool)

(assert (=> b!554525 m!531973))

(declare-fun m!531975 () Bool)

(assert (=> b!554525 m!531975))

(declare-fun m!531977 () Bool)

(assert (=> b!554525 m!531977))

(assert (=> b!554525 m!531953))

(declare-fun m!531979 () Bool)

(assert (=> b!554525 m!531979))

(push 1)

