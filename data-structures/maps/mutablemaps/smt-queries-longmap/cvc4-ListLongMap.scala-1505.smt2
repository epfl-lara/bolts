; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28526 () Bool)

(assert start!28526)

(declare-fun e!184614 () Bool)

(declare-fun lt!144419 () (_ BitVec 32))

(declare-datatypes ((array!14739 0))(
  ( (array!14740 (arr!6993 (Array (_ BitVec 32) (_ BitVec 64))) (size!7345 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14739)

(declare-datatypes ((SeekEntryResult!2153 0))(
  ( (MissingZero!2153 (index!10782 (_ BitVec 32))) (Found!2153 (index!10783 (_ BitVec 32))) (Intermediate!2153 (undefined!2965 Bool) (index!10784 (_ BitVec 32)) (x!28938 (_ BitVec 32))) (Undefined!2153) (MissingVacant!2153 (index!10785 (_ BitVec 32))) )
))
(declare-fun lt!144415 () SeekEntryResult!2153)

(declare-fun b!291749 () Bool)

(assert (=> b!291749 (= e!184614 (not (or (not (= lt!144415 (Intermediate!2153 false (index!10784 lt!144415) (x!28938 lt!144415)))) (bvsgt #b00000000000000000000000000000000 (x!28938 lt!144415)) (and (bvsge lt!144419 #b00000000000000000000000000000000) (bvslt lt!144419 (size!7345 a!3312))))))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!291749 (= (index!10784 lt!144415) i!1256)))

(declare-fun b!291750 () Bool)

(declare-fun e!184611 () Bool)

(assert (=> b!291750 (= e!184611 e!184614)))

(declare-fun res!152990 () Bool)

(assert (=> b!291750 (=> (not res!152990) (not e!184614))))

(declare-fun lt!144414 () Bool)

(assert (=> b!291750 (= res!152990 (and (or lt!144414 (not (undefined!2965 lt!144415))) (not lt!144414) (= (select (arr!6993 a!3312) (index!10784 lt!144415)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!291750 (= lt!144414 (not (is-Intermediate!2153 lt!144415)))))

(declare-fun b!291751 () Bool)

(declare-fun res!152985 () Bool)

(declare-fun e!184615 () Bool)

(assert (=> b!291751 (=> (not res!152985) (not e!184615))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14739 (_ BitVec 32)) Bool)

(assert (=> b!291751 (= res!152985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291752 () Bool)

(assert (=> b!291752 (= e!184615 e!184611)))

(declare-fun res!152989 () Bool)

(assert (=> b!291752 (=> (not res!152989) (not e!184611))))

(declare-fun lt!144416 () SeekEntryResult!2153)

(declare-fun lt!144417 () Bool)

(assert (=> b!291752 (= res!152989 (and (not lt!144417) (= lt!144416 (MissingVacant!2153 i!1256))))))

(declare-fun lt!144418 () SeekEntryResult!2153)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14739 (_ BitVec 32)) SeekEntryResult!2153)

(assert (=> b!291752 (= lt!144418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144419 k!2524 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312)) mask!3809))))

(assert (=> b!291752 (= lt!144415 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144419 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291752 (= lt!144419 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!291753 () Bool)

(declare-fun e!184613 () Bool)

(assert (=> b!291753 (= e!184613 e!184615)))

(declare-fun res!152988 () Bool)

(assert (=> b!291753 (=> (not res!152988) (not e!184615))))

(assert (=> b!291753 (= res!152988 (or lt!144417 (= lt!144416 (MissingVacant!2153 i!1256))))))

(assert (=> b!291753 (= lt!144417 (= lt!144416 (MissingZero!2153 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14739 (_ BitVec 32)) SeekEntryResult!2153)

(assert (=> b!291753 (= lt!144416 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!291754 () Bool)

(declare-fun res!152987 () Bool)

(assert (=> b!291754 (=> (not res!152987) (not e!184613))))

(declare-fun arrayContainsKey!0 (array!14739 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291754 (= res!152987 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291756 () Bool)

(declare-fun res!152991 () Bool)

(assert (=> b!291756 (=> (not res!152991) (not e!184613))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291756 (= res!152991 (validKeyInArray!0 k!2524))))

(declare-fun res!152986 () Bool)

(assert (=> start!28526 (=> (not res!152986) (not e!184613))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28526 (= res!152986 (validMask!0 mask!3809))))

(assert (=> start!28526 e!184613))

(assert (=> start!28526 true))

(declare-fun array_inv!4947 (array!14739) Bool)

(assert (=> start!28526 (array_inv!4947 a!3312)))

(declare-fun b!291755 () Bool)

(declare-fun res!152984 () Bool)

(assert (=> b!291755 (=> (not res!152984) (not e!184613))))

(assert (=> b!291755 (= res!152984 (and (= (size!7345 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7345 a!3312))))))

(assert (= (and start!28526 res!152986) b!291755))

(assert (= (and b!291755 res!152984) b!291756))

(assert (= (and b!291756 res!152991) b!291754))

(assert (= (and b!291754 res!152987) b!291753))

(assert (= (and b!291753 res!152988) b!291751))

(assert (= (and b!291751 res!152985) b!291752))

(assert (= (and b!291752 res!152989) b!291750))

(assert (= (and b!291750 res!152990) b!291749))

(declare-fun m!305619 () Bool)

(assert (=> start!28526 m!305619))

(declare-fun m!305621 () Bool)

(assert (=> start!28526 m!305621))

(declare-fun m!305623 () Bool)

(assert (=> b!291752 m!305623))

(declare-fun m!305625 () Bool)

(assert (=> b!291752 m!305625))

(declare-fun m!305627 () Bool)

(assert (=> b!291752 m!305627))

(declare-fun m!305629 () Bool)

(assert (=> b!291752 m!305629))

(declare-fun m!305631 () Bool)

(assert (=> b!291754 m!305631))

(declare-fun m!305633 () Bool)

(assert (=> b!291753 m!305633))

(declare-fun m!305635 () Bool)

(assert (=> b!291751 m!305635))

(declare-fun m!305637 () Bool)

(assert (=> b!291756 m!305637))

(declare-fun m!305639 () Bool)

(assert (=> b!291750 m!305639))

(push 1)

(assert (not b!291756))

(assert (not b!291753))

(assert (not b!291754))

(assert (not start!28526))

(assert (not b!291752))

(assert (not b!291751))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66341 () Bool)

(declare-fun res!153008 () Bool)

(declare-fun e!184635 () Bool)

(assert (=> d!66341 (=> res!153008 e!184635)))

(assert (=> d!66341 (= res!153008 (= (select (arr!6993 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66341 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!184635)))

(declare-fun b!291779 () Bool)

(declare-fun e!184636 () Bool)

(assert (=> b!291779 (= e!184635 e!184636)))

(declare-fun res!153009 () Bool)

(assert (=> b!291779 (=> (not res!153009) (not e!184636))))

(assert (=> b!291779 (= res!153009 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7345 a!3312)))))

(declare-fun b!291780 () Bool)

(assert (=> b!291780 (= e!184636 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66341 (not res!153008)) b!291779))

(assert (= (and b!291779 res!153009) b!291780))

(declare-fun m!305657 () Bool)

(assert (=> d!66341 m!305657))

(declare-fun m!305659 () Bool)

(assert (=> b!291780 m!305659))

(assert (=> b!291754 d!66341))

(declare-fun b!291838 () Bool)

(declare-fun e!184667 () SeekEntryResult!2153)

(declare-fun e!184668 () SeekEntryResult!2153)

(assert (=> b!291838 (= e!184667 e!184668)))

(declare-fun lt!144452 () (_ BitVec 64))

(declare-fun lt!144450 () SeekEntryResult!2153)

(assert (=> b!291838 (= lt!144452 (select (arr!6993 a!3312) (index!10784 lt!144450)))))

(declare-fun c!46974 () Bool)

(assert (=> b!291838 (= c!46974 (= lt!144452 k!2524))))

(declare-fun d!66343 () Bool)

(declare-fun lt!144451 () SeekEntryResult!2153)

(assert (=> d!66343 (and (or (is-Undefined!2153 lt!144451) (not (is-Found!2153 lt!144451)) (and (bvsge (index!10783 lt!144451) #b00000000000000000000000000000000) (bvslt (index!10783 lt!144451) (size!7345 a!3312)))) (or (is-Undefined!2153 lt!144451) (is-Found!2153 lt!144451) (not (is-MissingZero!2153 lt!144451)) (and (bvsge (index!10782 lt!144451) #b00000000000000000000000000000000) (bvslt (index!10782 lt!144451) (size!7345 a!3312)))) (or (is-Undefined!2153 lt!144451) (is-Found!2153 lt!144451) (is-MissingZero!2153 lt!144451) (not (is-MissingVacant!2153 lt!144451)) (and (bvsge (index!10785 lt!144451) #b00000000000000000000000000000000) (bvslt (index!10785 lt!144451) (size!7345 a!3312)))) (or (is-Undefined!2153 lt!144451) (ite (is-Found!2153 lt!144451) (= (select (arr!6993 a!3312) (index!10783 lt!144451)) k!2524) (ite (is-MissingZero!2153 lt!144451) (= (select (arr!6993 a!3312) (index!10782 lt!144451)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2153 lt!144451) (= (select (arr!6993 a!3312) (index!10785 lt!144451)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66343 (= lt!144451 e!184667)))

(declare-fun c!46975 () Bool)

(assert (=> d!66343 (= c!46975 (and (is-Intermediate!2153 lt!144450) (undefined!2965 lt!144450)))))

(assert (=> d!66343 (= lt!144450 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66343 (validMask!0 mask!3809)))

(assert (=> d!66343 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!144451)))

(declare-fun b!291839 () Bool)

(declare-fun c!46976 () Bool)

(assert (=> b!291839 (= c!46976 (= lt!144452 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184669 () SeekEntryResult!2153)

(assert (=> b!291839 (= e!184668 e!184669)))

(declare-fun b!291840 () Bool)

(assert (=> b!291840 (= e!184667 Undefined!2153)))

(declare-fun b!291841 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14739 (_ BitVec 32)) SeekEntryResult!2153)

(assert (=> b!291841 (= e!184669 (seekKeyOrZeroReturnVacant!0 (x!28938 lt!144450) (index!10784 lt!144450) (index!10784 lt!144450) k!2524 a!3312 mask!3809))))

(declare-fun b!291842 () Bool)

(assert (=> b!291842 (= e!184668 (Found!2153 (index!10784 lt!144450)))))

(declare-fun b!291843 () Bool)

(assert (=> b!291843 (= e!184669 (MissingZero!2153 (index!10784 lt!144450)))))

(assert (= (and d!66343 c!46975) b!291840))

(assert (= (and d!66343 (not c!46975)) b!291838))

(assert (= (and b!291838 c!46974) b!291842))

(assert (= (and b!291838 (not c!46974)) b!291839))

(assert (= (and b!291839 c!46976) b!291843))

(assert (= (and b!291839 (not c!46976)) b!291841))

(declare-fun m!305681 () Bool)

(assert (=> b!291838 m!305681))

(declare-fun m!305683 () Bool)

(assert (=> d!66343 m!305683))

(declare-fun m!305685 () Bool)

(assert (=> d!66343 m!305685))

(assert (=> d!66343 m!305629))

(declare-fun m!305687 () Bool)

(assert (=> d!66343 m!305687))

(assert (=> d!66343 m!305619))

(assert (=> d!66343 m!305629))

(declare-fun m!305689 () Bool)

(assert (=> d!66343 m!305689))

(declare-fun m!305691 () Bool)

(assert (=> b!291841 m!305691))

(assert (=> b!291753 d!66343))

(declare-fun b!291865 () Bool)

(declare-fun e!184686 () Bool)

(declare-fun e!184687 () Bool)

(assert (=> b!291865 (= e!184686 e!184687)))

(declare-fun c!46982 () Bool)

(assert (=> b!291865 (= c!46982 (validKeyInArray!0 (select (arr!6993 a!3312) #b00000000000000000000000000000000)))))

(declare-fun bm!25652 () Bool)

(declare-fun call!25655 () Bool)

(assert (=> bm!25652 (= call!25655 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!291866 () Bool)

(declare-fun e!184685 () Bool)

(assert (=> b!291866 (= e!184685 call!25655)))

(declare-fun b!291867 () Bool)

(assert (=> b!291867 (= e!184687 e!184685)))

(declare-fun lt!144467 () (_ BitVec 64))

(assert (=> b!291867 (= lt!144467 (select (arr!6993 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9143 0))(
  ( (Unit!9144) )
))
(declare-fun lt!144469 () Unit!9143)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14739 (_ BitVec 64) (_ BitVec 32)) Unit!9143)

(assert (=> b!291867 (= lt!144469 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!144467 #b00000000000000000000000000000000))))

(assert (=> b!291867 (arrayContainsKey!0 a!3312 lt!144467 #b00000000000000000000000000000000)))

(declare-fun lt!144468 () Unit!9143)

(assert (=> b!291867 (= lt!144468 lt!144469)))

(declare-fun res!153032 () Bool)

(assert (=> b!291867 (= res!153032 (= (seekEntryOrOpen!0 (select (arr!6993 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2153 #b00000000000000000000000000000000)))))

(assert (=> b!291867 (=> (not res!153032) (not e!184685))))

(declare-fun b!291868 () Bool)

(assert (=> b!291868 (= e!184687 call!25655)))

(declare-fun d!66349 () Bool)

(declare-fun res!153031 () Bool)

(assert (=> d!66349 (=> res!153031 e!184686)))

(assert (=> d!66349 (= res!153031 (bvsge #b00000000000000000000000000000000 (size!7345 a!3312)))))

(assert (=> d!66349 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!184686)))

(assert (= (and d!66349 (not res!153031)) b!291865))

(assert (= (and b!291865 c!46982) b!291867))

(assert (= (and b!291865 (not c!46982)) b!291868))

(assert (= (and b!291867 res!153032) b!291866))

(assert (= (or b!291866 b!291868) bm!25652))

(assert (=> b!291865 m!305657))

(assert (=> b!291865 m!305657))

(declare-fun m!305699 () Bool)

(assert (=> b!291865 m!305699))

(declare-fun m!305701 () Bool)

(assert (=> bm!25652 m!305701))

(assert (=> b!291867 m!305657))

(declare-fun m!305703 () Bool)

(assert (=> b!291867 m!305703))

(declare-fun m!305705 () Bool)

(assert (=> b!291867 m!305705))

(assert (=> b!291867 m!305657))

(declare-fun m!305707 () Bool)

(assert (=> b!291867 m!305707))

(assert (=> b!291751 d!66349))

(declare-fun b!291919 () Bool)

(declare-fun e!184719 () Bool)

(declare-fun e!184721 () Bool)

(assert (=> b!291919 (= e!184719 e!184721)))

(declare-fun res!153055 () Bool)

(declare-fun lt!144488 () SeekEntryResult!2153)

(assert (=> b!291919 (= res!153055 (and (is-Intermediate!2153 lt!144488) (not (undefined!2965 lt!144488)) (bvslt (x!28938 lt!144488) #b01111111111111111111111111111110) (bvsge (x!28938 lt!144488) #b00000000000000000000000000000000) (bvsge (x!28938 lt!144488) #b00000000000000000000000000000000)))))

(assert (=> b!291919 (=> (not res!153055) (not e!184721))))

(declare-fun b!291920 () Bool)

(declare-fun e!184720 () SeekEntryResult!2153)

(assert (=> b!291920 (= e!184720 (Intermediate!2153 true lt!144419 #b00000000000000000000000000000000))))

(declare-fun b!291921 () Bool)

(declare-fun e!184723 () SeekEntryResult!2153)

(assert (=> b!291921 (= e!184723 (Intermediate!2153 false lt!144419 #b00000000000000000000000000000000))))

(declare-fun b!291922 () Bool)

(assert (=> b!291922 (= e!184719 (bvsge (x!28938 lt!144488) #b01111111111111111111111111111110))))

(declare-fun d!66361 () Bool)

(assert (=> d!66361 e!184719))

(declare-fun c!46998 () Bool)

(assert (=> d!66361 (= c!46998 (and (is-Intermediate!2153 lt!144488) (undefined!2965 lt!144488)))))

(assert (=> d!66361 (= lt!144488 e!184720)))

(declare-fun c!47000 () Bool)

(assert (=> d!66361 (= c!47000 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!144487 () (_ BitVec 64))

(assert (=> d!66361 (= lt!144487 (select (arr!6993 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312))) lt!144419))))

(assert (=> d!66361 (validMask!0 mask!3809)))

(assert (=> d!66361 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144419 k!2524 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312)) mask!3809) lt!144488)))

(declare-fun b!291923 () Bool)

(assert (=> b!291923 (and (bvsge (index!10784 lt!144488) #b00000000000000000000000000000000) (bvslt (index!10784 lt!144488) (size!7345 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312)))))))

(declare-fun res!153054 () Bool)

(assert (=> b!291923 (= res!153054 (= (select (arr!6993 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312))) (index!10784 lt!144488)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184722 () Bool)

(assert (=> b!291923 (=> res!153054 e!184722)))

(declare-fun b!291924 () Bool)

(assert (=> b!291924 (and (bvsge (index!10784 lt!144488) #b00000000000000000000000000000000) (bvslt (index!10784 lt!144488) (size!7345 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312)))))))

(declare-fun res!153053 () Bool)

(assert (=> b!291924 (= res!153053 (= (select (arr!6993 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312))) (index!10784 lt!144488)) k!2524))))

(assert (=> b!291924 (=> res!153053 e!184722)))

(assert (=> b!291924 (= e!184721 e!184722)))

(declare-fun b!291925 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291925 (= e!184723 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144419 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312)) mask!3809))))

(declare-fun b!291926 () Bool)

(assert (=> b!291926 (= e!184720 e!184723)))

(declare-fun c!46999 () Bool)

(assert (=> b!291926 (= c!46999 (or (= lt!144487 k!2524) (= (bvadd lt!144487 lt!144487) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291927 () Bool)

(assert (=> b!291927 (and (bvsge (index!10784 lt!144488) #b00000000000000000000000000000000) (bvslt (index!10784 lt!144488) (size!7345 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312)))))))

(assert (=> b!291927 (= e!184722 (= (select (arr!6993 (array!14740 (store (arr!6993 a!3312) i!1256 k!2524) (size!7345 a!3312))) (index!10784 lt!144488)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66361 c!47000) b!291920))

(assert (= (and d!66361 (not c!47000)) b!291926))

(assert (= (and b!291926 c!46999) b!291921))

(assert (= (and b!291926 (not c!46999)) b!291925))

(assert (= (and d!66361 c!46998) b!291922))

(assert (= (and d!66361 (not c!46998)) b!291919))

(assert (= (and b!291919 res!153055) b!291924))

(assert (= (and b!291924 (not res!153053)) b!291923))

(assert (= (and b!291923 (not res!153054)) b!291927))

(declare-fun m!305721 () Bool)

(assert (=> d!66361 m!305721))

(assert (=> d!66361 m!305619))

(declare-fun m!305723 () Bool)

(assert (=> b!291925 m!305723))

(assert (=> b!291925 m!305723))

(declare-fun m!305725 () Bool)

(assert (=> b!291925 m!305725))

(declare-fun m!305727 () Bool)

(assert (=> b!291924 m!305727))

(assert (=> b!291927 m!305727))

(assert (=> b!291923 m!305727))

(assert (=> b!291752 d!66361))

(declare-fun b!291928 () Bool)

(declare-fun e!184724 () Bool)

(declare-fun e!184726 () Bool)

(assert (=> b!291928 (= e!184724 e!184726)))

(declare-fun res!153058 () Bool)

(declare-fun lt!144490 () SeekEntryResult!2153)

(assert (=> b!291928 (= res!153058 (and (is-Intermediate!2153 lt!144490) (not (undefined!2965 lt!144490)) (bvslt (x!28938 lt!144490) #b01111111111111111111111111111110) (bvsge (x!28938 lt!144490) #b00000000000000000000000000000000) (bvsge (x!28938 lt!144490) #b00000000000000000000000000000000)))))

(assert (=> b!291928 (=> (not res!153058) (not e!184726))))

(declare-fun b!291929 () Bool)

(declare-fun e!184725 () SeekEntryResult!2153)

(assert (=> b!291929 (= e!184725 (Intermediate!2153 true lt!144419 #b00000000000000000000000000000000))))

(declare-fun b!291930 () Bool)

(declare-fun e!184728 () SeekEntryResult!2153)

(assert (=> b!291930 (= e!184728 (Intermediate!2153 false lt!144419 #b00000000000000000000000000000000))))

(declare-fun b!291931 () Bool)

(assert (=> b!291931 (= e!184724 (bvsge (x!28938 lt!144490) #b01111111111111111111111111111110))))

(declare-fun d!66371 () Bool)

(assert (=> d!66371 e!184724))

(declare-fun c!47001 () Bool)

(assert (=> d!66371 (= c!47001 (and (is-Intermediate!2153 lt!144490) (undefined!2965 lt!144490)))))

(assert (=> d!66371 (= lt!144490 e!184725)))

(declare-fun c!47003 () Bool)

(assert (=> d!66371 (= c!47003 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!144489 () (_ BitVec 64))

(assert (=> d!66371 (= lt!144489 (select (arr!6993 a!3312) lt!144419))))

(assert (=> d!66371 (validMask!0 mask!3809)))

(assert (=> d!66371 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144419 k!2524 a!3312 mask!3809) lt!144490)))

(declare-fun b!291932 () Bool)

(assert (=> b!291932 (and (bvsge (index!10784 lt!144490) #b00000000000000000000000000000000) (bvslt (index!10784 lt!144490) (size!7345 a!3312)))))

(declare-fun res!153057 () Bool)

(assert (=> b!291932 (= res!153057 (= (select (arr!6993 a!3312) (index!10784 lt!144490)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184727 () Bool)

(assert (=> b!291932 (=> res!153057 e!184727)))

(declare-fun b!291933 () Bool)

(assert (=> b!291933 (and (bvsge (index!10784 lt!144490) #b00000000000000000000000000000000) (bvslt (index!10784 lt!144490) (size!7345 a!3312)))))

(declare-fun res!153056 () Bool)

(assert (=> b!291933 (= res!153056 (= (select (arr!6993 a!3312) (index!10784 lt!144490)) k!2524))))

(assert (=> b!291933 (=> res!153056 e!184727)))

(assert (=> b!291933 (= e!184726 e!184727)))

(declare-fun b!291934 () Bool)

(assert (=> b!291934 (= e!184728 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144419 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!291935 () Bool)

(assert (=> b!291935 (= e!184725 e!184728)))

(declare-fun c!47002 () Bool)

(assert (=> b!291935 (= c!47002 (or (= lt!144489 k!2524) (= (bvadd lt!144489 lt!144489) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291936 () Bool)

(assert (=> b!291936 (and (bvsge (index!10784 lt!144490) #b00000000000000000000000000000000) (bvslt (index!10784 lt!144490) (size!7345 a!3312)))))

(assert (=> b!291936 (= e!184727 (= (select (arr!6993 a!3312) (index!10784 lt!144490)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66371 c!47003) b!291929))

(assert (= (and d!66371 (not c!47003)) b!291935))

(assert (= (and b!291935 c!47002) b!291930))

(assert (= (and b!291935 (not c!47002)) b!291934))

(assert (= (and d!66371 c!47001) b!291931))

(assert (= (and d!66371 (not c!47001)) b!291928))

(assert (= (and b!291928 res!153058) b!291933))

(assert (= (and b!291933 (not res!153056)) b!291932))

(assert (= (and b!291932 (not res!153057)) b!291936))

(declare-fun m!305729 () Bool)

(assert (=> d!66371 m!305729))

(assert (=> d!66371 m!305619))

(assert (=> b!291934 m!305723))

(assert (=> b!291934 m!305723))

(declare-fun m!305731 () Bool)

(assert (=> b!291934 m!305731))

(declare-fun m!305733 () Bool)

(assert (=> b!291933 m!305733))

(assert (=> b!291936 m!305733))

(assert (=> b!291932 m!305733))

(assert (=> b!291752 d!66371))

(declare-fun d!66373 () Bool)

(declare-fun lt!144500 () (_ BitVec 32))

(declare-fun lt!144499 () (_ BitVec 32))

(assert (=> d!66373 (= lt!144500 (bvmul (bvxor lt!144499 (bvlshr lt!144499 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66373 (= lt!144499 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66373 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!153059 (let ((h!5286 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28943 (bvmul (bvxor h!5286 (bvlshr h!5286 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28943 (bvlshr x!28943 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!153059 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!153059 #b00000000000000000000000000000000))))))

(assert (=> d!66373 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!144500 (bvlshr lt!144500 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!291752 d!66373))

(declare-fun d!66379 () Bool)

(assert (=> d!66379 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28526 d!66379))

(declare-fun d!66381 () Bool)

(assert (=> d!66381 (= (array_inv!4947 a!3312) (bvsge (size!7345 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28526 d!66381))

(declare-fun d!66383 () Bool)

(assert (=> d!66383 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!291756 d!66383))

(push 1)

(assert (not bm!25652))

(assert (not b!291867))

(assert (not b!291865))

(assert (not b!291780))

(assert (not d!66361))

(assert (not d!66343))

(assert (not b!291841))

(assert (not b!291934))

(assert (not b!291925))

(assert (not d!66371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

