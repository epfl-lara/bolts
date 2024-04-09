; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51274 () Bool)

(assert start!51274)

(declare-fun b!559425 () Bool)

(declare-fun res!350965 () Bool)

(declare-fun e!322293 () Bool)

(assert (=> b!559425 (=> (not res!350965) (not e!322293))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35156 0))(
  ( (array!35157 (arr!16876 (Array (_ BitVec 32) (_ BitVec 64))) (size!17240 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35156)

(assert (=> b!559425 (= res!350965 (and (= (size!17240 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17240 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17240 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!559426 () Bool)

(declare-fun res!350971 () Bool)

(declare-fun e!322292 () Bool)

(assert (=> b!559426 (=> (not res!350971) (not e!322292))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35156 (_ BitVec 32)) Bool)

(assert (=> b!559426 (= res!350971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!559427 () Bool)

(declare-fun res!350968 () Bool)

(assert (=> b!559427 (=> (not res!350968) (not e!322292))))

(declare-datatypes ((List!11009 0))(
  ( (Nil!11006) (Cons!11005 (h!12005 (_ BitVec 64)) (t!17245 List!11009)) )
))
(declare-fun arrayNoDuplicates!0 (array!35156 (_ BitVec 32) List!11009) Bool)

(assert (=> b!559427 (= res!350968 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11006))))

(declare-fun b!559428 () Bool)

(declare-fun e!322297 () Bool)

(declare-fun e!322296 () Bool)

(assert (=> b!559428 (= e!322297 e!322296)))

(declare-fun res!350970 () Bool)

(assert (=> b!559428 (=> res!350970 e!322296)))

(declare-fun lt!254315 () (_ BitVec 64))

(assert (=> b!559428 (= res!350970 (or (= lt!254315 (select (arr!16876 a!3118) j!142)) (= lt!254315 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5332 0))(
  ( (MissingZero!5332 (index!23555 (_ BitVec 32))) (Found!5332 (index!23556 (_ BitVec 32))) (Intermediate!5332 (undefined!6144 Bool) (index!23557 (_ BitVec 32)) (x!52493 (_ BitVec 32))) (Undefined!5332) (MissingVacant!5332 (index!23558 (_ BitVec 32))) )
))
(declare-fun lt!254316 () SeekEntryResult!5332)

(assert (=> b!559428 (= lt!254315 (select (arr!16876 a!3118) (index!23557 lt!254316)))))

(declare-fun b!559429 () Bool)

(declare-fun res!350964 () Bool)

(assert (=> b!559429 (=> (not res!350964) (not e!322293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!559429 (= res!350964 (validKeyInArray!0 (select (arr!16876 a!3118) j!142)))))

(declare-fun b!559430 () Bool)

(declare-fun lt!254312 () SeekEntryResult!5332)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35156 (_ BitVec 32)) SeekEntryResult!5332)

(assert (=> b!559430 (= e!322296 (= lt!254312 (seekKeyOrZeroReturnVacant!0 (x!52493 lt!254316) (index!23557 lt!254316) (index!23557 lt!254316) (select (arr!16876 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun res!350972 () Bool)

(assert (=> start!51274 (=> (not res!350972) (not e!322293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51274 (= res!350972 (validMask!0 mask!3119))))

(assert (=> start!51274 e!322293))

(assert (=> start!51274 true))

(declare-fun array_inv!12650 (array!35156) Bool)

(assert (=> start!51274 (array_inv!12650 a!3118)))

(declare-fun b!559431 () Bool)

(declare-fun e!322294 () Bool)

(assert (=> b!559431 (= e!322294 e!322297)))

(declare-fun res!350969 () Bool)

(assert (=> b!559431 (=> res!350969 e!322297)))

(get-info :version)

(assert (=> b!559431 (= res!350969 (or (undefined!6144 lt!254316) (not ((_ is Intermediate!5332) lt!254316))))))

(declare-fun b!559432 () Bool)

(declare-fun e!322295 () Bool)

(assert (=> b!559432 (= e!322292 e!322295)))

(declare-fun res!350974 () Bool)

(assert (=> b!559432 (=> (not res!350974) (not e!322295))))

(declare-fun lt!254313 () (_ BitVec 64))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun lt!254311 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35156 (_ BitVec 32)) SeekEntryResult!5332)

(assert (=> b!559432 (= res!350974 (= lt!254316 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254311 lt!254313 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118)) mask!3119)))))

(declare-fun lt!254314 () (_ BitVec 32))

(assert (=> b!559432 (= lt!254316 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254314 (select (arr!16876 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559432 (= lt!254311 (toIndex!0 lt!254313 mask!3119))))

(assert (=> b!559432 (= lt!254313 (select (store (arr!16876 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!559432 (= lt!254314 (toIndex!0 (select (arr!16876 a!3118) j!142) mask!3119))))

(declare-fun b!559433 () Bool)

(assert (=> b!559433 (= e!322295 (not (or (undefined!6144 lt!254316) (not ((_ is Intermediate!5332) lt!254316)) (let ((bdg!16975 (select (arr!16876 a!3118) (index!23557 lt!254316)))) (or (= bdg!16975 (select (arr!16876 a!3118) j!142)) (= bdg!16975 #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23557 lt!254316) #b00000000000000000000000000000000) (bvsge (index!23557 lt!254316) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52493 lt!254316) #b01111111111111111111111111111110) (bvslt (x!52493 lt!254316) #b00000000000000000000000000000000) (= (select (store (arr!16876 a!3118) i!1132 k0!1914) (index!23557 lt!254316)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> b!559433 e!322294))

(declare-fun res!350973 () Bool)

(assert (=> b!559433 (=> (not res!350973) (not e!322294))))

(assert (=> b!559433 (= res!350973 (= lt!254312 (Found!5332 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35156 (_ BitVec 32)) SeekEntryResult!5332)

(assert (=> b!559433 (= lt!254312 (seekEntryOrOpen!0 (select (arr!16876 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!559433 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17438 0))(
  ( (Unit!17439) )
))
(declare-fun lt!254317 () Unit!17438)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35156 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17438)

(assert (=> b!559433 (= lt!254317 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!559434 () Bool)

(assert (=> b!559434 (= e!322293 e!322292)))

(declare-fun res!350967 () Bool)

(assert (=> b!559434 (=> (not res!350967) (not e!322292))))

(declare-fun lt!254318 () SeekEntryResult!5332)

(assert (=> b!559434 (= res!350967 (or (= lt!254318 (MissingZero!5332 i!1132)) (= lt!254318 (MissingVacant!5332 i!1132))))))

(assert (=> b!559434 (= lt!254318 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!559435 () Bool)

(declare-fun res!350975 () Bool)

(assert (=> b!559435 (=> (not res!350975) (not e!322293))))

(assert (=> b!559435 (= res!350975 (validKeyInArray!0 k0!1914))))

(declare-fun b!559436 () Bool)

(declare-fun res!350966 () Bool)

(assert (=> b!559436 (=> (not res!350966) (not e!322293))))

(declare-fun arrayContainsKey!0 (array!35156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!559436 (= res!350966 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51274 res!350972) b!559425))

(assert (= (and b!559425 res!350965) b!559429))

(assert (= (and b!559429 res!350964) b!559435))

(assert (= (and b!559435 res!350975) b!559436))

(assert (= (and b!559436 res!350966) b!559434))

(assert (= (and b!559434 res!350967) b!559426))

(assert (= (and b!559426 res!350971) b!559427))

(assert (= (and b!559427 res!350968) b!559432))

(assert (= (and b!559432 res!350974) b!559433))

(assert (= (and b!559433 res!350973) b!559431))

(assert (= (and b!559431 (not res!350969)) b!559428))

(assert (= (and b!559428 (not res!350970)) b!559430))

(declare-fun m!537295 () Bool)

(assert (=> b!559434 m!537295))

(declare-fun m!537297 () Bool)

(assert (=> b!559435 m!537297))

(declare-fun m!537299 () Bool)

(assert (=> b!559433 m!537299))

(declare-fun m!537301 () Bool)

(assert (=> b!559433 m!537301))

(declare-fun m!537303 () Bool)

(assert (=> b!559433 m!537303))

(declare-fun m!537305 () Bool)

(assert (=> b!559433 m!537305))

(assert (=> b!559433 m!537301))

(declare-fun m!537307 () Bool)

(assert (=> b!559433 m!537307))

(declare-fun m!537309 () Bool)

(assert (=> b!559433 m!537309))

(declare-fun m!537311 () Bool)

(assert (=> b!559433 m!537311))

(declare-fun m!537313 () Bool)

(assert (=> b!559426 m!537313))

(declare-fun m!537315 () Bool)

(assert (=> b!559436 m!537315))

(assert (=> b!559428 m!537301))

(assert (=> b!559428 m!537311))

(declare-fun m!537317 () Bool)

(assert (=> start!51274 m!537317))

(declare-fun m!537319 () Bool)

(assert (=> start!51274 m!537319))

(declare-fun m!537321 () Bool)

(assert (=> b!559427 m!537321))

(assert (=> b!559430 m!537301))

(assert (=> b!559430 m!537301))

(declare-fun m!537323 () Bool)

(assert (=> b!559430 m!537323))

(assert (=> b!559429 m!537301))

(assert (=> b!559429 m!537301))

(declare-fun m!537325 () Bool)

(assert (=> b!559429 m!537325))

(assert (=> b!559432 m!537301))

(declare-fun m!537327 () Bool)

(assert (=> b!559432 m!537327))

(assert (=> b!559432 m!537301))

(declare-fun m!537329 () Bool)

(assert (=> b!559432 m!537329))

(declare-fun m!537331 () Bool)

(assert (=> b!559432 m!537331))

(assert (=> b!559432 m!537305))

(assert (=> b!559432 m!537301))

(declare-fun m!537333 () Bool)

(assert (=> b!559432 m!537333))

(declare-fun m!537335 () Bool)

(assert (=> b!559432 m!537335))

(check-sat (not b!559429) (not b!559430) (not b!559433) (not b!559427) (not b!559432) (not b!559426) (not b!559435) (not b!559436) (not start!51274) (not b!559434))
(check-sat)
(get-model)

(declare-fun b!559485 () Bool)

(declare-fun c!64582 () Bool)

(declare-fun lt!254349 () (_ BitVec 64))

(assert (=> b!559485 (= c!64582 (= lt!254349 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!322325 () SeekEntryResult!5332)

(declare-fun e!322326 () SeekEntryResult!5332)

(assert (=> b!559485 (= e!322325 e!322326)))

(declare-fun d!83667 () Bool)

(declare-fun lt!254351 () SeekEntryResult!5332)

(assert (=> d!83667 (and (or ((_ is Undefined!5332) lt!254351) (not ((_ is Found!5332) lt!254351)) (and (bvsge (index!23556 lt!254351) #b00000000000000000000000000000000) (bvslt (index!23556 lt!254351) (size!17240 a!3118)))) (or ((_ is Undefined!5332) lt!254351) ((_ is Found!5332) lt!254351) (not ((_ is MissingZero!5332) lt!254351)) (and (bvsge (index!23555 lt!254351) #b00000000000000000000000000000000) (bvslt (index!23555 lt!254351) (size!17240 a!3118)))) (or ((_ is Undefined!5332) lt!254351) ((_ is Found!5332) lt!254351) ((_ is MissingZero!5332) lt!254351) (not ((_ is MissingVacant!5332) lt!254351)) (and (bvsge (index!23558 lt!254351) #b00000000000000000000000000000000) (bvslt (index!23558 lt!254351) (size!17240 a!3118)))) (or ((_ is Undefined!5332) lt!254351) (ite ((_ is Found!5332) lt!254351) (= (select (arr!16876 a!3118) (index!23556 lt!254351)) (select (arr!16876 a!3118) j!142)) (ite ((_ is MissingZero!5332) lt!254351) (= (select (arr!16876 a!3118) (index!23555 lt!254351)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5332) lt!254351) (= (select (arr!16876 a!3118) (index!23558 lt!254351)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!322327 () SeekEntryResult!5332)

(assert (=> d!83667 (= lt!254351 e!322327)))

(declare-fun c!64583 () Bool)

(declare-fun lt!254350 () SeekEntryResult!5332)

(assert (=> d!83667 (= c!64583 (and ((_ is Intermediate!5332) lt!254350) (undefined!6144 lt!254350)))))

(assert (=> d!83667 (= lt!254350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16876 a!3118) j!142) mask!3119) (select (arr!16876 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83667 (validMask!0 mask!3119)))

(assert (=> d!83667 (= (seekEntryOrOpen!0 (select (arr!16876 a!3118) j!142) a!3118 mask!3119) lt!254351)))

(declare-fun b!559486 () Bool)

(assert (=> b!559486 (= e!322326 (seekKeyOrZeroReturnVacant!0 (x!52493 lt!254350) (index!23557 lt!254350) (index!23557 lt!254350) (select (arr!16876 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559487 () Bool)

(assert (=> b!559487 (= e!322325 (Found!5332 (index!23557 lt!254350)))))

(declare-fun b!559488 () Bool)

(assert (=> b!559488 (= e!322326 (MissingZero!5332 (index!23557 lt!254350)))))

(declare-fun b!559489 () Bool)

(assert (=> b!559489 (= e!322327 Undefined!5332)))

(declare-fun b!559490 () Bool)

(assert (=> b!559490 (= e!322327 e!322325)))

(assert (=> b!559490 (= lt!254349 (select (arr!16876 a!3118) (index!23557 lt!254350)))))

(declare-fun c!64581 () Bool)

(assert (=> b!559490 (= c!64581 (= lt!254349 (select (arr!16876 a!3118) j!142)))))

(assert (= (and d!83667 c!64583) b!559489))

(assert (= (and d!83667 (not c!64583)) b!559490))

(assert (= (and b!559490 c!64581) b!559487))

(assert (= (and b!559490 (not c!64581)) b!559485))

(assert (= (and b!559485 c!64582) b!559488))

(assert (= (and b!559485 (not c!64582)) b!559486))

(declare-fun m!537379 () Bool)

(assert (=> d!83667 m!537379))

(assert (=> d!83667 m!537317))

(assert (=> d!83667 m!537327))

(assert (=> d!83667 m!537301))

(declare-fun m!537381 () Bool)

(assert (=> d!83667 m!537381))

(declare-fun m!537383 () Bool)

(assert (=> d!83667 m!537383))

(assert (=> d!83667 m!537301))

(assert (=> d!83667 m!537327))

(declare-fun m!537385 () Bool)

(assert (=> d!83667 m!537385))

(assert (=> b!559486 m!537301))

(declare-fun m!537387 () Bool)

(assert (=> b!559486 m!537387))

(declare-fun m!537389 () Bool)

(assert (=> b!559490 m!537389))

(assert (=> b!559433 d!83667))

(declare-fun d!83673 () Bool)

(declare-fun res!351038 () Bool)

(declare-fun e!322358 () Bool)

(assert (=> d!83673 (=> res!351038 e!322358)))

(assert (=> d!83673 (= res!351038 (bvsge j!142 (size!17240 a!3118)))))

(assert (=> d!83673 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!322358)))

(declare-fun b!559526 () Bool)

(declare-fun e!322359 () Bool)

(declare-fun e!322360 () Bool)

(assert (=> b!559526 (= e!322359 e!322360)))

(declare-fun lt!254359 () (_ BitVec 64))

(assert (=> b!559526 (= lt!254359 (select (arr!16876 a!3118) j!142))))

(declare-fun lt!254358 () Unit!17438)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35156 (_ BitVec 64) (_ BitVec 32)) Unit!17438)

(assert (=> b!559526 (= lt!254358 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254359 j!142))))

(assert (=> b!559526 (arrayContainsKey!0 a!3118 lt!254359 #b00000000000000000000000000000000)))

(declare-fun lt!254360 () Unit!17438)

(assert (=> b!559526 (= lt!254360 lt!254358)))

(declare-fun res!351037 () Bool)

(assert (=> b!559526 (= res!351037 (= (seekEntryOrOpen!0 (select (arr!16876 a!3118) j!142) a!3118 mask!3119) (Found!5332 j!142)))))

(assert (=> b!559526 (=> (not res!351037) (not e!322360))))

(declare-fun b!559527 () Bool)

(declare-fun call!32438 () Bool)

(assert (=> b!559527 (= e!322360 call!32438)))

(declare-fun bm!32435 () Bool)

(assert (=> bm!32435 (= call!32438 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!559528 () Bool)

(assert (=> b!559528 (= e!322359 call!32438)))

(declare-fun b!559529 () Bool)

(assert (=> b!559529 (= e!322358 e!322359)))

(declare-fun c!64589 () Bool)

(assert (=> b!559529 (= c!64589 (validKeyInArray!0 (select (arr!16876 a!3118) j!142)))))

(assert (= (and d!83673 (not res!351038)) b!559529))

(assert (= (and b!559529 c!64589) b!559526))

(assert (= (and b!559529 (not c!64589)) b!559528))

(assert (= (and b!559526 res!351037) b!559527))

(assert (= (or b!559527 b!559528) bm!32435))

(assert (=> b!559526 m!537301))

(declare-fun m!537405 () Bool)

(assert (=> b!559526 m!537405))

(declare-fun m!537407 () Bool)

(assert (=> b!559526 m!537407))

(assert (=> b!559526 m!537301))

(assert (=> b!559526 m!537307))

(declare-fun m!537409 () Bool)

(assert (=> bm!32435 m!537409))

(assert (=> b!559529 m!537301))

(assert (=> b!559529 m!537301))

(assert (=> b!559529 m!537325))

(assert (=> b!559433 d!83673))

(declare-fun d!83681 () Bool)

(assert (=> d!83681 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!254363 () Unit!17438)

(declare-fun choose!38 (array!35156 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17438)

(assert (=> d!83681 (= lt!254363 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83681 (validMask!0 mask!3119)))

(assert (=> d!83681 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!254363)))

(declare-fun bs!17397 () Bool)

(assert (= bs!17397 d!83681))

(assert (=> bs!17397 m!537303))

(declare-fun m!537411 () Bool)

(assert (=> bs!17397 m!537411))

(assert (=> bs!17397 m!537317))

(assert (=> b!559433 d!83681))

(declare-fun b!559564 () Bool)

(declare-fun e!322385 () Bool)

(declare-fun contains!2863 (List!11009 (_ BitVec 64)) Bool)

(assert (=> b!559564 (= e!322385 (contains!2863 Nil!11006 (select (arr!16876 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559565 () Bool)

(declare-fun e!322384 () Bool)

(declare-fun e!322387 () Bool)

(assert (=> b!559565 (= e!322384 e!322387)))

(declare-fun c!64601 () Bool)

(assert (=> b!559565 (= c!64601 (validKeyInArray!0 (select (arr!16876 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!559566 () Bool)

(declare-fun call!32444 () Bool)

(assert (=> b!559566 (= e!322387 call!32444)))

(declare-fun b!559567 () Bool)

(declare-fun e!322386 () Bool)

(assert (=> b!559567 (= e!322386 e!322384)))

(declare-fun res!351052 () Bool)

(assert (=> b!559567 (=> (not res!351052) (not e!322384))))

(assert (=> b!559567 (= res!351052 (not e!322385))))

(declare-fun res!351053 () Bool)

(assert (=> b!559567 (=> (not res!351053) (not e!322385))))

(assert (=> b!559567 (= res!351053 (validKeyInArray!0 (select (arr!16876 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83683 () Bool)

(declare-fun res!351051 () Bool)

(assert (=> d!83683 (=> res!351051 e!322386)))

(assert (=> d!83683 (= res!351051 (bvsge #b00000000000000000000000000000000 (size!17240 a!3118)))))

(assert (=> d!83683 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11006) e!322386)))

(declare-fun b!559568 () Bool)

(assert (=> b!559568 (= e!322387 call!32444)))

(declare-fun bm!32441 () Bool)

(assert (=> bm!32441 (= call!32444 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64601 (Cons!11005 (select (arr!16876 a!3118) #b00000000000000000000000000000000) Nil!11006) Nil!11006)))))

(assert (= (and d!83683 (not res!351051)) b!559567))

(assert (= (and b!559567 res!351053) b!559564))

(assert (= (and b!559567 res!351052) b!559565))

(assert (= (and b!559565 c!64601) b!559568))

(assert (= (and b!559565 (not c!64601)) b!559566))

(assert (= (or b!559568 b!559566) bm!32441))

(declare-fun m!537421 () Bool)

(assert (=> b!559564 m!537421))

(assert (=> b!559564 m!537421))

(declare-fun m!537423 () Bool)

(assert (=> b!559564 m!537423))

(assert (=> b!559565 m!537421))

(assert (=> b!559565 m!537421))

(declare-fun m!537425 () Bool)

(assert (=> b!559565 m!537425))

(assert (=> b!559567 m!537421))

(assert (=> b!559567 m!537421))

(assert (=> b!559567 m!537425))

(assert (=> bm!32441 m!537421))

(declare-fun m!537427 () Bool)

(assert (=> bm!32441 m!537427))

(assert (=> b!559427 d!83683))

(declare-fun b!559605 () Bool)

(declare-fun e!322410 () SeekEntryResult!5332)

(declare-fun e!322413 () SeekEntryResult!5332)

(assert (=> b!559605 (= e!322410 e!322413)))

(declare-fun c!64614 () Bool)

(declare-fun lt!254398 () (_ BitVec 64))

(assert (=> b!559605 (= c!64614 (or (= lt!254398 lt!254313) (= (bvadd lt!254398 lt!254398) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559606 () Bool)

(declare-fun e!322414 () Bool)

(declare-fun e!322411 () Bool)

(assert (=> b!559606 (= e!322414 e!322411)))

(declare-fun res!351066 () Bool)

(declare-fun lt!254399 () SeekEntryResult!5332)

(assert (=> b!559606 (= res!351066 (and ((_ is Intermediate!5332) lt!254399) (not (undefined!6144 lt!254399)) (bvslt (x!52493 lt!254399) #b01111111111111111111111111111110) (bvsge (x!52493 lt!254399) #b00000000000000000000000000000000) (bvsge (x!52493 lt!254399) #b00000000000000000000000000000000)))))

(assert (=> b!559606 (=> (not res!351066) (not e!322411))))

(declare-fun b!559607 () Bool)

(assert (=> b!559607 (and (bvsge (index!23557 lt!254399) #b00000000000000000000000000000000) (bvslt (index!23557 lt!254399) (size!17240 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118)))))))

(declare-fun e!322412 () Bool)

(assert (=> b!559607 (= e!322412 (= (select (arr!16876 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118))) (index!23557 lt!254399)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559608 () Bool)

(assert (=> b!559608 (and (bvsge (index!23557 lt!254399) #b00000000000000000000000000000000) (bvslt (index!23557 lt!254399) (size!17240 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118)))))))

(declare-fun res!351068 () Bool)

(assert (=> b!559608 (= res!351068 (= (select (arr!16876 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118))) (index!23557 lt!254399)) lt!254313))))

(assert (=> b!559608 (=> res!351068 e!322412)))

(assert (=> b!559608 (= e!322411 e!322412)))

(declare-fun b!559609 () Bool)

(assert (=> b!559609 (= e!322414 (bvsge (x!52493 lt!254399) #b01111111111111111111111111111110))))

(declare-fun b!559611 () Bool)

(assert (=> b!559611 (= e!322413 (Intermediate!5332 false lt!254311 #b00000000000000000000000000000000))))

(declare-fun b!559610 () Bool)

(assert (=> b!559610 (= e!322410 (Intermediate!5332 true lt!254311 #b00000000000000000000000000000000))))

(declare-fun d!83687 () Bool)

(assert (=> d!83687 e!322414))

(declare-fun c!64616 () Bool)

(assert (=> d!83687 (= c!64616 (and ((_ is Intermediate!5332) lt!254399) (undefined!6144 lt!254399)))))

(assert (=> d!83687 (= lt!254399 e!322410)))

(declare-fun c!64615 () Bool)

(assert (=> d!83687 (= c!64615 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83687 (= lt!254398 (select (arr!16876 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118))) lt!254311))))

(assert (=> d!83687 (validMask!0 mask!3119)))

(assert (=> d!83687 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254311 lt!254313 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118)) mask!3119) lt!254399)))

(declare-fun b!559612 () Bool)

(assert (=> b!559612 (and (bvsge (index!23557 lt!254399) #b00000000000000000000000000000000) (bvslt (index!23557 lt!254399) (size!17240 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118)))))))

(declare-fun res!351067 () Bool)

(assert (=> b!559612 (= res!351067 (= (select (arr!16876 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118))) (index!23557 lt!254399)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559612 (=> res!351067 e!322412)))

(declare-fun b!559613 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!559613 (= e!322413 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254311 #b00000000000000000000000000000000 mask!3119) lt!254313 (array!35157 (store (arr!16876 a!3118) i!1132 k0!1914) (size!17240 a!3118)) mask!3119))))

(assert (= (and d!83687 c!64615) b!559610))

(assert (= (and d!83687 (not c!64615)) b!559605))

(assert (= (and b!559605 c!64614) b!559611))

(assert (= (and b!559605 (not c!64614)) b!559613))

(assert (= (and d!83687 c!64616) b!559609))

(assert (= (and d!83687 (not c!64616)) b!559606))

(assert (= (and b!559606 res!351066) b!559608))

(assert (= (and b!559608 (not res!351068)) b!559612))

(assert (= (and b!559612 (not res!351067)) b!559607))

(declare-fun m!537449 () Bool)

(assert (=> b!559608 m!537449))

(assert (=> b!559612 m!537449))

(declare-fun m!537451 () Bool)

(assert (=> b!559613 m!537451))

(assert (=> b!559613 m!537451))

(declare-fun m!537453 () Bool)

(assert (=> b!559613 m!537453))

(declare-fun m!537455 () Bool)

(assert (=> d!83687 m!537455))

(assert (=> d!83687 m!537317))

(assert (=> b!559607 m!537449))

(assert (=> b!559432 d!83687))

(declare-fun b!559614 () Bool)

(declare-fun e!322415 () SeekEntryResult!5332)

(declare-fun e!322418 () SeekEntryResult!5332)

(assert (=> b!559614 (= e!322415 e!322418)))

(declare-fun c!64617 () Bool)

(declare-fun lt!254400 () (_ BitVec 64))

(assert (=> b!559614 (= c!64617 (or (= lt!254400 (select (arr!16876 a!3118) j!142)) (= (bvadd lt!254400 lt!254400) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!559615 () Bool)

(declare-fun e!322419 () Bool)

(declare-fun e!322416 () Bool)

(assert (=> b!559615 (= e!322419 e!322416)))

(declare-fun res!351069 () Bool)

(declare-fun lt!254401 () SeekEntryResult!5332)

(assert (=> b!559615 (= res!351069 (and ((_ is Intermediate!5332) lt!254401) (not (undefined!6144 lt!254401)) (bvslt (x!52493 lt!254401) #b01111111111111111111111111111110) (bvsge (x!52493 lt!254401) #b00000000000000000000000000000000) (bvsge (x!52493 lt!254401) #b00000000000000000000000000000000)))))

(assert (=> b!559615 (=> (not res!351069) (not e!322416))))

(declare-fun b!559616 () Bool)

(assert (=> b!559616 (and (bvsge (index!23557 lt!254401) #b00000000000000000000000000000000) (bvslt (index!23557 lt!254401) (size!17240 a!3118)))))

(declare-fun e!322417 () Bool)

(assert (=> b!559616 (= e!322417 (= (select (arr!16876 a!3118) (index!23557 lt!254401)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!559617 () Bool)

(assert (=> b!559617 (and (bvsge (index!23557 lt!254401) #b00000000000000000000000000000000) (bvslt (index!23557 lt!254401) (size!17240 a!3118)))))

(declare-fun res!351071 () Bool)

(assert (=> b!559617 (= res!351071 (= (select (arr!16876 a!3118) (index!23557 lt!254401)) (select (arr!16876 a!3118) j!142)))))

(assert (=> b!559617 (=> res!351071 e!322417)))

(assert (=> b!559617 (= e!322416 e!322417)))

(declare-fun b!559618 () Bool)

(assert (=> b!559618 (= e!322419 (bvsge (x!52493 lt!254401) #b01111111111111111111111111111110))))

(declare-fun b!559620 () Bool)

(assert (=> b!559620 (= e!322418 (Intermediate!5332 false lt!254314 #b00000000000000000000000000000000))))

(declare-fun b!559619 () Bool)

(assert (=> b!559619 (= e!322415 (Intermediate!5332 true lt!254314 #b00000000000000000000000000000000))))

(declare-fun d!83699 () Bool)

(assert (=> d!83699 e!322419))

(declare-fun c!64619 () Bool)

(assert (=> d!83699 (= c!64619 (and ((_ is Intermediate!5332) lt!254401) (undefined!6144 lt!254401)))))

(assert (=> d!83699 (= lt!254401 e!322415)))

(declare-fun c!64618 () Bool)

(assert (=> d!83699 (= c!64618 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83699 (= lt!254400 (select (arr!16876 a!3118) lt!254314))))

(assert (=> d!83699 (validMask!0 mask!3119)))

(assert (=> d!83699 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254314 (select (arr!16876 a!3118) j!142) a!3118 mask!3119) lt!254401)))

(declare-fun b!559621 () Bool)

(assert (=> b!559621 (and (bvsge (index!23557 lt!254401) #b00000000000000000000000000000000) (bvslt (index!23557 lt!254401) (size!17240 a!3118)))))

(declare-fun res!351070 () Bool)

(assert (=> b!559621 (= res!351070 (= (select (arr!16876 a!3118) (index!23557 lt!254401)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559621 (=> res!351070 e!322417)))

(declare-fun b!559622 () Bool)

(assert (=> b!559622 (= e!322418 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!254314 #b00000000000000000000000000000000 mask!3119) (select (arr!16876 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and d!83699 c!64618) b!559619))

(assert (= (and d!83699 (not c!64618)) b!559614))

(assert (= (and b!559614 c!64617) b!559620))

(assert (= (and b!559614 (not c!64617)) b!559622))

(assert (= (and d!83699 c!64619) b!559618))

(assert (= (and d!83699 (not c!64619)) b!559615))

(assert (= (and b!559615 res!351069) b!559617))

(assert (= (and b!559617 (not res!351071)) b!559621))

(assert (= (and b!559621 (not res!351070)) b!559616))

(declare-fun m!537457 () Bool)

(assert (=> b!559617 m!537457))

(assert (=> b!559621 m!537457))

(declare-fun m!537459 () Bool)

(assert (=> b!559622 m!537459))

(assert (=> b!559622 m!537459))

(assert (=> b!559622 m!537301))

(declare-fun m!537461 () Bool)

(assert (=> b!559622 m!537461))

(declare-fun m!537463 () Bool)

(assert (=> d!83699 m!537463))

(assert (=> d!83699 m!537317))

(assert (=> b!559616 m!537457))

(assert (=> b!559432 d!83699))

(declare-fun d!83701 () Bool)

(declare-fun lt!254413 () (_ BitVec 32))

(declare-fun lt!254412 () (_ BitVec 32))

(assert (=> d!83701 (= lt!254413 (bvmul (bvxor lt!254412 (bvlshr lt!254412 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83701 (= lt!254412 ((_ extract 31 0) (bvand (bvxor lt!254313 (bvlshr lt!254313 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83701 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!351072 (let ((h!12007 ((_ extract 31 0) (bvand (bvxor lt!254313 (bvlshr lt!254313 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52496 (bvmul (bvxor h!12007 (bvlshr h!12007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52496 (bvlshr x!52496 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!351072 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!351072 #b00000000000000000000000000000000))))))

(assert (=> d!83701 (= (toIndex!0 lt!254313 mask!3119) (bvand (bvxor lt!254413 (bvlshr lt!254413 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!559432 d!83701))

(declare-fun d!83703 () Bool)

(declare-fun lt!254422 () (_ BitVec 32))

(declare-fun lt!254421 () (_ BitVec 32))

(assert (=> d!83703 (= lt!254422 (bvmul (bvxor lt!254421 (bvlshr lt!254421 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83703 (= lt!254421 ((_ extract 31 0) (bvand (bvxor (select (arr!16876 a!3118) j!142) (bvlshr (select (arr!16876 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83703 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!351072 (let ((h!12007 ((_ extract 31 0) (bvand (bvxor (select (arr!16876 a!3118) j!142) (bvlshr (select (arr!16876 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52496 (bvmul (bvxor h!12007 (bvlshr h!12007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52496 (bvlshr x!52496 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!351072 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!351072 #b00000000000000000000000000000000))))))

(assert (=> d!83703 (= (toIndex!0 (select (arr!16876 a!3118) j!142) mask!3119) (bvand (bvxor lt!254422 (bvlshr lt!254422 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!559432 d!83703))

(declare-fun d!83705 () Bool)

(assert (=> d!83705 (= (validKeyInArray!0 (select (arr!16876 a!3118) j!142)) (and (not (= (select (arr!16876 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16876 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!559429 d!83705))

(declare-fun d!83709 () Bool)

(assert (=> d!83709 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51274 d!83709))

(declare-fun d!83715 () Bool)

(assert (=> d!83715 (= (array_inv!12650 a!3118) (bvsge (size!17240 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51274 d!83715))

(declare-fun b!559659 () Bool)

(declare-fun c!64639 () Bool)

(declare-fun lt!254425 () (_ BitVec 64))

(assert (=> b!559659 (= c!64639 (= lt!254425 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!322438 () SeekEntryResult!5332)

(declare-fun e!322439 () SeekEntryResult!5332)

(assert (=> b!559659 (= e!322438 e!322439)))

(declare-fun d!83717 () Bool)

(declare-fun lt!254427 () SeekEntryResult!5332)

(assert (=> d!83717 (and (or ((_ is Undefined!5332) lt!254427) (not ((_ is Found!5332) lt!254427)) (and (bvsge (index!23556 lt!254427) #b00000000000000000000000000000000) (bvslt (index!23556 lt!254427) (size!17240 a!3118)))) (or ((_ is Undefined!5332) lt!254427) ((_ is Found!5332) lt!254427) (not ((_ is MissingZero!5332) lt!254427)) (and (bvsge (index!23555 lt!254427) #b00000000000000000000000000000000) (bvslt (index!23555 lt!254427) (size!17240 a!3118)))) (or ((_ is Undefined!5332) lt!254427) ((_ is Found!5332) lt!254427) ((_ is MissingZero!5332) lt!254427) (not ((_ is MissingVacant!5332) lt!254427)) (and (bvsge (index!23558 lt!254427) #b00000000000000000000000000000000) (bvslt (index!23558 lt!254427) (size!17240 a!3118)))) (or ((_ is Undefined!5332) lt!254427) (ite ((_ is Found!5332) lt!254427) (= (select (arr!16876 a!3118) (index!23556 lt!254427)) k0!1914) (ite ((_ is MissingZero!5332) lt!254427) (= (select (arr!16876 a!3118) (index!23555 lt!254427)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5332) lt!254427) (= (select (arr!16876 a!3118) (index!23558 lt!254427)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!322440 () SeekEntryResult!5332)

(assert (=> d!83717 (= lt!254427 e!322440)))

(declare-fun c!64640 () Bool)

(declare-fun lt!254426 () SeekEntryResult!5332)

(assert (=> d!83717 (= c!64640 (and ((_ is Intermediate!5332) lt!254426) (undefined!6144 lt!254426)))))

(assert (=> d!83717 (= lt!254426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!83717 (validMask!0 mask!3119)))

(assert (=> d!83717 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!254427)))

(declare-fun b!559660 () Bool)

(assert (=> b!559660 (= e!322439 (seekKeyOrZeroReturnVacant!0 (x!52493 lt!254426) (index!23557 lt!254426) (index!23557 lt!254426) k0!1914 a!3118 mask!3119))))

(declare-fun b!559661 () Bool)

(assert (=> b!559661 (= e!322438 (Found!5332 (index!23557 lt!254426)))))

(declare-fun b!559662 () Bool)

(assert (=> b!559662 (= e!322439 (MissingZero!5332 (index!23557 lt!254426)))))

(declare-fun b!559663 () Bool)

(assert (=> b!559663 (= e!322440 Undefined!5332)))

(declare-fun b!559664 () Bool)

(assert (=> b!559664 (= e!322440 e!322438)))

(assert (=> b!559664 (= lt!254425 (select (arr!16876 a!3118) (index!23557 lt!254426)))))

(declare-fun c!64638 () Bool)

(assert (=> b!559664 (= c!64638 (= lt!254425 k0!1914))))

(assert (= (and d!83717 c!64640) b!559663))

(assert (= (and d!83717 (not c!64640)) b!559664))

(assert (= (and b!559664 c!64638) b!559661))

(assert (= (and b!559664 (not c!64638)) b!559659))

(assert (= (and b!559659 c!64639) b!559662))

(assert (= (and b!559659 (not c!64639)) b!559660))

(declare-fun m!537487 () Bool)

(assert (=> d!83717 m!537487))

(assert (=> d!83717 m!537317))

(declare-fun m!537489 () Bool)

(assert (=> d!83717 m!537489))

(declare-fun m!537491 () Bool)

(assert (=> d!83717 m!537491))

(declare-fun m!537493 () Bool)

(assert (=> d!83717 m!537493))

(assert (=> d!83717 m!537489))

(declare-fun m!537495 () Bool)

(assert (=> d!83717 m!537495))

(declare-fun m!537497 () Bool)

(assert (=> b!559660 m!537497))

(declare-fun m!537499 () Bool)

(assert (=> b!559664 m!537499))

(assert (=> b!559434 d!83717))

(declare-fun b!559731 () Bool)

(declare-fun e!322476 () SeekEntryResult!5332)

(assert (=> b!559731 (= e!322476 (seekKeyOrZeroReturnVacant!0 (bvadd (x!52493 lt!254316) #b00000000000000000000000000000001) (nextIndex!0 (index!23557 lt!254316) (x!52493 lt!254316) mask!3119) (index!23557 lt!254316) (select (arr!16876 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!559732 () Bool)

(declare-fun e!322477 () SeekEntryResult!5332)

(assert (=> b!559732 (= e!322477 Undefined!5332)))

(declare-fun b!559733 () Bool)

(declare-fun e!322478 () SeekEntryResult!5332)

(assert (=> b!559733 (= e!322478 (Found!5332 (index!23557 lt!254316)))))

(declare-fun b!559734 () Bool)

(assert (=> b!559734 (= e!322476 (MissingVacant!5332 (index!23557 lt!254316)))))

(declare-fun b!559735 () Bool)

(declare-fun c!64668 () Bool)

(declare-fun lt!254447 () (_ BitVec 64))

(assert (=> b!559735 (= c!64668 (= lt!254447 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!559735 (= e!322478 e!322476)))

(declare-fun lt!254446 () SeekEntryResult!5332)

(declare-fun d!83719 () Bool)

(assert (=> d!83719 (and (or ((_ is Undefined!5332) lt!254446) (not ((_ is Found!5332) lt!254446)) (and (bvsge (index!23556 lt!254446) #b00000000000000000000000000000000) (bvslt (index!23556 lt!254446) (size!17240 a!3118)))) (or ((_ is Undefined!5332) lt!254446) ((_ is Found!5332) lt!254446) (not ((_ is MissingVacant!5332) lt!254446)) (not (= (index!23558 lt!254446) (index!23557 lt!254316))) (and (bvsge (index!23558 lt!254446) #b00000000000000000000000000000000) (bvslt (index!23558 lt!254446) (size!17240 a!3118)))) (or ((_ is Undefined!5332) lt!254446) (ite ((_ is Found!5332) lt!254446) (= (select (arr!16876 a!3118) (index!23556 lt!254446)) (select (arr!16876 a!3118) j!142)) (and ((_ is MissingVacant!5332) lt!254446) (= (index!23558 lt!254446) (index!23557 lt!254316)) (= (select (arr!16876 a!3118) (index!23558 lt!254446)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!83719 (= lt!254446 e!322477)))

(declare-fun c!64669 () Bool)

(assert (=> d!83719 (= c!64669 (bvsge (x!52493 lt!254316) #b01111111111111111111111111111110))))

(assert (=> d!83719 (= lt!254447 (select (arr!16876 a!3118) (index!23557 lt!254316)))))

(assert (=> d!83719 (validMask!0 mask!3119)))

(assert (=> d!83719 (= (seekKeyOrZeroReturnVacant!0 (x!52493 lt!254316) (index!23557 lt!254316) (index!23557 lt!254316) (select (arr!16876 a!3118) j!142) a!3118 mask!3119) lt!254446)))

(declare-fun b!559736 () Bool)

(assert (=> b!559736 (= e!322477 e!322478)))

(declare-fun c!64670 () Bool)

(assert (=> b!559736 (= c!64670 (= lt!254447 (select (arr!16876 a!3118) j!142)))))

(assert (= (and d!83719 c!64669) b!559732))

(assert (= (and d!83719 (not c!64669)) b!559736))

(assert (= (and b!559736 c!64670) b!559733))

(assert (= (and b!559736 (not c!64670)) b!559735))

(assert (= (and b!559735 c!64668) b!559734))

(assert (= (and b!559735 (not c!64668)) b!559731))

(declare-fun m!537525 () Bool)

(assert (=> b!559731 m!537525))

(assert (=> b!559731 m!537525))

(assert (=> b!559731 m!537301))

(declare-fun m!537527 () Bool)

(assert (=> b!559731 m!537527))

(declare-fun m!537529 () Bool)

(assert (=> d!83719 m!537529))

(declare-fun m!537531 () Bool)

(assert (=> d!83719 m!537531))

(assert (=> d!83719 m!537311))

(assert (=> d!83719 m!537317))

(assert (=> b!559430 d!83719))

(declare-fun d!83727 () Bool)

(assert (=> d!83727 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!559435 d!83727))

(declare-fun d!83729 () Bool)

(declare-fun res!351087 () Bool)

(declare-fun e!322479 () Bool)

(assert (=> d!83729 (=> res!351087 e!322479)))

(assert (=> d!83729 (= res!351087 (bvsge #b00000000000000000000000000000000 (size!17240 a!3118)))))

(assert (=> d!83729 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!322479)))

(declare-fun b!559737 () Bool)

(declare-fun e!322480 () Bool)

(declare-fun e!322481 () Bool)

(assert (=> b!559737 (= e!322480 e!322481)))

(declare-fun lt!254449 () (_ BitVec 64))

(assert (=> b!559737 (= lt!254449 (select (arr!16876 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!254448 () Unit!17438)

(assert (=> b!559737 (= lt!254448 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!254449 #b00000000000000000000000000000000))))

(assert (=> b!559737 (arrayContainsKey!0 a!3118 lt!254449 #b00000000000000000000000000000000)))

(declare-fun lt!254450 () Unit!17438)

(assert (=> b!559737 (= lt!254450 lt!254448)))

(declare-fun res!351086 () Bool)

(assert (=> b!559737 (= res!351086 (= (seekEntryOrOpen!0 (select (arr!16876 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5332 #b00000000000000000000000000000000)))))

(assert (=> b!559737 (=> (not res!351086) (not e!322481))))

(declare-fun b!559738 () Bool)

(declare-fun call!32448 () Bool)

(assert (=> b!559738 (= e!322481 call!32448)))

(declare-fun bm!32445 () Bool)

(assert (=> bm!32445 (= call!32448 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!559739 () Bool)

(assert (=> b!559739 (= e!322480 call!32448)))

(declare-fun b!559740 () Bool)

(assert (=> b!559740 (= e!322479 e!322480)))

(declare-fun c!64671 () Bool)

(assert (=> b!559740 (= c!64671 (validKeyInArray!0 (select (arr!16876 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83729 (not res!351087)) b!559740))

(assert (= (and b!559740 c!64671) b!559737))

(assert (= (and b!559740 (not c!64671)) b!559739))

(assert (= (and b!559737 res!351086) b!559738))

(assert (= (or b!559738 b!559739) bm!32445))

(assert (=> b!559737 m!537421))

(declare-fun m!537533 () Bool)

(assert (=> b!559737 m!537533))

(declare-fun m!537535 () Bool)

(assert (=> b!559737 m!537535))

(assert (=> b!559737 m!537421))

(declare-fun m!537537 () Bool)

(assert (=> b!559737 m!537537))

(declare-fun m!537539 () Bool)

(assert (=> bm!32445 m!537539))

(assert (=> b!559740 m!537421))

(assert (=> b!559740 m!537421))

(assert (=> b!559740 m!537425))

(assert (=> b!559426 d!83729))

(declare-fun d!83731 () Bool)

(declare-fun res!351092 () Bool)

(declare-fun e!322486 () Bool)

(assert (=> d!83731 (=> res!351092 e!322486)))

(assert (=> d!83731 (= res!351092 (= (select (arr!16876 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!83731 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!322486)))

(declare-fun b!559745 () Bool)

(declare-fun e!322487 () Bool)

(assert (=> b!559745 (= e!322486 e!322487)))

(declare-fun res!351093 () Bool)

(assert (=> b!559745 (=> (not res!351093) (not e!322487))))

(assert (=> b!559745 (= res!351093 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17240 a!3118)))))

(declare-fun b!559746 () Bool)

(assert (=> b!559746 (= e!322487 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83731 (not res!351092)) b!559745))

(assert (= (and b!559745 res!351093) b!559746))

(assert (=> d!83731 m!537421))

(declare-fun m!537541 () Bool)

(assert (=> b!559746 m!537541))

(assert (=> b!559436 d!83731))

(check-sat (not b!559660) (not b!559526) (not d!83667) (not b!559529) (not b!559622) (not bm!32445) (not b!559740) (not bm!32441) (not d!83687) (not d!83699) (not d!83681) (not b!559737) (not b!559613) (not bm!32435) (not d!83719) (not b!559565) (not b!559486) (not b!559567) (not d!83717) (not b!559731) (not b!559564) (not b!559746))
(check-sat)
