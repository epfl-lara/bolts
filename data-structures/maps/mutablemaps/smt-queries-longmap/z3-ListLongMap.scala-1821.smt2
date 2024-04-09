; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!32792 () Bool)

(assert start!32792)

(declare-fun b!327340 () Bool)

(declare-fun e!201318 () Bool)

(declare-fun e!201317 () Bool)

(assert (=> b!327340 (= e!201318 e!201317)))

(declare-fun res!180391 () Bool)

(assert (=> b!327340 (=> (not res!180391) (not e!201317))))

(declare-datatypes ((array!16780 0))(
  ( (array!16781 (arr!7940 (Array (_ BitVec 32) (_ BitVec 64))) (size!8292 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16780)

(declare-fun k0!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3082 0))(
  ( (MissingZero!3082 (index!14504 (_ BitVec 32))) (Found!3082 (index!14505 (_ BitVec 32))) (Intermediate!3082 (undefined!3894 Bool) (index!14506 (_ BitVec 32)) (x!32713 (_ BitVec 32))) (Undefined!3082) (MissingVacant!3082 (index!14507 (_ BitVec 32))) )
))
(declare-fun lt!157547 () SeekEntryResult!3082)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16780 (_ BitVec 32)) SeekEntryResult!3082)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327340 (= res!180391 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157547))))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!327340 (= lt!157547 (Intermediate!3082 false resIndex!58 resX!58))))

(declare-fun res!180394 () Bool)

(assert (=> start!32792 (=> (not res!180394) (not e!201318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32792 (= res!180394 (validMask!0 mask!3777))))

(assert (=> start!32792 e!201318))

(declare-fun array_inv!5894 (array!16780) Bool)

(assert (=> start!32792 (array_inv!5894 a!3305)))

(assert (=> start!32792 true))

(declare-fun b!327341 () Bool)

(declare-fun res!180389 () Bool)

(assert (=> b!327341 (=> (not res!180389) (not e!201318))))

(declare-fun arrayContainsKey!0 (array!16780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!327341 (= res!180389 (not (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000)))))

(declare-fun b!327342 () Bool)

(declare-fun res!180390 () Bool)

(assert (=> b!327342 (=> (not res!180390) (not e!201318))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16780 (_ BitVec 32)) Bool)

(assert (=> b!327342 (= res!180390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!327343 () Bool)

(declare-fun res!180396 () Bool)

(assert (=> b!327343 (=> (not res!180396) (not e!201318))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!327343 (= res!180396 (and (= (size!8292 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8292 a!3305))))))

(declare-fun b!327344 () Bool)

(declare-fun res!180388 () Bool)

(assert (=> b!327344 (=> (not res!180388) (not e!201318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!327344 (= res!180388 (validKeyInArray!0 k0!2497))))

(declare-fun b!327345 () Bool)

(declare-fun res!180393 () Bool)

(assert (=> b!327345 (=> (not res!180393) (not e!201318))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16780 (_ BitVec 32)) SeekEntryResult!3082)

(assert (=> b!327345 (= res!180393 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) (MissingVacant!3082 i!1250)))))

(declare-fun b!327346 () Bool)

(declare-fun res!180392 () Bool)

(assert (=> b!327346 (=> (not res!180392) (not e!201317))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!327346 (= res!180392 (and (= (select (arr!7940 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8292 a!3305))))))

(declare-fun b!327347 () Bool)

(declare-fun res!180395 () Bool)

(assert (=> b!327347 (=> (not res!180395) (not e!201317))))

(assert (=> b!327347 (= res!180395 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157547))))

(declare-fun b!327348 () Bool)

(assert (=> b!327348 (= e!201317 (and (bvslt resX!58 #b01111111111111111111111111111110) (= (select (arr!7940 a!3305) index!1840) k0!2497)))))

(assert (= (and start!32792 res!180394) b!327343))

(assert (= (and b!327343 res!180396) b!327344))

(assert (= (and b!327344 res!180388) b!327341))

(assert (= (and b!327341 res!180389) b!327345))

(assert (= (and b!327345 res!180393) b!327342))

(assert (= (and b!327342 res!180390) b!327340))

(assert (= (and b!327340 res!180391) b!327346))

(assert (= (and b!327346 res!180392) b!327347))

(assert (= (and b!327347 res!180395) b!327348))

(declare-fun m!333707 () Bool)

(assert (=> b!327340 m!333707))

(assert (=> b!327340 m!333707))

(declare-fun m!333709 () Bool)

(assert (=> b!327340 m!333709))

(declare-fun m!333711 () Bool)

(assert (=> b!327348 m!333711))

(declare-fun m!333713 () Bool)

(assert (=> b!327342 m!333713))

(declare-fun m!333715 () Bool)

(assert (=> b!327347 m!333715))

(declare-fun m!333717 () Bool)

(assert (=> b!327346 m!333717))

(declare-fun m!333719 () Bool)

(assert (=> b!327345 m!333719))

(declare-fun m!333721 () Bool)

(assert (=> start!32792 m!333721))

(declare-fun m!333723 () Bool)

(assert (=> start!32792 m!333723))

(declare-fun m!333725 () Bool)

(assert (=> b!327341 m!333725))

(declare-fun m!333727 () Bool)

(assert (=> b!327344 m!333727))

(check-sat (not b!327345) (not start!32792) (not b!327347) (not b!327342) (not b!327340) (not b!327341) (not b!327344))
(check-sat)
(get-model)

(declare-fun b!327384 () Bool)

(declare-fun e!201337 () Bool)

(declare-fun call!26096 () Bool)

(assert (=> b!327384 (= e!201337 call!26096)))

(declare-fun b!327385 () Bool)

(declare-fun e!201335 () Bool)

(assert (=> b!327385 (= e!201335 e!201337)))

(declare-fun lt!157557 () (_ BitVec 64))

(assert (=> b!327385 (= lt!157557 (select (arr!7940 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10171 0))(
  ( (Unit!10172) )
))
(declare-fun lt!157558 () Unit!10171)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16780 (_ BitVec 64) (_ BitVec 32)) Unit!10171)

(assert (=> b!327385 (= lt!157558 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157557 #b00000000000000000000000000000000))))

(assert (=> b!327385 (arrayContainsKey!0 a!3305 lt!157557 #b00000000000000000000000000000000)))

(declare-fun lt!157559 () Unit!10171)

(assert (=> b!327385 (= lt!157559 lt!157558)))

(declare-fun res!180428 () Bool)

(assert (=> b!327385 (= res!180428 (= (seekEntryOrOpen!0 (select (arr!7940 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3082 #b00000000000000000000000000000000)))))

(assert (=> b!327385 (=> (not res!180428) (not e!201337))))

(declare-fun b!327387 () Bool)

(declare-fun e!201336 () Bool)

(assert (=> b!327387 (= e!201336 e!201335)))

(declare-fun c!51110 () Bool)

(assert (=> b!327387 (= c!51110 (validKeyInArray!0 (select (arr!7940 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26093 () Bool)

(assert (=> bm!26093 (= call!26096 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!327386 () Bool)

(assert (=> b!327386 (= e!201335 call!26096)))

(declare-fun d!69725 () Bool)

(declare-fun res!180429 () Bool)

(assert (=> d!69725 (=> res!180429 e!201336)))

(assert (=> d!69725 (= res!180429 (bvsge #b00000000000000000000000000000000 (size!8292 a!3305)))))

(assert (=> d!69725 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!201336)))

(assert (= (and d!69725 (not res!180429)) b!327387))

(assert (= (and b!327387 c!51110) b!327385))

(assert (= (and b!327387 (not c!51110)) b!327386))

(assert (= (and b!327385 res!180428) b!327384))

(assert (= (or b!327384 b!327386) bm!26093))

(declare-fun m!333751 () Bool)

(assert (=> b!327385 m!333751))

(declare-fun m!333753 () Bool)

(assert (=> b!327385 m!333753))

(declare-fun m!333755 () Bool)

(assert (=> b!327385 m!333755))

(assert (=> b!327385 m!333751))

(declare-fun m!333757 () Bool)

(assert (=> b!327385 m!333757))

(assert (=> b!327387 m!333751))

(assert (=> b!327387 m!333751))

(declare-fun m!333759 () Bool)

(assert (=> b!327387 m!333759))

(declare-fun m!333761 () Bool)

(assert (=> bm!26093 m!333761))

(assert (=> b!327342 d!69725))

(declare-fun b!327424 () Bool)

(declare-fun e!201358 () Bool)

(declare-fun lt!157569 () SeekEntryResult!3082)

(assert (=> b!327424 (= e!201358 (bvsge (x!32713 lt!157569) #b01111111111111111111111111111110))))

(declare-fun e!201362 () SeekEntryResult!3082)

(declare-fun b!327425 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!327425 (= e!201362 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!327426 () Bool)

(assert (=> b!327426 (and (bvsge (index!14506 lt!157569) #b00000000000000000000000000000000) (bvslt (index!14506 lt!157569) (size!8292 a!3305)))))

(declare-fun res!180442 () Bool)

(assert (=> b!327426 (= res!180442 (= (select (arr!7940 a!3305) (index!14506 lt!157569)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201359 () Bool)

(assert (=> b!327426 (=> res!180442 e!201359)))

(declare-fun b!327427 () Bool)

(assert (=> b!327427 (= e!201362 (Intermediate!3082 false index!1840 x!1490))))

(declare-fun b!327428 () Bool)

(assert (=> b!327428 (and (bvsge (index!14506 lt!157569) #b00000000000000000000000000000000) (bvslt (index!14506 lt!157569) (size!8292 a!3305)))))

(declare-fun res!180444 () Bool)

(assert (=> b!327428 (= res!180444 (= (select (arr!7940 a!3305) (index!14506 lt!157569)) k0!2497))))

(assert (=> b!327428 (=> res!180444 e!201359)))

(declare-fun e!201360 () Bool)

(assert (=> b!327428 (= e!201360 e!201359)))

(declare-fun b!327429 () Bool)

(assert (=> b!327429 (= e!201358 e!201360)))

(declare-fun res!180443 () Bool)

(get-info :version)

(assert (=> b!327429 (= res!180443 (and ((_ is Intermediate!3082) lt!157569) (not (undefined!3894 lt!157569)) (bvslt (x!32713 lt!157569) #b01111111111111111111111111111110) (bvsge (x!32713 lt!157569) #b00000000000000000000000000000000) (bvsge (x!32713 lt!157569) x!1490)))))

(assert (=> b!327429 (=> (not res!180443) (not e!201360))))

(declare-fun d!69729 () Bool)

(assert (=> d!69729 e!201358))

(declare-fun c!51125 () Bool)

(assert (=> d!69729 (= c!51125 (and ((_ is Intermediate!3082) lt!157569) (undefined!3894 lt!157569)))))

(declare-fun e!201361 () SeekEntryResult!3082)

(assert (=> d!69729 (= lt!157569 e!201361)))

(declare-fun c!51124 () Bool)

(assert (=> d!69729 (= c!51124 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157568 () (_ BitVec 64))

(assert (=> d!69729 (= lt!157568 (select (arr!7940 a!3305) index!1840))))

(assert (=> d!69729 (validMask!0 mask!3777)))

(assert (=> d!69729 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k0!2497 a!3305 mask!3777) lt!157569)))

(declare-fun b!327430 () Bool)

(assert (=> b!327430 (= e!201361 (Intermediate!3082 true index!1840 x!1490))))

(declare-fun b!327431 () Bool)

(assert (=> b!327431 (and (bvsge (index!14506 lt!157569) #b00000000000000000000000000000000) (bvslt (index!14506 lt!157569) (size!8292 a!3305)))))

(assert (=> b!327431 (= e!201359 (= (select (arr!7940 a!3305) (index!14506 lt!157569)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327432 () Bool)

(assert (=> b!327432 (= e!201361 e!201362)))

(declare-fun c!51123 () Bool)

(assert (=> b!327432 (= c!51123 (or (= lt!157568 k0!2497) (= (bvadd lt!157568 lt!157568) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69729 c!51124) b!327430))

(assert (= (and d!69729 (not c!51124)) b!327432))

(assert (= (and b!327432 c!51123) b!327427))

(assert (= (and b!327432 (not c!51123)) b!327425))

(assert (= (and d!69729 c!51125) b!327424))

(assert (= (and d!69729 (not c!51125)) b!327429))

(assert (= (and b!327429 res!180443) b!327428))

(assert (= (and b!327428 (not res!180444)) b!327426))

(assert (= (and b!327426 (not res!180442)) b!327431))

(declare-fun m!333763 () Bool)

(assert (=> b!327428 m!333763))

(declare-fun m!333765 () Bool)

(assert (=> b!327425 m!333765))

(assert (=> b!327425 m!333765))

(declare-fun m!333767 () Bool)

(assert (=> b!327425 m!333767))

(assert (=> b!327426 m!333763))

(assert (=> b!327431 m!333763))

(assert (=> d!69729 m!333711))

(assert (=> d!69729 m!333721))

(assert (=> b!327347 d!69729))

(declare-fun d!69735 () Bool)

(assert (=> d!69735 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32792 d!69735))

(declare-fun d!69743 () Bool)

(assert (=> d!69743 (= (array_inv!5894 a!3305) (bvsge (size!8292 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32792 d!69743))

(declare-fun d!69745 () Bool)

(declare-fun res!180453 () Bool)

(declare-fun e!201381 () Bool)

(assert (=> d!69745 (=> res!180453 e!201381)))

(assert (=> d!69745 (= res!180453 (= (select (arr!7940 a!3305) #b00000000000000000000000000000000) k0!2497))))

(assert (=> d!69745 (= (arrayContainsKey!0 a!3305 k0!2497 #b00000000000000000000000000000000) e!201381)))

(declare-fun b!327464 () Bool)

(declare-fun e!201382 () Bool)

(assert (=> b!327464 (= e!201381 e!201382)))

(declare-fun res!180454 () Bool)

(assert (=> b!327464 (=> (not res!180454) (not e!201382))))

(assert (=> b!327464 (= res!180454 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8292 a!3305)))))

(declare-fun b!327465 () Bool)

(assert (=> b!327465 (= e!201382 (arrayContainsKey!0 a!3305 k0!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69745 (not res!180453)) b!327464))

(assert (= (and b!327464 res!180454) b!327465))

(assert (=> d!69745 m!333751))

(declare-fun m!333787 () Bool)

(assert (=> b!327465 m!333787))

(assert (=> b!327341 d!69745))

(declare-fun b!327466 () Bool)

(declare-fun e!201383 () Bool)

(declare-fun lt!157588 () SeekEntryResult!3082)

(assert (=> b!327466 (= e!201383 (bvsge (x!32713 lt!157588) #b01111111111111111111111111111110))))

(declare-fun b!327467 () Bool)

(declare-fun e!201387 () SeekEntryResult!3082)

(assert (=> b!327467 (= e!201387 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k0!2497 a!3305 mask!3777))))

(declare-fun b!327468 () Bool)

(assert (=> b!327468 (and (bvsge (index!14506 lt!157588) #b00000000000000000000000000000000) (bvslt (index!14506 lt!157588) (size!8292 a!3305)))))

(declare-fun res!180455 () Bool)

(assert (=> b!327468 (= res!180455 (= (select (arr!7940 a!3305) (index!14506 lt!157588)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201384 () Bool)

(assert (=> b!327468 (=> res!180455 e!201384)))

(declare-fun b!327469 () Bool)

(assert (=> b!327469 (= e!201387 (Intermediate!3082 false (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327470 () Bool)

(assert (=> b!327470 (and (bvsge (index!14506 lt!157588) #b00000000000000000000000000000000) (bvslt (index!14506 lt!157588) (size!8292 a!3305)))))

(declare-fun res!180457 () Bool)

(assert (=> b!327470 (= res!180457 (= (select (arr!7940 a!3305) (index!14506 lt!157588)) k0!2497))))

(assert (=> b!327470 (=> res!180457 e!201384)))

(declare-fun e!201385 () Bool)

(assert (=> b!327470 (= e!201385 e!201384)))

(declare-fun b!327471 () Bool)

(assert (=> b!327471 (= e!201383 e!201385)))

(declare-fun res!180456 () Bool)

(assert (=> b!327471 (= res!180456 (and ((_ is Intermediate!3082) lt!157588) (not (undefined!3894 lt!157588)) (bvslt (x!32713 lt!157588) #b01111111111111111111111111111110) (bvsge (x!32713 lt!157588) #b00000000000000000000000000000000) (bvsge (x!32713 lt!157588) #b00000000000000000000000000000000)))))

(assert (=> b!327471 (=> (not res!180456) (not e!201385))))

(declare-fun d!69747 () Bool)

(assert (=> d!69747 e!201383))

(declare-fun c!51140 () Bool)

(assert (=> d!69747 (= c!51140 (and ((_ is Intermediate!3082) lt!157588) (undefined!3894 lt!157588)))))

(declare-fun e!201386 () SeekEntryResult!3082)

(assert (=> d!69747 (= lt!157588 e!201386)))

(declare-fun c!51139 () Bool)

(assert (=> d!69747 (= c!51139 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157587 () (_ BitVec 64))

(assert (=> d!69747 (= lt!157587 (select (arr!7940 a!3305) (toIndex!0 k0!2497 mask!3777)))))

(assert (=> d!69747 (validMask!0 mask!3777)))

(assert (=> d!69747 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777) lt!157588)))

(declare-fun b!327472 () Bool)

(assert (=> b!327472 (= e!201386 (Intermediate!3082 true (toIndex!0 k0!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!327473 () Bool)

(assert (=> b!327473 (and (bvsge (index!14506 lt!157588) #b00000000000000000000000000000000) (bvslt (index!14506 lt!157588) (size!8292 a!3305)))))

(assert (=> b!327473 (= e!201384 (= (select (arr!7940 a!3305) (index!14506 lt!157588)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!327474 () Bool)

(assert (=> b!327474 (= e!201386 e!201387)))

(declare-fun c!51138 () Bool)

(assert (=> b!327474 (= c!51138 (or (= lt!157587 k0!2497) (= (bvadd lt!157587 lt!157587) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69747 c!51139) b!327472))

(assert (= (and d!69747 (not c!51139)) b!327474))

(assert (= (and b!327474 c!51138) b!327469))

(assert (= (and b!327474 (not c!51138)) b!327467))

(assert (= (and d!69747 c!51140) b!327466))

(assert (= (and d!69747 (not c!51140)) b!327471))

(assert (= (and b!327471 res!180456) b!327470))

(assert (= (and b!327470 (not res!180457)) b!327468))

(assert (= (and b!327468 (not res!180455)) b!327473))

(declare-fun m!333789 () Bool)

(assert (=> b!327470 m!333789))

(assert (=> b!327467 m!333707))

(declare-fun m!333791 () Bool)

(assert (=> b!327467 m!333791))

(assert (=> b!327467 m!333791))

(declare-fun m!333793 () Bool)

(assert (=> b!327467 m!333793))

(assert (=> b!327468 m!333789))

(assert (=> b!327473 m!333789))

(assert (=> d!69747 m!333707))

(declare-fun m!333795 () Bool)

(assert (=> d!69747 m!333795))

(assert (=> d!69747 m!333721))

(assert (=> b!327340 d!69747))

(declare-fun d!69749 () Bool)

(declare-fun lt!157594 () (_ BitVec 32))

(declare-fun lt!157593 () (_ BitVec 32))

(assert (=> d!69749 (= lt!157594 (bvmul (bvxor lt!157593 (bvlshr lt!157593 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69749 (= lt!157593 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69749 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!180458 (let ((h!5421 ((_ extract 31 0) (bvand (bvxor k0!2497 (bvlshr k0!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32718 (bvmul (bvxor h!5421 (bvlshr h!5421 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32718 (bvlshr x!32718 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!180458 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!180458 #b00000000000000000000000000000000))))))

(assert (=> d!69749 (= (toIndex!0 k0!2497 mask!3777) (bvand (bvxor lt!157594 (bvlshr lt!157594 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!327340 d!69749))

(declare-fun b!327529 () Bool)

(declare-fun c!51163 () Bool)

(declare-fun lt!157615 () (_ BitVec 64))

(assert (=> b!327529 (= c!51163 (= lt!157615 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!201419 () SeekEntryResult!3082)

(declare-fun e!201421 () SeekEntryResult!3082)

(assert (=> b!327529 (= e!201419 e!201421)))

(declare-fun b!327530 () Bool)

(declare-fun lt!157614 () SeekEntryResult!3082)

(assert (=> b!327530 (= e!201419 (Found!3082 (index!14506 lt!157614)))))

(declare-fun b!327531 () Bool)

(assert (=> b!327531 (= e!201421 (MissingZero!3082 (index!14506 lt!157614)))))

(declare-fun b!327532 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16780 (_ BitVec 32)) SeekEntryResult!3082)

(assert (=> b!327532 (= e!201421 (seekKeyOrZeroReturnVacant!0 (x!32713 lt!157614) (index!14506 lt!157614) (index!14506 lt!157614) k0!2497 a!3305 mask!3777))))

(declare-fun d!69755 () Bool)

(declare-fun lt!157616 () SeekEntryResult!3082)

(assert (=> d!69755 (and (or ((_ is Undefined!3082) lt!157616) (not ((_ is Found!3082) lt!157616)) (and (bvsge (index!14505 lt!157616) #b00000000000000000000000000000000) (bvslt (index!14505 lt!157616) (size!8292 a!3305)))) (or ((_ is Undefined!3082) lt!157616) ((_ is Found!3082) lt!157616) (not ((_ is MissingZero!3082) lt!157616)) (and (bvsge (index!14504 lt!157616) #b00000000000000000000000000000000) (bvslt (index!14504 lt!157616) (size!8292 a!3305)))) (or ((_ is Undefined!3082) lt!157616) ((_ is Found!3082) lt!157616) ((_ is MissingZero!3082) lt!157616) (not ((_ is MissingVacant!3082) lt!157616)) (and (bvsge (index!14507 lt!157616) #b00000000000000000000000000000000) (bvslt (index!14507 lt!157616) (size!8292 a!3305)))) (or ((_ is Undefined!3082) lt!157616) (ite ((_ is Found!3082) lt!157616) (= (select (arr!7940 a!3305) (index!14505 lt!157616)) k0!2497) (ite ((_ is MissingZero!3082) lt!157616) (= (select (arr!7940 a!3305) (index!14504 lt!157616)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3082) lt!157616) (= (select (arr!7940 a!3305) (index!14507 lt!157616)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!201420 () SeekEntryResult!3082)

(assert (=> d!69755 (= lt!157616 e!201420)))

(declare-fun c!51162 () Bool)

(assert (=> d!69755 (= c!51162 (and ((_ is Intermediate!3082) lt!157614) (undefined!3894 lt!157614)))))

(assert (=> d!69755 (= lt!157614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2497 mask!3777) k0!2497 a!3305 mask!3777))))

(assert (=> d!69755 (validMask!0 mask!3777)))

(assert (=> d!69755 (= (seekEntryOrOpen!0 k0!2497 a!3305 mask!3777) lt!157616)))

(declare-fun b!327533 () Bool)

(assert (=> b!327533 (= e!201420 e!201419)))

(assert (=> b!327533 (= lt!157615 (select (arr!7940 a!3305) (index!14506 lt!157614)))))

(declare-fun c!51164 () Bool)

(assert (=> b!327533 (= c!51164 (= lt!157615 k0!2497))))

(declare-fun b!327534 () Bool)

(assert (=> b!327534 (= e!201420 Undefined!3082)))

(assert (= (and d!69755 c!51162) b!327534))

(assert (= (and d!69755 (not c!51162)) b!327533))

(assert (= (and b!327533 c!51164) b!327530))

(assert (= (and b!327533 (not c!51164)) b!327529))

(assert (= (and b!327529 c!51163) b!327531))

(assert (= (and b!327529 (not c!51163)) b!327532))

(declare-fun m!333811 () Bool)

(assert (=> b!327532 m!333811))

(declare-fun m!333813 () Bool)

(assert (=> d!69755 m!333813))

(assert (=> d!69755 m!333707))

(declare-fun m!333815 () Bool)

(assert (=> d!69755 m!333815))

(declare-fun m!333817 () Bool)

(assert (=> d!69755 m!333817))

(assert (=> d!69755 m!333721))

(assert (=> d!69755 m!333707))

(assert (=> d!69755 m!333709))

(declare-fun m!333819 () Bool)

(assert (=> b!327533 m!333819))

(assert (=> b!327345 d!69755))

(declare-fun d!69767 () Bool)

(assert (=> d!69767 (= (validKeyInArray!0 k0!2497) (and (not (= k0!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!327344 d!69767))

(check-sat (not bm!26093) (not b!327385) (not d!69747) (not b!327387) (not d!69755) (not b!327532) (not b!327425) (not b!327465) (not b!327467) (not d!69729))
(check-sat)
