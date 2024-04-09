; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63756 () Bool)

(assert start!63756)

(declare-fun b!717203 () Bool)

(declare-fun e!402681 () Bool)

(declare-datatypes ((array!40605 0))(
  ( (array!40606 (arr!19432 (Array (_ BitVec 32) (_ BitVec 64))) (size!19853 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40605)

(assert (=> b!717203 (= e!402681 (and (bvsle #b00000000000000000000000000000000 (size!19853 a!3186)) (bvsge (size!19853 a!3186) #b01111111111111111111111111111111)))))

(declare-fun b!717204 () Bool)

(declare-fun e!402680 () Bool)

(assert (=> b!717204 (= e!402680 e!402681)))

(declare-fun res!480132 () Bool)

(assert (=> b!717204 (=> (not res!480132) (not e!402681))))

(declare-datatypes ((SeekEntryResult!7039 0))(
  ( (MissingZero!7039 (index!30523 (_ BitVec 32))) (Found!7039 (index!30524 (_ BitVec 32))) (Intermediate!7039 (undefined!7851 Bool) (index!30525 (_ BitVec 32)) (x!61572 (_ BitVec 32))) (Undefined!7039) (MissingVacant!7039 (index!30526 (_ BitVec 32))) )
))
(declare-fun lt!319004 () SeekEntryResult!7039)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717204 (= res!480132 (or (= lt!319004 (MissingZero!7039 i!1173)) (= lt!319004 (MissingVacant!7039 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40605 (_ BitVec 32)) SeekEntryResult!7039)

(assert (=> b!717204 (= lt!319004 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!717205 () Bool)

(declare-fun res!480134 () Bool)

(assert (=> b!717205 (=> (not res!480134) (not e!402680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717205 (= res!480134 (validKeyInArray!0 k0!2102))))

(declare-fun res!480131 () Bool)

(assert (=> start!63756 (=> (not res!480131) (not e!402680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63756 (= res!480131 (validMask!0 mask!3328))))

(assert (=> start!63756 e!402680))

(declare-fun array_inv!15206 (array!40605) Bool)

(assert (=> start!63756 (array_inv!15206 a!3186)))

(assert (=> start!63756 true))

(declare-fun b!717206 () Bool)

(declare-fun res!480135 () Bool)

(assert (=> b!717206 (=> (not res!480135) (not e!402681))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40605 (_ BitVec 32)) Bool)

(assert (=> b!717206 (= res!480135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717207 () Bool)

(declare-fun res!480130 () Bool)

(assert (=> b!717207 (=> (not res!480130) (not e!402680))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!717207 (= res!480130 (and (= (size!19853 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19853 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19853 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717208 () Bool)

(declare-fun res!480133 () Bool)

(assert (=> b!717208 (=> (not res!480133) (not e!402680))))

(assert (=> b!717208 (= res!480133 (validKeyInArray!0 (select (arr!19432 a!3186) j!159)))))

(declare-fun b!717209 () Bool)

(declare-fun res!480129 () Bool)

(assert (=> b!717209 (=> (not res!480129) (not e!402680))))

(declare-fun arrayContainsKey!0 (array!40605 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717209 (= res!480129 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63756 res!480131) b!717207))

(assert (= (and b!717207 res!480130) b!717208))

(assert (= (and b!717208 res!480133) b!717205))

(assert (= (and b!717205 res!480134) b!717209))

(assert (= (and b!717209 res!480129) b!717204))

(assert (= (and b!717204 res!480132) b!717206))

(assert (= (and b!717206 res!480135) b!717203))

(declare-fun m!673243 () Bool)

(assert (=> b!717208 m!673243))

(assert (=> b!717208 m!673243))

(declare-fun m!673245 () Bool)

(assert (=> b!717208 m!673245))

(declare-fun m!673247 () Bool)

(assert (=> b!717206 m!673247))

(declare-fun m!673249 () Bool)

(assert (=> b!717204 m!673249))

(declare-fun m!673251 () Bool)

(assert (=> start!63756 m!673251))

(declare-fun m!673253 () Bool)

(assert (=> start!63756 m!673253))

(declare-fun m!673255 () Bool)

(assert (=> b!717209 m!673255))

(declare-fun m!673257 () Bool)

(assert (=> b!717205 m!673257))

(check-sat (not b!717206) (not b!717209) (not start!63756) (not b!717205) (not b!717208) (not b!717204))
(check-sat)
(get-model)

(declare-fun d!98735 () Bool)

(declare-fun res!480161 () Bool)

(declare-fun e!402695 () Bool)

(assert (=> d!98735 (=> res!480161 e!402695)))

(assert (=> d!98735 (= res!480161 (= (select (arr!19432 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!98735 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!402695)))

(declare-fun b!717235 () Bool)

(declare-fun e!402696 () Bool)

(assert (=> b!717235 (= e!402695 e!402696)))

(declare-fun res!480162 () Bool)

(assert (=> b!717235 (=> (not res!480162) (not e!402696))))

(assert (=> b!717235 (= res!480162 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19853 a!3186)))))

(declare-fun b!717236 () Bool)

(assert (=> b!717236 (= e!402696 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!98735 (not res!480161)) b!717235))

(assert (= (and b!717235 res!480162) b!717236))

(declare-fun m!673275 () Bool)

(assert (=> d!98735 m!673275))

(declare-fun m!673277 () Bool)

(assert (=> b!717236 m!673277))

(assert (=> b!717209 d!98735))

(declare-fun b!717279 () Bool)

(declare-fun lt!319033 () SeekEntryResult!7039)

(declare-fun e!402727 () SeekEntryResult!7039)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40605 (_ BitVec 32)) SeekEntryResult!7039)

(assert (=> b!717279 (= e!402727 (seekKeyOrZeroReturnVacant!0 (x!61572 lt!319033) (index!30525 lt!319033) (index!30525 lt!319033) k0!2102 a!3186 mask!3328))))

(declare-fun b!717280 () Bool)

(declare-fun c!78917 () Bool)

(declare-fun lt!319032 () (_ BitVec 64))

(assert (=> b!717280 (= c!78917 (= lt!319032 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!402729 () SeekEntryResult!7039)

(assert (=> b!717280 (= e!402729 e!402727)))

(declare-fun b!717281 () Bool)

(assert (=> b!717281 (= e!402727 (MissingZero!7039 (index!30525 lt!319033)))))

(declare-fun b!717282 () Bool)

(declare-fun e!402728 () SeekEntryResult!7039)

(assert (=> b!717282 (= e!402728 Undefined!7039)))

(declare-fun d!98737 () Bool)

(declare-fun lt!319034 () SeekEntryResult!7039)

(get-info :version)

(assert (=> d!98737 (and (or ((_ is Undefined!7039) lt!319034) (not ((_ is Found!7039) lt!319034)) (and (bvsge (index!30524 lt!319034) #b00000000000000000000000000000000) (bvslt (index!30524 lt!319034) (size!19853 a!3186)))) (or ((_ is Undefined!7039) lt!319034) ((_ is Found!7039) lt!319034) (not ((_ is MissingZero!7039) lt!319034)) (and (bvsge (index!30523 lt!319034) #b00000000000000000000000000000000) (bvslt (index!30523 lt!319034) (size!19853 a!3186)))) (or ((_ is Undefined!7039) lt!319034) ((_ is Found!7039) lt!319034) ((_ is MissingZero!7039) lt!319034) (not ((_ is MissingVacant!7039) lt!319034)) (and (bvsge (index!30526 lt!319034) #b00000000000000000000000000000000) (bvslt (index!30526 lt!319034) (size!19853 a!3186)))) (or ((_ is Undefined!7039) lt!319034) (ite ((_ is Found!7039) lt!319034) (= (select (arr!19432 a!3186) (index!30524 lt!319034)) k0!2102) (ite ((_ is MissingZero!7039) lt!319034) (= (select (arr!19432 a!3186) (index!30523 lt!319034)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7039) lt!319034) (= (select (arr!19432 a!3186) (index!30526 lt!319034)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!98737 (= lt!319034 e!402728)))

(declare-fun c!78918 () Bool)

(assert (=> d!98737 (= c!78918 (and ((_ is Intermediate!7039) lt!319033) (undefined!7851 lt!319033)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40605 (_ BitVec 32)) SeekEntryResult!7039)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!98737 (= lt!319033 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!98737 (validMask!0 mask!3328)))

(assert (=> d!98737 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!319034)))

(declare-fun b!717283 () Bool)

(assert (=> b!717283 (= e!402729 (Found!7039 (index!30525 lt!319033)))))

(declare-fun b!717284 () Bool)

(assert (=> b!717284 (= e!402728 e!402729)))

(assert (=> b!717284 (= lt!319032 (select (arr!19432 a!3186) (index!30525 lt!319033)))))

(declare-fun c!78916 () Bool)

(assert (=> b!717284 (= c!78916 (= lt!319032 k0!2102))))

(assert (= (and d!98737 c!78918) b!717282))

(assert (= (and d!98737 (not c!78918)) b!717284))

(assert (= (and b!717284 c!78916) b!717283))

(assert (= (and b!717284 (not c!78916)) b!717280))

(assert (= (and b!717280 c!78917) b!717281))

(assert (= (and b!717280 (not c!78917)) b!717279))

(declare-fun m!673305 () Bool)

(assert (=> b!717279 m!673305))

(declare-fun m!673307 () Bool)

(assert (=> d!98737 m!673307))

(assert (=> d!98737 m!673251))

(declare-fun m!673309 () Bool)

(assert (=> d!98737 m!673309))

(declare-fun m!673311 () Bool)

(assert (=> d!98737 m!673311))

(declare-fun m!673313 () Bool)

(assert (=> d!98737 m!673313))

(assert (=> d!98737 m!673307))

(declare-fun m!673315 () Bool)

(assert (=> d!98737 m!673315))

(declare-fun m!673317 () Bool)

(assert (=> b!717284 m!673317))

(assert (=> b!717204 d!98737))

(declare-fun d!98759 () Bool)

(assert (=> d!98759 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!63756 d!98759))

(declare-fun d!98761 () Bool)

(assert (=> d!98761 (= (array_inv!15206 a!3186) (bvsge (size!19853 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!63756 d!98761))

(declare-fun d!98763 () Bool)

(assert (=> d!98763 (= (validKeyInArray!0 (select (arr!19432 a!3186) j!159)) (and (not (= (select (arr!19432 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19432 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717208 d!98763))

(declare-fun b!717329 () Bool)

(declare-fun e!402754 () Bool)

(declare-fun call!34695 () Bool)

(assert (=> b!717329 (= e!402754 call!34695)))

(declare-fun b!717330 () Bool)

(declare-fun e!402755 () Bool)

(assert (=> b!717330 (= e!402755 e!402754)))

(declare-fun lt!319059 () (_ BitVec 64))

(assert (=> b!717330 (= lt!319059 (select (arr!19432 a!3186) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!24626 0))(
  ( (Unit!24627) )
))
(declare-fun lt!319060 () Unit!24626)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!40605 (_ BitVec 64) (_ BitVec 32)) Unit!24626)

(assert (=> b!717330 (= lt!319060 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!319059 #b00000000000000000000000000000000))))

(assert (=> b!717330 (arrayContainsKey!0 a!3186 lt!319059 #b00000000000000000000000000000000)))

(declare-fun lt!319061 () Unit!24626)

(assert (=> b!717330 (= lt!319061 lt!319060)))

(declare-fun res!480185 () Bool)

(assert (=> b!717330 (= res!480185 (= (seekEntryOrOpen!0 (select (arr!19432 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7039 #b00000000000000000000000000000000)))))

(assert (=> b!717330 (=> (not res!480185) (not e!402754))))

(declare-fun d!98765 () Bool)

(declare-fun res!480186 () Bool)

(declare-fun e!402756 () Bool)

(assert (=> d!98765 (=> res!480186 e!402756)))

(assert (=> d!98765 (= res!480186 (bvsge #b00000000000000000000000000000000 (size!19853 a!3186)))))

(assert (=> d!98765 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!402756)))

(declare-fun b!717331 () Bool)

(assert (=> b!717331 (= e!402755 call!34695)))

(declare-fun bm!34692 () Bool)

(assert (=> bm!34692 (= call!34695 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!717332 () Bool)

(assert (=> b!717332 (= e!402756 e!402755)))

(declare-fun c!78939 () Bool)

(assert (=> b!717332 (= c!78939 (validKeyInArray!0 (select (arr!19432 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!98765 (not res!480186)) b!717332))

(assert (= (and b!717332 c!78939) b!717330))

(assert (= (and b!717332 (not c!78939)) b!717331))

(assert (= (and b!717330 res!480185) b!717329))

(assert (= (or b!717329 b!717331) bm!34692))

(assert (=> b!717330 m!673275))

(declare-fun m!673347 () Bool)

(assert (=> b!717330 m!673347))

(declare-fun m!673349 () Bool)

(assert (=> b!717330 m!673349))

(assert (=> b!717330 m!673275))

(declare-fun m!673351 () Bool)

(assert (=> b!717330 m!673351))

(declare-fun m!673353 () Bool)

(assert (=> bm!34692 m!673353))

(assert (=> b!717332 m!673275))

(assert (=> b!717332 m!673275))

(declare-fun m!673355 () Bool)

(assert (=> b!717332 m!673355))

(assert (=> b!717206 d!98765))

(declare-fun d!98771 () Bool)

(assert (=> d!98771 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!717205 d!98771))

(check-sat (not b!717236) (not b!717332) (not d!98737) (not b!717330) (not b!717279) (not bm!34692))
(check-sat)
