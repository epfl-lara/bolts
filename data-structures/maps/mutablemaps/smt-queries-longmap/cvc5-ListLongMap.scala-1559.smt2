; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29580 () Bool)

(assert start!29580)

(declare-fun b!298533 () Bool)

(declare-fun res!157488 () Bool)

(declare-fun e!188607 () Bool)

(assert (=> b!298533 (=> (not res!157488) (not e!188607))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15104 0))(
  ( (array!15105 (arr!7153 (Array (_ BitVec 32) (_ BitVec 64))) (size!7505 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15104)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!298533 (= res!157488 (and (= (size!7505 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7505 a!3312))))))

(declare-fun b!298534 () Bool)

(declare-fun e!188609 () Bool)

(assert (=> b!298534 (= e!188607 e!188609)))

(declare-fun res!157486 () Bool)

(assert (=> b!298534 (=> (not res!157486) (not e!188609))))

(declare-fun lt!148482 () Bool)

(declare-datatypes ((SeekEntryResult!2313 0))(
  ( (MissingZero!2313 (index!11425 (_ BitVec 32))) (Found!2313 (index!11426 (_ BitVec 32))) (Intermediate!2313 (undefined!3125 Bool) (index!11427 (_ BitVec 32)) (x!29625 (_ BitVec 32))) (Undefined!2313) (MissingVacant!2313 (index!11428 (_ BitVec 32))) )
))
(declare-fun lt!148480 () SeekEntryResult!2313)

(assert (=> b!298534 (= res!157486 (or lt!148482 (= lt!148480 (MissingVacant!2313 i!1256))))))

(assert (=> b!298534 (= lt!148482 (= lt!148480 (MissingZero!2313 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15104 (_ BitVec 32)) SeekEntryResult!2313)

(assert (=> b!298534 (= lt!148480 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!298535 () Bool)

(declare-fun res!157484 () Bool)

(assert (=> b!298535 (=> (not res!157484) (not e!188607))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298535 (= res!157484 (validKeyInArray!0 k!2524))))

(declare-fun b!298536 () Bool)

(declare-fun res!157485 () Bool)

(assert (=> b!298536 (=> (not res!157485) (not e!188609))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15104 (_ BitVec 32)) Bool)

(assert (=> b!298536 (= res!157485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298537 () Bool)

(declare-fun lt!148481 () SeekEntryResult!2313)

(assert (=> b!298537 (= e!188609 (and (not lt!148482) (= lt!148480 (MissingVacant!2313 i!1256)) (let ((bdg!6425 (not (is-Intermediate!2313 lt!148481)))) (and (or bdg!6425 (not (undefined!3125 lt!148481))) (not bdg!6425) (= (select (arr!7153 a!3312) (index!11427 lt!148481)) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (index!11427 lt!148481) i!1256))))))))

(declare-fun lt!148484 () SeekEntryResult!2313)

(declare-fun lt!148483 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15104 (_ BitVec 32)) SeekEntryResult!2313)

(assert (=> b!298537 (= lt!148484 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148483 k!2524 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)) mask!3809))))

(assert (=> b!298537 (= lt!148481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148483 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298537 (= lt!148483 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!298538 () Bool)

(declare-fun res!157487 () Bool)

(assert (=> b!298538 (=> (not res!157487) (not e!188607))))

(declare-fun arrayContainsKey!0 (array!15104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298538 (= res!157487 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!157483 () Bool)

(assert (=> start!29580 (=> (not res!157483) (not e!188607))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29580 (= res!157483 (validMask!0 mask!3809))))

(assert (=> start!29580 e!188607))

(assert (=> start!29580 true))

(declare-fun array_inv!5107 (array!15104) Bool)

(assert (=> start!29580 (array_inv!5107 a!3312)))

(assert (= (and start!29580 res!157483) b!298533))

(assert (= (and b!298533 res!157488) b!298535))

(assert (= (and b!298535 res!157484) b!298538))

(assert (= (and b!298538 res!157487) b!298534))

(assert (= (and b!298534 res!157486) b!298536))

(assert (= (and b!298536 res!157485) b!298537))

(declare-fun m!311003 () Bool)

(assert (=> b!298535 m!311003))

(declare-fun m!311005 () Bool)

(assert (=> b!298538 m!311005))

(declare-fun m!311007 () Bool)

(assert (=> b!298534 m!311007))

(declare-fun m!311009 () Bool)

(assert (=> start!29580 m!311009))

(declare-fun m!311011 () Bool)

(assert (=> start!29580 m!311011))

(declare-fun m!311013 () Bool)

(assert (=> b!298537 m!311013))

(declare-fun m!311015 () Bool)

(assert (=> b!298537 m!311015))

(declare-fun m!311017 () Bool)

(assert (=> b!298537 m!311017))

(declare-fun m!311019 () Bool)

(assert (=> b!298537 m!311019))

(declare-fun m!311021 () Bool)

(assert (=> b!298537 m!311021))

(declare-fun m!311023 () Bool)

(assert (=> b!298536 m!311023))

(push 1)

(assert (not b!298534))

(assert (not start!29580))

(assert (not b!298535))

(assert (not b!298536))

(assert (not b!298537))

(assert (not b!298538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!298623 () Bool)

(declare-fun lt!148540 () SeekEntryResult!2313)

(declare-fun e!188659 () SeekEntryResult!2313)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15104 (_ BitVec 32)) SeekEntryResult!2313)

(assert (=> b!298623 (= e!188659 (seekKeyOrZeroReturnVacant!0 (x!29625 lt!148540) (index!11427 lt!148540) (index!11427 lt!148540) k!2524 a!3312 mask!3809))))

(declare-fun b!298624 () Bool)

(declare-fun e!188660 () SeekEntryResult!2313)

(assert (=> b!298624 (= e!188660 Undefined!2313)))

(declare-fun b!298625 () Bool)

(declare-fun e!188658 () SeekEntryResult!2313)

(assert (=> b!298625 (= e!188658 (Found!2313 (index!11427 lt!148540)))))

(declare-fun b!298626 () Bool)

(declare-fun c!48131 () Bool)

(declare-fun lt!148539 () (_ BitVec 64))

(assert (=> b!298626 (= c!48131 (= lt!148539 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298626 (= e!188658 e!188659)))

(declare-fun b!298627 () Bool)

(assert (=> b!298627 (= e!188660 e!188658)))

(assert (=> b!298627 (= lt!148539 (select (arr!7153 a!3312) (index!11427 lt!148540)))))

(declare-fun c!48132 () Bool)

(assert (=> b!298627 (= c!48132 (= lt!148539 k!2524))))

(declare-fun b!298628 () Bool)

(assert (=> b!298628 (= e!188659 (MissingZero!2313 (index!11427 lt!148540)))))

(declare-fun d!67287 () Bool)

(declare-fun lt!148541 () SeekEntryResult!2313)

(assert (=> d!67287 (and (or (is-Undefined!2313 lt!148541) (not (is-Found!2313 lt!148541)) (and (bvsge (index!11426 lt!148541) #b00000000000000000000000000000000) (bvslt (index!11426 lt!148541) (size!7505 a!3312)))) (or (is-Undefined!2313 lt!148541) (is-Found!2313 lt!148541) (not (is-MissingZero!2313 lt!148541)) (and (bvsge (index!11425 lt!148541) #b00000000000000000000000000000000) (bvslt (index!11425 lt!148541) (size!7505 a!3312)))) (or (is-Undefined!2313 lt!148541) (is-Found!2313 lt!148541) (is-MissingZero!2313 lt!148541) (not (is-MissingVacant!2313 lt!148541)) (and (bvsge (index!11428 lt!148541) #b00000000000000000000000000000000) (bvslt (index!11428 lt!148541) (size!7505 a!3312)))) (or (is-Undefined!2313 lt!148541) (ite (is-Found!2313 lt!148541) (= (select (arr!7153 a!3312) (index!11426 lt!148541)) k!2524) (ite (is-MissingZero!2313 lt!148541) (= (select (arr!7153 a!3312) (index!11425 lt!148541)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2313 lt!148541) (= (select (arr!7153 a!3312) (index!11428 lt!148541)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67287 (= lt!148541 e!188660)))

(declare-fun c!48130 () Bool)

(assert (=> d!67287 (= c!48130 (and (is-Intermediate!2313 lt!148540) (undefined!3125 lt!148540)))))

(assert (=> d!67287 (= lt!148540 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67287 (validMask!0 mask!3809)))

(assert (=> d!67287 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!148541)))

(assert (= (and d!67287 c!48130) b!298624))

(assert (= (and d!67287 (not c!48130)) b!298627))

(assert (= (and b!298627 c!48132) b!298625))

(assert (= (and b!298627 (not c!48132)) b!298626))

(assert (= (and b!298626 c!48131) b!298628))

(assert (= (and b!298626 (not c!48131)) b!298623))

(declare-fun m!311097 () Bool)

(assert (=> b!298623 m!311097))

(declare-fun m!311099 () Bool)

(assert (=> b!298627 m!311099))

(declare-fun m!311101 () Bool)

(assert (=> d!67287 m!311101))

(assert (=> d!67287 m!311021))

(assert (=> d!67287 m!311021))

(declare-fun m!311103 () Bool)

(assert (=> d!67287 m!311103))

(declare-fun m!311105 () Bool)

(assert (=> d!67287 m!311105))

(assert (=> d!67287 m!311009))

(declare-fun m!311107 () Bool)

(assert (=> d!67287 m!311107))

(assert (=> b!298534 d!67287))

(declare-fun d!67301 () Bool)

(assert (=> d!67301 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!298535 d!67301))

(declare-fun b!298643 () Bool)

(declare-fun e!188673 () Bool)

(declare-fun call!25791 () Bool)

(assert (=> b!298643 (= e!188673 call!25791)))

(declare-fun d!67305 () Bool)

(declare-fun res!157547 () Bool)

(declare-fun e!188675 () Bool)

(assert (=> d!67305 (=> res!157547 e!188675)))

(assert (=> d!67305 (= res!157547 (bvsge #b00000000000000000000000000000000 (size!7505 a!3312)))))

(assert (=> d!67305 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188675)))

(declare-fun bm!25788 () Bool)

(assert (=> bm!25788 (= call!25791 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!298644 () Bool)

(assert (=> b!298644 (= e!188675 e!188673)))

(declare-fun c!48135 () Bool)

(assert (=> b!298644 (= c!48135 (validKeyInArray!0 (select (arr!7153 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!298645 () Bool)

(declare-fun e!188674 () Bool)

(assert (=> b!298645 (= e!188673 e!188674)))

(declare-fun lt!148550 () (_ BitVec 64))

(assert (=> b!298645 (= lt!148550 (select (arr!7153 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9308 0))(
  ( (Unit!9309) )
))
(declare-fun lt!148549 () Unit!9308)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15104 (_ BitVec 64) (_ BitVec 32)) Unit!9308)

(assert (=> b!298645 (= lt!148549 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148550 #b00000000000000000000000000000000))))

(assert (=> b!298645 (arrayContainsKey!0 a!3312 lt!148550 #b00000000000000000000000000000000)))

(declare-fun lt!148548 () Unit!9308)

(assert (=> b!298645 (= lt!148548 lt!148549)))

(declare-fun res!157548 () Bool)

(assert (=> b!298645 (= res!157548 (= (seekEntryOrOpen!0 (select (arr!7153 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2313 #b00000000000000000000000000000000)))))

(assert (=> b!298645 (=> (not res!157548) (not e!188674))))

(declare-fun b!298646 () Bool)

(assert (=> b!298646 (= e!188674 call!25791)))

(assert (= (and d!67305 (not res!157547)) b!298644))

(assert (= (and b!298644 c!48135) b!298645))

(assert (= (and b!298644 (not c!48135)) b!298643))

(assert (= (and b!298645 res!157548) b!298646))

(assert (= (or b!298646 b!298643) bm!25788))

(declare-fun m!311111 () Bool)

(assert (=> bm!25788 m!311111))

(declare-fun m!311113 () Bool)

(assert (=> b!298644 m!311113))

(assert (=> b!298644 m!311113))

(declare-fun m!311115 () Bool)

(assert (=> b!298644 m!311115))

(assert (=> b!298645 m!311113))

(declare-fun m!311117 () Bool)

(assert (=> b!298645 m!311117))

(declare-fun m!311119 () Bool)

(assert (=> b!298645 m!311119))

(assert (=> b!298645 m!311113))

(declare-fun m!311121 () Bool)

(assert (=> b!298645 m!311121))

(assert (=> b!298536 d!67305))

(declare-fun d!67311 () Bool)

(assert (=> d!67311 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29580 d!67311))

(declare-fun d!67319 () Bool)

(assert (=> d!67319 (= (array_inv!5107 a!3312) (bvsge (size!7505 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29580 d!67319))

(declare-fun lt!148587 () SeekEntryResult!2313)

(declare-fun b!298750 () Bool)

(assert (=> b!298750 (and (bvsge (index!11427 lt!148587) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148587) (size!7505 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)))))))

(declare-fun res!157587 () Bool)

(assert (=> b!298750 (= res!157587 (= (select (arr!7153 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312))) (index!11427 lt!148587)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188735 () Bool)

(assert (=> b!298750 (=> res!157587 e!188735)))

(declare-fun b!298751 () Bool)

(declare-fun e!188738 () Bool)

(assert (=> b!298751 (= e!188738 (bvsge (x!29625 lt!148587) #b01111111111111111111111111111110))))

(declare-fun b!298752 () Bool)

(assert (=> b!298752 (and (bvsge (index!11427 lt!148587) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148587) (size!7505 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)))))))

(declare-fun res!157588 () Bool)

(assert (=> b!298752 (= res!157588 (= (select (arr!7153 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312))) (index!11427 lt!148587)) k!2524))))

(assert (=> b!298752 (=> res!157588 e!188735)))

(declare-fun e!188736 () Bool)

(assert (=> b!298752 (= e!188736 e!188735)))

(declare-fun b!298753 () Bool)

(declare-fun e!188739 () SeekEntryResult!2313)

(assert (=> b!298753 (= e!188739 (Intermediate!2313 true lt!148483 #b00000000000000000000000000000000))))

(declare-fun b!298754 () Bool)

(declare-fun e!188737 () SeekEntryResult!2313)

(assert (=> b!298754 (= e!188739 e!188737)))

(declare-fun c!48169 () Bool)

(declare-fun lt!148586 () (_ BitVec 64))

(assert (=> b!298754 (= c!48169 (or (= lt!148586 k!2524) (= (bvadd lt!148586 lt!148586) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298755 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298755 (= e!188737 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)) mask!3809))))

(declare-fun d!67321 () Bool)

(assert (=> d!67321 e!188738))

(declare-fun c!48171 () Bool)

(assert (=> d!67321 (= c!48171 (and (is-Intermediate!2313 lt!148587) (undefined!3125 lt!148587)))))

(assert (=> d!67321 (= lt!148587 e!188739)))

(declare-fun c!48170 () Bool)

(assert (=> d!67321 (= c!48170 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67321 (= lt!148586 (select (arr!7153 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312))) lt!148483))))

(assert (=> d!67321 (validMask!0 mask!3809)))

(assert (=> d!67321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148483 k!2524 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)) mask!3809) lt!148587)))

(declare-fun b!298749 () Bool)

(assert (=> b!298749 (and (bvsge (index!11427 lt!148587) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148587) (size!7505 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)))))))

(assert (=> b!298749 (= e!188735 (= (select (arr!7153 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312))) (index!11427 lt!148587)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298756 () Bool)

(assert (=> b!298756 (= e!188737 (Intermediate!2313 false lt!148483 #b00000000000000000000000000000000))))

(declare-fun b!298757 () Bool)

(assert (=> b!298757 (= e!188738 e!188736)))

(declare-fun res!157589 () Bool)

(assert (=> b!298757 (= res!157589 (and (is-Intermediate!2313 lt!148587) (not (undefined!3125 lt!148587)) (bvslt (x!29625 lt!148587) #b01111111111111111111111111111110) (bvsge (x!29625 lt!148587) #b00000000000000000000000000000000) (bvsge (x!29625 lt!148587) #b00000000000000000000000000000000)))))

(assert (=> b!298757 (=> (not res!157589) (not e!188736))))

(assert (= (and d!67321 c!48170) b!298753))

(assert (= (and d!67321 (not c!48170)) b!298754))

(assert (= (and b!298754 c!48169) b!298756))

(assert (= (and b!298754 (not c!48169)) b!298755))

(assert (= (and d!67321 c!48171) b!298751))

(assert (= (and d!67321 (not c!48171)) b!298757))

(assert (= (and b!298757 res!157589) b!298752))

(assert (= (and b!298752 (not res!157588)) b!298750))

(assert (= (and b!298750 (not res!157587)) b!298749))

(declare-fun m!311161 () Bool)

(assert (=> b!298749 m!311161))

(declare-fun m!311163 () Bool)

(assert (=> b!298755 m!311163))

(assert (=> b!298755 m!311163))

(declare-fun m!311165 () Bool)

(assert (=> b!298755 m!311165))

(assert (=> b!298752 m!311161))

(declare-fun m!311167 () Bool)

(assert (=> d!67321 m!311167))

(assert (=> d!67321 m!311009))

(assert (=> b!298750 m!311161))

(assert (=> b!298537 d!67321))

(declare-fun b!298759 () Bool)

(declare-fun lt!148593 () SeekEntryResult!2313)

(assert (=> b!298759 (and (bvsge (index!11427 lt!148593) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148593) (size!7505 a!3312)))))

(declare-fun res!157590 () Bool)

(assert (=> b!298759 (= res!157590 (= (select (arr!7153 a!3312) (index!11427 lt!148593)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188740 () Bool)

(assert (=> b!298759 (=> res!157590 e!188740)))

(declare-fun b!298760 () Bool)

(declare-fun e!188743 () Bool)

(assert (=> b!298760 (= e!188743 (bvsge (x!29625 lt!148593) #b01111111111111111111111111111110))))

(declare-fun b!298761 () Bool)

(assert (=> b!298761 (and (bvsge (index!11427 lt!148593) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148593) (size!7505 a!3312)))))

(declare-fun res!157591 () Bool)

(assert (=> b!298761 (= res!157591 (= (select (arr!7153 a!3312) (index!11427 lt!148593)) k!2524))))

(assert (=> b!298761 (=> res!157591 e!188740)))

(declare-fun e!188741 () Bool)

(assert (=> b!298761 (= e!188741 e!188740)))

(declare-fun b!298762 () Bool)

(declare-fun e!188744 () SeekEntryResult!2313)

(assert (=> b!298762 (= e!188744 (Intermediate!2313 true lt!148483 #b00000000000000000000000000000000))))

(declare-fun b!298763 () Bool)

(declare-fun e!188742 () SeekEntryResult!2313)

(assert (=> b!298763 (= e!188744 e!188742)))

(declare-fun c!48172 () Bool)

(declare-fun lt!148592 () (_ BitVec 64))

(assert (=> b!298763 (= c!48172 (or (= lt!148592 k!2524) (= (bvadd lt!148592 lt!148592) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298764 () Bool)

(assert (=> b!298764 (= e!188742 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun d!67333 () Bool)

(assert (=> d!67333 e!188743))

(declare-fun c!48174 () Bool)

(assert (=> d!67333 (= c!48174 (and (is-Intermediate!2313 lt!148593) (undefined!3125 lt!148593)))))

(assert (=> d!67333 (= lt!148593 e!188744)))

(declare-fun c!48173 () Bool)

(assert (=> d!67333 (= c!48173 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67333 (= lt!148592 (select (arr!7153 a!3312) lt!148483))))

(assert (=> d!67333 (validMask!0 mask!3809)))

(assert (=> d!67333 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148483 k!2524 a!3312 mask!3809) lt!148593)))

(declare-fun b!298758 () Bool)

(assert (=> b!298758 (and (bvsge (index!11427 lt!148593) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148593) (size!7505 a!3312)))))

(assert (=> b!298758 (= e!188740 (= (select (arr!7153 a!3312) (index!11427 lt!148593)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298765 () Bool)

(assert (=> b!298765 (= e!188742 (Intermediate!2313 false lt!148483 #b00000000000000000000000000000000))))

(declare-fun b!298766 () Bool)

(assert (=> b!298766 (= e!188743 e!188741)))

(declare-fun res!157592 () Bool)

(assert (=> b!298766 (= res!157592 (and (is-Intermediate!2313 lt!148593) (not (undefined!3125 lt!148593)) (bvslt (x!29625 lt!148593) #b01111111111111111111111111111110) (bvsge (x!29625 lt!148593) #b00000000000000000000000000000000) (bvsge (x!29625 lt!148593) #b00000000000000000000000000000000)))))

(assert (=> b!298766 (=> (not res!157592) (not e!188741))))

(assert (= (and d!67333 c!48173) b!298762))

(assert (= (and d!67333 (not c!48173)) b!298763))

(assert (= (and b!298763 c!48172) b!298765))

(assert (= (and b!298763 (not c!48172)) b!298764))

(assert (= (and d!67333 c!48174) b!298760))

(assert (= (and d!67333 (not c!48174)) b!298766))

(assert (= (and b!298766 res!157592) b!298761))

(assert (= (and b!298761 (not res!157591)) b!298759))

(assert (= (and b!298759 (not res!157590)) b!298758))

(declare-fun m!311169 () Bool)

(assert (=> b!298758 m!311169))

(assert (=> b!298764 m!311163))

(assert (=> b!298764 m!311163))

(declare-fun m!311171 () Bool)

(assert (=> b!298764 m!311171))

(assert (=> b!298761 m!311169))

(declare-fun m!311173 () Bool)

(assert (=> d!67333 m!311173))

(assert (=> d!67333 m!311009))

(assert (=> b!298759 m!311169))

(assert (=> b!298537 d!67333))

(declare-fun d!67335 () Bool)

(declare-fun lt!148601 () (_ BitVec 32))

(declare-fun lt!148600 () (_ BitVec 32))

(assert (=> d!67335 (= lt!148601 (bvmul (bvxor lt!148600 (bvlshr lt!148600 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67335 (= lt!148600 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67335 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157593 (let ((h!5332 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29633 (bvmul (bvxor h!5332 (bvlshr h!5332 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29633 (bvlshr x!29633 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157593 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157593 #b00000000000000000000000000000000))))))

(assert (=> d!67335 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!148601 (bvlshr lt!148601 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!298537 d!67335))

(declare-fun d!67337 () Bool)

(declare-fun res!157598 () Bool)

(declare-fun e!188749 () Bool)

(assert (=> d!67337 (=> res!157598 e!188749)))

(assert (=> d!67337 (= res!157598 (= (select (arr!7153 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67337 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!188749)))

(declare-fun b!298771 () Bool)

(declare-fun e!188750 () Bool)

(assert (=> b!298771 (= e!188749 e!188750)))

(declare-fun res!157599 () Bool)

(assert (=> b!298771 (=> (not res!157599) (not e!188750))))

(assert (=> b!298771 (= res!157599 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7505 a!3312)))))

(declare-fun b!298772 () Bool)

(assert (=> b!298772 (= e!188750 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67337 (not res!157598)) b!298771))

(assert (= (and b!298771 res!157599) b!298772))

(assert (=> d!67337 m!311113))

(declare-fun m!311175 () Bool)

(assert (=> b!298772 m!311175))

(assert (=> b!298538 d!67337))

(push 1)

(assert (not bm!25788))

(assert (not d!67321))

(assert (not d!67333))

(assert (not b!298755))

(assert (not b!298623))

(assert (not d!67287))

(assert (not b!298772))

(assert (not b!298645))

(assert (not b!298644))

(assert (not b!298764))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!298803 () Bool)

(declare-fun e!188766 () SeekEntryResult!2313)

(assert (=> b!298803 (= e!188766 (seekKeyOrZeroReturnVacant!0 (bvadd (x!29625 lt!148540) #b00000000000000000000000000000001) (nextIndex!0 (index!11427 lt!148540) (x!29625 lt!148540) mask!3809) (index!11427 lt!148540) k!2524 a!3312 mask!3809))))

(declare-fun b!298804 () Bool)

(assert (=> b!298804 (= e!188766 (MissingVacant!2313 (index!11427 lt!148540)))))

(declare-fun b!298805 () Bool)

(declare-fun e!188767 () SeekEntryResult!2313)

(declare-fun e!188768 () SeekEntryResult!2313)

(assert (=> b!298805 (= e!188767 e!188768)))

(declare-fun c!48192 () Bool)

(declare-fun lt!148616 () (_ BitVec 64))

(assert (=> b!298805 (= c!48192 (= lt!148616 k!2524))))

(declare-fun b!298806 () Bool)

(assert (=> b!298806 (= e!188767 Undefined!2313)))

(declare-fun b!298807 () Bool)

(declare-fun c!48191 () Bool)

(assert (=> b!298807 (= c!48191 (= lt!148616 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298807 (= e!188768 e!188766)))

(declare-fun d!67339 () Bool)

(declare-fun lt!148615 () SeekEntryResult!2313)

(assert (=> d!67339 (and (or (is-Undefined!2313 lt!148615) (not (is-Found!2313 lt!148615)) (and (bvsge (index!11426 lt!148615) #b00000000000000000000000000000000) (bvslt (index!11426 lt!148615) (size!7505 a!3312)))) (or (is-Undefined!2313 lt!148615) (is-Found!2313 lt!148615) (not (is-MissingVacant!2313 lt!148615)) (not (= (index!11428 lt!148615) (index!11427 lt!148540))) (and (bvsge (index!11428 lt!148615) #b00000000000000000000000000000000) (bvslt (index!11428 lt!148615) (size!7505 a!3312)))) (or (is-Undefined!2313 lt!148615) (ite (is-Found!2313 lt!148615) (= (select (arr!7153 a!3312) (index!11426 lt!148615)) k!2524) (and (is-MissingVacant!2313 lt!148615) (= (index!11428 lt!148615) (index!11427 lt!148540)) (= (select (arr!7153 a!3312) (index!11428 lt!148615)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!67339 (= lt!148615 e!188767)))

(declare-fun c!48190 () Bool)

(assert (=> d!67339 (= c!48190 (bvsge (x!29625 lt!148540) #b01111111111111111111111111111110))))

(assert (=> d!67339 (= lt!148616 (select (arr!7153 a!3312) (index!11427 lt!148540)))))

(assert (=> d!67339 (validMask!0 mask!3809)))

(assert (=> d!67339 (= (seekKeyOrZeroReturnVacant!0 (x!29625 lt!148540) (index!11427 lt!148540) (index!11427 lt!148540) k!2524 a!3312 mask!3809) lt!148615)))

(declare-fun b!298808 () Bool)

(assert (=> b!298808 (= e!188768 (Found!2313 (index!11427 lt!148540)))))

(assert (= (and d!67339 c!48190) b!298806))

(assert (= (and d!67339 (not c!48190)) b!298805))

(assert (= (and b!298805 c!48192) b!298808))

(assert (= (and b!298805 (not c!48192)) b!298807))

(assert (= (and b!298807 c!48191) b!298804))

(assert (= (and b!298807 (not c!48191)) b!298803))

(declare-fun m!311189 () Bool)

(assert (=> b!298803 m!311189))

(assert (=> b!298803 m!311189))

(declare-fun m!311191 () Bool)

(assert (=> b!298803 m!311191))

(declare-fun m!311193 () Bool)

(assert (=> d!67339 m!311193))

(declare-fun m!311195 () Bool)

(assert (=> d!67339 m!311195))

(assert (=> d!67339 m!311099))

(assert (=> d!67339 m!311009))

(assert (=> b!298623 d!67339))

(declare-fun d!67341 () Bool)

(assert (=> d!67341 (= (validKeyInArray!0 (select (arr!7153 a!3312) #b00000000000000000000000000000000)) (and (not (= (select (arr!7153 a!3312) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7153 a!3312) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!298644 d!67341))

(declare-fun d!67343 () Bool)

(assert (=> d!67343 (arrayContainsKey!0 a!3312 lt!148550 #b00000000000000000000000000000000)))

(declare-fun lt!148619 () Unit!9308)

(declare-fun choose!13 (array!15104 (_ BitVec 64) (_ BitVec 32)) Unit!9308)

(assert (=> d!67343 (= lt!148619 (choose!13 a!3312 lt!148550 #b00000000000000000000000000000000))))

(assert (=> d!67343 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!67343 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148550 #b00000000000000000000000000000000) lt!148619)))

(declare-fun bs!10542 () Bool)

(assert (= bs!10542 d!67343))

(assert (=> bs!10542 m!311119))

(declare-fun m!311197 () Bool)

(assert (=> bs!10542 m!311197))

(assert (=> b!298645 d!67343))

(declare-fun d!67345 () Bool)

(declare-fun res!157600 () Bool)

(declare-fun e!188769 () Bool)

(assert (=> d!67345 (=> res!157600 e!188769)))

(assert (=> d!67345 (= res!157600 (= (select (arr!7153 a!3312) #b00000000000000000000000000000000) lt!148550))))

(assert (=> d!67345 (= (arrayContainsKey!0 a!3312 lt!148550 #b00000000000000000000000000000000) e!188769)))

(declare-fun b!298809 () Bool)

(declare-fun e!188770 () Bool)

(assert (=> b!298809 (= e!188769 e!188770)))

(declare-fun res!157601 () Bool)

(assert (=> b!298809 (=> (not res!157601) (not e!188770))))

(assert (=> b!298809 (= res!157601 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7505 a!3312)))))

(declare-fun b!298810 () Bool)

(assert (=> b!298810 (= e!188770 (arrayContainsKey!0 a!3312 lt!148550 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67345 (not res!157600)) b!298809))

(assert (= (and b!298809 res!157601) b!298810))

(assert (=> d!67345 m!311113))

(declare-fun m!311199 () Bool)

(assert (=> b!298810 m!311199))

(assert (=> b!298645 d!67345))

(declare-fun b!298811 () Bool)

(declare-fun e!188772 () SeekEntryResult!2313)

(declare-fun lt!148621 () SeekEntryResult!2313)

(assert (=> b!298811 (= e!188772 (seekKeyOrZeroReturnVacant!0 (x!29625 lt!148621) (index!11427 lt!148621) (index!11427 lt!148621) (select (arr!7153 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809))))

(declare-fun b!298812 () Bool)

(declare-fun e!188773 () SeekEntryResult!2313)

(assert (=> b!298812 (= e!188773 Undefined!2313)))

(declare-fun b!298813 () Bool)

(declare-fun e!188771 () SeekEntryResult!2313)

(assert (=> b!298813 (= e!188771 (Found!2313 (index!11427 lt!148621)))))

(declare-fun b!298814 () Bool)

(declare-fun c!48194 () Bool)

(declare-fun lt!148620 () (_ BitVec 64))

(assert (=> b!298814 (= c!48194 (= lt!148620 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298814 (= e!188771 e!188772)))

(declare-fun b!298815 () Bool)

(assert (=> b!298815 (= e!188773 e!188771)))

(assert (=> b!298815 (= lt!148620 (select (arr!7153 a!3312) (index!11427 lt!148621)))))

(declare-fun c!48195 () Bool)

(assert (=> b!298815 (= c!48195 (= lt!148620 (select (arr!7153 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!298816 () Bool)

(assert (=> b!298816 (= e!188772 (MissingZero!2313 (index!11427 lt!148621)))))

(declare-fun d!67347 () Bool)

(declare-fun lt!148622 () SeekEntryResult!2313)

(assert (=> d!67347 (and (or (is-Undefined!2313 lt!148622) (not (is-Found!2313 lt!148622)) (and (bvsge (index!11426 lt!148622) #b00000000000000000000000000000000) (bvslt (index!11426 lt!148622) (size!7505 a!3312)))) (or (is-Undefined!2313 lt!148622) (is-Found!2313 lt!148622) (not (is-MissingZero!2313 lt!148622)) (and (bvsge (index!11425 lt!148622) #b00000000000000000000000000000000) (bvslt (index!11425 lt!148622) (size!7505 a!3312)))) (or (is-Undefined!2313 lt!148622) (is-Found!2313 lt!148622) (is-MissingZero!2313 lt!148622) (not (is-MissingVacant!2313 lt!148622)) (and (bvsge (index!11428 lt!148622) #b00000000000000000000000000000000) (bvslt (index!11428 lt!148622) (size!7505 a!3312)))) (or (is-Undefined!2313 lt!148622) (ite (is-Found!2313 lt!148622) (= (select (arr!7153 a!3312) (index!11426 lt!148622)) (select (arr!7153 a!3312) #b00000000000000000000000000000000)) (ite (is-MissingZero!2313 lt!148622) (= (select (arr!7153 a!3312) (index!11425 lt!148622)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2313 lt!148622) (= (select (arr!7153 a!3312) (index!11428 lt!148622)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67347 (= lt!148622 e!188773)))

(declare-fun c!48193 () Bool)

(assert (=> d!67347 (= c!48193 (and (is-Intermediate!2313 lt!148621) (undefined!3125 lt!148621)))))

(assert (=> d!67347 (= lt!148621 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!7153 a!3312) #b00000000000000000000000000000000) mask!3809) (select (arr!7153 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809))))

(assert (=> d!67347 (validMask!0 mask!3809)))

(assert (=> d!67347 (= (seekEntryOrOpen!0 (select (arr!7153 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) lt!148622)))

(assert (= (and d!67347 c!48193) b!298812))

(assert (= (and d!67347 (not c!48193)) b!298815))

(assert (= (and b!298815 c!48195) b!298813))

(assert (= (and b!298815 (not c!48195)) b!298814))

(assert (= (and b!298814 c!48194) b!298816))

(assert (= (and b!298814 (not c!48194)) b!298811))

(assert (=> b!298811 m!311113))

(declare-fun m!311201 () Bool)

(assert (=> b!298811 m!311201))

(declare-fun m!311203 () Bool)

(assert (=> b!298815 m!311203))

(declare-fun m!311205 () Bool)

(assert (=> d!67347 m!311205))

(assert (=> d!67347 m!311113))

(declare-fun m!311207 () Bool)

(assert (=> d!67347 m!311207))

(assert (=> d!67347 m!311207))

(assert (=> d!67347 m!311113))

(declare-fun m!311209 () Bool)

(assert (=> d!67347 m!311209))

(declare-fun m!311211 () Bool)

(assert (=> d!67347 m!311211))

(assert (=> d!67347 m!311009))

(declare-fun m!311213 () Bool)

(assert (=> d!67347 m!311213))

(assert (=> b!298645 d!67347))

(declare-fun b!298818 () Bool)

(declare-fun lt!148624 () SeekEntryResult!2313)

(assert (=> b!298818 (and (bvsge (index!11427 lt!148624) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148624) (size!7505 a!3312)))))

(declare-fun res!157602 () Bool)

(assert (=> b!298818 (= res!157602 (= (select (arr!7153 a!3312) (index!11427 lt!148624)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188774 () Bool)

(assert (=> b!298818 (=> res!157602 e!188774)))

(declare-fun b!298819 () Bool)

(declare-fun e!188777 () Bool)

(assert (=> b!298819 (= e!188777 (bvsge (x!29625 lt!148624) #b01111111111111111111111111111110))))

(declare-fun b!298820 () Bool)

(assert (=> b!298820 (and (bvsge (index!11427 lt!148624) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148624) (size!7505 a!3312)))))

(declare-fun res!157603 () Bool)

(assert (=> b!298820 (= res!157603 (= (select (arr!7153 a!3312) (index!11427 lt!148624)) k!2524))))

(assert (=> b!298820 (=> res!157603 e!188774)))

(declare-fun e!188775 () Bool)

(assert (=> b!298820 (= e!188775 e!188774)))

(declare-fun b!298821 () Bool)

(declare-fun e!188778 () SeekEntryResult!2313)

(assert (=> b!298821 (= e!188778 (Intermediate!2313 true (toIndex!0 k!2524 mask!3809) #b00000000000000000000000000000000))))

(declare-fun b!298822 () Bool)

(declare-fun e!188776 () SeekEntryResult!2313)

(assert (=> b!298822 (= e!188778 e!188776)))

(declare-fun c!48196 () Bool)

(declare-fun lt!148623 () (_ BitVec 64))

(assert (=> b!298822 (= c!48196 (or (= lt!148623 k!2524) (= (bvadd lt!148623 lt!148623) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298823 () Bool)

(assert (=> b!298823 (= e!188776 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2524 mask!3809) #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun d!67349 () Bool)

(assert (=> d!67349 e!188777))

(declare-fun c!48198 () Bool)

(assert (=> d!67349 (= c!48198 (and (is-Intermediate!2313 lt!148624) (undefined!3125 lt!148624)))))

(assert (=> d!67349 (= lt!148624 e!188778)))

(declare-fun c!48197 () Bool)

(assert (=> d!67349 (= c!48197 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67349 (= lt!148623 (select (arr!7153 a!3312) (toIndex!0 k!2524 mask!3809)))))

(assert (=> d!67349 (validMask!0 mask!3809)))

(assert (=> d!67349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809) lt!148624)))

(declare-fun b!298817 () Bool)

(assert (=> b!298817 (and (bvsge (index!11427 lt!148624) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148624) (size!7505 a!3312)))))

(assert (=> b!298817 (= e!188774 (= (select (arr!7153 a!3312) (index!11427 lt!148624)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298824 () Bool)

(assert (=> b!298824 (= e!188776 (Intermediate!2313 false (toIndex!0 k!2524 mask!3809) #b00000000000000000000000000000000))))

(declare-fun b!298825 () Bool)

(assert (=> b!298825 (= e!188777 e!188775)))

(declare-fun res!157604 () Bool)

(assert (=> b!298825 (= res!157604 (and (is-Intermediate!2313 lt!148624) (not (undefined!3125 lt!148624)) (bvslt (x!29625 lt!148624) #b01111111111111111111111111111110) (bvsge (x!29625 lt!148624) #b00000000000000000000000000000000) (bvsge (x!29625 lt!148624) #b00000000000000000000000000000000)))))

(assert (=> b!298825 (=> (not res!157604) (not e!188775))))

(assert (= (and d!67349 c!48197) b!298821))

(assert (= (and d!67349 (not c!48197)) b!298822))

(assert (= (and b!298822 c!48196) b!298824))

(assert (= (and b!298822 (not c!48196)) b!298823))

(assert (= (and d!67349 c!48198) b!298819))

(assert (= (and d!67349 (not c!48198)) b!298825))

(assert (= (and b!298825 res!157604) b!298820))

(assert (= (and b!298820 (not res!157603)) b!298818))

(assert (= (and b!298818 (not res!157602)) b!298817))

(declare-fun m!311215 () Bool)

(assert (=> b!298817 m!311215))

(assert (=> b!298823 m!311021))

(declare-fun m!311217 () Bool)

(assert (=> b!298823 m!311217))

(assert (=> b!298823 m!311217))

(declare-fun m!311219 () Bool)

(assert (=> b!298823 m!311219))

(assert (=> b!298820 m!311215))

(assert (=> d!67349 m!311021))

(declare-fun m!311221 () Bool)

(assert (=> d!67349 m!311221))

(assert (=> d!67349 m!311009))

(assert (=> b!298818 m!311215))

(assert (=> d!67287 d!67349))

(assert (=> d!67287 d!67335))

(assert (=> d!67287 d!67311))

(declare-fun b!298827 () Bool)

(declare-fun lt!148626 () SeekEntryResult!2313)

(assert (=> b!298827 (and (bvsge (index!11427 lt!148626) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148626) (size!7505 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)))))))

(declare-fun res!157605 () Bool)

(assert (=> b!298827 (= res!157605 (= (select (arr!7153 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312))) (index!11427 lt!148626)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188779 () Bool)

(assert (=> b!298827 (=> res!157605 e!188779)))

(declare-fun b!298828 () Bool)

(declare-fun e!188782 () Bool)

(assert (=> b!298828 (= e!188782 (bvsge (x!29625 lt!148626) #b01111111111111111111111111111110))))

(declare-fun b!298829 () Bool)

(assert (=> b!298829 (and (bvsge (index!11427 lt!148626) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148626) (size!7505 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)))))))

(declare-fun res!157606 () Bool)

(assert (=> b!298829 (= res!157606 (= (select (arr!7153 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312))) (index!11427 lt!148626)) k!2524))))

(assert (=> b!298829 (=> res!157606 e!188779)))

(declare-fun e!188780 () Bool)

(assert (=> b!298829 (= e!188780 e!188779)))

(declare-fun b!298830 () Bool)

(declare-fun e!188783 () SeekEntryResult!2313)

(assert (=> b!298830 (= e!188783 (Intermediate!2313 true (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!298831 () Bool)

(declare-fun e!188781 () SeekEntryResult!2313)

(assert (=> b!298831 (= e!188783 e!188781)))

(declare-fun c!48199 () Bool)

(declare-fun lt!148625 () (_ BitVec 64))

(assert (=> b!298831 (= c!48199 (or (= lt!148625 k!2524) (= (bvadd lt!148625 lt!148625) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298832 () Bool)

(assert (=> b!298832 (= e!188781 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3809) k!2524 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)) mask!3809))))

(declare-fun d!67351 () Bool)

(assert (=> d!67351 e!188782))

(declare-fun c!48201 () Bool)

(assert (=> d!67351 (= c!48201 (and (is-Intermediate!2313 lt!148626) (undefined!3125 lt!148626)))))

(assert (=> d!67351 (= lt!148626 e!188783)))

(declare-fun c!48200 () Bool)

(assert (=> d!67351 (= c!48200 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!67351 (= lt!148625 (select (arr!7153 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312))) (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809)))))

(assert (=> d!67351 (validMask!0 mask!3809)))

(assert (=> d!67351 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)) mask!3809) lt!148626)))

(declare-fun b!298826 () Bool)

(assert (=> b!298826 (and (bvsge (index!11427 lt!148626) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148626) (size!7505 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312)))))))

(assert (=> b!298826 (= e!188779 (= (select (arr!7153 (array!15105 (store (arr!7153 a!3312) i!1256 k!2524) (size!7505 a!3312))) (index!11427 lt!148626)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298833 () Bool)

(assert (=> b!298833 (= e!188781 (Intermediate!2313 false (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!298834 () Bool)

(assert (=> b!298834 (= e!188782 e!188780)))

(declare-fun res!157607 () Bool)

(assert (=> b!298834 (= res!157607 (and (is-Intermediate!2313 lt!148626) (not (undefined!3125 lt!148626)) (bvslt (x!29625 lt!148626) #b01111111111111111111111111111110) (bvsge (x!29625 lt!148626) #b00000000000000000000000000000000) (bvsge (x!29625 lt!148626) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!298834 (=> (not res!157607) (not e!188780))))

(assert (= (and d!67351 c!48200) b!298830))

(assert (= (and d!67351 (not c!48200)) b!298831))

(assert (= (and b!298831 c!48199) b!298833))

(assert (= (and b!298831 (not c!48199)) b!298832))

(assert (= (and d!67351 c!48201) b!298828))

(assert (= (and d!67351 (not c!48201)) b!298834))

(assert (= (and b!298834 res!157607) b!298829))

(assert (= (and b!298829 (not res!157606)) b!298827))

(assert (= (and b!298827 (not res!157605)) b!298826))

(declare-fun m!311223 () Bool)

(assert (=> b!298826 m!311223))

(assert (=> b!298832 m!311163))

(declare-fun m!311225 () Bool)

(assert (=> b!298832 m!311225))

(assert (=> b!298832 m!311225))

(declare-fun m!311227 () Bool)

(assert (=> b!298832 m!311227))

(assert (=> b!298829 m!311223))

(assert (=> d!67351 m!311163))

(declare-fun m!311229 () Bool)

(assert (=> d!67351 m!311229))

(assert (=> d!67351 m!311009))

(assert (=> b!298827 m!311223))

(assert (=> b!298755 d!67351))

(declare-fun d!67353 () Bool)

(declare-fun lt!148629 () (_ BitVec 32))

(assert (=> d!67353 (and (bvsge lt!148629 #b00000000000000000000000000000000) (bvslt lt!148629 (bvadd mask!3809 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!67353 (= lt!148629 (choose!52 lt!148483 #b00000000000000000000000000000000 mask!3809))))

(assert (=> d!67353 (validMask!0 mask!3809)))

(assert (=> d!67353 (= (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) lt!148629)))

(declare-fun bs!10543 () Bool)

(assert (= bs!10543 d!67353))

(declare-fun m!311231 () Bool)

(assert (=> bs!10543 m!311231))

(assert (=> bs!10543 m!311009))

(assert (=> b!298755 d!67353))

(declare-fun d!67355 () Bool)

(declare-fun res!157608 () Bool)

(declare-fun e!188784 () Bool)

(assert (=> d!67355 (=> res!157608 e!188784)))

(assert (=> d!67355 (= res!157608 (= (select (arr!7153 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k!2524))))

(assert (=> d!67355 (= (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!188784)))

(declare-fun b!298835 () Bool)

(declare-fun e!188785 () Bool)

(assert (=> b!298835 (= e!188784 e!188785)))

(declare-fun res!157609 () Bool)

(assert (=> b!298835 (=> (not res!157609) (not e!188785))))

(assert (=> b!298835 (= res!157609 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!7505 a!3312)))))

(declare-fun b!298836 () Bool)

(assert (=> b!298836 (= e!188785 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!67355 (not res!157608)) b!298835))

(assert (= (and b!298835 res!157609) b!298836))

(declare-fun m!311233 () Bool)

(assert (=> d!67355 m!311233))

(declare-fun m!311235 () Bool)

(assert (=> b!298836 m!311235))

(assert (=> b!298772 d!67355))

(assert (=> d!67333 d!67311))

(declare-fun b!298837 () Bool)

(declare-fun e!188786 () Bool)

(declare-fun call!25795 () Bool)

(assert (=> b!298837 (= e!188786 call!25795)))

(declare-fun d!67357 () Bool)

(declare-fun res!157610 () Bool)

(declare-fun e!188788 () Bool)

(assert (=> d!67357 (=> res!157610 e!188788)))

(assert (=> d!67357 (= res!157610 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7505 a!3312)))))

(assert (=> d!67357 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809) e!188788)))

(declare-fun bm!25792 () Bool)

(assert (=> bm!25792 (= call!25795 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!298838 () Bool)

(assert (=> b!298838 (= e!188788 e!188786)))

(declare-fun c!48202 () Bool)

(assert (=> b!298838 (= c!48202 (validKeyInArray!0 (select (arr!7153 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!298839 () Bool)

(declare-fun e!188787 () Bool)

(assert (=> b!298839 (= e!188786 e!188787)))

(declare-fun lt!148632 () (_ BitVec 64))

(assert (=> b!298839 (= lt!148632 (select (arr!7153 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!148631 () Unit!9308)

(assert (=> b!298839 (= lt!148631 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148632 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!298839 (arrayContainsKey!0 a!3312 lt!148632 #b00000000000000000000000000000000)))

(declare-fun lt!148630 () Unit!9308)

(assert (=> b!298839 (= lt!148630 lt!148631)))

(declare-fun res!157611 () Bool)

(assert (=> b!298839 (= res!157611 (= (seekEntryOrOpen!0 (select (arr!7153 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3312 mask!3809) (Found!2313 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!298839 (=> (not res!157611) (not e!188787))))

(declare-fun b!298840 () Bool)

(assert (=> b!298840 (= e!188787 call!25795)))

(assert (= (and d!67357 (not res!157610)) b!298838))

(assert (= (and b!298838 c!48202) b!298839))

(assert (= (and b!298838 (not c!48202)) b!298837))

(assert (= (and b!298839 res!157611) b!298840))

(assert (= (or b!298840 b!298837) bm!25792))

(declare-fun m!311237 () Bool)

(assert (=> bm!25792 m!311237))

(assert (=> b!298838 m!311233))

(assert (=> b!298838 m!311233))

(declare-fun m!311239 () Bool)

(assert (=> b!298838 m!311239))

(assert (=> b!298839 m!311233))

(declare-fun m!311241 () Bool)

(assert (=> b!298839 m!311241))

(declare-fun m!311243 () Bool)

(assert (=> b!298839 m!311243))

(assert (=> b!298839 m!311233))

(declare-fun m!311245 () Bool)

(assert (=> b!298839 m!311245))

(assert (=> bm!25788 d!67357))

(assert (=> d!67321 d!67311))

(declare-fun b!298842 () Bool)

(declare-fun lt!148634 () SeekEntryResult!2313)

(assert (=> b!298842 (and (bvsge (index!11427 lt!148634) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148634) (size!7505 a!3312)))))

(declare-fun res!157612 () Bool)

(assert (=> b!298842 (= res!157612 (= (select (arr!7153 a!3312) (index!11427 lt!148634)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188789 () Bool)

(assert (=> b!298842 (=> res!157612 e!188789)))

(declare-fun b!298843 () Bool)

(declare-fun e!188792 () Bool)

(assert (=> b!298843 (= e!188792 (bvsge (x!29625 lt!148634) #b01111111111111111111111111111110))))

(declare-fun b!298844 () Bool)

(assert (=> b!298844 (and (bvsge (index!11427 lt!148634) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148634) (size!7505 a!3312)))))

(declare-fun res!157613 () Bool)

(assert (=> b!298844 (= res!157613 (= (select (arr!7153 a!3312) (index!11427 lt!148634)) k!2524))))

(assert (=> b!298844 (=> res!157613 e!188789)))

(declare-fun e!188790 () Bool)

(assert (=> b!298844 (= e!188790 e!188789)))

(declare-fun b!298845 () Bool)

(declare-fun e!188793 () SeekEntryResult!2313)

(assert (=> b!298845 (= e!188793 (Intermediate!2313 true (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!298846 () Bool)

(declare-fun e!188791 () SeekEntryResult!2313)

(assert (=> b!298846 (= e!188793 e!188791)))

(declare-fun c!48203 () Bool)

(declare-fun lt!148633 () (_ BitVec 64))

(assert (=> b!298846 (= c!48203 (or (= lt!148633 k!2524) (= (bvadd lt!148633 lt!148633) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298847 () Bool)

(assert (=> b!298847 (= e!188791 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun d!67359 () Bool)

(assert (=> d!67359 e!188792))

(declare-fun c!48205 () Bool)

(assert (=> d!67359 (= c!48205 (and (is-Intermediate!2313 lt!148634) (undefined!3125 lt!148634)))))

(assert (=> d!67359 (= lt!148634 e!188793)))

(declare-fun c!48204 () Bool)

(assert (=> d!67359 (= c!48204 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!67359 (= lt!148633 (select (arr!7153 a!3312) (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809)))))

(assert (=> d!67359 (validMask!0 mask!3809)))

(assert (=> d!67359 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809) lt!148634)))

(declare-fun b!298841 () Bool)

(assert (=> b!298841 (and (bvsge (index!11427 lt!148634) #b00000000000000000000000000000000) (bvslt (index!11427 lt!148634) (size!7505 a!3312)))))

(assert (=> b!298841 (= e!188789 (= (select (arr!7153 a!3312) (index!11427 lt!148634)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298848 () Bool)

(assert (=> b!298848 (= e!188791 (Intermediate!2313 false (nextIndex!0 lt!148483 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!298849 () Bool)

(assert (=> b!298849 (= e!188792 e!188790)))

(declare-fun res!157614 () Bool)

(assert (=> b!298849 (= res!157614 (and (is-Intermediate!2313 lt!148634) (not (undefined!3125 lt!148634)) (bvslt (x!29625 lt!148634) #b01111111111111111111111111111110) (bvsge (x!29625 lt!148634) #b00000000000000000000000000000000) (bvsge (x!29625 lt!148634) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!298849 (=> (not res!157614) (not e!188790))))

(assert (= (and d!67359 c!48204) b!298845))

(assert (= (and d!67359 (not c!48204)) b!298846))

(assert (= (and b!298846 c!48203) b!298848))

(assert (= (and b!298846 (not c!48203)) b!298847))

(assert (= (and d!67359 c!48205) b!298843))

(assert (= (and d!67359 (not c!48205)) b!298849))

(assert (= (and b!298849 res!157614) b!298844))

(assert (= (and b!298844 (not res!157613)) b!298842))

(assert (= (and b!298842 (not res!157612)) b!298841))

(declare-fun m!311247 () Bool)

(assert (=> b!298841 m!311247))

(assert (=> b!298847 m!311163))

(assert (=> b!298847 m!311225))

(assert (=> b!298847 m!311225))

(declare-fun m!311249 () Bool)

(assert (=> b!298847 m!311249))

(assert (=> b!298844 m!311247))

(assert (=> d!67359 m!311163))

(declare-fun m!311251 () Bool)

(assert (=> d!67359 m!311251))

(assert (=> d!67359 m!311009))

(assert (=> b!298842 m!311247))

(assert (=> b!298764 d!67359))

(assert (=> b!298764 d!67353))

(push 1)

(assert (not b!298810))

(assert (not d!67351))

(assert (not b!298838))

(assert (not b!298839))

(assert (not b!298847))

(assert (not d!67347))

(assert (not d!67359))

(assert (not d!67353))

(assert (not b!298832))

(assert (not bm!25792))

(assert (not b!298836))

(assert (not b!298823))

(assert (not d!67339))

(assert (not d!67343))

(assert (not d!67349))

(assert (not b!298803))

(assert (not b!298811))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

