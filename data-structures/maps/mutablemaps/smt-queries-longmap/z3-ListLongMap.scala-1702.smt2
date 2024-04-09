; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31202 () Bool)

(assert start!31202)

(declare-fun b!313273 () Bool)

(declare-fun e!195246 () Bool)

(declare-fun e!195245 () Bool)

(assert (=> b!313273 (= e!195246 e!195245)))

(declare-fun res!169606 () Bool)

(assert (=> b!313273 (=> (not res!169606) (not e!195245))))

(declare-datatypes ((array!16012 0))(
  ( (array!16013 (arr!7583 (Array (_ BitVec 32) (_ BitVec 64))) (size!7935 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16012)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2734 0))(
  ( (MissingZero!2734 (index!13112 (_ BitVec 32))) (Found!2734 (index!13113 (_ BitVec 32))) (Intermediate!2734 (undefined!3546 Bool) (index!13114 (_ BitVec 32)) (x!31290 (_ BitVec 32))) (Undefined!2734) (MissingVacant!2734 (index!13115 (_ BitVec 32))) )
))
(declare-fun lt!153533 () SeekEntryResult!2734)

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16012 (_ BitVec 32)) SeekEntryResult!2734)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313273 (= res!169606 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153533))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!313273 (= lt!153533 (Intermediate!2734 false resIndex!52 resX!52))))

(declare-fun b!313275 () Bool)

(declare-fun res!169611 () Bool)

(assert (=> b!313275 (=> (not res!169611) (not e!195246))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!313275 (= res!169611 (validKeyInArray!0 k0!2441))))

(declare-fun b!313276 () Bool)

(declare-fun e!195247 () Bool)

(assert (=> b!313276 (= e!195245 e!195247)))

(declare-fun res!169608 () Bool)

(assert (=> b!313276 (=> (not res!169608) (not e!195247))))

(declare-fun lt!153532 () SeekEntryResult!2734)

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!313276 (= res!169608 (and (= lt!153532 lt!153533) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7583 a!3293) index!1781) k0!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (not (= (select (arr!7583 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7583 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313276 (= lt!153532 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709))))

(declare-fun b!313277 () Bool)

(declare-fun res!169604 () Bool)

(assert (=> b!313277 (=> (not res!169604) (not e!195246))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16012 (_ BitVec 32)) Bool)

(assert (=> b!313277 (= res!169604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun res!169603 () Bool)

(assert (=> start!31202 (=> (not res!169603) (not e!195246))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31202 (= res!169603 (validMask!0 mask!3709))))

(assert (=> start!31202 e!195246))

(declare-fun array_inv!5537 (array!16012) Bool)

(assert (=> start!31202 (array_inv!5537 a!3293)))

(assert (=> start!31202 true))

(declare-fun b!313274 () Bool)

(declare-fun lt!153531 () SeekEntryResult!2734)

(get-info :version)

(assert (=> b!313274 (= e!195247 (not (or (not ((_ is Intermediate!2734) lt!153531)) (bvsge (x!31290 lt!153531) (bvadd #b00000000000000000000000000000001 x!1427)))))))

(assert (=> b!313274 (= lt!153532 lt!153531)))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313274 (= lt!153531 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!313278 () Bool)

(declare-fun res!169607 () Bool)

(assert (=> b!313278 (=> (not res!169607) (not e!195245))))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!313278 (= res!169607 (and (= (select (arr!7583 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7935 a!3293))))))

(declare-fun b!313279 () Bool)

(declare-fun res!169609 () Bool)

(assert (=> b!313279 (=> (not res!169609) (not e!195246))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16012 (_ BitVec 32)) SeekEntryResult!2734)

(assert (=> b!313279 (= res!169609 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2734 i!1240)))))

(declare-fun b!313280 () Bool)

(declare-fun res!169605 () Bool)

(assert (=> b!313280 (=> (not res!169605) (not e!195246))))

(assert (=> b!313280 (= res!169605 (and (= (size!7935 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7935 a!3293))))))

(declare-fun b!313281 () Bool)

(declare-fun res!169610 () Bool)

(assert (=> b!313281 (=> (not res!169610) (not e!195246))))

(declare-fun arrayContainsKey!0 (array!16012 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!313281 (= res!169610 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(assert (= (and start!31202 res!169603) b!313280))

(assert (= (and b!313280 res!169605) b!313275))

(assert (= (and b!313275 res!169611) b!313281))

(assert (= (and b!313281 res!169610) b!313279))

(assert (= (and b!313279 res!169609) b!313277))

(assert (= (and b!313277 res!169604) b!313273))

(assert (= (and b!313273 res!169606) b!313278))

(assert (= (and b!313278 res!169607) b!313276))

(assert (= (and b!313276 res!169608) b!313274))

(declare-fun m!323223 () Bool)

(assert (=> b!313275 m!323223))

(declare-fun m!323225 () Bool)

(assert (=> b!313278 m!323225))

(declare-fun m!323227 () Bool)

(assert (=> b!313277 m!323227))

(declare-fun m!323229 () Bool)

(assert (=> b!313281 m!323229))

(declare-fun m!323231 () Bool)

(assert (=> b!313276 m!323231))

(declare-fun m!323233 () Bool)

(assert (=> b!313276 m!323233))

(declare-fun m!323235 () Bool)

(assert (=> b!313279 m!323235))

(declare-fun m!323237 () Bool)

(assert (=> b!313273 m!323237))

(assert (=> b!313273 m!323237))

(declare-fun m!323239 () Bool)

(assert (=> b!313273 m!323239))

(declare-fun m!323241 () Bool)

(assert (=> start!31202 m!323241))

(declare-fun m!323243 () Bool)

(assert (=> start!31202 m!323243))

(declare-fun m!323245 () Bool)

(assert (=> b!313274 m!323245))

(assert (=> b!313274 m!323245))

(declare-fun m!323247 () Bool)

(assert (=> b!313274 m!323247))

(check-sat (not b!313275) (not b!313273) (not start!31202) (not b!313281) (not b!313274) (not b!313279) (not b!313277) (not b!313276))
(check-sat)
(get-model)

(declare-fun b!313327 () Bool)

(declare-fun e!195270 () Bool)

(declare-fun lt!153547 () SeekEntryResult!2734)

(assert (=> b!313327 (= e!195270 (bvsge (x!31290 lt!153547) #b01111111111111111111111111111110))))

(declare-fun b!313328 () Bool)

(assert (=> b!313328 (and (bvsge (index!13114 lt!153547) #b00000000000000000000000000000000) (bvslt (index!13114 lt!153547) (size!7935 a!3293)))))

(declare-fun e!195271 () Bool)

(assert (=> b!313328 (= e!195271 (= (select (arr!7583 a!3293) (index!13114 lt!153547)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195274 () SeekEntryResult!2734)

(declare-fun b!313329 () Bool)

(assert (=> b!313329 (= e!195274 (Intermediate!2734 false (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!313330 () Bool)

(declare-fun e!195272 () SeekEntryResult!2734)

(assert (=> b!313330 (= e!195272 e!195274)))

(declare-fun c!49449 () Bool)

(declare-fun lt!153548 () (_ BitVec 64))

(assert (=> b!313330 (= c!49449 (or (= lt!153548 k0!2441) (= (bvadd lt!153548 lt!153548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313332 () Bool)

(assert (=> b!313332 (= e!195274 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!313333 () Bool)

(assert (=> b!313333 (= e!195272 (Intermediate!2734 true (nextIndex!0 index!1781 x!1427 mask!3709) (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!313334 () Bool)

(assert (=> b!313334 (and (bvsge (index!13114 lt!153547) #b00000000000000000000000000000000) (bvslt (index!13114 lt!153547) (size!7935 a!3293)))))

(declare-fun res!169646 () Bool)

(assert (=> b!313334 (= res!169646 (= (select (arr!7583 a!3293) (index!13114 lt!153547)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313334 (=> res!169646 e!195271)))

(declare-fun b!313335 () Bool)

(declare-fun e!195273 () Bool)

(assert (=> b!313335 (= e!195270 e!195273)))

(declare-fun res!169645 () Bool)

(assert (=> b!313335 (= res!169645 (and ((_ is Intermediate!2734) lt!153547) (not (undefined!3546 lt!153547)) (bvslt (x!31290 lt!153547) #b01111111111111111111111111111110) (bvsge (x!31290 lt!153547) #b00000000000000000000000000000000) (bvsge (x!31290 lt!153547) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!313335 (=> (not res!169645) (not e!195273))))

(declare-fun b!313331 () Bool)

(assert (=> b!313331 (and (bvsge (index!13114 lt!153547) #b00000000000000000000000000000000) (bvslt (index!13114 lt!153547) (size!7935 a!3293)))))

(declare-fun res!169647 () Bool)

(assert (=> b!313331 (= res!169647 (= (select (arr!7583 a!3293) (index!13114 lt!153547)) k0!2441))))

(assert (=> b!313331 (=> res!169647 e!195271)))

(assert (=> b!313331 (= e!195273 e!195271)))

(declare-fun d!68455 () Bool)

(assert (=> d!68455 e!195270))

(declare-fun c!49451 () Bool)

(assert (=> d!68455 (= c!49451 (and ((_ is Intermediate!2734) lt!153547) (undefined!3546 lt!153547)))))

(assert (=> d!68455 (= lt!153547 e!195272)))

(declare-fun c!49450 () Bool)

(assert (=> d!68455 (= c!49450 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(assert (=> d!68455 (= lt!153548 (select (arr!7583 a!3293) (nextIndex!0 index!1781 x!1427 mask!3709)))))

(assert (=> d!68455 (validMask!0 mask!3709)))

(assert (=> d!68455 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709) lt!153547)))

(assert (= (and d!68455 c!49450) b!313333))

(assert (= (and d!68455 (not c!49450)) b!313330))

(assert (= (and b!313330 c!49449) b!313329))

(assert (= (and b!313330 (not c!49449)) b!313332))

(assert (= (and d!68455 c!49451) b!313327))

(assert (= (and d!68455 (not c!49451)) b!313335))

(assert (= (and b!313335 res!169645) b!313331))

(assert (= (and b!313331 (not res!169647)) b!313334))

(assert (= (and b!313334 (not res!169646)) b!313328))

(assert (=> d!68455 m!323245))

(declare-fun m!323275 () Bool)

(assert (=> d!68455 m!323275))

(assert (=> d!68455 m!323241))

(declare-fun m!323277 () Bool)

(assert (=> b!313331 m!323277))

(assert (=> b!313328 m!323277))

(assert (=> b!313334 m!323277))

(assert (=> b!313332 m!323245))

(declare-fun m!323279 () Bool)

(assert (=> b!313332 m!323279))

(assert (=> b!313332 m!323279))

(declare-fun m!323281 () Bool)

(assert (=> b!313332 m!323281))

(assert (=> b!313274 d!68455))

(declare-fun d!68459 () Bool)

(declare-fun lt!153551 () (_ BitVec 32))

(assert (=> d!68459 (and (bvsge lt!153551 #b00000000000000000000000000000000) (bvslt lt!153551 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68459 (= lt!153551 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68459 (validMask!0 mask!3709)))

(assert (=> d!68459 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!153551)))

(declare-fun bs!10987 () Bool)

(assert (= bs!10987 d!68459))

(declare-fun m!323283 () Bool)

(assert (=> bs!10987 m!323283))

(assert (=> bs!10987 m!323241))

(assert (=> b!313274 d!68459))

(declare-fun b!313396 () Bool)

(declare-fun e!195311 () SeekEntryResult!2734)

(assert (=> b!313396 (= e!195311 Undefined!2734)))

(declare-fun b!313397 () Bool)

(declare-fun e!195312 () SeekEntryResult!2734)

(declare-fun lt!153581 () SeekEntryResult!2734)

(assert (=> b!313397 (= e!195312 (Found!2734 (index!13114 lt!153581)))))

(declare-fun d!68461 () Bool)

(declare-fun lt!153582 () SeekEntryResult!2734)

(assert (=> d!68461 (and (or ((_ is Undefined!2734) lt!153582) (not ((_ is Found!2734) lt!153582)) (and (bvsge (index!13113 lt!153582) #b00000000000000000000000000000000) (bvslt (index!13113 lt!153582) (size!7935 a!3293)))) (or ((_ is Undefined!2734) lt!153582) ((_ is Found!2734) lt!153582) (not ((_ is MissingZero!2734) lt!153582)) (and (bvsge (index!13112 lt!153582) #b00000000000000000000000000000000) (bvslt (index!13112 lt!153582) (size!7935 a!3293)))) (or ((_ is Undefined!2734) lt!153582) ((_ is Found!2734) lt!153582) ((_ is MissingZero!2734) lt!153582) (not ((_ is MissingVacant!2734) lt!153582)) (and (bvsge (index!13115 lt!153582) #b00000000000000000000000000000000) (bvslt (index!13115 lt!153582) (size!7935 a!3293)))) (or ((_ is Undefined!2734) lt!153582) (ite ((_ is Found!2734) lt!153582) (= (select (arr!7583 a!3293) (index!13113 lt!153582)) k0!2441) (ite ((_ is MissingZero!2734) lt!153582) (= (select (arr!7583 a!3293) (index!13112 lt!153582)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2734) lt!153582) (= (select (arr!7583 a!3293) (index!13115 lt!153582)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68461 (= lt!153582 e!195311)))

(declare-fun c!49473 () Bool)

(assert (=> d!68461 (= c!49473 (and ((_ is Intermediate!2734) lt!153581) (undefined!3546 lt!153581)))))

(assert (=> d!68461 (= lt!153581 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68461 (validMask!0 mask!3709)))

(assert (=> d!68461 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!153582)))

(declare-fun b!313398 () Bool)

(declare-fun c!49475 () Bool)

(declare-fun lt!153583 () (_ BitVec 64))

(assert (=> b!313398 (= c!49475 (= lt!153583 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!195310 () SeekEntryResult!2734)

(assert (=> b!313398 (= e!195312 e!195310)))

(declare-fun b!313399 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16012 (_ BitVec 32)) SeekEntryResult!2734)

(assert (=> b!313399 (= e!195310 (seekKeyOrZeroReturnVacant!0 (x!31290 lt!153581) (index!13114 lt!153581) (index!13114 lt!153581) k0!2441 a!3293 mask!3709))))

(declare-fun b!313400 () Bool)

(assert (=> b!313400 (= e!195310 (MissingZero!2734 (index!13114 lt!153581)))))

(declare-fun b!313401 () Bool)

(assert (=> b!313401 (= e!195311 e!195312)))

(assert (=> b!313401 (= lt!153583 (select (arr!7583 a!3293) (index!13114 lt!153581)))))

(declare-fun c!49474 () Bool)

(assert (=> b!313401 (= c!49474 (= lt!153583 k0!2441))))

(assert (= (and d!68461 c!49473) b!313396))

(assert (= (and d!68461 (not c!49473)) b!313401))

(assert (= (and b!313401 c!49474) b!313397))

(assert (= (and b!313401 (not c!49474)) b!313398))

(assert (= (and b!313398 c!49475) b!313400))

(assert (= (and b!313398 (not c!49475)) b!313399))

(declare-fun m!323309 () Bool)

(assert (=> d!68461 m!323309))

(assert (=> d!68461 m!323241))

(declare-fun m!323311 () Bool)

(assert (=> d!68461 m!323311))

(assert (=> d!68461 m!323237))

(declare-fun m!323313 () Bool)

(assert (=> d!68461 m!323313))

(assert (=> d!68461 m!323237))

(assert (=> d!68461 m!323239))

(declare-fun m!323315 () Bool)

(assert (=> b!313399 m!323315))

(declare-fun m!323317 () Bool)

(assert (=> b!313401 m!323317))

(assert (=> b!313279 d!68461))

(declare-fun d!68473 () Bool)

(assert (=> d!68473 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31202 d!68473))

(declare-fun d!68475 () Bool)

(assert (=> d!68475 (= (array_inv!5537 a!3293) (bvsge (size!7935 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31202 d!68475))

(declare-fun d!68477 () Bool)

(declare-fun res!169681 () Bool)

(declare-fun e!195338 () Bool)

(assert (=> d!68477 (=> res!169681 e!195338)))

(assert (=> d!68477 (= res!169681 (= (select (arr!7583 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68477 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!195338)))

(declare-fun b!313445 () Bool)

(declare-fun e!195339 () Bool)

(assert (=> b!313445 (= e!195338 e!195339)))

(declare-fun res!169682 () Bool)

(assert (=> b!313445 (=> (not res!169682) (not e!195339))))

(assert (=> b!313445 (= res!169682 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7935 a!3293)))))

(declare-fun b!313446 () Bool)

(assert (=> b!313446 (= e!195339 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68477 (not res!169681)) b!313445))

(assert (= (and b!313445 res!169682) b!313446))

(declare-fun m!323327 () Bool)

(assert (=> d!68477 m!323327))

(declare-fun m!323329 () Bool)

(assert (=> b!313446 m!323329))

(assert (=> b!313281 d!68477))

(declare-fun d!68481 () Bool)

(assert (=> d!68481 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!313275 d!68481))

(declare-fun b!313476 () Bool)

(declare-fun e!195362 () Bool)

(declare-fun e!195361 () Bool)

(assert (=> b!313476 (= e!195362 e!195361)))

(declare-fun c!49499 () Bool)

(assert (=> b!313476 (= c!49499 (validKeyInArray!0 (select (arr!7583 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!313477 () Bool)

(declare-fun call!25946 () Bool)

(assert (=> b!313477 (= e!195361 call!25946)))

(declare-fun bm!25943 () Bool)

(assert (=> bm!25943 (= call!25946 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!313478 () Bool)

(declare-fun e!195360 () Bool)

(assert (=> b!313478 (= e!195361 e!195360)))

(declare-fun lt!153614 () (_ BitVec 64))

(assert (=> b!313478 (= lt!153614 (select (arr!7583 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9664 0))(
  ( (Unit!9665) )
))
(declare-fun lt!153615 () Unit!9664)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16012 (_ BitVec 64) (_ BitVec 32)) Unit!9664)

(assert (=> b!313478 (= lt!153615 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153614 #b00000000000000000000000000000000))))

(assert (=> b!313478 (arrayContainsKey!0 a!3293 lt!153614 #b00000000000000000000000000000000)))

(declare-fun lt!153613 () Unit!9664)

(assert (=> b!313478 (= lt!153613 lt!153615)))

(declare-fun res!169697 () Bool)

(assert (=> b!313478 (= res!169697 (= (seekEntryOrOpen!0 (select (arr!7583 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2734 #b00000000000000000000000000000000)))))

(assert (=> b!313478 (=> (not res!169697) (not e!195360))))

(declare-fun d!68483 () Bool)

(declare-fun res!169696 () Bool)

(assert (=> d!68483 (=> res!169696 e!195362)))

(assert (=> d!68483 (= res!169696 (bvsge #b00000000000000000000000000000000 (size!7935 a!3293)))))

(assert (=> d!68483 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195362)))

(declare-fun b!313479 () Bool)

(assert (=> b!313479 (= e!195360 call!25946)))

(assert (= (and d!68483 (not res!169696)) b!313476))

(assert (= (and b!313476 c!49499) b!313478))

(assert (= (and b!313476 (not c!49499)) b!313477))

(assert (= (and b!313478 res!169697) b!313479))

(assert (= (or b!313479 b!313477) bm!25943))

(assert (=> b!313476 m!323327))

(assert (=> b!313476 m!323327))

(declare-fun m!323347 () Bool)

(assert (=> b!313476 m!323347))

(declare-fun m!323349 () Bool)

(assert (=> bm!25943 m!323349))

(assert (=> b!313478 m!323327))

(declare-fun m!323351 () Bool)

(assert (=> b!313478 m!323351))

(declare-fun m!323353 () Bool)

(assert (=> b!313478 m!323353))

(assert (=> b!313478 m!323327))

(declare-fun m!323355 () Bool)

(assert (=> b!313478 m!323355))

(assert (=> b!313277 d!68483))

(declare-fun b!313480 () Bool)

(declare-fun e!195363 () Bool)

(declare-fun lt!153616 () SeekEntryResult!2734)

(assert (=> b!313480 (= e!195363 (bvsge (x!31290 lt!153616) #b01111111111111111111111111111110))))

(declare-fun b!313481 () Bool)

(assert (=> b!313481 (and (bvsge (index!13114 lt!153616) #b00000000000000000000000000000000) (bvslt (index!13114 lt!153616) (size!7935 a!3293)))))

(declare-fun e!195364 () Bool)

(assert (=> b!313481 (= e!195364 (= (select (arr!7583 a!3293) (index!13114 lt!153616)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313482 () Bool)

(declare-fun e!195367 () SeekEntryResult!2734)

(assert (=> b!313482 (= e!195367 (Intermediate!2734 false index!1781 x!1427))))

(declare-fun b!313483 () Bool)

(declare-fun e!195365 () SeekEntryResult!2734)

(assert (=> b!313483 (= e!195365 e!195367)))

(declare-fun c!49500 () Bool)

(declare-fun lt!153617 () (_ BitVec 64))

(assert (=> b!313483 (= c!49500 (or (= lt!153617 k0!2441) (= (bvadd lt!153617 lt!153617) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313485 () Bool)

(assert (=> b!313485 (= e!195367 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!313486 () Bool)

(assert (=> b!313486 (= e!195365 (Intermediate!2734 true index!1781 x!1427))))

(declare-fun b!313487 () Bool)

(assert (=> b!313487 (and (bvsge (index!13114 lt!153616) #b00000000000000000000000000000000) (bvslt (index!13114 lt!153616) (size!7935 a!3293)))))

(declare-fun res!169699 () Bool)

(assert (=> b!313487 (= res!169699 (= (select (arr!7583 a!3293) (index!13114 lt!153616)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313487 (=> res!169699 e!195364)))

(declare-fun b!313488 () Bool)

(declare-fun e!195366 () Bool)

(assert (=> b!313488 (= e!195363 e!195366)))

(declare-fun res!169698 () Bool)

(assert (=> b!313488 (= res!169698 (and ((_ is Intermediate!2734) lt!153616) (not (undefined!3546 lt!153616)) (bvslt (x!31290 lt!153616) #b01111111111111111111111111111110) (bvsge (x!31290 lt!153616) #b00000000000000000000000000000000) (bvsge (x!31290 lt!153616) x!1427)))))

(assert (=> b!313488 (=> (not res!169698) (not e!195366))))

(declare-fun b!313484 () Bool)

(assert (=> b!313484 (and (bvsge (index!13114 lt!153616) #b00000000000000000000000000000000) (bvslt (index!13114 lt!153616) (size!7935 a!3293)))))

(declare-fun res!169700 () Bool)

(assert (=> b!313484 (= res!169700 (= (select (arr!7583 a!3293) (index!13114 lt!153616)) k0!2441))))

(assert (=> b!313484 (=> res!169700 e!195364)))

(assert (=> b!313484 (= e!195366 e!195364)))

(declare-fun d!68495 () Bool)

(assert (=> d!68495 e!195363))

(declare-fun c!49502 () Bool)

(assert (=> d!68495 (= c!49502 (and ((_ is Intermediate!2734) lt!153616) (undefined!3546 lt!153616)))))

(assert (=> d!68495 (= lt!153616 e!195365)))

(declare-fun c!49501 () Bool)

(assert (=> d!68495 (= c!49501 (bvsge x!1427 #b01111111111111111111111111111110))))

(assert (=> d!68495 (= lt!153617 (select (arr!7583 a!3293) index!1781))))

(assert (=> d!68495 (validMask!0 mask!3709)))

(assert (=> d!68495 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!153616)))

(assert (= (and d!68495 c!49501) b!313486))

(assert (= (and d!68495 (not c!49501)) b!313483))

(assert (= (and b!313483 c!49500) b!313482))

(assert (= (and b!313483 (not c!49500)) b!313485))

(assert (= (and d!68495 c!49502) b!313480))

(assert (= (and d!68495 (not c!49502)) b!313488))

(assert (= (and b!313488 res!169698) b!313484))

(assert (= (and b!313484 (not res!169700)) b!313487))

(assert (= (and b!313487 (not res!169699)) b!313481))

(assert (=> d!68495 m!323231))

(assert (=> d!68495 m!323241))

(declare-fun m!323357 () Bool)

(assert (=> b!313484 m!323357))

(assert (=> b!313481 m!323357))

(assert (=> b!313487 m!323357))

(assert (=> b!313485 m!323245))

(assert (=> b!313485 m!323245))

(declare-fun m!323359 () Bool)

(assert (=> b!313485 m!323359))

(assert (=> b!313276 d!68495))

(declare-fun b!313489 () Bool)

(declare-fun e!195368 () Bool)

(declare-fun lt!153618 () SeekEntryResult!2734)

(assert (=> b!313489 (= e!195368 (bvsge (x!31290 lt!153618) #b01111111111111111111111111111110))))

(declare-fun b!313490 () Bool)

(assert (=> b!313490 (and (bvsge (index!13114 lt!153618) #b00000000000000000000000000000000) (bvslt (index!13114 lt!153618) (size!7935 a!3293)))))

(declare-fun e!195369 () Bool)

(assert (=> b!313490 (= e!195369 (= (select (arr!7583 a!3293) (index!13114 lt!153618)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!313491 () Bool)

(declare-fun e!195372 () SeekEntryResult!2734)

(assert (=> b!313491 (= e!195372 (Intermediate!2734 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313492 () Bool)

(declare-fun e!195370 () SeekEntryResult!2734)

(assert (=> b!313492 (= e!195370 e!195372)))

(declare-fun c!49503 () Bool)

(declare-fun lt!153619 () (_ BitVec 64))

(assert (=> b!313492 (= c!49503 (or (= lt!153619 k0!2441) (= (bvadd lt!153619 lt!153619) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313494 () Bool)

(assert (=> b!313494 (= e!195372 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!313495 () Bool)

(assert (=> b!313495 (= e!195370 (Intermediate!2734 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313496 () Bool)

(assert (=> b!313496 (and (bvsge (index!13114 lt!153618) #b00000000000000000000000000000000) (bvslt (index!13114 lt!153618) (size!7935 a!3293)))))

(declare-fun res!169702 () Bool)

(assert (=> b!313496 (= res!169702 (= (select (arr!7583 a!3293) (index!13114 lt!153618)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313496 (=> res!169702 e!195369)))

(declare-fun b!313497 () Bool)

(declare-fun e!195371 () Bool)

(assert (=> b!313497 (= e!195368 e!195371)))

(declare-fun res!169701 () Bool)

(assert (=> b!313497 (= res!169701 (and ((_ is Intermediate!2734) lt!153618) (not (undefined!3546 lt!153618)) (bvslt (x!31290 lt!153618) #b01111111111111111111111111111110) (bvsge (x!31290 lt!153618) #b00000000000000000000000000000000) (bvsge (x!31290 lt!153618) #b00000000000000000000000000000000)))))

(assert (=> b!313497 (=> (not res!169701) (not e!195371))))

(declare-fun b!313493 () Bool)

(assert (=> b!313493 (and (bvsge (index!13114 lt!153618) #b00000000000000000000000000000000) (bvslt (index!13114 lt!153618) (size!7935 a!3293)))))

(declare-fun res!169703 () Bool)

(assert (=> b!313493 (= res!169703 (= (select (arr!7583 a!3293) (index!13114 lt!153618)) k0!2441))))

(assert (=> b!313493 (=> res!169703 e!195369)))

(assert (=> b!313493 (= e!195371 e!195369)))

(declare-fun d!68497 () Bool)

(assert (=> d!68497 e!195368))

(declare-fun c!49505 () Bool)

(assert (=> d!68497 (= c!49505 (and ((_ is Intermediate!2734) lt!153618) (undefined!3546 lt!153618)))))

(assert (=> d!68497 (= lt!153618 e!195370)))

(declare-fun c!49504 () Bool)

(assert (=> d!68497 (= c!49504 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!68497 (= lt!153619 (select (arr!7583 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68497 (validMask!0 mask!3709)))

(assert (=> d!68497 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153618)))

(assert (= (and d!68497 c!49504) b!313495))

(assert (= (and d!68497 (not c!49504)) b!313492))

(assert (= (and b!313492 c!49503) b!313491))

(assert (= (and b!313492 (not c!49503)) b!313494))

(assert (= (and d!68497 c!49505) b!313489))

(assert (= (and d!68497 (not c!49505)) b!313497))

(assert (= (and b!313497 res!169701) b!313493))

(assert (= (and b!313493 (not res!169703)) b!313496))

(assert (= (and b!313496 (not res!169702)) b!313490))

(assert (=> d!68497 m!323237))

(declare-fun m!323361 () Bool)

(assert (=> d!68497 m!323361))

(assert (=> d!68497 m!323241))

(declare-fun m!323363 () Bool)

(assert (=> b!313493 m!323363))

(assert (=> b!313490 m!323363))

(assert (=> b!313496 m!323363))

(assert (=> b!313494 m!323237))

(declare-fun m!323365 () Bool)

(assert (=> b!313494 m!323365))

(assert (=> b!313494 m!323365))

(declare-fun m!323367 () Bool)

(assert (=> b!313494 m!323367))

(assert (=> b!313273 d!68497))

(declare-fun d!68499 () Bool)

(declare-fun lt!153630 () (_ BitVec 32))

(declare-fun lt!153629 () (_ BitVec 32))

(assert (=> d!68499 (= lt!153630 (bvmul (bvxor lt!153629 (bvlshr lt!153629 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68499 (= lt!153629 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68499 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169704 (let ((h!5374 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31298 (bvmul (bvxor h!5374 (bvlshr h!5374 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31298 (bvlshr x!31298 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169704 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169704 #b00000000000000000000000000000000))))))

(assert (=> d!68499 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!153630 (bvlshr lt!153630 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!313273 d!68499))

(check-sat (not b!313485) (not d!68459) (not b!313399) (not b!313476) (not b!313478) (not b!313446) (not b!313332) (not d!68455) (not d!68461) (not d!68497) (not d!68495) (not bm!25943) (not b!313494))
(check-sat)
