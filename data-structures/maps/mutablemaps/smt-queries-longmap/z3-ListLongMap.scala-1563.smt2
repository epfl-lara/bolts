; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29768 () Bool)

(assert start!29768)

(declare-fun b!299686 () Bool)

(declare-fun res!158019 () Bool)

(declare-fun e!189287 () Bool)

(assert (=> b!299686 (=> (not res!158019) (not e!189287))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299686 (= res!158019 (validKeyInArray!0 k0!2524))))

(declare-fun b!299687 () Bool)

(declare-fun res!158018 () Bool)

(declare-fun e!189289 () Bool)

(assert (=> b!299687 (=> (not res!158018) (not e!189289))))

(declare-datatypes ((array!15139 0))(
  ( (array!15140 (arr!7166 (Array (_ BitVec 32) (_ BitVec 64))) (size!7518 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15139)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15139 (_ BitVec 32)) Bool)

(assert (=> b!299687 (= res!158018 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!299688 () Bool)

(declare-fun res!158017 () Bool)

(assert (=> b!299688 (=> (not res!158017) (not e!189287))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!299688 (= res!158017 (and (= (size!7518 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7518 a!3312))))))

(declare-fun b!299689 () Bool)

(declare-fun res!158022 () Bool)

(assert (=> b!299689 (=> (not res!158022) (not e!189287))))

(declare-fun arrayContainsKey!0 (array!15139 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299689 (= res!158022 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!2326 0))(
  ( (MissingZero!2326 (index!11480 (_ BitVec 32))) (Found!2326 (index!11481 (_ BitVec 32))) (Intermediate!2326 (undefined!3138 Bool) (index!11482 (_ BitVec 32)) (x!29695 (_ BitVec 32))) (Undefined!2326) (MissingVacant!2326 (index!11483 (_ BitVec 32))) )
))
(declare-fun lt!149114 () SeekEntryResult!2326)

(declare-fun lt!149113 () Bool)

(declare-fun lt!149111 () SeekEntryResult!2326)

(declare-fun b!299691 () Bool)

(get-info :version)

(assert (=> b!299691 (= e!189289 (and (not lt!149113) (= lt!149111 (MissingVacant!2326 i!1256)) (let ((bdg!6452 (not ((_ is Intermediate!2326) lt!149114)))) (and (or bdg!6452 (not (undefined!3138 lt!149114))) (or bdg!6452 (not (= (select (arr!7166 a!3312) (index!11482 lt!149114)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6452) (= (select (arr!7166 a!3312) (index!11482 lt!149114)) k0!2524)))))))

(declare-fun lt!149112 () (_ BitVec 32))

(declare-fun lt!149110 () SeekEntryResult!2326)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15139 (_ BitVec 32)) SeekEntryResult!2326)

(assert (=> b!299691 (= lt!149110 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149112 k0!2524 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312)) mask!3809))))

(assert (=> b!299691 (= lt!149114 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149112 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299691 (= lt!149112 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!299690 () Bool)

(assert (=> b!299690 (= e!189287 e!189289)))

(declare-fun res!158020 () Bool)

(assert (=> b!299690 (=> (not res!158020) (not e!189289))))

(assert (=> b!299690 (= res!158020 (or lt!149113 (= lt!149111 (MissingVacant!2326 i!1256))))))

(assert (=> b!299690 (= lt!149113 (= lt!149111 (MissingZero!2326 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15139 (_ BitVec 32)) SeekEntryResult!2326)

(assert (=> b!299690 (= lt!149111 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!158021 () Bool)

(assert (=> start!29768 (=> (not res!158021) (not e!189287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29768 (= res!158021 (validMask!0 mask!3809))))

(assert (=> start!29768 e!189287))

(assert (=> start!29768 true))

(declare-fun array_inv!5120 (array!15139) Bool)

(assert (=> start!29768 (array_inv!5120 a!3312)))

(assert (= (and start!29768 res!158021) b!299688))

(assert (= (and b!299688 res!158017) b!299686))

(assert (= (and b!299686 res!158019) b!299689))

(assert (= (and b!299689 res!158022) b!299690))

(assert (= (and b!299690 res!158020) b!299687))

(assert (= (and b!299687 res!158018) b!299691))

(declare-fun m!311849 () Bool)

(assert (=> start!29768 m!311849))

(declare-fun m!311851 () Bool)

(assert (=> start!29768 m!311851))

(declare-fun m!311853 () Bool)

(assert (=> b!299690 m!311853))

(declare-fun m!311855 () Bool)

(assert (=> b!299687 m!311855))

(declare-fun m!311857 () Bool)

(assert (=> b!299691 m!311857))

(declare-fun m!311859 () Bool)

(assert (=> b!299691 m!311859))

(declare-fun m!311861 () Bool)

(assert (=> b!299691 m!311861))

(declare-fun m!311863 () Bool)

(assert (=> b!299691 m!311863))

(declare-fun m!311865 () Bool)

(assert (=> b!299691 m!311865))

(declare-fun m!311867 () Bool)

(assert (=> b!299689 m!311867))

(declare-fun m!311869 () Bool)

(assert (=> b!299686 m!311869))

(check-sat (not b!299691) (not start!29768) (not b!299687) (not b!299689) (not b!299690) (not b!299686))
(check-sat)
(get-model)

(declare-fun d!67511 () Bool)

(assert (=> d!67511 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!299686 d!67511))

(declare-fun b!299746 () Bool)

(declare-fun e!189327 () SeekEntryResult!2326)

(assert (=> b!299746 (= e!189327 (Intermediate!2326 false lt!149112 #b00000000000000000000000000000000))))

(declare-fun b!299747 () Bool)

(declare-fun e!189324 () SeekEntryResult!2326)

(assert (=> b!299747 (= e!189324 (Intermediate!2326 true lt!149112 #b00000000000000000000000000000000))))

(declare-fun b!299748 () Bool)

(assert (=> b!299748 (= e!189324 e!189327)))

(declare-fun c!48435 () Bool)

(declare-fun lt!149143 () (_ BitVec 64))

(assert (=> b!299748 (= c!48435 (or (= lt!149143 k0!2524) (= (bvadd lt!149143 lt!149143) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!149144 () SeekEntryResult!2326)

(declare-fun b!299749 () Bool)

(assert (=> b!299749 (and (bvsge (index!11482 lt!149144) #b00000000000000000000000000000000) (bvslt (index!11482 lt!149144) (size!7518 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312)))))))

(declare-fun e!189328 () Bool)

(assert (=> b!299749 (= e!189328 (= (select (arr!7166 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312))) (index!11482 lt!149144)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299750 () Bool)

(assert (=> b!299750 (and (bvsge (index!11482 lt!149144) #b00000000000000000000000000000000) (bvslt (index!11482 lt!149144) (size!7518 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312)))))))

(declare-fun res!158059 () Bool)

(assert (=> b!299750 (= res!158059 (= (select (arr!7166 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312))) (index!11482 lt!149144)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299750 (=> res!158059 e!189328)))

(declare-fun b!299751 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299751 (= e!189327 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149112 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312)) mask!3809))))

(declare-fun d!67513 () Bool)

(declare-fun e!189325 () Bool)

(assert (=> d!67513 e!189325))

(declare-fun c!48436 () Bool)

(assert (=> d!67513 (= c!48436 (and ((_ is Intermediate!2326) lt!149144) (undefined!3138 lt!149144)))))

(assert (=> d!67513 (= lt!149144 e!189324)))

(declare-fun c!48437 () Bool)

(assert (=> d!67513 (= c!48437 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67513 (= lt!149143 (select (arr!7166 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312))) lt!149112))))

(assert (=> d!67513 (validMask!0 mask!3809)))

(assert (=> d!67513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149112 k0!2524 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312)) mask!3809) lt!149144)))

(declare-fun b!299752 () Bool)

(assert (=> b!299752 (and (bvsge (index!11482 lt!149144) #b00000000000000000000000000000000) (bvslt (index!11482 lt!149144) (size!7518 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312)))))))

(declare-fun res!158061 () Bool)

(assert (=> b!299752 (= res!158061 (= (select (arr!7166 (array!15140 (store (arr!7166 a!3312) i!1256 k0!2524) (size!7518 a!3312))) (index!11482 lt!149144)) k0!2524))))

(assert (=> b!299752 (=> res!158061 e!189328)))

(declare-fun e!189326 () Bool)

(assert (=> b!299752 (= e!189326 e!189328)))

(declare-fun b!299753 () Bool)

(assert (=> b!299753 (= e!189325 e!189326)))

(declare-fun res!158060 () Bool)

(assert (=> b!299753 (= res!158060 (and ((_ is Intermediate!2326) lt!149144) (not (undefined!3138 lt!149144)) (bvslt (x!29695 lt!149144) #b01111111111111111111111111111110) (bvsge (x!29695 lt!149144) #b00000000000000000000000000000000) (bvsge (x!29695 lt!149144) #b00000000000000000000000000000000)))))

(assert (=> b!299753 (=> (not res!158060) (not e!189326))))

(declare-fun b!299754 () Bool)

(assert (=> b!299754 (= e!189325 (bvsge (x!29695 lt!149144) #b01111111111111111111111111111110))))

(assert (= (and d!67513 c!48437) b!299747))

(assert (= (and d!67513 (not c!48437)) b!299748))

(assert (= (and b!299748 c!48435) b!299746))

(assert (= (and b!299748 (not c!48435)) b!299751))

(assert (= (and d!67513 c!48436) b!299754))

(assert (= (and d!67513 (not c!48436)) b!299753))

(assert (= (and b!299753 res!158060) b!299752))

(assert (= (and b!299752 (not res!158061)) b!299750))

(assert (= (and b!299750 (not res!158059)) b!299749))

(declare-fun m!311909 () Bool)

(assert (=> b!299752 m!311909))

(assert (=> b!299750 m!311909))

(declare-fun m!311911 () Bool)

(assert (=> d!67513 m!311911))

(assert (=> d!67513 m!311849))

(assert (=> b!299749 m!311909))

(declare-fun m!311913 () Bool)

(assert (=> b!299751 m!311913))

(assert (=> b!299751 m!311913))

(declare-fun m!311915 () Bool)

(assert (=> b!299751 m!311915))

(assert (=> b!299691 d!67513))

(declare-fun b!299755 () Bool)

(declare-fun e!189332 () SeekEntryResult!2326)

(assert (=> b!299755 (= e!189332 (Intermediate!2326 false lt!149112 #b00000000000000000000000000000000))))

(declare-fun b!299756 () Bool)

(declare-fun e!189329 () SeekEntryResult!2326)

(assert (=> b!299756 (= e!189329 (Intermediate!2326 true lt!149112 #b00000000000000000000000000000000))))

(declare-fun b!299757 () Bool)

(assert (=> b!299757 (= e!189329 e!189332)))

(declare-fun c!48438 () Bool)

(declare-fun lt!149145 () (_ BitVec 64))

(assert (=> b!299757 (= c!48438 (or (= lt!149145 k0!2524) (= (bvadd lt!149145 lt!149145) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299758 () Bool)

(declare-fun lt!149146 () SeekEntryResult!2326)

(assert (=> b!299758 (and (bvsge (index!11482 lt!149146) #b00000000000000000000000000000000) (bvslt (index!11482 lt!149146) (size!7518 a!3312)))))

(declare-fun e!189333 () Bool)

(assert (=> b!299758 (= e!189333 (= (select (arr!7166 a!3312) (index!11482 lt!149146)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299759 () Bool)

(assert (=> b!299759 (and (bvsge (index!11482 lt!149146) #b00000000000000000000000000000000) (bvslt (index!11482 lt!149146) (size!7518 a!3312)))))

(declare-fun res!158062 () Bool)

(assert (=> b!299759 (= res!158062 (= (select (arr!7166 a!3312) (index!11482 lt!149146)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299759 (=> res!158062 e!189333)))

(declare-fun b!299760 () Bool)

(assert (=> b!299760 (= e!189332 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!149112 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun d!67523 () Bool)

(declare-fun e!189330 () Bool)

(assert (=> d!67523 e!189330))

(declare-fun c!48439 () Bool)

(assert (=> d!67523 (= c!48439 (and ((_ is Intermediate!2326) lt!149146) (undefined!3138 lt!149146)))))

(assert (=> d!67523 (= lt!149146 e!189329)))

(declare-fun c!48440 () Bool)

(assert (=> d!67523 (= c!48440 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67523 (= lt!149145 (select (arr!7166 a!3312) lt!149112))))

(assert (=> d!67523 (validMask!0 mask!3809)))

(assert (=> d!67523 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!149112 k0!2524 a!3312 mask!3809) lt!149146)))

(declare-fun b!299761 () Bool)

(assert (=> b!299761 (and (bvsge (index!11482 lt!149146) #b00000000000000000000000000000000) (bvslt (index!11482 lt!149146) (size!7518 a!3312)))))

(declare-fun res!158064 () Bool)

(assert (=> b!299761 (= res!158064 (= (select (arr!7166 a!3312) (index!11482 lt!149146)) k0!2524))))

(assert (=> b!299761 (=> res!158064 e!189333)))

(declare-fun e!189331 () Bool)

(assert (=> b!299761 (= e!189331 e!189333)))

(declare-fun b!299762 () Bool)

(assert (=> b!299762 (= e!189330 e!189331)))

(declare-fun res!158063 () Bool)

(assert (=> b!299762 (= res!158063 (and ((_ is Intermediate!2326) lt!149146) (not (undefined!3138 lt!149146)) (bvslt (x!29695 lt!149146) #b01111111111111111111111111111110) (bvsge (x!29695 lt!149146) #b00000000000000000000000000000000) (bvsge (x!29695 lt!149146) #b00000000000000000000000000000000)))))

(assert (=> b!299762 (=> (not res!158063) (not e!189331))))

(declare-fun b!299763 () Bool)

(assert (=> b!299763 (= e!189330 (bvsge (x!29695 lt!149146) #b01111111111111111111111111111110))))

(assert (= (and d!67523 c!48440) b!299756))

(assert (= (and d!67523 (not c!48440)) b!299757))

(assert (= (and b!299757 c!48438) b!299755))

(assert (= (and b!299757 (not c!48438)) b!299760))

(assert (= (and d!67523 c!48439) b!299763))

(assert (= (and d!67523 (not c!48439)) b!299762))

(assert (= (and b!299762 res!158063) b!299761))

(assert (= (and b!299761 (not res!158064)) b!299759))

(assert (= (and b!299759 (not res!158062)) b!299758))

(declare-fun m!311917 () Bool)

(assert (=> b!299761 m!311917))

(assert (=> b!299759 m!311917))

(declare-fun m!311919 () Bool)

(assert (=> d!67523 m!311919))

(assert (=> d!67523 m!311849))

(assert (=> b!299758 m!311917))

(assert (=> b!299760 m!311913))

(assert (=> b!299760 m!311913))

(declare-fun m!311921 () Bool)

(assert (=> b!299760 m!311921))

(assert (=> b!299691 d!67523))

(declare-fun d!67525 () Bool)

(declare-fun lt!149152 () (_ BitVec 32))

(declare-fun lt!149151 () (_ BitVec 32))

(assert (=> d!67525 (= lt!149152 (bvmul (bvxor lt!149151 (bvlshr lt!149151 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67525 (= lt!149151 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67525 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!158065 (let ((h!5339 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29698 (bvmul (bvxor h!5339 (bvlshr h!5339 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29698 (bvlshr x!29698 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!158065 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!158065 #b00000000000000000000000000000000))))))

(assert (=> d!67525 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!149152 (bvlshr lt!149152 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!299691 d!67525))

(declare-fun b!299802 () Bool)

(declare-fun e!189356 () Bool)

(declare-fun e!189357 () Bool)

(assert (=> b!299802 (= e!189356 e!189357)))

(declare-fun c!48458 () Bool)

(assert (=> b!299802 (= c!48458 (validKeyInArray!0 (select (arr!7166 a!3312) #b00000000000000000000000000000000)))))

(declare-fun bm!25835 () Bool)

(declare-fun call!25838 () Bool)

(assert (=> bm!25835 (= call!25838 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!299803 () Bool)

(declare-fun e!189355 () Bool)

(assert (=> b!299803 (= e!189355 call!25838)))

(declare-fun d!67527 () Bool)

(declare-fun res!158070 () Bool)

(assert (=> d!67527 (=> res!158070 e!189356)))

(assert (=> d!67527 (= res!158070 (bvsge #b00000000000000000000000000000000 (size!7518 a!3312)))))

(assert (=> d!67527 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189356)))

(declare-fun b!299804 () Bool)

(assert (=> b!299804 (= e!189357 call!25838)))

(declare-fun b!299805 () Bool)

(assert (=> b!299805 (= e!189357 e!189355)))

(declare-fun lt!149174 () (_ BitVec 64))

(assert (=> b!299805 (= lt!149174 (select (arr!7166 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9350 0))(
  ( (Unit!9351) )
))
(declare-fun lt!149172 () Unit!9350)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15139 (_ BitVec 64) (_ BitVec 32)) Unit!9350)

(assert (=> b!299805 (= lt!149172 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149174 #b00000000000000000000000000000000))))

(assert (=> b!299805 (arrayContainsKey!0 a!3312 lt!149174 #b00000000000000000000000000000000)))

(declare-fun lt!149173 () Unit!9350)

(assert (=> b!299805 (= lt!149173 lt!149172)))

(declare-fun res!158071 () Bool)

(assert (=> b!299805 (= res!158071 (= (seekEntryOrOpen!0 (select (arr!7166 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2326 #b00000000000000000000000000000000)))))

(assert (=> b!299805 (=> (not res!158071) (not e!189355))))

(assert (= (and d!67527 (not res!158070)) b!299802))

(assert (= (and b!299802 c!48458) b!299805))

(assert (= (and b!299802 (not c!48458)) b!299804))

(assert (= (and b!299805 res!158071) b!299803))

(assert (= (or b!299803 b!299804) bm!25835))

(declare-fun m!311935 () Bool)

(assert (=> b!299802 m!311935))

(assert (=> b!299802 m!311935))

(declare-fun m!311937 () Bool)

(assert (=> b!299802 m!311937))

(declare-fun m!311939 () Bool)

(assert (=> bm!25835 m!311939))

(assert (=> b!299805 m!311935))

(declare-fun m!311941 () Bool)

(assert (=> b!299805 m!311941))

(declare-fun m!311943 () Bool)

(assert (=> b!299805 m!311943))

(assert (=> b!299805 m!311935))

(declare-fun m!311945 () Bool)

(assert (=> b!299805 m!311945))

(assert (=> b!299687 d!67527))

(declare-fun d!67533 () Bool)

(declare-fun res!158082 () Bool)

(declare-fun e!189366 () Bool)

(assert (=> d!67533 (=> res!158082 e!189366)))

(assert (=> d!67533 (= res!158082 (= (select (arr!7166 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67533 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!189366)))

(declare-fun b!299816 () Bool)

(declare-fun e!189367 () Bool)

(assert (=> b!299816 (= e!189366 e!189367)))

(declare-fun res!158083 () Bool)

(assert (=> b!299816 (=> (not res!158083) (not e!189367))))

(assert (=> b!299816 (= res!158083 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7518 a!3312)))))

(declare-fun b!299817 () Bool)

(assert (=> b!299817 (= e!189367 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67533 (not res!158082)) b!299816))

(assert (= (and b!299816 res!158083) b!299817))

(assert (=> d!67533 m!311935))

(declare-fun m!311947 () Bool)

(assert (=> b!299817 m!311947))

(assert (=> b!299689 d!67533))

(declare-fun lt!149202 () SeekEntryResult!2326)

(declare-fun b!299866 () Bool)

(declare-fun e!189400 () SeekEntryResult!2326)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15139 (_ BitVec 32)) SeekEntryResult!2326)

(assert (=> b!299866 (= e!189400 (seekKeyOrZeroReturnVacant!0 (x!29695 lt!149202) (index!11482 lt!149202) (index!11482 lt!149202) k0!2524 a!3312 mask!3809))))

(declare-fun b!299867 () Bool)

(assert (=> b!299867 (= e!189400 (MissingZero!2326 (index!11482 lt!149202)))))

(declare-fun b!299868 () Bool)

(declare-fun e!189399 () SeekEntryResult!2326)

(declare-fun e!189401 () SeekEntryResult!2326)

(assert (=> b!299868 (= e!189399 e!189401)))

(declare-fun lt!149201 () (_ BitVec 64))

(assert (=> b!299868 (= lt!149201 (select (arr!7166 a!3312) (index!11482 lt!149202)))))

(declare-fun c!48475 () Bool)

(assert (=> b!299868 (= c!48475 (= lt!149201 k0!2524))))

(declare-fun b!299869 () Bool)

(assert (=> b!299869 (= e!189399 Undefined!2326)))

(declare-fun b!299870 () Bool)

(declare-fun c!48474 () Bool)

(assert (=> b!299870 (= c!48474 (= lt!149201 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299870 (= e!189401 e!189400)))

(declare-fun d!67535 () Bool)

(declare-fun lt!149200 () SeekEntryResult!2326)

(assert (=> d!67535 (and (or ((_ is Undefined!2326) lt!149200) (not ((_ is Found!2326) lt!149200)) (and (bvsge (index!11481 lt!149200) #b00000000000000000000000000000000) (bvslt (index!11481 lt!149200) (size!7518 a!3312)))) (or ((_ is Undefined!2326) lt!149200) ((_ is Found!2326) lt!149200) (not ((_ is MissingZero!2326) lt!149200)) (and (bvsge (index!11480 lt!149200) #b00000000000000000000000000000000) (bvslt (index!11480 lt!149200) (size!7518 a!3312)))) (or ((_ is Undefined!2326) lt!149200) ((_ is Found!2326) lt!149200) ((_ is MissingZero!2326) lt!149200) (not ((_ is MissingVacant!2326) lt!149200)) (and (bvsge (index!11483 lt!149200) #b00000000000000000000000000000000) (bvslt (index!11483 lt!149200) (size!7518 a!3312)))) (or ((_ is Undefined!2326) lt!149200) (ite ((_ is Found!2326) lt!149200) (= (select (arr!7166 a!3312) (index!11481 lt!149200)) k0!2524) (ite ((_ is MissingZero!2326) lt!149200) (= (select (arr!7166 a!3312) (index!11480 lt!149200)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2326) lt!149200) (= (select (arr!7166 a!3312) (index!11483 lt!149200)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67535 (= lt!149200 e!189399)))

(declare-fun c!48476 () Bool)

(assert (=> d!67535 (= c!48476 (and ((_ is Intermediate!2326) lt!149202) (undefined!3138 lt!149202)))))

(assert (=> d!67535 (= lt!149202 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67535 (validMask!0 mask!3809)))

(assert (=> d!67535 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!149200)))

(declare-fun b!299871 () Bool)

(assert (=> b!299871 (= e!189401 (Found!2326 (index!11482 lt!149202)))))

(assert (= (and d!67535 c!48476) b!299869))

(assert (= (and d!67535 (not c!48476)) b!299868))

(assert (= (and b!299868 c!48475) b!299871))

(assert (= (and b!299868 (not c!48475)) b!299870))

(assert (= (and b!299870 c!48474) b!299867))

(assert (= (and b!299870 (not c!48474)) b!299866))

(declare-fun m!311975 () Bool)

(assert (=> b!299866 m!311975))

(declare-fun m!311977 () Bool)

(assert (=> b!299868 m!311977))

(assert (=> d!67535 m!311849))

(assert (=> d!67535 m!311865))

(declare-fun m!311979 () Bool)

(assert (=> d!67535 m!311979))

(declare-fun m!311981 () Bool)

(assert (=> d!67535 m!311981))

(assert (=> d!67535 m!311865))

(declare-fun m!311983 () Bool)

(assert (=> d!67535 m!311983))

(declare-fun m!311985 () Bool)

(assert (=> d!67535 m!311985))

(assert (=> b!299690 d!67535))

(declare-fun d!67553 () Bool)

(assert (=> d!67553 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29768 d!67553))

(declare-fun d!67555 () Bool)

(assert (=> d!67555 (= (array_inv!5120 a!3312) (bvsge (size!7518 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29768 d!67555))

(check-sat (not b!299802) (not b!299760) (not d!67513) (not d!67523) (not d!67535) (not b!299751) (not b!299866) (not b!299805) (not bm!25835) (not b!299817))
(check-sat)
