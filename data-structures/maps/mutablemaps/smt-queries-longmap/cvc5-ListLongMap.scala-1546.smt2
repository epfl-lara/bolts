; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29256 () Bool)

(assert start!29256)

(declare-fun b!296494 () Bool)

(declare-fun res!156278 () Bool)

(declare-fun e!187405 () Bool)

(assert (=> b!296494 (=> (not res!156278) (not e!187405))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296494 (= res!156278 (validKeyInArray!0 k!2524))))

(declare-fun res!156281 () Bool)

(assert (=> start!29256 (=> (not res!156281) (not e!187405))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29256 (= res!156281 (validMask!0 mask!3809))))

(assert (=> start!29256 e!187405))

(assert (=> start!29256 true))

(declare-datatypes ((array!15011 0))(
  ( (array!15012 (arr!7114 (Array (_ BitVec 32) (_ BitVec 64))) (size!7466 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15011)

(declare-fun array_inv!5068 (array!15011) Bool)

(assert (=> start!29256 (array_inv!5068 a!3312)))

(declare-fun b!296495 () Bool)

(declare-fun e!187406 () Bool)

(assert (=> b!296495 (= e!187405 e!187406)))

(declare-fun res!156277 () Bool)

(assert (=> b!296495 (=> (not res!156277) (not e!187406))))

(declare-fun lt!147282 () Bool)

(declare-datatypes ((SeekEntryResult!2274 0))(
  ( (MissingZero!2274 (index!11266 (_ BitVec 32))) (Found!2274 (index!11267 (_ BitVec 32))) (Intermediate!2274 (undefined!3086 Bool) (index!11268 (_ BitVec 32)) (x!29449 (_ BitVec 32))) (Undefined!2274) (MissingVacant!2274 (index!11269 (_ BitVec 32))) )
))
(declare-fun lt!147283 () SeekEntryResult!2274)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!296495 (= res!156277 (or lt!147282 (= lt!147283 (MissingVacant!2274 i!1256))))))

(assert (=> b!296495 (= lt!147282 (= lt!147283 (MissingZero!2274 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15011 (_ BitVec 32)) SeekEntryResult!2274)

(assert (=> b!296495 (= lt!147283 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!296496 () Bool)

(declare-fun res!156282 () Bool)

(assert (=> b!296496 (=> (not res!156282) (not e!187405))))

(assert (=> b!296496 (= res!156282 (and (= (size!7466 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7466 a!3312))))))

(declare-fun b!296497 () Bool)

(declare-fun e!187404 () Bool)

(assert (=> b!296497 (= e!187406 e!187404)))

(declare-fun res!156275 () Bool)

(assert (=> b!296497 (=> (not res!156275) (not e!187404))))

(assert (=> b!296497 (= res!156275 lt!147282)))

(declare-fun lt!147284 () (_ BitVec 32))

(declare-fun lt!147287 () SeekEntryResult!2274)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15011 (_ BitVec 32)) SeekEntryResult!2274)

(assert (=> b!296497 (= lt!147287 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147284 k!2524 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312)) mask!3809))))

(declare-fun lt!147285 () SeekEntryResult!2274)

(assert (=> b!296497 (= lt!147285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147284 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296497 (= lt!147284 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!296498 () Bool)

(declare-fun res!156279 () Bool)

(assert (=> b!296498 (=> (not res!156279) (not e!187405))))

(declare-fun arrayContainsKey!0 (array!15011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296498 (= res!156279 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296499 () Bool)

(declare-fun e!187402 () Bool)

(assert (=> b!296499 (= e!187404 e!187402)))

(declare-fun res!156276 () Bool)

(assert (=> b!296499 (=> (not res!156276) (not e!187402))))

(declare-fun lt!147286 () Bool)

(assert (=> b!296499 (= res!156276 (and (or lt!147286 (not (undefined!3086 lt!147285))) (or lt!147286 (not (= (select (arr!7114 a!3312) (index!11268 lt!147285)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147286 (not (= (select (arr!7114 a!3312) (index!11268 lt!147285)) k!2524))) (not lt!147286)))))

(assert (=> b!296499 (= lt!147286 (not (is-Intermediate!2274 lt!147285)))))

(declare-fun b!296500 () Bool)

(assert (=> b!296500 (= e!187402 (not (or (not (= lt!147285 (Intermediate!2274 false (index!11268 lt!147285) (x!29449 lt!147285)))) (bvsgt #b00000000000000000000000000000000 (x!29449 lt!147285)) (and (bvsge lt!147284 #b00000000000000000000000000000000) (bvslt lt!147284 (size!7466 a!3312))))))))

(assert (=> b!296500 (and (= (select (arr!7114 a!3312) (index!11268 lt!147285)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11268 lt!147285) i!1256))))

(declare-fun b!296501 () Bool)

(declare-fun res!156280 () Bool)

(assert (=> b!296501 (=> (not res!156280) (not e!187406))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15011 (_ BitVec 32)) Bool)

(assert (=> b!296501 (= res!156280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29256 res!156281) b!296496))

(assert (= (and b!296496 res!156282) b!296494))

(assert (= (and b!296494 res!156278) b!296498))

(assert (= (and b!296498 res!156279) b!296495))

(assert (= (and b!296495 res!156277) b!296501))

(assert (= (and b!296501 res!156280) b!296497))

(assert (= (and b!296497 res!156275) b!296499))

(assert (= (and b!296499 res!156276) b!296500))

(declare-fun m!309461 () Bool)

(assert (=> b!296498 m!309461))

(declare-fun m!309463 () Bool)

(assert (=> b!296501 m!309463))

(declare-fun m!309465 () Bool)

(assert (=> b!296499 m!309465))

(assert (=> b!296500 m!309465))

(declare-fun m!309467 () Bool)

(assert (=> start!29256 m!309467))

(declare-fun m!309469 () Bool)

(assert (=> start!29256 m!309469))

(declare-fun m!309471 () Bool)

(assert (=> b!296495 m!309471))

(declare-fun m!309473 () Bool)

(assert (=> b!296494 m!309473))

(declare-fun m!309475 () Bool)

(assert (=> b!296497 m!309475))

(declare-fun m!309477 () Bool)

(assert (=> b!296497 m!309477))

(declare-fun m!309479 () Bool)

(assert (=> b!296497 m!309479))

(declare-fun m!309481 () Bool)

(assert (=> b!296497 m!309481))

(push 1)

(assert (not b!296494))

(assert (not b!296497))

(assert (not b!296501))

(assert (not start!29256))

(assert (not b!296495))

(assert (not b!296498))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66981 () Bool)

(assert (=> d!66981 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29256 d!66981))

(declare-fun d!66993 () Bool)

(assert (=> d!66993 (= (array_inv!5068 a!3312) (bvsge (size!7466 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29256 d!66993))

(declare-fun d!66995 () Bool)

(assert (=> d!66995 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!296494 d!66995))

(declare-fun b!296606 () Bool)

(declare-fun e!187475 () Bool)

(declare-fun call!25743 () Bool)

(assert (=> b!296606 (= e!187475 call!25743)))

(declare-fun b!296607 () Bool)

(declare-fun e!187477 () Bool)

(assert (=> b!296607 (= e!187477 e!187475)))

(declare-fun lt!147345 () (_ BitVec 64))

(assert (=> b!296607 (= lt!147345 (select (arr!7114 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9221 0))(
  ( (Unit!9223) )
))
(declare-fun lt!147346 () Unit!9221)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15011 (_ BitVec 64) (_ BitVec 32)) Unit!9221)

(assert (=> b!296607 (= lt!147346 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!147345 #b00000000000000000000000000000000))))

(assert (=> b!296607 (arrayContainsKey!0 a!3312 lt!147345 #b00000000000000000000000000000000)))

(declare-fun lt!147344 () Unit!9221)

(assert (=> b!296607 (= lt!147344 lt!147346)))

(declare-fun res!156360 () Bool)

(assert (=> b!296607 (= res!156360 (= (seekEntryOrOpen!0 (select (arr!7114 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2274 #b00000000000000000000000000000000)))))

(assert (=> b!296607 (=> (not res!156360) (not e!187475))))

(declare-fun b!296608 () Bool)

(assert (=> b!296608 (= e!187477 call!25743)))

(declare-fun bm!25740 () Bool)

(assert (=> bm!25740 (= call!25743 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!296609 () Bool)

(declare-fun e!187476 () Bool)

(assert (=> b!296609 (= e!187476 e!187477)))

(declare-fun c!47703 () Bool)

(assert (=> b!296609 (= c!47703 (validKeyInArray!0 (select (arr!7114 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!66997 () Bool)

(declare-fun res!156361 () Bool)

(assert (=> d!66997 (=> res!156361 e!187476)))

(assert (=> d!66997 (= res!156361 (bvsge #b00000000000000000000000000000000 (size!7466 a!3312)))))

(assert (=> d!66997 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!187476)))

(assert (= (and d!66997 (not res!156361)) b!296609))

(assert (= (and b!296609 c!47703) b!296607))

(assert (= (and b!296609 (not c!47703)) b!296608))

(assert (= (and b!296607 res!156360) b!296606))

(assert (= (or b!296606 b!296608) bm!25740))

(declare-fun m!309549 () Bool)

(assert (=> b!296607 m!309549))

(declare-fun m!309551 () Bool)

(assert (=> b!296607 m!309551))

(declare-fun m!309553 () Bool)

(assert (=> b!296607 m!309553))

(assert (=> b!296607 m!309549))

(declare-fun m!309555 () Bool)

(assert (=> b!296607 m!309555))

(declare-fun m!309557 () Bool)

(assert (=> bm!25740 m!309557))

(assert (=> b!296609 m!309549))

(assert (=> b!296609 m!309549))

(declare-fun m!309559 () Bool)

(assert (=> b!296609 m!309559))

(assert (=> b!296501 d!66997))

(declare-fun lt!147377 () SeekEntryResult!2274)

(declare-fun e!187513 () SeekEntryResult!2274)

(declare-fun b!296670 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15011 (_ BitVec 32)) SeekEntryResult!2274)

(assert (=> b!296670 (= e!187513 (seekKeyOrZeroReturnVacant!0 (x!29449 lt!147377) (index!11268 lt!147377) (index!11268 lt!147377) k!2524 a!3312 mask!3809))))

(declare-fun b!296671 () Bool)

(declare-fun e!187514 () SeekEntryResult!2274)

(assert (=> b!296671 (= e!187514 (Found!2274 (index!11268 lt!147377)))))

(declare-fun b!296672 () Bool)

(declare-fun e!187515 () SeekEntryResult!2274)

(assert (=> b!296672 (= e!187515 Undefined!2274)))

(declare-fun b!296673 () Bool)

(declare-fun c!47725 () Bool)

(declare-fun lt!147378 () (_ BitVec 64))

(assert (=> b!296673 (= c!47725 (= lt!147378 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!296673 (= e!187514 e!187513)))

(declare-fun d!67007 () Bool)

(declare-fun lt!147376 () SeekEntryResult!2274)

(assert (=> d!67007 (and (or (is-Undefined!2274 lt!147376) (not (is-Found!2274 lt!147376)) (and (bvsge (index!11267 lt!147376) #b00000000000000000000000000000000) (bvslt (index!11267 lt!147376) (size!7466 a!3312)))) (or (is-Undefined!2274 lt!147376) (is-Found!2274 lt!147376) (not (is-MissingZero!2274 lt!147376)) (and (bvsge (index!11266 lt!147376) #b00000000000000000000000000000000) (bvslt (index!11266 lt!147376) (size!7466 a!3312)))) (or (is-Undefined!2274 lt!147376) (is-Found!2274 lt!147376) (is-MissingZero!2274 lt!147376) (not (is-MissingVacant!2274 lt!147376)) (and (bvsge (index!11269 lt!147376) #b00000000000000000000000000000000) (bvslt (index!11269 lt!147376) (size!7466 a!3312)))) (or (is-Undefined!2274 lt!147376) (ite (is-Found!2274 lt!147376) (= (select (arr!7114 a!3312) (index!11267 lt!147376)) k!2524) (ite (is-MissingZero!2274 lt!147376) (= (select (arr!7114 a!3312) (index!11266 lt!147376)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2274 lt!147376) (= (select (arr!7114 a!3312) (index!11269 lt!147376)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67007 (= lt!147376 e!187515)))

(declare-fun c!47726 () Bool)

(assert (=> d!67007 (= c!47726 (and (is-Intermediate!2274 lt!147377) (undefined!3086 lt!147377)))))

(assert (=> d!67007 (= lt!147377 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67007 (validMask!0 mask!3809)))

(assert (=> d!67007 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!147376)))

(declare-fun b!296674 () Bool)

(assert (=> b!296674 (= e!187513 (MissingZero!2274 (index!11268 lt!147377)))))

(declare-fun b!296675 () Bool)

(assert (=> b!296675 (= e!187515 e!187514)))

(assert (=> b!296675 (= lt!147378 (select (arr!7114 a!3312) (index!11268 lt!147377)))))

(declare-fun c!47727 () Bool)

(assert (=> b!296675 (= c!47727 (= lt!147378 k!2524))))

(assert (= (and d!67007 c!47726) b!296672))

(assert (= (and d!67007 (not c!47726)) b!296675))

(assert (= (and b!296675 c!47727) b!296671))

(assert (= (and b!296675 (not c!47727)) b!296673))

(assert (= (and b!296673 c!47725) b!296674))

(assert (= (and b!296673 (not c!47725)) b!296670))

(declare-fun m!309585 () Bool)

(assert (=> b!296670 m!309585))

(declare-fun m!309587 () Bool)

(assert (=> d!67007 m!309587))

(declare-fun m!309589 () Bool)

(assert (=> d!67007 m!309589))

(assert (=> d!67007 m!309467))

(assert (=> d!67007 m!309481))

(declare-fun m!309591 () Bool)

(assert (=> d!67007 m!309591))

(declare-fun m!309593 () Bool)

(assert (=> d!67007 m!309593))

(assert (=> d!67007 m!309481))

(declare-fun m!309595 () Bool)

(assert (=> b!296675 m!309595))

(assert (=> b!296495 d!67007))

(declare-fun b!296724 () Bool)

(declare-fun e!187544 () Bool)

(declare-fun lt!147402 () SeekEntryResult!2274)

(assert (=> b!296724 (= e!187544 (bvsge (x!29449 lt!147402) #b01111111111111111111111111111110))))

(declare-fun b!296725 () Bool)

(declare-fun e!187546 () SeekEntryResult!2274)

(assert (=> b!296725 (= e!187546 (Intermediate!2274 true lt!147284 #b00000000000000000000000000000000))))

(declare-fun b!296726 () Bool)

(declare-fun e!187545 () SeekEntryResult!2274)

(assert (=> b!296726 (= e!187546 e!187545)))

(declare-fun c!47746 () Bool)

(declare-fun lt!147401 () (_ BitVec 64))

(assert (=> b!296726 (= c!47746 (or (= lt!147401 k!2524) (= (bvadd lt!147401 lt!147401) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!67017 () Bool)

(assert (=> d!67017 e!187544))

(declare-fun c!47748 () Bool)

(assert (=> d!67017 (= c!47748 (and (is-Intermediate!2274 lt!147402) (undefined!3086 lt!147402)))))

(assert (=> d!67017 (= lt!147402 e!187546)))

(declare-fun c!47747 () Bool)

(assert (=> d!67017 (= c!47747 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67017 (= lt!147401 (select (arr!7114 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312))) lt!147284))))

(assert (=> d!67017 (validMask!0 mask!3809)))

(assert (=> d!67017 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147284 k!2524 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312)) mask!3809) lt!147402)))

(declare-fun b!296727 () Bool)

(assert (=> b!296727 (= e!187545 (Intermediate!2274 false lt!147284 #b00000000000000000000000000000000))))

(declare-fun b!296728 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296728 (= e!187545 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147284 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312)) mask!3809))))

(declare-fun b!296729 () Bool)

(assert (=> b!296729 (and (bvsge (index!11268 lt!147402) #b00000000000000000000000000000000) (bvslt (index!11268 lt!147402) (size!7466 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312)))))))

(declare-fun res!156393 () Bool)

(assert (=> b!296729 (= res!156393 (= (select (arr!7114 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312))) (index!11268 lt!147402)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187548 () Bool)

(assert (=> b!296729 (=> res!156393 e!187548)))

(declare-fun b!296730 () Bool)

(assert (=> b!296730 (and (bvsge (index!11268 lt!147402) #b00000000000000000000000000000000) (bvslt (index!11268 lt!147402) (size!7466 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312)))))))

(assert (=> b!296730 (= e!187548 (= (select (arr!7114 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312))) (index!11268 lt!147402)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!296731 () Bool)

(assert (=> b!296731 (and (bvsge (index!11268 lt!147402) #b00000000000000000000000000000000) (bvslt (index!11268 lt!147402) (size!7466 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312)))))))

(declare-fun res!156394 () Bool)

(assert (=> b!296731 (= res!156394 (= (select (arr!7114 (array!15012 (store (arr!7114 a!3312) i!1256 k!2524) (size!7466 a!3312))) (index!11268 lt!147402)) k!2524))))

(assert (=> b!296731 (=> res!156394 e!187548)))

(declare-fun e!187547 () Bool)

(assert (=> b!296731 (= e!187547 e!187548)))

(declare-fun b!296732 () Bool)

(assert (=> b!296732 (= e!187544 e!187547)))

(declare-fun res!156395 () Bool)

(assert (=> b!296732 (= res!156395 (and (is-Intermediate!2274 lt!147402) (not (undefined!3086 lt!147402)) (bvslt (x!29449 lt!147402) #b01111111111111111111111111111110) (bvsge (x!29449 lt!147402) #b00000000000000000000000000000000) (bvsge (x!29449 lt!147402) #b00000000000000000000000000000000)))))

(assert (=> b!296732 (=> (not res!156395) (not e!187547))))

(assert (= (and d!67017 c!47747) b!296725))

(assert (= (and d!67017 (not c!47747)) b!296726))

(assert (= (and b!296726 c!47746) b!296727))

(assert (= (and b!296726 (not c!47746)) b!296728))

(assert (= (and d!67017 c!47748) b!296724))

(assert (= (and d!67017 (not c!47748)) b!296732))

(assert (= (and b!296732 res!156395) b!296731))

(assert (= (and b!296731 (not res!156394)) b!296729))

(assert (= (and b!296729 (not res!156393)) b!296730))

(declare-fun m!309619 () Bool)

(assert (=> b!296731 m!309619))

(declare-fun m!309621 () Bool)

(assert (=> d!67017 m!309621))

(assert (=> d!67017 m!309467))

(declare-fun m!309623 () Bool)

(assert (=> b!296728 m!309623))

(assert (=> b!296728 m!309623))

(declare-fun m!309625 () Bool)

(assert (=> b!296728 m!309625))

(assert (=> b!296729 m!309619))

(assert (=> b!296730 m!309619))

(assert (=> b!296497 d!67017))

(declare-fun b!296733 () Bool)

(declare-fun e!187549 () Bool)

(declare-fun lt!147404 () SeekEntryResult!2274)

(assert (=> b!296733 (= e!187549 (bvsge (x!29449 lt!147404) #b01111111111111111111111111111110))))

(declare-fun b!296734 () Bool)

(declare-fun e!187551 () SeekEntryResult!2274)

(assert (=> b!296734 (= e!187551 (Intermediate!2274 true lt!147284 #b00000000000000000000000000000000))))

(declare-fun b!296735 () Bool)

(declare-fun e!187550 () SeekEntryResult!2274)

(assert (=> b!296735 (= e!187551 e!187550)))

(declare-fun c!47749 () Bool)

(declare-fun lt!147403 () (_ BitVec 64))

(assert (=> b!296735 (= c!47749 (or (= lt!147403 k!2524) (= (bvadd lt!147403 lt!147403) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!67025 () Bool)

(assert (=> d!67025 e!187549))

(declare-fun c!47751 () Bool)

(assert (=> d!67025 (= c!47751 (and (is-Intermediate!2274 lt!147404) (undefined!3086 lt!147404)))))

(assert (=> d!67025 (= lt!147404 e!187551)))

(declare-fun c!47750 () Bool)

(assert (=> d!67025 (= c!47750 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67025 (= lt!147403 (select (arr!7114 a!3312) lt!147284))))

(assert (=> d!67025 (validMask!0 mask!3809)))

(assert (=> d!67025 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147284 k!2524 a!3312 mask!3809) lt!147404)))

(declare-fun b!296736 () Bool)

(assert (=> b!296736 (= e!187550 (Intermediate!2274 false lt!147284 #b00000000000000000000000000000000))))

(declare-fun b!296737 () Bool)

(assert (=> b!296737 (= e!187550 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147284 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!296738 () Bool)

(assert (=> b!296738 (and (bvsge (index!11268 lt!147404) #b00000000000000000000000000000000) (bvslt (index!11268 lt!147404) (size!7466 a!3312)))))

(declare-fun res!156396 () Bool)

(assert (=> b!296738 (= res!156396 (= (select (arr!7114 a!3312) (index!11268 lt!147404)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187553 () Bool)

(assert (=> b!296738 (=> res!156396 e!187553)))

(declare-fun b!296739 () Bool)

(assert (=> b!296739 (and (bvsge (index!11268 lt!147404) #b00000000000000000000000000000000) (bvslt (index!11268 lt!147404) (size!7466 a!3312)))))

(assert (=> b!296739 (= e!187553 (= (select (arr!7114 a!3312) (index!11268 lt!147404)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!296740 () Bool)

(assert (=> b!296740 (and (bvsge (index!11268 lt!147404) #b00000000000000000000000000000000) (bvslt (index!11268 lt!147404) (size!7466 a!3312)))))

(declare-fun res!156397 () Bool)

(assert (=> b!296740 (= res!156397 (= (select (arr!7114 a!3312) (index!11268 lt!147404)) k!2524))))

(assert (=> b!296740 (=> res!156397 e!187553)))

(declare-fun e!187552 () Bool)

(assert (=> b!296740 (= e!187552 e!187553)))

(declare-fun b!296741 () Bool)

(assert (=> b!296741 (= e!187549 e!187552)))

(declare-fun res!156398 () Bool)

(assert (=> b!296741 (= res!156398 (and (is-Intermediate!2274 lt!147404) (not (undefined!3086 lt!147404)) (bvslt (x!29449 lt!147404) #b01111111111111111111111111111110) (bvsge (x!29449 lt!147404) #b00000000000000000000000000000000) (bvsge (x!29449 lt!147404) #b00000000000000000000000000000000)))))

(assert (=> b!296741 (=> (not res!156398) (not e!187552))))

(assert (= (and d!67025 c!47750) b!296734))

(assert (= (and d!67025 (not c!47750)) b!296735))

(assert (= (and b!296735 c!47749) b!296736))

(assert (= (and b!296735 (not c!47749)) b!296737))

(assert (= (and d!67025 c!47751) b!296733))

(assert (= (and d!67025 (not c!47751)) b!296741))

(assert (= (and b!296741 res!156398) b!296740))

(assert (= (and b!296740 (not res!156397)) b!296738))

(assert (= (and b!296738 (not res!156396)) b!296739))

(declare-fun m!309627 () Bool)

(assert (=> b!296740 m!309627))

(declare-fun m!309629 () Bool)

(assert (=> d!67025 m!309629))

(assert (=> d!67025 m!309467))

(assert (=> b!296737 m!309623))

(assert (=> b!296737 m!309623))

(declare-fun m!309631 () Bool)

(assert (=> b!296737 m!309631))

(assert (=> b!296738 m!309627))

(assert (=> b!296739 m!309627))

(assert (=> b!296497 d!67025))

(declare-fun d!67027 () Bool)

(declare-fun lt!147410 () (_ BitVec 32))

(declare-fun lt!147409 () (_ BitVec 32))

(assert (=> d!67027 (= lt!147410 (bvmul (bvxor lt!147409 (bvlshr lt!147409 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67027 (= lt!147409 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67027 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!156399 (let ((h!5317 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29457 (bvmul (bvxor h!5317 (bvlshr h!5317 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29457 (bvlshr x!29457 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!156399 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!156399 #b00000000000000000000000000000000))))))

(assert (=> d!67027 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!147410 (bvlshr lt!147410 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!296497 d!67027))

(declare-fun d!67029 () Bool)

(declare-fun res!156404 () Bool)

(declare-fun e!187564 () Bool)

(assert (=> d!67029 (=> res!156404 e!187564)))

(assert (=> d!67029 (= res!156404 (= (select (arr!7114 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67029 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!187564)))

(declare-fun b!296758 () Bool)

(declare-fun e!187565 () Bool)

(assert (=> b!296758 (= e!187564 e!187565)))

(declare-fun res!156405 () Bool)

(assert (=> b!296758 (=> (not res!156405) (not e!187565))))

(assert (=> b!296758 (= res!156405 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7466 a!3312)))))

(declare-fun b!296759 () Bool)

(assert (=> b!296759 (= e!187565 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67029 (not res!156404)) b!296758))

(assert (= (and b!296758 res!156405) b!296759))

(assert (=> d!67029 m!309549))

(declare-fun m!309633 () Bool)

(assert (=> b!296759 m!309633))

(assert (=> b!296498 d!67029))

(push 1)

