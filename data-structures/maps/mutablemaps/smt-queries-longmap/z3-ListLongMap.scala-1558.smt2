; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29528 () Bool)

(assert start!29528)

(declare-fun e!188458 () Bool)

(declare-datatypes ((SeekEntryResult!2311 0))(
  ( (MissingZero!2311 (index!11417 (_ BitVec 32))) (Found!2311 (index!11418 (_ BitVec 32))) (Intermediate!2311 (undefined!3123 Bool) (index!11419 (_ BitVec 32)) (x!29609 (_ BitVec 32))) (Undefined!2311) (MissingVacant!2311 (index!11420 (_ BitVec 32))) )
))
(declare-fun lt!148355 () SeekEntryResult!2311)

(declare-datatypes ((array!15097 0))(
  ( (array!15098 (arr!7151 (Array (_ BitVec 32) (_ BitVec 64))) (size!7503 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15097)

(declare-fun lt!148357 () SeekEntryResult!2311)

(declare-fun b!298281 () Bool)

(declare-fun lt!148358 () Bool)

(declare-fun i!1256 () (_ BitVec 32))

(get-info :version)

(assert (=> b!298281 (= e!188458 (and (not lt!148358) (= lt!148357 (MissingVacant!2311 i!1256)) (let ((bdg!6419 (not ((_ is Intermediate!2311) lt!148355)))) (and (or bdg!6419 (not (undefined!3123 lt!148355))) (not bdg!6419) (or (bvslt (index!11419 lt!148355) #b00000000000000000000000000000000) (bvsge (index!11419 lt!148355) (size!7503 a!3312)))))))))

(declare-fun lt!148356 () (_ BitVec 32))

(declare-fun lt!148354 () SeekEntryResult!2311)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15097 (_ BitVec 32)) SeekEntryResult!2311)

(assert (=> b!298281 (= lt!148354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148356 k0!2524 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312)) mask!3809))))

(assert (=> b!298281 (= lt!148355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148356 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298281 (= lt!148356 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!298282 () Bool)

(declare-fun res!157376 () Bool)

(declare-fun e!188459 () Bool)

(assert (=> b!298282 (=> (not res!157376) (not e!188459))))

(assert (=> b!298282 (= res!157376 (and (= (size!7503 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7503 a!3312))))))

(declare-fun b!298283 () Bool)

(assert (=> b!298283 (= e!188459 e!188458)))

(declare-fun res!157372 () Bool)

(assert (=> b!298283 (=> (not res!157372) (not e!188458))))

(assert (=> b!298283 (= res!157372 (or lt!148358 (= lt!148357 (MissingVacant!2311 i!1256))))))

(assert (=> b!298283 (= lt!148358 (= lt!148357 (MissingZero!2311 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15097 (_ BitVec 32)) SeekEntryResult!2311)

(assert (=> b!298283 (= lt!148357 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!298284 () Bool)

(declare-fun res!157375 () Bool)

(assert (=> b!298284 (=> (not res!157375) (not e!188459))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298284 (= res!157375 (validKeyInArray!0 k0!2524))))

(declare-fun res!157373 () Bool)

(assert (=> start!29528 (=> (not res!157373) (not e!188459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29528 (= res!157373 (validMask!0 mask!3809))))

(assert (=> start!29528 e!188459))

(assert (=> start!29528 true))

(declare-fun array_inv!5105 (array!15097) Bool)

(assert (=> start!29528 (array_inv!5105 a!3312)))

(declare-fun b!298285 () Bool)

(declare-fun res!157377 () Bool)

(assert (=> b!298285 (=> (not res!157377) (not e!188458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15097 (_ BitVec 32)) Bool)

(assert (=> b!298285 (= res!157377 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!298286 () Bool)

(declare-fun res!157374 () Bool)

(assert (=> b!298286 (=> (not res!157374) (not e!188459))))

(declare-fun arrayContainsKey!0 (array!15097 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298286 (= res!157374 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!29528 res!157373) b!298282))

(assert (= (and b!298282 res!157376) b!298284))

(assert (= (and b!298284 res!157375) b!298286))

(assert (= (and b!298286 res!157374) b!298283))

(assert (= (and b!298283 res!157372) b!298285))

(assert (= (and b!298285 res!157377) b!298281))

(declare-fun m!310843 () Bool)

(assert (=> b!298285 m!310843))

(declare-fun m!310845 () Bool)

(assert (=> start!29528 m!310845))

(declare-fun m!310847 () Bool)

(assert (=> start!29528 m!310847))

(declare-fun m!310849 () Bool)

(assert (=> b!298283 m!310849))

(declare-fun m!310851 () Bool)

(assert (=> b!298281 m!310851))

(declare-fun m!310853 () Bool)

(assert (=> b!298281 m!310853))

(declare-fun m!310855 () Bool)

(assert (=> b!298281 m!310855))

(declare-fun m!310857 () Bool)

(assert (=> b!298281 m!310857))

(declare-fun m!310859 () Bool)

(assert (=> b!298286 m!310859))

(declare-fun m!310861 () Bool)

(assert (=> b!298284 m!310861))

(check-sat (not b!298285) (not b!298284) (not b!298286) (not start!29528) (not b!298283) (not b!298281))
(check-sat)
(get-model)

(declare-fun b!298313 () Bool)

(declare-fun e!188476 () Bool)

(declare-fun e!188475 () Bool)

(assert (=> b!298313 (= e!188476 e!188475)))

(declare-fun lt!148380 () (_ BitVec 64))

(assert (=> b!298313 (= lt!148380 (select (arr!7151 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9300 0))(
  ( (Unit!9301) )
))
(declare-fun lt!148381 () Unit!9300)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15097 (_ BitVec 64) (_ BitVec 32)) Unit!9300)

(assert (=> b!298313 (= lt!148381 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148380 #b00000000000000000000000000000000))))

(assert (=> b!298313 (arrayContainsKey!0 a!3312 lt!148380 #b00000000000000000000000000000000)))

(declare-fun lt!148382 () Unit!9300)

(assert (=> b!298313 (= lt!148382 lt!148381)))

(declare-fun res!157400 () Bool)

(assert (=> b!298313 (= res!157400 (= (seekEntryOrOpen!0 (select (arr!7151 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2311 #b00000000000000000000000000000000)))))

(assert (=> b!298313 (=> (not res!157400) (not e!188475))))

(declare-fun bm!25776 () Bool)

(declare-fun call!25779 () Bool)

(assert (=> bm!25776 (= call!25779 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!298314 () Bool)

(declare-fun e!188477 () Bool)

(assert (=> b!298314 (= e!188477 e!188476)))

(declare-fun c!48042 () Bool)

(assert (=> b!298314 (= c!48042 (validKeyInArray!0 (select (arr!7151 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!298315 () Bool)

(assert (=> b!298315 (= e!188476 call!25779)))

(declare-fun b!298316 () Bool)

(assert (=> b!298316 (= e!188475 call!25779)))

(declare-fun d!67229 () Bool)

(declare-fun res!157401 () Bool)

(assert (=> d!67229 (=> res!157401 e!188477)))

(assert (=> d!67229 (= res!157401 (bvsge #b00000000000000000000000000000000 (size!7503 a!3312)))))

(assert (=> d!67229 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188477)))

(assert (= (and d!67229 (not res!157401)) b!298314))

(assert (= (and b!298314 c!48042) b!298313))

(assert (= (and b!298314 (not c!48042)) b!298315))

(assert (= (and b!298313 res!157400) b!298316))

(assert (= (or b!298316 b!298315) bm!25776))

(declare-fun m!310883 () Bool)

(assert (=> b!298313 m!310883))

(declare-fun m!310885 () Bool)

(assert (=> b!298313 m!310885))

(declare-fun m!310887 () Bool)

(assert (=> b!298313 m!310887))

(assert (=> b!298313 m!310883))

(declare-fun m!310889 () Bool)

(assert (=> b!298313 m!310889))

(declare-fun m!310891 () Bool)

(assert (=> bm!25776 m!310891))

(assert (=> b!298314 m!310883))

(assert (=> b!298314 m!310883))

(declare-fun m!310893 () Bool)

(assert (=> b!298314 m!310893))

(assert (=> b!298285 d!67229))

(declare-fun d!67231 () Bool)

(assert (=> d!67231 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29528 d!67231))

(declare-fun d!67241 () Bool)

(assert (=> d!67241 (= (array_inv!5105 a!3312) (bvsge (size!7503 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29528 d!67241))

(declare-fun lt!148393 () SeekEntryResult!2311)

(declare-fun b!298368 () Bool)

(assert (=> b!298368 (and (bvsge (index!11419 lt!148393) #b00000000000000000000000000000000) (bvslt (index!11419 lt!148393) (size!7503 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312)))))))

(declare-fun res!157425 () Bool)

(assert (=> b!298368 (= res!157425 (= (select (arr!7151 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312))) (index!11419 lt!148393)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188513 () Bool)

(assert (=> b!298368 (=> res!157425 e!188513)))

(declare-fun b!298369 () Bool)

(declare-fun e!188511 () Bool)

(assert (=> b!298369 (= e!188511 (bvsge (x!29609 lt!148393) #b01111111111111111111111111111110))))

(declare-fun b!298370 () Bool)

(declare-fun e!188510 () Bool)

(assert (=> b!298370 (= e!188511 e!188510)))

(declare-fun res!157423 () Bool)

(assert (=> b!298370 (= res!157423 (and ((_ is Intermediate!2311) lt!148393) (not (undefined!3123 lt!148393)) (bvslt (x!29609 lt!148393) #b01111111111111111111111111111110) (bvsge (x!29609 lt!148393) #b00000000000000000000000000000000) (bvsge (x!29609 lt!148393) #b00000000000000000000000000000000)))))

(assert (=> b!298370 (=> (not res!157423) (not e!188510))))

(declare-fun b!298371 () Bool)

(declare-fun e!188509 () SeekEntryResult!2311)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298371 (= e!188509 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148356 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312)) mask!3809))))

(declare-fun b!298372 () Bool)

(declare-fun e!188512 () SeekEntryResult!2311)

(assert (=> b!298372 (= e!188512 e!188509)))

(declare-fun c!48059 () Bool)

(declare-fun lt!148394 () (_ BitVec 64))

(assert (=> b!298372 (= c!48059 (or (= lt!148394 k0!2524) (= (bvadd lt!148394 lt!148394) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298373 () Bool)

(assert (=> b!298373 (and (bvsge (index!11419 lt!148393) #b00000000000000000000000000000000) (bvslt (index!11419 lt!148393) (size!7503 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312)))))))

(assert (=> b!298373 (= e!188513 (= (select (arr!7151 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312))) (index!11419 lt!148393)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298374 () Bool)

(assert (=> b!298374 (= e!188509 (Intermediate!2311 false lt!148356 #b00000000000000000000000000000000))))

(declare-fun d!67243 () Bool)

(assert (=> d!67243 e!188511))

(declare-fun c!48060 () Bool)

(assert (=> d!67243 (= c!48060 (and ((_ is Intermediate!2311) lt!148393) (undefined!3123 lt!148393)))))

(assert (=> d!67243 (= lt!148393 e!188512)))

(declare-fun c!48058 () Bool)

(assert (=> d!67243 (= c!48058 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67243 (= lt!148394 (select (arr!7151 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312))) lt!148356))))

(assert (=> d!67243 (validMask!0 mask!3809)))

(assert (=> d!67243 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148356 k0!2524 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312)) mask!3809) lt!148393)))

(declare-fun b!298375 () Bool)

(assert (=> b!298375 (= e!188512 (Intermediate!2311 true lt!148356 #b00000000000000000000000000000000))))

(declare-fun b!298376 () Bool)

(assert (=> b!298376 (and (bvsge (index!11419 lt!148393) #b00000000000000000000000000000000) (bvslt (index!11419 lt!148393) (size!7503 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312)))))))

(declare-fun res!157424 () Bool)

(assert (=> b!298376 (= res!157424 (= (select (arr!7151 (array!15098 (store (arr!7151 a!3312) i!1256 k0!2524) (size!7503 a!3312))) (index!11419 lt!148393)) k0!2524))))

(assert (=> b!298376 (=> res!157424 e!188513)))

(assert (=> b!298376 (= e!188510 e!188513)))

(assert (= (and d!67243 c!48058) b!298375))

(assert (= (and d!67243 (not c!48058)) b!298372))

(assert (= (and b!298372 c!48059) b!298374))

(assert (= (and b!298372 (not c!48059)) b!298371))

(assert (= (and d!67243 c!48060) b!298369))

(assert (= (and d!67243 (not c!48060)) b!298370))

(assert (= (and b!298370 res!157423) b!298376))

(assert (= (and b!298376 (not res!157424)) b!298368))

(assert (= (and b!298368 (not res!157425)) b!298373))

(declare-fun m!310901 () Bool)

(assert (=> b!298368 m!310901))

(assert (=> b!298376 m!310901))

(declare-fun m!310907 () Bool)

(assert (=> b!298371 m!310907))

(assert (=> b!298371 m!310907))

(declare-fun m!310911 () Bool)

(assert (=> b!298371 m!310911))

(declare-fun m!310913 () Bool)

(assert (=> d!67243 m!310913))

(assert (=> d!67243 m!310845))

(assert (=> b!298373 m!310901))

(assert (=> b!298281 d!67243))

(declare-fun b!298386 () Bool)

(declare-fun lt!148397 () SeekEntryResult!2311)

(assert (=> b!298386 (and (bvsge (index!11419 lt!148397) #b00000000000000000000000000000000) (bvslt (index!11419 lt!148397) (size!7503 a!3312)))))

(declare-fun res!157431 () Bool)

(assert (=> b!298386 (= res!157431 (= (select (arr!7151 a!3312) (index!11419 lt!148397)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188523 () Bool)

(assert (=> b!298386 (=> res!157431 e!188523)))

(declare-fun b!298387 () Bool)

(declare-fun e!188521 () Bool)

(assert (=> b!298387 (= e!188521 (bvsge (x!29609 lt!148397) #b01111111111111111111111111111110))))

(declare-fun b!298388 () Bool)

(declare-fun e!188520 () Bool)

(assert (=> b!298388 (= e!188521 e!188520)))

(declare-fun res!157429 () Bool)

(assert (=> b!298388 (= res!157429 (and ((_ is Intermediate!2311) lt!148397) (not (undefined!3123 lt!148397)) (bvslt (x!29609 lt!148397) #b01111111111111111111111111111110) (bvsge (x!29609 lt!148397) #b00000000000000000000000000000000) (bvsge (x!29609 lt!148397) #b00000000000000000000000000000000)))))

(assert (=> b!298388 (=> (not res!157429) (not e!188520))))

(declare-fun e!188519 () SeekEntryResult!2311)

(declare-fun b!298389 () Bool)

(assert (=> b!298389 (= e!188519 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148356 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!298390 () Bool)

(declare-fun e!188522 () SeekEntryResult!2311)

(assert (=> b!298390 (= e!188522 e!188519)))

(declare-fun c!48065 () Bool)

(declare-fun lt!148398 () (_ BitVec 64))

(assert (=> b!298390 (= c!48065 (or (= lt!148398 k0!2524) (= (bvadd lt!148398 lt!148398) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298391 () Bool)

(assert (=> b!298391 (and (bvsge (index!11419 lt!148397) #b00000000000000000000000000000000) (bvslt (index!11419 lt!148397) (size!7503 a!3312)))))

(assert (=> b!298391 (= e!188523 (= (select (arr!7151 a!3312) (index!11419 lt!148397)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298392 () Bool)

(assert (=> b!298392 (= e!188519 (Intermediate!2311 false lt!148356 #b00000000000000000000000000000000))))

(declare-fun d!67253 () Bool)

(assert (=> d!67253 e!188521))

(declare-fun c!48066 () Bool)

(assert (=> d!67253 (= c!48066 (and ((_ is Intermediate!2311) lt!148397) (undefined!3123 lt!148397)))))

(assert (=> d!67253 (= lt!148397 e!188522)))

(declare-fun c!48064 () Bool)

(assert (=> d!67253 (= c!48064 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67253 (= lt!148398 (select (arr!7151 a!3312) lt!148356))))

(assert (=> d!67253 (validMask!0 mask!3809)))

(assert (=> d!67253 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148356 k0!2524 a!3312 mask!3809) lt!148397)))

(declare-fun b!298393 () Bool)

(assert (=> b!298393 (= e!188522 (Intermediate!2311 true lt!148356 #b00000000000000000000000000000000))))

(declare-fun b!298394 () Bool)

(assert (=> b!298394 (and (bvsge (index!11419 lt!148397) #b00000000000000000000000000000000) (bvslt (index!11419 lt!148397) (size!7503 a!3312)))))

(declare-fun res!157430 () Bool)

(assert (=> b!298394 (= res!157430 (= (select (arr!7151 a!3312) (index!11419 lt!148397)) k0!2524))))

(assert (=> b!298394 (=> res!157430 e!188523)))

(assert (=> b!298394 (= e!188520 e!188523)))

(assert (= (and d!67253 c!48064) b!298393))

(assert (= (and d!67253 (not c!48064)) b!298390))

(assert (= (and b!298390 c!48065) b!298392))

(assert (= (and b!298390 (not c!48065)) b!298389))

(assert (= (and d!67253 c!48066) b!298387))

(assert (= (and d!67253 (not c!48066)) b!298388))

(assert (= (and b!298388 res!157429) b!298394))

(assert (= (and b!298394 (not res!157430)) b!298386))

(assert (= (and b!298386 (not res!157431)) b!298391))

(declare-fun m!310917 () Bool)

(assert (=> b!298386 m!310917))

(assert (=> b!298394 m!310917))

(assert (=> b!298389 m!310907))

(assert (=> b!298389 m!310907))

(declare-fun m!310923 () Bool)

(assert (=> b!298389 m!310923))

(declare-fun m!310925 () Bool)

(assert (=> d!67253 m!310925))

(assert (=> d!67253 m!310845))

(assert (=> b!298391 m!310917))

(assert (=> b!298281 d!67253))

(declare-fun d!67257 () Bool)

(declare-fun lt!148414 () (_ BitVec 32))

(declare-fun lt!148413 () (_ BitVec 32))

(assert (=> d!67257 (= lt!148414 (bvmul (bvxor lt!148413 (bvlshr lt!148413 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67257 (= lt!148413 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67257 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157433 (let ((h!5328 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29615 (bvmul (bvxor h!5328 (bvlshr h!5328 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29615 (bvlshr x!29615 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157433 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157433 #b00000000000000000000000000000000))))))

(assert (=> d!67257 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!148414 (bvlshr lt!148414 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!298281 d!67257))

(declare-fun d!67259 () Bool)

(declare-fun res!157451 () Bool)

(declare-fun e!188548 () Bool)

(assert (=> d!67259 (=> res!157451 e!188548)))

(assert (=> d!67259 (= res!157451 (= (select (arr!7151 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67259 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!188548)))

(declare-fun b!298435 () Bool)

(declare-fun e!188549 () Bool)

(assert (=> b!298435 (= e!188548 e!188549)))

(declare-fun res!157452 () Bool)

(assert (=> b!298435 (=> (not res!157452) (not e!188549))))

(assert (=> b!298435 (= res!157452 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7503 a!3312)))))

(declare-fun b!298436 () Bool)

(assert (=> b!298436 (= e!188549 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67259 (not res!157451)) b!298435))

(assert (= (and b!298435 res!157452) b!298436))

(assert (=> d!67259 m!310883))

(declare-fun m!310941 () Bool)

(assert (=> b!298436 m!310941))

(assert (=> b!298286 d!67259))

(declare-fun d!67267 () Bool)

(assert (=> d!67267 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!298284 d!67267))

(declare-fun b!298461 () Bool)

(declare-fun e!188563 () SeekEntryResult!2311)

(declare-fun e!188564 () SeekEntryResult!2311)

(assert (=> b!298461 (= e!188563 e!188564)))

(declare-fun lt!148438 () (_ BitVec 64))

(declare-fun lt!148439 () SeekEntryResult!2311)

(assert (=> b!298461 (= lt!148438 (select (arr!7151 a!3312) (index!11419 lt!148439)))))

(declare-fun c!48092 () Bool)

(assert (=> b!298461 (= c!48092 (= lt!148438 k0!2524))))

(declare-fun b!298462 () Bool)

(declare-fun e!188562 () SeekEntryResult!2311)

(assert (=> b!298462 (= e!188562 (MissingZero!2311 (index!11419 lt!148439)))))

(declare-fun b!298463 () Bool)

(assert (=> b!298463 (= e!188563 Undefined!2311)))

(declare-fun b!298464 () Bool)

(declare-fun c!48093 () Bool)

(assert (=> b!298464 (= c!48093 (= lt!148438 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298464 (= e!188564 e!188562)))

(declare-fun b!298465 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15097 (_ BitVec 32)) SeekEntryResult!2311)

(assert (=> b!298465 (= e!188562 (seekKeyOrZeroReturnVacant!0 (x!29609 lt!148439) (index!11419 lt!148439) (index!11419 lt!148439) k0!2524 a!3312 mask!3809))))

(declare-fun d!67269 () Bool)

(declare-fun lt!148437 () SeekEntryResult!2311)

(assert (=> d!67269 (and (or ((_ is Undefined!2311) lt!148437) (not ((_ is Found!2311) lt!148437)) (and (bvsge (index!11418 lt!148437) #b00000000000000000000000000000000) (bvslt (index!11418 lt!148437) (size!7503 a!3312)))) (or ((_ is Undefined!2311) lt!148437) ((_ is Found!2311) lt!148437) (not ((_ is MissingZero!2311) lt!148437)) (and (bvsge (index!11417 lt!148437) #b00000000000000000000000000000000) (bvslt (index!11417 lt!148437) (size!7503 a!3312)))) (or ((_ is Undefined!2311) lt!148437) ((_ is Found!2311) lt!148437) ((_ is MissingZero!2311) lt!148437) (not ((_ is MissingVacant!2311) lt!148437)) (and (bvsge (index!11420 lt!148437) #b00000000000000000000000000000000) (bvslt (index!11420 lt!148437) (size!7503 a!3312)))) (or ((_ is Undefined!2311) lt!148437) (ite ((_ is Found!2311) lt!148437) (= (select (arr!7151 a!3312) (index!11418 lt!148437)) k0!2524) (ite ((_ is MissingZero!2311) lt!148437) (= (select (arr!7151 a!3312) (index!11417 lt!148437)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2311) lt!148437) (= (select (arr!7151 a!3312) (index!11420 lt!148437)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67269 (= lt!148437 e!188563)))

(declare-fun c!48091 () Bool)

(assert (=> d!67269 (= c!48091 (and ((_ is Intermediate!2311) lt!148439) (undefined!3123 lt!148439)))))

(assert (=> d!67269 (= lt!148439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67269 (validMask!0 mask!3809)))

(assert (=> d!67269 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!148437)))

(declare-fun b!298466 () Bool)

(assert (=> b!298466 (= e!188564 (Found!2311 (index!11419 lt!148439)))))

(assert (= (and d!67269 c!48091) b!298463))

(assert (= (and d!67269 (not c!48091)) b!298461))

(assert (= (and b!298461 c!48092) b!298466))

(assert (= (and b!298461 (not c!48092)) b!298464))

(assert (= (and b!298464 c!48093) b!298462))

(assert (= (and b!298464 (not c!48093)) b!298465))

(declare-fun m!310943 () Bool)

(assert (=> b!298461 m!310943))

(declare-fun m!310945 () Bool)

(assert (=> b!298465 m!310945))

(assert (=> d!67269 m!310857))

(declare-fun m!310947 () Bool)

(assert (=> d!67269 m!310947))

(assert (=> d!67269 m!310857))

(declare-fun m!310949 () Bool)

(assert (=> d!67269 m!310949))

(declare-fun m!310951 () Bool)

(assert (=> d!67269 m!310951))

(declare-fun m!310953 () Bool)

(assert (=> d!67269 m!310953))

(assert (=> d!67269 m!310845))

(assert (=> b!298283 d!67269))

(check-sat (not b!298313) (not b!298465) (not d!67253) (not b!298436) (not b!298371) (not b!298314) (not d!67269) (not b!298389) (not d!67243) (not bm!25776))
(check-sat)
