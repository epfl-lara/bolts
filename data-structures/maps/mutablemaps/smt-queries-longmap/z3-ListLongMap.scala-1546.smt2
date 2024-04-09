; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29258 () Bool)

(assert start!29258)

(declare-fun b!296518 () Bool)

(declare-fun res!156306 () Bool)

(declare-fun e!187417 () Bool)

(assert (=> b!296518 (=> (not res!156306) (not e!187417))))

(declare-datatypes ((array!15013 0))(
  ( (array!15014 (arr!7115 (Array (_ BitVec 32) (_ BitVec 64))) (size!7467 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!15013)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15013 (_ BitVec 32)) Bool)

(assert (=> b!296518 (= res!156306 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296519 () Bool)

(declare-fun e!187421 () Bool)

(declare-fun e!187420 () Bool)

(assert (=> b!296519 (= e!187421 e!187420)))

(declare-fun res!156305 () Bool)

(assert (=> b!296519 (=> (not res!156305) (not e!187420))))

(declare-datatypes ((SeekEntryResult!2275 0))(
  ( (MissingZero!2275 (index!11270 (_ BitVec 32))) (Found!2275 (index!11271 (_ BitVec 32))) (Intermediate!2275 (undefined!3087 Bool) (index!11272 (_ BitVec 32)) (x!29450 (_ BitVec 32))) (Undefined!2275) (MissingVacant!2275 (index!11273 (_ BitVec 32))) )
))
(declare-fun lt!147300 () SeekEntryResult!2275)

(declare-fun lt!147303 () Bool)

(declare-fun k0!2524 () (_ BitVec 64))

(assert (=> b!296519 (= res!156305 (and (or lt!147303 (not (undefined!3087 lt!147300))) (or lt!147303 (not (= (select (arr!7115 a!3312) (index!11272 lt!147300)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147303 (not (= (select (arr!7115 a!3312) (index!11272 lt!147300)) k0!2524))) (not lt!147303)))))

(get-info :version)

(assert (=> b!296519 (= lt!147303 (not ((_ is Intermediate!2275) lt!147300)))))

(declare-fun b!296520 () Bool)

(declare-fun res!156299 () Bool)

(declare-fun e!187419 () Bool)

(assert (=> b!296520 (=> (not res!156299) (not e!187419))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!296520 (= res!156299 (and (= (size!7467 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7467 a!3312))))))

(declare-fun b!296521 () Bool)

(declare-fun lt!147301 () (_ BitVec 32))

(assert (=> b!296521 (= e!187420 (not (or (not (= lt!147300 (Intermediate!2275 false (index!11272 lt!147300) (x!29450 lt!147300)))) (bvsgt #b00000000000000000000000000000000 (x!29450 lt!147300)) (and (bvsge lt!147301 #b00000000000000000000000000000000) (bvslt lt!147301 (size!7467 a!3312))))))))

(assert (=> b!296521 (and (= (select (arr!7115 a!3312) (index!11272 lt!147300)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11272 lt!147300) i!1256))))

(declare-fun b!296522 () Bool)

(declare-fun res!156303 () Bool)

(assert (=> b!296522 (=> (not res!156303) (not e!187419))))

(declare-fun arrayContainsKey!0 (array!15013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296522 (= res!156303 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296523 () Bool)

(assert (=> b!296523 (= e!187419 e!187417)))

(declare-fun res!156304 () Bool)

(assert (=> b!296523 (=> (not res!156304) (not e!187417))))

(declare-fun lt!147305 () SeekEntryResult!2275)

(declare-fun lt!147302 () Bool)

(assert (=> b!296523 (= res!156304 (or lt!147302 (= lt!147305 (MissingVacant!2275 i!1256))))))

(assert (=> b!296523 (= lt!147302 (= lt!147305 (MissingZero!2275 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15013 (_ BitVec 32)) SeekEntryResult!2275)

(assert (=> b!296523 (= lt!147305 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!156302 () Bool)

(assert (=> start!29258 (=> (not res!156302) (not e!187419))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29258 (= res!156302 (validMask!0 mask!3809))))

(assert (=> start!29258 e!187419))

(assert (=> start!29258 true))

(declare-fun array_inv!5069 (array!15013) Bool)

(assert (=> start!29258 (array_inv!5069 a!3312)))

(declare-fun b!296524 () Bool)

(assert (=> b!296524 (= e!187417 e!187421)))

(declare-fun res!156300 () Bool)

(assert (=> b!296524 (=> (not res!156300) (not e!187421))))

(assert (=> b!296524 (= res!156300 lt!147302)))

(declare-fun lt!147304 () SeekEntryResult!2275)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15013 (_ BitVec 32)) SeekEntryResult!2275)

(assert (=> b!296524 (= lt!147304 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147301 k0!2524 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312)) mask!3809))))

(assert (=> b!296524 (= lt!147300 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147301 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296524 (= lt!147301 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!296525 () Bool)

(declare-fun res!156301 () Bool)

(assert (=> b!296525 (=> (not res!156301) (not e!187419))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296525 (= res!156301 (validKeyInArray!0 k0!2524))))

(assert (= (and start!29258 res!156302) b!296520))

(assert (= (and b!296520 res!156299) b!296525))

(assert (= (and b!296525 res!156301) b!296522))

(assert (= (and b!296522 res!156303) b!296523))

(assert (= (and b!296523 res!156304) b!296518))

(assert (= (and b!296518 res!156306) b!296524))

(assert (= (and b!296524 res!156300) b!296519))

(assert (= (and b!296519 res!156305) b!296521))

(declare-fun m!309483 () Bool)

(assert (=> b!296522 m!309483))

(declare-fun m!309485 () Bool)

(assert (=> b!296524 m!309485))

(declare-fun m!309487 () Bool)

(assert (=> b!296524 m!309487))

(declare-fun m!309489 () Bool)

(assert (=> b!296524 m!309489))

(declare-fun m!309491 () Bool)

(assert (=> b!296524 m!309491))

(declare-fun m!309493 () Bool)

(assert (=> b!296523 m!309493))

(declare-fun m!309495 () Bool)

(assert (=> b!296521 m!309495))

(declare-fun m!309497 () Bool)

(assert (=> b!296518 m!309497))

(declare-fun m!309499 () Bool)

(assert (=> b!296525 m!309499))

(assert (=> b!296519 m!309495))

(declare-fun m!309501 () Bool)

(assert (=> start!29258 m!309501))

(declare-fun m!309503 () Bool)

(assert (=> start!29258 m!309503))

(check-sat (not b!296523) (not b!296518) (not b!296522) (not start!29258) (not b!296525) (not b!296524))
(check-sat)
(get-model)

(declare-fun b!296568 () Bool)

(declare-fun e!187451 () SeekEntryResult!2275)

(declare-fun e!187450 () SeekEntryResult!2275)

(assert (=> b!296568 (= e!187451 e!187450)))

(declare-fun c!47697 () Bool)

(declare-fun lt!147328 () (_ BitVec 64))

(assert (=> b!296568 (= c!47697 (or (= lt!147328 k0!2524) (= (bvadd lt!147328 lt!147328) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!296569 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296569 (= e!187450 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147301 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312)) mask!3809))))

(declare-fun b!296570 () Bool)

(assert (=> b!296570 (= e!187451 (Intermediate!2275 true lt!147301 #b00000000000000000000000000000000))))

(declare-fun b!296571 () Bool)

(declare-fun lt!147329 () SeekEntryResult!2275)

(assert (=> b!296571 (and (bvsge (index!11272 lt!147329) #b00000000000000000000000000000000) (bvslt (index!11272 lt!147329) (size!7467 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312)))))))

(declare-fun res!156338 () Bool)

(assert (=> b!296571 (= res!156338 (= (select (arr!7115 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312))) (index!11272 lt!147329)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187449 () Bool)

(assert (=> b!296571 (=> res!156338 e!187449)))

(declare-fun b!296572 () Bool)

(declare-fun e!187447 () Bool)

(declare-fun e!187448 () Bool)

(assert (=> b!296572 (= e!187447 e!187448)))

(declare-fun res!156339 () Bool)

(assert (=> b!296572 (= res!156339 (and ((_ is Intermediate!2275) lt!147329) (not (undefined!3087 lt!147329)) (bvslt (x!29450 lt!147329) #b01111111111111111111111111111110) (bvsge (x!29450 lt!147329) #b00000000000000000000000000000000) (bvsge (x!29450 lt!147329) #b00000000000000000000000000000000)))))

(assert (=> b!296572 (=> (not res!156339) (not e!187448))))

(declare-fun d!66977 () Bool)

(assert (=> d!66977 e!187447))

(declare-fun c!47695 () Bool)

(assert (=> d!66977 (= c!47695 (and ((_ is Intermediate!2275) lt!147329) (undefined!3087 lt!147329)))))

(assert (=> d!66977 (= lt!147329 e!187451)))

(declare-fun c!47696 () Bool)

(assert (=> d!66977 (= c!47696 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66977 (= lt!147328 (select (arr!7115 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312))) lt!147301))))

(assert (=> d!66977 (validMask!0 mask!3809)))

(assert (=> d!66977 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147301 k0!2524 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312)) mask!3809) lt!147329)))

(declare-fun b!296573 () Bool)

(assert (=> b!296573 (= e!187450 (Intermediate!2275 false lt!147301 #b00000000000000000000000000000000))))

(declare-fun b!296574 () Bool)

(assert (=> b!296574 (and (bvsge (index!11272 lt!147329) #b00000000000000000000000000000000) (bvslt (index!11272 lt!147329) (size!7467 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312)))))))

(declare-fun res!156337 () Bool)

(assert (=> b!296574 (= res!156337 (= (select (arr!7115 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312))) (index!11272 lt!147329)) k0!2524))))

(assert (=> b!296574 (=> res!156337 e!187449)))

(assert (=> b!296574 (= e!187448 e!187449)))

(declare-fun b!296575 () Bool)

(assert (=> b!296575 (= e!187447 (bvsge (x!29450 lt!147329) #b01111111111111111111111111111110))))

(declare-fun b!296576 () Bool)

(assert (=> b!296576 (and (bvsge (index!11272 lt!147329) #b00000000000000000000000000000000) (bvslt (index!11272 lt!147329) (size!7467 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312)))))))

(assert (=> b!296576 (= e!187449 (= (select (arr!7115 (array!15014 (store (arr!7115 a!3312) i!1256 k0!2524) (size!7467 a!3312))) (index!11272 lt!147329)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66977 c!47696) b!296570))

(assert (= (and d!66977 (not c!47696)) b!296568))

(assert (= (and b!296568 c!47697) b!296573))

(assert (= (and b!296568 (not c!47697)) b!296569))

(assert (= (and d!66977 c!47695) b!296575))

(assert (= (and d!66977 (not c!47695)) b!296572))

(assert (= (and b!296572 res!156339) b!296574))

(assert (= (and b!296574 (not res!156337)) b!296571))

(assert (= (and b!296571 (not res!156338)) b!296576))

(declare-fun m!309527 () Bool)

(assert (=> b!296571 m!309527))

(declare-fun m!309529 () Bool)

(assert (=> d!66977 m!309529))

(assert (=> d!66977 m!309501))

(assert (=> b!296574 m!309527))

(declare-fun m!309531 () Bool)

(assert (=> b!296569 m!309531))

(assert (=> b!296569 m!309531))

(declare-fun m!309533 () Bool)

(assert (=> b!296569 m!309533))

(assert (=> b!296576 m!309527))

(assert (=> b!296524 d!66977))

(declare-fun b!296577 () Bool)

(declare-fun e!187456 () SeekEntryResult!2275)

(declare-fun e!187455 () SeekEntryResult!2275)

(assert (=> b!296577 (= e!187456 e!187455)))

(declare-fun c!47700 () Bool)

(declare-fun lt!147330 () (_ BitVec 64))

(assert (=> b!296577 (= c!47700 (or (= lt!147330 k0!2524) (= (bvadd lt!147330 lt!147330) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!296578 () Bool)

(assert (=> b!296578 (= e!187455 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147301 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!296579 () Bool)

(assert (=> b!296579 (= e!187456 (Intermediate!2275 true lt!147301 #b00000000000000000000000000000000))))

(declare-fun b!296580 () Bool)

(declare-fun lt!147331 () SeekEntryResult!2275)

(assert (=> b!296580 (and (bvsge (index!11272 lt!147331) #b00000000000000000000000000000000) (bvslt (index!11272 lt!147331) (size!7467 a!3312)))))

(declare-fun res!156341 () Bool)

(assert (=> b!296580 (= res!156341 (= (select (arr!7115 a!3312) (index!11272 lt!147331)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!187454 () Bool)

(assert (=> b!296580 (=> res!156341 e!187454)))

(declare-fun b!296581 () Bool)

(declare-fun e!187452 () Bool)

(declare-fun e!187453 () Bool)

(assert (=> b!296581 (= e!187452 e!187453)))

(declare-fun res!156342 () Bool)

(assert (=> b!296581 (= res!156342 (and ((_ is Intermediate!2275) lt!147331) (not (undefined!3087 lt!147331)) (bvslt (x!29450 lt!147331) #b01111111111111111111111111111110) (bvsge (x!29450 lt!147331) #b00000000000000000000000000000000) (bvsge (x!29450 lt!147331) #b00000000000000000000000000000000)))))

(assert (=> b!296581 (=> (not res!156342) (not e!187453))))

(declare-fun d!66979 () Bool)

(assert (=> d!66979 e!187452))

(declare-fun c!47698 () Bool)

(assert (=> d!66979 (= c!47698 (and ((_ is Intermediate!2275) lt!147331) (undefined!3087 lt!147331)))))

(assert (=> d!66979 (= lt!147331 e!187456)))

(declare-fun c!47699 () Bool)

(assert (=> d!66979 (= c!47699 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66979 (= lt!147330 (select (arr!7115 a!3312) lt!147301))))

(assert (=> d!66979 (validMask!0 mask!3809)))

(assert (=> d!66979 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147301 k0!2524 a!3312 mask!3809) lt!147331)))

(declare-fun b!296582 () Bool)

(assert (=> b!296582 (= e!187455 (Intermediate!2275 false lt!147301 #b00000000000000000000000000000000))))

(declare-fun b!296583 () Bool)

(assert (=> b!296583 (and (bvsge (index!11272 lt!147331) #b00000000000000000000000000000000) (bvslt (index!11272 lt!147331) (size!7467 a!3312)))))

(declare-fun res!156340 () Bool)

(assert (=> b!296583 (= res!156340 (= (select (arr!7115 a!3312) (index!11272 lt!147331)) k0!2524))))

(assert (=> b!296583 (=> res!156340 e!187454)))

(assert (=> b!296583 (= e!187453 e!187454)))

(declare-fun b!296584 () Bool)

(assert (=> b!296584 (= e!187452 (bvsge (x!29450 lt!147331) #b01111111111111111111111111111110))))

(declare-fun b!296585 () Bool)

(assert (=> b!296585 (and (bvsge (index!11272 lt!147331) #b00000000000000000000000000000000) (bvslt (index!11272 lt!147331) (size!7467 a!3312)))))

(assert (=> b!296585 (= e!187454 (= (select (arr!7115 a!3312) (index!11272 lt!147331)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!66979 c!47699) b!296579))

(assert (= (and d!66979 (not c!47699)) b!296577))

(assert (= (and b!296577 c!47700) b!296582))

(assert (= (and b!296577 (not c!47700)) b!296578))

(assert (= (and d!66979 c!47698) b!296584))

(assert (= (and d!66979 (not c!47698)) b!296581))

(assert (= (and b!296581 res!156342) b!296583))

(assert (= (and b!296583 (not res!156340)) b!296580))

(assert (= (and b!296580 (not res!156341)) b!296585))

(declare-fun m!309535 () Bool)

(assert (=> b!296580 m!309535))

(declare-fun m!309537 () Bool)

(assert (=> d!66979 m!309537))

(assert (=> d!66979 m!309501))

(assert (=> b!296583 m!309535))

(assert (=> b!296578 m!309531))

(assert (=> b!296578 m!309531))

(declare-fun m!309539 () Bool)

(assert (=> b!296578 m!309539))

(assert (=> b!296585 m!309535))

(assert (=> b!296524 d!66979))

(declare-fun d!66983 () Bool)

(declare-fun lt!147337 () (_ BitVec 32))

(declare-fun lt!147336 () (_ BitVec 32))

(assert (=> d!66983 (= lt!147337 (bvmul (bvxor lt!147336 (bvlshr lt!147336 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66983 (= lt!147336 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66983 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!156343 (let ((h!5315 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29453 (bvmul (bvxor h!5315 (bvlshr h!5315 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29453 (bvlshr x!29453 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!156343 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!156343 #b00000000000000000000000000000000))))))

(assert (=> d!66983 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!147337 (bvlshr lt!147337 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!296524 d!66983))

(declare-fun d!66987 () Bool)

(assert (=> d!66987 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29258 d!66987))

(declare-fun d!66999 () Bool)

(assert (=> d!66999 (= (array_inv!5069 a!3312) (bvsge (size!7467 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29258 d!66999))

(declare-fun d!67001 () Bool)

(assert (=> d!67001 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!296525 d!67001))

(declare-fun d!67003 () Bool)

(declare-fun res!156358 () Bool)

(declare-fun e!187473 () Bool)

(assert (=> d!67003 (=> res!156358 e!187473)))

(assert (=> d!67003 (= res!156358 (= (select (arr!7115 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!67003 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!187473)))

(declare-fun b!296604 () Bool)

(declare-fun e!187474 () Bool)

(assert (=> b!296604 (= e!187473 e!187474)))

(declare-fun res!156359 () Bool)

(assert (=> b!296604 (=> (not res!156359) (not e!187474))))

(assert (=> b!296604 (= res!156359 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7467 a!3312)))))

(declare-fun b!296605 () Bool)

(assert (=> b!296605 (= e!187474 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67003 (not res!156358)) b!296604))

(assert (= (and b!296604 res!156359) b!296605))

(declare-fun m!309545 () Bool)

(assert (=> d!67003 m!309545))

(declare-fun m!309547 () Bool)

(assert (=> b!296605 m!309547))

(assert (=> b!296522 d!67003))

(declare-fun b!296636 () Bool)

(declare-fun e!187495 () Bool)

(declare-fun e!187496 () Bool)

(assert (=> b!296636 (= e!187495 e!187496)))

(declare-fun c!47712 () Bool)

(assert (=> b!296636 (= c!47712 (validKeyInArray!0 (select (arr!7115 a!3312) #b00000000000000000000000000000000)))))

(declare-fun d!67005 () Bool)

(declare-fun res!156373 () Bool)

(assert (=> d!67005 (=> res!156373 e!187495)))

(assert (=> d!67005 (= res!156373 (bvsge #b00000000000000000000000000000000 (size!7467 a!3312)))))

(assert (=> d!67005 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!187495)))

(declare-fun b!296637 () Bool)

(declare-fun call!25746 () Bool)

(assert (=> b!296637 (= e!187496 call!25746)))

(declare-fun b!296638 () Bool)

(declare-fun e!187494 () Bool)

(assert (=> b!296638 (= e!187494 call!25746)))

(declare-fun b!296639 () Bool)

(assert (=> b!296639 (= e!187496 e!187494)))

(declare-fun lt!147359 () (_ BitVec 64))

(assert (=> b!296639 (= lt!147359 (select (arr!7115 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9222 0))(
  ( (Unit!9224) )
))
(declare-fun lt!147358 () Unit!9222)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15013 (_ BitVec 64) (_ BitVec 32)) Unit!9222)

(assert (=> b!296639 (= lt!147358 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!147359 #b00000000000000000000000000000000))))

(assert (=> b!296639 (arrayContainsKey!0 a!3312 lt!147359 #b00000000000000000000000000000000)))

(declare-fun lt!147357 () Unit!9222)

(assert (=> b!296639 (= lt!147357 lt!147358)))

(declare-fun res!156372 () Bool)

(assert (=> b!296639 (= res!156372 (= (seekEntryOrOpen!0 (select (arr!7115 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2275 #b00000000000000000000000000000000)))))

(assert (=> b!296639 (=> (not res!156372) (not e!187494))))

(declare-fun bm!25743 () Bool)

(assert (=> bm!25743 (= call!25746 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(assert (= (and d!67005 (not res!156373)) b!296636))

(assert (= (and b!296636 c!47712) b!296639))

(assert (= (and b!296636 (not c!47712)) b!296637))

(assert (= (and b!296639 res!156372) b!296638))

(assert (= (or b!296638 b!296637) bm!25743))

(assert (=> b!296636 m!309545))

(assert (=> b!296636 m!309545))

(declare-fun m!309561 () Bool)

(assert (=> b!296636 m!309561))

(assert (=> b!296639 m!309545))

(declare-fun m!309563 () Bool)

(assert (=> b!296639 m!309563))

(declare-fun m!309565 () Bool)

(assert (=> b!296639 m!309565))

(assert (=> b!296639 m!309545))

(declare-fun m!309567 () Bool)

(assert (=> b!296639 m!309567))

(declare-fun m!309569 () Bool)

(assert (=> bm!25743 m!309569))

(assert (=> b!296518 d!67005))

(declare-fun d!67009 () Bool)

(declare-fun lt!147386 () SeekEntryResult!2275)

(assert (=> d!67009 (and (or ((_ is Undefined!2275) lt!147386) (not ((_ is Found!2275) lt!147386)) (and (bvsge (index!11271 lt!147386) #b00000000000000000000000000000000) (bvslt (index!11271 lt!147386) (size!7467 a!3312)))) (or ((_ is Undefined!2275) lt!147386) ((_ is Found!2275) lt!147386) (not ((_ is MissingZero!2275) lt!147386)) (and (bvsge (index!11270 lt!147386) #b00000000000000000000000000000000) (bvslt (index!11270 lt!147386) (size!7467 a!3312)))) (or ((_ is Undefined!2275) lt!147386) ((_ is Found!2275) lt!147386) ((_ is MissingZero!2275) lt!147386) (not ((_ is MissingVacant!2275) lt!147386)) (and (bvsge (index!11273 lt!147386) #b00000000000000000000000000000000) (bvslt (index!11273 lt!147386) (size!7467 a!3312)))) (or ((_ is Undefined!2275) lt!147386) (ite ((_ is Found!2275) lt!147386) (= (select (arr!7115 a!3312) (index!11271 lt!147386)) k0!2524) (ite ((_ is MissingZero!2275) lt!147386) (= (select (arr!7115 a!3312) (index!11270 lt!147386)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2275) lt!147386) (= (select (arr!7115 a!3312) (index!11273 lt!147386)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!187522 () SeekEntryResult!2275)

(assert (=> d!67009 (= lt!147386 e!187522)))

(declare-fun c!47735 () Bool)

(declare-fun lt!147385 () SeekEntryResult!2275)

(assert (=> d!67009 (= c!47735 (and ((_ is Intermediate!2275) lt!147385) (undefined!3087 lt!147385)))))

(assert (=> d!67009 (= lt!147385 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!67009 (validMask!0 mask!3809)))

(assert (=> d!67009 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!147386)))

(declare-fun b!296688 () Bool)

(declare-fun e!187523 () SeekEntryResult!2275)

(assert (=> b!296688 (= e!187522 e!187523)))

(declare-fun lt!147387 () (_ BitVec 64))

(assert (=> b!296688 (= lt!147387 (select (arr!7115 a!3312) (index!11272 lt!147385)))))

(declare-fun c!47734 () Bool)

(assert (=> b!296688 (= c!47734 (= lt!147387 k0!2524))))

(declare-fun b!296689 () Bool)

(declare-fun e!187524 () SeekEntryResult!2275)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15013 (_ BitVec 32)) SeekEntryResult!2275)

(assert (=> b!296689 (= e!187524 (seekKeyOrZeroReturnVacant!0 (x!29450 lt!147385) (index!11272 lt!147385) (index!11272 lt!147385) k0!2524 a!3312 mask!3809))))

(declare-fun b!296690 () Bool)

(assert (=> b!296690 (= e!187523 (Found!2275 (index!11272 lt!147385)))))

(declare-fun b!296691 () Bool)

(assert (=> b!296691 (= e!187522 Undefined!2275)))

(declare-fun b!296692 () Bool)

(assert (=> b!296692 (= e!187524 (MissingZero!2275 (index!11272 lt!147385)))))

(declare-fun b!296693 () Bool)

(declare-fun c!47736 () Bool)

(assert (=> b!296693 (= c!47736 (= lt!147387 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!296693 (= e!187523 e!187524)))

(assert (= (and d!67009 c!47735) b!296691))

(assert (= (and d!67009 (not c!47735)) b!296688))

(assert (= (and b!296688 c!47734) b!296690))

(assert (= (and b!296688 (not c!47734)) b!296693))

(assert (= (and b!296693 c!47736) b!296692))

(assert (= (and b!296693 (not c!47736)) b!296689))

(declare-fun m!309597 () Bool)

(assert (=> d!67009 m!309597))

(assert (=> d!67009 m!309491))

(assert (=> d!67009 m!309491))

(declare-fun m!309599 () Bool)

(assert (=> d!67009 m!309599))

(declare-fun m!309601 () Bool)

(assert (=> d!67009 m!309601))

(assert (=> d!67009 m!309501))

(declare-fun m!309603 () Bool)

(assert (=> d!67009 m!309603))

(declare-fun m!309605 () Bool)

(assert (=> b!296688 m!309605))

(declare-fun m!309607 () Bool)

(assert (=> b!296689 m!309607))

(assert (=> b!296523 d!67009))

(check-sat (not b!296689) (not b!296639) (not d!66977) (not bm!25743) (not b!296569) (not b!296578) (not b!296605) (not d!66979) (not d!67009) (not b!296636))
(check-sat)
