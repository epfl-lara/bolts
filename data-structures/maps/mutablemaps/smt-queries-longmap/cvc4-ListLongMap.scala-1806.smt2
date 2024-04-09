; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32548 () Bool)

(assert start!32548)

(declare-fun b!325350 () Bool)

(declare-fun res!178839 () Bool)

(declare-fun e!200502 () Bool)

(assert (=> b!325350 (=> (not res!178839) (not e!200502))))

(declare-datatypes ((array!16683 0))(
  ( (array!16684 (arr!7896 (Array (_ BitVec 32) (_ BitVec 64))) (size!8248 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16683)

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3038 0))(
  ( (MissingZero!3038 (index!14328 (_ BitVec 32))) (Found!3038 (index!14329 (_ BitVec 32))) (Intermediate!3038 (undefined!3850 Bool) (index!14330 (_ BitVec 32)) (x!32525 (_ BitVec 32))) (Undefined!3038) (MissingVacant!3038 (index!14331 (_ BitVec 32))) )
))
(declare-fun lt!156985 () SeekEntryResult!3038)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16683 (_ BitVec 32)) SeekEntryResult!3038)

(assert (=> b!325350 (= res!178839 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156985))))

(declare-fun b!325351 () Bool)

(declare-fun res!178846 () Bool)

(declare-fun e!200503 () Bool)

(assert (=> b!325351 (=> (not res!178846) (not e!200503))))

(declare-fun arrayContainsKey!0 (array!16683 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325351 (= res!178846 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325352 () Bool)

(declare-fun res!178845 () Bool)

(assert (=> b!325352 (=> (not res!178845) (not e!200502))))

(declare-fun resX!58 () (_ BitVec 32))

(assert (=> b!325352 (= res!178845 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7896 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325353 () Bool)

(assert (=> b!325353 (= e!200503 e!200502)))

(declare-fun res!178842 () Bool)

(assert (=> b!325353 (=> (not res!178842) (not e!200502))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325353 (= res!178842 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156985))))

(declare-fun resIndex!58 () (_ BitVec 32))

(assert (=> b!325353 (= lt!156985 (Intermediate!3038 false resIndex!58 resX!58))))

(declare-fun b!325354 () Bool)

(declare-fun res!178841 () Bool)

(assert (=> b!325354 (=> (not res!178841) (not e!200503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325354 (= res!178841 (validKeyInArray!0 k!2497))))

(declare-fun b!325355 () Bool)

(declare-fun res!178844 () Bool)

(assert (=> b!325355 (=> (not res!178844) (not e!200503))))

(declare-fun i!1250 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16683 (_ BitVec 32)) SeekEntryResult!3038)

(assert (=> b!325355 (= res!178844 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3038 i!1250)))))

(declare-fun res!178843 () Bool)

(assert (=> start!32548 (=> (not res!178843) (not e!200503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32548 (= res!178843 (validMask!0 mask!3777))))

(assert (=> start!32548 e!200503))

(declare-fun array_inv!5850 (array!16683) Bool)

(assert (=> start!32548 (array_inv!5850 a!3305)))

(assert (=> start!32548 true))

(declare-fun b!325356 () Bool)

(declare-fun lt!156986 () (_ BitVec 32))

(assert (=> b!325356 (= e!200502 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1490) resX!58) (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000) (or (bvslt lt!156986 #b00000000000000000000000000000000) (bvsge lt!156986 (size!8248 a!3305)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325356 (= lt!156986 (nextIndex!0 index!1840 x!1490 mask!3777))))

(declare-fun b!325357 () Bool)

(declare-fun res!178847 () Bool)

(assert (=> b!325357 (=> (not res!178847) (not e!200503))))

(assert (=> b!325357 (= res!178847 (and (= (size!8248 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8248 a!3305))))))

(declare-fun b!325358 () Bool)

(declare-fun res!178840 () Bool)

(assert (=> b!325358 (=> (not res!178840) (not e!200503))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16683 (_ BitVec 32)) Bool)

(assert (=> b!325358 (= res!178840 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325359 () Bool)

(declare-fun res!178848 () Bool)

(assert (=> b!325359 (=> (not res!178848) (not e!200502))))

(assert (=> b!325359 (= res!178848 (and (= (select (arr!7896 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8248 a!3305))))))

(assert (= (and start!32548 res!178843) b!325357))

(assert (= (and b!325357 res!178847) b!325354))

(assert (= (and b!325354 res!178841) b!325351))

(assert (= (and b!325351 res!178846) b!325355))

(assert (= (and b!325355 res!178844) b!325358))

(assert (= (and b!325358 res!178840) b!325353))

(assert (= (and b!325353 res!178842) b!325359))

(assert (= (and b!325359 res!178848) b!325350))

(assert (= (and b!325350 res!178839) b!325352))

(assert (= (and b!325352 res!178845) b!325356))

(declare-fun m!332215 () Bool)

(assert (=> b!325358 m!332215))

(declare-fun m!332217 () Bool)

(assert (=> start!32548 m!332217))

(declare-fun m!332219 () Bool)

(assert (=> start!32548 m!332219))

(declare-fun m!332221 () Bool)

(assert (=> b!325355 m!332221))

(declare-fun m!332223 () Bool)

(assert (=> b!325351 m!332223))

(declare-fun m!332225 () Bool)

(assert (=> b!325359 m!332225))

(declare-fun m!332227 () Bool)

(assert (=> b!325354 m!332227))

(declare-fun m!332229 () Bool)

(assert (=> b!325356 m!332229))

(declare-fun m!332231 () Bool)

(assert (=> b!325353 m!332231))

(assert (=> b!325353 m!332231))

(declare-fun m!332233 () Bool)

(assert (=> b!325353 m!332233))

(declare-fun m!332235 () Bool)

(assert (=> b!325352 m!332235))

(declare-fun m!332237 () Bool)

(assert (=> b!325350 m!332237))

(push 1)

(assert (not b!325356))

(assert (not b!325355))

(assert (not start!32548))

(assert (not b!325353))

(assert (not b!325351))

(assert (not b!325354))

(assert (not b!325358))

(assert (not b!325350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!325384 () Bool)

(declare-fun e!200521 () SeekEntryResult!3038)

(assert (=> b!325384 (= e!200521 (Intermediate!3038 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!325385 () Bool)

(declare-fun lt!156995 () SeekEntryResult!3038)

(assert (=> b!325385 (and (bvsge (index!14330 lt!156995) #b00000000000000000000000000000000) (bvslt (index!14330 lt!156995) (size!8248 a!3305)))))

(declare-fun e!200523 () Bool)

(assert (=> b!325385 (= e!200523 (= (select (arr!7896 a!3305) (index!14330 lt!156995)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!325386 () Bool)

(declare-fun e!200522 () Bool)

(assert (=> b!325386 (= e!200522 (bvsge (x!32525 lt!156995) #b01111111111111111111111111111110))))

(declare-fun b!325387 () Bool)

(declare-fun e!200524 () Bool)

(assert (=> b!325387 (= e!200522 e!200524)))

(declare-fun res!178863 () Bool)

(assert (=> b!325387 (= res!178863 (and (is-Intermediate!3038 lt!156995) (not (undefined!3850 lt!156995)) (bvslt (x!32525 lt!156995) #b01111111111111111111111111111110) (bvsge (x!32525 lt!156995) #b00000000000000000000000000000000) (bvsge (x!32525 lt!156995) #b00000000000000000000000000000000)))))

(assert (=> b!325387 (=> (not res!178863) (not e!200524))))

(declare-fun b!325388 () Bool)

(assert (=> b!325388 (and (bvsge (index!14330 lt!156995) #b00000000000000000000000000000000) (bvslt (index!14330 lt!156995) (size!8248 a!3305)))))

(declare-fun res!178861 () Bool)

(assert (=> b!325388 (= res!178861 (= (select (arr!7896 a!3305) (index!14330 lt!156995)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325388 (=> res!178861 e!200523)))

(declare-fun e!200520 () SeekEntryResult!3038)

(declare-fun b!325389 () Bool)

(assert (=> b!325389 (= e!200520 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!325390 () Bool)

(assert (=> b!325390 (and (bvsge (index!14330 lt!156995) #b00000000000000000000000000000000) (bvslt (index!14330 lt!156995) (size!8248 a!3305)))))

(declare-fun res!178862 () Bool)

(assert (=> b!325390 (= res!178862 (= (select (arr!7896 a!3305) (index!14330 lt!156995)) k!2497))))

(assert (=> b!325390 (=> res!178862 e!200523)))

(assert (=> b!325390 (= e!200524 e!200523)))

(declare-fun d!69521 () Bool)

(assert (=> d!69521 e!200522))

(declare-fun c!50890 () Bool)

(assert (=> d!69521 (= c!50890 (and (is-Intermediate!3038 lt!156995) (undefined!3850 lt!156995)))))

(assert (=> d!69521 (= lt!156995 e!200521)))

(declare-fun c!50891 () Bool)

(assert (=> d!69521 (= c!50891 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!156994 () (_ BitVec 64))

(assert (=> d!69521 (= lt!156994 (select (arr!7896 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69521 (validMask!0 mask!3777)))

(assert (=> d!69521 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156995)))

(declare-fun b!325391 () Bool)

(assert (=> b!325391 (= e!200520 (Intermediate!3038 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!325392 () Bool)

(assert (=> b!325392 (= e!200521 e!200520)))

(declare-fun c!50889 () Bool)

(assert (=> b!325392 (= c!50889 (or (= lt!156994 k!2497) (= (bvadd lt!156994 lt!156994) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69521 c!50891) b!325384))

(assert (= (and d!69521 (not c!50891)) b!325392))

(assert (= (and b!325392 c!50889) b!325391))

(assert (= (and b!325392 (not c!50889)) b!325389))

(assert (= (and d!69521 c!50890) b!325386))

(assert (= (and d!69521 (not c!50890)) b!325387))

(assert (= (and b!325387 res!178863) b!325390))

(assert (= (and b!325390 (not res!178862)) b!325388))

(assert (= (and b!325388 (not res!178861)) b!325385))

(declare-fun m!332245 () Bool)

(assert (=> b!325385 m!332245))

(assert (=> d!69521 m!332231))

(declare-fun m!332247 () Bool)

(assert (=> d!69521 m!332247))

(assert (=> d!69521 m!332217))

(assert (=> b!325388 m!332245))

(assert (=> b!325390 m!332245))

(assert (=> b!325389 m!332231))

(declare-fun m!332249 () Bool)

(assert (=> b!325389 m!332249))

(assert (=> b!325389 m!332249))

(declare-fun m!332251 () Bool)

(assert (=> b!325389 m!332251))

(assert (=> b!325353 d!69521))

(declare-fun d!69533 () Bool)

(declare-fun lt!157005 () (_ BitVec 32))

(declare-fun lt!157004 () (_ BitVec 32))

(assert (=> d!69533 (= lt!157005 (bvmul (bvxor lt!157004 (bvlshr lt!157004 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69533 (= lt!157004 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69533 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!178864 (let ((h!5411 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32528 (bvmul (bvxor h!5411 (bvlshr h!5411 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32528 (bvlshr x!32528 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!178864 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!178864 #b00000000000000000000000000000000))))))

(assert (=> d!69533 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157005 (bvlshr lt!157005 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!325353 d!69533))

(declare-fun d!69539 () Bool)

(assert (=> d!69539 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32548 d!69539))

(declare-fun d!69543 () Bool)

(assert (=> d!69543 (= (array_inv!5850 a!3305) (bvsge (size!8248 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32548 d!69543))

(declare-fun d!69547 () Bool)

(declare-fun res!178882 () Bool)

(declare-fun e!200551 () Bool)

(assert (=> d!69547 (=> res!178882 e!200551)))

(assert (=> d!69547 (= res!178882 (bvsge #b00000000000000000000000000000000 (size!8248 a!3305)))))

(assert (=> d!69547 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!200551)))

(declare-fun b!325437 () Bool)

(declare-fun e!200553 () Bool)

(assert (=> b!325437 (= e!200551 e!200553)))

(declare-fun c!50906 () Bool)

(assert (=> b!325437 (= c!50906 (validKeyInArray!0 (select (arr!7896 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!325438 () Bool)

(declare-fun call!26069 () Bool)

(assert (=> b!325438 (= e!200553 call!26069)))

(declare-fun b!325439 () Bool)

(declare-fun e!200552 () Bool)

(assert (=> b!325439 (= e!200553 e!200552)))

(declare-fun lt!157024 () (_ BitVec 64))

(assert (=> b!325439 (= lt!157024 (select (arr!7896 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10081 0))(
  ( (Unit!10082) )
))
(declare-fun lt!157022 () Unit!10081)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16683 (_ BitVec 64) (_ BitVec 32)) Unit!10081)

(assert (=> b!325439 (= lt!157022 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157024 #b00000000000000000000000000000000))))

(assert (=> b!325439 (arrayContainsKey!0 a!3305 lt!157024 #b00000000000000000000000000000000)))

(declare-fun lt!157023 () Unit!10081)

(assert (=> b!325439 (= lt!157023 lt!157022)))

(declare-fun res!178883 () Bool)

(assert (=> b!325439 (= res!178883 (= (seekEntryOrOpen!0 (select (arr!7896 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3038 #b00000000000000000000000000000000)))))

(assert (=> b!325439 (=> (not res!178883) (not e!200552))))

(declare-fun b!325440 () Bool)

(assert (=> b!325440 (= e!200552 call!26069)))

(declare-fun bm!26066 () Bool)

(assert (=> bm!26066 (= call!26069 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(assert (= (and d!69547 (not res!178882)) b!325437))

(assert (= (and b!325437 c!50906) b!325439))

(assert (= (and b!325437 (not c!50906)) b!325438))

(assert (= (and b!325439 res!178883) b!325440))

(assert (= (or b!325440 b!325438) bm!26066))

(declare-fun m!332265 () Bool)

(assert (=> b!325437 m!332265))

(assert (=> b!325437 m!332265))

(declare-fun m!332267 () Bool)

(assert (=> b!325437 m!332267))

(assert (=> b!325439 m!332265))

(declare-fun m!332269 () Bool)

(assert (=> b!325439 m!332269))

(declare-fun m!332271 () Bool)

(assert (=> b!325439 m!332271))

(assert (=> b!325439 m!332265))

(declare-fun m!332273 () Bool)

(assert (=> b!325439 m!332273))

(declare-fun m!332275 () Bool)

(assert (=> bm!26066 m!332275))

(assert (=> b!325358 d!69547))

(declare-fun d!69551 () Bool)

(declare-fun res!178894 () Bool)

(declare-fun e!200568 () Bool)

(assert (=> d!69551 (=> res!178894 e!200568)))

(assert (=> d!69551 (= res!178894 (= (select (arr!7896 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69551 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!200568)))

(declare-fun b!325463 () Bool)

(declare-fun e!200569 () Bool)

(assert (=> b!325463 (= e!200568 e!200569)))

(declare-fun res!178895 () Bool)

(assert (=> b!325463 (=> (not res!178895) (not e!200569))))

(assert (=> b!325463 (= res!178895 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8248 a!3305)))))

(declare-fun b!325464 () Bool)

(assert (=> b!325464 (= e!200569 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69551 (not res!178894)) b!325463))

(assert (= (and b!325463 res!178895) b!325464))

(assert (=> d!69551 m!332265))

(declare-fun m!332277 () Bool)

(assert (=> b!325464 m!332277))

(assert (=> b!325351 d!69551))

(declare-fun d!69553 () Bool)

(declare-fun lt!157031 () (_ BitVec 32))

(assert (=> d!69553 (and (bvsge lt!157031 #b00000000000000000000000000000000) (bvslt lt!157031 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69553 (= lt!157031 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69553 (validMask!0 mask!3777)))

(assert (=> d!69553 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!157031)))

(declare-fun bs!11324 () Bool)

(assert (= bs!11324 d!69553))

(declare-fun m!332279 () Bool)

(assert (=> bs!11324 m!332279))

(assert (=> bs!11324 m!332217))

(assert (=> b!325356 d!69553))

(declare-fun b!325504 () Bool)

(declare-fun e!200594 () SeekEntryResult!3038)

(declare-fun lt!157053 () SeekEntryResult!3038)

(assert (=> b!325504 (= e!200594 (MissingZero!3038 (index!14330 lt!157053)))))

(declare-fun b!325505 () Bool)

(declare-fun e!200593 () SeekEntryResult!3038)

(assert (=> b!325505 (= e!200593 (Found!3038 (index!14330 lt!157053)))))

(declare-fun b!325506 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16683 (_ BitVec 32)) SeekEntryResult!3038)

(assert (=> b!325506 (= e!200594 (seekKeyOrZeroReturnVacant!0 (x!32525 lt!157053) (index!14330 lt!157053) (index!14330 lt!157053) k!2497 a!3305 mask!3777))))

(declare-fun d!69555 () Bool)

(declare-fun lt!157052 () SeekEntryResult!3038)

(assert (=> d!69555 (and (or (is-Undefined!3038 lt!157052) (not (is-Found!3038 lt!157052)) (and (bvsge (index!14329 lt!157052) #b00000000000000000000000000000000) (bvslt (index!14329 lt!157052) (size!8248 a!3305)))) (or (is-Undefined!3038 lt!157052) (is-Found!3038 lt!157052) (not (is-MissingZero!3038 lt!157052)) (and (bvsge (index!14328 lt!157052) #b00000000000000000000000000000000) (bvslt (index!14328 lt!157052) (size!8248 a!3305)))) (or (is-Undefined!3038 lt!157052) (is-Found!3038 lt!157052) (is-MissingZero!3038 lt!157052) (not (is-MissingVacant!3038 lt!157052)) (and (bvsge (index!14331 lt!157052) #b00000000000000000000000000000000) (bvslt (index!14331 lt!157052) (size!8248 a!3305)))) (or (is-Undefined!3038 lt!157052) (ite (is-Found!3038 lt!157052) (= (select (arr!7896 a!3305) (index!14329 lt!157052)) k!2497) (ite (is-MissingZero!3038 lt!157052) (= (select (arr!7896 a!3305) (index!14328 lt!157052)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3038 lt!157052) (= (select (arr!7896 a!3305) (index!14331 lt!157052)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!200595 () SeekEntryResult!3038)

(assert (=> d!69555 (= lt!157052 e!200595)))

(declare-fun c!50929 () Bool)

(assert (=> d!69555 (= c!50929 (and (is-Intermediate!3038 lt!157053) (undefined!3850 lt!157053)))))

(assert (=> d!69555 (= lt!157053 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69555 (validMask!0 mask!3777)))

(assert (=> d!69555 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157052)))

(declare-fun b!325507 () Bool)

(declare-fun c!50930 () Bool)

(declare-fun lt!157054 () (_ BitVec 64))

(assert (=> b!325507 (= c!50930 (= lt!157054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325507 (= e!200593 e!200594)))

(declare-fun b!325508 () Bool)

(assert (=> b!325508 (= e!200595 Undefined!3038)))

(declare-fun b!325509 () Bool)

(assert (=> b!325509 (= e!200595 e!200593)))

(assert (=> b!325509 (= lt!157054 (select (arr!7896 a!3305) (index!14330 lt!157053)))))

(declare-fun c!50928 () Bool)

(assert (=> b!325509 (= c!50928 (= lt!157054 k!2497))))

(assert (= (and d!69555 c!50929) b!325508))

(assert (= (and d!69555 (not c!50929)) b!325509))

(assert (= (and b!325509 c!50928) b!325505))

(assert (= (and b!325509 (not c!50928)) b!325507))

(assert (= (and b!325507 c!50930) b!325504))

(assert (= (and b!325507 (not c!50930)) b!325506))

(declare-fun m!332293 () Bool)

(assert (=> b!325506 m!332293))

(declare-fun m!332295 () Bool)

(assert (=> d!69555 m!332295))

(assert (=> d!69555 m!332217))

(declare-fun m!332297 () Bool)

(assert (=> d!69555 m!332297))

(assert (=> d!69555 m!332231))

(assert (=> d!69555 m!332233))

(assert (=> d!69555 m!332231))

(declare-fun m!332299 () Bool)

(assert (=> d!69555 m!332299))

(declare-fun m!332301 () Bool)

(assert (=> b!325509 m!332301))

(assert (=> b!325355 d!69555))

(declare-fun b!325510 () Bool)

(declare-fun e!200597 () SeekEntryResult!3038)

(assert (=> b!325510 (= e!200597 (Intermediate!3038 true index!1840 x!1490))))

(declare-fun b!325511 () Bool)

(declare-fun lt!157056 () SeekEntryResult!3038)

(assert (=> b!325511 (and (bvsge (index!14330 lt!157056) #b00000000000000000000000000000000) (bvslt (index!14330 lt!157056) (size!8248 a!3305)))))

(declare-fun e!200599 () Bool)

(assert (=> b!325511 (= e!200599 (= (select (arr!7896 a!3305) (index!14330 lt!157056)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!325512 () Bool)

(declare-fun e!200598 () Bool)

(assert (=> b!325512 (= e!200598 (bvsge (x!32525 lt!157056) #b01111111111111111111111111111110))))

(declare-fun b!325513 () Bool)

(declare-fun e!200600 () Bool)

(assert (=> b!325513 (= e!200598 e!200600)))

(declare-fun res!178908 () Bool)

(assert (=> b!325513 (= res!178908 (and (is-Intermediate!3038 lt!157056) (not (undefined!3850 lt!157056)) (bvslt (x!32525 lt!157056) #b01111111111111111111111111111110) (bvsge (x!32525 lt!157056) #b00000000000000000000000000000000) (bvsge (x!32525 lt!157056) x!1490)))))

(assert (=> b!325513 (=> (not res!178908) (not e!200600))))

(declare-fun b!325514 () Bool)

(assert (=> b!325514 (and (bvsge (index!14330 lt!157056) #b00000000000000000000000000000000) (bvslt (index!14330 lt!157056) (size!8248 a!3305)))))

(declare-fun res!178906 () Bool)

(assert (=> b!325514 (= res!178906 (= (select (arr!7896 a!3305) (index!14330 lt!157056)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325514 (=> res!178906 e!200599)))

(declare-fun e!200596 () SeekEntryResult!3038)

(declare-fun b!325515 () Bool)

(assert (=> b!325515 (= e!200596 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!325516 () Bool)

(assert (=> b!325516 (and (bvsge (index!14330 lt!157056) #b00000000000000000000000000000000) (bvslt (index!14330 lt!157056) (size!8248 a!3305)))))

(declare-fun res!178907 () Bool)

(assert (=> b!325516 (= res!178907 (= (select (arr!7896 a!3305) (index!14330 lt!157056)) k!2497))))

(assert (=> b!325516 (=> res!178907 e!200599)))

(assert (=> b!325516 (= e!200600 e!200599)))

(declare-fun d!69563 () Bool)

(assert (=> d!69563 e!200598))

(declare-fun c!50932 () Bool)

(assert (=> d!69563 (= c!50932 (and (is-Intermediate!3038 lt!157056) (undefined!3850 lt!157056)))))

(assert (=> d!69563 (= lt!157056 e!200597)))

(declare-fun c!50933 () Bool)

(assert (=> d!69563 (= c!50933 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157055 () (_ BitVec 64))

(assert (=> d!69563 (= lt!157055 (select (arr!7896 a!3305) index!1840))))

(assert (=> d!69563 (validMask!0 mask!3777)))

(assert (=> d!69563 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157056)))

(declare-fun b!325517 () Bool)

(assert (=> b!325517 (= e!200596 (Intermediate!3038 false index!1840 x!1490))))

(declare-fun b!325518 () Bool)

(assert (=> b!325518 (= e!200597 e!200596)))

(declare-fun c!50931 () Bool)

(assert (=> b!325518 (= c!50931 (or (= lt!157055 k!2497) (= (bvadd lt!157055 lt!157055) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!69563 c!50933) b!325510))

(assert (= (and d!69563 (not c!50933)) b!325518))

(assert (= (and b!325518 c!50931) b!325517))

(assert (= (and b!325518 (not c!50931)) b!325515))

(assert (= (and d!69563 c!50932) b!325512))

(assert (= (and d!69563 (not c!50932)) b!325513))

(assert (= (and b!325513 res!178908) b!325516))

(assert (= (and b!325516 (not res!178907)) b!325514))

(assert (= (and b!325514 (not res!178906)) b!325511))

(declare-fun m!332303 () Bool)

(assert (=> b!325511 m!332303))

(assert (=> d!69563 m!332235))

(assert (=> d!69563 m!332217))

(assert (=> b!325514 m!332303))

(assert (=> b!325516 m!332303))

(assert (=> b!325515 m!332229))

(assert (=> b!325515 m!332229))

(declare-fun m!332305 () Bool)

(assert (=> b!325515 m!332305))

(assert (=> b!325350 d!69563))

(declare-fun d!69565 () Bool)

(assert (=> d!69565 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!325354 d!69565))

(push 1)

(assert (not b!325464))

(assert (not b!325389))

(assert (not b!325437))

(assert (not b!325439))

(assert (not d!69555))

(assert (not bm!26066))

(assert (not b!325506))

(assert (not d!69553))

(assert (not d!69563))

(assert (not d!69521))

(assert (not b!325515))

(check-sat)

(pop 1)

(push 1)

(check-sat)

