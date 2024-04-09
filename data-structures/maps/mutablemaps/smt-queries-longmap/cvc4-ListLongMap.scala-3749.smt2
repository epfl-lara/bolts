; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51510 () Bool)

(assert start!51510)

(declare-fun b!563027 () Bool)

(declare-fun e!324489 () Bool)

(declare-fun lt!257113 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563027 (= e!324489 (validKeyInArray!0 lt!257113))))

(declare-fun b!563028 () Bool)

(declare-fun res!354341 () Bool)

(declare-fun e!324492 () Bool)

(assert (=> b!563028 (=> (not res!354341) (not e!324492))))

(declare-datatypes ((array!35329 0))(
  ( (array!35330 (arr!16961 (Array (_ BitVec 32) (_ BitVec 64))) (size!17325 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35329)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!563028 (= res!354341 (validKeyInArray!0 (select (arr!16961 a!3118) j!142)))))

(declare-fun b!563029 () Bool)

(declare-fun res!354332 () Bool)

(assert (=> b!563029 (=> (not res!354332) (not e!324492))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!563029 (= res!354332 (validKeyInArray!0 k!1914))))

(declare-fun b!563030 () Bool)

(declare-fun e!324493 () Bool)

(declare-fun e!324487 () Bool)

(assert (=> b!563030 (= e!324493 (not e!324487))))

(declare-fun res!354337 () Bool)

(assert (=> b!563030 (=> res!354337 e!324487)))

(declare-datatypes ((SeekEntryResult!5417 0))(
  ( (MissingZero!5417 (index!23895 (_ BitVec 32))) (Found!5417 (index!23896 (_ BitVec 32))) (Intermediate!5417 (undefined!6229 Bool) (index!23897 (_ BitVec 32)) (x!52811 (_ BitVec 32))) (Undefined!5417) (MissingVacant!5417 (index!23898 (_ BitVec 32))) )
))
(declare-fun lt!257106 () SeekEntryResult!5417)

(assert (=> b!563030 (= res!354337 (or (undefined!6229 lt!257106) (not (is-Intermediate!5417 lt!257106))))))

(declare-fun lt!257107 () SeekEntryResult!5417)

(declare-fun lt!257117 () SeekEntryResult!5417)

(assert (=> b!563030 (= lt!257107 lt!257117)))

(assert (=> b!563030 (= lt!257117 (Found!5417 j!142))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35329 (_ BitVec 32)) SeekEntryResult!5417)

(assert (=> b!563030 (= lt!257107 (seekEntryOrOpen!0 (select (arr!16961 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35329 (_ BitVec 32)) Bool)

(assert (=> b!563030 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17608 0))(
  ( (Unit!17609) )
))
(declare-fun lt!257114 () Unit!17608)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35329 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17608)

(assert (=> b!563030 (= lt!257114 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!354335 () Bool)

(assert (=> start!51510 (=> (not res!354335) (not e!324492))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51510 (= res!354335 (validMask!0 mask!3119))))

(assert (=> start!51510 e!324492))

(assert (=> start!51510 true))

(declare-fun array_inv!12735 (array!35329) Bool)

(assert (=> start!51510 (array_inv!12735 a!3118)))

(declare-fun b!563031 () Bool)

(declare-fun e!324486 () Bool)

(assert (=> b!563031 (= e!324487 e!324486)))

(declare-fun res!354339 () Bool)

(assert (=> b!563031 (=> res!354339 e!324486)))

(declare-fun lt!257105 () (_ BitVec 64))

(assert (=> b!563031 (= res!354339 (or (= lt!257105 (select (arr!16961 a!3118) j!142)) (= lt!257105 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!563031 (= lt!257105 (select (arr!16961 a!3118) (index!23897 lt!257106)))))

(declare-fun b!563032 () Bool)

(declare-fun res!354338 () Bool)

(declare-fun e!324488 () Bool)

(assert (=> b!563032 (=> (not res!354338) (not e!324488))))

(declare-datatypes ((List!11094 0))(
  ( (Nil!11091) (Cons!11090 (h!12093 (_ BitVec 64)) (t!17330 List!11094)) )
))
(declare-fun arrayNoDuplicates!0 (array!35329 (_ BitVec 32) List!11094) Bool)

(assert (=> b!563032 (= res!354338 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11091))))

(declare-fun b!563033 () Bool)

(assert (=> b!563033 (= e!324488 e!324493)))

(declare-fun res!354331 () Bool)

(assert (=> b!563033 (=> (not res!354331) (not e!324493))))

(declare-fun lt!257111 () array!35329)

(declare-fun lt!257109 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35329 (_ BitVec 32)) SeekEntryResult!5417)

(assert (=> b!563033 (= res!354331 (= lt!257106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257109 lt!257113 lt!257111 mask!3119)))))

(declare-fun lt!257112 () (_ BitVec 32))

(assert (=> b!563033 (= lt!257106 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257112 (select (arr!16961 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563033 (= lt!257109 (toIndex!0 lt!257113 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!563033 (= lt!257113 (select (store (arr!16961 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!563033 (= lt!257112 (toIndex!0 (select (arr!16961 a!3118) j!142) mask!3119))))

(assert (=> b!563033 (= lt!257111 (array!35330 (store (arr!16961 a!3118) i!1132 k!1914) (size!17325 a!3118)))))

(declare-fun b!563034 () Bool)

(declare-fun res!354336 () Bool)

(assert (=> b!563034 (=> (not res!354336) (not e!324488))))

(assert (=> b!563034 (= res!354336 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563035 () Bool)

(declare-fun res!354333 () Bool)

(assert (=> b!563035 (=> (not res!354333) (not e!324492))))

(declare-fun arrayContainsKey!0 (array!35329 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563035 (= res!354333 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563036 () Bool)

(declare-fun res!354340 () Bool)

(assert (=> b!563036 (=> (not res!354340) (not e!324492))))

(assert (=> b!563036 (= res!354340 (and (= (size!17325 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17325 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17325 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563037 () Bool)

(declare-fun e!324490 () Bool)

(assert (=> b!563037 (= e!324490 e!324489)))

(declare-fun res!354329 () Bool)

(assert (=> b!563037 (=> res!354329 e!324489)))

(assert (=> b!563037 (= res!354329 (bvslt mask!3119 #b00000000000000000000000000000000))))

(declare-fun lt!257110 () SeekEntryResult!5417)

(declare-fun lt!257116 () SeekEntryResult!5417)

(assert (=> b!563037 (= lt!257110 lt!257116)))

(declare-fun lt!257104 () Unit!17608)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35329 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17608)

(assert (=> b!563037 (= lt!257104 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52811 lt!257106) (index!23897 lt!257106) (index!23897 lt!257106) mask!3119))))

(declare-fun b!563038 () Bool)

(assert (=> b!563038 (= e!324486 e!324490)))

(declare-fun res!354330 () Bool)

(assert (=> b!563038 (=> res!354330 e!324490)))

(assert (=> b!563038 (= res!354330 (or (bvslt (index!23897 lt!257106) #b00000000000000000000000000000000) (bvsge (index!23897 lt!257106) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52811 lt!257106) #b01111111111111111111111111111110) (bvslt (x!52811 lt!257106) #b00000000000000000000000000000000) (not (= lt!257105 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16961 a!3118) i!1132 k!1914) (index!23897 lt!257106)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!257110 lt!257117))))))

(declare-fun lt!257108 () SeekEntryResult!5417)

(assert (=> b!563038 (= lt!257108 lt!257116)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35329 (_ BitVec 32)) SeekEntryResult!5417)

(assert (=> b!563038 (= lt!257116 (seekKeyOrZeroReturnVacant!0 (x!52811 lt!257106) (index!23897 lt!257106) (index!23897 lt!257106) lt!257113 lt!257111 mask!3119))))

(assert (=> b!563038 (= lt!257108 (seekEntryOrOpen!0 lt!257113 lt!257111 mask!3119))))

(assert (=> b!563038 (= lt!257107 lt!257110)))

(assert (=> b!563038 (= lt!257110 (seekKeyOrZeroReturnVacant!0 (x!52811 lt!257106) (index!23897 lt!257106) (index!23897 lt!257106) (select (arr!16961 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!563039 () Bool)

(assert (=> b!563039 (= e!324492 e!324488)))

(declare-fun res!354334 () Bool)

(assert (=> b!563039 (=> (not res!354334) (not e!324488))))

(declare-fun lt!257115 () SeekEntryResult!5417)

(assert (=> b!563039 (= res!354334 (or (= lt!257115 (MissingZero!5417 i!1132)) (= lt!257115 (MissingVacant!5417 i!1132))))))

(assert (=> b!563039 (= lt!257115 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51510 res!354335) b!563036))

(assert (= (and b!563036 res!354340) b!563028))

(assert (= (and b!563028 res!354341) b!563029))

(assert (= (and b!563029 res!354332) b!563035))

(assert (= (and b!563035 res!354333) b!563039))

(assert (= (and b!563039 res!354334) b!563034))

(assert (= (and b!563034 res!354336) b!563032))

(assert (= (and b!563032 res!354338) b!563033))

(assert (= (and b!563033 res!354331) b!563030))

(assert (= (and b!563030 (not res!354337)) b!563031))

(assert (= (and b!563031 (not res!354339)) b!563038))

(assert (= (and b!563038 (not res!354330)) b!563037))

(assert (= (and b!563037 (not res!354329)) b!563027))

(declare-fun m!541355 () Bool)

(assert (=> b!563039 m!541355))

(declare-fun m!541357 () Bool)

(assert (=> b!563038 m!541357))

(declare-fun m!541359 () Bool)

(assert (=> b!563038 m!541359))

(declare-fun m!541361 () Bool)

(assert (=> b!563038 m!541361))

(declare-fun m!541363 () Bool)

(assert (=> b!563038 m!541363))

(declare-fun m!541365 () Bool)

(assert (=> b!563038 m!541365))

(assert (=> b!563038 m!541357))

(declare-fun m!541367 () Bool)

(assert (=> b!563038 m!541367))

(declare-fun m!541369 () Bool)

(assert (=> b!563037 m!541369))

(assert (=> b!563028 m!541357))

(assert (=> b!563028 m!541357))

(declare-fun m!541371 () Bool)

(assert (=> b!563028 m!541371))

(assert (=> b!563031 m!541357))

(declare-fun m!541373 () Bool)

(assert (=> b!563031 m!541373))

(assert (=> b!563030 m!541357))

(assert (=> b!563030 m!541357))

(declare-fun m!541375 () Bool)

(assert (=> b!563030 m!541375))

(declare-fun m!541377 () Bool)

(assert (=> b!563030 m!541377))

(declare-fun m!541379 () Bool)

(assert (=> b!563030 m!541379))

(declare-fun m!541381 () Bool)

(assert (=> b!563029 m!541381))

(declare-fun m!541383 () Bool)

(assert (=> b!563035 m!541383))

(declare-fun m!541385 () Bool)

(assert (=> b!563032 m!541385))

(declare-fun m!541387 () Bool)

(assert (=> b!563027 m!541387))

(declare-fun m!541389 () Bool)

(assert (=> start!51510 m!541389))

(declare-fun m!541391 () Bool)

(assert (=> start!51510 m!541391))

(declare-fun m!541393 () Bool)

(assert (=> b!563034 m!541393))

(declare-fun m!541395 () Bool)

(assert (=> b!563033 m!541395))

(assert (=> b!563033 m!541357))

(declare-fun m!541397 () Bool)

(assert (=> b!563033 m!541397))

(assert (=> b!563033 m!541357))

(declare-fun m!541399 () Bool)

(assert (=> b!563033 m!541399))

(assert (=> b!563033 m!541357))

(declare-fun m!541401 () Bool)

(assert (=> b!563033 m!541401))

(assert (=> b!563033 m!541363))

(declare-fun m!541403 () Bool)

(assert (=> b!563033 m!541403))

(push 1)

