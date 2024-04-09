; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29652 () Bool)

(assert start!29652)

(declare-fun b!298998 () Bool)

(declare-fun res!157721 () Bool)

(declare-fun e!188885 () Bool)

(assert (=> b!298998 (=> (not res!157721) (not e!188885))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298998 (= res!157721 (validKeyInArray!0 k!2524))))

(declare-fun b!298999 () Bool)

(declare-fun res!157718 () Bool)

(assert (=> b!298999 (=> (not res!157718) (not e!188885))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15119 0))(
  ( (array!15120 (arr!7159 (Array (_ BitVec 32) (_ BitVec 64))) (size!7511 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15119)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!298999 (= res!157718 (and (= (size!7511 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7511 a!3312))))))

(declare-fun b!299000 () Bool)

(declare-fun e!188886 () Bool)

(declare-fun e!188883 () Bool)

(assert (=> b!299000 (= e!188886 e!188883)))

(declare-fun res!157725 () Bool)

(assert (=> b!299000 (=> (not res!157725) (not e!188883))))

(declare-fun lt!148745 () Bool)

(declare-datatypes ((SeekEntryResult!2319 0))(
  ( (MissingZero!2319 (index!11449 (_ BitVec 32))) (Found!2319 (index!11450 (_ BitVec 32))) (Intermediate!2319 (undefined!3131 Bool) (index!11451 (_ BitVec 32)) (x!29657 (_ BitVec 32))) (Undefined!2319) (MissingVacant!2319 (index!11452 (_ BitVec 32))) )
))
(declare-fun lt!148741 () SeekEntryResult!2319)

(assert (=> b!299000 (= res!157725 (and (or lt!148745 (not (undefined!3131 lt!148741))) (not lt!148745) (= (select (arr!7159 a!3312) (index!11451 lt!148741)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!299000 (= lt!148745 (not (is-Intermediate!2319 lt!148741)))))

(declare-fun b!299001 () Bool)

(declare-fun res!157720 () Bool)

(declare-fun e!188884 () Bool)

(assert (=> b!299001 (=> (not res!157720) (not e!188884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15119 (_ BitVec 32)) Bool)

(assert (=> b!299001 (= res!157720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!299002 () Bool)

(declare-fun lt!148742 () array!15119)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15119 (_ BitVec 32)) SeekEntryResult!2319)

(assert (=> b!299002 (= e!188883 (not (= (seekEntryOrOpen!0 k!2524 lt!148742 mask!3809) (Found!2319 i!1256))))))

(declare-fun lt!148738 () (_ BitVec 32))

(declare-datatypes ((Unit!9318 0))(
  ( (Unit!9319) )
))
(declare-fun lt!148744 () Unit!9318)

(declare-fun lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 (array!15119 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!9318)

(assert (=> b!299002 (= lt!148744 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!148738 (index!11451 lt!148741) (x!29657 lt!148741) mask!3809))))

(assert (=> b!299002 (= (index!11451 lt!148741) i!1256)))

(declare-fun b!299003 () Bool)

(assert (=> b!299003 (= e!188884 e!188886)))

(declare-fun res!157719 () Bool)

(assert (=> b!299003 (=> (not res!157719) (not e!188886))))

(declare-fun lt!148740 () SeekEntryResult!2319)

(declare-fun lt!148739 () Bool)

(assert (=> b!299003 (= res!157719 (and (not lt!148739) (= lt!148740 (MissingVacant!2319 i!1256))))))

(declare-fun lt!148743 () SeekEntryResult!2319)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15119 (_ BitVec 32)) SeekEntryResult!2319)

(assert (=> b!299003 (= lt!148743 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148738 k!2524 lt!148742 mask!3809))))

(assert (=> b!299003 (= lt!148742 (array!15120 (store (arr!7159 a!3312) i!1256 k!2524) (size!7511 a!3312)))))

(assert (=> b!299003 (= lt!148741 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148738 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299003 (= lt!148738 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!299004 () Bool)

(declare-fun res!157724 () Bool)

(assert (=> b!299004 (=> (not res!157724) (not e!188885))))

(declare-fun arrayContainsKey!0 (array!15119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299004 (= res!157724 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!157722 () Bool)

(assert (=> start!29652 (=> (not res!157722) (not e!188885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29652 (= res!157722 (validMask!0 mask!3809))))

(assert (=> start!29652 e!188885))

(assert (=> start!29652 true))

(declare-fun array_inv!5113 (array!15119) Bool)

(assert (=> start!29652 (array_inv!5113 a!3312)))

(declare-fun b!298997 () Bool)

(assert (=> b!298997 (= e!188885 e!188884)))

(declare-fun res!157723 () Bool)

(assert (=> b!298997 (=> (not res!157723) (not e!188884))))

(assert (=> b!298997 (= res!157723 (or lt!148739 (= lt!148740 (MissingVacant!2319 i!1256))))))

(assert (=> b!298997 (= lt!148739 (= lt!148740 (MissingZero!2319 i!1256)))))

(assert (=> b!298997 (= lt!148740 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!29652 res!157722) b!298999))

(assert (= (and b!298999 res!157718) b!298998))

(assert (= (and b!298998 res!157721) b!299004))

(assert (= (and b!299004 res!157724) b!298997))

(assert (= (and b!298997 res!157723) b!299001))

(assert (= (and b!299001 res!157720) b!299003))

(assert (= (and b!299003 res!157719) b!299000))

(assert (= (and b!299000 res!157725) b!299002))

(declare-fun m!311389 () Bool)

(assert (=> start!29652 m!311389))

(declare-fun m!311391 () Bool)

(assert (=> start!29652 m!311391))

(declare-fun m!311393 () Bool)

(assert (=> b!299004 m!311393))

(declare-fun m!311395 () Bool)

(assert (=> b!299000 m!311395))

(declare-fun m!311397 () Bool)

(assert (=> b!299003 m!311397))

(declare-fun m!311399 () Bool)

(assert (=> b!299003 m!311399))

(declare-fun m!311401 () Bool)

(assert (=> b!299003 m!311401))

(declare-fun m!311403 () Bool)

(assert (=> b!299003 m!311403))

(declare-fun m!311405 () Bool)

(assert (=> b!298997 m!311405))

(declare-fun m!311407 () Bool)

(assert (=> b!299001 m!311407))

(declare-fun m!311409 () Bool)

(assert (=> b!299002 m!311409))

(declare-fun m!311411 () Bool)

(assert (=> b!299002 m!311411))

(declare-fun m!311413 () Bool)

(assert (=> b!298998 m!311413))

(push 1)

(assert (not start!29652))

(assert (not b!299004))

(assert (not b!298998))

(assert (not b!299002))

(assert (not b!299001))

(assert (not b!298997))

(assert (not b!299003))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!299113 () Bool)

(declare-fun e!188952 () SeekEntryResult!2319)

(declare-fun lt!148822 () SeekEntryResult!2319)

(assert (=> b!299113 (= e!188952 (MissingZero!2319 (index!11451 lt!148822)))))

(declare-fun b!299114 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15119 (_ BitVec 32)) SeekEntryResult!2319)

(assert (=> b!299114 (= e!188952 (seekKeyOrZeroReturnVacant!0 (x!29657 lt!148822) (index!11451 lt!148822) (index!11451 lt!148822) k!2524 lt!148742 mask!3809))))

(declare-fun b!299115 () Bool)

(declare-fun c!48253 () Bool)

(declare-fun lt!148820 () (_ BitVec 64))

(assert (=> b!299115 (= c!48253 (= lt!148820 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188950 () SeekEntryResult!2319)

(assert (=> b!299115 (= e!188950 e!188952)))

(declare-fun b!299116 () Bool)

(assert (=> b!299116 (= e!188950 (Found!2319 (index!11451 lt!148822)))))

(declare-fun b!299117 () Bool)

(declare-fun e!188951 () SeekEntryResult!2319)

(assert (=> b!299117 (= e!188951 e!188950)))

(assert (=> b!299117 (= lt!148820 (select (arr!7159 lt!148742) (index!11451 lt!148822)))))

(declare-fun c!48252 () Bool)

(assert (=> b!299117 (= c!48252 (= lt!148820 k!2524))))

(declare-fun b!299118 () Bool)

(assert (=> b!299118 (= e!188951 Undefined!2319)))

(declare-fun d!67393 () Bool)

(declare-fun lt!148821 () SeekEntryResult!2319)

(assert (=> d!67393 (and (or (is-Undefined!2319 lt!148821) (not (is-Found!2319 lt!148821)) (and (bvsge (index!11450 lt!148821) #b00000000000000000000000000000000) (bvslt (index!11450 lt!148821) (size!7511 lt!148742)))) (or (is-Undefined!2319 lt!148821) (is-Found!2319 lt!148821) (not (is-MissingZero!2319 lt!148821)) (and (bvsge (index!11449 lt!148821) #b00000000000000000000000000000000) (bvslt (index!11449 lt!148821) (size!7511 lt!148742)))) (or (is-Undefined!2319 lt!148821) (is-Found!2319 lt!148821) (is-MissingZero!2319 lt!148821) (not (is-MissingVacant!2319 lt!148821)) (and (bvsge (index!11452 lt!148821) #b00000000000000000000000000000000) (bvslt (index!11452 lt!148821) (size!7511 lt!148742)))) (or (is-Undefined!2319 lt!148821) (ite (is-Found!2319 lt!148821) (= (select (arr!7159 lt!148742) (index!11450 lt!148821)) k!2524) (ite (is-MissingZero!2319 lt!148821) (= (select (arr!7159 lt!148742) (index!11449 lt!148821)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2319 lt!148821) (= (select (arr!7159 lt!148742) (index!11452 lt!148821)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67393 (= lt!148821 e!188951)))

(declare-fun c!48254 () Bool)

(assert (=> d!67393 (= c!48254 (and (is-Intermediate!2319 lt!148822) (undefined!3131 lt!148822)))))

(assert (=> d!67393 (= lt!148822 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 lt!148742 mask!3809))))

(assert (=> d!67393 (validMask!0 mask!3809)))

(assert (=> d!67393 (= (seekEntryOrOpen!0 k!2524 lt!148742 mask!3809) lt!148821)))

(assert (= (and d!67393 c!48254) b!299118))

(assert (= (and d!67393 (not c!48254)) b!299117))

(assert (= (and b!299117 c!48252) b!299116))

(assert (= (and b!299117 (not c!48252)) b!299115))

(assert (= (and b!299115 c!48253) b!299113))

(assert (= (and b!299115 (not c!48253)) b!299114))

(declare-fun m!311481 () Bool)

(assert (=> b!299114 m!311481))

(declare-fun m!311483 () Bool)

(assert (=> b!299117 m!311483))

(assert (=> d!67393 m!311403))

(declare-fun m!311485 () Bool)

(assert (=> d!67393 m!311485))

(assert (=> d!67393 m!311403))

(declare-fun m!311487 () Bool)

(assert (=> d!67393 m!311487))

(declare-fun m!311489 () Bool)

(assert (=> d!67393 m!311489))

(declare-fun m!311491 () Bool)

(assert (=> d!67393 m!311491))

(assert (=> d!67393 m!311389))

(assert (=> b!299002 d!67393))

(declare-fun b!299205 () Bool)

(declare-fun e!189001 () (_ BitVec 32))

(assert (=> b!299205 (= e!189001 lt!148738)))

(declare-fun b!299206 () Bool)

(declare-fun e!189005 () Unit!9318)

(declare-fun Unit!9326 () Unit!9318)

(assert (=> b!299206 (= e!189005 Unit!9326)))

(declare-fun b!299207 () Bool)

(declare-fun c!48293 () Bool)

(assert (=> b!299207 (= c!48293 (or (= (select (arr!7159 a!3312) lt!148738) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7159 a!3312) lt!148738) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!189004 () Unit!9318)

(assert (=> b!299207 (= e!189005 e!189004)))

(declare-fun call!25806 () (_ BitVec 32))

(declare-fun e!189000 () Unit!9318)

(declare-fun b!299208 () Bool)

(assert (=> b!299208 (= e!189000 (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) call!25806 (index!11451 lt!148741) (x!29657 lt!148741) mask!3809))))

(declare-fun e!189002 () Bool)

(declare-fun b!299209 () Bool)

(assert (=> b!299209 (= e!189002 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148738 k!2524 (array!15120 (store (arr!7159 a!3312) i!1256 k!2524) (size!7511 a!3312)) mask!3809) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148738 k!2524 a!3312 mask!3809)))))

(declare-fun b!299210 () Bool)

(assert (=> b!299210 false))

(declare-fun e!189003 () Unit!9318)

(declare-fun Unit!9327 () Unit!9318)

(assert (=> b!299210 (= e!189003 Unit!9327)))

(declare-fun d!67399 () Bool)

(assert (=> d!67399 e!189002))

(declare-fun res!157804 () Bool)

(assert (=> d!67399 (=> (not res!157804) (not e!189002))))

(assert (=> d!67399 (= res!157804 (and (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7511 a!3312))))))

(declare-fun lt!148862 () Unit!9318)

(assert (=> d!67399 (= lt!148862 e!189000)))

(declare-fun c!48290 () Bool)

(assert (=> d!67399 (= c!48290 (= #b00000000000000000000000000000000 (x!29657 lt!148741)))))

(assert (=> d!67399 (validMask!0 mask!3809)))

(assert (=> d!67399 (= (lemmaPutValidKeyAtRightPlaceThenFindsHelper2!0 a!3312 i!1256 k!2524 #b00000000000000000000000000000000 lt!148738 (index!11451 lt!148741) (x!29657 lt!148741) mask!3809) lt!148862)))

(declare-fun b!299211 () Bool)

(declare-fun Unit!9329 () Unit!9318)

(assert (=> b!299211 (= e!189004 Unit!9329)))

(declare-fun c!48294 () Bool)

(declare-fun call!25805 () SeekEntryResult!2319)

(assert (=> b!299211 (= c!48294 (is-Intermediate!2319 call!25805))))

(declare-fun lt!148860 () Unit!9318)

(assert (=> b!299211 (= lt!148860 e!189003)))

(assert (=> b!299211 false))

(declare-fun b!299212 () Bool)

(declare-fun Unit!9331 () Unit!9318)

(assert (=> b!299212 (= e!189004 Unit!9331)))

(assert (=> b!299212 (= call!25805 (Intermediate!2319 false lt!148738 (x!29657 lt!148741)))))

(declare-fun lt!148864 () Unit!9318)

(declare-fun Unit!9333 () Unit!9318)

(assert (=> b!299212 (= lt!148864 Unit!9333)))

(assert (=> b!299212 false))

(declare-fun bm!25802 () Bool)

(assert (=> bm!25802 (= call!25805 (seekKeyOrZeroOrLongMinValue!0 (ite c!48293 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!189001 k!2524 a!3312 mask!3809))))

(declare-fun c!48291 () Bool)

(assert (=> bm!25802 (= c!48291 c!48293)))

(declare-fun b!299213 () Bool)

(declare-fun Unit!9336 () Unit!9318)

(assert (=> b!299213 (= e!189000 Unit!9336)))

(declare-fun c!48292 () Bool)

(assert (=> b!299213 (= c!48292 (not (= (index!11451 lt!148741) lt!148738)))))

(declare-fun lt!148863 () Unit!9318)

(assert (=> b!299213 (= lt!148863 e!189005)))

(assert (=> b!299213 (= lt!148738 (index!11451 lt!148741))))

(declare-fun lt!148861 () Unit!9318)

(declare-fun Unit!9338 () Unit!9318)

(assert (=> b!299213 (= lt!148861 Unit!9338)))

(assert (=> b!299213 (= (select (arr!7159 a!3312) lt!148738) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!299214 () Bool)

(declare-fun Unit!9339 () Unit!9318)

(assert (=> b!299214 (= e!189003 Unit!9339)))

(declare-fun bm!25803 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!25803 (= call!25806 (nextIndex!0 lt!148738 #b00000000000000000000000000000000 mask!3809))))

(declare-fun b!299215 () Bool)

(assert (=> b!299215 (= e!189001 call!25806)))

(assert (= (and d!67399 c!48290) b!299213))

(assert (= (and d!67399 (not c!48290)) b!299208))

(assert (= (and b!299213 c!48292) b!299207))

(assert (= (and b!299213 (not c!48292)) b!299206))

(assert (= (and b!299207 c!48293) b!299212))

(assert (= (and b!299207 (not c!48293)) b!299211))

(assert (= (and b!299211 c!48294) b!299214))

(assert (= (and b!299211 (not c!48294)) b!299210))

(assert (= (or b!299212 b!299211) bm!25802))

(assert (= (and bm!25802 c!48291) b!299205))

(assert (= (and bm!25802 (not c!48291)) b!299215))

(assert (= (or b!299215 b!299208) bm!25803))

(assert (= (and d!67399 res!157804) b!299209))

(declare-fun m!311519 () Bool)

(assert (=> bm!25802 m!311519))

(assert (=> b!299209 m!311399))

(declare-fun m!311521 () Bool)

(assert (=> b!299209 m!311521))

(assert (=> b!299209 m!311401))

(declare-fun m!311523 () Bool)

(assert (=> bm!25803 m!311523))

(declare-fun m!311525 () Bool)

(assert (=> b!299207 m!311525))

(assert (=> d!67399 m!311389))

(declare-fun m!311527 () Bool)

(assert (=> b!299208 m!311527))

(assert (=> b!299213 m!311525))

(assert (=> b!299002 d!67399))

(declare-fun b!299261 () Bool)

(declare-fun e!189033 () Bool)

(declare-fun call!25813 () Bool)

(assert (=> b!299261 (= e!189033 call!25813)))

(declare-fun b!299262 () Bool)

(declare-fun e!189034 () Bool)

(assert (=> b!299262 (= e!189034 call!25813)))

(declare-fun b!299263 () Bool)

(declare-fun e!189035 () Bool)

(assert (=> b!299263 (= e!189035 e!189034)))

(declare-fun c!48313 () Bool)

(assert (=> b!299263 (= c!48313 (validKeyInArray!0 (select (arr!7159 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!299264 () Bool)

(assert (=> b!299264 (= e!189034 e!189033)))

(declare-fun lt!148891 () (_ BitVec 64))

(assert (=> b!299264 (= lt!148891 (select (arr!7159 a!3312) #b00000000000000000000000000000000))))

(declare-fun lt!148892 () Unit!9318)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15119 (_ BitVec 64) (_ BitVec 32)) Unit!9318)

(assert (=> b!299264 (= lt!148892 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148891 #b00000000000000000000000000000000))))

(assert (=> b!299264 (arrayContainsKey!0 a!3312 lt!148891 #b00000000000000000000000000000000)))

(declare-fun lt!148893 () Unit!9318)

(assert (=> b!299264 (= lt!148893 lt!148892)))

(declare-fun res!157815 () Bool)

(assert (=> b!299264 (= res!157815 (= (seekEntryOrOpen!0 (select (arr!7159 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2319 #b00000000000000000000000000000000)))))

(assert (=> b!299264 (=> (not res!157815) (not e!189033))))

(declare-fun d!67409 () Bool)

(declare-fun res!157814 () Bool)

(assert (=> d!67409 (=> res!157814 e!189035)))

(assert (=> d!67409 (= res!157814 (bvsge #b00000000000000000000000000000000 (size!7511 a!3312)))))

(assert (=> d!67409 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189035)))

(declare-fun bm!25810 () Bool)

(assert (=> bm!25810 (= call!25813 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67409 (not res!157814)) b!299263))

(assert (= (and b!299263 c!48313) b!299264))

(assert (= (and b!299263 (not c!48313)) b!299262))

(assert (= (and b!299264 res!157815) b!299261))

(assert (= (or b!299261 b!299262) bm!25810))

(declare-fun m!311547 () Bool)

(assert (=> b!299263 m!311547))

(assert (=> b!299263 m!311547))

(declare-fun m!311549 () Bool)

(assert (=> b!299263 m!311549))

(assert (=> b!299264 m!311547))

(declare-fun m!311551 () Bool)

(assert (=> b!299264 m!311551))

(declare-fun m!311553 () Bool)

(assert (=> b!299264 m!311553))

(assert (=> b!299264 m!311547))

(declare-fun m!311555 () Bool)

(assert (=> b!299264 m!311555))

(declare-fun m!311557 () Bool)

(assert (=> bm!25810 m!311557))

(assert (=> b!299001 d!67409))

(declare-fun d!67415 () Bool)

(declare-fun res!157822 () Bool)

(declare-fun e!189043 () Bool)

(assert (=> d!67415 (=> res!157822 e!189043)))

(assert (=> d!67415 (= res!157822 (= (select (arr!7159 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67415 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!189043)))

(declare-fun b!299273 () Bool)

(declare-fun e!189044 () Bool)

(assert (=> b!299273 (= e!189043 e!189044)))

(declare-fun res!157823 () Bool)

(assert (=> b!299273 (=> (not res!157823) (not e!189044))))

(assert (=> b!299273 (= res!157823 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7511 a!3312)))))

(declare-fun b!299274 () Bool)

(assert (=> b!299274 (= e!189044 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67415 (not res!157822)) b!299273))

(assert (= (and b!299273 res!157823) b!299274))

(assert (=> d!67415 m!311547))

(declare-fun m!311571 () Bool)

(assert (=> b!299274 m!311571))

(assert (=> b!299004 d!67415))

(declare-fun b!299321 () Bool)

(declare-fun e!189076 () SeekEntryResult!2319)

(assert (=> b!299321 (= e!189076 (Intermediate!2319 false lt!148738 #b00000000000000000000000000000000))))

(declare-fun b!299322 () Bool)

(declare-fun e!189074 () Bool)

(declare-fun lt!148912 () SeekEntryResult!2319)

(assert (=> b!299322 (= e!189074 (bvsge (x!29657 lt!148912) #b01111111111111111111111111111110))))

(declare-fun b!299323 () Bool)

(assert (=> b!299323 (= e!189076 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148738 #b00000000000000000000000000000000 mask!3809) k!2524 lt!148742 mask!3809))))

(declare-fun b!299324 () Bool)

(assert (=> b!299324 (and (bvsge (index!11451 lt!148912) #b00000000000000000000000000000000) (bvslt (index!11451 lt!148912) (size!7511 lt!148742)))))

(declare-fun res!157838 () Bool)

(assert (=> b!299324 (= res!157838 (= (select (arr!7159 lt!148742) (index!11451 lt!148912)) k!2524))))

(declare-fun e!189075 () Bool)

(assert (=> b!299324 (=> res!157838 e!189075)))

(declare-fun e!189072 () Bool)

(assert (=> b!299324 (= e!189072 e!189075)))

(declare-fun b!299325 () Bool)

(assert (=> b!299325 (and (bvsge (index!11451 lt!148912) #b00000000000000000000000000000000) (bvslt (index!11451 lt!148912) (size!7511 lt!148742)))))

(declare-fun res!157837 () Bool)

(assert (=> b!299325 (= res!157837 (= (select (arr!7159 lt!148742) (index!11451 lt!148912)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299325 (=> res!157837 e!189075)))

(declare-fun b!299326 () Bool)

(assert (=> b!299326 (and (bvsge (index!11451 lt!148912) #b00000000000000000000000000000000) (bvslt (index!11451 lt!148912) (size!7511 lt!148742)))))

(assert (=> b!299326 (= e!189075 (= (select (arr!7159 lt!148742) (index!11451 lt!148912)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299327 () Bool)

(declare-fun e!189073 () SeekEntryResult!2319)

(assert (=> b!299327 (= e!189073 (Intermediate!2319 true lt!148738 #b00000000000000000000000000000000))))

(declare-fun b!299328 () Bool)

(assert (=> b!299328 (= e!189074 e!189072)))

(declare-fun res!157836 () Bool)

(assert (=> b!299328 (= res!157836 (and (is-Intermediate!2319 lt!148912) (not (undefined!3131 lt!148912)) (bvslt (x!29657 lt!148912) #b01111111111111111111111111111110) (bvsge (x!29657 lt!148912) #b00000000000000000000000000000000) (bvsge (x!29657 lt!148912) #b00000000000000000000000000000000)))))

(assert (=> b!299328 (=> (not res!157836) (not e!189072))))

(declare-fun d!67419 () Bool)

(assert (=> d!67419 e!189074))

(declare-fun c!48334 () Bool)

(assert (=> d!67419 (= c!48334 (and (is-Intermediate!2319 lt!148912) (undefined!3131 lt!148912)))))

(assert (=> d!67419 (= lt!148912 e!189073)))

(declare-fun c!48332 () Bool)

(assert (=> d!67419 (= c!48332 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148913 () (_ BitVec 64))

(assert (=> d!67419 (= lt!148913 (select (arr!7159 lt!148742) lt!148738))))

(assert (=> d!67419 (validMask!0 mask!3809)))

(assert (=> d!67419 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148738 k!2524 lt!148742 mask!3809) lt!148912)))

(declare-fun b!299329 () Bool)

(assert (=> b!299329 (= e!189073 e!189076)))

(declare-fun c!48333 () Bool)

(assert (=> b!299329 (= c!48333 (or (= lt!148913 k!2524) (= (bvadd lt!148913 lt!148913) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67419 c!48332) b!299327))

(assert (= (and d!67419 (not c!48332)) b!299329))

(assert (= (and b!299329 c!48333) b!299321))

(assert (= (and b!299329 (not c!48333)) b!299323))

(assert (= (and d!67419 c!48334) b!299322))

(assert (= (and d!67419 (not c!48334)) b!299328))

(assert (= (and b!299328 res!157836) b!299324))

(assert (= (and b!299324 (not res!157838)) b!299325))

(assert (= (and b!299325 (not res!157837)) b!299326))

(declare-fun m!311587 () Bool)

(assert (=> b!299326 m!311587))

(assert (=> b!299324 m!311587))

(declare-fun m!311589 () Bool)

(assert (=> d!67419 m!311589))

(assert (=> d!67419 m!311389))

(assert (=> b!299323 m!311523))

(assert (=> b!299323 m!311523))

(declare-fun m!311591 () Bool)

(assert (=> b!299323 m!311591))

(assert (=> b!299325 m!311587))

(assert (=> b!299003 d!67419))

(declare-fun b!299334 () Bool)

(declare-fun e!189083 () SeekEntryResult!2319)

(assert (=> b!299334 (= e!189083 (Intermediate!2319 false lt!148738 #b00000000000000000000000000000000))))

(declare-fun b!299335 () Bool)

(declare-fun e!189081 () Bool)

(declare-fun lt!148914 () SeekEntryResult!2319)

(assert (=> b!299335 (= e!189081 (bvsge (x!29657 lt!148914) #b01111111111111111111111111111110))))

(declare-fun b!299336 () Bool)

(assert (=> b!299336 (= e!189083 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148738 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!299337 () Bool)

(assert (=> b!299337 (and (bvsge (index!11451 lt!148914) #b00000000000000000000000000000000) (bvslt (index!11451 lt!148914) (size!7511 a!3312)))))

(declare-fun res!157841 () Bool)

(assert (=> b!299337 (= res!157841 (= (select (arr!7159 a!3312) (index!11451 lt!148914)) k!2524))))

(declare-fun e!189082 () Bool)

(assert (=> b!299337 (=> res!157841 e!189082)))

(declare-fun e!189079 () Bool)

(assert (=> b!299337 (= e!189079 e!189082)))

(declare-fun b!299338 () Bool)

(assert (=> b!299338 (and (bvsge (index!11451 lt!148914) #b00000000000000000000000000000000) (bvslt (index!11451 lt!148914) (size!7511 a!3312)))))

(declare-fun res!157840 () Bool)

(assert (=> b!299338 (= res!157840 (= (select (arr!7159 a!3312) (index!11451 lt!148914)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299338 (=> res!157840 e!189082)))

(declare-fun b!299339 () Bool)

(assert (=> b!299339 (and (bvsge (index!11451 lt!148914) #b00000000000000000000000000000000) (bvslt (index!11451 lt!148914) (size!7511 a!3312)))))

(assert (=> b!299339 (= e!189082 (= (select (arr!7159 a!3312) (index!11451 lt!148914)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299340 () Bool)

(declare-fun e!189080 () SeekEntryResult!2319)

(assert (=> b!299340 (= e!189080 (Intermediate!2319 true lt!148738 #b00000000000000000000000000000000))))

(declare-fun b!299341 () Bool)

(assert (=> b!299341 (= e!189081 e!189079)))

(declare-fun res!157839 () Bool)

(assert (=> b!299341 (= res!157839 (and (is-Intermediate!2319 lt!148914) (not (undefined!3131 lt!148914)) (bvslt (x!29657 lt!148914) #b01111111111111111111111111111110) (bvsge (x!29657 lt!148914) #b00000000000000000000000000000000) (bvsge (x!29657 lt!148914) #b00000000000000000000000000000000)))))

(assert (=> b!299341 (=> (not res!157839) (not e!189079))))

(declare-fun d!67429 () Bool)

(assert (=> d!67429 e!189081))

(declare-fun c!48339 () Bool)

(assert (=> d!67429 (= c!48339 (and (is-Intermediate!2319 lt!148914) (undefined!3131 lt!148914)))))

(assert (=> d!67429 (= lt!148914 e!189080)))

(declare-fun c!48337 () Bool)

(assert (=> d!67429 (= c!48337 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148915 () (_ BitVec 64))

(assert (=> d!67429 (= lt!148915 (select (arr!7159 a!3312) lt!148738))))

(assert (=> d!67429 (validMask!0 mask!3809)))

(assert (=> d!67429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148738 k!2524 a!3312 mask!3809) lt!148914)))

(declare-fun b!299342 () Bool)

(assert (=> b!299342 (= e!189080 e!189083)))

(declare-fun c!48338 () Bool)

(assert (=> b!299342 (= c!48338 (or (= lt!148915 k!2524) (= (bvadd lt!148915 lt!148915) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67429 c!48337) b!299340))

(assert (= (and d!67429 (not c!48337)) b!299342))

(assert (= (and b!299342 c!48338) b!299334))

(assert (= (and b!299342 (not c!48338)) b!299336))

(assert (= (and d!67429 c!48339) b!299335))

(assert (= (and d!67429 (not c!48339)) b!299341))

(assert (= (and b!299341 res!157839) b!299337))

(assert (= (and b!299337 (not res!157841)) b!299338))

(assert (= (and b!299338 (not res!157840)) b!299339))

(declare-fun m!311593 () Bool)

(assert (=> b!299339 m!311593))

(assert (=> b!299337 m!311593))

(assert (=> d!67429 m!311525))

(assert (=> d!67429 m!311389))

(assert (=> b!299336 m!311523))

(assert (=> b!299336 m!311523))

(declare-fun m!311595 () Bool)

(assert (=> b!299336 m!311595))

(assert (=> b!299338 m!311593))

(assert (=> b!299003 d!67429))

(declare-fun d!67431 () Bool)

(declare-fun lt!148923 () (_ BitVec 32))

(declare-fun lt!148922 () (_ BitVec 32))

(assert (=> d!67431 (= lt!148923 (bvmul (bvxor lt!148922 (bvlshr lt!148922 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67431 (= lt!148922 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67431 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157842 (let ((h!5335 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29668 (bvmul (bvxor h!5335 (bvlshr h!5335 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29668 (bvlshr x!29668 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157842 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157842 #b00000000000000000000000000000000))))))

(assert (=> d!67431 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!148923 (bvlshr lt!148923 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!299003 d!67431))

(declare-fun d!67433 () Bool)

(assert (=> d!67433 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!298998 d!67433))

(declare-fun b!299345 () Bool)

(declare-fun e!189088 () SeekEntryResult!2319)

(declare-fun lt!148926 () SeekEntryResult!2319)

(assert (=> b!299345 (= e!189088 (MissingZero!2319 (index!11451 lt!148926)))))

(declare-fun b!299346 () Bool)

(assert (=> b!299346 (= e!189088 (seekKeyOrZeroReturnVacant!0 (x!29657 lt!148926) (index!11451 lt!148926) (index!11451 lt!148926) k!2524 a!3312 mask!3809))))

(declare-fun b!299347 () Bool)

(declare-fun c!48341 () Bool)

(declare-fun lt!148924 () (_ BitVec 64))

(assert (=> b!299347 (= c!48341 (= lt!148924 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!189086 () SeekEntryResult!2319)

(assert (=> b!299347 (= e!189086 e!189088)))

(declare-fun b!299348 () Bool)

(assert (=> b!299348 (= e!189086 (Found!2319 (index!11451 lt!148926)))))

(declare-fun b!299349 () Bool)

(declare-fun e!189087 () SeekEntryResult!2319)

(assert (=> b!299349 (= e!189087 e!189086)))

(assert (=> b!299349 (= lt!148924 (select (arr!7159 a!3312) (index!11451 lt!148926)))))

(declare-fun c!48340 () Bool)

(assert (=> b!299349 (= c!48340 (= lt!148924 k!2524))))

(declare-fun b!299350 () Bool)

(assert (=> b!299350 (= e!189087 Undefined!2319)))

(declare-fun d!67435 () Bool)

(declare-fun lt!148925 () SeekEntryResult!2319)

(assert (=> d!67435 (and (or (is-Undefined!2319 lt!148925) (not (is-Found!2319 lt!148925)) (and (bvsge (index!11450 lt!148925) #b00000000000000000000000000000000) (bvslt (index!11450 lt!148925) (size!7511 a!3312)))) (or (is-Undefined!2319 lt!148925) (is-Found!2319 lt!148925) (not (is-MissingZero!2319 lt!148925)) (and (bvsge (index!11449 lt!148925) #b00000000000000000000000000000000) (bvslt (index!11449 lt!148925) (size!7511 a!3312)))) (or (is-Undefined!2319 lt!148925) (is-Found!2319 lt!148925) (is-MissingZero!2319 lt!148925) (not (is-MissingVacant!2319 lt!148925)) (and (bvsge (index!11452 lt!148925) #b00000000000000000000000000000000) (bvslt (index!11452 lt!148925) (size!7511 a!3312)))) (or (is-Undefined!2319 lt!148925) (ite (is-Found!2319 lt!148925) (= (select (arr!7159 a!3312) (index!11450 lt!148925)) k!2524) (ite (is-MissingZero!2319 lt!148925) (= (select (arr!7159 a!3312) (index!11449 lt!148925)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2319 lt!148925) (= (select (arr!7159 a!3312) (index!11452 lt!148925)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67435 (= lt!148925 e!189087)))

(declare-fun c!48342 () Bool)

(assert (=> d!67435 (= c!48342 (and (is-Intermediate!2319 lt!148926) (undefined!3131 lt!148926)))))

(assert (=> d!67435 (= lt!148926 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67435 (validMask!0 mask!3809)))

(assert (=> d!67435 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!148925)))

(assert (= (and d!67435 c!48342) b!299350))

(assert (= (and d!67435 (not c!48342)) b!299349))

(assert (= (and b!299349 c!48340) b!299348))

(assert (= (and b!299349 (not c!48340)) b!299347))

(assert (= (and b!299347 c!48341) b!299345))

(assert (= (and b!299347 (not c!48341)) b!299346))

(declare-fun m!311597 () Bool)

(assert (=> b!299346 m!311597))

(declare-fun m!311599 () Bool)

(assert (=> b!299349 m!311599))

(assert (=> d!67435 m!311403))

(declare-fun m!311601 () Bool)

(assert (=> d!67435 m!311601))

(assert (=> d!67435 m!311403))

(declare-fun m!311603 () Bool)

(assert (=> d!67435 m!311603))

(declare-fun m!311605 () Bool)

(assert (=> d!67435 m!311605))

(declare-fun m!311607 () Bool)

(assert (=> d!67435 m!311607))

(assert (=> d!67435 m!311389))

(assert (=> b!298997 d!67435))

(declare-fun d!67437 () Bool)

(assert (=> d!67437 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29652 d!67437))

(declare-fun d!67441 () Bool)

(assert (=> d!67441 (= (array_inv!5113 a!3312) (bvsge (size!7511 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29652 d!67441))

(push 1)

