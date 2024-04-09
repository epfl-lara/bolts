; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29582 () Bool)

(assert start!29582)

(declare-fun b!298551 () Bool)

(declare-fun res!157503 () Bool)

(declare-fun e!188618 () Bool)

(assert (=> b!298551 (=> (not res!157503) (not e!188618))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!15106 0))(
  ( (array!15107 (arr!7154 (Array (_ BitVec 32) (_ BitVec 64))) (size!7506 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15106)

(assert (=> b!298551 (= res!157503 (and (= (size!7506 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7506 a!3312))))))

(declare-fun b!298552 () Bool)

(declare-fun e!188617 () Bool)

(assert (=> b!298552 (= e!188618 e!188617)))

(declare-fun res!157502 () Bool)

(assert (=> b!298552 (=> (not res!157502) (not e!188617))))

(declare-datatypes ((SeekEntryResult!2314 0))(
  ( (MissingZero!2314 (index!11429 (_ BitVec 32))) (Found!2314 (index!11430 (_ BitVec 32))) (Intermediate!2314 (undefined!3126 Bool) (index!11431 (_ BitVec 32)) (x!29626 (_ BitVec 32))) (Undefined!2314) (MissingVacant!2314 (index!11432 (_ BitVec 32))) )
))
(declare-fun lt!148499 () SeekEntryResult!2314)

(declare-fun lt!148495 () Bool)

(assert (=> b!298552 (= res!157502 (or lt!148495 (= lt!148499 (MissingVacant!2314 i!1256))))))

(assert (=> b!298552 (= lt!148495 (= lt!148499 (MissingZero!2314 i!1256)))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15106 (_ BitVec 32)) SeekEntryResult!2314)

(assert (=> b!298552 (= lt!148499 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!298553 () Bool)

(declare-fun res!157501 () Bool)

(assert (=> b!298553 (=> (not res!157501) (not e!188618))))

(declare-fun arrayContainsKey!0 (array!15106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298553 (= res!157501 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun res!157505 () Bool)

(assert (=> start!29582 (=> (not res!157505) (not e!188618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29582 (= res!157505 (validMask!0 mask!3809))))

(assert (=> start!29582 e!188618))

(assert (=> start!29582 true))

(declare-fun array_inv!5108 (array!15106) Bool)

(assert (=> start!29582 (array_inv!5108 a!3312)))

(declare-fun b!298554 () Bool)

(declare-fun res!157504 () Bool)

(assert (=> b!298554 (=> (not res!157504) (not e!188618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298554 (= res!157504 (validKeyInArray!0 k0!2524))))

(declare-fun b!298555 () Bool)

(declare-fun res!157506 () Bool)

(assert (=> b!298555 (=> (not res!157506) (not e!188617))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15106 (_ BitVec 32)) Bool)

(assert (=> b!298555 (= res!157506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun lt!148498 () SeekEntryResult!2314)

(declare-fun b!298556 () Bool)

(get-info :version)

(assert (=> b!298556 (= e!188617 (and (not lt!148495) (= lt!148499 (MissingVacant!2314 i!1256)) (let ((bdg!6425 (not ((_ is Intermediate!2314) lt!148498)))) (and (or bdg!6425 (not (undefined!3126 lt!148498))) (not bdg!6425) (= (select (arr!7154 a!3312) (index!11431 lt!148498)) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (index!11431 lt!148498) i!1256))))))))

(declare-fun lt!148496 () SeekEntryResult!2314)

(declare-fun lt!148497 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15106 (_ BitVec 32)) SeekEntryResult!2314)

(assert (=> b!298556 (= lt!148496 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148497 k0!2524 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)) mask!3809))))

(assert (=> b!298556 (= lt!148498 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148497 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298556 (= lt!148497 (toIndex!0 k0!2524 mask!3809))))

(assert (= (and start!29582 res!157505) b!298551))

(assert (= (and b!298551 res!157503) b!298554))

(assert (= (and b!298554 res!157504) b!298553))

(assert (= (and b!298553 res!157501) b!298552))

(assert (= (and b!298552 res!157502) b!298555))

(assert (= (and b!298555 res!157506) b!298556))

(declare-fun m!311025 () Bool)

(assert (=> start!29582 m!311025))

(declare-fun m!311027 () Bool)

(assert (=> start!29582 m!311027))

(declare-fun m!311029 () Bool)

(assert (=> b!298555 m!311029))

(declare-fun m!311031 () Bool)

(assert (=> b!298552 m!311031))

(declare-fun m!311033 () Bool)

(assert (=> b!298554 m!311033))

(declare-fun m!311035 () Bool)

(assert (=> b!298553 m!311035))

(declare-fun m!311037 () Bool)

(assert (=> b!298556 m!311037))

(declare-fun m!311039 () Bool)

(assert (=> b!298556 m!311039))

(declare-fun m!311041 () Bool)

(assert (=> b!298556 m!311041))

(declare-fun m!311043 () Bool)

(assert (=> b!298556 m!311043))

(declare-fun m!311045 () Bool)

(assert (=> b!298556 m!311045))

(check-sat (not b!298554) (not b!298556) (not b!298553) (not b!298552) (not start!29582) (not b!298555))
(check-sat)
(get-model)

(declare-fun b!298587 () Bool)

(declare-fun e!188636 () SeekEntryResult!2314)

(declare-fun lt!148522 () SeekEntryResult!2314)

(assert (=> b!298587 (= e!188636 (Found!2314 (index!11431 lt!148522)))))

(declare-fun b!298589 () Bool)

(declare-fun c!48120 () Bool)

(declare-fun lt!148523 () (_ BitVec 64))

(assert (=> b!298589 (= c!48120 (= lt!148523 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188634 () SeekEntryResult!2314)

(assert (=> b!298589 (= e!188636 e!188634)))

(declare-fun b!298590 () Bool)

(declare-fun e!188635 () SeekEntryResult!2314)

(assert (=> b!298590 (= e!188635 e!188636)))

(assert (=> b!298590 (= lt!148523 (select (arr!7154 a!3312) (index!11431 lt!148522)))))

(declare-fun c!48118 () Bool)

(assert (=> b!298590 (= c!48118 (= lt!148523 k0!2524))))

(declare-fun b!298591 () Bool)

(assert (=> b!298591 (= e!188635 Undefined!2314)))

(declare-fun b!298592 () Bool)

(assert (=> b!298592 (= e!188634 (MissingZero!2314 (index!11431 lt!148522)))))

(declare-fun d!67285 () Bool)

(declare-fun lt!148521 () SeekEntryResult!2314)

(assert (=> d!67285 (and (or ((_ is Undefined!2314) lt!148521) (not ((_ is Found!2314) lt!148521)) (and (bvsge (index!11430 lt!148521) #b00000000000000000000000000000000) (bvslt (index!11430 lt!148521) (size!7506 a!3312)))) (or ((_ is Undefined!2314) lt!148521) ((_ is Found!2314) lt!148521) (not ((_ is MissingZero!2314) lt!148521)) (and (bvsge (index!11429 lt!148521) #b00000000000000000000000000000000) (bvslt (index!11429 lt!148521) (size!7506 a!3312)))) (or ((_ is Undefined!2314) lt!148521) ((_ is Found!2314) lt!148521) ((_ is MissingZero!2314) lt!148521) (not ((_ is MissingVacant!2314) lt!148521)) (and (bvsge (index!11432 lt!148521) #b00000000000000000000000000000000) (bvslt (index!11432 lt!148521) (size!7506 a!3312)))) (or ((_ is Undefined!2314) lt!148521) (ite ((_ is Found!2314) lt!148521) (= (select (arr!7154 a!3312) (index!11430 lt!148521)) k0!2524) (ite ((_ is MissingZero!2314) lt!148521) (= (select (arr!7154 a!3312) (index!11429 lt!148521)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2314) lt!148521) (= (select (arr!7154 a!3312) (index!11432 lt!148521)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67285 (= lt!148521 e!188635)))

(declare-fun c!48119 () Bool)

(assert (=> d!67285 (= c!48119 (and ((_ is Intermediate!2314) lt!148522) (undefined!3126 lt!148522)))))

(assert (=> d!67285 (= lt!148522 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67285 (validMask!0 mask!3809)))

(assert (=> d!67285 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!148521)))

(declare-fun b!298588 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15106 (_ BitVec 32)) SeekEntryResult!2314)

(assert (=> b!298588 (= e!188634 (seekKeyOrZeroReturnVacant!0 (x!29626 lt!148522) (index!11431 lt!148522) (index!11431 lt!148522) k0!2524 a!3312 mask!3809))))

(assert (= (and d!67285 c!48119) b!298591))

(assert (= (and d!67285 (not c!48119)) b!298590))

(assert (= (and b!298590 c!48118) b!298587))

(assert (= (and b!298590 (not c!48118)) b!298589))

(assert (= (and b!298589 c!48120) b!298592))

(assert (= (and b!298589 (not c!48120)) b!298588))

(declare-fun m!311069 () Bool)

(assert (=> b!298590 m!311069))

(declare-fun m!311071 () Bool)

(assert (=> d!67285 m!311071))

(declare-fun m!311073 () Bool)

(assert (=> d!67285 m!311073))

(assert (=> d!67285 m!311045))

(declare-fun m!311075 () Bool)

(assert (=> d!67285 m!311075))

(declare-fun m!311077 () Bool)

(assert (=> d!67285 m!311077))

(assert (=> d!67285 m!311045))

(assert (=> d!67285 m!311025))

(declare-fun m!311079 () Bool)

(assert (=> b!298588 m!311079))

(assert (=> b!298552 d!67285))

(declare-fun d!67291 () Bool)

(declare-fun res!157533 () Bool)

(declare-fun e!188647 () Bool)

(assert (=> d!67291 (=> res!157533 e!188647)))

(assert (=> d!67291 (= res!157533 (= (select (arr!7154 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67291 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!188647)))

(declare-fun b!298605 () Bool)

(declare-fun e!188648 () Bool)

(assert (=> b!298605 (= e!188647 e!188648)))

(declare-fun res!157534 () Bool)

(assert (=> b!298605 (=> (not res!157534) (not e!188648))))

(assert (=> b!298605 (= res!157534 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7506 a!3312)))))

(declare-fun b!298606 () Bool)

(assert (=> b!298606 (= e!188648 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67291 (not res!157533)) b!298605))

(assert (= (and b!298605 res!157534) b!298606))

(declare-fun m!311081 () Bool)

(assert (=> d!67291 m!311081))

(declare-fun m!311083 () Bool)

(assert (=> b!298606 m!311083))

(assert (=> b!298553 d!67291))

(declare-fun d!67293 () Bool)

(assert (=> d!67293 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!298554 d!67293))

(declare-fun d!67295 () Bool)

(assert (=> d!67295 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29582 d!67295))

(declare-fun d!67307 () Bool)

(assert (=> d!67307 (= (array_inv!5108 a!3312) (bvsge (size!7506 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29582 d!67307))

(declare-fun b!298655 () Bool)

(declare-fun e!188682 () Bool)

(declare-fun call!25794 () Bool)

(assert (=> b!298655 (= e!188682 call!25794)))

(declare-fun bm!25791 () Bool)

(assert (=> bm!25791 (= call!25794 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!298656 () Bool)

(declare-fun e!188683 () Bool)

(assert (=> b!298656 (= e!188683 e!188682)))

(declare-fun c!48138 () Bool)

(assert (=> b!298656 (= c!48138 (validKeyInArray!0 (select (arr!7154 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!67309 () Bool)

(declare-fun res!157554 () Bool)

(assert (=> d!67309 (=> res!157554 e!188683)))

(assert (=> d!67309 (= res!157554 (bvsge #b00000000000000000000000000000000 (size!7506 a!3312)))))

(assert (=> d!67309 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188683)))

(declare-fun b!298657 () Bool)

(declare-fun e!188684 () Bool)

(assert (=> b!298657 (= e!188682 e!188684)))

(declare-fun lt!148558 () (_ BitVec 64))

(assert (=> b!298657 (= lt!148558 (select (arr!7154 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9306 0))(
  ( (Unit!9307) )
))
(declare-fun lt!148557 () Unit!9306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15106 (_ BitVec 64) (_ BitVec 32)) Unit!9306)

(assert (=> b!298657 (= lt!148557 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148558 #b00000000000000000000000000000000))))

(assert (=> b!298657 (arrayContainsKey!0 a!3312 lt!148558 #b00000000000000000000000000000000)))

(declare-fun lt!148559 () Unit!9306)

(assert (=> b!298657 (= lt!148559 lt!148557)))

(declare-fun res!157553 () Bool)

(assert (=> b!298657 (= res!157553 (= (seekEntryOrOpen!0 (select (arr!7154 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2314 #b00000000000000000000000000000000)))))

(assert (=> b!298657 (=> (not res!157553) (not e!188684))))

(declare-fun b!298658 () Bool)

(assert (=> b!298658 (= e!188684 call!25794)))

(assert (= (and d!67309 (not res!157554)) b!298656))

(assert (= (and b!298656 c!48138) b!298657))

(assert (= (and b!298656 (not c!48138)) b!298655))

(assert (= (and b!298657 res!157553) b!298658))

(assert (= (or b!298658 b!298655) bm!25791))

(declare-fun m!311123 () Bool)

(assert (=> bm!25791 m!311123))

(assert (=> b!298656 m!311081))

(assert (=> b!298656 m!311081))

(declare-fun m!311125 () Bool)

(assert (=> b!298656 m!311125))

(assert (=> b!298657 m!311081))

(declare-fun m!311127 () Bool)

(assert (=> b!298657 m!311127))

(declare-fun m!311129 () Bool)

(assert (=> b!298657 m!311129))

(assert (=> b!298657 m!311081))

(declare-fun m!311131 () Bool)

(assert (=> b!298657 m!311131))

(assert (=> b!298555 d!67309))

(declare-fun b!298713 () Bool)

(declare-fun lt!148576 () SeekEntryResult!2314)

(assert (=> b!298713 (and (bvsge (index!11431 lt!148576) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148576) (size!7506 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)))))))

(declare-fun res!157575 () Bool)

(assert (=> b!298713 (= res!157575 (= (select (arr!7154 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312))) (index!11431 lt!148576)) k0!2524))))

(declare-fun e!188719 () Bool)

(assert (=> b!298713 (=> res!157575 e!188719)))

(declare-fun e!188715 () Bool)

(assert (=> b!298713 (= e!188715 e!188719)))

(declare-fun b!298714 () Bool)

(declare-fun e!188717 () Bool)

(assert (=> b!298714 (= e!188717 e!188715)))

(declare-fun res!157576 () Bool)

(assert (=> b!298714 (= res!157576 (and ((_ is Intermediate!2314) lt!148576) (not (undefined!3126 lt!148576)) (bvslt (x!29626 lt!148576) #b01111111111111111111111111111110) (bvsge (x!29626 lt!148576) #b00000000000000000000000000000000) (bvsge (x!29626 lt!148576) #b00000000000000000000000000000000)))))

(assert (=> b!298714 (=> (not res!157576) (not e!188715))))

(declare-fun d!67317 () Bool)

(assert (=> d!67317 e!188717))

(declare-fun c!48157 () Bool)

(assert (=> d!67317 (= c!48157 (and ((_ is Intermediate!2314) lt!148576) (undefined!3126 lt!148576)))))

(declare-fun e!188718 () SeekEntryResult!2314)

(assert (=> d!67317 (= lt!148576 e!188718)))

(declare-fun c!48159 () Bool)

(assert (=> d!67317 (= c!48159 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148577 () (_ BitVec 64))

(assert (=> d!67317 (= lt!148577 (select (arr!7154 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312))) lt!148497))))

(assert (=> d!67317 (validMask!0 mask!3809)))

(assert (=> d!67317 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148497 k0!2524 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)) mask!3809) lt!148576)))

(declare-fun b!298715 () Bool)

(assert (=> b!298715 (and (bvsge (index!11431 lt!148576) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148576) (size!7506 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)))))))

(assert (=> b!298715 (= e!188719 (= (select (arr!7154 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312))) (index!11431 lt!148576)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188716 () SeekEntryResult!2314)

(declare-fun b!298716 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298716 (= e!188716 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)) mask!3809))))

(declare-fun b!298717 () Bool)

(assert (=> b!298717 (and (bvsge (index!11431 lt!148576) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148576) (size!7506 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)))))))

(declare-fun res!157574 () Bool)

(assert (=> b!298717 (= res!157574 (= (select (arr!7154 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312))) (index!11431 lt!148576)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298717 (=> res!157574 e!188719)))

(declare-fun b!298718 () Bool)

(assert (=> b!298718 (= e!188718 (Intermediate!2314 true lt!148497 #b00000000000000000000000000000000))))

(declare-fun b!298719 () Bool)

(assert (=> b!298719 (= e!188718 e!188716)))

(declare-fun c!48158 () Bool)

(assert (=> b!298719 (= c!48158 (or (= lt!148577 k0!2524) (= (bvadd lt!148577 lt!148577) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298720 () Bool)

(assert (=> b!298720 (= e!188717 (bvsge (x!29626 lt!148576) #b01111111111111111111111111111110))))

(declare-fun b!298721 () Bool)

(assert (=> b!298721 (= e!188716 (Intermediate!2314 false lt!148497 #b00000000000000000000000000000000))))

(assert (= (and d!67317 c!48159) b!298718))

(assert (= (and d!67317 (not c!48159)) b!298719))

(assert (= (and b!298719 c!48158) b!298721))

(assert (= (and b!298719 (not c!48158)) b!298716))

(assert (= (and d!67317 c!48157) b!298720))

(assert (= (and d!67317 (not c!48157)) b!298714))

(assert (= (and b!298714 res!157576) b!298713))

(assert (= (and b!298713 (not res!157575)) b!298717))

(assert (= (and b!298717 (not res!157574)) b!298715))

(declare-fun m!311147 () Bool)

(assert (=> b!298716 m!311147))

(assert (=> b!298716 m!311147))

(declare-fun m!311149 () Bool)

(assert (=> b!298716 m!311149))

(declare-fun m!311151 () Bool)

(assert (=> d!67317 m!311151))

(assert (=> d!67317 m!311025))

(declare-fun m!311153 () Bool)

(assert (=> b!298717 m!311153))

(assert (=> b!298715 m!311153))

(assert (=> b!298713 m!311153))

(assert (=> b!298556 d!67317))

(declare-fun b!298732 () Bool)

(declare-fun lt!148578 () SeekEntryResult!2314)

(assert (=> b!298732 (and (bvsge (index!11431 lt!148578) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148578) (size!7506 a!3312)))))

(declare-fun res!157578 () Bool)

(assert (=> b!298732 (= res!157578 (= (select (arr!7154 a!3312) (index!11431 lt!148578)) k0!2524))))

(declare-fun e!188728 () Bool)

(assert (=> b!298732 (=> res!157578 e!188728)))

(declare-fun e!188724 () Bool)

(assert (=> b!298732 (= e!188724 e!188728)))

(declare-fun b!298733 () Bool)

(declare-fun e!188726 () Bool)

(assert (=> b!298733 (= e!188726 e!188724)))

(declare-fun res!157579 () Bool)

(assert (=> b!298733 (= res!157579 (and ((_ is Intermediate!2314) lt!148578) (not (undefined!3126 lt!148578)) (bvslt (x!29626 lt!148578) #b01111111111111111111111111111110) (bvsge (x!29626 lt!148578) #b00000000000000000000000000000000) (bvsge (x!29626 lt!148578) #b00000000000000000000000000000000)))))

(assert (=> b!298733 (=> (not res!157579) (not e!188724))))

(declare-fun d!67327 () Bool)

(assert (=> d!67327 e!188726))

(declare-fun c!48164 () Bool)

(assert (=> d!67327 (= c!48164 (and ((_ is Intermediate!2314) lt!148578) (undefined!3126 lt!148578)))))

(declare-fun e!188727 () SeekEntryResult!2314)

(assert (=> d!67327 (= lt!148578 e!188727)))

(declare-fun c!48166 () Bool)

(assert (=> d!67327 (= c!48166 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148579 () (_ BitVec 64))

(assert (=> d!67327 (= lt!148579 (select (arr!7154 a!3312) lt!148497))))

(assert (=> d!67327 (validMask!0 mask!3809)))

(assert (=> d!67327 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148497 k0!2524 a!3312 mask!3809) lt!148578)))

(declare-fun b!298734 () Bool)

(assert (=> b!298734 (and (bvsge (index!11431 lt!148578) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148578) (size!7506 a!3312)))))

(assert (=> b!298734 (= e!188728 (= (select (arr!7154 a!3312) (index!11431 lt!148578)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188725 () SeekEntryResult!2314)

(declare-fun b!298735 () Bool)

(assert (=> b!298735 (= e!188725 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!298736 () Bool)

(assert (=> b!298736 (and (bvsge (index!11431 lt!148578) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148578) (size!7506 a!3312)))))

(declare-fun res!157577 () Bool)

(assert (=> b!298736 (= res!157577 (= (select (arr!7154 a!3312) (index!11431 lt!148578)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298736 (=> res!157577 e!188728)))

(declare-fun b!298737 () Bool)

(assert (=> b!298737 (= e!188727 (Intermediate!2314 true lt!148497 #b00000000000000000000000000000000))))

(declare-fun b!298738 () Bool)

(assert (=> b!298738 (= e!188727 e!188725)))

(declare-fun c!48165 () Bool)

(assert (=> b!298738 (= c!48165 (or (= lt!148579 k0!2524) (= (bvadd lt!148579 lt!148579) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298739 () Bool)

(assert (=> b!298739 (= e!188726 (bvsge (x!29626 lt!148578) #b01111111111111111111111111111110))))

(declare-fun b!298740 () Bool)

(assert (=> b!298740 (= e!188725 (Intermediate!2314 false lt!148497 #b00000000000000000000000000000000))))

(assert (= (and d!67327 c!48166) b!298737))

(assert (= (and d!67327 (not c!48166)) b!298738))

(assert (= (and b!298738 c!48165) b!298740))

(assert (= (and b!298738 (not c!48165)) b!298735))

(assert (= (and d!67327 c!48164) b!298739))

(assert (= (and d!67327 (not c!48164)) b!298733))

(assert (= (and b!298733 res!157579) b!298732))

(assert (= (and b!298732 (not res!157578)) b!298736))

(assert (= (and b!298736 (not res!157577)) b!298734))

(assert (=> b!298735 m!311147))

(assert (=> b!298735 m!311147))

(declare-fun m!311155 () Bool)

(assert (=> b!298735 m!311155))

(declare-fun m!311157 () Bool)

(assert (=> d!67327 m!311157))

(assert (=> d!67327 m!311025))

(declare-fun m!311159 () Bool)

(assert (=> b!298736 m!311159))

(assert (=> b!298734 m!311159))

(assert (=> b!298732 m!311159))

(assert (=> b!298556 d!67327))

(declare-fun d!67329 () Bool)

(declare-fun lt!148595 () (_ BitVec 32))

(declare-fun lt!148594 () (_ BitVec 32))

(assert (=> d!67329 (= lt!148595 (bvmul (bvxor lt!148594 (bvlshr lt!148594 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67329 (= lt!148594 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67329 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157586 (let ((h!5331 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29632 (bvmul (bvxor h!5331 (bvlshr h!5331 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29632 (bvlshr x!29632 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157586 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157586 #b00000000000000000000000000000000))))))

(assert (=> d!67329 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!148595 (bvlshr lt!148595 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!298556 d!67329))

(check-sat (not d!67327) (not b!298735) (not b!298588) (not d!67317) (not d!67285) (not b!298656) (not b!298606) (not b!298716) (not bm!25791) (not b!298657))
(check-sat)
(get-model)

(assert (=> d!67317 d!67295))

(declare-fun b!298850 () Bool)

(declare-fun e!188794 () Bool)

(declare-fun call!25796 () Bool)

(assert (=> b!298850 (= e!188794 call!25796)))

(declare-fun bm!25793 () Bool)

(assert (=> bm!25793 (= call!25796 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!298851 () Bool)

(declare-fun e!188795 () Bool)

(assert (=> b!298851 (= e!188795 e!188794)))

(declare-fun c!48206 () Bool)

(assert (=> b!298851 (= c!48206 (validKeyInArray!0 (select (arr!7154 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!67361 () Bool)

(declare-fun res!157616 () Bool)

(assert (=> d!67361 (=> res!157616 e!188795)))

(assert (=> d!67361 (= res!157616 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7506 a!3312)))))

(assert (=> d!67361 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809) e!188795)))

(declare-fun b!298852 () Bool)

(declare-fun e!188796 () Bool)

(assert (=> b!298852 (= e!188794 e!188796)))

(declare-fun lt!148636 () (_ BitVec 64))

(assert (=> b!298852 (= lt!148636 (select (arr!7154 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!148635 () Unit!9306)

(assert (=> b!298852 (= lt!148635 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148636 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!298852 (arrayContainsKey!0 a!3312 lt!148636 #b00000000000000000000000000000000)))

(declare-fun lt!148637 () Unit!9306)

(assert (=> b!298852 (= lt!148637 lt!148635)))

(declare-fun res!157615 () Bool)

(assert (=> b!298852 (= res!157615 (= (seekEntryOrOpen!0 (select (arr!7154 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3312 mask!3809) (Found!2314 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!298852 (=> (not res!157615) (not e!188796))))

(declare-fun b!298853 () Bool)

(assert (=> b!298853 (= e!188796 call!25796)))

(assert (= (and d!67361 (not res!157616)) b!298851))

(assert (= (and b!298851 c!48206) b!298852))

(assert (= (and b!298851 (not c!48206)) b!298850))

(assert (= (and b!298852 res!157615) b!298853))

(assert (= (or b!298853 b!298850) bm!25793))

(declare-fun m!311253 () Bool)

(assert (=> bm!25793 m!311253))

(declare-fun m!311255 () Bool)

(assert (=> b!298851 m!311255))

(assert (=> b!298851 m!311255))

(declare-fun m!311257 () Bool)

(assert (=> b!298851 m!311257))

(assert (=> b!298852 m!311255))

(declare-fun m!311259 () Bool)

(assert (=> b!298852 m!311259))

(declare-fun m!311261 () Bool)

(assert (=> b!298852 m!311261))

(assert (=> b!298852 m!311255))

(declare-fun m!311263 () Bool)

(assert (=> b!298852 m!311263))

(assert (=> bm!25791 d!67361))

(declare-fun d!67363 () Bool)

(declare-fun res!157617 () Bool)

(declare-fun e!188797 () Bool)

(assert (=> d!67363 (=> res!157617 e!188797)))

(assert (=> d!67363 (= res!157617 (= (select (arr!7154 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!2524))))

(assert (=> d!67363 (= (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!188797)))

(declare-fun b!298854 () Bool)

(declare-fun e!188798 () Bool)

(assert (=> b!298854 (= e!188797 e!188798)))

(declare-fun res!157618 () Bool)

(assert (=> b!298854 (=> (not res!157618) (not e!188798))))

(assert (=> b!298854 (= res!157618 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!7506 a!3312)))))

(declare-fun b!298855 () Bool)

(assert (=> b!298855 (= e!188798 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!67363 (not res!157617)) b!298854))

(assert (= (and b!298854 res!157618) b!298855))

(assert (=> d!67363 m!311255))

(declare-fun m!311265 () Bool)

(assert (=> b!298855 m!311265))

(assert (=> b!298606 d!67363))

(assert (=> d!67327 d!67295))

(declare-fun d!67365 () Bool)

(assert (=> d!67365 (= (validKeyInArray!0 (select (arr!7154 a!3312) #b00000000000000000000000000000000)) (and (not (= (select (arr!7154 a!3312) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7154 a!3312) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!298656 d!67365))

(declare-fun lt!148638 () SeekEntryResult!2314)

(declare-fun b!298856 () Bool)

(assert (=> b!298856 (and (bvsge (index!11431 lt!148638) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148638) (size!7506 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)))))))

(declare-fun res!157620 () Bool)

(assert (=> b!298856 (= res!157620 (= (select (arr!7154 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312))) (index!11431 lt!148638)) k0!2524))))

(declare-fun e!188803 () Bool)

(assert (=> b!298856 (=> res!157620 e!188803)))

(declare-fun e!188799 () Bool)

(assert (=> b!298856 (= e!188799 e!188803)))

(declare-fun b!298857 () Bool)

(declare-fun e!188801 () Bool)

(assert (=> b!298857 (= e!188801 e!188799)))

(declare-fun res!157621 () Bool)

(assert (=> b!298857 (= res!157621 (and ((_ is Intermediate!2314) lt!148638) (not (undefined!3126 lt!148638)) (bvslt (x!29626 lt!148638) #b01111111111111111111111111111110) (bvsge (x!29626 lt!148638) #b00000000000000000000000000000000) (bvsge (x!29626 lt!148638) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!298857 (=> (not res!157621) (not e!188799))))

(declare-fun d!67367 () Bool)

(assert (=> d!67367 e!188801))

(declare-fun c!48207 () Bool)

(assert (=> d!67367 (= c!48207 (and ((_ is Intermediate!2314) lt!148638) (undefined!3126 lt!148638)))))

(declare-fun e!188802 () SeekEntryResult!2314)

(assert (=> d!67367 (= lt!148638 e!188802)))

(declare-fun c!48209 () Bool)

(assert (=> d!67367 (= c!48209 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!148639 () (_ BitVec 64))

(assert (=> d!67367 (= lt!148639 (select (arr!7154 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312))) (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809)))))

(assert (=> d!67367 (validMask!0 mask!3809)))

(assert (=> d!67367 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)) mask!3809) lt!148638)))

(declare-fun b!298858 () Bool)

(assert (=> b!298858 (and (bvsge (index!11431 lt!148638) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148638) (size!7506 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)))))))

(assert (=> b!298858 (= e!188803 (= (select (arr!7154 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312))) (index!11431 lt!148638)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298859 () Bool)

(declare-fun e!188800 () SeekEntryResult!2314)

(assert (=> b!298859 (= e!188800 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3809) k0!2524 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)) mask!3809))))

(declare-fun b!298860 () Bool)

(assert (=> b!298860 (and (bvsge (index!11431 lt!148638) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148638) (size!7506 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312)))))))

(declare-fun res!157619 () Bool)

(assert (=> b!298860 (= res!157619 (= (select (arr!7154 (array!15107 (store (arr!7154 a!3312) i!1256 k0!2524) (size!7506 a!3312))) (index!11431 lt!148638)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298860 (=> res!157619 e!188803)))

(declare-fun b!298861 () Bool)

(assert (=> b!298861 (= e!188802 (Intermediate!2314 true (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!298862 () Bool)

(assert (=> b!298862 (= e!188802 e!188800)))

(declare-fun c!48208 () Bool)

(assert (=> b!298862 (= c!48208 (or (= lt!148639 k0!2524) (= (bvadd lt!148639 lt!148639) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298863 () Bool)

(assert (=> b!298863 (= e!188801 (bvsge (x!29626 lt!148638) #b01111111111111111111111111111110))))

(declare-fun b!298864 () Bool)

(assert (=> b!298864 (= e!188800 (Intermediate!2314 false (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67367 c!48209) b!298861))

(assert (= (and d!67367 (not c!48209)) b!298862))

(assert (= (and b!298862 c!48208) b!298864))

(assert (= (and b!298862 (not c!48208)) b!298859))

(assert (= (and d!67367 c!48207) b!298863))

(assert (= (and d!67367 (not c!48207)) b!298857))

(assert (= (and b!298857 res!157621) b!298856))

(assert (= (and b!298856 (not res!157620)) b!298860))

(assert (= (and b!298860 (not res!157619)) b!298858))

(assert (=> b!298859 m!311147))

(declare-fun m!311267 () Bool)

(assert (=> b!298859 m!311267))

(assert (=> b!298859 m!311267))

(declare-fun m!311269 () Bool)

(assert (=> b!298859 m!311269))

(assert (=> d!67367 m!311147))

(declare-fun m!311271 () Bool)

(assert (=> d!67367 m!311271))

(assert (=> d!67367 m!311025))

(declare-fun m!311273 () Bool)

(assert (=> b!298860 m!311273))

(assert (=> b!298858 m!311273))

(assert (=> b!298856 m!311273))

(assert (=> b!298716 d!67367))

(declare-fun d!67369 () Bool)

(declare-fun lt!148642 () (_ BitVec 32))

(assert (=> d!67369 (and (bvsge lt!148642 #b00000000000000000000000000000000) (bvslt lt!148642 (bvadd mask!3809 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!67369 (= lt!148642 (choose!52 lt!148497 #b00000000000000000000000000000000 mask!3809))))

(assert (=> d!67369 (validMask!0 mask!3809)))

(assert (=> d!67369 (= (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) lt!148642)))

(declare-fun bs!10544 () Bool)

(assert (= bs!10544 d!67369))

(declare-fun m!311275 () Bool)

(assert (=> bs!10544 m!311275))

(assert (=> bs!10544 m!311025))

(assert (=> b!298716 d!67369))

(declare-fun b!298865 () Bool)

(declare-fun lt!148643 () SeekEntryResult!2314)

(assert (=> b!298865 (and (bvsge (index!11431 lt!148643) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148643) (size!7506 a!3312)))))

(declare-fun res!157623 () Bool)

(assert (=> b!298865 (= res!157623 (= (select (arr!7154 a!3312) (index!11431 lt!148643)) k0!2524))))

(declare-fun e!188808 () Bool)

(assert (=> b!298865 (=> res!157623 e!188808)))

(declare-fun e!188804 () Bool)

(assert (=> b!298865 (= e!188804 e!188808)))

(declare-fun b!298866 () Bool)

(declare-fun e!188806 () Bool)

(assert (=> b!298866 (= e!188806 e!188804)))

(declare-fun res!157624 () Bool)

(assert (=> b!298866 (= res!157624 (and ((_ is Intermediate!2314) lt!148643) (not (undefined!3126 lt!148643)) (bvslt (x!29626 lt!148643) #b01111111111111111111111111111110) (bvsge (x!29626 lt!148643) #b00000000000000000000000000000000) (bvsge (x!29626 lt!148643) #b00000000000000000000000000000000)))))

(assert (=> b!298866 (=> (not res!157624) (not e!188804))))

(declare-fun d!67371 () Bool)

(assert (=> d!67371 e!188806))

(declare-fun c!48210 () Bool)

(assert (=> d!67371 (= c!48210 (and ((_ is Intermediate!2314) lt!148643) (undefined!3126 lt!148643)))))

(declare-fun e!188807 () SeekEntryResult!2314)

(assert (=> d!67371 (= lt!148643 e!188807)))

(declare-fun c!48212 () Bool)

(assert (=> d!67371 (= c!48212 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148644 () (_ BitVec 64))

(assert (=> d!67371 (= lt!148644 (select (arr!7154 a!3312) (toIndex!0 k0!2524 mask!3809)))))

(assert (=> d!67371 (validMask!0 mask!3809)))

(assert (=> d!67371 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809) lt!148643)))

(declare-fun b!298867 () Bool)

(assert (=> b!298867 (and (bvsge (index!11431 lt!148643) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148643) (size!7506 a!3312)))))

(assert (=> b!298867 (= e!188808 (= (select (arr!7154 a!3312) (index!11431 lt!148643)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188805 () SeekEntryResult!2314)

(declare-fun b!298868 () Bool)

(assert (=> b!298868 (= e!188805 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2524 mask!3809) #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!298869 () Bool)

(assert (=> b!298869 (and (bvsge (index!11431 lt!148643) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148643) (size!7506 a!3312)))))

(declare-fun res!157622 () Bool)

(assert (=> b!298869 (= res!157622 (= (select (arr!7154 a!3312) (index!11431 lt!148643)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298869 (=> res!157622 e!188808)))

(declare-fun b!298870 () Bool)

(assert (=> b!298870 (= e!188807 (Intermediate!2314 true (toIndex!0 k0!2524 mask!3809) #b00000000000000000000000000000000))))

(declare-fun b!298871 () Bool)

(assert (=> b!298871 (= e!188807 e!188805)))

(declare-fun c!48211 () Bool)

(assert (=> b!298871 (= c!48211 (or (= lt!148644 k0!2524) (= (bvadd lt!148644 lt!148644) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298872 () Bool)

(assert (=> b!298872 (= e!188806 (bvsge (x!29626 lt!148643) #b01111111111111111111111111111110))))

(declare-fun b!298873 () Bool)

(assert (=> b!298873 (= e!188805 (Intermediate!2314 false (toIndex!0 k0!2524 mask!3809) #b00000000000000000000000000000000))))

(assert (= (and d!67371 c!48212) b!298870))

(assert (= (and d!67371 (not c!48212)) b!298871))

(assert (= (and b!298871 c!48211) b!298873))

(assert (= (and b!298871 (not c!48211)) b!298868))

(assert (= (and d!67371 c!48210) b!298872))

(assert (= (and d!67371 (not c!48210)) b!298866))

(assert (= (and b!298866 res!157624) b!298865))

(assert (= (and b!298865 (not res!157623)) b!298869))

(assert (= (and b!298869 (not res!157622)) b!298867))

(assert (=> b!298868 m!311045))

(declare-fun m!311277 () Bool)

(assert (=> b!298868 m!311277))

(assert (=> b!298868 m!311277))

(declare-fun m!311279 () Bool)

(assert (=> b!298868 m!311279))

(assert (=> d!67371 m!311045))

(declare-fun m!311281 () Bool)

(assert (=> d!67371 m!311281))

(assert (=> d!67371 m!311025))

(declare-fun m!311283 () Bool)

(assert (=> b!298869 m!311283))

(assert (=> b!298867 m!311283))

(assert (=> b!298865 m!311283))

(assert (=> d!67285 d!67371))

(assert (=> d!67285 d!67329))

(assert (=> d!67285 d!67295))

(declare-fun d!67373 () Bool)

(assert (=> d!67373 (arrayContainsKey!0 a!3312 lt!148558 #b00000000000000000000000000000000)))

(declare-fun lt!148647 () Unit!9306)

(declare-fun choose!13 (array!15106 (_ BitVec 64) (_ BitVec 32)) Unit!9306)

(assert (=> d!67373 (= lt!148647 (choose!13 a!3312 lt!148558 #b00000000000000000000000000000000))))

(assert (=> d!67373 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!67373 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148558 #b00000000000000000000000000000000) lt!148647)))

(declare-fun bs!10545 () Bool)

(assert (= bs!10545 d!67373))

(assert (=> bs!10545 m!311129))

(declare-fun m!311285 () Bool)

(assert (=> bs!10545 m!311285))

(assert (=> b!298657 d!67373))

(declare-fun d!67375 () Bool)

(declare-fun res!157625 () Bool)

(declare-fun e!188809 () Bool)

(assert (=> d!67375 (=> res!157625 e!188809)))

(assert (=> d!67375 (= res!157625 (= (select (arr!7154 a!3312) #b00000000000000000000000000000000) lt!148558))))

(assert (=> d!67375 (= (arrayContainsKey!0 a!3312 lt!148558 #b00000000000000000000000000000000) e!188809)))

(declare-fun b!298874 () Bool)

(declare-fun e!188810 () Bool)

(assert (=> b!298874 (= e!188809 e!188810)))

(declare-fun res!157626 () Bool)

(assert (=> b!298874 (=> (not res!157626) (not e!188810))))

(assert (=> b!298874 (= res!157626 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7506 a!3312)))))

(declare-fun b!298875 () Bool)

(assert (=> b!298875 (= e!188810 (arrayContainsKey!0 a!3312 lt!148558 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67375 (not res!157625)) b!298874))

(assert (= (and b!298874 res!157626) b!298875))

(assert (=> d!67375 m!311081))

(declare-fun m!311287 () Bool)

(assert (=> b!298875 m!311287))

(assert (=> b!298657 d!67375))

(declare-fun b!298876 () Bool)

(declare-fun e!188813 () SeekEntryResult!2314)

(declare-fun lt!148649 () SeekEntryResult!2314)

(assert (=> b!298876 (= e!188813 (Found!2314 (index!11431 lt!148649)))))

(declare-fun b!298878 () Bool)

(declare-fun c!48215 () Bool)

(declare-fun lt!148650 () (_ BitVec 64))

(assert (=> b!298878 (= c!48215 (= lt!148650 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188811 () SeekEntryResult!2314)

(assert (=> b!298878 (= e!188813 e!188811)))

(declare-fun b!298879 () Bool)

(declare-fun e!188812 () SeekEntryResult!2314)

(assert (=> b!298879 (= e!188812 e!188813)))

(assert (=> b!298879 (= lt!148650 (select (arr!7154 a!3312) (index!11431 lt!148649)))))

(declare-fun c!48213 () Bool)

(assert (=> b!298879 (= c!48213 (= lt!148650 (select (arr!7154 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!298880 () Bool)

(assert (=> b!298880 (= e!188812 Undefined!2314)))

(declare-fun b!298881 () Bool)

(assert (=> b!298881 (= e!188811 (MissingZero!2314 (index!11431 lt!148649)))))

(declare-fun d!67377 () Bool)

(declare-fun lt!148648 () SeekEntryResult!2314)

(assert (=> d!67377 (and (or ((_ is Undefined!2314) lt!148648) (not ((_ is Found!2314) lt!148648)) (and (bvsge (index!11430 lt!148648) #b00000000000000000000000000000000) (bvslt (index!11430 lt!148648) (size!7506 a!3312)))) (or ((_ is Undefined!2314) lt!148648) ((_ is Found!2314) lt!148648) (not ((_ is MissingZero!2314) lt!148648)) (and (bvsge (index!11429 lt!148648) #b00000000000000000000000000000000) (bvslt (index!11429 lt!148648) (size!7506 a!3312)))) (or ((_ is Undefined!2314) lt!148648) ((_ is Found!2314) lt!148648) ((_ is MissingZero!2314) lt!148648) (not ((_ is MissingVacant!2314) lt!148648)) (and (bvsge (index!11432 lt!148648) #b00000000000000000000000000000000) (bvslt (index!11432 lt!148648) (size!7506 a!3312)))) (or ((_ is Undefined!2314) lt!148648) (ite ((_ is Found!2314) lt!148648) (= (select (arr!7154 a!3312) (index!11430 lt!148648)) (select (arr!7154 a!3312) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!2314) lt!148648) (= (select (arr!7154 a!3312) (index!11429 lt!148648)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2314) lt!148648) (= (select (arr!7154 a!3312) (index!11432 lt!148648)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67377 (= lt!148648 e!188812)))

(declare-fun c!48214 () Bool)

(assert (=> d!67377 (= c!48214 (and ((_ is Intermediate!2314) lt!148649) (undefined!3126 lt!148649)))))

(assert (=> d!67377 (= lt!148649 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!7154 a!3312) #b00000000000000000000000000000000) mask!3809) (select (arr!7154 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809))))

(assert (=> d!67377 (validMask!0 mask!3809)))

(assert (=> d!67377 (= (seekEntryOrOpen!0 (select (arr!7154 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) lt!148648)))

(declare-fun b!298877 () Bool)

(assert (=> b!298877 (= e!188811 (seekKeyOrZeroReturnVacant!0 (x!29626 lt!148649) (index!11431 lt!148649) (index!11431 lt!148649) (select (arr!7154 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809))))

(assert (= (and d!67377 c!48214) b!298880))

(assert (= (and d!67377 (not c!48214)) b!298879))

(assert (= (and b!298879 c!48213) b!298876))

(assert (= (and b!298879 (not c!48213)) b!298878))

(assert (= (and b!298878 c!48215) b!298881))

(assert (= (and b!298878 (not c!48215)) b!298877))

(declare-fun m!311289 () Bool)

(assert (=> b!298879 m!311289))

(declare-fun m!311291 () Bool)

(assert (=> d!67377 m!311291))

(declare-fun m!311293 () Bool)

(assert (=> d!67377 m!311293))

(declare-fun m!311295 () Bool)

(assert (=> d!67377 m!311295))

(assert (=> d!67377 m!311081))

(declare-fun m!311297 () Bool)

(assert (=> d!67377 m!311297))

(declare-fun m!311299 () Bool)

(assert (=> d!67377 m!311299))

(assert (=> d!67377 m!311081))

(assert (=> d!67377 m!311295))

(assert (=> d!67377 m!311025))

(assert (=> b!298877 m!311081))

(declare-fun m!311301 () Bool)

(assert (=> b!298877 m!311301))

(assert (=> b!298657 d!67377))

(declare-fun b!298882 () Bool)

(declare-fun lt!148651 () SeekEntryResult!2314)

(assert (=> b!298882 (and (bvsge (index!11431 lt!148651) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148651) (size!7506 a!3312)))))

(declare-fun res!157628 () Bool)

(assert (=> b!298882 (= res!157628 (= (select (arr!7154 a!3312) (index!11431 lt!148651)) k0!2524))))

(declare-fun e!188818 () Bool)

(assert (=> b!298882 (=> res!157628 e!188818)))

(declare-fun e!188814 () Bool)

(assert (=> b!298882 (= e!188814 e!188818)))

(declare-fun b!298883 () Bool)

(declare-fun e!188816 () Bool)

(assert (=> b!298883 (= e!188816 e!188814)))

(declare-fun res!157629 () Bool)

(assert (=> b!298883 (= res!157629 (and ((_ is Intermediate!2314) lt!148651) (not (undefined!3126 lt!148651)) (bvslt (x!29626 lt!148651) #b01111111111111111111111111111110) (bvsge (x!29626 lt!148651) #b00000000000000000000000000000000) (bvsge (x!29626 lt!148651) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!298883 (=> (not res!157629) (not e!188814))))

(declare-fun d!67379 () Bool)

(assert (=> d!67379 e!188816))

(declare-fun c!48216 () Bool)

(assert (=> d!67379 (= c!48216 (and ((_ is Intermediate!2314) lt!148651) (undefined!3126 lt!148651)))))

(declare-fun e!188817 () SeekEntryResult!2314)

(assert (=> d!67379 (= lt!148651 e!188817)))

(declare-fun c!48218 () Bool)

(assert (=> d!67379 (= c!48218 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!148652 () (_ BitVec 64))

(assert (=> d!67379 (= lt!148652 (select (arr!7154 a!3312) (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809)))))

(assert (=> d!67379 (validMask!0 mask!3809)))

(assert (=> d!67379 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809) lt!148651)))

(declare-fun b!298884 () Bool)

(assert (=> b!298884 (and (bvsge (index!11431 lt!148651) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148651) (size!7506 a!3312)))))

(assert (=> b!298884 (= e!188818 (= (select (arr!7154 a!3312) (index!11431 lt!148651)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188815 () SeekEntryResult!2314)

(declare-fun b!298885 () Bool)

(assert (=> b!298885 (= e!188815 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!298886 () Bool)

(assert (=> b!298886 (and (bvsge (index!11431 lt!148651) #b00000000000000000000000000000000) (bvslt (index!11431 lt!148651) (size!7506 a!3312)))))

(declare-fun res!157627 () Bool)

(assert (=> b!298886 (= res!157627 (= (select (arr!7154 a!3312) (index!11431 lt!148651)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298886 (=> res!157627 e!188818)))

(declare-fun b!298887 () Bool)

(assert (=> b!298887 (= e!188817 (Intermediate!2314 true (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!298888 () Bool)

(assert (=> b!298888 (= e!188817 e!188815)))

(declare-fun c!48217 () Bool)

(assert (=> b!298888 (= c!48217 (or (= lt!148652 k0!2524) (= (bvadd lt!148652 lt!148652) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298889 () Bool)

(assert (=> b!298889 (= e!188816 (bvsge (x!29626 lt!148651) #b01111111111111111111111111111110))))

(declare-fun b!298890 () Bool)

(assert (=> b!298890 (= e!188815 (Intermediate!2314 false (nextIndex!0 lt!148497 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67379 c!48218) b!298887))

(assert (= (and d!67379 (not c!48218)) b!298888))

(assert (= (and b!298888 c!48217) b!298890))

(assert (= (and b!298888 (not c!48217)) b!298885))

(assert (= (and d!67379 c!48216) b!298889))

(assert (= (and d!67379 (not c!48216)) b!298883))

(assert (= (and b!298883 res!157629) b!298882))

(assert (= (and b!298882 (not res!157628)) b!298886))

(assert (= (and b!298886 (not res!157627)) b!298884))

(assert (=> b!298885 m!311147))

(assert (=> b!298885 m!311267))

(assert (=> b!298885 m!311267))

(declare-fun m!311303 () Bool)

(assert (=> b!298885 m!311303))

(assert (=> d!67379 m!311147))

(declare-fun m!311305 () Bool)

(assert (=> d!67379 m!311305))

(assert (=> d!67379 m!311025))

(declare-fun m!311307 () Bool)

(assert (=> b!298886 m!311307))

(assert (=> b!298884 m!311307))

(assert (=> b!298882 m!311307))

(assert (=> b!298735 d!67379))

(assert (=> b!298735 d!67369))

(declare-fun b!298903 () Bool)

(declare-fun e!188826 () SeekEntryResult!2314)

(assert (=> b!298903 (= e!188826 (MissingVacant!2314 (index!11431 lt!148522)))))

(declare-fun b!298904 () Bool)

(assert (=> b!298904 (= e!188826 (seekKeyOrZeroReturnVacant!0 (bvadd (x!29626 lt!148522) #b00000000000000000000000000000001) (nextIndex!0 (index!11431 lt!148522) (x!29626 lt!148522) mask!3809) (index!11431 lt!148522) k0!2524 a!3312 mask!3809))))

(declare-fun b!298905 () Bool)

(declare-fun c!48226 () Bool)

(declare-fun lt!148657 () (_ BitVec 64))

(assert (=> b!298905 (= c!48226 (= lt!148657 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188827 () SeekEntryResult!2314)

(assert (=> b!298905 (= e!188827 e!188826)))

(declare-fun b!298906 () Bool)

(declare-fun e!188825 () SeekEntryResult!2314)

(assert (=> b!298906 (= e!188825 e!188827)))

(declare-fun c!48225 () Bool)

(assert (=> b!298906 (= c!48225 (= lt!148657 k0!2524))))

(declare-fun b!298907 () Bool)

(assert (=> b!298907 (= e!188825 Undefined!2314)))

(declare-fun lt!148658 () SeekEntryResult!2314)

(declare-fun d!67381 () Bool)

(assert (=> d!67381 (and (or ((_ is Undefined!2314) lt!148658) (not ((_ is Found!2314) lt!148658)) (and (bvsge (index!11430 lt!148658) #b00000000000000000000000000000000) (bvslt (index!11430 lt!148658) (size!7506 a!3312)))) (or ((_ is Undefined!2314) lt!148658) ((_ is Found!2314) lt!148658) (not ((_ is MissingVacant!2314) lt!148658)) (not (= (index!11432 lt!148658) (index!11431 lt!148522))) (and (bvsge (index!11432 lt!148658) #b00000000000000000000000000000000) (bvslt (index!11432 lt!148658) (size!7506 a!3312)))) (or ((_ is Undefined!2314) lt!148658) (ite ((_ is Found!2314) lt!148658) (= (select (arr!7154 a!3312) (index!11430 lt!148658)) k0!2524) (and ((_ is MissingVacant!2314) lt!148658) (= (index!11432 lt!148658) (index!11431 lt!148522)) (= (select (arr!7154 a!3312) (index!11432 lt!148658)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!67381 (= lt!148658 e!188825)))

(declare-fun c!48227 () Bool)

(assert (=> d!67381 (= c!48227 (bvsge (x!29626 lt!148522) #b01111111111111111111111111111110))))

(assert (=> d!67381 (= lt!148657 (select (arr!7154 a!3312) (index!11431 lt!148522)))))

(assert (=> d!67381 (validMask!0 mask!3809)))

(assert (=> d!67381 (= (seekKeyOrZeroReturnVacant!0 (x!29626 lt!148522) (index!11431 lt!148522) (index!11431 lt!148522) k0!2524 a!3312 mask!3809) lt!148658)))

(declare-fun b!298908 () Bool)

(assert (=> b!298908 (= e!188827 (Found!2314 (index!11431 lt!148522)))))

(assert (= (and d!67381 c!48227) b!298907))

(assert (= (and d!67381 (not c!48227)) b!298906))

(assert (= (and b!298906 c!48225) b!298908))

(assert (= (and b!298906 (not c!48225)) b!298905))

(assert (= (and b!298905 c!48226) b!298903))

(assert (= (and b!298905 (not c!48226)) b!298904))

(declare-fun m!311309 () Bool)

(assert (=> b!298904 m!311309))

(assert (=> b!298904 m!311309))

(declare-fun m!311311 () Bool)

(assert (=> b!298904 m!311311))

(declare-fun m!311313 () Bool)

(assert (=> d!67381 m!311313))

(declare-fun m!311315 () Bool)

(assert (=> d!67381 m!311315))

(assert (=> d!67381 m!311069))

(assert (=> d!67381 m!311025))

(assert (=> b!298588 d!67381))

(check-sat (not bm!25793) (not b!298877) (not d!67371) (not b!298885) (not d!67373) (not b!298852) (not d!67369) (not d!67381) (not b!298875) (not b!298855) (not b!298859) (not d!67367) (not d!67379) (not b!298868) (not b!298851) (not b!298904) (not d!67377))
