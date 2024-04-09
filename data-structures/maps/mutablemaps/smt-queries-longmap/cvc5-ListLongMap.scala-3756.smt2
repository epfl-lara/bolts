; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51548 () Bool)

(assert start!51548)

(declare-fun b!563600 () Bool)

(declare-fun e!324738 () Bool)

(declare-fun e!324739 () Bool)

(assert (=> b!563600 (= e!324738 e!324739)))

(declare-fun res!354910 () Bool)

(assert (=> b!563600 (=> (not res!354910) (not e!324739))))

(declare-datatypes ((SeekEntryResult!5436 0))(
  ( (MissingZero!5436 (index!23971 (_ BitVec 32))) (Found!5436 (index!23972 (_ BitVec 32))) (Intermediate!5436 (undefined!6248 Bool) (index!23973 (_ BitVec 32)) (x!52886 (_ BitVec 32))) (Undefined!5436) (MissingVacant!5436 (index!23974 (_ BitVec 32))) )
))
(declare-fun lt!257303 () SeekEntryResult!5436)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563600 (= res!354910 (or (= lt!257303 (MissingZero!5436 i!1132)) (= lt!257303 (MissingVacant!5436 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35367 0))(
  ( (array!35368 (arr!16980 (Array (_ BitVec 32) (_ BitVec 64))) (size!17344 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35367)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35367 (_ BitVec 32)) SeekEntryResult!5436)

(assert (=> b!563600 (= lt!257303 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563602 () Bool)

(assert (=> b!563602 (= e!324739 (not true))))

(declare-fun e!324736 () Bool)

(assert (=> b!563602 e!324736))

(declare-fun res!354911 () Bool)

(assert (=> b!563602 (=> (not res!354911) (not e!324736))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35367 (_ BitVec 32)) Bool)

(assert (=> b!563602 (= res!354911 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17646 0))(
  ( (Unit!17647) )
))
(declare-fun lt!257302 () Unit!17646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35367 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17646)

(assert (=> b!563602 (= lt!257302 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563603 () Bool)

(assert (=> b!563603 (= e!324736 (= (seekEntryOrOpen!0 (select (arr!16980 a!3118) j!142) a!3118 mask!3119) (Found!5436 j!142)))))

(declare-fun b!563604 () Bool)

(declare-fun res!354905 () Bool)

(assert (=> b!563604 (=> (not res!354905) (not e!324739))))

(assert (=> b!563604 (= res!354905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563605 () Bool)

(declare-fun res!354907 () Bool)

(assert (=> b!563605 (=> (not res!354907) (not e!324738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563605 (= res!354907 (validKeyInArray!0 k!1914))))

(declare-fun b!563606 () Bool)

(declare-fun res!354908 () Bool)

(assert (=> b!563606 (=> (not res!354908) (not e!324738))))

(declare-fun arrayContainsKey!0 (array!35367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563606 (= res!354908 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563607 () Bool)

(declare-fun res!354904 () Bool)

(assert (=> b!563607 (=> (not res!354904) (not e!324739))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35367 (_ BitVec 32)) SeekEntryResult!5436)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563607 (= res!354904 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16980 a!3118) j!142) mask!3119) (select (arr!16980 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16980 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16980 a!3118) i!1132 k!1914) j!142) (array!35368 (store (arr!16980 a!3118) i!1132 k!1914) (size!17344 a!3118)) mask!3119)))))

(declare-fun b!563608 () Bool)

(declare-fun res!354906 () Bool)

(assert (=> b!563608 (=> (not res!354906) (not e!324739))))

(declare-datatypes ((List!11113 0))(
  ( (Nil!11110) (Cons!11109 (h!12112 (_ BitVec 64)) (t!17349 List!11113)) )
))
(declare-fun arrayNoDuplicates!0 (array!35367 (_ BitVec 32) List!11113) Bool)

(assert (=> b!563608 (= res!354906 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11110))))

(declare-fun b!563609 () Bool)

(declare-fun res!354903 () Bool)

(assert (=> b!563609 (=> (not res!354903) (not e!324738))))

(assert (=> b!563609 (= res!354903 (and (= (size!17344 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17344 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17344 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!354902 () Bool)

(assert (=> start!51548 (=> (not res!354902) (not e!324738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51548 (= res!354902 (validMask!0 mask!3119))))

(assert (=> start!51548 e!324738))

(assert (=> start!51548 true))

(declare-fun array_inv!12754 (array!35367) Bool)

(assert (=> start!51548 (array_inv!12754 a!3118)))

(declare-fun b!563601 () Bool)

(declare-fun res!354909 () Bool)

(assert (=> b!563601 (=> (not res!354909) (not e!324738))))

(assert (=> b!563601 (= res!354909 (validKeyInArray!0 (select (arr!16980 a!3118) j!142)))))

(assert (= (and start!51548 res!354902) b!563609))

(assert (= (and b!563609 res!354903) b!563601))

(assert (= (and b!563601 res!354909) b!563605))

(assert (= (and b!563605 res!354907) b!563606))

(assert (= (and b!563606 res!354908) b!563600))

(assert (= (and b!563600 res!354910) b!563604))

(assert (= (and b!563604 res!354905) b!563608))

(assert (= (and b!563608 res!354906) b!563607))

(assert (= (and b!563607 res!354904) b!563602))

(assert (= (and b!563602 res!354911) b!563603))

(declare-fun m!542053 () Bool)

(assert (=> b!563603 m!542053))

(assert (=> b!563603 m!542053))

(declare-fun m!542055 () Bool)

(assert (=> b!563603 m!542055))

(declare-fun m!542057 () Bool)

(assert (=> start!51548 m!542057))

(declare-fun m!542059 () Bool)

(assert (=> start!51548 m!542059))

(assert (=> b!563607 m!542053))

(declare-fun m!542061 () Bool)

(assert (=> b!563607 m!542061))

(assert (=> b!563607 m!542053))

(declare-fun m!542063 () Bool)

(assert (=> b!563607 m!542063))

(declare-fun m!542065 () Bool)

(assert (=> b!563607 m!542065))

(assert (=> b!563607 m!542063))

(declare-fun m!542067 () Bool)

(assert (=> b!563607 m!542067))

(assert (=> b!563607 m!542061))

(assert (=> b!563607 m!542053))

(declare-fun m!542069 () Bool)

(assert (=> b!563607 m!542069))

(declare-fun m!542071 () Bool)

(assert (=> b!563607 m!542071))

(assert (=> b!563607 m!542063))

(assert (=> b!563607 m!542065))

(declare-fun m!542073 () Bool)

(assert (=> b!563608 m!542073))

(declare-fun m!542075 () Bool)

(assert (=> b!563600 m!542075))

(declare-fun m!542077 () Bool)

(assert (=> b!563606 m!542077))

(assert (=> b!563601 m!542053))

(assert (=> b!563601 m!542053))

(declare-fun m!542079 () Bool)

(assert (=> b!563601 m!542079))

(declare-fun m!542081 () Bool)

(assert (=> b!563605 m!542081))

(declare-fun m!542083 () Bool)

(assert (=> b!563604 m!542083))

(declare-fun m!542085 () Bool)

(assert (=> b!563602 m!542085))

(declare-fun m!542087 () Bool)

(assert (=> b!563602 m!542087))

(push 1)

