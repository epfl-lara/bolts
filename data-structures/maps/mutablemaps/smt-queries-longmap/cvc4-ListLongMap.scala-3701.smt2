; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50844 () Bool)

(assert start!50844)

(declare-fun b!555974 () Bool)

(declare-fun res!348537 () Bool)

(declare-fun e!320353 () Bool)

(assert (=> b!555974 (=> (not res!348537) (not e!320353))))

(declare-datatypes ((array!35023 0))(
  ( (array!35024 (arr!16817 (Array (_ BitVec 32) (_ BitVec 64))) (size!17181 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35023)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555974 (= res!348537 (validKeyInArray!0 (select (arr!16817 a!3118) j!142)))))

(declare-fun b!555975 () Bool)

(declare-fun res!348540 () Bool)

(assert (=> b!555975 (=> (not res!348540) (not e!320353))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!555975 (= res!348540 (validKeyInArray!0 k!1914))))

(declare-fun b!555976 () Bool)

(declare-fun res!348544 () Bool)

(declare-fun e!320350 () Bool)

(assert (=> b!555976 (=> (not res!348544) (not e!320350))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5273 0))(
  ( (MissingZero!5273 (index!23319 (_ BitVec 32))) (Found!5273 (index!23320 (_ BitVec 32))) (Intermediate!5273 (undefined!6085 Bool) (index!23321 (_ BitVec 32)) (x!52238 (_ BitVec 32))) (Undefined!5273) (MissingVacant!5273 (index!23322 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35023 (_ BitVec 32)) SeekEntryResult!5273)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555976 (= res!348544 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16817 a!3118) j!142) mask!3119) (select (arr!16817 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16817 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16817 a!3118) i!1132 k!1914) j!142) (array!35024 (store (arr!16817 a!3118) i!1132 k!1914) (size!17181 a!3118)) mask!3119)))))

(declare-fun b!555977 () Bool)

(assert (=> b!555977 (= e!320353 e!320350)))

(declare-fun res!348543 () Bool)

(assert (=> b!555977 (=> (not res!348543) (not e!320350))))

(declare-fun lt!252769 () SeekEntryResult!5273)

(assert (=> b!555977 (= res!348543 (or (= lt!252769 (MissingZero!5273 i!1132)) (= lt!252769 (MissingVacant!5273 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35023 (_ BitVec 32)) SeekEntryResult!5273)

(assert (=> b!555977 (= lt!252769 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!555978 () Bool)

(declare-fun res!348541 () Bool)

(assert (=> b!555978 (=> (not res!348541) (not e!320353))))

(assert (=> b!555978 (= res!348541 (and (= (size!17181 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17181 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17181 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555979 () Bool)

(declare-fun res!348538 () Bool)

(assert (=> b!555979 (=> (not res!348538) (not e!320350))))

(declare-datatypes ((List!10950 0))(
  ( (Nil!10947) (Cons!10946 (h!11931 (_ BitVec 64)) (t!17186 List!10950)) )
))
(declare-fun arrayNoDuplicates!0 (array!35023 (_ BitVec 32) List!10950) Bool)

(assert (=> b!555979 (= res!348538 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10947))))

(declare-fun b!555981 () Bool)

(declare-fun res!348536 () Bool)

(assert (=> b!555981 (=> (not res!348536) (not e!320353))))

(declare-fun arrayContainsKey!0 (array!35023 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555981 (= res!348536 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555982 () Bool)

(declare-fun res!348542 () Bool)

(assert (=> b!555982 (=> (not res!348542) (not e!320350))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35023 (_ BitVec 32)) Bool)

(assert (=> b!555982 (= res!348542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555983 () Bool)

(assert (=> b!555983 (= e!320350 (not true))))

(declare-fun e!320351 () Bool)

(assert (=> b!555983 e!320351))

(declare-fun res!348539 () Bool)

(assert (=> b!555983 (=> (not res!348539) (not e!320351))))

(assert (=> b!555983 (= res!348539 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17320 0))(
  ( (Unit!17321) )
))
(declare-fun lt!252770 () Unit!17320)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35023 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17320)

(assert (=> b!555983 (= lt!252770 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!348545 () Bool)

(assert (=> start!50844 (=> (not res!348545) (not e!320353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50844 (= res!348545 (validMask!0 mask!3119))))

(assert (=> start!50844 e!320353))

(assert (=> start!50844 true))

(declare-fun array_inv!12591 (array!35023) Bool)

(assert (=> start!50844 (array_inv!12591 a!3118)))

(declare-fun b!555980 () Bool)

(assert (=> b!555980 (= e!320351 (= (seekEntryOrOpen!0 (select (arr!16817 a!3118) j!142) a!3118 mask!3119) (Found!5273 j!142)))))

(assert (= (and start!50844 res!348545) b!555978))

(assert (= (and b!555978 res!348541) b!555974))

(assert (= (and b!555974 res!348537) b!555975))

(assert (= (and b!555975 res!348540) b!555981))

(assert (= (and b!555981 res!348536) b!555977))

(assert (= (and b!555977 res!348543) b!555982))

(assert (= (and b!555982 res!348542) b!555979))

(assert (= (and b!555979 res!348538) b!555976))

(assert (= (and b!555976 res!348544) b!555983))

(assert (= (and b!555983 res!348539) b!555980))

(declare-fun m!533947 () Bool)

(assert (=> b!555981 m!533947))

(declare-fun m!533949 () Bool)

(assert (=> b!555979 m!533949))

(declare-fun m!533951 () Bool)

(assert (=> b!555977 m!533951))

(declare-fun m!533953 () Bool)

(assert (=> b!555974 m!533953))

(assert (=> b!555974 m!533953))

(declare-fun m!533955 () Bool)

(assert (=> b!555974 m!533955))

(assert (=> b!555980 m!533953))

(assert (=> b!555980 m!533953))

(declare-fun m!533957 () Bool)

(assert (=> b!555980 m!533957))

(declare-fun m!533959 () Bool)

(assert (=> b!555982 m!533959))

(declare-fun m!533961 () Bool)

(assert (=> start!50844 m!533961))

(declare-fun m!533963 () Bool)

(assert (=> start!50844 m!533963))

(assert (=> b!555976 m!533953))

(declare-fun m!533965 () Bool)

(assert (=> b!555976 m!533965))

(assert (=> b!555976 m!533953))

(declare-fun m!533967 () Bool)

(assert (=> b!555976 m!533967))

(declare-fun m!533969 () Bool)

(assert (=> b!555976 m!533969))

(assert (=> b!555976 m!533967))

(declare-fun m!533971 () Bool)

(assert (=> b!555976 m!533971))

(assert (=> b!555976 m!533965))

(assert (=> b!555976 m!533953))

(declare-fun m!533973 () Bool)

(assert (=> b!555976 m!533973))

(declare-fun m!533975 () Bool)

(assert (=> b!555976 m!533975))

(assert (=> b!555976 m!533967))

(assert (=> b!555976 m!533969))

(declare-fun m!533977 () Bool)

(assert (=> b!555983 m!533977))

(declare-fun m!533979 () Bool)

(assert (=> b!555983 m!533979))

(declare-fun m!533981 () Bool)

(assert (=> b!555975 m!533981))

(push 1)

