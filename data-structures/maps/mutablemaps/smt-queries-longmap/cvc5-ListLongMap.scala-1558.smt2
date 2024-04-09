; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29526 () Bool)

(assert start!29526)

(declare-fun b!298263 () Bool)

(declare-fun res!157356 () Bool)

(declare-fun e!188448 () Bool)

(assert (=> b!298263 (=> (not res!157356) (not e!188448))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-datatypes ((array!15095 0))(
  ( (array!15096 (arr!7150 (Array (_ BitVec 32) (_ BitVec 64))) (size!7502 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15095)

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!298263 (= res!157356 (and (= (size!7502 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7502 a!3312))))))

(declare-fun b!298264 () Bool)

(declare-fun res!157354 () Bool)

(assert (=> b!298264 (=> (not res!157354) (not e!188448))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298264 (= res!157354 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!298265 () Bool)

(declare-fun res!157358 () Bool)

(assert (=> b!298265 (=> (not res!157358) (not e!188448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298265 (= res!157358 (validKeyInArray!0 k!2524))))

(declare-fun res!157357 () Bool)

(assert (=> start!29526 (=> (not res!157357) (not e!188448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29526 (= res!157357 (validMask!0 mask!3809))))

(assert (=> start!29526 e!188448))

(assert (=> start!29526 true))

(declare-fun array_inv!5104 (array!15095) Bool)

(assert (=> start!29526 (array_inv!5104 a!3312)))

(declare-datatypes ((SeekEntryResult!2310 0))(
  ( (MissingZero!2310 (index!11413 (_ BitVec 32))) (Found!2310 (index!11414 (_ BitVec 32))) (Intermediate!2310 (undefined!3122 Bool) (index!11415 (_ BitVec 32)) (x!29608 (_ BitVec 32))) (Undefined!2310) (MissingVacant!2310 (index!11416 (_ BitVec 32))) )
))
(declare-fun lt!148341 () SeekEntryResult!2310)

(declare-fun e!188449 () Bool)

(declare-fun lt!148343 () Bool)

(declare-fun lt!148342 () SeekEntryResult!2310)

(declare-fun b!298266 () Bool)

(assert (=> b!298266 (= e!188449 (and (not lt!148343) (= lt!148342 (MissingVacant!2310 i!1256)) (let ((bdg!6419 (not (is-Intermediate!2310 lt!148341)))) (and (or bdg!6419 (not (undefined!3122 lt!148341))) (not bdg!6419) (or (bvslt (index!11415 lt!148341) #b00000000000000000000000000000000) (bvsge (index!11415 lt!148341) (size!7502 a!3312)))))))))

(declare-fun lt!148340 () SeekEntryResult!2310)

(declare-fun lt!148339 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15095 (_ BitVec 32)) SeekEntryResult!2310)

(assert (=> b!298266 (= lt!148340 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148339 k!2524 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312)) mask!3809))))

(assert (=> b!298266 (= lt!148341 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148339 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298266 (= lt!148339 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!298267 () Bool)

(assert (=> b!298267 (= e!188448 e!188449)))

(declare-fun res!157355 () Bool)

(assert (=> b!298267 (=> (not res!157355) (not e!188449))))

(assert (=> b!298267 (= res!157355 (or lt!148343 (= lt!148342 (MissingVacant!2310 i!1256))))))

(assert (=> b!298267 (= lt!148343 (= lt!148342 (MissingZero!2310 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15095 (_ BitVec 32)) SeekEntryResult!2310)

(assert (=> b!298267 (= lt!148342 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!298268 () Bool)

(declare-fun res!157359 () Bool)

(assert (=> b!298268 (=> (not res!157359) (not e!188449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15095 (_ BitVec 32)) Bool)

(assert (=> b!298268 (= res!157359 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29526 res!157357) b!298263))

(assert (= (and b!298263 res!157356) b!298265))

(assert (= (and b!298265 res!157358) b!298264))

(assert (= (and b!298264 res!157354) b!298267))

(assert (= (and b!298267 res!157355) b!298268))

(assert (= (and b!298268 res!157359) b!298266))

(declare-fun m!310823 () Bool)

(assert (=> b!298265 m!310823))

(declare-fun m!310825 () Bool)

(assert (=> b!298268 m!310825))

(declare-fun m!310827 () Bool)

(assert (=> b!298264 m!310827))

(declare-fun m!310829 () Bool)

(assert (=> start!29526 m!310829))

(declare-fun m!310831 () Bool)

(assert (=> start!29526 m!310831))

(declare-fun m!310833 () Bool)

(assert (=> b!298267 m!310833))

(declare-fun m!310835 () Bool)

(assert (=> b!298266 m!310835))

(declare-fun m!310837 () Bool)

(assert (=> b!298266 m!310837))

(declare-fun m!310839 () Bool)

(assert (=> b!298266 m!310839))

(declare-fun m!310841 () Bool)

(assert (=> b!298266 m!310841))

(push 1)

(assert (not b!298266))

(assert (not b!298268))

(assert (not b!298264))

(assert (not start!29526))

(assert (not b!298267))

(assert (not b!298265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67235 () Bool)

(assert (=> d!67235 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!298265 d!67235))

(declare-fun d!67237 () Bool)

(declare-fun res!157406 () Bool)

(declare-fun e!188482 () Bool)

(assert (=> d!67237 (=> res!157406 e!188482)))

(assert (=> d!67237 (= res!157406 (= (select (arr!7150 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67237 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!188482)))

(declare-fun b!298321 () Bool)

(declare-fun e!188483 () Bool)

(assert (=> b!298321 (= e!188482 e!188483)))

(declare-fun res!157407 () Bool)

(assert (=> b!298321 (=> (not res!157407) (not e!188483))))

(assert (=> b!298321 (= res!157407 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7502 a!3312)))))

(declare-fun b!298322 () Bool)

(assert (=> b!298322 (= e!188483 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67237 (not res!157406)) b!298321))

(assert (= (and b!298321 res!157407) b!298322))

(declare-fun m!310895 () Bool)

(assert (=> d!67237 m!310895))

(declare-fun m!310897 () Bool)

(assert (=> b!298322 m!310897))

(assert (=> b!298264 d!67237))

(declare-fun b!298359 () Bool)

(declare-fun e!188505 () Bool)

(declare-fun lt!148392 () SeekEntryResult!2310)

(assert (=> b!298359 (= e!188505 (bvsge (x!29608 lt!148392) #b01111111111111111111111111111110))))

(declare-fun b!298360 () Bool)

(assert (=> b!298360 (and (bvsge (index!11415 lt!148392) #b00000000000000000000000000000000) (bvslt (index!11415 lt!148392) (size!7502 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312)))))))

(declare-fun res!157421 () Bool)

(assert (=> b!298360 (= res!157421 (= (select (arr!7150 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312))) (index!11415 lt!148392)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188507 () Bool)

(assert (=> b!298360 (=> res!157421 e!188507)))

(declare-fun b!298361 () Bool)

(declare-fun e!188506 () SeekEntryResult!2310)

(declare-fun e!188508 () SeekEntryResult!2310)

(assert (=> b!298361 (= e!188506 e!188508)))

(declare-fun c!48055 () Bool)

(declare-fun lt!148391 () (_ BitVec 64))

(assert (=> b!298361 (= c!48055 (or (= lt!148391 k!2524) (= (bvadd lt!148391 lt!148391) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298362 () Bool)

(assert (=> b!298362 (and (bvsge (index!11415 lt!148392) #b00000000000000000000000000000000) (bvslt (index!11415 lt!148392) (size!7502 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312)))))))

(assert (=> b!298362 (= e!188507 (= (select (arr!7150 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312))) (index!11415 lt!148392)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298363 () Bool)

(assert (=> b!298363 (and (bvsge (index!11415 lt!148392) #b00000000000000000000000000000000) (bvslt (index!11415 lt!148392) (size!7502 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312)))))))

(declare-fun res!157422 () Bool)

(assert (=> b!298363 (= res!157422 (= (select (arr!7150 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312))) (index!11415 lt!148392)) k!2524))))

(assert (=> b!298363 (=> res!157422 e!188507)))

(declare-fun e!188504 () Bool)

(assert (=> b!298363 (= e!188504 e!188507)))

(declare-fun d!67245 () Bool)

(assert (=> d!67245 e!188505))

(declare-fun c!48057 () Bool)

(assert (=> d!67245 (= c!48057 (and (is-Intermediate!2310 lt!148392) (undefined!3122 lt!148392)))))

(assert (=> d!67245 (= lt!148392 e!188506)))

(declare-fun c!48056 () Bool)

(assert (=> d!67245 (= c!48056 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67245 (= lt!148391 (select (arr!7150 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312))) lt!148339))))

(assert (=> d!67245 (validMask!0 mask!3809)))

(assert (=> d!67245 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148339 k!2524 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312)) mask!3809) lt!148392)))

(declare-fun b!298364 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298364 (= e!188508 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148339 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15096 (store (arr!7150 a!3312) i!1256 k!2524) (size!7502 a!3312)) mask!3809))))

(declare-fun b!298365 () Bool)

(assert (=> b!298365 (= e!188506 (Intermediate!2310 true lt!148339 #b00000000000000000000000000000000))))

(declare-fun b!298366 () Bool)

(assert (=> b!298366 (= e!188508 (Intermediate!2310 false lt!148339 #b00000000000000000000000000000000))))

(declare-fun b!298367 () Bool)

(assert (=> b!298367 (= e!188505 e!188504)))

(declare-fun res!157420 () Bool)

(assert (=> b!298367 (= res!157420 (and (is-Intermediate!2310 lt!148392) (not (undefined!3122 lt!148392)) (bvslt (x!29608 lt!148392) #b01111111111111111111111111111110) (bvsge (x!29608 lt!148392) #b00000000000000000000000000000000) (bvsge (x!29608 lt!148392) #b00000000000000000000000000000000)))))

(assert (=> b!298367 (=> (not res!157420) (not e!188504))))

(assert (= (and d!67245 c!48056) b!298365))

(assert (= (and d!67245 (not c!48056)) b!298361))

(assert (= (and b!298361 c!48055) b!298366))

(assert (= (and b!298361 (not c!48055)) b!298364))

(assert (= (and d!67245 c!48057) b!298359))

(assert (= (and d!67245 (not c!48057)) b!298367))

(assert (= (and b!298367 res!157420) b!298363))

(assert (= (and b!298363 (not res!157422)) b!298360))

(assert (= (and b!298360 (not res!157421)) b!298362))

(declare-fun m!310899 () Bool)

(assert (=> b!298363 m!310899))

(assert (=> b!298362 m!310899))

(declare-fun m!310903 () Bool)

(assert (=> d!67245 m!310903))

(assert (=> d!67245 m!310829))

(declare-fun m!310905 () Bool)

(assert (=> b!298364 m!310905))

(assert (=> b!298364 m!310905))

(declare-fun m!310909 () Bool)

(assert (=> b!298364 m!310909))

(assert (=> b!298360 m!310899))

(assert (=> b!298266 d!67245))

(declare-fun b!298377 () Bool)

(declare-fun e!188515 () Bool)

(declare-fun lt!148396 () SeekEntryResult!2310)

(assert (=> b!298377 (= e!188515 (bvsge (x!29608 lt!148396) #b01111111111111111111111111111110))))

(declare-fun b!298378 () Bool)

(assert (=> b!298378 (and (bvsge (index!11415 lt!148396) #b00000000000000000000000000000000) (bvslt (index!11415 lt!148396) (size!7502 a!3312)))))

(declare-fun res!157427 () Bool)

(assert (=> b!298378 (= res!157427 (= (select (arr!7150 a!3312) (index!11415 lt!148396)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188517 () Bool)

(assert (=> b!298378 (=> res!157427 e!188517)))

(declare-fun b!298379 () Bool)

(declare-fun e!188516 () SeekEntryResult!2310)

(declare-fun e!188518 () SeekEntryResult!2310)

(assert (=> b!298379 (= e!188516 e!188518)))

(declare-fun c!48061 () Bool)

(declare-fun lt!148395 () (_ BitVec 64))

(assert (=> b!298379 (= c!48061 (or (= lt!148395 k!2524) (= (bvadd lt!148395 lt!148395) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!298380 () Bool)

(assert (=> b!298380 (and (bvsge (index!11415 lt!148396) #b00000000000000000000000000000000) (bvslt (index!11415 lt!148396) (size!7502 a!3312)))))

(assert (=> b!298380 (= e!188517 (= (select (arr!7150 a!3312) (index!11415 lt!148396)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298381 () Bool)

(assert (=> b!298381 (and (bvsge (index!11415 lt!148396) #b00000000000000000000000000000000) (bvslt (index!11415 lt!148396) (size!7502 a!3312)))))

(declare-fun res!157428 () Bool)

(assert (=> b!298381 (= res!157428 (= (select (arr!7150 a!3312) (index!11415 lt!148396)) k!2524))))

(assert (=> b!298381 (=> res!157428 e!188517)))

(declare-fun e!188514 () Bool)

(assert (=> b!298381 (= e!188514 e!188517)))

(declare-fun d!67251 () Bool)

(assert (=> d!67251 e!188515))

(declare-fun c!48063 () Bool)

(assert (=> d!67251 (= c!48063 (and (is-Intermediate!2310 lt!148396) (undefined!3122 lt!148396)))))

(assert (=> d!67251 (= lt!148396 e!188516)))

(declare-fun c!48062 () Bool)

(assert (=> d!67251 (= c!48062 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!67251 (= lt!148395 (select (arr!7150 a!3312) lt!148339))))

(assert (=> d!67251 (validMask!0 mask!3809)))

(assert (=> d!67251 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148339 k!2524 a!3312 mask!3809) lt!148396)))

(declare-fun b!298382 () Bool)

(assert (=> b!298382 (= e!188518 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148339 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!298383 () Bool)

(assert (=> b!298383 (= e!188516 (Intermediate!2310 true lt!148339 #b00000000000000000000000000000000))))

(declare-fun b!298384 () Bool)

(assert (=> b!298384 (= e!188518 (Intermediate!2310 false lt!148339 #b00000000000000000000000000000000))))

(declare-fun b!298385 () Bool)

(assert (=> b!298385 (= e!188515 e!188514)))

(declare-fun res!157426 () Bool)

(assert (=> b!298385 (= res!157426 (and (is-Intermediate!2310 lt!148396) (not (undefined!3122 lt!148396)) (bvslt (x!29608 lt!148396) #b01111111111111111111111111111110) (bvsge (x!29608 lt!148396) #b00000000000000000000000000000000) (bvsge (x!29608 lt!148396) #b00000000000000000000000000000000)))))

(assert (=> b!298385 (=> (not res!157426) (not e!188514))))

(assert (= (and d!67251 c!48062) b!298383))

(assert (= (and d!67251 (not c!48062)) b!298379))

(assert (= (and b!298379 c!48061) b!298384))

(assert (= (and b!298379 (not c!48061)) b!298382))

(assert (= (and d!67251 c!48063) b!298377))

(assert (= (and d!67251 (not c!48063)) b!298385))

(assert (= (and b!298385 res!157426) b!298381))

(assert (= (and b!298381 (not res!157428)) b!298378))

(assert (= (and b!298378 (not res!157427)) b!298380))

(declare-fun m!310915 () Bool)

(assert (=> b!298381 m!310915))

(assert (=> b!298380 m!310915))

(declare-fun m!310919 () Bool)

(assert (=> d!67251 m!310919))

(assert (=> d!67251 m!310829))

(assert (=> b!298382 m!310905))

(assert (=> b!298382 m!310905))

(declare-fun m!310921 () Bool)

(assert (=> b!298382 m!310921))

(assert (=> b!298378 m!310915))

(assert (=> b!298266 d!67251))

(declare-fun d!67255 () Bool)

(declare-fun lt!148416 () (_ BitVec 32))

(declare-fun lt!148415 () (_ BitVec 32))

(assert (=> d!67255 (= lt!148416 (bvmul (bvxor lt!148415 (bvlshr lt!148415 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67255 (= lt!148415 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67255 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157432 (let ((h!5327 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29614 (bvmul (bvxor h!5327 (bvlshr h!5327 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29614 (bvlshr x!29614 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157432 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157432 #b00000000000000000000000000000000))))))

(assert (=> d!67255 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!148416 (bvlshr lt!148416 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!298266 d!67255))

(declare-fun d!67261 () Bool)

(assert (=> d!67261 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29526 d!67261))

(declare-fun d!67273 () Bool)

(assert (=> d!67273 (= (array_inv!5104 a!3312) (bvsge (size!7502 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29526 d!67273))

(declare-fun b!298491 () Bool)

(declare-fun e!188582 () SeekEntryResult!2310)

(declare-fun lt!148451 () SeekEntryResult!2310)

(assert (=> b!298491 (= e!188582 (Found!2310 (index!11415 lt!148451)))))

(declare-fun d!67275 () Bool)

(declare-fun lt!148450 () SeekEntryResult!2310)

(assert (=> d!67275 (and (or (is-Undefined!2310 lt!148450) (not (is-Found!2310 lt!148450)) (and (bvsge (index!11414 lt!148450) #b00000000000000000000000000000000) (bvslt (index!11414 lt!148450) (size!7502 a!3312)))) (or (is-Undefined!2310 lt!148450) (is-Found!2310 lt!148450) (not (is-MissingZero!2310 lt!148450)) (and (bvsge (index!11413 lt!148450) #b00000000000000000000000000000000) (bvslt (index!11413 lt!148450) (size!7502 a!3312)))) (or (is-Undefined!2310 lt!148450) (is-Found!2310 lt!148450) (is-MissingZero!2310 lt!148450) (not (is-MissingVacant!2310 lt!148450)) (and (bvsge (index!11416 lt!148450) #b00000000000000000000000000000000) (bvslt (index!11416 lt!148450) (size!7502 a!3312)))) (or (is-Undefined!2310 lt!148450) (ite (is-Found!2310 lt!148450) (= (select (arr!7150 a!3312) (index!11414 lt!148450)) k!2524) (ite (is-MissingZero!2310 lt!148450) (= (select (arr!7150 a!3312) (index!11413 lt!148450)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2310 lt!148450) (= (select (arr!7150 a!3312) (index!11416 lt!148450)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!188580 () SeekEntryResult!2310)

(assert (=> d!67275 (= lt!148450 e!188580)))

(declare-fun c!48103 () Bool)

(assert (=> d!67275 (= c!48103 (and (is-Intermediate!2310 lt!148451) (undefined!3122 lt!148451)))))

(assert (=> d!67275 (= lt!148451 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67275 (validMask!0 mask!3809)))

(assert (=> d!67275 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!148450)))

(declare-fun b!298492 () Bool)

(declare-fun e!188581 () SeekEntryResult!2310)

(assert (=> b!298492 (= e!188581 (MissingZero!2310 (index!11415 lt!148451)))))

(declare-fun b!298493 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15095 (_ BitVec 32)) SeekEntryResult!2310)

(assert (=> b!298493 (= e!188581 (seekKeyOrZeroReturnVacant!0 (x!29608 lt!148451) (index!11415 lt!148451) (index!11415 lt!148451) k!2524 a!3312 mask!3809))))

(declare-fun b!298494 () Bool)

(declare-fun c!48104 () Bool)

(declare-fun lt!148449 () (_ BitVec 64))

(assert (=> b!298494 (= c!48104 (= lt!148449 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298494 (= e!188582 e!188581)))

(declare-fun b!298495 () Bool)

(assert (=> b!298495 (= e!188580 Undefined!2310)))

(declare-fun b!298496 () Bool)

(assert (=> b!298496 (= e!188580 e!188582)))

(assert (=> b!298496 (= lt!148449 (select (arr!7150 a!3312) (index!11415 lt!148451)))))

(declare-fun c!48105 () Bool)

(assert (=> b!298496 (= c!48105 (= lt!148449 k!2524))))

(assert (= (and d!67275 c!48103) b!298495))

(assert (= (and d!67275 (not c!48103)) b!298496))

(assert (= (and b!298496 c!48105) b!298491))

(assert (= (and b!298496 (not c!48105)) b!298494))

(assert (= (and b!298494 c!48104) b!298492))

(assert (= (and b!298494 (not c!48104)) b!298493))

(assert (=> d!67275 m!310829))

(assert (=> d!67275 m!310841))

(declare-fun m!310971 () Bool)

(assert (=> d!67275 m!310971))

(declare-fun m!310973 () Bool)

(assert (=> d!67275 m!310973))

(declare-fun m!310975 () Bool)

(assert (=> d!67275 m!310975))

(declare-fun m!310977 () Bool)

(assert (=> d!67275 m!310977))

(assert (=> d!67275 m!310841))

(declare-fun m!310979 () Bool)

(assert (=> b!298493 m!310979))

(declare-fun m!310981 () Bool)

(assert (=> b!298496 m!310981))

(assert (=> b!298267 d!67275))

(declare-fun b!298517 () Bool)

(declare-fun e!188600 () Bool)

(declare-fun e!188599 () Bool)

(assert (=> b!298517 (= e!188600 e!188599)))

(declare-fun c!48111 () Bool)

(assert (=> b!298517 (= c!48111 (validKeyInArray!0 (select (arr!7150 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!298518 () Bool)

(declare-fun e!188598 () Bool)

(assert (=> b!298518 (= e!188599 e!188598)))

(declare-fun lt!148469 () (_ BitVec 64))

(assert (=> b!298518 (= lt!148469 (select (arr!7150 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9302 0))(
  ( (Unit!9303) )
))
(declare-fun lt!148468 () Unit!9302)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15095 (_ BitVec 64) (_ BitVec 32)) Unit!9302)

(assert (=> b!298518 (= lt!148468 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148469 #b00000000000000000000000000000000))))

(assert (=> b!298518 (arrayContainsKey!0 a!3312 lt!148469 #b00000000000000000000000000000000)))

(declare-fun lt!148467 () Unit!9302)

(assert (=> b!298518 (= lt!148467 lt!148468)))

(declare-fun res!157469 () Bool)

(assert (=> b!298518 (= res!157469 (= (seekEntryOrOpen!0 (select (arr!7150 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2310 #b00000000000000000000000000000000)))))

(assert (=> b!298518 (=> (not res!157469) (not e!188598))))

(declare-fun d!67281 () Bool)

(declare-fun res!157470 () Bool)

(assert (=> d!67281 (=> res!157470 e!188600)))

(assert (=> d!67281 (= res!157470 (bvsge #b00000000000000000000000000000000 (size!7502 a!3312)))))

(assert (=> d!67281 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188600)))

(declare-fun b!298519 () Bool)

(declare-fun call!25785 () Bool)

(assert (=> b!298519 (= e!188598 call!25785)))

(declare-fun b!298520 () Bool)

(assert (=> b!298520 (= e!188599 call!25785)))

(declare-fun bm!25782 () Bool)

(assert (=> bm!25782 (= call!25785 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67281 (not res!157470)) b!298517))

(assert (= (and b!298517 c!48111) b!298518))

(assert (= (and b!298517 (not c!48111)) b!298520))

(assert (= (and b!298518 res!157469) b!298519))

(assert (= (or b!298519 b!298520) bm!25782))

(assert (=> b!298517 m!310895))

(assert (=> b!298517 m!310895))

(declare-fun m!310993 () Bool)

(assert (=> b!298517 m!310993))

(assert (=> b!298518 m!310895))

(declare-fun m!310995 () Bool)

(assert (=> b!298518 m!310995))

(declare-fun m!310997 () Bool)

(assert (=> b!298518 m!310997))

(assert (=> b!298518 m!310895))

(declare-fun m!310999 () Bool)

(assert (=> b!298518 m!310999))

(declare-fun m!311001 () Bool)

(assert (=> bm!25782 m!311001))

(assert (=> b!298268 d!67281))

(push 1)

(assert (not b!298364))

(assert (not b!298517))

(assert (not d!67245))

(assert (not b!298382))

(assert (not bm!25782))

(assert (not d!67251))

(assert (not b!298322))

(assert (not b!298493))

(assert (not b!298518))

(assert (not d!67275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

