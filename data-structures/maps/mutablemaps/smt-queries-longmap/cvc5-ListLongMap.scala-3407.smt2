; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47308 () Bool)

(assert start!47308)

(declare-fun res!318367 () Bool)

(declare-fun e!303490 () Bool)

(assert (=> start!47308 (=> (not res!318367) (not e!303490))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47308 (= res!318367 (validMask!0 mask!3524))))

(assert (=> start!47308 e!303490))

(assert (=> start!47308 true))

(declare-datatypes ((array!33157 0))(
  ( (array!33158 (arr!15933 (Array (_ BitVec 32) (_ BitVec 64))) (size!16297 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33157)

(declare-fun array_inv!11707 (array!33157) Bool)

(assert (=> start!47308 (array_inv!11707 a!3235)))

(declare-fun b!520090 () Bool)

(declare-fun res!318364 () Bool)

(assert (=> b!520090 (=> (not res!318364) (not e!303490))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520090 (= res!318364 (validKeyInArray!0 (select (arr!15933 a!3235) j!176)))))

(declare-fun b!520091 () Bool)

(declare-fun res!318357 () Bool)

(assert (=> b!520091 (=> (not res!318357) (not e!303490))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520091 (= res!318357 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520092 () Bool)

(declare-datatypes ((Unit!16094 0))(
  ( (Unit!16095) )
))
(declare-fun e!303487 () Unit!16094)

(declare-fun Unit!16096 () Unit!16094)

(assert (=> b!520092 (= e!303487 Unit!16096)))

(declare-fun lt!238250 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!238245 () Unit!16094)

(declare-datatypes ((SeekEntryResult!4407 0))(
  ( (MissingZero!4407 (index!19828 (_ BitVec 32))) (Found!4407 (index!19829 (_ BitVec 32))) (Intermediate!4407 (undefined!5219 Bool) (index!19830 (_ BitVec 32)) (x!48843 (_ BitVec 32))) (Undefined!4407) (MissingVacant!4407 (index!19831 (_ BitVec 32))) )
))
(declare-fun lt!238246 () SeekEntryResult!4407)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33157 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16094)

(assert (=> b!520092 (= lt!238245 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238250 #b00000000000000000000000000000000 (index!19830 lt!238246) (x!48843 lt!238246) mask!3524))))

(declare-fun res!318359 () Bool)

(declare-fun lt!238253 () array!33157)

(declare-fun lt!238247 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33157 (_ BitVec 32)) SeekEntryResult!4407)

(assert (=> b!520092 (= res!318359 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238250 lt!238247 lt!238253 mask!3524) (Intermediate!4407 false (index!19830 lt!238246) (x!48843 lt!238246))))))

(declare-fun e!303486 () Bool)

(assert (=> b!520092 (=> (not res!318359) (not e!303486))))

(assert (=> b!520092 e!303486))

(declare-fun b!520093 () Bool)

(declare-fun e!303485 () Bool)

(assert (=> b!520093 (= e!303490 e!303485)))

(declare-fun res!318368 () Bool)

(assert (=> b!520093 (=> (not res!318368) (not e!303485))))

(declare-fun lt!238252 () SeekEntryResult!4407)

(assert (=> b!520093 (= res!318368 (or (= lt!238252 (MissingZero!4407 i!1204)) (= lt!238252 (MissingVacant!4407 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33157 (_ BitVec 32)) SeekEntryResult!4407)

(assert (=> b!520093 (= lt!238252 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!520094 () Bool)

(declare-fun Unit!16097 () Unit!16094)

(assert (=> b!520094 (= e!303487 Unit!16097)))

(declare-fun b!520095 () Bool)

(declare-fun res!318363 () Bool)

(declare-fun e!303488 () Bool)

(assert (=> b!520095 (=> res!318363 e!303488)))

(assert (=> b!520095 (= res!318363 (or (undefined!5219 lt!238246) (not (is-Intermediate!4407 lt!238246))))))

(declare-fun b!520096 () Bool)

(assert (=> b!520096 (= e!303488 (and (bvsge (index!19830 lt!238246) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238246) (size!16297 a!3235))))))

(assert (=> b!520096 (and (or (= (select (arr!15933 a!3235) (index!19830 lt!238246)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15933 a!3235) (index!19830 lt!238246)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15933 a!3235) (index!19830 lt!238246)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!238251 () Unit!16094)

(assert (=> b!520096 (= lt!238251 e!303487)))

(declare-fun c!61166 () Bool)

(assert (=> b!520096 (= c!61166 (= (select (arr!15933 a!3235) (index!19830 lt!238246)) (select (arr!15933 a!3235) j!176)))))

(assert (=> b!520096 (and (bvslt (x!48843 lt!238246) #b01111111111111111111111111111110) (or (= (select (arr!15933 a!3235) (index!19830 lt!238246)) (select (arr!15933 a!3235) j!176)) (= (select (arr!15933 a!3235) (index!19830 lt!238246)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15933 a!3235) (index!19830 lt!238246)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520097 () Bool)

(declare-fun e!303489 () Bool)

(assert (=> b!520097 (= e!303489 (= (seekEntryOrOpen!0 (select (arr!15933 a!3235) j!176) a!3235 mask!3524) (Found!4407 j!176)))))

(declare-fun b!520098 () Bool)

(assert (=> b!520098 (= e!303485 (not e!303488))))

(declare-fun res!318366 () Bool)

(assert (=> b!520098 (=> res!318366 e!303488)))

(declare-fun lt!238248 () (_ BitVec 32))

(assert (=> b!520098 (= res!318366 (= lt!238246 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238248 lt!238247 lt!238253 mask!3524)))))

(assert (=> b!520098 (= lt!238246 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238250 (select (arr!15933 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520098 (= lt!238248 (toIndex!0 lt!238247 mask!3524))))

(assert (=> b!520098 (= lt!238247 (select (store (arr!15933 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!520098 (= lt!238250 (toIndex!0 (select (arr!15933 a!3235) j!176) mask!3524))))

(assert (=> b!520098 (= lt!238253 (array!33158 (store (arr!15933 a!3235) i!1204 k!2280) (size!16297 a!3235)))))

(assert (=> b!520098 e!303489))

(declare-fun res!318362 () Bool)

(assert (=> b!520098 (=> (not res!318362) (not e!303489))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33157 (_ BitVec 32)) Bool)

(assert (=> b!520098 (= res!318362 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!238249 () Unit!16094)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16094)

(assert (=> b!520098 (= lt!238249 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520099 () Bool)

(declare-fun res!318358 () Bool)

(assert (=> b!520099 (=> (not res!318358) (not e!303490))))

(assert (=> b!520099 (= res!318358 (and (= (size!16297 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16297 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16297 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520100 () Bool)

(declare-fun res!318361 () Bool)

(assert (=> b!520100 (=> (not res!318361) (not e!303485))))

(assert (=> b!520100 (= res!318361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520101 () Bool)

(declare-fun res!318365 () Bool)

(assert (=> b!520101 (=> (not res!318365) (not e!303485))))

(declare-datatypes ((List!10144 0))(
  ( (Nil!10141) (Cons!10140 (h!11059 (_ BitVec 64)) (t!16380 List!10144)) )
))
(declare-fun arrayNoDuplicates!0 (array!33157 (_ BitVec 32) List!10144) Bool)

(assert (=> b!520101 (= res!318365 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10141))))

(declare-fun b!520102 () Bool)

(assert (=> b!520102 (= e!303486 false)))

(declare-fun b!520103 () Bool)

(declare-fun res!318360 () Bool)

(assert (=> b!520103 (=> (not res!318360) (not e!303490))))

(assert (=> b!520103 (= res!318360 (validKeyInArray!0 k!2280))))

(assert (= (and start!47308 res!318367) b!520099))

(assert (= (and b!520099 res!318358) b!520090))

(assert (= (and b!520090 res!318364) b!520103))

(assert (= (and b!520103 res!318360) b!520091))

(assert (= (and b!520091 res!318357) b!520093))

(assert (= (and b!520093 res!318368) b!520100))

(assert (= (and b!520100 res!318361) b!520101))

(assert (= (and b!520101 res!318365) b!520098))

(assert (= (and b!520098 res!318362) b!520097))

(assert (= (and b!520098 (not res!318366)) b!520095))

(assert (= (and b!520095 (not res!318363)) b!520096))

(assert (= (and b!520096 c!61166) b!520092))

(assert (= (and b!520096 (not c!61166)) b!520094))

(assert (= (and b!520092 res!318359) b!520102))

(declare-fun m!501133 () Bool)

(assert (=> b!520103 m!501133))

(declare-fun m!501135 () Bool)

(assert (=> b!520093 m!501135))

(declare-fun m!501137 () Bool)

(assert (=> b!520092 m!501137))

(declare-fun m!501139 () Bool)

(assert (=> b!520092 m!501139))

(declare-fun m!501141 () Bool)

(assert (=> b!520090 m!501141))

(assert (=> b!520090 m!501141))

(declare-fun m!501143 () Bool)

(assert (=> b!520090 m!501143))

(declare-fun m!501145 () Bool)

(assert (=> b!520098 m!501145))

(declare-fun m!501147 () Bool)

(assert (=> b!520098 m!501147))

(declare-fun m!501149 () Bool)

(assert (=> b!520098 m!501149))

(declare-fun m!501151 () Bool)

(assert (=> b!520098 m!501151))

(assert (=> b!520098 m!501141))

(declare-fun m!501153 () Bool)

(assert (=> b!520098 m!501153))

(declare-fun m!501155 () Bool)

(assert (=> b!520098 m!501155))

(assert (=> b!520098 m!501141))

(declare-fun m!501157 () Bool)

(assert (=> b!520098 m!501157))

(declare-fun m!501159 () Bool)

(assert (=> b!520098 m!501159))

(assert (=> b!520098 m!501141))

(declare-fun m!501161 () Bool)

(assert (=> b!520096 m!501161))

(assert (=> b!520096 m!501141))

(declare-fun m!501163 () Bool)

(assert (=> b!520101 m!501163))

(assert (=> b!520097 m!501141))

(assert (=> b!520097 m!501141))

(declare-fun m!501165 () Bool)

(assert (=> b!520097 m!501165))

(declare-fun m!501167 () Bool)

(assert (=> b!520100 m!501167))

(declare-fun m!501169 () Bool)

(assert (=> start!47308 m!501169))

(declare-fun m!501171 () Bool)

(assert (=> start!47308 m!501171))

(declare-fun m!501173 () Bool)

(assert (=> b!520091 m!501173))

(push 1)

(assert (not b!520103))

(assert (not b!520101))

(assert (not start!47308))

(assert (not b!520100))

(assert (not b!520092))

(assert (not b!520090))

(assert (not b!520093))

(assert (not b!520097))

(assert (not b!520098))

(assert (not b!520091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!80161 () Bool)

(declare-fun lt!238322 () (_ BitVec 32))

(declare-fun lt!238321 () (_ BitVec 32))

(assert (=> d!80161 (= lt!238322 (bvmul (bvxor lt!238321 (bvlshr lt!238321 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80161 (= lt!238321 ((_ extract 31 0) (bvand (bvxor (select (arr!15933 a!3235) j!176) (bvlshr (select (arr!15933 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80161 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318450 (let ((h!11062 ((_ extract 31 0) (bvand (bvxor (select (arr!15933 a!3235) j!176) (bvlshr (select (arr!15933 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48848 (bvmul (bvxor h!11062 (bvlshr h!11062 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48848 (bvlshr x!48848 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318450 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318450 #b00000000000000000000000000000000))))))

(assert (=> d!80161 (= (toIndex!0 (select (arr!15933 a!3235) j!176) mask!3524) (bvand (bvxor lt!238322 (bvlshr lt!238322 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!520098 d!80161))

(declare-fun b!520269 () Bool)

(declare-fun e!303584 () SeekEntryResult!4407)

(declare-fun e!303585 () SeekEntryResult!4407)

(assert (=> b!520269 (= e!303584 e!303585)))

(declare-fun c!61197 () Bool)

(declare-fun lt!238340 () (_ BitVec 64))

(assert (=> b!520269 (= c!61197 (or (= lt!238340 lt!238247) (= (bvadd lt!238340 lt!238340) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520270 () Bool)

(declare-fun lt!238339 () SeekEntryResult!4407)

(assert (=> b!520270 (and (bvsge (index!19830 lt!238339) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238339) (size!16297 lt!238253)))))

(declare-fun res!318477 () Bool)

(assert (=> b!520270 (= res!318477 (= (select (arr!15933 lt!238253) (index!19830 lt!238339)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303586 () Bool)

(assert (=> b!520270 (=> res!318477 e!303586)))

(declare-fun d!80167 () Bool)

(declare-fun e!303583 () Bool)

(assert (=> d!80167 e!303583))

(declare-fun c!61199 () Bool)

(assert (=> d!80167 (= c!61199 (and (is-Intermediate!4407 lt!238339) (undefined!5219 lt!238339)))))

(assert (=> d!80167 (= lt!238339 e!303584)))

(declare-fun c!61198 () Bool)

(assert (=> d!80167 (= c!61198 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80167 (= lt!238340 (select (arr!15933 lt!238253) lt!238248))))

(assert (=> d!80167 (validMask!0 mask!3524)))

(assert (=> d!80167 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238248 lt!238247 lt!238253 mask!3524) lt!238339)))

(declare-fun b!520271 () Bool)

(assert (=> b!520271 (= e!303583 (bvsge (x!48843 lt!238339) #b01111111111111111111111111111110))))

(declare-fun b!520272 () Bool)

(assert (=> b!520272 (= e!303585 (Intermediate!4407 false lt!238248 #b00000000000000000000000000000000))))

(declare-fun b!520273 () Bool)

(assert (=> b!520273 (and (bvsge (index!19830 lt!238339) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238339) (size!16297 lt!238253)))))

(assert (=> b!520273 (= e!303586 (= (select (arr!15933 lt!238253) (index!19830 lt!238339)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520274 () Bool)

(declare-fun e!303587 () Bool)

(assert (=> b!520274 (= e!303583 e!303587)))

(declare-fun res!318478 () Bool)

(assert (=> b!520274 (= res!318478 (and (is-Intermediate!4407 lt!238339) (not (undefined!5219 lt!238339)) (bvslt (x!48843 lt!238339) #b01111111111111111111111111111110) (bvsge (x!48843 lt!238339) #b00000000000000000000000000000000) (bvsge (x!48843 lt!238339) #b00000000000000000000000000000000)))))

(assert (=> b!520274 (=> (not res!318478) (not e!303587))))

(declare-fun b!520275 () Bool)

(assert (=> b!520275 (= e!303584 (Intermediate!4407 true lt!238248 #b00000000000000000000000000000000))))

(declare-fun b!520276 () Bool)

(assert (=> b!520276 (and (bvsge (index!19830 lt!238339) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238339) (size!16297 lt!238253)))))

(declare-fun res!318476 () Bool)

(assert (=> b!520276 (= res!318476 (= (select (arr!15933 lt!238253) (index!19830 lt!238339)) lt!238247))))

(assert (=> b!520276 (=> res!318476 e!303586)))

(assert (=> b!520276 (= e!303587 e!303586)))

(declare-fun b!520277 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520277 (= e!303585 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238248 #b00000000000000000000000000000000 mask!3524) lt!238247 lt!238253 mask!3524))))

(assert (= (and d!80167 c!61198) b!520275))

(assert (= (and d!80167 (not c!61198)) b!520269))

(assert (= (and b!520269 c!61197) b!520272))

(assert (= (and b!520269 (not c!61197)) b!520277))

(assert (= (and d!80167 c!61199) b!520271))

(assert (= (and d!80167 (not c!61199)) b!520274))

(assert (= (and b!520274 res!318478) b!520276))

(assert (= (and b!520276 (not res!318476)) b!520270))

(assert (= (and b!520270 (not res!318477)) b!520273))

(declare-fun m!501279 () Bool)

(assert (=> b!520270 m!501279))

(assert (=> b!520273 m!501279))

(declare-fun m!501281 () Bool)

(assert (=> b!520277 m!501281))

(assert (=> b!520277 m!501281))

(declare-fun m!501283 () Bool)

(assert (=> b!520277 m!501283))

(declare-fun m!501285 () Bool)

(assert (=> d!80167 m!501285))

(assert (=> d!80167 m!501169))

(assert (=> b!520276 m!501279))

(assert (=> b!520098 d!80167))

(declare-fun b!520319 () Bool)

(declare-fun e!303616 () Bool)

(declare-fun call!31790 () Bool)

(assert (=> b!520319 (= e!303616 call!31790)))

(declare-fun bm!31787 () Bool)

(assert (=> bm!31787 (= call!31790 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!520320 () Bool)

(declare-fun e!303615 () Bool)

(declare-fun e!303614 () Bool)

(assert (=> b!520320 (= e!303615 e!303614)))

(declare-fun c!61214 () Bool)

(assert (=> b!520320 (= c!61214 (validKeyInArray!0 (select (arr!15933 a!3235) j!176)))))

(declare-fun d!80175 () Bool)

(declare-fun res!318493 () Bool)

(assert (=> d!80175 (=> res!318493 e!303615)))

(assert (=> d!80175 (= res!318493 (bvsge j!176 (size!16297 a!3235)))))

(assert (=> d!80175 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!303615)))

(declare-fun b!520321 () Bool)

(assert (=> b!520321 (= e!303614 call!31790)))

(declare-fun b!520322 () Bool)

(assert (=> b!520322 (= e!303614 e!303616)))

(declare-fun lt!238363 () (_ BitVec 64))

(assert (=> b!520322 (= lt!238363 (select (arr!15933 a!3235) j!176))))

(declare-fun lt!238361 () Unit!16094)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33157 (_ BitVec 64) (_ BitVec 32)) Unit!16094)

(assert (=> b!520322 (= lt!238361 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238363 j!176))))

(assert (=> b!520322 (arrayContainsKey!0 a!3235 lt!238363 #b00000000000000000000000000000000)))

(declare-fun lt!238362 () Unit!16094)

(assert (=> b!520322 (= lt!238362 lt!238361)))

(declare-fun res!318492 () Bool)

(assert (=> b!520322 (= res!318492 (= (seekEntryOrOpen!0 (select (arr!15933 a!3235) j!176) a!3235 mask!3524) (Found!4407 j!176)))))

(assert (=> b!520322 (=> (not res!318492) (not e!303616))))

(assert (= (and d!80175 (not res!318493)) b!520320))

(assert (= (and b!520320 c!61214) b!520322))

(assert (= (and b!520320 (not c!61214)) b!520321))

(assert (= (and b!520322 res!318492) b!520319))

(assert (= (or b!520319 b!520321) bm!31787))

(declare-fun m!501311 () Bool)

(assert (=> bm!31787 m!501311))

(assert (=> b!520320 m!501141))

(assert (=> b!520320 m!501141))

(assert (=> b!520320 m!501143))

(assert (=> b!520322 m!501141))

(declare-fun m!501313 () Bool)

(assert (=> b!520322 m!501313))

(declare-fun m!501315 () Bool)

(assert (=> b!520322 m!501315))

(assert (=> b!520322 m!501141))

(assert (=> b!520322 m!501165))

(assert (=> b!520098 d!80175))

(declare-fun b!520323 () Bool)

(declare-fun e!303618 () SeekEntryResult!4407)

(declare-fun e!303619 () SeekEntryResult!4407)

(assert (=> b!520323 (= e!303618 e!303619)))

(declare-fun c!61215 () Bool)

(declare-fun lt!238365 () (_ BitVec 64))

(assert (=> b!520323 (= c!61215 (or (= lt!238365 (select (arr!15933 a!3235) j!176)) (= (bvadd lt!238365 lt!238365) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520324 () Bool)

(declare-fun lt!238364 () SeekEntryResult!4407)

(assert (=> b!520324 (and (bvsge (index!19830 lt!238364) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238364) (size!16297 a!3235)))))

(declare-fun res!318495 () Bool)

(assert (=> b!520324 (= res!318495 (= (select (arr!15933 a!3235) (index!19830 lt!238364)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303620 () Bool)

(assert (=> b!520324 (=> res!318495 e!303620)))

(declare-fun d!80187 () Bool)

(declare-fun e!303617 () Bool)

(assert (=> d!80187 e!303617))

(declare-fun c!61217 () Bool)

(assert (=> d!80187 (= c!61217 (and (is-Intermediate!4407 lt!238364) (undefined!5219 lt!238364)))))

(assert (=> d!80187 (= lt!238364 e!303618)))

(declare-fun c!61216 () Bool)

(assert (=> d!80187 (= c!61216 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80187 (= lt!238365 (select (arr!15933 a!3235) lt!238250))))

(assert (=> d!80187 (validMask!0 mask!3524)))

(assert (=> d!80187 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238250 (select (arr!15933 a!3235) j!176) a!3235 mask!3524) lt!238364)))

(declare-fun b!520325 () Bool)

(assert (=> b!520325 (= e!303617 (bvsge (x!48843 lt!238364) #b01111111111111111111111111111110))))

(declare-fun b!520326 () Bool)

(assert (=> b!520326 (= e!303619 (Intermediate!4407 false lt!238250 #b00000000000000000000000000000000))))

(declare-fun b!520327 () Bool)

(assert (=> b!520327 (and (bvsge (index!19830 lt!238364) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238364) (size!16297 a!3235)))))

(assert (=> b!520327 (= e!303620 (= (select (arr!15933 a!3235) (index!19830 lt!238364)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520328 () Bool)

(declare-fun e!303621 () Bool)

(assert (=> b!520328 (= e!303617 e!303621)))

(declare-fun res!318496 () Bool)

(assert (=> b!520328 (= res!318496 (and (is-Intermediate!4407 lt!238364) (not (undefined!5219 lt!238364)) (bvslt (x!48843 lt!238364) #b01111111111111111111111111111110) (bvsge (x!48843 lt!238364) #b00000000000000000000000000000000) (bvsge (x!48843 lt!238364) #b00000000000000000000000000000000)))))

(assert (=> b!520328 (=> (not res!318496) (not e!303621))))

(declare-fun b!520329 () Bool)

(assert (=> b!520329 (= e!303618 (Intermediate!4407 true lt!238250 #b00000000000000000000000000000000))))

(declare-fun b!520330 () Bool)

(assert (=> b!520330 (and (bvsge (index!19830 lt!238364) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238364) (size!16297 a!3235)))))

(declare-fun res!318494 () Bool)

(assert (=> b!520330 (= res!318494 (= (select (arr!15933 a!3235) (index!19830 lt!238364)) (select (arr!15933 a!3235) j!176)))))

(assert (=> b!520330 (=> res!318494 e!303620)))

(assert (=> b!520330 (= e!303621 e!303620)))

(declare-fun b!520331 () Bool)

(assert (=> b!520331 (= e!303619 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238250 #b00000000000000000000000000000000 mask!3524) (select (arr!15933 a!3235) j!176) a!3235 mask!3524))))

(assert (= (and d!80187 c!61216) b!520329))

(assert (= (and d!80187 (not c!61216)) b!520323))

(assert (= (and b!520323 c!61215) b!520326))

(assert (= (and b!520323 (not c!61215)) b!520331))

(assert (= (and d!80187 c!61217) b!520325))

(assert (= (and d!80187 (not c!61217)) b!520328))

(assert (= (and b!520328 res!318496) b!520330))

(assert (= (and b!520330 (not res!318494)) b!520324))

(assert (= (and b!520324 (not res!318495)) b!520327))

(declare-fun m!501317 () Bool)

(assert (=> b!520324 m!501317))

(assert (=> b!520327 m!501317))

(declare-fun m!501319 () Bool)

(assert (=> b!520331 m!501319))

(assert (=> b!520331 m!501319))

(assert (=> b!520331 m!501141))

(declare-fun m!501321 () Bool)

(assert (=> b!520331 m!501321))

(declare-fun m!501323 () Bool)

(assert (=> d!80187 m!501323))

(assert (=> d!80187 m!501169))

(assert (=> b!520330 m!501317))

(assert (=> b!520098 d!80187))

(declare-fun d!80189 () Bool)

(assert (=> d!80189 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!238374 () Unit!16094)

(declare-fun choose!38 (array!33157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16094)

(assert (=> d!80189 (= lt!238374 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80189 (validMask!0 mask!3524)))

(assert (=> d!80189 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!238374)))

(declare-fun bs!16384 () Bool)

(assert (= bs!16384 d!80189))

(assert (=> bs!16384 m!501155))

(declare-fun m!501325 () Bool)

(assert (=> bs!16384 m!501325))

(assert (=> bs!16384 m!501169))

(assert (=> b!520098 d!80189))

(declare-fun d!80191 () Bool)

(declare-fun lt!238376 () (_ BitVec 32))

(declare-fun lt!238375 () (_ BitVec 32))

(assert (=> d!80191 (= lt!238376 (bvmul (bvxor lt!238375 (bvlshr lt!238375 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80191 (= lt!238375 ((_ extract 31 0) (bvand (bvxor lt!238247 (bvlshr lt!238247 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80191 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!318450 (let ((h!11062 ((_ extract 31 0) (bvand (bvxor lt!238247 (bvlshr lt!238247 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48848 (bvmul (bvxor h!11062 (bvlshr h!11062 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48848 (bvlshr x!48848 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!318450 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!318450 #b00000000000000000000000000000000))))))

(assert (=> d!80191 (= (toIndex!0 lt!238247 mask!3524) (bvand (bvxor lt!238376 (bvlshr lt!238376 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!520098 d!80191))

(declare-fun b!520402 () Bool)

(declare-fun e!303665 () SeekEntryResult!4407)

(declare-fun e!303666 () SeekEntryResult!4407)

(assert (=> b!520402 (= e!303665 e!303666)))

(declare-fun lt!238416 () (_ BitVec 64))

(declare-fun lt!238417 () SeekEntryResult!4407)

(assert (=> b!520402 (= lt!238416 (select (arr!15933 a!3235) (index!19830 lt!238417)))))

(declare-fun c!61244 () Bool)

(assert (=> b!520402 (= c!61244 (= lt!238416 k!2280))))

(declare-fun e!303667 () SeekEntryResult!4407)

(declare-fun b!520403 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33157 (_ BitVec 32)) SeekEntryResult!4407)

(assert (=> b!520403 (= e!303667 (seekKeyOrZeroReturnVacant!0 (x!48843 lt!238417) (index!19830 lt!238417) (index!19830 lt!238417) k!2280 a!3235 mask!3524))))

(declare-fun d!80193 () Bool)

(declare-fun lt!238418 () SeekEntryResult!4407)

(assert (=> d!80193 (and (or (is-Undefined!4407 lt!238418) (not (is-Found!4407 lt!238418)) (and (bvsge (index!19829 lt!238418) #b00000000000000000000000000000000) (bvslt (index!19829 lt!238418) (size!16297 a!3235)))) (or (is-Undefined!4407 lt!238418) (is-Found!4407 lt!238418) (not (is-MissingZero!4407 lt!238418)) (and (bvsge (index!19828 lt!238418) #b00000000000000000000000000000000) (bvslt (index!19828 lt!238418) (size!16297 a!3235)))) (or (is-Undefined!4407 lt!238418) (is-Found!4407 lt!238418) (is-MissingZero!4407 lt!238418) (not (is-MissingVacant!4407 lt!238418)) (and (bvsge (index!19831 lt!238418) #b00000000000000000000000000000000) (bvslt (index!19831 lt!238418) (size!16297 a!3235)))) (or (is-Undefined!4407 lt!238418) (ite (is-Found!4407 lt!238418) (= (select (arr!15933 a!3235) (index!19829 lt!238418)) k!2280) (ite (is-MissingZero!4407 lt!238418) (= (select (arr!15933 a!3235) (index!19828 lt!238418)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4407 lt!238418) (= (select (arr!15933 a!3235) (index!19831 lt!238418)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80193 (= lt!238418 e!303665)))

(declare-fun c!61243 () Bool)

(assert (=> d!80193 (= c!61243 (and (is-Intermediate!4407 lt!238417) (undefined!5219 lt!238417)))))

(assert (=> d!80193 (= lt!238417 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!80193 (validMask!0 mask!3524)))

(assert (=> d!80193 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!238418)))

(declare-fun b!520404 () Bool)

(assert (=> b!520404 (= e!303666 (Found!4407 (index!19830 lt!238417)))))

(declare-fun b!520405 () Bool)

(assert (=> b!520405 (= e!303665 Undefined!4407)))

(declare-fun b!520406 () Bool)

(declare-fun c!61245 () Bool)

(assert (=> b!520406 (= c!61245 (= lt!238416 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!520406 (= e!303666 e!303667)))

(declare-fun b!520407 () Bool)

(assert (=> b!520407 (= e!303667 (MissingZero!4407 (index!19830 lt!238417)))))

(assert (= (and d!80193 c!61243) b!520405))

(assert (= (and d!80193 (not c!61243)) b!520402))

(assert (= (and b!520402 c!61244) b!520404))

(assert (= (and b!520402 (not c!61244)) b!520406))

(assert (= (and b!520406 c!61245) b!520407))

(assert (= (and b!520406 (not c!61245)) b!520403))

(declare-fun m!501363 () Bool)

(assert (=> b!520402 m!501363))

(declare-fun m!501365 () Bool)

(assert (=> b!520403 m!501365))

(assert (=> d!80193 m!501169))

(declare-fun m!501367 () Bool)

(assert (=> d!80193 m!501367))

(declare-fun m!501369 () Bool)

(assert (=> d!80193 m!501369))

(declare-fun m!501371 () Bool)

(assert (=> d!80193 m!501371))

(declare-fun m!501373 () Bool)

(assert (=> d!80193 m!501373))

(declare-fun m!501375 () Bool)

(assert (=> d!80193 m!501375))

(assert (=> d!80193 m!501371))

(assert (=> b!520093 d!80193))

(declare-fun d!80213 () Bool)

(assert (=> d!80213 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!47308 d!80213))

(declare-fun d!80227 () Bool)

(assert (=> d!80227 (= (array_inv!11707 a!3235) (bvsge (size!16297 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!47308 d!80227))

(declare-fun b!520433 () Bool)

(declare-fun e!303682 () SeekEntryResult!4407)

(declare-fun e!303683 () SeekEntryResult!4407)

(assert (=> b!520433 (= e!303682 e!303683)))

(declare-fun lt!238433 () (_ BitVec 64))

(declare-fun lt!238434 () SeekEntryResult!4407)

(assert (=> b!520433 (= lt!238433 (select (arr!15933 a!3235) (index!19830 lt!238434)))))

(declare-fun c!61257 () Bool)

(assert (=> b!520433 (= c!61257 (= lt!238433 (select (arr!15933 a!3235) j!176)))))

(declare-fun e!303684 () SeekEntryResult!4407)

(declare-fun b!520434 () Bool)

(assert (=> b!520434 (= e!303684 (seekKeyOrZeroReturnVacant!0 (x!48843 lt!238434) (index!19830 lt!238434) (index!19830 lt!238434) (select (arr!15933 a!3235) j!176) a!3235 mask!3524))))

(declare-fun d!80229 () Bool)

(declare-fun lt!238435 () SeekEntryResult!4407)

(assert (=> d!80229 (and (or (is-Undefined!4407 lt!238435) (not (is-Found!4407 lt!238435)) (and (bvsge (index!19829 lt!238435) #b00000000000000000000000000000000) (bvslt (index!19829 lt!238435) (size!16297 a!3235)))) (or (is-Undefined!4407 lt!238435) (is-Found!4407 lt!238435) (not (is-MissingZero!4407 lt!238435)) (and (bvsge (index!19828 lt!238435) #b00000000000000000000000000000000) (bvslt (index!19828 lt!238435) (size!16297 a!3235)))) (or (is-Undefined!4407 lt!238435) (is-Found!4407 lt!238435) (is-MissingZero!4407 lt!238435) (not (is-MissingVacant!4407 lt!238435)) (and (bvsge (index!19831 lt!238435) #b00000000000000000000000000000000) (bvslt (index!19831 lt!238435) (size!16297 a!3235)))) (or (is-Undefined!4407 lt!238435) (ite (is-Found!4407 lt!238435) (= (select (arr!15933 a!3235) (index!19829 lt!238435)) (select (arr!15933 a!3235) j!176)) (ite (is-MissingZero!4407 lt!238435) (= (select (arr!15933 a!3235) (index!19828 lt!238435)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4407 lt!238435) (= (select (arr!15933 a!3235) (index!19831 lt!238435)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80229 (= lt!238435 e!303682)))

(declare-fun c!61256 () Bool)

(assert (=> d!80229 (= c!61256 (and (is-Intermediate!4407 lt!238434) (undefined!5219 lt!238434)))))

(assert (=> d!80229 (= lt!238434 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15933 a!3235) j!176) mask!3524) (select (arr!15933 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80229 (validMask!0 mask!3524)))

(assert (=> d!80229 (= (seekEntryOrOpen!0 (select (arr!15933 a!3235) j!176) a!3235 mask!3524) lt!238435)))

(declare-fun b!520435 () Bool)

(assert (=> b!520435 (= e!303683 (Found!4407 (index!19830 lt!238434)))))

(declare-fun b!520436 () Bool)

(assert (=> b!520436 (= e!303682 Undefined!4407)))

(declare-fun b!520437 () Bool)

(declare-fun c!61258 () Bool)

(assert (=> b!520437 (= c!61258 (= lt!238433 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!520437 (= e!303683 e!303684)))

(declare-fun b!520438 () Bool)

(assert (=> b!520438 (= e!303684 (MissingZero!4407 (index!19830 lt!238434)))))

(assert (= (and d!80229 c!61256) b!520436))

(assert (= (and d!80229 (not c!61256)) b!520433))

(assert (= (and b!520433 c!61257) b!520435))

(assert (= (and b!520433 (not c!61257)) b!520437))

(assert (= (and b!520437 c!61258) b!520438))

(assert (= (and b!520437 (not c!61258)) b!520434))

(declare-fun m!501423 () Bool)

(assert (=> b!520433 m!501423))

(assert (=> b!520434 m!501141))

(declare-fun m!501425 () Bool)

(assert (=> b!520434 m!501425))

(assert (=> d!80229 m!501169))

(declare-fun m!501427 () Bool)

(assert (=> d!80229 m!501427))

(declare-fun m!501429 () Bool)

(assert (=> d!80229 m!501429))

(assert (=> d!80229 m!501153))

(assert (=> d!80229 m!501141))

(declare-fun m!501431 () Bool)

(assert (=> d!80229 m!501431))

(declare-fun m!501433 () Bool)

(assert (=> d!80229 m!501433))

(assert (=> d!80229 m!501141))

(assert (=> d!80229 m!501153))

(assert (=> b!520097 d!80229))

(declare-fun d!80231 () Bool)

(declare-fun e!303687 () Bool)

(assert (=> d!80231 e!303687))

(declare-fun res!318525 () Bool)

(assert (=> d!80231 (=> (not res!318525) (not e!303687))))

(assert (=> d!80231 (= res!318525 (and (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16297 a!3235)) (and (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16297 a!3235)))) (or (bvslt i!1204 #b00000000000000000000000000000000) (bvsge i!1204 (size!16297 a!3235)) (and (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16297 a!3235)))) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16297 a!3235))))))

(declare-fun lt!238438 () Unit!16094)

(declare-fun choose!47 (array!33157 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16094)

(assert (=> d!80231 (= lt!238438 (choose!47 a!3235 i!1204 k!2280 j!176 lt!238250 #b00000000000000000000000000000000 (index!19830 lt!238246) (x!48843 lt!238246) mask!3524))))

(assert (=> d!80231 (validMask!0 mask!3524)))

(assert (=> d!80231 (= (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238250 #b00000000000000000000000000000000 (index!19830 lt!238246) (x!48843 lt!238246) mask!3524) lt!238438)))

(declare-fun b!520441 () Bool)

(assert (=> b!520441 (= e!303687 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238250 (select (store (arr!15933 a!3235) i!1204 k!2280) j!176) (array!33158 (store (arr!15933 a!3235) i!1204 k!2280) (size!16297 a!3235)) mask!3524) (Intermediate!4407 false (index!19830 lt!238246) (x!48843 lt!238246))))))

(assert (= (and d!80231 res!318525) b!520441))

(declare-fun m!501435 () Bool)

(assert (=> d!80231 m!501435))

(assert (=> d!80231 m!501169))

(assert (=> b!520441 m!501145))

(assert (=> b!520441 m!501149))

(assert (=> b!520441 m!501149))

(declare-fun m!501437 () Bool)

(assert (=> b!520441 m!501437))

(assert (=> b!520092 d!80231))

(declare-fun b!520442 () Bool)

(declare-fun e!303689 () SeekEntryResult!4407)

(declare-fun e!303690 () SeekEntryResult!4407)

(assert (=> b!520442 (= e!303689 e!303690)))

(declare-fun c!61259 () Bool)

(declare-fun lt!238440 () (_ BitVec 64))

(assert (=> b!520442 (= c!61259 (or (= lt!238440 lt!238247) (= (bvadd lt!238440 lt!238440) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520443 () Bool)

(declare-fun lt!238439 () SeekEntryResult!4407)

(assert (=> b!520443 (and (bvsge (index!19830 lt!238439) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238439) (size!16297 lt!238253)))))

(declare-fun res!318527 () Bool)

(assert (=> b!520443 (= res!318527 (= (select (arr!15933 lt!238253) (index!19830 lt!238439)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!303691 () Bool)

(assert (=> b!520443 (=> res!318527 e!303691)))

(declare-fun d!80237 () Bool)

(declare-fun e!303688 () Bool)

(assert (=> d!80237 e!303688))

(declare-fun c!61261 () Bool)

(assert (=> d!80237 (= c!61261 (and (is-Intermediate!4407 lt!238439) (undefined!5219 lt!238439)))))

(assert (=> d!80237 (= lt!238439 e!303689)))

(declare-fun c!61260 () Bool)

(assert (=> d!80237 (= c!61260 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!80237 (= lt!238440 (select (arr!15933 lt!238253) lt!238250))))

(assert (=> d!80237 (validMask!0 mask!3524)))

(assert (=> d!80237 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238250 lt!238247 lt!238253 mask!3524) lt!238439)))

(declare-fun b!520444 () Bool)

(assert (=> b!520444 (= e!303688 (bvsge (x!48843 lt!238439) #b01111111111111111111111111111110))))

(declare-fun b!520445 () Bool)

(assert (=> b!520445 (= e!303690 (Intermediate!4407 false lt!238250 #b00000000000000000000000000000000))))

(declare-fun b!520446 () Bool)

(assert (=> b!520446 (and (bvsge (index!19830 lt!238439) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238439) (size!16297 lt!238253)))))

(assert (=> b!520446 (= e!303691 (= (select (arr!15933 lt!238253) (index!19830 lt!238439)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!520447 () Bool)

(declare-fun e!303692 () Bool)

(assert (=> b!520447 (= e!303688 e!303692)))

(declare-fun res!318528 () Bool)

(assert (=> b!520447 (= res!318528 (and (is-Intermediate!4407 lt!238439) (not (undefined!5219 lt!238439)) (bvslt (x!48843 lt!238439) #b01111111111111111111111111111110) (bvsge (x!48843 lt!238439) #b00000000000000000000000000000000) (bvsge (x!48843 lt!238439) #b00000000000000000000000000000000)))))

(assert (=> b!520447 (=> (not res!318528) (not e!303692))))

(declare-fun b!520448 () Bool)

(assert (=> b!520448 (= e!303689 (Intermediate!4407 true lt!238250 #b00000000000000000000000000000000))))

(declare-fun b!520449 () Bool)

(assert (=> b!520449 (and (bvsge (index!19830 lt!238439) #b00000000000000000000000000000000) (bvslt (index!19830 lt!238439) (size!16297 lt!238253)))))

(declare-fun res!318526 () Bool)

(assert (=> b!520449 (= res!318526 (= (select (arr!15933 lt!238253) (index!19830 lt!238439)) lt!238247))))

(assert (=> b!520449 (=> res!318526 e!303691)))

(assert (=> b!520449 (= e!303692 e!303691)))

(declare-fun b!520450 () Bool)

(assert (=> b!520450 (= e!303690 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!238250 #b00000000000000000000000000000000 mask!3524) lt!238247 lt!238253 mask!3524))))

(assert (= (and d!80237 c!61260) b!520448))

(assert (= (and d!80237 (not c!61260)) b!520442))

(assert (= (and b!520442 c!61259) b!520445))

(assert (= (and b!520442 (not c!61259)) b!520450))

(assert (= (and d!80237 c!61261) b!520444))

(assert (= (and d!80237 (not c!61261)) b!520447))

(assert (= (and b!520447 res!318528) b!520449))

(assert (= (and b!520449 (not res!318526)) b!520443))

(assert (= (and b!520443 (not res!318527)) b!520446))

(declare-fun m!501439 () Bool)

(assert (=> b!520443 m!501439))

(assert (=> b!520446 m!501439))

(assert (=> b!520450 m!501319))

(assert (=> b!520450 m!501319))

(declare-fun m!501441 () Bool)

(assert (=> b!520450 m!501441))

(declare-fun m!501443 () Bool)

(assert (=> d!80237 m!501443))

(assert (=> d!80237 m!501169))

(assert (=> b!520449 m!501439))

(assert (=> b!520092 d!80237))

(declare-fun d!80239 () Bool)

(assert (=> d!80239 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!520103 d!80239))

(declare-fun d!80241 () Bool)

(assert (=> d!80241 (= (validKeyInArray!0 (select (arr!15933 a!3235) j!176)) (and (not (= (select (arr!15933 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15933 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!520090 d!80241))

(declare-fun b!520479 () Bool)

(declare-fun e!303718 () Bool)

(declare-fun call!31801 () Bool)

(assert (=> b!520479 (= e!303718 call!31801)))

(declare-fun b!520480 () Bool)

(declare-fun e!303717 () Bool)

(assert (=> b!520480 (= e!303717 e!303718)))

(declare-fun c!61267 () Bool)

(assert (=> b!520480 (= c!61267 (validKeyInArray!0 (select (arr!15933 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80243 () Bool)

(declare-fun res!318549 () Bool)

(declare-fun e!303716 () Bool)

(assert (=> d!80243 (=> res!318549 e!303716)))

(assert (=> d!80243 (= res!318549 (bvsge #b00000000000000000000000000000000 (size!16297 a!3235)))))

(assert (=> d!80243 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10141) e!303716)))

(declare-fun b!520481 () Bool)

(declare-fun e!303715 () Bool)

(declare-fun contains!2767 (List!10144 (_ BitVec 64)) Bool)

(assert (=> b!520481 (= e!303715 (contains!2767 Nil!10141 (select (arr!15933 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!520482 () Bool)

(assert (=> b!520482 (= e!303718 call!31801)))

(declare-fun b!520483 () Bool)

(assert (=> b!520483 (= e!303716 e!303717)))

(declare-fun res!318547 () Bool)

(assert (=> b!520483 (=> (not res!318547) (not e!303717))))

(assert (=> b!520483 (= res!318547 (not e!303715))))

(declare-fun res!318548 () Bool)

(assert (=> b!520483 (=> (not res!318548) (not e!303715))))

(assert (=> b!520483 (= res!318548 (validKeyInArray!0 (select (arr!15933 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31798 () Bool)

(assert (=> bm!31798 (= call!31801 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!61267 (Cons!10140 (select (arr!15933 a!3235) #b00000000000000000000000000000000) Nil!10141) Nil!10141)))))

(assert (= (and d!80243 (not res!318549)) b!520483))

(assert (= (and b!520483 res!318548) b!520481))

(assert (= (and b!520483 res!318547) b!520480))

(assert (= (and b!520480 c!61267) b!520482))

(assert (= (and b!520480 (not c!61267)) b!520479))

(assert (= (or b!520482 b!520479) bm!31798))

(declare-fun m!501457 () Bool)

(assert (=> b!520480 m!501457))

(assert (=> b!520480 m!501457))

(declare-fun m!501459 () Bool)

(assert (=> b!520480 m!501459))

(assert (=> b!520481 m!501457))

(assert (=> b!520481 m!501457))

(declare-fun m!501461 () Bool)

(assert (=> b!520481 m!501461))

(assert (=> b!520483 m!501457))

(assert (=> b!520483 m!501457))

(assert (=> b!520483 m!501459))

(assert (=> bm!31798 m!501457))

(declare-fun m!501463 () Bool)

(assert (=> bm!31798 m!501463))

(assert (=> b!520101 d!80243))

(declare-fun d!80251 () Bool)

(declare-fun res!318560 () Bool)

(declare-fun e!303731 () Bool)

(assert (=> d!80251 (=> res!318560 e!303731)))

(assert (=> d!80251 (= res!318560 (= (select (arr!15933 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!80251 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!303731)))

(declare-fun b!520498 () Bool)

(declare-fun e!303732 () Bool)

(assert (=> b!520498 (= e!303731 e!303732)))

(declare-fun res!318561 () Bool)

(assert (=> b!520498 (=> (not res!318561) (not e!303732))))

(assert (=> b!520498 (= res!318561 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16297 a!3235)))))

(declare-fun b!520499 () Bool)

(assert (=> b!520499 (= e!303732 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80251 (not res!318560)) b!520498))

(assert (= (and b!520498 res!318561) b!520499))

(assert (=> d!80251 m!501457))

(declare-fun m!501465 () Bool)

(assert (=> b!520499 m!501465))

(assert (=> b!520091 d!80251))

(declare-fun b!520500 () Bool)

(declare-fun e!303735 () Bool)

(declare-fun call!31804 () Bool)

(assert (=> b!520500 (= e!303735 call!31804)))

(declare-fun bm!31801 () Bool)

(assert (=> bm!31801 (= call!31804 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!520501 () Bool)

(declare-fun e!303734 () Bool)

(declare-fun e!303733 () Bool)

(assert (=> b!520501 (= e!303734 e!303733)))

(declare-fun c!61270 () Bool)

(assert (=> b!520501 (= c!61270 (validKeyInArray!0 (select (arr!15933 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80253 () Bool)

(declare-fun res!318563 () Bool)

(assert (=> d!80253 (=> res!318563 e!303734)))

(assert (=> d!80253 (= res!318563 (bvsge #b00000000000000000000000000000000 (size!16297 a!3235)))))

(assert (=> d!80253 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!303734)))

(declare-fun b!520502 () Bool)

(assert (=> b!520502 (= e!303733 call!31804)))

(declare-fun b!520503 () Bool)

(assert (=> b!520503 (= e!303733 e!303735)))

(declare-fun lt!238448 () (_ BitVec 64))

(assert (=> b!520503 (= lt!238448 (select (arr!15933 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!238446 () Unit!16094)

(assert (=> b!520503 (= lt!238446 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!238448 #b00000000000000000000000000000000))))

(assert (=> b!520503 (arrayContainsKey!0 a!3235 lt!238448 #b00000000000000000000000000000000)))

(declare-fun lt!238447 () Unit!16094)

(assert (=> b!520503 (= lt!238447 lt!238446)))

(declare-fun res!318562 () Bool)

(assert (=> b!520503 (= res!318562 (= (seekEntryOrOpen!0 (select (arr!15933 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4407 #b00000000000000000000000000000000)))))

(assert (=> b!520503 (=> (not res!318562) (not e!303735))))

(assert (= (and d!80253 (not res!318563)) b!520501))

(assert (= (and b!520501 c!61270) b!520503))

(assert (= (and b!520501 (not c!61270)) b!520502))

(assert (= (and b!520503 res!318562) b!520500))

(assert (= (or b!520500 b!520502) bm!31801))

(declare-fun m!501467 () Bool)

(assert (=> bm!31801 m!501467))

(assert (=> b!520501 m!501457))

(assert (=> b!520501 m!501457))

(assert (=> b!520501 m!501459))

(assert (=> b!520503 m!501457))

(declare-fun m!501469 () Bool)

(assert (=> b!520503 m!501469))

(declare-fun m!501471 () Bool)

(assert (=> b!520503 m!501471))

(assert (=> b!520503 m!501457))

(declare-fun m!501473 () Bool)

(assert (=> b!520503 m!501473))

(assert (=> b!520100 d!80253))

(push 1)

(assert (not b!520483))

(assert (not b!520480))

(assert (not b!520331))

(assert (not d!80229))

(assert (not bm!31801))

(assert (not b!520322))

(assert (not b!520403))

(assert (not d!80167))

(assert (not bm!31798))

(assert (not b!520450))

(assert (not d!80187))

(assert (not b!520434))

(assert (not b!520320))

(assert (not b!520277))

(assert (not d!80193))

(assert (not d!80189))

(assert (not d!80231))

(assert (not d!80237))

(assert (not b!520499))

(assert (not b!520503))

(assert (not b!520501))

(assert (not b!520441))

(assert (not b!520481))

(assert (not bm!31787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

