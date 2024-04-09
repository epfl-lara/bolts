; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29712 () Bool)

(assert start!29712)

(declare-fun b!299398 () Bool)

(declare-fun res!157871 () Bool)

(declare-fun e!189121 () Bool)

(assert (=> b!299398 (=> (not res!157871) (not e!189121))))

(declare-datatypes ((array!15128 0))(
  ( (array!15129 (arr!7162 (Array (_ BitVec 32) (_ BitVec 64))) (size!7514 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15128)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15128 (_ BitVec 32)) Bool)

(assert (=> b!299398 (= res!157871 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!299399 () Bool)

(declare-fun e!189120 () Bool)

(assert (=> b!299399 (= e!189120 e!189121)))

(declare-fun res!157873 () Bool)

(assert (=> b!299399 (=> (not res!157873) (not e!189121))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2322 0))(
  ( (MissingZero!2322 (index!11464 (_ BitVec 32))) (Found!2322 (index!11465 (_ BitVec 32))) (Intermediate!2322 (undefined!3134 Bool) (index!11466 (_ BitVec 32)) (x!29677 (_ BitVec 32))) (Undefined!2322) (MissingVacant!2322 (index!11467 (_ BitVec 32))) )
))
(declare-fun lt!148957 () SeekEntryResult!2322)

(declare-fun lt!148958 () Bool)

(assert (=> b!299399 (= res!157873 (or lt!148958 (= lt!148957 (MissingVacant!2322 i!1256))))))

(assert (=> b!299399 (= lt!148958 (= lt!148957 (MissingZero!2322 i!1256)))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15128 (_ BitVec 32)) SeekEntryResult!2322)

(assert (=> b!299399 (= lt!148957 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!299400 () Bool)

(declare-fun res!157875 () Bool)

(assert (=> b!299400 (=> (not res!157875) (not e!189120))))

(declare-fun arrayContainsKey!0 (array!15128 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!299400 (= res!157875 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun res!157874 () Bool)

(assert (=> start!29712 (=> (not res!157874) (not e!189120))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29712 (= res!157874 (validMask!0 mask!3809))))

(assert (=> start!29712 e!189120))

(assert (=> start!29712 true))

(declare-fun array_inv!5116 (array!15128) Bool)

(assert (=> start!29712 (array_inv!5116 a!3312)))

(declare-fun b!299401 () Bool)

(declare-fun res!157870 () Bool)

(assert (=> b!299401 (=> (not res!157870) (not e!189120))))

(assert (=> b!299401 (= res!157870 (and (= (size!7514 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7514 a!3312))))))

(declare-fun lt!148956 () SeekEntryResult!2322)

(declare-fun b!299402 () Bool)

(assert (=> b!299402 (= e!189121 (and (not lt!148958) (= lt!148957 (MissingVacant!2322 i!1256)) (let ((bdg!6446 (not (is-Intermediate!2322 lt!148956)))) (and (or bdg!6446 (not (undefined!3134 lt!148956))) (or bdg!6446 (not (= (select (arr!7162 a!3312) (index!11466 lt!148956)) #b1000000000000000000000000000000000000000000000000000000000000000))) (not bdg!6446) (or (bvslt (index!11466 lt!148956) #b00000000000000000000000000000000) (bvsge (index!11466 lt!148956) (size!7514 a!3312)))))))))

(declare-fun lt!148954 () (_ BitVec 32))

(declare-fun lt!148955 () SeekEntryResult!2322)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15128 (_ BitVec 32)) SeekEntryResult!2322)

(assert (=> b!299402 (= lt!148955 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148954 k!2524 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312)) mask!3809))))

(assert (=> b!299402 (= lt!148956 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148954 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299402 (= lt!148954 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!299403 () Bool)

(declare-fun res!157872 () Bool)

(assert (=> b!299403 (=> (not res!157872) (not e!189120))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!299403 (= res!157872 (validKeyInArray!0 k!2524))))

(assert (= (and start!29712 res!157874) b!299401))

(assert (= (and b!299401 res!157870) b!299403))

(assert (= (and b!299403 res!157872) b!299400))

(assert (= (and b!299400 res!157875) b!299399))

(assert (= (and b!299399 res!157873) b!299398))

(assert (= (and b!299398 res!157871) b!299402))

(declare-fun m!311641 () Bool)

(assert (=> b!299398 m!311641))

(declare-fun m!311643 () Bool)

(assert (=> b!299400 m!311643))

(declare-fun m!311645 () Bool)

(assert (=> b!299402 m!311645))

(declare-fun m!311647 () Bool)

(assert (=> b!299402 m!311647))

(declare-fun m!311649 () Bool)

(assert (=> b!299402 m!311649))

(declare-fun m!311651 () Bool)

(assert (=> b!299402 m!311651))

(declare-fun m!311653 () Bool)

(assert (=> b!299402 m!311653))

(declare-fun m!311655 () Bool)

(assert (=> b!299399 m!311655))

(declare-fun m!311657 () Bool)

(assert (=> b!299403 m!311657))

(declare-fun m!311659 () Bool)

(assert (=> start!29712 m!311659))

(declare-fun m!311661 () Bool)

(assert (=> start!29712 m!311661))

(push 1)

(assert (not start!29712))

(assert (not b!299402))

(assert (not b!299399))

(assert (not b!299400))

(assert (not b!299403))

(assert (not b!299398))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67457 () Bool)

(declare-fun res!157916 () Bool)

(declare-fun e!189148 () Bool)

(assert (=> d!67457 (=> res!157916 e!189148)))

(assert (=> d!67457 (= res!157916 (= (select (arr!7162 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67457 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!189148)))

(declare-fun b!299452 () Bool)

(declare-fun e!189149 () Bool)

(assert (=> b!299452 (= e!189148 e!189149)))

(declare-fun res!157917 () Bool)

(assert (=> b!299452 (=> (not res!157917) (not e!189149))))

(assert (=> b!299452 (= res!157917 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7514 a!3312)))))

(declare-fun b!299453 () Bool)

(assert (=> b!299453 (= e!189149 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67457 (not res!157916)) b!299452))

(assert (= (and b!299452 res!157917) b!299453))

(declare-fun m!311707 () Bool)

(assert (=> d!67457 m!311707))

(declare-fun m!311709 () Bool)

(assert (=> b!299453 m!311709))

(assert (=> b!299400 d!67457))

(declare-fun b!299512 () Bool)

(declare-fun e!189188 () SeekEntryResult!2322)

(declare-fun lt!149020 () SeekEntryResult!2322)

(assert (=> b!299512 (= e!189188 (MissingZero!2322 (index!11466 lt!149020)))))

(declare-fun b!299513 () Bool)

(declare-fun e!189189 () SeekEntryResult!2322)

(assert (=> b!299513 (= e!189189 (Found!2322 (index!11466 lt!149020)))))

(declare-fun d!67459 () Bool)

(declare-fun lt!149019 () SeekEntryResult!2322)

(assert (=> d!67459 (and (or (is-Undefined!2322 lt!149019) (not (is-Found!2322 lt!149019)) (and (bvsge (index!11465 lt!149019) #b00000000000000000000000000000000) (bvslt (index!11465 lt!149019) (size!7514 a!3312)))) (or (is-Undefined!2322 lt!149019) (is-Found!2322 lt!149019) (not (is-MissingZero!2322 lt!149019)) (and (bvsge (index!11464 lt!149019) #b00000000000000000000000000000000) (bvslt (index!11464 lt!149019) (size!7514 a!3312)))) (or (is-Undefined!2322 lt!149019) (is-Found!2322 lt!149019) (is-MissingZero!2322 lt!149019) (not (is-MissingVacant!2322 lt!149019)) (and (bvsge (index!11467 lt!149019) #b00000000000000000000000000000000) (bvslt (index!11467 lt!149019) (size!7514 a!3312)))) (or (is-Undefined!2322 lt!149019) (ite (is-Found!2322 lt!149019) (= (select (arr!7162 a!3312) (index!11465 lt!149019)) k!2524) (ite (is-MissingZero!2322 lt!149019) (= (select (arr!7162 a!3312) (index!11464 lt!149019)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2322 lt!149019) (= (select (arr!7162 a!3312) (index!11467 lt!149019)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!189187 () SeekEntryResult!2322)

(assert (=> d!67459 (= lt!149019 e!189187)))

(declare-fun c!48377 () Bool)

(assert (=> d!67459 (= c!48377 (and (is-Intermediate!2322 lt!149020) (undefined!3134 lt!149020)))))

(assert (=> d!67459 (= lt!149020 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67459 (validMask!0 mask!3809)))

(assert (=> d!67459 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!149019)))

(declare-fun b!299514 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15128 (_ BitVec 32)) SeekEntryResult!2322)

(assert (=> b!299514 (= e!189188 (seekKeyOrZeroReturnVacant!0 (x!29677 lt!149020) (index!11466 lt!149020) (index!11466 lt!149020) k!2524 a!3312 mask!3809))))

(declare-fun b!299515 () Bool)

(declare-fun c!48375 () Bool)

(declare-fun lt!149018 () (_ BitVec 64))

(assert (=> b!299515 (= c!48375 (= lt!149018 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299515 (= e!189189 e!189188)))

(declare-fun b!299516 () Bool)

(assert (=> b!299516 (= e!189187 Undefined!2322)))

(declare-fun b!299517 () Bool)

(assert (=> b!299517 (= e!189187 e!189189)))

(assert (=> b!299517 (= lt!149018 (select (arr!7162 a!3312) (index!11466 lt!149020)))))

(declare-fun c!48376 () Bool)

(assert (=> b!299517 (= c!48376 (= lt!149018 k!2524))))

(assert (= (and d!67459 c!48377) b!299516))

(assert (= (and d!67459 (not c!48377)) b!299517))

(assert (= (and b!299517 c!48376) b!299513))

(assert (= (and b!299517 (not c!48376)) b!299515))

(assert (= (and b!299515 c!48375) b!299512))

(assert (= (and b!299515 (not c!48375)) b!299514))

(declare-fun m!311741 () Bool)

(assert (=> d!67459 m!311741))

(declare-fun m!311743 () Bool)

(assert (=> d!67459 m!311743))

(declare-fun m!311745 () Bool)

(assert (=> d!67459 m!311745))

(assert (=> d!67459 m!311659))

(assert (=> d!67459 m!311653))

(declare-fun m!311747 () Bool)

(assert (=> d!67459 m!311747))

(assert (=> d!67459 m!311653))

(declare-fun m!311749 () Bool)

(assert (=> b!299514 m!311749))

(declare-fun m!311751 () Bool)

(assert (=> b!299517 m!311751))

(assert (=> b!299399 d!67459))

(declare-fun d!67475 () Bool)

(assert (=> d!67475 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!299403 d!67475))

(declare-fun d!67477 () Bool)

(declare-fun res!157948 () Bool)

(declare-fun e!189202 () Bool)

(assert (=> d!67477 (=> res!157948 e!189202)))

(assert (=> d!67477 (= res!157948 (bvsge #b00000000000000000000000000000000 (size!7514 a!3312)))))

(assert (=> d!67477 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!189202)))

(declare-fun b!299540 () Bool)

(declare-fun e!189203 () Bool)

(assert (=> b!299540 (= e!189202 e!189203)))

(declare-fun c!48386 () Bool)

(assert (=> b!299540 (= c!48386 (validKeyInArray!0 (select (arr!7162 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!299541 () Bool)

(declare-fun call!25829 () Bool)

(assert (=> b!299541 (= e!189203 call!25829)))

(declare-fun b!299542 () Bool)

(declare-fun e!189204 () Bool)

(assert (=> b!299542 (= e!189203 e!189204)))

(declare-fun lt!149039 () (_ BitVec 64))

(assert (=> b!299542 (= lt!149039 (select (arr!7162 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9342 0))(
  ( (Unit!9343) )
))
(declare-fun lt!149038 () Unit!9342)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15128 (_ BitVec 64) (_ BitVec 32)) Unit!9342)

(assert (=> b!299542 (= lt!149038 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!149039 #b00000000000000000000000000000000))))

(assert (=> b!299542 (arrayContainsKey!0 a!3312 lt!149039 #b00000000000000000000000000000000)))

(declare-fun lt!149037 () Unit!9342)

(assert (=> b!299542 (= lt!149037 lt!149038)))

(declare-fun res!157947 () Bool)

(assert (=> b!299542 (= res!157947 (= (seekEntryOrOpen!0 (select (arr!7162 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2322 #b00000000000000000000000000000000)))))

(assert (=> b!299542 (=> (not res!157947) (not e!189204))))

(declare-fun b!299543 () Bool)

(assert (=> b!299543 (= e!189204 call!25829)))

(declare-fun bm!25826 () Bool)

(assert (=> bm!25826 (= call!25829 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67477 (not res!157948)) b!299540))

(assert (= (and b!299540 c!48386) b!299542))

(assert (= (and b!299540 (not c!48386)) b!299541))

(assert (= (and b!299542 res!157947) b!299543))

(assert (= (or b!299543 b!299541) bm!25826))

(assert (=> b!299540 m!311707))

(assert (=> b!299540 m!311707))

(declare-fun m!311753 () Bool)

(assert (=> b!299540 m!311753))

(assert (=> b!299542 m!311707))

(declare-fun m!311755 () Bool)

(assert (=> b!299542 m!311755))

(declare-fun m!311757 () Bool)

(assert (=> b!299542 m!311757))

(assert (=> b!299542 m!311707))

(declare-fun m!311759 () Bool)

(assert (=> b!299542 m!311759))

(declare-fun m!311761 () Bool)

(assert (=> bm!25826 m!311761))

(assert (=> b!299398 d!67477))

(declare-fun d!67479 () Bool)

(assert (=> d!67479 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29712 d!67479))

(declare-fun d!67485 () Bool)

(assert (=> d!67485 (= (array_inv!5116 a!3312) (bvsge (size!7514 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29712 d!67485))

(declare-fun b!299632 () Bool)

(declare-fun e!189259 () Bool)

(declare-fun lt!149076 () SeekEntryResult!2322)

(assert (=> b!299632 (= e!189259 (bvsge (x!29677 lt!149076) #b01111111111111111111111111111110))))

(declare-fun b!299633 () Bool)

(declare-fun e!189256 () SeekEntryResult!2322)

(assert (=> b!299633 (= e!189256 (Intermediate!2322 true lt!148954 #b00000000000000000000000000000000))))

(declare-fun d!67487 () Bool)

(assert (=> d!67487 e!189259))

(declare-fun c!48422 () Bool)

(assert (=> d!67487 (= c!48422 (and (is-Intermediate!2322 lt!149076) (undefined!3134 lt!149076)))))

(assert (=> d!67487 (= lt!149076 e!189256)))

(declare-fun c!48421 () Bool)

(assert (=> d!67487 (= c!48421 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149075 () (_ BitVec 64))

(assert (=> d!67487 (= lt!149075 (select (arr!7162 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312))) lt!148954))))

(assert (=> d!67487 (validMask!0 mask!3809)))

(assert (=> d!67487 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148954 k!2524 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312)) mask!3809) lt!149076)))

(declare-fun b!299634 () Bool)

(declare-fun e!189260 () SeekEntryResult!2322)

(assert (=> b!299634 (= e!189260 (Intermediate!2322 false lt!148954 #b00000000000000000000000000000000))))

(declare-fun b!299635 () Bool)

(declare-fun e!189257 () Bool)

(assert (=> b!299635 (= e!189259 e!189257)))

(declare-fun res!157976 () Bool)

(assert (=> b!299635 (= res!157976 (and (is-Intermediate!2322 lt!149076) (not (undefined!3134 lt!149076)) (bvslt (x!29677 lt!149076) #b01111111111111111111111111111110) (bvsge (x!29677 lt!149076) #b00000000000000000000000000000000) (bvsge (x!29677 lt!149076) #b00000000000000000000000000000000)))))

(assert (=> b!299635 (=> (not res!157976) (not e!189257))))

(declare-fun b!299636 () Bool)

(assert (=> b!299636 (= e!189256 e!189260)))

(declare-fun c!48420 () Bool)

(assert (=> b!299636 (= c!48420 (or (= lt!149075 k!2524) (= (bvadd lt!149075 lt!149075) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299637 () Bool)

(assert (=> b!299637 (and (bvsge (index!11466 lt!149076) #b00000000000000000000000000000000) (bvslt (index!11466 lt!149076) (size!7514 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312)))))))

(declare-fun e!189258 () Bool)

(assert (=> b!299637 (= e!189258 (= (select (arr!7162 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312))) (index!11466 lt!149076)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299638 () Bool)

(assert (=> b!299638 (and (bvsge (index!11466 lt!149076) #b00000000000000000000000000000000) (bvslt (index!11466 lt!149076) (size!7514 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312)))))))

(declare-fun res!157975 () Bool)

(assert (=> b!299638 (= res!157975 (= (select (arr!7162 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312))) (index!11466 lt!149076)) k!2524))))

(assert (=> b!299638 (=> res!157975 e!189258)))

(assert (=> b!299638 (= e!189257 e!189258)))

(declare-fun b!299639 () Bool)

(assert (=> b!299639 (and (bvsge (index!11466 lt!149076) #b00000000000000000000000000000000) (bvslt (index!11466 lt!149076) (size!7514 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312)))))))

(declare-fun res!157974 () Bool)

(assert (=> b!299639 (= res!157974 (= (select (arr!7162 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312))) (index!11466 lt!149076)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299639 (=> res!157974 e!189258)))

(declare-fun b!299640 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!299640 (= e!189260 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148954 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15129 (store (arr!7162 a!3312) i!1256 k!2524) (size!7514 a!3312)) mask!3809))))

(assert (= (and d!67487 c!48421) b!299633))

(assert (= (and d!67487 (not c!48421)) b!299636))

(assert (= (and b!299636 c!48420) b!299634))

(assert (= (and b!299636 (not c!48420)) b!299640))

(assert (= (and d!67487 c!48422) b!299632))

(assert (= (and d!67487 (not c!48422)) b!299635))

(assert (= (and b!299635 res!157976) b!299638))

(assert (= (and b!299638 (not res!157975)) b!299639))

(assert (= (and b!299639 (not res!157974)) b!299637))

(declare-fun m!311811 () Bool)

(assert (=> d!67487 m!311811))

(assert (=> d!67487 m!311659))

(declare-fun m!311813 () Bool)

(assert (=> b!299637 m!311813))

(assert (=> b!299638 m!311813))

(declare-fun m!311815 () Bool)

(assert (=> b!299640 m!311815))

(assert (=> b!299640 m!311815))

(declare-fun m!311817 () Bool)

(assert (=> b!299640 m!311817))

(assert (=> b!299639 m!311813))

(assert (=> b!299402 d!67487))

(declare-fun b!299641 () Bool)

(declare-fun e!189264 () Bool)

(declare-fun lt!149078 () SeekEntryResult!2322)

(assert (=> b!299641 (= e!189264 (bvsge (x!29677 lt!149078) #b01111111111111111111111111111110))))

(declare-fun b!299642 () Bool)

(declare-fun e!189261 () SeekEntryResult!2322)

(assert (=> b!299642 (= e!189261 (Intermediate!2322 true lt!148954 #b00000000000000000000000000000000))))

(declare-fun d!67501 () Bool)

(assert (=> d!67501 e!189264))

(declare-fun c!48425 () Bool)

(assert (=> d!67501 (= c!48425 (and (is-Intermediate!2322 lt!149078) (undefined!3134 lt!149078)))))

(assert (=> d!67501 (= lt!149078 e!189261)))

(declare-fun c!48424 () Bool)

(assert (=> d!67501 (= c!48424 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!149077 () (_ BitVec 64))

(assert (=> d!67501 (= lt!149077 (select (arr!7162 a!3312) lt!148954))))

(assert (=> d!67501 (validMask!0 mask!3809)))

(assert (=> d!67501 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148954 k!2524 a!3312 mask!3809) lt!149078)))

(declare-fun b!299643 () Bool)

(declare-fun e!189265 () SeekEntryResult!2322)

(assert (=> b!299643 (= e!189265 (Intermediate!2322 false lt!148954 #b00000000000000000000000000000000))))

(declare-fun b!299644 () Bool)

(declare-fun e!189262 () Bool)

(assert (=> b!299644 (= e!189264 e!189262)))

(declare-fun res!157979 () Bool)

(assert (=> b!299644 (= res!157979 (and (is-Intermediate!2322 lt!149078) (not (undefined!3134 lt!149078)) (bvslt (x!29677 lt!149078) #b01111111111111111111111111111110) (bvsge (x!29677 lt!149078) #b00000000000000000000000000000000) (bvsge (x!29677 lt!149078) #b00000000000000000000000000000000)))))

(assert (=> b!299644 (=> (not res!157979) (not e!189262))))

(declare-fun b!299645 () Bool)

(assert (=> b!299645 (= e!189261 e!189265)))

(declare-fun c!48423 () Bool)

(assert (=> b!299645 (= c!48423 (or (= lt!149077 k!2524) (= (bvadd lt!149077 lt!149077) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!299646 () Bool)

(assert (=> b!299646 (and (bvsge (index!11466 lt!149078) #b00000000000000000000000000000000) (bvslt (index!11466 lt!149078) (size!7514 a!3312)))))

(declare-fun e!189263 () Bool)

(assert (=> b!299646 (= e!189263 (= (select (arr!7162 a!3312) (index!11466 lt!149078)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!299647 () Bool)

(assert (=> b!299647 (and (bvsge (index!11466 lt!149078) #b00000000000000000000000000000000) (bvslt (index!11466 lt!149078) (size!7514 a!3312)))))

(declare-fun res!157978 () Bool)

(assert (=> b!299647 (= res!157978 (= (select (arr!7162 a!3312) (index!11466 lt!149078)) k!2524))))

(assert (=> b!299647 (=> res!157978 e!189263)))

(assert (=> b!299647 (= e!189262 e!189263)))

(declare-fun b!299648 () Bool)

(assert (=> b!299648 (and (bvsge (index!11466 lt!149078) #b00000000000000000000000000000000) (bvslt (index!11466 lt!149078) (size!7514 a!3312)))))

(declare-fun res!157977 () Bool)

(assert (=> b!299648 (= res!157977 (= (select (arr!7162 a!3312) (index!11466 lt!149078)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!299648 (=> res!157977 e!189263)))

(declare-fun b!299649 () Bool)

(assert (=> b!299649 (= e!189265 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148954 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(assert (= (and d!67501 c!48424) b!299642))

(assert (= (and d!67501 (not c!48424)) b!299645))

(assert (= (and b!299645 c!48423) b!299643))

(assert (= (and b!299645 (not c!48423)) b!299649))

(assert (= (and d!67501 c!48425) b!299641))

(assert (= (and d!67501 (not c!48425)) b!299644))

(assert (= (and b!299644 res!157979) b!299647))

(assert (= (and b!299647 (not res!157978)) b!299648))

(assert (= (and b!299648 (not res!157977)) b!299646))

(declare-fun m!311819 () Bool)

(assert (=> d!67501 m!311819))

(assert (=> d!67501 m!311659))

(declare-fun m!311821 () Bool)

(assert (=> b!299646 m!311821))

(assert (=> b!299647 m!311821))

(assert (=> b!299649 m!311815))

(assert (=> b!299649 m!311815))

(declare-fun m!311823 () Bool)

(assert (=> b!299649 m!311823))

(assert (=> b!299648 m!311821))

(assert (=> b!299402 d!67501))

(declare-fun d!67503 () Bool)

(declare-fun lt!149084 () (_ BitVec 32))

(declare-fun lt!149083 () (_ BitVec 32))

(assert (=> d!67503 (= lt!149084 (bvmul (bvxor lt!149083 (bvlshr lt!149083 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67503 (= lt!149083 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67503 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157980 (let ((h!5338 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29685 (bvmul (bvxor h!5338 (bvlshr h!5338 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29685 (bvlshr x!29685 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157980 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157980 #b00000000000000000000000000000000))))))

(assert (=> d!67503 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!149084 (bvlshr lt!149084 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!299402 d!67503))

(push 1)

(assert (not b!299514))

(assert (not b!299542))

(assert (not b!299540))

(assert (not b!299649))

(assert (not b!299453))

(assert (not b!299640))

(assert (not d!67459))

(assert (not bm!25826))

(assert (not d!67501))

(assert (not d!67487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

