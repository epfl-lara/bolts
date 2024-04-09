; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!28026 () Bool)

(assert start!28026)

(declare-fun b!287368 () Bool)

(declare-fun e!182014 () Bool)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!141520 () (_ BitVec 32))

(assert (=> b!287368 (= e!182014 (and (bvsge mask!3809 #b00000000000000000000000000000000) (or (bvslt lt!141520 #b00000000000000000000000000000000) (bvsge lt!141520 (bvadd #b00000000000000000000000000000001 mask!3809)))))))

(declare-fun k0!2524 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!1999 0))(
  ( (MissingZero!1999 (index!10166 (_ BitVec 32))) (Found!1999 (index!10167 (_ BitVec 32))) (Intermediate!1999 (undefined!2811 Bool) (index!10168 (_ BitVec 32)) (x!28352 (_ BitVec 32))) (Undefined!1999) (MissingVacant!1999 (index!10169 (_ BitVec 32))) )
))
(declare-fun lt!141519 () SeekEntryResult!1999)

(declare-datatypes ((array!14419 0))(
  ( (array!14420 (arr!6839 (Array (_ BitVec 32) (_ BitVec 64))) (size!7191 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14419)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14419 (_ BitVec 32)) SeekEntryResult!1999)

(assert (=> b!287368 (= lt!141519 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141520 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287368 (= lt!141520 (toIndex!0 k0!2524 mask!3809))))

(declare-fun res!149298 () Bool)

(declare-fun e!182012 () Bool)

(assert (=> start!28026 (=> (not res!149298) (not e!182012))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28026 (= res!149298 (validMask!0 mask!3809))))

(assert (=> start!28026 e!182012))

(assert (=> start!28026 true))

(declare-fun array_inv!4793 (array!14419) Bool)

(assert (=> start!28026 (array_inv!4793 a!3312)))

(declare-fun b!287369 () Bool)

(assert (=> b!287369 (= e!182012 e!182014)))

(declare-fun res!149296 () Bool)

(assert (=> b!287369 (=> (not res!149296) (not e!182014))))

(declare-fun lt!141521 () SeekEntryResult!1999)

(declare-fun i!1256 () (_ BitVec 32))

(assert (=> b!287369 (= res!149296 (or (= lt!141521 (MissingZero!1999 i!1256)) (= lt!141521 (MissingVacant!1999 i!1256))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14419 (_ BitVec 32)) SeekEntryResult!1999)

(assert (=> b!287369 (= lt!141521 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun b!287370 () Bool)

(declare-fun res!149293 () Bool)

(assert (=> b!287370 (=> (not res!149293) (not e!182012))))

(assert (=> b!287370 (= res!149293 (and (= (size!7191 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7191 a!3312))))))

(declare-fun b!287371 () Bool)

(declare-fun res!149295 () Bool)

(assert (=> b!287371 (=> (not res!149295) (not e!182012))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!287371 (= res!149295 (validKeyInArray!0 k0!2524))))

(declare-fun b!287372 () Bool)

(declare-fun res!149297 () Bool)

(assert (=> b!287372 (=> (not res!149297) (not e!182014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14419 (_ BitVec 32)) Bool)

(assert (=> b!287372 (= res!149297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!287373 () Bool)

(declare-fun res!149294 () Bool)

(assert (=> b!287373 (=> (not res!149294) (not e!182012))))

(declare-fun arrayContainsKey!0 (array!14419 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!287373 (= res!149294 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(assert (= (and start!28026 res!149298) b!287370))

(assert (= (and b!287370 res!149293) b!287371))

(assert (= (and b!287371 res!149295) b!287373))

(assert (= (and b!287373 res!149294) b!287369))

(assert (= (and b!287369 res!149296) b!287372))

(assert (= (and b!287372 res!149297) b!287368))

(declare-fun m!301841 () Bool)

(assert (=> b!287373 m!301841))

(declare-fun m!301843 () Bool)

(assert (=> b!287369 m!301843))

(declare-fun m!301845 () Bool)

(assert (=> start!28026 m!301845))

(declare-fun m!301847 () Bool)

(assert (=> start!28026 m!301847))

(declare-fun m!301849 () Bool)

(assert (=> b!287372 m!301849))

(declare-fun m!301851 () Bool)

(assert (=> b!287371 m!301851))

(declare-fun m!301853 () Bool)

(assert (=> b!287368 m!301853))

(declare-fun m!301855 () Bool)

(assert (=> b!287368 m!301855))

(check-sat (not b!287373) (not b!287371) (not b!287372) (not b!287368) (not start!28026) (not b!287369))
(check-sat)
(get-model)

(declare-fun d!66019 () Bool)

(declare-fun e!182047 () Bool)

(assert (=> d!66019 e!182047))

(declare-fun c!46604 () Bool)

(declare-fun lt!141541 () SeekEntryResult!1999)

(get-info :version)

(assert (=> d!66019 (= c!46604 (and ((_ is Intermediate!1999) lt!141541) (undefined!2811 lt!141541)))))

(declare-fun e!182050 () SeekEntryResult!1999)

(assert (=> d!66019 (= lt!141541 e!182050)))

(declare-fun c!46606 () Bool)

(assert (=> d!66019 (= c!46606 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!141542 () (_ BitVec 64))

(assert (=> d!66019 (= lt!141542 (select (arr!6839 a!3312) lt!141520))))

(assert (=> d!66019 (validMask!0 mask!3809)))

(assert (=> d!66019 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!141520 k0!2524 a!3312 mask!3809) lt!141541)))

(declare-fun b!287424 () Bool)

(assert (=> b!287424 (and (bvsge (index!10168 lt!141541) #b00000000000000000000000000000000) (bvslt (index!10168 lt!141541) (size!7191 a!3312)))))

(declare-fun res!149335 () Bool)

(assert (=> b!287424 (= res!149335 (= (select (arr!6839 a!3312) (index!10168 lt!141541)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!182048 () Bool)

(assert (=> b!287424 (=> res!149335 e!182048)))

(declare-fun b!287425 () Bool)

(assert (=> b!287425 (= e!182047 (bvsge (x!28352 lt!141541) #b01111111111111111111111111111110))))

(declare-fun b!287426 () Bool)

(assert (=> b!287426 (and (bvsge (index!10168 lt!141541) #b00000000000000000000000000000000) (bvslt (index!10168 lt!141541) (size!7191 a!3312)))))

(assert (=> b!287426 (= e!182048 (= (select (arr!6839 a!3312) (index!10168 lt!141541)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!287427 () Bool)

(declare-fun e!182046 () Bool)

(assert (=> b!287427 (= e!182047 e!182046)))

(declare-fun res!149333 () Bool)

(assert (=> b!287427 (= res!149333 (and ((_ is Intermediate!1999) lt!141541) (not (undefined!2811 lt!141541)) (bvslt (x!28352 lt!141541) #b01111111111111111111111111111110) (bvsge (x!28352 lt!141541) #b00000000000000000000000000000000) (bvsge (x!28352 lt!141541) #b00000000000000000000000000000000)))))

(assert (=> b!287427 (=> (not res!149333) (not e!182046))))

(declare-fun b!287428 () Bool)

(declare-fun e!182049 () SeekEntryResult!1999)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!287428 (= e!182049 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!141520 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(declare-fun b!287429 () Bool)

(assert (=> b!287429 (and (bvsge (index!10168 lt!141541) #b00000000000000000000000000000000) (bvslt (index!10168 lt!141541) (size!7191 a!3312)))))

(declare-fun res!149334 () Bool)

(assert (=> b!287429 (= res!149334 (= (select (arr!6839 a!3312) (index!10168 lt!141541)) k0!2524))))

(assert (=> b!287429 (=> res!149334 e!182048)))

(assert (=> b!287429 (= e!182046 e!182048)))

(declare-fun b!287430 () Bool)

(assert (=> b!287430 (= e!182050 e!182049)))

(declare-fun c!46605 () Bool)

(assert (=> b!287430 (= c!46605 (or (= lt!141542 k0!2524) (= (bvadd lt!141542 lt!141542) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!287431 () Bool)

(assert (=> b!287431 (= e!182049 (Intermediate!1999 false lt!141520 #b00000000000000000000000000000000))))

(declare-fun b!287432 () Bool)

(assert (=> b!287432 (= e!182050 (Intermediate!1999 true lt!141520 #b00000000000000000000000000000000))))

(assert (= (and d!66019 c!46606) b!287432))

(assert (= (and d!66019 (not c!46606)) b!287430))

(assert (= (and b!287430 c!46605) b!287431))

(assert (= (and b!287430 (not c!46605)) b!287428))

(assert (= (and d!66019 c!46604) b!287425))

(assert (= (and d!66019 (not c!46604)) b!287427))

(assert (= (and b!287427 res!149333) b!287429))

(assert (= (and b!287429 (not res!149334)) b!287424))

(assert (= (and b!287424 (not res!149335)) b!287426))

(declare-fun m!301877 () Bool)

(assert (=> b!287426 m!301877))

(assert (=> b!287429 m!301877))

(declare-fun m!301879 () Bool)

(assert (=> b!287428 m!301879))

(assert (=> b!287428 m!301879))

(declare-fun m!301881 () Bool)

(assert (=> b!287428 m!301881))

(assert (=> b!287424 m!301877))

(declare-fun m!301883 () Bool)

(assert (=> d!66019 m!301883))

(assert (=> d!66019 m!301845))

(assert (=> b!287368 d!66019))

(declare-fun d!66029 () Bool)

(declare-fun lt!141551 () (_ BitVec 32))

(declare-fun lt!141550 () (_ BitVec 32))

(assert (=> d!66029 (= lt!141551 (bvmul (bvxor lt!141550 (bvlshr lt!141550 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66029 (= lt!141550 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66029 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!149338 (let ((h!5273 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!28355 (bvmul (bvxor h!5273 (bvlshr h!5273 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!28355 (bvlshr x!28355 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!149338 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!149338 #b00000000000000000000000000000000))))))

(assert (=> d!66029 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!141551 (bvlshr lt!141551 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!287368 d!66029))

(declare-fun b!287467 () Bool)

(declare-fun e!182070 () SeekEntryResult!1999)

(declare-fun lt!141568 () SeekEntryResult!1999)

(assert (=> b!287467 (= e!182070 (Found!1999 (index!10168 lt!141568)))))

(declare-fun b!287468 () Bool)

(declare-fun e!182069 () SeekEntryResult!1999)

(assert (=> b!287468 (= e!182069 e!182070)))

(declare-fun lt!141569 () (_ BitVec 64))

(assert (=> b!287468 (= lt!141569 (select (arr!6839 a!3312) (index!10168 lt!141568)))))

(declare-fun c!46624 () Bool)

(assert (=> b!287468 (= c!46624 (= lt!141569 k0!2524))))

(declare-fun b!287469 () Bool)

(declare-fun e!182071 () SeekEntryResult!1999)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14419 (_ BitVec 32)) SeekEntryResult!1999)

(assert (=> b!287469 (= e!182071 (seekKeyOrZeroReturnVacant!0 (x!28352 lt!141568) (index!10168 lt!141568) (index!10168 lt!141568) k0!2524 a!3312 mask!3809))))

(declare-fun b!287470 () Bool)

(declare-fun c!46623 () Bool)

(assert (=> b!287470 (= c!46623 (= lt!141569 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!287470 (= e!182070 e!182071)))

(declare-fun b!287471 () Bool)

(assert (=> b!287471 (= e!182069 Undefined!1999)))

(declare-fun d!66033 () Bool)

(declare-fun lt!141567 () SeekEntryResult!1999)

(assert (=> d!66033 (and (or ((_ is Undefined!1999) lt!141567) (not ((_ is Found!1999) lt!141567)) (and (bvsge (index!10167 lt!141567) #b00000000000000000000000000000000) (bvslt (index!10167 lt!141567) (size!7191 a!3312)))) (or ((_ is Undefined!1999) lt!141567) ((_ is Found!1999) lt!141567) (not ((_ is MissingZero!1999) lt!141567)) (and (bvsge (index!10166 lt!141567) #b00000000000000000000000000000000) (bvslt (index!10166 lt!141567) (size!7191 a!3312)))) (or ((_ is Undefined!1999) lt!141567) ((_ is Found!1999) lt!141567) ((_ is MissingZero!1999) lt!141567) (not ((_ is MissingVacant!1999) lt!141567)) (and (bvsge (index!10169 lt!141567) #b00000000000000000000000000000000) (bvslt (index!10169 lt!141567) (size!7191 a!3312)))) (or ((_ is Undefined!1999) lt!141567) (ite ((_ is Found!1999) lt!141567) (= (select (arr!6839 a!3312) (index!10167 lt!141567)) k0!2524) (ite ((_ is MissingZero!1999) lt!141567) (= (select (arr!6839 a!3312) (index!10166 lt!141567)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1999) lt!141567) (= (select (arr!6839 a!3312) (index!10169 lt!141567)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66033 (= lt!141567 e!182069)))

(declare-fun c!46625 () Bool)

(assert (=> d!66033 (= c!46625 (and ((_ is Intermediate!1999) lt!141568) (undefined!2811 lt!141568)))))

(assert (=> d!66033 (= lt!141568 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66033 (validMask!0 mask!3809)))

(assert (=> d!66033 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!141567)))

(declare-fun b!287472 () Bool)

(assert (=> b!287472 (= e!182071 (MissingZero!1999 (index!10168 lt!141568)))))

(assert (= (and d!66033 c!46625) b!287471))

(assert (= (and d!66033 (not c!46625)) b!287468))

(assert (= (and b!287468 c!46624) b!287467))

(assert (= (and b!287468 (not c!46624)) b!287470))

(assert (= (and b!287470 c!46623) b!287472))

(assert (= (and b!287470 (not c!46623)) b!287469))

(declare-fun m!301897 () Bool)

(assert (=> b!287468 m!301897))

(declare-fun m!301899 () Bool)

(assert (=> b!287469 m!301899))

(assert (=> d!66033 m!301845))

(declare-fun m!301901 () Bool)

(assert (=> d!66033 m!301901))

(declare-fun m!301903 () Bool)

(assert (=> d!66033 m!301903))

(declare-fun m!301905 () Bool)

(assert (=> d!66033 m!301905))

(assert (=> d!66033 m!301855))

(declare-fun m!301909 () Bool)

(assert (=> d!66033 m!301909))

(assert (=> d!66033 m!301855))

(assert (=> b!287369 d!66033))

(declare-fun d!66039 () Bool)

(assert (=> d!66039 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!287371 d!66039))

(declare-fun b!287481 () Bool)

(declare-fun e!182080 () Bool)

(declare-fun call!25619 () Bool)

(assert (=> b!287481 (= e!182080 call!25619)))

(declare-fun b!287482 () Bool)

(declare-fun e!182078 () Bool)

(declare-fun e!182079 () Bool)

(assert (=> b!287482 (= e!182078 e!182079)))

(declare-fun c!46628 () Bool)

(assert (=> b!287482 (= c!46628 (validKeyInArray!0 (select (arr!6839 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!287483 () Bool)

(assert (=> b!287483 (= e!182079 e!182080)))

(declare-fun lt!141577 () (_ BitVec 64))

(assert (=> b!287483 (= lt!141577 (select (arr!6839 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9063 0))(
  ( (Unit!9064) )
))
(declare-fun lt!141576 () Unit!9063)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14419 (_ BitVec 64) (_ BitVec 32)) Unit!9063)

(assert (=> b!287483 (= lt!141576 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!141577 #b00000000000000000000000000000000))))

(assert (=> b!287483 (arrayContainsKey!0 a!3312 lt!141577 #b00000000000000000000000000000000)))

(declare-fun lt!141578 () Unit!9063)

(assert (=> b!287483 (= lt!141578 lt!141576)))

(declare-fun res!149344 () Bool)

(assert (=> b!287483 (= res!149344 (= (seekEntryOrOpen!0 (select (arr!6839 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!1999 #b00000000000000000000000000000000)))))

(assert (=> b!287483 (=> (not res!149344) (not e!182080))))

(declare-fun bm!25616 () Bool)

(assert (=> bm!25616 (= call!25619 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun d!66043 () Bool)

(declare-fun res!149343 () Bool)

(assert (=> d!66043 (=> res!149343 e!182078)))

(assert (=> d!66043 (= res!149343 (bvsge #b00000000000000000000000000000000 (size!7191 a!3312)))))

(assert (=> d!66043 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!182078)))

(declare-fun b!287484 () Bool)

(assert (=> b!287484 (= e!182079 call!25619)))

(assert (= (and d!66043 (not res!149343)) b!287482))

(assert (= (and b!287482 c!46628) b!287483))

(assert (= (and b!287482 (not c!46628)) b!287484))

(assert (= (and b!287483 res!149344) b!287481))

(assert (= (or b!287481 b!287484) bm!25616))

(declare-fun m!301921 () Bool)

(assert (=> b!287482 m!301921))

(assert (=> b!287482 m!301921))

(declare-fun m!301923 () Bool)

(assert (=> b!287482 m!301923))

(assert (=> b!287483 m!301921))

(declare-fun m!301925 () Bool)

(assert (=> b!287483 m!301925))

(declare-fun m!301927 () Bool)

(assert (=> b!287483 m!301927))

(assert (=> b!287483 m!301921))

(declare-fun m!301929 () Bool)

(assert (=> b!287483 m!301929))

(declare-fun m!301931 () Bool)

(assert (=> bm!25616 m!301931))

(assert (=> b!287372 d!66043))

(declare-fun d!66045 () Bool)

(assert (=> d!66045 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!28026 d!66045))

(declare-fun d!66051 () Bool)

(assert (=> d!66051 (= (array_inv!4793 a!3312) (bvsge (size!7191 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!28026 d!66051))

(declare-fun d!66053 () Bool)

(declare-fun res!149355 () Bool)

(declare-fun e!182095 () Bool)

(assert (=> d!66053 (=> res!149355 e!182095)))

(assert (=> d!66053 (= res!149355 (= (select (arr!6839 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66053 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!182095)))

(declare-fun b!287507 () Bool)

(declare-fun e!182096 () Bool)

(assert (=> b!287507 (= e!182095 e!182096)))

(declare-fun res!149356 () Bool)

(assert (=> b!287507 (=> (not res!149356) (not e!182096))))

(assert (=> b!287507 (= res!149356 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7191 a!3312)))))

(declare-fun b!287508 () Bool)

(assert (=> b!287508 (= e!182096 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66053 (not res!149355)) b!287507))

(assert (= (and b!287507 res!149356) b!287508))

(assert (=> d!66053 m!301921))

(declare-fun m!301933 () Bool)

(assert (=> b!287508 m!301933))

(assert (=> b!287373 d!66053))

(check-sat (not d!66033) (not b!287482) (not d!66019) (not b!287508) (not b!287469) (not b!287428) (not b!287483) (not bm!25616))
(check-sat)
