; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28800 () Bool)

(assert start!28800)

(declare-fun b!293659 () Bool)

(declare-fun res!154476 () Bool)

(declare-fun e!185685 () Bool)

(assert (=> b!293659 (=> (not res!154476) (not e!185685))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!14878 0))(
  ( (array!14879 (arr!7058 (Array (_ BitVec 32) (_ BitVec 64))) (size!7410 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14878)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!293659 (= res!154476 (and (= (size!7410 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7410 a!3312))))))

(declare-fun b!293660 () Bool)

(declare-fun res!154472 () Bool)

(declare-fun e!185686 () Bool)

(assert (=> b!293660 (=> (not res!154472) (not e!185686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14878 (_ BitVec 32)) Bool)

(assert (=> b!293660 (= res!154472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293661 () Bool)

(assert (=> b!293661 (= e!185685 e!185686)))

(declare-fun res!154471 () Bool)

(assert (=> b!293661 (=> (not res!154471) (not e!185686))))

(declare-datatypes ((SeekEntryResult!2218 0))(
  ( (MissingZero!2218 (index!11042 (_ BitVec 32))) (Found!2218 (index!11043 (_ BitVec 32))) (Intermediate!2218 (undefined!3030 Bool) (index!11044 (_ BitVec 32)) (x!29197 (_ BitVec 32))) (Undefined!2218) (MissingVacant!2218 (index!11045 (_ BitVec 32))) )
))
(declare-fun lt!145615 () SeekEntryResult!2218)

(declare-fun lt!145617 () Bool)

(assert (=> b!293661 (= res!154471 (or lt!145617 (= lt!145615 (MissingVacant!2218 i!1256))))))

(assert (=> b!293661 (= lt!145617 (= lt!145615 (MissingZero!2218 i!1256)))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14878 (_ BitVec 32)) SeekEntryResult!2218)

(assert (=> b!293661 (= lt!145615 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!154474 () Bool)

(assert (=> start!28800 (=> (not res!154474) (not e!185685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28800 (= res!154474 (validMask!0 mask!3809))))

(assert (=> start!28800 e!185685))

(assert (=> start!28800 true))

(declare-fun array_inv!5012 (array!14878) Bool)

(assert (=> start!28800 (array_inv!5012 a!3312)))

(declare-fun b!293662 () Bool)

(declare-fun res!154473 () Bool)

(assert (=> b!293662 (=> (not res!154473) (not e!185685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293662 (= res!154473 (validKeyInArray!0 k0!2524))))

(declare-fun b!293663 () Bool)

(declare-fun lt!145618 () SeekEntryResult!2218)

(get-info :version)

(assert (=> b!293663 (= e!185686 (and lt!145617 (let ((bdg!6223 (not ((_ is Intermediate!2218) lt!145618)))) (and (or bdg!6223 (not (undefined!3030 lt!145618))) (not bdg!6223) (= (select (arr!7058 a!3312) (index!11044 lt!145618)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!145616 () SeekEntryResult!2218)

(declare-fun lt!145619 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14878 (_ BitVec 32)) SeekEntryResult!2218)

(assert (=> b!293663 (= lt!145616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145619 k0!2524 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)) mask!3809))))

(assert (=> b!293663 (= lt!145618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145619 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293663 (= lt!145619 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!293664 () Bool)

(declare-fun res!154475 () Bool)

(assert (=> b!293664 (=> (not res!154475) (not e!185685))))

(declare-fun arrayContainsKey!0 (array!14878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293664 (= res!154475 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28800 res!154474) b!293659))

(assert (= (and b!293659 res!154476) b!293662))

(assert (= (and b!293662 res!154473) b!293664))

(assert (= (and b!293664 res!154475) b!293661))

(assert (= (and b!293661 res!154471) b!293660))

(assert (= (and b!293660 res!154472) b!293663))

(declare-fun m!307325 () Bool)

(assert (=> b!293661 m!307325))

(declare-fun m!307327 () Bool)

(assert (=> b!293660 m!307327))

(declare-fun m!307329 () Bool)

(assert (=> b!293664 m!307329))

(declare-fun m!307331 () Bool)

(assert (=> b!293663 m!307331))

(declare-fun m!307333 () Bool)

(assert (=> b!293663 m!307333))

(declare-fun m!307335 () Bool)

(assert (=> b!293663 m!307335))

(declare-fun m!307337 () Bool)

(assert (=> b!293663 m!307337))

(declare-fun m!307339 () Bool)

(assert (=> b!293663 m!307339))

(declare-fun m!307341 () Bool)

(assert (=> b!293662 m!307341))

(declare-fun m!307343 () Bool)

(assert (=> start!28800 m!307343))

(declare-fun m!307345 () Bool)

(assert (=> start!28800 m!307345))

(check-sat (not b!293660) (not start!28800) (not b!293662) (not b!293661) (not b!293663) (not b!293664))
(check-sat)
(get-model)

(declare-fun d!66537 () Bool)

(declare-fun res!154500 () Bool)

(declare-fun e!185702 () Bool)

(assert (=> d!66537 (=> res!154500 e!185702)))

(assert (=> d!66537 (= res!154500 (bvsge #b00000000000000000000000000000000 (size!7410 a!3312)))))

(assert (=> d!66537 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185702)))

(declare-fun bm!25676 () Bool)

(declare-fun call!25679 () Bool)

(assert (=> bm!25676 (= call!25679 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!293691 () Bool)

(declare-fun e!185704 () Bool)

(assert (=> b!293691 (= e!185704 call!25679)))

(declare-fun b!293692 () Bool)

(declare-fun e!185703 () Bool)

(assert (=> b!293692 (= e!185703 e!185704)))

(declare-fun lt!145643 () (_ BitVec 64))

(assert (=> b!293692 (= lt!145643 (select (arr!7058 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9181 0))(
  ( (Unit!9182) )
))
(declare-fun lt!145641 () Unit!9181)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14878 (_ BitVec 64) (_ BitVec 32)) Unit!9181)

(assert (=> b!293692 (= lt!145641 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145643 #b00000000000000000000000000000000))))

(assert (=> b!293692 (arrayContainsKey!0 a!3312 lt!145643 #b00000000000000000000000000000000)))

(declare-fun lt!145642 () Unit!9181)

(assert (=> b!293692 (= lt!145642 lt!145641)))

(declare-fun res!154499 () Bool)

(assert (=> b!293692 (= res!154499 (= (seekEntryOrOpen!0 (select (arr!7058 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2218 #b00000000000000000000000000000000)))))

(assert (=> b!293692 (=> (not res!154499) (not e!185704))))

(declare-fun b!293693 () Bool)

(assert (=> b!293693 (= e!185702 e!185703)))

(declare-fun c!47165 () Bool)

(assert (=> b!293693 (= c!47165 (validKeyInArray!0 (select (arr!7058 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!293694 () Bool)

(assert (=> b!293694 (= e!185703 call!25679)))

(assert (= (and d!66537 (not res!154500)) b!293693))

(assert (= (and b!293693 c!47165) b!293692))

(assert (= (and b!293693 (not c!47165)) b!293694))

(assert (= (and b!293692 res!154499) b!293691))

(assert (= (or b!293691 b!293694) bm!25676))

(declare-fun m!307369 () Bool)

(assert (=> bm!25676 m!307369))

(declare-fun m!307371 () Bool)

(assert (=> b!293692 m!307371))

(declare-fun m!307373 () Bool)

(assert (=> b!293692 m!307373))

(declare-fun m!307375 () Bool)

(assert (=> b!293692 m!307375))

(assert (=> b!293692 m!307371))

(declare-fun m!307377 () Bool)

(assert (=> b!293692 m!307377))

(assert (=> b!293693 m!307371))

(assert (=> b!293693 m!307371))

(declare-fun m!307379 () Bool)

(assert (=> b!293693 m!307379))

(assert (=> b!293660 d!66537))

(declare-fun b!293707 () Bool)

(declare-fun e!185713 () SeekEntryResult!2218)

(assert (=> b!293707 (= e!185713 Undefined!2218)))

(declare-fun b!293708 () Bool)

(declare-fun e!185711 () SeekEntryResult!2218)

(declare-fun lt!145651 () SeekEntryResult!2218)

(assert (=> b!293708 (= e!185711 (MissingZero!2218 (index!11044 lt!145651)))))

(declare-fun b!293709 () Bool)

(declare-fun e!185712 () SeekEntryResult!2218)

(assert (=> b!293709 (= e!185713 e!185712)))

(declare-fun lt!145650 () (_ BitVec 64))

(assert (=> b!293709 (= lt!145650 (select (arr!7058 a!3312) (index!11044 lt!145651)))))

(declare-fun c!47172 () Bool)

(assert (=> b!293709 (= c!47172 (= lt!145650 k0!2524))))

(declare-fun d!66539 () Bool)

(declare-fun lt!145652 () SeekEntryResult!2218)

(assert (=> d!66539 (and (or ((_ is Undefined!2218) lt!145652) (not ((_ is Found!2218) lt!145652)) (and (bvsge (index!11043 lt!145652) #b00000000000000000000000000000000) (bvslt (index!11043 lt!145652) (size!7410 a!3312)))) (or ((_ is Undefined!2218) lt!145652) ((_ is Found!2218) lt!145652) (not ((_ is MissingZero!2218) lt!145652)) (and (bvsge (index!11042 lt!145652) #b00000000000000000000000000000000) (bvslt (index!11042 lt!145652) (size!7410 a!3312)))) (or ((_ is Undefined!2218) lt!145652) ((_ is Found!2218) lt!145652) ((_ is MissingZero!2218) lt!145652) (not ((_ is MissingVacant!2218) lt!145652)) (and (bvsge (index!11045 lt!145652) #b00000000000000000000000000000000) (bvslt (index!11045 lt!145652) (size!7410 a!3312)))) (or ((_ is Undefined!2218) lt!145652) (ite ((_ is Found!2218) lt!145652) (= (select (arr!7058 a!3312) (index!11043 lt!145652)) k0!2524) (ite ((_ is MissingZero!2218) lt!145652) (= (select (arr!7058 a!3312) (index!11042 lt!145652)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2218) lt!145652) (= (select (arr!7058 a!3312) (index!11045 lt!145652)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66539 (= lt!145652 e!185713)))

(declare-fun c!47174 () Bool)

(assert (=> d!66539 (= c!47174 (and ((_ is Intermediate!2218) lt!145651) (undefined!3030 lt!145651)))))

(assert (=> d!66539 (= lt!145651 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66539 (validMask!0 mask!3809)))

(assert (=> d!66539 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!145652)))

(declare-fun b!293710 () Bool)

(declare-fun c!47173 () Bool)

(assert (=> b!293710 (= c!47173 (= lt!145650 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293710 (= e!185712 e!185711)))

(declare-fun b!293711 () Bool)

(assert (=> b!293711 (= e!185712 (Found!2218 (index!11044 lt!145651)))))

(declare-fun b!293712 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14878 (_ BitVec 32)) SeekEntryResult!2218)

(assert (=> b!293712 (= e!185711 (seekKeyOrZeroReturnVacant!0 (x!29197 lt!145651) (index!11044 lt!145651) (index!11044 lt!145651) k0!2524 a!3312 mask!3809))))

(assert (= (and d!66539 c!47174) b!293707))

(assert (= (and d!66539 (not c!47174)) b!293709))

(assert (= (and b!293709 c!47172) b!293711))

(assert (= (and b!293709 (not c!47172)) b!293710))

(assert (= (and b!293710 c!47173) b!293708))

(assert (= (and b!293710 (not c!47173)) b!293712))

(declare-fun m!307381 () Bool)

(assert (=> b!293709 m!307381))

(declare-fun m!307383 () Bool)

(assert (=> d!66539 m!307383))

(assert (=> d!66539 m!307337))

(assert (=> d!66539 m!307337))

(declare-fun m!307385 () Bool)

(assert (=> d!66539 m!307385))

(declare-fun m!307387 () Bool)

(assert (=> d!66539 m!307387))

(declare-fun m!307389 () Bool)

(assert (=> d!66539 m!307389))

(assert (=> d!66539 m!307343))

(declare-fun m!307391 () Bool)

(assert (=> b!293712 m!307391))

(assert (=> b!293661 d!66539))

(declare-fun d!66549 () Bool)

(assert (=> d!66549 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28800 d!66549))

(declare-fun d!66555 () Bool)

(assert (=> d!66555 (= (array_inv!5012 a!3312) (bvsge (size!7410 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28800 d!66555))

(declare-fun d!66557 () Bool)

(assert (=> d!66557 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293662 d!66557))

(declare-fun d!66559 () Bool)

(declare-fun res!154505 () Bool)

(declare-fun e!185727 () Bool)

(assert (=> d!66559 (=> res!154505 e!185727)))

(assert (=> d!66559 (= res!154505 (= (select (arr!7058 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66559 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!185727)))

(declare-fun b!293735 () Bool)

(declare-fun e!185728 () Bool)

(assert (=> b!293735 (= e!185727 e!185728)))

(declare-fun res!154506 () Bool)

(assert (=> b!293735 (=> (not res!154506) (not e!185728))))

(assert (=> b!293735 (= res!154506 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7410 a!3312)))))

(declare-fun b!293736 () Bool)

(assert (=> b!293736 (= e!185728 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66559 (not res!154505)) b!293735))

(assert (= (and b!293735 res!154506) b!293736))

(assert (=> d!66559 m!307371))

(declare-fun m!307405 () Bool)

(assert (=> b!293736 m!307405))

(assert (=> b!293664 d!66559))

(declare-fun b!293822 () Bool)

(declare-fun e!185779 () SeekEntryResult!2218)

(declare-fun e!185780 () SeekEntryResult!2218)

(assert (=> b!293822 (= e!185779 e!185780)))

(declare-fun c!47213 () Bool)

(declare-fun lt!145687 () (_ BitVec 64))

(assert (=> b!293822 (= c!47213 (or (= lt!145687 k0!2524) (= (bvadd lt!145687 lt!145687) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293823 () Bool)

(declare-fun e!185778 () Bool)

(declare-fun e!185782 () Bool)

(assert (=> b!293823 (= e!185778 e!185782)))

(declare-fun res!154540 () Bool)

(declare-fun lt!145686 () SeekEntryResult!2218)

(assert (=> b!293823 (= res!154540 (and ((_ is Intermediate!2218) lt!145686) (not (undefined!3030 lt!145686)) (bvslt (x!29197 lt!145686) #b01111111111111111111111111111110) (bvsge (x!29197 lt!145686) #b00000000000000000000000000000000) (bvsge (x!29197 lt!145686) #b00000000000000000000000000000000)))))

(assert (=> b!293823 (=> (not res!154540) (not e!185782))))

(declare-fun b!293824 () Bool)

(assert (=> b!293824 (= e!185778 (bvsge (x!29197 lt!145686) #b01111111111111111111111111111110))))

(declare-fun b!293825 () Bool)

(assert (=> b!293825 (and (bvsge (index!11044 lt!145686) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145686) (size!7410 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)))))))

(declare-fun res!154541 () Bool)

(assert (=> b!293825 (= res!154541 (= (select (arr!7058 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312))) (index!11044 lt!145686)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185781 () Bool)

(assert (=> b!293825 (=> res!154541 e!185781)))

(declare-fun b!293826 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293826 (= e!185780 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)) mask!3809))))

(declare-fun b!293828 () Bool)

(assert (=> b!293828 (= e!185780 (Intermediate!2218 false lt!145619 #b00000000000000000000000000000000))))

(declare-fun b!293829 () Bool)

(assert (=> b!293829 (= e!185779 (Intermediate!2218 true lt!145619 #b00000000000000000000000000000000))))

(declare-fun b!293830 () Bool)

(assert (=> b!293830 (and (bvsge (index!11044 lt!145686) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145686) (size!7410 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)))))))

(assert (=> b!293830 (= e!185781 (= (select (arr!7058 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312))) (index!11044 lt!145686)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293827 () Bool)

(assert (=> b!293827 (and (bvsge (index!11044 lt!145686) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145686) (size!7410 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)))))))

(declare-fun res!154539 () Bool)

(assert (=> b!293827 (= res!154539 (= (select (arr!7058 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312))) (index!11044 lt!145686)) k0!2524))))

(assert (=> b!293827 (=> res!154539 e!185781)))

(assert (=> b!293827 (= e!185782 e!185781)))

(declare-fun d!66563 () Bool)

(assert (=> d!66563 e!185778))

(declare-fun c!47211 () Bool)

(assert (=> d!66563 (= c!47211 (and ((_ is Intermediate!2218) lt!145686) (undefined!3030 lt!145686)))))

(assert (=> d!66563 (= lt!145686 e!185779)))

(declare-fun c!47212 () Bool)

(assert (=> d!66563 (= c!47212 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66563 (= lt!145687 (select (arr!7058 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312))) lt!145619))))

(assert (=> d!66563 (validMask!0 mask!3809)))

(assert (=> d!66563 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145619 k0!2524 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)) mask!3809) lt!145686)))

(assert (= (and d!66563 c!47212) b!293829))

(assert (= (and d!66563 (not c!47212)) b!293822))

(assert (= (and b!293822 c!47213) b!293828))

(assert (= (and b!293822 (not c!47213)) b!293826))

(assert (= (and d!66563 c!47211) b!293824))

(assert (= (and d!66563 (not c!47211)) b!293823))

(assert (= (and b!293823 res!154540) b!293827))

(assert (= (and b!293827 (not res!154539)) b!293825))

(assert (= (and b!293825 (not res!154541)) b!293830))

(declare-fun m!307431 () Bool)

(assert (=> b!293827 m!307431))

(declare-fun m!307435 () Bool)

(assert (=> b!293826 m!307435))

(assert (=> b!293826 m!307435))

(declare-fun m!307437 () Bool)

(assert (=> b!293826 m!307437))

(declare-fun m!307439 () Bool)

(assert (=> d!66563 m!307439))

(assert (=> d!66563 m!307343))

(assert (=> b!293830 m!307431))

(assert (=> b!293825 m!307431))

(assert (=> b!293663 d!66563))

(declare-fun b!293842 () Bool)

(declare-fun e!185791 () SeekEntryResult!2218)

(declare-fun e!185792 () SeekEntryResult!2218)

(assert (=> b!293842 (= e!185791 e!185792)))

(declare-fun c!47219 () Bool)

(declare-fun lt!145691 () (_ BitVec 64))

(assert (=> b!293842 (= c!47219 (or (= lt!145691 k0!2524) (= (bvadd lt!145691 lt!145691) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293843 () Bool)

(declare-fun e!185790 () Bool)

(declare-fun e!185794 () Bool)

(assert (=> b!293843 (= e!185790 e!185794)))

(declare-fun res!154548 () Bool)

(declare-fun lt!145690 () SeekEntryResult!2218)

(assert (=> b!293843 (= res!154548 (and ((_ is Intermediate!2218) lt!145690) (not (undefined!3030 lt!145690)) (bvslt (x!29197 lt!145690) #b01111111111111111111111111111110) (bvsge (x!29197 lt!145690) #b00000000000000000000000000000000) (bvsge (x!29197 lt!145690) #b00000000000000000000000000000000)))))

(assert (=> b!293843 (=> (not res!154548) (not e!185794))))

(declare-fun b!293844 () Bool)

(assert (=> b!293844 (= e!185790 (bvsge (x!29197 lt!145690) #b01111111111111111111111111111110))))

(declare-fun b!293845 () Bool)

(assert (=> b!293845 (and (bvsge (index!11044 lt!145690) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145690) (size!7410 a!3312)))))

(declare-fun res!154549 () Bool)

(assert (=> b!293845 (= res!154549 (= (select (arr!7058 a!3312) (index!11044 lt!145690)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185793 () Bool)

(assert (=> b!293845 (=> res!154549 e!185793)))

(declare-fun b!293846 () Bool)

(assert (=> b!293846 (= e!185792 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!293848 () Bool)

(assert (=> b!293848 (= e!185792 (Intermediate!2218 false lt!145619 #b00000000000000000000000000000000))))

(declare-fun b!293849 () Bool)

(assert (=> b!293849 (= e!185791 (Intermediate!2218 true lt!145619 #b00000000000000000000000000000000))))

(declare-fun b!293850 () Bool)

(assert (=> b!293850 (and (bvsge (index!11044 lt!145690) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145690) (size!7410 a!3312)))))

(assert (=> b!293850 (= e!185793 (= (select (arr!7058 a!3312) (index!11044 lt!145690)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293847 () Bool)

(assert (=> b!293847 (and (bvsge (index!11044 lt!145690) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145690) (size!7410 a!3312)))))

(declare-fun res!154547 () Bool)

(assert (=> b!293847 (= res!154547 (= (select (arr!7058 a!3312) (index!11044 lt!145690)) k0!2524))))

(assert (=> b!293847 (=> res!154547 e!185793)))

(assert (=> b!293847 (= e!185794 e!185793)))

(declare-fun d!66575 () Bool)

(assert (=> d!66575 e!185790))

(declare-fun c!47217 () Bool)

(assert (=> d!66575 (= c!47217 (and ((_ is Intermediate!2218) lt!145690) (undefined!3030 lt!145690)))))

(assert (=> d!66575 (= lt!145690 e!185791)))

(declare-fun c!47218 () Bool)

(assert (=> d!66575 (= c!47218 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66575 (= lt!145691 (select (arr!7058 a!3312) lt!145619))))

(assert (=> d!66575 (validMask!0 mask!3809)))

(assert (=> d!66575 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145619 k0!2524 a!3312 mask!3809) lt!145690)))

(assert (= (and d!66575 c!47218) b!293849))

(assert (= (and d!66575 (not c!47218)) b!293842))

(assert (= (and b!293842 c!47219) b!293848))

(assert (= (and b!293842 (not c!47219)) b!293846))

(assert (= (and d!66575 c!47217) b!293844))

(assert (= (and d!66575 (not c!47217)) b!293843))

(assert (= (and b!293843 res!154548) b!293847))

(assert (= (and b!293847 (not res!154547)) b!293845))

(assert (= (and b!293845 (not res!154549)) b!293850))

(declare-fun m!307447 () Bool)

(assert (=> b!293847 m!307447))

(assert (=> b!293846 m!307435))

(assert (=> b!293846 m!307435))

(declare-fun m!307449 () Bool)

(assert (=> b!293846 m!307449))

(declare-fun m!307451 () Bool)

(assert (=> d!66575 m!307451))

(assert (=> d!66575 m!307343))

(assert (=> b!293850 m!307447))

(assert (=> b!293845 m!307447))

(assert (=> b!293663 d!66575))

(declare-fun d!66579 () Bool)

(declare-fun lt!145703 () (_ BitVec 32))

(declare-fun lt!145702 () (_ BitVec 32))

(assert (=> d!66579 (= lt!145703 (bvmul (bvxor lt!145702 (bvlshr lt!145702 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66579 (= lt!145702 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66579 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154551 (let ((h!5296 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29204 (bvmul (bvxor h!5296 (bvlshr h!5296 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29204 (bvlshr x!29204 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154551 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154551 #b00000000000000000000000000000000))))))

(assert (=> d!66579 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!145703 (bvlshr lt!145703 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!293663 d!66579))

(check-sat (not b!293693) (not bm!25676) (not d!66563) (not b!293846) (not b!293826) (not b!293712) (not d!66539) (not b!293736) (not d!66575) (not b!293692))
(check-sat)
(get-model)

(assert (=> d!66563 d!66549))

(declare-fun d!66591 () Bool)

(declare-fun res!154571 () Bool)

(declare-fun e!185828 () Bool)

(assert (=> d!66591 (=> res!154571 e!185828)))

(assert (=> d!66591 (= res!154571 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7410 a!3312)))))

(assert (=> d!66591 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809) e!185828)))

(declare-fun bm!25683 () Bool)

(declare-fun call!25686 () Bool)

(assert (=> bm!25683 (= call!25686 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!293899 () Bool)

(declare-fun e!185830 () Bool)

(assert (=> b!293899 (= e!185830 call!25686)))

(declare-fun b!293900 () Bool)

(declare-fun e!185829 () Bool)

(assert (=> b!293900 (= e!185829 e!185830)))

(declare-fun lt!145733 () (_ BitVec 64))

(assert (=> b!293900 (= lt!145733 (select (arr!7058 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!145731 () Unit!9181)

(assert (=> b!293900 (= lt!145731 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145733 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!293900 (arrayContainsKey!0 a!3312 lt!145733 #b00000000000000000000000000000000)))

(declare-fun lt!145732 () Unit!9181)

(assert (=> b!293900 (= lt!145732 lt!145731)))

(declare-fun res!154570 () Bool)

(assert (=> b!293900 (= res!154570 (= (seekEntryOrOpen!0 (select (arr!7058 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3312 mask!3809) (Found!2218 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!293900 (=> (not res!154570) (not e!185830))))

(declare-fun b!293901 () Bool)

(assert (=> b!293901 (= e!185828 e!185829)))

(declare-fun c!47235 () Bool)

(assert (=> b!293901 (= c!47235 (validKeyInArray!0 (select (arr!7058 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!293902 () Bool)

(assert (=> b!293902 (= e!185829 call!25686)))

(assert (= (and d!66591 (not res!154571)) b!293901))

(assert (= (and b!293901 c!47235) b!293900))

(assert (= (and b!293901 (not c!47235)) b!293902))

(assert (= (and b!293900 res!154570) b!293899))

(assert (= (or b!293899 b!293902) bm!25683))

(declare-fun m!307489 () Bool)

(assert (=> bm!25683 m!307489))

(declare-fun m!307491 () Bool)

(assert (=> b!293900 m!307491))

(declare-fun m!307493 () Bool)

(assert (=> b!293900 m!307493))

(declare-fun m!307495 () Bool)

(assert (=> b!293900 m!307495))

(assert (=> b!293900 m!307491))

(declare-fun m!307497 () Bool)

(assert (=> b!293900 m!307497))

(assert (=> b!293901 m!307491))

(assert (=> b!293901 m!307491))

(declare-fun m!307499 () Bool)

(assert (=> b!293901 m!307499))

(assert (=> bm!25676 d!66591))

(declare-fun b!293903 () Bool)

(declare-fun e!185832 () SeekEntryResult!2218)

(declare-fun e!185833 () SeekEntryResult!2218)

(assert (=> b!293903 (= e!185832 e!185833)))

(declare-fun c!47238 () Bool)

(declare-fun lt!145735 () (_ BitVec 64))

(assert (=> b!293903 (= c!47238 (or (= lt!145735 k0!2524) (= (bvadd lt!145735 lt!145735) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293904 () Bool)

(declare-fun e!185831 () Bool)

(declare-fun e!185835 () Bool)

(assert (=> b!293904 (= e!185831 e!185835)))

(declare-fun res!154573 () Bool)

(declare-fun lt!145734 () SeekEntryResult!2218)

(assert (=> b!293904 (= res!154573 (and ((_ is Intermediate!2218) lt!145734) (not (undefined!3030 lt!145734)) (bvslt (x!29197 lt!145734) #b01111111111111111111111111111110) (bvsge (x!29197 lt!145734) #b00000000000000000000000000000000) (bvsge (x!29197 lt!145734) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!293904 (=> (not res!154573) (not e!185835))))

(declare-fun b!293905 () Bool)

(assert (=> b!293905 (= e!185831 (bvsge (x!29197 lt!145734) #b01111111111111111111111111111110))))

(declare-fun b!293906 () Bool)

(assert (=> b!293906 (and (bvsge (index!11044 lt!145734) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145734) (size!7410 a!3312)))))

(declare-fun res!154574 () Bool)

(assert (=> b!293906 (= res!154574 (= (select (arr!7058 a!3312) (index!11044 lt!145734)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185834 () Bool)

(assert (=> b!293906 (=> res!154574 e!185834)))

(declare-fun b!293907 () Bool)

(assert (=> b!293907 (= e!185833 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!293909 () Bool)

(assert (=> b!293909 (= e!185833 (Intermediate!2218 false (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!293910 () Bool)

(assert (=> b!293910 (= e!185832 (Intermediate!2218 true (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!293911 () Bool)

(assert (=> b!293911 (and (bvsge (index!11044 lt!145734) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145734) (size!7410 a!3312)))))

(assert (=> b!293911 (= e!185834 (= (select (arr!7058 a!3312) (index!11044 lt!145734)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293908 () Bool)

(assert (=> b!293908 (and (bvsge (index!11044 lt!145734) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145734) (size!7410 a!3312)))))

(declare-fun res!154572 () Bool)

(assert (=> b!293908 (= res!154572 (= (select (arr!7058 a!3312) (index!11044 lt!145734)) k0!2524))))

(assert (=> b!293908 (=> res!154572 e!185834)))

(assert (=> b!293908 (= e!185835 e!185834)))

(declare-fun d!66593 () Bool)

(assert (=> d!66593 e!185831))

(declare-fun c!47236 () Bool)

(assert (=> d!66593 (= c!47236 (and ((_ is Intermediate!2218) lt!145734) (undefined!3030 lt!145734)))))

(assert (=> d!66593 (= lt!145734 e!185832)))

(declare-fun c!47237 () Bool)

(assert (=> d!66593 (= c!47237 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!66593 (= lt!145735 (select (arr!7058 a!3312) (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809)))))

(assert (=> d!66593 (validMask!0 mask!3809)))

(assert (=> d!66593 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809) lt!145734)))

(assert (= (and d!66593 c!47237) b!293910))

(assert (= (and d!66593 (not c!47237)) b!293903))

(assert (= (and b!293903 c!47238) b!293909))

(assert (= (and b!293903 (not c!47238)) b!293907))

(assert (= (and d!66593 c!47236) b!293905))

(assert (= (and d!66593 (not c!47236)) b!293904))

(assert (= (and b!293904 res!154573) b!293908))

(assert (= (and b!293908 (not res!154572)) b!293906))

(assert (= (and b!293906 (not res!154574)) b!293911))

(declare-fun m!307501 () Bool)

(assert (=> b!293908 m!307501))

(assert (=> b!293907 m!307435))

(declare-fun m!307503 () Bool)

(assert (=> b!293907 m!307503))

(assert (=> b!293907 m!307503))

(declare-fun m!307505 () Bool)

(assert (=> b!293907 m!307505))

(assert (=> d!66593 m!307435))

(declare-fun m!307507 () Bool)

(assert (=> d!66593 m!307507))

(assert (=> d!66593 m!307343))

(assert (=> b!293911 m!307501))

(assert (=> b!293906 m!307501))

(assert (=> b!293846 d!66593))

(declare-fun d!66595 () Bool)

(declare-fun lt!145738 () (_ BitVec 32))

(assert (=> d!66595 (and (bvsge lt!145738 #b00000000000000000000000000000000) (bvslt lt!145738 (bvadd mask!3809 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!66595 (= lt!145738 (choose!52 lt!145619 #b00000000000000000000000000000000 mask!3809))))

(assert (=> d!66595 (validMask!0 mask!3809)))

(assert (=> d!66595 (= (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) lt!145738)))

(declare-fun bs!10444 () Bool)

(assert (= bs!10444 d!66595))

(declare-fun m!307509 () Bool)

(assert (=> bs!10444 m!307509))

(assert (=> bs!10444 m!307343))

(assert (=> b!293846 d!66595))

(declare-fun d!66597 () Bool)

(declare-fun res!154575 () Bool)

(declare-fun e!185836 () Bool)

(assert (=> d!66597 (=> res!154575 e!185836)))

(assert (=> d!66597 (= res!154575 (= (select (arr!7058 a!3312) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!2524))))

(assert (=> d!66597 (= (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!185836)))

(declare-fun b!293912 () Bool)

(declare-fun e!185837 () Bool)

(assert (=> b!293912 (= e!185836 e!185837)))

(declare-fun res!154576 () Bool)

(assert (=> b!293912 (=> (not res!154576) (not e!185837))))

(assert (=> b!293912 (= res!154576 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!7410 a!3312)))))

(declare-fun b!293913 () Bool)

(assert (=> b!293913 (= e!185837 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!66597 (not res!154575)) b!293912))

(assert (= (and b!293912 res!154576) b!293913))

(assert (=> d!66597 m!307491))

(declare-fun m!307511 () Bool)

(assert (=> b!293913 m!307511))

(assert (=> b!293736 d!66597))

(declare-fun lt!145744 () SeekEntryResult!2218)

(declare-fun d!66599 () Bool)

(assert (=> d!66599 (and (or ((_ is Undefined!2218) lt!145744) (not ((_ is Found!2218) lt!145744)) (and (bvsge (index!11043 lt!145744) #b00000000000000000000000000000000) (bvslt (index!11043 lt!145744) (size!7410 a!3312)))) (or ((_ is Undefined!2218) lt!145744) ((_ is Found!2218) lt!145744) (not ((_ is MissingVacant!2218) lt!145744)) (not (= (index!11045 lt!145744) (index!11044 lt!145651))) (and (bvsge (index!11045 lt!145744) #b00000000000000000000000000000000) (bvslt (index!11045 lt!145744) (size!7410 a!3312)))) (or ((_ is Undefined!2218) lt!145744) (ite ((_ is Found!2218) lt!145744) (= (select (arr!7058 a!3312) (index!11043 lt!145744)) k0!2524) (and ((_ is MissingVacant!2218) lt!145744) (= (index!11045 lt!145744) (index!11044 lt!145651)) (= (select (arr!7058 a!3312) (index!11045 lt!145744)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!185844 () SeekEntryResult!2218)

(assert (=> d!66599 (= lt!145744 e!185844)))

(declare-fun c!47246 () Bool)

(assert (=> d!66599 (= c!47246 (bvsge (x!29197 lt!145651) #b01111111111111111111111111111110))))

(declare-fun lt!145743 () (_ BitVec 64))

(assert (=> d!66599 (= lt!145743 (select (arr!7058 a!3312) (index!11044 lt!145651)))))

(assert (=> d!66599 (validMask!0 mask!3809)))

(assert (=> d!66599 (= (seekKeyOrZeroReturnVacant!0 (x!29197 lt!145651) (index!11044 lt!145651) (index!11044 lt!145651) k0!2524 a!3312 mask!3809) lt!145744)))

(declare-fun e!185845 () SeekEntryResult!2218)

(declare-fun b!293926 () Bool)

(assert (=> b!293926 (= e!185845 (seekKeyOrZeroReturnVacant!0 (bvadd (x!29197 lt!145651) #b00000000000000000000000000000001) (nextIndex!0 (index!11044 lt!145651) (x!29197 lt!145651) mask!3809) (index!11044 lt!145651) k0!2524 a!3312 mask!3809))))

(declare-fun b!293927 () Bool)

(assert (=> b!293927 (= e!185844 Undefined!2218)))

(declare-fun b!293928 () Bool)

(declare-fun c!47245 () Bool)

(assert (=> b!293928 (= c!47245 (= lt!145743 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185846 () SeekEntryResult!2218)

(assert (=> b!293928 (= e!185846 e!185845)))

(declare-fun b!293929 () Bool)

(assert (=> b!293929 (= e!185846 (Found!2218 (index!11044 lt!145651)))))

(declare-fun b!293930 () Bool)

(assert (=> b!293930 (= e!185845 (MissingVacant!2218 (index!11044 lt!145651)))))

(declare-fun b!293931 () Bool)

(assert (=> b!293931 (= e!185844 e!185846)))

(declare-fun c!47247 () Bool)

(assert (=> b!293931 (= c!47247 (= lt!145743 k0!2524))))

(assert (= (and d!66599 c!47246) b!293927))

(assert (= (and d!66599 (not c!47246)) b!293931))

(assert (= (and b!293931 c!47247) b!293929))

(assert (= (and b!293931 (not c!47247)) b!293928))

(assert (= (and b!293928 c!47245) b!293930))

(assert (= (and b!293928 (not c!47245)) b!293926))

(declare-fun m!307513 () Bool)

(assert (=> d!66599 m!307513))

(declare-fun m!307515 () Bool)

(assert (=> d!66599 m!307515))

(assert (=> d!66599 m!307381))

(assert (=> d!66599 m!307343))

(declare-fun m!307517 () Bool)

(assert (=> b!293926 m!307517))

(assert (=> b!293926 m!307517))

(declare-fun m!307519 () Bool)

(assert (=> b!293926 m!307519))

(assert (=> b!293712 d!66599))

(declare-fun b!293932 () Bool)

(declare-fun e!185848 () SeekEntryResult!2218)

(declare-fun e!185849 () SeekEntryResult!2218)

(assert (=> b!293932 (= e!185848 e!185849)))

(declare-fun c!47250 () Bool)

(declare-fun lt!145746 () (_ BitVec 64))

(assert (=> b!293932 (= c!47250 (or (= lt!145746 k0!2524) (= (bvadd lt!145746 lt!145746) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293933 () Bool)

(declare-fun e!185847 () Bool)

(declare-fun e!185851 () Bool)

(assert (=> b!293933 (= e!185847 e!185851)))

(declare-fun res!154578 () Bool)

(declare-fun lt!145745 () SeekEntryResult!2218)

(assert (=> b!293933 (= res!154578 (and ((_ is Intermediate!2218) lt!145745) (not (undefined!3030 lt!145745)) (bvslt (x!29197 lt!145745) #b01111111111111111111111111111110) (bvsge (x!29197 lt!145745) #b00000000000000000000000000000000) (bvsge (x!29197 lt!145745) #b00000000000000000000000000000000)))))

(assert (=> b!293933 (=> (not res!154578) (not e!185851))))

(declare-fun b!293934 () Bool)

(assert (=> b!293934 (= e!185847 (bvsge (x!29197 lt!145745) #b01111111111111111111111111111110))))

(declare-fun b!293935 () Bool)

(assert (=> b!293935 (and (bvsge (index!11044 lt!145745) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145745) (size!7410 a!3312)))))

(declare-fun res!154579 () Bool)

(assert (=> b!293935 (= res!154579 (= (select (arr!7058 a!3312) (index!11044 lt!145745)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185850 () Bool)

(assert (=> b!293935 (=> res!154579 e!185850)))

(declare-fun b!293936 () Bool)

(assert (=> b!293936 (= e!185849 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2524 mask!3809) #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!293938 () Bool)

(assert (=> b!293938 (= e!185849 (Intermediate!2218 false (toIndex!0 k0!2524 mask!3809) #b00000000000000000000000000000000))))

(declare-fun b!293939 () Bool)

(assert (=> b!293939 (= e!185848 (Intermediate!2218 true (toIndex!0 k0!2524 mask!3809) #b00000000000000000000000000000000))))

(declare-fun b!293940 () Bool)

(assert (=> b!293940 (and (bvsge (index!11044 lt!145745) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145745) (size!7410 a!3312)))))

(assert (=> b!293940 (= e!185850 (= (select (arr!7058 a!3312) (index!11044 lt!145745)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293937 () Bool)

(assert (=> b!293937 (and (bvsge (index!11044 lt!145745) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145745) (size!7410 a!3312)))))

(declare-fun res!154577 () Bool)

(assert (=> b!293937 (= res!154577 (= (select (arr!7058 a!3312) (index!11044 lt!145745)) k0!2524))))

(assert (=> b!293937 (=> res!154577 e!185850)))

(assert (=> b!293937 (= e!185851 e!185850)))

(declare-fun d!66601 () Bool)

(assert (=> d!66601 e!185847))

(declare-fun c!47248 () Bool)

(assert (=> d!66601 (= c!47248 (and ((_ is Intermediate!2218) lt!145745) (undefined!3030 lt!145745)))))

(assert (=> d!66601 (= lt!145745 e!185848)))

(declare-fun c!47249 () Bool)

(assert (=> d!66601 (= c!47249 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66601 (= lt!145746 (select (arr!7058 a!3312) (toIndex!0 k0!2524 mask!3809)))))

(assert (=> d!66601 (validMask!0 mask!3809)))

(assert (=> d!66601 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809) lt!145745)))

(assert (= (and d!66601 c!47249) b!293939))

(assert (= (and d!66601 (not c!47249)) b!293932))

(assert (= (and b!293932 c!47250) b!293938))

(assert (= (and b!293932 (not c!47250)) b!293936))

(assert (= (and d!66601 c!47248) b!293934))

(assert (= (and d!66601 (not c!47248)) b!293933))

(assert (= (and b!293933 res!154578) b!293937))

(assert (= (and b!293937 (not res!154577)) b!293935))

(assert (= (and b!293935 (not res!154579)) b!293940))

(declare-fun m!307521 () Bool)

(assert (=> b!293937 m!307521))

(assert (=> b!293936 m!307337))

(declare-fun m!307523 () Bool)

(assert (=> b!293936 m!307523))

(assert (=> b!293936 m!307523))

(declare-fun m!307525 () Bool)

(assert (=> b!293936 m!307525))

(assert (=> d!66601 m!307337))

(declare-fun m!307527 () Bool)

(assert (=> d!66601 m!307527))

(assert (=> d!66601 m!307343))

(assert (=> b!293940 m!307521))

(assert (=> b!293935 m!307521))

(assert (=> d!66539 d!66601))

(assert (=> d!66539 d!66579))

(assert (=> d!66539 d!66549))

(declare-fun d!66603 () Bool)

(assert (=> d!66603 (arrayContainsKey!0 a!3312 lt!145643 #b00000000000000000000000000000000)))

(declare-fun lt!145749 () Unit!9181)

(declare-fun choose!13 (array!14878 (_ BitVec 64) (_ BitVec 32)) Unit!9181)

(assert (=> d!66603 (= lt!145749 (choose!13 a!3312 lt!145643 #b00000000000000000000000000000000))))

(assert (=> d!66603 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!66603 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145643 #b00000000000000000000000000000000) lt!145749)))

(declare-fun bs!10445 () Bool)

(assert (= bs!10445 d!66603))

(assert (=> bs!10445 m!307375))

(declare-fun m!307529 () Bool)

(assert (=> bs!10445 m!307529))

(assert (=> b!293692 d!66603))

(declare-fun d!66605 () Bool)

(declare-fun res!154580 () Bool)

(declare-fun e!185852 () Bool)

(assert (=> d!66605 (=> res!154580 e!185852)))

(assert (=> d!66605 (= res!154580 (= (select (arr!7058 a!3312) #b00000000000000000000000000000000) lt!145643))))

(assert (=> d!66605 (= (arrayContainsKey!0 a!3312 lt!145643 #b00000000000000000000000000000000) e!185852)))

(declare-fun b!293941 () Bool)

(declare-fun e!185853 () Bool)

(assert (=> b!293941 (= e!185852 e!185853)))

(declare-fun res!154581 () Bool)

(assert (=> b!293941 (=> (not res!154581) (not e!185853))))

(assert (=> b!293941 (= res!154581 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7410 a!3312)))))

(declare-fun b!293942 () Bool)

(assert (=> b!293942 (= e!185853 (arrayContainsKey!0 a!3312 lt!145643 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66605 (not res!154580)) b!293941))

(assert (= (and b!293941 res!154581) b!293942))

(assert (=> d!66605 m!307371))

(declare-fun m!307531 () Bool)

(assert (=> b!293942 m!307531))

(assert (=> b!293692 d!66605))

(declare-fun b!293943 () Bool)

(declare-fun e!185856 () SeekEntryResult!2218)

(assert (=> b!293943 (= e!185856 Undefined!2218)))

(declare-fun b!293944 () Bool)

(declare-fun e!185854 () SeekEntryResult!2218)

(declare-fun lt!145751 () SeekEntryResult!2218)

(assert (=> b!293944 (= e!185854 (MissingZero!2218 (index!11044 lt!145751)))))

(declare-fun b!293945 () Bool)

(declare-fun e!185855 () SeekEntryResult!2218)

(assert (=> b!293945 (= e!185856 e!185855)))

(declare-fun lt!145750 () (_ BitVec 64))

(assert (=> b!293945 (= lt!145750 (select (arr!7058 a!3312) (index!11044 lt!145751)))))

(declare-fun c!47251 () Bool)

(assert (=> b!293945 (= c!47251 (= lt!145750 (select (arr!7058 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!66607 () Bool)

(declare-fun lt!145752 () SeekEntryResult!2218)

(assert (=> d!66607 (and (or ((_ is Undefined!2218) lt!145752) (not ((_ is Found!2218) lt!145752)) (and (bvsge (index!11043 lt!145752) #b00000000000000000000000000000000) (bvslt (index!11043 lt!145752) (size!7410 a!3312)))) (or ((_ is Undefined!2218) lt!145752) ((_ is Found!2218) lt!145752) (not ((_ is MissingZero!2218) lt!145752)) (and (bvsge (index!11042 lt!145752) #b00000000000000000000000000000000) (bvslt (index!11042 lt!145752) (size!7410 a!3312)))) (or ((_ is Undefined!2218) lt!145752) ((_ is Found!2218) lt!145752) ((_ is MissingZero!2218) lt!145752) (not ((_ is MissingVacant!2218) lt!145752)) (and (bvsge (index!11045 lt!145752) #b00000000000000000000000000000000) (bvslt (index!11045 lt!145752) (size!7410 a!3312)))) (or ((_ is Undefined!2218) lt!145752) (ite ((_ is Found!2218) lt!145752) (= (select (arr!7058 a!3312) (index!11043 lt!145752)) (select (arr!7058 a!3312) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!2218) lt!145752) (= (select (arr!7058 a!3312) (index!11042 lt!145752)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2218) lt!145752) (= (select (arr!7058 a!3312) (index!11045 lt!145752)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66607 (= lt!145752 e!185856)))

(declare-fun c!47253 () Bool)

(assert (=> d!66607 (= c!47253 (and ((_ is Intermediate!2218) lt!145751) (undefined!3030 lt!145751)))))

(assert (=> d!66607 (= lt!145751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!7058 a!3312) #b00000000000000000000000000000000) mask!3809) (select (arr!7058 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809))))

(assert (=> d!66607 (validMask!0 mask!3809)))

(assert (=> d!66607 (= (seekEntryOrOpen!0 (select (arr!7058 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) lt!145752)))

(declare-fun b!293946 () Bool)

(declare-fun c!47252 () Bool)

(assert (=> b!293946 (= c!47252 (= lt!145750 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293946 (= e!185855 e!185854)))

(declare-fun b!293947 () Bool)

(assert (=> b!293947 (= e!185855 (Found!2218 (index!11044 lt!145751)))))

(declare-fun b!293948 () Bool)

(assert (=> b!293948 (= e!185854 (seekKeyOrZeroReturnVacant!0 (x!29197 lt!145751) (index!11044 lt!145751) (index!11044 lt!145751) (select (arr!7058 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809))))

(assert (= (and d!66607 c!47253) b!293943))

(assert (= (and d!66607 (not c!47253)) b!293945))

(assert (= (and b!293945 c!47251) b!293947))

(assert (= (and b!293945 (not c!47251)) b!293946))

(assert (= (and b!293946 c!47252) b!293944))

(assert (= (and b!293946 (not c!47252)) b!293948))

(declare-fun m!307533 () Bool)

(assert (=> b!293945 m!307533))

(declare-fun m!307535 () Bool)

(assert (=> d!66607 m!307535))

(assert (=> d!66607 m!307371))

(declare-fun m!307537 () Bool)

(assert (=> d!66607 m!307537))

(assert (=> d!66607 m!307537))

(assert (=> d!66607 m!307371))

(declare-fun m!307539 () Bool)

(assert (=> d!66607 m!307539))

(declare-fun m!307541 () Bool)

(assert (=> d!66607 m!307541))

(declare-fun m!307543 () Bool)

(assert (=> d!66607 m!307543))

(assert (=> d!66607 m!307343))

(assert (=> b!293948 m!307371))

(declare-fun m!307545 () Bool)

(assert (=> b!293948 m!307545))

(assert (=> b!293692 d!66607))

(assert (=> d!66575 d!66549))

(declare-fun d!66609 () Bool)

(assert (=> d!66609 (= (validKeyInArray!0 (select (arr!7058 a!3312) #b00000000000000000000000000000000)) (and (not (= (select (arr!7058 a!3312) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7058 a!3312) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293693 d!66609))

(declare-fun b!293949 () Bool)

(declare-fun e!185858 () SeekEntryResult!2218)

(declare-fun e!185859 () SeekEntryResult!2218)

(assert (=> b!293949 (= e!185858 e!185859)))

(declare-fun c!47256 () Bool)

(declare-fun lt!145754 () (_ BitVec 64))

(assert (=> b!293949 (= c!47256 (or (= lt!145754 k0!2524) (= (bvadd lt!145754 lt!145754) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293950 () Bool)

(declare-fun e!185857 () Bool)

(declare-fun e!185861 () Bool)

(assert (=> b!293950 (= e!185857 e!185861)))

(declare-fun res!154583 () Bool)

(declare-fun lt!145753 () SeekEntryResult!2218)

(assert (=> b!293950 (= res!154583 (and ((_ is Intermediate!2218) lt!145753) (not (undefined!3030 lt!145753)) (bvslt (x!29197 lt!145753) #b01111111111111111111111111111110) (bvsge (x!29197 lt!145753) #b00000000000000000000000000000000) (bvsge (x!29197 lt!145753) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!293950 (=> (not res!154583) (not e!185861))))

(declare-fun b!293951 () Bool)

(assert (=> b!293951 (= e!185857 (bvsge (x!29197 lt!145753) #b01111111111111111111111111111110))))

(declare-fun b!293952 () Bool)

(assert (=> b!293952 (and (bvsge (index!11044 lt!145753) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145753) (size!7410 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)))))))

(declare-fun res!154584 () Bool)

(assert (=> b!293952 (= res!154584 (= (select (arr!7058 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312))) (index!11044 lt!145753)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185860 () Bool)

(assert (=> b!293952 (=> res!154584 e!185860)))

(declare-fun b!293953 () Bool)

(assert (=> b!293953 (= e!185859 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3809) k0!2524 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)) mask!3809))))

(declare-fun b!293955 () Bool)

(assert (=> b!293955 (= e!185859 (Intermediate!2218 false (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!293956 () Bool)

(assert (=> b!293956 (= e!185858 (Intermediate!2218 true (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!293957 () Bool)

(assert (=> b!293957 (and (bvsge (index!11044 lt!145753) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145753) (size!7410 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)))))))

(assert (=> b!293957 (= e!185860 (= (select (arr!7058 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312))) (index!11044 lt!145753)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!293954 () Bool)

(assert (=> b!293954 (and (bvsge (index!11044 lt!145753) #b00000000000000000000000000000000) (bvslt (index!11044 lt!145753) (size!7410 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)))))))

(declare-fun res!154582 () Bool)

(assert (=> b!293954 (= res!154582 (= (select (arr!7058 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312))) (index!11044 lt!145753)) k0!2524))))

(assert (=> b!293954 (=> res!154582 e!185860)))

(assert (=> b!293954 (= e!185861 e!185860)))

(declare-fun d!66611 () Bool)

(assert (=> d!66611 e!185857))

(declare-fun c!47254 () Bool)

(assert (=> d!66611 (= c!47254 (and ((_ is Intermediate!2218) lt!145753) (undefined!3030 lt!145753)))))

(assert (=> d!66611 (= lt!145753 e!185858)))

(declare-fun c!47255 () Bool)

(assert (=> d!66611 (= c!47255 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(assert (=> d!66611 (= lt!145754 (select (arr!7058 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312))) (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809)))))

(assert (=> d!66611 (validMask!0 mask!3809)))

(assert (=> d!66611 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145619 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14879 (store (arr!7058 a!3312) i!1256 k0!2524) (size!7410 a!3312)) mask!3809) lt!145753)))

(assert (= (and d!66611 c!47255) b!293956))

(assert (= (and d!66611 (not c!47255)) b!293949))

(assert (= (and b!293949 c!47256) b!293955))

(assert (= (and b!293949 (not c!47256)) b!293953))

(assert (= (and d!66611 c!47254) b!293951))

(assert (= (and d!66611 (not c!47254)) b!293950))

(assert (= (and b!293950 res!154583) b!293954))

(assert (= (and b!293954 (not res!154582)) b!293952))

(assert (= (and b!293952 (not res!154584)) b!293957))

(declare-fun m!307547 () Bool)

(assert (=> b!293954 m!307547))

(assert (=> b!293953 m!307435))

(assert (=> b!293953 m!307503))

(assert (=> b!293953 m!307503))

(declare-fun m!307549 () Bool)

(assert (=> b!293953 m!307549))

(assert (=> d!66611 m!307435))

(declare-fun m!307551 () Bool)

(assert (=> d!66611 m!307551))

(assert (=> d!66611 m!307343))

(assert (=> b!293957 m!307547))

(assert (=> b!293952 m!307547))

(assert (=> b!293826 d!66611))

(assert (=> b!293826 d!66595))

(check-sat (not b!293936) (not b!293953) (not b!293901) (not d!66601) (not bm!25683) (not b!293926) (not b!293913) (not d!66593) (not b!293942) (not d!66607) (not d!66599) (not d!66595) (not d!66603) (not b!293907) (not d!66611) (not b!293900) (not b!293948))
(check-sat)
