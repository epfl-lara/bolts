; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46790 () Bool)

(assert start!46790)

(declare-fun b!516538 () Bool)

(declare-fun res!316260 () Bool)

(declare-fun e!301432 () Bool)

(assert (=> b!516538 (=> (not res!316260) (not e!301432))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!516538 (= res!316260 (validKeyInArray!0 k!2280))))

(declare-fun b!516539 () Bool)

(declare-fun res!316257 () Bool)

(assert (=> b!516539 (=> (not res!316257) (not e!301432))))

(declare-datatypes ((array!33062 0))(
  ( (array!33063 (arr!15896 (Array (_ BitVec 32) (_ BitVec 64))) (size!16260 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33062)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!516539 (= res!316257 (validKeyInArray!0 (select (arr!15896 a!3235) j!176)))))

(declare-fun b!516540 () Bool)

(declare-fun res!316259 () Bool)

(declare-fun e!301430 () Bool)

(assert (=> b!516540 (=> (not res!316259) (not e!301430))))

(declare-datatypes ((List!10107 0))(
  ( (Nil!10104) (Cons!10103 (h!11001 (_ BitVec 64)) (t!16343 List!10107)) )
))
(declare-fun arrayNoDuplicates!0 (array!33062 (_ BitVec 32) List!10107) Bool)

(assert (=> b!516540 (= res!316259 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10104))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!516541 () Bool)

(declare-fun e!301429 () Bool)

(declare-datatypes ((SeekEntryResult!4370 0))(
  ( (MissingZero!4370 (index!19668 (_ BitVec 32))) (Found!4370 (index!19669 (_ BitVec 32))) (Intermediate!4370 (undefined!5182 Bool) (index!19670 (_ BitVec 32)) (x!48648 (_ BitVec 32))) (Undefined!4370) (MissingVacant!4370 (index!19671 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33062 (_ BitVec 32)) SeekEntryResult!4370)

(assert (=> b!516541 (= e!301429 (= (seekEntryOrOpen!0 (select (arr!15896 a!3235) j!176) a!3235 mask!3524) (Found!4370 j!176)))))

(declare-fun b!516542 () Bool)

(declare-fun e!301428 () Bool)

(assert (=> b!516542 (= e!301430 (not e!301428))))

(declare-fun res!316255 () Bool)

(assert (=> b!516542 (=> res!316255 e!301428)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!236512 () SeekEntryResult!4370)

(declare-fun lt!236515 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33062 (_ BitVec 32)) SeekEntryResult!4370)

(assert (=> b!516542 (= res!316255 (= lt!236512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236515 (select (store (arr!15896 a!3235) i!1204 k!2280) j!176) (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235)) mask!3524)))))

(declare-fun lt!236516 () (_ BitVec 32))

(assert (=> b!516542 (= lt!236512 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236516 (select (arr!15896 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516542 (= lt!236515 (toIndex!0 (select (store (arr!15896 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!516542 (= lt!236516 (toIndex!0 (select (arr!15896 a!3235) j!176) mask!3524))))

(assert (=> b!516542 e!301429))

(declare-fun res!316262 () Bool)

(assert (=> b!516542 (=> (not res!316262) (not e!301429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33062 (_ BitVec 32)) Bool)

(assert (=> b!516542 (= res!316262 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15990 0))(
  ( (Unit!15991) )
))
(declare-fun lt!236514 () Unit!15990)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33062 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15990)

(assert (=> b!516542 (= lt!236514 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!316261 () Bool)

(assert (=> start!46790 (=> (not res!316261) (not e!301432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46790 (= res!316261 (validMask!0 mask!3524))))

(assert (=> start!46790 e!301432))

(assert (=> start!46790 true))

(declare-fun array_inv!11670 (array!33062) Bool)

(assert (=> start!46790 (array_inv!11670 a!3235)))

(declare-fun b!516543 () Bool)

(declare-fun res!316258 () Bool)

(assert (=> b!516543 (=> (not res!316258) (not e!301430))))

(assert (=> b!516543 (= res!316258 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!516544 () Bool)

(declare-fun res!316253 () Bool)

(assert (=> b!516544 (=> res!316253 e!301428)))

(assert (=> b!516544 (= res!316253 (or (undefined!5182 lt!236512) (not (is-Intermediate!4370 lt!236512))))))

(declare-fun b!516545 () Bool)

(declare-fun res!316254 () Bool)

(assert (=> b!516545 (=> (not res!316254) (not e!301432))))

(assert (=> b!516545 (= res!316254 (and (= (size!16260 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16260 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16260 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!516546 () Bool)

(declare-fun res!316252 () Bool)

(assert (=> b!516546 (=> (not res!316252) (not e!301432))))

(declare-fun arrayContainsKey!0 (array!33062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!516546 (= res!316252 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!516547 () Bool)

(assert (=> b!516547 (= e!301432 e!301430)))

(declare-fun res!316256 () Bool)

(assert (=> b!516547 (=> (not res!316256) (not e!301430))))

(declare-fun lt!236513 () SeekEntryResult!4370)

(assert (=> b!516547 (= res!316256 (or (= lt!236513 (MissingZero!4370 i!1204)) (= lt!236513 (MissingVacant!4370 i!1204))))))

(assert (=> b!516547 (= lt!236513 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!516548 () Bool)

(assert (=> b!516548 (= e!301428 (or (not (= (select (arr!15896 a!3235) (index!19670 lt!236512)) (select (arr!15896 a!3235) j!176))) (bvsgt (x!48648 lt!236512) #b01111111111111111111111111111110) (bvsle #b00000000000000000000000000000000 (x!48648 lt!236512))))))

(assert (=> b!516548 (and (bvslt (x!48648 lt!236512) #b01111111111111111111111111111110) (or (= (select (arr!15896 a!3235) (index!19670 lt!236512)) (select (arr!15896 a!3235) j!176)) (= (select (arr!15896 a!3235) (index!19670 lt!236512)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15896 a!3235) (index!19670 lt!236512)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!46790 res!316261) b!516545))

(assert (= (and b!516545 res!316254) b!516539))

(assert (= (and b!516539 res!316257) b!516538))

(assert (= (and b!516538 res!316260) b!516546))

(assert (= (and b!516546 res!316252) b!516547))

(assert (= (and b!516547 res!316256) b!516543))

(assert (= (and b!516543 res!316258) b!516540))

(assert (= (and b!516540 res!316259) b!516542))

(assert (= (and b!516542 res!316262) b!516541))

(assert (= (and b!516542 (not res!316255)) b!516544))

(assert (= (and b!516544 (not res!316253)) b!516548))

(declare-fun m!498107 () Bool)

(assert (=> b!516543 m!498107))

(declare-fun m!498109 () Bool)

(assert (=> b!516542 m!498109))

(declare-fun m!498111 () Bool)

(assert (=> b!516542 m!498111))

(declare-fun m!498113 () Bool)

(assert (=> b!516542 m!498113))

(declare-fun m!498115 () Bool)

(assert (=> b!516542 m!498115))

(assert (=> b!516542 m!498113))

(declare-fun m!498117 () Bool)

(assert (=> b!516542 m!498117))

(assert (=> b!516542 m!498113))

(declare-fun m!498119 () Bool)

(assert (=> b!516542 m!498119))

(assert (=> b!516542 m!498111))

(declare-fun m!498121 () Bool)

(assert (=> b!516542 m!498121))

(declare-fun m!498123 () Bool)

(assert (=> b!516542 m!498123))

(assert (=> b!516542 m!498111))

(declare-fun m!498125 () Bool)

(assert (=> b!516542 m!498125))

(declare-fun m!498127 () Bool)

(assert (=> b!516538 m!498127))

(assert (=> b!516541 m!498113))

(assert (=> b!516541 m!498113))

(declare-fun m!498129 () Bool)

(assert (=> b!516541 m!498129))

(declare-fun m!498131 () Bool)

(assert (=> b!516540 m!498131))

(declare-fun m!498133 () Bool)

(assert (=> b!516546 m!498133))

(assert (=> b!516539 m!498113))

(assert (=> b!516539 m!498113))

(declare-fun m!498135 () Bool)

(assert (=> b!516539 m!498135))

(declare-fun m!498137 () Bool)

(assert (=> b!516548 m!498137))

(assert (=> b!516548 m!498113))

(declare-fun m!498139 () Bool)

(assert (=> b!516547 m!498139))

(declare-fun m!498141 () Bool)

(assert (=> start!46790 m!498141))

(declare-fun m!498143 () Bool)

(assert (=> start!46790 m!498143))

(push 1)

(assert (not b!516538))

(assert (not b!516547))

(assert (not b!516541))

(assert (not b!516546))

(assert (not b!516539))

(assert (not b!516543))

(assert (not start!46790))

(assert (not b!516542))

(assert (not b!516540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!516611 () Bool)

(declare-fun e!301469 () Bool)

(declare-fun call!31643 () Bool)

(assert (=> b!516611 (= e!301469 call!31643)))

(declare-fun b!516612 () Bool)

(declare-fun e!301471 () Bool)

(assert (=> b!516612 (= e!301471 call!31643)))

(declare-fun d!79461 () Bool)

(declare-fun res!316275 () Bool)

(declare-fun e!301470 () Bool)

(assert (=> d!79461 (=> res!316275 e!301470)))

(assert (=> d!79461 (= res!316275 (bvsge j!176 (size!16260 a!3235)))))

(assert (=> d!79461 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!301470)))

(declare-fun b!516613 () Bool)

(assert (=> b!516613 (= e!301471 e!301469)))

(declare-fun lt!236562 () (_ BitVec 64))

(assert (=> b!516613 (= lt!236562 (select (arr!15896 a!3235) j!176))))

(declare-fun lt!236564 () Unit!15990)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33062 (_ BitVec 64) (_ BitVec 32)) Unit!15990)

(assert (=> b!516613 (= lt!236564 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236562 j!176))))

(assert (=> b!516613 (arrayContainsKey!0 a!3235 lt!236562 #b00000000000000000000000000000000)))

(declare-fun lt!236563 () Unit!15990)

(assert (=> b!516613 (= lt!236563 lt!236564)))

(declare-fun res!316274 () Bool)

(assert (=> b!516613 (= res!316274 (= (seekEntryOrOpen!0 (select (arr!15896 a!3235) j!176) a!3235 mask!3524) (Found!4370 j!176)))))

(assert (=> b!516613 (=> (not res!316274) (not e!301469))))

(declare-fun bm!31640 () Bool)

(assert (=> bm!31640 (= call!31643 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!516614 () Bool)

(assert (=> b!516614 (= e!301470 e!301471)))

(declare-fun c!60458 () Bool)

(assert (=> b!516614 (= c!60458 (validKeyInArray!0 (select (arr!15896 a!3235) j!176)))))

(assert (= (and d!79461 (not res!316275)) b!516614))

(assert (= (and b!516614 c!60458) b!516613))

(assert (= (and b!516614 (not c!60458)) b!516612))

(assert (= (and b!516613 res!316274) b!516611))

(assert (= (or b!516611 b!516612) bm!31640))

(assert (=> b!516613 m!498113))

(declare-fun m!498193 () Bool)

(assert (=> b!516613 m!498193))

(declare-fun m!498195 () Bool)

(assert (=> b!516613 m!498195))

(assert (=> b!516613 m!498113))

(assert (=> b!516613 m!498129))

(declare-fun m!498197 () Bool)

(assert (=> bm!31640 m!498197))

(assert (=> b!516614 m!498113))

(assert (=> b!516614 m!498113))

(assert (=> b!516614 m!498135))

(assert (=> b!516542 d!79461))

(declare-fun d!79471 () Bool)

(assert (=> d!79471 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!236567 () Unit!15990)

(declare-fun choose!38 (array!33062 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15990)

(assert (=> d!79471 (= lt!236567 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79471 (validMask!0 mask!3524)))

(assert (=> d!79471 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!236567)))

(declare-fun bs!16324 () Bool)

(assert (= bs!16324 d!79471))

(assert (=> bs!16324 m!498117))

(declare-fun m!498199 () Bool)

(assert (=> bs!16324 m!498199))

(assert (=> bs!16324 m!498141))

(assert (=> b!516542 d!79471))

(declare-fun d!79479 () Bool)

(declare-fun lt!236573 () (_ BitVec 32))

(declare-fun lt!236572 () (_ BitVec 32))

(assert (=> d!79479 (= lt!236573 (bvmul (bvxor lt!236572 (bvlshr lt!236572 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79479 (= lt!236572 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15896 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15896 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79479 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316282 (let ((h!11003 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15896 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15896 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48650 (bvmul (bvxor h!11003 (bvlshr h!11003 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48650 (bvlshr x!48650 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316282 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316282 #b00000000000000000000000000000000))))))

(assert (=> d!79479 (= (toIndex!0 (select (store (arr!15896 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!236573 (bvlshr lt!236573 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516542 d!79479))

(declare-fun lt!236594 () SeekEntryResult!4370)

(declare-fun b!516690 () Bool)

(assert (=> b!516690 (and (bvsge (index!19670 lt!236594) #b00000000000000000000000000000000) (bvslt (index!19670 lt!236594) (size!16260 (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235)))))))

(declare-fun res!316311 () Bool)

(assert (=> b!516690 (= res!316311 (= (select (arr!15896 (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235))) (index!19670 lt!236594)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301522 () Bool)

(assert (=> b!516690 (=> res!316311 e!301522)))

(declare-fun b!516691 () Bool)

(assert (=> b!516691 (and (bvsge (index!19670 lt!236594) #b00000000000000000000000000000000) (bvslt (index!19670 lt!236594) (size!16260 (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235)))))))

(declare-fun res!316312 () Bool)

(assert (=> b!516691 (= res!316312 (= (select (arr!15896 (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235))) (index!19670 lt!236594)) (select (store (arr!15896 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!516691 (=> res!316312 e!301522)))

(declare-fun e!301520 () Bool)

(assert (=> b!516691 (= e!301520 e!301522)))

(declare-fun b!516692 () Bool)

(declare-fun e!301523 () SeekEntryResult!4370)

(declare-fun e!301524 () SeekEntryResult!4370)

(assert (=> b!516692 (= e!301523 e!301524)))

(declare-fun lt!236595 () (_ BitVec 64))

(declare-fun c!60480 () Bool)

(assert (=> b!516692 (= c!60480 (or (= lt!236595 (select (store (arr!15896 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!236595 lt!236595) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516693 () Bool)

(declare-fun e!301521 () Bool)

(assert (=> b!516693 (= e!301521 e!301520)))

(declare-fun res!316313 () Bool)

(assert (=> b!516693 (= res!316313 (and (is-Intermediate!4370 lt!236594) (not (undefined!5182 lt!236594)) (bvslt (x!48648 lt!236594) #b01111111111111111111111111111110) (bvsge (x!48648 lt!236594) #b00000000000000000000000000000000) (bvsge (x!48648 lt!236594) #b00000000000000000000000000000000)))))

(assert (=> b!516693 (=> (not res!316313) (not e!301520))))

(declare-fun b!516694 () Bool)

(assert (=> b!516694 (= e!301523 (Intermediate!4370 true lt!236515 #b00000000000000000000000000000000))))

(declare-fun d!79483 () Bool)

(assert (=> d!79483 e!301521))

(declare-fun c!60482 () Bool)

(assert (=> d!79483 (= c!60482 (and (is-Intermediate!4370 lt!236594) (undefined!5182 lt!236594)))))

(assert (=> d!79483 (= lt!236594 e!301523)))

(declare-fun c!60481 () Bool)

(assert (=> d!79483 (= c!60481 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79483 (= lt!236595 (select (arr!15896 (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235))) lt!236515))))

(assert (=> d!79483 (validMask!0 mask!3524)))

(assert (=> d!79483 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236515 (select (store (arr!15896 a!3235) i!1204 k!2280) j!176) (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235)) mask!3524) lt!236594)))

(declare-fun b!516695 () Bool)

(assert (=> b!516695 (and (bvsge (index!19670 lt!236594) #b00000000000000000000000000000000) (bvslt (index!19670 lt!236594) (size!16260 (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235)))))))

(assert (=> b!516695 (= e!301522 (= (select (arr!15896 (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235))) (index!19670 lt!236594)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!516696 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!516696 (= e!301524 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236515 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15896 a!3235) i!1204 k!2280) j!176) (array!33063 (store (arr!15896 a!3235) i!1204 k!2280) (size!16260 a!3235)) mask!3524))))

(declare-fun b!516697 () Bool)

(assert (=> b!516697 (= e!301524 (Intermediate!4370 false lt!236515 #b00000000000000000000000000000000))))

(declare-fun b!516698 () Bool)

(assert (=> b!516698 (= e!301521 (bvsge (x!48648 lt!236594) #b01111111111111111111111111111110))))

(assert (= (and d!79483 c!60481) b!516694))

(assert (= (and d!79483 (not c!60481)) b!516692))

(assert (= (and b!516692 c!60480) b!516697))

(assert (= (and b!516692 (not c!60480)) b!516696))

(assert (= (and d!79483 c!60482) b!516698))

(assert (= (and d!79483 (not c!60482)) b!516693))

(assert (= (and b!516693 res!316313) b!516691))

(assert (= (and b!516691 (not res!316312)) b!516690))

(assert (= (and b!516690 (not res!316311)) b!516695))

(declare-fun m!498227 () Bool)

(assert (=> b!516695 m!498227))

(assert (=> b!516691 m!498227))

(declare-fun m!498229 () Bool)

(assert (=> d!79483 m!498229))

(assert (=> d!79483 m!498141))

(declare-fun m!498231 () Bool)

(assert (=> b!516696 m!498231))

(assert (=> b!516696 m!498231))

(assert (=> b!516696 m!498111))

(declare-fun m!498233 () Bool)

(assert (=> b!516696 m!498233))

(assert (=> b!516690 m!498227))

(assert (=> b!516542 d!79483))

(declare-fun d!79501 () Bool)

(declare-fun lt!236597 () (_ BitVec 32))

(declare-fun lt!236596 () (_ BitVec 32))

(assert (=> d!79501 (= lt!236597 (bvmul (bvxor lt!236596 (bvlshr lt!236596 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79501 (= lt!236596 ((_ extract 31 0) (bvand (bvxor (select (arr!15896 a!3235) j!176) (bvlshr (select (arr!15896 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79501 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!316282 (let ((h!11003 ((_ extract 31 0) (bvand (bvxor (select (arr!15896 a!3235) j!176) (bvlshr (select (arr!15896 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48650 (bvmul (bvxor h!11003 (bvlshr h!11003 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48650 (bvlshr x!48650 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!316282 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!316282 #b00000000000000000000000000000000))))))

(assert (=> d!79501 (= (toIndex!0 (select (arr!15896 a!3235) j!176) mask!3524) (bvand (bvxor lt!236597 (bvlshr lt!236597 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!516542 d!79501))

(declare-fun b!516707 () Bool)

(declare-fun lt!236602 () SeekEntryResult!4370)

(assert (=> b!516707 (and (bvsge (index!19670 lt!236602) #b00000000000000000000000000000000) (bvslt (index!19670 lt!236602) (size!16260 a!3235)))))

(declare-fun res!316314 () Bool)

(assert (=> b!516707 (= res!316314 (= (select (arr!15896 a!3235) (index!19670 lt!236602)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301531 () Bool)

(assert (=> b!516707 (=> res!316314 e!301531)))

(declare-fun b!516708 () Bool)

(assert (=> b!516708 (and (bvsge (index!19670 lt!236602) #b00000000000000000000000000000000) (bvslt (index!19670 lt!236602) (size!16260 a!3235)))))

(declare-fun res!316315 () Bool)

(assert (=> b!516708 (= res!316315 (= (select (arr!15896 a!3235) (index!19670 lt!236602)) (select (arr!15896 a!3235) j!176)))))

(assert (=> b!516708 (=> res!316315 e!301531)))

(declare-fun e!301529 () Bool)

(assert (=> b!516708 (= e!301529 e!301531)))

(declare-fun b!516709 () Bool)

(declare-fun e!301532 () SeekEntryResult!4370)

(declare-fun e!301533 () SeekEntryResult!4370)

(assert (=> b!516709 (= e!301532 e!301533)))

(declare-fun lt!236603 () (_ BitVec 64))

(declare-fun c!60487 () Bool)

(assert (=> b!516709 (= c!60487 (or (= lt!236603 (select (arr!15896 a!3235) j!176)) (= (bvadd lt!236603 lt!236603) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!516710 () Bool)

(declare-fun e!301530 () Bool)

(assert (=> b!516710 (= e!301530 e!301529)))

(declare-fun res!316316 () Bool)

(assert (=> b!516710 (= res!316316 (and (is-Intermediate!4370 lt!236602) (not (undefined!5182 lt!236602)) (bvslt (x!48648 lt!236602) #b01111111111111111111111111111110) (bvsge (x!48648 lt!236602) #b00000000000000000000000000000000) (bvsge (x!48648 lt!236602) #b00000000000000000000000000000000)))))

(assert (=> b!516710 (=> (not res!316316) (not e!301529))))

(declare-fun b!516711 () Bool)

(assert (=> b!516711 (= e!301532 (Intermediate!4370 true lt!236516 #b00000000000000000000000000000000))))

(declare-fun d!79503 () Bool)

(assert (=> d!79503 e!301530))

(declare-fun c!60489 () Bool)

(assert (=> d!79503 (= c!60489 (and (is-Intermediate!4370 lt!236602) (undefined!5182 lt!236602)))))

(assert (=> d!79503 (= lt!236602 e!301532)))

(declare-fun c!60488 () Bool)

(assert (=> d!79503 (= c!60488 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79503 (= lt!236603 (select (arr!15896 a!3235) lt!236516))))

(assert (=> d!79503 (validMask!0 mask!3524)))

(assert (=> d!79503 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!236516 (select (arr!15896 a!3235) j!176) a!3235 mask!3524) lt!236602)))

(declare-fun b!516712 () Bool)

(assert (=> b!516712 (and (bvsge (index!19670 lt!236602) #b00000000000000000000000000000000) (bvslt (index!19670 lt!236602) (size!16260 a!3235)))))

(assert (=> b!516712 (= e!301531 (= (select (arr!15896 a!3235) (index!19670 lt!236602)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!516713 () Bool)

(assert (=> b!516713 (= e!301533 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!236516 #b00000000000000000000000000000000 mask!3524) (select (arr!15896 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!516714 () Bool)

(assert (=> b!516714 (= e!301533 (Intermediate!4370 false lt!236516 #b00000000000000000000000000000000))))

(declare-fun b!516715 () Bool)

(assert (=> b!516715 (= e!301530 (bvsge (x!48648 lt!236602) #b01111111111111111111111111111110))))

(assert (= (and d!79503 c!60488) b!516711))

(assert (= (and d!79503 (not c!60488)) b!516709))

(assert (= (and b!516709 c!60487) b!516714))

(assert (= (and b!516709 (not c!60487)) b!516713))

(assert (= (and d!79503 c!60489) b!516715))

(assert (= (and d!79503 (not c!60489)) b!516710))

(assert (= (and b!516710 res!316316) b!516708))

(assert (= (and b!516708 (not res!316315)) b!516707))

(assert (= (and b!516707 (not res!316314)) b!516712))

(declare-fun m!498235 () Bool)

(assert (=> b!516712 m!498235))

(assert (=> b!516708 m!498235))

(declare-fun m!498237 () Bool)

(assert (=> d!79503 m!498237))

(assert (=> d!79503 m!498141))

(declare-fun m!498239 () Bool)

(assert (=> b!516713 m!498239))

(assert (=> b!516713 m!498239))

(assert (=> b!516713 m!498113))

(declare-fun m!498241 () Bool)

(assert (=> b!516713 m!498241))

(assert (=> b!516707 m!498235))

(assert (=> b!516542 d!79503))

(declare-fun b!516724 () Bool)

(declare-fun e!301540 () Bool)

(declare-fun call!31647 () Bool)

(assert (=> b!516724 (= e!301540 call!31647)))

(declare-fun b!516725 () Bool)

(declare-fun e!301542 () Bool)

(assert (=> b!516725 (= e!301542 call!31647)))

(declare-fun d!79505 () Bool)

(declare-fun res!316322 () Bool)

(declare-fun e!301541 () Bool)

(assert (=> d!79505 (=> res!316322 e!301541)))

(assert (=> d!79505 (= res!316322 (bvsge #b00000000000000000000000000000000 (size!16260 a!3235)))))

(assert (=> d!79505 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!301541)))

(declare-fun b!516726 () Bool)

(assert (=> b!516726 (= e!301542 e!301540)))

(declare-fun lt!236604 () (_ BitVec 64))

(assert (=> b!516726 (= lt!236604 (select (arr!15896 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!236606 () Unit!15990)

(assert (=> b!516726 (= lt!236606 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!236604 #b00000000000000000000000000000000))))

(assert (=> b!516726 (arrayContainsKey!0 a!3235 lt!236604 #b00000000000000000000000000000000)))

(declare-fun lt!236605 () Unit!15990)

(assert (=> b!516726 (= lt!236605 lt!236606)))

(declare-fun res!316321 () Bool)

(assert (=> b!516726 (= res!316321 (= (seekEntryOrOpen!0 (select (arr!15896 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4370 #b00000000000000000000000000000000)))))

(assert (=> b!516726 (=> (not res!316321) (not e!301540))))

(declare-fun bm!31644 () Bool)

(assert (=> bm!31644 (= call!31647 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!516727 () Bool)

(assert (=> b!516727 (= e!301541 e!301542)))

(declare-fun c!60492 () Bool)

(assert (=> b!516727 (= c!60492 (validKeyInArray!0 (select (arr!15896 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79505 (not res!316322)) b!516727))

(assert (= (and b!516727 c!60492) b!516726))

(assert (= (and b!516727 (not c!60492)) b!516725))

(assert (= (and b!516726 res!316321) b!516724))

(assert (= (or b!516724 b!516725) bm!31644))

(declare-fun m!498243 () Bool)

(assert (=> b!516726 m!498243))

(declare-fun m!498245 () Bool)

(assert (=> b!516726 m!498245))

(declare-fun m!498247 () Bool)

(assert (=> b!516726 m!498247))

(assert (=> b!516726 m!498243))

(declare-fun m!498250 () Bool)

(assert (=> b!516726 m!498250))

(declare-fun m!498253 () Bool)

(assert (=> bm!31644 m!498253))

(assert (=> b!516727 m!498243))

(assert (=> b!516727 m!498243))

(declare-fun m!498257 () Bool)

(assert (=> b!516727 m!498257))

(assert (=> b!516543 d!79505))

(declare-fun d!79509 () Bool)

(assert (=> d!79509 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46790 d!79509))

(declare-fun d!79523 () Bool)

(assert (=> d!79523 (= (array_inv!11670 a!3235) (bvsge (size!16260 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46790 d!79523))

(declare-fun b!516807 () Bool)

(declare-fun e!301597 () SeekEntryResult!4370)

(declare-fun lt!236642 () SeekEntryResult!4370)

(assert (=> b!516807 (= e!301597 (Found!4370 (index!19670 lt!236642)))))

(declare-fun b!516808 () Bool)

(declare-fun c!60516 () Bool)

(declare-fun lt!236640 () (_ BitVec 64))

(assert (=> b!516808 (= c!60516 (= lt!236640 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!301596 () SeekEntryResult!4370)

(assert (=> b!516808 (= e!301597 e!301596)))

(declare-fun b!516809 () Bool)

(declare-fun e!301595 () SeekEntryResult!4370)

(assert (=> b!516809 (= e!301595 e!301597)))

(assert (=> b!516809 (= lt!236640 (select (arr!15896 a!3235) (index!19670 lt!236642)))))

(declare-fun c!60517 () Bool)

(assert (=> b!516809 (= c!60517 (= lt!236640 (select (arr!15896 a!3235) j!176)))))

(declare-fun b!516810 () Bool)

(assert (=> b!516810 (= e!301596 (MissingZero!4370 (index!19670 lt!236642)))))

(declare-fun d!79525 () Bool)

(declare-fun lt!236641 () SeekEntryResult!4370)

(assert (=> d!79525 (and (or (is-Undefined!4370 lt!236641) (not (is-Found!4370 lt!236641)) (and (bvsge (index!19669 lt!236641) #b00000000000000000000000000000000) (bvslt (index!19669 lt!236641) (size!16260 a!3235)))) (or (is-Undefined!4370 lt!236641) (is-Found!4370 lt!236641) (not (is-MissingZero!4370 lt!236641)) (and (bvsge (index!19668 lt!236641) #b00000000000000000000000000000000) (bvslt (index!19668 lt!236641) (size!16260 a!3235)))) (or (is-Undefined!4370 lt!236641) (is-Found!4370 lt!236641) (is-MissingZero!4370 lt!236641) (not (is-MissingVacant!4370 lt!236641)) (and (bvsge (index!19671 lt!236641) #b00000000000000000000000000000000) (bvslt (index!19671 lt!236641) (size!16260 a!3235)))) (or (is-Undefined!4370 lt!236641) (ite (is-Found!4370 lt!236641) (= (select (arr!15896 a!3235) (index!19669 lt!236641)) (select (arr!15896 a!3235) j!176)) (ite (is-MissingZero!4370 lt!236641) (= (select (arr!15896 a!3235) (index!19668 lt!236641)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4370 lt!236641) (= (select (arr!15896 a!3235) (index!19671 lt!236641)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79525 (= lt!236641 e!301595)))

