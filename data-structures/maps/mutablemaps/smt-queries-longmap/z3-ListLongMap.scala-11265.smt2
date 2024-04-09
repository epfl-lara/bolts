; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131418 () Bool)

(assert start!131418)

(declare-fun b!1540408 () Bool)

(declare-fun res!1057241 () Bool)

(declare-fun e!856739 () Bool)

(assert (=> b!1540408 (=> (not res!1057241) (not e!856739))))

(declare-datatypes ((array!102293 0))(
  ( (array!102294 (arr!49352 (Array (_ BitVec 32) (_ BitVec 64))) (size!49903 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102293)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540408 (= res!1057241 (validKeyInArray!0 (select (arr!49352 a!2792) j!64)))))

(declare-fun b!1540409 () Bool)

(declare-fun e!856738 () Bool)

(declare-fun e!856737 () Bool)

(assert (=> b!1540409 (= e!856738 e!856737)))

(declare-fun res!1057236 () Bool)

(assert (=> b!1540409 (=> (not res!1057236) (not e!856737))))

(declare-datatypes ((SeekEntryResult!13501 0))(
  ( (MissingZero!13501 (index!56398 (_ BitVec 32))) (Found!13501 (index!56399 (_ BitVec 32))) (Intermediate!13501 (undefined!14313 Bool) (index!56400 (_ BitVec 32)) (x!138135 (_ BitVec 32))) (Undefined!13501) (MissingVacant!13501 (index!56401 (_ BitVec 32))) )
))
(declare-fun lt!665324 () SeekEntryResult!13501)

(declare-fun lt!665323 () SeekEntryResult!13501)

(assert (=> b!1540409 (= res!1057236 (= lt!665324 lt!665323))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!665320 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102293 (_ BitVec 32)) SeekEntryResult!13501)

(assert (=> b!1540409 (= lt!665324 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665320 vacantIndex!5 (select (arr!49352 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540410 () Bool)

(declare-fun res!1057237 () Bool)

(assert (=> b!1540410 (=> (not res!1057237) (not e!856739))))

(declare-datatypes ((List!36006 0))(
  ( (Nil!36003) (Cons!36002 (h!37448 (_ BitVec 64)) (t!50707 List!36006)) )
))
(declare-fun arrayNoDuplicates!0 (array!102293 (_ BitVec 32) List!36006) Bool)

(assert (=> b!1540410 (= res!1057237 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!36003))))

(declare-fun b!1540411 () Bool)

(declare-fun e!856736 () Bool)

(assert (=> b!1540411 (= e!856739 e!856736)))

(declare-fun res!1057243 () Bool)

(assert (=> b!1540411 (=> (not res!1057243) (not e!856736))))

(declare-fun lt!665326 () SeekEntryResult!13501)

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1540411 (= res!1057243 (and (= lt!665326 lt!665323) (not (= (select (arr!49352 a!2792) index!463) (select (arr!49352 a!2792) j!64)))))))

(assert (=> b!1540411 (= lt!665323 (Found!13501 j!64))))

(assert (=> b!1540411 (= lt!665326 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49352 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540412 () Bool)

(declare-fun res!1057239 () Bool)

(assert (=> b!1540412 (=> (not res!1057239) (not e!856739))))

(assert (=> b!1540412 (= res!1057239 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49903 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49903 a!2792)) (= (select (arr!49352 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540413 () Bool)

(declare-fun res!1057238 () Bool)

(assert (=> b!1540413 (=> (not res!1057238) (not e!856739))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1540413 (= res!1057238 (and (= (size!49903 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49903 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49903 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540414 () Bool)

(declare-fun lt!665325 () array!102293)

(declare-fun lt!665321 () (_ BitVec 64))

(assert (=> b!1540414 (= e!856737 (not (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 lt!665321 lt!665325 mask!2480) lt!665326)))))

(assert (=> b!1540414 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665320 vacantIndex!5 lt!665321 lt!665325 mask!2480) lt!665324)))

(assert (=> b!1540414 (= lt!665321 (select (store (arr!49352 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64))))

(assert (=> b!1540414 (= lt!665325 (array!102294 (store (arr!49352 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49903 a!2792)))))

(declare-datatypes ((Unit!51394 0))(
  ( (Unit!51395) )
))
(declare-fun lt!665322 () Unit!51394)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51394)

(assert (=> b!1540414 (= lt!665322 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665320 vacantIndex!5 mask!2480))))

(declare-fun res!1057245 () Bool)

(assert (=> start!131418 (=> (not res!1057245) (not e!856739))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131418 (= res!1057245 (validMask!0 mask!2480))))

(assert (=> start!131418 e!856739))

(assert (=> start!131418 true))

(declare-fun array_inv!38297 (array!102293) Bool)

(assert (=> start!131418 (array_inv!38297 a!2792)))

(declare-fun b!1540415 () Bool)

(assert (=> b!1540415 (= e!856736 e!856738)))

(declare-fun res!1057242 () Bool)

(assert (=> b!1540415 (=> (not res!1057242) (not e!856738))))

(assert (=> b!1540415 (= res!1057242 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665320 #b00000000000000000000000000000000) (bvslt lt!665320 (size!49903 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540415 (= lt!665320 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540416 () Bool)

(declare-fun res!1057244 () Bool)

(assert (=> b!1540416 (=> (not res!1057244) (not e!856739))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102293 (_ BitVec 32)) Bool)

(assert (=> b!1540416 (= res!1057244 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540417 () Bool)

(declare-fun res!1057240 () Bool)

(assert (=> b!1540417 (=> (not res!1057240) (not e!856739))))

(assert (=> b!1540417 (= res!1057240 (validKeyInArray!0 (select (arr!49352 a!2792) i!951)))))

(assert (= (and start!131418 res!1057245) b!1540413))

(assert (= (and b!1540413 res!1057238) b!1540417))

(assert (= (and b!1540417 res!1057240) b!1540408))

(assert (= (and b!1540408 res!1057241) b!1540416))

(assert (= (and b!1540416 res!1057244) b!1540410))

(assert (= (and b!1540410 res!1057237) b!1540412))

(assert (= (and b!1540412 res!1057239) b!1540411))

(assert (= (and b!1540411 res!1057243) b!1540415))

(assert (= (and b!1540415 res!1057242) b!1540409))

(assert (= (and b!1540409 res!1057236) b!1540414))

(declare-fun m!1422579 () Bool)

(assert (=> start!131418 m!1422579))

(declare-fun m!1422581 () Bool)

(assert (=> start!131418 m!1422581))

(declare-fun m!1422583 () Bool)

(assert (=> b!1540409 m!1422583))

(assert (=> b!1540409 m!1422583))

(declare-fun m!1422585 () Bool)

(assert (=> b!1540409 m!1422585))

(declare-fun m!1422587 () Bool)

(assert (=> b!1540414 m!1422587))

(declare-fun m!1422589 () Bool)

(assert (=> b!1540414 m!1422589))

(declare-fun m!1422591 () Bool)

(assert (=> b!1540414 m!1422591))

(declare-fun m!1422593 () Bool)

(assert (=> b!1540414 m!1422593))

(declare-fun m!1422595 () Bool)

(assert (=> b!1540414 m!1422595))

(declare-fun m!1422597 () Bool)

(assert (=> b!1540410 m!1422597))

(declare-fun m!1422599 () Bool)

(assert (=> b!1540412 m!1422599))

(declare-fun m!1422601 () Bool)

(assert (=> b!1540415 m!1422601))

(assert (=> b!1540408 m!1422583))

(assert (=> b!1540408 m!1422583))

(declare-fun m!1422603 () Bool)

(assert (=> b!1540408 m!1422603))

(declare-fun m!1422605 () Bool)

(assert (=> b!1540411 m!1422605))

(assert (=> b!1540411 m!1422583))

(assert (=> b!1540411 m!1422583))

(declare-fun m!1422607 () Bool)

(assert (=> b!1540411 m!1422607))

(declare-fun m!1422609 () Bool)

(assert (=> b!1540417 m!1422609))

(assert (=> b!1540417 m!1422609))

(declare-fun m!1422611 () Bool)

(assert (=> b!1540417 m!1422611))

(declare-fun m!1422613 () Bool)

(assert (=> b!1540416 m!1422613))

(check-sat (not b!1540417) (not b!1540411) (not b!1540415) (not b!1540410) (not b!1540408) (not b!1540416) (not b!1540409) (not start!131418) (not b!1540414))
(check-sat)
(get-model)

(declare-fun b!1540460 () Bool)

(declare-fun e!856762 () SeekEntryResult!13501)

(assert (=> b!1540460 (= e!856762 Undefined!13501)))

(declare-fun lt!665353 () SeekEntryResult!13501)

(declare-fun d!160461 () Bool)

(get-info :version)

(assert (=> d!160461 (and (or ((_ is Undefined!13501) lt!665353) (not ((_ is Found!13501) lt!665353)) (and (bvsge (index!56399 lt!665353) #b00000000000000000000000000000000) (bvslt (index!56399 lt!665353) (size!49903 a!2792)))) (or ((_ is Undefined!13501) lt!665353) ((_ is Found!13501) lt!665353) (not ((_ is MissingVacant!13501) lt!665353)) (not (= (index!56401 lt!665353) vacantIndex!5)) (and (bvsge (index!56401 lt!665353) #b00000000000000000000000000000000) (bvslt (index!56401 lt!665353) (size!49903 a!2792)))) (or ((_ is Undefined!13501) lt!665353) (ite ((_ is Found!13501) lt!665353) (= (select (arr!49352 a!2792) (index!56399 lt!665353)) (select (arr!49352 a!2792) j!64)) (and ((_ is MissingVacant!13501) lt!665353) (= (index!56401 lt!665353) vacantIndex!5) (= (select (arr!49352 a!2792) (index!56401 lt!665353)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160461 (= lt!665353 e!856762)))

(declare-fun c!141153 () Bool)

(assert (=> d!160461 (= c!141153 (bvsge x!510 #b01111111111111111111111111111110))))

(declare-fun lt!665352 () (_ BitVec 64))

(assert (=> d!160461 (= lt!665352 (select (arr!49352 a!2792) index!463))))

(assert (=> d!160461 (validMask!0 mask!2480)))

(assert (=> d!160461 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49352 a!2792) j!64) a!2792 mask!2480) lt!665353)))

(declare-fun b!1540461 () Bool)

(declare-fun e!856761 () SeekEntryResult!13501)

(assert (=> b!1540461 (= e!856761 (MissingVacant!13501 vacantIndex!5))))

(declare-fun b!1540462 () Bool)

(declare-fun e!856763 () SeekEntryResult!13501)

(assert (=> b!1540462 (= e!856763 (Found!13501 index!463))))

(declare-fun b!1540463 () Bool)

(assert (=> b!1540463 (= e!856761 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 (select (arr!49352 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540464 () Bool)

(assert (=> b!1540464 (= e!856762 e!856763)))

(declare-fun c!141154 () Bool)

(assert (=> b!1540464 (= c!141154 (= lt!665352 (select (arr!49352 a!2792) j!64)))))

(declare-fun b!1540465 () Bool)

(declare-fun c!141155 () Bool)

(assert (=> b!1540465 (= c!141155 (= lt!665352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1540465 (= e!856763 e!856761)))

(assert (= (and d!160461 c!141153) b!1540460))

(assert (= (and d!160461 (not c!141153)) b!1540464))

(assert (= (and b!1540464 c!141154) b!1540462))

(assert (= (and b!1540464 (not c!141154)) b!1540465))

(assert (= (and b!1540465 c!141155) b!1540461))

(assert (= (and b!1540465 (not c!141155)) b!1540463))

(declare-fun m!1422651 () Bool)

(assert (=> d!160461 m!1422651))

(declare-fun m!1422653 () Bool)

(assert (=> d!160461 m!1422653))

(assert (=> d!160461 m!1422605))

(assert (=> d!160461 m!1422579))

(assert (=> b!1540463 m!1422601))

(assert (=> b!1540463 m!1422601))

(assert (=> b!1540463 m!1422583))

(declare-fun m!1422655 () Bool)

(assert (=> b!1540463 m!1422655))

(assert (=> b!1540411 d!160461))

(declare-fun b!1540474 () Bool)

(declare-fun e!856771 () Bool)

(declare-fun call!68652 () Bool)

(assert (=> b!1540474 (= e!856771 call!68652)))

(declare-fun b!1540475 () Bool)

(declare-fun e!856770 () Bool)

(assert (=> b!1540475 (= e!856771 e!856770)))

(declare-fun lt!665362 () (_ BitVec 64))

(assert (=> b!1540475 (= lt!665362 (select (arr!49352 a!2792) #b00000000000000000000000000000000))))

(declare-fun lt!665360 () Unit!51394)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102293 (_ BitVec 64) (_ BitVec 32)) Unit!51394)

(assert (=> b!1540475 (= lt!665360 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2792 lt!665362 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1540475 (arrayContainsKey!0 a!2792 lt!665362 #b00000000000000000000000000000000)))

(declare-fun lt!665361 () Unit!51394)

(assert (=> b!1540475 (= lt!665361 lt!665360)))

(declare-fun res!1057281 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102293 (_ BitVec 32)) SeekEntryResult!13501)

(assert (=> b!1540475 (= res!1057281 (= (seekEntryOrOpen!0 (select (arr!49352 a!2792) #b00000000000000000000000000000000) a!2792 mask!2480) (Found!13501 #b00000000000000000000000000000000)))))

(assert (=> b!1540475 (=> (not res!1057281) (not e!856770))))

(declare-fun d!160463 () Bool)

(declare-fun res!1057280 () Bool)

(declare-fun e!856772 () Bool)

(assert (=> d!160463 (=> res!1057280 e!856772)))

(assert (=> d!160463 (= res!1057280 (bvsge #b00000000000000000000000000000000 (size!49903 a!2792)))))

(assert (=> d!160463 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480) e!856772)))

(declare-fun b!1540476 () Bool)

(assert (=> b!1540476 (= e!856772 e!856771)))

(declare-fun c!141158 () Bool)

(assert (=> b!1540476 (= c!141158 (validKeyInArray!0 (select (arr!49352 a!2792) #b00000000000000000000000000000000)))))

(declare-fun bm!68649 () Bool)

(assert (=> bm!68649 (= call!68652 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2792 mask!2480))))

(declare-fun b!1540477 () Bool)

(assert (=> b!1540477 (= e!856770 call!68652)))

(assert (= (and d!160463 (not res!1057280)) b!1540476))

(assert (= (and b!1540476 c!141158) b!1540475))

(assert (= (and b!1540476 (not c!141158)) b!1540474))

(assert (= (and b!1540475 res!1057281) b!1540477))

(assert (= (or b!1540477 b!1540474) bm!68649))

(declare-fun m!1422657 () Bool)

(assert (=> b!1540475 m!1422657))

(declare-fun m!1422659 () Bool)

(assert (=> b!1540475 m!1422659))

(declare-fun m!1422661 () Bool)

(assert (=> b!1540475 m!1422661))

(assert (=> b!1540475 m!1422657))

(declare-fun m!1422663 () Bool)

(assert (=> b!1540475 m!1422663))

(assert (=> b!1540476 m!1422657))

(assert (=> b!1540476 m!1422657))

(declare-fun m!1422665 () Bool)

(assert (=> b!1540476 m!1422665))

(declare-fun m!1422667 () Bool)

(assert (=> bm!68649 m!1422667))

(assert (=> b!1540416 d!160463))

(declare-fun d!160465 () Bool)

(assert (=> d!160465 (= (validKeyInArray!0 (select (arr!49352 a!2792) i!951)) (and (not (= (select (arr!49352 a!2792) i!951) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49352 a!2792) i!951) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1540417 d!160465))

(declare-fun d!160467 () Bool)

(assert (=> d!160467 (= (validMask!0 mask!2480) (and (or (= mask!2480 #b00000000000000000000000000000111) (= mask!2480 #b00000000000000000000000000001111) (= mask!2480 #b00000000000000000000000000011111) (= mask!2480 #b00000000000000000000000000111111) (= mask!2480 #b00000000000000000000000001111111) (= mask!2480 #b00000000000000000000000011111111) (= mask!2480 #b00000000000000000000000111111111) (= mask!2480 #b00000000000000000000001111111111) (= mask!2480 #b00000000000000000000011111111111) (= mask!2480 #b00000000000000000000111111111111) (= mask!2480 #b00000000000000000001111111111111) (= mask!2480 #b00000000000000000011111111111111) (= mask!2480 #b00000000000000000111111111111111) (= mask!2480 #b00000000000000001111111111111111) (= mask!2480 #b00000000000000011111111111111111) (= mask!2480 #b00000000000000111111111111111111) (= mask!2480 #b00000000000001111111111111111111) (= mask!2480 #b00000000000011111111111111111111) (= mask!2480 #b00000000000111111111111111111111) (= mask!2480 #b00000000001111111111111111111111) (= mask!2480 #b00000000011111111111111111111111) (= mask!2480 #b00000000111111111111111111111111) (= mask!2480 #b00000001111111111111111111111111) (= mask!2480 #b00000011111111111111111111111111) (= mask!2480 #b00000111111111111111111111111111) (= mask!2480 #b00001111111111111111111111111111) (= mask!2480 #b00011111111111111111111111111111) (= mask!2480 #b00111111111111111111111111111111)) (bvsle mask!2480 #b00111111111111111111111111111111)))))

(assert (=> start!131418 d!160467))

(declare-fun d!160477 () Bool)

(assert (=> d!160477 (= (array_inv!38297 a!2792) (bvsge (size!49903 a!2792) #b00000000000000000000000000000000))))

(assert (=> start!131418 d!160477))

(declare-fun b!1540478 () Bool)

(declare-fun e!856774 () SeekEntryResult!13501)

(assert (=> b!1540478 (= e!856774 Undefined!13501)))

(declare-fun lt!665367 () SeekEntryResult!13501)

(declare-fun d!160479 () Bool)

(assert (=> d!160479 (and (or ((_ is Undefined!13501) lt!665367) (not ((_ is Found!13501) lt!665367)) (and (bvsge (index!56399 lt!665367) #b00000000000000000000000000000000) (bvslt (index!56399 lt!665367) (size!49903 lt!665325)))) (or ((_ is Undefined!13501) lt!665367) ((_ is Found!13501) lt!665367) (not ((_ is MissingVacant!13501) lt!665367)) (not (= (index!56401 lt!665367) vacantIndex!5)) (and (bvsge (index!56401 lt!665367) #b00000000000000000000000000000000) (bvslt (index!56401 lt!665367) (size!49903 lt!665325)))) (or ((_ is Undefined!13501) lt!665367) (ite ((_ is Found!13501) lt!665367) (= (select (arr!49352 lt!665325) (index!56399 lt!665367)) lt!665321) (and ((_ is MissingVacant!13501) lt!665367) (= (index!56401 lt!665367) vacantIndex!5) (= (select (arr!49352 lt!665325) (index!56401 lt!665367)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160479 (= lt!665367 e!856774)))

(declare-fun c!141159 () Bool)

(assert (=> d!160479 (= c!141159 (bvsge x!510 #b01111111111111111111111111111110))))

(declare-fun lt!665366 () (_ BitVec 64))

(assert (=> d!160479 (= lt!665366 (select (arr!49352 lt!665325) index!463))))

(assert (=> d!160479 (validMask!0 mask!2480)))

(assert (=> d!160479 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 lt!665321 lt!665325 mask!2480) lt!665367)))

(declare-fun b!1540479 () Bool)

(declare-fun e!856773 () SeekEntryResult!13501)

(assert (=> b!1540479 (= e!856773 (MissingVacant!13501 vacantIndex!5))))

(declare-fun b!1540480 () Bool)

(declare-fun e!856775 () SeekEntryResult!13501)

(assert (=> b!1540480 (= e!856775 (Found!13501 index!463))))

(declare-fun b!1540481 () Bool)

(assert (=> b!1540481 (= e!856773 (seekKeyOrZeroReturnVacant!0 (bvadd x!510 #b00000000000000000000000000000001) (nextIndex!0 index!463 x!510 mask!2480) vacantIndex!5 lt!665321 lt!665325 mask!2480))))

(declare-fun b!1540482 () Bool)

(assert (=> b!1540482 (= e!856774 e!856775)))

(declare-fun c!141160 () Bool)

(assert (=> b!1540482 (= c!141160 (= lt!665366 lt!665321))))

(declare-fun b!1540483 () Bool)

(declare-fun c!141161 () Bool)

(assert (=> b!1540483 (= c!141161 (= lt!665366 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1540483 (= e!856775 e!856773)))

(assert (= (and d!160479 c!141159) b!1540478))

(assert (= (and d!160479 (not c!141159)) b!1540482))

(assert (= (and b!1540482 c!141160) b!1540480))

(assert (= (and b!1540482 (not c!141160)) b!1540483))

(assert (= (and b!1540483 c!141161) b!1540479))

(assert (= (and b!1540483 (not c!141161)) b!1540481))

(declare-fun m!1422671 () Bool)

(assert (=> d!160479 m!1422671))

(declare-fun m!1422673 () Bool)

(assert (=> d!160479 m!1422673))

(declare-fun m!1422675 () Bool)

(assert (=> d!160479 m!1422675))

(assert (=> d!160479 m!1422579))

(assert (=> b!1540481 m!1422601))

(assert (=> b!1540481 m!1422601))

(declare-fun m!1422677 () Bool)

(assert (=> b!1540481 m!1422677))

(assert (=> b!1540414 d!160479))

(declare-fun b!1540484 () Bool)

(declare-fun e!856777 () SeekEntryResult!13501)

(assert (=> b!1540484 (= e!856777 Undefined!13501)))

(declare-fun lt!665369 () SeekEntryResult!13501)

(declare-fun d!160481 () Bool)

(assert (=> d!160481 (and (or ((_ is Undefined!13501) lt!665369) (not ((_ is Found!13501) lt!665369)) (and (bvsge (index!56399 lt!665369) #b00000000000000000000000000000000) (bvslt (index!56399 lt!665369) (size!49903 lt!665325)))) (or ((_ is Undefined!13501) lt!665369) ((_ is Found!13501) lt!665369) (not ((_ is MissingVacant!13501) lt!665369)) (not (= (index!56401 lt!665369) vacantIndex!5)) (and (bvsge (index!56401 lt!665369) #b00000000000000000000000000000000) (bvslt (index!56401 lt!665369) (size!49903 lt!665325)))) (or ((_ is Undefined!13501) lt!665369) (ite ((_ is Found!13501) lt!665369) (= (select (arr!49352 lt!665325) (index!56399 lt!665369)) lt!665321) (and ((_ is MissingVacant!13501) lt!665369) (= (index!56401 lt!665369) vacantIndex!5) (= (select (arr!49352 lt!665325) (index!56401 lt!665369)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160481 (= lt!665369 e!856777)))

(declare-fun c!141162 () Bool)

(assert (=> d!160481 (= c!141162 (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110))))

(declare-fun lt!665368 () (_ BitVec 64))

(assert (=> d!160481 (= lt!665368 (select (arr!49352 lt!665325) lt!665320))))

(assert (=> d!160481 (validMask!0 mask!2480)))

(assert (=> d!160481 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665320 vacantIndex!5 lt!665321 lt!665325 mask!2480) lt!665369)))

(declare-fun b!1540485 () Bool)

(declare-fun e!856776 () SeekEntryResult!13501)

(assert (=> b!1540485 (= e!856776 (MissingVacant!13501 vacantIndex!5))))

(declare-fun b!1540486 () Bool)

(declare-fun e!856778 () SeekEntryResult!13501)

(assert (=> b!1540486 (= e!856778 (Found!13501 lt!665320))))

(declare-fun b!1540487 () Bool)

(assert (=> b!1540487 (= e!856776 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510 #b00000000000000000000000000000001) (nextIndex!0 lt!665320 (bvadd #b00000000000000000000000000000001 x!510) mask!2480) vacantIndex!5 lt!665321 lt!665325 mask!2480))))

(declare-fun b!1540488 () Bool)

(assert (=> b!1540488 (= e!856777 e!856778)))

(declare-fun c!141163 () Bool)

(assert (=> b!1540488 (= c!141163 (= lt!665368 lt!665321))))

(declare-fun b!1540489 () Bool)

(declare-fun c!141164 () Bool)

(assert (=> b!1540489 (= c!141164 (= lt!665368 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1540489 (= e!856778 e!856776)))

(assert (= (and d!160481 c!141162) b!1540484))

(assert (= (and d!160481 (not c!141162)) b!1540488))

(assert (= (and b!1540488 c!141163) b!1540486))

(assert (= (and b!1540488 (not c!141163)) b!1540489))

(assert (= (and b!1540489 c!141164) b!1540485))

(assert (= (and b!1540489 (not c!141164)) b!1540487))

(declare-fun m!1422679 () Bool)

(assert (=> d!160481 m!1422679))

(declare-fun m!1422681 () Bool)

(assert (=> d!160481 m!1422681))

(declare-fun m!1422683 () Bool)

(assert (=> d!160481 m!1422683))

(assert (=> d!160481 m!1422579))

(declare-fun m!1422685 () Bool)

(assert (=> b!1540487 m!1422685))

(assert (=> b!1540487 m!1422685))

(declare-fun m!1422687 () Bool)

(assert (=> b!1540487 m!1422687))

(assert (=> b!1540414 d!160481))

(declare-fun d!160483 () Bool)

(declare-fun e!856802 () Bool)

(assert (=> d!160483 e!856802))

(declare-fun res!1057284 () Bool)

(assert (=> d!160483 (=> (not res!1057284) (not e!856802))))

(assert (=> d!160483 (= res!1057284 (and (or (bvslt i!951 #b00000000000000000000000000000000) (bvsge i!951 (size!49903 a!2792)) (and (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49903 a!2792)))) (or (bvslt i!951 #b00000000000000000000000000000000) (bvsge i!951 (size!49903 a!2792)) (and (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49903 a!2792)))) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49903 a!2792))))))

(declare-fun lt!665386 () Unit!51394)

(declare-fun choose!81 (array!102293 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51394)

(assert (=> d!160483 (= lt!665386 (choose!81 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665320 vacantIndex!5 mask!2480))))

(assert (=> d!160483 (validMask!0 mask!2480)))

(assert (=> d!160483 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665320 vacantIndex!5 mask!2480) lt!665386)))

(declare-fun b!1540534 () Bool)

(assert (=> b!1540534 (= e!856802 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665320 vacantIndex!5 (select (store (arr!49352 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102294 (store (arr!49352 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49903 a!2792)) mask!2480) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665320 vacantIndex!5 (select (arr!49352 a!2792) j!64) a!2792 mask!2480)))))

(assert (= (and d!160483 res!1057284) b!1540534))

(declare-fun m!1422713 () Bool)

(assert (=> d!160483 m!1422713))

(assert (=> d!160483 m!1422579))

(assert (=> b!1540534 m!1422583))

(assert (=> b!1540534 m!1422585))

(assert (=> b!1540534 m!1422583))

(assert (=> b!1540534 m!1422587))

(declare-fun m!1422715 () Bool)

(assert (=> b!1540534 m!1422715))

(assert (=> b!1540534 m!1422589))

(assert (=> b!1540534 m!1422587))

(assert (=> b!1540414 d!160483))

(declare-fun d!160491 () Bool)

(assert (=> d!160491 (= (validKeyInArray!0 (select (arr!49352 a!2792) j!64)) (and (not (= (select (arr!49352 a!2792) j!64) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49352 a!2792) j!64) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1540408 d!160491))

(declare-fun d!160493 () Bool)

(declare-fun lt!665389 () (_ BitVec 32))

(assert (=> d!160493 (and (bvsge lt!665389 #b00000000000000000000000000000000) (bvslt lt!665389 (bvadd mask!2480 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!160493 (= lt!665389 (choose!52 index!463 x!510 mask!2480))))

(assert (=> d!160493 (validMask!0 mask!2480)))

(assert (=> d!160493 (= (nextIndex!0 index!463 x!510 mask!2480) lt!665389)))

(declare-fun bs!44217 () Bool)

(assert (= bs!44217 d!160493))

(declare-fun m!1422717 () Bool)

(assert (=> bs!44217 m!1422717))

(assert (=> bs!44217 m!1422579))

(assert (=> b!1540415 d!160493))

(declare-fun b!1540565 () Bool)

(declare-fun e!856826 () Bool)

(declare-fun contains!10033 (List!36006 (_ BitVec 64)) Bool)

(assert (=> b!1540565 (= e!856826 (contains!10033 Nil!36003 (select (arr!49352 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1540566 () Bool)

(declare-fun e!856828 () Bool)

(declare-fun e!856825 () Bool)

(assert (=> b!1540566 (= e!856828 e!856825)))

(declare-fun c!141194 () Bool)

(assert (=> b!1540566 (= c!141194 (validKeyInArray!0 (select (arr!49352 a!2792) #b00000000000000000000000000000000)))))

(declare-fun b!1540567 () Bool)

(declare-fun call!68658 () Bool)

(assert (=> b!1540567 (= e!856825 call!68658)))

(declare-fun bm!68655 () Bool)

(assert (=> bm!68655 (= call!68658 (arrayNoDuplicates!0 a!2792 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!141194 (Cons!36002 (select (arr!49352 a!2792) #b00000000000000000000000000000000) Nil!36003) Nil!36003)))))

(declare-fun d!160495 () Bool)

(declare-fun res!1057300 () Bool)

(declare-fun e!856827 () Bool)

(assert (=> d!160495 (=> res!1057300 e!856827)))

(assert (=> d!160495 (= res!1057300 (bvsge #b00000000000000000000000000000000 (size!49903 a!2792)))))

(assert (=> d!160495 (= (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!36003) e!856827)))

(declare-fun b!1540568 () Bool)

(assert (=> b!1540568 (= e!856825 call!68658)))

(declare-fun b!1540569 () Bool)

(assert (=> b!1540569 (= e!856827 e!856828)))

(declare-fun res!1057299 () Bool)

(assert (=> b!1540569 (=> (not res!1057299) (not e!856828))))

(assert (=> b!1540569 (= res!1057299 (not e!856826))))

(declare-fun res!1057301 () Bool)

(assert (=> b!1540569 (=> (not res!1057301) (not e!856826))))

(assert (=> b!1540569 (= res!1057301 (validKeyInArray!0 (select (arr!49352 a!2792) #b00000000000000000000000000000000)))))

(assert (= (and d!160495 (not res!1057300)) b!1540569))

(assert (= (and b!1540569 res!1057301) b!1540565))

(assert (= (and b!1540569 res!1057299) b!1540566))

(assert (= (and b!1540566 c!141194) b!1540568))

(assert (= (and b!1540566 (not c!141194)) b!1540567))

(assert (= (or b!1540568 b!1540567) bm!68655))

(assert (=> b!1540565 m!1422657))

(assert (=> b!1540565 m!1422657))

(declare-fun m!1422741 () Bool)

(assert (=> b!1540565 m!1422741))

(assert (=> b!1540566 m!1422657))

(assert (=> b!1540566 m!1422657))

(assert (=> b!1540566 m!1422665))

(assert (=> bm!68655 m!1422657))

(declare-fun m!1422743 () Bool)

(assert (=> bm!68655 m!1422743))

(assert (=> b!1540569 m!1422657))

(assert (=> b!1540569 m!1422657))

(assert (=> b!1540569 m!1422665))

(assert (=> b!1540410 d!160495))

(declare-fun b!1540571 () Bool)

(declare-fun e!856831 () SeekEntryResult!13501)

(assert (=> b!1540571 (= e!856831 Undefined!13501)))

(declare-fun d!160501 () Bool)

(declare-fun lt!665405 () SeekEntryResult!13501)

(assert (=> d!160501 (and (or ((_ is Undefined!13501) lt!665405) (not ((_ is Found!13501) lt!665405)) (and (bvsge (index!56399 lt!665405) #b00000000000000000000000000000000) (bvslt (index!56399 lt!665405) (size!49903 a!2792)))) (or ((_ is Undefined!13501) lt!665405) ((_ is Found!13501) lt!665405) (not ((_ is MissingVacant!13501) lt!665405)) (not (= (index!56401 lt!665405) vacantIndex!5)) (and (bvsge (index!56401 lt!665405) #b00000000000000000000000000000000) (bvslt (index!56401 lt!665405) (size!49903 a!2792)))) (or ((_ is Undefined!13501) lt!665405) (ite ((_ is Found!13501) lt!665405) (= (select (arr!49352 a!2792) (index!56399 lt!665405)) (select (arr!49352 a!2792) j!64)) (and ((_ is MissingVacant!13501) lt!665405) (= (index!56401 lt!665405) vacantIndex!5) (= (select (arr!49352 a!2792) (index!56401 lt!665405)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!160501 (= lt!665405 e!856831)))

(declare-fun c!141195 () Bool)

(assert (=> d!160501 (= c!141195 (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110))))

(declare-fun lt!665404 () (_ BitVec 64))

(assert (=> d!160501 (= lt!665404 (select (arr!49352 a!2792) lt!665320))))

(assert (=> d!160501 (validMask!0 mask!2480)))

(assert (=> d!160501 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665320 vacantIndex!5 (select (arr!49352 a!2792) j!64) a!2792 mask!2480) lt!665405)))

(declare-fun b!1540572 () Bool)

(declare-fun e!856830 () SeekEntryResult!13501)

(assert (=> b!1540572 (= e!856830 (MissingVacant!13501 vacantIndex!5))))

(declare-fun b!1540573 () Bool)

(declare-fun e!856832 () SeekEntryResult!13501)

(assert (=> b!1540573 (= e!856832 (Found!13501 lt!665320))))

(declare-fun b!1540574 () Bool)

(assert (=> b!1540574 (= e!856830 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510 #b00000000000000000000000000000001) (nextIndex!0 lt!665320 (bvadd #b00000000000000000000000000000001 x!510) mask!2480) vacantIndex!5 (select (arr!49352 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540575 () Bool)

(assert (=> b!1540575 (= e!856831 e!856832)))

(declare-fun c!141196 () Bool)

(assert (=> b!1540575 (= c!141196 (= lt!665404 (select (arr!49352 a!2792) j!64)))))

(declare-fun b!1540576 () Bool)

(declare-fun c!141197 () Bool)

(assert (=> b!1540576 (= c!141197 (= lt!665404 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1540576 (= e!856832 e!856830)))

(assert (= (and d!160501 c!141195) b!1540571))

(assert (= (and d!160501 (not c!141195)) b!1540575))

(assert (= (and b!1540575 c!141196) b!1540573))

(assert (= (and b!1540575 (not c!141196)) b!1540576))

(assert (= (and b!1540576 c!141197) b!1540572))

(assert (= (and b!1540576 (not c!141197)) b!1540574))

(declare-fun m!1422747 () Bool)

(assert (=> d!160501 m!1422747))

(declare-fun m!1422749 () Bool)

(assert (=> d!160501 m!1422749))

(declare-fun m!1422753 () Bool)

(assert (=> d!160501 m!1422753))

(assert (=> d!160501 m!1422579))

(assert (=> b!1540574 m!1422685))

(assert (=> b!1540574 m!1422685))

(assert (=> b!1540574 m!1422583))

(declare-fun m!1422755 () Bool)

(assert (=> b!1540574 m!1422755))

(assert (=> b!1540409 d!160501))

(check-sat (not b!1540463) (not b!1540487) (not b!1540475) (not d!160483) (not b!1540476) (not b!1540481) (not b!1540566) (not d!160461) (not d!160481) (not d!160479) (not b!1540565) (not d!160493) (not b!1540569) (not bm!68649) (not d!160501) (not b!1540534) (not bm!68655) (not b!1540574))
(check-sat)
