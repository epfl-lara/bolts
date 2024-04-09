; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!31148 () Bool)

(assert start!31148)

(declare-fun b!312976 () Bool)

(declare-fun res!169453 () Bool)

(declare-fun e!195080 () Bool)

(assert (=> b!312976 (=> (not res!169453) (not e!195080))))

(declare-datatypes ((array!16003 0))(
  ( (array!16004 (arr!7580 (Array (_ BitVec 32) (_ BitVec 64))) (size!7932 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16003)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!312976 (= res!169453 (and (= (select (arr!7580 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7932 a!3293))))))

(declare-fun b!312978 () Bool)

(declare-fun res!169450 () Bool)

(declare-fun e!195081 () Bool)

(assert (=> b!312978 (=> (not res!169450) (not e!195081))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!2731 0))(
  ( (MissingZero!2731 (index!13100 (_ BitVec 32))) (Found!2731 (index!13101 (_ BitVec 32))) (Intermediate!2731 (undefined!3543 Bool) (index!13102 (_ BitVec 32)) (x!31273 (_ BitVec 32))) (Undefined!2731) (MissingVacant!2731 (index!13103 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16003 (_ BitVec 32)) SeekEntryResult!2731)

(assert (=> b!312978 (= res!169450 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2731 i!1240)))))

(declare-fun b!312979 () Bool)

(declare-fun res!169452 () Bool)

(assert (=> b!312979 (=> (not res!169452) (not e!195081))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!312979 (= res!169452 (validKeyInArray!0 k0!2441))))

(declare-fun b!312980 () Bool)

(assert (=> b!312980 (= e!195080 (and (bvslt resX!52 #b01111111111111111111111111111110) (= (select (arr!7580 a!3293) index!1781) k0!2441)))))

(declare-fun b!312981 () Bool)

(declare-fun res!169455 () Bool)

(assert (=> b!312981 (=> (not res!169455) (not e!195081))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16003 (_ BitVec 32)) Bool)

(assert (=> b!312981 (= res!169455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!312982 () Bool)

(declare-fun res!169447 () Bool)

(assert (=> b!312982 (=> (not res!169447) (not e!195080))))

(declare-fun lt!153416 () SeekEntryResult!2731)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16003 (_ BitVec 32)) SeekEntryResult!2731)

(assert (=> b!312982 (= res!169447 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!153416))))

(declare-fun b!312983 () Bool)

(declare-fun res!169448 () Bool)

(assert (=> b!312983 (=> (not res!169448) (not e!195081))))

(assert (=> b!312983 (= res!169448 (and (= (size!7932 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7932 a!3293))))))

(declare-fun b!312984 () Bool)

(declare-fun res!169449 () Bool)

(assert (=> b!312984 (=> (not res!169449) (not e!195081))))

(declare-fun arrayContainsKey!0 (array!16003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!312984 (= res!169449 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!312977 () Bool)

(assert (=> b!312977 (= e!195081 e!195080)))

(declare-fun res!169454 () Bool)

(assert (=> b!312977 (=> (not res!169454) (not e!195080))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!312977 (= res!169454 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153416))))

(assert (=> b!312977 (= lt!153416 (Intermediate!2731 false resIndex!52 resX!52))))

(declare-fun res!169451 () Bool)

(assert (=> start!31148 (=> (not res!169451) (not e!195081))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31148 (= res!169451 (validMask!0 mask!3709))))

(assert (=> start!31148 e!195081))

(declare-fun array_inv!5534 (array!16003) Bool)

(assert (=> start!31148 (array_inv!5534 a!3293)))

(assert (=> start!31148 true))

(assert (= (and start!31148 res!169451) b!312983))

(assert (= (and b!312983 res!169448) b!312979))

(assert (= (and b!312979 res!169452) b!312984))

(assert (= (and b!312984 res!169449) b!312978))

(assert (= (and b!312978 res!169450) b!312981))

(assert (= (and b!312981 res!169455) b!312977))

(assert (= (and b!312977 res!169454) b!312976))

(assert (= (and b!312976 res!169453) b!312982))

(assert (= (and b!312982 res!169447) b!312980))

(declare-fun m!323039 () Bool)

(assert (=> start!31148 m!323039))

(declare-fun m!323041 () Bool)

(assert (=> start!31148 m!323041))

(declare-fun m!323043 () Bool)

(assert (=> b!312979 m!323043))

(declare-fun m!323045 () Bool)

(assert (=> b!312977 m!323045))

(assert (=> b!312977 m!323045))

(declare-fun m!323047 () Bool)

(assert (=> b!312977 m!323047))

(declare-fun m!323049 () Bool)

(assert (=> b!312982 m!323049))

(declare-fun m!323051 () Bool)

(assert (=> b!312980 m!323051))

(declare-fun m!323053 () Bool)

(assert (=> b!312981 m!323053))

(declare-fun m!323055 () Bool)

(assert (=> b!312978 m!323055))

(declare-fun m!323057 () Bool)

(assert (=> b!312984 m!323057))

(declare-fun m!323059 () Bool)

(assert (=> b!312976 m!323059))

(check-sat (not b!312979) (not b!312984) (not b!312978) (not start!31148) (not b!312981) (not b!312982) (not b!312977))
(check-sat)
(get-model)

(declare-fun b!313042 () Bool)

(declare-fun e!195113 () Bool)

(declare-fun lt!153434 () SeekEntryResult!2731)

(assert (=> b!313042 (= e!195113 (bvsge (x!31273 lt!153434) #b01111111111111111111111111111110))))

(declare-fun b!313043 () Bool)

(assert (=> b!313043 (and (bvsge (index!13102 lt!153434) #b00000000000000000000000000000000) (bvslt (index!13102 lt!153434) (size!7932 a!3293)))))

(declare-fun e!195115 () Bool)

(assert (=> b!313043 (= e!195115 (= (select (arr!7580 a!3293) (index!13102 lt!153434)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68399 () Bool)

(assert (=> d!68399 e!195113))

(declare-fun c!49382 () Bool)

(get-info :version)

(assert (=> d!68399 (= c!49382 (and ((_ is Intermediate!2731) lt!153434) (undefined!3543 lt!153434)))))

(declare-fun e!195114 () SeekEntryResult!2731)

(assert (=> d!68399 (= lt!153434 e!195114)))

(declare-fun c!49381 () Bool)

(assert (=> d!68399 (= c!49381 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!153433 () (_ BitVec 64))

(assert (=> d!68399 (= lt!153433 (select (arr!7580 a!3293) (toIndex!0 k0!2441 mask!3709)))))

(assert (=> d!68399 (validMask!0 mask!3709)))

(assert (=> d!68399 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709) lt!153434)))

(declare-fun b!313044 () Bool)

(assert (=> b!313044 (= e!195114 (Intermediate!2731 true (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313045 () Bool)

(declare-fun e!195111 () Bool)

(assert (=> b!313045 (= e!195113 e!195111)))

(declare-fun res!169496 () Bool)

(assert (=> b!313045 (= res!169496 (and ((_ is Intermediate!2731) lt!153434) (not (undefined!3543 lt!153434)) (bvslt (x!31273 lt!153434) #b01111111111111111111111111111110) (bvsge (x!31273 lt!153434) #b00000000000000000000000000000000) (bvsge (x!31273 lt!153434) #b00000000000000000000000000000000)))))

(assert (=> b!313045 (=> (not res!169496) (not e!195111))))

(declare-fun b!313046 () Bool)

(declare-fun e!195112 () SeekEntryResult!2731)

(assert (=> b!313046 (= e!195114 e!195112)))

(declare-fun c!49380 () Bool)

(assert (=> b!313046 (= c!49380 (or (= lt!153433 k0!2441) (= (bvadd lt!153433 lt!153433) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313047 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!313047 (= e!195112 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!313048 () Bool)

(assert (=> b!313048 (and (bvsge (index!13102 lt!153434) #b00000000000000000000000000000000) (bvslt (index!13102 lt!153434) (size!7932 a!3293)))))

(declare-fun res!169495 () Bool)

(assert (=> b!313048 (= res!169495 (= (select (arr!7580 a!3293) (index!13102 lt!153434)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313048 (=> res!169495 e!195115)))

(declare-fun b!313049 () Bool)

(assert (=> b!313049 (= e!195112 (Intermediate!2731 false (toIndex!0 k0!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!313050 () Bool)

(assert (=> b!313050 (and (bvsge (index!13102 lt!153434) #b00000000000000000000000000000000) (bvslt (index!13102 lt!153434) (size!7932 a!3293)))))

(declare-fun res!169497 () Bool)

(assert (=> b!313050 (= res!169497 (= (select (arr!7580 a!3293) (index!13102 lt!153434)) k0!2441))))

(assert (=> b!313050 (=> res!169497 e!195115)))

(assert (=> b!313050 (= e!195111 e!195115)))

(assert (= (and d!68399 c!49381) b!313044))

(assert (= (and d!68399 (not c!49381)) b!313046))

(assert (= (and b!313046 c!49380) b!313049))

(assert (= (and b!313046 (not c!49380)) b!313047))

(assert (= (and d!68399 c!49382) b!313042))

(assert (= (and d!68399 (not c!49382)) b!313045))

(assert (= (and b!313045 res!169496) b!313050))

(assert (= (and b!313050 (not res!169497)) b!313048))

(assert (= (and b!313048 (not res!169495)) b!313043))

(assert (=> d!68399 m!323045))

(declare-fun m!323095 () Bool)

(assert (=> d!68399 m!323095))

(assert (=> d!68399 m!323039))

(assert (=> b!313047 m!323045))

(declare-fun m!323097 () Bool)

(assert (=> b!313047 m!323097))

(assert (=> b!313047 m!323097))

(declare-fun m!323099 () Bool)

(assert (=> b!313047 m!323099))

(declare-fun m!323101 () Bool)

(assert (=> b!313050 m!323101))

(assert (=> b!313043 m!323101))

(assert (=> b!313048 m!323101))

(assert (=> b!312977 d!68399))

(declare-fun d!68407 () Bool)

(declare-fun lt!153440 () (_ BitVec 32))

(declare-fun lt!153439 () (_ BitVec 32))

(assert (=> d!68407 (= lt!153440 (bvmul (bvxor lt!153439 (bvlshr lt!153439 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68407 (= lt!153439 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68407 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!169498 (let ((h!5369 ((_ extract 31 0) (bvand (bvxor k0!2441 (bvlshr k0!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31276 (bvmul (bvxor h!5369 (bvlshr h!5369 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31276 (bvlshr x!31276 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!169498 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!169498 #b00000000000000000000000000000000))))))

(assert (=> d!68407 (= (toIndex!0 k0!2441 mask!3709) (bvand (bvxor lt!153440 (bvlshr lt!153440 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!312977 d!68407))

(declare-fun b!313051 () Bool)

(declare-fun e!195118 () Bool)

(declare-fun lt!153442 () SeekEntryResult!2731)

(assert (=> b!313051 (= e!195118 (bvsge (x!31273 lt!153442) #b01111111111111111111111111111110))))

(declare-fun b!313052 () Bool)

(assert (=> b!313052 (and (bvsge (index!13102 lt!153442) #b00000000000000000000000000000000) (bvslt (index!13102 lt!153442) (size!7932 a!3293)))))

(declare-fun e!195120 () Bool)

(assert (=> b!313052 (= e!195120 (= (select (arr!7580 a!3293) (index!13102 lt!153442)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68409 () Bool)

(assert (=> d!68409 e!195118))

(declare-fun c!49385 () Bool)

(assert (=> d!68409 (= c!49385 (and ((_ is Intermediate!2731) lt!153442) (undefined!3543 lt!153442)))))

(declare-fun e!195119 () SeekEntryResult!2731)

(assert (=> d!68409 (= lt!153442 e!195119)))

(declare-fun c!49384 () Bool)

(assert (=> d!68409 (= c!49384 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!153441 () (_ BitVec 64))

(assert (=> d!68409 (= lt!153441 (select (arr!7580 a!3293) index!1781))))

(assert (=> d!68409 (validMask!0 mask!3709)))

(assert (=> d!68409 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k0!2441 a!3293 mask!3709) lt!153442)))

(declare-fun b!313053 () Bool)

(assert (=> b!313053 (= e!195119 (Intermediate!2731 true index!1781 x!1427))))

(declare-fun b!313054 () Bool)

(declare-fun e!195116 () Bool)

(assert (=> b!313054 (= e!195118 e!195116)))

(declare-fun res!169500 () Bool)

(assert (=> b!313054 (= res!169500 (and ((_ is Intermediate!2731) lt!153442) (not (undefined!3543 lt!153442)) (bvslt (x!31273 lt!153442) #b01111111111111111111111111111110) (bvsge (x!31273 lt!153442) #b00000000000000000000000000000000) (bvsge (x!31273 lt!153442) x!1427)))))

(assert (=> b!313054 (=> (not res!169500) (not e!195116))))

(declare-fun b!313055 () Bool)

(declare-fun e!195117 () SeekEntryResult!2731)

(assert (=> b!313055 (= e!195119 e!195117)))

(declare-fun c!49383 () Bool)

(assert (=> b!313055 (= c!49383 (or (= lt!153441 k0!2441) (= (bvadd lt!153441 lt!153441) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!313056 () Bool)

(assert (=> b!313056 (= e!195117 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k0!2441 a!3293 mask!3709))))

(declare-fun b!313057 () Bool)

(assert (=> b!313057 (and (bvsge (index!13102 lt!153442) #b00000000000000000000000000000000) (bvslt (index!13102 lt!153442) (size!7932 a!3293)))))

(declare-fun res!169499 () Bool)

(assert (=> b!313057 (= res!169499 (= (select (arr!7580 a!3293) (index!13102 lt!153442)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313057 (=> res!169499 e!195120)))

(declare-fun b!313058 () Bool)

(assert (=> b!313058 (= e!195117 (Intermediate!2731 false index!1781 x!1427))))

(declare-fun b!313059 () Bool)

(assert (=> b!313059 (and (bvsge (index!13102 lt!153442) #b00000000000000000000000000000000) (bvslt (index!13102 lt!153442) (size!7932 a!3293)))))

(declare-fun res!169501 () Bool)

(assert (=> b!313059 (= res!169501 (= (select (arr!7580 a!3293) (index!13102 lt!153442)) k0!2441))))

(assert (=> b!313059 (=> res!169501 e!195120)))

(assert (=> b!313059 (= e!195116 e!195120)))

(assert (= (and d!68409 c!49384) b!313053))

(assert (= (and d!68409 (not c!49384)) b!313055))

(assert (= (and b!313055 c!49383) b!313058))

(assert (= (and b!313055 (not c!49383)) b!313056))

(assert (= (and d!68409 c!49385) b!313051))

(assert (= (and d!68409 (not c!49385)) b!313054))

(assert (= (and b!313054 res!169500) b!313059))

(assert (= (and b!313059 (not res!169501)) b!313057))

(assert (= (and b!313057 (not res!169499)) b!313052))

(assert (=> d!68409 m!323051))

(assert (=> d!68409 m!323039))

(declare-fun m!323103 () Bool)

(assert (=> b!313056 m!323103))

(assert (=> b!313056 m!323103))

(declare-fun m!323105 () Bool)

(assert (=> b!313056 m!323105))

(declare-fun m!323107 () Bool)

(assert (=> b!313059 m!323107))

(assert (=> b!313052 m!323107))

(assert (=> b!313057 m!323107))

(assert (=> b!312982 d!68409))

(declare-fun d!68411 () Bool)

(assert (=> d!68411 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31148 d!68411))

(declare-fun d!68415 () Bool)

(assert (=> d!68415 (= (array_inv!5534 a!3293) (bvsge (size!7932 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31148 d!68415))

(declare-fun d!68417 () Bool)

(assert (=> d!68417 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!312979 d!68417))

(declare-fun d!68419 () Bool)

(declare-fun res!169517 () Bool)

(declare-fun e!195151 () Bool)

(assert (=> d!68419 (=> res!169517 e!195151)))

(assert (=> d!68419 (= res!169517 (= (select (arr!7580 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!68419 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!195151)))

(declare-fun b!313111 () Bool)

(declare-fun e!195152 () Bool)

(assert (=> b!313111 (= e!195151 e!195152)))

(declare-fun res!169518 () Bool)

(assert (=> b!313111 (=> (not res!169518) (not e!195152))))

(assert (=> b!313111 (= res!169518 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7932 a!3293)))))

(declare-fun b!313112 () Bool)

(assert (=> b!313112 (= e!195152 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68419 (not res!169517)) b!313111))

(assert (= (and b!313111 res!169518) b!313112))

(declare-fun m!323125 () Bool)

(assert (=> d!68419 m!323125))

(declare-fun m!323127 () Bool)

(assert (=> b!313112 m!323127))

(assert (=> b!312984 d!68419))

(declare-fun b!313168 () Bool)

(declare-fun e!195187 () SeekEntryResult!2731)

(declare-fun lt!153481 () SeekEntryResult!2731)

(assert (=> b!313168 (= e!195187 (Found!2731 (index!13102 lt!153481)))))

(declare-fun e!195188 () SeekEntryResult!2731)

(declare-fun b!313169 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16003 (_ BitVec 32)) SeekEntryResult!2731)

(assert (=> b!313169 (= e!195188 (seekKeyOrZeroReturnVacant!0 (x!31273 lt!153481) (index!13102 lt!153481) (index!13102 lt!153481) k0!2441 a!3293 mask!3709))))

(declare-fun b!313170 () Bool)

(assert (=> b!313170 (= e!195188 (MissingZero!2731 (index!13102 lt!153481)))))

(declare-fun d!68423 () Bool)

(declare-fun lt!153480 () SeekEntryResult!2731)

(assert (=> d!68423 (and (or ((_ is Undefined!2731) lt!153480) (not ((_ is Found!2731) lt!153480)) (and (bvsge (index!13101 lt!153480) #b00000000000000000000000000000000) (bvslt (index!13101 lt!153480) (size!7932 a!3293)))) (or ((_ is Undefined!2731) lt!153480) ((_ is Found!2731) lt!153480) (not ((_ is MissingZero!2731) lt!153480)) (and (bvsge (index!13100 lt!153480) #b00000000000000000000000000000000) (bvslt (index!13100 lt!153480) (size!7932 a!3293)))) (or ((_ is Undefined!2731) lt!153480) ((_ is Found!2731) lt!153480) ((_ is MissingZero!2731) lt!153480) (not ((_ is MissingVacant!2731) lt!153480)) (and (bvsge (index!13103 lt!153480) #b00000000000000000000000000000000) (bvslt (index!13103 lt!153480) (size!7932 a!3293)))) (or ((_ is Undefined!2731) lt!153480) (ite ((_ is Found!2731) lt!153480) (= (select (arr!7580 a!3293) (index!13101 lt!153480)) k0!2441) (ite ((_ is MissingZero!2731) lt!153480) (= (select (arr!7580 a!3293) (index!13100 lt!153480)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2731) lt!153480) (= (select (arr!7580 a!3293) (index!13103 lt!153480)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!195189 () SeekEntryResult!2731)

(assert (=> d!68423 (= lt!153480 e!195189)))

(declare-fun c!49423 () Bool)

(assert (=> d!68423 (= c!49423 (and ((_ is Intermediate!2731) lt!153481) (undefined!3543 lt!153481)))))

(assert (=> d!68423 (= lt!153481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!68423 (validMask!0 mask!3709)))

(assert (=> d!68423 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!153480)))

(declare-fun b!313171 () Bool)

(declare-fun c!49424 () Bool)

(declare-fun lt!153479 () (_ BitVec 64))

(assert (=> b!313171 (= c!49424 (= lt!153479 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!313171 (= e!195187 e!195188)))

(declare-fun b!313172 () Bool)

(assert (=> b!313172 (= e!195189 e!195187)))

(assert (=> b!313172 (= lt!153479 (select (arr!7580 a!3293) (index!13102 lt!153481)))))

(declare-fun c!49422 () Bool)

(assert (=> b!313172 (= c!49422 (= lt!153479 k0!2441))))

(declare-fun b!313173 () Bool)

(assert (=> b!313173 (= e!195189 Undefined!2731)))

(assert (= (and d!68423 c!49423) b!313173))

(assert (= (and d!68423 (not c!49423)) b!313172))

(assert (= (and b!313172 c!49422) b!313168))

(assert (= (and b!313172 (not c!49422)) b!313171))

(assert (= (and b!313171 c!49424) b!313170))

(assert (= (and b!313171 (not c!49424)) b!313169))

(declare-fun m!323151 () Bool)

(assert (=> b!313169 m!323151))

(assert (=> d!68423 m!323045))

(assert (=> d!68423 m!323047))

(assert (=> d!68423 m!323039))

(declare-fun m!323153 () Bool)

(assert (=> d!68423 m!323153))

(assert (=> d!68423 m!323045))

(declare-fun m!323155 () Bool)

(assert (=> d!68423 m!323155))

(declare-fun m!323157 () Bool)

(assert (=> d!68423 m!323157))

(declare-fun m!323159 () Bool)

(assert (=> b!313172 m!323159))

(assert (=> b!312978 d!68423))

(declare-fun b!313191 () Bool)

(declare-fun e!195202 () Bool)

(declare-fun call!25940 () Bool)

(assert (=> b!313191 (= e!195202 call!25940)))

(declare-fun b!313192 () Bool)

(declare-fun e!195203 () Bool)

(assert (=> b!313192 (= e!195203 e!195202)))

(declare-fun c!49430 () Bool)

(assert (=> b!313192 (= c!49430 (validKeyInArray!0 (select (arr!7580 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!313193 () Bool)

(declare-fun e!195201 () Bool)

(assert (=> b!313193 (= e!195202 e!195201)))

(declare-fun lt!153502 () (_ BitVec 64))

(assert (=> b!313193 (= lt!153502 (select (arr!7580 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9662 0))(
  ( (Unit!9663) )
))
(declare-fun lt!153503 () Unit!9662)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16003 (_ BitVec 64) (_ BitVec 32)) Unit!9662)

(assert (=> b!313193 (= lt!153503 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153502 #b00000000000000000000000000000000))))

(assert (=> b!313193 (arrayContainsKey!0 a!3293 lt!153502 #b00000000000000000000000000000000)))

(declare-fun lt!153504 () Unit!9662)

(assert (=> b!313193 (= lt!153504 lt!153503)))

(declare-fun res!169547 () Bool)

(assert (=> b!313193 (= res!169547 (= (seekEntryOrOpen!0 (select (arr!7580 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2731 #b00000000000000000000000000000000)))))

(assert (=> b!313193 (=> (not res!169547) (not e!195201))))

(declare-fun b!313194 () Bool)

(assert (=> b!313194 (= e!195201 call!25940)))

(declare-fun bm!25937 () Bool)

(assert (=> bm!25937 (= call!25940 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun d!68439 () Bool)

(declare-fun res!169548 () Bool)

(assert (=> d!68439 (=> res!169548 e!195203)))

(assert (=> d!68439 (= res!169548 (bvsge #b00000000000000000000000000000000 (size!7932 a!3293)))))

(assert (=> d!68439 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195203)))

(assert (= (and d!68439 (not res!169548)) b!313192))

(assert (= (and b!313192 c!49430) b!313193))

(assert (= (and b!313192 (not c!49430)) b!313191))

(assert (= (and b!313193 res!169547) b!313194))

(assert (= (or b!313194 b!313191) bm!25937))

(assert (=> b!313192 m!323125))

(assert (=> b!313192 m!323125))

(declare-fun m!323169 () Bool)

(assert (=> b!313192 m!323169))

(assert (=> b!313193 m!323125))

(declare-fun m!323171 () Bool)

(assert (=> b!313193 m!323171))

(declare-fun m!323173 () Bool)

(assert (=> b!313193 m!323173))

(assert (=> b!313193 m!323125))

(declare-fun m!323175 () Bool)

(assert (=> b!313193 m!323175))

(declare-fun m!323177 () Bool)

(assert (=> bm!25937 m!323177))

(assert (=> b!312981 d!68439))

(check-sat (not d!68399) (not b!313112) (not b!313169) (not d!68423) (not b!313056) (not b!313193) (not bm!25937) (not d!68409) (not b!313047) (not b!313192))
(check-sat)
