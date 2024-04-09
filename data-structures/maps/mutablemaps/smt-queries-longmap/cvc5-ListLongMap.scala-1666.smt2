; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30834 () Bool)

(assert start!30834)

(declare-fun b!309376 () Bool)

(declare-fun res!166154 () Bool)

(declare-fun e!193264 () Bool)

(assert (=> b!309376 (=> (not res!166154) (not e!193264))))

(declare-datatypes ((array!15785 0))(
  ( (array!15786 (arr!7474 (Array (_ BitVec 32) (_ BitVec 64))) (size!7826 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15785)

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(declare-fun resX!52 () (_ BitVec 32))

(assert (=> b!309376 (= res!166154 (and (= (select (arr!7474 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7826 a!3293))))))

(declare-fun b!309377 () Bool)

(declare-fun e!193267 () Bool)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun lt!151581 () (_ BitVec 32))

(assert (=> b!309377 (= e!193267 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (and (bvsge lt!151581 #b00000000000000000000000000000000) (bvslt lt!151581 (bvadd #b00000000000000000000000000000001 mask!3709))))))))

(declare-datatypes ((SeekEntryResult!2625 0))(
  ( (MissingZero!2625 (index!12676 (_ BitVec 32))) (Found!2625 (index!12677 (_ BitVec 32))) (Intermediate!2625 (undefined!3437 Bool) (index!12678 (_ BitVec 32)) (x!30872 (_ BitVec 32))) (Undefined!2625) (MissingVacant!2625 (index!12679 (_ BitVec 32))) )
))
(declare-fun lt!151582 () SeekEntryResult!2625)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15785 (_ BitVec 32)) SeekEntryResult!2625)

(assert (=> b!309377 (= lt!151582 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151581 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309377 (= lt!151581 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!309378 () Bool)

(assert (=> b!309378 (= e!193264 e!193267)))

(declare-fun res!166150 () Bool)

(assert (=> b!309378 (=> (not res!166150) (not e!193267))))

(declare-fun lt!151583 () SeekEntryResult!2625)

(assert (=> b!309378 (= res!166150 (and (= lt!151582 lt!151583) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7474 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(assert (=> b!309378 (= lt!151582 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309379 () Bool)

(declare-fun res!166155 () Bool)

(declare-fun e!193266 () Bool)

(assert (=> b!309379 (=> (not res!166155) (not e!193266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15785 (_ BitVec 32)) Bool)

(assert (=> b!309379 (= res!166155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309380 () Bool)

(declare-fun res!166149 () Bool)

(assert (=> b!309380 (=> (not res!166149) (not e!193266))))

(declare-fun arrayContainsKey!0 (array!15785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309380 (= res!166149 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309381 () Bool)

(declare-fun res!166153 () Bool)

(assert (=> b!309381 (=> (not res!166153) (not e!193266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309381 (= res!166153 (validKeyInArray!0 k!2441))))

(declare-fun res!166151 () Bool)

(assert (=> start!30834 (=> (not res!166151) (not e!193266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30834 (= res!166151 (validMask!0 mask!3709))))

(assert (=> start!30834 e!193266))

(declare-fun array_inv!5428 (array!15785) Bool)

(assert (=> start!30834 (array_inv!5428 a!3293)))

(assert (=> start!30834 true))

(declare-fun b!309382 () Bool)

(assert (=> b!309382 (= e!193266 e!193264)))

(declare-fun res!166148 () Bool)

(assert (=> b!309382 (=> (not res!166148) (not e!193264))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309382 (= res!166148 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151583))))

(assert (=> b!309382 (= lt!151583 (Intermediate!2625 false resIndex!52 resX!52))))

(declare-fun b!309383 () Bool)

(declare-fun res!166152 () Bool)

(assert (=> b!309383 (=> (not res!166152) (not e!193266))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15785 (_ BitVec 32)) SeekEntryResult!2625)

(assert (=> b!309383 (= res!166152 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2625 i!1240)))))

(declare-fun b!309384 () Bool)

(declare-fun res!166147 () Bool)

(assert (=> b!309384 (=> (not res!166147) (not e!193266))))

(assert (=> b!309384 (= res!166147 (and (= (size!7826 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7826 a!3293))))))

(assert (= (and start!30834 res!166151) b!309384))

(assert (= (and b!309384 res!166147) b!309381))

(assert (= (and b!309381 res!166153) b!309380))

(assert (= (and b!309380 res!166149) b!309383))

(assert (= (and b!309383 res!166152) b!309379))

(assert (= (and b!309379 res!166155) b!309382))

(assert (= (and b!309382 res!166148) b!309376))

(assert (= (and b!309376 res!166154) b!309378))

(assert (= (and b!309378 res!166150) b!309377))

(declare-fun m!319417 () Bool)

(assert (=> b!309378 m!319417))

(declare-fun m!319419 () Bool)

(assert (=> b!309378 m!319419))

(declare-fun m!319421 () Bool)

(assert (=> b!309383 m!319421))

(declare-fun m!319423 () Bool)

(assert (=> b!309381 m!319423))

(declare-fun m!319425 () Bool)

(assert (=> start!30834 m!319425))

(declare-fun m!319427 () Bool)

(assert (=> start!30834 m!319427))

(declare-fun m!319429 () Bool)

(assert (=> b!309382 m!319429))

(assert (=> b!309382 m!319429))

(declare-fun m!319431 () Bool)

(assert (=> b!309382 m!319431))

(declare-fun m!319433 () Bool)

(assert (=> b!309377 m!319433))

(declare-fun m!319435 () Bool)

(assert (=> b!309377 m!319435))

(declare-fun m!319437 () Bool)

(assert (=> b!309379 m!319437))

(declare-fun m!319439 () Bool)

(assert (=> b!309380 m!319439))

(declare-fun m!319441 () Bool)

(assert (=> b!309376 m!319441))

(push 1)

(assert (not b!309377))

(assert (not b!309379))

(assert (not b!309382))

(assert (not b!309381))

(assert (not start!30834))

(assert (not b!309383))

(assert (not b!309378))

(assert (not b!309380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!309498 () Bool)

(declare-fun e!193331 () Bool)

(declare-fun e!193329 () Bool)

(assert (=> b!309498 (= e!193331 e!193329)))

(declare-fun res!166237 () Bool)

(declare-fun lt!151624 () SeekEntryResult!2625)

(assert (=> b!309498 (= res!166237 (and (is-Intermediate!2625 lt!151624) (not (undefined!3437 lt!151624)) (bvslt (x!30872 lt!151624) #b01111111111111111111111111111110) (bvsge (x!30872 lt!151624) #b00000000000000000000000000000000) (bvsge (x!30872 lt!151624) #b00000000000000000000000000000000)))))

(assert (=> b!309498 (=> (not res!166237) (not e!193329))))

(declare-fun b!309499 () Bool)

(assert (=> b!309499 (= e!193331 (bvsge (x!30872 lt!151624) #b01111111111111111111111111111110))))

(declare-fun d!68211 () Bool)

(assert (=> d!68211 e!193331))

(declare-fun c!49236 () Bool)

(assert (=> d!68211 (= c!49236 (and (is-Intermediate!2625 lt!151624) (undefined!3437 lt!151624)))))

(declare-fun e!193333 () SeekEntryResult!2625)

(assert (=> d!68211 (= lt!151624 e!193333)))

(declare-fun c!49237 () Bool)

(assert (=> d!68211 (= c!49237 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!151625 () (_ BitVec 64))

(assert (=> d!68211 (= lt!151625 (select (arr!7474 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68211 (validMask!0 mask!3709)))

(assert (=> d!68211 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151624)))

(declare-fun b!309500 () Bool)

(assert (=> b!309500 (and (bvsge (index!12678 lt!151624) #b00000000000000000000000000000000) (bvslt (index!12678 lt!151624) (size!7826 a!3293)))))

(declare-fun res!166236 () Bool)

(assert (=> b!309500 (= res!166236 (= (select (arr!7474 a!3293) (index!12678 lt!151624)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!193330 () Bool)

(assert (=> b!309500 (=> res!166236 e!193330)))

(declare-fun b!309501 () Bool)

(assert (=> b!309501 (= e!193333 (Intermediate!2625 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun e!193332 () SeekEntryResult!2625)

(declare-fun b!309502 () Bool)

(assert (=> b!309502 (= e!193332 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309503 () Bool)

(assert (=> b!309503 (and (bvsge (index!12678 lt!151624) #b00000000000000000000000000000000) (bvslt (index!12678 lt!151624) (size!7826 a!3293)))))

(assert (=> b!309503 (= e!193330 (= (select (arr!7474 a!3293) (index!12678 lt!151624)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!309504 () Bool)

(assert (=> b!309504 (= e!193333 e!193332)))

(declare-fun c!49235 () Bool)

(assert (=> b!309504 (= c!49235 (or (= lt!151625 k!2441) (= (bvadd lt!151625 lt!151625) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!309505 () Bool)

(assert (=> b!309505 (= e!193332 (Intermediate!2625 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!309506 () Bool)

(assert (=> b!309506 (and (bvsge (index!12678 lt!151624) #b00000000000000000000000000000000) (bvslt (index!12678 lt!151624) (size!7826 a!3293)))))

(declare-fun res!166238 () Bool)

(assert (=> b!309506 (= res!166238 (= (select (arr!7474 a!3293) (index!12678 lt!151624)) k!2441))))

(assert (=> b!309506 (=> res!166238 e!193330)))

(assert (=> b!309506 (= e!193329 e!193330)))

(assert (= (and d!68211 c!49237) b!309501))

(assert (= (and d!68211 (not c!49237)) b!309504))

(assert (= (and b!309504 c!49235) b!309505))

(assert (= (and b!309504 (not c!49235)) b!309502))

(assert (= (and d!68211 c!49236) b!309499))

(assert (= (and d!68211 (not c!49236)) b!309498))

(assert (= (and b!309498 res!166237) b!309506))

(assert (= (and b!309506 (not res!166238)) b!309500))

(assert (= (and b!309500 (not res!166236)) b!309503))

(declare-fun m!319507 () Bool)

(assert (=> b!309500 m!319507))

(assert (=> b!309503 m!319507))

(assert (=> d!68211 m!319429))

(declare-fun m!319509 () Bool)

(assert (=> d!68211 m!319509))

(assert (=> d!68211 m!319425))

(assert (=> b!309506 m!319507))

(assert (=> b!309502 m!319429))

(declare-fun m!319511 () Bool)

(assert (=> b!309502 m!319511))

(assert (=> b!309502 m!319511))

(declare-fun m!319513 () Bool)

(assert (=> b!309502 m!319513))

(assert (=> b!309382 d!68211))

(declare-fun d!68223 () Bool)

(declare-fun lt!151634 () (_ BitVec 32))

(declare-fun lt!151633 () (_ BitVec 32))

(assert (=> d!68223 (= lt!151634 (bvmul (bvxor lt!151633 (bvlshr lt!151633 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68223 (= lt!151633 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68223 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!166239 (let ((h!5364 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30878 (bvmul (bvxor h!5364 (bvlshr h!5364 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30878 (bvlshr x!30878 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!166239 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!166239 #b00000000000000000000000000000000))))))

(assert (=> d!68223 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!151634 (bvlshr lt!151634 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!309382 d!68223))

(declare-fun b!309511 () Bool)

(declare-fun e!193339 () Bool)

(declare-fun e!193337 () Bool)

(assert (=> b!309511 (= e!193339 e!193337)))

(declare-fun res!166243 () Bool)

(declare-fun lt!151635 () SeekEntryResult!2625)

(assert (=> b!309511 (= res!166243 (and (is-Intermediate!2625 lt!151635) (not (undefined!3437 lt!151635)) (bvslt (x!30872 lt!151635) #b01111111111111111111111111111110) (bvsge (x!30872 lt!151635) #b00000000000000000000000000000000) (bvsge (x!30872 lt!151635) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!309511 (=> (not res!166243) (not e!193337))))

(declare-fun b!309512 () Bool)

(assert (=> b!309512 (= e!193339 (bvsge (x!30872 lt!151635) #b01111111111111111111111111111110))))

(declare-fun d!68227 () Bool)

(assert (=> d!68227 e!193339))

(declare-fun c!49240 () Bool)

(assert (=> d!68227 (= c!49240 (and (is-Intermediate!2625 lt!151635) (undefined!3437 lt!151635)))))

(declare-fun e!193341 () SeekEntryResult!2625)

(assert (=> d!68227 (= lt!151635 e!193341)))

(declare-fun c!49241 () Bool)

(assert (=> d!68227 (= c!49241 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!151636 () (_ BitVec 64))

(assert (=> d!68227 (= lt!151636 (select (arr!7474 a!3293) lt!151581))))

(assert (=> d!68227 (validMask!0 mask!3709)))

(assert (=> d!68227 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151581 k!2441 a!3293 mask!3709) lt!151635)))

(declare-fun b!309513 () Bool)

(assert (=> b!309513 (and (bvsge (index!12678 lt!151635) #b00000000000000000000000000000000) (bvslt (index!12678 lt!151635) (size!7826 a!3293)))))

(declare-fun res!166242 () Bool)

(assert (=> b!309513 (= res!166242 (= (select (arr!7474 a!3293) (index!12678 lt!151635)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!193338 () Bool)

(assert (=> b!309513 (=> res!166242 e!193338)))

(declare-fun b!309514 () Bool)

(assert (=> b!309514 (= e!193341 (Intermediate!2625 true lt!151581 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun e!193340 () SeekEntryResult!2625)

(declare-fun b!309515 () Bool)

(assert (=> b!309515 (= e!193340 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!151581 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309516 () Bool)

(assert (=> b!309516 (and (bvsge (index!12678 lt!151635) #b00000000000000000000000000000000) (bvslt (index!12678 lt!151635) (size!7826 a!3293)))))

(assert (=> b!309516 (= e!193338 (= (select (arr!7474 a!3293) (index!12678 lt!151635)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!309517 () Bool)

(assert (=> b!309517 (= e!193341 e!193340)))

(declare-fun c!49239 () Bool)

(assert (=> b!309517 (= c!49239 (or (= lt!151636 k!2441) (= (bvadd lt!151636 lt!151636) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!309518 () Bool)

(assert (=> b!309518 (= e!193340 (Intermediate!2625 false lt!151581 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!309519 () Bool)

(assert (=> b!309519 (and (bvsge (index!12678 lt!151635) #b00000000000000000000000000000000) (bvslt (index!12678 lt!151635) (size!7826 a!3293)))))

(declare-fun res!166244 () Bool)

(assert (=> b!309519 (= res!166244 (= (select (arr!7474 a!3293) (index!12678 lt!151635)) k!2441))))

(assert (=> b!309519 (=> res!166244 e!193338)))

(assert (=> b!309519 (= e!193337 e!193338)))

(assert (= (and d!68227 c!49241) b!309514))

(assert (= (and d!68227 (not c!49241)) b!309517))

(assert (= (and b!309517 c!49239) b!309518))

(assert (= (and b!309517 (not c!49239)) b!309515))

(assert (= (and d!68227 c!49240) b!309512))

(assert (= (and d!68227 (not c!49240)) b!309511))

(assert (= (and b!309511 res!166243) b!309519))

(assert (= (and b!309519 (not res!166244)) b!309513))

(assert (= (and b!309513 (not res!166242)) b!309516))

(declare-fun m!319525 () Bool)

(assert (=> b!309513 m!319525))

(assert (=> b!309516 m!319525))

(declare-fun m!319527 () Bool)

(assert (=> d!68227 m!319527))

(assert (=> d!68227 m!319425))

(assert (=> b!309519 m!319525))

(declare-fun m!319529 () Bool)

(assert (=> b!309515 m!319529))

(assert (=> b!309515 m!319529))

(declare-fun m!319531 () Bool)

(assert (=> b!309515 m!319531))

(assert (=> b!309377 d!68227))

(declare-fun d!68229 () Bool)

(declare-fun lt!151639 () (_ BitVec 32))

(assert (=> d!68229 (and (bvsge lt!151639 #b00000000000000000000000000000000) (bvslt lt!151639 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68229 (= lt!151639 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68229 (validMask!0 mask!3709)))

(assert (=> d!68229 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!151639)))

(declare-fun bs!10876 () Bool)

(assert (= bs!10876 d!68229))

(declare-fun m!319533 () Bool)

(assert (=> bs!10876 m!319533))

(assert (=> bs!10876 m!319425))

(assert (=> b!309377 d!68229))

(declare-fun d!68231 () Bool)

(declare-fun lt!151661 () SeekEntryResult!2625)

(assert (=> d!68231 (and (or (is-Undefined!2625 lt!151661) (not (is-Found!2625 lt!151661)) (and (bvsge (index!12677 lt!151661) #b00000000000000000000000000000000) (bvslt (index!12677 lt!151661) (size!7826 a!3293)))) (or (is-Undefined!2625 lt!151661) (is-Found!2625 lt!151661) (not (is-MissingZero!2625 lt!151661)) (and (bvsge (index!12676 lt!151661) #b00000000000000000000000000000000) (bvslt (index!12676 lt!151661) (size!7826 a!3293)))) (or (is-Undefined!2625 lt!151661) (is-Found!2625 lt!151661) (is-MissingZero!2625 lt!151661) (not (is-MissingVacant!2625 lt!151661)) (and (bvsge (index!12679 lt!151661) #b00000000000000000000000000000000) (bvslt (index!12679 lt!151661) (size!7826 a!3293)))) (or (is-Undefined!2625 lt!151661) (ite (is-Found!2625 lt!151661) (= (select (arr!7474 a!3293) (index!12677 lt!151661)) k!2441) (ite (is-MissingZero!2625 lt!151661) (= (select (arr!7474 a!3293) (index!12676 lt!151661)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2625 lt!151661) (= (select (arr!7474 a!3293) (index!12679 lt!151661)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!193378 () SeekEntryResult!2625)

(assert (=> d!68231 (= lt!151661 e!193378)))

(declare-fun c!49267 () Bool)

(declare-fun lt!151662 () SeekEntryResult!2625)

(assert (=> d!68231 (= c!49267 (and (is-Intermediate!2625 lt!151662) (undefined!3437 lt!151662)))))

(assert (=> d!68231 (= lt!151662 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68231 (validMask!0 mask!3709)))

(assert (=> d!68231 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!151661)))

(declare-fun e!193379 () SeekEntryResult!2625)

(declare-fun b!309583 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15785 (_ BitVec 32)) SeekEntryResult!2625)

(assert (=> b!309583 (= e!193379 (seekKeyOrZeroReturnVacant!0 (x!30872 lt!151662) (index!12678 lt!151662) (index!12678 lt!151662) k!2441 a!3293 mask!3709))))

(declare-fun b!309584 () Bool)

(declare-fun e!193380 () SeekEntryResult!2625)

(assert (=> b!309584 (= e!193380 (Found!2625 (index!12678 lt!151662)))))

(declare-fun b!309585 () Bool)

(assert (=> b!309585 (= e!193378 Undefined!2625)))

(declare-fun b!309586 () Bool)

(declare-fun c!49266 () Bool)

(declare-fun lt!151663 () (_ BitVec 64))

(assert (=> b!309586 (= c!49266 (= lt!151663 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!309586 (= e!193380 e!193379)))

(declare-fun b!309587 () Bool)

(assert (=> b!309587 (= e!193379 (MissingZero!2625 (index!12678 lt!151662)))))

(declare-fun b!309588 () Bool)

(assert (=> b!309588 (= e!193378 e!193380)))

(assert (=> b!309588 (= lt!151663 (select (arr!7474 a!3293) (index!12678 lt!151662)))))

(declare-fun c!49268 () Bool)

(assert (=> b!309588 (= c!49268 (= lt!151663 k!2441))))

(assert (= (and d!68231 c!49267) b!309585))

(assert (= (and d!68231 (not c!49267)) b!309588))

(assert (= (and b!309588 c!49268) b!309584))

(assert (= (and b!309588 (not c!49268)) b!309586))

(assert (= (and b!309586 c!49266) b!309587))

(assert (= (and b!309586 (not c!49266)) b!309583))

(declare-fun m!319553 () Bool)

(assert (=> d!68231 m!319553))

(assert (=> d!68231 m!319429))

(assert (=> d!68231 m!319431))

(declare-fun m!319555 () Bool)

(assert (=> d!68231 m!319555))

(declare-fun m!319557 () Bool)

(assert (=> d!68231 m!319557))

(assert (=> d!68231 m!319425))

(assert (=> d!68231 m!319429))

(declare-fun m!319559 () Bool)

(assert (=> b!309583 m!319559))

(declare-fun m!319561 () Bool)

(assert (=> b!309588 m!319561))

(assert (=> b!309383 d!68231))

(declare-fun b!309589 () Bool)

(declare-fun e!193383 () Bool)

(declare-fun e!193381 () Bool)

(assert (=> b!309589 (= e!193383 e!193381)))

(declare-fun res!166261 () Bool)

(declare-fun lt!151664 () SeekEntryResult!2625)

(assert (=> b!309589 (= res!166261 (and (is-Intermediate!2625 lt!151664) (not (undefined!3437 lt!151664)) (bvslt (x!30872 lt!151664) #b01111111111111111111111111111110) (bvsge (x!30872 lt!151664) #b00000000000000000000000000000000) (bvsge (x!30872 lt!151664) x!1427)))))

(assert (=> b!309589 (=> (not res!166261) (not e!193381))))

(declare-fun b!309590 () Bool)

(assert (=> b!309590 (= e!193383 (bvsge (x!30872 lt!151664) #b01111111111111111111111111111110))))

(declare-fun d!68245 () Bool)

(assert (=> d!68245 e!193383))

(declare-fun c!49270 () Bool)

(assert (=> d!68245 (= c!49270 (and (is-Intermediate!2625 lt!151664) (undefined!3437 lt!151664)))))

(declare-fun e!193385 () SeekEntryResult!2625)

(assert (=> d!68245 (= lt!151664 e!193385)))

(declare-fun c!49271 () Bool)

(assert (=> d!68245 (= c!49271 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!151665 () (_ BitVec 64))

(assert (=> d!68245 (= lt!151665 (select (arr!7474 a!3293) index!1781))))

(assert (=> d!68245 (validMask!0 mask!3709)))

(assert (=> d!68245 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151664)))

(declare-fun b!309591 () Bool)

(assert (=> b!309591 (and (bvsge (index!12678 lt!151664) #b00000000000000000000000000000000) (bvslt (index!12678 lt!151664) (size!7826 a!3293)))))

(declare-fun res!166260 () Bool)

(assert (=> b!309591 (= res!166260 (= (select (arr!7474 a!3293) (index!12678 lt!151664)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!193382 () Bool)

(assert (=> b!309591 (=> res!166260 e!193382)))

(declare-fun b!309592 () Bool)

(assert (=> b!309592 (= e!193385 (Intermediate!2625 true index!1781 x!1427))))

(declare-fun b!309593 () Bool)

(declare-fun e!193384 () SeekEntryResult!2625)

(assert (=> b!309593 (= e!193384 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309594 () Bool)

(assert (=> b!309594 (and (bvsge (index!12678 lt!151664) #b00000000000000000000000000000000) (bvslt (index!12678 lt!151664) (size!7826 a!3293)))))

(assert (=> b!309594 (= e!193382 (= (select (arr!7474 a!3293) (index!12678 lt!151664)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!309595 () Bool)

(assert (=> b!309595 (= e!193385 e!193384)))

(declare-fun c!49269 () Bool)

(assert (=> b!309595 (= c!49269 (or (= lt!151665 k!2441) (= (bvadd lt!151665 lt!151665) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!309596 () Bool)

(assert (=> b!309596 (= e!193384 (Intermediate!2625 false index!1781 x!1427))))

(declare-fun b!309597 () Bool)

(assert (=> b!309597 (and (bvsge (index!12678 lt!151664) #b00000000000000000000000000000000) (bvslt (index!12678 lt!151664) (size!7826 a!3293)))))

(declare-fun res!166262 () Bool)

(assert (=> b!309597 (= res!166262 (= (select (arr!7474 a!3293) (index!12678 lt!151664)) k!2441))))

(assert (=> b!309597 (=> res!166262 e!193382)))

(assert (=> b!309597 (= e!193381 e!193382)))

(assert (= (and d!68245 c!49271) b!309592))

(assert (= (and d!68245 (not c!49271)) b!309595))

(assert (= (and b!309595 c!49269) b!309596))

(assert (= (and b!309595 (not c!49269)) b!309593))

(assert (= (and d!68245 c!49270) b!309590))

(assert (= (and d!68245 (not c!49270)) b!309589))

(assert (= (and b!309589 res!166261) b!309597))

(assert (= (and b!309597 (not res!166262)) b!309591))

(assert (= (and b!309591 (not res!166260)) b!309594))

(declare-fun m!319563 () Bool)

(assert (=> b!309591 m!319563))

(assert (=> b!309594 m!319563))

(assert (=> d!68245 m!319417))

(assert (=> d!68245 m!319425))

(assert (=> b!309597 m!319563))

(assert (=> b!309593 m!319435))

(assert (=> b!309593 m!319435))

(declare-fun m!319565 () Bool)

(assert (=> b!309593 m!319565))

(assert (=> b!309378 d!68245))

(declare-fun d!68247 () Bool)

(assert (=> d!68247 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30834 d!68247))

(declare-fun d!68255 () Bool)

(assert (=> d!68255 (= (array_inv!5428 a!3293) (bvsge (size!7826 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30834 d!68255))

(declare-fun b!309636 () Bool)

(declare-fun e!193412 () Bool)

(declare-fun e!193413 () Bool)

(assert (=> b!309636 (= e!193412 e!193413)))

(declare-fun lt!151695 () (_ BitVec 64))

(assert (=> b!309636 (= lt!151695 (select (arr!7474 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9578 0))(
  ( (Unit!9579) )
))
(declare-fun lt!151696 () Unit!9578)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15785 (_ BitVec 64) (_ BitVec 32)) Unit!9578)

(assert (=> b!309636 (= lt!151696 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!151695 #b00000000000000000000000000000000))))

(assert (=> b!309636 (arrayContainsKey!0 a!3293 lt!151695 #b00000000000000000000000000000000)))

(declare-fun lt!151694 () Unit!9578)

(assert (=> b!309636 (= lt!151694 lt!151696)))

(declare-fun res!166280 () Bool)

(assert (=> b!309636 (= res!166280 (= (seekEntryOrOpen!0 (select (arr!7474 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2625 #b00000000000000000000000000000000)))))

(assert (=> b!309636 (=> (not res!166280) (not e!193413))))

(declare-fun d!68257 () Bool)

(declare-fun res!166281 () Bool)

(declare-fun e!193411 () Bool)

(assert (=> d!68257 (=> res!166281 e!193411)))

(assert (=> d!68257 (= res!166281 (bvsge #b00000000000000000000000000000000 (size!7826 a!3293)))))

(assert (=> d!68257 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!193411)))

(declare-fun b!309637 () Bool)

(assert (=> b!309637 (= e!193411 e!193412)))

(declare-fun c!49283 () Bool)

(assert (=> b!309637 (= c!49283 (validKeyInArray!0 (select (arr!7474 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!309638 () Bool)

(declare-fun call!25922 () Bool)

(assert (=> b!309638 (= e!193413 call!25922)))

(declare-fun bm!25919 () Bool)

(assert (=> bm!25919 (= call!25922 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!309639 () Bool)

(assert (=> b!309639 (= e!193412 call!25922)))

(assert (= (and d!68257 (not res!166281)) b!309637))

(assert (= (and b!309637 c!49283) b!309636))

(assert (= (and b!309637 (not c!49283)) b!309639))

(assert (= (and b!309636 res!166280) b!309638))

(assert (= (or b!309638 b!309639) bm!25919))

(declare-fun m!319595 () Bool)

(assert (=> b!309636 m!319595))

(declare-fun m!319597 () Bool)

(assert (=> b!309636 m!319597))

(declare-fun m!319599 () Bool)

(assert (=> b!309636 m!319599))

(assert (=> b!309636 m!319595))

(declare-fun m!319601 () Bool)

(assert (=> b!309636 m!319601))

(assert (=> b!309637 m!319595))

(assert (=> b!309637 m!319595))

(declare-fun m!319603 () Bool)

(assert (=> b!309637 m!319603))

(declare-fun m!319605 () Bool)

(assert (=> bm!25919 m!319605))

(assert (=> b!309379 d!68257))

(declare-fun d!68265 () Bool)

(declare-fun res!166286 () Bool)

(declare-fun e!193418 () Bool)

(assert (=> d!68265 (=> res!166286 e!193418)))

(assert (=> d!68265 (= res!166286 (= (select (arr!7474 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68265 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!193418)))

(declare-fun b!309644 () Bool)

(declare-fun e!193419 () Bool)

(assert (=> b!309644 (= e!193418 e!193419)))

(declare-fun res!166287 () Bool)

(assert (=> b!309644 (=> (not res!166287) (not e!193419))))

(assert (=> b!309644 (= res!166287 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7826 a!3293)))))

(declare-fun b!309645 () Bool)

(assert (=> b!309645 (= e!193419 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68265 (not res!166286)) b!309644))

(assert (= (and b!309644 res!166287) b!309645))

(assert (=> d!68265 m!319595))

(declare-fun m!319607 () Bool)

(assert (=> b!309645 m!319607))

(assert (=> b!309380 d!68265))

(declare-fun d!68267 () Bool)

(assert (=> d!68267 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!309381 d!68267))

(push 1)

(assert (not b!309645))

(assert (not b!309636))

(assert (not b!309515))

(assert (not d!68227))

(assert (not d!68211))

(assert (not b!309637))

(assert (not d!68231))

(assert (not b!309502))

(assert (not b!309593))

(assert (not b!309583))

(assert (not d!68229))

(assert (not d!68245))

(assert (not bm!25919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

