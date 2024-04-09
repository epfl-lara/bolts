; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51846 () Bool)

(assert start!51846)

(declare-fun b!566627 () Bool)

(declare-fun res!357549 () Bool)

(declare-fun e!326098 () Bool)

(assert (=> b!566627 (=> (not res!357549) (not e!326098))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566627 (= res!357549 (validKeyInArray!0 k!1914))))

(declare-fun b!566628 () Bool)

(declare-fun res!357551 () Bool)

(assert (=> b!566628 (=> (not res!357551) (not e!326098))))

(declare-datatypes ((array!35551 0))(
  ( (array!35552 (arr!17069 (Array (_ BitVec 32) (_ BitVec 64))) (size!17433 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35551)

(declare-fun arrayContainsKey!0 (array!35551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566628 (= res!357551 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!566629 () Bool)

(declare-fun res!357547 () Bool)

(declare-fun e!326095 () Bool)

(assert (=> b!566629 (=> (not res!357547) (not e!326095))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35551 (_ BitVec 32)) Bool)

(assert (=> b!566629 (= res!357547 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566630 () Bool)

(declare-fun res!357554 () Bool)

(assert (=> b!566630 (=> (not res!357554) (not e!326095))))

(declare-datatypes ((List!11202 0))(
  ( (Nil!11199) (Cons!11198 (h!12207 (_ BitVec 64)) (t!17438 List!11202)) )
))
(declare-fun arrayNoDuplicates!0 (array!35551 (_ BitVec 32) List!11202) Bool)

(assert (=> b!566630 (= res!357554 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11199))))

(declare-fun b!566631 () Bool)

(declare-fun res!357545 () Bool)

(assert (=> b!566631 (=> (not res!357545) (not e!326098))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566631 (= res!357545 (and (= (size!17433 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17433 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17433 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!566633 () Bool)

(declare-fun e!326096 () Bool)

(assert (=> b!566633 (= e!326095 e!326096)))

(declare-fun res!357550 () Bool)

(assert (=> b!566633 (=> (not res!357550) (not e!326096))))

(declare-fun lt!258281 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5525 0))(
  ( (MissingZero!5525 (index!24327 (_ BitVec 32))) (Found!5525 (index!24328 (_ BitVec 32))) (Intermediate!5525 (undefined!6337 Bool) (index!24329 (_ BitVec 32)) (x!53219 (_ BitVec 32))) (Undefined!5525) (MissingVacant!5525 (index!24330 (_ BitVec 32))) )
))
(declare-fun lt!258283 () SeekEntryResult!5525)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35551 (_ BitVec 32)) SeekEntryResult!5525)

(assert (=> b!566633 (= res!357550 (= lt!258283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258281 (select (store (arr!17069 a!3118) i!1132 k!1914) j!142) (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118)) mask!3119)))))

(declare-fun lt!258280 () (_ BitVec 32))

(assert (=> b!566633 (= lt!258283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258280 (select (arr!17069 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566633 (= lt!258281 (toIndex!0 (select (store (arr!17069 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!566633 (= lt!258280 (toIndex!0 (select (arr!17069 a!3118) j!142) mask!3119))))

(declare-fun b!566634 () Bool)

(declare-fun res!357546 () Bool)

(assert (=> b!566634 (=> (not res!357546) (not e!326098))))

(assert (=> b!566634 (= res!357546 (validKeyInArray!0 (select (arr!17069 a!3118) j!142)))))

(declare-fun b!566635 () Bool)

(assert (=> b!566635 (= e!326098 e!326095)))

(declare-fun res!357548 () Bool)

(assert (=> b!566635 (=> (not res!357548) (not e!326095))))

(declare-fun lt!258284 () SeekEntryResult!5525)

(assert (=> b!566635 (= res!357548 (or (= lt!258284 (MissingZero!5525 i!1132)) (= lt!258284 (MissingVacant!5525 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35551 (_ BitVec 32)) SeekEntryResult!5525)

(assert (=> b!566635 (= lt!258284 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!566636 () Bool)

(assert (=> b!566636 (= e!326096 (not (or (not (is-Intermediate!5525 lt!258283)) (undefined!6337 lt!258283) (and (bvsge (index!24329 lt!258283) #b00000000000000000000000000000000) (bvslt (index!24329 lt!258283) (size!17433 a!3118))))))))

(declare-fun e!326094 () Bool)

(assert (=> b!566636 e!326094))

(declare-fun res!357553 () Bool)

(assert (=> b!566636 (=> (not res!357553) (not e!326094))))

(assert (=> b!566636 (= res!357553 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17752 0))(
  ( (Unit!17753) )
))
(declare-fun lt!258282 () Unit!17752)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35551 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17752)

(assert (=> b!566636 (= lt!258282 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566632 () Bool)

(assert (=> b!566632 (= e!326094 (= (seekEntryOrOpen!0 (select (arr!17069 a!3118) j!142) a!3118 mask!3119) (Found!5525 j!142)))))

(declare-fun res!357552 () Bool)

(assert (=> start!51846 (=> (not res!357552) (not e!326098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51846 (= res!357552 (validMask!0 mask!3119))))

(assert (=> start!51846 e!326098))

(assert (=> start!51846 true))

(declare-fun array_inv!12843 (array!35551) Bool)

(assert (=> start!51846 (array_inv!12843 a!3118)))

(assert (= (and start!51846 res!357552) b!566631))

(assert (= (and b!566631 res!357545) b!566634))

(assert (= (and b!566634 res!357546) b!566627))

(assert (= (and b!566627 res!357549) b!566628))

(assert (= (and b!566628 res!357551) b!566635))

(assert (= (and b!566635 res!357548) b!566629))

(assert (= (and b!566629 res!357547) b!566630))

(assert (= (and b!566630 res!357554) b!566633))

(assert (= (and b!566633 res!357550) b!566636))

(assert (= (and b!566636 res!357553) b!566632))

(declare-fun m!545275 () Bool)

(assert (=> b!566627 m!545275))

(declare-fun m!545277 () Bool)

(assert (=> b!566634 m!545277))

(assert (=> b!566634 m!545277))

(declare-fun m!545279 () Bool)

(assert (=> b!566634 m!545279))

(assert (=> b!566633 m!545277))

(declare-fun m!545281 () Bool)

(assert (=> b!566633 m!545281))

(assert (=> b!566633 m!545277))

(declare-fun m!545283 () Bool)

(assert (=> b!566633 m!545283))

(declare-fun m!545285 () Bool)

(assert (=> b!566633 m!545285))

(assert (=> b!566633 m!545283))

(declare-fun m!545287 () Bool)

(assert (=> b!566633 m!545287))

(assert (=> b!566633 m!545277))

(declare-fun m!545289 () Bool)

(assert (=> b!566633 m!545289))

(assert (=> b!566633 m!545283))

(declare-fun m!545291 () Bool)

(assert (=> b!566633 m!545291))

(declare-fun m!545293 () Bool)

(assert (=> b!566629 m!545293))

(declare-fun m!545295 () Bool)

(assert (=> b!566635 m!545295))

(assert (=> b!566632 m!545277))

(assert (=> b!566632 m!545277))

(declare-fun m!545297 () Bool)

(assert (=> b!566632 m!545297))

(declare-fun m!545299 () Bool)

(assert (=> b!566630 m!545299))

(declare-fun m!545301 () Bool)

(assert (=> b!566636 m!545301))

(declare-fun m!545303 () Bool)

(assert (=> b!566636 m!545303))

(declare-fun m!545305 () Bool)

(assert (=> start!51846 m!545305))

(declare-fun m!545307 () Bool)

(assert (=> start!51846 m!545307))

(declare-fun m!545309 () Bool)

(assert (=> b!566628 m!545309))

(push 1)

(assert (not start!51846))

(assert (not b!566628))

(assert (not b!566627))

(assert (not b!566629))

(assert (not b!566633))

(assert (not b!566632))

(assert (not b!566634))

(assert (not b!566630))

(assert (not b!566635))

(assert (not b!566636))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!566651 () Bool)

(declare-fun e!326113 () Bool)

(declare-fun call!32498 () Bool)

(assert (=> b!566651 (= e!326113 call!32498)))

(declare-fun bm!32495 () Bool)

(assert (=> bm!32495 (= call!32498 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!566652 () Bool)

(declare-fun e!326111 () Bool)

(declare-fun e!326112 () Bool)

(assert (=> b!566652 (= e!326111 e!326112)))

(declare-fun c!64892 () Bool)

(assert (=> b!566652 (= c!64892 (validKeyInArray!0 (select (arr!17069 a!3118) j!142)))))

(declare-fun b!566653 () Bool)

(assert (=> b!566653 (= e!326112 e!326113)))

(declare-fun lt!258296 () (_ BitVec 64))

(assert (=> b!566653 (= lt!258296 (select (arr!17069 a!3118) j!142))))

(declare-fun lt!258297 () Unit!17752)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35551 (_ BitVec 64) (_ BitVec 32)) Unit!17752)

(assert (=> b!566653 (= lt!258297 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258296 j!142))))

(assert (=> b!566653 (arrayContainsKey!0 a!3118 lt!258296 #b00000000000000000000000000000000)))

(declare-fun lt!258295 () Unit!17752)

(assert (=> b!566653 (= lt!258295 lt!258297)))

(declare-fun res!357566 () Bool)

(assert (=> b!566653 (= res!357566 (= (seekEntryOrOpen!0 (select (arr!17069 a!3118) j!142) a!3118 mask!3119) (Found!5525 j!142)))))

(assert (=> b!566653 (=> (not res!357566) (not e!326113))))

(declare-fun d!84085 () Bool)

(declare-fun res!357565 () Bool)

(assert (=> d!84085 (=> res!357565 e!326111)))

(assert (=> d!84085 (= res!357565 (bvsge j!142 (size!17433 a!3118)))))

(assert (=> d!84085 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!326111)))

(declare-fun b!566654 () Bool)

(assert (=> b!566654 (= e!326112 call!32498)))

(assert (= (and d!84085 (not res!357565)) b!566652))

(assert (= (and b!566652 c!64892) b!566653))

(assert (= (and b!566652 (not c!64892)) b!566654))

(assert (= (and b!566653 res!357566) b!566651))

(assert (= (or b!566651 b!566654) bm!32495))

(declare-fun m!545315 () Bool)

(assert (=> bm!32495 m!545315))

(assert (=> b!566652 m!545277))

(assert (=> b!566652 m!545277))

(assert (=> b!566652 m!545279))

(assert (=> b!566653 m!545277))

(declare-fun m!545317 () Bool)

(assert (=> b!566653 m!545317))

(declare-fun m!545319 () Bool)

(assert (=> b!566653 m!545319))

(assert (=> b!566653 m!545277))

(assert (=> b!566653 m!545297))

(assert (=> b!566636 d!84085))

(declare-fun d!84087 () Bool)

(assert (=> d!84087 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!258306 () Unit!17752)

(declare-fun choose!38 (array!35551 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17752)

(assert (=> d!84087 (= lt!258306 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!84087 (validMask!0 mask!3119)))

(assert (=> d!84087 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!258306)))

(declare-fun bs!17598 () Bool)

(assert (= bs!17598 d!84087))

(assert (=> bs!17598 m!545301))

(declare-fun m!545321 () Bool)

(assert (=> bs!17598 m!545321))

(assert (=> bs!17598 m!545305))

(assert (=> b!566636 d!84087))

(declare-fun d!84089 () Bool)

(assert (=> d!84089 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51846 d!84089))

(declare-fun d!84095 () Bool)

(assert (=> d!84095 (= (array_inv!12843 a!3118) (bvsge (size!17433 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51846 d!84095))

(declare-fun b!566747 () Bool)

(declare-fun e!326170 () SeekEntryResult!5525)

(declare-fun e!326169 () SeekEntryResult!5525)

(assert (=> b!566747 (= e!326170 e!326169)))

(declare-fun lt!258345 () (_ BitVec 64))

(declare-fun lt!258344 () SeekEntryResult!5525)

(assert (=> b!566747 (= lt!258345 (select (arr!17069 a!3118) (index!24329 lt!258344)))))

(declare-fun c!64928 () Bool)

(assert (=> b!566747 (= c!64928 (= lt!258345 (select (arr!17069 a!3118) j!142)))))

(declare-fun b!566748 () Bool)

(assert (=> b!566748 (= e!326169 (Found!5525 (index!24329 lt!258344)))))

(declare-fun e!326171 () SeekEntryResult!5525)

(declare-fun b!566749 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35551 (_ BitVec 32)) SeekEntryResult!5525)

(assert (=> b!566749 (= e!326171 (seekKeyOrZeroReturnVacant!0 (x!53219 lt!258344) (index!24329 lt!258344) (index!24329 lt!258344) (select (arr!17069 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!566750 () Bool)

(assert (=> b!566750 (= e!326170 Undefined!5525)))

(declare-fun b!566751 () Bool)

(assert (=> b!566751 (= e!326171 (MissingZero!5525 (index!24329 lt!258344)))))

(declare-fun b!566752 () Bool)

(declare-fun c!64926 () Bool)

(assert (=> b!566752 (= c!64926 (= lt!258345 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566752 (= e!326169 e!326171)))

(declare-fun d!84097 () Bool)

(declare-fun lt!258343 () SeekEntryResult!5525)

(assert (=> d!84097 (and (or (is-Undefined!5525 lt!258343) (not (is-Found!5525 lt!258343)) (and (bvsge (index!24328 lt!258343) #b00000000000000000000000000000000) (bvslt (index!24328 lt!258343) (size!17433 a!3118)))) (or (is-Undefined!5525 lt!258343) (is-Found!5525 lt!258343) (not (is-MissingZero!5525 lt!258343)) (and (bvsge (index!24327 lt!258343) #b00000000000000000000000000000000) (bvslt (index!24327 lt!258343) (size!17433 a!3118)))) (or (is-Undefined!5525 lt!258343) (is-Found!5525 lt!258343) (is-MissingZero!5525 lt!258343) (not (is-MissingVacant!5525 lt!258343)) (and (bvsge (index!24330 lt!258343) #b00000000000000000000000000000000) (bvslt (index!24330 lt!258343) (size!17433 a!3118)))) (or (is-Undefined!5525 lt!258343) (ite (is-Found!5525 lt!258343) (= (select (arr!17069 a!3118) (index!24328 lt!258343)) (select (arr!17069 a!3118) j!142)) (ite (is-MissingZero!5525 lt!258343) (= (select (arr!17069 a!3118) (index!24327 lt!258343)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5525 lt!258343) (= (select (arr!17069 a!3118) (index!24330 lt!258343)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84097 (= lt!258343 e!326170)))

(declare-fun c!64927 () Bool)

(assert (=> d!84097 (= c!64927 (and (is-Intermediate!5525 lt!258344) (undefined!6337 lt!258344)))))

(assert (=> d!84097 (= lt!258344 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17069 a!3118) j!142) mask!3119) (select (arr!17069 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!84097 (validMask!0 mask!3119)))

(assert (=> d!84097 (= (seekEntryOrOpen!0 (select (arr!17069 a!3118) j!142) a!3118 mask!3119) lt!258343)))

(assert (= (and d!84097 c!64927) b!566750))

(assert (= (and d!84097 (not c!64927)) b!566747))

(assert (= (and b!566747 c!64928) b!566748))

(assert (= (and b!566747 (not c!64928)) b!566752))

(assert (= (and b!566752 c!64926) b!566751))

(assert (= (and b!566752 (not c!64926)) b!566749))

(declare-fun m!545371 () Bool)

(assert (=> b!566747 m!545371))

(assert (=> b!566749 m!545277))

(declare-fun m!545373 () Bool)

(assert (=> b!566749 m!545373))

(assert (=> d!84097 m!545281))

(assert (=> d!84097 m!545277))

(declare-fun m!545375 () Bool)

(assert (=> d!84097 m!545375))

(declare-fun m!545377 () Bool)

(assert (=> d!84097 m!545377))

(declare-fun m!545379 () Bool)

(assert (=> d!84097 m!545379))

(assert (=> d!84097 m!545277))

(assert (=> d!84097 m!545281))

(assert (=> d!84097 m!545305))

(declare-fun m!545381 () Bool)

(assert (=> d!84097 m!545381))

(assert (=> b!566632 d!84097))

(declare-fun d!84115 () Bool)

(assert (=> d!84115 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566627 d!84115))

(declare-fun d!84117 () Bool)

(declare-fun res!357601 () Bool)

(declare-fun e!326180 () Bool)

(assert (=> d!84117 (=> res!357601 e!326180)))

(assert (=> d!84117 (= res!357601 (= (select (arr!17069 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!84117 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!326180)))

(declare-fun b!566762 () Bool)

(declare-fun e!326181 () Bool)

(assert (=> b!566762 (= e!326180 e!326181)))

(declare-fun res!357602 () Bool)

(assert (=> b!566762 (=> (not res!357602) (not e!326181))))

(assert (=> b!566762 (= res!357602 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17433 a!3118)))))

(declare-fun b!566763 () Bool)

(assert (=> b!566763 (= e!326181 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!84117 (not res!357601)) b!566762))

(assert (= (and b!566762 res!357602) b!566763))

(declare-fun m!545387 () Bool)

(assert (=> d!84117 m!545387))

(declare-fun m!545389 () Bool)

(assert (=> b!566763 m!545389))

(assert (=> b!566628 d!84117))

(declare-fun lt!258369 () SeekEntryResult!5525)

(declare-fun b!566804 () Bool)

(assert (=> b!566804 (and (bvsge (index!24329 lt!258369) #b00000000000000000000000000000000) (bvslt (index!24329 lt!258369) (size!17433 (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118)))))))

(declare-fun res!357617 () Bool)

(assert (=> b!566804 (= res!357617 (= (select (arr!17069 (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118))) (index!24329 lt!258369)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326208 () Bool)

(assert (=> b!566804 (=> res!357617 e!326208)))

(declare-fun b!566805 () Bool)

(declare-fun e!326209 () Bool)

(declare-fun e!326211 () Bool)

(assert (=> b!566805 (= e!326209 e!326211)))

(declare-fun res!357618 () Bool)

(assert (=> b!566805 (= res!357618 (and (is-Intermediate!5525 lt!258369) (not (undefined!6337 lt!258369)) (bvslt (x!53219 lt!258369) #b01111111111111111111111111111110) (bvsge (x!53219 lt!258369) #b00000000000000000000000000000000) (bvsge (x!53219 lt!258369) #b00000000000000000000000000000000)))))

(assert (=> b!566805 (=> (not res!357618) (not e!326211))))

(declare-fun d!84121 () Bool)

(assert (=> d!84121 e!326209))

(declare-fun c!64945 () Bool)

(assert (=> d!84121 (= c!64945 (and (is-Intermediate!5525 lt!258369) (undefined!6337 lt!258369)))))

(declare-fun e!326210 () SeekEntryResult!5525)

(assert (=> d!84121 (= lt!258369 e!326210)))

(declare-fun c!64943 () Bool)

(assert (=> d!84121 (= c!64943 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258368 () (_ BitVec 64))

(assert (=> d!84121 (= lt!258368 (select (arr!17069 (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118))) lt!258281))))

(assert (=> d!84121 (validMask!0 mask!3119)))

(assert (=> d!84121 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258281 (select (store (arr!17069 a!3118) i!1132 k!1914) j!142) (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118)) mask!3119) lt!258369)))

(declare-fun e!326207 () SeekEntryResult!5525)

(declare-fun b!566806 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566806 (= e!326207 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258281 #b00000000000000000000000000000000 mask!3119) (select (store (arr!17069 a!3118) i!1132 k!1914) j!142) (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118)) mask!3119))))

(declare-fun b!566807 () Bool)

(assert (=> b!566807 (= e!326207 (Intermediate!5525 false lt!258281 #b00000000000000000000000000000000))))

(declare-fun b!566808 () Bool)

(assert (=> b!566808 (= e!326210 (Intermediate!5525 true lt!258281 #b00000000000000000000000000000000))))

(declare-fun b!566809 () Bool)

(assert (=> b!566809 (= e!326210 e!326207)))

(declare-fun c!64944 () Bool)

(assert (=> b!566809 (= c!64944 (or (= lt!258368 (select (store (arr!17069 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!258368 lt!258368) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566810 () Bool)

(assert (=> b!566810 (and (bvsge (index!24329 lt!258369) #b00000000000000000000000000000000) (bvslt (index!24329 lt!258369) (size!17433 (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118)))))))

(assert (=> b!566810 (= e!326208 (= (select (arr!17069 (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118))) (index!24329 lt!258369)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!566811 () Bool)

(assert (=> b!566811 (and (bvsge (index!24329 lt!258369) #b00000000000000000000000000000000) (bvslt (index!24329 lt!258369) (size!17433 (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118)))))))

(declare-fun res!357619 () Bool)

(assert (=> b!566811 (= res!357619 (= (select (arr!17069 (array!35552 (store (arr!17069 a!3118) i!1132 k!1914) (size!17433 a!3118))) (index!24329 lt!258369)) (select (store (arr!17069 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!566811 (=> res!357619 e!326208)))

(assert (=> b!566811 (= e!326211 e!326208)))

(declare-fun b!566812 () Bool)

(assert (=> b!566812 (= e!326209 (bvsge (x!53219 lt!258369) #b01111111111111111111111111111110))))

(assert (= (and d!84121 c!64943) b!566808))

(assert (= (and d!84121 (not c!64943)) b!566809))

(assert (= (and b!566809 c!64944) b!566807))

(assert (= (and b!566809 (not c!64944)) b!566806))

(assert (= (and d!84121 c!64945) b!566812))

(assert (= (and d!84121 (not c!64945)) b!566805))

(assert (= (and b!566805 res!357618) b!566811))

(assert (= (and b!566811 (not res!357619)) b!566804))

(assert (= (and b!566804 (not res!357617)) b!566810))

(declare-fun m!545423 () Bool)

(assert (=> b!566810 m!545423))

(declare-fun m!545425 () Bool)

(assert (=> d!84121 m!545425))

(assert (=> d!84121 m!545305))

(assert (=> b!566804 m!545423))

(assert (=> b!566811 m!545423))

(declare-fun m!545427 () Bool)

(assert (=> b!566806 m!545427))

(assert (=> b!566806 m!545427))

(assert (=> b!566806 m!545283))

(declare-fun m!545429 () Bool)

(assert (=> b!566806 m!545429))

(assert (=> b!566633 d!84121))

(declare-fun b!566813 () Bool)

(declare-fun lt!258371 () SeekEntryResult!5525)

(assert (=> b!566813 (and (bvsge (index!24329 lt!258371) #b00000000000000000000000000000000) (bvslt (index!24329 lt!258371) (size!17433 a!3118)))))

(declare-fun res!357620 () Bool)

(assert (=> b!566813 (= res!357620 (= (select (arr!17069 a!3118) (index!24329 lt!258371)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!326213 () Bool)

(assert (=> b!566813 (=> res!357620 e!326213)))

(declare-fun b!566814 () Bool)

(declare-fun e!326214 () Bool)

(declare-fun e!326216 () Bool)

(assert (=> b!566814 (= e!326214 e!326216)))

(declare-fun res!357621 () Bool)

(assert (=> b!566814 (= res!357621 (and (is-Intermediate!5525 lt!258371) (not (undefined!6337 lt!258371)) (bvslt (x!53219 lt!258371) #b01111111111111111111111111111110) (bvsge (x!53219 lt!258371) #b00000000000000000000000000000000) (bvsge (x!53219 lt!258371) #b00000000000000000000000000000000)))))

(assert (=> b!566814 (=> (not res!357621) (not e!326216))))

(declare-fun d!84137 () Bool)

(assert (=> d!84137 e!326214))

(declare-fun c!64948 () Bool)

(assert (=> d!84137 (= c!64948 (and (is-Intermediate!5525 lt!258371) (undefined!6337 lt!258371)))))

(declare-fun e!326215 () SeekEntryResult!5525)

(assert (=> d!84137 (= lt!258371 e!326215)))

(declare-fun c!64946 () Bool)

(assert (=> d!84137 (= c!64946 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!258370 () (_ BitVec 64))

(assert (=> d!84137 (= lt!258370 (select (arr!17069 a!3118) lt!258280))))

(assert (=> d!84137 (validMask!0 mask!3119)))

(assert (=> d!84137 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!258280 (select (arr!17069 a!3118) j!142) a!3118 mask!3119) lt!258371)))

(declare-fun b!566815 () Bool)

(declare-fun e!326212 () SeekEntryResult!5525)

(assert (=> b!566815 (= e!326212 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!258280 #b00000000000000000000000000000000 mask!3119) (select (arr!17069 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!566816 () Bool)

(assert (=> b!566816 (= e!326212 (Intermediate!5525 false lt!258280 #b00000000000000000000000000000000))))

(declare-fun b!566817 () Bool)

(assert (=> b!566817 (= e!326215 (Intermediate!5525 true lt!258280 #b00000000000000000000000000000000))))

(declare-fun b!566818 () Bool)

(assert (=> b!566818 (= e!326215 e!326212)))

(declare-fun c!64947 () Bool)

(assert (=> b!566818 (= c!64947 (or (= lt!258370 (select (arr!17069 a!3118) j!142)) (= (bvadd lt!258370 lt!258370) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!566819 () Bool)

(assert (=> b!566819 (and (bvsge (index!24329 lt!258371) #b00000000000000000000000000000000) (bvslt (index!24329 lt!258371) (size!17433 a!3118)))))

(assert (=> b!566819 (= e!326213 (= (select (arr!17069 a!3118) (index!24329 lt!258371)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!566820 () Bool)

(assert (=> b!566820 (and (bvsge (index!24329 lt!258371) #b00000000000000000000000000000000) (bvslt (index!24329 lt!258371) (size!17433 a!3118)))))

(declare-fun res!357622 () Bool)

(assert (=> b!566820 (= res!357622 (= (select (arr!17069 a!3118) (index!24329 lt!258371)) (select (arr!17069 a!3118) j!142)))))

(assert (=> b!566820 (=> res!357622 e!326213)))

(assert (=> b!566820 (= e!326216 e!326213)))

(declare-fun b!566821 () Bool)

(assert (=> b!566821 (= e!326214 (bvsge (x!53219 lt!258371) #b01111111111111111111111111111110))))

(assert (= (and d!84137 c!64946) b!566817))

(assert (= (and d!84137 (not c!64946)) b!566818))

(assert (= (and b!566818 c!64947) b!566816))

(assert (= (and b!566818 (not c!64947)) b!566815))

(assert (= (and d!84137 c!64948) b!566821))

(assert (= (and d!84137 (not c!64948)) b!566814))

(assert (= (and b!566814 res!357621) b!566820))

(assert (= (and b!566820 (not res!357622)) b!566813))

(assert (= (and b!566813 (not res!357620)) b!566819))

(declare-fun m!545431 () Bool)

(assert (=> b!566819 m!545431))

(declare-fun m!545433 () Bool)

(assert (=> d!84137 m!545433))

(assert (=> d!84137 m!545305))

(assert (=> b!566813 m!545431))

(assert (=> b!566820 m!545431))

(declare-fun m!545435 () Bool)

(assert (=> b!566815 m!545435))

(assert (=> b!566815 m!545435))

(assert (=> b!566815 m!545277))

(declare-fun m!545437 () Bool)

(assert (=> b!566815 m!545437))

(assert (=> b!566633 d!84137))

(declare-fun d!84139 () Bool)

(declare-fun lt!258377 () (_ BitVec 32))

(declare-fun lt!258376 () (_ BitVec 32))

(assert (=> d!84139 (= lt!258377 (bvmul (bvxor lt!258376 (bvlshr lt!258376 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84139 (= lt!258376 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17069 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17069 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84139 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357623 (let ((h!12209 ((_ extract 31 0) (bvand (bvxor (select (store (arr!17069 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!17069 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53223 (bvmul (bvxor h!12209 (bvlshr h!12209 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53223 (bvlshr x!53223 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357623 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357623 #b00000000000000000000000000000000))))))

(assert (=> d!84139 (= (toIndex!0 (select (store (arr!17069 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!258377 (bvlshr lt!258377 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566633 d!84139))

(declare-fun d!84141 () Bool)

(declare-fun lt!258379 () (_ BitVec 32))

(declare-fun lt!258378 () (_ BitVec 32))

(assert (=> d!84141 (= lt!258379 (bvmul (bvxor lt!258378 (bvlshr lt!258378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!84141 (= lt!258378 ((_ extract 31 0) (bvand (bvxor (select (arr!17069 a!3118) j!142) (bvlshr (select (arr!17069 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!84141 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!357623 (let ((h!12209 ((_ extract 31 0) (bvand (bvxor (select (arr!17069 a!3118) j!142) (bvlshr (select (arr!17069 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!53223 (bvmul (bvxor h!12209 (bvlshr h!12209 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!53223 (bvlshr x!53223 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!357623 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!357623 #b00000000000000000000000000000000))))))

(assert (=> d!84141 (= (toIndex!0 (select (arr!17069 a!3118) j!142) mask!3119) (bvand (bvxor lt!258379 (bvlshr lt!258379 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!566633 d!84141))

(declare-fun d!84143 () Bool)

(assert (=> d!84143 (= (validKeyInArray!0 (select (arr!17069 a!3118) j!142)) (and (not (= (select (arr!17069 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17069 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!566634 d!84143))

(declare-fun b!566832 () Bool)

(declare-fun e!326227 () Bool)

(declare-fun call!32512 () Bool)

(assert (=> b!566832 (= e!326227 call!32512)))

(declare-fun bm!32509 () Bool)

(assert (=> bm!32509 (= call!32512 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!566833 () Bool)

(declare-fun e!326225 () Bool)

(declare-fun e!326226 () Bool)

(assert (=> b!566833 (= e!326225 e!326226)))

(declare-fun c!64951 () Bool)

(assert (=> b!566833 (= c!64951 (validKeyInArray!0 (select (arr!17069 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566834 () Bool)

(assert (=> b!566834 (= e!326226 e!326227)))

(declare-fun lt!258381 () (_ BitVec 64))

(assert (=> b!566834 (= lt!258381 (select (arr!17069 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!258382 () Unit!17752)

(assert (=> b!566834 (= lt!258382 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!258381 #b00000000000000000000000000000000))))

(assert (=> b!566834 (arrayContainsKey!0 a!3118 lt!258381 #b00000000000000000000000000000000)))

(declare-fun lt!258380 () Unit!17752)

(assert (=> b!566834 (= lt!258380 lt!258382)))

(declare-fun res!357631 () Bool)

(assert (=> b!566834 (= res!357631 (= (seekEntryOrOpen!0 (select (arr!17069 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5525 #b00000000000000000000000000000000)))))

(assert (=> b!566834 (=> (not res!357631) (not e!326227))))

(declare-fun d!84145 () Bool)

(declare-fun res!357630 () Bool)

(assert (=> d!84145 (=> res!357630 e!326225)))

(assert (=> d!84145 (= res!357630 (bvsge #b00000000000000000000000000000000 (size!17433 a!3118)))))

(assert (=> d!84145 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!326225)))

(declare-fun b!566835 () Bool)

(assert (=> b!566835 (= e!326226 call!32512)))

(assert (= (and d!84145 (not res!357630)) b!566833))

(assert (= (and b!566833 c!64951) b!566834))

(assert (= (and b!566833 (not c!64951)) b!566835))

(assert (= (and b!566834 res!357631) b!566832))

(assert (= (or b!566832 b!566835) bm!32509))

(declare-fun m!545439 () Bool)

(assert (=> bm!32509 m!545439))

(assert (=> b!566833 m!545387))

(assert (=> b!566833 m!545387))

(declare-fun m!545441 () Bool)

(assert (=> b!566833 m!545441))

(assert (=> b!566834 m!545387))

(declare-fun m!545443 () Bool)

(assert (=> b!566834 m!545443))

(declare-fun m!545445 () Bool)

(assert (=> b!566834 m!545445))

(assert (=> b!566834 m!545387))

(declare-fun m!545447 () Bool)

(assert (=> b!566834 m!545447))

(assert (=> b!566629 d!84145))

(declare-fun b!566851 () Bool)

(declare-fun e!326243 () Bool)

(declare-fun call!32516 () Bool)

(assert (=> b!566851 (= e!326243 call!32516)))

(declare-fun b!566852 () Bool)

(declare-fun e!326241 () Bool)

(declare-fun e!326240 () Bool)

(assert (=> b!566852 (= e!326241 e!326240)))

(declare-fun res!357643 () Bool)

(assert (=> b!566852 (=> (not res!357643) (not e!326240))))

(declare-fun e!326242 () Bool)

(assert (=> b!566852 (= res!357643 (not e!326242))))

(declare-fun res!357641 () Bool)

(assert (=> b!566852 (=> (not res!357641) (not e!326242))))

(assert (=> b!566852 (= res!357641 (validKeyInArray!0 (select (arr!17069 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566853 () Bool)

(declare-fun contains!2873 (List!11202 (_ BitVec 64)) Bool)

(assert (=> b!566853 (= e!326242 (contains!2873 Nil!11199 (select (arr!17069 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!566854 () Bool)

(assert (=> b!566854 (= e!326243 call!32516)))

(declare-fun d!84147 () Bool)

(declare-fun res!357642 () Bool)

(assert (=> d!84147 (=> res!357642 e!326241)))

(assert (=> d!84147 (= res!357642 (bvsge #b00000000000000000000000000000000 (size!17433 a!3118)))))

(assert (=> d!84147 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11199) e!326241)))

(declare-fun bm!32513 () Bool)

(declare-fun c!64955 () Bool)

(assert (=> bm!32513 (= call!32516 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64955 (Cons!11198 (select (arr!17069 a!3118) #b00000000000000000000000000000000) Nil!11199) Nil!11199)))))

(declare-fun b!566855 () Bool)

(assert (=> b!566855 (= e!326240 e!326243)))

(assert (=> b!566855 (= c!64955 (validKeyInArray!0 (select (arr!17069 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!84147 (not res!357642)) b!566852))

(assert (= (and b!566852 res!357641) b!566853))

(assert (= (and b!566852 res!357643) b!566855))

(assert (= (and b!566855 c!64955) b!566854))

(assert (= (and b!566855 (not c!64955)) b!566851))

(assert (= (or b!566854 b!566851) bm!32513))

(assert (=> b!566852 m!545387))

(assert (=> b!566852 m!545387))

(assert (=> b!566852 m!545441))

(assert (=> b!566853 m!545387))

(assert (=> b!566853 m!545387))

(declare-fun m!545453 () Bool)

(assert (=> b!566853 m!545453))

(assert (=> bm!32513 m!545387))

(declare-fun m!545455 () Bool)

(assert (=> bm!32513 m!545455))

(assert (=> b!566855 m!545387))

(assert (=> b!566855 m!545387))

(assert (=> b!566855 m!545441))

(assert (=> b!566630 d!84147))

(declare-fun b!566856 () Bool)

(declare-fun e!326245 () SeekEntryResult!5525)

(declare-fun e!326244 () SeekEntryResult!5525)

(assert (=> b!566856 (= e!326245 e!326244)))

(declare-fun lt!258385 () (_ BitVec 64))

(declare-fun lt!258384 () SeekEntryResult!5525)

(assert (=> b!566856 (= lt!258385 (select (arr!17069 a!3118) (index!24329 lt!258384)))))

(declare-fun c!64958 () Bool)

(assert (=> b!566856 (= c!64958 (= lt!258385 k!1914))))

(declare-fun b!566857 () Bool)

(assert (=> b!566857 (= e!326244 (Found!5525 (index!24329 lt!258384)))))

(declare-fun b!566858 () Bool)

(declare-fun e!326246 () SeekEntryResult!5525)

(assert (=> b!566858 (= e!326246 (seekKeyOrZeroReturnVacant!0 (x!53219 lt!258384) (index!24329 lt!258384) (index!24329 lt!258384) k!1914 a!3118 mask!3119))))

(declare-fun b!566859 () Bool)

(assert (=> b!566859 (= e!326245 Undefined!5525)))

(declare-fun b!566860 () Bool)

(assert (=> b!566860 (= e!326246 (MissingZero!5525 (index!24329 lt!258384)))))

(declare-fun b!566861 () Bool)

(declare-fun c!64956 () Bool)

(assert (=> b!566861 (= c!64956 (= lt!258385 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!566861 (= e!326244 e!326246)))

(declare-fun d!84151 () Bool)

(declare-fun lt!258383 () SeekEntryResult!5525)

(assert (=> d!84151 (and (or (is-Undefined!5525 lt!258383) (not (is-Found!5525 lt!258383)) (and (bvsge (index!24328 lt!258383) #b00000000000000000000000000000000) (bvslt (index!24328 lt!258383) (size!17433 a!3118)))) (or (is-Undefined!5525 lt!258383) (is-Found!5525 lt!258383) (not (is-MissingZero!5525 lt!258383)) (and (bvsge (index!24327 lt!258383) #b00000000000000000000000000000000) (bvslt (index!24327 lt!258383) (size!17433 a!3118)))) (or (is-Undefined!5525 lt!258383) (is-Found!5525 lt!258383) (is-MissingZero!5525 lt!258383) (not (is-MissingVacant!5525 lt!258383)) (and (bvsge (index!24330 lt!258383) #b00000000000000000000000000000000) (bvslt (index!24330 lt!258383) (size!17433 a!3118)))) (or (is-Undefined!5525 lt!258383) (ite (is-Found!5525 lt!258383) (= (select (arr!17069 a!3118) (index!24328 lt!258383)) k!1914) (ite (is-MissingZero!5525 lt!258383) (= (select (arr!17069 a!3118) (index!24327 lt!258383)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5525 lt!258383) (= (select (arr!17069 a!3118) (index!24330 lt!258383)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!84151 (= lt!258383 e!326245)))

(declare-fun c!64957 () Bool)

(assert (=> d!84151 (= c!64957 (and (is-Intermediate!5525 lt!258384) (undefined!6337 lt!258384)))))

(assert (=> d!84151 (= lt!258384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!84151 (validMask!0 mask!3119)))

(assert (=> d!84151 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!258383)))

(assert (= (and d!84151 c!64957) b!566859))

(assert (= (and d!84151 (not c!64957)) b!566856))

(assert (= (and b!566856 c!64958) b!566857))

(assert (= (and b!566856 (not c!64958)) b!566861))

(assert (= (and b!566861 c!64956) b!566860))

(assert (= (and b!566861 (not c!64956)) b!566858))

(declare-fun m!545457 () Bool)

(assert (=> b!566856 m!545457))

(declare-fun m!545459 () Bool)

(assert (=> b!566858 m!545459))

(declare-fun m!545461 () Bool)

(assert (=> d!84151 m!545461))

(declare-fun m!545463 () Bool)

(assert (=> d!84151 m!545463))

(declare-fun m!545465 () Bool)

(assert (=> d!84151 m!545465))

(declare-fun m!545467 () Bool)

(assert (=> d!84151 m!545467))

(assert (=> d!84151 m!545461))

(assert (=> d!84151 m!545305))

(declare-fun m!545469 () Bool)

(assert (=> d!84151 m!545469))

(assert (=> b!566635 d!84151))

(push 1)

(assert (not b!566833))

(assert (not b!566815))

(assert (not bm!32509))

(assert (not b!566834))

(assert (not b!566855))

(assert (not b!566749))

(assert (not d!84097))

(assert (not b!566763))

(assert (not b!566858))

(assert (not b!566852))

(assert (not b!566853))

(assert (not b!566652))

(assert (not b!566653))

(assert (not d!84121))

(assert (not b!566806))

(assert (not d!84137))

(assert (not d!84087))

(assert (not bm!32513))

(assert (not bm!32495))

(assert (not d!84151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

