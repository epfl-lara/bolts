; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51270 () Bool)

(assert start!51270)

(declare-fun b!559354 () Bool)

(declare-fun res!350899 () Bool)

(declare-fun e!322250 () Bool)

(assert (=> b!559354 (=> (not res!350899) (not e!322250))))

(declare-datatypes ((array!35152 0))(
  ( (array!35153 (arr!16874 (Array (_ BitVec 32) (_ BitVec 64))) (size!17238 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35152)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559354 (= res!350899 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!559355 () Bool)

(declare-fun res!350898 () Bool)

(assert (=> b!559355 (=> (not res!350898) (not e!322250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559355 (= res!350898 (validKeyInArray!0 k!1914))))

(declare-fun b!559356 () Bool)

(declare-fun res!350902 () Bool)

(declare-fun e!322251 () Bool)

(assert (=> b!559356 (=> (not res!350902) (not e!322251))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35152 (_ BitVec 32)) Bool)

(assert (=> b!559356 (= res!350902 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!559357 () Bool)

(declare-fun res!350900 () Bool)

(assert (=> b!559357 (=> (not res!350900) (not e!322250))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!559357 (= res!350900 (and (= (size!17238 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17238 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17238 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!559358 () Bool)

(declare-fun res!350893 () Bool)

(assert (=> b!559358 (=> (not res!350893) (not e!322251))))

(declare-datatypes ((List!11007 0))(
  ( (Nil!11004) (Cons!11003 (h!12003 (_ BitVec 64)) (t!17243 List!11007)) )
))
(declare-fun arrayNoDuplicates!0 (array!35152 (_ BitVec 32) List!11007) Bool)

(assert (=> b!559358 (= res!350893 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11004))))

(declare-fun b!559359 () Bool)

(declare-fun e!322252 () Bool)

(assert (=> b!559359 (= e!322251 e!322252)))

(declare-fun res!350895 () Bool)

(assert (=> b!559359 (=> (not res!350895) (not e!322252))))

(declare-datatypes ((SeekEntryResult!5330 0))(
  ( (MissingZero!5330 (index!23547 (_ BitVec 32))) (Found!5330 (index!23548 (_ BitVec 32))) (Intermediate!5330 (undefined!6142 Bool) (index!23549 (_ BitVec 32)) (x!52483 (_ BitVec 32))) (Undefined!5330) (MissingVacant!5330 (index!23550 (_ BitVec 32))) )
))
(declare-fun lt!254266 () SeekEntryResult!5330)

(declare-fun lt!254270 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35152 (_ BitVec 32)) SeekEntryResult!5330)

(assert (=> b!559359 (= res!350895 (= lt!254266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254270 (select (store (arr!16874 a!3118) i!1132 k!1914) j!142) (array!35153 (store (arr!16874 a!3118) i!1132 k!1914) (size!17238 a!3118)) mask!3119)))))

(declare-fun lt!254268 () (_ BitVec 32))

(assert (=> b!559359 (= lt!254266 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254268 (select (arr!16874 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559359 (= lt!254270 (toIndex!0 (select (store (arr!16874 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!559359 (= lt!254268 (toIndex!0 (select (arr!16874 a!3118) j!142) mask!3119))))

(declare-fun e!322253 () Bool)

(declare-fun lt!254269 () SeekEntryResult!5330)

(declare-fun b!559360 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35152 (_ BitVec 32)) SeekEntryResult!5330)

(assert (=> b!559360 (= e!322253 (= lt!254269 (seekKeyOrZeroReturnVacant!0 (x!52483 lt!254266) (index!23549 lt!254266) (index!23549 lt!254266) (select (arr!16874 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!559361 () Bool)

(assert (=> b!559361 (= e!322250 e!322251)))

(declare-fun res!350903 () Bool)

(assert (=> b!559361 (=> (not res!350903) (not e!322251))))

(declare-fun lt!254267 () SeekEntryResult!5330)

(assert (=> b!559361 (= res!350903 (or (= lt!254267 (MissingZero!5330 i!1132)) (= lt!254267 (MissingVacant!5330 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35152 (_ BitVec 32)) SeekEntryResult!5330)

(assert (=> b!559361 (= lt!254267 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!350896 () Bool)

(assert (=> start!51270 (=> (not res!350896) (not e!322250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51270 (= res!350896 (validMask!0 mask!3119))))

(assert (=> start!51270 e!322250))

(assert (=> start!51270 true))

(declare-fun array_inv!12648 (array!35152) Bool)

(assert (=> start!51270 (array_inv!12648 a!3118)))

(declare-fun b!559362 () Bool)

(assert (=> b!559362 (= e!322252 (not true))))

(declare-fun e!322255 () Bool)

(assert (=> b!559362 e!322255))

(declare-fun res!350901 () Bool)

(assert (=> b!559362 (=> (not res!350901) (not e!322255))))

(assert (=> b!559362 (= res!350901 (= lt!254269 (Found!5330 j!142)))))

(assert (=> b!559362 (= lt!254269 (seekEntryOrOpen!0 (select (arr!16874 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!559362 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17434 0))(
  ( (Unit!17435) )
))
(declare-fun lt!254265 () Unit!17434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35152 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17434)

(assert (=> b!559362 (= lt!254265 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!559363 () Bool)

(declare-fun res!350894 () Bool)

(assert (=> b!559363 (=> (not res!350894) (not e!322250))))

(assert (=> b!559363 (= res!350894 (validKeyInArray!0 (select (arr!16874 a!3118) j!142)))))

(declare-fun b!559364 () Bool)

(assert (=> b!559364 (= e!322255 e!322253)))

(declare-fun res!350897 () Bool)

(assert (=> b!559364 (=> res!350897 e!322253)))

(assert (=> b!559364 (= res!350897 (or (undefined!6142 lt!254266) (not (is-Intermediate!5330 lt!254266)) (= (select (arr!16874 a!3118) (index!23549 lt!254266)) (select (arr!16874 a!3118) j!142)) (= (select (arr!16874 a!3118) (index!23549 lt!254266)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!51270 res!350896) b!559357))

(assert (= (and b!559357 res!350900) b!559363))

(assert (= (and b!559363 res!350894) b!559355))

(assert (= (and b!559355 res!350898) b!559354))

(assert (= (and b!559354 res!350899) b!559361))

(assert (= (and b!559361 res!350903) b!559356))

(assert (= (and b!559356 res!350902) b!559358))

(assert (= (and b!559358 res!350893) b!559359))

(assert (= (and b!559359 res!350895) b!559362))

(assert (= (and b!559362 res!350901) b!559364))

(assert (= (and b!559364 (not res!350897)) b!559360))

(declare-fun m!537213 () Bool)

(assert (=> b!559355 m!537213))

(declare-fun m!537215 () Bool)

(assert (=> b!559360 m!537215))

(assert (=> b!559360 m!537215))

(declare-fun m!537217 () Bool)

(assert (=> b!559360 m!537217))

(declare-fun m!537219 () Bool)

(assert (=> b!559358 m!537219))

(declare-fun m!537221 () Bool)

(assert (=> b!559354 m!537221))

(declare-fun m!537223 () Bool)

(assert (=> b!559364 m!537223))

(assert (=> b!559364 m!537215))

(assert (=> b!559363 m!537215))

(assert (=> b!559363 m!537215))

(declare-fun m!537225 () Bool)

(assert (=> b!559363 m!537225))

(assert (=> b!559362 m!537215))

(assert (=> b!559362 m!537215))

(declare-fun m!537227 () Bool)

(assert (=> b!559362 m!537227))

(declare-fun m!537229 () Bool)

(assert (=> b!559362 m!537229))

(declare-fun m!537231 () Bool)

(assert (=> b!559362 m!537231))

(declare-fun m!537233 () Bool)

(assert (=> b!559361 m!537233))

(declare-fun m!537235 () Bool)

(assert (=> start!51270 m!537235))

(declare-fun m!537237 () Bool)

(assert (=> start!51270 m!537237))

(assert (=> b!559359 m!537215))

(declare-fun m!537239 () Bool)

(assert (=> b!559359 m!537239))

(assert (=> b!559359 m!537215))

(declare-fun m!537241 () Bool)

(assert (=> b!559359 m!537241))

(declare-fun m!537243 () Bool)

(assert (=> b!559359 m!537243))

(assert (=> b!559359 m!537241))

(declare-fun m!537245 () Bool)

(assert (=> b!559359 m!537245))

(assert (=> b!559359 m!537241))

(declare-fun m!537247 () Bool)

(assert (=> b!559359 m!537247))

(assert (=> b!559359 m!537215))

(declare-fun m!537249 () Bool)

(assert (=> b!559359 m!537249))

(declare-fun m!537251 () Bool)

(assert (=> b!559356 m!537251))

(push 1)

(assert (not b!559359))

(assert (not start!51270))

(assert (not b!559362))

(assert (not b!559360))

(assert (not b!559358))

(assert (not b!559356))

(assert (not b!559361))

(assert (not b!559354))

