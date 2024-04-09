; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28798 () Bool)

(assert start!28798)

(declare-fun b!293641 () Bool)

(declare-fun res!154456 () Bool)

(declare-fun e!185676 () Bool)

(assert (=> b!293641 (=> (not res!154456) (not e!185676))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293641 (= res!154456 (validKeyInArray!0 k!2524))))

(declare-fun res!154454 () Bool)

(assert (=> start!28798 (=> (not res!154454) (not e!185676))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28798 (= res!154454 (validMask!0 mask!3809))))

(assert (=> start!28798 e!185676))

(assert (=> start!28798 true))

(declare-datatypes ((array!14876 0))(
  ( (array!14877 (arr!7057 (Array (_ BitVec 32) (_ BitVec 64))) (size!7409 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14876)

(declare-fun array_inv!5011 (array!14876) Bool)

(assert (=> start!28798 (array_inv!5011 a!3312)))

(declare-fun b!293642 () Bool)

(declare-fun lt!145600 () Bool)

(declare-datatypes ((SeekEntryResult!2217 0))(
  ( (MissingZero!2217 (index!11038 (_ BitVec 32))) (Found!2217 (index!11039 (_ BitVec 32))) (Intermediate!2217 (undefined!3029 Bool) (index!11040 (_ BitVec 32)) (x!29196 (_ BitVec 32))) (Undefined!2217) (MissingVacant!2217 (index!11041 (_ BitVec 32))) )
))
(declare-fun lt!145603 () SeekEntryResult!2217)

(declare-fun e!185677 () Bool)

(assert (=> b!293642 (= e!185677 (and lt!145600 (let ((bdg!6223 (not (is-Intermediate!2217 lt!145603)))) (and (or bdg!6223 (not (undefined!3029 lt!145603))) (not bdg!6223) (= (select (arr!7057 a!3312) (index!11040 lt!145603)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun lt!145602 () SeekEntryResult!2217)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!145604 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14876 (_ BitVec 32)) SeekEntryResult!2217)

(assert (=> b!293642 (= lt!145602 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145604 k!2524 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312)) mask!3809))))

(assert (=> b!293642 (= lt!145603 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145604 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293642 (= lt!145604 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!293643 () Bool)

(assert (=> b!293643 (= e!185676 e!185677)))

(declare-fun res!154453 () Bool)

(assert (=> b!293643 (=> (not res!154453) (not e!185677))))

(declare-fun lt!145601 () SeekEntryResult!2217)

(assert (=> b!293643 (= res!154453 (or lt!145600 (= lt!145601 (MissingVacant!2217 i!1256))))))

(assert (=> b!293643 (= lt!145600 (= lt!145601 (MissingZero!2217 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14876 (_ BitVec 32)) SeekEntryResult!2217)

(assert (=> b!293643 (= lt!145601 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!293644 () Bool)

(declare-fun res!154458 () Bool)

(assert (=> b!293644 (=> (not res!154458) (not e!185677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14876 (_ BitVec 32)) Bool)

(assert (=> b!293644 (= res!154458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293645 () Bool)

(declare-fun res!154457 () Bool)

(assert (=> b!293645 (=> (not res!154457) (not e!185676))))

(declare-fun arrayContainsKey!0 (array!14876 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293645 (= res!154457 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293646 () Bool)

(declare-fun res!154455 () Bool)

(assert (=> b!293646 (=> (not res!154455) (not e!185676))))

(assert (=> b!293646 (= res!154455 (and (= (size!7409 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7409 a!3312))))))

(assert (= (and start!28798 res!154454) b!293646))

(assert (= (and b!293646 res!154455) b!293641))

(assert (= (and b!293641 res!154456) b!293645))

(assert (= (and b!293645 res!154457) b!293643))

(assert (= (and b!293643 res!154453) b!293644))

(assert (= (and b!293644 res!154458) b!293642))

(declare-fun m!307303 () Bool)

(assert (=> b!293645 m!307303))

(declare-fun m!307305 () Bool)

(assert (=> b!293644 m!307305))

(declare-fun m!307307 () Bool)

(assert (=> b!293642 m!307307))

(declare-fun m!307309 () Bool)

(assert (=> b!293642 m!307309))

(declare-fun m!307311 () Bool)

(assert (=> b!293642 m!307311))

(declare-fun m!307313 () Bool)

(assert (=> b!293642 m!307313))

(declare-fun m!307315 () Bool)

(assert (=> b!293642 m!307315))

(declare-fun m!307317 () Bool)

(assert (=> b!293643 m!307317))

(declare-fun m!307319 () Bool)

(assert (=> start!28798 m!307319))

(declare-fun m!307321 () Bool)

(assert (=> start!28798 m!307321))

(declare-fun m!307323 () Bool)

(assert (=> b!293641 m!307323))

(push 1)

(assert (not b!293645))

(assert (not b!293642))

(assert (not b!293641))

(assert (not b!293643))

(assert (not start!28798))

(assert (not b!293644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66541 () Bool)

(assert (=> d!66541 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!293641 d!66541))

(declare-fun d!66543 () Bool)

(declare-fun lt!145661 () SeekEntryResult!2217)

(assert (=> d!66543 (and (or (is-Undefined!2217 lt!145661) (not (is-Found!2217 lt!145661)) (and (bvsge (index!11039 lt!145661) #b00000000000000000000000000000000) (bvslt (index!11039 lt!145661) (size!7409 a!3312)))) (or (is-Undefined!2217 lt!145661) (is-Found!2217 lt!145661) (not (is-MissingZero!2217 lt!145661)) (and (bvsge (index!11038 lt!145661) #b00000000000000000000000000000000) (bvslt (index!11038 lt!145661) (size!7409 a!3312)))) (or (is-Undefined!2217 lt!145661) (is-Found!2217 lt!145661) (is-MissingZero!2217 lt!145661) (not (is-MissingVacant!2217 lt!145661)) (and (bvsge (index!11041 lt!145661) #b00000000000000000000000000000000) (bvslt (index!11041 lt!145661) (size!7409 a!3312)))) (or (is-Undefined!2217 lt!145661) (ite (is-Found!2217 lt!145661) (= (select (arr!7057 a!3312) (index!11039 lt!145661)) k!2524) (ite (is-MissingZero!2217 lt!145661) (= (select (arr!7057 a!3312) (index!11038 lt!145661)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2217 lt!145661) (= (select (arr!7057 a!3312) (index!11041 lt!145661)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!185721 () SeekEntryResult!2217)

(assert (=> d!66543 (= lt!145661 e!185721)))

(declare-fun c!47183 () Bool)

(declare-fun lt!145660 () SeekEntryResult!2217)

(assert (=> d!66543 (= c!47183 (and (is-Intermediate!2217 lt!145660) (undefined!3029 lt!145660)))))

(assert (=> d!66543 (= lt!145660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66543 (validMask!0 mask!3809)))

(assert (=> d!66543 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!145661)))

(declare-fun b!293725 () Bool)

(declare-fun e!185720 () SeekEntryResult!2217)

(assert (=> b!293725 (= e!185720 (MissingZero!2217 (index!11040 lt!145660)))))

(declare-fun b!293726 () Bool)

(assert (=> b!293726 (= e!185721 Undefined!2217)))

(declare-fun b!293727 () Bool)

(declare-fun e!185722 () SeekEntryResult!2217)

(assert (=> b!293727 (= e!185721 e!185722)))

(declare-fun lt!145659 () (_ BitVec 64))

(assert (=> b!293727 (= lt!145659 (select (arr!7057 a!3312) (index!11040 lt!145660)))))

(declare-fun c!47181 () Bool)

(assert (=> b!293727 (= c!47181 (= lt!145659 k!2524))))

(declare-fun b!293728 () Bool)

(assert (=> b!293728 (= e!185722 (Found!2217 (index!11040 lt!145660)))))

(declare-fun b!293729 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14876 (_ BitVec 32)) SeekEntryResult!2217)

(assert (=> b!293729 (= e!185720 (seekKeyOrZeroReturnVacant!0 (x!29196 lt!145660) (index!11040 lt!145660) (index!11040 lt!145660) k!2524 a!3312 mask!3809))))

(declare-fun b!293730 () Bool)

(declare-fun c!47182 () Bool)

(assert (=> b!293730 (= c!47182 (= lt!145659 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293730 (= e!185722 e!185720)))

(assert (= (and d!66543 c!47183) b!293726))

(assert (= (and d!66543 (not c!47183)) b!293727))

(assert (= (and b!293727 c!47181) b!293728))

(assert (= (and b!293727 (not c!47181)) b!293730))

(assert (= (and b!293730 c!47182) b!293725))

(assert (= (and b!293730 (not c!47182)) b!293729))

(assert (=> d!66543 m!307313))

(declare-fun m!307393 () Bool)

(assert (=> d!66543 m!307393))

(declare-fun m!307395 () Bool)

(assert (=> d!66543 m!307395))

(assert (=> d!66543 m!307313))

(declare-fun m!307397 () Bool)

(assert (=> d!66543 m!307397))

(assert (=> d!66543 m!307319))

(declare-fun m!307399 () Bool)

(assert (=> d!66543 m!307399))

(declare-fun m!307401 () Bool)

(assert (=> b!293727 m!307401))

(declare-fun m!307403 () Bool)

(assert (=> b!293729 m!307403))

(assert (=> b!293643 d!66543))

(declare-fun b!293809 () Bool)

(declare-fun e!185771 () Bool)

(declare-fun lt!145684 () SeekEntryResult!2217)

(assert (=> b!293809 (= e!185771 (bvsge (x!29196 lt!145684) #b01111111111111111111111111111110))))

(declare-fun b!293810 () Bool)

(declare-fun e!185772 () Bool)

(assert (=> b!293810 (= e!185771 e!185772)))

(declare-fun res!154532 () Bool)

(assert (=> b!293810 (= res!154532 (and (is-Intermediate!2217 lt!145684) (not (undefined!3029 lt!145684)) (bvslt (x!29196 lt!145684) #b01111111111111111111111111111110) (bvsge (x!29196 lt!145684) #b00000000000000000000000000000000) (bvsge (x!29196 lt!145684) #b00000000000000000000000000000000)))))

(assert (=> b!293810 (=> (not res!154532) (not e!185772))))

(declare-fun b!293811 () Bool)

(assert (=> b!293811 (and (bvsge (index!11040 lt!145684) #b00000000000000000000000000000000) (bvslt (index!11040 lt!145684) (size!7409 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312)))))))

(declare-fun res!154533 () Bool)

(assert (=> b!293811 (= res!154533 (= (select (arr!7057 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312))) (index!11040 lt!145684)) k!2524))))

(declare-fun e!185770 () Bool)

(assert (=> b!293811 (=> res!154533 e!185770)))

(assert (=> b!293811 (= e!185772 e!185770)))

(declare-fun b!293812 () Bool)

(declare-fun e!185773 () SeekEntryResult!2217)

(assert (=> b!293812 (= e!185773 (Intermediate!2217 true lt!145604 #b00000000000000000000000000000000))))

(declare-fun b!293813 () Bool)

(assert (=> b!293813 (and (bvsge (index!11040 lt!145684) #b00000000000000000000000000000000) (bvslt (index!11040 lt!145684) (size!7409 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312)))))))

(assert (=> b!293813 (= e!185770 (= (select (arr!7057 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312))) (index!11040 lt!145684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66561 () Bool)

(assert (=> d!66561 e!185771))

(declare-fun c!47210 () Bool)

(assert (=> d!66561 (= c!47210 (and (is-Intermediate!2217 lt!145684) (undefined!3029 lt!145684)))))

(assert (=> d!66561 (= lt!145684 e!185773)))

(declare-fun c!47209 () Bool)

(assert (=> d!66561 (= c!47209 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145685 () (_ BitVec 64))

(assert (=> d!66561 (= lt!145685 (select (arr!7057 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312))) lt!145604))))

(assert (=> d!66561 (validMask!0 mask!3809)))

(assert (=> d!66561 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145604 k!2524 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312)) mask!3809) lt!145684)))

(declare-fun b!293814 () Bool)

(declare-fun e!185769 () SeekEntryResult!2217)

(assert (=> b!293814 (= e!185773 e!185769)))

(declare-fun c!47208 () Bool)

(assert (=> b!293814 (= c!47208 (or (= lt!145685 k!2524) (= (bvadd lt!145685 lt!145685) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293815 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293815 (= e!185769 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145604 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312)) mask!3809))))

(declare-fun b!293816 () Bool)

(assert (=> b!293816 (and (bvsge (index!11040 lt!145684) #b00000000000000000000000000000000) (bvslt (index!11040 lt!145684) (size!7409 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312)))))))

(declare-fun res!154534 () Bool)

(assert (=> b!293816 (= res!154534 (= (select (arr!7057 (array!14877 (store (arr!7057 a!3312) i!1256 k!2524) (size!7409 a!3312))) (index!11040 lt!145684)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293816 (=> res!154534 e!185770)))

(declare-fun b!293817 () Bool)

(assert (=> b!293817 (= e!185769 (Intermediate!2217 false lt!145604 #b00000000000000000000000000000000))))

(assert (= (and d!66561 c!47209) b!293812))

(assert (= (and d!66561 (not c!47209)) b!293814))

(assert (= (and b!293814 c!47208) b!293817))

(assert (= (and b!293814 (not c!47208)) b!293815))

(assert (= (and d!66561 c!47210) b!293809))

(assert (= (and d!66561 (not c!47210)) b!293810))

(assert (= (and b!293810 res!154532) b!293811))

(assert (= (and b!293811 (not res!154533)) b!293816))

(assert (= (and b!293816 (not res!154534)) b!293813))

(declare-fun m!307421 () Bool)

(assert (=> b!293816 m!307421))

(declare-fun m!307423 () Bool)

(assert (=> d!66561 m!307423))

(assert (=> d!66561 m!307319))

(assert (=> b!293811 m!307421))

(assert (=> b!293813 m!307421))

(declare-fun m!307425 () Bool)

(assert (=> b!293815 m!307425))

(assert (=> b!293815 m!307425))

(declare-fun m!307427 () Bool)

(assert (=> b!293815 m!307427))

(assert (=> b!293642 d!66561))

(declare-fun b!293831 () Bool)

(declare-fun e!185785 () Bool)

(declare-fun lt!145688 () SeekEntryResult!2217)

(assert (=> b!293831 (= e!185785 (bvsge (x!29196 lt!145688) #b01111111111111111111111111111110))))

(declare-fun b!293832 () Bool)

(declare-fun e!185786 () Bool)

(assert (=> b!293832 (= e!185785 e!185786)))

(declare-fun res!154542 () Bool)

(assert (=> b!293832 (= res!154542 (and (is-Intermediate!2217 lt!145688) (not (undefined!3029 lt!145688)) (bvslt (x!29196 lt!145688) #b01111111111111111111111111111110) (bvsge (x!29196 lt!145688) #b00000000000000000000000000000000) (bvsge (x!29196 lt!145688) #b00000000000000000000000000000000)))))

(assert (=> b!293832 (=> (not res!154542) (not e!185786))))

(declare-fun b!293833 () Bool)

(assert (=> b!293833 (and (bvsge (index!11040 lt!145688) #b00000000000000000000000000000000) (bvslt (index!11040 lt!145688) (size!7409 a!3312)))))

(declare-fun res!154543 () Bool)

(assert (=> b!293833 (= res!154543 (= (select (arr!7057 a!3312) (index!11040 lt!145688)) k!2524))))

(declare-fun e!185784 () Bool)

(assert (=> b!293833 (=> res!154543 e!185784)))

(assert (=> b!293833 (= e!185786 e!185784)))

(declare-fun b!293834 () Bool)

(declare-fun e!185787 () SeekEntryResult!2217)

(assert (=> b!293834 (= e!185787 (Intermediate!2217 true lt!145604 #b00000000000000000000000000000000))))

(declare-fun b!293835 () Bool)

(assert (=> b!293835 (and (bvsge (index!11040 lt!145688) #b00000000000000000000000000000000) (bvslt (index!11040 lt!145688) (size!7409 a!3312)))))

(assert (=> b!293835 (= e!185784 (= (select (arr!7057 a!3312) (index!11040 lt!145688)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66571 () Bool)

(assert (=> d!66571 e!185785))

(declare-fun c!47216 () Bool)

(assert (=> d!66571 (= c!47216 (and (is-Intermediate!2217 lt!145688) (undefined!3029 lt!145688)))))

(assert (=> d!66571 (= lt!145688 e!185787)))

(declare-fun c!47215 () Bool)

(assert (=> d!66571 (= c!47215 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!145689 () (_ BitVec 64))

(assert (=> d!66571 (= lt!145689 (select (arr!7057 a!3312) lt!145604))))

(assert (=> d!66571 (validMask!0 mask!3809)))

(assert (=> d!66571 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145604 k!2524 a!3312 mask!3809) lt!145688)))

(declare-fun b!293836 () Bool)

(declare-fun e!185783 () SeekEntryResult!2217)

(assert (=> b!293836 (= e!185787 e!185783)))

(declare-fun c!47214 () Bool)

(assert (=> b!293836 (= c!47214 (or (= lt!145689 k!2524) (= (bvadd lt!145689 lt!145689) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!293837 () Bool)

(assert (=> b!293837 (= e!185783 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145604 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!293838 () Bool)

(assert (=> b!293838 (and (bvsge (index!11040 lt!145688) #b00000000000000000000000000000000) (bvslt (index!11040 lt!145688) (size!7409 a!3312)))))

(declare-fun res!154544 () Bool)

(assert (=> b!293838 (= res!154544 (= (select (arr!7057 a!3312) (index!11040 lt!145688)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293838 (=> res!154544 e!185784)))

(declare-fun b!293839 () Bool)

(assert (=> b!293839 (= e!185783 (Intermediate!2217 false lt!145604 #b00000000000000000000000000000000))))

(assert (= (and d!66571 c!47215) b!293834))

(assert (= (and d!66571 (not c!47215)) b!293836))

(assert (= (and b!293836 c!47214) b!293839))

(assert (= (and b!293836 (not c!47214)) b!293837))

(assert (= (and d!66571 c!47216) b!293831))

(assert (= (and d!66571 (not c!47216)) b!293832))

(assert (= (and b!293832 res!154542) b!293833))

(assert (= (and b!293833 (not res!154543)) b!293838))

(assert (= (and b!293838 (not res!154544)) b!293835))

(declare-fun m!307441 () Bool)

(assert (=> b!293838 m!307441))

(declare-fun m!307443 () Bool)

(assert (=> d!66571 m!307443))

(assert (=> d!66571 m!307319))

(assert (=> b!293833 m!307441))

(assert (=> b!293835 m!307441))

(assert (=> b!293837 m!307425))

(assert (=> b!293837 m!307425))

(declare-fun m!307445 () Bool)

(assert (=> b!293837 m!307445))

(assert (=> b!293642 d!66571))

(declare-fun d!66577 () Bool)

(declare-fun lt!145701 () (_ BitVec 32))

(declare-fun lt!145700 () (_ BitVec 32))

(assert (=> d!66577 (= lt!145701 (bvmul (bvxor lt!145700 (bvlshr lt!145700 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66577 (= lt!145700 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66577 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!154550 (let ((h!5295 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29203 (bvmul (bvxor h!5295 (bvlshr h!5295 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29203 (bvlshr x!29203 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!154550 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!154550 #b00000000000000000000000000000000))))))

(assert (=> d!66577 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!145701 (bvlshr lt!145701 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!293642 d!66577))

(declare-fun b!293859 () Bool)

(declare-fun e!185801 () Bool)

(declare-fun call!25682 () Bool)

(assert (=> b!293859 (= e!185801 call!25682)))

(declare-fun b!293860 () Bool)

(declare-fun e!185803 () Bool)

(assert (=> b!293860 (= e!185803 call!25682)))

(declare-fun b!293862 () Bool)

(declare-fun e!185802 () Bool)

(assert (=> b!293862 (= e!185802 e!185803)))

(declare-fun c!47222 () Bool)

(assert (=> b!293862 (= c!47222 (validKeyInArray!0 (select (arr!7057 a!3312) #b00000000000000000000000000000000)))))

(declare-fun bm!25679 () Bool)

(assert (=> bm!25679 (= call!25682 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!293861 () Bool)

(assert (=> b!293861 (= e!185803 e!185801)))

(declare-fun lt!145711 () (_ BitVec 64))

(assert (=> b!293861 (= lt!145711 (select (arr!7057 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9183 0))(
  ( (Unit!9184) )
))
(declare-fun lt!145710 () Unit!9183)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14876 (_ BitVec 64) (_ BitVec 32)) Unit!9183)

(assert (=> b!293861 (= lt!145710 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145711 #b00000000000000000000000000000000))))

(assert (=> b!293861 (arrayContainsKey!0 a!3312 lt!145711 #b00000000000000000000000000000000)))

(declare-fun lt!145712 () Unit!9183)

(assert (=> b!293861 (= lt!145712 lt!145710)))

(declare-fun res!154557 () Bool)

(assert (=> b!293861 (= res!154557 (= (seekEntryOrOpen!0 (select (arr!7057 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2217 #b00000000000000000000000000000000)))))

(assert (=> b!293861 (=> (not res!154557) (not e!185801))))

(declare-fun d!66581 () Bool)

(declare-fun res!154556 () Bool)

(assert (=> d!66581 (=> res!154556 e!185802)))

(assert (=> d!66581 (= res!154556 (bvsge #b00000000000000000000000000000000 (size!7409 a!3312)))))

(assert (=> d!66581 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185802)))

(assert (= (and d!66581 (not res!154556)) b!293862))

(assert (= (and b!293862 c!47222) b!293861))

(assert (= (and b!293862 (not c!47222)) b!293860))

(assert (= (and b!293861 res!154557) b!293859))

(assert (= (or b!293859 b!293860) bm!25679))

(declare-fun m!307453 () Bool)

(assert (=> b!293862 m!307453))

(assert (=> b!293862 m!307453))

(declare-fun m!307455 () Bool)

(assert (=> b!293862 m!307455))

(declare-fun m!307457 () Bool)

(assert (=> bm!25679 m!307457))

(assert (=> b!293861 m!307453))

(declare-fun m!307459 () Bool)

(assert (=> b!293861 m!307459))

(declare-fun m!307461 () Bool)

(assert (=> b!293861 m!307461))

(assert (=> b!293861 m!307453))

(declare-fun m!307463 () Bool)

(assert (=> b!293861 m!307463))

(assert (=> b!293644 d!66581))

(declare-fun d!66583 () Bool)

(assert (=> d!66583 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28798 d!66583))

(declare-fun d!66587 () Bool)

(assert (=> d!66587 (= (array_inv!5011 a!3312) (bvsge (size!7409 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28798 d!66587))

(declare-fun d!66589 () Bool)

(declare-fun res!154566 () Bool)

(declare-fun e!185823 () Bool)

(assert (=> d!66589 (=> res!154566 e!185823)))

(assert (=> d!66589 (= res!154566 (= (select (arr!7057 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66589 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!185823)))

(declare-fun b!293893 () Bool)

(declare-fun e!185824 () Bool)

(assert (=> b!293893 (= e!185823 e!185824)))

(declare-fun res!154567 () Bool)

(assert (=> b!293893 (=> (not res!154567) (not e!185824))))

(assert (=> b!293893 (= res!154567 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7409 a!3312)))))

(declare-fun b!293894 () Bool)

(assert (=> b!293894 (= e!185824 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66589 (not res!154566)) b!293893))

(assert (= (and b!293893 res!154567) b!293894))

(assert (=> d!66589 m!307453))

(declare-fun m!307477 () Bool)

(assert (=> b!293894 m!307477))

(assert (=> b!293645 d!66589))

(push 1)

(assert (not b!293815))

(assert (not b!293894))

(assert (not d!66543))

(assert (not b!293837))

(assert (not d!66561))

(assert (not b!293729))

(assert (not d!66571))

(assert (not bm!25679))

(assert (not b!293861))

(assert (not b!293862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

