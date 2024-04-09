; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131278 () Bool)

(assert start!131278)

(declare-fun b!1539260 () Bool)

(declare-fun res!1056289 () Bool)

(declare-fun e!856220 () Bool)

(assert (=> b!1539260 (=> (not res!1056289) (not e!856220))))

(declare-datatypes ((array!102231 0))(
  ( (array!102232 (arr!49324 (Array (_ BitVec 32) (_ BitVec 64))) (size!49875 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102231)

(declare-datatypes ((List!35978 0))(
  ( (Nil!35975) (Cons!35974 (h!37420 (_ BitVec 64)) (t!50679 List!35978)) )
))
(declare-fun arrayNoDuplicates!0 (array!102231 (_ BitVec 32) List!35978) Bool)

(assert (=> b!1539260 (= res!1056289 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35975))))

(declare-fun b!1539261 () Bool)

(declare-fun res!1056286 () Bool)

(assert (=> b!1539261 (=> (not res!1056286) (not e!856220))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539261 (= res!1056286 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49875 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49875 a!2792)) (= (select (arr!49324 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539262 () Bool)

(declare-fun res!1056291 () Bool)

(assert (=> b!1539262 (=> (not res!1056291) (not e!856220))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539262 (= res!1056291 (validKeyInArray!0 (select (arr!49324 a!2792) i!951)))))

(declare-fun b!1539263 () Bool)

(declare-fun res!1056290 () Bool)

(assert (=> b!1539263 (=> (not res!1056290) (not e!856220))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1539263 (= res!1056290 (validKeyInArray!0 (select (arr!49324 a!2792) j!64)))))

(declare-fun b!1539264 () Bool)

(declare-fun res!1056292 () Bool)

(assert (=> b!1539264 (=> (not res!1056292) (not e!856220))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102231 (_ BitVec 32)) Bool)

(assert (=> b!1539264 (= res!1056292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1056294 () Bool)

(assert (=> start!131278 (=> (not res!1056294) (not e!856220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131278 (= res!1056294 (validMask!0 mask!2480))))

(assert (=> start!131278 e!856220))

(assert (=> start!131278 true))

(declare-fun array_inv!38269 (array!102231) Bool)

(assert (=> start!131278 (array_inv!38269 a!2792)))

(declare-fun b!1539265 () Bool)

(declare-fun res!1056288 () Bool)

(assert (=> b!1539265 (=> (not res!1056288) (not e!856220))))

(declare-datatypes ((SeekEntryResult!13473 0))(
  ( (MissingZero!13473 (index!56286 (_ BitVec 32))) (Found!13473 (index!56287 (_ BitVec 32))) (Intermediate!13473 (undefined!14285 Bool) (index!56288 (_ BitVec 32)) (x!138023 (_ BitVec 32))) (Undefined!13473) (MissingVacant!13473 (index!56289 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102231 (_ BitVec 32)) SeekEntryResult!13473)

(assert (=> b!1539265 (= res!1056288 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49324 a!2792) j!64) a!2792 mask!2480) (Found!13473 j!64)))))

(declare-fun b!1539266 () Bool)

(declare-fun res!1056293 () Bool)

(assert (=> b!1539266 (=> (not res!1056293) (not e!856220))))

(assert (=> b!1539266 (= res!1056293 (and (= (size!49875 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49875 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49875 a!2792)) (not (= i!951 j!64))))))

(declare-fun lt!664966 () (_ BitVec 32))

(declare-fun b!1539267 () Bool)

(assert (=> b!1539267 (= e!856220 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (or (bvslt lt!664966 #b00000000000000000000000000000000) (bvsge lt!664966 (size!49875 a!2792)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539267 (= lt!664966 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539268 () Bool)

(declare-fun res!1056287 () Bool)

(assert (=> b!1539268 (=> (not res!1056287) (not e!856220))))

(assert (=> b!1539268 (= res!1056287 (not (= (select (arr!49324 a!2792) index!463) (select (arr!49324 a!2792) j!64))))))

(assert (= (and start!131278 res!1056294) b!1539266))

(assert (= (and b!1539266 res!1056293) b!1539262))

(assert (= (and b!1539262 res!1056291) b!1539263))

(assert (= (and b!1539263 res!1056290) b!1539264))

(assert (= (and b!1539264 res!1056292) b!1539260))

(assert (= (and b!1539260 res!1056289) b!1539261))

(assert (= (and b!1539261 res!1056286) b!1539265))

(assert (= (and b!1539265 res!1056288) b!1539268))

(assert (= (and b!1539268 res!1056287) b!1539267))

(declare-fun m!1421589 () Bool)

(assert (=> b!1539260 m!1421589))

(declare-fun m!1421591 () Bool)

(assert (=> b!1539267 m!1421591))

(declare-fun m!1421593 () Bool)

(assert (=> start!131278 m!1421593))

(declare-fun m!1421595 () Bool)

(assert (=> start!131278 m!1421595))

(declare-fun m!1421597 () Bool)

(assert (=> b!1539262 m!1421597))

(assert (=> b!1539262 m!1421597))

(declare-fun m!1421599 () Bool)

(assert (=> b!1539262 m!1421599))

(declare-fun m!1421601 () Bool)

(assert (=> b!1539265 m!1421601))

(assert (=> b!1539265 m!1421601))

(declare-fun m!1421603 () Bool)

(assert (=> b!1539265 m!1421603))

(declare-fun m!1421605 () Bool)

(assert (=> b!1539264 m!1421605))

(declare-fun m!1421607 () Bool)

(assert (=> b!1539268 m!1421607))

(assert (=> b!1539268 m!1421601))

(declare-fun m!1421609 () Bool)

(assert (=> b!1539261 m!1421609))

(assert (=> b!1539263 m!1421601))

(assert (=> b!1539263 m!1421601))

(declare-fun m!1421611 () Bool)

(assert (=> b!1539263 m!1421611))

(push 1)

(assert (not b!1539264))

(assert (not b!1539260))

(assert (not start!131278))

(assert (not b!1539263))

(assert (not b!1539267))

(assert (not b!1539265))

(assert (not b!1539262))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1539377 () Bool)

(declare-fun e!856272 () SeekEntryResult!13473)

(assert (=> b!1539377 (= e!856272 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49324 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1539378 () Bool)

(declare-fun e!856273 () SeekEntryResult!13473)

(declare-fun e!856274 () SeekEntryResult!13473)

(assert (=> b!1539378 (= e!856273 e!856274)))

(declare-fun c!141065 () Bool)

(declare-fun lt!664989 () (_ BitVec 64))

(assert (=> b!1539378 (= c!141065 (= lt!664989 (select (arr!49324 a!2792) j!64)))))

(declare-fun b!1539379 () Bool)

(assert (=> b!1539379 (= e!856272 (MissingVacant!13473 vacantIndex!5))))

(declare-fun d!160347 () Bool)

(declare-fun lt!664990 () SeekEntryResult!13473)

(assert (=> d!160347 (and (or (is-Undefined!13473 lt!664990) (not (is-Found!13473 lt!664990)) (and (bvsge (index!56287 lt!664990) #b00000000000000000000000000000000) (bvslt (index!56287 lt!664990) (size!49875 a!2792)))) (or (is-Undefined!13473 lt!664990) (is-Found!13473 lt!664990) (not (is-MissingVacant!13473 lt!664990)) (not (= (index!56289 lt!664990) vacantIndex!5)) (and (bvsge (index!56289 lt!664990) #b00000000000000000000000000000000) (bvslt (index!56289 lt!664990) (size!49875 a!2792)))) (or (is-Undefined!13473 lt!664990) (ite (is-Found!13473 lt!664990) (= (select (arr!49324 a!2792) (index!56287 lt!664990)) (select (arr!49324 a!2792) j!64)) (and (is-MissingVacant!13473 lt!664990) (= (index!56289 lt!664990) vacantIndex!5) (= (select (arr!49324 a!2792) (index!56289 lt!664990)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160347 (= lt!664990 e!856273)))

(declare-fun c!141063 () Bool)

(assert (=> d!160347 (= c!141063 (bvsge x!510 #b01111111111111111111111111111110))))

(assert (=> d!160347 (= lt!664989 (select (arr!49324 a!2792) index!463))))

(assert (=> d!160347 (validMask!0 mask!2480)))

(assert (=> d!160347 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49324 a!2792) j!64) a!2792 mask!2480) lt!664990)))

(declare-fun b!1539380 () Bool)

(assert (=> b!1539380 (= e!856273 Undefined!13473)))

(declare-fun b!1539381 () Bool)

(declare-fun c!141064 () Bool)

(assert (=> b!1539381 (= c!141064 (= lt!664989 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1539381 (= e!856274 e!856272)))

(declare-fun b!1539382 () Bool)

(assert (=> b!1539382 (= e!856274 (Found!13473 index!463))))

(assert (= (and d!160347 c!141063) b!1539380))

(assert (= (and d!160347 (not c!141063)) b!1539378))

(assert (= (and b!1539378 c!141065) b!1539382))

(assert (= (and b!1539378 (not c!141065)) b!1539381))

(assert (= (and b!1539381 c!141064) b!1539379))

(assert (= (and b!1539381 (not c!141064)) b!1539377))

(assert (=> b!1539377 m!1421591))

(assert (=> b!1539377 m!1421591))

(assert (=> b!1539377 m!1421601))

(declare-fun m!1421687 () Bool)

(assert (=> b!1539377 m!1421687))

(declare-fun m!1421689 () Bool)

(assert (=> d!160347 m!1421689))

(declare-fun m!1421691 () Bool)

(assert (=> d!160347 m!1421691))

(assert (=> d!160347 m!1421607))

(assert (=> d!160347 m!1421593))

(assert (=> b!1539265 d!160347))

(declare-fun b!1539405 () Bool)

(declare-fun e!856289 () Bool)

(declare-fun e!856292 () Bool)

(assert (=> b!1539405 (= e!856289 e!856292)))

(declare-fun c!141074 () Bool)

(assert (=> b!1539405 (= c!141074 (validKeyInArray!0 (select (arr!49324 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539406 () Bool)

(declare-fun call!68625 () Bool)

(assert (=> b!1539406 (= e!856292 call!68625)))

(declare-fun b!1539407 () Bool)

(declare-fun e!856291 () Bool)

(assert (=> b!1539407 (= e!856291 e!856289)))

(declare-fun res!1056381 () Bool)

(assert (=> b!1539407 (=> (not res!1056381) (not e!856289))))

(declare-fun e!856290 () Bool)

(assert (=> b!1539407 (= res!1056381 (not e!856290))))

(declare-fun res!1056380 () Bool)

(assert (=> b!1539407 (=> (not res!1056380) (not e!856290))))

(assert (=> b!1539407 (= res!1056380 (validKeyInArray!0 (select (arr!49324 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68622 () Bool)

(assert (=> bm!68622 (= call!68625 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141074 (Cons!35974 (select (arr!49324 a!2792) #b00000000000000000000000000000000) Nil!35975) Nil!35975)))))

(declare-fun b!1539408 () Bool)

(assert (=> b!1539408 (= e!856292 call!68625)))

(declare-fun d!160355 () Bool)

(declare-fun res!1056379 () Bool)

(assert (=> d!160355 (=> res!1056379 e!856291)))

(assert (=> d!160355 (= res!1056379 (bvsge #b00000000000000000000000000000000 (size!49875 a!2792)))))

(assert (=> d!160355 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35975) e!856291)))

(declare-fun b!1539409 () Bool)

(declare-fun contains!10027 (List!35978 (_ BitVec 64)) Bool)

(assert (=> b!1539409 (= e!856290 (contains!10027 Nil!35975 (select (arr!49324 a!2792) #b00000000000000000000000000000000)))))

(assert (= (and d!160355 (not res!1056379)) b!1539407))

(assert (= (and b!1539407 res!1056380) b!1539409))

(assert (= (and b!1539407 res!1056381) b!1539405))

(assert (= (and b!1539405 c!141074) b!1539408))

(assert (= (and b!1539405 (not c!141074)) b!1539406))

(assert (= (or b!1539408 b!1539406) bm!68622))

(declare-fun m!1421693 () Bool)

(assert (=> b!1539405 m!1421693))

(assert (=> b!1539405 m!1421693))

(declare-fun m!1421695 () Bool)

(assert (=> b!1539405 m!1421695))

(assert (=> b!1539407 m!1421693))

(assert (=> b!1539407 m!1421693))

(assert (=> b!1539407 m!1421695))

(assert (=> bm!68622 m!1421693))

(declare-fun m!1421697 () Bool)

(assert (=> bm!68622 m!1421697))

(assert (=> b!1539409 m!1421693))

(assert (=> b!1539409 m!1421693))

(declare-fun m!1421699 () Bool)

(assert (=> b!1539409 m!1421699))

(assert (=> b!1539260 d!160355))

(declare-fun d!160357 () Bool)

(declare-fun lt!664999 () (_ BitVec 32))

(assert (=> d!160357 (and (bvsge lt!664999 #b00000000000000000000000000000000) (bvslt lt!664999 (bvadd mask!2480 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!160357 (= lt!664999 (choose!52 index!463 x!510 mask!2480))))

(assert (=> d!160357 (validMask!0 mask!2480)))

(assert (=> d!160357 (= (nextIndex!0 index!463 x!510 mask!2480) lt!664999)))

(declare-fun bs!44184 () Bool)

(assert (= bs!44184 d!160357))

(declare-fun m!1421701 () Bool)

(assert (=> bs!44184 m!1421701))

(assert (=> bs!44184 m!1421593))

(assert (=> b!1539267 d!160357))

(declare-fun d!160359 () Bool)

(assert (=> d!160359 (= (validKeyInArray!0 (select (arr!49324 a!2792) i!951)) (and (not (= (select (arr!49324 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49324 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539262 d!160359))

(declare-fun d!160363 () Bool)

(assert (=> d!160363 (= (validKeyInArray!0 (select (arr!49324 a!2792) j!64)) (and (not (= (select (arr!49324 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49324 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539263 d!160363))

(declare-fun d!160365 () Bool)

(assert (=> d!160365 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131278 d!160365))

(declare-fun d!160369 () Bool)

(assert (=> d!160369 (= (array_inv!38269 a!2792) (bvsge (size!49875 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131278 d!160369))

(declare-fun b!1539442 () Bool)

(declare-fun e!856312 () Bool)

(declare-fun call!68628 () Bool)

(assert (=> b!1539442 (= e!856312 call!68628)))

(declare-fun b!1539443 () Bool)

(declare-fun e!856311 () Bool)

(declare-fun e!856313 () Bool)

(assert (=> b!1539443 (= e!856311 e!856313)))

(declare-fun c!141089 () Bool)

(assert (=> b!1539443 (= c!141089 (validKeyInArray!0 (select (arr!49324 a!2792) #b00000000000000000000000000000000)))))

(declare-fun d!160371 () Bool)

(declare-fun res!1056386 () Bool)

(assert (=> d!160371 (=> res!1056386 e!856311)))

(assert (=> d!160371 (= res!1056386 (bvsge #b00000000000000000000000000000000 (size!49875 a!2792)))))

(assert (=> d!160371 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856311)))

(declare-fun b!1539444 () Bool)

(assert (=> b!1539444 (= e!856313 call!68628)))

(declare-fun b!1539445 () Bool)

(assert (=> b!1539445 (= e!856313 e!856312)))

(declare-fun lt!665014 () (_ BitVec 64))

(assert (=> b!1539445 (= lt!665014 (select (arr!49324 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51358 0))(
  ( (Unit!51359) )
))
(declare-fun lt!665013 () Unit!51358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102231 (_ BitVec 64) (_ BitVec 32)) Unit!51358)

(assert (=> b!1539445 (= lt!665013 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!665014 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102231 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1539445 (arrayContainsKey!0 a!2792 lt!665014 #b00000000000000000000000000000000)))

(declare-fun lt!665012 () Unit!51358)

(assert (=> b!1539445 (= lt!665012 lt!665013)))

(declare-fun res!1056387 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102231 (_ BitVec 32)) SeekEntryResult!13473)

(assert (=> b!1539445 (= res!1056387 (= (seekEntryOrOpen!0 (select (arr!49324 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13473 #b00000000000000000000000000000000)))))

(assert (=> b!1539445 (=> (not res!1056387) (not e!856312))))

(declare-fun bm!68625 () Bool)

(assert (=> bm!68625 (= call!68628 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(assert (= (and d!160371 (not res!1056386)) b!1539443))

(assert (= (and b!1539443 c!141089) b!1539445))

(assert (= (and b!1539443 (not c!141089)) b!1539444))

(assert (= (and b!1539445 res!1056387) b!1539442))

(assert (= (or b!1539442 b!1539444) bm!68625))

(assert (=> b!1539443 m!1421693))

(assert (=> b!1539443 m!1421693))

(assert (=> b!1539443 m!1421695))

(assert (=> b!1539445 m!1421693))

(declare-fun m!1421715 () Bool)

(assert (=> b!1539445 m!1421715))

(declare-fun m!1421717 () Bool)

(assert (=> b!1539445 m!1421717))

(assert (=> b!1539445 m!1421693))

(declare-fun m!1421719 () Bool)

(assert (=> b!1539445 m!1421719))

(declare-fun m!1421721 () Bool)

(assert (=> bm!68625 m!1421721))

(assert (=> b!1539264 d!160371))

(push 1)

(assert (not bm!68625))

(assert (not d!160357))

(assert (not b!1539409))

(assert (not b!1539405))

(assert (not b!1539377))

(assert (not b!1539407))

(assert (not bm!68622))

(assert (not d!160347))

(assert (not b!1539443))

(assert (not b!1539445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

