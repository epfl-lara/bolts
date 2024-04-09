; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51554 () Bool)

(assert start!51554)

(declare-fun b!563692 () Bool)

(declare-fun res!355004 () Bool)

(declare-fun e!324776 () Bool)

(assert (=> b!563692 (=> (not res!355004) (not e!324776))))

(declare-datatypes ((array!35373 0))(
  ( (array!35374 (arr!16983 (Array (_ BitVec 32) (_ BitVec 64))) (size!17347 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35373)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563692 (= res!355004 (validKeyInArray!0 (select (arr!16983 a!3118) j!142)))))

(declare-fun res!354994 () Bool)

(assert (=> start!51554 (=> (not res!354994) (not e!324776))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51554 (= res!354994 (validMask!0 mask!3119))))

(assert (=> start!51554 e!324776))

(assert (=> start!51554 true))

(declare-fun array_inv!12757 (array!35373) Bool)

(assert (=> start!51554 (array_inv!12757 a!3118)))

(declare-fun b!563693 () Bool)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun e!324781 () Bool)

(assert (=> b!563693 (= e!324781 (validKeyInArray!0 (select (store (arr!16983 a!3118) i!1132 k!1914) j!142)))))

(declare-fun b!563694 () Bool)

(declare-fun res!355000 () Bool)

(assert (=> b!563694 (=> (not res!355000) (not e!324776))))

(assert (=> b!563694 (= res!355000 (validKeyInArray!0 k!1914))))

(declare-fun b!563695 () Bool)

(declare-fun e!324777 () Bool)

(assert (=> b!563695 (= e!324777 (not e!324781))))

(declare-fun res!355002 () Bool)

(assert (=> b!563695 (=> res!355002 e!324781)))

(declare-fun lt!257333 () Bool)

(declare-datatypes ((SeekEntryResult!5439 0))(
  ( (MissingZero!5439 (index!23983 (_ BitVec 32))) (Found!5439 (index!23984 (_ BitVec 32))) (Intermediate!5439 (undefined!6251 Bool) (index!23985 (_ BitVec 32)) (x!52897 (_ BitVec 32))) (Undefined!5439) (MissingVacant!5439 (index!23986 (_ BitVec 32))) )
))
(declare-fun lt!257329 () SeekEntryResult!5439)

(assert (=> b!563695 (= res!355002 (or (and (not lt!257333) (undefined!6251 lt!257329)) (and (not lt!257333) (not (undefined!6251 lt!257329))) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!563695 (= lt!257333 (not (is-Intermediate!5439 lt!257329)))))

(declare-fun e!324778 () Bool)

(assert (=> b!563695 e!324778))

(declare-fun res!354996 () Bool)

(assert (=> b!563695 (=> (not res!354996) (not e!324778))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35373 (_ BitVec 32)) Bool)

(assert (=> b!563695 (= res!354996 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17652 0))(
  ( (Unit!17653) )
))
(declare-fun lt!257330 () Unit!17652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35373 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17652)

(assert (=> b!563695 (= lt!257330 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563696 () Bool)

(declare-fun res!354998 () Bool)

(declare-fun e!324780 () Bool)

(assert (=> b!563696 (=> (not res!354998) (not e!324780))))

(assert (=> b!563696 (= res!354998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563697 () Bool)

(declare-fun res!355003 () Bool)

(assert (=> b!563697 (=> (not res!355003) (not e!324776))))

(assert (=> b!563697 (= res!355003 (and (= (size!17347 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17347 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17347 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563698 () Bool)

(assert (=> b!563698 (= e!324776 e!324780)))

(declare-fun res!355001 () Bool)

(assert (=> b!563698 (=> (not res!355001) (not e!324780))))

(declare-fun lt!257331 () SeekEntryResult!5439)

(assert (=> b!563698 (= res!355001 (or (= lt!257331 (MissingZero!5439 i!1132)) (= lt!257331 (MissingVacant!5439 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35373 (_ BitVec 32)) SeekEntryResult!5439)

(assert (=> b!563698 (= lt!257331 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563699 () Bool)

(declare-fun res!354997 () Bool)

(assert (=> b!563699 (=> (not res!354997) (not e!324780))))

(declare-datatypes ((List!11116 0))(
  ( (Nil!11113) (Cons!11112 (h!12115 (_ BitVec 64)) (t!17352 List!11116)) )
))
(declare-fun arrayNoDuplicates!0 (array!35373 (_ BitVec 32) List!11116) Bool)

(assert (=> b!563699 (= res!354997 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11113))))

(declare-fun b!563700 () Bool)

(assert (=> b!563700 (= e!324778 (= (seekEntryOrOpen!0 (select (arr!16983 a!3118) j!142) a!3118 mask!3119) (Found!5439 j!142)))))

(declare-fun b!563701 () Bool)

(declare-fun res!354995 () Bool)

(assert (=> b!563701 (=> (not res!354995) (not e!324776))))

(declare-fun arrayContainsKey!0 (array!35373 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563701 (= res!354995 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563702 () Bool)

(assert (=> b!563702 (= e!324780 e!324777)))

(declare-fun res!354999 () Bool)

(assert (=> b!563702 (=> (not res!354999) (not e!324777))))

(declare-fun lt!257328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35373 (_ BitVec 32)) SeekEntryResult!5439)

(assert (=> b!563702 (= res!354999 (= lt!257329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257328 (select (store (arr!16983 a!3118) i!1132 k!1914) j!142) (array!35374 (store (arr!16983 a!3118) i!1132 k!1914) (size!17347 a!3118)) mask!3119)))))

(declare-fun lt!257332 () (_ BitVec 32))

(assert (=> b!563702 (= lt!257329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257332 (select (arr!16983 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563702 (= lt!257328 (toIndex!0 (select (store (arr!16983 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!563702 (= lt!257332 (toIndex!0 (select (arr!16983 a!3118) j!142) mask!3119))))

(assert (= (and start!51554 res!354994) b!563697))

(assert (= (and b!563697 res!355003) b!563692))

(assert (= (and b!563692 res!355004) b!563694))

(assert (= (and b!563694 res!355000) b!563701))

(assert (= (and b!563701 res!354995) b!563698))

(assert (= (and b!563698 res!355001) b!563696))

(assert (= (and b!563696 res!354998) b!563699))

(assert (= (and b!563699 res!354997) b!563702))

(assert (= (and b!563702 res!354999) b!563695))

(assert (= (and b!563695 res!354996) b!563700))

(assert (= (and b!563695 (not res!355002)) b!563693))

(declare-fun m!542161 () Bool)

(assert (=> start!51554 m!542161))

(declare-fun m!542163 () Bool)

(assert (=> start!51554 m!542163))

(declare-fun m!542165 () Bool)

(assert (=> b!563698 m!542165))

(declare-fun m!542167 () Bool)

(assert (=> b!563700 m!542167))

(assert (=> b!563700 m!542167))

(declare-fun m!542169 () Bool)

(assert (=> b!563700 m!542169))

(declare-fun m!542171 () Bool)

(assert (=> b!563694 m!542171))

(assert (=> b!563702 m!542167))

(declare-fun m!542173 () Bool)

(assert (=> b!563702 m!542173))

(assert (=> b!563702 m!542167))

(assert (=> b!563702 m!542167))

(declare-fun m!542175 () Bool)

(assert (=> b!563702 m!542175))

(declare-fun m!542177 () Bool)

(assert (=> b!563702 m!542177))

(assert (=> b!563702 m!542177))

(declare-fun m!542179 () Bool)

(assert (=> b!563702 m!542179))

(declare-fun m!542181 () Bool)

(assert (=> b!563702 m!542181))

(assert (=> b!563702 m!542177))

(declare-fun m!542183 () Bool)

(assert (=> b!563702 m!542183))

(declare-fun m!542185 () Bool)

(assert (=> b!563699 m!542185))

(assert (=> b!563693 m!542181))

(assert (=> b!563693 m!542177))

(assert (=> b!563693 m!542177))

(declare-fun m!542187 () Bool)

(assert (=> b!563693 m!542187))

(assert (=> b!563692 m!542167))

(assert (=> b!563692 m!542167))

(declare-fun m!542189 () Bool)

(assert (=> b!563692 m!542189))

(declare-fun m!542191 () Bool)

(assert (=> b!563695 m!542191))

(declare-fun m!542193 () Bool)

(assert (=> b!563695 m!542193))

(declare-fun m!542195 () Bool)

(assert (=> b!563696 m!542195))

(declare-fun m!542197 () Bool)

(assert (=> b!563701 m!542197))

(push 1)

