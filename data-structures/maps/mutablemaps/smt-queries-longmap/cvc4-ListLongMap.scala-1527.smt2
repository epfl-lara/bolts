; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28802 () Bool)

(assert start!28802)

(declare-fun b!293678 () Bool)

(declare-fun res!154490 () Bool)

(declare-fun e!185693 () Bool)

(assert (=> b!293678 (=> (not res!154490) (not e!185693))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14880 0))(
  ( (array!14881 (arr!7059 (Array (_ BitVec 32) (_ BitVec 64))) (size!7411 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14880)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!293678 (= res!154490 (and (= (size!7411 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7411 a!3312))))))

(declare-fun b!293679 () Bool)

(declare-fun res!154493 () Bool)

(assert (=> b!293679 (=> (not res!154493) (not e!185693))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293679 (= res!154493 (validKeyInArray!0 k!2524))))

(declare-fun b!293680 () Bool)

(declare-fun res!154489 () Bool)

(assert (=> b!293680 (=> (not res!154489) (not e!185693))))

(declare-fun arrayContainsKey!0 (array!14880 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293680 (= res!154489 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun e!185695 () Bool)

(declare-datatypes ((SeekEntryResult!2219 0))(
  ( (MissingZero!2219 (index!11046 (_ BitVec 32))) (Found!2219 (index!11047 (_ BitVec 32))) (Intermediate!2219 (undefined!3031 Bool) (index!11048 (_ BitVec 32)) (x!29198 (_ BitVec 32))) (Undefined!2219) (MissingVacant!2219 (index!11049 (_ BitVec 32))) )
))
(declare-fun lt!145632 () SeekEntryResult!2219)

(declare-fun lt!145634 () Bool)

(declare-fun b!293681 () Bool)

(assert (=> b!293681 (= e!185695 (and lt!145634 (let ((bdg!6223 (not (is-Intermediate!2219 lt!145632)))) (and (or bdg!6223 (not (undefined!3031 lt!145632))) (not bdg!6223) (= (select (arr!7059 a!3312) (index!11048 lt!145632)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!145631 () (_ BitVec 32))

(declare-fun lt!145630 () SeekEntryResult!2219)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14880 (_ BitVec 32)) SeekEntryResult!2219)

(assert (=> b!293681 (= lt!145630 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145631 k!2524 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312)) mask!3809))))

(assert (=> b!293681 (= lt!145632 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145631 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293681 (= lt!145631 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!293682 () Bool)

(assert (=> b!293682 (= e!185693 e!185695)))

(declare-fun res!154491 () Bool)

(assert (=> b!293682 (=> (not res!154491) (not e!185695))))

(declare-fun lt!145633 () SeekEntryResult!2219)

(assert (=> b!293682 (= res!154491 (or lt!145634 (= lt!145633 (MissingVacant!2219 i!1256))))))

(assert (=> b!293682 (= lt!145634 (= lt!145633 (MissingZero!2219 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14880 (_ BitVec 32)) SeekEntryResult!2219)

(assert (=> b!293682 (= lt!145633 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!154494 () Bool)

(assert (=> start!28802 (=> (not res!154494) (not e!185693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28802 (= res!154494 (validMask!0 mask!3809))))

(assert (=> start!28802 e!185693))

(assert (=> start!28802 true))

(declare-fun array_inv!5013 (array!14880) Bool)

(assert (=> start!28802 (array_inv!5013 a!3312)))

(declare-fun b!293677 () Bool)

(declare-fun res!154492 () Bool)

(assert (=> b!293677 (=> (not res!154492) (not e!185695))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14880 (_ BitVec 32)) Bool)

(assert (=> b!293677 (= res!154492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!28802 res!154494) b!293678))

(assert (= (and b!293678 res!154490) b!293679))

(assert (= (and b!293679 res!154493) b!293680))

(assert (= (and b!293680 res!154489) b!293682))

(assert (= (and b!293682 res!154491) b!293677))

(assert (= (and b!293677 res!154492) b!293681))

(declare-fun m!307347 () Bool)

(assert (=> b!293679 m!307347))

(declare-fun m!307349 () Bool)

(assert (=> b!293680 m!307349))

(declare-fun m!307351 () Bool)

(assert (=> b!293677 m!307351))

(declare-fun m!307353 () Bool)

(assert (=> start!28802 m!307353))

(declare-fun m!307355 () Bool)

(assert (=> start!28802 m!307355))

(declare-fun m!307357 () Bool)

(assert (=> b!293682 m!307357))

(declare-fun m!307359 () Bool)

(assert (=> b!293681 m!307359))

(declare-fun m!307361 () Bool)

(assert (=> b!293681 m!307361))

(declare-fun m!307363 () Bool)

(assert (=> b!293681 m!307363))

(declare-fun m!307365 () Bool)

(assert (=> b!293681 m!307365))

(declare-fun m!307367 () Bool)

(assert (=> b!293681 m!307367))

(push 1)

(assert (not b!293681))

(assert (not b!293677))

(assert (not start!28802))

(assert (not b!293680))

(assert (not b!293679))

(assert (not b!293682))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66545 () Bool)

(assert (=> d!66545 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293679 d!66545))

(declare-fun d!66547 () Bool)

(assert (=> d!66547 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28802 d!66547))

(declare-fun d!66551 () Bool)

(assert (=> d!66551 (= (array_inv!5013 a!3312) (bvsge (size!7411 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28802 d!66551))

(declare-fun b!293755 () Bool)

(declare-fun lt!145666 () SeekEntryResult!2219)

(assert (=> b!293755 (and (bvsge (index!11048 lt!145666) #b00000000000000000000000000000000) (bvslt (index!11048 lt!145666) (size!7411 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312)))))))

(declare-fun res!154515 () Bool)

(assert (=> b!293755 (= res!154515 (= (select (arr!7059 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312))) (index!11048 lt!145666)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185743 () Bool)

(assert (=> b!293755 (=> res!154515 e!185743)))

(declare-fun b!293756 () Bool)

(declare-fun e!185741 () Bool)

(assert (=> b!293756 (= e!185741 (bvsge (x!29198 lt!145666) #b01111111111111111111111111111110))))

(declare-fun b!293757 () Bool)

(assert (=> b!293757 (and (bvsge (index!11048 lt!145666) #b00000000000000000000000000000000) (bvslt (index!11048 lt!145666) (size!7411 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312)))))))

(declare-fun res!154513 () Bool)

(assert (=> b!293757 (= res!154513 (= (select (arr!7059 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312))) (index!11048 lt!145666)) k!2524))))

(assert (=> b!293757 (=> res!154513 e!185743)))

(declare-fun e!185739 () Bool)

(assert (=> b!293757 (= e!185739 e!185743)))

(declare-fun b!293759 () Bool)

(declare-fun e!185742 () SeekEntryResult!2219)

(assert (=> b!293759 (= e!185742 (Intermediate!2219 false lt!145631 #b00000000000000000000000000000000))))

(declare-fun b!293760 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293760 (= e!185742 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145631 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312)) mask!3809))))

(declare-fun b!293761 () Bool)

(declare-fun e!185740 () SeekEntryResult!2219)

(assert (=> b!293761 (= e!185740 (Intermediate!2219 true lt!145631 #b00000000000000000000000000000000))))

(declare-fun b!293758 () Bool)

(assert (=> b!293758 (= e!185740 e!185742)))

(declare-fun c!47192 () Bool)

(declare-fun lt!145667 () (_ BitVec 64))

(assert (=> b!293758 (= c!47192 (or (= lt!145667 k!2524) (= (bvadd lt!145667 lt!145667) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!66553 () Bool)

(assert (=> d!66553 e!185741))

(declare-fun c!47190 () Bool)

(assert (=> d!66553 (= c!47190 (and (is-Intermediate!2219 lt!145666) (undefined!3031 lt!145666)))))

(assert (=> d!66553 (= lt!145666 e!185740)))

(declare-fun c!47191 () Bool)

(assert (=> d!66553 (= c!47191 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66553 (= lt!145667 (select (arr!7059 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312))) lt!145631))))

(assert (=> d!66553 (validMask!0 mask!3809)))

(assert (=> d!66553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145631 k!2524 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312)) mask!3809) lt!145666)))

(declare-fun b!293762 () Bool)

(assert (=> b!293762 (= e!185741 e!185739)))

(declare-fun res!154514 () Bool)

(assert (=> b!293762 (= res!154514 (and (is-Intermediate!2219 lt!145666) (not (undefined!3031 lt!145666)) (bvslt (x!29198 lt!145666) #b01111111111111111111111111111110) (bvsge (x!29198 lt!145666) #b00000000000000000000000000000000) (bvsge (x!29198 lt!145666) #b00000000000000000000000000000000)))))

(assert (=> b!293762 (=> (not res!154514) (not e!185739))))

(declare-fun b!293763 () Bool)

(assert (=> b!293763 (and (bvsge (index!11048 lt!145666) #b00000000000000000000000000000000) (bvslt (index!11048 lt!145666) (size!7411 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312)))))))

(assert (=> b!293763 (= e!185743 (= (select (arr!7059 (array!14881 (store (arr!7059 a!3312) i!1256 k!2524) (size!7411 a!3312))) (index!11048 lt!145666)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66553 c!47191) b!293761))

(assert (= (and d!66553 (not c!47191)) b!293758))

(assert (= (and b!293758 c!47192) b!293759))

(assert (= (and b!293758 (not c!47192)) b!293760))

(assert (= (and d!66553 c!47190) b!293756))

(assert (= (and d!66553 (not c!47190)) b!293762))

(assert (= (and b!293762 res!154514) b!293757))

(assert (= (and b!293757 (not res!154513)) b!293755))

(assert (= (and b!293755 (not res!154515)) b!293763))

(declare-fun m!307407 () Bool)

(assert (=> b!293763 m!307407))

(declare-fun m!307409 () Bool)

(assert (=> d!66553 m!307409))

(assert (=> d!66553 m!307353))

(declare-fun m!307411 () Bool)

(assert (=> b!293760 m!307411))

(assert (=> b!293760 m!307411))

(declare-fun m!307413 () Bool)

(assert (=> b!293760 m!307413))

(assert (=> b!293757 m!307407))

(assert (=> b!293755 m!307407))

(assert (=> b!293681 d!66553))

(declare-fun b!293764 () Bool)

(declare-fun lt!145668 () SeekEntryResult!2219)

(assert (=> b!293764 (and (bvsge (index!11048 lt!145668) #b00000000000000000000000000000000) (bvslt (index!11048 lt!145668) (size!7411 a!3312)))))

(declare-fun res!154518 () Bool)

(assert (=> b!293764 (= res!154518 (= (select (arr!7059 a!3312) (index!11048 lt!145668)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185748 () Bool)

(assert (=> b!293764 (=> res!154518 e!185748)))

(declare-fun b!293765 () Bool)

(declare-fun e!185746 () Bool)

(assert (=> b!293765 (= e!185746 (bvsge (x!29198 lt!145668) #b01111111111111111111111111111110))))

(declare-fun b!293766 () Bool)

(assert (=> b!293766 (and (bvsge (index!11048 lt!145668) #b00000000000000000000000000000000) (bvslt (index!11048 lt!145668) (size!7411 a!3312)))))

(declare-fun res!154516 () Bool)

(assert (=> b!293766 (= res!154516 (= (select (arr!7059 a!3312) (index!11048 lt!145668)) k!2524))))

(assert (=> b!293766 (=> res!154516 e!185748)))

(declare-fun e!185744 () Bool)

(assert (=> b!293766 (= e!185744 e!185748)))

(declare-fun b!293768 () Bool)

(declare-fun e!185747 () SeekEntryResult!2219)

(assert (=> b!293768 (= e!185747 (Intermediate!2219 false lt!145631 #b00000000000000000000000000000000))))

(declare-fun b!293769 () Bool)

(assert (=> b!293769 (= e!185747 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145631 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!293770 () Bool)

(declare-fun e!185745 () SeekEntryResult!2219)

(assert (=> b!293770 (= e!185745 (Intermediate!2219 true lt!145631 #b00000000000000000000000000000000))))

(declare-fun b!293767 () Bool)

(assert (=> b!293767 (= e!185745 e!185747)))

(declare-fun c!47195 () Bool)

(declare-fun lt!145669 () (_ BitVec 64))

(assert (=> b!293767 (= c!47195 (or (= lt!145669 k!2524) (= (bvadd lt!145669 lt!145669) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!66565 () Bool)

(assert (=> d!66565 e!185746))

(declare-fun c!47193 () Bool)

(assert (=> d!66565 (= c!47193 (and (is-Intermediate!2219 lt!145668) (undefined!3031 lt!145668)))))

(assert (=> d!66565 (= lt!145668 e!185745)))

(declare-fun c!47194 () Bool)

(assert (=> d!66565 (= c!47194 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66565 (= lt!145669 (select (arr!7059 a!3312) lt!145631))))

(assert (=> d!66565 (validMask!0 mask!3809)))

(assert (=> d!66565 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145631 k!2524 a!3312 mask!3809) lt!145668)))

(declare-fun b!293771 () Bool)

(assert (=> b!293771 (= e!185746 e!185744)))

(declare-fun res!154517 () Bool)

(assert (=> b!293771 (= res!154517 (and (is-Intermediate!2219 lt!145668) (not (undefined!3031 lt!145668)) (bvslt (x!29198 lt!145668) #b01111111111111111111111111111110) (bvsge (x!29198 lt!145668) #b00000000000000000000000000000000) (bvsge (x!29198 lt!145668) #b00000000000000000000000000000000)))))

(assert (=> b!293771 (=> (not res!154517) (not e!185744))))

(declare-fun b!293772 () Bool)

(assert (=> b!293772 (and (bvsge (index!11048 lt!145668) #b00000000000000000000000000000000) (bvslt (index!11048 lt!145668) (size!7411 a!3312)))))

(assert (=> b!293772 (= e!185748 (= (select (arr!7059 a!3312) (index!11048 lt!145668)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66565 c!47194) b!293770))

(assert (= (and d!66565 (not c!47194)) b!293767))

(assert (= (and b!293767 c!47195) b!293768))

(assert (= (and b!293767 (not c!47195)) b!293769))

(assert (= (and d!66565 c!47193) b!293765))

(assert (= (and d!66565 (not c!47193)) b!293771))

(assert (= (and b!293771 res!154517) b!293766))

(assert (= (and b!293766 (not res!154516)) b!293764))

(assert (= (and b!293764 (not res!154518)) b!293772))

(declare-fun m!307415 () Bool)

(assert (=> b!293772 m!307415))

(declare-fun m!307417 () Bool)

(assert (=> d!66565 m!307417))

(assert (=> d!66565 m!307353))

(assert (=> b!293769 m!307411))

(assert (=> b!293769 m!307411))

(declare-fun m!307419 () Bool)

(assert (=> b!293769 m!307419))

(assert (=> b!293766 m!307415))

(assert (=> b!293764 m!307415))

(assert (=> b!293681 d!66565))

(declare-fun d!66567 () Bool)

(declare-fun lt!145683 () (_ BitVec 32))

(declare-fun lt!145682 () (_ BitVec 32))

(assert (=> d!66567 (= lt!145683 (bvmul (bvxor lt!145682 (bvlshr lt!145682 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66567 (= lt!145682 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66567 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154519 (let ((h!5294 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29200 (bvmul (bvxor h!5294 (bvlshr h!5294 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29200 (bvlshr x!29200 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154519 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154519 #b00000000000000000000000000000000))))))

(assert (=> d!66567 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!145683 (bvlshr lt!145683 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!293681 d!66567))

(declare-fun d!66569 () Bool)

(declare-fun res!154545 () Bool)

(declare-fun e!185788 () Bool)

(assert (=> d!66569 (=> res!154545 e!185788)))

(assert (=> d!66569 (= res!154545 (= (select (arr!7059 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66569 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!185788)))

(declare-fun b!293840 () Bool)

(declare-fun e!185789 () Bool)

(assert (=> b!293840 (= e!185788 e!185789)))

(declare-fun res!154546 () Bool)

(assert (=> b!293840 (=> (not res!154546) (not e!185789))))

(assert (=> b!293840 (= res!154546 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7411 a!3312)))))

(declare-fun b!293841 () Bool)

(assert (=> b!293841 (= e!185789 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66569 (not res!154545)) b!293840))

(assert (= (and b!293840 res!154546) b!293841))

(declare-fun m!307429 () Bool)

(assert (=> d!66569 m!307429))

(declare-fun m!307433 () Bool)

(assert (=> b!293841 m!307433))

(assert (=> b!293680 d!66569))

(declare-fun b!293875 () Bool)

(declare-fun e!185812 () SeekEntryResult!2219)

(declare-fun lt!145720 () SeekEntryResult!2219)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14880 (_ BitVec 32)) SeekEntryResult!2219)

(assert (=> b!293875 (= e!185812 (seekKeyOrZeroReturnVacant!0 (x!29198 lt!145720) (index!11048 lt!145720) (index!11048 lt!145720) k!2524 a!3312 mask!3809))))

(declare-fun b!293876 () Bool)

(assert (=> b!293876 (= e!185812 (MissingZero!2219 (index!11048 lt!145720)))))

(declare-fun d!66573 () Bool)

(declare-fun lt!145719 () SeekEntryResult!2219)

(assert (=> d!66573 (and (or (is-Undefined!2219 lt!145719) (not (is-Found!2219 lt!145719)) (and (bvsge (index!11047 lt!145719) #b00000000000000000000000000000000) (bvslt (index!11047 lt!145719) (size!7411 a!3312)))) (or (is-Undefined!2219 lt!145719) (is-Found!2219 lt!145719) (not (is-MissingZero!2219 lt!145719)) (and (bvsge (index!11046 lt!145719) #b00000000000000000000000000000000) (bvslt (index!11046 lt!145719) (size!7411 a!3312)))) (or (is-Undefined!2219 lt!145719) (is-Found!2219 lt!145719) (is-MissingZero!2219 lt!145719) (not (is-MissingVacant!2219 lt!145719)) (and (bvsge (index!11049 lt!145719) #b00000000000000000000000000000000) (bvslt (index!11049 lt!145719) (size!7411 a!3312)))) (or (is-Undefined!2219 lt!145719) (ite (is-Found!2219 lt!145719) (= (select (arr!7059 a!3312) (index!11047 lt!145719)) k!2524) (ite (is-MissingZero!2219 lt!145719) (= (select (arr!7059 a!3312) (index!11046 lt!145719)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2219 lt!145719) (= (select (arr!7059 a!3312) (index!11049 lt!145719)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!185811 () SeekEntryResult!2219)

(assert (=> d!66573 (= lt!145719 e!185811)))

(declare-fun c!47231 () Bool)

(assert (=> d!66573 (= c!47231 (and (is-Intermediate!2219 lt!145720) (undefined!3031 lt!145720)))))

(assert (=> d!66573 (= lt!145720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66573 (validMask!0 mask!3809)))

(assert (=> d!66573 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!145719)))

(declare-fun b!293877 () Bool)

(assert (=> b!293877 (= e!185811 Undefined!2219)))

(declare-fun b!293878 () Bool)

(declare-fun c!47230 () Bool)

(declare-fun lt!145721 () (_ BitVec 64))

(assert (=> b!293878 (= c!47230 (= lt!145721 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185810 () SeekEntryResult!2219)

(assert (=> b!293878 (= e!185810 e!185812)))

(declare-fun b!293879 () Bool)

(assert (=> b!293879 (= e!185811 e!185810)))

(assert (=> b!293879 (= lt!145721 (select (arr!7059 a!3312) (index!11048 lt!145720)))))

(declare-fun c!47229 () Bool)

(assert (=> b!293879 (= c!47229 (= lt!145721 k!2524))))

(declare-fun b!293880 () Bool)

(assert (=> b!293880 (= e!185810 (Found!2219 (index!11048 lt!145720)))))

(assert (= (and d!66573 c!47231) b!293877))

(assert (= (and d!66573 (not c!47231)) b!293879))

(assert (= (and b!293879 c!47229) b!293880))

(assert (= (and b!293879 (not c!47229)) b!293878))

(assert (= (and b!293878 c!47230) b!293876))

(assert (= (and b!293878 (not c!47230)) b!293875))

(declare-fun m!307465 () Bool)

(assert (=> b!293875 m!307465))

(assert (=> d!66573 m!307367))

(declare-fun m!307467 () Bool)

(assert (=> d!66573 m!307467))

(assert (=> d!66573 m!307353))

(declare-fun m!307469 () Bool)

(assert (=> d!66573 m!307469))

(declare-fun m!307471 () Bool)

(assert (=> d!66573 m!307471))

(declare-fun m!307473 () Bool)

(assert (=> d!66573 m!307473))

(assert (=> d!66573 m!307367))

(declare-fun m!307475 () Bool)

(assert (=> b!293879 m!307475))

(assert (=> b!293682 d!66573))

(declare-fun d!66585 () Bool)

(declare-fun res!154568 () Bool)

(declare-fun e!185825 () Bool)

(assert (=> d!66585 (=> res!154568 e!185825)))

(assert (=> d!66585 (= res!154568 (bvsge #b00000000000000000000000000000000 (size!7411 a!3312)))))

(assert (=> d!66585 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185825)))

(declare-fun bm!25682 () Bool)

(declare-fun call!25685 () Bool)

(assert (=> bm!25682 (= call!25685 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!293895 () Bool)

(declare-fun e!185826 () Bool)

(declare-fun e!185827 () Bool)

(assert (=> b!293895 (= e!185826 e!185827)))

(declare-fun lt!145729 () (_ BitVec 64))

(assert (=> b!293895 (= lt!145729 (select (arr!7059 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9185 0))(
  ( (Unit!9186) )
))
(declare-fun lt!145728 () Unit!9185)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14880 (_ BitVec 64) (_ BitVec 32)) Unit!9185)

(assert (=> b!293895 (= lt!145728 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145729 #b00000000000000000000000000000000))))

(assert (=> b!293895 (arrayContainsKey!0 a!3312 lt!145729 #b00000000000000000000000000000000)))

(declare-fun lt!145730 () Unit!9185)

(assert (=> b!293895 (= lt!145730 lt!145728)))

(declare-fun res!154569 () Bool)

(assert (=> b!293895 (= res!154569 (= (seekEntryOrOpen!0 (select (arr!7059 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2219 #b00000000000000000000000000000000)))))

(assert (=> b!293895 (=> (not res!154569) (not e!185827))))

(declare-fun b!293896 () Bool)

(assert (=> b!293896 (= e!185825 e!185826)))

(declare-fun c!47234 () Bool)

(assert (=> b!293896 (= c!47234 (validKeyInArray!0 (select (arr!7059 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!293897 () Bool)

(assert (=> b!293897 (= e!185827 call!25685)))

(declare-fun b!293898 () Bool)

(assert (=> b!293898 (= e!185826 call!25685)))

(assert (= (and d!66585 (not res!154568)) b!293896))

(assert (= (and b!293896 c!47234) b!293895))

(assert (= (and b!293896 (not c!47234)) b!293898))

(assert (= (and b!293895 res!154569) b!293897))

(assert (= (or b!293897 b!293898) bm!25682))

(declare-fun m!307479 () Bool)

(assert (=> bm!25682 m!307479))

(assert (=> b!293895 m!307429))

(declare-fun m!307481 () Bool)

(assert (=> b!293895 m!307481))

(declare-fun m!307483 () Bool)

(assert (=> b!293895 m!307483))

(assert (=> b!293895 m!307429))

(declare-fun m!307485 () Bool)

(assert (=> b!293895 m!307485))

(assert (=> b!293896 m!307429))

(assert (=> b!293896 m!307429))

(declare-fun m!307487 () Bool)

(assert (=> b!293896 m!307487))

(assert (=> b!293677 d!66585))

(push 1)

(assert (not d!66553))

(assert (not b!293875))

(assert (not b!293841))

(assert (not b!293895))

(assert (not b!293769))

(assert (not d!66565))

(assert (not b!293760))

(assert (not bm!25682))

(assert (not b!293896))

(assert (not d!66573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

