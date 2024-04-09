; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29900 () Bool)

(assert start!29900)

(declare-fun b!300442 () Bool)

(declare-fun e!189714 () Bool)

(declare-fun e!189715 () Bool)

(assert (=> b!300442 (= e!189714 e!189715)))

(declare-fun res!158494 () Bool)

(assert (=> b!300442 (=> (not res!158494) (not e!189715))))

(declare-datatypes ((SeekEntryResult!2344 0))(
  ( (MissingZero!2344 (index!11552 (_ BitVec 32))) (Found!2344 (index!11553 (_ BitVec 32))) (Intermediate!2344 (undefined!3156 Bool) (index!11554 (_ BitVec 32)) (x!29773 (_ BitVec 32))) (Undefined!2344) (MissingVacant!2344 (index!11555 (_ BitVec 32))) )
))
(declare-fun lt!149536 () SeekEntryResult!2344)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!149538 () Bool)

(assert (=> b!300442 (= res!158494 (or lt!149538 (= lt!149536 (MissingVacant!2344 i!1256))))))

(assert (=> b!300442 (= lt!149538 (= lt!149536 (MissingZero!2344 i!1256)))))

(declare-datatypes ((array!15181 0))(
  ( (array!15182 (arr!7184 (Array (_ BitVec 32) (_ BitVec 64))) (size!7536 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15181)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15181 (_ BitVec 32)) SeekEntryResult!2344)

(assert (=> b!300442 (= lt!149536 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!300443 () Bool)

(declare-fun res!158496 () Bool)

(assert (=> b!300443 (=> (not res!158496) (not e!189714))))

(assert (=> b!300443 (= res!158496 (and (= (size!7536 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7536 a!3312))))))

(declare-fun res!158492 () Bool)

(assert (=> start!29900 (=> (not res!158492) (not e!189714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29900 (= res!158492 (validMask!0 mask!3809))))

(assert (=> start!29900 e!189714))

(assert (=> start!29900 true))

(declare-fun array_inv!5138 (array!15181) Bool)

(assert (=> start!29900 (array_inv!5138 a!3312)))

(declare-fun b!300444 () Bool)

(declare-fun lt!149537 () SeekEntryResult!2344)

(get-info :version)

(assert (=> b!300444 (= e!189715 (and (not lt!149538) (= lt!149536 (MissingVacant!2344 i!1256)) (not ((_ is Intermediate!2344) lt!149537))))))

(declare-fun lt!149540 () SeekEntryResult!2344)

(declare-fun lt!149539 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15181 (_ BitVec 32)) SeekEntryResult!2344)

(assert (=> b!300444 (= lt!149540 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149539 k0!2524 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312)) mask!3809))))

(assert (=> b!300444 (= lt!149537 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149539 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300444 (= lt!149539 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!300445 () Bool)

(declare-fun res!158495 () Bool)

(assert (=> b!300445 (=> (not res!158495) (not e!189715))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15181 (_ BitVec 32)) Bool)

(assert (=> b!300445 (= res!158495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!300446 () Bool)

(declare-fun res!158491 () Bool)

(assert (=> b!300446 (=> (not res!158491) (not e!189714))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!300446 (= res!158491 (validKeyInArray!0 k0!2524))))

(declare-fun b!300447 () Bool)

(declare-fun res!158493 () Bool)

(assert (=> b!300447 (=> (not res!158493) (not e!189714))))

(declare-fun arrayContainsKey!0 (array!15181 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!300447 (= res!158493 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29900 res!158492) b!300443))

(assert (= (and b!300443 res!158496) b!300446))

(assert (= (and b!300446 res!158491) b!300447))

(assert (= (and b!300447 res!158493) b!300442))

(assert (= (and b!300442 res!158494) b!300445))

(assert (= (and b!300445 res!158495) b!300444))

(declare-fun m!312459 () Bool)

(assert (=> b!300447 m!312459))

(declare-fun m!312461 () Bool)

(assert (=> b!300444 m!312461))

(declare-fun m!312463 () Bool)

(assert (=> b!300444 m!312463))

(declare-fun m!312465 () Bool)

(assert (=> b!300444 m!312465))

(declare-fun m!312467 () Bool)

(assert (=> b!300444 m!312467))

(declare-fun m!312469 () Bool)

(assert (=> start!29900 m!312469))

(declare-fun m!312471 () Bool)

(assert (=> start!29900 m!312471))

(declare-fun m!312473 () Bool)

(assert (=> b!300445 m!312473))

(declare-fun m!312475 () Bool)

(assert (=> b!300446 m!312475))

(declare-fun m!312477 () Bool)

(assert (=> b!300442 m!312477))

(check-sat (not start!29900) (not b!300444) (not b!300447) (not b!300446) (not b!300445) (not b!300442))
(check-sat)
(get-model)

(declare-fun d!67631 () Bool)

(assert (=> d!67631 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!300446 d!67631))

(declare-fun d!67633 () Bool)

(assert (=> d!67633 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29900 d!67633))

(declare-fun d!67641 () Bool)

(assert (=> d!67641 (= (array_inv!5138 a!3312) (bvsge (size!7536 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29900 d!67641))

(declare-fun bm!25853 () Bool)

(declare-fun call!25856 () Bool)

(assert (=> bm!25853 (= call!25856 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!300496 () Bool)

(declare-fun e!189746 () Bool)

(assert (=> b!300496 (= e!189746 call!25856)))

(declare-fun b!300497 () Bool)

(declare-fun e!189747 () Bool)

(assert (=> b!300497 (= e!189746 e!189747)))

(declare-fun lt!149577 () (_ BitVec 64))

(assert (=> b!300497 (= lt!149577 (select (arr!7184 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9356 0))(
  ( (Unit!9357) )
))
(declare-fun lt!149576 () Unit!9356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15181 (_ BitVec 64) (_ BitVec 32)) Unit!9356)

(assert (=> b!300497 (= lt!149576 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149577 #b00000000000000000000000000000000))))

(assert (=> b!300497 (arrayContainsKey!0 a!3312 lt!149577 #b00000000000000000000000000000000)))

(declare-fun lt!149575 () Unit!9356)

(assert (=> b!300497 (= lt!149575 lt!149576)))

(declare-fun res!158531 () Bool)

(assert (=> b!300497 (= res!158531 (= (seekEntryOrOpen!0 (select (arr!7184 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2344 #b00000000000000000000000000000000)))))

(assert (=> b!300497 (=> (not res!158531) (not e!189747))))

(declare-fun b!300498 () Bool)

(assert (=> b!300498 (= e!189747 call!25856)))

(declare-fun b!300499 () Bool)

(declare-fun e!189748 () Bool)

(assert (=> b!300499 (= e!189748 e!189746)))

(declare-fun c!48575 () Bool)

(assert (=> b!300499 (= c!48575 (validKeyInArray!0 (select (arr!7184 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!67645 () Bool)

(declare-fun res!158532 () Bool)

(assert (=> d!67645 (=> res!158532 e!189748)))

(assert (=> d!67645 (= res!158532 (bvsge #b00000000000000000000000000000000 (size!7536 a!3312)))))

(assert (=> d!67645 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189748)))

(assert (= (and d!67645 (not res!158532)) b!300499))

(assert (= (and b!300499 c!48575) b!300497))

(assert (= (and b!300499 (not c!48575)) b!300496))

(assert (= (and b!300497 res!158531) b!300498))

(assert (= (or b!300498 b!300496) bm!25853))

(declare-fun m!312505 () Bool)

(assert (=> bm!25853 m!312505))

(declare-fun m!312511 () Bool)

(assert (=> b!300497 m!312511))

(declare-fun m!312513 () Bool)

(assert (=> b!300497 m!312513))

(declare-fun m!312517 () Bool)

(assert (=> b!300497 m!312517))

(assert (=> b!300497 m!312511))

(declare-fun m!312519 () Bool)

(assert (=> b!300497 m!312519))

(assert (=> b!300499 m!312511))

(assert (=> b!300499 m!312511))

(declare-fun m!312523 () Bool)

(assert (=> b!300499 m!312523))

(assert (=> b!300445 d!67645))

(declare-fun b!300556 () Bool)

(declare-fun e!189785 () Bool)

(declare-fun e!189787 () Bool)

(assert (=> b!300556 (= e!189785 e!189787)))

(declare-fun res!158560 () Bool)

(declare-fun lt!149592 () SeekEntryResult!2344)

(assert (=> b!300556 (= res!158560 (and ((_ is Intermediate!2344) lt!149592) (not (undefined!3156 lt!149592)) (bvslt (x!29773 lt!149592) #b01111111111111111111111111111110) (bvsge (x!29773 lt!149592) #b00000000000000000000000000000000) (bvsge (x!29773 lt!149592) #b00000000000000000000000000000000)))))

(assert (=> b!300556 (=> (not res!158560) (not e!189787))))

(declare-fun b!300558 () Bool)

(assert (=> b!300558 (= e!189785 (bvsge (x!29773 lt!149592) #b01111111111111111111111111111110))))

(declare-fun b!300559 () Bool)

(declare-fun e!189786 () SeekEntryResult!2344)

(assert (=> b!300559 (= e!189786 (Intermediate!2344 false lt!149539 #b00000000000000000000000000000000))))

(declare-fun b!300560 () Bool)

(declare-fun e!189788 () SeekEntryResult!2344)

(assert (=> b!300560 (= e!189788 e!189786)))

(declare-fun c!48595 () Bool)

(declare-fun lt!149593 () (_ BitVec 64))

(assert (=> b!300560 (= c!48595 (or (= lt!149593 k0!2524) (= (bvadd lt!149593 lt!149593) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!300557 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!300557 (= e!189786 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149539 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312)) mask!3809))))

(declare-fun d!67649 () Bool)

(assert (=> d!67649 e!189785))

(declare-fun c!48596 () Bool)

(assert (=> d!67649 (= c!48596 (and ((_ is Intermediate!2344) lt!149592) (undefined!3156 lt!149592)))))

(assert (=> d!67649 (= lt!149592 e!189788)))

(declare-fun c!48594 () Bool)

(assert (=> d!67649 (= c!48594 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67649 (= lt!149593 (select (arr!7184 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312))) lt!149539))))

(assert (=> d!67649 (validMask!0 mask!3809)))

(assert (=> d!67649 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149539 k0!2524 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312)) mask!3809) lt!149592)))

(declare-fun b!300561 () Bool)

(assert (=> b!300561 (and (bvsge (index!11554 lt!149592) #b00000000000000000000000000000000) (bvslt (index!11554 lt!149592) (size!7536 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312)))))))

(declare-fun e!189789 () Bool)

(assert (=> b!300561 (= e!189789 (= (select (arr!7184 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312))) (index!11554 lt!149592)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!300562 () Bool)

(assert (=> b!300562 (and (bvsge (index!11554 lt!149592) #b00000000000000000000000000000000) (bvslt (index!11554 lt!149592) (size!7536 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312)))))))

(declare-fun res!158558 () Bool)

(assert (=> b!300562 (= res!158558 (= (select (arr!7184 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312))) (index!11554 lt!149592)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!300562 (=> res!158558 e!189789)))

(declare-fun b!300563 () Bool)

(assert (=> b!300563 (= e!189788 (Intermediate!2344 true lt!149539 #b00000000000000000000000000000000))))

(declare-fun b!300564 () Bool)

(assert (=> b!300564 (and (bvsge (index!11554 lt!149592) #b00000000000000000000000000000000) (bvslt (index!11554 lt!149592) (size!7536 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312)))))))

(declare-fun res!158559 () Bool)

(assert (=> b!300564 (= res!158559 (= (select (arr!7184 (array!15182 (store (arr!7184 a!3312) i!1256 k0!2524) (size!7536 a!3312))) (index!11554 lt!149592)) k0!2524))))

(assert (=> b!300564 (=> res!158559 e!189789)))

(assert (=> b!300564 (= e!189787 e!189789)))

(assert (= (and d!67649 c!48594) b!300563))

(assert (= (and d!67649 (not c!48594)) b!300560))

(assert (= (and b!300560 c!48595) b!300559))

(assert (= (and b!300560 (not c!48595)) b!300557))

(assert (= (and d!67649 c!48596) b!300558))

(assert (= (and d!67649 (not c!48596)) b!300556))

(assert (= (and b!300556 res!158560) b!300564))

(assert (= (and b!300564 (not res!158559)) b!300562))

(assert (= (and b!300562 (not res!158558)) b!300561))

(declare-fun m!312543 () Bool)

(assert (=> b!300557 m!312543))

(assert (=> b!300557 m!312543))

(declare-fun m!312545 () Bool)

(assert (=> b!300557 m!312545))

(declare-fun m!312547 () Bool)

(assert (=> b!300564 m!312547))

(declare-fun m!312549 () Bool)

(assert (=> d!67649 m!312549))

(assert (=> d!67649 m!312469))

(assert (=> b!300561 m!312547))

(assert (=> b!300562 m!312547))

(assert (=> b!300444 d!67649))

(declare-fun b!300565 () Bool)

(declare-fun e!189790 () Bool)

(declare-fun e!189792 () Bool)

(assert (=> b!300565 (= e!189790 e!189792)))

(declare-fun res!158563 () Bool)

(declare-fun lt!149594 () SeekEntryResult!2344)

(assert (=> b!300565 (= res!158563 (and ((_ is Intermediate!2344) lt!149594) (not (undefined!3156 lt!149594)) (bvslt (x!29773 lt!149594) #b01111111111111111111111111111110) (bvsge (x!29773 lt!149594) #b00000000000000000000000000000000) (bvsge (x!29773 lt!149594) #b00000000000000000000000000000000)))))

(assert (=> b!300565 (=> (not res!158563) (not e!189792))))

(declare-fun b!300567 () Bool)

(assert (=> b!300567 (= e!189790 (bvsge (x!29773 lt!149594) #b01111111111111111111111111111110))))

(declare-fun b!300568 () Bool)

(declare-fun e!189791 () SeekEntryResult!2344)

(assert (=> b!300568 (= e!189791 (Intermediate!2344 false lt!149539 #b00000000000000000000000000000000))))

(declare-fun b!300569 () Bool)

(declare-fun e!189793 () SeekEntryResult!2344)

(assert (=> b!300569 (= e!189793 e!189791)))

(declare-fun c!48598 () Bool)

(declare-fun lt!149595 () (_ BitVec 64))

(assert (=> b!300569 (= c!48598 (or (= lt!149595 k0!2524) (= (bvadd lt!149595 lt!149595) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!300566 () Bool)

(assert (=> b!300566 (= e!189791 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149539 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun d!67665 () Bool)

(assert (=> d!67665 e!189790))

(declare-fun c!48599 () Bool)

(assert (=> d!67665 (= c!48599 (and ((_ is Intermediate!2344) lt!149594) (undefined!3156 lt!149594)))))

(assert (=> d!67665 (= lt!149594 e!189793)))

(declare-fun c!48597 () Bool)

(assert (=> d!67665 (= c!48597 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67665 (= lt!149595 (select (arr!7184 a!3312) lt!149539))))

(assert (=> d!67665 (validMask!0 mask!3809)))

(assert (=> d!67665 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149539 k0!2524 a!3312 mask!3809) lt!149594)))

(declare-fun b!300570 () Bool)

(assert (=> b!300570 (and (bvsge (index!11554 lt!149594) #b00000000000000000000000000000000) (bvslt (index!11554 lt!149594) (size!7536 a!3312)))))

(declare-fun e!189794 () Bool)

(assert (=> b!300570 (= e!189794 (= (select (arr!7184 a!3312) (index!11554 lt!149594)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!300571 () Bool)

(assert (=> b!300571 (and (bvsge (index!11554 lt!149594) #b00000000000000000000000000000000) (bvslt (index!11554 lt!149594) (size!7536 a!3312)))))

(declare-fun res!158561 () Bool)

(assert (=> b!300571 (= res!158561 (= (select (arr!7184 a!3312) (index!11554 lt!149594)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!300571 (=> res!158561 e!189794)))

(declare-fun b!300572 () Bool)

(assert (=> b!300572 (= e!189793 (Intermediate!2344 true lt!149539 #b00000000000000000000000000000000))))

(declare-fun b!300573 () Bool)

(assert (=> b!300573 (and (bvsge (index!11554 lt!149594) #b00000000000000000000000000000000) (bvslt (index!11554 lt!149594) (size!7536 a!3312)))))

(declare-fun res!158562 () Bool)

(assert (=> b!300573 (= res!158562 (= (select (arr!7184 a!3312) (index!11554 lt!149594)) k0!2524))))

(assert (=> b!300573 (=> res!158562 e!189794)))

(assert (=> b!300573 (= e!189792 e!189794)))

(assert (= (and d!67665 c!48597) b!300572))

(assert (= (and d!67665 (not c!48597)) b!300569))

(assert (= (and b!300569 c!48598) b!300568))

(assert (= (and b!300569 (not c!48598)) b!300566))

(assert (= (and d!67665 c!48599) b!300567))

(assert (= (and d!67665 (not c!48599)) b!300565))

(assert (= (and b!300565 res!158563) b!300573))

(assert (= (and b!300573 (not res!158562)) b!300571))

(assert (= (and b!300571 (not res!158561)) b!300570))

(assert (=> b!300566 m!312543))

(assert (=> b!300566 m!312543))

(declare-fun m!312551 () Bool)

(assert (=> b!300566 m!312551))

(declare-fun m!312553 () Bool)

(assert (=> b!300573 m!312553))

(declare-fun m!312555 () Bool)

(assert (=> d!67665 m!312555))

(assert (=> d!67665 m!312469))

(assert (=> b!300570 m!312553))

(assert (=> b!300571 m!312553))

(assert (=> b!300444 d!67665))

(declare-fun d!67667 () Bool)

(declare-fun lt!149607 () (_ BitVec 32))

(declare-fun lt!149606 () (_ BitVec 32))

(assert (=> d!67667 (= lt!149607 (bvmul (bvxor lt!149606 (bvlshr lt!149606 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67667 (= lt!149606 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67667 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!158564 (let ((h!5346 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29778 (bvmul (bvxor h!5346 (bvlshr h!5346 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29778 (bvlshr x!29778 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!158564 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!158564 #b00000000000000000000000000000000))))))

(assert (=> d!67667 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!149607 (bvlshr lt!149607 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!300444 d!67667))

(declare-fun b!300638 () Bool)

(declare-fun e!189831 () SeekEntryResult!2344)

(declare-fun lt!149631 () SeekEntryResult!2344)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15181 (_ BitVec 32)) SeekEntryResult!2344)

(assert (=> b!300638 (= e!189831 (seekKeyOrZeroReturnVacant!0 (x!29773 lt!149631) (index!11554 lt!149631) (index!11554 lt!149631) k0!2524 a!3312 mask!3809))))

(declare-fun b!300639 () Bool)

(declare-fun e!189829 () SeekEntryResult!2344)

(declare-fun e!189830 () SeekEntryResult!2344)

(assert (=> b!300639 (= e!189829 e!189830)))

(declare-fun lt!149632 () (_ BitVec 64))

(assert (=> b!300639 (= lt!149632 (select (arr!7184 a!3312) (index!11554 lt!149631)))))

(declare-fun c!48632 () Bool)

(assert (=> b!300639 (= c!48632 (= lt!149632 k0!2524))))

(declare-fun d!67673 () Bool)

(declare-fun lt!149630 () SeekEntryResult!2344)

(assert (=> d!67673 (and (or ((_ is Undefined!2344) lt!149630) (not ((_ is Found!2344) lt!149630)) (and (bvsge (index!11553 lt!149630) #b00000000000000000000000000000000) (bvslt (index!11553 lt!149630) (size!7536 a!3312)))) (or ((_ is Undefined!2344) lt!149630) ((_ is Found!2344) lt!149630) (not ((_ is MissingZero!2344) lt!149630)) (and (bvsge (index!11552 lt!149630) #b00000000000000000000000000000000) (bvslt (index!11552 lt!149630) (size!7536 a!3312)))) (or ((_ is Undefined!2344) lt!149630) ((_ is Found!2344) lt!149630) ((_ is MissingZero!2344) lt!149630) (not ((_ is MissingVacant!2344) lt!149630)) (and (bvsge (index!11555 lt!149630) #b00000000000000000000000000000000) (bvslt (index!11555 lt!149630) (size!7536 a!3312)))) (or ((_ is Undefined!2344) lt!149630) (ite ((_ is Found!2344) lt!149630) (= (select (arr!7184 a!3312) (index!11553 lt!149630)) k0!2524) (ite ((_ is MissingZero!2344) lt!149630) (= (select (arr!7184 a!3312) (index!11552 lt!149630)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2344) lt!149630) (= (select (arr!7184 a!3312) (index!11555 lt!149630)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67673 (= lt!149630 e!189829)))

(declare-fun c!48631 () Bool)

(assert (=> d!67673 (= c!48631 (and ((_ is Intermediate!2344) lt!149631) (undefined!3156 lt!149631)))))

(assert (=> d!67673 (= lt!149631 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67673 (validMask!0 mask!3809)))

(assert (=> d!67673 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!149630)))

(declare-fun b!300640 () Bool)

(assert (=> b!300640 (= e!189831 (MissingZero!2344 (index!11554 lt!149631)))))

(declare-fun b!300641 () Bool)

(assert (=> b!300641 (= e!189830 (Found!2344 (index!11554 lt!149631)))))

(declare-fun b!300642 () Bool)

(declare-fun c!48630 () Bool)

(assert (=> b!300642 (= c!48630 (= lt!149632 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!300642 (= e!189830 e!189831)))

(declare-fun b!300643 () Bool)

(assert (=> b!300643 (= e!189829 Undefined!2344)))

(assert (= (and d!67673 c!48631) b!300643))

(assert (= (and d!67673 (not c!48631)) b!300639))

(assert (= (and b!300639 c!48632) b!300641))

(assert (= (and b!300639 (not c!48632)) b!300642))

(assert (= (and b!300642 c!48630) b!300640))

(assert (= (and b!300642 (not c!48630)) b!300638))

(declare-fun m!312581 () Bool)

(assert (=> b!300638 m!312581))

(declare-fun m!312583 () Bool)

(assert (=> b!300639 m!312583))

(assert (=> d!67673 m!312467))

(declare-fun m!312585 () Bool)

(assert (=> d!67673 m!312585))

(assert (=> d!67673 m!312467))

(declare-fun m!312587 () Bool)

(assert (=> d!67673 m!312587))

(declare-fun m!312589 () Bool)

(assert (=> d!67673 m!312589))

(assert (=> d!67673 m!312469))

(declare-fun m!312591 () Bool)

(assert (=> d!67673 m!312591))

(assert (=> b!300442 d!67673))

(declare-fun d!67679 () Bool)

(declare-fun res!158575 () Bool)

(declare-fun e!189836 () Bool)

(assert (=> d!67679 (=> res!158575 e!189836)))

(assert (=> d!67679 (= res!158575 (= (select (arr!7184 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67679 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!189836)))

(declare-fun b!300650 () Bool)

(declare-fun e!189837 () Bool)

(assert (=> b!300650 (= e!189836 e!189837)))

(declare-fun res!158576 () Bool)

(assert (=> b!300650 (=> (not res!158576) (not e!189837))))

(assert (=> b!300650 (= res!158576 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7536 a!3312)))))

(declare-fun b!300651 () Bool)

(assert (=> b!300651 (= e!189837 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67679 (not res!158575)) b!300650))

(assert (= (and b!300650 res!158576) b!300651))

(assert (=> d!67679 m!312511))

(declare-fun m!312593 () Bool)

(assert (=> b!300651 m!312593))

(assert (=> b!300447 d!67679))

(check-sat (not b!300638) (not b!300497) (not d!67673) (not b!300651) (not b!300566) (not d!67649) (not d!67665) (not b!300499) (not b!300557) (not bm!25853))
(check-sat)
