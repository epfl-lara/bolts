; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51012 () Bool)

(assert start!51012)

(declare-fun b!557276 () Bool)

(declare-fun res!349477 () Bool)

(declare-fun e!321049 () Bool)

(assert (=> b!557276 (=> (not res!349477) (not e!321049))))

(declare-datatypes ((array!35077 0))(
  ( (array!35078 (arr!16841 (Array (_ BitVec 32) (_ BitVec 64))) (size!17205 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35077)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557276 (= res!349477 (validKeyInArray!0 (select (arr!16841 a!3118) j!142)))))

(declare-fun b!557277 () Bool)

(declare-fun res!349476 () Bool)

(declare-fun e!321045 () Bool)

(assert (=> b!557277 (=> (not res!349476) (not e!321045))))

(declare-datatypes ((List!10974 0))(
  ( (Nil!10971) (Cons!10970 (h!11961 (_ BitVec 64)) (t!17210 List!10974)) )
))
(declare-fun arrayNoDuplicates!0 (array!35077 (_ BitVec 32) List!10974) Bool)

(assert (=> b!557277 (= res!349476 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10971))))

(declare-fun b!557278 () Bool)

(declare-fun res!349480 () Bool)

(assert (=> b!557278 (=> (not res!349480) (not e!321049))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557278 (= res!349480 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557279 () Bool)

(declare-fun res!349475 () Bool)

(assert (=> b!557279 (=> (not res!349475) (not e!321049))))

(assert (=> b!557279 (= res!349475 (validKeyInArray!0 k!1914))))

(declare-fun b!557280 () Bool)

(declare-fun e!321046 () Bool)

(assert (=> b!557280 (= e!321045 e!321046)))

(declare-fun res!349481 () Bool)

(assert (=> b!557280 (=> (not res!349481) (not e!321046))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!253280 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5297 0))(
  ( (MissingZero!5297 (index!23415 (_ BitVec 32))) (Found!5297 (index!23416 (_ BitVec 32))) (Intermediate!5297 (undefined!6109 Bool) (index!23417 (_ BitVec 32)) (x!52338 (_ BitVec 32))) (Undefined!5297) (MissingVacant!5297 (index!23418 (_ BitVec 32))) )
))
(declare-fun lt!253277 () SeekEntryResult!5297)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35077 (_ BitVec 32)) SeekEntryResult!5297)

(assert (=> b!557280 (= res!349481 (= lt!253277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253280 (select (store (arr!16841 a!3118) i!1132 k!1914) j!142) (array!35078 (store (arr!16841 a!3118) i!1132 k!1914) (size!17205 a!3118)) mask!3119)))))

(declare-fun lt!253278 () (_ BitVec 32))

(assert (=> b!557280 (= lt!253277 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253278 (select (arr!16841 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557280 (= lt!253280 (toIndex!0 (select (store (arr!16841 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!557280 (= lt!253278 (toIndex!0 (select (arr!16841 a!3118) j!142) mask!3119))))

(declare-fun e!321048 () Bool)

(declare-fun b!557281 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35077 (_ BitVec 32)) SeekEntryResult!5297)

(assert (=> b!557281 (= e!321048 (= (seekEntryOrOpen!0 (select (arr!16841 a!3118) j!142) a!3118 mask!3119) (Found!5297 j!142)))))

(declare-fun b!557283 () Bool)

(declare-fun res!349472 () Bool)

(assert (=> b!557283 (=> (not res!349472) (not e!321045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35077 (_ BitVec 32)) Bool)

(assert (=> b!557283 (= res!349472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557284 () Bool)

(assert (=> b!557284 (= e!321046 (not (or (not (is-Intermediate!5297 lt!253277)) (undefined!6109 lt!253277) (= (select (arr!16841 a!3118) (index!23417 lt!253277)) (select (arr!16841 a!3118) j!142)) (= (select (arr!16841 a!3118) (index!23417 lt!253277)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23417 lt!253277) #b00000000000000000000000000000000) (bvsge (index!23417 lt!253277) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52338 lt!253277) #b01111111111111111111111111111110) (bvslt (x!52338 lt!253277) #b00000000000000000000000000000000) (= (select (arr!16841 a!3118) (index!23417 lt!253277)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!557284 e!321048))

(declare-fun res!349478 () Bool)

(assert (=> b!557284 (=> (not res!349478) (not e!321048))))

(assert (=> b!557284 (= res!349478 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17368 0))(
  ( (Unit!17369) )
))
(declare-fun lt!253276 () Unit!17368)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17368)

(assert (=> b!557284 (= lt!253276 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557285 () Bool)

(assert (=> b!557285 (= e!321049 e!321045)))

(declare-fun res!349473 () Bool)

(assert (=> b!557285 (=> (not res!349473) (not e!321045))))

(declare-fun lt!253279 () SeekEntryResult!5297)

(assert (=> b!557285 (= res!349473 (or (= lt!253279 (MissingZero!5297 i!1132)) (= lt!253279 (MissingVacant!5297 i!1132))))))

(assert (=> b!557285 (= lt!253279 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557282 () Bool)

(declare-fun res!349479 () Bool)

(assert (=> b!557282 (=> (not res!349479) (not e!321049))))

(assert (=> b!557282 (= res!349479 (and (= (size!17205 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17205 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17205 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!349474 () Bool)

(assert (=> start!51012 (=> (not res!349474) (not e!321049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51012 (= res!349474 (validMask!0 mask!3119))))

(assert (=> start!51012 e!321049))

(assert (=> start!51012 true))

(declare-fun array_inv!12615 (array!35077) Bool)

(assert (=> start!51012 (array_inv!12615 a!3118)))

(assert (= (and start!51012 res!349474) b!557282))

(assert (= (and b!557282 res!349479) b!557276))

(assert (= (and b!557276 res!349477) b!557279))

(assert (= (and b!557279 res!349475) b!557278))

(assert (= (and b!557278 res!349480) b!557285))

(assert (= (and b!557285 res!349473) b!557283))

(assert (= (and b!557283 res!349472) b!557277))

(assert (= (and b!557277 res!349476) b!557280))

(assert (= (and b!557280 res!349481) b!557284))

(assert (= (and b!557284 res!349478) b!557281))

(declare-fun m!535241 () Bool)

(assert (=> b!557277 m!535241))

(declare-fun m!535243 () Bool)

(assert (=> b!557280 m!535243))

(declare-fun m!535245 () Bool)

(assert (=> b!557280 m!535245))

(assert (=> b!557280 m!535243))

(declare-fun m!535247 () Bool)

(assert (=> b!557280 m!535247))

(assert (=> b!557280 m!535247))

(declare-fun m!535249 () Bool)

(assert (=> b!557280 m!535249))

(declare-fun m!535251 () Bool)

(assert (=> b!557280 m!535251))

(assert (=> b!557280 m!535247))

(declare-fun m!535253 () Bool)

(assert (=> b!557280 m!535253))

(assert (=> b!557280 m!535243))

(declare-fun m!535255 () Bool)

(assert (=> b!557280 m!535255))

(declare-fun m!535257 () Bool)

(assert (=> b!557279 m!535257))

(assert (=> b!557281 m!535243))

(assert (=> b!557281 m!535243))

(declare-fun m!535259 () Bool)

(assert (=> b!557281 m!535259))

(assert (=> b!557276 m!535243))

(assert (=> b!557276 m!535243))

(declare-fun m!535261 () Bool)

(assert (=> b!557276 m!535261))

(declare-fun m!535263 () Bool)

(assert (=> start!51012 m!535263))

(declare-fun m!535265 () Bool)

(assert (=> start!51012 m!535265))

(declare-fun m!535267 () Bool)

(assert (=> b!557285 m!535267))

(declare-fun m!535269 () Bool)

(assert (=> b!557278 m!535269))

(declare-fun m!535271 () Bool)

(assert (=> b!557284 m!535271))

(assert (=> b!557284 m!535243))

(declare-fun m!535273 () Bool)

(assert (=> b!557284 m!535273))

(declare-fun m!535275 () Bool)

(assert (=> b!557284 m!535275))

(declare-fun m!535277 () Bool)

(assert (=> b!557283 m!535277))

(push 1)

(assert (not b!557280))

(assert (not b!557277))

(assert (not start!51012))

(assert (not b!557279))

(assert (not b!557284))

(assert (not b!557278))

(assert (not b!557276))

(assert (not b!557283))

(assert (not b!557285))

(assert (not b!557281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!83377 () Bool)

(assert (=> d!83377 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!557279 d!83377))

(declare-fun d!83379 () Bool)

(declare-fun res!349504 () Bool)

(declare-fun e!321096 () Bool)

(assert (=> d!83379 (=> res!349504 e!321096)))

(assert (=> d!83379 (= res!349504 (bvsge j!142 (size!17205 a!3118)))))

(assert (=> d!83379 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!321096)))

(declare-fun b!557360 () Bool)

(declare-fun e!321098 () Bool)

(declare-fun call!32375 () Bool)

(assert (=> b!557360 (= e!321098 call!32375)))

(declare-fun b!557361 () Bool)

(declare-fun e!321097 () Bool)

(assert (=> b!557361 (= e!321098 e!321097)))

(declare-fun lt!253319 () (_ BitVec 64))

(assert (=> b!557361 (= lt!253319 (select (arr!16841 a!3118) j!142))))

(declare-fun lt!253320 () Unit!17368)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35077 (_ BitVec 64) (_ BitVec 32)) Unit!17368)

(assert (=> b!557361 (= lt!253320 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253319 j!142))))

(assert (=> b!557361 (arrayContainsKey!0 a!3118 lt!253319 #b00000000000000000000000000000000)))

(declare-fun lt!253318 () Unit!17368)

(assert (=> b!557361 (= lt!253318 lt!253320)))

(declare-fun res!349505 () Bool)

(assert (=> b!557361 (= res!349505 (= (seekEntryOrOpen!0 (select (arr!16841 a!3118) j!142) a!3118 mask!3119) (Found!5297 j!142)))))

(assert (=> b!557361 (=> (not res!349505) (not e!321097))))

(declare-fun bm!32372 () Bool)

(assert (=> bm!32372 (= call!32375 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!557362 () Bool)

(assert (=> b!557362 (= e!321096 e!321098)))

(declare-fun c!64268 () Bool)

(assert (=> b!557362 (= c!64268 (validKeyInArray!0 (select (arr!16841 a!3118) j!142)))))

(declare-fun b!557363 () Bool)

(assert (=> b!557363 (= e!321097 call!32375)))

(assert (= (and d!83379 (not res!349504)) b!557362))

(assert (= (and b!557362 c!64268) b!557361))

(assert (= (and b!557362 (not c!64268)) b!557360))

(assert (= (and b!557361 res!349505) b!557363))

(assert (= (or b!557363 b!557360) bm!32372))

(assert (=> b!557361 m!535243))

(declare-fun m!535305 () Bool)

(assert (=> b!557361 m!535305))

(declare-fun m!535307 () Bool)

(assert (=> b!557361 m!535307))

(assert (=> b!557361 m!535243))

(assert (=> b!557361 m!535259))

(declare-fun m!535309 () Bool)

(assert (=> bm!32372 m!535309))

(assert (=> b!557362 m!535243))

(assert (=> b!557362 m!535243))

(assert (=> b!557362 m!535261))

(assert (=> b!557284 d!83379))

(declare-fun d!83381 () Bool)

(assert (=> d!83381 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!253330 () Unit!17368)

(declare-fun choose!38 (array!35077 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17368)

(assert (=> d!83381 (= lt!253330 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83381 (validMask!0 mask!3119)))

(assert (=> d!83381 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!253330)))

(declare-fun bs!17353 () Bool)

(assert (= bs!17353 d!83381))

(assert (=> bs!17353 m!535273))

(declare-fun m!535339 () Bool)

(assert (=> bs!17353 m!535339))

(assert (=> bs!17353 m!535263))

(assert (=> b!557284 d!83381))

(declare-fun d!83389 () Bool)

(declare-fun res!349518 () Bool)

(declare-fun e!321120 () Bool)

(assert (=> d!83389 (=> res!349518 e!321120)))

(assert (=> d!83389 (= res!349518 (bvsge #b00000000000000000000000000000000 (size!17205 a!3118)))))

(assert (=> d!83389 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!321120)))

(declare-fun b!557398 () Bool)

(declare-fun e!321122 () Bool)

(declare-fun call!32376 () Bool)

(assert (=> b!557398 (= e!321122 call!32376)))

(declare-fun b!557399 () Bool)

(declare-fun e!321121 () Bool)

(assert (=> b!557399 (= e!321122 e!321121)))

(declare-fun lt!253332 () (_ BitVec 64))

(assert (=> b!557399 (= lt!253332 (select (arr!16841 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253333 () Unit!17368)

(assert (=> b!557399 (= lt!253333 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253332 #b00000000000000000000000000000000))))

(assert (=> b!557399 (arrayContainsKey!0 a!3118 lt!253332 #b00000000000000000000000000000000)))

(declare-fun lt!253331 () Unit!17368)

(assert (=> b!557399 (= lt!253331 lt!253333)))

(declare-fun res!349519 () Bool)

(assert (=> b!557399 (= res!349519 (= (seekEntryOrOpen!0 (select (arr!16841 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5297 #b00000000000000000000000000000000)))))

(assert (=> b!557399 (=> (not res!349519) (not e!321121))))

(declare-fun bm!32373 () Bool)

(assert (=> bm!32373 (= call!32376 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!557400 () Bool)

(assert (=> b!557400 (= e!321120 e!321122)))

(declare-fun c!64280 () Bool)

(assert (=> b!557400 (= c!64280 (validKeyInArray!0 (select (arr!16841 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!557401 () Bool)

(assert (=> b!557401 (= e!321121 call!32376)))

(assert (= (and d!83389 (not res!349518)) b!557400))

(assert (= (and b!557400 c!64280) b!557399))

(assert (= (and b!557400 (not c!64280)) b!557398))

(assert (= (and b!557399 res!349519) b!557401))

(assert (= (or b!557401 b!557398) bm!32373))

(declare-fun m!535341 () Bool)

(assert (=> b!557399 m!535341))

(declare-fun m!535343 () Bool)

(assert (=> b!557399 m!535343))

(declare-fun m!535345 () Bool)

(assert (=> b!557399 m!535345))

(assert (=> b!557399 m!535341))

(declare-fun m!535347 () Bool)

(assert (=> b!557399 m!535347))

(declare-fun m!535349 () Bool)

(assert (=> bm!32373 m!535349))

(assert (=> b!557400 m!535341))

(assert (=> b!557400 m!535341))

(declare-fun m!535351 () Bool)

(assert (=> b!557400 m!535351))

(assert (=> b!557283 d!83389))

(declare-fun d!83391 () Bool)

(declare-fun res!349528 () Bool)

(declare-fun e!321131 () Bool)

(assert (=> d!83391 (=> res!349528 e!321131)))

(assert (=> d!83391 (= res!349528 (= (select (arr!16841 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83391 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!321131)))

(declare-fun b!557411 () Bool)

(declare-fun e!321132 () Bool)

(assert (=> b!557411 (= e!321131 e!321132)))

(declare-fun res!349529 () Bool)

(assert (=> b!557411 (=> (not res!349529) (not e!321132))))

(assert (=> b!557411 (= res!349529 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17205 a!3118)))))

(declare-fun b!557412 () Bool)

(assert (=> b!557412 (= e!321132 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83391 (not res!349528)) b!557411))

(assert (= (and b!557411 res!349529) b!557412))

(assert (=> d!83391 m!535341))

(declare-fun m!535359 () Bool)

(assert (=> b!557412 m!535359))

(assert (=> b!557278 d!83391))

(declare-fun b!557429 () Bool)

(declare-fun e!321148 () Bool)

(declare-fun contains!2856 (List!10974 (_ BitVec 64)) Bool)

(assert (=> b!557429 (= e!321148 (contains!2856 Nil!10971 (select (arr!16841 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!557430 () Bool)

(declare-fun e!321149 () Bool)

(declare-fun e!321150 () Bool)

(assert (=> b!557430 (= e!321149 e!321150)))

(declare-fun c!64284 () Bool)

(assert (=> b!557430 (= c!64284 (validKeyInArray!0 (select (arr!16841 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!557431 () Bool)

(declare-fun e!321147 () Bool)

(assert (=> b!557431 (= e!321147 e!321149)))

(declare-fun res!349543 () Bool)

(assert (=> b!557431 (=> (not res!349543) (not e!321149))))

(assert (=> b!557431 (= res!349543 (not e!321148))))

(declare-fun res!349542 () Bool)

(assert (=> b!557431 (=> (not res!349542) (not e!321148))))

(assert (=> b!557431 (= res!349542 (validKeyInArray!0 (select (arr!16841 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83397 () Bool)

(declare-fun res!349544 () Bool)

(assert (=> d!83397 (=> res!349544 e!321147)))

(assert (=> d!83397 (= res!349544 (bvsge #b00000000000000000000000000000000 (size!17205 a!3118)))))

(assert (=> d!83397 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10971) e!321147)))

(declare-fun b!557432 () Bool)

(declare-fun call!32382 () Bool)

(assert (=> b!557432 (= e!321150 call!32382)))

(declare-fun b!557433 () Bool)

(assert (=> b!557433 (= e!321150 call!32382)))

(declare-fun bm!32379 () Bool)

(assert (=> bm!32379 (= call!32382 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64284 (Cons!10970 (select (arr!16841 a!3118) #b00000000000000000000000000000000) Nil!10971) Nil!10971)))))

(assert (= (and d!83397 (not res!349544)) b!557431))

(assert (= (and b!557431 res!349542) b!557429))

(assert (= (and b!557431 res!349543) b!557430))

(assert (= (and b!557430 c!64284) b!557433))

(assert (= (and b!557430 (not c!64284)) b!557432))

(assert (= (or b!557433 b!557432) bm!32379))

(assert (=> b!557429 m!535341))

(assert (=> b!557429 m!535341))

(declare-fun m!535365 () Bool)

(assert (=> b!557429 m!535365))

(assert (=> b!557430 m!535341))

(assert (=> b!557430 m!535341))

(assert (=> b!557430 m!535351))

(assert (=> b!557431 m!535341))

(assert (=> b!557431 m!535341))

(assert (=> b!557431 m!535351))

(assert (=> bm!32379 m!535341))

(declare-fun m!535367 () Bool)

(assert (=> bm!32379 m!535367))

(assert (=> b!557277 d!83397))

(declare-fun b!557483 () Bool)

(declare-fun e!321184 () SeekEntryResult!5297)

(declare-fun lt!253366 () SeekEntryResult!5297)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35077 (_ BitVec 32)) SeekEntryResult!5297)

(assert (=> b!557483 (= e!321184 (seekKeyOrZeroReturnVacant!0 (x!52338 lt!253366) (index!23417 lt!253366) (index!23417 lt!253366) (select (arr!16841 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!557484 () Bool)

(declare-fun e!321186 () SeekEntryResult!5297)

(assert (=> b!557484 (= e!321186 (Found!5297 (index!23417 lt!253366)))))

(declare-fun d!83405 () Bool)

(declare-fun lt!253368 () SeekEntryResult!5297)

(assert (=> d!83405 (and (or (is-Undefined!5297 lt!253368) (not (is-Found!5297 lt!253368)) (and (bvsge (index!23416 lt!253368) #b00000000000000000000000000000000) (bvslt (index!23416 lt!253368) (size!17205 a!3118)))) (or (is-Undefined!5297 lt!253368) (is-Found!5297 lt!253368) (not (is-MissingZero!5297 lt!253368)) (and (bvsge (index!23415 lt!253368) #b00000000000000000000000000000000) (bvslt (index!23415 lt!253368) (size!17205 a!3118)))) (or (is-Undefined!5297 lt!253368) (is-Found!5297 lt!253368) (is-MissingZero!5297 lt!253368) (not (is-MissingVacant!5297 lt!253368)) (and (bvsge (index!23418 lt!253368) #b00000000000000000000000000000000) (bvslt (index!23418 lt!253368) (size!17205 a!3118)))) (or (is-Undefined!5297 lt!253368) (ite (is-Found!5297 lt!253368) (= (select (arr!16841 a!3118) (index!23416 lt!253368)) (select (arr!16841 a!3118) j!142)) (ite (is-MissingZero!5297 lt!253368) (= (select (arr!16841 a!3118) (index!23415 lt!253368)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5297 lt!253368) (= (select (arr!16841 a!3118) (index!23418 lt!253368)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!321185 () SeekEntryResult!5297)

(assert (=> d!83405 (= lt!253368 e!321185)))

(declare-fun c!64303 () Bool)

(assert (=> d!83405 (= c!64303 (and (is-Intermediate!5297 lt!253366) (undefined!6109 lt!253366)))))

(assert (=> d!83405 (= lt!253366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16841 a!3118) j!142) mask!3119) (select (arr!16841 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83405 (validMask!0 mask!3119)))

(assert (=> d!83405 (= (seekEntryOrOpen!0 (select (arr!16841 a!3118) j!142) a!3118 mask!3119) lt!253368)))

(declare-fun b!557485 () Bool)

(declare-fun c!64302 () Bool)

(declare-fun lt!253367 () (_ BitVec 64))

(assert (=> b!557485 (= c!64302 (= lt!253367 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!557485 (= e!321186 e!321184)))

(declare-fun b!557486 () Bool)

(assert (=> b!557486 (= e!321185 Undefined!5297)))

(declare-fun b!557487 () Bool)

(assert (=> b!557487 (= e!321185 e!321186)))

(assert (=> b!557487 (= lt!253367 (select (arr!16841 a!3118) (index!23417 lt!253366)))))

(declare-fun c!64301 () Bool)

(assert (=> b!557487 (= c!64301 (= lt!253367 (select (arr!16841 a!3118) j!142)))))

(declare-fun b!557488 () Bool)

(assert (=> b!557488 (= e!321184 (MissingZero!5297 (index!23417 lt!253366)))))

(assert (= (and d!83405 c!64303) b!557486))

(assert (= (and d!83405 (not c!64303)) b!557487))

(assert (= (and b!557487 c!64301) b!557484))

(assert (= (and b!557487 (not c!64301)) b!557485))

(assert (= (and b!557485 c!64302) b!557488))

(assert (= (and b!557485 (not c!64302)) b!557483))

(assert (=> b!557483 m!535243))

(declare-fun m!535405 () Bool)

(assert (=> b!557483 m!535405))

(assert (=> d!83405 m!535263))

(declare-fun m!535407 () Bool)

(assert (=> d!83405 m!535407))

(assert (=> d!83405 m!535243))

(assert (=> d!83405 m!535245))

(assert (=> d!83405 m!535245))

(assert (=> d!83405 m!535243))

(declare-fun m!535409 () Bool)

(assert (=> d!83405 m!535409))

(declare-fun m!535411 () Bool)

(assert (=> d!83405 m!535411))

(declare-fun m!535413 () Bool)

(assert (=> d!83405 m!535413))

(declare-fun m!535415 () Bool)

(assert (=> b!557487 m!535415))

(assert (=> b!557281 d!83405))

(declare-fun d!83421 () Bool)

(assert (=> d!83421 (= (validKeyInArray!0 (select (arr!16841 a!3118) j!142)) (and (not (= (select (arr!16841 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16841 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!557276 d!83421))

(declare-fun d!83423 () Bool)

(assert (=> d!83423 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51012 d!83423))

(declare-fun d!83437 () Bool)

(assert (=> d!83437 (= (array_inv!12615 a!3118) (bvsge (size!17205 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51012 d!83437))

(declare-fun b!557535 () Bool)

(declare-fun e!321213 () SeekEntryResult!5297)

(declare-fun lt!253383 () SeekEntryResult!5297)

(assert (=> b!557535 (= e!321213 (seekKeyOrZeroReturnVacant!0 (x!52338 lt!253383) (index!23417 lt!253383) (index!23417 lt!253383) k!1914 a!3118 mask!3119))))

(declare-fun b!557536 () Bool)

(declare-fun e!321215 () SeekEntryResult!5297)

(assert (=> b!557536 (= e!321215 (Found!5297 (index!23417 lt!253383)))))

(declare-fun d!83439 () Bool)

(declare-fun lt!253385 () SeekEntryResult!5297)

(assert (=> d!83439 (and (or (is-Undefined!5297 lt!253385) (not (is-Found!5297 lt!253385)) (and (bvsge (index!23416 lt!253385) #b00000000000000000000000000000000) (bvslt (index!23416 lt!253385) (size!17205 a!3118)))) (or (is-Undefined!5297 lt!253385) (is-Found!5297 lt!253385) (not (is-MissingZero!5297 lt!253385)) (and (bvsge (index!23415 lt!253385) #b00000000000000000000000000000000) (bvslt (index!23415 lt!253385) (size!17205 a!3118)))) (or (is-Undefined!5297 lt!253385) (is-Found!5297 lt!253385) (is-MissingZero!5297 lt!253385) (not (is-MissingVacant!5297 lt!253385)) (and (bvsge (index!23418 lt!253385) #b00000000000000000000000000000000) (bvslt (index!23418 lt!253385) (size!17205 a!3118)))) (or (is-Undefined!5297 lt!253385) (ite (is-Found!5297 lt!253385) (= (select (arr!16841 a!3118) (index!23416 lt!253385)) k!1914) (ite (is-MissingZero!5297 lt!253385) (= (select (arr!16841 a!3118) (index!23415 lt!253385)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5297 lt!253385) (= (select (arr!16841 a!3118) (index!23418 lt!253385)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!321214 () SeekEntryResult!5297)

(assert (=> d!83439 (= lt!253385 e!321214)))

(declare-fun c!64322 () Bool)

(assert (=> d!83439 (= c!64322 (and (is-Intermediate!5297 lt!253383) (undefined!6109 lt!253383)))))

(assert (=> d!83439 (= lt!253383 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83439 (validMask!0 mask!3119)))

(assert (=> d!83439 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!253385)))

(declare-fun b!557537 () Bool)

(declare-fun c!64321 () Bool)

(declare-fun lt!253384 () (_ BitVec 64))

(assert (=> b!557537 (= c!64321 (= lt!253384 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!557537 (= e!321215 e!321213)))

(declare-fun b!557538 () Bool)

(assert (=> b!557538 (= e!321214 Undefined!5297)))

(declare-fun b!557539 () Bool)

(assert (=> b!557539 (= e!321214 e!321215)))

(assert (=> b!557539 (= lt!253384 (select (arr!16841 a!3118) (index!23417 lt!253383)))))

(declare-fun c!64320 () Bool)

(assert (=> b!557539 (= c!64320 (= lt!253384 k!1914))))

(declare-fun b!557540 () Bool)

(assert (=> b!557540 (= e!321213 (MissingZero!5297 (index!23417 lt!253383)))))

(assert (= (and d!83439 c!64322) b!557538))

(assert (= (and d!83439 (not c!64322)) b!557539))

(assert (= (and b!557539 c!64320) b!557536))

(assert (= (and b!557539 (not c!64320)) b!557537))

(assert (= (and b!557537 c!64321) b!557540))

(assert (= (and b!557537 (not c!64321)) b!557535))

(declare-fun m!535453 () Bool)

(assert (=> b!557535 m!535453))

(assert (=> d!83439 m!535263))

(declare-fun m!535455 () Bool)

(assert (=> d!83439 m!535455))

(declare-fun m!535457 () Bool)

(assert (=> d!83439 m!535457))

(assert (=> d!83439 m!535457))

(declare-fun m!535459 () Bool)

(assert (=> d!83439 m!535459))

(declare-fun m!535461 () Bool)

(assert (=> d!83439 m!535461))

(declare-fun m!535463 () Bool)

(assert (=> d!83439 m!535463))

(declare-fun m!535465 () Bool)

(assert (=> b!557539 m!535465))

(assert (=> b!557285 d!83439))

(declare-fun b!557559 () Bool)

(declare-fun e!321230 () SeekEntryResult!5297)

(assert (=> b!557559 (= e!321230 (Intermediate!5297 true lt!253280 #b00000000000000000000000000000000))))

(declare-fun b!557560 () Bool)

(declare-fun e!321228 () Bool)

(declare-fun lt!253399 () SeekEntryResult!5297)

(assert (=> b!557560 (= e!321228 (bvsge (x!52338 lt!253399) #b01111111111111111111111111111110))))

(declare-fun b!557561 () Bool)

(assert (=> b!557561 (and (bvsge (index!23417 lt!253399) #b00000000000000000000000000000000) (bvslt (index!23417 lt!253399) (size!17205 (array!35078 (store (arr!16841 a!3118) i!1132 k!1914) (size!17205 a!3118)))))))

(declare-fun res!349583 () Bool)

(assert (=> b!557561 (= res!349583 (= (select (arr!16841 (array!35078 (store (arr!16841 a!3118) i!1132 k!1914) (size!17205 a!3118))) (index!23417 lt!253399)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321227 () Bool)

(assert (=> b!557561 (=> res!349583 e!321227)))

(declare-fun b!557562 () Bool)

(assert (=> b!557562 (and (bvsge (index!23417 lt!253399) #b00000000000000000000000000000000) (bvslt (index!23417 lt!253399) (size!17205 (array!35078 (store (arr!16841 a!3118) i!1132 k!1914) (size!17205 a!3118)))))))

(assert (=> b!557562 (= e!321227 (= (select (arr!16841 (array!35078 (store (arr!16841 a!3118) i!1132 k!1914) (size!17205 a!3118))) (index!23417 lt!253399)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!557564 () Bool)

(declare-fun e!321226 () SeekEntryResult!5297)

(assert (=> b!557564 (= e!321226 (Intermediate!5297 false lt!253280 #b00000000000000000000000000000000))))

(declare-fun b!557565 () Bool)

(assert (=> b!557565 (= e!321230 e!321226)))

(declare-fun c!64329 () Bool)

(declare-fun lt!253398 () (_ BitVec 64))

(assert (=> b!557565 (= c!64329 (or (= lt!253398 (select (store (arr!16841 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!253398 lt!253398) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!557566 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557566 (= e!321226 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253280 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16841 a!3118) i!1132 k!1914) j!142) (array!35078 (store (arr!16841 a!3118) i!1132 k!1914) (size!17205 a!3118)) mask!3119))))

(declare-fun b!557567 () Bool)

(declare-fun e!321229 () Bool)

(assert (=> b!557567 (= e!321228 e!321229)))

(declare-fun res!349585 () Bool)

(assert (=> b!557567 (= res!349585 (and (is-Intermediate!5297 lt!253399) (not (undefined!6109 lt!253399)) (bvslt (x!52338 lt!253399) #b01111111111111111111111111111110) (bvsge (x!52338 lt!253399) #b00000000000000000000000000000000) (bvsge (x!52338 lt!253399) #b00000000000000000000000000000000)))))

(assert (=> b!557567 (=> (not res!349585) (not e!321229))))

(declare-fun d!83441 () Bool)

(assert (=> d!83441 e!321228))

(declare-fun c!64330 () Bool)

(assert (=> d!83441 (= c!64330 (and (is-Intermediate!5297 lt!253399) (undefined!6109 lt!253399)))))

(assert (=> d!83441 (= lt!253399 e!321230)))

(declare-fun c!64331 () Bool)

(assert (=> d!83441 (= c!64331 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83441 (= lt!253398 (select (arr!16841 (array!35078 (store (arr!16841 a!3118) i!1132 k!1914) (size!17205 a!3118))) lt!253280))))

(assert (=> d!83441 (validMask!0 mask!3119)))

(assert (=> d!83441 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253280 (select (store (arr!16841 a!3118) i!1132 k!1914) j!142) (array!35078 (store (arr!16841 a!3118) i!1132 k!1914) (size!17205 a!3118)) mask!3119) lt!253399)))

