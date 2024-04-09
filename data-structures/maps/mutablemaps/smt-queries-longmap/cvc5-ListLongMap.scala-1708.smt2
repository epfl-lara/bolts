; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31386 () Bool)

(assert start!31386)

(declare-fun b!314333 () Bool)

(declare-fun res!170244 () Bool)

(declare-fun e!195763 () Bool)

(assert (=> b!314333 (=> (not res!170244) (not e!195763))))

(declare-datatypes ((array!16055 0))(
  ( (array!16056 (arr!7600 (Array (_ BitVec 32) (_ BitVec 64))) (size!7952 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!16055)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!314333 (= res!170244 (and (= (select (arr!7600 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7952 a!3293))))))

(declare-fun b!314334 () Bool)

(declare-fun res!170240 () Bool)

(declare-fun e!195762 () Bool)

(assert (=> b!314334 (=> (not res!170240) (not e!195762))))

(declare-fun mask!3709 () (_ BitVec 32))

(assert (=> b!314334 (= res!170240 (and (= (size!7952 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7952 a!3293))))))

(declare-fun b!314335 () Bool)

(declare-fun res!170247 () Bool)

(assert (=> b!314335 (=> (not res!170247) (not e!195762))))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!314335 (= res!170247 (validKeyInArray!0 k!2441))))

(declare-fun b!314336 () Bool)

(declare-fun res!170243 () Bool)

(assert (=> b!314336 (=> (not res!170243) (not e!195762))))

(declare-fun arrayContainsKey!0 (array!16055 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!314336 (= res!170243 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!314337 () Bool)

(declare-fun res!170241 () Bool)

(assert (=> b!314337 (=> (not res!170241) (not e!195762))))

(declare-datatypes ((SeekEntryResult!2751 0))(
  ( (MissingZero!2751 (index!13180 (_ BitVec 32))) (Found!2751 (index!13181 (_ BitVec 32))) (Intermediate!2751 (undefined!3563 Bool) (index!13182 (_ BitVec 32)) (x!31376 (_ BitVec 32))) (Undefined!2751) (MissingVacant!2751 (index!13183 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16055 (_ BitVec 32)) SeekEntryResult!2751)

(assert (=> b!314337 (= res!170241 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2751 i!1240)))))

(declare-fun b!314338 () Bool)

(declare-fun lt!153881 () SeekEntryResult!2751)

(declare-fun lt!153880 () SeekEntryResult!2751)

(assert (=> b!314338 (= e!195763 (and (= lt!153880 lt!153881) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7600 a!3293) index!1781) k!2441)) (= x!1427 resX!52) (not (= resIndex!52 index!1781)) (or (= (select (arr!7600 a!3293) index!1781) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!7600 a!3293) index!1781) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!153880 (Intermediate!2751 false index!1781 resX!52)))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16055 (_ BitVec 32)) SeekEntryResult!2751)

(assert (=> b!314338 (= lt!153880 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!170246 () Bool)

(assert (=> start!31386 (=> (not res!170246) (not e!195762))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31386 (= res!170246 (validMask!0 mask!3709))))

(assert (=> start!31386 e!195762))

(declare-fun array_inv!5554 (array!16055) Bool)

(assert (=> start!31386 (array_inv!5554 a!3293)))

(assert (=> start!31386 true))

(declare-fun b!314339 () Bool)

(declare-fun res!170245 () Bool)

(assert (=> b!314339 (=> (not res!170245) (not e!195762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16055 (_ BitVec 32)) Bool)

(assert (=> b!314339 (= res!170245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!314340 () Bool)

(assert (=> b!314340 (= e!195762 e!195763)))

(declare-fun res!170242 () Bool)

(assert (=> b!314340 (=> (not res!170242) (not e!195763))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314340 (= res!170242 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153881))))

(assert (=> b!314340 (= lt!153881 (Intermediate!2751 false resIndex!52 resX!52))))

(assert (= (and start!31386 res!170246) b!314334))

(assert (= (and b!314334 res!170240) b!314335))

(assert (= (and b!314335 res!170247) b!314336))

(assert (= (and b!314336 res!170243) b!314337))

(assert (= (and b!314337 res!170241) b!314339))

(assert (= (and b!314339 res!170245) b!314340))

(assert (= (and b!314340 res!170242) b!314333))

(assert (= (and b!314333 res!170244) b!314338))

(declare-fun m!323917 () Bool)

(assert (=> b!314338 m!323917))

(declare-fun m!323919 () Bool)

(assert (=> b!314338 m!323919))

(declare-fun m!323921 () Bool)

(assert (=> b!314336 m!323921))

(declare-fun m!323923 () Bool)

(assert (=> b!314335 m!323923))

(declare-fun m!323925 () Bool)

(assert (=> b!314337 m!323925))

(declare-fun m!323927 () Bool)

(assert (=> b!314340 m!323927))

(assert (=> b!314340 m!323927))

(declare-fun m!323929 () Bool)

(assert (=> b!314340 m!323929))

(declare-fun m!323931 () Bool)

(assert (=> b!314339 m!323931))

(declare-fun m!323933 () Bool)

(assert (=> b!314333 m!323933))

(declare-fun m!323935 () Bool)

(assert (=> start!31386 m!323935))

(declare-fun m!323937 () Bool)

(assert (=> start!31386 m!323937))

(push 1)

(assert (not b!314338))

(assert (not b!314339))

(assert (not b!314336))

(assert (not b!314335))

(assert (not start!31386))

(assert (not b!314337))

(assert (not b!314340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68639 () Bool)

(assert (=> d!68639 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!314335 d!68639))

(declare-fun d!68641 () Bool)

(declare-fun res!170300 () Bool)

(declare-fun e!195786 () Bool)

(assert (=> d!68641 (=> res!170300 e!195786)))

(assert (=> d!68641 (= res!170300 (= (select (arr!7600 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68641 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!195786)))

(declare-fun b!314393 () Bool)

(declare-fun e!195787 () Bool)

(assert (=> b!314393 (= e!195786 e!195787)))

(declare-fun res!170301 () Bool)

(assert (=> b!314393 (=> (not res!170301) (not e!195787))))

(assert (=> b!314393 (= res!170301 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7952 a!3293)))))

(declare-fun b!314394 () Bool)

(assert (=> b!314394 (= e!195787 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68641 (not res!170300)) b!314393))

(assert (= (and b!314393 res!170301) b!314394))

(declare-fun m!323983 () Bool)

(assert (=> d!68641 m!323983))

(declare-fun m!323985 () Bool)

(assert (=> b!314394 m!323985))

(assert (=> b!314336 d!68641))

(declare-fun d!68643 () Bool)

(assert (=> d!68643 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31386 d!68643))

(declare-fun d!68647 () Bool)

(assert (=> d!68647 (= (array_inv!5554 a!3293) (bvsge (size!7952 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31386 d!68647))

(declare-fun b!314416 () Bool)

(declare-fun e!195803 () Bool)

(declare-fun call!25973 () Bool)

(assert (=> b!314416 (= e!195803 call!25973)))

(declare-fun b!314417 () Bool)

(declare-fun e!195805 () Bool)

(assert (=> b!314417 (= e!195805 e!195803)))

(declare-fun c!49664 () Bool)

(assert (=> b!314417 (= c!49664 (validKeyInArray!0 (select (arr!7600 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!314418 () Bool)

(declare-fun e!195804 () Bool)

(assert (=> b!314418 (= e!195803 e!195804)))

(declare-fun lt!153911 () (_ BitVec 64))

(assert (=> b!314418 (= lt!153911 (select (arr!7600 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9684 0))(
  ( (Unit!9685) )
))
(declare-fun lt!153909 () Unit!9684)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16055 (_ BitVec 64) (_ BitVec 32)) Unit!9684)

(assert (=> b!314418 (= lt!153909 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!153911 #b00000000000000000000000000000000))))

(assert (=> b!314418 (arrayContainsKey!0 a!3293 lt!153911 #b00000000000000000000000000000000)))

(declare-fun lt!153910 () Unit!9684)

(assert (=> b!314418 (= lt!153910 lt!153909)))

(declare-fun res!170313 () Bool)

(assert (=> b!314418 (= res!170313 (= (seekEntryOrOpen!0 (select (arr!7600 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2751 #b00000000000000000000000000000000)))))

(assert (=> b!314418 (=> (not res!170313) (not e!195804))))

(declare-fun bm!25970 () Bool)

(assert (=> bm!25970 (= call!25973 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!314415 () Bool)

(assert (=> b!314415 (= e!195804 call!25973)))

(declare-fun d!68649 () Bool)

(declare-fun res!170312 () Bool)

(assert (=> d!68649 (=> res!170312 e!195805)))

(assert (=> d!68649 (= res!170312 (bvsge #b00000000000000000000000000000000 (size!7952 a!3293)))))

(assert (=> d!68649 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!195805)))

(assert (= (and d!68649 (not res!170312)) b!314417))

(assert (= (and b!314417 c!49664) b!314418))

(assert (= (and b!314417 (not c!49664)) b!314416))

(assert (= (and b!314418 res!170313) b!314415))

(assert (= (or b!314415 b!314416) bm!25970))

(assert (=> b!314417 m!323983))

(assert (=> b!314417 m!323983))

(declare-fun m!323999 () Bool)

(assert (=> b!314417 m!323999))

(assert (=> b!314418 m!323983))

(declare-fun m!324001 () Bool)

(assert (=> b!314418 m!324001))

(declare-fun m!324003 () Bool)

(assert (=> b!314418 m!324003))

(assert (=> b!314418 m!323983))

(declare-fun m!324005 () Bool)

(assert (=> b!314418 m!324005))

(declare-fun m!324007 () Bool)

(assert (=> bm!25970 m!324007))

(assert (=> b!314339 d!68649))

(declare-fun b!314491 () Bool)

(declare-fun lt!153934 () SeekEntryResult!2751)

(assert (=> b!314491 (and (bvsge (index!13182 lt!153934) #b00000000000000000000000000000000) (bvslt (index!13182 lt!153934) (size!7952 a!3293)))))

(declare-fun res!170340 () Bool)

(assert (=> b!314491 (= res!170340 (= (select (arr!7600 a!3293) (index!13182 lt!153934)) k!2441))))

(declare-fun e!195847 () Bool)

(assert (=> b!314491 (=> res!170340 e!195847)))

(declare-fun e!195850 () Bool)

(assert (=> b!314491 (= e!195850 e!195847)))

(declare-fun d!68653 () Bool)

(declare-fun e!195849 () Bool)

(assert (=> d!68653 e!195849))

(declare-fun c!49690 () Bool)

(assert (=> d!68653 (= c!49690 (and (is-Intermediate!2751 lt!153934) (undefined!3563 lt!153934)))))

(declare-fun e!195848 () SeekEntryResult!2751)

(assert (=> d!68653 (= lt!153934 e!195848)))

(declare-fun c!49691 () Bool)

(assert (=> d!68653 (= c!49691 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!153935 () (_ BitVec 64))

(assert (=> d!68653 (= lt!153935 (select (arr!7600 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68653 (validMask!0 mask!3709)))

(assert (=> d!68653 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!153934)))

(declare-fun b!314492 () Bool)

(declare-fun e!195846 () SeekEntryResult!2751)

(assert (=> b!314492 (= e!195846 (Intermediate!2751 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!314493 () Bool)

(assert (=> b!314493 (= e!195849 e!195850)))

(declare-fun res!170339 () Bool)

(assert (=> b!314493 (= res!170339 (and (is-Intermediate!2751 lt!153934) (not (undefined!3563 lt!153934)) (bvslt (x!31376 lt!153934) #b01111111111111111111111111111110) (bvsge (x!31376 lt!153934) #b00000000000000000000000000000000) (bvsge (x!31376 lt!153934) #b00000000000000000000000000000000)))))

(assert (=> b!314493 (=> (not res!170339) (not e!195850))))

(declare-fun b!314494 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!314494 (= e!195846 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314495 () Bool)

(assert (=> b!314495 (= e!195848 e!195846)))

(declare-fun c!49689 () Bool)

(assert (=> b!314495 (= c!49689 (or (= lt!153935 k!2441) (= (bvadd lt!153935 lt!153935) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314496 () Bool)

(assert (=> b!314496 (= e!195848 (Intermediate!2751 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!314497 () Bool)

(assert (=> b!314497 (= e!195849 (bvsge (x!31376 lt!153934) #b01111111111111111111111111111110))))

(declare-fun b!314498 () Bool)

(assert (=> b!314498 (and (bvsge (index!13182 lt!153934) #b00000000000000000000000000000000) (bvslt (index!13182 lt!153934) (size!7952 a!3293)))))

(assert (=> b!314498 (= e!195847 (= (select (arr!7600 a!3293) (index!13182 lt!153934)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314499 () Bool)

(assert (=> b!314499 (and (bvsge (index!13182 lt!153934) #b00000000000000000000000000000000) (bvslt (index!13182 lt!153934) (size!7952 a!3293)))))

(declare-fun res!170341 () Bool)

(assert (=> b!314499 (= res!170341 (= (select (arr!7600 a!3293) (index!13182 lt!153934)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314499 (=> res!170341 e!195847)))

(assert (= (and d!68653 c!49691) b!314496))

(assert (= (and d!68653 (not c!49691)) b!314495))

(assert (= (and b!314495 c!49689) b!314492))

(assert (= (and b!314495 (not c!49689)) b!314494))

(assert (= (and d!68653 c!49690) b!314497))

(assert (= (and d!68653 (not c!49690)) b!314493))

(assert (= (and b!314493 res!170339) b!314491))

(assert (= (and b!314491 (not res!170340)) b!314499))

(assert (= (and b!314499 (not res!170341)) b!314498))

(declare-fun m!324023 () Bool)

(assert (=> b!314499 m!324023))

(assert (=> b!314491 m!324023))

(assert (=> b!314498 m!324023))

(assert (=> b!314494 m!323927))

(declare-fun m!324025 () Bool)

(assert (=> b!314494 m!324025))

(assert (=> b!314494 m!324025))

(declare-fun m!324027 () Bool)

(assert (=> b!314494 m!324027))

(assert (=> d!68653 m!323927))

(declare-fun m!324029 () Bool)

(assert (=> d!68653 m!324029))

(assert (=> d!68653 m!323935))

(assert (=> b!314340 d!68653))

(declare-fun d!68661 () Bool)

(declare-fun lt!153953 () (_ BitVec 32))

(declare-fun lt!153952 () (_ BitVec 32))

(assert (=> d!68661 (= lt!153953 (bvmul (bvxor lt!153952 (bvlshr lt!153952 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68661 (= lt!153952 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68661 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!170342 (let ((h!5382 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31383 (bvmul (bvxor h!5382 (bvlshr h!5382 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31383 (bvlshr x!31383 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!170342 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!170342 #b00000000000000000000000000000000))))))

(assert (=> d!68661 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!153953 (bvlshr lt!153953 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!314340 d!68661))

(declare-fun b!314520 () Bool)

(declare-fun lt!153954 () SeekEntryResult!2751)

(assert (=> b!314520 (and (bvsge (index!13182 lt!153954) #b00000000000000000000000000000000) (bvslt (index!13182 lt!153954) (size!7952 a!3293)))))

(declare-fun res!170348 () Bool)

(assert (=> b!314520 (= res!170348 (= (select (arr!7600 a!3293) (index!13182 lt!153954)) k!2441))))

(declare-fun e!195864 () Bool)

(assert (=> b!314520 (=> res!170348 e!195864)))

(declare-fun e!195867 () Bool)

(assert (=> b!314520 (= e!195867 e!195864)))

(declare-fun d!68663 () Bool)

(declare-fun e!195866 () Bool)

(assert (=> d!68663 e!195866))

(declare-fun c!49701 () Bool)

(assert (=> d!68663 (= c!49701 (and (is-Intermediate!2751 lt!153954) (undefined!3563 lt!153954)))))

(declare-fun e!195865 () SeekEntryResult!2751)

(assert (=> d!68663 (= lt!153954 e!195865)))

(declare-fun c!49702 () Bool)

(assert (=> d!68663 (= c!49702 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!153955 () (_ BitVec 64))

(assert (=> d!68663 (= lt!153955 (select (arr!7600 a!3293) index!1781))))

(assert (=> d!68663 (validMask!0 mask!3709)))

(assert (=> d!68663 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!153954)))

(declare-fun b!314521 () Bool)

(declare-fun e!195863 () SeekEntryResult!2751)

(assert (=> b!314521 (= e!195863 (Intermediate!2751 false index!1781 x!1427))))

(declare-fun b!314522 () Bool)

(assert (=> b!314522 (= e!195866 e!195867)))

(declare-fun res!170347 () Bool)

(assert (=> b!314522 (= res!170347 (and (is-Intermediate!2751 lt!153954) (not (undefined!3563 lt!153954)) (bvslt (x!31376 lt!153954) #b01111111111111111111111111111110) (bvsge (x!31376 lt!153954) #b00000000000000000000000000000000) (bvsge (x!31376 lt!153954) x!1427)))))

(assert (=> b!314522 (=> (not res!170347) (not e!195867))))

(declare-fun b!314523 () Bool)

(assert (=> b!314523 (= e!195863 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!314524 () Bool)

(assert (=> b!314524 (= e!195865 e!195863)))

(declare-fun c!49700 () Bool)

(assert (=> b!314524 (= c!49700 (or (= lt!153955 k!2441) (= (bvadd lt!153955 lt!153955) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!314525 () Bool)

(assert (=> b!314525 (= e!195865 (Intermediate!2751 true index!1781 x!1427))))

(declare-fun b!314526 () Bool)

(assert (=> b!314526 (= e!195866 (bvsge (x!31376 lt!153954) #b01111111111111111111111111111110))))

(declare-fun b!314527 () Bool)

(assert (=> b!314527 (and (bvsge (index!13182 lt!153954) #b00000000000000000000000000000000) (bvslt (index!13182 lt!153954) (size!7952 a!3293)))))

(assert (=> b!314527 (= e!195864 (= (select (arr!7600 a!3293) (index!13182 lt!153954)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!314528 () Bool)

(assert (=> b!314528 (and (bvsge (index!13182 lt!153954) #b00000000000000000000000000000000) (bvslt (index!13182 lt!153954) (size!7952 a!3293)))))

(declare-fun res!170349 () Bool)

(assert (=> b!314528 (= res!170349 (= (select (arr!7600 a!3293) (index!13182 lt!153954)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314528 (=> res!170349 e!195864)))

(assert (= (and d!68663 c!49702) b!314525))

(assert (= (and d!68663 (not c!49702)) b!314524))

(assert (= (and b!314524 c!49700) b!314521))

(assert (= (and b!314524 (not c!49700)) b!314523))

(assert (= (and d!68663 c!49701) b!314526))

(assert (= (and d!68663 (not c!49701)) b!314522))

(assert (= (and b!314522 res!170347) b!314520))

(assert (= (and b!314520 (not res!170348)) b!314528))

(assert (= (and b!314528 (not res!170349)) b!314527))

(declare-fun m!324031 () Bool)

(assert (=> b!314528 m!324031))

(assert (=> b!314520 m!324031))

(assert (=> b!314527 m!324031))

(declare-fun m!324033 () Bool)

(assert (=> b!314523 m!324033))

(assert (=> b!314523 m!324033))

(declare-fun m!324035 () Bool)

(assert (=> b!314523 m!324035))

(assert (=> d!68663 m!323917))

(assert (=> d!68663 m!323935))

(assert (=> b!314338 d!68663))

(declare-fun b!314569 () Bool)

(declare-fun e!195892 () SeekEntryResult!2751)

(declare-fun lt!153978 () SeekEntryResult!2751)

(assert (=> b!314569 (= e!195892 (MissingZero!2751 (index!13182 lt!153978)))))

(declare-fun b!314570 () Bool)

(declare-fun e!195890 () SeekEntryResult!2751)

(assert (=> b!314570 (= e!195890 Undefined!2751)))

(declare-fun d!68665 () Bool)

(declare-fun lt!153977 () SeekEntryResult!2751)

(assert (=> d!68665 (and (or (is-Undefined!2751 lt!153977) (not (is-Found!2751 lt!153977)) (and (bvsge (index!13181 lt!153977) #b00000000000000000000000000000000) (bvslt (index!13181 lt!153977) (size!7952 a!3293)))) (or (is-Undefined!2751 lt!153977) (is-Found!2751 lt!153977) (not (is-MissingZero!2751 lt!153977)) (and (bvsge (index!13180 lt!153977) #b00000000000000000000000000000000) (bvslt (index!13180 lt!153977) (size!7952 a!3293)))) (or (is-Undefined!2751 lt!153977) (is-Found!2751 lt!153977) (is-MissingZero!2751 lt!153977) (not (is-MissingVacant!2751 lt!153977)) (and (bvsge (index!13183 lt!153977) #b00000000000000000000000000000000) (bvslt (index!13183 lt!153977) (size!7952 a!3293)))) (or (is-Undefined!2751 lt!153977) (ite (is-Found!2751 lt!153977) (= (select (arr!7600 a!3293) (index!13181 lt!153977)) k!2441) (ite (is-MissingZero!2751 lt!153977) (= (select (arr!7600 a!3293) (index!13180 lt!153977)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2751 lt!153977) (= (select (arr!7600 a!3293) (index!13183 lt!153977)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!68665 (= lt!153977 e!195890)))

(declare-fun c!49721 () Bool)

(assert (=> d!68665 (= c!49721 (and (is-Intermediate!2751 lt!153978) (undefined!3563 lt!153978)))))

(assert (=> d!68665 (= lt!153978 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68665 (validMask!0 mask!3709)))

(assert (=> d!68665 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!153977)))

(declare-fun b!314571 () Bool)

(declare-fun e!195891 () SeekEntryResult!2751)

(assert (=> b!314571 (= e!195890 e!195891)))

(declare-fun lt!153976 () (_ BitVec 64))

(assert (=> b!314571 (= lt!153976 (select (arr!7600 a!3293) (index!13182 lt!153978)))))

(declare-fun c!49719 () Bool)

(assert (=> b!314571 (= c!49719 (= lt!153976 k!2441))))

(declare-fun b!314572 () Bool)

(assert (=> b!314572 (= e!195891 (Found!2751 (index!13182 lt!153978)))))

(declare-fun b!314573 () Bool)

(declare-fun c!49720 () Bool)

(assert (=> b!314573 (= c!49720 (= lt!153976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!314573 (= e!195891 e!195892)))

(declare-fun b!314574 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16055 (_ BitVec 32)) SeekEntryResult!2751)

(assert (=> b!314574 (= e!195892 (seekKeyOrZeroReturnVacant!0 (x!31376 lt!153978) (index!13182 lt!153978) (index!13182 lt!153978) k!2441 a!3293 mask!3709))))

(assert (= (and d!68665 c!49721) b!314570))

(assert (= (and d!68665 (not c!49721)) b!314571))

(assert (= (and b!314571 c!49719) b!314572))

(assert (= (and b!314571 (not c!49719)) b!314573))

(assert (= (and b!314573 c!49720) b!314569))

(assert (= (and b!314573 (not c!49720)) b!314574))

(assert (=> d!68665 m!323927))

(assert (=> d!68665 m!323929))

(declare-fun m!324073 () Bool)

(assert (=> d!68665 m!324073))

(declare-fun m!324075 () Bool)

(assert (=> d!68665 m!324075))

(assert (=> d!68665 m!323927))

(assert (=> d!68665 m!323935))

(declare-fun m!324077 () Bool)

(assert (=> d!68665 m!324077))

(declare-fun m!324079 () Bool)

(assert (=> b!314571 m!324079))

(declare-fun m!324081 () Bool)

(assert (=> b!314574 m!324081))

(assert (=> b!314337 d!68665))

(push 1)

(assert (not b!314494))

(assert (not b!314394))

(assert (not d!68653))

(assert (not b!314418))

(assert (not b!314417))

(assert (not d!68665))

(assert (not bm!25970))

(assert (not b!314574))

(assert (not d!68663))

(assert (not b!314523))

(check-sat)

(pop 1)

(push 1)

(check-sat)

