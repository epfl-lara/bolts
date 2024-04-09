; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47168 () Bool)

(assert start!47168)

(declare-fun b!519268 () Bool)

(declare-fun res!317962 () Bool)

(declare-fun e!302984 () Bool)

(assert (=> b!519268 (=> (not res!317962) (not e!302984))))

(declare-datatypes ((array!33143 0))(
  ( (array!33144 (arr!15929 (Array (_ BitVec 32) (_ BitVec 64))) (size!16293 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33143)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33143 (_ BitVec 32)) Bool)

(assert (=> b!519268 (= res!317962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!519269 () Bool)

(declare-fun res!317972 () Bool)

(assert (=> b!519269 (=> (not res!317972) (not e!302984))))

(declare-datatypes ((List!10140 0))(
  ( (Nil!10137) (Cons!10136 (h!11049 (_ BitVec 64)) (t!16376 List!10140)) )
))
(declare-fun arrayNoDuplicates!0 (array!33143 (_ BitVec 32) List!10140) Bool)

(assert (=> b!519269 (= res!317972 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10137))))

(declare-fun b!519270 () Bool)

(declare-fun e!302980 () Bool)

(assert (=> b!519270 (= e!302980 false)))

(declare-fun b!519271 () Bool)

(declare-fun res!317969 () Bool)

(declare-fun e!302985 () Bool)

(assert (=> b!519271 (=> (not res!317969) (not e!302985))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33143 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!519271 (= res!317969 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!302981 () Bool)

(declare-fun b!519272 () Bool)

(declare-datatypes ((SeekEntryResult!4403 0))(
  ( (MissingZero!4403 (index!19806 (_ BitVec 32))) (Found!4403 (index!19807 (_ BitVec 32))) (Intermediate!4403 (undefined!5215 Bool) (index!19808 (_ BitVec 32)) (x!48805 (_ BitVec 32))) (Undefined!4403) (MissingVacant!4403 (index!19809 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33143 (_ BitVec 32)) SeekEntryResult!4403)

(assert (=> b!519272 (= e!302981 (= (seekEntryOrOpen!0 (select (arr!15929 a!3235) j!176) a!3235 mask!3524) (Found!4403 j!176)))))

(declare-fun b!519273 () Bool)

(declare-datatypes ((Unit!16078 0))(
  ( (Unit!16079) )
))
(declare-fun e!302982 () Unit!16078)

(declare-fun Unit!16080 () Unit!16078)

(assert (=> b!519273 (= e!302982 Unit!16080)))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!237854 () Unit!16078)

(declare-fun lt!237849 () (_ BitVec 32))

(declare-fun lt!237850 () SeekEntryResult!4403)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33143 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16078)

(assert (=> b!519273 (= lt!237854 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237849 #b00000000000000000000000000000000 (index!19808 lt!237850) (x!48805 lt!237850) mask!3524))))

(declare-fun res!317965 () Bool)

(declare-fun lt!237856 () (_ BitVec 64))

(declare-fun lt!237855 () array!33143)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33143 (_ BitVec 32)) SeekEntryResult!4403)

(assert (=> b!519273 (= res!317965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237849 lt!237856 lt!237855 mask!3524) (Intermediate!4403 false (index!19808 lt!237850) (x!48805 lt!237850))))))

(assert (=> b!519273 (=> (not res!317965) (not e!302980))))

(assert (=> b!519273 e!302980))

(declare-fun b!519274 () Bool)

(declare-fun res!317967 () Bool)

(assert (=> b!519274 (=> (not res!317967) (not e!302985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!519274 (= res!317967 (validKeyInArray!0 k!2280))))

(declare-fun b!519275 () Bool)

(declare-fun Unit!16081 () Unit!16078)

(assert (=> b!519275 (= e!302982 Unit!16081)))

(declare-fun b!519276 () Bool)

(declare-fun res!317966 () Bool)

(assert (=> b!519276 (=> (not res!317966) (not e!302985))))

(assert (=> b!519276 (= res!317966 (validKeyInArray!0 (select (arr!15929 a!3235) j!176)))))

(declare-fun b!519277 () Bool)

(declare-fun res!317971 () Bool)

(assert (=> b!519277 (=> (not res!317971) (not e!302985))))

(assert (=> b!519277 (= res!317971 (and (= (size!16293 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16293 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16293 a!3235)) (not (= i!1204 j!176))))))

(declare-fun res!317968 () Bool)

(assert (=> start!47168 (=> (not res!317968) (not e!302985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47168 (= res!317968 (validMask!0 mask!3524))))

(assert (=> start!47168 e!302985))

(assert (=> start!47168 true))

(declare-fun array_inv!11703 (array!33143) Bool)

(assert (=> start!47168 (array_inv!11703 a!3235)))

(declare-fun b!519278 () Bool)

(declare-fun e!302983 () Bool)

(assert (=> b!519278 (= e!302983 (and (bvsge (index!19808 lt!237850) #b00000000000000000000000000000000) (bvslt (index!19808 lt!237850) (size!16293 a!3235))))))

(assert (=> b!519278 (or (= (select (arr!15929 a!3235) (index!19808 lt!237850)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15929 a!3235) (index!19808 lt!237850)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!237853 () Unit!16078)

(assert (=> b!519278 (= lt!237853 e!302982)))

(declare-fun c!60950 () Bool)

(assert (=> b!519278 (= c!60950 (= (select (arr!15929 a!3235) (index!19808 lt!237850)) (select (arr!15929 a!3235) j!176)))))

(assert (=> b!519278 (and (bvslt (x!48805 lt!237850) #b01111111111111111111111111111110) (or (= (select (arr!15929 a!3235) (index!19808 lt!237850)) (select (arr!15929 a!3235) j!176)) (= (select (arr!15929 a!3235) (index!19808 lt!237850)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15929 a!3235) (index!19808 lt!237850)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519279 () Bool)

(assert (=> b!519279 (= e!302985 e!302984)))

(declare-fun res!317970 () Bool)

(assert (=> b!519279 (=> (not res!317970) (not e!302984))))

(declare-fun lt!237852 () SeekEntryResult!4403)

(assert (=> b!519279 (= res!317970 (or (= lt!237852 (MissingZero!4403 i!1204)) (= lt!237852 (MissingVacant!4403 i!1204))))))

(assert (=> b!519279 (= lt!237852 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!519280 () Bool)

(assert (=> b!519280 (= e!302984 (not e!302983))))

(declare-fun res!317961 () Bool)

(assert (=> b!519280 (=> res!317961 e!302983)))

(declare-fun lt!237851 () (_ BitVec 32))

(assert (=> b!519280 (= res!317961 (= lt!237850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237851 lt!237856 lt!237855 mask!3524)))))

(assert (=> b!519280 (= lt!237850 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237849 (select (arr!15929 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519280 (= lt!237851 (toIndex!0 lt!237856 mask!3524))))

(assert (=> b!519280 (= lt!237856 (select (store (arr!15929 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!519280 (= lt!237849 (toIndex!0 (select (arr!15929 a!3235) j!176) mask!3524))))

(assert (=> b!519280 (= lt!237855 (array!33144 (store (arr!15929 a!3235) i!1204 k!2280) (size!16293 a!3235)))))

(assert (=> b!519280 e!302981))

(declare-fun res!317964 () Bool)

(assert (=> b!519280 (=> (not res!317964) (not e!302981))))

(assert (=> b!519280 (= res!317964 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!237857 () Unit!16078)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16078)

(assert (=> b!519280 (= lt!237857 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!519281 () Bool)

(declare-fun res!317963 () Bool)

(assert (=> b!519281 (=> res!317963 e!302983)))

(assert (=> b!519281 (= res!317963 (or (undefined!5215 lt!237850) (not (is-Intermediate!4403 lt!237850))))))

(assert (= (and start!47168 res!317968) b!519277))

(assert (= (and b!519277 res!317971) b!519276))

(assert (= (and b!519276 res!317966) b!519274))

(assert (= (and b!519274 res!317967) b!519271))

(assert (= (and b!519271 res!317969) b!519279))

(assert (= (and b!519279 res!317970) b!519268))

(assert (= (and b!519268 res!317962) b!519269))

(assert (= (and b!519269 res!317972) b!519280))

(assert (= (and b!519280 res!317964) b!519272))

(assert (= (and b!519280 (not res!317961)) b!519281))

(assert (= (and b!519281 (not res!317963)) b!519278))

(assert (= (and b!519278 c!60950) b!519273))

(assert (= (and b!519278 (not c!60950)) b!519275))

(assert (= (and b!519273 res!317965) b!519270))

(declare-fun m!500497 () Bool)

(assert (=> b!519269 m!500497))

(declare-fun m!500499 () Bool)

(assert (=> b!519271 m!500499))

(declare-fun m!500501 () Bool)

(assert (=> b!519268 m!500501))

(declare-fun m!500503 () Bool)

(assert (=> start!47168 m!500503))

(declare-fun m!500505 () Bool)

(assert (=> start!47168 m!500505))

(declare-fun m!500507 () Bool)

(assert (=> b!519272 m!500507))

(assert (=> b!519272 m!500507))

(declare-fun m!500509 () Bool)

(assert (=> b!519272 m!500509))

(assert (=> b!519276 m!500507))

(assert (=> b!519276 m!500507))

(declare-fun m!500511 () Bool)

(assert (=> b!519276 m!500511))

(declare-fun m!500513 () Bool)

(assert (=> b!519274 m!500513))

(declare-fun m!500515 () Bool)

(assert (=> b!519278 m!500515))

(assert (=> b!519278 m!500507))

(declare-fun m!500517 () Bool)

(assert (=> b!519273 m!500517))

(declare-fun m!500519 () Bool)

(assert (=> b!519273 m!500519))

(declare-fun m!500521 () Bool)

(assert (=> b!519280 m!500521))

(declare-fun m!500523 () Bool)

(assert (=> b!519280 m!500523))

(declare-fun m!500525 () Bool)

(assert (=> b!519280 m!500525))

(declare-fun m!500527 () Bool)

(assert (=> b!519280 m!500527))

(declare-fun m!500529 () Bool)

(assert (=> b!519280 m!500529))

(assert (=> b!519280 m!500507))

(declare-fun m!500531 () Bool)

(assert (=> b!519280 m!500531))

(assert (=> b!519280 m!500507))

(declare-fun m!500533 () Bool)

(assert (=> b!519280 m!500533))

(assert (=> b!519280 m!500507))

(declare-fun m!500535 () Bool)

(assert (=> b!519280 m!500535))

(declare-fun m!500537 () Bool)

(assert (=> b!519279 m!500537))

(push 1)

(assert (not b!519280))

(assert (not b!519276))

(assert (not start!47168))

(assert (not b!519273))

(assert (not b!519274))

(assert (not b!519279))

(assert (not b!519268))

(assert (not b!519269))

(assert (not b!519271))

(assert (not b!519272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!79959 () Bool)

(assert (=> d!79959 (= (validKeyInArray!0 (select (arr!15929 a!3235) j!176)) (and (not (= (select (arr!15929 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15929 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519276 d!79959))

(declare-fun d!79961 () Bool)

(declare-fun lt!237881 () (_ BitVec 32))

(declare-fun lt!237880 () (_ BitVec 32))

(assert (=> d!79961 (= lt!237881 (bvmul (bvxor lt!237880 (bvlshr lt!237880 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79961 (= lt!237880 ((_ extract 31 0) (bvand (bvxor (select (arr!15929 a!3235) j!176) (bvlshr (select (arr!15929 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79961 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317997 (let ((h!11050 ((_ extract 31 0) (bvand (bvxor (select (arr!15929 a!3235) j!176) (bvlshr (select (arr!15929 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48806 (bvmul (bvxor h!11050 (bvlshr h!11050 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48806 (bvlshr x!48806 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317997 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317997 #b00000000000000000000000000000000))))))

(assert (=> d!79961 (= (toIndex!0 (select (arr!15929 a!3235) j!176) mask!3524) (bvand (bvxor lt!237881 (bvlshr lt!237881 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519280 d!79961))

(declare-fun b!519371 () Bool)

(declare-fun e!303049 () Bool)

(declare-fun call!31754 () Bool)

(assert (=> b!519371 (= e!303049 call!31754)))

(declare-fun b!519372 () Bool)

(declare-fun e!303048 () Bool)

(assert (=> b!519372 (= e!303048 call!31754)))

(declare-fun bm!31751 () Bool)

(assert (=> bm!31751 (= call!31754 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!519373 () Bool)

(declare-fun e!303050 () Bool)

(assert (=> b!519373 (= e!303050 e!303048)))

(declare-fun c!60977 () Bool)

(assert (=> b!519373 (= c!60977 (validKeyInArray!0 (select (arr!15929 a!3235) j!176)))))

(declare-fun b!519374 () Bool)

(assert (=> b!519374 (= e!303048 e!303049)))

(declare-fun lt!237897 () (_ BitVec 64))

(assert (=> b!519374 (= lt!237897 (select (arr!15929 a!3235) j!176))))

(declare-fun lt!237896 () Unit!16078)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33143 (_ BitVec 64) (_ BitVec 32)) Unit!16078)

(assert (=> b!519374 (= lt!237896 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237897 j!176))))

(assert (=> b!519374 (arrayContainsKey!0 a!3235 lt!237897 #b00000000000000000000000000000000)))

(declare-fun lt!237895 () Unit!16078)

(assert (=> b!519374 (= lt!237895 lt!237896)))

(declare-fun res!318012 () Bool)

(assert (=> b!519374 (= res!318012 (= (seekEntryOrOpen!0 (select (arr!15929 a!3235) j!176) a!3235 mask!3524) (Found!4403 j!176)))))

(assert (=> b!519374 (=> (not res!318012) (not e!303049))))

(declare-fun d!79963 () Bool)

(declare-fun res!318011 () Bool)

(assert (=> d!79963 (=> res!318011 e!303050)))

(assert (=> d!79963 (= res!318011 (bvsge j!176 (size!16293 a!3235)))))

(assert (=> d!79963 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!303050)))

(assert (= (and d!79963 (not res!318011)) b!519373))

(assert (= (and b!519373 c!60977) b!519374))

(assert (= (and b!519373 (not c!60977)) b!519372))

(assert (= (and b!519374 res!318012) b!519371))

(assert (= (or b!519371 b!519372) bm!31751))

(declare-fun m!500579 () Bool)

(assert (=> bm!31751 m!500579))

(assert (=> b!519373 m!500507))

(assert (=> b!519373 m!500507))

(assert (=> b!519373 m!500511))

(assert (=> b!519374 m!500507))

(declare-fun m!500581 () Bool)

(assert (=> b!519374 m!500581))

(declare-fun m!500583 () Bool)

(assert (=> b!519374 m!500583))

(assert (=> b!519374 m!500507))

(assert (=> b!519374 m!500509))

(assert (=> b!519280 d!79963))

(declare-fun b!519442 () Bool)

(declare-fun e!303092 () Bool)

(declare-fun lt!237927 () SeekEntryResult!4403)

(assert (=> b!519442 (= e!303092 (bvsge (x!48805 lt!237927) #b01111111111111111111111111111110))))

(declare-fun b!519443 () Bool)

(assert (=> b!519443 (and (bvsge (index!19808 lt!237927) #b00000000000000000000000000000000) (bvslt (index!19808 lt!237927) (size!16293 lt!237855)))))

(declare-fun e!303089 () Bool)

(assert (=> b!519443 (= e!303089 (= (select (arr!15929 lt!237855) (index!19808 lt!237927)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519445 () Bool)

(declare-fun e!303093 () SeekEntryResult!4403)

(declare-fun e!303090 () SeekEntryResult!4403)

(assert (=> b!519445 (= e!303093 e!303090)))

(declare-fun c!61002 () Bool)

(declare-fun lt!237926 () (_ BitVec 64))

(assert (=> b!519445 (= c!61002 (or (= lt!237926 lt!237856) (= (bvadd lt!237926 lt!237926) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519446 () Bool)

(declare-fun e!303091 () Bool)

(assert (=> b!519446 (= e!303092 e!303091)))

(declare-fun res!318038 () Bool)

(assert (=> b!519446 (= res!318038 (and (is-Intermediate!4403 lt!237927) (not (undefined!5215 lt!237927)) (bvslt (x!48805 lt!237927) #b01111111111111111111111111111110) (bvsge (x!48805 lt!237927) #b00000000000000000000000000000000) (bvsge (x!48805 lt!237927) #b00000000000000000000000000000000)))))

(assert (=> b!519446 (=> (not res!318038) (not e!303091))))

(declare-fun b!519447 () Bool)

(assert (=> b!519447 (= e!303090 (Intermediate!4403 false lt!237851 #b00000000000000000000000000000000))))

(declare-fun b!519448 () Bool)

(assert (=> b!519448 (and (bvsge (index!19808 lt!237927) #b00000000000000000000000000000000) (bvslt (index!19808 lt!237927) (size!16293 lt!237855)))))

(declare-fun res!318039 () Bool)

(assert (=> b!519448 (= res!318039 (= (select (arr!15929 lt!237855) (index!19808 lt!237927)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519448 (=> res!318039 e!303089)))

(declare-fun d!79967 () Bool)

(assert (=> d!79967 e!303092))

(declare-fun c!61000 () Bool)

(assert (=> d!79967 (= c!61000 (and (is-Intermediate!4403 lt!237927) (undefined!5215 lt!237927)))))

(assert (=> d!79967 (= lt!237927 e!303093)))

(declare-fun c!61001 () Bool)

(assert (=> d!79967 (= c!61001 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79967 (= lt!237926 (select (arr!15929 lt!237855) lt!237851))))

(assert (=> d!79967 (validMask!0 mask!3524)))

(assert (=> d!79967 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237851 lt!237856 lt!237855 mask!3524) lt!237927)))

(declare-fun b!519444 () Bool)

(assert (=> b!519444 (and (bvsge (index!19808 lt!237927) #b00000000000000000000000000000000) (bvslt (index!19808 lt!237927) (size!16293 lt!237855)))))

(declare-fun res!318037 () Bool)

(assert (=> b!519444 (= res!318037 (= (select (arr!15929 lt!237855) (index!19808 lt!237927)) lt!237856))))

(assert (=> b!519444 (=> res!318037 e!303089)))

(assert (=> b!519444 (= e!303091 e!303089)))

(declare-fun b!519449 () Bool)

(assert (=> b!519449 (= e!303093 (Intermediate!4403 true lt!237851 #b00000000000000000000000000000000))))

(declare-fun b!519450 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!519450 (= e!303090 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237851 #b00000000000000000000000000000000 mask!3524) lt!237856 lt!237855 mask!3524))))

(assert (= (and d!79967 c!61001) b!519449))

(assert (= (and d!79967 (not c!61001)) b!519445))

(assert (= (and b!519445 c!61002) b!519447))

(assert (= (and b!519445 (not c!61002)) b!519450))

(assert (= (and d!79967 c!61000) b!519442))

(assert (= (and d!79967 (not c!61000)) b!519446))

(assert (= (and b!519446 res!318038) b!519444))

(assert (= (and b!519444 (not res!318037)) b!519448))

(assert (= (and b!519448 (not res!318039)) b!519443))

(declare-fun m!500617 () Bool)

(assert (=> b!519450 m!500617))

(assert (=> b!519450 m!500617))

(declare-fun m!500619 () Bool)

(assert (=> b!519450 m!500619))

(declare-fun m!500621 () Bool)

(assert (=> b!519443 m!500621))

(assert (=> b!519448 m!500621))

(assert (=> b!519444 m!500621))

(declare-fun m!500623 () Bool)

(assert (=> d!79967 m!500623))

(assert (=> d!79967 m!500503))

(assert (=> b!519280 d!79967))

(declare-fun b!519451 () Bool)

(declare-fun e!303097 () Bool)

(declare-fun lt!237929 () SeekEntryResult!4403)

(assert (=> b!519451 (= e!303097 (bvsge (x!48805 lt!237929) #b01111111111111111111111111111110))))

(declare-fun b!519452 () Bool)

(assert (=> b!519452 (and (bvsge (index!19808 lt!237929) #b00000000000000000000000000000000) (bvslt (index!19808 lt!237929) (size!16293 a!3235)))))

(declare-fun e!303094 () Bool)

(assert (=> b!519452 (= e!303094 (= (select (arr!15929 a!3235) (index!19808 lt!237929)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519454 () Bool)

(declare-fun e!303098 () SeekEntryResult!4403)

(declare-fun e!303095 () SeekEntryResult!4403)

(assert (=> b!519454 (= e!303098 e!303095)))

(declare-fun lt!237928 () (_ BitVec 64))

(declare-fun c!61005 () Bool)

(assert (=> b!519454 (= c!61005 (or (= lt!237928 (select (arr!15929 a!3235) j!176)) (= (bvadd lt!237928 lt!237928) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519455 () Bool)

(declare-fun e!303096 () Bool)

(assert (=> b!519455 (= e!303097 e!303096)))

(declare-fun res!318041 () Bool)

(assert (=> b!519455 (= res!318041 (and (is-Intermediate!4403 lt!237929) (not (undefined!5215 lt!237929)) (bvslt (x!48805 lt!237929) #b01111111111111111111111111111110) (bvsge (x!48805 lt!237929) #b00000000000000000000000000000000) (bvsge (x!48805 lt!237929) #b00000000000000000000000000000000)))))

(assert (=> b!519455 (=> (not res!318041) (not e!303096))))

(declare-fun b!519456 () Bool)

(assert (=> b!519456 (= e!303095 (Intermediate!4403 false lt!237849 #b00000000000000000000000000000000))))

(declare-fun b!519457 () Bool)

(assert (=> b!519457 (and (bvsge (index!19808 lt!237929) #b00000000000000000000000000000000) (bvslt (index!19808 lt!237929) (size!16293 a!3235)))))

(declare-fun res!318042 () Bool)

(assert (=> b!519457 (= res!318042 (= (select (arr!15929 a!3235) (index!19808 lt!237929)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519457 (=> res!318042 e!303094)))

(declare-fun d!79985 () Bool)

(assert (=> d!79985 e!303097))

(declare-fun c!61003 () Bool)

(assert (=> d!79985 (= c!61003 (and (is-Intermediate!4403 lt!237929) (undefined!5215 lt!237929)))))

(assert (=> d!79985 (= lt!237929 e!303098)))

(declare-fun c!61004 () Bool)

(assert (=> d!79985 (= c!61004 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79985 (= lt!237928 (select (arr!15929 a!3235) lt!237849))))

(assert (=> d!79985 (validMask!0 mask!3524)))

(assert (=> d!79985 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237849 (select (arr!15929 a!3235) j!176) a!3235 mask!3524) lt!237929)))

(declare-fun b!519453 () Bool)

(assert (=> b!519453 (and (bvsge (index!19808 lt!237929) #b00000000000000000000000000000000) (bvslt (index!19808 lt!237929) (size!16293 a!3235)))))

(declare-fun res!318040 () Bool)

(assert (=> b!519453 (= res!318040 (= (select (arr!15929 a!3235) (index!19808 lt!237929)) (select (arr!15929 a!3235) j!176)))))

(assert (=> b!519453 (=> res!318040 e!303094)))

(assert (=> b!519453 (= e!303096 e!303094)))

(declare-fun b!519458 () Bool)

(assert (=> b!519458 (= e!303098 (Intermediate!4403 true lt!237849 #b00000000000000000000000000000000))))

(declare-fun b!519459 () Bool)

(assert (=> b!519459 (= e!303095 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!237849 #b00000000000000000000000000000000 mask!3524) (select (arr!15929 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!79985 c!61004) b!519458))

(assert (= (and d!79985 (not c!61004)) b!519454))

(assert (= (and b!519454 c!61005) b!519456))

(assert (= (and b!519454 (not c!61005)) b!519459))

(assert (= (and d!79985 c!61003) b!519451))

(assert (= (and d!79985 (not c!61003)) b!519455))

(assert (= (and b!519455 res!318041) b!519453))

(assert (= (and b!519453 (not res!318040)) b!519457))

(assert (= (and b!519457 (not res!318042)) b!519452))

(declare-fun m!500625 () Bool)

(assert (=> b!519459 m!500625))

(assert (=> b!519459 m!500625))

(assert (=> b!519459 m!500507))

(declare-fun m!500627 () Bool)

(assert (=> b!519459 m!500627))

(declare-fun m!500629 () Bool)

(assert (=> b!519452 m!500629))

(assert (=> b!519457 m!500629))

(assert (=> b!519453 m!500629))

(declare-fun m!500631 () Bool)

(assert (=> d!79985 m!500631))

(assert (=> d!79985 m!500503))

(assert (=> b!519280 d!79985))

(declare-fun d!79987 () Bool)

(assert (=> d!79987 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!237932 () Unit!16078)

(declare-fun choose!38 (array!33143 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16078)

(assert (=> d!79987 (= lt!237932 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79987 (validMask!0 mask!3524)))

(assert (=> d!79987 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!237932)))

(declare-fun bs!16372 () Bool)

(assert (= bs!16372 d!79987))

(assert (=> bs!16372 m!500533))

(declare-fun m!500633 () Bool)

(assert (=> bs!16372 m!500633))

(assert (=> bs!16372 m!500503))

(assert (=> b!519280 d!79987))

(declare-fun d!79993 () Bool)

(declare-fun lt!237934 () (_ BitVec 32))

(declare-fun lt!237933 () (_ BitVec 32))

(assert (=> d!79993 (= lt!237934 (bvmul (bvxor lt!237933 (bvlshr lt!237933 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79993 (= lt!237933 ((_ extract 31 0) (bvand (bvxor lt!237856 (bvlshr lt!237856 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79993 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!317997 (let ((h!11050 ((_ extract 31 0) (bvand (bvxor lt!237856 (bvlshr lt!237856 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48806 (bvmul (bvxor h!11050 (bvlshr h!11050 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48806 (bvlshr x!48806 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!317997 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!317997 #b00000000000000000000000000000000))))))

(assert (=> d!79993 (= (toIndex!0 lt!237856 mask!3524) (bvand (bvxor lt!237934 (bvlshr lt!237934 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!519280 d!79993))

(declare-fun d!79995 () Bool)

(assert (=> d!79995 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47168 d!79995))

(declare-fun d!80003 () Bool)

(assert (=> d!80003 (= (array_inv!11703 a!3235) (bvsge (size!16293 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47168 d!80003))

(declare-fun b!519512 () Bool)

(declare-fun e!303139 () Bool)

(declare-fun contains!2762 (List!10140 (_ BitVec 64)) Bool)

(assert (=> b!519512 (= e!303139 (contains!2762 Nil!10137 (select (arr!15929 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519513 () Bool)

(declare-fun e!303142 () Bool)

(declare-fun e!303141 () Bool)

(assert (=> b!519513 (= e!303142 e!303141)))

(declare-fun res!318073 () Bool)

(assert (=> b!519513 (=> (not res!318073) (not e!303141))))

(assert (=> b!519513 (= res!318073 (not e!303139))))

(declare-fun res!318074 () Bool)

(assert (=> b!519513 (=> (not res!318074) (not e!303139))))

(assert (=> b!519513 (= res!318074 (validKeyInArray!0 (select (arr!15929 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31758 () Bool)

(declare-fun call!31761 () Bool)

(declare-fun c!61017 () Bool)

(assert (=> bm!31758 (= call!31761 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61017 (Cons!10136 (select (arr!15929 a!3235) #b00000000000000000000000000000000) Nil!10137) Nil!10137)))))

(declare-fun b!519514 () Bool)

(declare-fun e!303140 () Bool)

(assert (=> b!519514 (= e!303140 call!31761)))

(declare-fun d!80005 () Bool)

(declare-fun res!318075 () Bool)

(assert (=> d!80005 (=> res!318075 e!303142)))

(assert (=> d!80005 (= res!318075 (bvsge #b00000000000000000000000000000000 (size!16293 a!3235)))))

(assert (=> d!80005 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10137) e!303142)))

(declare-fun b!519515 () Bool)

(assert (=> b!519515 (= e!303140 call!31761)))

(declare-fun b!519516 () Bool)

(assert (=> b!519516 (= e!303141 e!303140)))

(assert (=> b!519516 (= c!61017 (validKeyInArray!0 (select (arr!15929 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!80005 (not res!318075)) b!519513))

(assert (= (and b!519513 res!318074) b!519512))

(assert (= (and b!519513 res!318073) b!519516))

(assert (= (and b!519516 c!61017) b!519514))

(assert (= (and b!519516 (not c!61017)) b!519515))

(assert (= (or b!519514 b!519515) bm!31758))

(declare-fun m!500671 () Bool)

(assert (=> b!519512 m!500671))

(assert (=> b!519512 m!500671))

(declare-fun m!500673 () Bool)

(assert (=> b!519512 m!500673))

(assert (=> b!519513 m!500671))

(assert (=> b!519513 m!500671))

(declare-fun m!500675 () Bool)

(assert (=> b!519513 m!500675))

(assert (=> bm!31758 m!500671))

(declare-fun m!500677 () Bool)

(assert (=> bm!31758 m!500677))

(assert (=> b!519516 m!500671))

(assert (=> b!519516 m!500671))

(assert (=> b!519516 m!500675))

(assert (=> b!519269 d!80005))

(declare-fun d!80017 () Bool)

(assert (=> d!80017 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!519274 d!80017))

(declare-fun b!519547 () Bool)

(declare-fun c!61035 () Bool)

(declare-fun lt!237969 () (_ BitVec 64))

(assert (=> b!519547 (= c!61035 (= lt!237969 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303158 () SeekEntryResult!4403)

(declare-fun e!303160 () SeekEntryResult!4403)

(assert (=> b!519547 (= e!303158 e!303160)))

(declare-fun b!519548 () Bool)

(declare-fun lt!237968 () SeekEntryResult!4403)

(assert (=> b!519548 (= e!303158 (Found!4403 (index!19808 lt!237968)))))

(declare-fun b!519549 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33143 (_ BitVec 32)) SeekEntryResult!4403)

(assert (=> b!519549 (= e!303160 (seekKeyOrZeroReturnVacant!0 (x!48805 lt!237968) (index!19808 lt!237968) (index!19808 lt!237968) k!2280 a!3235 mask!3524))))

(declare-fun b!519550 () Bool)

(declare-fun e!303159 () SeekEntryResult!4403)

(assert (=> b!519550 (= e!303159 Undefined!4403)))

(declare-fun d!80019 () Bool)

(declare-fun lt!237967 () SeekEntryResult!4403)

(assert (=> d!80019 (and (or (is-Undefined!4403 lt!237967) (not (is-Found!4403 lt!237967)) (and (bvsge (index!19807 lt!237967) #b00000000000000000000000000000000) (bvslt (index!19807 lt!237967) (size!16293 a!3235)))) (or (is-Undefined!4403 lt!237967) (is-Found!4403 lt!237967) (not (is-MissingZero!4403 lt!237967)) (and (bvsge (index!19806 lt!237967) #b00000000000000000000000000000000) (bvslt (index!19806 lt!237967) (size!16293 a!3235)))) (or (is-Undefined!4403 lt!237967) (is-Found!4403 lt!237967) (is-MissingZero!4403 lt!237967) (not (is-MissingVacant!4403 lt!237967)) (and (bvsge (index!19809 lt!237967) #b00000000000000000000000000000000) (bvslt (index!19809 lt!237967) (size!16293 a!3235)))) (or (is-Undefined!4403 lt!237967) (ite (is-Found!4403 lt!237967) (= (select (arr!15929 a!3235) (index!19807 lt!237967)) k!2280) (ite (is-MissingZero!4403 lt!237967) (= (select (arr!15929 a!3235) (index!19806 lt!237967)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4403 lt!237967) (= (select (arr!15929 a!3235) (index!19809 lt!237967)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80019 (= lt!237967 e!303159)))

(declare-fun c!61033 () Bool)

(assert (=> d!80019 (= c!61033 (and (is-Intermediate!4403 lt!237968) (undefined!5215 lt!237968)))))

(assert (=> d!80019 (= lt!237968 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80019 (validMask!0 mask!3524)))

(assert (=> d!80019 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!237967)))

(declare-fun b!519551 () Bool)

(assert (=> b!519551 (= e!303159 e!303158)))

(assert (=> b!519551 (= lt!237969 (select (arr!15929 a!3235) (index!19808 lt!237968)))))

(declare-fun c!61034 () Bool)

(assert (=> b!519551 (= c!61034 (= lt!237969 k!2280))))

(declare-fun b!519552 () Bool)

(assert (=> b!519552 (= e!303160 (MissingZero!4403 (index!19808 lt!237968)))))

(assert (= (and d!80019 c!61033) b!519550))

(assert (= (and d!80019 (not c!61033)) b!519551))

(assert (= (and b!519551 c!61034) b!519548))

(assert (= (and b!519551 (not c!61034)) b!519547))

(assert (= (and b!519547 c!61035) b!519552))

(assert (= (and b!519547 (not c!61035)) b!519549))

(declare-fun m!500691 () Bool)

(assert (=> b!519549 m!500691))

(declare-fun m!500693 () Bool)

(assert (=> d!80019 m!500693))

(declare-fun m!500695 () Bool)

(assert (=> d!80019 m!500695))

(declare-fun m!500697 () Bool)

(assert (=> d!80019 m!500697))

(assert (=> d!80019 m!500695))

(declare-fun m!500699 () Bool)

(assert (=> d!80019 m!500699))

(declare-fun m!500701 () Bool)

(assert (=> d!80019 m!500701))

(assert (=> d!80019 m!500503))

(declare-fun m!500703 () Bool)

(assert (=> b!519551 m!500703))

(assert (=> b!519279 d!80019))

(declare-fun b!519553 () Bool)

(declare-fun e!303162 () Bool)

(declare-fun call!31762 () Bool)

(assert (=> b!519553 (= e!303162 call!31762)))

(declare-fun b!519554 () Bool)

(declare-fun e!303161 () Bool)

(assert (=> b!519554 (= e!303161 call!31762)))

(declare-fun bm!31759 () Bool)

(assert (=> bm!31759 (= call!31762 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!519555 () Bool)

(declare-fun e!303163 () Bool)

(assert (=> b!519555 (= e!303163 e!303161)))

(declare-fun c!61036 () Bool)

(assert (=> b!519555 (= c!61036 (validKeyInArray!0 (select (arr!15929 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!519556 () Bool)

(assert (=> b!519556 (= e!303161 e!303162)))

(declare-fun lt!237972 () (_ BitVec 64))

(assert (=> b!519556 (= lt!237972 (select (arr!15929 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!237971 () Unit!16078)

(assert (=> b!519556 (= lt!237971 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!237972 #b00000000000000000000000000000000))))

(assert (=> b!519556 (arrayContainsKey!0 a!3235 lt!237972 #b00000000000000000000000000000000)))

(declare-fun lt!237970 () Unit!16078)

(assert (=> b!519556 (= lt!237970 lt!237971)))

(declare-fun res!318078 () Bool)

(assert (=> b!519556 (= res!318078 (= (seekEntryOrOpen!0 (select (arr!15929 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4403 #b00000000000000000000000000000000)))))

(assert (=> b!519556 (=> (not res!318078) (not e!303162))))

(declare-fun d!80023 () Bool)

(declare-fun res!318077 () Bool)

(assert (=> d!80023 (=> res!318077 e!303163)))

(assert (=> d!80023 (= res!318077 (bvsge #b00000000000000000000000000000000 (size!16293 a!3235)))))

(assert (=> d!80023 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!303163)))

(assert (= (and d!80023 (not res!318077)) b!519555))

(assert (= (and b!519555 c!61036) b!519556))

(assert (= (and b!519555 (not c!61036)) b!519554))

(assert (= (and b!519556 res!318078) b!519553))

(assert (= (or b!519553 b!519554) bm!31759))

(declare-fun m!500705 () Bool)

(assert (=> bm!31759 m!500705))

(assert (=> b!519555 m!500671))

(assert (=> b!519555 m!500671))

(assert (=> b!519555 m!500675))

(assert (=> b!519556 m!500671))

(declare-fun m!500707 () Bool)

(assert (=> b!519556 m!500707))

(declare-fun m!500709 () Bool)

(assert (=> b!519556 m!500709))

(assert (=> b!519556 m!500671))

(declare-fun m!500711 () Bool)

(assert (=> b!519556 m!500711))

(assert (=> b!519268 d!80023))

(declare-fun d!80025 () Bool)

(declare-fun e!303182 () Bool)

(assert (=> d!80025 e!303182))

(declare-fun res!318089 () Bool)

(assert (=> d!80025 (=> (not res!318089) (not e!303182))))

(assert (=> d!80025 (= res!318089 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16293 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16293 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16293 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16293 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16293 a!3235))))))

(declare-fun lt!237996 () Unit!16078)

(declare-fun choose!47 (array!33143 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16078)

(assert (=> d!80025 (= lt!237996 (choose!47 a!3235 i!1204 k!2280 j!176 lt!237849 #b00000000000000000000000000000000 (index!19808 lt!237850) (x!48805 lt!237850) mask!3524))))

(assert (=> d!80025 (validMask!0 mask!3524)))

(assert (=> d!80025 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!237849 #b00000000000000000000000000000000 (index!19808 lt!237850) (x!48805 lt!237850) mask!3524) lt!237996)))

(declare-fun b!519587 () Bool)

(assert (=> b!519587 (= e!303182 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!237849 (select (store (arr!15929 a!3235) i!1204 k!2280) j!176) (array!33144 (store (arr!15929 a!3235) i!1204 k!2280) (size!16293 a!3235)) mask!3524) (Intermediate!4403 false (index!19808 lt!237850) (x!48805 lt!237850))))))

(assert (= (and d!80025 res!318089) b!519587))

(declare-fun m!500749 () Bool)

(assert (=> d!80025 m!500749))

(assert (=> d!80025 m!500503))

(assert (=> b!519587 m!500523))

(assert (=> b!519587 m!500527))

(assert (=> b!519587 m!500527))

(declare-fun m!500751 () Bool)

(assert (=> b!519587 m!500751))

(assert (=> b!519273 d!80025))

(declare-fun b!519588 () Bool)

(declare-fun e!303186 () Bool)

(declare-fun lt!237998 () SeekEntryResult!4403)

(assert (=> b!519588 (= e!303186 (bvsge (x!48805 lt!237998) #b01111111111111111111111111111110))))

(declare-fun b!519589 () Bool)

(assert (=> b!519589 (and (bvsge (index!19808 lt!237998) #b00000000000000000000000000000000) (bvslt (index!19808 lt!237998) (size!16293 lt!237855)))))

(declare-fun e!303183 () Bool)

(assert (=> b!519589 (= e!303183 (= (select (arr!15929 lt!237855) (index!19808 lt!237998)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!519591 () Bool)

(declare-fun e!303187 () SeekEntryResult!4403)

(declare-fun e!303184 () SeekEntryResult!4403)

(assert (=> b!519591 (= e!303187 e!303184)))

(declare-fun c!61049 () Bool)

(declare-fun lt!237997 () (_ BitVec 64))

(assert (=> b!519591 (= c!61049 (or (= lt!237997 lt!237856) (= (bvadd lt!237997 lt!237997) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!519592 () Bool)

(declare-fun e!303185 () Bool)

(assert (=> b!519592 (= e!303186 e!303185)))

(declare-fun res!318091 () Bool)

(assert (=> b!519592 (= res!318091 (and (is-Intermediate!4403 lt!237998) (not (undefined!5215 lt!237998)) (bvslt (x!48805 lt!237998) #b01111111111111111111111111111110) (bvsge (x!48805 lt!237998) #b00000000000000000000000000000000) (bvsge (x!48805 lt!237998) #b00000000000000000000000000000000)))))

(assert (=> b!519592 (=> (not res!318091) (not e!303185))))

(declare-fun b!519593 () Bool)

(assert (=> b!519593 (= e!303184 (Intermediate!4403 false lt!237849 #b00000000000000000000000000000000))))

(declare-fun b!519594 () Bool)

(assert (=> b!519594 (and (bvsge (index!19808 lt!237998) #b00000000000000000000000000000000) (bvslt (index!19808 lt!237998) (size!16293 lt!237855)))))

(declare-fun res!318092 () Bool)

(assert (=> b!519594 (= res!318092 (= (select (arr!15929 lt!237855) (index!19808 lt!237998)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!519594 (=> res!318092 e!303183)))

(declare-fun d!80043 () Bool)

(assert (=> d!80043 e!303186))

(declare-fun c!61047 () Bool)

(assert (=> d!80043 (= c!61047 (and (is-Intermediate!4403 lt!237998) (undefined!5215 lt!237998)))))

(assert (=> d!80043 (= lt!237998 e!303187)))

(declare-fun c!61048 () Bool)

(assert (=> d!80043 (= c!61048 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

