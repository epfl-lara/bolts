; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51638 () Bool)

(assert start!51638)

(declare-fun b!564723 () Bool)

(declare-fun e!325186 () Bool)

(assert (=> b!564723 (= e!325186 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!35457 0))(
  ( (array!35458 (arr!17025 (Array (_ BitVec 32) (_ BitVec 64))) (size!17389 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35457)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35457 (_ BitVec 32)) Bool)

(assert (=> b!564723 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17664 0))(
  ( (Unit!17665) )
))
(declare-fun lt!257672 () Unit!17664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35457 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17664)

(assert (=> b!564723 (= lt!257672 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!564724 () Bool)

(declare-fun res!356032 () Bool)

(declare-fun e!325184 () Bool)

(assert (=> b!564724 (=> (not res!356032) (not e!325184))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564724 (= res!356032 (validKeyInArray!0 (select (arr!17025 a!3118) j!142)))))

(declare-fun b!564726 () Bool)

(declare-fun res!356033 () Bool)

(assert (=> b!564726 (=> (not res!356033) (not e!325186))))

(declare-datatypes ((List!11158 0))(
  ( (Nil!11155) (Cons!11154 (h!12157 (_ BitVec 64)) (t!17394 List!11158)) )
))
(declare-fun arrayNoDuplicates!0 (array!35457 (_ BitVec 32) List!11158) Bool)

(assert (=> b!564726 (= res!356033 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11155))))

(declare-fun b!564727 () Bool)

(declare-fun res!356025 () Bool)

(assert (=> b!564727 (=> (not res!356025) (not e!325184))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564727 (= res!356025 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564728 () Bool)

(declare-fun res!356031 () Bool)

(assert (=> b!564728 (=> (not res!356031) (not e!325186))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5481 0))(
  ( (MissingZero!5481 (index!24151 (_ BitVec 32))) (Found!5481 (index!24152 (_ BitVec 32))) (Intermediate!5481 (undefined!6293 Bool) (index!24153 (_ BitVec 32)) (x!53051 (_ BitVec 32))) (Undefined!5481) (MissingVacant!5481 (index!24154 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35457 (_ BitVec 32)) SeekEntryResult!5481)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564728 (= res!356031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17025 a!3118) j!142) mask!3119) (select (arr!17025 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17025 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17025 a!3118) i!1132 k!1914) j!142) (array!35458 (store (arr!17025 a!3118) i!1132 k!1914) (size!17389 a!3118)) mask!3119)))))

(declare-fun b!564729 () Bool)

(declare-fun res!356028 () Bool)

(assert (=> b!564729 (=> (not res!356028) (not e!325184))))

(assert (=> b!564729 (= res!356028 (and (= (size!17389 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17389 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17389 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!564730 () Bool)

(declare-fun res!356029 () Bool)

(assert (=> b!564730 (=> (not res!356029) (not e!325186))))

(assert (=> b!564730 (= res!356029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564731 () Bool)

(declare-fun res!356030 () Bool)

(assert (=> b!564731 (=> (not res!356030) (not e!325184))))

(assert (=> b!564731 (= res!356030 (validKeyInArray!0 k!1914))))

(declare-fun res!356027 () Bool)

(assert (=> start!51638 (=> (not res!356027) (not e!325184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51638 (= res!356027 (validMask!0 mask!3119))))

(assert (=> start!51638 e!325184))

(assert (=> start!51638 true))

(declare-fun array_inv!12799 (array!35457) Bool)

(assert (=> start!51638 (array_inv!12799 a!3118)))

(declare-fun b!564725 () Bool)

(assert (=> b!564725 (= e!325184 e!325186)))

(declare-fun res!356026 () Bool)

(assert (=> b!564725 (=> (not res!356026) (not e!325186))))

(declare-fun lt!257671 () SeekEntryResult!5481)

(assert (=> b!564725 (= res!356026 (or (= lt!257671 (MissingZero!5481 i!1132)) (= lt!257671 (MissingVacant!5481 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35457 (_ BitVec 32)) SeekEntryResult!5481)

(assert (=> b!564725 (= lt!257671 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51638 res!356027) b!564729))

(assert (= (and b!564729 res!356028) b!564724))

(assert (= (and b!564724 res!356032) b!564731))

(assert (= (and b!564731 res!356030) b!564727))

(assert (= (and b!564727 res!356025) b!564725))

(assert (= (and b!564725 res!356026) b!564730))

(assert (= (and b!564730 res!356029) b!564726))

(assert (= (and b!564726 res!356033) b!564728))

(assert (= (and b!564728 res!356031) b!564723))

(declare-fun m!543253 () Bool)

(assert (=> start!51638 m!543253))

(declare-fun m!543255 () Bool)

(assert (=> start!51638 m!543255))

(declare-fun m!543257 () Bool)

(assert (=> b!564724 m!543257))

(assert (=> b!564724 m!543257))

(declare-fun m!543259 () Bool)

(assert (=> b!564724 m!543259))

(assert (=> b!564728 m!543257))

(declare-fun m!543261 () Bool)

(assert (=> b!564728 m!543261))

(assert (=> b!564728 m!543257))

(declare-fun m!543263 () Bool)

(assert (=> b!564728 m!543263))

(declare-fun m!543265 () Bool)

(assert (=> b!564728 m!543265))

(assert (=> b!564728 m!543263))

(declare-fun m!543267 () Bool)

(assert (=> b!564728 m!543267))

(assert (=> b!564728 m!543261))

(assert (=> b!564728 m!543257))

(declare-fun m!543269 () Bool)

(assert (=> b!564728 m!543269))

(declare-fun m!543271 () Bool)

(assert (=> b!564728 m!543271))

(assert (=> b!564728 m!543263))

(assert (=> b!564728 m!543265))

(declare-fun m!543273 () Bool)

(assert (=> b!564725 m!543273))

(declare-fun m!543275 () Bool)

(assert (=> b!564727 m!543275))

(declare-fun m!543277 () Bool)

(assert (=> b!564731 m!543277))

(declare-fun m!543279 () Bool)

(assert (=> b!564726 m!543279))

(declare-fun m!543281 () Bool)

(assert (=> b!564723 m!543281))

(declare-fun m!543283 () Bool)

(assert (=> b!564723 m!543283))

(declare-fun m!543285 () Bool)

(assert (=> b!564730 m!543285))

(push 1)

