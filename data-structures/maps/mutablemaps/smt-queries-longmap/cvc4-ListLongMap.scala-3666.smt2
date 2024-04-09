; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50634 () Bool)

(assert start!50634)

(declare-fun b!552959 () Bool)

(declare-fun res!345528 () Bool)

(declare-fun e!319012 () Bool)

(assert (=> b!552959 (=> (not res!345528) (not e!319012))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34813 0))(
  ( (array!34814 (arr!16712 (Array (_ BitVec 32) (_ BitVec 64))) (size!17076 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34813)

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5168 0))(
  ( (MissingZero!5168 (index!22899 (_ BitVec 32))) (Found!5168 (index!22900 (_ BitVec 32))) (Intermediate!5168 (undefined!5980 Bool) (index!22901 (_ BitVec 32)) (x!51853 (_ BitVec 32))) (Undefined!5168) (MissingVacant!5168 (index!22902 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34813 (_ BitVec 32)) SeekEntryResult!5168)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552959 (= res!345528 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16712 a!3118) j!142) mask!3119) (select (arr!16712 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16712 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16712 a!3118) i!1132 k!1914) j!142) (array!34814 (store (arr!16712 a!3118) i!1132 k!1914) (size!17076 a!3118)) mask!3119)))))

(declare-fun b!552960 () Bool)

(assert (=> b!552960 (= e!319012 (not true))))

(declare-fun e!319009 () Bool)

(assert (=> b!552960 e!319009))

(declare-fun res!345526 () Bool)

(assert (=> b!552960 (=> (not res!345526) (not e!319009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34813 (_ BitVec 32)) Bool)

(assert (=> b!552960 (= res!345526 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17110 0))(
  ( (Unit!17111) )
))
(declare-fun lt!251339 () Unit!17110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34813 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17110)

(assert (=> b!552960 (= lt!251339 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552961 () Bool)

(declare-fun res!345521 () Bool)

(declare-fun e!319011 () Bool)

(assert (=> b!552961 (=> (not res!345521) (not e!319011))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552961 (= res!345521 (validKeyInArray!0 (select (arr!16712 a!3118) j!142)))))

(declare-fun b!552962 () Bool)

(declare-fun res!345527 () Bool)

(assert (=> b!552962 (=> (not res!345527) (not e!319011))))

(assert (=> b!552962 (= res!345527 (validKeyInArray!0 k!1914))))

(declare-fun b!552963 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34813 (_ BitVec 32)) SeekEntryResult!5168)

(assert (=> b!552963 (= e!319009 (= (seekEntryOrOpen!0 (select (arr!16712 a!3118) j!142) a!3118 mask!3119) (Found!5168 j!142)))))

(declare-fun b!552964 () Bool)

(declare-fun res!345523 () Bool)

(assert (=> b!552964 (=> (not res!345523) (not e!319012))))

(declare-datatypes ((List!10845 0))(
  ( (Nil!10842) (Cons!10841 (h!11826 (_ BitVec 64)) (t!17081 List!10845)) )
))
(declare-fun arrayNoDuplicates!0 (array!34813 (_ BitVec 32) List!10845) Bool)

(assert (=> b!552964 (= res!345523 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10842))))

(declare-fun b!552965 () Bool)

(assert (=> b!552965 (= e!319011 e!319012)))

(declare-fun res!345522 () Bool)

(assert (=> b!552965 (=> (not res!345522) (not e!319012))))

(declare-fun lt!251338 () SeekEntryResult!5168)

(assert (=> b!552965 (= res!345522 (or (= lt!251338 (MissingZero!5168 i!1132)) (= lt!251338 (MissingVacant!5168 i!1132))))))

(assert (=> b!552965 (= lt!251338 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!345525 () Bool)

(assert (=> start!50634 (=> (not res!345525) (not e!319011))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50634 (= res!345525 (validMask!0 mask!3119))))

(assert (=> start!50634 e!319011))

(assert (=> start!50634 true))

(declare-fun array_inv!12486 (array!34813) Bool)

(assert (=> start!50634 (array_inv!12486 a!3118)))

(declare-fun b!552966 () Bool)

(declare-fun res!345530 () Bool)

(assert (=> b!552966 (=> (not res!345530) (not e!319011))))

(assert (=> b!552966 (= res!345530 (and (= (size!17076 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17076 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17076 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552967 () Bool)

(declare-fun res!345524 () Bool)

(assert (=> b!552967 (=> (not res!345524) (not e!319011))))

(declare-fun arrayContainsKey!0 (array!34813 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552967 (= res!345524 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552968 () Bool)

(declare-fun res!345529 () Bool)

(assert (=> b!552968 (=> (not res!345529) (not e!319012))))

(assert (=> b!552968 (= res!345529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50634 res!345525) b!552966))

(assert (= (and b!552966 res!345530) b!552961))

(assert (= (and b!552961 res!345521) b!552962))

(assert (= (and b!552962 res!345527) b!552967))

(assert (= (and b!552967 res!345524) b!552965))

(assert (= (and b!552965 res!345522) b!552968))

(assert (= (and b!552968 res!345529) b!552964))

(assert (= (and b!552964 res!345523) b!552959))

(assert (= (and b!552959 res!345528) b!552960))

(assert (= (and b!552960 res!345526) b!552963))

(declare-fun m!530023 () Bool)

(assert (=> b!552964 m!530023))

(declare-fun m!530025 () Bool)

(assert (=> b!552959 m!530025))

(declare-fun m!530027 () Bool)

(assert (=> b!552959 m!530027))

(assert (=> b!552959 m!530025))

(declare-fun m!530029 () Bool)

(assert (=> b!552959 m!530029))

(declare-fun m!530031 () Bool)

(assert (=> b!552959 m!530031))

(assert (=> b!552959 m!530029))

(declare-fun m!530033 () Bool)

(assert (=> b!552959 m!530033))

(assert (=> b!552959 m!530027))

(assert (=> b!552959 m!530025))

(declare-fun m!530035 () Bool)

(assert (=> b!552959 m!530035))

(declare-fun m!530037 () Bool)

(assert (=> b!552959 m!530037))

(assert (=> b!552959 m!530029))

(assert (=> b!552959 m!530031))

(declare-fun m!530039 () Bool)

(assert (=> b!552960 m!530039))

(declare-fun m!530041 () Bool)

(assert (=> b!552960 m!530041))

(declare-fun m!530043 () Bool)

(assert (=> start!50634 m!530043))

(declare-fun m!530045 () Bool)

(assert (=> start!50634 m!530045))

(declare-fun m!530047 () Bool)

(assert (=> b!552962 m!530047))

(declare-fun m!530049 () Bool)

(assert (=> b!552968 m!530049))

(declare-fun m!530051 () Bool)

(assert (=> b!552965 m!530051))

(assert (=> b!552961 m!530025))

(assert (=> b!552961 m!530025))

(declare-fun m!530053 () Bool)

(assert (=> b!552961 m!530053))

(assert (=> b!552963 m!530025))

(assert (=> b!552963 m!530025))

(declare-fun m!530055 () Bool)

(assert (=> b!552963 m!530055))

(declare-fun m!530057 () Bool)

(assert (=> b!552967 m!530057))

(push 1)

