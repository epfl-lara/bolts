; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29404 () Bool)

(assert start!29404)

(declare-fun b!297618 () Bool)

(declare-datatypes ((Unit!9289 0))(
  ( (Unit!9290) )
))
(declare-fun e!188078 () Unit!9289)

(declare-fun e!188077 () Unit!9289)

(assert (=> b!297618 (= e!188078 e!188077)))

(declare-fun c!47886 () Bool)

(declare-datatypes ((SeekEntryResult!2300 0))(
  ( (MissingZero!2300 (index!11370 (_ BitVec 32))) (Found!2300 (index!11371 (_ BitVec 32))) (Intermediate!2300 (undefined!3112 Bool) (index!11372 (_ BitVec 32)) (x!29551 (_ BitVec 32))) (Undefined!2300) (MissingVacant!2300 (index!11373 (_ BitVec 32))) )
))
(declare-fun lt!147996 () SeekEntryResult!2300)

(assert (=> b!297618 (= c!47886 (is-Intermediate!2300 lt!147996))))

(declare-fun b!297619 () Bool)

(declare-fun e!188073 () Bool)

(declare-fun e!188075 () Bool)

(assert (=> b!297619 (= e!188073 e!188075)))

(declare-fun res!157019 () Bool)

(assert (=> b!297619 (=> (not res!157019) (not e!188075))))

(declare-fun lt!148000 () SeekEntryResult!2300)

(assert (=> b!297619 (= res!157019 (= lt!148000 lt!147996))))

(declare-fun lt!147999 () Unit!9289)

(assert (=> b!297619 (= lt!147999 e!188078)))

(declare-fun c!47885 () Bool)

(declare-datatypes ((array!15069 0))(
  ( (array!15070 (arr!7140 (Array (_ BitVec 32) (_ BitVec 64))) (size!7492 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15069)

(declare-fun k!2524 () (_ BitVec 64))

(assert (=> b!297619 (= c!47885 (or (and (is-Intermediate!2300 lt!147996) (undefined!3112 lt!147996)) (and (is-Intermediate!2300 lt!147996) (= (select (arr!7140 a!3312) (index!11372 lt!147996)) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (is-Intermediate!2300 lt!147996) (= (select (arr!7140 a!3312) (index!11372 lt!147996)) k!2524))))))

(declare-fun b!297620 () Bool)

(declare-fun res!157017 () Bool)

(declare-fun e!188072 () Bool)

(assert (=> b!297620 (=> (not res!157017) (not e!188072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!297620 (= res!157017 (validKeyInArray!0 k!2524))))

(declare-fun b!297621 () Bool)

(declare-fun e!188076 () Bool)

(assert (=> b!297621 (= e!188072 e!188076)))

(declare-fun res!157014 () Bool)

(assert (=> b!297621 (=> (not res!157014) (not e!188076))))

(declare-fun lt!147998 () Bool)

(declare-fun lt!147997 () SeekEntryResult!2300)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!297621 (= res!157014 (or lt!147998 (= lt!147997 (MissingVacant!2300 i!1256))))))

(assert (=> b!297621 (= lt!147998 (= lt!147997 (MissingZero!2300 i!1256)))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15069 (_ BitVec 32)) SeekEntryResult!2300)

(assert (=> b!297621 (= lt!147997 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!297622 () Bool)

(declare-fun res!157013 () Bool)

(assert (=> b!297622 (=> (not res!157013) (not e!188072))))

(declare-fun arrayContainsKey!0 (array!15069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!297622 (= res!157013 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!297623 () Bool)

(declare-fun res!157016 () Bool)

(assert (=> b!297623 (=> (not res!157016) (not e!188076))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15069 (_ BitVec 32)) Bool)

(assert (=> b!297623 (= res!157016 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun lt!147995 () array!15069)

(declare-fun b!297624 () Bool)

(assert (=> b!297624 (= e!188075 (not (= (seekEntryOrOpen!0 k!2524 lt!147995 mask!3809) (Found!2300 i!1256))))))

(declare-fun b!297625 () Bool)

(declare-fun Unit!9291 () Unit!9289)

(assert (=> b!297625 (= e!188078 Unit!9291)))

(assert (=> b!297625 false))

(declare-fun res!157015 () Bool)

(assert (=> start!29404 (=> (not res!157015) (not e!188072))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29404 (= res!157015 (validMask!0 mask!3809))))

(assert (=> start!29404 e!188072))

(assert (=> start!29404 true))

(declare-fun array_inv!5094 (array!15069) Bool)

(assert (=> start!29404 (array_inv!5094 a!3312)))

(declare-fun b!297626 () Bool)

(assert (=> b!297626 (and (= lt!148000 lt!147996) (= (select (store (arr!7140 a!3312) i!1256 k!2524) (index!11372 lt!147996)) k!2524))))

(declare-fun lt!147994 () (_ BitVec 32))

(declare-fun lt!148001 () Unit!9289)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 (array!15069 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9289)

(assert (=> b!297626 (= lt!148001 (lemmaPutValidKeyAtRightPlaceThenFindsHelper1!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!147994 (index!11372 lt!147996) (x!29551 lt!147996) mask!3809))))

(assert (=> b!297626 (and (= (select (arr!7140 a!3312) (index!11372 lt!147996)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11372 lt!147996) i!1256))))

(declare-fun Unit!9292 () Unit!9289)

(assert (=> b!297626 (= e!188077 Unit!9292)))

(declare-fun b!297627 () Bool)

(declare-fun res!157020 () Bool)

(assert (=> b!297627 (=> (not res!157020) (not e!188072))))

(assert (=> b!297627 (= res!157020 (and (= (size!7492 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7492 a!3312))))))

(declare-fun b!297628 () Bool)

(assert (=> b!297628 false))

(declare-fun Unit!9293 () Unit!9289)

(assert (=> b!297628 (= e!188077 Unit!9293)))

(declare-fun b!297629 () Bool)

(assert (=> b!297629 (= e!188076 e!188073)))

(declare-fun res!157018 () Bool)

(assert (=> b!297629 (=> (not res!157018) (not e!188073))))

(assert (=> b!297629 (= res!157018 lt!147998)))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15069 (_ BitVec 32)) SeekEntryResult!2300)

(assert (=> b!297629 (= lt!148000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147994 k!2524 lt!147995 mask!3809))))

(assert (=> b!297629 (= lt!147995 (array!15070 (store (arr!7140 a!3312) i!1256 k!2524) (size!7492 a!3312)))))

(assert (=> b!297629 (= lt!147996 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147994 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!297629 (= lt!147994 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!29404 res!157015) b!297627))

(assert (= (and b!297627 res!157020) b!297620))

(assert (= (and b!297620 res!157017) b!297622))

(assert (= (and b!297622 res!157013) b!297621))

(assert (= (and b!297621 res!157014) b!297623))

(assert (= (and b!297623 res!157016) b!297629))

(assert (= (and b!297629 res!157018) b!297619))

(assert (= (and b!297619 c!47885) b!297625))

(assert (= (and b!297619 (not c!47885)) b!297618))

(assert (= (and b!297618 c!47886) b!297626))

(assert (= (and b!297618 (not c!47886)) b!297628))

(assert (= (and b!297619 res!157019) b!297624))

(declare-fun m!310327 () Bool)

(assert (=> b!297624 m!310327))

(declare-fun m!310329 () Bool)

(assert (=> b!297626 m!310329))

(declare-fun m!310331 () Bool)

(assert (=> b!297626 m!310331))

(declare-fun m!310333 () Bool)

(assert (=> b!297626 m!310333))

(declare-fun m!310335 () Bool)

(assert (=> b!297626 m!310335))

(declare-fun m!310337 () Bool)

(assert (=> b!297621 m!310337))

(declare-fun m!310339 () Bool)

(assert (=> b!297629 m!310339))

(assert (=> b!297629 m!310329))

(declare-fun m!310341 () Bool)

(assert (=> b!297629 m!310341))

(declare-fun m!310343 () Bool)

(assert (=> b!297629 m!310343))

(declare-fun m!310345 () Bool)

(assert (=> start!29404 m!310345))

(declare-fun m!310347 () Bool)

(assert (=> start!29404 m!310347))

(declare-fun m!310349 () Bool)

(assert (=> b!297620 m!310349))

(declare-fun m!310351 () Bool)

(assert (=> b!297622 m!310351))

(assert (=> b!297619 m!310335))

(declare-fun m!310353 () Bool)

(assert (=> b!297623 m!310353))

(push 1)

(assert (not b!297626))

(assert (not b!297621))

(assert (not b!297629))

(assert (not b!297624))

(assert (not start!29404))

(assert (not b!297620))

(assert (not b!297623))

(assert (not b!297622))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!297735 () Bool)

(declare-fun e!188146 () SeekEntryResult!2300)

(assert (=> b!297735 (= e!188146 Undefined!2300)))

(declare-fun e!188145 () SeekEntryResult!2300)

(declare-fun lt!148056 () SeekEntryResult!2300)

(declare-fun b!297737 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15069 (_ BitVec 32)) SeekEntryResult!2300)

(assert (=> b!297737 (= e!188145 (seekKeyOrZeroReturnVacant!0 (x!29551 lt!148056) (index!11372 lt!148056) (index!11372 lt!148056) k!2524 lt!147995 mask!3809))))

(declare-fun b!297738 () Bool)

(declare-fun e!188144 () SeekEntryResult!2300)

(assert (=> b!297738 (= e!188144 (Found!2300 (index!11372 lt!148056)))))

(declare-fun b!297736 () Bool)

(declare-fun c!47925 () Bool)

(declare-fun lt!148057 () (_ BitVec 64))

(assert (=> b!297736 (= c!47925 (= lt!148057 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!297736 (= e!188144 e!188145)))

(declare-fun d!67109 () Bool)

(declare-fun lt!148055 () SeekEntryResult!2300)

(assert (=> d!67109 (and (or (is-Undefined!2300 lt!148055) (not (is-Found!2300 lt!148055)) (and (bvsge (index!11371 lt!148055) #b00000000000000000000000000000000) (bvslt (index!11371 lt!148055) (size!7492 lt!147995)))) (or (is-Undefined!2300 lt!148055) (is-Found!2300 lt!148055) (not (is-MissingZero!2300 lt!148055)) (and (bvsge (index!11370 lt!148055) #b00000000000000000000000000000000) (bvslt (index!11370 lt!148055) (size!7492 lt!147995)))) (or (is-Undefined!2300 lt!148055) (is-Found!2300 lt!148055) (is-MissingZero!2300 lt!148055) (not (is-MissingVacant!2300 lt!148055)) (and (bvsge (index!11373 lt!148055) #b00000000000000000000000000000000) (bvslt (index!11373 lt!148055) (size!7492 lt!147995)))) (or (is-Undefined!2300 lt!148055) (ite (is-Found!2300 lt!148055) (= (select (arr!7140 lt!147995) (index!11371 lt!148055)) k!2524) (ite (is-MissingZero!2300 lt!148055) (= (select (arr!7140 lt!147995) (index!11370 lt!148055)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2300 lt!148055) (= (select (arr!7140 lt!147995) (index!11373 lt!148055)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67109 (= lt!148055 e!188146)))

(declare-fun c!47923 () Bool)

(assert (=> d!67109 (= c!47923 (and (is-Intermediate!2300 lt!148056) (undefined!3112 lt!148056)))))

(assert (=> d!67109 (= lt!148056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 lt!147995 mask!3809))))

(assert (=> d!67109 (validMask!0 mask!3809)))

(assert (=> d!67109 (= (seekEntryOrOpen!0 k!2524 lt!147995 mask!3809) lt!148055)))

(declare-fun b!297739 () Bool)

(assert (=> b!297739 (= e!188146 e!188144)))

(assert (=> b!297739 (= lt!148057 (select (arr!7140 lt!147995) (index!11372 lt!148056)))))

(declare-fun c!47924 () Bool)

(assert (=> b!297739 (= c!47924 (= lt!148057 k!2524))))

(declare-fun b!297740 () Bool)

(assert (=> b!297740 (= e!188145 (MissingZero!2300 (index!11372 lt!148056)))))

(assert (= (and d!67109 c!47923) b!297735))

(assert (= (and d!67109 (not c!47923)) b!297739))

(assert (= (and b!297739 c!47924) b!297738))

(assert (= (and b!297739 (not c!47924)) b!297736))

(assert (= (and b!297736 c!47925) b!297740))

(assert (= (and b!297736 (not c!47925)) b!297737))

(declare-fun m!310423 () Bool)

(assert (=> b!297737 m!310423))

(declare-fun m!310425 () Bool)

(assert (=> d!67109 m!310425))

(assert (=> d!67109 m!310343))

(declare-fun m!310427 () Bool)

(assert (=> d!67109 m!310427))

(declare-fun m!310429 () Bool)

(assert (=> d!67109 m!310429))

(declare-fun m!310431 () Bool)

(assert (=> d!67109 m!310431))

(assert (=> d!67109 m!310343))

(assert (=> d!67109 m!310345))

(declare-fun m!310433 () Bool)

(assert (=> b!297739 m!310433))

(assert (=> b!297624 d!67109))

(declare-fun d!67127 () Bool)

(assert (=> d!67127 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29404 d!67127))

(declare-fun d!67133 () Bool)

(assert (=> d!67133 (= (array_inv!5094 a!3312) (bvsge (size!7492 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29404 d!67133))

(declare-fun bm!25764 () Bool)

(declare-fun call!25767 () Bool)

(assert (=> bm!25764 (= call!25767 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!297815 () Bool)

(declare-fun e!188193 () Bool)

(declare-fun e!188192 () Bool)

(assert (=> b!297815 (= e!188193 e!188192)))

(declare-fun lt!148085 () (_ BitVec 64))

(assert (=> b!297815 (= lt!148085 (select (arr!7140 a!3312) #b00000000000000000000000000000000))))

(declare-fun lt!148086 () Unit!9289)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15069 (_ BitVec 64) (_ BitVec 32)) Unit!9289)

(assert (=> b!297815 (= lt!148086 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148085 #b00000000000000000000000000000000))))

(assert (=> b!297815 (arrayContainsKey!0 a!3312 lt!148085 #b00000000000000000000000000000000)))

(declare-fun lt!148084 () Unit!9289)

(assert (=> b!297815 (= lt!148084 lt!148086)))

(declare-fun res!157079 () Bool)

(assert (=> b!297815 (= res!157079 (= (seekEntryOrOpen!0 (select (arr!7140 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2300 #b00000000000000000000000000000000)))))

(assert (=> b!297815 (=> (not res!157079) (not e!188192))))

(declare-fun b!297816 () Bool)

(declare-fun e!188191 () Bool)

(assert (=> b!297816 (= e!188191 e!188193)))

(declare-fun c!47952 () Bool)

(assert (=> b!297816 (= c!47952 (validKeyInArray!0 (select (arr!7140 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!67135 () Bool)

(declare-fun res!157078 () Bool)

(assert (=> d!67135 (=> res!157078 e!188191)))

(assert (=> d!67135 (= res!157078 (bvsge #b00000000000000000000000000000000 (size!7492 a!3312)))))

(assert (=> d!67135 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188191)))

(declare-fun b!297817 () Bool)

(assert (=> b!297817 (= e!188193 call!25767)))

(declare-fun b!297818 () Bool)

(assert (=> b!297818 (= e!188192 call!25767)))

(assert (= (and d!67135 (not res!157078)) b!297816))

(assert (= (and b!297816 c!47952) b!297815))

(assert (= (and b!297816 (not c!47952)) b!297817))

(assert (= (and b!297815 res!157079) b!297818))

(assert (= (or b!297818 b!297817) bm!25764))

(declare-fun m!310475 () Bool)

(assert (=> bm!25764 m!310475))

(declare-fun m!310477 () Bool)

(assert (=> b!297815 m!310477))

(declare-fun m!310479 () Bool)

(assert (=> b!297815 m!310479))

(declare-fun m!310481 () Bool)

(assert (=> b!297815 m!310481))

(assert (=> b!297815 m!310477))

(declare-fun m!310483 () Bool)

(assert (=> b!297815 m!310483))

(assert (=> b!297816 m!310477))

(assert (=> b!297816 m!310477))

(declare-fun m!310485 () Bool)

(assert (=> b!297816 m!310485))

(assert (=> b!297623 d!67135))

(declare-fun b!297840 () Bool)

(declare-fun e!188208 () SeekEntryResult!2300)

(assert (=> b!297840 (= e!188208 (Intermediate!2300 true lt!147994 #b00000000000000000000000000000000))))

(declare-fun b!297841 () Bool)

(declare-fun e!188209 () Bool)

(declare-fun lt!148101 () SeekEntryResult!2300)

(assert (=> b!297841 (= e!188209 (bvsge (x!29551 lt!148101) #b01111111111111111111111111111110))))

(declare-fun b!297842 () Bool)

(assert (=> b!297842 (and (bvsge (index!11372 lt!148101) #b00000000000000000000000000000000) (bvslt (index!11372 lt!148101) (size!7492 lt!147995)))))

(declare-fun res!157090 () Bool)

(assert (=> b!297842 (= res!157090 (= (select (arr!7140 lt!147995) (index!11372 lt!148101)) k!2524))))

(declare-fun e!188207 () Bool)

(assert (=> b!297842 (=> res!157090 e!188207)))

(declare-fun e!188211 () Bool)

(assert (=> b!297842 (= e!188211 e!188207)))

(declare-fun b!297843 () Bool)

(assert (=> b!297843 (= e!188209 e!188211)))

(declare-fun res!157089 () Bool)

(assert (=> b!297843 (= res!157089 (and (is-Intermediate!2300 lt!148101) (not (undefined!3112 lt!148101)) (bvslt (x!29551 lt!148101) #b01111111111111111111111111111110) (bvsge (x!29551 lt!148101) #b00000000000000000000000000000000) (bvsge (x!29551 lt!148101) #b00000000000000000000000000000000)))))

(assert (=> b!297843 (=> (not res!157089) (not e!188211))))

(declare-fun d!67147 () Bool)

(assert (=> d!67147 e!188209))

(declare-fun c!47960 () Bool)

(assert (=> d!67147 (= c!47960 (and (is-Intermediate!2300 lt!148101) (undefined!3112 lt!148101)))))

(assert (=> d!67147 (= lt!148101 e!188208)))

(declare-fun c!47959 () Bool)

(assert (=> d!67147 (= c!47959 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148100 () (_ BitVec 64))

(assert (=> d!67147 (= lt!148100 (select (arr!7140 lt!147995) lt!147994))))

(assert (=> d!67147 (validMask!0 mask!3809)))

(assert (=> d!67147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147994 k!2524 lt!147995 mask!3809) lt!148101)))

(declare-fun b!297844 () Bool)

(declare-fun e!188210 () SeekEntryResult!2300)

(assert (=> b!297844 (= e!188208 e!188210)))

(declare-fun c!47961 () Bool)

(assert (=> b!297844 (= c!47961 (or (= lt!148100 k!2524) (= (bvadd lt!148100 lt!148100) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!297845 () Bool)

(assert (=> b!297845 (and (bvsge (index!11372 lt!148101) #b00000000000000000000000000000000) (bvslt (index!11372 lt!148101) (size!7492 lt!147995)))))

(declare-fun res!157091 () Bool)

(assert (=> b!297845 (= res!157091 (= (select (arr!7140 lt!147995) (index!11372 lt!148101)) #b0000000000000000000000000000000000000000000000000000000000000000))))

