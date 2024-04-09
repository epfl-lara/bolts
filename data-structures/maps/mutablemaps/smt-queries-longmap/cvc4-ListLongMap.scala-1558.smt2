; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29530 () Bool)

(assert start!29530)

(declare-fun b!298299 () Bool)

(declare-fun res!157392 () Bool)

(declare-fun e!188467 () Bool)

(assert (=> b!298299 (=> (not res!157392) (not e!188467))))

(declare-datatypes ((array!15099 0))(
  ( (array!15100 (arr!7152 (Array (_ BitVec 32) (_ BitVec 64))) (size!7504 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15099)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!298299 (= res!157392 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!298300 () Bool)

(declare-fun res!157390 () Bool)

(assert (=> b!298300 (=> (not res!157390) (not e!188467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!298300 (= res!157390 (validKeyInArray!0 k!2524))))

(declare-fun b!298301 () Bool)

(declare-fun res!157395 () Bool)

(assert (=> b!298301 (=> (not res!157395) (not e!188467))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(assert (=> b!298301 (= res!157395 (and (= (size!7504 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7504 a!3312))))))

(declare-fun lt!148372 () Bool)

(declare-fun e!188468 () Bool)

(declare-fun b!298302 () Bool)

(declare-datatypes ((SeekEntryResult!2312 0))(
  ( (MissingZero!2312 (index!11421 (_ BitVec 32))) (Found!2312 (index!11422 (_ BitVec 32))) (Intermediate!2312 (undefined!3124 Bool) (index!11423 (_ BitVec 32)) (x!29610 (_ BitVec 32))) (Undefined!2312) (MissingVacant!2312 (index!11424 (_ BitVec 32))) )
))
(declare-fun lt!148371 () SeekEntryResult!2312)

(declare-fun lt!148370 () SeekEntryResult!2312)

(assert (=> b!298302 (= e!188468 (and (not lt!148372) (= lt!148371 (MissingVacant!2312 i!1256)) (let ((bdg!6419 (not (is-Intermediate!2312 lt!148370)))) (and (or bdg!6419 (not (undefined!3124 lt!148370))) (not bdg!6419) (or (bvslt (index!11423 lt!148370) #b00000000000000000000000000000000) (bvsge (index!11423 lt!148370) (size!7504 a!3312)))))))))

(declare-fun lt!148373 () (_ BitVec 32))

(declare-fun lt!148369 () SeekEntryResult!2312)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15099 (_ BitVec 32)) SeekEntryResult!2312)

(assert (=> b!298302 (= lt!148369 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148373 k!2524 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312)) mask!3809))))

(assert (=> b!298302 (= lt!148370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148373 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298302 (= lt!148373 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!298303 () Bool)

(assert (=> b!298303 (= e!188467 e!188468)))

(declare-fun res!157394 () Bool)

(assert (=> b!298303 (=> (not res!157394) (not e!188468))))

(assert (=> b!298303 (= res!157394 (or lt!148372 (= lt!148371 (MissingVacant!2312 i!1256))))))

(assert (=> b!298303 (= lt!148372 (= lt!148371 (MissingZero!2312 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15099 (_ BitVec 32)) SeekEntryResult!2312)

(assert (=> b!298303 (= lt!148371 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!157393 () Bool)

(assert (=> start!29530 (=> (not res!157393) (not e!188467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29530 (= res!157393 (validMask!0 mask!3809))))

(assert (=> start!29530 e!188467))

(assert (=> start!29530 true))

(declare-fun array_inv!5106 (array!15099) Bool)

(assert (=> start!29530 (array_inv!5106 a!3312)))

(declare-fun b!298304 () Bool)

(declare-fun res!157391 () Bool)

(assert (=> b!298304 (=> (not res!157391) (not e!188468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15099 (_ BitVec 32)) Bool)

(assert (=> b!298304 (= res!157391 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(assert (= (and start!29530 res!157393) b!298301))

(assert (= (and b!298301 res!157395) b!298300))

(assert (= (and b!298300 res!157390) b!298299))

(assert (= (and b!298299 res!157392) b!298303))

(assert (= (and b!298303 res!157394) b!298304))

(assert (= (and b!298304 res!157391) b!298302))

(declare-fun m!310863 () Bool)

(assert (=> b!298300 m!310863))

(declare-fun m!310865 () Bool)

(assert (=> b!298303 m!310865))

(declare-fun m!310867 () Bool)

(assert (=> b!298304 m!310867))

(declare-fun m!310869 () Bool)

(assert (=> b!298302 m!310869))

(declare-fun m!310871 () Bool)

(assert (=> b!298302 m!310871))

(declare-fun m!310873 () Bool)

(assert (=> b!298302 m!310873))

(declare-fun m!310875 () Bool)

(assert (=> b!298302 m!310875))

(declare-fun m!310877 () Bool)

(assert (=> b!298299 m!310877))

(declare-fun m!310879 () Bool)

(assert (=> start!29530 m!310879))

(declare-fun m!310881 () Bool)

(assert (=> start!29530 m!310881))

(push 1)

(assert (not b!298304))

(assert (not b!298300))

(assert (not b!298302))

(assert (not b!298303))

(assert (not b!298299))

(assert (not start!29530))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67233 () Bool)

(assert (=> d!67233 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!298300 d!67233))

(declare-fun d!67239 () Bool)

(assert (=> d!67239 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29530 d!67239))

(declare-fun d!67247 () Bool)

(assert (=> d!67247 (= (array_inv!5106 a!3312) (bvsge (size!7504 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29530 d!67247))

(declare-fun lt!148411 () SeekEntryResult!2312)

(declare-fun b!298413 () Bool)

(assert (=> b!298413 (and (bvsge (index!11423 lt!148411) #b00000000000000000000000000000000) (bvslt (index!11423 lt!148411) (size!7504 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312)))))))

(declare-fun res!157442 () Bool)

(assert (=> b!298413 (= res!157442 (= (select (arr!7152 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312))) (index!11423 lt!148411)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188536 () Bool)

(assert (=> b!298413 (=> res!157442 e!188536)))

(declare-fun b!298414 () Bool)

(assert (=> b!298414 (and (bvsge (index!11423 lt!148411) #b00000000000000000000000000000000) (bvslt (index!11423 lt!148411) (size!7504 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312)))))))

(declare-fun res!157440 () Bool)

(assert (=> b!298414 (= res!157440 (= (select (arr!7152 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312))) (index!11423 lt!148411)) k!2524))))

(assert (=> b!298414 (=> res!157440 e!188536)))

(declare-fun e!188537 () Bool)

(assert (=> b!298414 (= e!188537 e!188536)))

(declare-fun d!67249 () Bool)

(declare-fun e!188534 () Bool)

(assert (=> d!67249 e!188534))

(declare-fun c!48074 () Bool)

(assert (=> d!67249 (= c!48074 (and (is-Intermediate!2312 lt!148411) (undefined!3124 lt!148411)))))

(declare-fun e!188535 () SeekEntryResult!2312)

(assert (=> d!67249 (= lt!148411 e!188535)))

(declare-fun c!48075 () Bool)

(assert (=> d!67249 (= c!48075 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148412 () (_ BitVec 64))

(assert (=> d!67249 (= lt!148412 (select (arr!7152 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312))) lt!148373))))

(assert (=> d!67249 (validMask!0 mask!3809)))

(assert (=> d!67249 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148373 k!2524 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312)) mask!3809) lt!148411)))

(declare-fun b!298415 () Bool)

(assert (=> b!298415 (and (bvsge (index!11423 lt!148411) #b00000000000000000000000000000000) (bvslt (index!11423 lt!148411) (size!7504 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312)))))))

(assert (=> b!298415 (= e!188536 (= (select (arr!7152 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312))) (index!11423 lt!148411)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298416 () Bool)

(assert (=> b!298416 (= e!188534 e!188537)))

(declare-fun res!157441 () Bool)

(assert (=> b!298416 (= res!157441 (and (is-Intermediate!2312 lt!148411) (not (undefined!3124 lt!148411)) (bvslt (x!29610 lt!148411) #b01111111111111111111111111111110) (bvsge (x!29610 lt!148411) #b00000000000000000000000000000000) (bvsge (x!29610 lt!148411) #b00000000000000000000000000000000)))))

(assert (=> b!298416 (=> (not res!157441) (not e!188537))))

(declare-fun b!298417 () Bool)

(assert (=> b!298417 (= e!188534 (bvsge (x!29610 lt!148411) #b01111111111111111111111111111110))))

(declare-fun b!298418 () Bool)

(declare-fun e!188538 () SeekEntryResult!2312)

(assert (=> b!298418 (= e!188538 (Intermediate!2312 false lt!148373 #b00000000000000000000000000000000))))

(declare-fun b!298419 () Bool)

(assert (=> b!298419 (= e!188535 (Intermediate!2312 true lt!148373 #b00000000000000000000000000000000))))

(declare-fun b!298420 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!298420 (= e!188538 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148373 #b00000000000000000000000000000000 mask!3809) k!2524 (array!15100 (store (arr!7152 a!3312) i!1256 k!2524) (size!7504 a!3312)) mask!3809))))

(declare-fun b!298421 () Bool)

(assert (=> b!298421 (= e!188535 e!188538)))

(declare-fun c!48073 () Bool)

(assert (=> b!298421 (= c!48073 (or (= lt!148412 k!2524) (= (bvadd lt!148412 lt!148412) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67249 c!48075) b!298419))

(assert (= (and d!67249 (not c!48075)) b!298421))

(assert (= (and b!298421 c!48073) b!298418))

(assert (= (and b!298421 (not c!48073)) b!298420))

(assert (= (and d!67249 c!48074) b!298417))

(assert (= (and d!67249 (not c!48074)) b!298416))

(assert (= (and b!298416 res!157441) b!298414))

(assert (= (and b!298414 (not res!157440)) b!298413))

(assert (= (and b!298413 (not res!157442)) b!298415))

(declare-fun m!310927 () Bool)

(assert (=> d!67249 m!310927))

(assert (=> d!67249 m!310879))

(declare-fun m!310929 () Bool)

(assert (=> b!298415 m!310929))

(assert (=> b!298413 m!310929))

(declare-fun m!310931 () Bool)

(assert (=> b!298420 m!310931))

(assert (=> b!298420 m!310931))

(declare-fun m!310933 () Bool)

(assert (=> b!298420 m!310933))

(assert (=> b!298414 m!310929))

(assert (=> b!298302 d!67249))

(declare-fun b!298422 () Bool)

(declare-fun lt!148417 () SeekEntryResult!2312)

(assert (=> b!298422 (and (bvsge (index!11423 lt!148417) #b00000000000000000000000000000000) (bvslt (index!11423 lt!148417) (size!7504 a!3312)))))

(declare-fun res!157445 () Bool)

(assert (=> b!298422 (= res!157445 (= (select (arr!7152 a!3312) (index!11423 lt!148417)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!188541 () Bool)

(assert (=> b!298422 (=> res!157445 e!188541)))

(declare-fun b!298423 () Bool)

(assert (=> b!298423 (and (bvsge (index!11423 lt!148417) #b00000000000000000000000000000000) (bvslt (index!11423 lt!148417) (size!7504 a!3312)))))

(declare-fun res!157443 () Bool)

(assert (=> b!298423 (= res!157443 (= (select (arr!7152 a!3312) (index!11423 lt!148417)) k!2524))))

(assert (=> b!298423 (=> res!157443 e!188541)))

(declare-fun e!188542 () Bool)

(assert (=> b!298423 (= e!188542 e!188541)))

(declare-fun d!67263 () Bool)

(declare-fun e!188539 () Bool)

(assert (=> d!67263 e!188539))

(declare-fun c!48077 () Bool)

(assert (=> d!67263 (= c!48077 (and (is-Intermediate!2312 lt!148417) (undefined!3124 lt!148417)))))

(declare-fun e!188540 () SeekEntryResult!2312)

(assert (=> d!67263 (= lt!148417 e!188540)))

(declare-fun c!48078 () Bool)

(assert (=> d!67263 (= c!48078 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!148418 () (_ BitVec 64))

(assert (=> d!67263 (= lt!148418 (select (arr!7152 a!3312) lt!148373))))

(assert (=> d!67263 (validMask!0 mask!3809)))

(assert (=> d!67263 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!148373 k!2524 a!3312 mask!3809) lt!148417)))

(declare-fun b!298424 () Bool)

(assert (=> b!298424 (and (bvsge (index!11423 lt!148417) #b00000000000000000000000000000000) (bvslt (index!11423 lt!148417) (size!7504 a!3312)))))

(assert (=> b!298424 (= e!188541 (= (select (arr!7152 a!3312) (index!11423 lt!148417)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!298425 () Bool)

(assert (=> b!298425 (= e!188539 e!188542)))

(declare-fun res!157444 () Bool)

(assert (=> b!298425 (= res!157444 (and (is-Intermediate!2312 lt!148417) (not (undefined!3124 lt!148417)) (bvslt (x!29610 lt!148417) #b01111111111111111111111111111110) (bvsge (x!29610 lt!148417) #b00000000000000000000000000000000) (bvsge (x!29610 lt!148417) #b00000000000000000000000000000000)))))

(assert (=> b!298425 (=> (not res!157444) (not e!188542))))

(declare-fun b!298426 () Bool)

(assert (=> b!298426 (= e!188539 (bvsge (x!29610 lt!148417) #b01111111111111111111111111111110))))

(declare-fun b!298427 () Bool)

(declare-fun e!188543 () SeekEntryResult!2312)

(assert (=> b!298427 (= e!188543 (Intermediate!2312 false lt!148373 #b00000000000000000000000000000000))))

(declare-fun b!298428 () Bool)

(assert (=> b!298428 (= e!188540 (Intermediate!2312 true lt!148373 #b00000000000000000000000000000000))))

(declare-fun b!298429 () Bool)

(assert (=> b!298429 (= e!188543 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!148373 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!298430 () Bool)

(assert (=> b!298430 (= e!188540 e!188543)))

(declare-fun c!48076 () Bool)

(assert (=> b!298430 (= c!48076 (or (= lt!148418 k!2524) (= (bvadd lt!148418 lt!148418) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!67263 c!48078) b!298428))

(assert (= (and d!67263 (not c!48078)) b!298430))

(assert (= (and b!298430 c!48076) b!298427))

(assert (= (and b!298430 (not c!48076)) b!298429))

(assert (= (and d!67263 c!48077) b!298426))

(assert (= (and d!67263 (not c!48077)) b!298425))

(assert (= (and b!298425 res!157444) b!298423))

(assert (= (and b!298423 (not res!157443)) b!298422))

(assert (= (and b!298422 (not res!157445)) b!298424))

(declare-fun m!310935 () Bool)

(assert (=> d!67263 m!310935))

(assert (=> d!67263 m!310879))

(declare-fun m!310937 () Bool)

(assert (=> b!298424 m!310937))

(assert (=> b!298422 m!310937))

(assert (=> b!298429 m!310931))

(assert (=> b!298429 m!310931))

(declare-fun m!310939 () Bool)

(assert (=> b!298429 m!310939))

(assert (=> b!298423 m!310937))

(assert (=> b!298302 d!67263))

(declare-fun d!67265 () Bool)

(declare-fun lt!148424 () (_ BitVec 32))

(declare-fun lt!148423 () (_ BitVec 32))

(assert (=> d!67265 (= lt!148424 (bvmul (bvxor lt!148423 (bvlshr lt!148423 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67265 (= lt!148423 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67265 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!157450 (let ((h!5329 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29616 (bvmul (bvxor h!5329 (bvlshr h!5329 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29616 (bvlshr x!29616 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!157450 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!157450 #b00000000000000000000000000000000))))))

(assert (=> d!67265 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!148424 (bvlshr lt!148424 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!298302 d!67265))

(declare-fun b!298479 () Bool)

(declare-fun e!188573 () SeekEntryResult!2312)

(declare-fun lt!148446 () SeekEntryResult!2312)

(assert (=> b!298479 (= e!188573 (MissingZero!2312 (index!11423 lt!148446)))))

(declare-fun b!298480 () Bool)

(declare-fun e!188572 () SeekEntryResult!2312)

(assert (=> b!298480 (= e!188572 Undefined!2312)))

(declare-fun b!298481 () Bool)

(declare-fun e!188571 () SeekEntryResult!2312)

(assert (=> b!298481 (= e!188572 e!188571)))

(declare-fun lt!148448 () (_ BitVec 64))

(assert (=> b!298481 (= lt!148448 (select (arr!7152 a!3312) (index!11423 lt!148446)))))

(declare-fun c!48101 () Bool)

(assert (=> b!298481 (= c!48101 (= lt!148448 k!2524))))

(declare-fun b!298482 () Bool)

(declare-fun c!48100 () Bool)

(assert (=> b!298482 (= c!48100 (= lt!148448 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!298482 (= e!188571 e!188573)))

(declare-fun b!298483 () Bool)

(assert (=> b!298483 (= e!188571 (Found!2312 (index!11423 lt!148446)))))

(declare-fun b!298484 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15099 (_ BitVec 32)) SeekEntryResult!2312)

(assert (=> b!298484 (= e!188573 (seekKeyOrZeroReturnVacant!0 (x!29610 lt!148446) (index!11423 lt!148446) (index!11423 lt!148446) k!2524 a!3312 mask!3809))))

(declare-fun d!67271 () Bool)

(declare-fun lt!148447 () SeekEntryResult!2312)

(assert (=> d!67271 (and (or (is-Undefined!2312 lt!148447) (not (is-Found!2312 lt!148447)) (and (bvsge (index!11422 lt!148447) #b00000000000000000000000000000000) (bvslt (index!11422 lt!148447) (size!7504 a!3312)))) (or (is-Undefined!2312 lt!148447) (is-Found!2312 lt!148447) (not (is-MissingZero!2312 lt!148447)) (and (bvsge (index!11421 lt!148447) #b00000000000000000000000000000000) (bvslt (index!11421 lt!148447) (size!7504 a!3312)))) (or (is-Undefined!2312 lt!148447) (is-Found!2312 lt!148447) (is-MissingZero!2312 lt!148447) (not (is-MissingVacant!2312 lt!148447)) (and (bvsge (index!11424 lt!148447) #b00000000000000000000000000000000) (bvslt (index!11424 lt!148447) (size!7504 a!3312)))) (or (is-Undefined!2312 lt!148447) (ite (is-Found!2312 lt!148447) (= (select (arr!7152 a!3312) (index!11422 lt!148447)) k!2524) (ite (is-MissingZero!2312 lt!148447) (= (select (arr!7152 a!3312) (index!11421 lt!148447)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2312 lt!148447) (= (select (arr!7152 a!3312) (index!11424 lt!148447)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67271 (= lt!148447 e!188572)))

(declare-fun c!48102 () Bool)

(assert (=> d!67271 (= c!48102 (and (is-Intermediate!2312 lt!148446) (undefined!3124 lt!148446)))))

(assert (=> d!67271 (= lt!148446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!67271 (validMask!0 mask!3809)))

(assert (=> d!67271 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!148447)))

(assert (= (and d!67271 c!48102) b!298480))

(assert (= (and d!67271 (not c!48102)) b!298481))

(assert (= (and b!298481 c!48101) b!298483))

(assert (= (and b!298481 (not c!48101)) b!298482))

(assert (= (and b!298482 c!48100) b!298479))

(assert (= (and b!298482 (not c!48100)) b!298484))

(declare-fun m!310955 () Bool)

(assert (=> b!298481 m!310955))

(declare-fun m!310957 () Bool)

(assert (=> b!298484 m!310957))

(assert (=> d!67271 m!310879))

(declare-fun m!310959 () Bool)

(assert (=> d!67271 m!310959))

(declare-fun m!310961 () Bool)

(assert (=> d!67271 m!310961))

(declare-fun m!310963 () Bool)

(assert (=> d!67271 m!310963))

(assert (=> d!67271 m!310875))

(assert (=> d!67271 m!310875))

(declare-fun m!310965 () Bool)

(assert (=> d!67271 m!310965))

(assert (=> b!298303 d!67271))

(declare-fun d!67277 () Bool)

(declare-fun res!157457 () Bool)

(declare-fun e!188578 () Bool)

(assert (=> d!67277 (=> res!157457 e!188578)))

(assert (=> d!67277 (= res!157457 (= (select (arr!7152 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!67277 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!188578)))

(declare-fun b!298489 () Bool)

(declare-fun e!188579 () Bool)

(assert (=> b!298489 (= e!188578 e!188579)))

(declare-fun res!157458 () Bool)

(assert (=> b!298489 (=> (not res!157458) (not e!188579))))

(assert (=> b!298489 (= res!157458 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7504 a!3312)))))

(declare-fun b!298490 () Bool)

(assert (=> b!298490 (= e!188579 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67277 (not res!157457)) b!298489))

(assert (= (and b!298489 res!157458) b!298490))

(declare-fun m!310967 () Bool)

(assert (=> d!67277 m!310967))

(declare-fun m!310969 () Bool)

(assert (=> b!298490 m!310969))

(assert (=> b!298299 d!67277))

(declare-fun b!298505 () Bool)

(declare-fun e!188589 () Bool)

(declare-fun e!188590 () Bool)

(assert (=> b!298505 (= e!188589 e!188590)))

(declare-fun lt!148459 () (_ BitVec 64))

(assert (=> b!298505 (= lt!148459 (select (arr!7152 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9304 0))(
  ( (Unit!9305) )
))
(declare-fun lt!148460 () Unit!9304)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15099 (_ BitVec 64) (_ BitVec 32)) Unit!9304)

(assert (=> b!298505 (= lt!148460 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!148459 #b00000000000000000000000000000000))))

(assert (=> b!298505 (arrayContainsKey!0 a!3312 lt!148459 #b00000000000000000000000000000000)))

(declare-fun lt!148458 () Unit!9304)

(assert (=> b!298505 (= lt!148458 lt!148460)))

(declare-fun res!157463 () Bool)

(assert (=> b!298505 (= res!157463 (= (seekEntryOrOpen!0 (select (arr!7152 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2312 #b00000000000000000000000000000000)))))

(assert (=> b!298505 (=> (not res!157463) (not e!188590))))

(declare-fun d!67279 () Bool)

(declare-fun res!157464 () Bool)

(declare-fun e!188591 () Bool)

(assert (=> d!67279 (=> res!157464 e!188591)))

(assert (=> d!67279 (= res!157464 (bvsge #b00000000000000000000000000000000 (size!7504 a!3312)))))

(assert (=> d!67279 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!188591)))

(declare-fun b!298506 () Bool)

(assert (=> b!298506 (= e!188591 e!188589)))

(declare-fun c!48108 () Bool)

(assert (=> b!298506 (= c!48108 (validKeyInArray!0 (select (arr!7152 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!298507 () Bool)

(declare-fun call!25782 () Bool)

(assert (=> b!298507 (= e!188589 call!25782)))

(declare-fun bm!25779 () Bool)

(assert (=> bm!25779 (= call!25782 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!298508 () Bool)

(assert (=> b!298508 (= e!188590 call!25782)))

(assert (= (and d!67279 (not res!157464)) b!298506))

(assert (= (and b!298506 c!48108) b!298505))

(assert (= (and b!298506 (not c!48108)) b!298507))

(assert (= (and b!298505 res!157463) b!298508))

(assert (= (or b!298508 b!298507) bm!25779))

(assert (=> b!298505 m!310967))

(declare-fun m!310983 () Bool)

(assert (=> b!298505 m!310983))

(declare-fun m!310985 () Bool)

(assert (=> b!298505 m!310985))

(assert (=> b!298505 m!310967))

(declare-fun m!310987 () Bool)

(assert (=> b!298505 m!310987))

(assert (=> b!298506 m!310967))

(assert (=> b!298506 m!310967))

(declare-fun m!310989 () Bool)

(assert (=> b!298506 m!310989))

(declare-fun m!310991 () Bool)

(assert (=> bm!25779 m!310991))

(assert (=> b!298304 d!67279))

(push 1)

