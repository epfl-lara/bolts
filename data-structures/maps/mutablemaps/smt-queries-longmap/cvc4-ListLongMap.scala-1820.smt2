; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32740 () Bool)

(assert start!32740)

(declare-fun res!180264 () Bool)

(declare-fun e!201169 () Bool)

(assert (=> start!32740 (=> (not res!180264) (not e!201169))))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32740 (= res!180264 (validMask!0 mask!3777))))

(assert (=> start!32740 e!201169))

(declare-datatypes ((array!16773 0))(
  ( (array!16774 (arr!7938 (Array (_ BitVec 32) (_ BitVec 64))) (size!8290 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16773)

(declare-fun array_inv!5892 (array!16773) Bool)

(assert (=> start!32740 (array_inv!5892 a!3305)))

(assert (=> start!32740 true))

(declare-fun b!327070 () Bool)

(declare-fun res!180260 () Bool)

(declare-fun e!201167 () Bool)

(assert (=> b!327070 (=> (not res!180260) (not e!201167))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!327070 (= res!180260 (and (= (select (arr!7938 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8290 a!3305))))))

(declare-fun b!327071 () Bool)

(declare-fun res!180259 () Bool)

(assert (=> b!327071 (=> (not res!180259) (not e!201167))))

(declare-datatypes ((SeekEntryResult!3080 0))(
  ( (MissingZero!3080 (index!14496 (_ BitVec 32))) (Found!3080 (index!14497 (_ BitVec 32))) (Intermediate!3080 (undefined!3892 Bool) (index!14498 (_ BitVec 32)) (x!32697 (_ BitVec 32))) (Undefined!3080) (MissingVacant!3080 (index!14499 (_ BitVec 32))) )
))
(declare-fun lt!157445 () SeekEntryResult!3080)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16773 (_ BitVec 32)) SeekEntryResult!3080)

(assert (=> b!327071 (= res!180259 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157445))))

(declare-fun b!327072 () Bool)

(declare-fun res!180265 () Bool)

(assert (=> b!327072 (=> (not res!180265) (not e!201169))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16773 (_ BitVec 32)) SeekEntryResult!3080)

(assert (=> b!327072 (= res!180265 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3080 i!1250)))))

(declare-fun b!327073 () Bool)

(declare-fun res!180267 () Bool)

(assert (=> b!327073 (=> (not res!180267) (not e!201169))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16773 (_ BitVec 32)) Bool)

(assert (=> b!327073 (= res!180267 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!327074 () Bool)

(assert (=> b!327074 (= e!201169 e!201167)))

(declare-fun res!180266 () Bool)

(assert (=> b!327074 (=> (not res!180266) (not e!201167))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327074 (= res!180266 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157445))))

(assert (=> b!327074 (= lt!157445 (Intermediate!3080 false resIndex!58 resX!58))))

(declare-fun b!327075 () Bool)

(declare-fun res!180263 () Bool)

(assert (=> b!327075 (=> (not res!180263) (not e!201169))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327075 (= res!180263 (validKeyInArray!0 k!2497))))

(declare-fun b!327076 () Bool)

(declare-fun res!180261 () Bool)

(assert (=> b!327076 (=> (not res!180261) (not e!201169))))

(assert (=> b!327076 (= res!180261 (and (= (size!8290 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8290 a!3305))))))

(declare-fun b!327077 () Bool)

(declare-fun res!180262 () Bool)

(assert (=> b!327077 (=> (not res!180262) (not e!201169))))

(declare-fun arrayContainsKey!0 (array!16773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327077 (= res!180262 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327078 () Bool)

(assert (=> b!327078 (= e!201167 (bvsge resX!58 #b01111111111111111111111111111110))))

(assert (= (and start!32740 res!180264) b!327076))

(assert (= (and b!327076 res!180261) b!327075))

(assert (= (and b!327075 res!180263) b!327077))

(assert (= (and b!327077 res!180262) b!327072))

(assert (= (and b!327072 res!180265) b!327073))

(assert (= (and b!327073 res!180267) b!327074))

(assert (= (and b!327074 res!180266) b!327070))

(assert (= (and b!327070 res!180260) b!327071))

(assert (= (and b!327071 res!180259) b!327078))

(declare-fun m!333545 () Bool)

(assert (=> b!327074 m!333545))

(assert (=> b!327074 m!333545))

(declare-fun m!333547 () Bool)

(assert (=> b!327074 m!333547))

(declare-fun m!333549 () Bool)

(assert (=> start!32740 m!333549))

(declare-fun m!333551 () Bool)

(assert (=> start!32740 m!333551))

(declare-fun m!333553 () Bool)

(assert (=> b!327071 m!333553))

(declare-fun m!333555 () Bool)

(assert (=> b!327072 m!333555))

(declare-fun m!333557 () Bool)

(assert (=> b!327073 m!333557))

(declare-fun m!333559 () Bool)

(assert (=> b!327075 m!333559))

(declare-fun m!333561 () Bool)

(assert (=> b!327070 m!333561))

(declare-fun m!333563 () Bool)

(assert (=> b!327077 m!333563))

(push 1)

(assert (not start!32740))

(assert (not b!327072))

(assert (not b!327074))

(assert (not b!327077))

(assert (not b!327075))

(assert (not b!327071))

(assert (not b!327073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!201206 () SeekEntryResult!3080)

(declare-fun b!327139 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327139 (= e!201206 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!327140 () Bool)

(declare-fun lt!157469 () SeekEntryResult!3080)

(assert (=> b!327140 (and (bvsge (index!14498 lt!157469) #b00000000000000000000000000000000) (bvslt (index!14498 lt!157469) (size!8290 a!3305)))))

(declare-fun res!180280 () Bool)

(assert (=> b!327140 (= res!180280 (= (select (arr!7938 a!3305) (index!14498 lt!157469)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201207 () Bool)

(assert (=> b!327140 (=> res!180280 e!201207)))

(declare-fun d!69677 () Bool)

(declare-fun e!201205 () Bool)

(assert (=> d!69677 e!201205))

(declare-fun c!51062 () Bool)

(assert (=> d!69677 (= c!51062 (and (is-Intermediate!3080 lt!157469) (undefined!3892 lt!157469)))))

(declare-fun e!201208 () SeekEntryResult!3080)

(assert (=> d!69677 (= lt!157469 e!201208)))

(declare-fun c!51061 () Bool)

(assert (=> d!69677 (= c!51061 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157468 () (_ BitVec 64))

(assert (=> d!69677 (= lt!157468 (select (arr!7938 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69677 (validMask!0 mask!3777)))

(assert (=> d!69677 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157469)))

(declare-fun b!327141 () Bool)

(declare-fun e!201204 () Bool)

(assert (=> b!327141 (= e!201205 e!201204)))

(declare-fun res!180281 () Bool)

(assert (=> b!327141 (= res!180281 (and (is-Intermediate!3080 lt!157469) (not (undefined!3892 lt!157469)) (bvslt (x!32697 lt!157469) #b01111111111111111111111111111110) (bvsge (x!32697 lt!157469) #b00000000000000000000000000000000) (bvsge (x!32697 lt!157469) #b00000000000000000000000000000000)))))

(assert (=> b!327141 (=> (not res!180281) (not e!201204))))

(declare-fun b!327142 () Bool)

(assert (=> b!327142 (and (bvsge (index!14498 lt!157469) #b00000000000000000000000000000000) (bvslt (index!14498 lt!157469) (size!8290 a!3305)))))

(declare-fun res!180282 () Bool)

(assert (=> b!327142 (= res!180282 (= (select (arr!7938 a!3305) (index!14498 lt!157469)) k!2497))))

(assert (=> b!327142 (=> res!180282 e!201207)))

(assert (=> b!327142 (= e!201204 e!201207)))

(declare-fun b!327143 () Bool)

(assert (=> b!327143 (and (bvsge (index!14498 lt!157469) #b00000000000000000000000000000000) (bvslt (index!14498 lt!157469) (size!8290 a!3305)))))

(assert (=> b!327143 (= e!201207 (= (select (arr!7938 a!3305) (index!14498 lt!157469)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327144 () Bool)

(assert (=> b!327144 (= e!201205 (bvsge (x!32697 lt!157469) #b01111111111111111111111111111110))))

(declare-fun b!327145 () Bool)

(assert (=> b!327145 (= e!201208 e!201206)))

(declare-fun c!51060 () Bool)

(assert (=> b!327145 (= c!51060 (or (= lt!157468 k!2497) (= (bvadd lt!157468 lt!157468) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!327146 () Bool)

(assert (=> b!327146 (= e!201208 (Intermediate!3080 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327147 () Bool)

(assert (=> b!327147 (= e!201206 (Intermediate!3080 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(assert (= (and d!69677 c!51061) b!327146))

(assert (= (and d!69677 (not c!51061)) b!327145))

(assert (= (and b!327145 c!51060) b!327147))

(assert (= (and b!327145 (not c!51060)) b!327139))

(assert (= (and d!69677 c!51062) b!327144))

(assert (= (and d!69677 (not c!51062)) b!327141))

(assert (= (and b!327141 res!180281) b!327142))

(assert (= (and b!327142 (not res!180282)) b!327140))

(assert (= (and b!327140 (not res!180280)) b!327143))

(declare-fun m!333589 () Bool)

(assert (=> b!327140 m!333589))

(assert (=> b!327143 m!333589))

(assert (=> b!327139 m!333545))

(declare-fun m!333591 () Bool)

(assert (=> b!327139 m!333591))

(assert (=> b!327139 m!333591))

(declare-fun m!333593 () Bool)

(assert (=> b!327139 m!333593))

(assert (=> d!69677 m!333545))

(declare-fun m!333595 () Bool)

(assert (=> d!69677 m!333595))

(assert (=> d!69677 m!333549))

(assert (=> b!327142 m!333589))

(assert (=> b!327074 d!69677))

(declare-fun d!69691 () Bool)

(declare-fun lt!157475 () (_ BitVec 32))

(declare-fun lt!157474 () (_ BitVec 32))

(assert (=> d!69691 (= lt!157475 (bvmul (bvxor lt!157474 (bvlshr lt!157474 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69691 (= lt!157474 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69691 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180283 (let ((h!5417 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32699 (bvmul (bvxor h!5417 (bvlshr h!5417 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32699 (bvlshr x!32699 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180283 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180283 #b00000000000000000000000000000000))))))

(assert (=> d!69691 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157475 (bvlshr lt!157475 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327074 d!69691))

(declare-fun b!327183 () Bool)

(declare-fun e!201230 () Bool)

(declare-fun call!26087 () Bool)

(assert (=> b!327183 (= e!201230 call!26087)))

(declare-fun d!69693 () Bool)

(declare-fun res!180299 () Bool)

(declare-fun e!201231 () Bool)

(assert (=> d!69693 (=> res!180299 e!201231)))

(assert (=> d!69693 (= res!180299 (bvsge #b00000000000000000000000000000000 (size!8290 a!3305)))))

(assert (=> d!69693 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201231)))

(declare-fun b!327184 () Bool)

(declare-fun e!201232 () Bool)

(assert (=> b!327184 (= e!201232 call!26087)))

(declare-fun b!327185 () Bool)

(assert (=> b!327185 (= e!201230 e!201232)))

(declare-fun lt!157494 () (_ BitVec 64))

(assert (=> b!327185 (= lt!157494 (select (arr!7938 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10169 0))(
  ( (Unit!10170) )
))
(declare-fun lt!157492 () Unit!10169)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16773 (_ BitVec 64) (_ BitVec 32)) Unit!10169)

(assert (=> b!327185 (= lt!157492 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157494 #b00000000000000000000000000000000))))

(assert (=> b!327185 (arrayContainsKey!0 a!3305 lt!157494 #b00000000000000000000000000000000)))

(declare-fun lt!157493 () Unit!10169)

(assert (=> b!327185 (= lt!157493 lt!157492)))

(declare-fun res!180298 () Bool)

(assert (=> b!327185 (= res!180298 (= (seekEntryOrOpen!0 (select (arr!7938 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3080 #b00000000000000000000000000000000)))))

(assert (=> b!327185 (=> (not res!180298) (not e!201232))))

(declare-fun bm!26084 () Bool)

(assert (=> bm!26084 (= call!26087 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!327186 () Bool)

(assert (=> b!327186 (= e!201231 e!201230)))

(declare-fun c!51074 () Bool)

(assert (=> b!327186 (= c!51074 (validKeyInArray!0 (select (arr!7938 a!3305) #b00000000000000000000000000000000)))))

(assert (= (and d!69693 (not res!180299)) b!327186))

(assert (= (and b!327186 c!51074) b!327185))

(assert (= (and b!327186 (not c!51074)) b!327183))

(assert (= (and b!327185 res!180298) b!327184))

(assert (= (or b!327184 b!327183) bm!26084))

(declare-fun m!333605 () Bool)

(assert (=> b!327185 m!333605))

(declare-fun m!333607 () Bool)

(assert (=> b!327185 m!333607))

(declare-fun m!333609 () Bool)

(assert (=> b!327185 m!333609))

(assert (=> b!327185 m!333605))

(declare-fun m!333611 () Bool)

(assert (=> b!327185 m!333611))

(declare-fun m!333613 () Bool)

(assert (=> bm!26084 m!333613))

(assert (=> b!327186 m!333605))

(assert (=> b!327186 m!333605))

(declare-fun m!333615 () Bool)

(assert (=> b!327186 m!333615))

(assert (=> b!327073 d!69693))

(declare-fun d!69699 () Bool)

(declare-fun res!180313 () Bool)

(declare-fun e!201252 () Bool)

(assert (=> d!69699 (=> res!180313 e!201252)))

(assert (=> d!69699 (= res!180313 (= (select (arr!7938 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69699 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!201252)))

(declare-fun b!327218 () Bool)

(declare-fun e!201253 () Bool)

(assert (=> b!327218 (= e!201252 e!201253)))

(declare-fun res!180314 () Bool)

(assert (=> b!327218 (=> (not res!180314) (not e!201253))))

(assert (=> b!327218 (= res!180314 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8290 a!3305)))))

(declare-fun b!327219 () Bool)

(assert (=> b!327219 (= e!201253 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69699 (not res!180313)) b!327218))

(assert (= (and b!327218 res!180314) b!327219))

(assert (=> d!69699 m!333605))

(declare-fun m!333625 () Bool)

(assert (=> b!327219 m!333625))

(assert (=> b!327077 d!69699))

(declare-fun b!327271 () Bool)

(declare-fun e!201290 () SeekEntryResult!3080)

(declare-fun lt!157537 () SeekEntryResult!3080)

(assert (=> b!327271 (= e!201290 (Found!3080 (index!14498 lt!157537)))))

(declare-fun b!327273 () Bool)

(declare-fun e!201289 () SeekEntryResult!3080)

(assert (=> b!327273 (= e!201289 Undefined!3080)))

(declare-fun b!327274 () Bool)

(assert (=> b!327274 (= e!201289 e!201290)))

(declare-fun lt!157536 () (_ BitVec 64))

(assert (=> b!327274 (= lt!157536 (select (arr!7938 a!3305) (index!14498 lt!157537)))))

(declare-fun c!51099 () Bool)

(assert (=> b!327274 (= c!51099 (= lt!157536 k!2497))))

(declare-fun b!327275 () Bool)

(declare-fun e!201291 () SeekEntryResult!3080)

(assert (=> b!327275 (= e!201291 (MissingZero!3080 (index!14498 lt!157537)))))

(declare-fun b!327276 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16773 (_ BitVec 32)) SeekEntryResult!3080)

(assert (=> b!327276 (= e!201291 (seekKeyOrZeroReturnVacant!0 (x!32697 lt!157537) (index!14498 lt!157537) (index!14498 lt!157537) k!2497 a!3305 mask!3777))))

(declare-fun b!327272 () Bool)

(declare-fun c!51101 () Bool)

(assert (=> b!327272 (= c!51101 (= lt!157536 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!327272 (= e!201290 e!201291)))

(declare-fun d!69703 () Bool)

(declare-fun lt!157535 () SeekEntryResult!3080)

(assert (=> d!69703 (and (or (is-Undefined!3080 lt!157535) (not (is-Found!3080 lt!157535)) (and (bvsge (index!14497 lt!157535) #b00000000000000000000000000000000) (bvslt (index!14497 lt!157535) (size!8290 a!3305)))) (or (is-Undefined!3080 lt!157535) (is-Found!3080 lt!157535) (not (is-MissingZero!3080 lt!157535)) (and (bvsge (index!14496 lt!157535) #b00000000000000000000000000000000) (bvslt (index!14496 lt!157535) (size!8290 a!3305)))) (or (is-Undefined!3080 lt!157535) (is-Found!3080 lt!157535) (is-MissingZero!3080 lt!157535) (not (is-MissingVacant!3080 lt!157535)) (and (bvsge (index!14499 lt!157535) #b00000000000000000000000000000000) (bvslt (index!14499 lt!157535) (size!8290 a!3305)))) (or (is-Undefined!3080 lt!157535) (ite (is-Found!3080 lt!157535) (= (select (arr!7938 a!3305) (index!14497 lt!157535)) k!2497) (ite (is-MissingZero!3080 lt!157535) (= (select (arr!7938 a!3305) (index!14496 lt!157535)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3080 lt!157535) (= (select (arr!7938 a!3305) (index!14499 lt!157535)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69703 (= lt!157535 e!201289)))

(declare-fun c!51100 () Bool)

(assert (=> d!69703 (= c!51100 (and (is-Intermediate!3080 lt!157537) (undefined!3892 lt!157537)))))

(assert (=> d!69703 (= lt!157537 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69703 (validMask!0 mask!3777)))

(assert (=> d!69703 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157535)))

(assert (= (and d!69703 c!51100) b!327273))

(assert (= (and d!69703 (not c!51100)) b!327274))

(assert (= (and b!327274 c!51099) b!327271))

(assert (= (and b!327274 (not c!51099)) b!327272))

(assert (= (and b!327272 c!51101) b!327275))

(assert (= (and b!327272 (not c!51101)) b!327276))

(declare-fun m!333657 () Bool)

(assert (=> b!327274 m!333657))

(declare-fun m!333661 () Bool)

(assert (=> b!327276 m!333661))

(declare-fun m!333663 () Bool)

(assert (=> d!69703 m!333663))

(declare-fun m!333665 () Bool)

(assert (=> d!69703 m!333665))

(assert (=> d!69703 m!333545))

(declare-fun m!333667 () Bool)

(assert (=> d!69703 m!333667))

(assert (=> d!69703 m!333545))

(assert (=> d!69703 m!333547))

(assert (=> d!69703 m!333549))

(assert (=> b!327072 d!69703))

(declare-fun e!201299 () SeekEntryResult!3080)

(declare-fun b!327286 () Bool)

(assert (=> b!327286 (= e!201299 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

