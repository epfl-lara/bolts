; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51642 () Bool)

(assert start!51642)

(declare-fun b!564777 () Bool)

(declare-fun res!356081 () Bool)

(declare-fun e!325203 () Bool)

(assert (=> b!564777 (=> (not res!356081) (not e!325203))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35461 0))(
  ( (array!35462 (arr!17027 (Array (_ BitVec 32) (_ BitVec 64))) (size!17391 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35461)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!564777 (= res!356081 (and (= (size!17391 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17391 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17391 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564779 () Bool)

(declare-fun e!325202 () Bool)

(assert (=> b!564779 (= e!325203 e!325202)))

(declare-fun res!356087 () Bool)

(assert (=> b!564779 (=> (not res!356087) (not e!325202))))

(declare-datatypes ((SeekEntryResult!5483 0))(
  ( (MissingZero!5483 (index!24159 (_ BitVec 32))) (Found!5483 (index!24160 (_ BitVec 32))) (Intermediate!5483 (undefined!6295 Bool) (index!24161 (_ BitVec 32)) (x!53053 (_ BitVec 32))) (Undefined!5483) (MissingVacant!5483 (index!24162 (_ BitVec 32))) )
))
(declare-fun lt!257683 () SeekEntryResult!5483)

(assert (=> b!564779 (= res!356087 (or (= lt!257683 (MissingZero!5483 i!1132)) (= lt!257683 (MissingVacant!5483 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35461 (_ BitVec 32)) SeekEntryResult!5483)

(assert (=> b!564779 (= lt!257683 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564780 () Bool)

(declare-fun res!356079 () Bool)

(assert (=> b!564780 (=> (not res!356079) (not e!325203))))

(declare-fun arrayContainsKey!0 (array!35461 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564780 (= res!356079 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564781 () Bool)

(declare-fun res!356084 () Bool)

(assert (=> b!564781 (=> (not res!356084) (not e!325202))))

(declare-datatypes ((List!11160 0))(
  ( (Nil!11157) (Cons!11156 (h!12159 (_ BitVec 64)) (t!17396 List!11160)) )
))
(declare-fun arrayNoDuplicates!0 (array!35461 (_ BitVec 32) List!11160) Bool)

(assert (=> b!564781 (= res!356084 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11157))))

(declare-fun b!564782 () Bool)

(declare-fun res!356080 () Bool)

(assert (=> b!564782 (=> (not res!356080) (not e!325202))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35461 (_ BitVec 32)) Bool)

(assert (=> b!564782 (= res!356080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564778 () Bool)

(declare-fun res!356083 () Bool)

(assert (=> b!564778 (=> (not res!356083) (not e!325203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564778 (= res!356083 (validKeyInArray!0 k!1914))))

(declare-fun res!356085 () Bool)

(assert (=> start!51642 (=> (not res!356085) (not e!325203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51642 (= res!356085 (validMask!0 mask!3119))))

(assert (=> start!51642 e!325203))

(assert (=> start!51642 true))

(declare-fun array_inv!12801 (array!35461) Bool)

(assert (=> start!51642 (array_inv!12801 a!3118)))

(declare-fun b!564783 () Bool)

(declare-fun res!356082 () Bool)

(assert (=> b!564783 (=> (not res!356082) (not e!325202))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35461 (_ BitVec 32)) SeekEntryResult!5483)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564783 (= res!356082 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17027 a!3118) j!142) mask!3119) (select (arr!17027 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17027 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17027 a!3118) i!1132 k!1914) j!142) (array!35462 (store (arr!17027 a!3118) i!1132 k!1914) (size!17391 a!3118)) mask!3119)))))

(declare-fun b!564784 () Bool)

(declare-fun res!356086 () Bool)

(assert (=> b!564784 (=> (not res!356086) (not e!325203))))

(assert (=> b!564784 (= res!356086 (validKeyInArray!0 (select (arr!17027 a!3118) j!142)))))

(declare-fun b!564785 () Bool)

(assert (=> b!564785 (= e!325202 (not true))))

(assert (=> b!564785 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17668 0))(
  ( (Unit!17669) )
))
(declare-fun lt!257684 () Unit!17668)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35461 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17668)

(assert (=> b!564785 (= lt!257684 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51642 res!356085) b!564777))

(assert (= (and b!564777 res!356081) b!564784))

(assert (= (and b!564784 res!356086) b!564778))

(assert (= (and b!564778 res!356083) b!564780))

(assert (= (and b!564780 res!356079) b!564779))

(assert (= (and b!564779 res!356087) b!564782))

(assert (= (and b!564782 res!356080) b!564781))

(assert (= (and b!564781 res!356084) b!564783))

(assert (= (and b!564783 res!356082) b!564785))

(declare-fun m!543321 () Bool)

(assert (=> b!564782 m!543321))

(declare-fun m!543323 () Bool)

(assert (=> b!564783 m!543323))

(declare-fun m!543325 () Bool)

(assert (=> b!564783 m!543325))

(assert (=> b!564783 m!543323))

(declare-fun m!543327 () Bool)

(assert (=> b!564783 m!543327))

(declare-fun m!543329 () Bool)

(assert (=> b!564783 m!543329))

(assert (=> b!564783 m!543327))

(declare-fun m!543331 () Bool)

(assert (=> b!564783 m!543331))

(assert (=> b!564783 m!543325))

(assert (=> b!564783 m!543323))

(declare-fun m!543333 () Bool)

(assert (=> b!564783 m!543333))

(declare-fun m!543335 () Bool)

(assert (=> b!564783 m!543335))

(assert (=> b!564783 m!543327))

(assert (=> b!564783 m!543329))

(assert (=> b!564784 m!543323))

(assert (=> b!564784 m!543323))

(declare-fun m!543337 () Bool)

(assert (=> b!564784 m!543337))

(declare-fun m!543339 () Bool)

(assert (=> b!564785 m!543339))

(declare-fun m!543341 () Bool)

(assert (=> b!564785 m!543341))

(declare-fun m!543343 () Bool)

(assert (=> start!51642 m!543343))

(declare-fun m!543345 () Bool)

(assert (=> start!51642 m!543345))

(declare-fun m!543347 () Bool)

(assert (=> b!564781 m!543347))

(declare-fun m!543349 () Bool)

(assert (=> b!564780 m!543349))

(declare-fun m!543351 () Bool)

(assert (=> b!564778 m!543351))

(declare-fun m!543353 () Bool)

(assert (=> b!564779 m!543353))

(push 1)

(assert (not b!564784))

