; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!31866 () Bool)

(assert start!31866)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-datatypes ((array!16235 0))(
  ( (array!16236 (arr!7681 (Array (_ BitVec 32) (_ BitVec 64))) (size!8033 (_ BitVec 32))) )
))
(declare-fun lt!155364 () array!16235)

(declare-fun e!197822 () Bool)

(declare-fun b!318369 () Bool)

(declare-fun lt!155365 () (_ BitVec 32))

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2832 0))(
  ( (MissingZero!2832 (index!13504 (_ BitVec 32))) (Found!2832 (index!13505 (_ BitVec 32))) (Intermediate!2832 (undefined!3644 Bool) (index!13506 (_ BitVec 32)) (x!31724 (_ BitVec 32))) (Undefined!2832) (MissingVacant!2832 (index!13507 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16235 (_ BitVec 32)) SeekEntryResult!2832)

(assert (=> b!318369 (= e!197822 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155364 mask!3709) (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155365 k!2441 lt!155364 mask!3709)))))

(declare-fun a!3293 () array!16235)

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!318369 (= lt!155364 (array!16236 (store (arr!7681 a!3293) i!1240 k!2441) (size!8033 a!3293)))))

(declare-fun b!318371 () Bool)

(declare-fun e!197824 () Bool)

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!318371 (= e!197824 (not (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1427) resX!52) (bvslt (bvadd #b00000000000000000000000000000001 x!1427) #b00000000000000000000000000000000) (and (bvsge lt!155365 #b00000000000000000000000000000000) (bvslt lt!155365 (size!8033 a!3293))))))))

(assert (=> b!318371 e!197822))

(declare-fun res!173107 () Bool)

(assert (=> b!318371 (=> (not res!173107) (not e!197822))))

(declare-fun lt!155363 () SeekEntryResult!2832)

(assert (=> b!318371 (= res!173107 (= lt!155363 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155365 k!2441 a!3293 mask!3709)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318371 (= lt!155365 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!318372 () Bool)

(declare-fun res!173108 () Bool)

(declare-fun e!197820 () Bool)

(assert (=> b!318372 (=> (not res!173108) (not e!197820))))

(declare-fun arrayContainsKey!0 (array!16235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!318372 (= res!173108 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!318373 () Bool)

(declare-fun res!173111 () Bool)

(declare-fun e!197821 () Bool)

(assert (=> b!318373 (=> (not res!173111) (not e!197821))))

(declare-fun resIndex!52 () (_ BitVec 32))

(assert (=> b!318373 (= res!173111 (and (= (select (arr!7681 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!8033 a!3293))))))

(declare-fun b!318374 () Bool)

(declare-fun res!173112 () Bool)

(assert (=> b!318374 (=> (not res!173112) (not e!197820))))

(assert (=> b!318374 (= res!173112 (and (= (size!8033 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!8033 a!3293))))))

(declare-fun b!318375 () Bool)

(declare-fun res!173115 () Bool)

(assert (=> b!318375 (=> (not res!173115) (not e!197820))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!318375 (= res!173115 (validKeyInArray!0 k!2441))))

(declare-fun b!318376 () Bool)

(declare-fun res!173113 () Bool)

(assert (=> b!318376 (=> (not res!173113) (not e!197820))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16235 (_ BitVec 32)) SeekEntryResult!2832)

(assert (=> b!318376 (= res!173113 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2832 i!1240)))))

(declare-fun b!318377 () Bool)

(assert (=> b!318377 (= e!197820 e!197821)))

(declare-fun res!173106 () Bool)

(assert (=> b!318377 (=> (not res!173106) (not e!197821))))

(declare-fun lt!155366 () SeekEntryResult!2832)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!318377 (= res!173106 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155366))))

(assert (=> b!318377 (= lt!155366 (Intermediate!2832 false resIndex!52 resX!52))))

(declare-fun b!318378 () Bool)

(declare-fun res!173109 () Bool)

(assert (=> b!318378 (=> (not res!173109) (not e!197820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16235 (_ BitVec 32)) Bool)

(assert (=> b!318378 (= res!173109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!318370 () Bool)

(assert (=> b!318370 (= e!197821 e!197824)))

(declare-fun res!173110 () Bool)

(assert (=> b!318370 (=> (not res!173110) (not e!197824))))

(assert (=> b!318370 (= res!173110 (and (= lt!155363 lt!155366) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7681 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!318370 (= lt!155363 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun res!173114 () Bool)

(assert (=> start!31866 (=> (not res!173114) (not e!197820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!31866 (= res!173114 (validMask!0 mask!3709))))

(assert (=> start!31866 e!197820))

(declare-fun array_inv!5635 (array!16235) Bool)

(assert (=> start!31866 (array_inv!5635 a!3293)))

(assert (=> start!31866 true))

(assert (= (and start!31866 res!173114) b!318374))

(assert (= (and b!318374 res!173112) b!318375))

(assert (= (and b!318375 res!173115) b!318372))

(assert (= (and b!318372 res!173108) b!318376))

(assert (= (and b!318376 res!173113) b!318378))

(assert (= (and b!318378 res!173109) b!318377))

(assert (= (and b!318377 res!173106) b!318373))

(assert (= (and b!318373 res!173111) b!318370))

(assert (= (and b!318370 res!173110) b!318371))

(assert (= (and b!318371 res!173107) b!318369))

(declare-fun m!327121 () Bool)

(assert (=> b!318373 m!327121))

(declare-fun m!327123 () Bool)

(assert (=> b!318369 m!327123))

(declare-fun m!327125 () Bool)

(assert (=> b!318369 m!327125))

(declare-fun m!327127 () Bool)

(assert (=> b!318369 m!327127))

(declare-fun m!327129 () Bool)

(assert (=> b!318378 m!327129))

(declare-fun m!327131 () Bool)

(assert (=> b!318370 m!327131))

(declare-fun m!327133 () Bool)

(assert (=> b!318370 m!327133))

(declare-fun m!327135 () Bool)

(assert (=> b!318372 m!327135))

(declare-fun m!327137 () Bool)

(assert (=> b!318371 m!327137))

(declare-fun m!327139 () Bool)

(assert (=> b!318371 m!327139))

(declare-fun m!327141 () Bool)

(assert (=> b!318377 m!327141))

(assert (=> b!318377 m!327141))

(declare-fun m!327143 () Bool)

(assert (=> b!318377 m!327143))

(declare-fun m!327145 () Bool)

(assert (=> b!318376 m!327145))

(declare-fun m!327147 () Bool)

(assert (=> b!318375 m!327147))

(declare-fun m!327149 () Bool)

(assert (=> start!31866 m!327149))

(declare-fun m!327151 () Bool)

(assert (=> start!31866 m!327151))

(push 1)

(assert (not b!318376))

(assert (not b!318378))

(assert (not start!31866))

(assert (not b!318377))

(assert (not b!318370))

(assert (not b!318369))

(assert (not b!318371))

(assert (not b!318372))

(assert (not b!318375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!318513 () Bool)

(declare-fun e!197899 () SeekEntryResult!2832)

(assert (=> b!318513 (= e!197899 (Intermediate!2832 false index!1781 x!1427))))

(declare-fun b!318514 () Bool)

(declare-fun e!197902 () Bool)

(declare-fun e!197901 () Bool)

(assert (=> b!318514 (= e!197902 e!197901)))

(declare-fun res!173205 () Bool)

(declare-fun lt!155414 () SeekEntryResult!2832)

(assert (=> b!318514 (= res!173205 (and (is-Intermediate!2832 lt!155414) (not (undefined!3644 lt!155414)) (bvslt (x!31724 lt!155414) #b01111111111111111111111111111110) (bvsge (x!31724 lt!155414) #b00000000000000000000000000000000) (bvsge (x!31724 lt!155414) x!1427)))))

(assert (=> b!318514 (=> (not res!173205) (not e!197901))))

(declare-fun b!318515 () Bool)

(assert (=> b!318515 (and (bvsge (index!13506 lt!155414) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155414) (size!8033 lt!155364)))))

(declare-fun res!173204 () Bool)

(assert (=> b!318515 (= res!173204 (= (select (arr!7681 lt!155364) (index!13506 lt!155414)) k!2441))))

(declare-fun e!197903 () Bool)

(assert (=> b!318515 (=> res!173204 e!197903)))

(assert (=> b!318515 (= e!197901 e!197903)))

(declare-fun b!318516 () Bool)

(assert (=> b!318516 (= e!197902 (bvsge (x!31724 lt!155414) #b01111111111111111111111111111110))))

(declare-fun b!318517 () Bool)

(assert (=> b!318517 (and (bvsge (index!13506 lt!155414) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155414) (size!8033 lt!155364)))))

(declare-fun res!173203 () Bool)

(assert (=> b!318517 (= res!173203 (= (select (arr!7681 lt!155364) (index!13506 lt!155414)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318517 (=> res!173203 e!197903)))

(declare-fun b!318518 () Bool)

(assert (=> b!318518 (= e!197899 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 lt!155364 mask!3709))))

(declare-fun b!318519 () Bool)

(assert (=> b!318519 (and (bvsge (index!13506 lt!155414) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155414) (size!8033 lt!155364)))))

(assert (=> b!318519 (= e!197903 (= (select (arr!7681 lt!155364) (index!13506 lt!155414)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!69095 () Bool)

(assert (=> d!69095 e!197902))

(declare-fun c!50277 () Bool)

(assert (=> d!69095 (= c!50277 (and (is-Intermediate!2832 lt!155414) (undefined!3644 lt!155414)))))

(declare-fun e!197900 () SeekEntryResult!2832)

(assert (=> d!69095 (= lt!155414 e!197900)))

(declare-fun c!50278 () Bool)

(assert (=> d!69095 (= c!50278 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!155413 () (_ BitVec 64))

(assert (=> d!69095 (= lt!155413 (select (arr!7681 lt!155364) index!1781))))

(assert (=> d!69095 (validMask!0 mask!3709)))

(assert (=> d!69095 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 lt!155364 mask!3709) lt!155414)))

(declare-fun b!318520 () Bool)

(assert (=> b!318520 (= e!197900 (Intermediate!2832 true index!1781 x!1427))))

(declare-fun b!318521 () Bool)

(assert (=> b!318521 (= e!197900 e!197899)))

(declare-fun c!50279 () Bool)

(assert (=> b!318521 (= c!50279 (or (= lt!155413 k!2441) (= (bvadd lt!155413 lt!155413) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69095 c!50278) b!318520))

(assert (= (and d!69095 (not c!50278)) b!318521))

(assert (= (and b!318521 c!50279) b!318513))

(assert (= (and b!318521 (not c!50279)) b!318518))

(assert (= (and d!69095 c!50277) b!318516))

(assert (= (and d!69095 (not c!50277)) b!318514))

(assert (= (and b!318514 res!173205) b!318515))

(assert (= (and b!318515 (not res!173204)) b!318517))

(assert (= (and b!318517 (not res!173203)) b!318519))

(declare-fun m!327233 () Bool)

(assert (=> d!69095 m!327233))

(assert (=> d!69095 m!327149))

(declare-fun m!327235 () Bool)

(assert (=> b!318519 m!327235))

(assert (=> b!318515 m!327235))

(assert (=> b!318517 m!327235))

(assert (=> b!318518 m!327139))

(assert (=> b!318518 m!327139))

(declare-fun m!327237 () Bool)

(assert (=> b!318518 m!327237))

(assert (=> b!318369 d!69095))

(declare-fun b!318526 () Bool)

(declare-fun e!197906 () SeekEntryResult!2832)

(assert (=> b!318526 (= e!197906 (Intermediate!2832 false lt!155365 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318527 () Bool)

(declare-fun e!197909 () Bool)

(declare-fun e!197908 () Bool)

(assert (=> b!318527 (= e!197909 e!197908)))

(declare-fun res!173212 () Bool)

(declare-fun lt!155416 () SeekEntryResult!2832)

(assert (=> b!318527 (= res!173212 (and (is-Intermediate!2832 lt!155416) (not (undefined!3644 lt!155416)) (bvslt (x!31724 lt!155416) #b01111111111111111111111111111110) (bvsge (x!31724 lt!155416) #b00000000000000000000000000000000) (bvsge (x!31724 lt!155416) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!318527 (=> (not res!173212) (not e!197908))))

(declare-fun b!318528 () Bool)

(assert (=> b!318528 (and (bvsge (index!13506 lt!155416) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155416) (size!8033 lt!155364)))))

(declare-fun res!173211 () Bool)

(assert (=> b!318528 (= res!173211 (= (select (arr!7681 lt!155364) (index!13506 lt!155416)) k!2441))))

(declare-fun e!197910 () Bool)

(assert (=> b!318528 (=> res!173211 e!197910)))

(assert (=> b!318528 (= e!197908 e!197910)))

(declare-fun b!318529 () Bool)

(assert (=> b!318529 (= e!197909 (bvsge (x!31724 lt!155416) #b01111111111111111111111111111110))))

(declare-fun b!318530 () Bool)

(assert (=> b!318530 (and (bvsge (index!13506 lt!155416) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155416) (size!8033 lt!155364)))))

(declare-fun res!173210 () Bool)

(assert (=> b!318530 (= res!173210 (= (select (arr!7681 lt!155364) (index!13506 lt!155416)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318530 (=> res!173210 e!197910)))

(declare-fun b!318531 () Bool)

(assert (=> b!318531 (= e!197906 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!155365 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 lt!155364 mask!3709))))

(declare-fun b!318532 () Bool)

(assert (=> b!318532 (and (bvsge (index!13506 lt!155416) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155416) (size!8033 lt!155364)))))

(assert (=> b!318532 (= e!197910 (= (select (arr!7681 lt!155364) (index!13506 lt!155416)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!69111 () Bool)

(assert (=> d!69111 e!197909))

(declare-fun c!50280 () Bool)

(assert (=> d!69111 (= c!50280 (and (is-Intermediate!2832 lt!155416) (undefined!3644 lt!155416)))))

(declare-fun e!197907 () SeekEntryResult!2832)

(assert (=> d!69111 (= lt!155416 e!197907)))

(declare-fun c!50281 () Bool)

(assert (=> d!69111 (= c!50281 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!155415 () (_ BitVec 64))

(assert (=> d!69111 (= lt!155415 (select (arr!7681 lt!155364) lt!155365))))

(assert (=> d!69111 (validMask!0 mask!3709)))

(assert (=> d!69111 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155365 k!2441 lt!155364 mask!3709) lt!155416)))

(declare-fun b!318533 () Bool)

(assert (=> b!318533 (= e!197907 (Intermediate!2832 true lt!155365 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318534 () Bool)

(assert (=> b!318534 (= e!197907 e!197906)))

(declare-fun c!50282 () Bool)

(assert (=> b!318534 (= c!50282 (or (= lt!155415 k!2441) (= (bvadd lt!155415 lt!155415) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69111 c!50281) b!318533))

(assert (= (and d!69111 (not c!50281)) b!318534))

(assert (= (and b!318534 c!50282) b!318526))

(assert (= (and b!318534 (not c!50282)) b!318531))

(assert (= (and d!69111 c!50280) b!318529))

(assert (= (and d!69111 (not c!50280)) b!318527))

(assert (= (and b!318527 res!173212) b!318528))

(assert (= (and b!318528 (not res!173211)) b!318530))

(assert (= (and b!318530 (not res!173210)) b!318532))

(declare-fun m!327239 () Bool)

(assert (=> d!69111 m!327239))

(assert (=> d!69111 m!327149))

(declare-fun m!327241 () Bool)

(assert (=> b!318532 m!327241))

(assert (=> b!318528 m!327241))

(assert (=> b!318530 m!327241))

(declare-fun m!327243 () Bool)

(assert (=> b!318531 m!327243))

(assert (=> b!318531 m!327243))

(declare-fun m!327245 () Bool)

(assert (=> b!318531 m!327245))

(assert (=> b!318369 d!69111))

(declare-fun b!318601 () Bool)

(declare-fun c!50310 () Bool)

(declare-fun lt!155440 () (_ BitVec 64))

(assert (=> b!318601 (= c!50310 (= lt!155440 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!197946 () SeekEntryResult!2832)

(declare-fun e!197947 () SeekEntryResult!2832)

(assert (=> b!318601 (= e!197946 e!197947)))

(declare-fun b!318602 () Bool)

(declare-fun e!197948 () SeekEntryResult!2832)

(assert (=> b!318602 (= e!197948 Undefined!2832)))

(declare-fun b!318603 () Bool)

(declare-fun lt!155442 () SeekEntryResult!2832)

(assert (=> b!318603 (= e!197947 (MissingZero!2832 (index!13506 lt!155442)))))

(declare-fun b!318604 () Bool)

(assert (=> b!318604 (= e!197946 (Found!2832 (index!13506 lt!155442)))))

(declare-fun b!318605 () Bool)

(assert (=> b!318605 (= e!197948 e!197946)))

(assert (=> b!318605 (= lt!155440 (select (arr!7681 a!3293) (index!13506 lt!155442)))))

(declare-fun c!50311 () Bool)

(assert (=> b!318605 (= c!50311 (= lt!155440 k!2441))))

(declare-fun b!318606 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16235 (_ BitVec 32)) SeekEntryResult!2832)

(assert (=> b!318606 (= e!197947 (seekKeyOrZeroReturnVacant!0 (x!31724 lt!155442) (index!13506 lt!155442) (index!13506 lt!155442) k!2441 a!3293 mask!3709))))

(declare-fun d!69113 () Bool)

(declare-fun lt!155441 () SeekEntryResult!2832)

(assert (=> d!69113 (and (or (is-Undefined!2832 lt!155441) (not (is-Found!2832 lt!155441)) (and (bvsge (index!13505 lt!155441) #b00000000000000000000000000000000) (bvslt (index!13505 lt!155441) (size!8033 a!3293)))) (or (is-Undefined!2832 lt!155441) (is-Found!2832 lt!155441) (not (is-MissingZero!2832 lt!155441)) (and (bvsge (index!13504 lt!155441) #b00000000000000000000000000000000) (bvslt (index!13504 lt!155441) (size!8033 a!3293)))) (or (is-Undefined!2832 lt!155441) (is-Found!2832 lt!155441) (is-MissingZero!2832 lt!155441) (not (is-MissingVacant!2832 lt!155441)) (and (bvsge (index!13507 lt!155441) #b00000000000000000000000000000000) (bvslt (index!13507 lt!155441) (size!8033 a!3293)))) (or (is-Undefined!2832 lt!155441) (ite (is-Found!2832 lt!155441) (= (select (arr!7681 a!3293) (index!13505 lt!155441)) k!2441) (ite (is-MissingZero!2832 lt!155441) (= (select (arr!7681 a!3293) (index!13504 lt!155441)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2832 lt!155441) (= (select (arr!7681 a!3293) (index!13507 lt!155441)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69113 (= lt!155441 e!197948)))

(declare-fun c!50312 () Bool)

(assert (=> d!69113 (= c!50312 (and (is-Intermediate!2832 lt!155442) (undefined!3644 lt!155442)))))

(assert (=> d!69113 (= lt!155442 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!69113 (validMask!0 mask!3709)))

(assert (=> d!69113 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!155441)))

(assert (= (and d!69113 c!50312) b!318602))

(assert (= (and d!69113 (not c!50312)) b!318605))

(assert (= (and b!318605 c!50311) b!318604))

(assert (= (and b!318605 (not c!50311)) b!318601))

(assert (= (and b!318601 c!50310) b!318603))

(assert (= (and b!318601 (not c!50310)) b!318606))

(declare-fun m!327281 () Bool)

(assert (=> b!318605 m!327281))

(declare-fun m!327287 () Bool)

(assert (=> b!318606 m!327287))

(declare-fun m!327289 () Bool)

(assert (=> d!69113 m!327289))

(assert (=> d!69113 m!327149))

(assert (=> d!69113 m!327141))

(declare-fun m!327291 () Bool)

(assert (=> d!69113 m!327291))

(assert (=> d!69113 m!327141))

(assert (=> d!69113 m!327143))

(declare-fun m!327293 () Bool)

(assert (=> d!69113 m!327293))

(assert (=> b!318376 d!69113))

(declare-fun d!69131 () Bool)

(assert (=> d!69131 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!318375 d!69131))

(declare-fun b!318616 () Bool)

(declare-fun e!197954 () SeekEntryResult!2832)

(assert (=> b!318616 (= e!197954 (Intermediate!2832 false index!1781 x!1427))))

(declare-fun b!318617 () Bool)

(declare-fun e!197957 () Bool)

(declare-fun e!197956 () Bool)

(assert (=> b!318617 (= e!197957 e!197956)))

(declare-fun res!173230 () Bool)

(declare-fun lt!155446 () SeekEntryResult!2832)

(assert (=> b!318617 (= res!173230 (and (is-Intermediate!2832 lt!155446) (not (undefined!3644 lt!155446)) (bvslt (x!31724 lt!155446) #b01111111111111111111111111111110) (bvsge (x!31724 lt!155446) #b00000000000000000000000000000000) (bvsge (x!31724 lt!155446) x!1427)))))

(assert (=> b!318617 (=> (not res!173230) (not e!197956))))

(declare-fun b!318618 () Bool)

(assert (=> b!318618 (and (bvsge (index!13506 lt!155446) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155446) (size!8033 a!3293)))))

(declare-fun res!173229 () Bool)

(assert (=> b!318618 (= res!173229 (= (select (arr!7681 a!3293) (index!13506 lt!155446)) k!2441))))

(declare-fun e!197958 () Bool)

(assert (=> b!318618 (=> res!173229 e!197958)))

(assert (=> b!318618 (= e!197956 e!197958)))

(declare-fun b!318619 () Bool)

(assert (=> b!318619 (= e!197957 (bvsge (x!31724 lt!155446) #b01111111111111111111111111111110))))

(declare-fun b!318620 () Bool)

(assert (=> b!318620 (and (bvsge (index!13506 lt!155446) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155446) (size!8033 a!3293)))))

(declare-fun res!173228 () Bool)

(assert (=> b!318620 (= res!173228 (= (select (arr!7681 a!3293) (index!13506 lt!155446)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318620 (=> res!173228 e!197958)))

(declare-fun b!318621 () Bool)

(assert (=> b!318621 (= e!197954 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!318622 () Bool)

(assert (=> b!318622 (and (bvsge (index!13506 lt!155446) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155446) (size!8033 a!3293)))))

(assert (=> b!318622 (= e!197958 (= (select (arr!7681 a!3293) (index!13506 lt!155446)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!69133 () Bool)

(assert (=> d!69133 e!197957))

(declare-fun c!50316 () Bool)

(assert (=> d!69133 (= c!50316 (and (is-Intermediate!2832 lt!155446) (undefined!3644 lt!155446)))))

(declare-fun e!197955 () SeekEntryResult!2832)

(assert (=> d!69133 (= lt!155446 e!197955)))

(declare-fun c!50317 () Bool)

(assert (=> d!69133 (= c!50317 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!155445 () (_ BitVec 64))

(assert (=> d!69133 (= lt!155445 (select (arr!7681 a!3293) index!1781))))

(assert (=> d!69133 (validMask!0 mask!3709)))

(assert (=> d!69133 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!155446)))

(declare-fun b!318623 () Bool)

(assert (=> b!318623 (= e!197955 (Intermediate!2832 true index!1781 x!1427))))

(declare-fun b!318624 () Bool)

(assert (=> b!318624 (= e!197955 e!197954)))

(declare-fun c!50318 () Bool)

(assert (=> b!318624 (= c!50318 (or (= lt!155445 k!2441) (= (bvadd lt!155445 lt!155445) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69133 c!50317) b!318623))

(assert (= (and d!69133 (not c!50317)) b!318624))

(assert (= (and b!318624 c!50318) b!318616))

(assert (= (and b!318624 (not c!50318)) b!318621))

(assert (= (and d!69133 c!50316) b!318619))

(assert (= (and d!69133 (not c!50316)) b!318617))

(assert (= (and b!318617 res!173230) b!318618))

(assert (= (and b!318618 (not res!173229)) b!318620))

(assert (= (and b!318620 (not res!173228)) b!318622))

(assert (=> d!69133 m!327131))

(assert (=> d!69133 m!327149))

(declare-fun m!327301 () Bool)

(assert (=> b!318622 m!327301))

(assert (=> b!318618 m!327301))

(assert (=> b!318620 m!327301))

(assert (=> b!318621 m!327139))

(assert (=> b!318621 m!327139))

(declare-fun m!327303 () Bool)

(assert (=> b!318621 m!327303))

(assert (=> b!318370 d!69133))

(declare-fun d!69137 () Bool)

(assert (=> d!69137 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!31866 d!69137))

(declare-fun d!69141 () Bool)

(assert (=> d!69141 (= (array_inv!5635 a!3293) (bvsge (size!8033 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!31866 d!69141))

(declare-fun b!318649 () Bool)

(declare-fun e!197974 () SeekEntryResult!2832)

(assert (=> b!318649 (= e!197974 (Intermediate!2832 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!318650 () Bool)

(declare-fun e!197977 () Bool)

(declare-fun e!197976 () Bool)

(assert (=> b!318650 (= e!197977 e!197976)))

(declare-fun res!173239 () Bool)

(declare-fun lt!155466 () SeekEntryResult!2832)

(assert (=> b!318650 (= res!173239 (and (is-Intermediate!2832 lt!155466) (not (undefined!3644 lt!155466)) (bvslt (x!31724 lt!155466) #b01111111111111111111111111111110) (bvsge (x!31724 lt!155466) #b00000000000000000000000000000000) (bvsge (x!31724 lt!155466) #b00000000000000000000000000000000)))))

(assert (=> b!318650 (=> (not res!173239) (not e!197976))))

(declare-fun b!318651 () Bool)

(assert (=> b!318651 (and (bvsge (index!13506 lt!155466) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155466) (size!8033 a!3293)))))

(declare-fun res!173238 () Bool)

(assert (=> b!318651 (= res!173238 (= (select (arr!7681 a!3293) (index!13506 lt!155466)) k!2441))))

(declare-fun e!197978 () Bool)

(assert (=> b!318651 (=> res!173238 e!197978)))

(assert (=> b!318651 (= e!197976 e!197978)))

(declare-fun b!318652 () Bool)

(assert (=> b!318652 (= e!197977 (bvsge (x!31724 lt!155466) #b01111111111111111111111111111110))))

(declare-fun b!318653 () Bool)

(assert (=> b!318653 (and (bvsge (index!13506 lt!155466) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155466) (size!8033 a!3293)))))

(declare-fun res!173237 () Bool)

(assert (=> b!318653 (= res!173237 (= (select (arr!7681 a!3293) (index!13506 lt!155466)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318653 (=> res!173237 e!197978)))

(declare-fun b!318654 () Bool)

(assert (=> b!318654 (= e!197974 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!318655 () Bool)

(assert (=> b!318655 (and (bvsge (index!13506 lt!155466) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155466) (size!8033 a!3293)))))

(assert (=> b!318655 (= e!197978 (= (select (arr!7681 a!3293) (index!13506 lt!155466)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!69143 () Bool)

(assert (=> d!69143 e!197977))

(declare-fun c!50328 () Bool)

(assert (=> d!69143 (= c!50328 (and (is-Intermediate!2832 lt!155466) (undefined!3644 lt!155466)))))

(declare-fun e!197975 () SeekEntryResult!2832)

(assert (=> d!69143 (= lt!155466 e!197975)))

(declare-fun c!50329 () Bool)

(assert (=> d!69143 (= c!50329 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!155465 () (_ BitVec 64))

(assert (=> d!69143 (= lt!155465 (select (arr!7681 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!69143 (validMask!0 mask!3709)))

(assert (=> d!69143 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!155466)))

(declare-fun b!318656 () Bool)

(assert (=> b!318656 (= e!197975 (Intermediate!2832 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!318657 () Bool)

(assert (=> b!318657 (= e!197975 e!197974)))

(declare-fun c!50330 () Bool)

(assert (=> b!318657 (= c!50330 (or (= lt!155465 k!2441) (= (bvadd lt!155465 lt!155465) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69143 c!50329) b!318656))

(assert (= (and d!69143 (not c!50329)) b!318657))

(assert (= (and b!318657 c!50330) b!318649))

(assert (= (and b!318657 (not c!50330)) b!318654))

(assert (= (and d!69143 c!50328) b!318652))

(assert (= (and d!69143 (not c!50328)) b!318650))

(assert (= (and b!318650 res!173239) b!318651))

(assert (= (and b!318651 (not res!173238)) b!318653))

(assert (= (and b!318653 (not res!173237)) b!318655))

(assert (=> d!69143 m!327141))

(declare-fun m!327317 () Bool)

(assert (=> d!69143 m!327317))

(assert (=> d!69143 m!327149))

(declare-fun m!327319 () Bool)

(assert (=> b!318655 m!327319))

(assert (=> b!318651 m!327319))

(assert (=> b!318653 m!327319))

(assert (=> b!318654 m!327141))

(declare-fun m!327321 () Bool)

(assert (=> b!318654 m!327321))

(assert (=> b!318654 m!327321))

(declare-fun m!327323 () Bool)

(assert (=> b!318654 m!327323))

(assert (=> b!318377 d!69143))

(declare-fun d!69145 () Bool)

(declare-fun lt!155477 () (_ BitVec 32))

(declare-fun lt!155476 () (_ BitVec 32))

(assert (=> d!69145 (= lt!155477 (bvmul (bvxor lt!155476 (bvlshr lt!155476 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69145 (= lt!155476 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69145 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!173240 (let ((h!5400 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!31732 (bvmul (bvxor h!5400 (bvlshr h!5400 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!31732 (bvlshr x!31732 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!173240 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!173240 #b00000000000000000000000000000000))))))

(assert (=> d!69145 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!155477 (bvlshr lt!155477 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!318377 d!69145))

(declare-fun d!69151 () Bool)

(declare-fun res!173257 () Bool)

(declare-fun e!198002 () Bool)

(assert (=> d!69151 (=> res!173257 e!198002)))

(assert (=> d!69151 (= res!173257 (= (select (arr!7681 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!69151 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!198002)))

(declare-fun b!318692 () Bool)

(declare-fun e!198003 () Bool)

(assert (=> b!318692 (= e!198002 e!198003)))

(declare-fun res!173258 () Bool)

(assert (=> b!318692 (=> (not res!173258) (not e!198003))))

(assert (=> b!318692 (= res!173258 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8033 a!3293)))))

(declare-fun b!318693 () Bool)

(assert (=> b!318693 (= e!198003 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69151 (not res!173257)) b!318692))

(assert (= (and b!318692 res!173258) b!318693))

(declare-fun m!327349 () Bool)

(assert (=> d!69151 m!327349))

(declare-fun m!327351 () Bool)

(assert (=> b!318693 m!327351))

(assert (=> b!318372 d!69151))

(declare-fun b!318694 () Bool)

(declare-fun e!198004 () SeekEntryResult!2832)

(assert (=> b!318694 (= e!198004 (Intermediate!2832 false lt!155365 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318695 () Bool)

(declare-fun e!198007 () Bool)

(declare-fun e!198006 () Bool)

(assert (=> b!318695 (= e!198007 e!198006)))

(declare-fun res!173261 () Bool)

(declare-fun lt!155481 () SeekEntryResult!2832)

(assert (=> b!318695 (= res!173261 (and (is-Intermediate!2832 lt!155481) (not (undefined!3644 lt!155481)) (bvslt (x!31724 lt!155481) #b01111111111111111111111111111110) (bvsge (x!31724 lt!155481) #b00000000000000000000000000000000) (bvsge (x!31724 lt!155481) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!318695 (=> (not res!173261) (not e!198006))))

(declare-fun b!318696 () Bool)

(assert (=> b!318696 (and (bvsge (index!13506 lt!155481) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155481) (size!8033 a!3293)))))

(declare-fun res!173260 () Bool)

(assert (=> b!318696 (= res!173260 (= (select (arr!7681 a!3293) (index!13506 lt!155481)) k!2441))))

(declare-fun e!198008 () Bool)

(assert (=> b!318696 (=> res!173260 e!198008)))

(assert (=> b!318696 (= e!198006 e!198008)))

(declare-fun b!318697 () Bool)

(assert (=> b!318697 (= e!198007 (bvsge (x!31724 lt!155481) #b01111111111111111111111111111110))))

(declare-fun b!318698 () Bool)

(assert (=> b!318698 (and (bvsge (index!13506 lt!155481) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155481) (size!8033 a!3293)))))

(declare-fun res!173259 () Bool)

(assert (=> b!318698 (= res!173259 (= (select (arr!7681 a!3293) (index!13506 lt!155481)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!318698 (=> res!173259 e!198008)))

(declare-fun b!318699 () Bool)

(assert (=> b!318699 (= e!198004 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!155365 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!318700 () Bool)

(assert (=> b!318700 (and (bvsge (index!13506 lt!155481) #b00000000000000000000000000000000) (bvslt (index!13506 lt!155481) (size!8033 a!3293)))))

(assert (=> b!318700 (= e!198008 (= (select (arr!7681 a!3293) (index!13506 lt!155481)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!69157 () Bool)

(assert (=> d!69157 e!198007))

(declare-fun c!50340 () Bool)

(assert (=> d!69157 (= c!50340 (and (is-Intermediate!2832 lt!155481) (undefined!3644 lt!155481)))))

(declare-fun e!198005 () SeekEntryResult!2832)

(assert (=> d!69157 (= lt!155481 e!198005)))

(declare-fun c!50341 () Bool)

(assert (=> d!69157 (= c!50341 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!155480 () (_ BitVec 64))

(assert (=> d!69157 (= lt!155480 (select (arr!7681 a!3293) lt!155365))))

(assert (=> d!69157 (validMask!0 mask!3709)))

(assert (=> d!69157 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!155365 k!2441 a!3293 mask!3709) lt!155481)))

(declare-fun b!318701 () Bool)

(assert (=> b!318701 (= e!198005 (Intermediate!2832 true lt!155365 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!318702 () Bool)

(assert (=> b!318702 (= e!198005 e!198004)))

(declare-fun c!50342 () Bool)

(assert (=> b!318702 (= c!50342 (or (= lt!155480 k!2441) (= (bvadd lt!155480 lt!155480) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69157 c!50341) b!318701))

(assert (= (and d!69157 (not c!50341)) b!318702))

(assert (= (and b!318702 c!50342) b!318694))

(assert (= (and b!318702 (not c!50342)) b!318699))

(assert (= (and d!69157 c!50340) b!318697))

(assert (= (and d!69157 (not c!50340)) b!318695))

(assert (= (and b!318695 res!173261) b!318696))

(assert (= (and b!318696 (not res!173260)) b!318698))

(assert (= (and b!318698 (not res!173259)) b!318700))

(declare-fun m!327353 () Bool)

(assert (=> d!69157 m!327353))

(assert (=> d!69157 m!327149))

(declare-fun m!327355 () Bool)

(assert (=> b!318700 m!327355))

(assert (=> b!318696 m!327355))

(assert (=> b!318698 m!327355))

(assert (=> b!318699 m!327243))

(assert (=> b!318699 m!327243))

(declare-fun m!327357 () Bool)

(assert (=> b!318699 m!327357))

(assert (=> b!318371 d!69157))

(declare-fun d!69159 () Bool)

(declare-fun lt!155489 () (_ BitVec 32))

(assert (=> d!69159 (and (bvsge lt!155489 #b00000000000000000000000000000000) (bvslt lt!155489 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69159 (= lt!155489 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!69159 (validMask!0 mask!3709)))

(assert (=> d!69159 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!155489)))

(declare-fun bs!11106 () Bool)

(assert (= bs!11106 d!69159))

(declare-fun m!327369 () Bool)

(assert (=> bs!11106 m!327369))

(assert (=> bs!11106 m!327149))

(assert (=> b!318371 d!69159))

(declare-fun b!318720 () Bool)

(declare-fun e!198020 () Bool)

(declare-fun call!26027 () Bool)

(assert (=> b!318720 (= e!198020 call!26027)))

(declare-fun b!318721 () Bool)

(declare-fun e!198021 () Bool)

(assert (=> b!318721 (= e!198021 e!198020)))

(declare-fun lt!155504 () (_ BitVec 64))

(assert (=> b!318721 (= lt!155504 (select (arr!7681 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9789 0))(
  ( (Unit!9790) )
))
(declare-fun lt!155502 () Unit!9789)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16235 (_ BitVec 64) (_ BitVec 32)) Unit!9789)

(assert (=> b!318721 (= lt!155502 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!155504 #b00000000000000000000000000000000))))

(assert (=> b!318721 (arrayContainsKey!0 a!3293 lt!155504 #b00000000000000000000000000000000)))

(declare-fun lt!155503 () Unit!9789)

(assert (=> b!318721 (= lt!155503 lt!155502)))

(declare-fun res!173271 () Bool)

(assert (=> b!318721 (= res!173271 (= (seekEntryOrOpen!0 (select (arr!7681 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2832 #b00000000000000000000000000000000)))))

(assert (=> b!318721 (=> (not res!173271) (not e!198020))))

(declare-fun b!318722 () Bool)

(declare-fun e!198022 () Bool)

(assert (=> b!318722 (= e!198022 e!198021)))

(declare-fun c!50348 () Bool)

(assert (=> b!318722 (= c!50348 (validKeyInArray!0 (select (arr!7681 a!3293) #b00000000000000000000000000000000)))))

(declare-fun d!69165 () Bool)

(declare-fun res!173270 () Bool)

(assert (=> d!69165 (=> res!173270 e!198022)))

(assert (=> d!69165 (= res!173270 (bvsge #b00000000000000000000000000000000 (size!8033 a!3293)))))

(assert (=> d!69165 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!198022)))

(declare-fun bm!26024 () Bool)

(assert (=> bm!26024 (= call!26027 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!318723 () Bool)

(assert (=> b!318723 (= e!198021 call!26027)))

(assert (= (and d!69165 (not res!173270)) b!318722))

(assert (= (and b!318722 c!50348) b!318721))

(assert (= (and b!318722 (not c!50348)) b!318723))

(assert (= (and b!318721 res!173271) b!318720))

(assert (= (or b!318720 b!318723) bm!26024))

(assert (=> b!318721 m!327349))

(declare-fun m!327371 () Bool)

(assert (=> b!318721 m!327371))

(declare-fun m!327373 () Bool)

(assert (=> b!318721 m!327373))

(assert (=> b!318721 m!327349))

(declare-fun m!327375 () Bool)

(assert (=> b!318721 m!327375))

(assert (=> b!318722 m!327349))

(assert (=> b!318722 m!327349))

(declare-fun m!327377 () Bool)

(assert (=> b!318722 m!327377))

(declare-fun m!327379 () Bool)

(assert (=> bm!26024 m!327379))

(assert (=> b!318378 d!69165))

(push 1)

