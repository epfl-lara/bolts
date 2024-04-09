; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51002 () Bool)

(assert start!51002)

(declare-fun b!557126 () Bool)

(declare-fun res!349331 () Bool)

(declare-fun e!320977 () Bool)

(assert (=> b!557126 (=> (not res!349331) (not e!320977))))

(declare-datatypes ((array!35067 0))(
  ( (array!35068 (arr!16836 (Array (_ BitVec 32) (_ BitVec 64))) (size!17200 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35067)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35067 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557126 (= res!349331 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557127 () Bool)

(declare-fun res!349323 () Bool)

(declare-fun e!320978 () Bool)

(assert (=> b!557127 (=> (not res!349323) (not e!320978))))

(declare-datatypes ((List!10969 0))(
  ( (Nil!10966) (Cons!10965 (h!11956 (_ BitVec 64)) (t!17205 List!10969)) )
))
(declare-fun arrayNoDuplicates!0 (array!35067 (_ BitVec 32) List!10969) Bool)

(assert (=> b!557127 (= res!349323 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10966))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!557128 () Bool)

(declare-fun e!320979 () Bool)

(declare-datatypes ((SeekEntryResult!5292 0))(
  ( (MissingZero!5292 (index!23395 (_ BitVec 32))) (Found!5292 (index!23396 (_ BitVec 32))) (Intermediate!5292 (undefined!6104 Bool) (index!23397 (_ BitVec 32)) (x!52325 (_ BitVec 32))) (Undefined!5292) (MissingVacant!5292 (index!23398 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35067 (_ BitVec 32)) SeekEntryResult!5292)

(assert (=> b!557128 (= e!320979 (= (seekEntryOrOpen!0 (select (arr!16836 a!3118) j!142) a!3118 mask!3119) (Found!5292 j!142)))))

(declare-fun b!557129 () Bool)

(assert (=> b!557129 (= e!320977 e!320978)))

(declare-fun res!349322 () Bool)

(assert (=> b!557129 (=> (not res!349322) (not e!320978))))

(declare-fun lt!253223 () SeekEntryResult!5292)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!557129 (= res!349322 (or (= lt!253223 (MissingZero!5292 i!1132)) (= lt!253223 (MissingVacant!5292 i!1132))))))

(assert (=> b!557129 (= lt!253223 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!349325 () Bool)

(assert (=> start!51002 (=> (not res!349325) (not e!320977))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51002 (= res!349325 (validMask!0 mask!3119))))

(assert (=> start!51002 e!320977))

(assert (=> start!51002 true))

(declare-fun array_inv!12610 (array!35067) Bool)

(assert (=> start!51002 (array_inv!12610 a!3118)))

(declare-fun b!557130 () Bool)

(declare-fun res!349326 () Bool)

(assert (=> b!557130 (=> (not res!349326) (not e!320978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35067 (_ BitVec 32)) Bool)

(assert (=> b!557130 (= res!349326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557131 () Bool)

(assert (=> b!557131 (= e!320978 (not true))))

(assert (=> b!557131 e!320979))

(declare-fun res!349330 () Bool)

(assert (=> b!557131 (=> (not res!349330) (not e!320979))))

(assert (=> b!557131 (= res!349330 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17358 0))(
  ( (Unit!17359) )
))
(declare-fun lt!253222 () Unit!17358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17358)

(assert (=> b!557131 (= lt!253222 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557132 () Bool)

(declare-fun res!349327 () Bool)

(assert (=> b!557132 (=> (not res!349327) (not e!320977))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557132 (= res!349327 (validKeyInArray!0 (select (arr!16836 a!3118) j!142)))))

(declare-fun b!557133 () Bool)

(declare-fun res!349329 () Bool)

(assert (=> b!557133 (=> (not res!349329) (not e!320977))))

(assert (=> b!557133 (= res!349329 (validKeyInArray!0 k!1914))))

(declare-fun b!557134 () Bool)

(declare-fun res!349328 () Bool)

(assert (=> b!557134 (=> (not res!349328) (not e!320977))))

(assert (=> b!557134 (= res!349328 (and (= (size!17200 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17200 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17200 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557135 () Bool)

(declare-fun res!349324 () Bool)

(assert (=> b!557135 (=> (not res!349324) (not e!320978))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35067 (_ BitVec 32)) SeekEntryResult!5292)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557135 (= res!349324 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16836 a!3118) j!142) mask!3119) (select (arr!16836 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16836 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16836 a!3118) i!1132 k!1914) j!142) (array!35068 (store (arr!16836 a!3118) i!1132 k!1914) (size!17200 a!3118)) mask!3119)))))

(assert (= (and start!51002 res!349325) b!557134))

(assert (= (and b!557134 res!349328) b!557132))

(assert (= (and b!557132 res!349327) b!557133))

(assert (= (and b!557133 res!349329) b!557126))

(assert (= (and b!557126 res!349331) b!557129))

(assert (= (and b!557129 res!349322) b!557130))

(assert (= (and b!557130 res!349326) b!557127))

(assert (= (and b!557127 res!349323) b!557135))

(assert (= (and b!557135 res!349324) b!557131))

(assert (= (and b!557131 res!349330) b!557128))

(declare-fun m!535057 () Bool)

(assert (=> b!557127 m!535057))

(declare-fun m!535059 () Bool)

(assert (=> b!557129 m!535059))

(declare-fun m!535061 () Bool)

(assert (=> b!557133 m!535061))

(declare-fun m!535063 () Bool)

(assert (=> b!557130 m!535063))

(declare-fun m!535065 () Bool)

(assert (=> b!557128 m!535065))

(assert (=> b!557128 m!535065))

(declare-fun m!535067 () Bool)

(assert (=> b!557128 m!535067))

(assert (=> b!557135 m!535065))

(declare-fun m!535069 () Bool)

(assert (=> b!557135 m!535069))

(assert (=> b!557135 m!535065))

(declare-fun m!535071 () Bool)

(assert (=> b!557135 m!535071))

(declare-fun m!535073 () Bool)

(assert (=> b!557135 m!535073))

(assert (=> b!557135 m!535071))

(declare-fun m!535075 () Bool)

(assert (=> b!557135 m!535075))

(assert (=> b!557135 m!535069))

(assert (=> b!557135 m!535065))

(declare-fun m!535077 () Bool)

(assert (=> b!557135 m!535077))

(declare-fun m!535079 () Bool)

(assert (=> b!557135 m!535079))

(assert (=> b!557135 m!535071))

(assert (=> b!557135 m!535073))

(declare-fun m!535081 () Bool)

(assert (=> b!557126 m!535081))

(declare-fun m!535083 () Bool)

(assert (=> b!557131 m!535083))

(declare-fun m!535085 () Bool)

(assert (=> b!557131 m!535085))

(assert (=> b!557132 m!535065))

(assert (=> b!557132 m!535065))

(declare-fun m!535087 () Bool)

(assert (=> b!557132 m!535087))

(declare-fun m!535089 () Bool)

(assert (=> start!51002 m!535089))

(declare-fun m!535091 () Bool)

(assert (=> start!51002 m!535091))

(push 1)

