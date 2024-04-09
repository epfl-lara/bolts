; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30838 () Bool)

(assert start!30838)

(declare-fun b!309430 () Bool)

(declare-fun e!193290 () Bool)

(declare-fun e!193289 () Bool)

(assert (=> b!309430 (= e!193290 e!193289)))

(declare-fun res!166206 () Bool)

(assert (=> b!309430 (=> (not res!166206) (not e!193289))))

(declare-datatypes ((array!15789 0))(
  ( (array!15790 (arr!7476 (Array (_ BitVec 32) (_ BitVec 64))) (size!7828 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15789)

(declare-datatypes ((SeekEntryResult!2627 0))(
  ( (MissingZero!2627 (index!12684 (_ BitVec 32))) (Found!2627 (index!12685 (_ BitVec 32))) (Intermediate!2627 (undefined!3439 Bool) (index!12686 (_ BitVec 32)) (x!30874 (_ BitVec 32))) (Undefined!2627) (MissingVacant!2627 (index!12687 (_ BitVec 32))) )
))
(declare-fun lt!151601 () SeekEntryResult!2627)

(declare-fun lt!151600 () SeekEntryResult!2627)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun resX!52 () (_ BitVec 32))

(declare-fun x!1427 () (_ BitVec 32))

(declare-fun index!1781 () (_ BitVec 32))

(assert (=> b!309430 (= res!166206 (and (= lt!151601 lt!151600) (bvslt resX!52 #b01111111111111111111111111111110) (not (= (select (arr!7476 a!3293) index!1781) k!2441)) (not (= x!1427 resX!52))))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15789 (_ BitVec 32)) SeekEntryResult!2627)

(assert (=> b!309430 (= lt!151601 (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709))))

(declare-fun b!309431 () Bool)

(declare-fun res!166202 () Bool)

(declare-fun e!193291 () Bool)

(assert (=> b!309431 (=> (not res!166202) (not e!193291))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!309431 (= res!166202 (validKeyInArray!0 k!2441))))

(declare-fun res!166207 () Bool)

(assert (=> start!30838 (=> (not res!166207) (not e!193291))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30838 (= res!166207 (validMask!0 mask!3709))))

(assert (=> start!30838 e!193291))

(declare-fun array_inv!5430 (array!15789) Bool)

(assert (=> start!30838 (array_inv!5430 a!3293)))

(assert (=> start!30838 true))

(declare-fun b!309432 () Bool)

(declare-fun res!166208 () Bool)

(assert (=> b!309432 (=> (not res!166208) (not e!193290))))

(declare-fun resIndex!52 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(assert (=> b!309432 (= res!166208 (and (= (select (arr!7476 a!3293) resIndex!52) #b0000000000000000000000000000000000000000000000000000000000000000) (= resIndex!52 i!1240) (bvsle x!1427 resX!52) (bvsge x!1427 #b00000000000000000000000000000000) (bvsge index!1781 #b00000000000000000000000000000000) (bvslt index!1781 (size!7828 a!3293))))))

(declare-fun b!309433 () Bool)

(declare-fun res!166205 () Bool)

(assert (=> b!309433 (=> (not res!166205) (not e!193291))))

(assert (=> b!309433 (= res!166205 (and (= (size!7828 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7828 a!3293))))))

(declare-fun b!309434 () Bool)

(declare-fun res!166204 () Bool)

(assert (=> b!309434 (=> (not res!166204) (not e!193291))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15789 (_ BitVec 32)) SeekEntryResult!2627)

(assert (=> b!309434 (= res!166204 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2627 i!1240)))))

(declare-fun b!309435 () Bool)

(declare-fun lt!151599 () (_ BitVec 32))

(assert (=> b!309435 (= e!193289 (not (or (bvslt mask!3709 #b00000000000000000000000000000000) (and (bvsge lt!151599 #b00000000000000000000000000000000) (bvslt lt!151599 (bvadd #b00000000000000000000000000000001 mask!3709))))))))

(assert (=> b!309435 (= lt!151601 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151599 k!2441 a!3293 mask!3709))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309435 (= lt!151599 (nextIndex!0 index!1781 x!1427 mask!3709))))

(declare-fun b!309436 () Bool)

(declare-fun res!166209 () Bool)

(assert (=> b!309436 (=> (not res!166209) (not e!193291))))

(declare-fun arrayContainsKey!0 (array!15789 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!309436 (= res!166209 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!309437 () Bool)

(declare-fun res!166203 () Bool)

(assert (=> b!309437 (=> (not res!166203) (not e!193291))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15789 (_ BitVec 32)) Bool)

(assert (=> b!309437 (= res!166203 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!309438 () Bool)

(assert (=> b!309438 (= e!193291 e!193290)))

(declare-fun res!166201 () Bool)

(assert (=> b!309438 (=> (not res!166201) (not e!193290))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!309438 (= res!166201 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151600))))

(assert (=> b!309438 (= lt!151600 (Intermediate!2627 false resIndex!52 resX!52))))

(assert (= (and start!30838 res!166207) b!309433))

(assert (= (and b!309433 res!166205) b!309431))

(assert (= (and b!309431 res!166202) b!309436))

(assert (= (and b!309436 res!166209) b!309434))

(assert (= (and b!309434 res!166204) b!309437))

(assert (= (and b!309437 res!166203) b!309438))

(assert (= (and b!309438 res!166201) b!309432))

(assert (= (and b!309432 res!166208) b!309430))

(assert (= (and b!309430 res!166206) b!309435))

(declare-fun m!319469 () Bool)

(assert (=> b!309430 m!319469))

(declare-fun m!319471 () Bool)

(assert (=> b!309430 m!319471))

(declare-fun m!319473 () Bool)

(assert (=> b!309438 m!319473))

(assert (=> b!309438 m!319473))

(declare-fun m!319475 () Bool)

(assert (=> b!309438 m!319475))

(declare-fun m!319477 () Bool)

(assert (=> start!30838 m!319477))

(declare-fun m!319479 () Bool)

(assert (=> start!30838 m!319479))

(declare-fun m!319481 () Bool)

(assert (=> b!309431 m!319481))

(declare-fun m!319483 () Bool)

(assert (=> b!309432 m!319483))

(declare-fun m!319485 () Bool)

(assert (=> b!309435 m!319485))

(declare-fun m!319487 () Bool)

(assert (=> b!309435 m!319487))

(declare-fun m!319489 () Bool)

(assert (=> b!309437 m!319489))

(declare-fun m!319491 () Bool)

(assert (=> b!309436 m!319491))

(declare-fun m!319493 () Bool)

(assert (=> b!309434 m!319493))

(push 1)

(assert (not b!309434))

(assert (not start!30838))

(assert (not b!309436))

(assert (not b!309437))

(assert (not b!309430))

(assert (not b!309435))

(assert (not b!309431))

(assert (not b!309438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!68213 () Bool)

(declare-fun res!166220 () Bool)

(declare-fun e!193306 () Bool)

(assert (=> d!68213 (=> res!166220 e!193306)))

(assert (=> d!68213 (= res!166220 (= (select (arr!7476 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!68213 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!193306)))

(declare-fun b!309461 () Bool)

(declare-fun e!193307 () Bool)

(assert (=> b!309461 (= e!193306 e!193307)))

(declare-fun res!166221 () Bool)

(assert (=> b!309461 (=> (not res!166221) (not e!193307))))

(assert (=> b!309461 (= res!166221 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7828 a!3293)))))

(declare-fun b!309462 () Bool)

(assert (=> b!309462 (= e!193307 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!68213 (not res!166220)) b!309461))

(assert (= (and b!309461 res!166221) b!309462))

(declare-fun m!319495 () Bool)

(assert (=> d!68213 m!319495))

(declare-fun m!319497 () Bool)

(assert (=> b!309462 m!319497))

(assert (=> b!309436 d!68213))

(declare-fun d!68215 () Bool)

(assert (=> d!68215 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!309431 d!68215))

(declare-fun bm!25913 () Bool)

(declare-fun call!25916 () Bool)

(assert (=> bm!25913 (= call!25916 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!309507 () Bool)

(declare-fun e!193334 () Bool)

(declare-fun e!193336 () Bool)

(assert (=> b!309507 (= e!193334 e!193336)))

(declare-fun c!49238 () Bool)

(assert (=> b!309507 (= c!49238 (validKeyInArray!0 (select (arr!7476 a!3293) #b00000000000000000000000000000000)))))

(declare-fun b!309508 () Bool)

(assert (=> b!309508 (= e!193336 call!25916)))

(declare-fun d!68217 () Bool)

(declare-fun res!166240 () Bool)

(assert (=> d!68217 (=> res!166240 e!193334)))

(assert (=> d!68217 (= res!166240 (bvsge #b00000000000000000000000000000000 (size!7828 a!3293)))))

(assert (=> d!68217 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!193334)))

(declare-fun b!309509 () Bool)

(declare-fun e!193335 () Bool)

(assert (=> b!309509 (= e!193336 e!193335)))

(declare-fun lt!151627 () (_ BitVec 64))

(assert (=> b!309509 (= lt!151627 (select (arr!7476 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9574 0))(
  ( (Unit!9575) )
))
(declare-fun lt!151626 () Unit!9574)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15789 (_ BitVec 64) (_ BitVec 32)) Unit!9574)

(assert (=> b!309509 (= lt!151626 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!151627 #b00000000000000000000000000000000))))

(assert (=> b!309509 (arrayContainsKey!0 a!3293 lt!151627 #b00000000000000000000000000000000)))

(declare-fun lt!151628 () Unit!9574)

(assert (=> b!309509 (= lt!151628 lt!151626)))

(declare-fun res!166241 () Bool)

(assert (=> b!309509 (= res!166241 (= (seekEntryOrOpen!0 (select (arr!7476 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2627 #b00000000000000000000000000000000)))))

(assert (=> b!309509 (=> (not res!166241) (not e!193335))))

(declare-fun b!309510 () Bool)

(assert (=> b!309510 (= e!193335 call!25916)))

(assert (= (and d!68217 (not res!166240)) b!309507))

(assert (= (and b!309507 c!49238) b!309509))

(assert (= (and b!309507 (not c!49238)) b!309508))

(assert (= (and b!309509 res!166241) b!309510))

(assert (= (or b!309510 b!309508) bm!25913))

(declare-fun m!319515 () Bool)

(assert (=> bm!25913 m!319515))

(assert (=> b!309507 m!319495))

(assert (=> b!309507 m!319495))

(declare-fun m!319517 () Bool)

(assert (=> b!309507 m!319517))

(assert (=> b!309509 m!319495))

(declare-fun m!319519 () Bool)

(assert (=> b!309509 m!319519))

(declare-fun m!319521 () Bool)

(assert (=> b!309509 m!319521))

(assert (=> b!309509 m!319495))

(declare-fun m!319523 () Bool)

(assert (=> b!309509 m!319523))

(assert (=> b!309437 d!68217))

(declare-fun d!68225 () Bool)

(assert (=> d!68225 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30838 d!68225))

(declare-fun d!68233 () Bool)

(assert (=> d!68233 (= (array_inv!5430 a!3293) (bvsge (size!7828 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30838 d!68233))

(declare-fun b!309606 () Bool)

(declare-fun e!193396 () SeekEntryResult!2627)

(assert (=> b!309606 (= e!193396 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309607 () Bool)

(declare-fun lt!151673 () SeekEntryResult!2627)

(assert (=> b!309607 (and (bvsge (index!12686 lt!151673) #b00000000000000000000000000000000) (bvslt (index!12686 lt!151673) (size!7828 a!3293)))))

(declare-fun res!166267 () Bool)

(assert (=> b!309607 (= res!166267 (= (select (arr!7476 a!3293) (index!12686 lt!151673)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!193393 () Bool)

(assert (=> b!309607 (=> res!166267 e!193393)))

(declare-fun b!309608 () Bool)

(assert (=> b!309608 (and (bvsge (index!12686 lt!151673) #b00000000000000000000000000000000) (bvslt (index!12686 lt!151673) (size!7828 a!3293)))))

(assert (=> b!309608 (= e!193393 (= (select (arr!7476 a!3293) (index!12686 lt!151673)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68235 () Bool)

(declare-fun e!193392 () Bool)

(assert (=> d!68235 e!193392))

(declare-fun c!49275 () Bool)

(assert (=> d!68235 (= c!49275 (and (is-Intermediate!2627 lt!151673) (undefined!3439 lt!151673)))))

(declare-fun e!193394 () SeekEntryResult!2627)

(assert (=> d!68235 (= lt!151673 e!193394)))

(declare-fun c!49276 () Bool)

(assert (=> d!68235 (= c!49276 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!151672 () (_ BitVec 64))

(assert (=> d!68235 (= lt!151672 (select (arr!7476 a!3293) (toIndex!0 k!2441 mask!3709)))))

(assert (=> d!68235 (validMask!0 mask!3709)))

(assert (=> d!68235 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709) lt!151673)))

(declare-fun b!309609 () Bool)

(declare-fun e!193395 () Bool)

(assert (=> b!309609 (= e!193392 e!193395)))

(declare-fun res!166268 () Bool)

(assert (=> b!309609 (= res!166268 (and (is-Intermediate!2627 lt!151673) (not (undefined!3439 lt!151673)) (bvslt (x!30874 lt!151673) #b01111111111111111111111111111110) (bvsge (x!30874 lt!151673) #b00000000000000000000000000000000) (bvsge (x!30874 lt!151673) #b00000000000000000000000000000000)))))

(assert (=> b!309609 (=> (not res!166268) (not e!193395))))

(declare-fun b!309610 () Bool)

(assert (=> b!309610 (= e!193394 e!193396)))

(declare-fun c!49274 () Bool)

(assert (=> b!309610 (= c!49274 (or (= lt!151672 k!2441) (= (bvadd lt!151672 lt!151672) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!309611 () Bool)

(assert (=> b!309611 (and (bvsge (index!12686 lt!151673) #b00000000000000000000000000000000) (bvslt (index!12686 lt!151673) (size!7828 a!3293)))))

(declare-fun res!166269 () Bool)

(assert (=> b!309611 (= res!166269 (= (select (arr!7476 a!3293) (index!12686 lt!151673)) k!2441))))

(assert (=> b!309611 (=> res!166269 e!193393)))

(assert (=> b!309611 (= e!193395 e!193393)))

(declare-fun b!309612 () Bool)

(assert (=> b!309612 (= e!193394 (Intermediate!2627 true (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(declare-fun b!309613 () Bool)

(assert (=> b!309613 (= e!193392 (bvsge (x!30874 lt!151673) #b01111111111111111111111111111110))))

(declare-fun b!309614 () Bool)

(assert (=> b!309614 (= e!193396 (Intermediate!2627 false (toIndex!0 k!2441 mask!3709) #b00000000000000000000000000000000))))

(assert (= (and d!68235 c!49276) b!309612))

(assert (= (and d!68235 (not c!49276)) b!309610))

(assert (= (and b!309610 c!49274) b!309614))

(assert (= (and b!309610 (not c!49274)) b!309606))

(assert (= (and d!68235 c!49275) b!309613))

(assert (= (and d!68235 (not c!49275)) b!309609))

(assert (= (and b!309609 res!166268) b!309611))

(assert (= (and b!309611 (not res!166269)) b!309607))

(assert (= (and b!309607 (not res!166267)) b!309608))

(assert (=> b!309606 m!319473))

(declare-fun m!319567 () Bool)

(assert (=> b!309606 m!319567))

(assert (=> b!309606 m!319567))

(declare-fun m!319569 () Bool)

(assert (=> b!309606 m!319569))

(declare-fun m!319571 () Bool)

(assert (=> b!309611 m!319571))

(assert (=> d!68235 m!319473))

(declare-fun m!319573 () Bool)

(assert (=> d!68235 m!319573))

(assert (=> d!68235 m!319477))

(assert (=> b!309608 m!319571))

(assert (=> b!309607 m!319571))

(assert (=> b!309438 d!68235))

(declare-fun d!68249 () Bool)

(declare-fun lt!151682 () (_ BitVec 32))

(declare-fun lt!151681 () (_ BitVec 32))

(assert (=> d!68249 (= lt!151682 (bvmul (bvxor lt!151681 (bvlshr lt!151681 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!68249 (= lt!151681 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!68249 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!166272 (let ((h!5365 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!30881 (bvmul (bvxor h!5365 (bvlshr h!5365 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!30881 (bvlshr x!30881 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!166272 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!166272 #b00000000000000000000000000000000))))))

(assert (=> d!68249 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!151682 (bvlshr lt!151682 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!309438 d!68249))

(declare-fun b!309658 () Bool)

(declare-fun e!193428 () SeekEntryResult!2627)

(declare-fun lt!151703 () SeekEntryResult!2627)

(assert (=> b!309658 (= e!193428 (Found!2627 (index!12686 lt!151703)))))

(declare-fun b!309659 () Bool)

(declare-fun e!193426 () SeekEntryResult!2627)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15789 (_ BitVec 32)) SeekEntryResult!2627)

(assert (=> b!309659 (= e!193426 (seekKeyOrZeroReturnVacant!0 (x!30874 lt!151703) (index!12686 lt!151703) (index!12686 lt!151703) k!2441 a!3293 mask!3709))))

(declare-fun d!68253 () Bool)

(declare-fun lt!151705 () SeekEntryResult!2627)

(assert (=> d!68253 (and (or (is-Undefined!2627 lt!151705) (not (is-Found!2627 lt!151705)) (and (bvsge (index!12685 lt!151705) #b00000000000000000000000000000000) (bvslt (index!12685 lt!151705) (size!7828 a!3293)))) (or (is-Undefined!2627 lt!151705) (is-Found!2627 lt!151705) (not (is-MissingZero!2627 lt!151705)) (and (bvsge (index!12684 lt!151705) #b00000000000000000000000000000000) (bvslt (index!12684 lt!151705) (size!7828 a!3293)))) (or (is-Undefined!2627 lt!151705) (is-Found!2627 lt!151705) (is-MissingZero!2627 lt!151705) (not (is-MissingVacant!2627 lt!151705)) (and (bvsge (index!12687 lt!151705) #b00000000000000000000000000000000) (bvslt (index!12687 lt!151705) (size!7828 a!3293)))) (or (is-Undefined!2627 lt!151705) (ite (is-Found!2627 lt!151705) (= (select (arr!7476 a!3293) (index!12685 lt!151705)) k!2441) (ite (is-MissingZero!2627 lt!151705) (= (select (arr!7476 a!3293) (index!12684 lt!151705)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2627 lt!151705) (= (select (arr!7476 a!3293) (index!12687 lt!151705)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!193427 () SeekEntryResult!2627)

(assert (=> d!68253 (= lt!151705 e!193427)))

(declare-fun c!49291 () Bool)

(assert (=> d!68253 (= c!49291 (and (is-Intermediate!2627 lt!151703) (undefined!3439 lt!151703)))))

(assert (=> d!68253 (= lt!151703 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!68253 (validMask!0 mask!3709)))

(assert (=> d!68253 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!151705)))

(declare-fun b!309660 () Bool)

(assert (=> b!309660 (= e!193427 e!193428)))

(declare-fun lt!151704 () (_ BitVec 64))

(assert (=> b!309660 (= lt!151704 (select (arr!7476 a!3293) (index!12686 lt!151703)))))

(declare-fun c!49292 () Bool)

(assert (=> b!309660 (= c!49292 (= lt!151704 k!2441))))

(declare-fun b!309661 () Bool)

(assert (=> b!309661 (= e!193426 (MissingZero!2627 (index!12686 lt!151703)))))

(declare-fun b!309662 () Bool)

(declare-fun c!49290 () Bool)

(assert (=> b!309662 (= c!49290 (= lt!151704 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!309662 (= e!193428 e!193426)))

(declare-fun b!309663 () Bool)

(assert (=> b!309663 (= e!193427 Undefined!2627)))

(assert (= (and d!68253 c!49291) b!309663))

(assert (= (and d!68253 (not c!49291)) b!309660))

(assert (= (and b!309660 c!49292) b!309658))

(assert (= (and b!309660 (not c!49292)) b!309662))

(assert (= (and b!309662 c!49290) b!309661))

(assert (= (and b!309662 (not c!49290)) b!309659))

(declare-fun m!319609 () Bool)

(assert (=> b!309659 m!319609))

(assert (=> d!68253 m!319473))

(declare-fun m!319611 () Bool)

(assert (=> d!68253 m!319611))

(declare-fun m!319613 () Bool)

(assert (=> d!68253 m!319613))

(declare-fun m!319615 () Bool)

(assert (=> d!68253 m!319615))

(assert (=> d!68253 m!319473))

(assert (=> d!68253 m!319475))

(assert (=> d!68253 m!319477))

(declare-fun m!319617 () Bool)

(assert (=> b!309660 m!319617))

(assert (=> b!309434 d!68253))

(declare-fun e!193433 () SeekEntryResult!2627)

(declare-fun b!309664 () Bool)

(assert (=> b!309664 (= e!193433 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427 #b00000000000000000000000000000001) (nextIndex!0 lt!151599 (bvadd #b00000000000000000000000000000001 x!1427) mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309665 () Bool)

(declare-fun lt!151707 () SeekEntryResult!2627)

(assert (=> b!309665 (and (bvsge (index!12686 lt!151707) #b00000000000000000000000000000000) (bvslt (index!12686 lt!151707) (size!7828 a!3293)))))

(declare-fun res!166288 () Bool)

(assert (=> b!309665 (= res!166288 (= (select (arr!7476 a!3293) (index!12686 lt!151707)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!193430 () Bool)

(assert (=> b!309665 (=> res!166288 e!193430)))

(declare-fun b!309666 () Bool)

(assert (=> b!309666 (and (bvsge (index!12686 lt!151707) #b00000000000000000000000000000000) (bvslt (index!12686 lt!151707) (size!7828 a!3293)))))

(assert (=> b!309666 (= e!193430 (= (select (arr!7476 a!3293) (index!12686 lt!151707)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68269 () Bool)

(declare-fun e!193429 () Bool)

(assert (=> d!68269 e!193429))

(declare-fun c!49294 () Bool)

(assert (=> d!68269 (= c!49294 (and (is-Intermediate!2627 lt!151707) (undefined!3439 lt!151707)))))

(declare-fun e!193431 () SeekEntryResult!2627)

(assert (=> d!68269 (= lt!151707 e!193431)))

(declare-fun c!49295 () Bool)

(assert (=> d!68269 (= c!49295 (bvsge (bvadd #b00000000000000000000000000000001 x!1427) #b01111111111111111111111111111110))))

(declare-fun lt!151706 () (_ BitVec 64))

(assert (=> d!68269 (= lt!151706 (select (arr!7476 a!3293) lt!151599))))

(assert (=> d!68269 (validMask!0 mask!3709)))

(assert (=> d!68269 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1427) lt!151599 k!2441 a!3293 mask!3709) lt!151707)))

(declare-fun b!309667 () Bool)

(declare-fun e!193432 () Bool)

(assert (=> b!309667 (= e!193429 e!193432)))

(declare-fun res!166289 () Bool)

(assert (=> b!309667 (= res!166289 (and (is-Intermediate!2627 lt!151707) (not (undefined!3439 lt!151707)) (bvslt (x!30874 lt!151707) #b01111111111111111111111111111110) (bvsge (x!30874 lt!151707) #b00000000000000000000000000000000) (bvsge (x!30874 lt!151707) (bvadd #b00000000000000000000000000000001 x!1427))))))

(assert (=> b!309667 (=> (not res!166289) (not e!193432))))

(declare-fun b!309668 () Bool)

(assert (=> b!309668 (= e!193431 e!193433)))

(declare-fun c!49293 () Bool)

(assert (=> b!309668 (= c!49293 (or (= lt!151706 k!2441) (= (bvadd lt!151706 lt!151706) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!309669 () Bool)

(assert (=> b!309669 (and (bvsge (index!12686 lt!151707) #b00000000000000000000000000000000) (bvslt (index!12686 lt!151707) (size!7828 a!3293)))))

(declare-fun res!166290 () Bool)

(assert (=> b!309669 (= res!166290 (= (select (arr!7476 a!3293) (index!12686 lt!151707)) k!2441))))

(assert (=> b!309669 (=> res!166290 e!193430)))

(assert (=> b!309669 (= e!193432 e!193430)))

(declare-fun b!309670 () Bool)

(assert (=> b!309670 (= e!193431 (Intermediate!2627 true lt!151599 (bvadd #b00000000000000000000000000000001 x!1427)))))

(declare-fun b!309671 () Bool)

(assert (=> b!309671 (= e!193429 (bvsge (x!30874 lt!151707) #b01111111111111111111111111111110))))

(declare-fun b!309672 () Bool)

(assert (=> b!309672 (= e!193433 (Intermediate!2627 false lt!151599 (bvadd #b00000000000000000000000000000001 x!1427)))))

(assert (= (and d!68269 c!49295) b!309670))

(assert (= (and d!68269 (not c!49295)) b!309668))

(assert (= (and b!309668 c!49293) b!309672))

(assert (= (and b!309668 (not c!49293)) b!309664))

(assert (= (and d!68269 c!49294) b!309671))

(assert (= (and d!68269 (not c!49294)) b!309667))

(assert (= (and b!309667 res!166289) b!309669))

(assert (= (and b!309669 (not res!166290)) b!309665))

(assert (= (and b!309665 (not res!166288)) b!309666))

(declare-fun m!319619 () Bool)

(assert (=> b!309664 m!319619))

(assert (=> b!309664 m!319619))

(declare-fun m!319621 () Bool)

(assert (=> b!309664 m!319621))

(declare-fun m!319623 () Bool)

(assert (=> b!309669 m!319623))

(declare-fun m!319625 () Bool)

(assert (=> d!68269 m!319625))

(assert (=> d!68269 m!319477))

(assert (=> b!309666 m!319623))

(assert (=> b!309665 m!319623))

(assert (=> b!309435 d!68269))

(declare-fun d!68271 () Bool)

(declare-fun lt!151710 () (_ BitVec 32))

(assert (=> d!68271 (and (bvsge lt!151710 #b00000000000000000000000000000000) (bvslt lt!151710 (bvadd mask!3709 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!68271 (= lt!151710 (choose!52 index!1781 x!1427 mask!3709))))

(assert (=> d!68271 (validMask!0 mask!3709)))

(assert (=> d!68271 (= (nextIndex!0 index!1781 x!1427 mask!3709) lt!151710)))

(declare-fun bs!10878 () Bool)

(assert (= bs!10878 d!68271))

(declare-fun m!319627 () Bool)

(assert (=> bs!10878 m!319627))

(assert (=> bs!10878 m!319477))

(assert (=> b!309435 d!68271))

(declare-fun e!193438 () SeekEntryResult!2627)

(declare-fun b!309673 () Bool)

(assert (=> b!309673 (= e!193438 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1427 #b00000000000000000000000000000001) (nextIndex!0 index!1781 x!1427 mask!3709) k!2441 a!3293 mask!3709))))

(declare-fun b!309674 () Bool)

(declare-fun lt!151712 () SeekEntryResult!2627)

(assert (=> b!309674 (and (bvsge (index!12686 lt!151712) #b00000000000000000000000000000000) (bvslt (index!12686 lt!151712) (size!7828 a!3293)))))

(declare-fun res!166291 () Bool)

(assert (=> b!309674 (= res!166291 (= (select (arr!7476 a!3293) (index!12686 lt!151712)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!193435 () Bool)

(assert (=> b!309674 (=> res!166291 e!193435)))

(declare-fun b!309675 () Bool)

(assert (=> b!309675 (and (bvsge (index!12686 lt!151712) #b00000000000000000000000000000000) (bvslt (index!12686 lt!151712) (size!7828 a!3293)))))

(assert (=> b!309675 (= e!193435 (= (select (arr!7476 a!3293) (index!12686 lt!151712)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!68273 () Bool)

(declare-fun e!193434 () Bool)

(assert (=> d!68273 e!193434))

(declare-fun c!49297 () Bool)

(assert (=> d!68273 (= c!49297 (and (is-Intermediate!2627 lt!151712) (undefined!3439 lt!151712)))))

(declare-fun e!193436 () SeekEntryResult!2627)

(assert (=> d!68273 (= lt!151712 e!193436)))

(declare-fun c!49298 () Bool)

(assert (=> d!68273 (= c!49298 (bvsge x!1427 #b01111111111111111111111111111110))))

(declare-fun lt!151711 () (_ BitVec 64))

(assert (=> d!68273 (= lt!151711 (select (arr!7476 a!3293) index!1781))))

(assert (=> d!68273 (validMask!0 mask!3709)))

(assert (=> d!68273 (= (seekKeyOrZeroOrLongMinValue!0 x!1427 index!1781 k!2441 a!3293 mask!3709) lt!151712)))

(declare-fun b!309676 () Bool)

(declare-fun e!193437 () Bool)

(assert (=> b!309676 (= e!193434 e!193437)))

(declare-fun res!166292 () Bool)

(assert (=> b!309676 (= res!166292 (and (is-Intermediate!2627 lt!151712) (not (undefined!3439 lt!151712)) (bvslt (x!30874 lt!151712) #b01111111111111111111111111111110) (bvsge (x!30874 lt!151712) #b00000000000000000000000000000000) (bvsge (x!30874 lt!151712) x!1427)))))

(assert (=> b!309676 (=> (not res!166292) (not e!193437))))

(declare-fun b!309677 () Bool)

(assert (=> b!309677 (= e!193436 e!193438)))

(declare-fun c!49296 () Bool)

(assert (=> b!309677 (= c!49296 (or (= lt!151711 k!2441) (= (bvadd lt!151711 lt!151711) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!309678 () Bool)

(assert (=> b!309678 (and (bvsge (index!12686 lt!151712) #b00000000000000000000000000000000) (bvslt (index!12686 lt!151712) (size!7828 a!3293)))))

(declare-fun res!166293 () Bool)

(assert (=> b!309678 (= res!166293 (= (select (arr!7476 a!3293) (index!12686 lt!151712)) k!2441))))

(assert (=> b!309678 (=> res!166293 e!193435)))

(assert (=> b!309678 (= e!193437 e!193435)))

(declare-fun b!309679 () Bool)

(assert (=> b!309679 (= e!193436 (Intermediate!2627 true index!1781 x!1427))))

(declare-fun b!309680 () Bool)

(assert (=> b!309680 (= e!193434 (bvsge (x!30874 lt!151712) #b01111111111111111111111111111110))))

(declare-fun b!309681 () Bool)

(assert (=> b!309681 (= e!193438 (Intermediate!2627 false index!1781 x!1427))))

(assert (= (and d!68273 c!49298) b!309679))

(assert (= (and d!68273 (not c!49298)) b!309677))

(assert (= (and b!309677 c!49296) b!309681))

(assert (= (and b!309677 (not c!49296)) b!309673))

(assert (= (and d!68273 c!49297) b!309680))

(assert (= (and d!68273 (not c!49297)) b!309676))

(assert (= (and b!309676 res!166292) b!309678))

(assert (= (and b!309678 (not res!166293)) b!309674))

(assert (= (and b!309674 (not res!166291)) b!309675))

(assert (=> b!309673 m!319487))

(assert (=> b!309673 m!319487))

(declare-fun m!319629 () Bool)

(assert (=> b!309673 m!319629))

(declare-fun m!319631 () Bool)

(assert (=> b!309678 m!319631))

(assert (=> d!68273 m!319469))

(assert (=> d!68273 m!319477))

(assert (=> b!309675 m!319631))

(assert (=> b!309674 m!319631))

(assert (=> b!309430 d!68273))

(push 1)

(assert (not b!309462))

(assert (not b!309673))

(assert (not bm!25913))

(assert (not b!309659))

(assert (not b!309664))

(assert (not b!309606))

(assert (not d!68253))

(assert (not b!309507))

(assert (not d!68271))

(assert (not b!309509))

(assert (not d!68269))

(assert (not d!68235))

(assert (not d!68273))

(check-sat)

(pop 1)

(push 1)

(check-sat)

