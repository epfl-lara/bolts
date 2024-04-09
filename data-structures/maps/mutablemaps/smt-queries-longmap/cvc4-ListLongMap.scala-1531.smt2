; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!29026 () Bool)

(assert start!29026)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun lt!146221 () Bool)

(declare-datatypes ((array!14916 0))(
  ( (array!14917 (arr!7071 (Array (_ BitVec 32) (_ BitVec 64))) (size!7423 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14916)

(declare-datatypes ((SeekEntryResult!2231 0))(
  ( (MissingZero!2231 (index!11094 (_ BitVec 32))) (Found!2231 (index!11095 (_ BitVec 32))) (Intermediate!2231 (undefined!3043 Bool) (index!11096 (_ BitVec 32)) (x!29268 (_ BitVec 32))) (Undefined!2231) (MissingVacant!2231 (index!11097 (_ BitVec 32))) )
))
(declare-fun lt!146225 () SeekEntryResult!2231)

(declare-fun e!186365 () Bool)

(declare-fun b!294816 () Bool)

(assert (=> b!294816 (= e!186365 (and lt!146221 (let ((bdg!6247 (not (is-Intermediate!2231 lt!146225)))) (and (or bdg!6247 (not (undefined!3043 lt!146225))) (or bdg!6247 (not (= (select (arr!7071 a!3312) (index!11096 lt!146225)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or bdg!6247 (not (= (select (arr!7071 a!3312) (index!11096 lt!146225)) k!2524))) (not bdg!6247) (not (= (select (arr!7071 a!3312) (index!11096 lt!146225)) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!146224 () SeekEntryResult!2231)

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!146223 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14916 (_ BitVec 32)) SeekEntryResult!2231)

(assert (=> b!294816 (= lt!146224 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146223 k!2524 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312)) mask!3809))))

(assert (=> b!294816 (= lt!146225 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146223 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294816 (= lt!146223 (toIndex!0 k!2524 mask!3809))))

(declare-fun b!294817 () Bool)

(declare-fun res!155024 () Bool)

(declare-fun e!186363 () Bool)

(assert (=> b!294817 (=> (not res!155024) (not e!186363))))

(assert (=> b!294817 (= res!155024 (and (= (size!7423 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7423 a!3312))))))

(declare-fun b!294818 () Bool)

(declare-fun res!155025 () Bool)

(assert (=> b!294818 (=> (not res!155025) (not e!186363))))

(declare-fun arrayContainsKey!0 (array!14916 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!294818 (= res!155025 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!294819 () Bool)

(declare-fun res!155021 () Bool)

(assert (=> b!294819 (=> (not res!155021) (not e!186365))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14916 (_ BitVec 32)) Bool)

(assert (=> b!294819 (= res!155021 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!294820 () Bool)

(assert (=> b!294820 (= e!186363 e!186365)))

(declare-fun res!155022 () Bool)

(assert (=> b!294820 (=> (not res!155022) (not e!186365))))

(declare-fun lt!146222 () SeekEntryResult!2231)

(assert (=> b!294820 (= res!155022 (or lt!146221 (= lt!146222 (MissingVacant!2231 i!1256))))))

(assert (=> b!294820 (= lt!146221 (= lt!146222 (MissingZero!2231 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14916 (_ BitVec 32)) SeekEntryResult!2231)

(assert (=> b!294820 (= lt!146222 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(declare-fun b!294821 () Bool)

(declare-fun res!155020 () Bool)

(assert (=> b!294821 (=> (not res!155020) (not e!186363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!294821 (= res!155020 (validKeyInArray!0 k!2524))))

(declare-fun res!155023 () Bool)

(assert (=> start!29026 (=> (not res!155023) (not e!186363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29026 (= res!155023 (validMask!0 mask!3809))))

(assert (=> start!29026 e!186363))

(assert (=> start!29026 true))

(declare-fun array_inv!5025 (array!14916) Bool)

(assert (=> start!29026 (array_inv!5025 a!3312)))

(assert (= (and start!29026 res!155023) b!294817))

(assert (= (and b!294817 res!155024) b!294821))

(assert (= (and b!294821 res!155020) b!294818))

(assert (= (and b!294818 res!155025) b!294820))

(assert (= (and b!294820 res!155022) b!294819))

(assert (= (and b!294819 res!155021) b!294816))

(declare-fun m!308155 () Bool)

(assert (=> b!294819 m!308155))

(declare-fun m!308157 () Bool)

(assert (=> b!294821 m!308157))

(declare-fun m!308159 () Bool)

(assert (=> b!294818 m!308159))

(declare-fun m!308161 () Bool)

(assert (=> b!294816 m!308161))

(declare-fun m!308163 () Bool)

(assert (=> b!294816 m!308163))

(declare-fun m!308165 () Bool)

(assert (=> b!294816 m!308165))

(declare-fun m!308167 () Bool)

(assert (=> b!294816 m!308167))

(declare-fun m!308169 () Bool)

(assert (=> b!294816 m!308169))

(declare-fun m!308171 () Bool)

(assert (=> b!294820 m!308171))

(declare-fun m!308173 () Bool)

(assert (=> start!29026 m!308173))

(declare-fun m!308175 () Bool)

(assert (=> start!29026 m!308175))

(push 1)

(assert (not b!294816))

(assert (not b!294819))

(assert (not b!294818))

(assert (not b!294821))

(assert (not b!294820))

(assert (not start!29026))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66795 () Bool)

(assert (=> d!66795 (= (validKeyInArray!0 k!2524) (and (not (= k!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!294821 d!66795))

(declare-fun b!294882 () Bool)

(declare-fun lt!146249 () SeekEntryResult!2231)

(assert (=> b!294882 (and (bvsge (index!11096 lt!146249) #b00000000000000000000000000000000) (bvslt (index!11096 lt!146249) (size!7423 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312)))))))

(declare-fun res!155050 () Bool)

(assert (=> b!294882 (= res!155050 (= (select (arr!7071 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312))) (index!11096 lt!146249)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186410 () Bool)

(assert (=> b!294882 (=> res!155050 e!186410)))

(declare-fun b!294883 () Bool)

(assert (=> b!294883 (and (bvsge (index!11096 lt!146249) #b00000000000000000000000000000000) (bvslt (index!11096 lt!146249) (size!7423 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312)))))))

(assert (=> b!294883 (= e!186410 (= (select (arr!7071 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312))) (index!11096 lt!146249)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66799 () Bool)

(declare-fun e!186404 () Bool)

(assert (=> d!66799 e!186404))

(declare-fun c!47493 () Bool)

(assert (=> d!66799 (= c!47493 (and (is-Intermediate!2231 lt!146249) (undefined!3043 lt!146249)))))

(declare-fun e!186405 () SeekEntryResult!2231)

(assert (=> d!66799 (= lt!146249 e!186405)))

(declare-fun c!47492 () Bool)

(assert (=> d!66799 (= c!47492 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146246 () (_ BitVec 64))

(assert (=> d!66799 (= lt!146246 (select (arr!7071 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312))) lt!146223))))

(assert (=> d!66799 (validMask!0 mask!3809)))

(assert (=> d!66799 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146223 k!2524 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312)) mask!3809) lt!146249)))

(declare-fun b!294884 () Bool)

(declare-fun e!186409 () SeekEntryResult!2231)

(assert (=> b!294884 (= e!186405 e!186409)))

(declare-fun c!47490 () Bool)

(assert (=> b!294884 (= c!47490 (or (= lt!146246 k!2524) (= (bvadd lt!146246 lt!146246) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294885 () Bool)

(assert (=> b!294885 (and (bvsge (index!11096 lt!146249) #b00000000000000000000000000000000) (bvslt (index!11096 lt!146249) (size!7423 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312)))))))

(declare-fun res!155052 () Bool)

(assert (=> b!294885 (= res!155052 (= (select (arr!7071 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312))) (index!11096 lt!146249)) k!2524))))

(assert (=> b!294885 (=> res!155052 e!186410)))

(declare-fun e!186407 () Bool)

(assert (=> b!294885 (= e!186407 e!186410)))

(declare-fun b!294886 () Bool)

(assert (=> b!294886 (= e!186404 e!186407)))

(declare-fun res!155051 () Bool)

(assert (=> b!294886 (= res!155051 (and (is-Intermediate!2231 lt!146249) (not (undefined!3043 lt!146249)) (bvslt (x!29268 lt!146249) #b01111111111111111111111111111110) (bvsge (x!29268 lt!146249) #b00000000000000000000000000000000) (bvsge (x!29268 lt!146249) #b00000000000000000000000000000000)))))

(assert (=> b!294886 (=> (not res!155051) (not e!186407))))

(declare-fun b!294887 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!294887 (= e!186409 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146223 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14917 (store (arr!7071 a!3312) i!1256 k!2524) (size!7423 a!3312)) mask!3809))))

(declare-fun b!294888 () Bool)

(assert (=> b!294888 (= e!186409 (Intermediate!2231 false lt!146223 #b00000000000000000000000000000000))))

(declare-fun b!294889 () Bool)

(assert (=> b!294889 (= e!186404 (bvsge (x!29268 lt!146249) #b01111111111111111111111111111110))))

(declare-fun b!294890 () Bool)

(assert (=> b!294890 (= e!186405 (Intermediate!2231 true lt!146223 #b00000000000000000000000000000000))))

(assert (= (and d!66799 c!47492) b!294890))

(assert (= (and d!66799 (not c!47492)) b!294884))

(assert (= (and b!294884 c!47490) b!294888))

(assert (= (and b!294884 (not c!47490)) b!294887))

(assert (= (and d!66799 c!47493) b!294889))

(assert (= (and d!66799 (not c!47493)) b!294886))

(assert (= (and b!294886 res!155051) b!294885))

(assert (= (and b!294885 (not res!155052)) b!294882))

(assert (= (and b!294882 (not res!155050)) b!294883))

(declare-fun m!308201 () Bool)

(assert (=> b!294887 m!308201))

(assert (=> b!294887 m!308201))

(declare-fun m!308207 () Bool)

(assert (=> b!294887 m!308207))

(declare-fun m!308211 () Bool)

(assert (=> b!294882 m!308211))

(assert (=> b!294885 m!308211))

(assert (=> b!294883 m!308211))

(declare-fun m!308213 () Bool)

(assert (=> d!66799 m!308213))

(assert (=> d!66799 m!308173))

(assert (=> b!294816 d!66799))

(declare-fun b!294891 () Bool)

(declare-fun lt!146251 () SeekEntryResult!2231)

(assert (=> b!294891 (and (bvsge (index!11096 lt!146251) #b00000000000000000000000000000000) (bvslt (index!11096 lt!146251) (size!7423 a!3312)))))

(declare-fun res!155053 () Bool)

(assert (=> b!294891 (= res!155053 (= (select (arr!7071 a!3312) (index!11096 lt!146251)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!186415 () Bool)

(assert (=> b!294891 (=> res!155053 e!186415)))

(declare-fun b!294892 () Bool)

(assert (=> b!294892 (and (bvsge (index!11096 lt!146251) #b00000000000000000000000000000000) (bvslt (index!11096 lt!146251) (size!7423 a!3312)))))

(assert (=> b!294892 (= e!186415 (= (select (arr!7071 a!3312) (index!11096 lt!146251)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!66813 () Bool)

(declare-fun e!186411 () Bool)

(assert (=> d!66813 e!186411))

(declare-fun c!47496 () Bool)

(assert (=> d!66813 (= c!47496 (and (is-Intermediate!2231 lt!146251) (undefined!3043 lt!146251)))))

(declare-fun e!186412 () SeekEntryResult!2231)

(assert (=> d!66813 (= lt!146251 e!186412)))

(declare-fun c!47495 () Bool)

(assert (=> d!66813 (= c!47495 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!146250 () (_ BitVec 64))

(assert (=> d!66813 (= lt!146250 (select (arr!7071 a!3312) lt!146223))))

(assert (=> d!66813 (validMask!0 mask!3809)))

(assert (=> d!66813 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!146223 k!2524 a!3312 mask!3809) lt!146251)))

(declare-fun b!294893 () Bool)

(declare-fun e!186414 () SeekEntryResult!2231)

(assert (=> b!294893 (= e!186412 e!186414)))

(declare-fun c!47494 () Bool)

(assert (=> b!294893 (= c!47494 (or (= lt!146250 k!2524) (= (bvadd lt!146250 lt!146250) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!294894 () Bool)

(assert (=> b!294894 (and (bvsge (index!11096 lt!146251) #b00000000000000000000000000000000) (bvslt (index!11096 lt!146251) (size!7423 a!3312)))))

(declare-fun res!155055 () Bool)

(assert (=> b!294894 (= res!155055 (= (select (arr!7071 a!3312) (index!11096 lt!146251)) k!2524))))

(assert (=> b!294894 (=> res!155055 e!186415)))

(declare-fun e!186413 () Bool)

(assert (=> b!294894 (= e!186413 e!186415)))

(declare-fun b!294895 () Bool)

(assert (=> b!294895 (= e!186411 e!186413)))

(declare-fun res!155054 () Bool)

(assert (=> b!294895 (= res!155054 (and (is-Intermediate!2231 lt!146251) (not (undefined!3043 lt!146251)) (bvslt (x!29268 lt!146251) #b01111111111111111111111111111110) (bvsge (x!29268 lt!146251) #b00000000000000000000000000000000) (bvsge (x!29268 lt!146251) #b00000000000000000000000000000000)))))

(assert (=> b!294895 (=> (not res!155054) (not e!186413))))

(declare-fun b!294896 () Bool)

(assert (=> b!294896 (= e!186414 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!146223 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!294897 () Bool)

(assert (=> b!294897 (= e!186414 (Intermediate!2231 false lt!146223 #b00000000000000000000000000000000))))

(declare-fun b!294898 () Bool)

(assert (=> b!294898 (= e!186411 (bvsge (x!29268 lt!146251) #b01111111111111111111111111111110))))

(declare-fun b!294899 () Bool)

(assert (=> b!294899 (= e!186412 (Intermediate!2231 true lt!146223 #b00000000000000000000000000000000))))

(assert (= (and d!66813 c!47495) b!294899))

(assert (= (and d!66813 (not c!47495)) b!294893))

(assert (= (and b!294893 c!47494) b!294897))

(assert (= (and b!294893 (not c!47494)) b!294896))

(assert (= (and d!66813 c!47496) b!294898))

(assert (= (and d!66813 (not c!47496)) b!294895))

(assert (= (and b!294895 res!155054) b!294894))

(assert (= (and b!294894 (not res!155055)) b!294891))

(assert (= (and b!294891 (not res!155053)) b!294892))

(assert (=> b!294896 m!308201))

(assert (=> b!294896 m!308201))

(declare-fun m!308215 () Bool)

(assert (=> b!294896 m!308215))

(declare-fun m!308217 () Bool)

(assert (=> b!294891 m!308217))

(assert (=> b!294894 m!308217))

(assert (=> b!294892 m!308217))

(declare-fun m!308219 () Bool)

(assert (=> d!66813 m!308219))

(assert (=> d!66813 m!308173))

(assert (=> b!294816 d!66813))

(declare-fun d!66815 () Bool)

(declare-fun lt!146261 () (_ BitVec 32))

(declare-fun lt!146260 () (_ BitVec 32))

(assert (=> d!66815 (= lt!146261 (bvmul (bvxor lt!146260 (bvlshr lt!146260 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66815 (= lt!146260 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66815 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!155056 (let ((h!5306 ((_ extract 31 0) (bvand (bvxor k!2524 (bvlshr k!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29270 (bvmul (bvxor h!5306 (bvlshr h!5306 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29270 (bvlshr x!29270 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!155056 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!155056 #b00000000000000000000000000000000))))))

(assert (=> d!66815 (= (toIndex!0 k!2524 mask!3809) (bvand (bvxor lt!146261 (bvlshr lt!146261 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!294816 d!66815))

(declare-fun b!294948 () Bool)

(declare-fun e!186444 () Bool)

(declare-fun call!25719 () Bool)

(assert (=> b!294948 (= e!186444 call!25719)))

(declare-fun b!294949 () Bool)

(declare-fun e!186445 () Bool)

(assert (=> b!294949 (= e!186445 call!25719)))

(declare-fun bm!25716 () Bool)

(assert (=> bm!25716 (= call!25719 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun d!66817 () Bool)

(declare-fun res!155074 () Bool)

(declare-fun e!186446 () Bool)

(assert (=> d!66817 (=> res!155074 e!186446)))

(assert (=> d!66817 (= res!155074 (bvsge #b00000000000000000000000000000000 (size!7423 a!3312)))))

(assert (=> d!66817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!186446)))

(declare-fun b!294950 () Bool)

(assert (=> b!294950 (= e!186446 e!186445)))

(declare-fun c!47513 () Bool)

(assert (=> b!294950 (= c!47513 (validKeyInArray!0 (select (arr!7071 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!294951 () Bool)

(assert (=> b!294951 (= e!186445 e!186444)))

(declare-fun lt!146277 () (_ BitVec 64))

(assert (=> b!294951 (= lt!146277 (select (arr!7071 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9207 0))(
  ( (Unit!9208) )
))
(declare-fun lt!146276 () Unit!9207)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14916 (_ BitVec 64) (_ BitVec 32)) Unit!9207)

(assert (=> b!294951 (= lt!146276 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!146277 #b00000000000000000000000000000000))))

(assert (=> b!294951 (arrayContainsKey!0 a!3312 lt!146277 #b00000000000000000000000000000000)))

(declare-fun lt!146278 () Unit!9207)

(assert (=> b!294951 (= lt!146278 lt!146276)))

(declare-fun res!155075 () Bool)

(assert (=> b!294951 (= res!155075 (= (seekEntryOrOpen!0 (select (arr!7071 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2231 #b00000000000000000000000000000000)))))

(assert (=> b!294951 (=> (not res!155075) (not e!186444))))

(assert (= (and d!66817 (not res!155074)) b!294950))

(assert (= (and b!294950 c!47513) b!294951))

(assert (= (and b!294950 (not c!47513)) b!294949))

(assert (= (and b!294951 res!155075) b!294948))

(assert (= (or b!294948 b!294949) bm!25716))

(declare-fun m!308235 () Bool)

(assert (=> bm!25716 m!308235))

(declare-fun m!308237 () Bool)

(assert (=> b!294950 m!308237))

(assert (=> b!294950 m!308237))

(declare-fun m!308239 () Bool)

(assert (=> b!294950 m!308239))

(assert (=> b!294951 m!308237))

(declare-fun m!308241 () Bool)

(assert (=> b!294951 m!308241))

(declare-fun m!308243 () Bool)

(assert (=> b!294951 m!308243))

(assert (=> b!294951 m!308237))

(declare-fun m!308245 () Bool)

(assert (=> b!294951 m!308245))

(assert (=> b!294819 d!66817))

(declare-fun d!66823 () Bool)

(assert (=> d!66823 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29026 d!66823))

(declare-fun d!66831 () Bool)

(assert (=> d!66831 (= (array_inv!5025 a!3312) (bvsge (size!7423 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29026 d!66831))

(declare-fun d!66833 () Bool)

(declare-fun lt!146317 () SeekEntryResult!2231)

(assert (=> d!66833 (and (or (is-Undefined!2231 lt!146317) (not (is-Found!2231 lt!146317)) (and (bvsge (index!11095 lt!146317) #b00000000000000000000000000000000) (bvslt (index!11095 lt!146317) (size!7423 a!3312)))) (or (is-Undefined!2231 lt!146317) (is-Found!2231 lt!146317) (not (is-MissingZero!2231 lt!146317)) (and (bvsge (index!11094 lt!146317) #b00000000000000000000000000000000) (bvslt (index!11094 lt!146317) (size!7423 a!3312)))) (or (is-Undefined!2231 lt!146317) (is-Found!2231 lt!146317) (is-MissingZero!2231 lt!146317) (not (is-MissingVacant!2231 lt!146317)) (and (bvsge (index!11097 lt!146317) #b00000000000000000000000000000000) (bvslt (index!11097 lt!146317) (size!7423 a!3312)))) (or (is-Undefined!2231 lt!146317) (ite (is-Found!2231 lt!146317) (= (select (arr!7071 a!3312) (index!11095 lt!146317)) k!2524) (ite (is-MissingZero!2231 lt!146317) (= (select (arr!7071 a!3312) (index!11094 lt!146317)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!2231 lt!146317) (= (select (arr!7071 a!3312) (index!11097 lt!146317)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

