; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!30094 () Bool)

(assert start!30094)

(declare-fun b!301459 () Bool)

(declare-fun res!159295 () Bool)

(declare-fun e!190216 () Bool)

(assert (=> b!301459 (=> (not res!159295) (not e!190216))))

(declare-datatypes ((array!15282 0))(
  ( (array!15283 (arr!7230 (Array (_ BitVec 32) (_ BitVec 64))) (size!7582 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15282)

(declare-fun k!2441 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!15282 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301459 (= res!159295 (not (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301460 () Bool)

(declare-fun res!159300 () Bool)

(assert (=> b!301460 (=> (not res!159300) (not e!190216))))

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2381 0))(
  ( (MissingZero!2381 (index!11700 (_ BitVec 32))) (Found!2381 (index!11701 (_ BitVec 32))) (Intermediate!2381 (undefined!3193 Bool) (index!11702 (_ BitVec 32)) (x!29936 (_ BitVec 32))) (Undefined!2381) (MissingVacant!2381 (index!11703 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15282 (_ BitVec 32)) SeekEntryResult!2381)

(assert (=> b!301460 (= res!159300 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) (MissingZero!2381 i!1240)))))

(declare-fun res!159296 () Bool)

(assert (=> start!30094 (=> (not res!159296) (not e!190216))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30094 (= res!159296 (validMask!0 mask!3709))))

(assert (=> start!30094 e!190216))

(assert (=> start!30094 true))

(declare-fun array_inv!5184 (array!15282) Bool)

(assert (=> start!30094 (array_inv!5184 a!3293)))

(declare-fun b!301461 () Bool)

(declare-fun res!159299 () Bool)

(assert (=> b!301461 (=> (not res!159299) (not e!190216))))

(assert (=> b!301461 (= res!159299 (and (= (size!7582 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7582 a!3293))))))

(declare-fun b!301462 () Bool)

(declare-fun lt!149840 () (_ BitVec 32))

(assert (=> b!301462 (= e!190216 (and (bvsge mask!3709 #b00000000000000000000000000000000) (or (bvslt lt!149840 #b00000000000000000000000000000000) (bvsge lt!149840 (bvadd #b00000000000000000000000000000001 mask!3709)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!301462 (= lt!149840 (toIndex!0 k!2441 mask!3709))))

(declare-fun b!301463 () Bool)

(declare-fun res!159297 () Bool)

(assert (=> b!301463 (=> (not res!159297) (not e!190216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15282 (_ BitVec 32)) Bool)

(assert (=> b!301463 (= res!159297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301464 () Bool)

(declare-fun res!159298 () Bool)

(assert (=> b!301464 (=> (not res!159298) (not e!190216))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301464 (= res!159298 (validKeyInArray!0 k!2441))))

(assert (= (and start!30094 res!159296) b!301461))

(assert (= (and b!301461 res!159299) b!301464))

(assert (= (and b!301464 res!159298) b!301459))

(assert (= (and b!301459 res!159295) b!301460))

(assert (= (and b!301460 res!159300) b!301463))

(assert (= (and b!301463 res!159297) b!301462))

(declare-fun m!313229 () Bool)

(assert (=> b!301462 m!313229))

(declare-fun m!313231 () Bool)

(assert (=> b!301459 m!313231))

(declare-fun m!313233 () Bool)

(assert (=> b!301460 m!313233))

(declare-fun m!313235 () Bool)

(assert (=> b!301464 m!313235))

(declare-fun m!313237 () Bool)

(assert (=> b!301463 m!313237))

(declare-fun m!313239 () Bool)

(assert (=> start!30094 m!313239))

(declare-fun m!313241 () Bool)

(assert (=> start!30094 m!313241))

(push 1)

(assert (not b!301464))

(assert (not b!301459))

(assert (not b!301462))

(assert (not start!30094))

(assert (not b!301463))

(assert (not b!301460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!67775 () Bool)

(assert (=> d!67775 (= (validKeyInArray!0 k!2441) (and (not (= k!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!301464 d!67775))

(declare-fun d!67777 () Bool)

(declare-fun res!159308 () Bool)

(declare-fun e!190225 () Bool)

(assert (=> d!67777 (=> res!159308 e!190225)))

(assert (=> d!67777 (= res!159308 (= (select (arr!7230 a!3293) #b00000000000000000000000000000000) k!2441))))

(assert (=> d!67777 (= (arrayContainsKey!0 a!3293 k!2441 #b00000000000000000000000000000000) e!190225)))

(declare-fun b!301475 () Bool)

(declare-fun e!190226 () Bool)

(assert (=> b!301475 (= e!190225 e!190226)))

(declare-fun res!159309 () Bool)

(assert (=> b!301475 (=> (not res!159309) (not e!190226))))

(assert (=> b!301475 (= res!159309 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7582 a!3293)))))

(declare-fun b!301476 () Bool)

(assert (=> b!301476 (= e!190226 (arrayContainsKey!0 a!3293 k!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67777 (not res!159308)) b!301475))

(assert (= (and b!301475 res!159309) b!301476))

(declare-fun m!313243 () Bool)

(assert (=> d!67777 m!313243))

(declare-fun m!313245 () Bool)

(assert (=> b!301476 m!313245))

(assert (=> b!301459 d!67777))

(declare-fun b!301507 () Bool)

(declare-fun c!48690 () Bool)

(declare-fun lt!149873 () (_ BitVec 64))

(assert (=> b!301507 (= c!48690 (= lt!149873 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!190248 () SeekEntryResult!2381)

(declare-fun e!190247 () SeekEntryResult!2381)

(assert (=> b!301507 (= e!190248 e!190247)))

(declare-fun b!301508 () Bool)

(declare-fun e!190249 () SeekEntryResult!2381)

(assert (=> b!301508 (= e!190249 e!190248)))

(declare-fun lt!149872 () SeekEntryResult!2381)

(assert (=> b!301508 (= lt!149873 (select (arr!7230 a!3293) (index!11702 lt!149872)))))

(declare-fun c!48692 () Bool)

(assert (=> b!301508 (= c!48692 (= lt!149873 k!2441))))

(declare-fun b!301509 () Bool)

(assert (=> b!301509 (= e!190247 (MissingZero!2381 (index!11702 lt!149872)))))

(declare-fun b!301510 () Bool)

(assert (=> b!301510 (= e!190248 (Found!2381 (index!11702 lt!149872)))))

(declare-fun d!67779 () Bool)

(declare-fun lt!149871 () SeekEntryResult!2381)

(assert (=> d!67779 (and (or (is-Undefined!2381 lt!149871) (not (is-Found!2381 lt!149871)) (and (bvsge (index!11701 lt!149871) #b00000000000000000000000000000000) (bvslt (index!11701 lt!149871) (size!7582 a!3293)))) (or (is-Undefined!2381 lt!149871) (is-Found!2381 lt!149871) (not (is-MissingZero!2381 lt!149871)) (and (bvsge (index!11700 lt!149871) #b00000000000000000000000000000000) (bvslt (index!11700 lt!149871) (size!7582 a!3293)))) (or (is-Undefined!2381 lt!149871) (is-Found!2381 lt!149871) (is-MissingZero!2381 lt!149871) (not (is-MissingVacant!2381 lt!149871)) (and (bvsge (index!11703 lt!149871) #b00000000000000000000000000000000) (bvslt (index!11703 lt!149871) (size!7582 a!3293)))) (or (is-Undefined!2381 lt!149871) (ite (is-Found!2381 lt!149871) (= (select (arr!7230 a!3293) (index!11701 lt!149871)) k!2441) (ite (is-MissingZero!2381 lt!149871) (= (select (arr!7230 a!3293) (index!11700 lt!149871)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2381 lt!149871) (= (select (arr!7230 a!3293) (index!11703 lt!149871)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!67779 (= lt!149871 e!190249)))

(declare-fun c!48691 () Bool)

(assert (=> d!67779 (= c!48691 (and (is-Intermediate!2381 lt!149872) (undefined!3193 lt!149872)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15282 (_ BitVec 32)) SeekEntryResult!2381)

(assert (=> d!67779 (= lt!149872 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2441 mask!3709) k!2441 a!3293 mask!3709))))

(assert (=> d!67779 (validMask!0 mask!3709)))

(assert (=> d!67779 (= (seekEntryOrOpen!0 k!2441 a!3293 mask!3709) lt!149871)))

(declare-fun b!301511 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15282 (_ BitVec 32)) SeekEntryResult!2381)

(assert (=> b!301511 (= e!190247 (seekKeyOrZeroReturnVacant!0 (x!29936 lt!149872) (index!11702 lt!149872) (index!11702 lt!149872) k!2441 a!3293 mask!3709))))

(declare-fun b!301512 () Bool)

(assert (=> b!301512 (= e!190249 Undefined!2381)))

(assert (= (and d!67779 c!48691) b!301512))

(assert (= (and d!67779 (not c!48691)) b!301508))

(assert (= (and b!301508 c!48692) b!301510))

(assert (= (and b!301508 (not c!48692)) b!301507))

(assert (= (and b!301507 c!48690) b!301509))

(assert (= (and b!301507 (not c!48690)) b!301511))

(declare-fun m!313271 () Bool)

(assert (=> b!301508 m!313271))

(declare-fun m!313273 () Bool)

(assert (=> d!67779 m!313273))

(declare-fun m!313275 () Bool)

(assert (=> d!67779 m!313275))

(assert (=> d!67779 m!313229))

(declare-fun m!313277 () Bool)

(assert (=> d!67779 m!313277))

(assert (=> d!67779 m!313229))

(declare-fun m!313279 () Bool)

(assert (=> d!67779 m!313279))

(assert (=> d!67779 m!313239))

(declare-fun m!313281 () Bool)

(assert (=> b!301511 m!313281))

(assert (=> b!301460 d!67779))

(declare-fun d!67797 () Bool)

(declare-fun lt!149879 () (_ BitVec 32))

(declare-fun lt!149878 () (_ BitVec 32))

(assert (=> d!67797 (= lt!149879 (bvmul (bvxor lt!149878 (bvlshr lt!149878 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!67797 (= lt!149878 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!67797 (and (bvsge mask!3709 #b00000000000000000000000000000000) (let ((res!159320 (let ((h!5349 ((_ extract 31 0) (bvand (bvxor k!2441 (bvlshr k!2441 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29938 (bvmul (bvxor h!5349 (bvlshr h!5349 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29938 (bvlshr x!29938 #b00000000000000000000000000001101)) mask!3709))))) (and (bvslt res!159320 (bvadd mask!3709 #b00000000000000000000000000000001)) (bvsge res!159320 #b00000000000000000000000000000000))))))

(assert (=> d!67797 (= (toIndex!0 k!2441 mask!3709) (bvand (bvxor lt!149879 (bvlshr lt!149879 #b00000000000000000000000000001101)) mask!3709))))

(assert (=> b!301462 d!67797))

(declare-fun d!67799 () Bool)

(assert (=> d!67799 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30094 d!67799))

(declare-fun d!67801 () Bool)

(assert (=> d!67801 (= (array_inv!5184 a!3293) (bvsge (size!7582 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30094 d!67801))

(declare-fun d!67805 () Bool)

(declare-fun res!159339 () Bool)

(declare-fun e!190287 () Bool)

(assert (=> d!67805 (=> res!159339 e!190287)))

(assert (=> d!67805 (= res!159339 (bvsge #b00000000000000000000000000000000 (size!7582 a!3293)))))

(assert (=> d!67805 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!190287)))

(declare-fun b!301569 () Bool)

(declare-fun e!190286 () Bool)

(assert (=> b!301569 (= e!190287 e!190286)))

(declare-fun c!48713 () Bool)

(assert (=> b!301569 (= c!48713 (validKeyInArray!0 (select (arr!7230 a!3293) #b00000000000000000000000000000000)))))

(declare-fun bm!25874 () Bool)

(declare-fun call!25877 () Bool)

(assert (=> bm!25874 (= call!25877 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!301570 () Bool)

(assert (=> b!301570 (= e!190286 call!25877)))

(declare-fun b!301571 () Bool)

(declare-fun e!190288 () Bool)

(assert (=> b!301571 (= e!190288 call!25877)))

(declare-fun b!301572 () Bool)

(assert (=> b!301572 (= e!190286 e!190288)))

(declare-fun lt!149910 () (_ BitVec 64))

(assert (=> b!301572 (= lt!149910 (select (arr!7230 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9370 0))(
  ( (Unit!9371) )
))
(declare-fun lt!149912 () Unit!9370)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15282 (_ BitVec 64) (_ BitVec 32)) Unit!9370)

(assert (=> b!301572 (= lt!149912 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!149910 #b00000000000000000000000000000000))))

(assert (=> b!301572 (arrayContainsKey!0 a!3293 lt!149910 #b00000000000000000000000000000000)))

(declare-fun lt!149911 () Unit!9370)

(assert (=> b!301572 (= lt!149911 lt!149912)))

(declare-fun res!159338 () Bool)

(assert (=> b!301572 (= res!159338 (= (seekEntryOrOpen!0 (select (arr!7230 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2381 #b00000000000000000000000000000000)))))

(assert (=> b!301572 (=> (not res!159338) (not e!190288))))

(assert (= (and d!67805 (not res!159339)) b!301569))

(assert (= (and b!301569 c!48713) b!301572))

(assert (= (and b!301569 (not c!48713)) b!301570))

(assert (= (and b!301572 res!159338) b!301571))

(assert (= (or b!301571 b!301570) bm!25874))

(assert (=> b!301569 m!313243))

(assert (=> b!301569 m!313243))

(declare-fun m!313311 () Bool)

(assert (=> b!301569 m!313311))

(declare-fun m!313313 () Bool)

(assert (=> bm!25874 m!313313))

(assert (=> b!301572 m!313243))

(declare-fun m!313315 () Bool)

(assert (=> b!301572 m!313315))

(declare-fun m!313317 () Bool)

(assert (=> b!301572 m!313317))

(assert (=> b!301572 m!313243))

(declare-fun m!313319 () Bool)

(assert (=> b!301572 m!313319))

(assert (=> b!301463 d!67805))

(push 1)

