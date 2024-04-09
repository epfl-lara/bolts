; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28464 () Bool)

(assert start!28464)

(declare-fun b!291365 () Bool)

(declare-fun res!152747 () Bool)

(declare-fun e!184378 () Bool)

(assert (=> b!291365 (=> (not res!152747) (not e!184378))))

(declare-datatypes ((array!14722 0))(
  ( (array!14723 (arr!6986 (Array (_ BitVec 32) (_ BitVec 64))) (size!7338 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14722)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14722 (_ BitVec 32)) Bool)

(assert (=> b!291365 (= res!152747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!291366 () Bool)

(declare-fun res!152746 () Bool)

(declare-fun e!184377 () Bool)

(assert (=> b!291366 (=> (not res!152746) (not e!184377))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14722 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!291366 (= res!152746 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!291367 () Bool)

(declare-fun res!152742 () Bool)

(assert (=> b!291367 (=> (not res!152742) (not e!184377))))

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!291367 (= res!152742 (and (= (size!7338 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7338 a!3312))))))

(declare-fun b!291368 () Bool)

(assert (=> b!291368 (= e!184377 e!184378)))

(declare-fun res!152745 () Bool)

(assert (=> b!291368 (=> (not res!152745) (not e!184378))))

(declare-datatypes ((SeekEntryResult!2146 0))(
  ( (MissingZero!2146 (index!10754 (_ BitVec 32))) (Found!2146 (index!10755 (_ BitVec 32))) (Intermediate!2146 (undefined!2958 Bool) (index!10756 (_ BitVec 32)) (x!28909 (_ BitVec 32))) (Undefined!2146) (MissingVacant!2146 (index!10757 (_ BitVec 32))) )
))
(declare-fun lt!144193 () SeekEntryResult!2146)

(declare-fun lt!144192 () Bool)

(assert (=> b!291368 (= res!152745 (or lt!144192 (= lt!144193 (MissingVacant!2146 i!1256))))))

(assert (=> b!291368 (= lt!144192 (= lt!144193 (MissingZero!2146 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14722 (_ BitVec 32)) SeekEntryResult!2146)

(assert (=> b!291368 (= lt!144193 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!291369 () Bool)

(declare-fun e!184376 () Bool)

(declare-fun e!184375 () Bool)

(assert (=> b!291369 (= e!184376 e!184375)))

(declare-fun res!152748 () Bool)

(assert (=> b!291369 (=> (not res!152748) (not e!184375))))

(declare-fun lt!144195 () Bool)

(declare-fun lt!144194 () SeekEntryResult!2146)

(assert (=> b!291369 (= res!152748 (and (or lt!144195 (not (undefined!2958 lt!144194))) (not lt!144195) (= (select (arr!6986 a!3312) (index!10756 lt!144194)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(get-info :version)

(assert (=> b!291369 (= lt!144195 (not ((_ is Intermediate!2146) lt!144194)))))

(declare-fun b!291370 () Bool)

(assert (=> b!291370 (= e!184375 (not (or (not (= lt!144194 (Intermediate!2146 false (index!10756 lt!144194) (x!28909 lt!144194)))) (bvsle #b00000000000000000000000000000000 (x!28909 lt!144194)))))))

(assert (=> b!291370 (= (index!10756 lt!144194) i!1256)))

(declare-fun res!152741 () Bool)

(assert (=> start!28464 (=> (not res!152741) (not e!184377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28464 (= res!152741 (validMask!0 mask!3809))))

(assert (=> start!28464 e!184377))

(assert (=> start!28464 true))

(declare-fun array_inv!4940 (array!14722) Bool)

(assert (=> start!28464 (array_inv!4940 a!3312)))

(declare-fun b!291371 () Bool)

(assert (=> b!291371 (= e!184378 e!184376)))

(declare-fun res!152743 () Bool)

(assert (=> b!291371 (=> (not res!152743) (not e!184376))))

(assert (=> b!291371 (= res!152743 (and (not lt!144192) (= lt!144193 (MissingVacant!2146 i!1256))))))

(declare-fun lt!144197 () SeekEntryResult!2146)

(declare-fun lt!144196 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14722 (_ BitVec 32)) SeekEntryResult!2146)

(assert (=> b!291371 (= lt!144197 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144196 k0!2524 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312)) mask!3809))))

(assert (=> b!291371 (= lt!144194 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144196 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291371 (= lt!144196 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!291372 () Bool)

(declare-fun res!152744 () Bool)

(assert (=> b!291372 (=> (not res!152744) (not e!184377))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!291372 (= res!152744 (validKeyInArray!0 k0!2524))))

(assert (= (and start!28464 res!152741) b!291367))

(assert (= (and b!291367 res!152742) b!291372))

(assert (= (and b!291372 res!152744) b!291366))

(assert (= (and b!291366 res!152746) b!291368))

(assert (= (and b!291368 res!152745) b!291365))

(assert (= (and b!291365 res!152747) b!291371))

(assert (= (and b!291371 res!152743) b!291369))

(assert (= (and b!291369 res!152748) b!291370))

(declare-fun m!305345 () Bool)

(assert (=> b!291371 m!305345))

(declare-fun m!305347 () Bool)

(assert (=> b!291371 m!305347))

(declare-fun m!305349 () Bool)

(assert (=> b!291371 m!305349))

(declare-fun m!305351 () Bool)

(assert (=> b!291371 m!305351))

(declare-fun m!305353 () Bool)

(assert (=> b!291368 m!305353))

(declare-fun m!305355 () Bool)

(assert (=> b!291366 m!305355))

(declare-fun m!305357 () Bool)

(assert (=> b!291372 m!305357))

(declare-fun m!305359 () Bool)

(assert (=> b!291365 m!305359))

(declare-fun m!305361 () Bool)

(assert (=> start!28464 m!305361))

(declare-fun m!305363 () Bool)

(assert (=> start!28464 m!305363))

(declare-fun m!305365 () Bool)

(assert (=> b!291369 m!305365))

(check-sat (not b!291368) (not b!291371) (not start!28464) (not b!291365) (not b!291372) (not b!291366))
(check-sat)
(get-model)

(declare-fun d!66273 () Bool)

(assert (=> d!66273 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!291372 d!66273))

(declare-fun d!66275 () Bool)

(declare-fun res!152777 () Bool)

(declare-fun e!184398 () Bool)

(assert (=> d!66275 (=> res!152777 e!184398)))

(assert (=> d!66275 (= res!152777 (= (select (arr!6986 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66275 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!184398)))

(declare-fun b!291401 () Bool)

(declare-fun e!184399 () Bool)

(assert (=> b!291401 (= e!184398 e!184399)))

(declare-fun res!152778 () Bool)

(assert (=> b!291401 (=> (not res!152778) (not e!184399))))

(assert (=> b!291401 (= res!152778 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7338 a!3312)))))

(declare-fun b!291402 () Bool)

(assert (=> b!291402 (= e!184399 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66275 (not res!152777)) b!291401))

(assert (= (and b!291401 res!152778) b!291402))

(declare-fun m!305389 () Bool)

(assert (=> d!66275 m!305389))

(declare-fun m!305391 () Bool)

(assert (=> b!291402 m!305391))

(assert (=> b!291366 d!66275))

(declare-fun d!66277 () Bool)

(assert (=> d!66277 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28464 d!66277))

(declare-fun d!66281 () Bool)

(assert (=> d!66281 (= (array_inv!4940 a!3312) (bvsge (size!7338 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28464 d!66281))

(declare-fun b!291439 () Bool)

(declare-fun lt!144230 () SeekEntryResult!2146)

(assert (=> b!291439 (and (bvsge (index!10756 lt!144230) #b00000000000000000000000000000000) (bvslt (index!10756 lt!144230) (size!7338 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312)))))))

(declare-fun res!152799 () Bool)

(assert (=> b!291439 (= res!152799 (= (select (arr!6986 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312))) (index!10756 lt!144230)) k0!2524))))

(declare-fun e!184428 () Bool)

(assert (=> b!291439 (=> res!152799 e!184428)))

(declare-fun e!184429 () Bool)

(assert (=> b!291439 (= e!184429 e!184428)))

(declare-fun b!291440 () Bool)

(declare-fun e!184426 () SeekEntryResult!2146)

(assert (=> b!291440 (= e!184426 (Intermediate!2146 false lt!144196 #b00000000000000000000000000000000))))

(declare-fun b!291441 () Bool)

(assert (=> b!291441 (and (bvsge (index!10756 lt!144230) #b00000000000000000000000000000000) (bvslt (index!10756 lt!144230) (size!7338 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312)))))))

(declare-fun res!152798 () Bool)

(assert (=> b!291441 (= res!152798 (= (select (arr!6986 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312))) (index!10756 lt!144230)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!291441 (=> res!152798 e!184428)))

(declare-fun b!291443 () Bool)

(declare-fun e!184425 () Bool)

(assert (=> b!291443 (= e!184425 (bvsge (x!28909 lt!144230) #b01111111111111111111111111111110))))

(declare-fun b!291444 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!291444 (= e!184426 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144196 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312)) mask!3809))))

(declare-fun b!291445 () Bool)

(declare-fun e!184427 () SeekEntryResult!2146)

(assert (=> b!291445 (= e!184427 e!184426)))

(declare-fun c!46884 () Bool)

(declare-fun lt!144229 () (_ BitVec 64))

(assert (=> b!291445 (= c!46884 (or (= lt!144229 k0!2524) (= (bvadd lt!144229 lt!144229) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291446 () Bool)

(assert (=> b!291446 (= e!184425 e!184429)))

(declare-fun res!152797 () Bool)

(assert (=> b!291446 (= res!152797 (and ((_ is Intermediate!2146) lt!144230) (not (undefined!2958 lt!144230)) (bvslt (x!28909 lt!144230) #b01111111111111111111111111111110) (bvsge (x!28909 lt!144230) #b00000000000000000000000000000000) (bvsge (x!28909 lt!144230) #b00000000000000000000000000000000)))))

(assert (=> b!291446 (=> (not res!152797) (not e!184429))))

(declare-fun b!291447 () Bool)

(assert (=> b!291447 (and (bvsge (index!10756 lt!144230) #b00000000000000000000000000000000) (bvslt (index!10756 lt!144230) (size!7338 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312)))))))

(assert (=> b!291447 (= e!184428 (= (select (arr!6986 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312))) (index!10756 lt!144230)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!291442 () Bool)

(assert (=> b!291442 (= e!184427 (Intermediate!2146 true lt!144196 #b00000000000000000000000000000000))))

(declare-fun d!66283 () Bool)

(assert (=> d!66283 e!184425))

(declare-fun c!46885 () Bool)

(assert (=> d!66283 (= c!46885 (and ((_ is Intermediate!2146) lt!144230) (undefined!2958 lt!144230)))))

(assert (=> d!66283 (= lt!144230 e!184427)))

(declare-fun c!46886 () Bool)

(assert (=> d!66283 (= c!46886 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66283 (= lt!144229 (select (arr!6986 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312))) lt!144196))))

(assert (=> d!66283 (validMask!0 mask!3809)))

(assert (=> d!66283 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144196 k0!2524 (array!14723 (store (arr!6986 a!3312) i!1256 k0!2524) (size!7338 a!3312)) mask!3809) lt!144230)))

(assert (= (and d!66283 c!46886) b!291442))

(assert (= (and d!66283 (not c!46886)) b!291445))

(assert (= (and b!291445 c!46884) b!291440))

(assert (= (and b!291445 (not c!46884)) b!291444))

(assert (= (and d!66283 c!46885) b!291443))

(assert (= (and d!66283 (not c!46885)) b!291446))

(assert (= (and b!291446 res!152797) b!291439))

(assert (= (and b!291439 (not res!152799)) b!291441))

(assert (= (and b!291441 (not res!152798)) b!291447))

(declare-fun m!305407 () Bool)

(assert (=> b!291441 m!305407))

(declare-fun m!305409 () Bool)

(assert (=> b!291444 m!305409))

(assert (=> b!291444 m!305409))

(declare-fun m!305411 () Bool)

(assert (=> b!291444 m!305411))

(declare-fun m!305413 () Bool)

(assert (=> d!66283 m!305413))

(assert (=> d!66283 m!305361))

(assert (=> b!291439 m!305407))

(assert (=> b!291447 m!305407))

(assert (=> b!291371 d!66283))

(declare-fun b!291448 () Bool)

(declare-fun lt!144232 () SeekEntryResult!2146)

(assert (=> b!291448 (and (bvsge (index!10756 lt!144232) #b00000000000000000000000000000000) (bvslt (index!10756 lt!144232) (size!7338 a!3312)))))

(declare-fun res!152802 () Bool)

(assert (=> b!291448 (= res!152802 (= (select (arr!6986 a!3312) (index!10756 lt!144232)) k0!2524))))

(declare-fun e!184433 () Bool)

(assert (=> b!291448 (=> res!152802 e!184433)))

(declare-fun e!184434 () Bool)

(assert (=> b!291448 (= e!184434 e!184433)))

(declare-fun b!291449 () Bool)

(declare-fun e!184431 () SeekEntryResult!2146)

(assert (=> b!291449 (= e!184431 (Intermediate!2146 false lt!144196 #b00000000000000000000000000000000))))

(declare-fun b!291450 () Bool)

(assert (=> b!291450 (and (bvsge (index!10756 lt!144232) #b00000000000000000000000000000000) (bvslt (index!10756 lt!144232) (size!7338 a!3312)))))

(declare-fun res!152801 () Bool)

(assert (=> b!291450 (= res!152801 (= (select (arr!6986 a!3312) (index!10756 lt!144232)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!291450 (=> res!152801 e!184433)))

(declare-fun b!291452 () Bool)

(declare-fun e!184430 () Bool)

(assert (=> b!291452 (= e!184430 (bvsge (x!28909 lt!144232) #b01111111111111111111111111111110))))

(declare-fun b!291453 () Bool)

(assert (=> b!291453 (= e!184431 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!144196 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!291454 () Bool)

(declare-fun e!184432 () SeekEntryResult!2146)

(assert (=> b!291454 (= e!184432 e!184431)))

(declare-fun c!46887 () Bool)

(declare-fun lt!144231 () (_ BitVec 64))

(assert (=> b!291454 (= c!46887 (or (= lt!144231 k0!2524) (= (bvadd lt!144231 lt!144231) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!291455 () Bool)

(assert (=> b!291455 (= e!184430 e!184434)))

(declare-fun res!152800 () Bool)

(assert (=> b!291455 (= res!152800 (and ((_ is Intermediate!2146) lt!144232) (not (undefined!2958 lt!144232)) (bvslt (x!28909 lt!144232) #b01111111111111111111111111111110) (bvsge (x!28909 lt!144232) #b00000000000000000000000000000000) (bvsge (x!28909 lt!144232) #b00000000000000000000000000000000)))))

(assert (=> b!291455 (=> (not res!152800) (not e!184434))))

(declare-fun b!291456 () Bool)

(assert (=> b!291456 (and (bvsge (index!10756 lt!144232) #b00000000000000000000000000000000) (bvslt (index!10756 lt!144232) (size!7338 a!3312)))))

(assert (=> b!291456 (= e!184433 (= (select (arr!6986 a!3312) (index!10756 lt!144232)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!291451 () Bool)

(assert (=> b!291451 (= e!184432 (Intermediate!2146 true lt!144196 #b00000000000000000000000000000000))))

(declare-fun d!66289 () Bool)

(assert (=> d!66289 e!184430))

(declare-fun c!46888 () Bool)

(assert (=> d!66289 (= c!46888 (and ((_ is Intermediate!2146) lt!144232) (undefined!2958 lt!144232)))))

(assert (=> d!66289 (= lt!144232 e!184432)))

(declare-fun c!46889 () Bool)

(assert (=> d!66289 (= c!46889 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66289 (= lt!144231 (select (arr!6986 a!3312) lt!144196))))

(assert (=> d!66289 (validMask!0 mask!3809)))

(assert (=> d!66289 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!144196 k0!2524 a!3312 mask!3809) lt!144232)))

(assert (= (and d!66289 c!46889) b!291451))

(assert (= (and d!66289 (not c!46889)) b!291454))

(assert (= (and b!291454 c!46887) b!291449))

(assert (= (and b!291454 (not c!46887)) b!291453))

(assert (= (and d!66289 c!46888) b!291452))

(assert (= (and d!66289 (not c!46888)) b!291455))

(assert (= (and b!291455 res!152800) b!291448))

(assert (= (and b!291448 (not res!152802)) b!291450))

(assert (= (and b!291450 (not res!152801)) b!291456))

(declare-fun m!305415 () Bool)

(assert (=> b!291450 m!305415))

(assert (=> b!291453 m!305409))

(assert (=> b!291453 m!305409))

(declare-fun m!305417 () Bool)

(assert (=> b!291453 m!305417))

(declare-fun m!305419 () Bool)

(assert (=> d!66289 m!305419))

(assert (=> d!66289 m!305361))

(assert (=> b!291448 m!305415))

(assert (=> b!291456 m!305415))

(assert (=> b!291371 d!66289))

(declare-fun d!66291 () Bool)

(declare-fun lt!144242 () (_ BitVec 32))

(declare-fun lt!144241 () (_ BitVec 32))

(assert (=> d!66291 (= lt!144242 (bvmul (bvxor lt!144241 (bvlshr lt!144241 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66291 (= lt!144241 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66291 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!152803 (let ((h!5282 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28912 (bvmul (bvxor h!5282 (bvlshr h!5282 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28912 (bvlshr x!28912 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!152803 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!152803 #b00000000000000000000000000000000))))))

(assert (=> d!66291 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!144242 (bvlshr lt!144242 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!291371 d!66291))

(declare-fun b!291501 () Bool)

(declare-fun e!184462 () Bool)

(declare-fun e!184461 () Bool)

(assert (=> b!291501 (= e!184462 e!184461)))

(declare-fun lt!144255 () (_ BitVec 64))

(assert (=> b!291501 (= lt!144255 (select (arr!6986 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9137 0))(
  ( (Unit!9138) )
))
(declare-fun lt!144253 () Unit!9137)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14722 (_ BitVec 64) (_ BitVec 32)) Unit!9137)

(assert (=> b!291501 (= lt!144253 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!144255 #b00000000000000000000000000000000))))

(assert (=> b!291501 (arrayContainsKey!0 a!3312 lt!144255 #b00000000000000000000000000000000)))

(declare-fun lt!144254 () Unit!9137)

(assert (=> b!291501 (= lt!144254 lt!144253)))

(declare-fun res!152822 () Bool)

(assert (=> b!291501 (= res!152822 (= (seekEntryOrOpen!0 (select (arr!6986 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2146 #b00000000000000000000000000000000)))))

(assert (=> b!291501 (=> (not res!152822) (not e!184461))))

(declare-fun bm!25643 () Bool)

(declare-fun call!25646 () Bool)

(assert (=> bm!25643 (= call!25646 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!291502 () Bool)

(assert (=> b!291502 (= e!184462 call!25646)))

(declare-fun d!66295 () Bool)

(declare-fun res!152821 () Bool)

(declare-fun e!184463 () Bool)

(assert (=> d!66295 (=> res!152821 e!184463)))

(assert (=> d!66295 (= res!152821 (bvsge #b00000000000000000000000000000000 (size!7338 a!3312)))))

(assert (=> d!66295 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!184463)))

(declare-fun b!291503 () Bool)

(assert (=> b!291503 (= e!184461 call!25646)))

(declare-fun b!291504 () Bool)

(assert (=> b!291504 (= e!184463 e!184462)))

(declare-fun c!46904 () Bool)

(assert (=> b!291504 (= c!46904 (validKeyInArray!0 (select (arr!6986 a!3312) #b00000000000000000000000000000000)))))

(assert (= (and d!66295 (not res!152821)) b!291504))

(assert (= (and b!291504 c!46904) b!291501))

(assert (= (and b!291504 (not c!46904)) b!291502))

(assert (= (and b!291501 res!152822) b!291503))

(assert (= (or b!291503 b!291502) bm!25643))

(assert (=> b!291501 m!305389))

(declare-fun m!305435 () Bool)

(assert (=> b!291501 m!305435))

(declare-fun m!305437 () Bool)

(assert (=> b!291501 m!305437))

(assert (=> b!291501 m!305389))

(declare-fun m!305439 () Bool)

(assert (=> b!291501 m!305439))

(declare-fun m!305441 () Bool)

(assert (=> bm!25643 m!305441))

(assert (=> b!291504 m!305389))

(assert (=> b!291504 m!305389))

(declare-fun m!305443 () Bool)

(assert (=> b!291504 m!305443))

(assert (=> b!291365 d!66295))

(declare-fun b!291537 () Bool)

(declare-fun c!46921 () Bool)

(declare-fun lt!144278 () (_ BitVec 64))

(assert (=> b!291537 (= c!46921 (= lt!144278 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!184481 () SeekEntryResult!2146)

(declare-fun e!184482 () SeekEntryResult!2146)

(assert (=> b!291537 (= e!184481 e!184482)))

(declare-fun b!291539 () Bool)

(declare-fun lt!144279 () SeekEntryResult!2146)

(assert (=> b!291539 (= e!184482 (MissingZero!2146 (index!10756 lt!144279)))))

(declare-fun b!291540 () Bool)

(declare-fun e!184480 () SeekEntryResult!2146)

(assert (=> b!291540 (= e!184480 Undefined!2146)))

(declare-fun b!291541 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14722 (_ BitVec 32)) SeekEntryResult!2146)

(assert (=> b!291541 (= e!184482 (seekKeyOrZeroReturnVacant!0 (x!28909 lt!144279) (index!10756 lt!144279) (index!10756 lt!144279) k0!2524 a!3312 mask!3809))))

(declare-fun b!291542 () Bool)

(assert (=> b!291542 (= e!184480 e!184481)))

(assert (=> b!291542 (= lt!144278 (select (arr!6986 a!3312) (index!10756 lt!144279)))))

(declare-fun c!46922 () Bool)

(assert (=> b!291542 (= c!46922 (= lt!144278 k0!2524))))

(declare-fun b!291538 () Bool)

(assert (=> b!291538 (= e!184481 (Found!2146 (index!10756 lt!144279)))))

(declare-fun d!66303 () Bool)

(declare-fun lt!144280 () SeekEntryResult!2146)

(assert (=> d!66303 (and (or ((_ is Undefined!2146) lt!144280) (not ((_ is Found!2146) lt!144280)) (and (bvsge (index!10755 lt!144280) #b00000000000000000000000000000000) (bvslt (index!10755 lt!144280) (size!7338 a!3312)))) (or ((_ is Undefined!2146) lt!144280) ((_ is Found!2146) lt!144280) (not ((_ is MissingZero!2146) lt!144280)) (and (bvsge (index!10754 lt!144280) #b00000000000000000000000000000000) (bvslt (index!10754 lt!144280) (size!7338 a!3312)))) (or ((_ is Undefined!2146) lt!144280) ((_ is Found!2146) lt!144280) ((_ is MissingZero!2146) lt!144280) (not ((_ is MissingVacant!2146) lt!144280)) (and (bvsge (index!10757 lt!144280) #b00000000000000000000000000000000) (bvslt (index!10757 lt!144280) (size!7338 a!3312)))) (or ((_ is Undefined!2146) lt!144280) (ite ((_ is Found!2146) lt!144280) (= (select (arr!6986 a!3312) (index!10755 lt!144280)) k0!2524) (ite ((_ is MissingZero!2146) lt!144280) (= (select (arr!6986 a!3312) (index!10754 lt!144280)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2146) lt!144280) (= (select (arr!6986 a!3312) (index!10757 lt!144280)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66303 (= lt!144280 e!184480)))

(declare-fun c!46923 () Bool)

(assert (=> d!66303 (= c!46923 (and ((_ is Intermediate!2146) lt!144279) (undefined!2958 lt!144279)))))

(assert (=> d!66303 (= lt!144279 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66303 (validMask!0 mask!3809)))

(assert (=> d!66303 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!144280)))

(assert (= (and d!66303 c!46923) b!291540))

(assert (= (and d!66303 (not c!46923)) b!291542))

(assert (= (and b!291542 c!46922) b!291538))

(assert (= (and b!291542 (not c!46922)) b!291537))

(assert (= (and b!291537 c!46921) b!291539))

(assert (= (and b!291537 (not c!46921)) b!291541))

(declare-fun m!305445 () Bool)

(assert (=> b!291541 m!305445))

(declare-fun m!305447 () Bool)

(assert (=> b!291542 m!305447))

(declare-fun m!305449 () Bool)

(assert (=> d!66303 m!305449))

(assert (=> d!66303 m!305361))

(declare-fun m!305451 () Bool)

(assert (=> d!66303 m!305451))

(assert (=> d!66303 m!305351))

(declare-fun m!305453 () Bool)

(assert (=> d!66303 m!305453))

(assert (=> d!66303 m!305351))

(declare-fun m!305455 () Bool)

(assert (=> d!66303 m!305455))

(assert (=> b!291368 d!66303))

(check-sat (not b!291501) (not b!291541) (not d!66283) (not b!291402) (not b!291504) (not d!66303) (not bm!25643) (not d!66289) (not b!291453) (not b!291444))
(check-sat)
