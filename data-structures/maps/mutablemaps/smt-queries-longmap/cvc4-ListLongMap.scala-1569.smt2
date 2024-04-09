; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29902 () Bool)

(assert start!29902)

(declare-fun b!300460 () Bool)

(declare-fun res!158514 () Bool)

(declare-fun e!189723 () Bool)

(assert (=> b!300460 (=> (not res!158514) (not e!189723))))

(declare-datatypes ((array!15183 0))(
  ( (array!15184 (arr!7185 (Array (_ BitVec 32) (_ BitVec 64))) (size!7537 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15183)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15183 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300460 (= res!158514 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!158511 () Bool)

(assert (=> start!29902 (=> (not res!158511) (not e!189723))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29902 (= res!158511 (validMask!0 mask!3809))))

(assert (=> start!29902 e!189723))

(assert (=> start!29902 true))

(declare-fun array_inv!5139 (array!15183) Bool)

(assert (=> start!29902 (array_inv!5139 a!3312)))

(declare-fun b!300461 () Bool)

(declare-fun res!158509 () Bool)

(assert (=> b!300461 (=> (not res!158509) (not e!189723))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300461 (= res!158509 (validKeyInArray!0 k!2524))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!149551 () Bool)

(declare-fun b!300462 () Bool)

(declare-fun e!189722 () Bool)

(declare-datatypes ((SeekEntryResult!2345 0))(
  ( (MissingZero!2345 (index!11556 (_ BitVec 32))) (Found!2345 (index!11557 (_ BitVec 32))) (Intermediate!2345 (undefined!3157 Bool) (index!11558 (_ BitVec 32)) (x!29774 (_ BitVec 32))) (Undefined!2345) (MissingVacant!2345 (index!11559 (_ BitVec 32))) )
))
(declare-fun lt!149555 () SeekEntryResult!2345)

(declare-fun lt!149553 () SeekEntryResult!2345)

(assert (=> b!300462 (= e!189722 (and (not lt!149551) (= lt!149555 (MissingVacant!2345 i!1256)) (not (is-Intermediate!2345 lt!149553))))))

(declare-fun lt!149552 () SeekEntryResult!2345)

(declare-fun lt!149554 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15183 (_ BitVec 32)) SeekEntryResult!2345)

(assert (=> b!300462 (= lt!149552 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149554 k!2524 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312)) mask!3809))))

(assert (=> b!300462 (= lt!149553 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149554 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300462 (= lt!149554 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!300463 () Bool)

(assert (=> b!300463 (= e!189723 e!189722)))

(declare-fun res!158512 () Bool)

(assert (=> b!300463 (=> (not res!158512) (not e!189722))))

(assert (=> b!300463 (= res!158512 (or lt!149551 (= lt!149555 (MissingVacant!2345 i!1256))))))

(assert (=> b!300463 (= lt!149551 (= lt!149555 (MissingZero!2345 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15183 (_ BitVec 32)) SeekEntryResult!2345)

(assert (=> b!300463 (= lt!149555 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!300464 () Bool)

(declare-fun res!158510 () Bool)

(assert (=> b!300464 (=> (not res!158510) (not e!189722))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15183 (_ BitVec 32)) Bool)

(assert (=> b!300464 (= res!158510 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300465 () Bool)

(declare-fun res!158513 () Bool)

(assert (=> b!300465 (=> (not res!158513) (not e!189723))))

(assert (=> b!300465 (= res!158513 (and (= (size!7537 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7537 a!3312))))))

(assert (= (and start!29902 res!158511) b!300465))

(assert (= (and b!300465 res!158513) b!300461))

(assert (= (and b!300461 res!158509) b!300460))

(assert (= (and b!300460 res!158514) b!300463))

(assert (= (and b!300463 res!158512) b!300464))

(assert (= (and b!300464 res!158510) b!300462))

(declare-fun m!312479 () Bool)

(assert (=> start!29902 m!312479))

(declare-fun m!312481 () Bool)

(assert (=> start!29902 m!312481))

(declare-fun m!312483 () Bool)

(assert (=> b!300463 m!312483))

(declare-fun m!312485 () Bool)

(assert (=> b!300462 m!312485))

(declare-fun m!312487 () Bool)

(assert (=> b!300462 m!312487))

(declare-fun m!312489 () Bool)

(assert (=> b!300462 m!312489))

(declare-fun m!312491 () Bool)

(assert (=> b!300462 m!312491))

(declare-fun m!312493 () Bool)

(assert (=> b!300460 m!312493))

(declare-fun m!312495 () Bool)

(assert (=> b!300461 m!312495))

(declare-fun m!312497 () Bool)

(assert (=> b!300464 m!312497))

(push 1)

(assert (not b!300461))

(assert (not b!300463))

(assert (not b!300460))

(assert (not start!29902))

(assert (not b!300462))

(assert (not b!300464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67637 () Bool)

(assert (=> d!67637 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!300461 d!67637))

(declare-fun d!67639 () Bool)

(declare-fun res!158519 () Bool)

(declare-fun e!189729 () Bool)

(assert (=> d!67639 (=> res!158519 e!189729)))

(assert (=> d!67639 (= res!158519 (= (select (arr!7185 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67639 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!189729)))

(declare-fun b!300470 () Bool)

(declare-fun e!189730 () Bool)

(assert (=> b!300470 (= e!189729 e!189730)))

(declare-fun res!158520 () Bool)

(assert (=> b!300470 (=> (not res!158520) (not e!189730))))

(assert (=> b!300470 (= res!158520 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7537 a!3312)))))

(declare-fun b!300471 () Bool)

(assert (=> b!300471 (= e!189730 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67639 (not res!158519)) b!300470))

(assert (= (and b!300470 res!158520) b!300471))

(declare-fun m!312499 () Bool)

(assert (=> d!67639 m!312499))

(declare-fun m!312501 () Bool)

(assert (=> b!300471 m!312501))

(assert (=> b!300460 d!67639))

(declare-fun b!300490 () Bool)

(declare-fun e!189744 () Bool)

(declare-fun call!25855 () Bool)

(assert (=> b!300490 (= e!189744 call!25855)))

(declare-fun bm!25852 () Bool)

(assert (=> bm!25852 (= call!25855 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!300491 () Bool)

(declare-fun e!189745 () Bool)

(assert (=> b!300491 (= e!189744 e!189745)))

(declare-fun lt!149574 () (_ BitVec 64))

(assert (=> b!300491 (= lt!149574 (select (arr!7185 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9358 0))(
  ( (Unit!9359) )
))
(declare-fun lt!149573 () Unit!9358)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15183 (_ BitVec 64) (_ BitVec 32)) Unit!9358)

(assert (=> b!300491 (= lt!149573 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149574 #b00000000000000000000000000000000))))

(assert (=> b!300491 (arrayContainsKey!0 a!3312 lt!149574 #b00000000000000000000000000000000)))

(declare-fun lt!149572 () Unit!9358)

(assert (=> b!300491 (= lt!149572 lt!149573)))

(declare-fun res!158530 () Bool)

(assert (=> b!300491 (= res!158530 (= (seekEntryOrOpen!0 (select (arr!7185 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2345 #b00000000000000000000000000000000)))))

(assert (=> b!300491 (=> (not res!158530) (not e!189745))))

(declare-fun b!300492 () Bool)

(declare-fun e!189743 () Bool)

(assert (=> b!300492 (= e!189743 e!189744)))

(declare-fun c!48574 () Bool)

(assert (=> b!300492 (= c!48574 (validKeyInArray!0 (select (arr!7185 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!300493 () Bool)

(assert (=> b!300493 (= e!189745 call!25855)))

(declare-fun d!67643 () Bool)

(declare-fun res!158529 () Bool)

(assert (=> d!67643 (=> res!158529 e!189743)))

(assert (=> d!67643 (= res!158529 (bvsge #b00000000000000000000000000000000 (size!7537 a!3312)))))

(assert (=> d!67643 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189743)))

(assert (= (and d!67643 (not res!158529)) b!300492))

(assert (= (and b!300492 c!48574) b!300491))

(assert (= (and b!300492 (not c!48574)) b!300490))

(assert (= (and b!300491 res!158530) b!300493))

(assert (= (or b!300493 b!300490) bm!25852))

(declare-fun m!312503 () Bool)

(assert (=> bm!25852 m!312503))

(assert (=> b!300491 m!312499))

(declare-fun m!312507 () Bool)

(assert (=> b!300491 m!312507))

(declare-fun m!312509 () Bool)

(assert (=> b!300491 m!312509))

(assert (=> b!300491 m!312499))

(declare-fun m!312515 () Bool)

(assert (=> b!300491 m!312515))

(assert (=> b!300492 m!312499))

(assert (=> b!300492 m!312499))

(declare-fun m!312521 () Bool)

(assert (=> b!300492 m!312521))

(assert (=> b!300464 d!67643))

(declare-fun d!67647 () Bool)

(assert (=> d!67647 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29902 d!67647))

(declare-fun d!67655 () Bool)

(assert (=> d!67655 (= (array_inv!5139 a!3312) (bvsge (size!7537 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29902 d!67655))

(declare-fun b!300586 () Bool)

(declare-fun c!48606 () Bool)

(declare-fun lt!149608 () (_ BitVec 64))

(assert (=> b!300586 (= c!48606 (= lt!149608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189802 () SeekEntryResult!2345)

(declare-fun e!189801 () SeekEntryResult!2345)

(assert (=> b!300586 (= e!189802 e!189801)))

(declare-fun d!67657 () Bool)

(declare-fun lt!149610 () SeekEntryResult!2345)

(assert (=> d!67657 (and (or (is-Undefined!2345 lt!149610) (not (is-Found!2345 lt!149610)) (and (bvsge (index!11557 lt!149610) #b00000000000000000000000000000000) (bvslt (index!11557 lt!149610) (size!7537 a!3312)))) (or (is-Undefined!2345 lt!149610) (is-Found!2345 lt!149610) (not (is-MissingZero!2345 lt!149610)) (and (bvsge (index!11556 lt!149610) #b00000000000000000000000000000000) (bvslt (index!11556 lt!149610) (size!7537 a!3312)))) (or (is-Undefined!2345 lt!149610) (is-Found!2345 lt!149610) (is-MissingZero!2345 lt!149610) (not (is-MissingVacant!2345 lt!149610)) (and (bvsge (index!11559 lt!149610) #b00000000000000000000000000000000) (bvslt (index!11559 lt!149610) (size!7537 a!3312)))) (or (is-Undefined!2345 lt!149610) (ite (is-Found!2345 lt!149610) (= (select (arr!7185 a!3312) (index!11557 lt!149610)) k!2524) (ite (is-MissingZero!2345 lt!149610) (= (select (arr!7185 a!3312) (index!11556 lt!149610)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2345 lt!149610) (= (select (arr!7185 a!3312) (index!11559 lt!149610)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!189803 () SeekEntryResult!2345)

(assert (=> d!67657 (= lt!149610 e!189803)))

(declare-fun c!48608 () Bool)

(declare-fun lt!149609 () SeekEntryResult!2345)

(assert (=> d!67657 (= c!48608 (and (is-Intermediate!2345 lt!149609) (undefined!3157 lt!149609)))))

(assert (=> d!67657 (= lt!149609 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67657 (validMask!0 mask!3809)))

(assert (=> d!67657 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!149610)))

(declare-fun b!300587 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15183 (_ BitVec 32)) SeekEntryResult!2345)

(assert (=> b!300587 (= e!189801 (seekKeyOrZeroReturnVacant!0 (x!29774 lt!149609) (index!11558 lt!149609) (index!11558 lt!149609) k!2524 a!3312 mask!3809))))

(declare-fun b!300588 () Bool)

(assert (=> b!300588 (= e!189802 (Found!2345 (index!11558 lt!149609)))))

(declare-fun b!300589 () Bool)

(assert (=> b!300589 (= e!189803 e!189802)))

(assert (=> b!300589 (= lt!149608 (select (arr!7185 a!3312) (index!11558 lt!149609)))))

(declare-fun c!48607 () Bool)

(assert (=> b!300589 (= c!48607 (= lt!149608 k!2524))))

(declare-fun b!300590 () Bool)

(assert (=> b!300590 (= e!189801 (MissingZero!2345 (index!11558 lt!149609)))))

(declare-fun b!300591 () Bool)

(assert (=> b!300591 (= e!189803 Undefined!2345)))

(assert (= (and d!67657 c!48608) b!300591))

(assert (= (and d!67657 (not c!48608)) b!300589))

(assert (= (and b!300589 c!48607) b!300588))

(assert (= (and b!300589 (not c!48607)) b!300586))

(assert (= (and b!300586 c!48606) b!300590))

(assert (= (and b!300586 (not c!48606)) b!300587))

(declare-fun m!312557 () Bool)

(assert (=> d!67657 m!312557))

(assert (=> d!67657 m!312491))

(assert (=> d!67657 m!312479))

(declare-fun m!312559 () Bool)

(assert (=> d!67657 m!312559))

(assert (=> d!67657 m!312491))

(declare-fun m!312561 () Bool)

(assert (=> d!67657 m!312561))

(declare-fun m!312563 () Bool)

(assert (=> d!67657 m!312563))

(declare-fun m!312565 () Bool)

(assert (=> b!300587 m!312565))

(declare-fun m!312567 () Bool)

(assert (=> b!300589 m!312567))

(assert (=> b!300463 d!67657))

(declare-fun b!300652 () Bool)

(declare-fun e!189839 () SeekEntryResult!2345)

(assert (=> b!300652 (= e!189839 (Intermediate!2345 false lt!149554 #b00000000000000000000000000000000))))

(declare-fun b!300653 () Bool)

(declare-fun e!189838 () Bool)

(declare-fun e!189840 () Bool)

(assert (=> b!300653 (= e!189838 e!189840)))

(declare-fun res!158578 () Bool)

(declare-fun lt!149634 () SeekEntryResult!2345)

(assert (=> b!300653 (= res!158578 (and (is-Intermediate!2345 lt!149634) (not (undefined!3157 lt!149634)) (bvslt (x!29774 lt!149634) #b01111111111111111111111111111110) (bvsge (x!29774 lt!149634) #b00000000000000000000000000000000) (bvsge (x!29774 lt!149634) #b00000000000000000000000000000000)))))

(assert (=> b!300653 (=> (not res!158578) (not e!189840))))

(declare-fun b!300654 () Bool)

(declare-fun e!189842 () SeekEntryResult!2345)

(assert (=> b!300654 (= e!189842 e!189839)))

(declare-fun c!48633 () Bool)

(declare-fun lt!149633 () (_ BitVec 64))

(assert (=> b!300654 (= c!48633 (or (= lt!149633 k!2524) (= (bvadd lt!149633 lt!149633) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!300655 () Bool)

(assert (=> b!300655 (= e!189838 (bvsge (x!29774 lt!149634) #b01111111111111111111111111111110))))

(declare-fun b!300656 () Bool)

(assert (=> b!300656 (and (bvsge (index!11558 lt!149634) #b00000000000000000000000000000000) (bvslt (index!11558 lt!149634) (size!7537 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312)))))))

(declare-fun res!158579 () Bool)

(assert (=> b!300656 (= res!158579 (= (select (arr!7185 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312))) (index!11558 lt!149634)) k!2524))))

(declare-fun e!189841 () Bool)

(assert (=> b!300656 (=> res!158579 e!189841)))

(assert (=> b!300656 (= e!189840 e!189841)))

(declare-fun b!300658 () Bool)

(assert (=> b!300658 (= e!189842 (Intermediate!2345 true lt!149554 #b00000000000000000000000000000000))))

(declare-fun b!300659 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300659 (= e!189839 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149554 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312)) mask!3809))))

(declare-fun b!300660 () Bool)

(assert (=> b!300660 (and (bvsge (index!11558 lt!149634) #b00000000000000000000000000000000) (bvslt (index!11558 lt!149634) (size!7537 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312)))))))

(assert (=> b!300660 (= e!189841 (= (select (arr!7185 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312))) (index!11558 lt!149634)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!300657 () Bool)

(assert (=> b!300657 (and (bvsge (index!11558 lt!149634) #b00000000000000000000000000000000) (bvslt (index!11558 lt!149634) (size!7537 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312)))))))

(declare-fun res!158577 () Bool)

(assert (=> b!300657 (= res!158577 (= (select (arr!7185 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312))) (index!11558 lt!149634)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!300657 (=> res!158577 e!189841)))

(declare-fun d!67675 () Bool)

(assert (=> d!67675 e!189838))

(declare-fun c!48635 () Bool)

(assert (=> d!67675 (= c!48635 (and (is-Intermediate!2345 lt!149634) (undefined!3157 lt!149634)))))

(assert (=> d!67675 (= lt!149634 e!189842)))

(declare-fun c!48634 () Bool)

(assert (=> d!67675 (= c!48634 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67675 (= lt!149633 (select (arr!7185 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312))) lt!149554))))

(assert (=> d!67675 (validMask!0 mask!3809)))

(assert (=> d!67675 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149554 k!2524 (array!15184 (store (arr!7185 a!3312) i!1256 k!2524) (size!7537 a!3312)) mask!3809) lt!149634)))

(assert (= (and d!67675 c!48634) b!300658))

(assert (= (and d!67675 (not c!48634)) b!300654))

(assert (= (and b!300654 c!48633) b!300652))

(assert (= (and b!300654 (not c!48633)) b!300659))

(assert (= (and d!67675 c!48635) b!300655))

(assert (= (and d!67675 (not c!48635)) b!300653))

(assert (= (and b!300653 res!158578) b!300656))

(assert (= (and b!300656 (not res!158579)) b!300657))

(assert (= (and b!300657 (not res!158577)) b!300660))

(declare-fun m!312595 () Bool)

(assert (=> b!300659 m!312595))

(assert (=> b!300659 m!312595))

(declare-fun m!312597 () Bool)

(assert (=> b!300659 m!312597))

(declare-fun m!312599 () Bool)

(assert (=> d!67675 m!312599))

(assert (=> d!67675 m!312479))

(declare-fun m!312601 () Bool)

(assert (=> b!300660 m!312601))

(assert (=> b!300657 m!312601))

(assert (=> b!300656 m!312601))

(assert (=> b!300462 d!67675))

(declare-fun b!300661 () Bool)

(declare-fun e!189846 () SeekEntryResult!2345)

(assert (=> b!300661 (= e!189846 (Intermediate!2345 false lt!149554 #b00000000000000000000000000000000))))

(declare-fun b!300662 () Bool)

(declare-fun e!189845 () Bool)

(declare-fun e!189847 () Bool)

(assert (=> b!300662 (= e!189845 e!189847)))

(declare-fun res!158583 () Bool)

(declare-fun lt!149636 () SeekEntryResult!2345)

(assert (=> b!300662 (= res!158583 (and (is-Intermediate!2345 lt!149636) (not (undefined!3157 lt!149636)) (bvslt (x!29774 lt!149636) #b01111111111111111111111111111110) (bvsge (x!29774 lt!149636) #b00000000000000000000000000000000) (bvsge (x!29774 lt!149636) #b00000000000000000000000000000000)))))

(assert (=> b!300662 (=> (not res!158583) (not e!189847))))

(declare-fun b!300663 () Bool)

(declare-fun e!189849 () SeekEntryResult!2345)

(assert (=> b!300663 (= e!189849 e!189846)))

(declare-fun c!48636 () Bool)

(declare-fun lt!149635 () (_ BitVec 64))

(assert (=> b!300663 (= c!48636 (or (= lt!149635 k!2524) (= (bvadd lt!149635 lt!149635) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!300664 () Bool)

(assert (=> b!300664 (= e!189845 (bvsge (x!29774 lt!149636) #b01111111111111111111111111111110))))

(declare-fun b!300665 () Bool)

(assert (=> b!300665 (and (bvsge (index!11558 lt!149636) #b00000000000000000000000000000000) (bvslt (index!11558 lt!149636) (size!7537 a!3312)))))

(declare-fun res!158584 () Bool)

