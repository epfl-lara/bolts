; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51720 () Bool)

(assert start!51720)

(declare-fun b!565328 () Bool)

(declare-fun e!325488 () Bool)

(declare-fun e!325487 () Bool)

(assert (=> b!565328 (= e!325488 e!325487)))

(declare-fun res!356455 () Bool)

(assert (=> b!565328 (=> (not res!356455) (not e!325487))))

(declare-datatypes ((SeekEntryResult!5492 0))(
  ( (MissingZero!5492 (index!24195 (_ BitVec 32))) (Found!5492 (index!24196 (_ BitVec 32))) (Intermediate!5492 (undefined!6304 Bool) (index!24197 (_ BitVec 32)) (x!53092 (_ BitVec 32))) (Undefined!5492) (MissingVacant!5492 (index!24198 (_ BitVec 32))) )
))
(declare-fun lt!257867 () SeekEntryResult!5492)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565328 (= res!356455 (or (= lt!257867 (MissingZero!5492 i!1132)) (= lt!257867 (MissingVacant!5492 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35482 0))(
  ( (array!35483 (arr!17036 (Array (_ BitVec 32) (_ BitVec 64))) (size!17400 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35482)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35482 (_ BitVec 32)) SeekEntryResult!5492)

(assert (=> b!565328 (= lt!257867 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!356447 () Bool)

(assert (=> start!51720 (=> (not res!356447) (not e!325488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51720 (= res!356447 (validMask!0 mask!3119))))

(assert (=> start!51720 e!325488))

(assert (=> start!51720 true))

(declare-fun array_inv!12810 (array!35482) Bool)

(assert (=> start!51720 (array_inv!12810 a!3118)))

(declare-fun b!565329 () Bool)

(declare-fun res!356452 () Bool)

(assert (=> b!565329 (=> (not res!356452) (not e!325488))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565329 (= res!356452 (validKeyInArray!0 k!1914))))

(declare-fun b!565330 () Bool)

(declare-fun res!356454 () Bool)

(assert (=> b!565330 (=> (not res!356454) (not e!325488))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!565330 (= res!356454 (and (= (size!17400 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17400 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17400 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565331 () Bool)

(declare-fun res!356448 () Bool)

(assert (=> b!565331 (=> (not res!356448) (not e!325488))))

(assert (=> b!565331 (= res!356448 (validKeyInArray!0 (select (arr!17036 a!3118) j!142)))))

(declare-fun b!565332 () Bool)

(declare-fun res!356450 () Bool)

(assert (=> b!565332 (=> (not res!356450) (not e!325487))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35482 (_ BitVec 32)) SeekEntryResult!5492)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565332 (= res!356450 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17036 a!3118) j!142) mask!3119) (select (arr!17036 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17036 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17036 a!3118) i!1132 k!1914) j!142) (array!35483 (store (arr!17036 a!3118) i!1132 k!1914) (size!17400 a!3118)) mask!3119)))))

(declare-fun b!565333 () Bool)

(assert (=> b!565333 (= e!325487 (not true))))

(declare-fun e!325486 () Bool)

(assert (=> b!565333 e!325486))

(declare-fun res!356456 () Bool)

(assert (=> b!565333 (=> (not res!356456) (not e!325486))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35482 (_ BitVec 32)) Bool)

(assert (=> b!565333 (= res!356456 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17686 0))(
  ( (Unit!17687) )
))
(declare-fun lt!257866 () Unit!17686)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35482 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17686)

(assert (=> b!565333 (= lt!257866 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!565334 () Bool)

(declare-fun res!356451 () Bool)

(assert (=> b!565334 (=> (not res!356451) (not e!325487))))

(assert (=> b!565334 (= res!356451 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565335 () Bool)

(declare-fun res!356449 () Bool)

(assert (=> b!565335 (=> (not res!356449) (not e!325487))))

(declare-datatypes ((List!11169 0))(
  ( (Nil!11166) (Cons!11165 (h!12171 (_ BitVec 64)) (t!17405 List!11169)) )
))
(declare-fun arrayNoDuplicates!0 (array!35482 (_ BitVec 32) List!11169) Bool)

(assert (=> b!565335 (= res!356449 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11166))))

(declare-fun b!565336 () Bool)

(declare-fun res!356453 () Bool)

(assert (=> b!565336 (=> (not res!356453) (not e!325488))))

(declare-fun arrayContainsKey!0 (array!35482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565336 (= res!356453 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!565337 () Bool)

(assert (=> b!565337 (= e!325486 (= (seekEntryOrOpen!0 (select (arr!17036 a!3118) j!142) a!3118 mask!3119) (Found!5492 j!142)))))

(assert (= (and start!51720 res!356447) b!565330))

(assert (= (and b!565330 res!356454) b!565331))

(assert (= (and b!565331 res!356448) b!565329))

(assert (= (and b!565329 res!356452) b!565336))

(assert (= (and b!565336 res!356453) b!565328))

(assert (= (and b!565328 res!356455) b!565334))

(assert (= (and b!565334 res!356451) b!565335))

(assert (= (and b!565335 res!356449) b!565332))

(assert (= (and b!565332 res!356450) b!565333))

(assert (= (and b!565333 res!356456) b!565337))

(declare-fun m!543841 () Bool)

(assert (=> b!565336 m!543841))

(declare-fun m!543843 () Bool)

(assert (=> b!565335 m!543843))

(declare-fun m!543845 () Bool)

(assert (=> b!565333 m!543845))

(declare-fun m!543847 () Bool)

(assert (=> b!565333 m!543847))

(declare-fun m!543849 () Bool)

(assert (=> b!565337 m!543849))

(assert (=> b!565337 m!543849))

(declare-fun m!543851 () Bool)

(assert (=> b!565337 m!543851))

(declare-fun m!543853 () Bool)

(assert (=> b!565329 m!543853))

(declare-fun m!543855 () Bool)

(assert (=> b!565334 m!543855))

(assert (=> b!565332 m!543849))

(declare-fun m!543857 () Bool)

(assert (=> b!565332 m!543857))

(assert (=> b!565332 m!543849))

(declare-fun m!543859 () Bool)

(assert (=> b!565332 m!543859))

(declare-fun m!543861 () Bool)

(assert (=> b!565332 m!543861))

(assert (=> b!565332 m!543859))

(declare-fun m!543863 () Bool)

(assert (=> b!565332 m!543863))

(assert (=> b!565332 m!543857))

(assert (=> b!565332 m!543849))

(declare-fun m!543865 () Bool)

(assert (=> b!565332 m!543865))

(declare-fun m!543867 () Bool)

(assert (=> b!565332 m!543867))

(assert (=> b!565332 m!543859))

(assert (=> b!565332 m!543861))

(declare-fun m!543869 () Bool)

(assert (=> start!51720 m!543869))

(declare-fun m!543871 () Bool)

(assert (=> start!51720 m!543871))

(assert (=> b!565331 m!543849))

(assert (=> b!565331 m!543849))

(declare-fun m!543873 () Bool)

(assert (=> b!565331 m!543873))

(declare-fun m!543875 () Bool)

(assert (=> b!565328 m!543875))

(push 1)

(assert (not b!565333))

(assert (not b!565335))

(assert (not b!565337))

(assert (not b!565328))

(assert (not start!51720))

(assert (not b!565331))

(assert (not b!565329))

(assert (not b!565334))

(assert (not b!565332))

(assert (not b!565336))

(check-sat)

(pop 1)

