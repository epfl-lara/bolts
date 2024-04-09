; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50848 () Bool)

(assert start!50848)

(declare-fun b!556034 () Bool)

(declare-fun res!348605 () Bool)

(declare-fun e!320377 () Bool)

(assert (=> b!556034 (=> (not res!348605) (not e!320377))))

(declare-datatypes ((array!35027 0))(
  ( (array!35028 (arr!16819 (Array (_ BitVec 32) (_ BitVec 64))) (size!17183 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35027)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35027 (_ BitVec 32)) Bool)

(assert (=> b!556034 (= res!348605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!348597 () Bool)

(declare-fun e!320376 () Bool)

(assert (=> start!50848 (=> (not res!348597) (not e!320376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50848 (= res!348597 (validMask!0 mask!3119))))

(assert (=> start!50848 e!320376))

(assert (=> start!50848 true))

(declare-fun array_inv!12593 (array!35027) Bool)

(assert (=> start!50848 (array_inv!12593 a!3118)))

(declare-fun b!556035 () Bool)

(declare-fun res!348596 () Bool)

(assert (=> b!556035 (=> (not res!348596) (not e!320376))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35027 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!556035 (= res!348596 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!556036 () Bool)

(assert (=> b!556036 (= e!320377 (not true))))

(declare-fun e!320375 () Bool)

(assert (=> b!556036 e!320375))

(declare-fun res!348601 () Bool)

(assert (=> b!556036 (=> (not res!348601) (not e!320375))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!556036 (= res!348601 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17324 0))(
  ( (Unit!17325) )
))
(declare-fun lt!252782 () Unit!17324)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35027 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17324)

(assert (=> b!556036 (= lt!252782 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!556037 () Bool)

(declare-fun res!348603 () Bool)

(assert (=> b!556037 (=> (not res!348603) (not e!320376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!556037 (= res!348603 (validKeyInArray!0 k0!1914))))

(declare-fun b!556038 () Bool)

(declare-fun res!348600 () Bool)

(assert (=> b!556038 (=> (not res!348600) (not e!320377))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5275 0))(
  ( (MissingZero!5275 (index!23327 (_ BitVec 32))) (Found!5275 (index!23328 (_ BitVec 32))) (Intermediate!5275 (undefined!6087 Bool) (index!23329 (_ BitVec 32)) (x!52248 (_ BitVec 32))) (Undefined!5275) (MissingVacant!5275 (index!23330 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35027 (_ BitVec 32)) SeekEntryResult!5275)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!556038 (= res!348600 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16819 a!3118) j!142) mask!3119) (select (arr!16819 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16819 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16819 a!3118) i!1132 k0!1914) j!142) (array!35028 (store (arr!16819 a!3118) i!1132 k0!1914) (size!17183 a!3118)) mask!3119)))))

(declare-fun b!556039 () Bool)

(declare-fun res!348599 () Bool)

(assert (=> b!556039 (=> (not res!348599) (not e!320377))))

(declare-datatypes ((List!10952 0))(
  ( (Nil!10949) (Cons!10948 (h!11933 (_ BitVec 64)) (t!17188 List!10952)) )
))
(declare-fun arrayNoDuplicates!0 (array!35027 (_ BitVec 32) List!10952) Bool)

(assert (=> b!556039 (= res!348599 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10949))))

(declare-fun b!556040 () Bool)

(declare-fun res!348604 () Bool)

(assert (=> b!556040 (=> (not res!348604) (not e!320376))))

(assert (=> b!556040 (= res!348604 (and (= (size!17183 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17183 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17183 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!556041 () Bool)

(assert (=> b!556041 (= e!320376 e!320377)))

(declare-fun res!348602 () Bool)

(assert (=> b!556041 (=> (not res!348602) (not e!320377))))

(declare-fun lt!252781 () SeekEntryResult!5275)

(assert (=> b!556041 (= res!348602 (or (= lt!252781 (MissingZero!5275 i!1132)) (= lt!252781 (MissingVacant!5275 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35027 (_ BitVec 32)) SeekEntryResult!5275)

(assert (=> b!556041 (= lt!252781 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!556042 () Bool)

(declare-fun res!348598 () Bool)

(assert (=> b!556042 (=> (not res!348598) (not e!320376))))

(assert (=> b!556042 (= res!348598 (validKeyInArray!0 (select (arr!16819 a!3118) j!142)))))

(declare-fun b!556043 () Bool)

(assert (=> b!556043 (= e!320375 (= (seekEntryOrOpen!0 (select (arr!16819 a!3118) j!142) a!3118 mask!3119) (Found!5275 j!142)))))

(assert (= (and start!50848 res!348597) b!556040))

(assert (= (and b!556040 res!348604) b!556042))

(assert (= (and b!556042 res!348598) b!556037))

(assert (= (and b!556037 res!348603) b!556035))

(assert (= (and b!556035 res!348596) b!556041))

(assert (= (and b!556041 res!348602) b!556034))

(assert (= (and b!556034 res!348605) b!556039))

(assert (= (and b!556039 res!348599) b!556038))

(assert (= (and b!556038 res!348600) b!556036))

(assert (= (and b!556036 res!348601) b!556043))

(declare-fun m!534019 () Bool)

(assert (=> b!556038 m!534019))

(declare-fun m!534021 () Bool)

(assert (=> b!556038 m!534021))

(assert (=> b!556038 m!534019))

(declare-fun m!534023 () Bool)

(assert (=> b!556038 m!534023))

(declare-fun m!534025 () Bool)

(assert (=> b!556038 m!534025))

(assert (=> b!556038 m!534023))

(declare-fun m!534027 () Bool)

(assert (=> b!556038 m!534027))

(assert (=> b!556038 m!534021))

(assert (=> b!556038 m!534019))

(declare-fun m!534029 () Bool)

(assert (=> b!556038 m!534029))

(declare-fun m!534031 () Bool)

(assert (=> b!556038 m!534031))

(assert (=> b!556038 m!534023))

(assert (=> b!556038 m!534025))

(assert (=> b!556042 m!534019))

(assert (=> b!556042 m!534019))

(declare-fun m!534033 () Bool)

(assert (=> b!556042 m!534033))

(declare-fun m!534035 () Bool)

(assert (=> b!556037 m!534035))

(declare-fun m!534037 () Bool)

(assert (=> b!556035 m!534037))

(declare-fun m!534039 () Bool)

(assert (=> b!556036 m!534039))

(declare-fun m!534041 () Bool)

(assert (=> b!556036 m!534041))

(declare-fun m!534043 () Bool)

(assert (=> b!556039 m!534043))

(assert (=> b!556043 m!534019))

(assert (=> b!556043 m!534019))

(declare-fun m!534045 () Bool)

(assert (=> b!556043 m!534045))

(declare-fun m!534047 () Bool)

(assert (=> b!556034 m!534047))

(declare-fun m!534049 () Bool)

(assert (=> start!50848 m!534049))

(declare-fun m!534051 () Bool)

(assert (=> start!50848 m!534051))

(declare-fun m!534053 () Bool)

(assert (=> b!556041 m!534053))

(check-sat (not b!556043) (not b!556034) (not b!556041) (not start!50848) (not b!556038) (not b!556035) (not b!556036) (not b!556039) (not b!556042) (not b!556037))
(check-sat)
