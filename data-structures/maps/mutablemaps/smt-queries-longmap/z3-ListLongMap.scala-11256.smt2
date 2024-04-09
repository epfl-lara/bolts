; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131280 () Bool)

(assert start!131280)

(declare-fun b!1539287 () Bool)

(declare-fun res!1056319 () Bool)

(declare-fun e!856225 () Bool)

(assert (=> b!1539287 (=> (not res!1056319) (not e!856225))))

(declare-datatypes ((array!102233 0))(
  ( (array!102234 (arr!49325 (Array (_ BitVec 32) (_ BitVec 64))) (size!49876 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102233)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102233 (_ BitVec 32)) Bool)

(assert (=> b!1539287 (= res!1056319 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1539288 () Bool)

(declare-fun res!1056321 () Bool)

(assert (=> b!1539288 (=> (not res!1056321) (not e!856225))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1539288 (= res!1056321 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49876 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49876 a!2792)) (= (select (arr!49325 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1539289 () Bool)

(declare-fun res!1056314 () Bool)

(assert (=> b!1539289 (=> (not res!1056314) (not e!856225))))

(declare-fun j!64 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13474 0))(
  ( (MissingZero!13474 (index!56290 (_ BitVec 32))) (Found!13474 (index!56291 (_ BitVec 32))) (Intermediate!13474 (undefined!14286 Bool) (index!56292 (_ BitVec 32)) (x!138024 (_ BitVec 32))) (Undefined!13474) (MissingVacant!13474 (index!56293 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102233 (_ BitVec 32)) SeekEntryResult!13474)

(assert (=> b!1539289 (= res!1056314 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49325 a!2792) j!64) a!2792 mask!2480) (Found!13474 j!64)))))

(declare-fun b!1539291 () Bool)

(declare-fun res!1056320 () Bool)

(assert (=> b!1539291 (=> (not res!1056320) (not e!856225))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1539291 (= res!1056320 (validKeyInArray!0 (select (arr!49325 a!2792) i!951)))))

(declare-fun b!1539292 () Bool)

(declare-fun res!1056318 () Bool)

(assert (=> b!1539292 (=> (not res!1056318) (not e!856225))))

(assert (=> b!1539292 (= res!1056318 (not (= (select (arr!49325 a!2792) index!463) (select (arr!49325 a!2792) j!64))))))

(declare-fun b!1539293 () Bool)

(declare-fun res!1056315 () Bool)

(assert (=> b!1539293 (=> (not res!1056315) (not e!856225))))

(declare-datatypes ((List!35979 0))(
  ( (Nil!35976) (Cons!35975 (h!37421 (_ BitVec 64)) (t!50680 List!35979)) )
))
(declare-fun arrayNoDuplicates!0 (array!102233 (_ BitVec 32) List!35979) Bool)

(assert (=> b!1539293 (= res!1056315 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35976))))

(declare-fun b!1539290 () Bool)

(declare-fun res!1056313 () Bool)

(assert (=> b!1539290 (=> (not res!1056313) (not e!856225))))

(assert (=> b!1539290 (= res!1056313 (validKeyInArray!0 (select (arr!49325 a!2792) j!64)))))

(declare-fun res!1056317 () Bool)

(assert (=> start!131280 (=> (not res!1056317) (not e!856225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131280 (= res!1056317 (validMask!0 mask!2480))))

(assert (=> start!131280 e!856225))

(assert (=> start!131280 true))

(declare-fun array_inv!38270 (array!102233) Bool)

(assert (=> start!131280 (array_inv!38270 a!2792)))

(declare-fun b!1539294 () Bool)

(declare-fun lt!664969 () (_ BitVec 32))

(assert (=> b!1539294 (= e!856225 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (or (bvslt lt!664969 #b00000000000000000000000000000000) (bvsge lt!664969 (size!49876 a!2792)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1539294 (= lt!664969 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1539295 () Bool)

(declare-fun res!1056316 () Bool)

(assert (=> b!1539295 (=> (not res!1056316) (not e!856225))))

(assert (=> b!1539295 (= res!1056316 (and (= (size!49876 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49876 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49876 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!131280 res!1056317) b!1539295))

(assert (= (and b!1539295 res!1056316) b!1539291))

(assert (= (and b!1539291 res!1056320) b!1539290))

(assert (= (and b!1539290 res!1056313) b!1539287))

(assert (= (and b!1539287 res!1056319) b!1539293))

(assert (= (and b!1539293 res!1056315) b!1539288))

(assert (= (and b!1539288 res!1056321) b!1539289))

(assert (= (and b!1539289 res!1056314) b!1539292))

(assert (= (and b!1539292 res!1056318) b!1539294))

(declare-fun m!1421613 () Bool)

(assert (=> b!1539290 m!1421613))

(assert (=> b!1539290 m!1421613))

(declare-fun m!1421615 () Bool)

(assert (=> b!1539290 m!1421615))

(declare-fun m!1421617 () Bool)

(assert (=> b!1539291 m!1421617))

(assert (=> b!1539291 m!1421617))

(declare-fun m!1421619 () Bool)

(assert (=> b!1539291 m!1421619))

(declare-fun m!1421621 () Bool)

(assert (=> b!1539293 m!1421621))

(declare-fun m!1421623 () Bool)

(assert (=> b!1539294 m!1421623))

(declare-fun m!1421625 () Bool)

(assert (=> start!131280 m!1421625))

(declare-fun m!1421627 () Bool)

(assert (=> start!131280 m!1421627))

(declare-fun m!1421629 () Bool)

(assert (=> b!1539288 m!1421629))

(declare-fun m!1421631 () Bool)

(assert (=> b!1539292 m!1421631))

(assert (=> b!1539292 m!1421613))

(assert (=> b!1539289 m!1421613))

(assert (=> b!1539289 m!1421613))

(declare-fun m!1421633 () Bool)

(assert (=> b!1539289 m!1421633))

(declare-fun m!1421635 () Bool)

(assert (=> b!1539287 m!1421635))

(check-sat (not b!1539294) (not b!1539293) (not b!1539287) (not start!131280) (not b!1539289) (not b!1539290) (not b!1539291))
(check-sat)
(get-model)

(declare-fun b!1539332 () Bool)

(declare-fun e!856241 () Bool)

(declare-fun call!68616 () Bool)

(assert (=> b!1539332 (= e!856241 call!68616)))

(declare-fun b!1539333 () Bool)

(declare-fun e!856240 () Bool)

(assert (=> b!1539333 (= e!856240 e!856241)))

(declare-fun lt!664979 () (_ BitVec 64))

(assert (=> b!1539333 (= lt!664979 (select (arr!49325 a!2792) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51356 0))(
  ( (Unit!51357) )
))
(declare-fun lt!664980 () Unit!51356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102233 (_ BitVec 64) (_ BitVec 32)) Unit!51356)

(assert (=> b!1539333 (= lt!664980 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!664979 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102233 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1539333 (arrayContainsKey!0 a!2792 lt!664979 #b00000000000000000000000000000000)))

(declare-fun lt!664981 () Unit!51356)

(assert (=> b!1539333 (= lt!664981 lt!664980)))

(declare-fun res!1056353 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102233 (_ BitVec 32)) SeekEntryResult!13474)

(assert (=> b!1539333 (= res!1056353 (= (seekEntryOrOpen!0 (select (arr!49325 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13474 #b00000000000000000000000000000000)))))

(assert (=> b!1539333 (=> (not res!1056353) (not e!856241))))

(declare-fun b!1539334 () Bool)

(assert (=> b!1539334 (= e!856240 call!68616)))

(declare-fun bm!68613 () Bool)

(assert (=> bm!68613 (= call!68616 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1539331 () Bool)

(declare-fun e!856239 () Bool)

(assert (=> b!1539331 (= e!856239 e!856240)))

(declare-fun c!141050 () Bool)

(assert (=> b!1539331 (= c!141050 (validKeyInArray!0 (select (arr!49325 a!2792) #b00000000000000000000000000000000)))))

(declare-fun d!160341 () Bool)

(declare-fun res!1056354 () Bool)

(assert (=> d!160341 (=> res!1056354 e!856239)))

(assert (=> d!160341 (= res!1056354 (bvsge #b00000000000000000000000000000000 (size!49876 a!2792)))))

(assert (=> d!160341 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856239)))

(assert (= (and d!160341 (not res!1056354)) b!1539331))

(assert (= (and b!1539331 c!141050) b!1539333))

(assert (= (and b!1539331 (not c!141050)) b!1539334))

(assert (= (and b!1539333 res!1056353) b!1539332))

(assert (= (or b!1539332 b!1539334) bm!68613))

(declare-fun m!1421661 () Bool)

(assert (=> b!1539333 m!1421661))

(declare-fun m!1421663 () Bool)

(assert (=> b!1539333 m!1421663))

(declare-fun m!1421665 () Bool)

(assert (=> b!1539333 m!1421665))

(assert (=> b!1539333 m!1421661))

(declare-fun m!1421667 () Bool)

(assert (=> b!1539333 m!1421667))

(declare-fun m!1421669 () Bool)

(assert (=> bm!68613 m!1421669))

(assert (=> b!1539331 m!1421661))

(assert (=> b!1539331 m!1421661))

(declare-fun m!1421671 () Bool)

(assert (=> b!1539331 m!1421671))

(assert (=> b!1539287 d!160341))

(declare-fun b!1539345 () Bool)

(declare-fun e!856251 () Bool)

(declare-fun e!856253 () Bool)

(assert (=> b!1539345 (= e!856251 e!856253)))

(declare-fun res!1056361 () Bool)

(assert (=> b!1539345 (=> (not res!1056361) (not e!856253))))

(declare-fun e!856250 () Bool)

(assert (=> b!1539345 (= res!1056361 (not e!856250))))

(declare-fun res!1056363 () Bool)

(assert (=> b!1539345 (=> (not res!1056363) (not e!856250))))

(assert (=> b!1539345 (= res!1056363 (validKeyInArray!0 (select (arr!49325 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539346 () Bool)

(declare-fun e!856252 () Bool)

(assert (=> b!1539346 (= e!856253 e!856252)))

(declare-fun c!141053 () Bool)

(assert (=> b!1539346 (= c!141053 (validKeyInArray!0 (select (arr!49325 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1539347 () Bool)

(declare-fun call!68619 () Bool)

(assert (=> b!1539347 (= e!856252 call!68619)))

(declare-fun b!1539348 () Bool)

(assert (=> b!1539348 (= e!856252 call!68619)))

(declare-fun bm!68616 () Bool)

(assert (=> bm!68616 (= call!68619 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141053 (Cons!35975 (select (arr!49325 a!2792) #b00000000000000000000000000000000) Nil!35976) Nil!35976)))))

(declare-fun d!160343 () Bool)

(declare-fun res!1056362 () Bool)

(assert (=> d!160343 (=> res!1056362 e!856251)))

(assert (=> d!160343 (= res!1056362 (bvsge #b00000000000000000000000000000000 (size!49876 a!2792)))))

(assert (=> d!160343 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35976) e!856251)))

(declare-fun b!1539349 () Bool)

(declare-fun contains!10028 (List!35979 (_ BitVec 64)) Bool)

(assert (=> b!1539349 (= e!856250 (contains!10028 Nil!35976 (select (arr!49325 a!2792) #b00000000000000000000000000000000)))))

(assert (= (and d!160343 (not res!1056362)) b!1539345))

(assert (= (and b!1539345 res!1056363) b!1539349))

(assert (= (and b!1539345 res!1056361) b!1539346))

(assert (= (and b!1539346 c!141053) b!1539348))

(assert (= (and b!1539346 (not c!141053)) b!1539347))

(assert (= (or b!1539348 b!1539347) bm!68616))

(assert (=> b!1539345 m!1421661))

(assert (=> b!1539345 m!1421661))

(assert (=> b!1539345 m!1421671))

(assert (=> b!1539346 m!1421661))

(assert (=> b!1539346 m!1421661))

(assert (=> b!1539346 m!1421671))

(assert (=> bm!68616 m!1421661))

(declare-fun m!1421673 () Bool)

(assert (=> bm!68616 m!1421673))

(assert (=> b!1539349 m!1421661))

(assert (=> b!1539349 m!1421661))

(declare-fun m!1421675 () Bool)

(assert (=> b!1539349 m!1421675))

(assert (=> b!1539293 d!160343))

(declare-fun d!160345 () Bool)

(declare-fun lt!664984 () (_ BitVec 32))

(assert (=> d!160345 (and (bvsge lt!664984 #b00000000000000000000000000000000) (bvslt lt!664984 (bvadd mask!2480 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!160345 (= lt!664984 (choose!52 index!463 x!510 mask!2480))))

(assert (=> d!160345 (validMask!0 mask!2480)))

(assert (=> d!160345 (= (nextIndex!0 index!463 x!510 mask!2480) lt!664984)))

(declare-fun bs!44183 () Bool)

(assert (= bs!44183 d!160345))

(declare-fun m!1421677 () Bool)

(assert (=> bs!44183 m!1421677))

(assert (=> bs!44183 m!1421625))

(assert (=> b!1539294 d!160345))

(declare-fun b!1539410 () Bool)

(declare-fun e!856293 () SeekEntryResult!13474)

(assert (=> b!1539410 (= e!856293 (Found!13474 index!463))))

(declare-fun b!1539411 () Bool)

(declare-fun e!856294 () SeekEntryResult!13474)

(assert (=> b!1539411 (= e!856294 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49325 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1539412 () Bool)

(declare-fun e!856295 () SeekEntryResult!13474)

(assert (=> b!1539412 (= e!856295 Undefined!13474)))

(declare-fun b!1539413 () Bool)

(assert (=> b!1539413 (= e!856294 (MissingVacant!13474 vacantIndex!5))))

(declare-fun b!1539414 () Bool)

(declare-fun c!141076 () Bool)

(declare-fun lt!664997 () (_ BitVec 64))

(assert (=> b!1539414 (= c!141076 (= lt!664997 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1539414 (= e!856293 e!856294)))

(declare-fun d!160349 () Bool)

(declare-fun lt!664998 () SeekEntryResult!13474)

(get-info :version)

(assert (=> d!160349 (and (or ((_ is Undefined!13474) lt!664998) (not ((_ is Found!13474) lt!664998)) (and (bvsge (index!56291 lt!664998) #b00000000000000000000000000000000) (bvslt (index!56291 lt!664998) (size!49876 a!2792)))) (or ((_ is Undefined!13474) lt!664998) ((_ is Found!13474) lt!664998) (not ((_ is MissingVacant!13474) lt!664998)) (not (= (index!56293 lt!664998) vacantIndex!5)) (and (bvsge (index!56293 lt!664998) #b00000000000000000000000000000000) (bvslt (index!56293 lt!664998) (size!49876 a!2792)))) (or ((_ is Undefined!13474) lt!664998) (ite ((_ is Found!13474) lt!664998) (= (select (arr!49325 a!2792) (index!56291 lt!664998)) (select (arr!49325 a!2792) j!64)) (and ((_ is MissingVacant!13474) lt!664998) (= (index!56293 lt!664998) vacantIndex!5) (= (select (arr!49325 a!2792) (index!56293 lt!664998)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160349 (= lt!664998 e!856295)))

(declare-fun c!141075 () Bool)

(assert (=> d!160349 (= c!141075 (bvsge x!510 #b01111111111111111111111111111110))))

(assert (=> d!160349 (= lt!664997 (select (arr!49325 a!2792) index!463))))

(assert (=> d!160349 (validMask!0 mask!2480)))

(assert (=> d!160349 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49325 a!2792) j!64) a!2792 mask!2480) lt!664998)))

(declare-fun b!1539415 () Bool)

(assert (=> b!1539415 (= e!856295 e!856293)))

(declare-fun c!141077 () Bool)

(assert (=> b!1539415 (= c!141077 (= lt!664997 (select (arr!49325 a!2792) j!64)))))

(assert (= (and d!160349 c!141075) b!1539412))

(assert (= (and d!160349 (not c!141075)) b!1539415))

(assert (= (and b!1539415 c!141077) b!1539410))

(assert (= (and b!1539415 (not c!141077)) b!1539414))

(assert (= (and b!1539414 c!141076) b!1539413))

(assert (= (and b!1539414 (not c!141076)) b!1539411))

(assert (=> b!1539411 m!1421623))

(assert (=> b!1539411 m!1421623))

(assert (=> b!1539411 m!1421613))

(declare-fun m!1421703 () Bool)

(assert (=> b!1539411 m!1421703))

(declare-fun m!1421705 () Bool)

(assert (=> d!160349 m!1421705))

(declare-fun m!1421707 () Bool)

(assert (=> d!160349 m!1421707))

(assert (=> d!160349 m!1421631))

(assert (=> d!160349 m!1421625))

(assert (=> b!1539289 d!160349))

(declare-fun d!160361 () Bool)

(assert (=> d!160361 (= (validKeyInArray!0 (select (arr!49325 a!2792) j!64)) (and (not (= (select (arr!49325 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49325 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539290 d!160361))

(declare-fun d!160367 () Bool)

(assert (=> d!160367 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131280 d!160367))

(declare-fun d!160377 () Bool)

(assert (=> d!160377 (= (array_inv!38270 a!2792) (bvsge (size!49876 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131280 d!160377))

(declare-fun d!160379 () Bool)

(assert (=> d!160379 (= (validKeyInArray!0 (select (arr!49325 a!2792) i!951)) (and (not (= (select (arr!49325 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49325 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1539291 d!160379))

(check-sat (not b!1539349) (not bm!68613) (not b!1539331) (not b!1539411) (not b!1539346) (not d!160349) (not bm!68616) (not b!1539333) (not b!1539345) (not d!160345))
(check-sat)
