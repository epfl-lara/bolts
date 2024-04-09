; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33150 () Bool)

(assert start!33150)

(declare-fun b!329416 () Bool)

(declare-fun res!181603 () Bool)

(declare-fun e!202362 () Bool)

(assert (=> b!329416 (=> (not res!181603) (not e!202362))))

(declare-datatypes ((array!16856 0))(
  ( (array!16857 (arr!7969 (Array (_ BitVec 32) (_ BitVec 64))) (size!8321 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16856)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!329416 (= res!181603 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7969 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7969 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7969 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!329417 () Bool)

(assert (=> b!329417 (= e!202362 true)))

(declare-datatypes ((Unit!10205 0))(
  ( (Unit!10206) )
))
(declare-fun lt!158255 () Unit!10205)

(declare-fun e!202360 () Unit!10205)

(assert (=> b!329417 (= lt!158255 e!202360)))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun c!51551 () Bool)

(declare-datatypes ((SeekEntryResult!3111 0))(
  ( (MissingZero!3111 (index!14620 (_ BitVec 32))) (Found!3111 (index!14621 (_ BitVec 32))) (Intermediate!3111 (undefined!3923 Bool) (index!14622 (_ BitVec 32)) (x!32864 (_ BitVec 32))) (Undefined!3111) (MissingVacant!3111 (index!14623 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16856 (_ BitVec 32)) SeekEntryResult!3111)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329417 (= c!51551 (is-Intermediate!3111 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777)))))

(declare-fun b!329418 () Bool)

(declare-fun res!181601 () Bool)

(assert (=> b!329418 (=> (not res!181601) (not e!202362))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!329418 (= res!181601 (and (= (select (arr!7969 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8321 a!3305))))))

(declare-fun b!329419 () Bool)

(declare-fun res!181596 () Bool)

(declare-fun e!202363 () Bool)

(assert (=> b!329419 (=> (not res!181596) (not e!202363))))

(assert (=> b!329419 (= res!181596 (and (= (size!8321 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8321 a!3305))))))

(declare-fun b!329420 () Bool)

(declare-fun Unit!10207 () Unit!10205)

(assert (=> b!329420 (= e!202360 Unit!10207)))

(assert (=> b!329420 false))

(declare-fun b!329421 () Bool)

(declare-fun res!181598 () Bool)

(assert (=> b!329421 (=> (not res!181598) (not e!202363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16856 (_ BitVec 32)) Bool)

(assert (=> b!329421 (= res!181598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329422 () Bool)

(declare-fun res!181599 () Bool)

(assert (=> b!329422 (=> (not res!181599) (not e!202363))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16856 (_ BitVec 32)) SeekEntryResult!3111)

(assert (=> b!329422 (= res!181599 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3111 i!1250)))))

(declare-fun b!329423 () Bool)

(assert (=> b!329423 (= e!202363 e!202362)))

(declare-fun res!181605 () Bool)

(assert (=> b!329423 (=> (not res!181605) (not e!202362))))

(declare-fun lt!158254 () SeekEntryResult!3111)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329423 (= res!181605 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158254))))

(assert (=> b!329423 (= lt!158254 (Intermediate!3111 false resIndex!58 resX!58))))

(declare-fun b!329424 () Bool)

(declare-fun res!181604 () Bool)

(assert (=> b!329424 (=> (not res!181604) (not e!202362))))

(assert (=> b!329424 (= res!181604 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158254))))

(declare-fun b!329426 () Bool)

(declare-fun res!181600 () Bool)

(assert (=> b!329426 (=> (not res!181600) (not e!202363))))

(declare-fun arrayContainsKey!0 (array!16856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329426 (= res!181600 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329427 () Bool)

(declare-fun res!181597 () Bool)

(assert (=> b!329427 (=> (not res!181597) (not e!202363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329427 (= res!181597 (validKeyInArray!0 k!2497))))

(declare-fun res!181602 () Bool)

(assert (=> start!33150 (=> (not res!181602) (not e!202363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33150 (= res!181602 (validMask!0 mask!3777))))

(assert (=> start!33150 e!202363))

(declare-fun array_inv!5923 (array!16856) Bool)

(assert (=> start!33150 (array_inv!5923 a!3305)))

(assert (=> start!33150 true))

(declare-fun b!329425 () Bool)

(declare-fun Unit!10208 () Unit!10205)

(assert (=> b!329425 (= e!202360 Unit!10208)))

(assert (= (and start!33150 res!181602) b!329419))

(assert (= (and b!329419 res!181596) b!329427))

(assert (= (and b!329427 res!181597) b!329426))

(assert (= (and b!329426 res!181600) b!329422))

(assert (= (and b!329422 res!181599) b!329421))

(assert (= (and b!329421 res!181598) b!329423))

(assert (= (and b!329423 res!181605) b!329418))

(assert (= (and b!329418 res!181601) b!329424))

(assert (= (and b!329424 res!181604) b!329416))

(assert (= (and b!329416 res!181603) b!329417))

(assert (= (and b!329417 c!51551) b!329425))

(assert (= (and b!329417 (not c!51551)) b!329420))

(declare-fun m!335047 () Bool)

(assert (=> b!329417 m!335047))

(assert (=> b!329417 m!335047))

(declare-fun m!335049 () Bool)

(assert (=> b!329417 m!335049))

(declare-fun m!335051 () Bool)

(assert (=> b!329426 m!335051))

(declare-fun m!335053 () Bool)

(assert (=> start!33150 m!335053))

(declare-fun m!335055 () Bool)

(assert (=> start!33150 m!335055))

(declare-fun m!335057 () Bool)

(assert (=> b!329421 m!335057))

(declare-fun m!335059 () Bool)

(assert (=> b!329424 m!335059))

(declare-fun m!335061 () Bool)

(assert (=> b!329423 m!335061))

(assert (=> b!329423 m!335061))

(declare-fun m!335063 () Bool)

(assert (=> b!329423 m!335063))

(declare-fun m!335065 () Bool)

(assert (=> b!329427 m!335065))

(declare-fun m!335067 () Bool)

(assert (=> b!329422 m!335067))

(declare-fun m!335069 () Bool)

(assert (=> b!329416 m!335069))

(declare-fun m!335071 () Bool)

(assert (=> b!329418 m!335071))

(push 1)

(assert (not b!329427))

(assert (not b!329424))

(assert (not b!329417))

(assert (not b!329423))

(assert (not b!329422))

(assert (not b!329421))

(assert (not start!33150))

(assert (not b!329426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!70089 () Bool)

(assert (=> d!70089 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!329427 d!70089))

(declare-fun b!329535 () Bool)

(declare-fun e!202409 () Bool)

(declare-fun e!202410 () Bool)

(assert (=> b!329535 (= e!202409 e!202410)))

(declare-fun lt!158282 () (_ BitVec 64))

(assert (=> b!329535 (= lt!158282 (select (arr!7969 a!3305) #b00000000000000000000000000000000))))

(declare-fun lt!158280 () Unit!10205)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16856 (_ BitVec 64) (_ BitVec 32)) Unit!10205)

(assert (=> b!329535 (= lt!158280 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158282 #b00000000000000000000000000000000))))

(assert (=> b!329535 (arrayContainsKey!0 a!3305 lt!158282 #b00000000000000000000000000000000)))

(declare-fun lt!158281 () Unit!10205)

(assert (=> b!329535 (= lt!158281 lt!158280)))

(declare-fun res!181679 () Bool)

(assert (=> b!329535 (= res!181679 (= (seekEntryOrOpen!0 (select (arr!7969 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3111 #b00000000000000000000000000000000)))))

(assert (=> b!329535 (=> (not res!181679) (not e!202410))))

(declare-fun b!329536 () Bool)

(declare-fun e!202411 () Bool)

(assert (=> b!329536 (= e!202411 e!202409)))

(declare-fun c!51569 () Bool)

(assert (=> b!329536 (= c!51569 (validKeyInArray!0 (select (arr!7969 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!329537 () Bool)

(declare-fun call!26150 () Bool)

(assert (=> b!329537 (= e!202409 call!26150)))

(declare-fun d!70091 () Bool)

(declare-fun res!181680 () Bool)

(assert (=> d!70091 (=> res!181680 e!202411)))

(assert (=> d!70091 (= res!181680 (bvsge #b00000000000000000000000000000000 (size!8321 a!3305)))))

(assert (=> d!70091 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202411)))

(declare-fun b!329538 () Bool)

(assert (=> b!329538 (= e!202410 call!26150)))

(declare-fun bm!26147 () Bool)

(assert (=> bm!26147 (= call!26150 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!70091 (not res!181680)) b!329536))

(assert (= (and b!329536 c!51569) b!329535))

(assert (= (and b!329536 (not c!51569)) b!329537))

(assert (= (and b!329535 res!181679) b!329538))

(assert (= (or b!329538 b!329537) bm!26147))

(declare-fun m!335133 () Bool)

(assert (=> b!329535 m!335133))

(declare-fun m!335135 () Bool)

(assert (=> b!329535 m!335135))

(declare-fun m!335137 () Bool)

(assert (=> b!329535 m!335137))

(assert (=> b!329535 m!335133))

(declare-fun m!335139 () Bool)

(assert (=> b!329535 m!335139))

(assert (=> b!329536 m!335133))

(assert (=> b!329536 m!335133))

(declare-fun m!335141 () Bool)

(assert (=> b!329536 m!335141))

(declare-fun m!335143 () Bool)

(assert (=> bm!26147 m!335143))

(assert (=> b!329421 d!70091))

(declare-fun d!70097 () Bool)

(declare-fun res!181685 () Bool)

(declare-fun e!202416 () Bool)

(assert (=> d!70097 (=> res!181685 e!202416)))

(assert (=> d!70097 (= res!181685 (= (select (arr!7969 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!70097 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!202416)))

(declare-fun b!329543 () Bool)

(declare-fun e!202417 () Bool)

(assert (=> b!329543 (= e!202416 e!202417)))

(declare-fun res!181686 () Bool)

(assert (=> b!329543 (=> (not res!181686) (not e!202417))))

(assert (=> b!329543 (= res!181686 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8321 a!3305)))))

(declare-fun b!329544 () Bool)

(assert (=> b!329544 (= e!202417 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70097 (not res!181685)) b!329543))

(assert (= (and b!329543 res!181686) b!329544))

(assert (=> d!70097 m!335133))

(declare-fun m!335147 () Bool)

(assert (=> b!329544 m!335147))

(assert (=> b!329426 d!70097))

(declare-fun b!329608 () Bool)

(declare-fun e!202454 () Bool)

(declare-fun lt!158305 () SeekEntryResult!3111)

(assert (=> b!329608 (= e!202454 (bvsge (x!32864 lt!158305) #b01111111111111111111111111111110))))

(declare-fun b!329609 () Bool)

(declare-fun e!202453 () SeekEntryResult!3111)

(assert (=> b!329609 (= e!202453 (Intermediate!3111 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!329610 () Bool)

(declare-fun e!202452 () Bool)

(assert (=> b!329610 (= e!202454 e!202452)))

(declare-fun res!181702 () Bool)

(assert (=> b!329610 (= res!181702 (and (is-Intermediate!3111 lt!158305) (not (undefined!3923 lt!158305)) (bvslt (x!32864 lt!158305) #b01111111111111111111111111111110) (bvsge (x!32864 lt!158305) #b00000000000000000000000000000000) (bvsge (x!32864 lt!158305) #b00000000000000000000000000000000)))))

(assert (=> b!329610 (=> (not res!181702) (not e!202452))))

(declare-fun b!329611 () Bool)

(assert (=> b!329611 (and (bvsge (index!14622 lt!158305) #b00000000000000000000000000000000) (bvslt (index!14622 lt!158305) (size!8321 a!3305)))))

(declare-fun e!202456 () Bool)

(assert (=> b!329611 (= e!202456 (= (select (arr!7969 a!3305) (index!14622 lt!158305)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329613 () Bool)

(declare-fun e!202455 () SeekEntryResult!3111)

(assert (=> b!329613 (= e!202455 e!202453)))

(declare-fun c!51594 () Bool)

(declare-fun lt!158306 () (_ BitVec 64))

(assert (=> b!329613 (= c!51594 (or (= lt!158306 k!2497) (= (bvadd lt!158306 lt!158306) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329614 () Bool)

(assert (=> b!329614 (and (bvsge (index!14622 lt!158305) #b00000000000000000000000000000000) (bvslt (index!14622 lt!158305) (size!8321 a!3305)))))

(declare-fun res!181703 () Bool)

(assert (=> b!329614 (= res!181703 (= (select (arr!7969 a!3305) (index!14622 lt!158305)) k!2497))))

(assert (=> b!329614 (=> res!181703 e!202456)))

(assert (=> b!329614 (= e!202452 e!202456)))

(declare-fun b!329615 () Bool)

(assert (=> b!329615 (= e!202455 (Intermediate!3111 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!329616 () Bool)

(assert (=> b!329616 (and (bvsge (index!14622 lt!158305) #b00000000000000000000000000000000) (bvslt (index!14622 lt!158305) (size!8321 a!3305)))))

(declare-fun res!181704 () Bool)

(assert (=> b!329616 (= res!181704 (= (select (arr!7969 a!3305) (index!14622 lt!158305)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329616 (=> res!181704 e!202456)))

(declare-fun b!329612 () Bool)

(assert (=> b!329612 (= e!202453 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun d!70101 () Bool)

(assert (=> d!70101 e!202454))

(declare-fun c!51595 () Bool)

(assert (=> d!70101 (= c!51595 (and (is-Intermediate!3111 lt!158305) (undefined!3923 lt!158305)))))

(assert (=> d!70101 (= lt!158305 e!202455)))

(declare-fun c!51596 () Bool)

(assert (=> d!70101 (= c!51596 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!70101 (= lt!158306 (select (arr!7969 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!70101 (validMask!0 mask!3777)))

(assert (=> d!70101 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158305)))

(assert (= (and d!70101 c!51596) b!329615))

(assert (= (and d!70101 (not c!51596)) b!329613))

(assert (= (and b!329613 c!51594) b!329609))

(assert (= (and b!329613 (not c!51594)) b!329612))

(assert (= (and d!70101 c!51595) b!329608))

(assert (= (and d!70101 (not c!51595)) b!329610))

(assert (= (and b!329610 res!181702) b!329614))

(assert (= (and b!329614 (not res!181703)) b!329616))

(assert (= (and b!329616 (not res!181704)) b!329611))

(assert (=> d!70101 m!335061))

(declare-fun m!335163 () Bool)

(assert (=> d!70101 m!335163))

(assert (=> d!70101 m!335053))

(assert (=> b!329612 m!335061))

(declare-fun m!335165 () Bool)

(assert (=> b!329612 m!335165))

(assert (=> b!329612 m!335165))

(declare-fun m!335167 () Bool)

(assert (=> b!329612 m!335167))

(declare-fun m!335169 () Bool)

(assert (=> b!329614 m!335169))

(assert (=> b!329616 m!335169))

(assert (=> b!329611 m!335169))

(assert (=> b!329423 d!70101))

(declare-fun d!70107 () Bool)

(declare-fun lt!158318 () (_ BitVec 32))

(declare-fun lt!158317 () (_ BitVec 32))

(assert (=> d!70107 (= lt!158318 (bvmul (bvxor lt!158317 (bvlshr lt!158317 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70107 (= lt!158317 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70107 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!181709 (let ((h!5438 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32871 (bvmul (bvxor h!5438 (bvlshr h!5438 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32871 (bvlshr x!32871 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!181709 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!181709 #b00000000000000000000000000000000))))))

(assert (=> d!70107 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!158318 (bvlshr lt!158318 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!329423 d!70107))

(declare-fun b!329635 () Bool)

(declare-fun e!202471 () Bool)

(declare-fun lt!158319 () SeekEntryResult!3111)

(assert (=> b!329635 (= e!202471 (bvsge (x!32864 lt!158319) #b01111111111111111111111111111110))))

(declare-fun b!329636 () Bool)

(declare-fun e!202470 () SeekEntryResult!3111)

(assert (=> b!329636 (= e!202470 (Intermediate!3111 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!329637 () Bool)

(declare-fun e!202469 () Bool)

(assert (=> b!329637 (= e!202471 e!202469)))

(declare-fun res!181712 () Bool)

(assert (=> b!329637 (= res!181712 (and (is-Intermediate!3111 lt!158319) (not (undefined!3923 lt!158319)) (bvslt (x!32864 lt!158319) #b01111111111111111111111111111110) (bvsge (x!32864 lt!158319) #b00000000000000000000000000000000) (bvsge (x!32864 lt!158319) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!329637 (=> (not res!181712) (not e!202469))))

(declare-fun b!329638 () Bool)

(assert (=> b!329638 (and (bvsge (index!14622 lt!158319) #b00000000000000000000000000000000) (bvslt (index!14622 lt!158319) (size!8321 a!3305)))))

(declare-fun e!202473 () Bool)

(assert (=> b!329638 (= e!202473 (= (select (arr!7969 a!3305) (index!14622 lt!158319)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329640 () Bool)

(declare-fun e!202472 () SeekEntryResult!3111)

(assert (=> b!329640 (= e!202472 e!202470)))

(declare-fun c!51603 () Bool)

(declare-fun lt!158320 () (_ BitVec 64))

(assert (=> b!329640 (= c!51603 (or (= lt!158320 k!2497) (= (bvadd lt!158320 lt!158320) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329641 () Bool)

(assert (=> b!329641 (and (bvsge (index!14622 lt!158319) #b00000000000000000000000000000000) (bvslt (index!14622 lt!158319) (size!8321 a!3305)))))

(declare-fun res!181713 () Bool)

(assert (=> b!329641 (= res!181713 (= (select (arr!7969 a!3305) (index!14622 lt!158319)) k!2497))))

(assert (=> b!329641 (=> res!181713 e!202473)))

(assert (=> b!329641 (= e!202469 e!202473)))

(declare-fun b!329642 () Bool)

(assert (=> b!329642 (= e!202472 (Intermediate!3111 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!329643 () Bool)

(assert (=> b!329643 (and (bvsge (index!14622 lt!158319) #b00000000000000000000000000000000) (bvslt (index!14622 lt!158319) (size!8321 a!3305)))))

(declare-fun res!181714 () Bool)

(assert (=> b!329643 (= res!181714 (= (select (arr!7969 a!3305) (index!14622 lt!158319)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329643 (=> res!181714 e!202473)))

(declare-fun b!329639 () Bool)

(assert (=> b!329639 (= e!202470 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun d!70113 () Bool)

(assert (=> d!70113 e!202471))

(declare-fun c!51604 () Bool)

(assert (=> d!70113 (= c!51604 (and (is-Intermediate!3111 lt!158319) (undefined!3923 lt!158319)))))

(assert (=> d!70113 (= lt!158319 e!202472)))

(declare-fun c!51605 () Bool)

(assert (=> d!70113 (= c!51605 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(assert (=> d!70113 (= lt!158320 (select (arr!7969 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!70113 (validMask!0 mask!3777)))

(assert (=> d!70113 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777) lt!158319)))

(assert (= (and d!70113 c!51605) b!329642))

(assert (= (and d!70113 (not c!51605)) b!329640))

(assert (= (and b!329640 c!51603) b!329636))

(assert (= (and b!329640 (not c!51603)) b!329639))

(assert (= (and d!70113 c!51604) b!329635))

(assert (= (and d!70113 (not c!51604)) b!329637))

(assert (= (and b!329637 res!181712) b!329641))

(assert (= (and b!329641 (not res!181713)) b!329643))

(assert (= (and b!329643 (not res!181714)) b!329638))

(assert (=> d!70113 m!335047))

(declare-fun m!335175 () Bool)

(assert (=> d!70113 m!335175))

(assert (=> d!70113 m!335053))

(assert (=> b!329639 m!335047))

(declare-fun m!335177 () Bool)

(assert (=> b!329639 m!335177))

(assert (=> b!329639 m!335177))

(declare-fun m!335179 () Bool)

(assert (=> b!329639 m!335179))

(declare-fun m!335181 () Bool)

(assert (=> b!329641 m!335181))

(assert (=> b!329643 m!335181))

(assert (=> b!329638 m!335181))

(assert (=> b!329417 d!70113))

(declare-fun d!70115 () Bool)

(declare-fun lt!158323 () (_ BitVec 32))

(assert (=> d!70115 (and (bvsge lt!158323 #b00000000000000000000000000000000) (bvslt lt!158323 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70115 (= lt!158323 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70115 (validMask!0 mask!3777)))

(assert (=> d!70115 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158323)))

(declare-fun bs!11411 () Bool)

(assert (= bs!11411 d!70115))

(declare-fun m!335183 () Bool)

(assert (=> bs!11411 m!335183))

(assert (=> bs!11411 m!335053))

(assert (=> b!329417 d!70115))

(declare-fun b!329707 () Bool)

(declare-fun e!202514 () SeekEntryResult!3111)

(declare-fun lt!158355 () SeekEntryResult!3111)

(assert (=> b!329707 (= e!202514 (MissingZero!3111 (index!14622 lt!158355)))))

(declare-fun d!70117 () Bool)

(declare-fun lt!158357 () SeekEntryResult!3111)

(assert (=> d!70117 (and (or (is-Undefined!3111 lt!158357) (not (is-Found!3111 lt!158357)) (and (bvsge (index!14621 lt!158357) #b00000000000000000000000000000000) (bvslt (index!14621 lt!158357) (size!8321 a!3305)))) (or (is-Undefined!3111 lt!158357) (is-Found!3111 lt!158357) (not (is-MissingZero!3111 lt!158357)) (and (bvsge (index!14620 lt!158357) #b00000000000000000000000000000000) (bvslt (index!14620 lt!158357) (size!8321 a!3305)))) (or (is-Undefined!3111 lt!158357) (is-Found!3111 lt!158357) (is-MissingZero!3111 lt!158357) (not (is-MissingVacant!3111 lt!158357)) (and (bvsge (index!14623 lt!158357) #b00000000000000000000000000000000) (bvslt (index!14623 lt!158357) (size!8321 a!3305)))) (or (is-Undefined!3111 lt!158357) (ite (is-Found!3111 lt!158357) (= (select (arr!7969 a!3305) (index!14621 lt!158357)) k!2497) (ite (is-MissingZero!3111 lt!158357) (= (select (arr!7969 a!3305) (index!14620 lt!158357)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3111 lt!158357) (= (select (arr!7969 a!3305) (index!14623 lt!158357)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!202513 () SeekEntryResult!3111)

(assert (=> d!70117 (= lt!158357 e!202513)))

(declare-fun c!51627 () Bool)

(assert (=> d!70117 (= c!51627 (and (is-Intermediate!3111 lt!158355) (undefined!3923 lt!158355)))))

(assert (=> d!70117 (= lt!158355 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!70117 (validMask!0 mask!3777)))

(assert (=> d!70117 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!158357)))

(declare-fun b!329708 () Bool)

(declare-fun e!202515 () SeekEntryResult!3111)

(assert (=> b!329708 (= e!202513 e!202515)))

(declare-fun lt!158356 () (_ BitVec 64))

(assert (=> b!329708 (= lt!158356 (select (arr!7969 a!3305) (index!14622 lt!158355)))))

(declare-fun c!51628 () Bool)

(assert (=> b!329708 (= c!51628 (= lt!158356 k!2497))))

(declare-fun b!329709 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16856 (_ BitVec 32)) SeekEntryResult!3111)

(assert (=> b!329709 (= e!202514 (seekKeyOrZeroReturnVacant!0 (x!32864 lt!158355) (index!14622 lt!158355) (index!14622 lt!158355) k!2497 a!3305 mask!3777))))

(declare-fun b!329710 () Bool)

(declare-fun c!51629 () Bool)

(assert (=> b!329710 (= c!51629 (= lt!158356 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329710 (= e!202515 e!202514)))

(declare-fun b!329711 () Bool)

(assert (=> b!329711 (= e!202513 Undefined!3111)))

(declare-fun b!329712 () Bool)

(assert (=> b!329712 (= e!202515 (Found!3111 (index!14622 lt!158355)))))

(assert (= (and d!70117 c!51627) b!329711))

(assert (= (and d!70117 (not c!51627)) b!329708))

(assert (= (and b!329708 c!51628) b!329712))

(assert (= (and b!329708 (not c!51628)) b!329710))

(assert (= (and b!329710 c!51629) b!329707))

(assert (= (and b!329710 (not c!51629)) b!329709))

(assert (=> d!70117 m!335053))

(assert (=> d!70117 m!335061))

(assert (=> d!70117 m!335063))

(assert (=> d!70117 m!335061))

(declare-fun m!335231 () Bool)

(assert (=> d!70117 m!335231))

(declare-fun m!335233 () Bool)

(assert (=> d!70117 m!335233))

(declare-fun m!335235 () Bool)

(assert (=> d!70117 m!335235))

(declare-fun m!335237 () Bool)

(assert (=> b!329708 m!335237))

(declare-fun m!335239 () Bool)

(assert (=> b!329709 m!335239))

(assert (=> b!329422 d!70117))

(declare-fun b!329713 () Bool)

(declare-fun e!202518 () Bool)

(declare-fun lt!158360 () SeekEntryResult!3111)

(assert (=> b!329713 (= e!202518 (bvsge (x!32864 lt!158360) #b01111111111111111111111111111110))))

(declare-fun b!329714 () Bool)

(declare-fun e!202517 () SeekEntryResult!3111)

(assert (=> b!329714 (= e!202517 (Intermediate!3111 false index!1840 x!1490))))

(declare-fun b!329715 () Bool)

(declare-fun e!202516 () Bool)

(assert (=> b!329715 (= e!202518 e!202516)))

(declare-fun res!181737 () Bool)

(assert (=> b!329715 (= res!181737 (and (is-Intermediate!3111 lt!158360) (not (undefined!3923 lt!158360)) (bvslt (x!32864 lt!158360) #b01111111111111111111111111111110) (bvsge (x!32864 lt!158360) #b00000000000000000000000000000000) (bvsge (x!32864 lt!158360) x!1490)))))

(assert (=> b!329715 (=> (not res!181737) (not e!202516))))

(declare-fun b!329716 () Bool)

(assert (=> b!329716 (and (bvsge (index!14622 lt!158360) #b00000000000000000000000000000000) (bvslt (index!14622 lt!158360) (size!8321 a!3305)))))

(declare-fun e!202520 () Bool)

(assert (=> b!329716 (= e!202520 (= (select (arr!7969 a!3305) (index!14622 lt!158360)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329718 () Bool)

(declare-fun e!202519 () SeekEntryResult!3111)

(assert (=> b!329718 (= e!202519 e!202517)))

(declare-fun c!51630 () Bool)

(declare-fun lt!158361 () (_ BitVec 64))

(assert (=> b!329718 (= c!51630 (or (= lt!158361 k!2497) (= (bvadd lt!158361 lt!158361) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!329719 () Bool)

(assert (=> b!329719 (and (bvsge (index!14622 lt!158360) #b00000000000000000000000000000000) (bvslt (index!14622 lt!158360) (size!8321 a!3305)))))

(declare-fun res!181738 () Bool)

(assert (=> b!329719 (= res!181738 (= (select (arr!7969 a!3305) (index!14622 lt!158360)) k!2497))))

(assert (=> b!329719 (=> res!181738 e!202520)))

(assert (=> b!329719 (= e!202516 e!202520)))

(declare-fun b!329720 () Bool)

(assert (=> b!329720 (= e!202519 (Intermediate!3111 true index!1840 x!1490))))

(declare-fun b!329721 () Bool)

(assert (=> b!329721 (and (bvsge (index!14622 lt!158360) #b00000000000000000000000000000000) (bvslt (index!14622 lt!158360) (size!8321 a!3305)))))

(declare-fun res!181739 () Bool)

(assert (=> b!329721 (= res!181739 (= (select (arr!7969 a!3305) (index!14622 lt!158360)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329721 (=> res!181739 e!202520)))

(declare-fun b!329717 () Bool)

(assert (=> b!329717 (= e!202517 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun d!70141 () Bool)

(assert (=> d!70141 e!202518))

(declare-fun c!51631 () Bool)

(assert (=> d!70141 (= c!51631 (and (is-Intermediate!3111 lt!158360) (undefined!3923 lt!158360)))))

(assert (=> d!70141 (= lt!158360 e!202519)))

(declare-fun c!51632 () Bool)

(assert (=> d!70141 (= c!51632 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!70141 (= lt!158361 (select (arr!7969 a!3305) index!1840))))

(assert (=> d!70141 (validMask!0 mask!3777)))

(assert (=> d!70141 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158360)))

(assert (= (and d!70141 c!51632) b!329720))

(assert (= (and d!70141 (not c!51632)) b!329718))

(assert (= (and b!329718 c!51630) b!329714))

(assert (= (and b!329718 (not c!51630)) b!329717))

(assert (= (and d!70141 c!51631) b!329713))

(assert (= (and d!70141 (not c!51631)) b!329715))

(assert (= (and b!329715 res!181737) b!329719))

(assert (= (and b!329719 (not res!181738)) b!329721))

(assert (= (and b!329721 (not res!181739)) b!329716))

(assert (=> d!70141 m!335069))

(assert (=> d!70141 m!335053))

(assert (=> b!329717 m!335047))

(assert (=> b!329717 m!335047))

(declare-fun m!335241 () Bool)

(assert (=> b!329717 m!335241))

(declare-fun m!335243 () Bool)

(assert (=> b!329719 m!335243))

(assert (=> b!329721 m!335243))

(assert (=> b!329716 m!335243))

(assert (=> b!329424 d!70141))

(declare-fun d!70143 () Bool)

(assert (=> d!70143 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33150 d!70143))

(declare-fun d!70151 () Bool)

(assert (=> d!70151 (= (array_inv!5923 a!3305) (bvsge (size!8321 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33150 d!70151))

(push 1)

(assert (not d!70101))

(assert (not bm!26147))

(assert (not b!329639))

(assert (not b!329717))

(assert (not d!70115))

(assert (not b!329535))

(assert (not b!329544))

(assert (not b!329536))

(assert (not d!70117))

(assert (not d!70141))

(assert (not b!329709))

(assert (not b!329612))

(assert (not d!70113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

