; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50274 () Bool)

(assert start!50274)

(declare-fun b!549986 () Bool)

(declare-fun res!343283 () Bool)

(declare-fun e!317502 () Bool)

(assert (=> b!549986 (=> (not res!343283) (not e!317502))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34681 0))(
  ( (array!34682 (arr!16652 (Array (_ BitVec 32) (_ BitVec 64))) (size!17016 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34681)

(assert (=> b!549986 (= res!343283 (and (= (size!17016 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17016 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17016 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549987 () Bool)

(declare-fun res!343286 () Bool)

(declare-fun e!317503 () Bool)

(assert (=> b!549987 (=> (not res!343286) (not e!317503))))

(declare-datatypes ((List!10785 0))(
  ( (Nil!10782) (Cons!10781 (h!11754 (_ BitVec 64)) (t!17021 List!10785)) )
))
(declare-fun arrayNoDuplicates!0 (array!34681 (_ BitVec 32) List!10785) Bool)

(assert (=> b!549987 (= res!343286 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10782))))

(declare-fun b!549988 () Bool)

(declare-fun res!343280 () Bool)

(assert (=> b!549988 (=> (not res!343280) (not e!317502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549988 (= res!343280 (validKeyInArray!0 (select (arr!16652 a!3118) j!142)))))

(declare-fun b!549989 () Bool)

(assert (=> b!549989 (= e!317503 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!317501 () Bool)

(assert (=> b!549989 e!317501))

(declare-fun res!343284 () Bool)

(assert (=> b!549989 (=> (not res!343284) (not e!317501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34681 (_ BitVec 32)) Bool)

(assert (=> b!549989 (= res!343284 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!16990 0))(
  ( (Unit!16991) )
))
(declare-fun lt!250391 () Unit!16990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16990)

(assert (=> b!549989 (= lt!250391 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549990 () Bool)

(declare-fun res!343282 () Bool)

(assert (=> b!549990 (=> (not res!343282) (not e!317503))))

(assert (=> b!549990 (= res!343282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549991 () Bool)

(declare-datatypes ((SeekEntryResult!5108 0))(
  ( (MissingZero!5108 (index!22659 (_ BitVec 32))) (Found!5108 (index!22660 (_ BitVec 32))) (Intermediate!5108 (undefined!5920 Bool) (index!22661 (_ BitVec 32)) (x!51609 (_ BitVec 32))) (Undefined!5108) (MissingVacant!5108 (index!22662 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34681 (_ BitVec 32)) SeekEntryResult!5108)

(assert (=> b!549991 (= e!317501 (= (seekEntryOrOpen!0 (select (arr!16652 a!3118) j!142) a!3118 mask!3119) (Found!5108 j!142)))))

(declare-fun b!549993 () Bool)

(declare-fun res!343285 () Bool)

(assert (=> b!549993 (=> (not res!343285) (not e!317502))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!549993 (= res!343285 (validKeyInArray!0 k!1914))))

(declare-fun b!549994 () Bool)

(declare-fun res!343288 () Bool)

(assert (=> b!549994 (=> (not res!343288) (not e!317503))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34681 (_ BitVec 32)) SeekEntryResult!5108)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549994 (= res!343288 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16652 a!3118) j!142) mask!3119) (select (arr!16652 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16652 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16652 a!3118) i!1132 k!1914) j!142) (array!34682 (store (arr!16652 a!3118) i!1132 k!1914) (size!17016 a!3118)) mask!3119)))))

(declare-fun b!549995 () Bool)

(declare-fun res!343289 () Bool)

(assert (=> b!549995 (=> (not res!343289) (not e!317502))))

(declare-fun arrayContainsKey!0 (array!34681 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549995 (= res!343289 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549992 () Bool)

(assert (=> b!549992 (= e!317502 e!317503)))

(declare-fun res!343281 () Bool)

(assert (=> b!549992 (=> (not res!343281) (not e!317503))))

(declare-fun lt!250390 () SeekEntryResult!5108)

(assert (=> b!549992 (= res!343281 (or (= lt!250390 (MissingZero!5108 i!1132)) (= lt!250390 (MissingVacant!5108 i!1132))))))

(assert (=> b!549992 (= lt!250390 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!343287 () Bool)

(assert (=> start!50274 (=> (not res!343287) (not e!317502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50274 (= res!343287 (validMask!0 mask!3119))))

(assert (=> start!50274 e!317502))

(assert (=> start!50274 true))

(declare-fun array_inv!12426 (array!34681) Bool)

(assert (=> start!50274 (array_inv!12426 a!3118)))

(assert (= (and start!50274 res!343287) b!549986))

(assert (= (and b!549986 res!343283) b!549988))

(assert (= (and b!549988 res!343280) b!549993))

(assert (= (and b!549993 res!343285) b!549995))

(assert (= (and b!549995 res!343289) b!549992))

(assert (= (and b!549992 res!343281) b!549990))

(assert (= (and b!549990 res!343282) b!549987))

(assert (= (and b!549987 res!343286) b!549994))

(assert (= (and b!549994 res!343288) b!549989))

(assert (= (and b!549989 res!343284) b!549991))

(declare-fun m!527053 () Bool)

(assert (=> b!549995 m!527053))

(declare-fun m!527055 () Bool)

(assert (=> b!549988 m!527055))

(assert (=> b!549988 m!527055))

(declare-fun m!527057 () Bool)

(assert (=> b!549988 m!527057))

(declare-fun m!527059 () Bool)

(assert (=> start!50274 m!527059))

(declare-fun m!527061 () Bool)

(assert (=> start!50274 m!527061))

(declare-fun m!527063 () Bool)

(assert (=> b!549993 m!527063))

(declare-fun m!527065 () Bool)

(assert (=> b!549990 m!527065))

(assert (=> b!549994 m!527055))

(declare-fun m!527067 () Bool)

(assert (=> b!549994 m!527067))

(assert (=> b!549994 m!527055))

(declare-fun m!527069 () Bool)

(assert (=> b!549994 m!527069))

(declare-fun m!527071 () Bool)

(assert (=> b!549994 m!527071))

(assert (=> b!549994 m!527069))

(declare-fun m!527073 () Bool)

(assert (=> b!549994 m!527073))

(assert (=> b!549994 m!527067))

(assert (=> b!549994 m!527055))

(declare-fun m!527075 () Bool)

(assert (=> b!549994 m!527075))

(declare-fun m!527077 () Bool)

(assert (=> b!549994 m!527077))

(assert (=> b!549994 m!527069))

(assert (=> b!549994 m!527071))

(declare-fun m!527079 () Bool)

(assert (=> b!549989 m!527079))

(declare-fun m!527081 () Bool)

(assert (=> b!549989 m!527081))

(declare-fun m!527083 () Bool)

(assert (=> b!549992 m!527083))

(declare-fun m!527085 () Bool)

(assert (=> b!549987 m!527085))

(assert (=> b!549991 m!527055))

(assert (=> b!549991 m!527055))

(declare-fun m!527087 () Bool)

(assert (=> b!549991 m!527087))

(push 1)

(assert (not b!549992))

(assert (not b!549993))

(assert (not b!549990))

(assert (not b!549994))

(assert (not start!50274))

(assert (not b!549987))

(assert (not b!549988))

(assert (not b!549989))

(assert (not b!549995))

(assert (not b!549991))

