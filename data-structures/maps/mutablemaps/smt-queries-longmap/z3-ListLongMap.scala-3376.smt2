; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46560 () Bool)

(assert start!46560)

(declare-fun b!514142 () Bool)

(declare-fun res!314222 () Bool)

(declare-fun e!300233 () Bool)

(assert (=> b!514142 (=> (not res!314222) (not e!300233))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32946 0))(
  ( (array!32947 (arr!15841 (Array (_ BitVec 32) (_ BitVec 64))) (size!16205 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32946)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!514142 (= res!314222 (and (= (size!16205 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16205 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16205 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!514143 () Bool)

(declare-fun e!300234 () Bool)

(declare-fun e!300231 () Bool)

(assert (=> b!514143 (= e!300234 (not e!300231))))

(declare-fun res!314228 () Bool)

(assert (=> b!514143 (=> res!314228 e!300231)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!235431 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4315 0))(
  ( (MissingZero!4315 (index!19448 (_ BitVec 32))) (Found!4315 (index!19449 (_ BitVec 32))) (Intermediate!4315 (undefined!5127 Bool) (index!19450 (_ BitVec 32)) (x!48437 (_ BitVec 32))) (Undefined!4315) (MissingVacant!4315 (index!19451 (_ BitVec 32))) )
))
(declare-fun lt!235430 () SeekEntryResult!4315)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32946 (_ BitVec 32)) SeekEntryResult!4315)

(assert (=> b!514143 (= res!314228 (= lt!235430 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235431 (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176) (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235)) mask!3524)))))

(declare-fun lt!235432 () (_ BitVec 32))

(assert (=> b!514143 (= lt!235430 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235432 (select (arr!15841 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514143 (= lt!235431 (toIndex!0 (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!514143 (= lt!235432 (toIndex!0 (select (arr!15841 a!3235) j!176) mask!3524))))

(declare-fun e!300235 () Bool)

(assert (=> b!514143 e!300235))

(declare-fun res!314221 () Bool)

(assert (=> b!514143 (=> (not res!314221) (not e!300235))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32946 (_ BitVec 32)) Bool)

(assert (=> b!514143 (= res!314221 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15880 0))(
  ( (Unit!15881) )
))
(declare-fun lt!235429 () Unit!15880)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32946 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15880)

(assert (=> b!514143 (= lt!235429 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!514144 () Bool)

(declare-fun res!314225 () Bool)

(assert (=> b!514144 (=> (not res!314225) (not e!300233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514144 (= res!314225 (validKeyInArray!0 (select (arr!15841 a!3235) j!176)))))

(declare-fun b!514145 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32946 (_ BitVec 32)) SeekEntryResult!4315)

(assert (=> b!514145 (= e!300235 (= (seekEntryOrOpen!0 (select (arr!15841 a!3235) j!176) a!3235 mask!3524) (Found!4315 j!176)))))

(declare-fun b!514146 () Bool)

(declare-fun res!314231 () Bool)

(assert (=> b!514146 (=> (not res!314231) (not e!300234))))

(declare-datatypes ((List!10052 0))(
  ( (Nil!10049) (Cons!10048 (h!10940 (_ BitVec 64)) (t!16288 List!10052)) )
))
(declare-fun arrayNoDuplicates!0 (array!32946 (_ BitVec 32) List!10052) Bool)

(assert (=> b!514146 (= res!314231 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10049))))

(declare-fun b!514147 () Bool)

(assert (=> b!514147 (= e!300231 (or (= (select (arr!15841 a!3235) (index!19450 lt!235430)) (select (arr!15841 a!3235) j!176)) (= (select (arr!15841 a!3235) (index!19450 lt!235430)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15841 a!3235) (index!19450 lt!235430)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!514147 (bvslt (x!48437 lt!235430) #b01111111111111111111111111111110)))

(declare-fun b!514148 () Bool)

(declare-fun res!314229 () Bool)

(assert (=> b!514148 (=> (not res!314229) (not e!300233))))

(assert (=> b!514148 (= res!314229 (validKeyInArray!0 k0!2280))))

(declare-fun b!514149 () Bool)

(declare-fun res!314224 () Bool)

(assert (=> b!514149 (=> (not res!314224) (not e!300234))))

(assert (=> b!514149 (= res!314224 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!514150 () Bool)

(assert (=> b!514150 (= e!300233 e!300234)))

(declare-fun res!314230 () Bool)

(assert (=> b!514150 (=> (not res!314230) (not e!300234))))

(declare-fun lt!235433 () SeekEntryResult!4315)

(assert (=> b!514150 (= res!314230 (or (= lt!235433 (MissingZero!4315 i!1204)) (= lt!235433 (MissingVacant!4315 i!1204))))))

(assert (=> b!514150 (= lt!235433 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!514151 () Bool)

(declare-fun res!314223 () Bool)

(assert (=> b!514151 (=> (not res!314223) (not e!300233))))

(declare-fun arrayContainsKey!0 (array!32946 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514151 (= res!314223 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!314227 () Bool)

(assert (=> start!46560 (=> (not res!314227) (not e!300233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46560 (= res!314227 (validMask!0 mask!3524))))

(assert (=> start!46560 e!300233))

(assert (=> start!46560 true))

(declare-fun array_inv!11615 (array!32946) Bool)

(assert (=> start!46560 (array_inv!11615 a!3235)))

(declare-fun b!514141 () Bool)

(declare-fun res!314226 () Bool)

(assert (=> b!514141 (=> res!314226 e!300231)))

(get-info :version)

(assert (=> b!514141 (= res!314226 (or (undefined!5127 lt!235430) (not ((_ is Intermediate!4315) lt!235430))))))

(assert (= (and start!46560 res!314227) b!514142))

(assert (= (and b!514142 res!314222) b!514144))

(assert (= (and b!514144 res!314225) b!514148))

(assert (= (and b!514148 res!314229) b!514151))

(assert (= (and b!514151 res!314223) b!514150))

(assert (= (and b!514150 res!314230) b!514149))

(assert (= (and b!514149 res!314224) b!514146))

(assert (= (and b!514146 res!314231) b!514143))

(assert (= (and b!514143 res!314221) b!514145))

(assert (= (and b!514143 (not res!314228)) b!514141))

(assert (= (and b!514141 (not res!314226)) b!514147))

(declare-fun m!495609 () Bool)

(assert (=> b!514151 m!495609))

(declare-fun m!495611 () Bool)

(assert (=> b!514150 m!495611))

(declare-fun m!495613 () Bool)

(assert (=> b!514149 m!495613))

(declare-fun m!495615 () Bool)

(assert (=> b!514147 m!495615))

(declare-fun m!495617 () Bool)

(assert (=> b!514147 m!495617))

(declare-fun m!495619 () Bool)

(assert (=> b!514148 m!495619))

(assert (=> b!514145 m!495617))

(assert (=> b!514145 m!495617))

(declare-fun m!495621 () Bool)

(assert (=> b!514145 m!495621))

(declare-fun m!495623 () Bool)

(assert (=> start!46560 m!495623))

(declare-fun m!495625 () Bool)

(assert (=> start!46560 m!495625))

(assert (=> b!514144 m!495617))

(assert (=> b!514144 m!495617))

(declare-fun m!495627 () Bool)

(assert (=> b!514144 m!495627))

(declare-fun m!495629 () Bool)

(assert (=> b!514146 m!495629))

(declare-fun m!495631 () Bool)

(assert (=> b!514143 m!495631))

(declare-fun m!495633 () Bool)

(assert (=> b!514143 m!495633))

(declare-fun m!495635 () Bool)

(assert (=> b!514143 m!495635))

(assert (=> b!514143 m!495617))

(declare-fun m!495637 () Bool)

(assert (=> b!514143 m!495637))

(assert (=> b!514143 m!495617))

(declare-fun m!495639 () Bool)

(assert (=> b!514143 m!495639))

(assert (=> b!514143 m!495617))

(declare-fun m!495641 () Bool)

(assert (=> b!514143 m!495641))

(assert (=> b!514143 m!495635))

(declare-fun m!495643 () Bool)

(assert (=> b!514143 m!495643))

(assert (=> b!514143 m!495635))

(declare-fun m!495645 () Bool)

(assert (=> b!514143 m!495645))

(check-sat (not b!514151) (not b!514149) (not b!514148) (not b!514146) (not start!46560) (not b!514144) (not b!514150) (not b!514145) (not b!514143))
(check-sat)
(get-model)

(declare-fun b!514195 () Bool)

(declare-fun e!300259 () Bool)

(declare-fun call!31598 () Bool)

(assert (=> b!514195 (= e!300259 call!31598)))

(declare-fun b!514196 () Bool)

(assert (=> b!514196 (= e!300259 call!31598)))

(declare-fun d!79235 () Bool)

(declare-fun res!314272 () Bool)

(declare-fun e!300262 () Bool)

(assert (=> d!79235 (=> res!314272 e!300262)))

(assert (=> d!79235 (= res!314272 (bvsge #b00000000000000000000000000000000 (size!16205 a!3235)))))

(assert (=> d!79235 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10049) e!300262)))

(declare-fun b!514197 () Bool)

(declare-fun e!300260 () Bool)

(assert (=> b!514197 (= e!300260 e!300259)))

(declare-fun c!60248 () Bool)

(assert (=> b!514197 (= c!60248 (validKeyInArray!0 (select (arr!15841 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514198 () Bool)

(assert (=> b!514198 (= e!300262 e!300260)))

(declare-fun res!314273 () Bool)

(assert (=> b!514198 (=> (not res!314273) (not e!300260))))

(declare-fun e!300261 () Bool)

(assert (=> b!514198 (= res!314273 (not e!300261))))

(declare-fun res!314271 () Bool)

(assert (=> b!514198 (=> (not res!314271) (not e!300261))))

(assert (=> b!514198 (= res!314271 (validKeyInArray!0 (select (arr!15841 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514199 () Bool)

(declare-fun contains!2742 (List!10052 (_ BitVec 64)) Bool)

(assert (=> b!514199 (= e!300261 (contains!2742 Nil!10049 (select (arr!15841 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31595 () Bool)

(assert (=> bm!31595 (= call!31598 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60248 (Cons!10048 (select (arr!15841 a!3235) #b00000000000000000000000000000000) Nil!10049) Nil!10049)))))

(assert (= (and d!79235 (not res!314272)) b!514198))

(assert (= (and b!514198 res!314271) b!514199))

(assert (= (and b!514198 res!314273) b!514197))

(assert (= (and b!514197 c!60248) b!514196))

(assert (= (and b!514197 (not c!60248)) b!514195))

(assert (= (or b!514196 b!514195) bm!31595))

(declare-fun m!495685 () Bool)

(assert (=> b!514197 m!495685))

(assert (=> b!514197 m!495685))

(declare-fun m!495687 () Bool)

(assert (=> b!514197 m!495687))

(assert (=> b!514198 m!495685))

(assert (=> b!514198 m!495685))

(assert (=> b!514198 m!495687))

(assert (=> b!514199 m!495685))

(assert (=> b!514199 m!495685))

(declare-fun m!495689 () Bool)

(assert (=> b!514199 m!495689))

(assert (=> bm!31595 m!495685))

(declare-fun m!495691 () Bool)

(assert (=> bm!31595 m!495691))

(assert (=> b!514146 d!79235))

(declare-fun d!79237 () Bool)

(assert (=> d!79237 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514148 d!79237))

(declare-fun d!79239 () Bool)

(declare-fun lt!235454 () (_ BitVec 32))

(declare-fun lt!235453 () (_ BitVec 32))

(assert (=> d!79239 (= lt!235454 (bvmul (bvxor lt!235453 (bvlshr lt!235453 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79239 (= lt!235453 ((_ extract 31 0) (bvand (bvxor (select (arr!15841 a!3235) j!176) (bvlshr (select (arr!15841 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79239 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314274 (let ((h!10942 ((_ extract 31 0) (bvand (bvxor (select (arr!15841 a!3235) j!176) (bvlshr (select (arr!15841 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48439 (bvmul (bvxor h!10942 (bvlshr h!10942 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48439 (bvlshr x!48439 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314274 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314274 #b00000000000000000000000000000000))))))

(assert (=> d!79239 (= (toIndex!0 (select (arr!15841 a!3235) j!176) mask!3524) (bvand (bvxor lt!235454 (bvlshr lt!235454 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514143 d!79239))

(declare-fun b!514208 () Bool)

(declare-fun e!300270 () Bool)

(declare-fun call!31601 () Bool)

(assert (=> b!514208 (= e!300270 call!31601)))

(declare-fun b!514209 () Bool)

(declare-fun e!300271 () Bool)

(declare-fun e!300269 () Bool)

(assert (=> b!514209 (= e!300271 e!300269)))

(declare-fun c!60251 () Bool)

(assert (=> b!514209 (= c!60251 (validKeyInArray!0 (select (arr!15841 a!3235) j!176)))))

(declare-fun d!79241 () Bool)

(declare-fun res!314280 () Bool)

(assert (=> d!79241 (=> res!314280 e!300271)))

(assert (=> d!79241 (= res!314280 (bvsge j!176 (size!16205 a!3235)))))

(assert (=> d!79241 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!300271)))

(declare-fun b!514210 () Bool)

(assert (=> b!514210 (= e!300269 call!31601)))

(declare-fun b!514211 () Bool)

(assert (=> b!514211 (= e!300269 e!300270)))

(declare-fun lt!235462 () (_ BitVec 64))

(assert (=> b!514211 (= lt!235462 (select (arr!15841 a!3235) j!176))))

(declare-fun lt!235463 () Unit!15880)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32946 (_ BitVec 64) (_ BitVec 32)) Unit!15880)

(assert (=> b!514211 (= lt!235463 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235462 j!176))))

(assert (=> b!514211 (arrayContainsKey!0 a!3235 lt!235462 #b00000000000000000000000000000000)))

(declare-fun lt!235461 () Unit!15880)

(assert (=> b!514211 (= lt!235461 lt!235463)))

(declare-fun res!314279 () Bool)

(assert (=> b!514211 (= res!314279 (= (seekEntryOrOpen!0 (select (arr!15841 a!3235) j!176) a!3235 mask!3524) (Found!4315 j!176)))))

(assert (=> b!514211 (=> (not res!314279) (not e!300270))))

(declare-fun bm!31598 () Bool)

(assert (=> bm!31598 (= call!31601 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79241 (not res!314280)) b!514209))

(assert (= (and b!514209 c!60251) b!514211))

(assert (= (and b!514209 (not c!60251)) b!514210))

(assert (= (and b!514211 res!314279) b!514208))

(assert (= (or b!514208 b!514210) bm!31598))

(assert (=> b!514209 m!495617))

(assert (=> b!514209 m!495617))

(assert (=> b!514209 m!495627))

(assert (=> b!514211 m!495617))

(declare-fun m!495693 () Bool)

(assert (=> b!514211 m!495693))

(declare-fun m!495695 () Bool)

(assert (=> b!514211 m!495695))

(assert (=> b!514211 m!495617))

(assert (=> b!514211 m!495621))

(declare-fun m!495697 () Bool)

(assert (=> bm!31598 m!495697))

(assert (=> b!514143 d!79241))

(declare-fun d!79243 () Bool)

(assert (=> d!79243 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235466 () Unit!15880)

(declare-fun choose!38 (array!32946 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15880)

(assert (=> d!79243 (= lt!235466 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79243 (validMask!0 mask!3524)))

(assert (=> d!79243 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235466)))

(declare-fun bs!16263 () Bool)

(assert (= bs!16263 d!79243))

(assert (=> bs!16263 m!495641))

(declare-fun m!495699 () Bool)

(assert (=> bs!16263 m!495699))

(assert (=> bs!16263 m!495623))

(assert (=> b!514143 d!79243))

(declare-fun d!79245 () Bool)

(declare-fun lt!235468 () (_ BitVec 32))

(declare-fun lt!235467 () (_ BitVec 32))

(assert (=> d!79245 (= lt!235468 (bvmul (bvxor lt!235467 (bvlshr lt!235467 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79245 (= lt!235467 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79245 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314274 (let ((h!10942 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48439 (bvmul (bvxor h!10942 (bvlshr h!10942 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48439 (bvlshr x!48439 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314274 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314274 #b00000000000000000000000000000000))))))

(assert (=> d!79245 (= (toIndex!0 (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!235468 (bvlshr lt!235468 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514143 d!79245))

(declare-fun b!514242 () Bool)

(declare-fun e!300288 () Bool)

(declare-fun e!300292 () Bool)

(assert (=> b!514242 (= e!300288 e!300292)))

(declare-fun res!314289 () Bool)

(declare-fun lt!235480 () SeekEntryResult!4315)

(assert (=> b!514242 (= res!314289 (and ((_ is Intermediate!4315) lt!235480) (not (undefined!5127 lt!235480)) (bvslt (x!48437 lt!235480) #b01111111111111111111111111111110) (bvsge (x!48437 lt!235480) #b00000000000000000000000000000000) (bvsge (x!48437 lt!235480) #b00000000000000000000000000000000)))))

(assert (=> b!514242 (=> (not res!314289) (not e!300292))))

(declare-fun b!514243 () Bool)

(assert (=> b!514243 (and (bvsge (index!19450 lt!235480) #b00000000000000000000000000000000) (bvslt (index!19450 lt!235480) (size!16205 (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235)))))))

(declare-fun e!300289 () Bool)

(assert (=> b!514243 (= e!300289 (= (select (arr!15841 (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235))) (index!19450 lt!235480)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514244 () Bool)

(assert (=> b!514244 (and (bvsge (index!19450 lt!235480) #b00000000000000000000000000000000) (bvslt (index!19450 lt!235480) (size!16205 (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235)))))))

(declare-fun res!314287 () Bool)

(assert (=> b!514244 (= res!314287 (= (select (arr!15841 (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235))) (index!19450 lt!235480)) (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176)))))

(assert (=> b!514244 (=> res!314287 e!300289)))

(assert (=> b!514244 (= e!300292 e!300289)))

(declare-fun b!514245 () Bool)

(assert (=> b!514245 (= e!300288 (bvsge (x!48437 lt!235480) #b01111111111111111111111111111110))))

(declare-fun b!514246 () Bool)

(assert (=> b!514246 (and (bvsge (index!19450 lt!235480) #b00000000000000000000000000000000) (bvslt (index!19450 lt!235480) (size!16205 (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235)))))))

(declare-fun res!314288 () Bool)

(assert (=> b!514246 (= res!314288 (= (select (arr!15841 (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235))) (index!19450 lt!235480)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514246 (=> res!314288 e!300289)))

(declare-fun d!79247 () Bool)

(assert (=> d!79247 e!300288))

(declare-fun c!60266 () Bool)

(assert (=> d!79247 (= c!60266 (and ((_ is Intermediate!4315) lt!235480) (undefined!5127 lt!235480)))))

(declare-fun e!300291 () SeekEntryResult!4315)

(assert (=> d!79247 (= lt!235480 e!300291)))

(declare-fun c!60265 () Bool)

(assert (=> d!79247 (= c!60265 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235479 () (_ BitVec 64))

(assert (=> d!79247 (= lt!235479 (select (arr!15841 (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235))) lt!235431))))

(assert (=> d!79247 (validMask!0 mask!3524)))

(assert (=> d!79247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235431 (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176) (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235)) mask!3524) lt!235480)))

(declare-fun b!514247 () Bool)

(declare-fun e!300290 () SeekEntryResult!4315)

(assert (=> b!514247 (= e!300290 (Intermediate!4315 false lt!235431 #b00000000000000000000000000000000))))

(declare-fun b!514248 () Bool)

(assert (=> b!514248 (= e!300291 e!300290)))

(declare-fun c!60264 () Bool)

(assert (=> b!514248 (= c!60264 (or (= lt!235479 (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!235479 lt!235479) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514249 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514249 (= e!300290 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235431 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15841 a!3235) i!1204 k0!2280) j!176) (array!32947 (store (arr!15841 a!3235) i!1204 k0!2280) (size!16205 a!3235)) mask!3524))))

(declare-fun b!514250 () Bool)

(assert (=> b!514250 (= e!300291 (Intermediate!4315 true lt!235431 #b00000000000000000000000000000000))))

(assert (= (and d!79247 c!60265) b!514250))

(assert (= (and d!79247 (not c!60265)) b!514248))

(assert (= (and b!514248 c!60264) b!514247))

(assert (= (and b!514248 (not c!60264)) b!514249))

(assert (= (and d!79247 c!60266) b!514245))

(assert (= (and d!79247 (not c!60266)) b!514242))

(assert (= (and b!514242 res!314289) b!514244))

(assert (= (and b!514244 (not res!314287)) b!514246))

(assert (= (and b!514246 (not res!314288)) b!514243))

(declare-fun m!495701 () Bool)

(assert (=> b!514249 m!495701))

(assert (=> b!514249 m!495701))

(assert (=> b!514249 m!495635))

(declare-fun m!495703 () Bool)

(assert (=> b!514249 m!495703))

(declare-fun m!495705 () Bool)

(assert (=> b!514243 m!495705))

(declare-fun m!495707 () Bool)

(assert (=> d!79247 m!495707))

(assert (=> d!79247 m!495623))

(assert (=> b!514246 m!495705))

(assert (=> b!514244 m!495705))

(assert (=> b!514143 d!79247))

(declare-fun b!514255 () Bool)

(declare-fun e!300295 () Bool)

(declare-fun e!300299 () Bool)

(assert (=> b!514255 (= e!300295 e!300299)))

(declare-fun res!314292 () Bool)

(declare-fun lt!235488 () SeekEntryResult!4315)

(assert (=> b!514255 (= res!314292 (and ((_ is Intermediate!4315) lt!235488) (not (undefined!5127 lt!235488)) (bvslt (x!48437 lt!235488) #b01111111111111111111111111111110) (bvsge (x!48437 lt!235488) #b00000000000000000000000000000000) (bvsge (x!48437 lt!235488) #b00000000000000000000000000000000)))))

(assert (=> b!514255 (=> (not res!314292) (not e!300299))))

(declare-fun b!514256 () Bool)

(assert (=> b!514256 (and (bvsge (index!19450 lt!235488) #b00000000000000000000000000000000) (bvslt (index!19450 lt!235488) (size!16205 a!3235)))))

(declare-fun e!300296 () Bool)

(assert (=> b!514256 (= e!300296 (= (select (arr!15841 a!3235) (index!19450 lt!235488)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514257 () Bool)

(assert (=> b!514257 (and (bvsge (index!19450 lt!235488) #b00000000000000000000000000000000) (bvslt (index!19450 lt!235488) (size!16205 a!3235)))))

(declare-fun res!314290 () Bool)

(assert (=> b!514257 (= res!314290 (= (select (arr!15841 a!3235) (index!19450 lt!235488)) (select (arr!15841 a!3235) j!176)))))

(assert (=> b!514257 (=> res!314290 e!300296)))

(assert (=> b!514257 (= e!300299 e!300296)))

(declare-fun b!514258 () Bool)

(assert (=> b!514258 (= e!300295 (bvsge (x!48437 lt!235488) #b01111111111111111111111111111110))))

(declare-fun b!514259 () Bool)

(assert (=> b!514259 (and (bvsge (index!19450 lt!235488) #b00000000000000000000000000000000) (bvslt (index!19450 lt!235488) (size!16205 a!3235)))))

(declare-fun res!314291 () Bool)

(assert (=> b!514259 (= res!314291 (= (select (arr!15841 a!3235) (index!19450 lt!235488)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514259 (=> res!314291 e!300296)))

(declare-fun d!79255 () Bool)

(assert (=> d!79255 e!300295))

(declare-fun c!60271 () Bool)

(assert (=> d!79255 (= c!60271 (and ((_ is Intermediate!4315) lt!235488) (undefined!5127 lt!235488)))))

(declare-fun e!300298 () SeekEntryResult!4315)

(assert (=> d!79255 (= lt!235488 e!300298)))

(declare-fun c!60270 () Bool)

(assert (=> d!79255 (= c!60270 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235487 () (_ BitVec 64))

(assert (=> d!79255 (= lt!235487 (select (arr!15841 a!3235) lt!235432))))

(assert (=> d!79255 (validMask!0 mask!3524)))

(assert (=> d!79255 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235432 (select (arr!15841 a!3235) j!176) a!3235 mask!3524) lt!235488)))

(declare-fun b!514260 () Bool)

(declare-fun e!300297 () SeekEntryResult!4315)

(assert (=> b!514260 (= e!300297 (Intermediate!4315 false lt!235432 #b00000000000000000000000000000000))))

(declare-fun b!514261 () Bool)

(assert (=> b!514261 (= e!300298 e!300297)))

(declare-fun c!60269 () Bool)

(assert (=> b!514261 (= c!60269 (or (= lt!235487 (select (arr!15841 a!3235) j!176)) (= (bvadd lt!235487 lt!235487) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514262 () Bool)

(assert (=> b!514262 (= e!300297 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235432 #b00000000000000000000000000000000 mask!3524) (select (arr!15841 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514263 () Bool)

(assert (=> b!514263 (= e!300298 (Intermediate!4315 true lt!235432 #b00000000000000000000000000000000))))

(assert (= (and d!79255 c!60270) b!514263))

(assert (= (and d!79255 (not c!60270)) b!514261))

(assert (= (and b!514261 c!60269) b!514260))

(assert (= (and b!514261 (not c!60269)) b!514262))

(assert (= (and d!79255 c!60271) b!514258))

(assert (= (and d!79255 (not c!60271)) b!514255))

(assert (= (and b!514255 res!314292) b!514257))

(assert (= (and b!514257 (not res!314290)) b!514259))

(assert (= (and b!514259 (not res!314291)) b!514256))

(declare-fun m!495709 () Bool)

(assert (=> b!514262 m!495709))

(assert (=> b!514262 m!495709))

(assert (=> b!514262 m!495617))

(declare-fun m!495711 () Bool)

(assert (=> b!514262 m!495711))

(declare-fun m!495713 () Bool)

(assert (=> b!514256 m!495713))

(declare-fun m!495715 () Bool)

(assert (=> d!79255 m!495715))

(assert (=> d!79255 m!495623))

(assert (=> b!514259 m!495713))

(assert (=> b!514257 m!495713))

(assert (=> b!514143 d!79255))

(declare-fun d!79257 () Bool)

(assert (=> d!79257 (= (validKeyInArray!0 (select (arr!15841 a!3235) j!176)) (and (not (= (select (arr!15841 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15841 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514144 d!79257))

(declare-fun b!514272 () Bool)

(declare-fun e!300305 () Bool)

(declare-fun call!31602 () Bool)

(assert (=> b!514272 (= e!300305 call!31602)))

(declare-fun b!514273 () Bool)

(declare-fun e!300306 () Bool)

(declare-fun e!300304 () Bool)

(assert (=> b!514273 (= e!300306 e!300304)))

(declare-fun c!60276 () Bool)

(assert (=> b!514273 (= c!60276 (validKeyInArray!0 (select (arr!15841 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79259 () Bool)

(declare-fun res!314294 () Bool)

(assert (=> d!79259 (=> res!314294 e!300306)))

(assert (=> d!79259 (= res!314294 (bvsge #b00000000000000000000000000000000 (size!16205 a!3235)))))

(assert (=> d!79259 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!300306)))

(declare-fun b!514274 () Bool)

(assert (=> b!514274 (= e!300304 call!31602)))

(declare-fun b!514275 () Bool)

(assert (=> b!514275 (= e!300304 e!300305)))

(declare-fun lt!235490 () (_ BitVec 64))

(assert (=> b!514275 (= lt!235490 (select (arr!15841 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235491 () Unit!15880)

(assert (=> b!514275 (= lt!235491 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235490 #b00000000000000000000000000000000))))

(assert (=> b!514275 (arrayContainsKey!0 a!3235 lt!235490 #b00000000000000000000000000000000)))

(declare-fun lt!235489 () Unit!15880)

(assert (=> b!514275 (= lt!235489 lt!235491)))

(declare-fun res!314293 () Bool)

(assert (=> b!514275 (= res!314293 (= (seekEntryOrOpen!0 (select (arr!15841 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4315 #b00000000000000000000000000000000)))))

(assert (=> b!514275 (=> (not res!314293) (not e!300305))))

(declare-fun bm!31599 () Bool)

(assert (=> bm!31599 (= call!31602 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79259 (not res!314294)) b!514273))

(assert (= (and b!514273 c!60276) b!514275))

(assert (= (and b!514273 (not c!60276)) b!514274))

(assert (= (and b!514275 res!314293) b!514272))

(assert (= (or b!514272 b!514274) bm!31599))

(assert (=> b!514273 m!495685))

(assert (=> b!514273 m!495685))

(assert (=> b!514273 m!495687))

(assert (=> b!514275 m!495685))

(declare-fun m!495717 () Bool)

(assert (=> b!514275 m!495717))

(declare-fun m!495719 () Bool)

(assert (=> b!514275 m!495719))

(assert (=> b!514275 m!495685))

(declare-fun m!495721 () Bool)

(assert (=> b!514275 m!495721))

(declare-fun m!495723 () Bool)

(assert (=> bm!31599 m!495723))

(assert (=> b!514149 d!79259))

(declare-fun d!79261 () Bool)

(declare-fun res!314300 () Bool)

(declare-fun e!300317 () Bool)

(assert (=> d!79261 (=> res!314300 e!300317)))

(assert (=> d!79261 (= res!314300 (= (select (arr!15841 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!79261 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!300317)))

(declare-fun b!514292 () Bool)

(declare-fun e!300318 () Bool)

(assert (=> b!514292 (= e!300317 e!300318)))

(declare-fun res!314301 () Bool)

(assert (=> b!514292 (=> (not res!314301) (not e!300318))))

(assert (=> b!514292 (= res!314301 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16205 a!3235)))))

(declare-fun b!514293 () Bool)

(assert (=> b!514293 (= e!300318 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79261 (not res!314300)) b!514292))

(assert (= (and b!514292 res!314301) b!514293))

(assert (=> d!79261 m!495685))

(declare-fun m!495737 () Bool)

(assert (=> b!514293 m!495737))

(assert (=> b!514151 d!79261))

(declare-fun d!79265 () Bool)

(assert (=> d!79265 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46560 d!79265))

(declare-fun d!79273 () Bool)

(assert (=> d!79273 (= (array_inv!11615 a!3235) (bvsge (size!16205 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46560 d!79273))

(declare-fun b!514356 () Bool)

(declare-fun e!300359 () SeekEntryResult!4315)

(declare-fun e!300358 () SeekEntryResult!4315)

(assert (=> b!514356 (= e!300359 e!300358)))

(declare-fun lt!235544 () (_ BitVec 64))

(declare-fun lt!235542 () SeekEntryResult!4315)

(assert (=> b!514356 (= lt!235544 (select (arr!15841 a!3235) (index!19450 lt!235542)))))

(declare-fun c!60306 () Bool)

(assert (=> b!514356 (= c!60306 (= lt!235544 k0!2280))))

(declare-fun e!300357 () SeekEntryResult!4315)

(declare-fun b!514357 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32946 (_ BitVec 32)) SeekEntryResult!4315)

(assert (=> b!514357 (= e!300357 (seekKeyOrZeroReturnVacant!0 (x!48437 lt!235542) (index!19450 lt!235542) (index!19450 lt!235542) k0!2280 a!3235 mask!3524))))

(declare-fun b!514358 () Bool)

(assert (=> b!514358 (= e!300359 Undefined!4315)))

(declare-fun b!514359 () Bool)

(assert (=> b!514359 (= e!300357 (MissingZero!4315 (index!19450 lt!235542)))))

(declare-fun b!514360 () Bool)

(declare-fun c!60307 () Bool)

(assert (=> b!514360 (= c!60307 (= lt!235544 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514360 (= e!300358 e!300357)))

(declare-fun b!514361 () Bool)

(assert (=> b!514361 (= e!300358 (Found!4315 (index!19450 lt!235542)))))

(declare-fun d!79275 () Bool)

(declare-fun lt!235543 () SeekEntryResult!4315)

(assert (=> d!79275 (and (or ((_ is Undefined!4315) lt!235543) (not ((_ is Found!4315) lt!235543)) (and (bvsge (index!19449 lt!235543) #b00000000000000000000000000000000) (bvslt (index!19449 lt!235543) (size!16205 a!3235)))) (or ((_ is Undefined!4315) lt!235543) ((_ is Found!4315) lt!235543) (not ((_ is MissingZero!4315) lt!235543)) (and (bvsge (index!19448 lt!235543) #b00000000000000000000000000000000) (bvslt (index!19448 lt!235543) (size!16205 a!3235)))) (or ((_ is Undefined!4315) lt!235543) ((_ is Found!4315) lt!235543) ((_ is MissingZero!4315) lt!235543) (not ((_ is MissingVacant!4315) lt!235543)) (and (bvsge (index!19451 lt!235543) #b00000000000000000000000000000000) (bvslt (index!19451 lt!235543) (size!16205 a!3235)))) (or ((_ is Undefined!4315) lt!235543) (ite ((_ is Found!4315) lt!235543) (= (select (arr!15841 a!3235) (index!19449 lt!235543)) k0!2280) (ite ((_ is MissingZero!4315) lt!235543) (= (select (arr!15841 a!3235) (index!19448 lt!235543)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4315) lt!235543) (= (select (arr!15841 a!3235) (index!19451 lt!235543)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79275 (= lt!235543 e!300359)))

(declare-fun c!60305 () Bool)

(assert (=> d!79275 (= c!60305 (and ((_ is Intermediate!4315) lt!235542) (undefined!5127 lt!235542)))))

(assert (=> d!79275 (= lt!235542 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!79275 (validMask!0 mask!3524)))

(assert (=> d!79275 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!235543)))

(assert (= (and d!79275 c!60305) b!514358))

(assert (= (and d!79275 (not c!60305)) b!514356))

(assert (= (and b!514356 c!60306) b!514361))

(assert (= (and b!514356 (not c!60306)) b!514360))

(assert (= (and b!514360 c!60307) b!514359))

(assert (= (and b!514360 (not c!60307)) b!514357))

(declare-fun m!495763 () Bool)

(assert (=> b!514356 m!495763))

(declare-fun m!495765 () Bool)

(assert (=> b!514357 m!495765))

(assert (=> d!79275 m!495623))

(declare-fun m!495767 () Bool)

(assert (=> d!79275 m!495767))

(declare-fun m!495769 () Bool)

(assert (=> d!79275 m!495769))

(declare-fun m!495771 () Bool)

(assert (=> d!79275 m!495771))

(declare-fun m!495773 () Bool)

(assert (=> d!79275 m!495773))

(declare-fun m!495775 () Bool)

(assert (=> d!79275 m!495775))

(assert (=> d!79275 m!495769))

(assert (=> b!514150 d!79275))

(declare-fun b!514366 () Bool)

(declare-fun e!300364 () SeekEntryResult!4315)

(declare-fun e!300363 () SeekEntryResult!4315)

(assert (=> b!514366 (= e!300364 e!300363)))

(declare-fun lt!235547 () (_ BitVec 64))

(declare-fun lt!235545 () SeekEntryResult!4315)

(assert (=> b!514366 (= lt!235547 (select (arr!15841 a!3235) (index!19450 lt!235545)))))

(declare-fun c!60311 () Bool)

(assert (=> b!514366 (= c!60311 (= lt!235547 (select (arr!15841 a!3235) j!176)))))

(declare-fun b!514367 () Bool)

(declare-fun e!300362 () SeekEntryResult!4315)

(assert (=> b!514367 (= e!300362 (seekKeyOrZeroReturnVacant!0 (x!48437 lt!235545) (index!19450 lt!235545) (index!19450 lt!235545) (select (arr!15841 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514368 () Bool)

(assert (=> b!514368 (= e!300364 Undefined!4315)))

(declare-fun b!514369 () Bool)

(assert (=> b!514369 (= e!300362 (MissingZero!4315 (index!19450 lt!235545)))))

(declare-fun b!514370 () Bool)

(declare-fun c!60312 () Bool)

(assert (=> b!514370 (= c!60312 (= lt!235547 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514370 (= e!300363 e!300362)))

(declare-fun b!514371 () Bool)

(assert (=> b!514371 (= e!300363 (Found!4315 (index!19450 lt!235545)))))

(declare-fun d!79281 () Bool)

(declare-fun lt!235546 () SeekEntryResult!4315)

(assert (=> d!79281 (and (or ((_ is Undefined!4315) lt!235546) (not ((_ is Found!4315) lt!235546)) (and (bvsge (index!19449 lt!235546) #b00000000000000000000000000000000) (bvslt (index!19449 lt!235546) (size!16205 a!3235)))) (or ((_ is Undefined!4315) lt!235546) ((_ is Found!4315) lt!235546) (not ((_ is MissingZero!4315) lt!235546)) (and (bvsge (index!19448 lt!235546) #b00000000000000000000000000000000) (bvslt (index!19448 lt!235546) (size!16205 a!3235)))) (or ((_ is Undefined!4315) lt!235546) ((_ is Found!4315) lt!235546) ((_ is MissingZero!4315) lt!235546) (not ((_ is MissingVacant!4315) lt!235546)) (and (bvsge (index!19451 lt!235546) #b00000000000000000000000000000000) (bvslt (index!19451 lt!235546) (size!16205 a!3235)))) (or ((_ is Undefined!4315) lt!235546) (ite ((_ is Found!4315) lt!235546) (= (select (arr!15841 a!3235) (index!19449 lt!235546)) (select (arr!15841 a!3235) j!176)) (ite ((_ is MissingZero!4315) lt!235546) (= (select (arr!15841 a!3235) (index!19448 lt!235546)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4315) lt!235546) (= (select (arr!15841 a!3235) (index!19451 lt!235546)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79281 (= lt!235546 e!300364)))

(declare-fun c!60310 () Bool)

(assert (=> d!79281 (= c!60310 (and ((_ is Intermediate!4315) lt!235545) (undefined!5127 lt!235545)))))

(assert (=> d!79281 (= lt!235545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15841 a!3235) j!176) mask!3524) (select (arr!15841 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79281 (validMask!0 mask!3524)))

(assert (=> d!79281 (= (seekEntryOrOpen!0 (select (arr!15841 a!3235) j!176) a!3235 mask!3524) lt!235546)))

(assert (= (and d!79281 c!60310) b!514368))

(assert (= (and d!79281 (not c!60310)) b!514366))

(assert (= (and b!514366 c!60311) b!514371))

(assert (= (and b!514366 (not c!60311)) b!514370))

(assert (= (and b!514370 c!60312) b!514369))

(assert (= (and b!514370 (not c!60312)) b!514367))

(declare-fun m!495777 () Bool)

(assert (=> b!514366 m!495777))

(assert (=> b!514367 m!495617))

(declare-fun m!495779 () Bool)

(assert (=> b!514367 m!495779))

(assert (=> d!79281 m!495623))

(declare-fun m!495781 () Bool)

(assert (=> d!79281 m!495781))

(assert (=> d!79281 m!495637))

(assert (=> d!79281 m!495617))

(declare-fun m!495783 () Bool)

(assert (=> d!79281 m!495783))

(declare-fun m!495785 () Bool)

(assert (=> d!79281 m!495785))

(declare-fun m!495787 () Bool)

(assert (=> d!79281 m!495787))

(assert (=> d!79281 m!495617))

(assert (=> d!79281 m!495637))

(assert (=> b!514145 d!79281))

(check-sat (not d!79247) (not b!514198) (not d!79275) (not d!79255) (not bm!31598) (not b!514199) (not b!514197) (not b!514357) (not b!514275) (not b!514367) (not d!79281) (not d!79243) (not bm!31595) (not b!514293) (not b!514209) (not b!514249) (not bm!31599) (not b!514211) (not b!514262) (not b!514273))
(check-sat)
