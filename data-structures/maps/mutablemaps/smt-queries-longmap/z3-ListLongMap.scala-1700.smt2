; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31094 () Bool)

(assert start!31094)

(declare-fun b!312679 () Bool)

(declare-fun res!169291 () Bool)

(declare-fun e!194923 () Bool)

(assert (=> b!312679 (=> (not res!169291) (not e!194923))))

(declare-datatypes ((array!15994 0))(
  ( (array!15995 (arr!7577 (Array (_ BitVec 32) (_ BitVec 64))) (size!7929 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15994)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15994 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312679 (= res!169291 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312680 () Bool)

(declare-fun res!169292 () Bool)

(assert (=> b!312680 (=> (not res!169292) (not e!194923))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15994 (_ BitVec 32)) Bool)

(assert (=> b!312680 (= res!169292 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312681 () Bool)

(declare-fun res!169298 () Bool)

(declare-fun e!194921 () Bool)

(assert (=> b!312681 (=> (not res!169298) (not e!194921))))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2728 0))(
  ( (MissingZero!2728 (index!13088 (_ BitVec 32))) (Found!2728 (index!13089 (_ BitVec 32))) (Intermediate!2728 (undefined!3540 Bool) (index!13090 (_ BitVec 32)) (x!31256 (_ BitVec 32))) (Undefined!2728) (MissingVacant!2728 (index!13091 (_ BitVec 32))) )
))
(declare-fun lt!153311 () SeekEntryResult!2728)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15994 (_ BitVec 32)) SeekEntryResult!2728)

(assert (=> b!312681 (= res!169298 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!153311))))

(declare-fun b!312682 () Bool)

(assert (=> b!312682 (= e!194923 e!194921)))

(declare-fun res!169299 () Bool)

(assert (=> b!312682 (=> (not res!169299) (not e!194921))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312682 (= res!169299 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153311))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!312682 (= lt!153311 (Intermediate!2728 false resIndex!52 resX!52))))

(declare-fun b!312683 () Bool)

(assert (=> b!312683 (= e!194921 (bvsge resX!52 #b01111111111111111111111111111110))))

(declare-fun res!169296 () Bool)

(assert (=> start!31094 (=> (not res!169296) (not e!194923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31094 (= res!169296 (validMask!0 mask!3709))))

(assert (=> start!31094 e!194923))

(declare-fun array_inv!5531 (array!15994) Bool)

(assert (=> start!31094 (array_inv!5531 a!3293)))

(assert (=> start!31094 true))

(declare-fun b!312684 () Bool)

(declare-fun res!169297 () Bool)

(assert (=> b!312684 (=> (not res!169297) (not e!194921))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!312684 (= res!169297 (and (= (select (arr!7577 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7929 a!3293))))))

(declare-fun b!312685 () Bool)

(declare-fun res!169295 () Bool)

(assert (=> b!312685 (=> (not res!169295) (not e!194923))))

(assert (=> b!312685 (= res!169295 (and (= (size!7929 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7929 a!3293))))))

(declare-fun b!312686 () Bool)

(declare-fun res!169294 () Bool)

(assert (=> b!312686 (=> (not res!169294) (not e!194923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312686 (= res!169294 (validKeyInArray!0 k0!2441))))

(declare-fun b!312687 () Bool)

(declare-fun res!169293 () Bool)

(assert (=> b!312687 (=> (not res!169293) (not e!194923))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15994 (_ BitVec 32)) SeekEntryResult!2728)

(assert (=> b!312687 (= res!169293 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2728 i!1240)))))

(assert (= (and start!31094 res!169296) b!312685))

(assert (= (and b!312685 res!169295) b!312686))

(assert (= (and b!312686 res!169294) b!312679))

(assert (= (and b!312679 res!169291) b!312687))

(assert (= (and b!312687 res!169293) b!312680))

(assert (= (and b!312680 res!169292) b!312682))

(assert (= (and b!312682 res!169299) b!312684))

(assert (= (and b!312684 res!169297) b!312681))

(assert (= (and b!312681 res!169298) b!312683))

(declare-fun m!322857 () Bool)

(assert (=> b!312687 m!322857))

(declare-fun m!322859 () Bool)

(assert (=> b!312686 m!322859))

(declare-fun m!322861 () Bool)

(assert (=> start!31094 m!322861))

(declare-fun m!322863 () Bool)

(assert (=> start!31094 m!322863))

(declare-fun m!322865 () Bool)

(assert (=> b!312682 m!322865))

(assert (=> b!312682 m!322865))

(declare-fun m!322867 () Bool)

(assert (=> b!312682 m!322867))

(declare-fun m!322869 () Bool)

(assert (=> b!312679 m!322869))

(declare-fun m!322871 () Bool)

(assert (=> b!312684 m!322871))

(declare-fun m!322873 () Bool)

(assert (=> b!312681 m!322873))

(declare-fun m!322875 () Bool)

(assert (=> b!312680 m!322875))

(check-sat (not b!312686) (not b!312681) (not b!312679) (not b!312680) (not start!31094) (not b!312687) (not b!312682))
(check-sat)
(get-model)

(declare-fun b!312739 () Bool)

(declare-fun e!194951 () SeekEntryResult!2728)

(assert (=> b!312739 (= e!194951 (Intermediate!2728 true index!1781 x!1427))))

(declare-fun b!312740 () Bool)

(declare-fun lt!153319 () SeekEntryResult!2728)

(assert (=> b!312740 (and (bvsge (index!13090 lt!153319) #b00000000000000000000000000000000) (bvslt (index!13090 lt!153319) (size!7929 a!3293)))))

(declare-fun res!169341 () Bool)

(assert (=> b!312740 (= res!169341 (= (select (arr!7577 a!3293) (index!13090 lt!153319)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!194950 () Bool)

(assert (=> b!312740 (=> res!169341 e!194950)))

(declare-fun b!312741 () Bool)

(declare-fun e!194953 () SeekEntryResult!2728)

(assert (=> b!312741 (= e!194951 e!194953)))

(declare-fun c!49307 () Bool)

(declare-fun lt!153320 () (_ BitVec 64))

(assert (=> b!312741 (= c!49307 (or (= lt!153320 k0!2441) (= (bvadd lt!153320 lt!153320) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!312742 () Bool)

(declare-fun e!194952 () Bool)

(assert (=> b!312742 (= e!194952 (bvsge (x!31256 lt!153319) #b01111111111111111111111111111110))))

(declare-fun b!312743 () Bool)

(assert (=> b!312743 (and (bvsge (index!13090 lt!153319) #b00000000000000000000000000000000) (bvslt (index!13090 lt!153319) (size!7929 a!3293)))))

(assert (=> b!312743 (= e!194950 (= (select (arr!7577 a!3293) (index!13090 lt!153319)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68343 () Bool)

(assert (=> d!68343 e!194952))

(declare-fun c!49305 () Bool)

(get-info :version)

(assert (=> d!68343 (= c!49305 (and ((_ is Intermediate!2728) lt!153319) (undefined!3540 lt!153319)))))

(assert (=> d!68343 (= lt!153319 e!194951)))

(declare-fun c!49306 () Bool)

(assert (=> d!68343 (= c!49306 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68343 (= lt!153320 (select (arr!7577 a!3293) index!1781))))

(assert (=> d!68343 (validMask!0 mask!3709)))

(assert (=> d!68343 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!153319)))

(declare-fun b!312744 () Bool)

(declare-fun e!194949 () Bool)

(assert (=> b!312744 (= e!194952 e!194949)))

(declare-fun res!169340 () Bool)

(assert (=> b!312744 (= res!169340 (and ((_ is Intermediate!2728) lt!153319) (not (undefined!3540 lt!153319)) (bvslt (x!31256 lt!153319) #b01111111111111111111111111111110) (bvsge (x!31256 lt!153319) #b00000000000000000000000000000000) (bvsge (x!31256 lt!153319) x!1427)))))

(assert (=> b!312744 (=> (not res!169340) (not e!194949))))

(declare-fun b!312745 () Bool)

(assert (=> b!312745 (= e!194953 (Intermediate!2728 false index!1781 x!1427))))

(declare-fun b!312746 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312746 (= e!194953 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!312747 () Bool)

(assert (=> b!312747 (and (bvsge (index!13090 lt!153319) #b00000000000000000000000000000000) (bvslt (index!13090 lt!153319) (size!7929 a!3293)))))

(declare-fun res!169339 () Bool)

(assert (=> b!312747 (= res!169339 (= (select (arr!7577 a!3293) (index!13090 lt!153319)) k0!2441))))

(assert (=> b!312747 (=> res!169339 e!194950)))

(assert (=> b!312747 (= e!194949 e!194950)))

(assert (= (and d!68343 c!49306) b!312739))

(assert (= (and d!68343 (not c!49306)) b!312741))

(assert (= (and b!312741 c!49307) b!312745))

(assert (= (and b!312741 (not c!49307)) b!312746))

(assert (= (and d!68343 c!49305) b!312742))

(assert (= (and d!68343 (not c!49305)) b!312744))

(assert (= (and b!312744 res!169340) b!312747))

(assert (= (and b!312747 (not res!169339)) b!312740))

(assert (= (and b!312740 (not res!169341)) b!312743))

(declare-fun m!322901 () Bool)

(assert (=> d!68343 m!322901))

(assert (=> d!68343 m!322861))

(declare-fun m!322903 () Bool)

(assert (=> b!312746 m!322903))

(assert (=> b!312746 m!322903))

(declare-fun m!322905 () Bool)

(assert (=> b!312746 m!322905))

(declare-fun m!322907 () Bool)

(assert (=> b!312747 m!322907))

(assert (=> b!312740 m!322907))

(assert (=> b!312743 m!322907))

(assert (=> b!312681 d!68343))

(declare-fun d!68351 () Bool)

(assert (=> d!68351 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!312686 d!68351))

(declare-fun d!68353 () Bool)

(declare-fun lt!153348 () SeekEntryResult!2728)

(assert (=> d!68353 (and (or ((_ is Undefined!2728) lt!153348) (not ((_ is Found!2728) lt!153348)) (and (bvsge (index!13089 lt!153348) #b00000000000000000000000000000000) (bvslt (index!13089 lt!153348) (size!7929 a!3293)))) (or ((_ is Undefined!2728) lt!153348) ((_ is Found!2728) lt!153348) (not ((_ is MissingZero!2728) lt!153348)) (and (bvsge (index!13088 lt!153348) #b00000000000000000000000000000000) (bvslt (index!13088 lt!153348) (size!7929 a!3293)))) (or ((_ is Undefined!2728) lt!153348) ((_ is Found!2728) lt!153348) ((_ is MissingZero!2728) lt!153348) (not ((_ is MissingVacant!2728) lt!153348)) (and (bvsge (index!13091 lt!153348) #b00000000000000000000000000000000) (bvslt (index!13091 lt!153348) (size!7929 a!3293)))) (or ((_ is Undefined!2728) lt!153348) (ite ((_ is Found!2728) lt!153348) (= (select (arr!7577 a!3293) (index!13089 lt!153348)) k0!2441) (ite ((_ is MissingZero!2728) lt!153348) (= (select (arr!7577 a!3293) (index!13088 lt!153348)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2728) lt!153348) (= (select (arr!7577 a!3293) (index!13091 lt!153348)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!194986 () SeekEntryResult!2728)

(assert (=> d!68353 (= lt!153348 e!194986)))

(declare-fun c!49333 () Bool)

(declare-fun lt!153350 () SeekEntryResult!2728)

(assert (=> d!68353 (= c!49333 (and ((_ is Intermediate!2728) lt!153350) (undefined!3540 lt!153350)))))

(assert (=> d!68353 (= lt!153350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68353 (validMask!0 mask!3709)))

(assert (=> d!68353 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!153348)))

(declare-fun b!312805 () Bool)

(declare-fun e!194985 () SeekEntryResult!2728)

(assert (=> b!312805 (= e!194986 e!194985)))

(declare-fun lt!153349 () (_ BitVec 64))

(assert (=> b!312805 (= lt!153349 (select (arr!7577 a!3293) (index!13090 lt!153350)))))

(declare-fun c!49334 () Bool)

(assert (=> b!312805 (= c!49334 (= lt!153349 k0!2441))))

(declare-fun b!312806 () Bool)

(assert (=> b!312806 (= e!194985 (Found!2728 (index!13090 lt!153350)))))

(declare-fun b!312807 () Bool)

(declare-fun e!194984 () SeekEntryResult!2728)

(assert (=> b!312807 (= e!194984 (MissingZero!2728 (index!13090 lt!153350)))))

(declare-fun b!312808 () Bool)

(assert (=> b!312808 (= e!194986 Undefined!2728)))

(declare-fun b!312809 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15994 (_ BitVec 32)) SeekEntryResult!2728)

(assert (=> b!312809 (= e!194984 (seekKeyOrZeroReturnVacant!0 (x!31256 lt!153350) (index!13090 lt!153350) (index!13090 lt!153350) k0!2441 a!3293 mask!3709))))

(declare-fun b!312810 () Bool)

(declare-fun c!49332 () Bool)

(assert (=> b!312810 (= c!49332 (= lt!153349 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!312810 (= e!194985 e!194984)))

(assert (= (and d!68353 c!49333) b!312808))

(assert (= (and d!68353 (not c!49333)) b!312805))

(assert (= (and b!312805 c!49334) b!312806))

(assert (= (and b!312805 (not c!49334)) b!312810))

(assert (= (and b!312810 c!49332) b!312807))

(assert (= (and b!312810 (not c!49332)) b!312809))

(assert (=> d!68353 m!322865))

(assert (=> d!68353 m!322861))

(declare-fun m!322927 () Bool)

(assert (=> d!68353 m!322927))

(assert (=> d!68353 m!322865))

(assert (=> d!68353 m!322867))

(declare-fun m!322929 () Bool)

(assert (=> d!68353 m!322929))

(declare-fun m!322931 () Bool)

(assert (=> d!68353 m!322931))

(declare-fun m!322933 () Bool)

(assert (=> b!312805 m!322933))

(declare-fun m!322935 () Bool)

(assert (=> b!312809 m!322935))

(assert (=> b!312687 d!68353))

(declare-fun d!68361 () Bool)

(assert (=> d!68361 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31094 d!68361))

(declare-fun d!68369 () Bool)

(assert (=> d!68369 (= (array_inv!5531 a!3293) (bvsge (size!7929 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31094 d!68369))

(declare-fun b!312864 () Bool)

(declare-fun e!195016 () Bool)

(declare-fun call!25925 () Bool)

(assert (=> b!312864 (= e!195016 call!25925)))

(declare-fun d!68371 () Bool)

(declare-fun res!169369 () Bool)

(declare-fun e!195017 () Bool)

(assert (=> d!68371 (=> res!169369 e!195017)))

(assert (=> d!68371 (= res!169369 (bvsge #b00000000000000000000000000000000 (size!7929 a!3293)))))

(assert (=> d!68371 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195017)))

(declare-fun bm!25922 () Bool)

(assert (=> bm!25922 (= call!25925 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!312865 () Bool)

(declare-fun e!195018 () Bool)

(assert (=> b!312865 (= e!195018 e!195016)))

(declare-fun lt!153376 () (_ BitVec 64))

(assert (=> b!312865 (= lt!153376 (select (arr!7577 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9652 0))(
  ( (Unit!9653) )
))
(declare-fun lt!153377 () Unit!9652)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15994 (_ BitVec 64) (_ BitVec 32)) Unit!9652)

(assert (=> b!312865 (= lt!153377 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153376 #b00000000000000000000000000000000))))

(assert (=> b!312865 (arrayContainsKey!0 a!3293 lt!153376 #b00000000000000000000000000000000)))

(declare-fun lt!153375 () Unit!9652)

(assert (=> b!312865 (= lt!153375 lt!153377)))

(declare-fun res!169368 () Bool)

(assert (=> b!312865 (= res!169368 (= (seekEntryOrOpen!0 (select (arr!7577 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2728 #b00000000000000000000000000000000)))))

(assert (=> b!312865 (=> (not res!169368) (not e!195016))))

(declare-fun b!312866 () Bool)

(assert (=> b!312866 (= e!195017 e!195018)))

(declare-fun c!49353 () Bool)

(assert (=> b!312866 (= c!49353 (validKeyInArray!0 (select (arr!7577 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!312867 () Bool)

(assert (=> b!312867 (= e!195018 call!25925)))

(assert (= (and d!68371 (not res!169369)) b!312866))

(assert (= (and b!312866 c!49353) b!312865))

(assert (= (and b!312866 (not c!49353)) b!312867))

(assert (= (and b!312865 res!169368) b!312864))

(assert (= (or b!312864 b!312867) bm!25922))

(declare-fun m!322945 () Bool)

(assert (=> bm!25922 m!322945))

(declare-fun m!322947 () Bool)

(assert (=> b!312865 m!322947))

(declare-fun m!322949 () Bool)

(assert (=> b!312865 m!322949))

(declare-fun m!322951 () Bool)

(assert (=> b!312865 m!322951))

(assert (=> b!312865 m!322947))

(declare-fun m!322953 () Bool)

(assert (=> b!312865 m!322953))

(assert (=> b!312866 m!322947))

(assert (=> b!312866 m!322947))

(declare-fun m!322955 () Bool)

(assert (=> b!312866 m!322955))

(assert (=> b!312680 d!68371))

(declare-fun d!68375 () Bool)

(declare-fun res!169378 () Bool)

(declare-fun e!195030 () Bool)

(assert (=> d!68375 (=> res!169378 e!195030)))

(assert (=> d!68375 (= res!169378 (= (select (arr!7577 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68375 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!195030)))

(declare-fun b!312878 () Bool)

(declare-fun e!195031 () Bool)

(assert (=> b!312878 (= e!195030 e!195031)))

(declare-fun res!169379 () Bool)

(assert (=> b!312878 (=> (not res!169379) (not e!195031))))

(assert (=> b!312878 (= res!169379 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7929 a!3293)))))

(declare-fun b!312879 () Bool)

(assert (=> b!312879 (= e!195031 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68375 (not res!169378)) b!312878))

(assert (= (and b!312878 res!169379) b!312879))

(assert (=> d!68375 m!322947))

(declare-fun m!322957 () Bool)

(assert (=> b!312879 m!322957))

(assert (=> b!312679 d!68375))

(declare-fun b!312880 () Bool)

(declare-fun e!195034 () SeekEntryResult!2728)

(assert (=> b!312880 (= e!195034 (Intermediate!2728 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!312881 () Bool)

(declare-fun lt!153387 () SeekEntryResult!2728)

(assert (=> b!312881 (and (bvsge (index!13090 lt!153387) #b00000000000000000000000000000000) (bvslt (index!13090 lt!153387) (size!7929 a!3293)))))

(declare-fun res!169382 () Bool)

(assert (=> b!312881 (= res!169382 (= (select (arr!7577 a!3293) (index!13090 lt!153387)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195033 () Bool)

(assert (=> b!312881 (=> res!169382 e!195033)))

(declare-fun b!312882 () Bool)

(declare-fun e!195036 () SeekEntryResult!2728)

(assert (=> b!312882 (= e!195034 e!195036)))

(declare-fun c!49358 () Bool)

(declare-fun lt!153388 () (_ BitVec 64))

(assert (=> b!312882 (= c!49358 (or (= lt!153388 k0!2441) (= (bvadd lt!153388 lt!153388) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!312883 () Bool)

(declare-fun e!195035 () Bool)

(assert (=> b!312883 (= e!195035 (bvsge (x!31256 lt!153387) #b01111111111111111111111111111110))))

(declare-fun b!312884 () Bool)

(assert (=> b!312884 (and (bvsge (index!13090 lt!153387) #b00000000000000000000000000000000) (bvslt (index!13090 lt!153387) (size!7929 a!3293)))))

(assert (=> b!312884 (= e!195033 (= (select (arr!7577 a!3293) (index!13090 lt!153387)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68377 () Bool)

(assert (=> d!68377 e!195035))

(declare-fun c!49356 () Bool)

(assert (=> d!68377 (= c!49356 (and ((_ is Intermediate!2728) lt!153387) (undefined!3540 lt!153387)))))

(assert (=> d!68377 (= lt!153387 e!195034)))

(declare-fun c!49357 () Bool)

(assert (=> d!68377 (= c!49357 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68377 (= lt!153388 (select (arr!7577 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68377 (validMask!0 mask!3709)))

(assert (=> d!68377 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153387)))

(declare-fun b!312885 () Bool)

(declare-fun e!195032 () Bool)

(assert (=> b!312885 (= e!195035 e!195032)))

(declare-fun res!169381 () Bool)

(assert (=> b!312885 (= res!169381 (and ((_ is Intermediate!2728) lt!153387) (not (undefined!3540 lt!153387)) (bvslt (x!31256 lt!153387) #b01111111111111111111111111111110) (bvsge (x!31256 lt!153387) #b00000000000000000000000000000000) (bvsge (x!31256 lt!153387) #b00000000000000000000000000000000)))))

(assert (=> b!312885 (=> (not res!169381) (not e!195032))))

(declare-fun b!312886 () Bool)

(assert (=> b!312886 (= e!195036 (Intermediate!2728 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!312887 () Bool)

(assert (=> b!312887 (= e!195036 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!312888 () Bool)

(assert (=> b!312888 (and (bvsge (index!13090 lt!153387) #b00000000000000000000000000000000) (bvslt (index!13090 lt!153387) (size!7929 a!3293)))))

(declare-fun res!169380 () Bool)

(assert (=> b!312888 (= res!169380 (= (select (arr!7577 a!3293) (index!13090 lt!153387)) k0!2441))))

(assert (=> b!312888 (=> res!169380 e!195033)))

(assert (=> b!312888 (= e!195032 e!195033)))

(assert (= (and d!68377 c!49357) b!312880))

(assert (= (and d!68377 (not c!49357)) b!312882))

(assert (= (and b!312882 c!49358) b!312886))

(assert (= (and b!312882 (not c!49358)) b!312887))

(assert (= (and d!68377 c!49356) b!312883))

(assert (= (and d!68377 (not c!49356)) b!312885))

(assert (= (and b!312885 res!169381) b!312888))

(assert (= (and b!312888 (not res!169380)) b!312881))

(assert (= (and b!312881 (not res!169382)) b!312884))

(assert (=> d!68377 m!322865))

(declare-fun m!322971 () Bool)

(assert (=> d!68377 m!322971))

(assert (=> d!68377 m!322861))

(assert (=> b!312887 m!322865))

(declare-fun m!322973 () Bool)

(assert (=> b!312887 m!322973))

(assert (=> b!312887 m!322973))

(declare-fun m!322975 () Bool)

(assert (=> b!312887 m!322975))

(declare-fun m!322977 () Bool)

(assert (=> b!312888 m!322977))

(assert (=> b!312881 m!322977))

(assert (=> b!312884 m!322977))

(assert (=> b!312682 d!68377))

(declare-fun d!68381 () Bool)

(declare-fun lt!153399 () (_ BitVec 32))

(declare-fun lt!153398 () (_ BitVec 32))

(assert (=> d!68381 (= lt!153399 (bvmul (bvxor lt!153398 (bvlshr lt!153398 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68381 (= lt!153398 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68381 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169388 (let ((h!5368 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31263 (bvmul (bvxor h!5368 (bvlshr h!5368 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31263 (bvlshr x!31263 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169388 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169388 #b00000000000000000000000000000000))))))

(assert (=> d!68381 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!153399 (bvlshr lt!153399 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!312682 d!68381))

(check-sat (not b!312866) (not b!312809) (not d!68353) (not b!312887) (not b!312746) (not d!68377) (not b!312879) (not bm!25922) (not d!68343) (not b!312865))
(check-sat)
