; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28024 () Bool)

(assert start!28024)

(declare-fun b!287350 () Bool)

(declare-fun res!149277 () Bool)

(declare-fun e!182004 () Bool)

(assert (=> b!287350 (=> (not res!149277) (not e!182004))))

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287350 (= res!149277 (validKeyInArray!0 k!2524))))

(declare-fun b!287351 () Bool)

(declare-fun e!182003 () Bool)

(assert (=> b!287351 (= e!182004 e!182003)))

(declare-fun res!149280 () Bool)

(assert (=> b!287351 (=> (not res!149280) (not e!182003))))

(declare-datatypes ((SeekEntryResult!1998 0))(
  ( (MissingZero!1998 (index!10162 (_ BitVec 32))) (Found!1998 (index!10163 (_ BitVec 32))) (Intermediate!1998 (undefined!2810 Bool) (index!10164 (_ BitVec 32)) (x!28351 (_ BitVec 32))) (Undefined!1998) (MissingVacant!1998 (index!10165 (_ BitVec 32))) )
))
(declare-fun lt!141510 () SeekEntryResult!1998)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287351 (= res!149280 (or (= lt!141510 (MissingZero!1998 i!1256)) (= lt!141510 (MissingVacant!1998 i!1256))))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-datatypes ((array!14417 0))(
  ( (array!14418 (arr!6838 (Array (_ BitVec 32) (_ BitVec 64))) (size!7190 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14417)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14417 (_ BitVec 32)) SeekEntryResult!1998)

(assert (=> b!287351 (= lt!141510 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun res!149279 () Bool)

(assert (=> start!28024 (=> (not res!149279) (not e!182004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28024 (= res!149279 (validMask!0 mask!3809))))

(assert (=> start!28024 e!182004))

(assert (=> start!28024 true))

(declare-fun array_inv!4792 (array!14417) Bool)

(assert (=> start!28024 (array_inv!4792 a!3312)))

(declare-fun b!287352 () Bool)

(declare-fun res!149278 () Bool)

(assert (=> b!287352 (=> (not res!149278) (not e!182004))))

(assert (=> b!287352 (= res!149278 (and (= (size!7190 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7190 a!3312))))))

(declare-fun b!287353 () Bool)

(declare-fun res!149276 () Bool)

(assert (=> b!287353 (=> (not res!149276) (not e!182004))))

(declare-fun arrayContainsKey!0 (array!14417 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287353 (= res!149276 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!287354 () Bool)

(declare-fun res!149275 () Bool)

(assert (=> b!287354 (=> (not res!149275) (not e!182003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14417 (_ BitVec 32)) Bool)

(assert (=> b!287354 (= res!149275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287355 () Bool)

(declare-fun lt!141512 () (_ BitVec 32))

(assert (=> b!287355 (= e!182003 (and (bvsge mask!3809 #b00000000000000000000000000000000) (or (bvslt lt!141512 #b00000000000000000000000000000000) (bvsge lt!141512 (bvadd #b00000000000000000000000000000001 mask!3809)))))))

(declare-fun lt!141511 () SeekEntryResult!1998)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14417 (_ BitVec 32)) SeekEntryResult!1998)

(assert (=> b!287355 (= lt!141511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141512 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287355 (= lt!141512 (toIndex!0 k!2524 mask!3809))))

(assert (= (and start!28024 res!149279) b!287352))

(assert (= (and b!287352 res!149278) b!287350))

(assert (= (and b!287350 res!149277) b!287353))

(assert (= (and b!287353 res!149276) b!287351))

(assert (= (and b!287351 res!149280) b!287354))

(assert (= (and b!287354 res!149275) b!287355))

(declare-fun m!301825 () Bool)

(assert (=> start!28024 m!301825))

(declare-fun m!301827 () Bool)

(assert (=> start!28024 m!301827))

(declare-fun m!301829 () Bool)

(assert (=> b!287350 m!301829))

(declare-fun m!301831 () Bool)

(assert (=> b!287355 m!301831))

(declare-fun m!301833 () Bool)

(assert (=> b!287355 m!301833))

(declare-fun m!301835 () Bool)

(assert (=> b!287353 m!301835))

(declare-fun m!301837 () Bool)

(assert (=> b!287351 m!301837))

(declare-fun m!301839 () Bool)

(assert (=> b!287354 m!301839))

(push 1)

(assert (not start!28024))

(assert (not b!287355))

(assert (not b!287354))

(assert (not b!287351))

(assert (not b!287353))

(assert (not b!287350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!287433 () Bool)

(declare-fun e!182053 () Bool)

(declare-fun e!182052 () Bool)

(assert (=> b!287433 (= e!182053 e!182052)))

(declare-fun lt!141543 () (_ BitVec 64))

(assert (=> b!287433 (= lt!141543 (select (arr!6838 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9065 0))(
  ( (Unit!9066) )
))
(declare-fun lt!141545 () Unit!9065)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14417 (_ BitVec 64) (_ BitVec 32)) Unit!9065)

(assert (=> b!287433 (= lt!141545 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!141543 #b00000000000000000000000000000000))))

(assert (=> b!287433 (arrayContainsKey!0 a!3312 lt!141543 #b00000000000000000000000000000000)))

(declare-fun lt!141544 () Unit!9065)

(assert (=> b!287433 (= lt!141544 lt!141545)))

(declare-fun res!149336 () Bool)

(assert (=> b!287433 (= res!149336 (= (seekEntryOrOpen!0 (select (arr!6838 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!1998 #b00000000000000000000000000000000)))))

(assert (=> b!287433 (=> (not res!149336) (not e!182052))))

(declare-fun b!287434 () Bool)

(declare-fun call!25616 () Bool)

(assert (=> b!287434 (= e!182052 call!25616)))

(declare-fun b!287435 () Bool)

(assert (=> b!287435 (= e!182053 call!25616)))

(declare-fun b!287436 () Bool)

(declare-fun e!182051 () Bool)

(assert (=> b!287436 (= e!182051 e!182053)))

(declare-fun c!46607 () Bool)

(assert (=> b!287436 (= c!46607 (validKeyInArray!0 (select (arr!6838 a!3312) #b00000000000000000000000000000000)))))

(declare-fun bm!25613 () Bool)

(assert (=> bm!25613 (= call!25616 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun d!66021 () Bool)

(declare-fun res!149337 () Bool)

(assert (=> d!66021 (=> res!149337 e!182051)))

(assert (=> d!66021 (= res!149337 (bvsge #b00000000000000000000000000000000 (size!7190 a!3312)))))

(assert (=> d!66021 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!182051)))

(assert (= (and d!66021 (not res!149337)) b!287436))

(assert (= (and b!287436 c!46607) b!287433))

(assert (= (and b!287436 (not c!46607)) b!287435))

(assert (= (and b!287433 res!149336) b!287434))

(assert (= (or b!287434 b!287435) bm!25613))

(declare-fun m!301885 () Bool)

(assert (=> b!287433 m!301885))

(declare-fun m!301887 () Bool)

(assert (=> b!287433 m!301887))

(declare-fun m!301889 () Bool)

(assert (=> b!287433 m!301889))

(assert (=> b!287433 m!301885))

(declare-fun m!301891 () Bool)

(assert (=> b!287433 m!301891))

(assert (=> b!287436 m!301885))

(assert (=> b!287436 m!301885))

(declare-fun m!301893 () Bool)

(assert (=> b!287436 m!301893))

(declare-fun m!301895 () Bool)

(assert (=> bm!25613 m!301895))

(assert (=> b!287354 d!66021))

(declare-fun d!66031 () Bool)

(assert (=> d!66031 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28024 d!66031))

(declare-fun d!66035 () Bool)

(assert (=> d!66035 (= (array_inv!4792 a!3312) (bvsge (size!7190 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28024 d!66035))

(declare-fun b!287509 () Bool)

(declare-fun e!182097 () Bool)

(declare-fun lt!141583 () SeekEntryResult!1998)

(assert (=> b!287509 (= e!182097 (bvsge (x!28351 lt!141583) #b01111111111111111111111111111110))))

(declare-fun b!287510 () Bool)

(assert (=> b!287510 (and (bvsge (index!10164 lt!141583) #b00000000000000000000000000000000) (bvslt (index!10164 lt!141583) (size!7190 a!3312)))))

(declare-fun res!149357 () Bool)

(assert (=> b!287510 (= res!149357 (= (select (arr!6838 a!3312) (index!10164 lt!141583)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!182098 () Bool)

(assert (=> b!287510 (=> res!149357 e!182098)))

(declare-fun d!66037 () Bool)

(assert (=> d!66037 e!182097))

(declare-fun c!46635 () Bool)

(assert (=> d!66037 (= c!46635 (and (is-Intermediate!1998 lt!141583) (undefined!2810 lt!141583)))))

(declare-fun e!182101 () SeekEntryResult!1998)

(assert (=> d!66037 (= lt!141583 e!182101)))

(declare-fun c!46636 () Bool)

(assert (=> d!66037 (= c!46636 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!141584 () (_ BitVec 64))

(assert (=> d!66037 (= lt!141584 (select (arr!6838 a!3312) lt!141512))))

(assert (=> d!66037 (validMask!0 mask!3809)))

(assert (=> d!66037 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141512 k!2524 a!3312 mask!3809) lt!141583)))

(declare-fun b!287511 () Bool)

(assert (=> b!287511 (and (bvsge (index!10164 lt!141583) #b00000000000000000000000000000000) (bvslt (index!10164 lt!141583) (size!7190 a!3312)))))

(assert (=> b!287511 (= e!182098 (= (select (arr!6838 a!3312) (index!10164 lt!141583)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!287512 () Bool)

(declare-fun e!182099 () Bool)

(assert (=> b!287512 (= e!182097 e!182099)))

(declare-fun res!149359 () Bool)

(assert (=> b!287512 (= res!149359 (and (is-Intermediate!1998 lt!141583) (not (undefined!2810 lt!141583)) (bvslt (x!28351 lt!141583) #b01111111111111111111111111111110) (bvsge (x!28351 lt!141583) #b00000000000000000000000000000000) (bvsge (x!28351 lt!141583) #b00000000000000000000000000000000)))))

(assert (=> b!287512 (=> (not res!149359) (not e!182099))))

(declare-fun b!287513 () Bool)

(assert (=> b!287513 (= e!182101 (Intermediate!1998 true lt!141512 #b00000000000000000000000000000000))))

(declare-fun b!287514 () Bool)

(assert (=> b!287514 (and (bvsge (index!10164 lt!141583) #b00000000000000000000000000000000) (bvslt (index!10164 lt!141583) (size!7190 a!3312)))))

(declare-fun res!149358 () Bool)

(assert (=> b!287514 (= res!149358 (= (select (arr!6838 a!3312) (index!10164 lt!141583)) k!2524))))

(assert (=> b!287514 (=> res!149358 e!182098)))

(assert (=> b!287514 (= e!182099 e!182098)))

(declare-fun b!287515 () Bool)

(declare-fun e!182100 () SeekEntryResult!1998)

(assert (=> b!287515 (= e!182100 (Intermediate!1998 false lt!141512 #b00000000000000000000000000000000))))

(declare-fun b!287516 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287516 (= e!182100 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!141512 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!287517 () Bool)

(assert (=> b!287517 (= e!182101 e!182100)))

(declare-fun c!46637 () Bool)

(assert (=> b!287517 (= c!46637 (or (= lt!141584 k!2524) (= (bvadd lt!141584 lt!141584) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!66037 c!46636) b!287513))

(assert (= (and d!66037 (not c!46636)) b!287517))

(assert (= (and b!287517 c!46637) b!287515))

(assert (= (and b!287517 (not c!46637)) b!287516))

(assert (= (and d!66037 c!46635) b!287509))

(assert (= (and d!66037 (not c!46635)) b!287512))

(assert (= (and b!287512 res!149359) b!287514))

(assert (= (and b!287514 (not res!149358)) b!287510))

(assert (= (and b!287510 (not res!149357)) b!287511))

(declare-fun m!301935 () Bool)

(assert (=> b!287510 m!301935))

(declare-fun m!301937 () Bool)

(assert (=> b!287516 m!301937))

(assert (=> b!287516 m!301937))

(declare-fun m!301939 () Bool)

(assert (=> b!287516 m!301939))

(assert (=> b!287514 m!301935))

(declare-fun m!301941 () Bool)

(assert (=> d!66037 m!301941))

(assert (=> d!66037 m!301825))

(assert (=> b!287511 m!301935))

(assert (=> b!287355 d!66037))

(declare-fun d!66055 () Bool)

(declare-fun lt!141590 () (_ BitVec 32))

(declare-fun lt!141589 () (_ BitVec 32))

(assert (=> d!66055 (= lt!141590 (bvmul (bvxor lt!141589 (bvlshr lt!141589 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66055 (= lt!141589 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66055 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!149360 (let ((h!5274 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28357 (bvmul (bvxor h!5274 (bvlshr h!5274 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28357 (bvlshr x!28357 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!149360 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!149360 #b00000000000000000000000000000000))))))

(assert (=> d!66055 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!141590 (bvlshr lt!141590 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!287355 d!66055))

(declare-fun d!66057 () Bool)

(assert (=> d!66057 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!287350 d!66057))

(declare-fun b!287557 () Bool)

(declare-fun e!182125 () SeekEntryResult!1998)

(declare-fun e!182123 () SeekEntryResult!1998)

(assert (=> b!287557 (= e!182125 e!182123)))

(declare-fun lt!141611 () (_ BitVec 64))

(declare-fun lt!141610 () SeekEntryResult!1998)

(assert (=> b!287557 (= lt!141611 (select (arr!6838 a!3312) (index!10164 lt!141610)))))

(declare-fun c!46653 () Bool)

(assert (=> b!287557 (= c!46653 (= lt!141611 k!2524))))

(declare-fun e!182124 () SeekEntryResult!1998)

(declare-fun b!287558 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14417 (_ BitVec 32)) SeekEntryResult!1998)

(assert (=> b!287558 (= e!182124 (seekKeyOrZeroReturnVacant!0 (x!28351 lt!141610) (index!10164 lt!141610) (index!10164 lt!141610) k!2524 a!3312 mask!3809))))

(declare-fun b!287559 () Bool)

(assert (=> b!287559 (= e!182124 (MissingZero!1998 (index!10164 lt!141610)))))

(declare-fun b!287560 () Bool)

(declare-fun c!46655 () Bool)

(assert (=> b!287560 (= c!46655 (= lt!141611 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!287560 (= e!182123 e!182124)))

(declare-fun b!287561 () Bool)

(assert (=> b!287561 (= e!182123 (Found!1998 (index!10164 lt!141610)))))

(declare-fun d!66059 () Bool)

(declare-fun lt!141609 () SeekEntryResult!1998)

(assert (=> d!66059 (and (or (is-Undefined!1998 lt!141609) (not (is-Found!1998 lt!141609)) (and (bvsge (index!10163 lt!141609) #b00000000000000000000000000000000) (bvslt (index!10163 lt!141609) (size!7190 a!3312)))) (or (is-Undefined!1998 lt!141609) (is-Found!1998 lt!141609) (not (is-MissingZero!1998 lt!141609)) (and (bvsge (index!10162 lt!141609) #b00000000000000000000000000000000) (bvslt (index!10162 lt!141609) (size!7190 a!3312)))) (or (is-Undefined!1998 lt!141609) (is-Found!1998 lt!141609) (is-MissingZero!1998 lt!141609) (not (is-MissingVacant!1998 lt!141609)) (and (bvsge (index!10165 lt!141609) #b00000000000000000000000000000000) (bvslt (index!10165 lt!141609) (size!7190 a!3312)))) (or (is-Undefined!1998 lt!141609) (ite (is-Found!1998 lt!141609) (= (select (arr!6838 a!3312) (index!10163 lt!141609)) k!2524) (ite (is-MissingZero!1998 lt!141609) (= (select (arr!6838 a!3312) (index!10162 lt!141609)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1998 lt!141609) (= (select (arr!6838 a!3312) (index!10165 lt!141609)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66059 (= lt!141609 e!182125)))

(declare-fun c!46654 () Bool)

(assert (=> d!66059 (= c!46654 (and (is-Intermediate!1998 lt!141610) (undefined!2810 lt!141610)))))

(assert (=> d!66059 (= lt!141610 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2524 mask!3809) k!2524 a!3312 mask!3809))))

(assert (=> d!66059 (validMask!0 mask!3809)))

(assert (=> d!66059 (= (seekEntryOrOpen!0 k!2524 a!3312 mask!3809) lt!141609)))

(declare-fun b!287562 () Bool)

(assert (=> b!287562 (= e!182125 Undefined!1998)))

(assert (= (and d!66059 c!46654) b!287562))

(assert (= (and d!66059 (not c!46654)) b!287557))

(assert (= (and b!287557 c!46653) b!287561))

(assert (= (and b!287557 (not c!46653)) b!287560))

(assert (= (and b!287560 c!46655) b!287559))

(assert (= (and b!287560 (not c!46655)) b!287558))

(declare-fun m!301951 () Bool)

(assert (=> b!287557 m!301951))

(declare-fun m!301953 () Bool)

(assert (=> b!287558 m!301953))

(assert (=> d!66059 m!301825))

(declare-fun m!301955 () Bool)

(assert (=> d!66059 m!301955))

(assert (=> d!66059 m!301833))

(declare-fun m!301957 () Bool)

(assert (=> d!66059 m!301957))

(declare-fun m!301959 () Bool)

(assert (=> d!66059 m!301959))

(assert (=> d!66059 m!301833))

(declare-fun m!301961 () Bool)

(assert (=> d!66059 m!301961))

(assert (=> b!287351 d!66059))

(declare-fun d!66065 () Bool)

(declare-fun res!149379 () Bool)

(declare-fun e!182136 () Bool)

(assert (=> d!66065 (=> res!149379 e!182136)))

(assert (=> d!66065 (= res!149379 (= (select (arr!6838 a!3312) #b00000000000000000000000000000000) k!2524))))

(assert (=> d!66065 (= (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000) e!182136)))

(declare-fun b!287575 () Bool)

(declare-fun e!182137 () Bool)

(assert (=> b!287575 (= e!182136 e!182137)))

(declare-fun res!149380 () Bool)

(assert (=> b!287575 (=> (not res!149380) (not e!182137))))

(assert (=> b!287575 (= res!149380 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7190 a!3312)))))

(declare-fun b!287576 () Bool)

(assert (=> b!287576 (= e!182137 (arrayContainsKey!0 a!3312 k!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66065 (not res!149379)) b!287575))

(assert (= (and b!287575 res!149380) b!287576))

(assert (=> d!66065 m!301885))

(declare-fun m!301963 () Bool)

(assert (=> b!287576 m!301963))

(assert (=> b!287353 d!66065))

(push 1)

(assert (not d!66059))

(assert (not d!66037))

(assert (not b!287436))

(assert (not b!287576))

(assert (not b!287516))

(assert (not b!287558))

(assert (not b!287433))

(assert (not bm!25613))

(check-sat)

(pop 1)

(push 1)

(check-sat)

