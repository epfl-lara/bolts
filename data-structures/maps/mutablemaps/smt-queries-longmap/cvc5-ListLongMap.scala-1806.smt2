; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!32544 () Bool)

(assert start!32544)

(declare-fun b!325290 () Bool)

(declare-fun res!178780 () Bool)

(declare-fun e!200484 () Bool)

(assert (=> b!325290 (=> (not res!178780) (not e!200484))))

(declare-datatypes ((array!16679 0))(
  ( (array!16680 (arr!7894 (Array (_ BitVec 32) (_ BitVec 64))) (size!8246 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16679)

(declare-fun mask!3777 () (_ BitVec 32))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!325290 (= res!178780 (and (= (size!8246 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8246 a!3305))))))

(declare-fun b!325291 () Bool)

(declare-fun res!178783 () Bool)

(assert (=> b!325291 (=> (not res!178783) (not e!200484))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16679 (_ BitVec 32)) Bool)

(assert (=> b!325291 (= res!178783 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!325292 () Bool)

(declare-fun res!178787 () Bool)

(declare-fun e!200483 () Bool)

(assert (=> b!325292 (=> (not res!178787) (not e!200483))))

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!325292 (= res!178787 (and (= (select (arr!7894 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8246 a!3305))))))

(declare-fun res!178784 () Bool)

(assert (=> start!32544 (=> (not res!178784) (not e!200484))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!32544 (= res!178784 (validMask!0 mask!3777))))

(assert (=> start!32544 e!200484))

(declare-fun array_inv!5848 (array!16679) Bool)

(assert (=> start!32544 (array_inv!5848 a!3305)))

(assert (=> start!32544 true))

(declare-fun b!325293 () Bool)

(assert (=> b!325293 (= e!200484 e!200483)))

(declare-fun res!178785 () Bool)

(assert (=> b!325293 (=> (not res!178785) (not e!200483))))

(declare-fun k!2497 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3036 0))(
  ( (MissingZero!3036 (index!14320 (_ BitVec 32))) (Found!3036 (index!14321 (_ BitVec 32))) (Intermediate!3036 (undefined!3848 Bool) (index!14322 (_ BitVec 32)) (x!32523 (_ BitVec 32))) (Undefined!3036) (MissingVacant!3036 (index!14323 (_ BitVec 32))) )
))
(declare-fun lt!156973 () SeekEntryResult!3036)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16679 (_ BitVec 32)) SeekEntryResult!3036)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325293 (= res!178785 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!156973))))

(assert (=> b!325293 (= lt!156973 (Intermediate!3036 false resIndex!58 resX!58))))

(declare-fun b!325294 () Bool)

(declare-fun res!178779 () Bool)

(assert (=> b!325294 (=> (not res!178779) (not e!200484))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!325294 (= res!178779 (validKeyInArray!0 k!2497))))

(declare-fun b!325295 () Bool)

(declare-fun res!178786 () Bool)

(assert (=> b!325295 (=> (not res!178786) (not e!200483))))

(assert (=> b!325295 (= res!178786 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!156973))))

(declare-fun b!325296 () Bool)

(declare-fun res!178782 () Bool)

(assert (=> b!325296 (=> (not res!178782) (not e!200484))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16679 (_ BitVec 32)) SeekEntryResult!3036)

(assert (=> b!325296 (= res!178782 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3036 i!1250)))))

(declare-fun b!325297 () Bool)

(declare-fun res!178781 () Bool)

(assert (=> b!325297 (=> (not res!178781) (not e!200483))))

(assert (=> b!325297 (= res!178781 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7894 a!3305) index!1840) k!2497)) (not (= x!1490 resX!58))))))

(declare-fun b!325298 () Bool)

(declare-fun res!178788 () Bool)

(assert (=> b!325298 (=> (not res!178788) (not e!200484))))

(declare-fun arrayContainsKey!0 (array!16679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!325298 (= res!178788 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!325299 () Bool)

(declare-fun lt!156974 () (_ BitVec 32))

(assert (=> b!325299 (= e!200483 (and (bvsle (bvadd #b00000000000000000000000000000001 x!1490) resX!58) (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b00000000000000000000000000000000) (or (bvslt lt!156974 #b00000000000000000000000000000000) (bvsge lt!156974 (size!8246 a!3305)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!325299 (= lt!156974 (nextIndex!0 index!1840 x!1490 mask!3777))))

(assert (= (and start!32544 res!178784) b!325290))

(assert (= (and b!325290 res!178780) b!325294))

(assert (= (and b!325294 res!178779) b!325298))

(assert (= (and b!325298 res!178788) b!325296))

(assert (= (and b!325296 res!178782) b!325291))

(assert (= (and b!325291 res!178783) b!325293))

(assert (= (and b!325293 res!178785) b!325292))

(assert (= (and b!325292 res!178787) b!325295))

(assert (= (and b!325295 res!178786) b!325297))

(assert (= (and b!325297 res!178781) b!325299))

(declare-fun m!332167 () Bool)

(assert (=> b!325291 m!332167))

(declare-fun m!332169 () Bool)

(assert (=> b!325293 m!332169))

(assert (=> b!325293 m!332169))

(declare-fun m!332171 () Bool)

(assert (=> b!325293 m!332171))

(declare-fun m!332173 () Bool)

(assert (=> b!325294 m!332173))

(declare-fun m!332175 () Bool)

(assert (=> b!325295 m!332175))

(declare-fun m!332177 () Bool)

(assert (=> b!325297 m!332177))

(declare-fun m!332179 () Bool)

(assert (=> b!325298 m!332179))

(declare-fun m!332181 () Bool)

(assert (=> b!325299 m!332181))

(declare-fun m!332183 () Bool)

(assert (=> start!32544 m!332183))

(declare-fun m!332185 () Bool)

(assert (=> start!32544 m!332185))

(declare-fun m!332187 () Bool)

(assert (=> b!325292 m!332187))

(declare-fun m!332189 () Bool)

(assert (=> b!325296 m!332189))

(push 1)

(assert (not b!325299))

(assert (not b!325296))

(assert (not b!325295))

(assert (not b!325298))

(assert (not b!325291))

(assert (not start!32544))

(assert (not b!325293))

(assert (not b!325294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!69523 () Bool)

(declare-fun lt!156989 () (_ BitVec 32))

(assert (=> d!69523 (and (bvsge lt!156989 #b00000000000000000000000000000000) (bvslt lt!156989 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!69523 (= lt!156989 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!69523 (validMask!0 mask!3777)))

(assert (=> d!69523 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!156989)))

(declare-fun bs!11323 () Bool)

(assert (= bs!11323 d!69523))

(declare-fun m!332243 () Bool)

(assert (=> bs!11323 m!332243))

(assert (=> bs!11323 m!332183))

(assert (=> b!325299 d!69523))

(declare-fun d!69529 () Bool)

(assert (=> d!69529 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!325294 d!69529))

(declare-fun d!69531 () Bool)

(assert (=> d!69531 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!32544 d!69531))

(declare-fun d!69535 () Bool)

(assert (=> d!69535 (= (array_inv!5848 a!3305) (bvsge (size!8246 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!32544 d!69535))

(declare-fun d!69537 () Bool)

(declare-fun e!200571 () Bool)

(assert (=> d!69537 e!200571))

(declare-fun c!50914 () Bool)

(declare-fun lt!157033 () SeekEntryResult!3036)

(assert (=> d!69537 (= c!50914 (and (is-Intermediate!3036 lt!157033) (undefined!3848 lt!157033)))))

(declare-fun e!200573 () SeekEntryResult!3036)

(assert (=> d!69537 (= lt!157033 e!200573)))

(declare-fun c!50915 () Bool)

(assert (=> d!69537 (= c!50915 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!157032 () (_ BitVec 64))

(assert (=> d!69537 (= lt!157032 (select (arr!7894 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!69537 (validMask!0 mask!3777)))

(assert (=> d!69537 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!157033)))

(declare-fun b!325465 () Bool)

(assert (=> b!325465 (and (bvsge (index!14322 lt!157033) #b00000000000000000000000000000000) (bvslt (index!14322 lt!157033) (size!8246 a!3305)))))

(declare-fun res!178897 () Bool)

(assert (=> b!325465 (= res!178897 (= (select (arr!7894 a!3305) (index!14322 lt!157033)) k!2497))))

(declare-fun e!200570 () Bool)

(assert (=> b!325465 (=> res!178897 e!200570)))

(declare-fun e!200574 () Bool)

(assert (=> b!325465 (= e!200574 e!200570)))

(declare-fun e!200572 () SeekEntryResult!3036)

(declare-fun b!325466 () Bool)

(assert (=> b!325466 (= e!200572 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!325467 () Bool)

(assert (=> b!325467 (= e!200573 (Intermediate!3036 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!325468 () Bool)

(assert (=> b!325468 (= e!200573 e!200572)))

(declare-fun c!50913 () Bool)

(assert (=> b!325468 (= c!50913 (or (= lt!157032 k!2497) (= (bvadd lt!157032 lt!157032) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325469 () Bool)

(assert (=> b!325469 (= e!200571 (bvsge (x!32523 lt!157033) #b01111111111111111111111111111110))))

(declare-fun b!325470 () Bool)

(assert (=> b!325470 (and (bvsge (index!14322 lt!157033) #b00000000000000000000000000000000) (bvslt (index!14322 lt!157033) (size!8246 a!3305)))))

(declare-fun res!178896 () Bool)

(assert (=> b!325470 (= res!178896 (= (select (arr!7894 a!3305) (index!14322 lt!157033)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325470 (=> res!178896 e!200570)))

(declare-fun b!325471 () Bool)

(assert (=> b!325471 (and (bvsge (index!14322 lt!157033) #b00000000000000000000000000000000) (bvslt (index!14322 lt!157033) (size!8246 a!3305)))))

(assert (=> b!325471 (= e!200570 (= (select (arr!7894 a!3305) (index!14322 lt!157033)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!325472 () Bool)

(assert (=> b!325472 (= e!200572 (Intermediate!3036 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!325473 () Bool)

(assert (=> b!325473 (= e!200571 e!200574)))

(declare-fun res!178898 () Bool)

(assert (=> b!325473 (= res!178898 (and (is-Intermediate!3036 lt!157033) (not (undefined!3848 lt!157033)) (bvslt (x!32523 lt!157033) #b01111111111111111111111111111110) (bvsge (x!32523 lt!157033) #b00000000000000000000000000000000) (bvsge (x!32523 lt!157033) #b00000000000000000000000000000000)))))

(assert (=> b!325473 (=> (not res!178898) (not e!200574))))

(assert (= (and d!69537 c!50915) b!325467))

(assert (= (and d!69537 (not c!50915)) b!325468))

(assert (= (and b!325468 c!50913) b!325472))

(assert (= (and b!325468 (not c!50913)) b!325466))

(assert (= (and d!69537 c!50914) b!325469))

(assert (= (and d!69537 (not c!50914)) b!325473))

(assert (= (and b!325473 res!178898) b!325465))

(assert (= (and b!325465 (not res!178897)) b!325470))

(assert (= (and b!325470 (not res!178896)) b!325471))

(declare-fun m!332281 () Bool)

(assert (=> b!325471 m!332281))

(assert (=> d!69537 m!332169))

(declare-fun m!332283 () Bool)

(assert (=> d!69537 m!332283))

(assert (=> d!69537 m!332183))

(assert (=> b!325470 m!332281))

(assert (=> b!325466 m!332169))

(declare-fun m!332285 () Bool)

(assert (=> b!325466 m!332285))

(assert (=> b!325466 m!332285))

(declare-fun m!332287 () Bool)

(assert (=> b!325466 m!332287))

(assert (=> b!325465 m!332281))

(assert (=> b!325293 d!69537))

(declare-fun d!69557 () Bool)

(declare-fun lt!157039 () (_ BitVec 32))

(declare-fun lt!157038 () (_ BitVec 32))

(assert (=> d!69557 (= lt!157039 (bvmul (bvxor lt!157038 (bvlshr lt!157038 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!69557 (= lt!157038 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!69557 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!178899 (let ((h!5413 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32533 (bvmul (bvxor h!5413 (bvlshr h!5413 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32533 (bvlshr x!32533 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!178899 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!178899 #b00000000000000000000000000000000))))))

(assert (=> d!69557 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!157039 (bvlshr lt!157039 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!325293 d!69557))

(declare-fun d!69559 () Bool)

(declare-fun res!178904 () Bool)

(declare-fun e!200585 () Bool)

(assert (=> d!69559 (=> res!178904 e!200585)))

(assert (=> d!69559 (= res!178904 (= (select (arr!7894 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!69559 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!200585)))

(declare-fun b!325490 () Bool)

(declare-fun e!200586 () Bool)

(assert (=> b!325490 (= e!200585 e!200586)))

(declare-fun res!178905 () Bool)

(assert (=> b!325490 (=> (not res!178905) (not e!200586))))

(assert (=> b!325490 (= res!178905 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8246 a!3305)))))

(declare-fun b!325491 () Bool)

(assert (=> b!325491 (= e!200586 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!69559 (not res!178904)) b!325490))

(assert (= (and b!325490 res!178905) b!325491))

(declare-fun m!332289 () Bool)

(assert (=> d!69559 m!332289))

(declare-fun m!332291 () Bool)

(assert (=> b!325491 m!332291))

(assert (=> b!325298 d!69559))

(declare-fun d!69561 () Bool)

(declare-fun res!178914 () Bool)

(declare-fun e!200611 () Bool)

(assert (=> d!69561 (=> res!178914 e!200611)))

(assert (=> d!69561 (= res!178914 (bvsge #b00000000000000000000000000000000 (size!8246 a!3305)))))

(assert (=> d!69561 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!200611)))

(declare-fun b!325533 () Bool)

(declare-fun e!200612 () Bool)

(declare-fun e!200610 () Bool)

(assert (=> b!325533 (= e!200612 e!200610)))

(declare-fun lt!157067 () (_ BitVec 64))

(assert (=> b!325533 (= lt!157067 (select (arr!7894 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10083 0))(
  ( (Unit!10084) )
))
(declare-fun lt!157068 () Unit!10083)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16679 (_ BitVec 64) (_ BitVec 32)) Unit!10083)

(assert (=> b!325533 (= lt!157068 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!157067 #b00000000000000000000000000000000))))

(assert (=> b!325533 (arrayContainsKey!0 a!3305 lt!157067 #b00000000000000000000000000000000)))

(declare-fun lt!157066 () Unit!10083)

(assert (=> b!325533 (= lt!157066 lt!157068)))

(declare-fun res!178913 () Bool)

(assert (=> b!325533 (= res!178913 (= (seekEntryOrOpen!0 (select (arr!7894 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3036 #b00000000000000000000000000000000)))))

(assert (=> b!325533 (=> (not res!178913) (not e!200610))))

(declare-fun b!325534 () Bool)

(assert (=> b!325534 (= e!200611 e!200612)))

(declare-fun c!50939 () Bool)

(assert (=> b!325534 (= c!50939 (validKeyInArray!0 (select (arr!7894 a!3305) #b00000000000000000000000000000000)))))

(declare-fun b!325535 () Bool)

(declare-fun call!26072 () Bool)

(assert (=> b!325535 (= e!200610 call!26072)))

(declare-fun bm!26069 () Bool)

(assert (=> bm!26069 (= call!26072 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!325536 () Bool)

(assert (=> b!325536 (= e!200612 call!26072)))

(assert (= (and d!69561 (not res!178914)) b!325534))

(assert (= (and b!325534 c!50939) b!325533))

(assert (= (and b!325534 (not c!50939)) b!325536))

(assert (= (and b!325533 res!178913) b!325535))

(assert (= (or b!325535 b!325536) bm!26069))

(assert (=> b!325533 m!332289))

(declare-fun m!332317 () Bool)

(assert (=> b!325533 m!332317))

(declare-fun m!332319 () Bool)

(assert (=> b!325533 m!332319))

(assert (=> b!325533 m!332289))

(declare-fun m!332321 () Bool)

(assert (=> b!325533 m!332321))

(assert (=> b!325534 m!332289))

(assert (=> b!325534 m!332289))

(declare-fun m!332323 () Bool)

(assert (=> b!325534 m!332323))

(declare-fun m!332325 () Bool)

(assert (=> bm!26069 m!332325))

(assert (=> b!325291 d!69561))

(declare-fun b!325561 () Bool)

(declare-fun e!200629 () SeekEntryResult!3036)

(declare-fun e!200630 () SeekEntryResult!3036)

(assert (=> b!325561 (= e!200629 e!200630)))

(declare-fun lt!157088 () (_ BitVec 64))

(declare-fun lt!157087 () SeekEntryResult!3036)

(assert (=> b!325561 (= lt!157088 (select (arr!7894 a!3305) (index!14322 lt!157087)))))

(declare-fun c!50951 () Bool)

(assert (=> b!325561 (= c!50951 (= lt!157088 k!2497))))

(declare-fun b!325562 () Bool)

(assert (=> b!325562 (= e!200629 Undefined!3036)))

(declare-fun b!325563 () Bool)

(declare-fun e!200628 () SeekEntryResult!3036)

(assert (=> b!325563 (= e!200628 (MissingZero!3036 (index!14322 lt!157087)))))

(declare-fun b!325564 () Bool)

(declare-fun c!50950 () Bool)

(assert (=> b!325564 (= c!50950 (= lt!157088 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325564 (= e!200630 e!200628)))

(declare-fun b!325565 () Bool)

(assert (=> b!325565 (= e!200630 (Found!3036 (index!14322 lt!157087)))))

(declare-fun d!69569 () Bool)

(declare-fun lt!157089 () SeekEntryResult!3036)

(assert (=> d!69569 (and (or (is-Undefined!3036 lt!157089) (not (is-Found!3036 lt!157089)) (and (bvsge (index!14321 lt!157089) #b00000000000000000000000000000000) (bvslt (index!14321 lt!157089) (size!8246 a!3305)))) (or (is-Undefined!3036 lt!157089) (is-Found!3036 lt!157089) (not (is-MissingZero!3036 lt!157089)) (and (bvsge (index!14320 lt!157089) #b00000000000000000000000000000000) (bvslt (index!14320 lt!157089) (size!8246 a!3305)))) (or (is-Undefined!3036 lt!157089) (is-Found!3036 lt!157089) (is-MissingZero!3036 lt!157089) (not (is-MissingVacant!3036 lt!157089)) (and (bvsge (index!14323 lt!157089) #b00000000000000000000000000000000) (bvslt (index!14323 lt!157089) (size!8246 a!3305)))) (or (is-Undefined!3036 lt!157089) (ite (is-Found!3036 lt!157089) (= (select (arr!7894 a!3305) (index!14321 lt!157089)) k!2497) (ite (is-MissingZero!3036 lt!157089) (= (select (arr!7894 a!3305) (index!14320 lt!157089)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3036 lt!157089) (= (select (arr!7894 a!3305) (index!14323 lt!157089)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!69569 (= lt!157089 e!200629)))

(declare-fun c!50949 () Bool)

(assert (=> d!69569 (= c!50949 (and (is-Intermediate!3036 lt!157087) (undefined!3848 lt!157087)))))

(assert (=> d!69569 (= lt!157087 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!69569 (validMask!0 mask!3777)))

(assert (=> d!69569 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!157089)))

(declare-fun b!325566 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16679 (_ BitVec 32)) SeekEntryResult!3036)

(assert (=> b!325566 (= e!200628 (seekKeyOrZeroReturnVacant!0 (x!32523 lt!157087) (index!14322 lt!157087) (index!14322 lt!157087) k!2497 a!3305 mask!3777))))

(assert (= (and d!69569 c!50949) b!325562))

(assert (= (and d!69569 (not c!50949)) b!325561))

(assert (= (and b!325561 c!50951) b!325565))

(assert (= (and b!325561 (not c!50951)) b!325564))

(assert (= (and b!325564 c!50950) b!325563))

(assert (= (and b!325564 (not c!50950)) b!325566))

(declare-fun m!332339 () Bool)

(assert (=> b!325561 m!332339))

(assert (=> d!69569 m!332183))

(assert (=> d!69569 m!332169))

(assert (=> d!69569 m!332171))

(assert (=> d!69569 m!332169))

(declare-fun m!332341 () Bool)

(assert (=> d!69569 m!332341))

(declare-fun m!332343 () Bool)

(assert (=> d!69569 m!332343))

(declare-fun m!332345 () Bool)

(assert (=> d!69569 m!332345))

(declare-fun m!332347 () Bool)

(assert (=> b!325566 m!332347))

(assert (=> b!325296 d!69569))

(declare-fun d!69573 () Bool)

(declare-fun e!200632 () Bool)

(assert (=> d!69573 e!200632))

(declare-fun c!50953 () Bool)

(declare-fun lt!157091 () SeekEntryResult!3036)

(assert (=> d!69573 (= c!50953 (and (is-Intermediate!3036 lt!157091) (undefined!3848 lt!157091)))))

(declare-fun e!200634 () SeekEntryResult!3036)

(assert (=> d!69573 (= lt!157091 e!200634)))

(declare-fun c!50954 () Bool)

(assert (=> d!69573 (= c!50954 (bvsge x!1490 #b01111111111111111111111111111110))))

(declare-fun lt!157090 () (_ BitVec 64))

(assert (=> d!69573 (= lt!157090 (select (arr!7894 a!3305) index!1840))))

(assert (=> d!69573 (validMask!0 mask!3777)))

(assert (=> d!69573 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!157091)))

(declare-fun b!325567 () Bool)

(assert (=> b!325567 (and (bvsge (index!14322 lt!157091) #b00000000000000000000000000000000) (bvslt (index!14322 lt!157091) (size!8246 a!3305)))))

(declare-fun res!178922 () Bool)

(assert (=> b!325567 (= res!178922 (= (select (arr!7894 a!3305) (index!14322 lt!157091)) k!2497))))

(declare-fun e!200631 () Bool)

(assert (=> b!325567 (=> res!178922 e!200631)))

(declare-fun e!200635 () Bool)

(assert (=> b!325567 (= e!200635 e!200631)))

(declare-fun e!200633 () SeekEntryResult!3036)

(declare-fun b!325568 () Bool)

(assert (=> b!325568 (= e!200633 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!325569 () Bool)

(assert (=> b!325569 (= e!200634 (Intermediate!3036 true index!1840 x!1490))))

(declare-fun b!325570 () Bool)

(assert (=> b!325570 (= e!200634 e!200633)))

(declare-fun c!50952 () Bool)

(assert (=> b!325570 (= c!50952 (or (= lt!157090 k!2497) (= (bvadd lt!157090 lt!157090) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!325571 () Bool)

(assert (=> b!325571 (= e!200632 (bvsge (x!32523 lt!157091) #b01111111111111111111111111111110))))

(declare-fun b!325572 () Bool)

(assert (=> b!325572 (and (bvsge (index!14322 lt!157091) #b00000000000000000000000000000000) (bvslt (index!14322 lt!157091) (size!8246 a!3305)))))

(declare-fun res!178921 () Bool)

(assert (=> b!325572 (= res!178921 (= (select (arr!7894 a!3305) (index!14322 lt!157091)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!325572 (=> res!178921 e!200631)))

(declare-fun b!325573 () Bool)

(assert (=> b!325573 (and (bvsge (index!14322 lt!157091) #b00000000000000000000000000000000) (bvslt (index!14322 lt!157091) (size!8246 a!3305)))))

(assert (=> b!325573 (= e!200631 (= (select (arr!7894 a!3305) (index!14322 lt!157091)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!325574 () Bool)

(assert (=> b!325574 (= e!200633 (Intermediate!3036 false index!1840 x!1490))))

(declare-fun b!325575 () Bool)

(assert (=> b!325575 (= e!200632 e!200635)))

(declare-fun res!178923 () Bool)

(assert (=> b!325575 (= res!178923 (and (is-Intermediate!3036 lt!157091) (not (undefined!3848 lt!157091)) (bvslt (x!32523 lt!157091) #b01111111111111111111111111111110) (bvsge (x!32523 lt!157091) #b00000000000000000000000000000000) (bvsge (x!32523 lt!157091) x!1490)))))

(assert (=> b!325575 (=> (not res!178923) (not e!200635))))

(assert (= (and d!69573 c!50954) b!325569))

(assert (= (and d!69573 (not c!50954)) b!325570))

(assert (= (and b!325570 c!50952) b!325574))

(assert (= (and b!325570 (not c!50952)) b!325568))

(assert (= (and d!69573 c!50953) b!325571))

(assert (= (and d!69573 (not c!50953)) b!325575))

(assert (= (and b!325575 res!178923) b!325567))

(assert (= (and b!325567 (not res!178922)) b!325572))

(assert (= (and b!325572 (not res!178921)) b!325573))

(declare-fun m!332349 () Bool)

(assert (=> b!325573 m!332349))

(assert (=> d!69573 m!332177))

(assert (=> d!69573 m!332183))

(assert (=> b!325572 m!332349))

(assert (=> b!325568 m!332181))

(assert (=> b!325568 m!332181))

(declare-fun m!332351 () Bool)

(assert (=> b!325568 m!332351))

(assert (=> b!325567 m!332349))

(assert (=> b!325295 d!69573))

(push 1)

(assert (not b!325491))

(assert (not bm!26069))

(assert (not b!325534))

(assert (not d!69537))

(assert (not d!69573))

(assert (not b!325566))

(assert (not d!69523))

(assert (not b!325568))

(assert (not d!69569))

(assert (not b!325533))

(assert (not b!325466))

(check-sat)

(pop 1)

(push 1)

(check-sat)

