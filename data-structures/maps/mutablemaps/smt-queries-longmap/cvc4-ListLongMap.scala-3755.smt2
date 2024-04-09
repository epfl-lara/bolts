; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51546 () Bool)

(assert start!51546)

(declare-fun b!563570 () Bool)

(declare-fun res!354872 () Bool)

(declare-fun e!324727 () Bool)

(assert (=> b!563570 (=> (not res!354872) (not e!324727))))

(declare-datatypes ((array!35365 0))(
  ( (array!35366 (arr!16979 (Array (_ BitVec 32) (_ BitVec 64))) (size!17343 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35365)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563570 (= res!354872 (validKeyInArray!0 (select (arr!16979 a!3118) j!142)))))

(declare-fun b!563571 () Bool)

(declare-fun res!354881 () Bool)

(declare-fun e!324723 () Bool)

(assert (=> b!563571 (=> (not res!354881) (not e!324723))))

(declare-datatypes ((List!11112 0))(
  ( (Nil!11109) (Cons!11108 (h!12111 (_ BitVec 64)) (t!17348 List!11112)) )
))
(declare-fun arrayNoDuplicates!0 (array!35365 (_ BitVec 32) List!11112) Bool)

(assert (=> b!563571 (= res!354881 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11109))))

(declare-fun b!563572 () Bool)

(declare-fun res!354878 () Bool)

(assert (=> b!563572 (=> (not res!354878) (not e!324723))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35365 (_ BitVec 32)) Bool)

(assert (=> b!563572 (= res!354878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun e!324725 () Bool)

(declare-fun lt!257294 () Bool)

(declare-fun b!563573 () Bool)

(declare-datatypes ((SeekEntryResult!5435 0))(
  ( (MissingZero!5435 (index!23967 (_ BitVec 32))) (Found!5435 (index!23968 (_ BitVec 32))) (Intermediate!5435 (undefined!6247 Bool) (index!23969 (_ BitVec 32)) (x!52877 (_ BitVec 32))) (Undefined!5435) (MissingVacant!5435 (index!23970 (_ BitVec 32))) )
))
(declare-fun lt!257292 () SeekEntryResult!5435)

(assert (=> b!563573 (= e!324725 (not (or (and (not lt!257294) (undefined!6247 lt!257292)) (and (not lt!257294) (not (undefined!6247 lt!257292))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!563573 (= lt!257294 (not (is-Intermediate!5435 lt!257292)))))

(declare-fun e!324724 () Bool)

(assert (=> b!563573 e!324724))

(declare-fun res!354874 () Bool)

(assert (=> b!563573 (=> (not res!354874) (not e!324724))))

(assert (=> b!563573 (= res!354874 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17644 0))(
  ( (Unit!17645) )
))
(declare-fun lt!257293 () Unit!17644)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35365 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17644)

(assert (=> b!563573 (= lt!257293 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!354880 () Bool)

(assert (=> start!51546 (=> (not res!354880) (not e!324727))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51546 (= res!354880 (validMask!0 mask!3119))))

(assert (=> start!51546 e!324727))

(assert (=> start!51546 true))

(declare-fun array_inv!12753 (array!35365) Bool)

(assert (=> start!51546 (array_inv!12753 a!3118)))

(declare-fun b!563574 () Bool)

(assert (=> b!563574 (= e!324727 e!324723)))

(declare-fun res!354879 () Bool)

(assert (=> b!563574 (=> (not res!354879) (not e!324723))))

(declare-fun lt!257297 () SeekEntryResult!5435)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563574 (= res!354879 (or (= lt!257297 (MissingZero!5435 i!1132)) (= lt!257297 (MissingVacant!5435 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35365 (_ BitVec 32)) SeekEntryResult!5435)

(assert (=> b!563574 (= lt!257297 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563575 () Bool)

(declare-fun res!354876 () Bool)

(assert (=> b!563575 (=> (not res!354876) (not e!324727))))

(declare-fun arrayContainsKey!0 (array!35365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563575 (= res!354876 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563576 () Bool)

(declare-fun res!354875 () Bool)

(assert (=> b!563576 (=> (not res!354875) (not e!324727))))

(assert (=> b!563576 (= res!354875 (validKeyInArray!0 k!1914))))

(declare-fun b!563577 () Bool)

(assert (=> b!563577 (= e!324723 e!324725)))

(declare-fun res!354873 () Bool)

(assert (=> b!563577 (=> (not res!354873) (not e!324725))))

(declare-fun lt!257296 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35365 (_ BitVec 32)) SeekEntryResult!5435)

(assert (=> b!563577 (= res!354873 (= lt!257292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257296 (select (store (arr!16979 a!3118) i!1132 k!1914) j!142) (array!35366 (store (arr!16979 a!3118) i!1132 k!1914) (size!17343 a!3118)) mask!3119)))))

(declare-fun lt!257295 () (_ BitVec 32))

(assert (=> b!563577 (= lt!257292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257295 (select (arr!16979 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563577 (= lt!257296 (toIndex!0 (select (store (arr!16979 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!563577 (= lt!257295 (toIndex!0 (select (arr!16979 a!3118) j!142) mask!3119))))

(declare-fun b!563578 () Bool)

(declare-fun res!354877 () Bool)

(assert (=> b!563578 (=> (not res!354877) (not e!324727))))

(assert (=> b!563578 (= res!354877 (and (= (size!17343 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17343 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17343 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563579 () Bool)

(assert (=> b!563579 (= e!324724 (= (seekEntryOrOpen!0 (select (arr!16979 a!3118) j!142) a!3118 mask!3119) (Found!5435 j!142)))))

(assert (= (and start!51546 res!354880) b!563578))

(assert (= (and b!563578 res!354877) b!563570))

(assert (= (and b!563570 res!354872) b!563576))

(assert (= (and b!563576 res!354875) b!563575))

(assert (= (and b!563575 res!354876) b!563574))

(assert (= (and b!563574 res!354879) b!563572))

(assert (= (and b!563572 res!354878) b!563571))

(assert (= (and b!563571 res!354881) b!563577))

(assert (= (and b!563577 res!354873) b!563573))

(assert (= (and b!563573 res!354874) b!563579))

(declare-fun m!542017 () Bool)

(assert (=> b!563576 m!542017))

(declare-fun m!542019 () Bool)

(assert (=> b!563571 m!542019))

(declare-fun m!542021 () Bool)

(assert (=> b!563575 m!542021))

(declare-fun m!542023 () Bool)

(assert (=> b!563577 m!542023))

(declare-fun m!542025 () Bool)

(assert (=> b!563577 m!542025))

(assert (=> b!563577 m!542023))

(declare-fun m!542027 () Bool)

(assert (=> b!563577 m!542027))

(declare-fun m!542029 () Bool)

(assert (=> b!563577 m!542029))

(assert (=> b!563577 m!542027))

(assert (=> b!563577 m!542023))

(declare-fun m!542031 () Bool)

(assert (=> b!563577 m!542031))

(declare-fun m!542033 () Bool)

(assert (=> b!563577 m!542033))

(assert (=> b!563577 m!542027))

(declare-fun m!542035 () Bool)

(assert (=> b!563577 m!542035))

(declare-fun m!542037 () Bool)

(assert (=> b!563574 m!542037))

(assert (=> b!563579 m!542023))

(assert (=> b!563579 m!542023))

(declare-fun m!542039 () Bool)

(assert (=> b!563579 m!542039))

(declare-fun m!542041 () Bool)

(assert (=> b!563573 m!542041))

(declare-fun m!542043 () Bool)

(assert (=> b!563573 m!542043))

(declare-fun m!542045 () Bool)

(assert (=> b!563572 m!542045))

(assert (=> b!563570 m!542023))

(assert (=> b!563570 m!542023))

(declare-fun m!542047 () Bool)

(assert (=> b!563570 m!542047))

(declare-fun m!542049 () Bool)

(assert (=> start!51546 m!542049))

(declare-fun m!542051 () Bool)

(assert (=> start!51546 m!542051))

(push 1)

