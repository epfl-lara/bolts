; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51346 () Bool)

(assert start!51346)

(declare-fun b!559888 () Bool)

(declare-fun res!351200 () Bool)

(declare-fun e!322582 () Bool)

(assert (=> b!559888 (=> (not res!351200) (not e!322582))))

(declare-datatypes ((array!35165 0))(
  ( (array!35166 (arr!16879 (Array (_ BitVec 32) (_ BitVec 64))) (size!17243 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35165)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559888 (= res!351200 (validKeyInArray!0 (select (arr!16879 a!3118) j!142)))))

(declare-fun b!559889 () Bool)

(declare-fun e!322583 () Bool)

(declare-fun e!322584 () Bool)

(assert (=> b!559889 (= e!322583 e!322584)))

(declare-fun res!351202 () Bool)

(assert (=> b!559889 (=> (not res!351202) (not e!322584))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun lt!254535 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!254540 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5335 0))(
  ( (MissingZero!5335 (index!23567 (_ BitVec 32))) (Found!5335 (index!23568 (_ BitVec 32))) (Intermediate!5335 (undefined!6147 Bool) (index!23569 (_ BitVec 32)) (x!52513 (_ BitVec 32))) (Undefined!5335) (MissingVacant!5335 (index!23570 (_ BitVec 32))) )
))
(declare-fun lt!254543 () SeekEntryResult!5335)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35165 (_ BitVec 32)) SeekEntryResult!5335)

(assert (=> b!559889 (= res!351202 (= lt!254543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254535 lt!254540 (array!35166 (store (arr!16879 a!3118) i!1132 k0!1914) (size!17243 a!3118)) mask!3119)))))

(declare-fun lt!254538 () (_ BitVec 32))

(assert (=> b!559889 (= lt!254543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254538 (select (arr!16879 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559889 (= lt!254535 (toIndex!0 lt!254540 mask!3119))))

(assert (=> b!559889 (= lt!254540 (select (store (arr!16879 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!559889 (= lt!254538 (toIndex!0 (select (arr!16879 a!3118) j!142) mask!3119))))

(declare-fun b!559890 () Bool)

(declare-fun res!351196 () Bool)

(assert (=> b!559890 (=> (not res!351196) (not e!322583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35165 (_ BitVec 32)) Bool)

(assert (=> b!559890 (= res!351196 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!559891 () Bool)

(declare-fun e!322577 () Bool)

(assert (=> b!559891 (= e!322584 (not e!322577))))

(declare-fun res!351190 () Bool)

(assert (=> b!559891 (=> res!351190 e!322577)))

(get-info :version)

(assert (=> b!559891 (= res!351190 (or (undefined!6147 lt!254543) (not ((_ is Intermediate!5335) lt!254543))))))

(declare-fun e!322580 () Bool)

(assert (=> b!559891 e!322580))

(declare-fun res!351199 () Bool)

(assert (=> b!559891 (=> (not res!351199) (not e!322580))))

(declare-fun lt!254539 () SeekEntryResult!5335)

(assert (=> b!559891 (= res!351199 (= lt!254539 (Found!5335 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35165 (_ BitVec 32)) SeekEntryResult!5335)

(assert (=> b!559891 (= lt!254539 (seekEntryOrOpen!0 (select (arr!16879 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!559891 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17444 0))(
  ( (Unit!17445) )
))
(declare-fun lt!254541 () Unit!17444)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35165 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17444)

(assert (=> b!559891 (= lt!254541 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!559892 () Bool)

(declare-fun res!351192 () Bool)

(assert (=> b!559892 (=> (not res!351192) (not e!322582))))

(assert (=> b!559892 (= res!351192 (validKeyInArray!0 k0!1914))))

(declare-fun res!351195 () Bool)

(assert (=> start!51346 (=> (not res!351195) (not e!322582))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51346 (= res!351195 (validMask!0 mask!3119))))

(assert (=> start!51346 e!322582))

(assert (=> start!51346 true))

(declare-fun array_inv!12653 (array!35165) Bool)

(assert (=> start!51346 (array_inv!12653 a!3118)))

(declare-fun b!559893 () Bool)

(declare-fun e!322578 () Bool)

(declare-fun e!322581 () Bool)

(assert (=> b!559893 (= e!322578 e!322581)))

(declare-fun res!351203 () Bool)

(assert (=> b!559893 (=> res!351203 e!322581)))

(declare-fun lt!254542 () (_ BitVec 64))

(assert (=> b!559893 (= res!351203 (or (= lt!254542 (select (arr!16879 a!3118) j!142)) (= lt!254542 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!559893 (= lt!254542 (select (arr!16879 a!3118) (index!23569 lt!254543)))))

(declare-fun b!559894 () Bool)

(declare-fun e!322579 () Bool)

(assert (=> b!559894 (= e!322579 (validKeyInArray!0 lt!254540))))

(declare-fun b!559895 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35165 (_ BitVec 32)) SeekEntryResult!5335)

(assert (=> b!559895 (= e!322581 (= lt!254539 (seekKeyOrZeroReturnVacant!0 (x!52513 lt!254543) (index!23569 lt!254543) (index!23569 lt!254543) (select (arr!16879 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!559896 () Bool)

(declare-fun res!351193 () Bool)

(assert (=> b!559896 (=> (not res!351193) (not e!322583))))

(declare-datatypes ((List!11012 0))(
  ( (Nil!11009) (Cons!11008 (h!12011 (_ BitVec 64)) (t!17248 List!11012)) )
))
(declare-fun arrayNoDuplicates!0 (array!35165 (_ BitVec 32) List!11012) Bool)

(assert (=> b!559896 (= res!351193 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11009))))

(declare-fun b!559897 () Bool)

(assert (=> b!559897 (= e!322582 e!322583)))

(declare-fun res!351198 () Bool)

(assert (=> b!559897 (=> (not res!351198) (not e!322583))))

(declare-fun lt!254536 () SeekEntryResult!5335)

(assert (=> b!559897 (= res!351198 (or (= lt!254536 (MissingZero!5335 i!1132)) (= lt!254536 (MissingVacant!5335 i!1132))))))

(assert (=> b!559897 (= lt!254536 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!559898 () Bool)

(declare-fun res!351191 () Bool)

(assert (=> b!559898 (=> (not res!351191) (not e!322582))))

(assert (=> b!559898 (= res!351191 (and (= (size!17243 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17243 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17243 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!559899 () Bool)

(assert (=> b!559899 (= e!322580 e!322578)))

(declare-fun res!351201 () Bool)

(assert (=> b!559899 (=> res!351201 e!322578)))

(assert (=> b!559899 (= res!351201 (or (undefined!6147 lt!254543) (not ((_ is Intermediate!5335) lt!254543))))))

(declare-fun b!559900 () Bool)

(declare-fun res!351194 () Bool)

(assert (=> b!559900 (=> (not res!351194) (not e!322582))))

(declare-fun arrayContainsKey!0 (array!35165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559900 (= res!351194 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!559901 () Bool)

(assert (=> b!559901 (= e!322577 e!322579)))

(declare-fun res!351197 () Bool)

(assert (=> b!559901 (=> res!351197 e!322579)))

(declare-fun lt!254537 () (_ BitVec 64))

(assert (=> b!559901 (= res!351197 (or (= lt!254537 (select (arr!16879 a!3118) j!142)) (= lt!254537 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23569 lt!254543) #b00000000000000000000000000000000) (bvsge (index!23569 lt!254543) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52513 lt!254543) #b01111111111111111111111111111110) (bvslt (x!52513 lt!254543) #b00000000000000000000000000000000) (not (= (select (store (arr!16879 a!3118) i!1132 k0!1914) (index!23569 lt!254543)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!559901 (= lt!254537 (select (arr!16879 a!3118) (index!23569 lt!254543)))))

(assert (= (and start!51346 res!351195) b!559898))

(assert (= (and b!559898 res!351191) b!559888))

(assert (= (and b!559888 res!351200) b!559892))

(assert (= (and b!559892 res!351192) b!559900))

(assert (= (and b!559900 res!351194) b!559897))

(assert (= (and b!559897 res!351198) b!559890))

(assert (= (and b!559890 res!351196) b!559896))

(assert (= (and b!559896 res!351193) b!559889))

(assert (= (and b!559889 res!351202) b!559891))

(assert (= (and b!559891 res!351199) b!559899))

(assert (= (and b!559899 (not res!351201)) b!559893))

(assert (= (and b!559893 (not res!351203)) b!559895))

(assert (= (and b!559891 (not res!351190)) b!559901))

(assert (= (and b!559901 (not res!351197)) b!559894))

(declare-fun m!537651 () Bool)

(assert (=> b!559896 m!537651))

(declare-fun m!537653 () Bool)

(assert (=> b!559900 m!537653))

(declare-fun m!537655 () Bool)

(assert (=> b!559893 m!537655))

(declare-fun m!537657 () Bool)

(assert (=> b!559893 m!537657))

(assert (=> b!559889 m!537655))

(declare-fun m!537659 () Bool)

(assert (=> b!559889 m!537659))

(assert (=> b!559889 m!537655))

(declare-fun m!537661 () Bool)

(assert (=> b!559889 m!537661))

(assert (=> b!559889 m!537655))

(declare-fun m!537663 () Bool)

(assert (=> b!559889 m!537663))

(declare-fun m!537665 () Bool)

(assert (=> b!559889 m!537665))

(declare-fun m!537667 () Bool)

(assert (=> b!559889 m!537667))

(declare-fun m!537669 () Bool)

(assert (=> b!559889 m!537669))

(declare-fun m!537671 () Bool)

(assert (=> b!559890 m!537671))

(declare-fun m!537673 () Bool)

(assert (=> start!51346 m!537673))

(declare-fun m!537675 () Bool)

(assert (=> start!51346 m!537675))

(declare-fun m!537677 () Bool)

(assert (=> b!559894 m!537677))

(declare-fun m!537679 () Bool)

(assert (=> b!559892 m!537679))

(assert (=> b!559888 m!537655))

(assert (=> b!559888 m!537655))

(declare-fun m!537681 () Bool)

(assert (=> b!559888 m!537681))

(assert (=> b!559891 m!537655))

(assert (=> b!559891 m!537655))

(declare-fun m!537683 () Bool)

(assert (=> b!559891 m!537683))

(declare-fun m!537685 () Bool)

(assert (=> b!559891 m!537685))

(declare-fun m!537687 () Bool)

(assert (=> b!559891 m!537687))

(assert (=> b!559895 m!537655))

(assert (=> b!559895 m!537655))

(declare-fun m!537689 () Bool)

(assert (=> b!559895 m!537689))

(declare-fun m!537691 () Bool)

(assert (=> b!559897 m!537691))

(assert (=> b!559901 m!537655))

(assert (=> b!559901 m!537669))

(declare-fun m!537693 () Bool)

(assert (=> b!559901 m!537693))

(assert (=> b!559901 m!537657))

(check-sat (not b!559896) (not b!559894) (not start!51346) (not b!559888) (not b!559889) (not b!559891) (not b!559897) (not b!559890) (not b!559892) (not b!559895) (not b!559900))
(check-sat)
