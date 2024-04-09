; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!134682 () Bool)

(assert start!134682)

(declare-fun b!1571269 () Bool)

(declare-fun res!1073644 () Bool)

(declare-fun e!876122 () Bool)

(assert (=> b!1571269 (=> (not res!1073644) (not e!876122))))

(declare-datatypes ((array!104827 0))(
  ( (array!104828 (arr!50587 (Array (_ BitVec 32) (_ BitVec 64))) (size!51138 (_ BitVec 32))) )
))
(declare-fun a!3462 () array!104827)

(declare-fun mask!4043 () (_ BitVec 32))

(assert (=> b!1571269 (= res!1073644 (= (size!51138 a!3462) (bvadd #b00000000000000000000000000000001 mask!4043)))))

(declare-fun k!2731 () (_ BitVec 64))

(declare-fun b!1571270 () Bool)

(declare-datatypes ((SeekEntryResult!13540 0))(
  ( (MissingZero!13540 (index!56557 (_ BitVec 32))) (Found!13540 (index!56558 (_ BitVec 32))) (Intermediate!13540 (undefined!14352 Bool) (index!56559 (_ BitVec 32)) (x!141263 (_ BitVec 32))) (Undefined!13540) (MissingVacant!13540 (index!56560 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!104827 (_ BitVec 32)) SeekEntryResult!13540)

(assert (=> b!1571270 (= e!876122 (is-Found!13540 (seekEntry!0 k!2731 a!3462 mask!4043)))))

(declare-fun b!1571271 () Bool)

(declare-fun res!1073645 () Bool)

(assert (=> b!1571271 (=> (not res!1073645) (not e!876122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!104827 (_ BitVec 32)) Bool)

(assert (=> b!1571271 (= res!1073645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043))))

(declare-fun b!1571272 () Bool)

(declare-fun res!1073646 () Bool)

(assert (=> b!1571272 (=> (not res!1073646) (not e!876122))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!104827 (_ BitVec 32)) SeekEntryResult!13540)

(assert (=> b!1571272 (= res!1073646 (not (is-Found!13540 (seekEntryOrOpen!0 k!2731 a!3462 mask!4043))))))

(declare-fun b!1571273 () Bool)

(declare-fun res!1073648 () Bool)

(assert (=> b!1571273 (=> (not res!1073648) (not e!876122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1571273 (= res!1073648 (validKeyInArray!0 k!2731))))

(declare-fun res!1073647 () Bool)

(assert (=> start!134682 (=> (not res!1073647) (not e!876122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!134682 (= res!1073647 (validMask!0 mask!4043))))

(assert (=> start!134682 e!876122))

(assert (=> start!134682 true))

(declare-fun array_inv!39232 (array!104827) Bool)

(assert (=> start!134682 (array_inv!39232 a!3462)))

(assert (= (and start!134682 res!1073647) b!1571269))

(assert (= (and b!1571269 res!1073644) b!1571271))

(assert (= (and b!1571271 res!1073645) b!1571273))

(assert (= (and b!1571273 res!1073648) b!1571272))

(assert (= (and b!1571272 res!1073646) b!1571270))

(declare-fun m!1445281 () Bool)

(assert (=> b!1571270 m!1445281))

(declare-fun m!1445283 () Bool)

(assert (=> b!1571271 m!1445283))

(declare-fun m!1445285 () Bool)

(assert (=> b!1571272 m!1445285))

(declare-fun m!1445287 () Bool)

(assert (=> b!1571273 m!1445287))

(declare-fun m!1445289 () Bool)

(assert (=> start!134682 m!1445289))

(declare-fun m!1445291 () Bool)

(assert (=> start!134682 m!1445291))

(push 1)

(assert (not b!1571270))

(assert (not b!1571272))

(assert (not b!1571271))

(assert (not start!134682))

(assert (not b!1571273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1571346 () Bool)

(declare-fun e!876157 () SeekEntryResult!13540)

(declare-fun lt!673509 () SeekEntryResult!13540)

(assert (=> b!1571346 (= e!876157 (Found!13540 (index!56559 lt!673509)))))

(declare-fun e!876159 () SeekEntryResult!13540)

(declare-fun b!1571347 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104827 (_ BitVec 32)) SeekEntryResult!13540)

(assert (=> b!1571347 (= e!876159 (seekKeyOrZeroReturnVacant!0 (x!141263 lt!673509) (index!56559 lt!673509) (index!56559 lt!673509) k!2731 a!3462 mask!4043))))

(declare-fun b!1571349 () Bool)

(declare-fun e!876158 () SeekEntryResult!13540)

(assert (=> b!1571349 (= e!876158 e!876157)))

(declare-fun lt!673510 () (_ BitVec 64))

(assert (=> b!1571349 (= lt!673510 (select (arr!50587 a!3462) (index!56559 lt!673509)))))

(declare-fun c!145074 () Bool)

(assert (=> b!1571349 (= c!145074 (= lt!673510 k!2731))))

(declare-fun b!1571350 () Bool)

(assert (=> b!1571350 (= e!876158 Undefined!13540)))

(declare-fun b!1571351 () Bool)

(assert (=> b!1571351 (= e!876159 (MissingZero!13540 (index!56559 lt!673509)))))

(declare-fun d!164445 () Bool)

(declare-fun lt!673508 () SeekEntryResult!13540)

(assert (=> d!164445 (and (or (is-Undefined!13540 lt!673508) (not (is-Found!13540 lt!673508)) (and (bvsge (index!56558 lt!673508) #b00000000000000000000000000000000) (bvslt (index!56558 lt!673508) (size!51138 a!3462)))) (or (is-Undefined!13540 lt!673508) (is-Found!13540 lt!673508) (not (is-MissingZero!13540 lt!673508)) (and (bvsge (index!56557 lt!673508) #b00000000000000000000000000000000) (bvslt (index!56557 lt!673508) (size!51138 a!3462)))) (or (is-Undefined!13540 lt!673508) (is-Found!13540 lt!673508) (is-MissingZero!13540 lt!673508) (not (is-MissingVacant!13540 lt!673508)) (and (bvsge (index!56560 lt!673508) #b00000000000000000000000000000000) (bvslt (index!56560 lt!673508) (size!51138 a!3462)))) (or (is-Undefined!13540 lt!673508) (ite (is-Found!13540 lt!673508) (= (select (arr!50587 a!3462) (index!56558 lt!673508)) k!2731) (ite (is-MissingZero!13540 lt!673508) (= (select (arr!50587 a!3462) (index!56557 lt!673508)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!13540 lt!673508) (= (select (arr!50587 a!3462) (index!56560 lt!673508)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!164445 (= lt!673508 e!876158)))

(declare-fun c!145073 () Bool)

(assert (=> d!164445 (= c!145073 (and (is-Intermediate!13540 lt!673509) (undefined!14352 lt!673509)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104827 (_ BitVec 32)) SeekEntryResult!13540)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!164445 (= lt!673509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2731 mask!4043) k!2731 a!3462 mask!4043))))

(assert (=> d!164445 (validMask!0 mask!4043)))

(assert (=> d!164445 (= (seekEntryOrOpen!0 k!2731 a!3462 mask!4043) lt!673508)))

(declare-fun b!1571348 () Bool)

(declare-fun c!145072 () Bool)

(assert (=> b!1571348 (= c!145072 (= lt!673510 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1571348 (= e!876157 e!876159)))

(assert (= (and d!164445 c!145073) b!1571350))

(assert (= (and d!164445 (not c!145073)) b!1571349))

(assert (= (and b!1571349 c!145074) b!1571346))

(assert (= (and b!1571349 (not c!145074)) b!1571348))

(assert (= (and b!1571348 c!145072) b!1571351))

(assert (= (and b!1571348 (not c!145072)) b!1571347))

(declare-fun m!1445327 () Bool)

(assert (=> b!1571347 m!1445327))

(declare-fun m!1445329 () Bool)

(assert (=> b!1571349 m!1445329))

(declare-fun m!1445331 () Bool)

(assert (=> d!164445 m!1445331))

(declare-fun m!1445333 () Bool)

(assert (=> d!164445 m!1445333))

(declare-fun m!1445335 () Bool)

(assert (=> d!164445 m!1445335))

(declare-fun m!1445338 () Bool)

(assert (=> d!164445 m!1445338))

(declare-fun m!1445341 () Bool)

(assert (=> d!164445 m!1445341))

(assert (=> d!164445 m!1445289))

(assert (=> d!164445 m!1445331))

(assert (=> b!1571272 d!164445))

(declare-fun b!1571390 () Bool)

(declare-fun e!876186 () Bool)

(declare-fun e!876184 () Bool)

(assert (=> b!1571390 (= e!876186 e!876184)))

(declare-fun lt!673536 () (_ BitVec 64))

(assert (=> b!1571390 (= lt!673536 (select (arr!50587 a!3462) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!52048 0))(
  ( (Unit!52049) )
))
(declare-fun lt!673535 () Unit!52048)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!104827 (_ BitVec 64) (_ BitVec 32)) Unit!52048)

(assert (=> b!1571390 (= lt!673535 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3462 lt!673536 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!104827 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1571390 (arrayContainsKey!0 a!3462 lt!673536 #b00000000000000000000000000000000)))

(declare-fun lt!673537 () Unit!52048)

(assert (=> b!1571390 (= lt!673537 lt!673535)))

(declare-fun res!1073690 () Bool)

(assert (=> b!1571390 (= res!1073690 (= (seekEntryOrOpen!0 (select (arr!50587 a!3462) #b00000000000000000000000000000000) a!3462 mask!4043) (Found!13540 #b00000000000000000000000000000000)))))

(assert (=> b!1571390 (=> (not res!1073690) (not e!876184))))

(declare-fun bm!72362 () Bool)

(declare-fun call!72365 () Bool)

(assert (=> bm!72362 (= call!72365 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3462 mask!4043))))

(declare-fun d!164451 () Bool)

(declare-fun res!1073689 () Bool)

(declare-fun e!876185 () Bool)

(assert (=> d!164451 (=> res!1073689 e!876185)))

(assert (=> d!164451 (= res!1073689 (bvsge #b00000000000000000000000000000000 (size!51138 a!3462)))))

(assert (=> d!164451 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3462 mask!4043) e!876185)))

(declare-fun b!1571391 () Bool)

(assert (=> b!1571391 (= e!876186 call!72365)))

(declare-fun b!1571392 () Bool)

(assert (=> b!1571392 (= e!876185 e!876186)))

(declare-fun c!145089 () Bool)

(assert (=> b!1571392 (= c!145089 (validKeyInArray!0 (select (arr!50587 a!3462) #b00000000000000000000000000000000)))))

(declare-fun b!1571393 () Bool)

(assert (=> b!1571393 (= e!876184 call!72365)))

(assert (= (and d!164451 (not res!1073689)) b!1571392))

(assert (= (and b!1571392 c!145089) b!1571390))

(assert (= (and b!1571392 (not c!145089)) b!1571391))

(assert (= (and b!1571390 res!1073690) b!1571393))

(assert (= (or b!1571393 b!1571391) bm!72362))

(declare-fun m!1445357 () Bool)

(assert (=> b!1571390 m!1445357))

(declare-fun m!1445361 () Bool)

(assert (=> b!1571390 m!1445361))

(declare-fun m!1445365 () Bool)

(assert (=> b!1571390 m!1445365))

(assert (=> b!1571390 m!1445357))

(declare-fun m!1445371 () Bool)

(assert (=> b!1571390 m!1445371))

(declare-fun m!1445373 () Bool)

(assert (=> bm!72362 m!1445373))

(assert (=> b!1571392 m!1445357))

(assert (=> b!1571392 m!1445357))

(declare-fun m!1445377 () Bool)

(assert (=> b!1571392 m!1445377))

(assert (=> b!1571271 d!164451))

(declare-fun d!164457 () Bool)

(assert (=> d!164457 (= (validMask!0 mask!4043) (and (or (= mask!4043 #b00000000000000000000000000000111) (= mask!4043 #b00000000000000000000000000001111) (= mask!4043 #b00000000000000000000000000011111) (= mask!4043 #b00000000000000000000000000111111) (= mask!4043 #b00000000000000000000000001111111) (= mask!4043 #b00000000000000000000000011111111) (= mask!4043 #b00000000000000000000000111111111) (= mask!4043 #b00000000000000000000001111111111) (= mask!4043 #b00000000000000000000011111111111) (= mask!4043 #b00000000000000000000111111111111) (= mask!4043 #b00000000000000000001111111111111) (= mask!4043 #b00000000000000000011111111111111) (= mask!4043 #b00000000000000000111111111111111) (= mask!4043 #b00000000000000001111111111111111) (= mask!4043 #b00000000000000011111111111111111) (= mask!4043 #b00000000000000111111111111111111) (= mask!4043 #b00000000000001111111111111111111) (= mask!4043 #b00000000000011111111111111111111) (= mask!4043 #b00000000000111111111111111111111) (= mask!4043 #b00000000001111111111111111111111) (= mask!4043 #b00000000011111111111111111111111) (= mask!4043 #b00000000111111111111111111111111) (= mask!4043 #b00000001111111111111111111111111) (= mask!4043 #b00000011111111111111111111111111) (= mask!4043 #b00000111111111111111111111111111) (= mask!4043 #b00001111111111111111111111111111) (= mask!4043 #b00011111111111111111111111111111) (= mask!4043 #b00111111111111111111111111111111)) (bvsle mask!4043 #b00111111111111111111111111111111)))))

(assert (=> start!134682 d!164457))

(declare-fun d!164463 () Bool)

(assert (=> d!164463 (= (array_inv!39232 a!3462) (bvsge (size!51138 a!3462) #b00000000000000000000000000000000))))

(assert (=> start!134682 d!164463))

(declare-fun d!164465 () Bool)

(declare-fun lt!673570 () SeekEntryResult!13540)

(assert (=> d!164465 (and (or (is-MissingVacant!13540 lt!673570) (not (is-Found!13540 lt!673570)) (and (bvsge (index!56558 lt!673570) #b00000000000000000000000000000000) (bvslt (index!56558 lt!673570) (size!51138 a!3462)))) (not (is-MissingVacant!13540 lt!673570)) (or (not (is-Found!13540 lt!673570)) (= (select (arr!50587 a!3462) (index!56558 lt!673570)) k!2731)))))

(declare-fun e!876216 () SeekEntryResult!13540)

(assert (=> d!164465 (= lt!673570 e!876216)))

(declare-fun c!145113 () Bool)

(declare-fun lt!673571 () SeekEntryResult!13540)

(assert (=> d!164465 (= c!145113 (and (is-Intermediate!13540 lt!673571) (undefined!14352 lt!673571)))))

(assert (=> d!164465 (= lt!673571 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2731 mask!4043) k!2731 a!3462 mask!4043))))

(assert (=> d!164465 (validMask!0 mask!4043)))

(assert (=> d!164465 (= (seekEntry!0 k!2731 a!3462 mask!4043) lt!673570)))

(declare-fun b!1571442 () Bool)

(declare-fun e!876215 () SeekEntryResult!13540)

(declare-fun lt!673573 () SeekEntryResult!13540)

(assert (=> b!1571442 (= e!876215 (ite (is-MissingVacant!13540 lt!673573) (MissingZero!13540 (index!56560 lt!673573)) lt!673573))))

(assert (=> b!1571442 (= lt!673573 (seekKeyOrZeroReturnVacant!0 (x!141263 lt!673571) (index!56559 lt!673571) (index!56559 lt!673571) k!2731 a!3462 mask!4043))))

(declare-fun b!1571443 () Bool)

(declare-fun e!876214 () SeekEntryResult!13540)

(assert (=> b!1571443 (= e!876216 e!876214)))

(declare-fun lt!673572 () (_ BitVec 64))

(assert (=> b!1571443 (= lt!673572 (select (arr!50587 a!3462) (index!56559 lt!673571)))))

(declare-fun c!145112 () Bool)

(assert (=> b!1571443 (= c!145112 (= lt!673572 k!2731))))

(declare-fun b!1571444 () Bool)

(declare-fun c!145111 () Bool)

(assert (=> b!1571444 (= c!145111 (= lt!673572 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1571444 (= e!876214 e!876215)))

(declare-fun b!1571445 () Bool)

(assert (=> b!1571445 (= e!876214 (Found!13540 (index!56559 lt!673571)))))

(declare-fun b!1571446 () Bool)

(assert (=> b!1571446 (= e!876215 (MissingZero!13540 (index!56559 lt!673571)))))

(declare-fun b!1571447 () Bool)

(assert (=> b!1571447 (= e!876216 Undefined!13540)))

(assert (= (and d!164465 c!145113) b!1571447))

(assert (= (and d!164465 (not c!145113)) b!1571443))

(assert (= (and b!1571443 c!145112) b!1571445))

(assert (= (and b!1571443 (not c!145112)) b!1571444))

(assert (= (and b!1571444 c!145111) b!1571446))

(assert (= (and b!1571444 (not c!145111)) b!1571442))

(declare-fun m!1445407 () Bool)

(assert (=> d!164465 m!1445407))

(assert (=> d!164465 m!1445331))

(assert (=> d!164465 m!1445331))

(assert (=> d!164465 m!1445333))

(assert (=> d!164465 m!1445289))

(declare-fun m!1445409 () Bool)

(assert (=> b!1571442 m!1445409))

(declare-fun m!1445411 () Bool)

(assert (=> b!1571443 m!1445411))

(assert (=> b!1571270 d!164465))

(declare-fun d!164477 () Bool)

(assert (=> d!164477 (= (validKeyInArray!0 k!2731) (and (not (= k!2731 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2731 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1571273 d!164477))

(push 1)

(assert (not bm!72362))

(assert (not d!164445))

(assert (not b!1571390))

(assert (not b!1571442))

(assert (not b!1571347))

(assert (not b!1571392))

(assert (not d!164465))

(check-sat)

(pop 1)

(push 1)

(check-sat)

