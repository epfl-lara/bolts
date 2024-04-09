; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51102 () Bool)

(assert start!51102)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun e!321490 () Bool)

(declare-datatypes ((SeekEntryResult!5312 0))(
  ( (MissingZero!5312 (index!23475 (_ BitVec 32))) (Found!5312 (index!23476 (_ BitVec 32))) (Intermediate!5312 (undefined!6124 Bool) (index!23477 (_ BitVec 32)) (x!52399 (_ BitVec 32))) (Undefined!5312) (MissingVacant!5312 (index!23478 (_ BitVec 32))) )
))
(declare-fun lt!253641 () SeekEntryResult!5312)

(declare-fun lt!253639 () SeekEntryResult!5312)

(declare-fun b!558060 () Bool)

(declare-datatypes ((array!35110 0))(
  ( (array!35111 (arr!16856 (Array (_ BitVec 32) (_ BitVec 64))) (size!17220 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35110)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35110 (_ BitVec 32)) SeekEntryResult!5312)

(assert (=> b!558060 (= e!321490 (= lt!253641 (seekKeyOrZeroReturnVacant!0 (x!52399 lt!253639) (index!23477 lt!253639) (index!23477 lt!253639) (select (arr!16856 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!558061 () Bool)

(declare-fun res!350080 () Bool)

(declare-fun e!321495 () Bool)

(assert (=> b!558061 (=> (not res!350080) (not e!321495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35110 (_ BitVec 32)) Bool)

(assert (=> b!558061 (= res!350080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!558062 () Bool)

(declare-fun e!321496 () Bool)

(assert (=> b!558062 (= e!321496 e!321490)))

(declare-fun res!350077 () Bool)

(assert (=> b!558062 (=> res!350077 e!321490)))

(assert (=> b!558062 (= res!350077 (or (undefined!6124 lt!253639) (not (is-Intermediate!5312 lt!253639)) (= (select (arr!16856 a!3118) (index!23477 lt!253639)) (select (arr!16856 a!3118) j!142)) (= (select (arr!16856 a!3118) (index!23477 lt!253639)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!558063 () Bool)

(declare-fun res!350076 () Bool)

(declare-fun e!321494 () Bool)

(assert (=> b!558063 (=> (not res!350076) (not e!321494))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!558063 (= res!350076 (validKeyInArray!0 k!1914))))

(declare-fun b!558064 () Bool)

(declare-fun res!350073 () Bool)

(assert (=> b!558064 (=> (not res!350073) (not e!321494))))

(declare-fun arrayContainsKey!0 (array!35110 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!558064 (= res!350073 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!558065 () Bool)

(declare-fun e!321492 () Bool)

(declare-fun e!321493 () Bool)

(assert (=> b!558065 (= e!321492 (not e!321493))))

(declare-fun res!350074 () Bool)

(assert (=> b!558065 (=> res!350074 e!321493)))

(assert (=> b!558065 (= res!350074 (or (undefined!6124 lt!253639) (not (is-Intermediate!5312 lt!253639)) (= (select (arr!16856 a!3118) (index!23477 lt!253639)) (select (arr!16856 a!3118) j!142)) (= (select (arr!16856 a!3118) (index!23477 lt!253639)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!558065 e!321496))

(declare-fun res!350083 () Bool)

(assert (=> b!558065 (=> (not res!350083) (not e!321496))))

(assert (=> b!558065 (= res!350083 (= lt!253641 (Found!5312 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35110 (_ BitVec 32)) SeekEntryResult!5312)

(assert (=> b!558065 (= lt!253641 (seekEntryOrOpen!0 (select (arr!16856 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!558065 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17398 0))(
  ( (Unit!17399) )
))
(declare-fun lt!253638 () Unit!17398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35110 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17398)

(assert (=> b!558065 (= lt!253638 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!558066 () Bool)

(declare-fun res!350075 () Bool)

(assert (=> b!558066 (=> (not res!350075) (not e!321494))))

(assert (=> b!558066 (= res!350075 (validKeyInArray!0 (select (arr!16856 a!3118) j!142)))))

(declare-fun b!558067 () Bool)

(assert (=> b!558067 (= e!321494 e!321495)))

(declare-fun res!350082 () Bool)

(assert (=> b!558067 (=> (not res!350082) (not e!321495))))

(declare-fun lt!253642 () SeekEntryResult!5312)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!558067 (= res!350082 (or (= lt!253642 (MissingZero!5312 i!1132)) (= lt!253642 (MissingVacant!5312 i!1132))))))

(assert (=> b!558067 (= lt!253642 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!350084 () Bool)

(assert (=> start!51102 (=> (not res!350084) (not e!321494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51102 (= res!350084 (validMask!0 mask!3119))))

(assert (=> start!51102 e!321494))

(assert (=> start!51102 true))

(declare-fun array_inv!12630 (array!35110) Bool)

(assert (=> start!51102 (array_inv!12630 a!3118)))

(declare-fun b!558068 () Bool)

(declare-fun res!350078 () Bool)

(assert (=> b!558068 (=> (not res!350078) (not e!321495))))

(declare-datatypes ((List!10989 0))(
  ( (Nil!10986) (Cons!10985 (h!11979 (_ BitVec 64)) (t!17225 List!10989)) )
))
(declare-fun arrayNoDuplicates!0 (array!35110 (_ BitVec 32) List!10989) Bool)

(assert (=> b!558068 (= res!350078 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10986))))

(declare-fun b!558069 () Bool)

(assert (=> b!558069 (= e!321493 (validKeyInArray!0 (select (store (arr!16856 a!3118) i!1132 k!1914) j!142)))))

(declare-fun b!558070 () Bool)

(assert (=> b!558070 (= e!321495 e!321492)))

(declare-fun res!350079 () Bool)

(assert (=> b!558070 (=> (not res!350079) (not e!321492))))

(declare-fun lt!253643 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35110 (_ BitVec 32)) SeekEntryResult!5312)

(assert (=> b!558070 (= res!350079 (= lt!253639 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253643 (select (store (arr!16856 a!3118) i!1132 k!1914) j!142) (array!35111 (store (arr!16856 a!3118) i!1132 k!1914) (size!17220 a!3118)) mask!3119)))))

(declare-fun lt!253640 () (_ BitVec 32))

(assert (=> b!558070 (= lt!253639 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253640 (select (arr!16856 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!558070 (= lt!253643 (toIndex!0 (select (store (arr!16856 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!558070 (= lt!253640 (toIndex!0 (select (arr!16856 a!3118) j!142) mask!3119))))

(declare-fun b!558071 () Bool)

(declare-fun res!350081 () Bool)

(assert (=> b!558071 (=> (not res!350081) (not e!321494))))

(assert (=> b!558071 (= res!350081 (and (= (size!17220 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17220 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17220 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51102 res!350084) b!558071))

(assert (= (and b!558071 res!350081) b!558066))

(assert (= (and b!558066 res!350075) b!558063))

(assert (= (and b!558063 res!350076) b!558064))

(assert (= (and b!558064 res!350073) b!558067))

(assert (= (and b!558067 res!350082) b!558061))

(assert (= (and b!558061 res!350080) b!558068))

(assert (= (and b!558068 res!350078) b!558070))

(assert (= (and b!558070 res!350079) b!558065))

(assert (= (and b!558065 res!350083) b!558062))

(assert (= (and b!558062 (not res!350077)) b!558060))

(assert (= (and b!558065 (not res!350074)) b!558069))

(declare-fun m!536035 () Bool)

(assert (=> b!558060 m!536035))

(assert (=> b!558060 m!536035))

(declare-fun m!536037 () Bool)

(assert (=> b!558060 m!536037))

(declare-fun m!536039 () Bool)

(assert (=> b!558061 m!536039))

(assert (=> b!558066 m!536035))

(assert (=> b!558066 m!536035))

(declare-fun m!536041 () Bool)

(assert (=> b!558066 m!536041))

(declare-fun m!536043 () Bool)

(assert (=> start!51102 m!536043))

(declare-fun m!536045 () Bool)

(assert (=> start!51102 m!536045))

(declare-fun m!536047 () Bool)

(assert (=> b!558068 m!536047))

(assert (=> b!558070 m!536035))

(declare-fun m!536049 () Bool)

(assert (=> b!558070 m!536049))

(assert (=> b!558070 m!536035))

(declare-fun m!536051 () Bool)

(assert (=> b!558070 m!536051))

(assert (=> b!558070 m!536035))

(declare-fun m!536053 () Bool)

(assert (=> b!558070 m!536053))

(assert (=> b!558070 m!536051))

(declare-fun m!536055 () Bool)

(assert (=> b!558070 m!536055))

(declare-fun m!536057 () Bool)

(assert (=> b!558070 m!536057))

(assert (=> b!558070 m!536051))

(declare-fun m!536059 () Bool)

(assert (=> b!558070 m!536059))

(declare-fun m!536061 () Bool)

(assert (=> b!558063 m!536061))

(assert (=> b!558065 m!536035))

(declare-fun m!536063 () Bool)

(assert (=> b!558065 m!536063))

(declare-fun m!536065 () Bool)

(assert (=> b!558065 m!536065))

(declare-fun m!536067 () Bool)

(assert (=> b!558065 m!536067))

(assert (=> b!558065 m!536035))

(declare-fun m!536069 () Bool)

(assert (=> b!558065 m!536069))

(assert (=> b!558069 m!536057))

(assert (=> b!558069 m!536051))

(assert (=> b!558069 m!536051))

(declare-fun m!536071 () Bool)

(assert (=> b!558069 m!536071))

(declare-fun m!536073 () Bool)

(assert (=> b!558064 m!536073))

(declare-fun m!536075 () Bool)

(assert (=> b!558067 m!536075))

(assert (=> b!558062 m!536065))

(assert (=> b!558062 m!536035))

(push 1)

