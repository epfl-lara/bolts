; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!30032 () Bool)

(assert start!30032)

(declare-fun b!301117 () Bool)

(declare-fun res!159028 () Bool)

(declare-fun e!190066 () Bool)

(assert (=> b!301117 (=> (not res!159028) (not e!190066))))

(declare-datatypes ((array!15253 0))(
  ( (array!15254 (arr!7217 (Array (_ BitVec 32) (_ BitVec 64))) (size!7569 (_ BitVec 32))) )
))
(declare-fun a!3293 () array!15253)

(declare-fun mask!3709 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!15253 (_ BitVec 32)) Bool)

(assert (=> b!301117 (= res!159028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709))))

(declare-fun b!301118 () Bool)

(assert (=> b!301118 (= e!190066 (and (bvsge mask!3709 #b00000000000000000000000000000000) (bvsgt mask!3709 #b00111111111111111111111111111111)))))

(declare-fun b!301119 () Bool)

(declare-fun res!159027 () Bool)

(assert (=> b!301119 (=> (not res!159027) (not e!190066))))

(declare-fun k0!2441 () (_ BitVec 64))

(declare-fun i!1240 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!2368 0))(
  ( (MissingZero!2368 (index!11648 (_ BitVec 32))) (Found!2368 (index!11649 (_ BitVec 32))) (Intermediate!2368 (undefined!3180 Bool) (index!11650 (_ BitVec 32)) (x!29891 (_ BitVec 32))) (Undefined!2368) (MissingVacant!2368 (index!11651 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!15253 (_ BitVec 32)) SeekEntryResult!2368)

(assert (=> b!301119 (= res!159027 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) (MissingZero!2368 i!1240)))))

(declare-fun b!301120 () Bool)

(declare-fun res!159030 () Bool)

(assert (=> b!301120 (=> (not res!159030) (not e!190066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!301120 (= res!159030 (validKeyInArray!0 k0!2441))))

(declare-fun b!301121 () Bool)

(declare-fun res!159029 () Bool)

(assert (=> b!301121 (=> (not res!159029) (not e!190066))))

(declare-fun arrayContainsKey!0 (array!15253 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!301121 (= res!159029 (not (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000)))))

(declare-fun b!301122 () Bool)

(declare-fun res!159026 () Bool)

(assert (=> b!301122 (=> (not res!159026) (not e!190066))))

(assert (=> b!301122 (= res!159026 (and (= (size!7569 a!3293) (bvadd #b00000000000000000000000000000001 mask!3709)) (bvsge i!1240 #b00000000000000000000000000000000) (bvslt i!1240 (size!7569 a!3293))))))

(declare-fun res!159025 () Bool)

(assert (=> start!30032 (=> (not res!159025) (not e!190066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!30032 (= res!159025 (validMask!0 mask!3709))))

(assert (=> start!30032 e!190066))

(assert (=> start!30032 true))

(declare-fun array_inv!5171 (array!15253) Bool)

(assert (=> start!30032 (array_inv!5171 a!3293)))

(assert (= (and start!30032 res!159025) b!301122))

(assert (= (and b!301122 res!159026) b!301120))

(assert (= (and b!301120 res!159030) b!301121))

(assert (= (and b!301121 res!159029) b!301119))

(assert (= (and b!301119 res!159027) b!301117))

(assert (= (and b!301117 res!159028) b!301118))

(declare-fun m!312967 () Bool)

(assert (=> start!30032 m!312967))

(declare-fun m!312969 () Bool)

(assert (=> start!30032 m!312969))

(declare-fun m!312971 () Bool)

(assert (=> b!301121 m!312971))

(declare-fun m!312973 () Bool)

(assert (=> b!301119 m!312973))

(declare-fun m!312975 () Bool)

(assert (=> b!301120 m!312975))

(declare-fun m!312977 () Bool)

(assert (=> b!301117 m!312977))

(check-sat (not start!30032) (not b!301121) (not b!301120) (not b!301117) (not b!301119))
(check-sat)
(get-model)

(declare-fun d!67725 () Bool)

(assert (=> d!67725 (= (validKeyInArray!0 k0!2441) (and (not (= k0!2441 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2441 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!301120 d!67725))

(declare-fun lt!149762 () SeekEntryResult!2368)

(declare-fun e!190088 () SeekEntryResult!2368)

(declare-fun b!301163 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15253 (_ BitVec 32)) SeekEntryResult!2368)

(assert (=> b!301163 (= e!190088 (seekKeyOrZeroReturnVacant!0 (x!29891 lt!149762) (index!11650 lt!149762) (index!11650 lt!149762) k0!2441 a!3293 mask!3709))))

(declare-fun d!67727 () Bool)

(declare-fun lt!149763 () SeekEntryResult!2368)

(get-info :version)

(assert (=> d!67727 (and (or ((_ is Undefined!2368) lt!149763) (not ((_ is Found!2368) lt!149763)) (and (bvsge (index!11649 lt!149763) #b00000000000000000000000000000000) (bvslt (index!11649 lt!149763) (size!7569 a!3293)))) (or ((_ is Undefined!2368) lt!149763) ((_ is Found!2368) lt!149763) (not ((_ is MissingZero!2368) lt!149763)) (and (bvsge (index!11648 lt!149763) #b00000000000000000000000000000000) (bvslt (index!11648 lt!149763) (size!7569 a!3293)))) (or ((_ is Undefined!2368) lt!149763) ((_ is Found!2368) lt!149763) ((_ is MissingZero!2368) lt!149763) (not ((_ is MissingVacant!2368) lt!149763)) (and (bvsge (index!11651 lt!149763) #b00000000000000000000000000000000) (bvslt (index!11651 lt!149763) (size!7569 a!3293)))) (or ((_ is Undefined!2368) lt!149763) (ite ((_ is Found!2368) lt!149763) (= (select (arr!7217 a!3293) (index!11649 lt!149763)) k0!2441) (ite ((_ is MissingZero!2368) lt!149763) (= (select (arr!7217 a!3293) (index!11648 lt!149763)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2368) lt!149763) (= (select (arr!7217 a!3293) (index!11651 lt!149763)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!190087 () SeekEntryResult!2368)

(assert (=> d!67727 (= lt!149763 e!190087)))

(declare-fun c!48652 () Bool)

(assert (=> d!67727 (= c!48652 (and ((_ is Intermediate!2368) lt!149762) (undefined!3180 lt!149762)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!15253 (_ BitVec 32)) SeekEntryResult!2368)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!67727 (= lt!149762 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2441 mask!3709) k0!2441 a!3293 mask!3709))))

(assert (=> d!67727 (validMask!0 mask!3709)))

(assert (=> d!67727 (= (seekEntryOrOpen!0 k0!2441 a!3293 mask!3709) lt!149763)))

(declare-fun b!301164 () Bool)

(assert (=> b!301164 (= e!190088 (MissingZero!2368 (index!11650 lt!149762)))))

(declare-fun b!301165 () Bool)

(declare-fun e!190089 () SeekEntryResult!2368)

(assert (=> b!301165 (= e!190087 e!190089)))

(declare-fun lt!149761 () (_ BitVec 64))

(assert (=> b!301165 (= lt!149761 (select (arr!7217 a!3293) (index!11650 lt!149762)))))

(declare-fun c!48651 () Bool)

(assert (=> b!301165 (= c!48651 (= lt!149761 k0!2441))))

(declare-fun b!301166 () Bool)

(assert (=> b!301166 (= e!190089 (Found!2368 (index!11650 lt!149762)))))

(declare-fun b!301167 () Bool)

(assert (=> b!301167 (= e!190087 Undefined!2368)))

(declare-fun b!301168 () Bool)

(declare-fun c!48650 () Bool)

(assert (=> b!301168 (= c!48650 (= lt!149761 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!301168 (= e!190089 e!190088)))

(assert (= (and d!67727 c!48652) b!301167))

(assert (= (and d!67727 (not c!48652)) b!301165))

(assert (= (and b!301165 c!48651) b!301166))

(assert (= (and b!301165 (not c!48651)) b!301168))

(assert (= (and b!301168 c!48650) b!301164))

(assert (= (and b!301168 (not c!48650)) b!301163))

(declare-fun m!312995 () Bool)

(assert (=> b!301163 m!312995))

(assert (=> d!67727 m!312967))

(declare-fun m!312997 () Bool)

(assert (=> d!67727 m!312997))

(declare-fun m!312999 () Bool)

(assert (=> d!67727 m!312999))

(declare-fun m!313001 () Bool)

(assert (=> d!67727 m!313001))

(declare-fun m!313003 () Bool)

(assert (=> d!67727 m!313003))

(assert (=> d!67727 m!312999))

(declare-fun m!313005 () Bool)

(assert (=> d!67727 m!313005))

(declare-fun m!313007 () Bool)

(assert (=> b!301165 m!313007))

(assert (=> b!301119 d!67727))

(declare-fun d!67741 () Bool)

(declare-fun res!159061 () Bool)

(declare-fun e!190102 () Bool)

(assert (=> d!67741 (=> res!159061 e!190102)))

(assert (=> d!67741 (= res!159061 (= (select (arr!7217 a!3293) #b00000000000000000000000000000000) k0!2441))))

(assert (=> d!67741 (= (arrayContainsKey!0 a!3293 k0!2441 #b00000000000000000000000000000000) e!190102)))

(declare-fun b!301187 () Bool)

(declare-fun e!190103 () Bool)

(assert (=> b!301187 (= e!190102 e!190103)))

(declare-fun res!159062 () Bool)

(assert (=> b!301187 (=> (not res!159062) (not e!190103))))

(assert (=> b!301187 (= res!159062 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7569 a!3293)))))

(declare-fun b!301188 () Bool)

(assert (=> b!301188 (= e!190103 (arrayContainsKey!0 a!3293 k0!2441 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!67741 (not res!159061)) b!301187))

(assert (= (and b!301187 res!159062) b!301188))

(declare-fun m!313009 () Bool)

(assert (=> d!67741 m!313009))

(declare-fun m!313011 () Bool)

(assert (=> b!301188 m!313011))

(assert (=> b!301121 d!67741))

(declare-fun d!67743 () Bool)

(assert (=> d!67743 (= (validMask!0 mask!3709) (and (or (= mask!3709 #b00000000000000000000000000000111) (= mask!3709 #b00000000000000000000000000001111) (= mask!3709 #b00000000000000000000000000011111) (= mask!3709 #b00000000000000000000000000111111) (= mask!3709 #b00000000000000000000000001111111) (= mask!3709 #b00000000000000000000000011111111) (= mask!3709 #b00000000000000000000000111111111) (= mask!3709 #b00000000000000000000001111111111) (= mask!3709 #b00000000000000000000011111111111) (= mask!3709 #b00000000000000000000111111111111) (= mask!3709 #b00000000000000000001111111111111) (= mask!3709 #b00000000000000000011111111111111) (= mask!3709 #b00000000000000000111111111111111) (= mask!3709 #b00000000000000001111111111111111) (= mask!3709 #b00000000000000011111111111111111) (= mask!3709 #b00000000000000111111111111111111) (= mask!3709 #b00000000000001111111111111111111) (= mask!3709 #b00000000000011111111111111111111) (= mask!3709 #b00000000000111111111111111111111) (= mask!3709 #b00000000001111111111111111111111) (= mask!3709 #b00000000011111111111111111111111) (= mask!3709 #b00000000111111111111111111111111) (= mask!3709 #b00000001111111111111111111111111) (= mask!3709 #b00000011111111111111111111111111) (= mask!3709 #b00000111111111111111111111111111) (= mask!3709 #b00001111111111111111111111111111) (= mask!3709 #b00011111111111111111111111111111) (= mask!3709 #b00111111111111111111111111111111)) (bvsle mask!3709 #b00111111111111111111111111111111)))))

(assert (=> start!30032 d!67743))

(declare-fun d!67749 () Bool)

(assert (=> d!67749 (= (array_inv!5171 a!3293) (bvsge (size!7569 a!3293) #b00000000000000000000000000000000))))

(assert (=> start!30032 d!67749))

(declare-fun bm!25864 () Bool)

(declare-fun call!25867 () Bool)

(assert (=> bm!25864 (= call!25867 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3293 mask!3709))))

(declare-fun b!301219 () Bool)

(declare-fun e!190125 () Bool)

(declare-fun e!190126 () Bool)

(assert (=> b!301219 (= e!190125 e!190126)))

(declare-fun lt!149794 () (_ BitVec 64))

(assert (=> b!301219 (= lt!149794 (select (arr!7217 a!3293) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9362 0))(
  ( (Unit!9363) )
))
(declare-fun lt!149795 () Unit!9362)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!15253 (_ BitVec 64) (_ BitVec 32)) Unit!9362)

(assert (=> b!301219 (= lt!149795 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3293 lt!149794 #b00000000000000000000000000000000))))

(assert (=> b!301219 (arrayContainsKey!0 a!3293 lt!149794 #b00000000000000000000000000000000)))

(declare-fun lt!149796 () Unit!9362)

(assert (=> b!301219 (= lt!149796 lt!149795)))

(declare-fun res!159075 () Bool)

(assert (=> b!301219 (= res!159075 (= (seekEntryOrOpen!0 (select (arr!7217 a!3293) #b00000000000000000000000000000000) a!3293 mask!3709) (Found!2368 #b00000000000000000000000000000000)))))

(assert (=> b!301219 (=> (not res!159075) (not e!190126))))

(declare-fun b!301220 () Bool)

(assert (=> b!301220 (= e!190126 call!25867)))

(declare-fun b!301221 () Bool)

(assert (=> b!301221 (= e!190125 call!25867)))

(declare-fun d!67751 () Bool)

(declare-fun res!159076 () Bool)

(declare-fun e!190124 () Bool)

(assert (=> d!67751 (=> res!159076 e!190124)))

(assert (=> d!67751 (= res!159076 (bvsge #b00000000000000000000000000000000 (size!7569 a!3293)))))

(assert (=> d!67751 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3293 mask!3709) e!190124)))

(declare-fun b!301222 () Bool)

(assert (=> b!301222 (= e!190124 e!190125)))

(declare-fun c!48667 () Bool)

(assert (=> b!301222 (= c!48667 (validKeyInArray!0 (select (arr!7217 a!3293) #b00000000000000000000000000000000)))))

(assert (= (and d!67751 (not res!159076)) b!301222))

(assert (= (and b!301222 c!48667) b!301219))

(assert (= (and b!301222 (not c!48667)) b!301221))

(assert (= (and b!301219 res!159075) b!301220))

(assert (= (or b!301220 b!301221) bm!25864))

(declare-fun m!313037 () Bool)

(assert (=> bm!25864 m!313037))

(assert (=> b!301219 m!313009))

(declare-fun m!313039 () Bool)

(assert (=> b!301219 m!313039))

(declare-fun m!313041 () Bool)

(assert (=> b!301219 m!313041))

(assert (=> b!301219 m!313009))

(declare-fun m!313043 () Bool)

(assert (=> b!301219 m!313043))

(assert (=> b!301222 m!313009))

(assert (=> b!301222 m!313009))

(declare-fun m!313045 () Bool)

(assert (=> b!301222 m!313045))

(assert (=> b!301117 d!67751))

(check-sat (not b!301188) (not b!301222) (not d!67727) (not b!301219) (not b!301163) (not bm!25864))
(check-sat)
