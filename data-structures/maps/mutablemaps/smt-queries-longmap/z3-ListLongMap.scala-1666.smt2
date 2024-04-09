; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30836 () Bool)

(assert start!30836)

(declare-fun b!309403 () Bool)

(declare-fun res!166180 () Bool)

(declare-fun e!193278 () Bool)

(assert (=> b!309403 (=> (not res!166180) (not e!193278))))

(declare-datatypes ((array!15787 0))(
  ( (array!15788 (arr!7475 (Array (_ BitVec 32) (_ BitVec 64))) (size!7827 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15787)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309403 (= res!166180 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309404 () Bool)

(declare-fun res!166179 () Bool)

(assert (=> b!309404 (=> (not res!166179) (not e!193278))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15787 (_ BitVec 32)) Bool)

(assert (=> b!309404 (= res!166179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309406 () Bool)

(declare-fun e!193277 () Bool)

(assert (=> b!309406 (= e!193278 e!193277)))

(declare-fun res!166177 () Bool)

(assert (=> b!309406 (=> (not res!166177) (not e!193277))))

(declare-datatypes ((SeekEntryResult!2626 0))(
  ( (MissingZero!2626 (index!12680 (_ BitVec 32))) (Found!2626 (index!12681 (_ BitVec 32))) (Intermediate!2626 (undefined!3438 Bool) (index!12682 (_ BitVec 32)) (x!30873 (_ BitVec 32))) (Undefined!2626) (MissingVacant!2626 (index!12683 (_ BitVec 32))) )
))
(declare-fun lt!151591 () SeekEntryResult!2626)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15787 (_ BitVec 32)) SeekEntryResult!2626)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309406 (= res!166177 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151591))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309406 (= lt!151591 (Intermediate!2626 false resIndex!52 resX!52))))

(declare-fun b!309407 () Bool)

(declare-fun res!166182 () Bool)

(assert (=> b!309407 (=> (not res!166182) (not e!193278))))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15787 (_ BitVec 32)) SeekEntryResult!2626)

(assert (=> b!309407 (= res!166182 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2626 i!1240)))))

(declare-fun b!309408 () Bool)

(declare-fun res!166174 () Bool)

(assert (=> b!309408 (=> (not res!166174) (not e!193278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309408 (= res!166174 (validKeyInArray!0 k0!2441))))

(declare-fun b!309409 () Bool)

(declare-fun e!193279 () Bool)

(assert (=> b!309409 (= e!193277 e!193279)))

(declare-fun res!166178 () Bool)

(assert (=> b!309409 (=> (not res!166178) (not e!193279))))

(declare-fun lt!151592 () SeekEntryResult!2626)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309409 (= res!166178 (and (= lt!151592 lt!151591) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7475 a!3293) index!1781) k0!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309409 (= lt!151592 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun res!166181 () Bool)

(assert (=> start!30836 (=> (not res!166181) (not e!193278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30836 (= res!166181 (validMask!0 mask!3709))))

(assert (=> start!30836 e!193278))

(declare-fun array_inv!5429 (array!15787) Bool)

(assert (=> start!30836 (array_inv!5429 a!3293)))

(assert (=> start!30836 true))

(declare-fun b!309405 () Bool)

(declare-fun res!166175 () Bool)

(assert (=> b!309405 (=> (not res!166175) (not e!193278))))

(assert (=> b!309405 (= res!166175 (and (= (size!7827 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7827 a!3293))))))

(declare-fun b!309410 () Bool)

(declare-fun res!166176 () Bool)

(assert (=> b!309410 (=> (not res!166176) (not e!193277))))

(assert (=> b!309410 (= res!166176 (and (= (select (arr!7475 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7827 a!3293))))))

(declare-fun b!309411 () Bool)

(declare-fun lt!151590 () (_ BitVec 32))

(assert (=> b!309411 (= e!193279 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (and (bvsge lt!151590 #b00000000000000000000000000000000) (bvslt lt!151590 (bvadd #b00000000000000000000000000000001 mask!3709))))))))

(assert (=> b!309411 (= lt!151592 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151590 k0!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309411 (= lt!151590 (nextIndex!0 index!1781 x!1427 mask!3709))))

(assert (= (and start!30836 res!166181) b!309405))

(assert (= (and b!309405 res!166175) b!309408))

(assert (= (and b!309408 res!166174) b!309403))

(assert (= (and b!309403 res!166180) b!309407))

(assert (= (and b!309407 res!166182) b!309404))

(assert (= (and b!309404 res!166179) b!309406))

(assert (= (and b!309406 res!166177) b!309410))

(assert (= (and b!309410 res!166176) b!309409))

(assert (= (and b!309409 res!166178) b!309411))

(declare-fun m!319443 () Bool)

(assert (=> b!309410 m!319443))

(declare-fun m!319445 () Bool)

(assert (=> b!309404 m!319445))

(declare-fun m!319447 () Bool)

(assert (=> b!309403 m!319447))

(declare-fun m!319449 () Bool)

(assert (=> b!309409 m!319449))

(declare-fun m!319451 () Bool)

(assert (=> b!309409 m!319451))

(declare-fun m!319453 () Bool)

(assert (=> b!309408 m!319453))

(declare-fun m!319455 () Bool)

(assert (=> start!30836 m!319455))

(declare-fun m!319457 () Bool)

(assert (=> start!30836 m!319457))

(declare-fun m!319459 () Bool)

(assert (=> b!309406 m!319459))

(assert (=> b!309406 m!319459))

(declare-fun m!319461 () Bool)

(assert (=> b!309406 m!319461))

(declare-fun m!319463 () Bool)

(assert (=> b!309411 m!319463))

(declare-fun m!319465 () Bool)

(assert (=> b!309411 m!319465))

(declare-fun m!319467 () Bool)

(assert (=> b!309407 m!319467))

(check-sat (not b!309407) (not b!309411) (not start!30836) (not b!309403) (not b!309406) (not b!309408) (not b!309409) (not b!309404))
(check-sat)
(get-model)

(declare-fun b!309463 () Bool)

(declare-fun e!193311 () SeekEntryResult!2626)

(declare-fun e!193309 () SeekEntryResult!2626)

(assert (=> b!309463 (= e!193311 e!193309)))

(declare-fun c!49226 () Bool)

(declare-fun lt!151606 () (_ BitVec 64))

(assert (=> b!309463 (= c!49226 (or (= lt!151606 k0!2441) (= (bvadd lt!151606 lt!151606) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!309464 () Bool)

(assert (=> b!309464 (= e!193309 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!309466 () Bool)

(declare-fun lt!151607 () SeekEntryResult!2626)

(assert (=> b!309466 (and (bvsge (index!12682 lt!151607) #b00000000000000000000000000000000) (bvslt (index!12682 lt!151607) (size!7827 a!3293)))))

(declare-fun e!193310 () Bool)

(assert (=> b!309466 (= e!193310 (= (select (arr!7475 a!3293) (index!12682 lt!151607)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!309467 () Bool)

(assert (=> b!309467 (and (bvsge (index!12682 lt!151607) #b00000000000000000000000000000000) (bvslt (index!12682 lt!151607) (size!7827 a!3293)))))

(declare-fun res!166224 () Bool)

(assert (=> b!309467 (= res!166224 (= (select (arr!7475 a!3293) (index!12682 lt!151607)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!309467 (=> res!166224 e!193310)))

(declare-fun b!309468 () Bool)

(assert (=> b!309468 (and (bvsge (index!12682 lt!151607) #b00000000000000000000000000000000) (bvslt (index!12682 lt!151607) (size!7827 a!3293)))))

(declare-fun res!166223 () Bool)

(assert (=> b!309468 (= res!166223 (= (select (arr!7475 a!3293) (index!12682 lt!151607)) k0!2441))))

(assert (=> b!309468 (=> res!166223 e!193310)))

(declare-fun e!193308 () Bool)

(assert (=> b!309468 (= e!193308 e!193310)))

(declare-fun b!309469 () Bool)

(assert (=> b!309469 (= e!193311 (Intermediate!2626 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!309470 () Bool)

(assert (=> b!309470 (= e!193309 (Intermediate!2626 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!309471 () Bool)

(declare-fun e!193312 () Bool)

(assert (=> b!309471 (= e!193312 (bvsge (x!30873 lt!151607) #b01111111111111111111111111111110))))

(declare-fun b!309465 () Bool)

(assert (=> b!309465 (= e!193312 e!193308)))

(declare-fun res!166222 () Bool)

(get-info :version)

(assert (=> b!309465 (= res!166222 (and ((_ is Intermediate!2626) lt!151607) (not (undefined!3438 lt!151607)) (bvslt (x!30873 lt!151607) #b01111111111111111111111111111110) (bvsge (x!30873 lt!151607) #b00000000000000000000000000000000) (bvsge (x!30873 lt!151607) #b00000000000000000000000000000000)))))

(assert (=> b!309465 (=> (not res!166222) (not e!193308))))

(declare-fun d!68209 () Bool)

(assert (=> d!68209 e!193312))

(declare-fun c!49224 () Bool)

(assert (=> d!68209 (= c!49224 (and ((_ is Intermediate!2626) lt!151607) (undefined!3438 lt!151607)))))

(assert (=> d!68209 (= lt!151607 e!193311)))

(declare-fun c!49225 () Bool)

(assert (=> d!68209 (= c!49225 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68209 (= lt!151606 (select (arr!7475 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68209 (validMask!0 mask!3709)))

(assert (=> d!68209 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!151607)))

(assert (= (and d!68209 c!49225) b!309469))

(assert (= (and d!68209 (not c!49225)) b!309463))

(assert (= (and b!309463 c!49226) b!309470))

(assert (= (and b!309463 (not c!49226)) b!309464))

(assert (= (and d!68209 c!49224) b!309471))

(assert (= (and d!68209 (not c!49224)) b!309465))

(assert (= (and b!309465 res!166222) b!309468))

(assert (= (and b!309468 (not res!166223)) b!309467))

(assert (= (and b!309467 (not res!166224)) b!309466))

(declare-fun m!319499 () Bool)

(assert (=> b!309466 m!319499))

(assert (=> d!68209 m!319459))

(declare-fun m!319501 () Bool)

(assert (=> d!68209 m!319501))

(assert (=> d!68209 m!319455))

(assert (=> b!309464 m!319459))

(declare-fun m!319503 () Bool)

(assert (=> b!309464 m!319503))

(assert (=> b!309464 m!319503))

(declare-fun m!319505 () Bool)

(assert (=> b!309464 m!319505))

(assert (=> b!309467 m!319499))

(assert (=> b!309468 m!319499))

(assert (=> b!309406 d!68209))

(declare-fun d!68219 () Bool)

(declare-fun lt!151617 () (_ BitVec 32))

(declare-fun lt!151616 () (_ BitVec 32))

(assert (=> d!68219 (= lt!151617 (bvmul (bvxor lt!151616 (bvlshr lt!151616 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68219 (= lt!151616 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68219 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!166225 (let ((h!5363 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30877 (bvmul (bvxor h!5363 (bvlshr h!5363 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30877 (bvlshr x!30877 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!166225 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!166225 #b00000000000000000000000000000000))))))

(assert (=> d!68219 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!151617 (bvlshr lt!151617 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!309406 d!68219))

(declare-fun b!309532 () Bool)

(declare-fun e!193350 () SeekEntryResult!2626)

(declare-fun lt!151648 () SeekEntryResult!2626)

(assert (=> b!309532 (= e!193350 (Found!2626 (index!12682 lt!151648)))))

(declare-fun b!309533 () Bool)

(declare-fun e!193348 () SeekEntryResult!2626)

(assert (=> b!309533 (= e!193348 (MissingZero!2626 (index!12682 lt!151648)))))

(declare-fun b!309534 () Bool)

(declare-fun e!193349 () SeekEntryResult!2626)

(assert (=> b!309534 (= e!193349 Undefined!2626)))

(declare-fun b!309535 () Bool)

(declare-fun c!49249 () Bool)

(declare-fun lt!151646 () (_ BitVec 64))

(assert (=> b!309535 (= c!49249 (= lt!151646 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!309535 (= e!193350 e!193348)))

(declare-fun d!68221 () Bool)

(declare-fun lt!151647 () SeekEntryResult!2626)

(assert (=> d!68221 (and (or ((_ is Undefined!2626) lt!151647) (not ((_ is Found!2626) lt!151647)) (and (bvsge (index!12681 lt!151647) #b00000000000000000000000000000000) (bvslt (index!12681 lt!151647) (size!7827 a!3293)))) (or ((_ is Undefined!2626) lt!151647) ((_ is Found!2626) lt!151647) (not ((_ is MissingZero!2626) lt!151647)) (and (bvsge (index!12680 lt!151647) #b00000000000000000000000000000000) (bvslt (index!12680 lt!151647) (size!7827 a!3293)))) (or ((_ is Undefined!2626) lt!151647) ((_ is Found!2626) lt!151647) ((_ is MissingZero!2626) lt!151647) (not ((_ is MissingVacant!2626) lt!151647)) (and (bvsge (index!12683 lt!151647) #b00000000000000000000000000000000) (bvslt (index!12683 lt!151647) (size!7827 a!3293)))) (or ((_ is Undefined!2626) lt!151647) (ite ((_ is Found!2626) lt!151647) (= (select (arr!7475 a!3293) (index!12681 lt!151647)) k0!2441) (ite ((_ is MissingZero!2626) lt!151647) (= (select (arr!7475 a!3293) (index!12680 lt!151647)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2626) lt!151647) (= (select (arr!7475 a!3293) (index!12683 lt!151647)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68221 (= lt!151647 e!193349)))

(declare-fun c!49248 () Bool)

(assert (=> d!68221 (= c!49248 (and ((_ is Intermediate!2626) lt!151648) (undefined!3438 lt!151648)))))

(assert (=> d!68221 (= lt!151648 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68221 (validMask!0 mask!3709)))

(assert (=> d!68221 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!151647)))

(declare-fun b!309536 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15787 (_ BitVec 32)) SeekEntryResult!2626)

(assert (=> b!309536 (= e!193348 (seekKeyOrZeroReturnVacant!0 (x!30873 lt!151648) (index!12682 lt!151648) (index!12682 lt!151648) k0!2441 a!3293 mask!3709))))

(declare-fun b!309537 () Bool)

(assert (=> b!309537 (= e!193349 e!193350)))

(assert (=> b!309537 (= lt!151646 (select (arr!7475 a!3293) (index!12682 lt!151648)))))

(declare-fun c!49250 () Bool)

(assert (=> b!309537 (= c!49250 (= lt!151646 k0!2441))))

(assert (= (and d!68221 c!49248) b!309534))

(assert (= (and d!68221 (not c!49248)) b!309537))

(assert (= (and b!309537 c!49250) b!309532))

(assert (= (and b!309537 (not c!49250)) b!309535))

(assert (= (and b!309535 c!49249) b!309533))

(assert (= (and b!309535 (not c!49249)) b!309536))

(declare-fun m!319535 () Bool)

(assert (=> d!68221 m!319535))

(assert (=> d!68221 m!319455))

(declare-fun m!319537 () Bool)

(assert (=> d!68221 m!319537))

(declare-fun m!319539 () Bool)

(assert (=> d!68221 m!319539))

(assert (=> d!68221 m!319459))

(assert (=> d!68221 m!319459))

(assert (=> d!68221 m!319461))

(declare-fun m!319541 () Bool)

(assert (=> b!309536 m!319541))

(declare-fun m!319543 () Bool)

(assert (=> b!309537 m!319543))

(assert (=> b!309407 d!68221))

(declare-fun d!68237 () Bool)

(assert (=> d!68237 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!309408 d!68237))

(declare-fun d!68239 () Bool)

(declare-fun res!166249 () Bool)

(declare-fun e!193355 () Bool)

(assert (=> d!68239 (=> res!166249 e!193355)))

(assert (=> d!68239 (= res!166249 (= (select (arr!7475 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68239 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!193355)))

(declare-fun b!309542 () Bool)

(declare-fun e!193356 () Bool)

(assert (=> b!309542 (= e!193355 e!193356)))

(declare-fun res!166250 () Bool)

(assert (=> b!309542 (=> (not res!166250) (not e!193356))))

(assert (=> b!309542 (= res!166250 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7827 a!3293)))))

(declare-fun b!309543 () Bool)

(assert (=> b!309543 (= e!193356 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68239 (not res!166249)) b!309542))

(assert (= (and b!309542 res!166250) b!309543))

(declare-fun m!319545 () Bool)

(assert (=> d!68239 m!319545))

(declare-fun m!319547 () Bool)

(assert (=> b!309543 m!319547))

(assert (=> b!309403 d!68239))

(declare-fun b!309544 () Bool)

(declare-fun e!193360 () SeekEntryResult!2626)

(declare-fun e!193358 () SeekEntryResult!2626)

(assert (=> b!309544 (= e!193360 e!193358)))

(declare-fun c!49253 () Bool)

(declare-fun lt!151649 () (_ BitVec 64))

(assert (=> b!309544 (= c!49253 (or (= lt!151649 k0!2441) (= (bvadd lt!151649 lt!151649) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!309545 () Bool)

(assert (=> b!309545 (= e!193358 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!309547 () Bool)

(declare-fun lt!151650 () SeekEntryResult!2626)

(assert (=> b!309547 (and (bvsge (index!12682 lt!151650) #b00000000000000000000000000000000) (bvslt (index!12682 lt!151650) (size!7827 a!3293)))))

(declare-fun e!193359 () Bool)

(assert (=> b!309547 (= e!193359 (= (select (arr!7475 a!3293) (index!12682 lt!151650)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!309548 () Bool)

(assert (=> b!309548 (and (bvsge (index!12682 lt!151650) #b00000000000000000000000000000000) (bvslt (index!12682 lt!151650) (size!7827 a!3293)))))

(declare-fun res!166253 () Bool)

(assert (=> b!309548 (= res!166253 (= (select (arr!7475 a!3293) (index!12682 lt!151650)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!309548 (=> res!166253 e!193359)))

(declare-fun b!309549 () Bool)

(assert (=> b!309549 (and (bvsge (index!12682 lt!151650) #b00000000000000000000000000000000) (bvslt (index!12682 lt!151650) (size!7827 a!3293)))))

(declare-fun res!166252 () Bool)

(assert (=> b!309549 (= res!166252 (= (select (arr!7475 a!3293) (index!12682 lt!151650)) k0!2441))))

(assert (=> b!309549 (=> res!166252 e!193359)))

(declare-fun e!193357 () Bool)

(assert (=> b!309549 (= e!193357 e!193359)))

(declare-fun b!309550 () Bool)

(assert (=> b!309550 (= e!193360 (Intermediate!2626 true index!1781 x!1427))))

(declare-fun b!309551 () Bool)

(assert (=> b!309551 (= e!193358 (Intermediate!2626 false index!1781 x!1427))))

(declare-fun b!309552 () Bool)

(declare-fun e!193361 () Bool)

(assert (=> b!309552 (= e!193361 (bvsge (x!30873 lt!151650) #b01111111111111111111111111111110))))

(declare-fun b!309546 () Bool)

(assert (=> b!309546 (= e!193361 e!193357)))

(declare-fun res!166251 () Bool)

(assert (=> b!309546 (= res!166251 (and ((_ is Intermediate!2626) lt!151650) (not (undefined!3438 lt!151650)) (bvslt (x!30873 lt!151650) #b01111111111111111111111111111110) (bvsge (x!30873 lt!151650) #b00000000000000000000000000000000) (bvsge (x!30873 lt!151650) x!1427)))))

(assert (=> b!309546 (=> (not res!166251) (not e!193357))))

(declare-fun d!68241 () Bool)

(assert (=> d!68241 e!193361))

(declare-fun c!49251 () Bool)

(assert (=> d!68241 (= c!49251 (and ((_ is Intermediate!2626) lt!151650) (undefined!3438 lt!151650)))))

(assert (=> d!68241 (= lt!151650 e!193360)))

(declare-fun c!49252 () Bool)

(assert (=> d!68241 (= c!49252 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68241 (= lt!151649 (select (arr!7475 a!3293) index!1781))))

(assert (=> d!68241 (validMask!0 mask!3709)))

(assert (=> d!68241 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!151650)))

(assert (= (and d!68241 c!49252) b!309550))

(assert (= (and d!68241 (not c!49252)) b!309544))

(assert (= (and b!309544 c!49253) b!309551))

(assert (= (and b!309544 (not c!49253)) b!309545))

(assert (= (and d!68241 c!49251) b!309552))

(assert (= (and d!68241 (not c!49251)) b!309546))

(assert (= (and b!309546 res!166251) b!309549))

(assert (= (and b!309549 (not res!166252)) b!309548))

(assert (= (and b!309548 (not res!166253)) b!309547))

(declare-fun m!319549 () Bool)

(assert (=> b!309547 m!319549))

(assert (=> d!68241 m!319449))

(assert (=> d!68241 m!319455))

(assert (=> b!309545 m!319465))

(assert (=> b!309545 m!319465))

(declare-fun m!319551 () Bool)

(assert (=> b!309545 m!319551))

(assert (=> b!309548 m!319549))

(assert (=> b!309549 m!319549))

(assert (=> b!309409 d!68241))

(declare-fun bm!25916 () Bool)

(declare-fun call!25919 () Bool)

(assert (=> bm!25916 (= call!25919 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!309615 () Bool)

(declare-fun e!193398 () Bool)

(assert (=> b!309615 (= e!193398 call!25919)))

(declare-fun b!309616 () Bool)

(declare-fun e!193399 () Bool)

(assert (=> b!309616 (= e!193399 e!193398)))

(declare-fun lt!151676 () (_ BitVec 64))

(assert (=> b!309616 (= lt!151676 (select (arr!7475 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9576 0))(
  ( (Unit!9577) )
))
(declare-fun lt!151674 () Unit!9576)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15787 (_ BitVec 64) (_ BitVec 32)) Unit!9576)

(assert (=> b!309616 (= lt!151674 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!151676 #b00000000000000000000000000000000))))

(assert (=> b!309616 (arrayContainsKey!0 a!3293 lt!151676 #b00000000000000000000000000000000)))

(declare-fun lt!151675 () Unit!9576)

(assert (=> b!309616 (= lt!151675 lt!151674)))

(declare-fun res!166271 () Bool)

(assert (=> b!309616 (= res!166271 (= (seekEntryOrOpen!0 (select (arr!7475 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2626 #b00000000000000000000000000000000)))))

(assert (=> b!309616 (=> (not res!166271) (not e!193398))))

(declare-fun b!309617 () Bool)

(declare-fun e!193397 () Bool)

(assert (=> b!309617 (= e!193397 e!193399)))

(declare-fun c!49277 () Bool)

(assert (=> b!309617 (= c!49277 (validKeyInArray!0 (select (arr!7475 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!309618 () Bool)

(assert (=> b!309618 (= e!193399 call!25919)))

(declare-fun d!68243 () Bool)

(declare-fun res!166270 () Bool)

(assert (=> d!68243 (=> res!166270 e!193397)))

(assert (=> d!68243 (= res!166270 (bvsge #b00000000000000000000000000000000 (size!7827 a!3293)))))

(assert (=> d!68243 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!193397)))

(assert (= (and d!68243 (not res!166270)) b!309617))

(assert (= (and b!309617 c!49277) b!309616))

(assert (= (and b!309617 (not c!49277)) b!309618))

(assert (= (and b!309616 res!166271) b!309615))

(assert (= (or b!309615 b!309618) bm!25916))

(declare-fun m!319575 () Bool)

(assert (=> bm!25916 m!319575))

(assert (=> b!309616 m!319545))

(declare-fun m!319577 () Bool)

(assert (=> b!309616 m!319577))

(declare-fun m!319579 () Bool)

(assert (=> b!309616 m!319579))

(assert (=> b!309616 m!319545))

(declare-fun m!319581 () Bool)

(assert (=> b!309616 m!319581))

(assert (=> b!309617 m!319545))

(assert (=> b!309617 m!319545))

(declare-fun m!319583 () Bool)

(assert (=> b!309617 m!319583))

(assert (=> b!309404 d!68243))

(declare-fun d!68251 () Bool)

(assert (=> d!68251 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30836 d!68251))

(declare-fun d!68259 () Bool)

(assert (=> d!68259 (= (array_inv!5429 a!3293) (bvsge (size!7827 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30836 d!68259))

(declare-fun b!309619 () Bool)

(declare-fun e!193403 () SeekEntryResult!2626)

(declare-fun e!193401 () SeekEntryResult!2626)

(assert (=> b!309619 (= e!193403 e!193401)))

(declare-fun c!49280 () Bool)

(declare-fun lt!151683 () (_ BitVec 64))

(assert (=> b!309619 (= c!49280 (or (= lt!151683 k0!2441) (= (bvadd lt!151683 lt!151683) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!309620 () Bool)

(assert (=> b!309620 (= e!193401 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!151590 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!309622 () Bool)

(declare-fun lt!151684 () SeekEntryResult!2626)

(assert (=> b!309622 (and (bvsge (index!12682 lt!151684) #b00000000000000000000000000000000) (bvslt (index!12682 lt!151684) (size!7827 a!3293)))))

(declare-fun e!193402 () Bool)

(assert (=> b!309622 (= e!193402 (= (select (arr!7475 a!3293) (index!12682 lt!151684)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!309623 () Bool)

(assert (=> b!309623 (and (bvsge (index!12682 lt!151684) #b00000000000000000000000000000000) (bvslt (index!12682 lt!151684) (size!7827 a!3293)))))

(declare-fun res!166275 () Bool)

(assert (=> b!309623 (= res!166275 (= (select (arr!7475 a!3293) (index!12682 lt!151684)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!309623 (=> res!166275 e!193402)))

(declare-fun b!309624 () Bool)

(assert (=> b!309624 (and (bvsge (index!12682 lt!151684) #b00000000000000000000000000000000) (bvslt (index!12682 lt!151684) (size!7827 a!3293)))))

(declare-fun res!166274 () Bool)

(assert (=> b!309624 (= res!166274 (= (select (arr!7475 a!3293) (index!12682 lt!151684)) k0!2441))))

(assert (=> b!309624 (=> res!166274 e!193402)))

(declare-fun e!193400 () Bool)

(assert (=> b!309624 (= e!193400 e!193402)))

(declare-fun b!309625 () Bool)

(assert (=> b!309625 (= e!193403 (Intermediate!2626 true lt!151590 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!309626 () Bool)

(assert (=> b!309626 (= e!193401 (Intermediate!2626 false lt!151590 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!309627 () Bool)

(declare-fun e!193404 () Bool)

(assert (=> b!309627 (= e!193404 (bvsge (x!30873 lt!151684) #b01111111111111111111111111111110))))

(declare-fun b!309621 () Bool)

(assert (=> b!309621 (= e!193404 e!193400)))

(declare-fun res!166273 () Bool)

(assert (=> b!309621 (= res!166273 (and ((_ is Intermediate!2626) lt!151684) (not (undefined!3438 lt!151684)) (bvslt (x!30873 lt!151684) #b01111111111111111111111111111110) (bvsge (x!30873 lt!151684) #b00000000000000000000000000000000) (bvsge (x!30873 lt!151684) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!309621 (=> (not res!166273) (not e!193400))))

(declare-fun d!68261 () Bool)

(assert (=> d!68261 e!193404))

(declare-fun c!49278 () Bool)

(assert (=> d!68261 (= c!49278 (and ((_ is Intermediate!2626) lt!151684) (undefined!3438 lt!151684)))))

(assert (=> d!68261 (= lt!151684 e!193403)))

(declare-fun c!49279 () Bool)

(assert (=> d!68261 (= c!49279 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!68261 (= lt!151683 (select (arr!7475 a!3293) lt!151590))))

(assert (=> d!68261 (validMask!0 mask!3709)))

(assert (=> d!68261 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151590 k0!2441 a!3293 mask!3709) lt!151684)))

(assert (= (and d!68261 c!49279) b!309625))

(assert (= (and d!68261 (not c!49279)) b!309619))

(assert (= (and b!309619 c!49280) b!309626))

(assert (= (and b!309619 (not c!49280)) b!309620))

(assert (= (and d!68261 c!49278) b!309627))

(assert (= (and d!68261 (not c!49278)) b!309621))

(assert (= (and b!309621 res!166273) b!309624))

(assert (= (and b!309624 (not res!166274)) b!309623))

(assert (= (and b!309623 (not res!166275)) b!309622))

(declare-fun m!319585 () Bool)

(assert (=> b!309622 m!319585))

(declare-fun m!319587 () Bool)

(assert (=> d!68261 m!319587))

(assert (=> d!68261 m!319455))

(declare-fun m!319589 () Bool)

(assert (=> b!309620 m!319589))

(assert (=> b!309620 m!319589))

(declare-fun m!319591 () Bool)

(assert (=> b!309620 m!319591))

(assert (=> b!309623 m!319585))

(assert (=> b!309624 m!319585))

(assert (=> b!309411 d!68261))

(declare-fun d!68263 () Bool)

(declare-fun lt!151693 () (_ BitVec 32))

(assert (=> d!68263 (and (bvsge lt!151693 #b00000000000000000000000000000000) (bvslt lt!151693 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68263 (= lt!151693 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68263 (validMask!0 mask!3709)))

(assert (=> d!68263 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!151693)))

(declare-fun bs!10877 () Bool)

(assert (= bs!10877 d!68263))

(declare-fun m!319593 () Bool)

(assert (=> bs!10877 m!319593))

(assert (=> bs!10877 m!319455))

(assert (=> b!309411 d!68263))

(check-sat (not b!309464) (not b!309620) (not d!68209) (not b!309536) (not d!68241) (not b!309616) (not b!309543) (not b!309545) (not d!68221) (not d!68261) (not d!68263) (not bm!25916) (not b!309617))
(check-sat)
