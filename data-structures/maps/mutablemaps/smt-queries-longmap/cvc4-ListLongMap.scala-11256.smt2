; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131282 () Bool)

(assert start!131282)

(declare-fun b!1539314 () Bool)

(declare-fun res!1056342 () Bool)

(declare-fun e!856232 () Bool)

(assert (=> b!1539314 (=> (not res!1056342) (not e!856232))))

(declare-datatypes ((array!102235 0))(
  ( (array!102236 (arr!49326 (Array (_ BitVec 32) (_ BitVec 64))) (size!49877 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102235)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539314 (= res!1056342 (not (= (select (arr!49326 a!2792) index!463) (select (arr!49326 a!2792) j!64))))))

(declare-fun b!1539316 () Bool)

(declare-fun res!1056346 () Bool)

(assert (=> b!1539316 (=> (not res!1056346) (not e!856232))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539316 (= res!1056346 (validKeyInArray!0 (select (arr!49326 a!2792) j!64)))))

(declare-fun b!1539317 () Bool)

(declare-fun res!1056345 () Bool)

(assert (=> b!1539317 (=> (not res!1056345) (not e!856232))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1539317 (= res!1056345 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49877 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49877 a!2792)) (= (select (arr!49326 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539318 () Bool)

(declare-fun res!1056348 () Bool)

(assert (=> b!1539318 (=> (not res!1056348) (not e!856232))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1539318 (= res!1056348 (validKeyInArray!0 (select (arr!49326 a!2792) i!951)))))

(declare-fun b!1539319 () Bool)

(declare-fun res!1056341 () Bool)

(assert (=> b!1539319 (=> (not res!1056341) (not e!856232))))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1539319 (= res!1056341 (and (= (size!49877 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49877 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49877 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1539320 () Bool)

(declare-fun lt!664972 () (_ BitVec 32))

(assert (=> b!1539320 (= e!856232 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (or (bvslt lt!664972 #b00000000000000000000000000000000) (bvsge lt!664972 (size!49877 a!2792)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539320 (= lt!664972 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun res!1056347 () Bool)

(assert (=> start!131282 (=> (not res!1056347) (not e!856232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131282 (= res!1056347 (validMask!0 mask!2480))))

(assert (=> start!131282 e!856232))

(assert (=> start!131282 true))

(declare-fun array_inv!38271 (array!102235) Bool)

(assert (=> start!131282 (array_inv!38271 a!2792)))

(declare-fun b!1539315 () Bool)

(declare-fun res!1056340 () Bool)

(assert (=> b!1539315 (=> (not res!1056340) (not e!856232))))

(declare-datatypes ((List!35980 0))(
  ( (Nil!35977) (Cons!35976 (h!37422 (_ BitVec 64)) (t!50681 List!35980)) )
))
(declare-fun arrayNoDuplicates!0 (array!102235 (_ BitVec 32) List!35980) Bool)

(assert (=> b!1539315 (= res!1056340 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35977))))

(declare-fun b!1539321 () Bool)

(declare-fun res!1056344 () Bool)

(assert (=> b!1539321 (=> (not res!1056344) (not e!856232))))

(declare-datatypes ((SeekEntryResult!13475 0))(
  ( (MissingZero!13475 (index!56294 (_ BitVec 32))) (Found!13475 (index!56295 (_ BitVec 32))) (Intermediate!13475 (undefined!14287 Bool) (index!56296 (_ BitVec 32)) (x!138025 (_ BitVec 32))) (Undefined!13475) (MissingVacant!13475 (index!56297 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102235 (_ BitVec 32)) SeekEntryResult!13475)

(assert (=> b!1539321 (= res!1056344 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49326 a!2792) j!64) a!2792 mask!2480) (Found!13475 j!64)))))

(declare-fun b!1539322 () Bool)

(declare-fun res!1056343 () Bool)

(assert (=> b!1539322 (=> (not res!1056343) (not e!856232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102235 (_ BitVec 32)) Bool)

(assert (=> b!1539322 (= res!1056343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131282 res!1056347) b!1539319))

(assert (= (and b!1539319 res!1056341) b!1539318))

(assert (= (and b!1539318 res!1056348) b!1539316))

(assert (= (and b!1539316 res!1056346) b!1539322))

(assert (= (and b!1539322 res!1056343) b!1539315))

(assert (= (and b!1539315 res!1056340) b!1539317))

(assert (= (and b!1539317 res!1056345) b!1539321))

(assert (= (and b!1539321 res!1056344) b!1539314))

(assert (= (and b!1539314 res!1056342) b!1539320))

(declare-fun m!1421637 () Bool)

(assert (=> b!1539315 m!1421637))

(declare-fun m!1421639 () Bool)

(assert (=> b!1539322 m!1421639))

(declare-fun m!1421641 () Bool)

(assert (=> b!1539314 m!1421641))

(declare-fun m!1421643 () Bool)

(assert (=> b!1539314 m!1421643))

(declare-fun m!1421645 () Bool)

(assert (=> b!1539318 m!1421645))

(assert (=> b!1539318 m!1421645))

(declare-fun m!1421647 () Bool)

(assert (=> b!1539318 m!1421647))

(declare-fun m!1421649 () Bool)

(assert (=> start!131282 m!1421649))

(declare-fun m!1421651 () Bool)

(assert (=> start!131282 m!1421651))

(assert (=> b!1539316 m!1421643))

(assert (=> b!1539316 m!1421643))

(declare-fun m!1421653 () Bool)

(assert (=> b!1539316 m!1421653))

(declare-fun m!1421655 () Bool)

(assert (=> b!1539317 m!1421655))

(assert (=> b!1539321 m!1421643))

(assert (=> b!1539321 m!1421643))

(declare-fun m!1421657 () Bool)

(assert (=> b!1539321 m!1421657))

(declare-fun m!1421659 () Bool)

(assert (=> b!1539320 m!1421659))

(push 1)

(assert (not b!1539320))

(assert (not b!1539316))

(assert (not b!1539315))

(assert (not b!1539321))

(assert (not b!1539318))

(assert (not b!1539322))

(assert (not start!131282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1539372 () Bool)

(declare-fun e!856268 () Bool)

(declare-fun contains!10029 (List!35980 (_ BitVec 64)) Bool)

(assert (=> b!1539372 (= e!856268 (contains!10029 Nil!35977 (select (arr!49326 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68619 () Bool)

(declare-fun call!68622 () Bool)

(declare-fun c!141062 () Bool)

(assert (=> bm!68619 (= call!68622 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141062 (Cons!35976 (select (arr!49326 a!2792) #b00000000000000000000000000000000) Nil!35977) Nil!35977)))))

(declare-fun d!160351 () Bool)

(declare-fun res!1056370 () Bool)

(declare-fun e!856271 () Bool)

(assert (=> d!160351 (=> res!1056370 e!856271)))

(assert (=> d!160351 (= res!1056370 (bvsge #b00000000000000000000000000000000 (size!49877 a!2792)))))

(assert (=> d!160351 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35977) e!856271)))

(declare-fun b!1539373 () Bool)

(declare-fun e!856270 () Bool)

(assert (=> b!1539373 (= e!856270 call!68622)))

(declare-fun b!1539374 () Bool)

(declare-fun e!856269 () Bool)

(assert (=> b!1539374 (= e!856269 e!856270)))

(assert (=> b!1539374 (= c!141062 (validKeyInArray!0 (select (arr!49326 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539375 () Bool)

(assert (=> b!1539375 (= e!856271 e!856269)))

(declare-fun res!1056371 () Bool)

(assert (=> b!1539375 (=> (not res!1056371) (not e!856269))))

(assert (=> b!1539375 (= res!1056371 (not e!856268))))

(declare-fun res!1056372 () Bool)

(assert (=> b!1539375 (=> (not res!1056372) (not e!856268))))

(assert (=> b!1539375 (= res!1056372 (validKeyInArray!0 (select (arr!49326 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539376 () Bool)

(assert (=> b!1539376 (= e!856270 call!68622)))

(assert (= (and d!160351 (not res!1056370)) b!1539375))

(assert (= (and b!1539375 res!1056372) b!1539372))

(assert (= (and b!1539375 res!1056371) b!1539374))

(assert (= (and b!1539374 c!141062) b!1539376))

(assert (= (and b!1539374 (not c!141062)) b!1539373))

(assert (= (or b!1539376 b!1539373) bm!68619))

(declare-fun m!1421679 () Bool)

(assert (=> b!1539372 m!1421679))

(assert (=> b!1539372 m!1421679))

(declare-fun m!1421681 () Bool)

(assert (=> b!1539372 m!1421681))

(assert (=> bm!68619 m!1421679))

(declare-fun m!1421683 () Bool)

(assert (=> bm!68619 m!1421683))

(assert (=> b!1539374 m!1421679))

(assert (=> b!1539374 m!1421679))

(declare-fun m!1421685 () Bool)

(assert (=> b!1539374 m!1421685))

(assert (=> b!1539375 m!1421679))

(assert (=> b!1539375 m!1421679))

(assert (=> b!1539375 m!1421685))

(assert (=> b!1539315 d!160351))

(declare-fun lt!665005 () SeekEntryResult!13475)

(declare-fun d!160353 () Bool)

(assert (=> d!160353 (and (or (is-Undefined!13475 lt!665005) (not (is-Found!13475 lt!665005)) (and (bvsge (index!56295 lt!665005) #b00000000000000000000000000000000) (bvslt (index!56295 lt!665005) (size!49877 a!2792)))) (or (is-Undefined!13475 lt!665005) (is-Found!13475 lt!665005) (not (is-MissingVacant!13475 lt!665005)) (not (= (index!56297 lt!665005) vacantIndex!5)) (and (bvsge (index!56297 lt!665005) #b00000000000000000000000000000000) (bvslt (index!56297 lt!665005) (size!49877 a!2792)))) (or (is-Undefined!13475 lt!665005) (ite (is-Found!13475 lt!665005) (= (select (arr!49326 a!2792) (index!56295 lt!665005)) (select (arr!49326 a!2792) j!64)) (and (is-MissingVacant!13475 lt!665005) (= (index!56297 lt!665005) vacantIndex!5) (= (select (arr!49326 a!2792) (index!56297 lt!665005)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!856302 () SeekEntryResult!13475)

(assert (=> d!160353 (= lt!665005 e!856302)))

(declare-fun c!141086 () Bool)

(assert (=> d!160353 (= c!141086 (bvsge x!510 #b01111111111111111111111111111110))))

(declare-fun lt!665004 () (_ BitVec 64))

(assert (=> d!160353 (= lt!665004 (select (arr!49326 a!2792) index!463))))

(assert (=> d!160353 (validMask!0 mask!2480)))

(assert (=> d!160353 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49326 a!2792) j!64) a!2792 mask!2480) lt!665005)))

(declare-fun b!1539428 () Bool)

(declare-fun e!856304 () SeekEntryResult!13475)

(assert (=> b!1539428 (= e!856302 e!856304)))

(declare-fun c!141084 () Bool)

(assert (=> b!1539428 (= c!141084 (= lt!665004 (select (arr!49326 a!2792) j!64)))))

(declare-fun b!1539429 () Bool)

(declare-fun e!856303 () SeekEntryResult!13475)

(assert (=> b!1539429 (= e!856303 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49326 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1539430 () Bool)

(assert (=> b!1539430 (= e!856304 (Found!13475 index!463))))

(declare-fun b!1539431 () Bool)

(assert (=> b!1539431 (= e!856302 Undefined!13475)))

(declare-fun b!1539432 () Bool)

(declare-fun c!141085 () Bool)

(assert (=> b!1539432 (= c!141085 (= lt!665004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1539432 (= e!856304 e!856303)))

(declare-fun b!1539433 () Bool)

(assert (=> b!1539433 (= e!856303 (MissingVacant!13475 vacantIndex!5))))

(assert (= (and d!160353 c!141086) b!1539431))

(assert (= (and d!160353 (not c!141086)) b!1539428))

(assert (= (and b!1539428 c!141084) b!1539430))

(assert (= (and b!1539428 (not c!141084)) b!1539432))

(assert (= (and b!1539432 c!141085) b!1539433))

(assert (= (and b!1539432 (not c!141085)) b!1539429))

(declare-fun m!1421709 () Bool)

(assert (=> d!160353 m!1421709))

(declare-fun m!1421711 () Bool)

(assert (=> d!160353 m!1421711))

(assert (=> d!160353 m!1421641))

(assert (=> d!160353 m!1421649))

(assert (=> b!1539429 m!1421659))

(assert (=> b!1539429 m!1421659))

(assert (=> b!1539429 m!1421643))

(declare-fun m!1421713 () Bool)

(assert (=> b!1539429 m!1421713))

(assert (=> b!1539321 d!160353))

(declare-fun d!160373 () Bool)

(assert (=> d!160373 (= (validKeyInArray!0 (select (arr!49326 a!2792) j!64)) (and (not (= (select (arr!49326 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49326 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539316 d!160373))

(declare-fun d!160375 () Bool)

(declare-fun res!1056392 () Bool)

(declare-fun e!856322 () Bool)

(assert (=> d!160375 (=> res!1056392 e!856322)))

(assert (=> d!160375 (= res!1056392 (bvsge #b00000000000000000000000000000000 (size!49877 a!2792)))))

(assert (=> d!160375 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856322)))

(declare-fun b!1539454 () Bool)

(declare-fun e!856321 () Bool)

(assert (=> b!1539454 (= e!856322 e!856321)))

(declare-fun c!141092 () Bool)

(assert (=> b!1539454 (= c!141092 (validKeyInArray!0 (select (arr!49326 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539455 () Bool)

(declare-fun e!856320 () Bool)

(declare-fun call!68631 () Bool)

(assert (=> b!1539455 (= e!856320 call!68631)))

(declare-fun bm!68628 () Bool)

(assert (=> bm!68628 (= call!68631 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1539456 () Bool)

(assert (=> b!1539456 (= e!856321 e!856320)))

(declare-fun lt!665023 () (_ BitVec 64))

(assert (=> b!1539456 (= lt!665023 (select (arr!49326 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51360 0))(
  ( (Unit!51361) )
))
(declare-fun lt!665022 () Unit!51360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102235 (_ BitVec 64) (_ BitVec 32)) Unit!51360)

(assert (=> b!1539456 (= lt!665022 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!665023 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1539456 (arrayContainsKey!0 a!2792 lt!665023 #b00000000000000000000000000000000)))

(declare-fun lt!665021 () Unit!51360)

(assert (=> b!1539456 (= lt!665021 lt!665022)))

(declare-fun res!1056393 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102235 (_ BitVec 32)) SeekEntryResult!13475)

(assert (=> b!1539456 (= res!1056393 (= (seekEntryOrOpen!0 (select (arr!49326 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13475 #b00000000000000000000000000000000)))))

(assert (=> b!1539456 (=> (not res!1056393) (not e!856320))))

(declare-fun b!1539457 () Bool)

(assert (=> b!1539457 (= e!856321 call!68631)))

