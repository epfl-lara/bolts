; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51272 () Bool)

(assert start!51272)

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5331 0))(
  ( (MissingZero!5331 (index!23551 (_ BitVec 32))) (Found!5331 (index!23552 (_ BitVec 32))) (Intermediate!5331 (undefined!6143 Bool) (index!23553 (_ BitVec 32)) (x!52492 (_ BitVec 32))) (Undefined!5331) (MissingVacant!5331 (index!23554 (_ BitVec 32))) )
))
(declare-fun lt!254289 () SeekEntryResult!5331)

(declare-fun lt!254292 () SeekEntryResult!5331)

(declare-fun b!559389 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35154 0))(
  ( (array!35155 (arr!16875 (Array (_ BitVec 32) (_ BitVec 64))) (size!17239 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35154)

(declare-fun e!322275 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35154 (_ BitVec 32)) SeekEntryResult!5331)

(assert (=> b!559389 (= e!322275 (= lt!254289 (seekKeyOrZeroReturnVacant!0 (x!52492 lt!254292) (index!23553 lt!254292) (index!23553 lt!254292) (select (arr!16875 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!559390 () Bool)

(declare-fun e!322270 () Bool)

(assert (=> b!559390 (= e!322270 e!322275)))

(declare-fun res!350936 () Bool)

(assert (=> b!559390 (=> res!350936 e!322275)))

(declare-fun lt!254288 () (_ BitVec 64))

(assert (=> b!559390 (= res!350936 (or (= lt!254288 (select (arr!16875 a!3118) j!142)) (= lt!254288 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!559390 (= lt!254288 (select (arr!16875 a!3118) (index!23553 lt!254292)))))

(declare-fun res!350935 () Bool)

(declare-fun e!322276 () Bool)

(assert (=> start!51272 (=> (not res!350935) (not e!322276))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51272 (= res!350935 (validMask!0 mask!3119))))

(assert (=> start!51272 e!322276))

(assert (=> start!51272 true))

(declare-fun array_inv!12649 (array!35154) Bool)

(assert (=> start!51272 (array_inv!12649 a!3118)))

(declare-fun b!559391 () Bool)

(declare-fun res!350930 () Bool)

(declare-fun e!322274 () Bool)

(assert (=> b!559391 (=> (not res!350930) (not e!322274))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35154 (_ BitVec 32)) Bool)

(assert (=> b!559391 (= res!350930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!559392 () Bool)

(declare-fun res!350933 () Bool)

(assert (=> b!559392 (=> (not res!350933) (not e!322274))))

(declare-datatypes ((List!11008 0))(
  ( (Nil!11005) (Cons!11004 (h!12004 (_ BitVec 64)) (t!17244 List!11008)) )
))
(declare-fun arrayNoDuplicates!0 (array!35154 (_ BitVec 32) List!11008) Bool)

(assert (=> b!559392 (= res!350933 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11005))))

(declare-fun b!559393 () Bool)

(declare-fun e!322273 () Bool)

(assert (=> b!559393 (= e!322273 e!322270)))

(declare-fun res!350939 () Bool)

(assert (=> b!559393 (=> res!350939 e!322270)))

(assert (=> b!559393 (= res!350939 (or (undefined!6143 lt!254292) (not (is-Intermediate!5331 lt!254292))))))

(declare-fun b!559394 () Bool)

(declare-fun e!322271 () Bool)

(assert (=> b!559394 (= e!322274 e!322271)))

(declare-fun res!350928 () Bool)

(assert (=> b!559394 (=> (not res!350928) (not e!322271))))

(declare-fun lt!254294 () (_ BitVec 64))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!254291 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35154 (_ BitVec 32)) SeekEntryResult!5331)

(assert (=> b!559394 (= res!350928 (= lt!254292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254291 lt!254294 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118)) mask!3119)))))

(declare-fun lt!254293 () (_ BitVec 32))

(assert (=> b!559394 (= lt!254292 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254293 (select (arr!16875 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559394 (= lt!254291 (toIndex!0 lt!254294 mask!3119))))

(assert (=> b!559394 (= lt!254294 (select (store (arr!16875 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!559394 (= lt!254293 (toIndex!0 (select (arr!16875 a!3118) j!142) mask!3119))))

(declare-fun b!559395 () Bool)

(declare-fun res!350929 () Bool)

(assert (=> b!559395 (=> (not res!350929) (not e!322276))))

(assert (=> b!559395 (= res!350929 (and (= (size!17239 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17239 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17239 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!559396 () Bool)

(declare-fun res!350932 () Bool)

(assert (=> b!559396 (=> (not res!350932) (not e!322276))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559396 (= res!350932 (validKeyInArray!0 (select (arr!16875 a!3118) j!142)))))

(declare-fun b!559397 () Bool)

(declare-fun res!350934 () Bool)

(assert (=> b!559397 (=> (not res!350934) (not e!322276))))

(declare-fun arrayContainsKey!0 (array!35154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559397 (= res!350934 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!559398 () Bool)

(assert (=> b!559398 (= e!322276 e!322274)))

(declare-fun res!350931 () Bool)

(assert (=> b!559398 (=> (not res!350931) (not e!322274))))

(declare-fun lt!254290 () SeekEntryResult!5331)

(assert (=> b!559398 (= res!350931 (or (= lt!254290 (MissingZero!5331 i!1132)) (= lt!254290 (MissingVacant!5331 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35154 (_ BitVec 32)) SeekEntryResult!5331)

(assert (=> b!559398 (= lt!254290 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!559399 () Bool)

(assert (=> b!559399 (= e!322271 (not (or (undefined!6143 lt!254292) (not (is-Intermediate!5331 lt!254292)) (let ((bdg!16975 (select (arr!16875 a!3118) (index!23553 lt!254292)))) (or (= bdg!16975 (select (arr!16875 a!3118) j!142)) (= bdg!16975 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23553 lt!254292) #b00000000000000000000000000000000) (bvsge (index!23553 lt!254292) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52492 lt!254292) #b01111111111111111111111111111110) (bvslt (x!52492 lt!254292) #b00000000000000000000000000000000) (= (select (store (arr!16875 a!3118) i!1132 k!1914) (index!23553 lt!254292)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!559399 e!322273))

(declare-fun res!350938 () Bool)

(assert (=> b!559399 (=> (not res!350938) (not e!322273))))

(assert (=> b!559399 (= res!350938 (= lt!254289 (Found!5331 j!142)))))

(assert (=> b!559399 (= lt!254289 (seekEntryOrOpen!0 (select (arr!16875 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!559399 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17436 0))(
  ( (Unit!17437) )
))
(declare-fun lt!254287 () Unit!17436)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35154 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17436)

(assert (=> b!559399 (= lt!254287 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!559400 () Bool)

(declare-fun res!350937 () Bool)

(assert (=> b!559400 (=> (not res!350937) (not e!322276))))

(assert (=> b!559400 (= res!350937 (validKeyInArray!0 k!1914))))

(assert (= (and start!51272 res!350935) b!559395))

(assert (= (and b!559395 res!350929) b!559396))

(assert (= (and b!559396 res!350932) b!559400))

(assert (= (and b!559400 res!350937) b!559397))

(assert (= (and b!559397 res!350934) b!559398))

(assert (= (and b!559398 res!350931) b!559391))

(assert (= (and b!559391 res!350930) b!559392))

(assert (= (and b!559392 res!350933) b!559394))

(assert (= (and b!559394 res!350928) b!559399))

(assert (= (and b!559399 res!350938) b!559393))

(assert (= (and b!559393 (not res!350939)) b!559390))

(assert (= (and b!559390 (not res!350936)) b!559389))

(declare-fun m!537253 () Bool)

(assert (=> b!559389 m!537253))

(assert (=> b!559389 m!537253))

(declare-fun m!537255 () Bool)

(assert (=> b!559389 m!537255))

(declare-fun m!537257 () Bool)

(assert (=> b!559400 m!537257))

(declare-fun m!537259 () Bool)

(assert (=> b!559398 m!537259))

(declare-fun m!537261 () Bool)

(assert (=> b!559399 m!537261))

(assert (=> b!559399 m!537253))

(declare-fun m!537263 () Bool)

(assert (=> b!559399 m!537263))

(declare-fun m!537265 () Bool)

(assert (=> b!559399 m!537265))

(declare-fun m!537267 () Bool)

(assert (=> b!559399 m!537267))

(declare-fun m!537269 () Bool)

(assert (=> b!559399 m!537269))

(assert (=> b!559399 m!537253))

(declare-fun m!537271 () Bool)

(assert (=> b!559399 m!537271))

(assert (=> b!559390 m!537253))

(assert (=> b!559390 m!537261))

(assert (=> b!559394 m!537253))

(declare-fun m!537273 () Bool)

(assert (=> b!559394 m!537273))

(assert (=> b!559394 m!537253))

(declare-fun m!537275 () Bool)

(assert (=> b!559394 m!537275))

(declare-fun m!537277 () Bool)

(assert (=> b!559394 m!537277))

(declare-fun m!537279 () Bool)

(assert (=> b!559394 m!537279))

(assert (=> b!559394 m!537265))

(assert (=> b!559394 m!537253))

(declare-fun m!537281 () Bool)

(assert (=> b!559394 m!537281))

(declare-fun m!537283 () Bool)

(assert (=> start!51272 m!537283))

(declare-fun m!537285 () Bool)

(assert (=> start!51272 m!537285))

(declare-fun m!537287 () Bool)

(assert (=> b!559391 m!537287))

(declare-fun m!537289 () Bool)

(assert (=> b!559392 m!537289))

(declare-fun m!537291 () Bool)

(assert (=> b!559397 m!537291))

(assert (=> b!559396 m!537253))

(assert (=> b!559396 m!537253))

(declare-fun m!537293 () Bool)

(assert (=> b!559396 m!537293))

(push 1)

(assert (not b!559394))

(assert (not b!559396))

(assert (not b!559391))

(assert (not b!559399))

(assert (not b!559400))

(assert (not b!559392))

(assert (not b!559397))

(assert (not b!559389))

(assert (not b!559398))

(assert (not start!51272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!559507 () Bool)

(declare-fun e!322344 () Bool)

(declare-fun call!32435 () Bool)

(assert (=> b!559507 (= e!322344 call!32435)))

(declare-fun b!559508 () Bool)

(declare-fun e!322343 () Bool)

(declare-fun e!322345 () Bool)

(assert (=> b!559508 (= e!322343 e!322345)))

(declare-fun res!351024 () Bool)

(assert (=> b!559508 (=> (not res!351024) (not e!322345))))

(declare-fun e!322342 () Bool)

(assert (=> b!559508 (= res!351024 (not e!322342))))

(declare-fun res!351025 () Bool)

(assert (=> b!559508 (=> (not res!351025) (not e!322342))))

(assert (=> b!559508 (= res!351025 (validKeyInArray!0 (select (arr!16875 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559509 () Bool)

(declare-fun contains!2864 (List!11008 (_ BitVec 64)) Bool)

(assert (=> b!559509 (= e!322342 (contains!2864 Nil!11005 (select (arr!16875 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559510 () Bool)

(assert (=> b!559510 (= e!322344 call!32435)))

(declare-fun d!83671 () Bool)

(declare-fun res!351026 () Bool)

(assert (=> d!83671 (=> res!351026 e!322343)))

(assert (=> d!83671 (= res!351026 (bvsge #b00000000000000000000000000000000 (size!17239 a!3118)))))

(assert (=> d!83671 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11005) e!322343)))

(declare-fun bm!32432 () Bool)

(declare-fun c!64586 () Bool)

(assert (=> bm!32432 (= call!32435 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64586 (Cons!11004 (select (arr!16875 a!3118) #b00000000000000000000000000000000) Nil!11005) Nil!11005)))))

(declare-fun b!559511 () Bool)

(assert (=> b!559511 (= e!322345 e!322344)))

(assert (=> b!559511 (= c!64586 (validKeyInArray!0 (select (arr!16875 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83671 (not res!351026)) b!559508))

(assert (= (and b!559508 res!351025) b!559509))

(assert (= (and b!559508 res!351024) b!559511))

(assert (= (and b!559511 c!64586) b!559510))

(assert (= (and b!559511 (not c!64586)) b!559507))

(assert (= (or b!559510 b!559507) bm!32432))

(declare-fun m!537395 () Bool)

(assert (=> b!559508 m!537395))

(assert (=> b!559508 m!537395))

(declare-fun m!537397 () Bool)

(assert (=> b!559508 m!537397))

(assert (=> b!559509 m!537395))

(assert (=> b!559509 m!537395))

(declare-fun m!537399 () Bool)

(assert (=> b!559509 m!537399))

(assert (=> bm!32432 m!537395))

(declare-fun m!537401 () Bool)

(assert (=> bm!32432 m!537401))

(assert (=> b!559511 m!537395))

(assert (=> b!559511 m!537395))

(assert (=> b!559511 m!537397))

(assert (=> b!559392 d!83671))

(declare-fun d!83677 () Bool)

(declare-fun res!351035 () Bool)

(declare-fun e!322356 () Bool)

(assert (=> d!83677 (=> res!351035 e!322356)))

(assert (=> d!83677 (= res!351035 (= (select (arr!16875 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83677 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!322356)))

(declare-fun b!559524 () Bool)

(declare-fun e!322357 () Bool)

(assert (=> b!559524 (= e!322356 e!322357)))

(declare-fun res!351036 () Bool)

(assert (=> b!559524 (=> (not res!351036) (not e!322357))))

(assert (=> b!559524 (= res!351036 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17239 a!3118)))))

(declare-fun b!559525 () Bool)

(assert (=> b!559525 (= e!322357 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83677 (not res!351035)) b!559524))

(assert (= (and b!559524 res!351036) b!559525))

(assert (=> d!83677 m!537395))

(declare-fun m!537403 () Bool)

(assert (=> b!559525 m!537403))

(assert (=> b!559397 d!83677))

(declare-fun b!559560 () Bool)

(declare-fun e!322382 () Bool)

(declare-fun e!322383 () Bool)

(assert (=> b!559560 (= e!322382 e!322383)))

(declare-fun c!64600 () Bool)

(assert (=> b!559560 (= c!64600 (validKeyInArray!0 (select (arr!16875 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559562 () Bool)

(declare-fun e!322381 () Bool)

(assert (=> b!559562 (= e!322383 e!322381)))

(declare-fun lt!254378 () (_ BitVec 64))

(assert (=> b!559562 (= lt!254378 (select (arr!16875 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!254376 () Unit!17436)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35154 (_ BitVec 64) (_ BitVec 32)) Unit!17436)

(assert (=> b!559562 (= lt!254376 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254378 #b00000000000000000000000000000000))))

(assert (=> b!559562 (arrayContainsKey!0 a!3118 lt!254378 #b00000000000000000000000000000000)))

(declare-fun lt!254377 () Unit!17436)

(assert (=> b!559562 (= lt!254377 lt!254376)))

(declare-fun res!351049 () Bool)

(assert (=> b!559562 (= res!351049 (= (seekEntryOrOpen!0 (select (arr!16875 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5331 #b00000000000000000000000000000000)))))

(assert (=> b!559562 (=> (not res!351049) (not e!322381))))

(declare-fun bm!32440 () Bool)

(declare-fun call!32443 () Bool)

(assert (=> bm!32440 (= call!32443 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!559563 () Bool)

(assert (=> b!559563 (= e!322383 call!32443)))

(declare-fun d!83679 () Bool)

(declare-fun res!351050 () Bool)

(assert (=> d!83679 (=> res!351050 e!322382)))

(assert (=> d!83679 (= res!351050 (bvsge #b00000000000000000000000000000000 (size!17239 a!3118)))))

(assert (=> d!83679 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!322382)))

(declare-fun b!559561 () Bool)

(assert (=> b!559561 (= e!322381 call!32443)))

(assert (= (and d!83679 (not res!351050)) b!559560))

(assert (= (and b!559560 c!64600) b!559562))

(assert (= (and b!559560 (not c!64600)) b!559563))

(assert (= (and b!559562 res!351049) b!559561))

(assert (= (or b!559561 b!559563) bm!32440))

(assert (=> b!559560 m!537395))

(assert (=> b!559560 m!537395))

(assert (=> b!559560 m!537397))

(assert (=> b!559562 m!537395))

(declare-fun m!537413 () Bool)

(assert (=> b!559562 m!537413))

(declare-fun m!537415 () Bool)

(assert (=> b!559562 m!537415))

(assert (=> b!559562 m!537395))

(declare-fun m!537417 () Bool)

(assert (=> b!559562 m!537417))

(declare-fun m!537419 () Bool)

(assert (=> bm!32440 m!537419))

(assert (=> b!559391 d!83679))

(declare-fun d!83685 () Bool)

(assert (=> d!83685 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51272 d!83685))

(declare-fun d!83691 () Bool)

(assert (=> d!83691 (= (array_inv!12649 a!3118) (bvsge (size!17239 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51272 d!83691))

(declare-fun b!559637 () Bool)

(declare-fun e!322426 () SeekEntryResult!5331)

(assert (=> b!559637 (= e!322426 Undefined!5331)))

(declare-fun e!322428 () SeekEntryResult!5331)

(declare-fun b!559638 () Bool)

(declare-fun lt!254420 () SeekEntryResult!5331)

(assert (=> b!559638 (= e!322428 (seekKeyOrZeroReturnVacant!0 (x!52492 lt!254420) (index!23553 lt!254420) (index!23553 lt!254420) k!1914 a!3118 mask!3119))))

(declare-fun b!559639 () Bool)

(declare-fun e!322427 () SeekEntryResult!5331)

(assert (=> b!559639 (= e!322427 (Found!5331 (index!23553 lt!254420)))))

(declare-fun d!83693 () Bool)

(declare-fun lt!254419 () SeekEntryResult!5331)

(assert (=> d!83693 (and (or (is-Undefined!5331 lt!254419) (not (is-Found!5331 lt!254419)) (and (bvsge (index!23552 lt!254419) #b00000000000000000000000000000000) (bvslt (index!23552 lt!254419) (size!17239 a!3118)))) (or (is-Undefined!5331 lt!254419) (is-Found!5331 lt!254419) (not (is-MissingZero!5331 lt!254419)) (and (bvsge (index!23551 lt!254419) #b00000000000000000000000000000000) (bvslt (index!23551 lt!254419) (size!17239 a!3118)))) (or (is-Undefined!5331 lt!254419) (is-Found!5331 lt!254419) (is-MissingZero!5331 lt!254419) (not (is-MissingVacant!5331 lt!254419)) (and (bvsge (index!23554 lt!254419) #b00000000000000000000000000000000) (bvslt (index!23554 lt!254419) (size!17239 a!3118)))) (or (is-Undefined!5331 lt!254419) (ite (is-Found!5331 lt!254419) (= (select (arr!16875 a!3118) (index!23552 lt!254419)) k!1914) (ite (is-MissingZero!5331 lt!254419) (= (select (arr!16875 a!3118) (index!23551 lt!254419)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5331 lt!254419) (= (select (arr!16875 a!3118) (index!23554 lt!254419)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83693 (= lt!254419 e!322426)))

(declare-fun c!64627 () Bool)

(assert (=> d!83693 (= c!64627 (and (is-Intermediate!5331 lt!254420) (undefined!6143 lt!254420)))))

(assert (=> d!83693 (= lt!254420 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83693 (validMask!0 mask!3119)))

(assert (=> d!83693 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!254419)))

(declare-fun b!559640 () Bool)

(assert (=> b!559640 (= e!322426 e!322427)))

(declare-fun lt!254418 () (_ BitVec 64))

(assert (=> b!559640 (= lt!254418 (select (arr!16875 a!3118) (index!23553 lt!254420)))))

(declare-fun c!64628 () Bool)

(assert (=> b!559640 (= c!64628 (= lt!254418 k!1914))))

(declare-fun b!559641 () Bool)

(assert (=> b!559641 (= e!322428 (MissingZero!5331 (index!23553 lt!254420)))))

(declare-fun b!559642 () Bool)

(declare-fun c!64626 () Bool)

(assert (=> b!559642 (= c!64626 (= lt!254418 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559642 (= e!322427 e!322428)))

(assert (= (and d!83693 c!64627) b!559637))

(assert (= (and d!83693 (not c!64627)) b!559640))

(assert (= (and b!559640 c!64628) b!559639))

(assert (= (and b!559640 (not c!64628)) b!559642))

(assert (= (and b!559642 c!64626) b!559641))

(assert (= (and b!559642 (not c!64626)) b!559638))

(declare-fun m!537465 () Bool)

(assert (=> b!559638 m!537465))

(declare-fun m!537467 () Bool)

(assert (=> d!83693 m!537467))

(declare-fun m!537469 () Bool)

(assert (=> d!83693 m!537469))

(declare-fun m!537471 () Bool)

(assert (=> d!83693 m!537471))

(assert (=> d!83693 m!537283))

(declare-fun m!537473 () Bool)

(assert (=> d!83693 m!537473))

(assert (=> d!83693 m!537467))

(declare-fun m!537475 () Bool)

(assert (=> d!83693 m!537475))

(declare-fun m!537477 () Bool)

(assert (=> b!559640 m!537477))

(assert (=> b!559398 d!83693))

(declare-fun d!83707 () Bool)

(assert (=> d!83707 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!559400 d!83707))

(declare-fun b!559677 () Bool)

(declare-fun e!322447 () SeekEntryResult!5331)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559677 (= e!322447 (seekKeyOrZeroReturnVacant!0 (bvadd (x!52492 lt!254292) #b00000000000000000000000000000001) (nextIndex!0 (index!23553 lt!254292) (x!52492 lt!254292) mask!3119) (index!23553 lt!254292) (select (arr!16875 a!3118) j!142) a!3118 mask!3119))))

(declare-fun d!83711 () Bool)

(declare-fun lt!254433 () SeekEntryResult!5331)

(assert (=> d!83711 (and (or (is-Undefined!5331 lt!254433) (not (is-Found!5331 lt!254433)) (and (bvsge (index!23552 lt!254433) #b00000000000000000000000000000000) (bvslt (index!23552 lt!254433) (size!17239 a!3118)))) (or (is-Undefined!5331 lt!254433) (is-Found!5331 lt!254433) (not (is-MissingVacant!5331 lt!254433)) (not (= (index!23554 lt!254433) (index!23553 lt!254292))) (and (bvsge (index!23554 lt!254433) #b00000000000000000000000000000000) (bvslt (index!23554 lt!254433) (size!17239 a!3118)))) (or (is-Undefined!5331 lt!254433) (ite (is-Found!5331 lt!254433) (= (select (arr!16875 a!3118) (index!23552 lt!254433)) (select (arr!16875 a!3118) j!142)) (and (is-MissingVacant!5331 lt!254433) (= (index!23554 lt!254433) (index!23553 lt!254292)) (= (select (arr!16875 a!3118) (index!23554 lt!254433)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!322449 () SeekEntryResult!5331)

(assert (=> d!83711 (= lt!254433 e!322449)))

(declare-fun c!64649 () Bool)

(assert (=> d!83711 (= c!64649 (bvsge (x!52492 lt!254292) #b01111111111111111111111111111110))))

(declare-fun lt!254432 () (_ BitVec 64))

(assert (=> d!83711 (= lt!254432 (select (arr!16875 a!3118) (index!23553 lt!254292)))))

(assert (=> d!83711 (validMask!0 mask!3119)))

(assert (=> d!83711 (= (seekKeyOrZeroReturnVacant!0 (x!52492 lt!254292) (index!23553 lt!254292) (index!23553 lt!254292) (select (arr!16875 a!3118) j!142) a!3118 mask!3119) lt!254433)))

(declare-fun b!559678 () Bool)

(declare-fun c!64647 () Bool)

(assert (=> b!559678 (= c!64647 (= lt!254432 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!322448 () SeekEntryResult!5331)

(assert (=> b!559678 (= e!322448 e!322447)))

(declare-fun b!559679 () Bool)

(assert (=> b!559679 (= e!322449 Undefined!5331)))

(declare-fun b!559680 () Bool)

(assert (=> b!559680 (= e!322448 (Found!5331 (index!23553 lt!254292)))))

(declare-fun b!559681 () Bool)

(assert (=> b!559681 (= e!322447 (MissingVacant!5331 (index!23553 lt!254292)))))

(declare-fun b!559682 () Bool)

(assert (=> b!559682 (= e!322449 e!322448)))

(declare-fun c!64648 () Bool)

(assert (=> b!559682 (= c!64648 (= lt!254432 (select (arr!16875 a!3118) j!142)))))

(assert (= (and d!83711 c!64649) b!559679))

(assert (= (and d!83711 (not c!64649)) b!559682))

(assert (= (and b!559682 c!64648) b!559680))

(assert (= (and b!559682 (not c!64648)) b!559678))

(assert (= (and b!559678 c!64647) b!559681))

(assert (= (and b!559678 (not c!64647)) b!559677))

(declare-fun m!537501 () Bool)

(assert (=> b!559677 m!537501))

(assert (=> b!559677 m!537501))

(assert (=> b!559677 m!537253))

(declare-fun m!537503 () Bool)

(assert (=> b!559677 m!537503))

(declare-fun m!537505 () Bool)

(assert (=> d!83711 m!537505))

(declare-fun m!537507 () Bool)

(assert (=> d!83711 m!537507))

(assert (=> d!83711 m!537261))

(assert (=> d!83711 m!537283))

(assert (=> b!559389 d!83711))

(declare-fun b!559769 () Bool)

(declare-fun e!322504 () SeekEntryResult!5331)

(assert (=> b!559769 (= e!322504 (Intermediate!5331 false lt!254291 #b00000000000000000000000000000000))))

(declare-fun d!83721 () Bool)

(declare-fun e!322502 () Bool)

(assert (=> d!83721 e!322502))

(declare-fun c!64680 () Bool)

(declare-fun lt!254467 () SeekEntryResult!5331)

(assert (=> d!83721 (= c!64680 (and (is-Intermediate!5331 lt!254467) (undefined!6143 lt!254467)))))

(declare-fun e!322501 () SeekEntryResult!5331)

(assert (=> d!83721 (= lt!254467 e!322501)))

(declare-fun c!64681 () Bool)

(assert (=> d!83721 (= c!64681 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!254466 () (_ BitVec 64))

(assert (=> d!83721 (= lt!254466 (select (arr!16875 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118))) lt!254291))))

(assert (=> d!83721 (validMask!0 mask!3119)))

(assert (=> d!83721 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254291 lt!254294 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118)) mask!3119) lt!254467)))

(declare-fun b!559770 () Bool)

(assert (=> b!559770 (= e!322504 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254291 #b00000000000000000000000000000000 mask!3119) lt!254294 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118)) mask!3119))))

(declare-fun b!559771 () Bool)

(assert (=> b!559771 (= e!322502 (bvsge (x!52492 lt!254467) #b01111111111111111111111111111110))))

(declare-fun b!559772 () Bool)

(assert (=> b!559772 (= e!322501 (Intermediate!5331 true lt!254291 #b00000000000000000000000000000000))))

(declare-fun b!559773 () Bool)

(assert (=> b!559773 (and (bvsge (index!23553 lt!254467) #b00000000000000000000000000000000) (bvslt (index!23553 lt!254467) (size!17239 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118)))))))

(declare-fun e!322505 () Bool)

(assert (=> b!559773 (= e!322505 (= (select (arr!16875 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118))) (index!23553 lt!254467)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559774 () Bool)

(declare-fun e!322503 () Bool)

(assert (=> b!559774 (= e!322502 e!322503)))

(declare-fun res!351104 () Bool)

(assert (=> b!559774 (= res!351104 (and (is-Intermediate!5331 lt!254467) (not (undefined!6143 lt!254467)) (bvslt (x!52492 lt!254467) #b01111111111111111111111111111110) (bvsge (x!52492 lt!254467) #b00000000000000000000000000000000) (bvsge (x!52492 lt!254467) #b00000000000000000000000000000000)))))

(assert (=> b!559774 (=> (not res!351104) (not e!322503))))

(declare-fun b!559775 () Bool)

(assert (=> b!559775 (and (bvsge (index!23553 lt!254467) #b00000000000000000000000000000000) (bvslt (index!23553 lt!254467) (size!17239 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118)))))))

(declare-fun res!351103 () Bool)

(assert (=> b!559775 (= res!351103 (= (select (arr!16875 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118))) (index!23553 lt!254467)) lt!254294))))

(assert (=> b!559775 (=> res!351103 e!322505)))

(assert (=> b!559775 (= e!322503 e!322505)))

(declare-fun b!559776 () Bool)

(assert (=> b!559776 (= e!322501 e!322504)))

(declare-fun c!64679 () Bool)

(assert (=> b!559776 (= c!64679 (or (= lt!254466 lt!254294) (= (bvadd lt!254466 lt!254466) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559777 () Bool)

(assert (=> b!559777 (and (bvsge (index!23553 lt!254467) #b00000000000000000000000000000000) (bvslt (index!23553 lt!254467) (size!17239 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118)))))))

(declare-fun res!351102 () Bool)

(assert (=> b!559777 (= res!351102 (= (select (arr!16875 (array!35155 (store (arr!16875 a!3118) i!1132 k!1914) (size!17239 a!3118))) (index!23553 lt!254467)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559777 (=> res!351102 e!322505)))

(assert (= (and d!83721 c!64681) b!559772))

(assert (= (and d!83721 (not c!64681)) b!559776))

(assert (= (and b!559776 c!64679) b!559769))

(assert (= (and b!559776 (not c!64679)) b!559770))

(assert (= (and d!83721 c!64680) b!559771))

(assert (= (and d!83721 (not c!64680)) b!559774))

(assert (= (and b!559774 res!351104) b!559775))

(assert (= (and b!559775 (not res!351103)) b!559777))

(assert (= (and b!559777 (not res!351102)) b!559773))

(declare-fun m!537553 () Bool)

(assert (=> b!559773 m!537553))

(assert (=> b!559775 m!537553))

(declare-fun m!537555 () Bool)

(assert (=> b!559770 m!537555))

(assert (=> b!559770 m!537555))

(declare-fun m!537557 () Bool)

(assert (=> b!559770 m!537557))

(declare-fun m!537559 () Bool)

(assert (=> d!83721 m!537559))

(assert (=> d!83721 m!537283))

(assert (=> b!559777 m!537553))

(assert (=> b!559394 d!83721))

(declare-fun b!559778 () Bool)

(declare-fun e!322509 () SeekEntryResult!5331)

(assert (=> b!559778 (= e!322509 (Intermediate!5331 false lt!254293 #b00000000000000000000000000000000))))

(declare-fun d!83741 () Bool)

(declare-fun e!322507 () Bool)

(assert (=> d!83741 e!322507))

(declare-fun c!64683 () Bool)

(declare-fun lt!254469 () SeekEntryResult!5331)

(assert (=> d!83741 (= c!64683 (and (is-Intermediate!5331 lt!254469) (undefined!6143 lt!254469)))))

(declare-fun e!322506 () SeekEntryResult!5331)

(assert (=> d!83741 (= lt!254469 e!322506)))

(declare-fun c!64684 () Bool)

(assert (=> d!83741 (= c!64684 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!254468 () (_ BitVec 64))

(assert (=> d!83741 (= lt!254468 (select (arr!16875 a!3118) lt!254293))))

(assert (=> d!83741 (validMask!0 mask!3119)))

(assert (=> d!83741 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254293 (select (arr!16875 a!3118) j!142) a!3118 mask!3119) lt!254469)))

(declare-fun b!559779 () Bool)

(assert (=> b!559779 (= e!322509 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254293 #b00000000000000000000000000000000 mask!3119) (select (arr!16875 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559780 () Bool)

(assert (=> b!559780 (= e!322507 (bvsge (x!52492 lt!254469) #b01111111111111111111111111111110))))

(declare-fun b!559781 () Bool)

(assert (=> b!559781 (= e!322506 (Intermediate!5331 true lt!254293 #b00000000000000000000000000000000))))

(declare-fun b!559782 () Bool)

(assert (=> b!559782 (and (bvsge (index!23553 lt!254469) #b00000000000000000000000000000000) (bvslt (index!23553 lt!254469) (size!17239 a!3118)))))

(declare-fun e!322510 () Bool)

(assert (=> b!559782 (= e!322510 (= (select (arr!16875 a!3118) (index!23553 lt!254469)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559783 () Bool)

(declare-fun e!322508 () Bool)

(assert (=> b!559783 (= e!322507 e!322508)))

(declare-fun res!351107 () Bool)

(assert (=> b!559783 (= res!351107 (and (is-Intermediate!5331 lt!254469) (not (undefined!6143 lt!254469)) (bvslt (x!52492 lt!254469) #b01111111111111111111111111111110) (bvsge (x!52492 lt!254469) #b00000000000000000000000000000000) (bvsge (x!52492 lt!254469) #b00000000000000000000000000000000)))))

(assert (=> b!559783 (=> (not res!351107) (not e!322508))))

(declare-fun b!559784 () Bool)

(assert (=> b!559784 (and (bvsge (index!23553 lt!254469) #b00000000000000000000000000000000) (bvslt (index!23553 lt!254469) (size!17239 a!3118)))))

(declare-fun res!351106 () Bool)

(assert (=> b!559784 (= res!351106 (= (select (arr!16875 a!3118) (index!23553 lt!254469)) (select (arr!16875 a!3118) j!142)))))

(assert (=> b!559784 (=> res!351106 e!322510)))

(assert (=> b!559784 (= e!322508 e!322510)))

(declare-fun b!559785 () Bool)

(assert (=> b!559785 (= e!322506 e!322509)))

(declare-fun c!64682 () Bool)

(assert (=> b!559785 (= c!64682 (or (= lt!254468 (select (arr!16875 a!3118) j!142)) (= (bvadd lt!254468 lt!254468) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559786 () Bool)

(assert (=> b!559786 (and (bvsge (index!23553 lt!254469) #b00000000000000000000000000000000) (bvslt (index!23553 lt!254469) (size!17239 a!3118)))))

(declare-fun res!351105 () Bool)

(assert (=> b!559786 (= res!351105 (= (select (arr!16875 a!3118) (index!23553 lt!254469)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559786 (=> res!351105 e!322510)))

(assert (= (and d!83741 c!64684) b!559781))

(assert (= (and d!83741 (not c!64684)) b!559785))

(assert (= (and b!559785 c!64682) b!559778))

(assert (= (and b!559785 (not c!64682)) b!559779))

(assert (= (and d!83741 c!64683) b!559780))

(assert (= (and d!83741 (not c!64683)) b!559783))

(assert (= (and b!559783 res!351107) b!559784))

(assert (= (and b!559784 (not res!351106)) b!559786))

(assert (= (and b!559786 (not res!351105)) b!559782))

(declare-fun m!537561 () Bool)

(assert (=> b!559782 m!537561))

(assert (=> b!559784 m!537561))

(declare-fun m!537563 () Bool)

(assert (=> b!559779 m!537563))

(assert (=> b!559779 m!537563))

(assert (=> b!559779 m!537253))

(declare-fun m!537565 () Bool)

(assert (=> b!559779 m!537565))

(declare-fun m!537567 () Bool)

(assert (=> d!83741 m!537567))

(assert (=> d!83741 m!537283))

(assert (=> b!559786 m!537561))

(assert (=> b!559394 d!83741))

(declare-fun d!83743 () Bool)

(declare-fun lt!254478 () (_ BitVec 32))

(declare-fun lt!254477 () (_ BitVec 32))

(assert (=> d!83743 (= lt!254478 (bvmul (bvxor lt!254477 (bvlshr lt!254477 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83743 (= lt!254477 ((_ extract 31 0) (bvand (bvxor lt!254294 (bvlshr lt!254294 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83743 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!351108 (let ((h!12009 ((_ extract 31 0) (bvand (bvxor lt!254294 (bvlshr lt!254294 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52503 (bvmul (bvxor h!12009 (bvlshr h!12009 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52503 (bvlshr x!52503 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!351108 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!351108 #b00000000000000000000000000000000))))))

(assert (=> d!83743 (= (toIndex!0 lt!254294 mask!3119) (bvand (bvxor lt!254478 (bvlshr lt!254478 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!559394 d!83743))

(declare-fun d!83751 () Bool)

(declare-fun lt!254480 () (_ BitVec 32))

(declare-fun lt!254479 () (_ BitVec 32))

(assert (=> d!83751 (= lt!254480 (bvmul (bvxor lt!254479 (bvlshr lt!254479 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83751 (= lt!254479 ((_ extract 31 0) (bvand (bvxor (select (arr!16875 a!3118) j!142) (bvlshr (select (arr!16875 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83751 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!351108 (let ((h!12009 ((_ extract 31 0) (bvand (bvxor (select (arr!16875 a!3118) j!142) (bvlshr (select (arr!16875 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52503 (bvmul (bvxor h!12009 (bvlshr h!12009 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52503 (bvlshr x!52503 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!351108 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!351108 #b00000000000000000000000000000000))))))

(assert (=> d!83751 (= (toIndex!0 (select (arr!16875 a!3118) j!142) mask!3119) (bvand (bvxor lt!254480 (bvlshr lt!254480 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!559394 d!83751))

(declare-fun b!559793 () Bool)

(declare-fun e!322514 () SeekEntryResult!5331)

(assert (=> b!559793 (= e!322514 Undefined!5331)))

(declare-fun lt!254483 () SeekEntryResult!5331)

(declare-fun b!559794 () Bool)

(declare-fun e!322516 () SeekEntryResult!5331)

(assert (=> b!559794 (= e!322516 (seekKeyOrZeroReturnVacant!0 (x!52492 lt!254483) (index!23553 lt!254483) (index!23553 lt!254483) (select (arr!16875 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559795 () Bool)

(declare-fun e!322515 () SeekEntryResult!5331)

(assert (=> b!559795 (= e!322515 (Found!5331 (index!23553 lt!254483)))))

(declare-fun d!83753 () Bool)

(declare-fun lt!254482 () SeekEntryResult!5331)

(assert (=> d!83753 (and (or (is-Undefined!5331 lt!254482) (not (is-Found!5331 lt!254482)) (and (bvsge (index!23552 lt!254482) #b00000000000000000000000000000000) (bvslt (index!23552 lt!254482) (size!17239 a!3118)))) (or (is-Undefined!5331 lt!254482) (is-Found!5331 lt!254482) (not (is-MissingZero!5331 lt!254482)) (and (bvsge (index!23551 lt!254482) #b00000000000000000000000000000000) (bvslt (index!23551 lt!254482) (size!17239 a!3118)))) (or (is-Undefined!5331 lt!254482) (is-Found!5331 lt!254482) (is-MissingZero!5331 lt!254482) (not (is-MissingVacant!5331 lt!254482)) (and (bvsge (index!23554 lt!254482) #b00000000000000000000000000000000) (bvslt (index!23554 lt!254482) (size!17239 a!3118)))) (or (is-Undefined!5331 lt!254482) (ite (is-Found!5331 lt!254482) (= (select (arr!16875 a!3118) (index!23552 lt!254482)) (select (arr!16875 a!3118) j!142)) (ite (is-MissingZero!5331 lt!254482) (= (select (arr!16875 a!3118) (index!23551 lt!254482)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5331 lt!254482) (= (select (arr!16875 a!3118) (index!23554 lt!254482)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!83753 (= lt!254482 e!322514)))

(declare-fun c!64689 () Bool)

(assert (=> d!83753 (= c!64689 (and (is-Intermediate!5331 lt!254483) (undefined!6143 lt!254483)))))

(assert (=> d!83753 (= lt!254483 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16875 a!3118) j!142) mask!3119) (select (arr!16875 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83753 (validMask!0 mask!3119)))

(assert (=> d!83753 (= (seekEntryOrOpen!0 (select (arr!16875 a!3118) j!142) a!3118 mask!3119) lt!254482)))

(declare-fun b!559796 () Bool)

(assert (=> b!559796 (= e!322514 e!322515)))

(declare-fun lt!254481 () (_ BitVec 64))

(assert (=> b!559796 (= lt!254481 (select (arr!16875 a!3118) (index!23553 lt!254483)))))

(declare-fun c!64690 () Bool)

(assert (=> b!559796 (= c!64690 (= lt!254481 (select (arr!16875 a!3118) j!142)))))

(declare-fun b!559797 () Bool)

(assert (=> b!559797 (= e!322516 (MissingZero!5331 (index!23553 lt!254483)))))

(declare-fun b!559798 () Bool)

(declare-fun c!64688 () Bool)

(assert (=> b!559798 (= c!64688 (= lt!254481 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559798 (= e!322515 e!322516)))

(assert (= (and d!83753 c!64689) b!559793))

(assert (= (and d!83753 (not c!64689)) b!559796))

(assert (= (and b!559796 c!64690) b!559795))

(assert (= (and b!559796 (not c!64690)) b!559798))

(assert (= (and b!559798 c!64688) b!559797))

(assert (= (and b!559798 (not c!64688)) b!559794))

(assert (=> b!559794 m!537253))

(declare-fun m!537583 () Bool)

(assert (=> b!559794 m!537583))

(assert (=> d!83753 m!537273))

(assert (=> d!83753 m!537253))

(declare-fun m!537585 () Bool)

(assert (=> d!83753 m!537585))

(declare-fun m!537587 () Bool)

(assert (=> d!83753 m!537587))

(assert (=> d!83753 m!537283))

(declare-fun m!537589 () Bool)

(assert (=> d!83753 m!537589))

(assert (=> d!83753 m!537253))

(assert (=> d!83753 m!537273))

(declare-fun m!537591 () Bool)

(assert (=> d!83753 m!537591))

(declare-fun m!537593 () Bool)

(assert (=> b!559796 m!537593))

(assert (=> b!559399 d!83753))

(declare-fun b!559799 () Bool)

(declare-fun e!322518 () Bool)

(declare-fun e!322519 () Bool)

(assert (=> b!559799 (= e!322518 e!322519)))

(declare-fun c!64691 () Bool)

(assert (=> b!559799 (= c!64691 (validKeyInArray!0 (select (arr!16875 a!3118) j!142)))))

(declare-fun b!559801 () Bool)

(declare-fun e!322517 () Bool)

(assert (=> b!559801 (= e!322519 e!322517)))

(declare-fun lt!254486 () (_ BitVec 64))

(assert (=> b!559801 (= lt!254486 (select (arr!16875 a!3118) j!142))))

(declare-fun lt!254484 () Unit!17436)

(assert (=> b!559801 (= lt!254484 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254486 j!142))))

(assert (=> b!559801 (arrayContainsKey!0 a!3118 lt!254486 #b00000000000000000000000000000000)))

(declare-fun lt!254485 () Unit!17436)

(assert (=> b!559801 (= lt!254485 lt!254484)))

(declare-fun res!351109 () Bool)

(assert (=> b!559801 (= res!351109 (= (seekEntryOrOpen!0 (select (arr!16875 a!3118) j!142) a!3118 mask!3119) (Found!5331 j!142)))))

(assert (=> b!559801 (=> (not res!351109) (not e!322517))))

(declare-fun call!32450 () Bool)

(declare-fun bm!32447 () Bool)

(assert (=> bm!32447 (= call!32450 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!559802 () Bool)

(assert (=> b!559802 (= e!322519 call!32450)))

(declare-fun d!83755 () Bool)

(declare-fun res!351110 () Bool)

(assert (=> d!83755 (=> res!351110 e!322518)))

(assert (=> d!83755 (= res!351110 (bvsge j!142 (size!17239 a!3118)))))

(assert (=> d!83755 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!322518)))

(declare-fun b!559800 () Bool)

(assert (=> b!559800 (= e!322517 call!32450)))

(assert (= (and d!83755 (not res!351110)) b!559799))

(assert (= (and b!559799 c!64691) b!559801))

(assert (= (and b!559799 (not c!64691)) b!559802))

(assert (= (and b!559801 res!351109) b!559800))

(assert (= (or b!559800 b!559802) bm!32447))

(assert (=> b!559799 m!537253))

(assert (=> b!559799 m!537253))

(assert (=> b!559799 m!537293))

(assert (=> b!559801 m!537253))

(declare-fun m!537595 () Bool)

(assert (=> b!559801 m!537595))

(declare-fun m!537597 () Bool)

(assert (=> b!559801 m!537597))

(assert (=> b!559801 m!537253))

(assert (=> b!559801 m!537271))

(declare-fun m!537599 () Bool)

(assert (=> bm!32447 m!537599))

(assert (=> b!559399 d!83755))

(declare-fun d!83757 () Bool)

(assert (=> d!83757 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!254489 () Unit!17436)

(declare-fun choose!38 (array!35154 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17436)

(assert (=> d!83757 (= lt!254489 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83757 (validMask!0 mask!3119)))

(assert (=> d!83757 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!254489)))

(declare-fun bs!17399 () Bool)

(assert (= bs!17399 d!83757))

(assert (=> bs!17399 m!537263))

(declare-fun m!537601 () Bool)

(assert (=> bs!17399 m!537601))

(assert (=> bs!17399 m!537283))

(assert (=> b!559399 d!83757))

(declare-fun d!83759 () Bool)

(assert (=> d!83759 (= (validKeyInArray!0 (select (arr!16875 a!3118) j!142)) (and (not (= (select (arr!16875 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16875 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!559396 d!83759))

(push 1)

(assert (not d!83741))

(assert (not b!559508))

(assert (not b!559794))

(assert (not b!559770))

(assert (not b!559638))

(assert (not b!559801))

(assert (not d!83693))

(assert (not b!559779))

(assert (not d!83757))

(assert (not d!83711))

(assert (not b!559562))

(assert (not d!83753))

(assert (not b!559509))

(assert (not b!559525))

(assert (not b!559799))

(assert (not b!559677))

(assert (not bm!32447))

(assert (not d!83721))

(assert (not bm!32440))

(assert (not b!559560))

(assert (not b!559511))

(assert (not bm!32432))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

