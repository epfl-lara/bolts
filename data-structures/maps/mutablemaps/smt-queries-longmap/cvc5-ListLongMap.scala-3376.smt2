; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46558 () Bool)

(assert start!46558)

(declare-fun b!514108 () Bool)

(declare-fun e!300216 () Bool)

(declare-fun e!300218 () Bool)

(assert (=> b!514108 (= e!300216 (not e!300218))))

(declare-fun res!314190 () Bool)

(assert (=> b!514108 (=> res!314190 e!300218)))

(declare-fun lt!235417 () (_ BitVec 32))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(declare-datatypes ((array!32944 0))(
  ( (array!32945 (arr!15840 (Array (_ BitVec 32) (_ BitVec 64))) (size!16204 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32944)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4314 0))(
  ( (MissingZero!4314 (index!19444 (_ BitVec 32))) (Found!4314 (index!19445 (_ BitVec 32))) (Intermediate!4314 (undefined!5126 Bool) (index!19446 (_ BitVec 32)) (x!48436 (_ BitVec 32))) (Undefined!4314) (MissingVacant!4314 (index!19447 (_ BitVec 32))) )
))
(declare-fun lt!235418 () SeekEntryResult!4314)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32944 (_ BitVec 32)) SeekEntryResult!4314)

(assert (=> b!514108 (= res!314190 (= lt!235418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235417 (select (store (arr!15840 a!3235) i!1204 k!2280) j!176) (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235)) mask!3524)))))

(declare-fun lt!235416 () (_ BitVec 32))

(assert (=> b!514108 (= lt!235418 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235416 (select (arr!15840 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514108 (= lt!235417 (toIndex!0 (select (store (arr!15840 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!514108 (= lt!235416 (toIndex!0 (select (arr!15840 a!3235) j!176) mask!3524))))

(declare-fun e!300220 () Bool)

(assert (=> b!514108 e!300220))

(declare-fun res!314192 () Bool)

(assert (=> b!514108 (=> (not res!314192) (not e!300220))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32944 (_ BitVec 32)) Bool)

(assert (=> b!514108 (= res!314192 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15878 0))(
  ( (Unit!15879) )
))
(declare-fun lt!235414 () Unit!15878)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32944 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15878)

(assert (=> b!514108 (= lt!235414 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!514109 () Bool)

(declare-fun e!300219 () Bool)

(assert (=> b!514109 (= e!300219 e!300216)))

(declare-fun res!314188 () Bool)

(assert (=> b!514109 (=> (not res!314188) (not e!300216))))

(declare-fun lt!235415 () SeekEntryResult!4314)

(assert (=> b!514109 (= res!314188 (or (= lt!235415 (MissingZero!4314 i!1204)) (= lt!235415 (MissingVacant!4314 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32944 (_ BitVec 32)) SeekEntryResult!4314)

(assert (=> b!514109 (= lt!235415 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!514110 () Bool)

(declare-fun res!314197 () Bool)

(assert (=> b!514110 (=> (not res!314197) (not e!300219))))

(declare-fun arrayContainsKey!0 (array!32944 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514110 (= res!314197 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!514111 () Bool)

(declare-fun res!314198 () Bool)

(assert (=> b!514111 (=> (not res!314198) (not e!300219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514111 (= res!314198 (validKeyInArray!0 (select (arr!15840 a!3235) j!176)))))

(declare-fun b!514112 () Bool)

(declare-fun res!314194 () Bool)

(assert (=> b!514112 (=> (not res!314194) (not e!300216))))

(declare-datatypes ((List!10051 0))(
  ( (Nil!10048) (Cons!10047 (h!10939 (_ BitVec 64)) (t!16287 List!10051)) )
))
(declare-fun arrayNoDuplicates!0 (array!32944 (_ BitVec 32) List!10051) Bool)

(assert (=> b!514112 (= res!314194 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10048))))

(declare-fun b!514113 () Bool)

(assert (=> b!514113 (= e!300220 (= (seekEntryOrOpen!0 (select (arr!15840 a!3235) j!176) a!3235 mask!3524) (Found!4314 j!176)))))

(declare-fun b!514115 () Bool)

(declare-fun res!314191 () Bool)

(assert (=> b!514115 (=> (not res!314191) (not e!300216))))

(assert (=> b!514115 (= res!314191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!514116 () Bool)

(assert (=> b!514116 (= e!300218 (or (= (select (arr!15840 a!3235) (index!19446 lt!235418)) (select (arr!15840 a!3235) j!176)) (= (select (arr!15840 a!3235) (index!19446 lt!235418)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15840 a!3235) (index!19446 lt!235418)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!514116 (bvslt (x!48436 lt!235418) #b01111111111111111111111111111110)))

(declare-fun b!514117 () Bool)

(declare-fun res!314193 () Bool)

(assert (=> b!514117 (=> (not res!314193) (not e!300219))))

(assert (=> b!514117 (= res!314193 (and (= (size!16204 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16204 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16204 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!514118 () Bool)

(declare-fun res!314195 () Bool)

(assert (=> b!514118 (=> (not res!314195) (not e!300219))))

(assert (=> b!514118 (= res!314195 (validKeyInArray!0 k!2280))))

(declare-fun b!514114 () Bool)

(declare-fun res!314189 () Bool)

(assert (=> b!514114 (=> res!314189 e!300218)))

(assert (=> b!514114 (= res!314189 (or (undefined!5126 lt!235418) (not (is-Intermediate!4314 lt!235418))))))

(declare-fun res!314196 () Bool)

(assert (=> start!46558 (=> (not res!314196) (not e!300219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46558 (= res!314196 (validMask!0 mask!3524))))

(assert (=> start!46558 e!300219))

(assert (=> start!46558 true))

(declare-fun array_inv!11614 (array!32944) Bool)

(assert (=> start!46558 (array_inv!11614 a!3235)))

(assert (= (and start!46558 res!314196) b!514117))

(assert (= (and b!514117 res!314193) b!514111))

(assert (= (and b!514111 res!314198) b!514118))

(assert (= (and b!514118 res!314195) b!514110))

(assert (= (and b!514110 res!314197) b!514109))

(assert (= (and b!514109 res!314188) b!514115))

(assert (= (and b!514115 res!314191) b!514112))

(assert (= (and b!514112 res!314194) b!514108))

(assert (= (and b!514108 res!314192) b!514113))

(assert (= (and b!514108 (not res!314190)) b!514114))

(assert (= (and b!514114 (not res!314189)) b!514116))

(declare-fun m!495571 () Bool)

(assert (=> b!514115 m!495571))

(declare-fun m!495573 () Bool)

(assert (=> b!514118 m!495573))

(declare-fun m!495575 () Bool)

(assert (=> b!514109 m!495575))

(declare-fun m!495577 () Bool)

(assert (=> b!514110 m!495577))

(declare-fun m!495579 () Bool)

(assert (=> b!514116 m!495579))

(declare-fun m!495581 () Bool)

(assert (=> b!514116 m!495581))

(assert (=> b!514111 m!495581))

(assert (=> b!514111 m!495581))

(declare-fun m!495583 () Bool)

(assert (=> b!514111 m!495583))

(declare-fun m!495585 () Bool)

(assert (=> start!46558 m!495585))

(declare-fun m!495587 () Bool)

(assert (=> start!46558 m!495587))

(declare-fun m!495589 () Bool)

(assert (=> b!514112 m!495589))

(declare-fun m!495591 () Bool)

(assert (=> b!514108 m!495591))

(declare-fun m!495593 () Bool)

(assert (=> b!514108 m!495593))

(declare-fun m!495595 () Bool)

(assert (=> b!514108 m!495595))

(assert (=> b!514108 m!495581))

(declare-fun m!495597 () Bool)

(assert (=> b!514108 m!495597))

(declare-fun m!495599 () Bool)

(assert (=> b!514108 m!495599))

(assert (=> b!514108 m!495595))

(declare-fun m!495601 () Bool)

(assert (=> b!514108 m!495601))

(assert (=> b!514108 m!495595))

(declare-fun m!495603 () Bool)

(assert (=> b!514108 m!495603))

(assert (=> b!514108 m!495581))

(declare-fun m!495605 () Bool)

(assert (=> b!514108 m!495605))

(assert (=> b!514108 m!495581))

(assert (=> b!514113 m!495581))

(assert (=> b!514113 m!495581))

(declare-fun m!495607 () Bool)

(assert (=> b!514113 m!495607))

(push 1)

(assert (not b!514109))

(assert (not b!514108))

(assert (not b!514112))

(assert (not b!514118))

(assert (not b!514110))

(assert (not b!514115))

(assert (not b!514113))

(assert (not start!46558))

(assert (not b!514111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!514276 () Bool)

(declare-fun e!300307 () SeekEntryResult!4314)

(declare-fun e!300308 () SeekEntryResult!4314)

(assert (=> b!514276 (= e!300307 e!300308)))

(declare-fun lt!235492 () (_ BitVec 64))

(declare-fun lt!235493 () SeekEntryResult!4314)

(assert (=> b!514276 (= lt!235492 (select (arr!15840 a!3235) (index!19446 lt!235493)))))

(declare-fun c!60277 () Bool)

(assert (=> b!514276 (= c!60277 (= lt!235492 (select (arr!15840 a!3235) j!176)))))

(declare-fun e!300309 () SeekEntryResult!4314)

(declare-fun b!514277 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32944 (_ BitVec 32)) SeekEntryResult!4314)

(assert (=> b!514277 (= e!300309 (seekKeyOrZeroReturnVacant!0 (x!48436 lt!235493) (index!19446 lt!235493) (index!19446 lt!235493) (select (arr!15840 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514278 () Bool)

(declare-fun c!60278 () Bool)

(assert (=> b!514278 (= c!60278 (= lt!235492 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514278 (= e!300308 e!300309)))

(declare-fun b!514279 () Bool)

(assert (=> b!514279 (= e!300308 (Found!4314 (index!19446 lt!235493)))))

(declare-fun b!514280 () Bool)

(assert (=> b!514280 (= e!300307 Undefined!4314)))

(declare-fun b!514281 () Bool)

(assert (=> b!514281 (= e!300309 (MissingZero!4314 (index!19446 lt!235493)))))

(declare-fun d!79249 () Bool)

(declare-fun lt!235494 () SeekEntryResult!4314)

(assert (=> d!79249 (and (or (is-Undefined!4314 lt!235494) (not (is-Found!4314 lt!235494)) (and (bvsge (index!19445 lt!235494) #b00000000000000000000000000000000) (bvslt (index!19445 lt!235494) (size!16204 a!3235)))) (or (is-Undefined!4314 lt!235494) (is-Found!4314 lt!235494) (not (is-MissingZero!4314 lt!235494)) (and (bvsge (index!19444 lt!235494) #b00000000000000000000000000000000) (bvslt (index!19444 lt!235494) (size!16204 a!3235)))) (or (is-Undefined!4314 lt!235494) (is-Found!4314 lt!235494) (is-MissingZero!4314 lt!235494) (not (is-MissingVacant!4314 lt!235494)) (and (bvsge (index!19447 lt!235494) #b00000000000000000000000000000000) (bvslt (index!19447 lt!235494) (size!16204 a!3235)))) (or (is-Undefined!4314 lt!235494) (ite (is-Found!4314 lt!235494) (= (select (arr!15840 a!3235) (index!19445 lt!235494)) (select (arr!15840 a!3235) j!176)) (ite (is-MissingZero!4314 lt!235494) (= (select (arr!15840 a!3235) (index!19444 lt!235494)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4314 lt!235494) (= (select (arr!15840 a!3235) (index!19447 lt!235494)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79249 (= lt!235494 e!300307)))

(declare-fun c!60279 () Bool)

(assert (=> d!79249 (= c!60279 (and (is-Intermediate!4314 lt!235493) (undefined!5126 lt!235493)))))

(assert (=> d!79249 (= lt!235493 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15840 a!3235) j!176) mask!3524) (select (arr!15840 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79249 (validMask!0 mask!3524)))

(assert (=> d!79249 (= (seekEntryOrOpen!0 (select (arr!15840 a!3235) j!176) a!3235 mask!3524) lt!235494)))

(assert (= (and d!79249 c!60279) b!514280))

(assert (= (and d!79249 (not c!60279)) b!514276))

(assert (= (and b!514276 c!60277) b!514279))

(assert (= (and b!514276 (not c!60277)) b!514278))

(assert (= (and b!514278 c!60278) b!514281))

(assert (= (and b!514278 (not c!60278)) b!514277))

(declare-fun m!495725 () Bool)

(assert (=> b!514276 m!495725))

(assert (=> b!514277 m!495581))

(declare-fun m!495727 () Bool)

(assert (=> b!514277 m!495727))

(assert (=> d!79249 m!495597))

(assert (=> d!79249 m!495581))

(declare-fun m!495729 () Bool)

(assert (=> d!79249 m!495729))

(declare-fun m!495731 () Bool)

(assert (=> d!79249 m!495731))

(assert (=> d!79249 m!495581))

(assert (=> d!79249 m!495597))

(declare-fun m!495733 () Bool)

(assert (=> d!79249 m!495733))

(declare-fun m!495735 () Bool)

(assert (=> d!79249 m!495735))

(assert (=> d!79249 m!495585))

(assert (=> b!514113 d!79249))

(declare-fun d!79263 () Bool)

(declare-fun lt!235503 () (_ BitVec 32))

(declare-fun lt!235502 () (_ BitVec 32))

(assert (=> d!79263 (= lt!235503 (bvmul (bvxor lt!235502 (bvlshr lt!235502 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79263 (= lt!235502 ((_ extract 31 0) (bvand (bvxor (select (arr!15840 a!3235) j!176) (bvlshr (select (arr!15840 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79263 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314299 (let ((h!10943 ((_ extract 31 0) (bvand (bvxor (select (arr!15840 a!3235) j!176) (bvlshr (select (arr!15840 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48441 (bvmul (bvxor h!10943 (bvlshr h!10943 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48441 (bvlshr x!48441 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314299 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314299 #b00000000000000000000000000000000))))))

(assert (=> d!79263 (= (toIndex!0 (select (arr!15840 a!3235) j!176) mask!3524) (bvand (bvxor lt!235503 (bvlshr lt!235503 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514108 d!79263))

(declare-fun b!514310 () Bool)

(declare-fun e!300331 () Bool)

(declare-fun call!31607 () Bool)

(assert (=> b!514310 (= e!300331 call!31607)))

(declare-fun d!79269 () Bool)

(declare-fun res!314312 () Bool)

(declare-fun e!300332 () Bool)

(assert (=> d!79269 (=> res!314312 e!300332)))

(assert (=> d!79269 (= res!314312 (bvsge j!176 (size!16204 a!3235)))))

(assert (=> d!79269 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!300332)))

(declare-fun b!514311 () Bool)

(declare-fun e!300333 () Bool)

(assert (=> b!514311 (= e!300333 call!31607)))

(declare-fun b!514312 () Bool)

(assert (=> b!514312 (= e!300332 e!300331)))

(declare-fun c!60287 () Bool)

(assert (=> b!514312 (= c!60287 (validKeyInArray!0 (select (arr!15840 a!3235) j!176)))))

(declare-fun b!514313 () Bool)

(assert (=> b!514313 (= e!300331 e!300333)))

(declare-fun lt!235522 () (_ BitVec 64))

(assert (=> b!514313 (= lt!235522 (select (arr!15840 a!3235) j!176))))

(declare-fun lt!235523 () Unit!15878)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32944 (_ BitVec 64) (_ BitVec 32)) Unit!15878)

(assert (=> b!514313 (= lt!235523 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235522 j!176))))

(assert (=> b!514313 (arrayContainsKey!0 a!3235 lt!235522 #b00000000000000000000000000000000)))

(declare-fun lt!235524 () Unit!15878)

(assert (=> b!514313 (= lt!235524 lt!235523)))

(declare-fun res!314311 () Bool)

(assert (=> b!514313 (= res!314311 (= (seekEntryOrOpen!0 (select (arr!15840 a!3235) j!176) a!3235 mask!3524) (Found!4314 j!176)))))

(assert (=> b!514313 (=> (not res!314311) (not e!300333))))

(declare-fun bm!31604 () Bool)

(assert (=> bm!31604 (= call!31607 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79269 (not res!314312)) b!514312))

(assert (= (and b!514312 c!60287) b!514313))

(assert (= (and b!514312 (not c!60287)) b!514310))

(assert (= (and b!514313 res!314311) b!514311))

(assert (= (or b!514311 b!514310) bm!31604))

(assert (=> b!514312 m!495581))

(assert (=> b!514312 m!495581))

(assert (=> b!514312 m!495583))

(assert (=> b!514313 m!495581))

(declare-fun m!495751 () Bool)

(assert (=> b!514313 m!495751))

(declare-fun m!495753 () Bool)

(assert (=> b!514313 m!495753))

(assert (=> b!514313 m!495581))

(assert (=> b!514313 m!495607))

(declare-fun m!495755 () Bool)

(assert (=> bm!31604 m!495755))

(assert (=> b!514108 d!79269))

(declare-fun d!79277 () Bool)

(declare-fun e!300369 () Bool)

(assert (=> d!79277 e!300369))

(declare-fun c!60313 () Bool)

(declare-fun lt!235549 () SeekEntryResult!4314)

(assert (=> d!79277 (= c!60313 (and (is-Intermediate!4314 lt!235549) (undefined!5126 lt!235549)))))

(declare-fun e!300371 () SeekEntryResult!4314)

(assert (=> d!79277 (= lt!235549 e!300371)))

(declare-fun c!60315 () Bool)

(assert (=> d!79277 (= c!60315 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235548 () (_ BitVec 64))

(assert (=> d!79277 (= lt!235548 (select (arr!15840 a!3235) lt!235416))))

(assert (=> d!79277 (validMask!0 mask!3524)))

(assert (=> d!79277 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235416 (select (arr!15840 a!3235) j!176) a!3235 mask!3524) lt!235549)))

(declare-fun b!514378 () Bool)

(assert (=> b!514378 (and (bvsge (index!19446 lt!235549) #b00000000000000000000000000000000) (bvslt (index!19446 lt!235549) (size!16204 a!3235)))))

(declare-fun res!314328 () Bool)

(assert (=> b!514378 (= res!314328 (= (select (arr!15840 a!3235) (index!19446 lt!235549)) (select (arr!15840 a!3235) j!176)))))

(declare-fun e!300372 () Bool)

(assert (=> b!514378 (=> res!314328 e!300372)))

(declare-fun e!300373 () Bool)

(assert (=> b!514378 (= e!300373 e!300372)))

(declare-fun b!514379 () Bool)

(assert (=> b!514379 (and (bvsge (index!19446 lt!235549) #b00000000000000000000000000000000) (bvslt (index!19446 lt!235549) (size!16204 a!3235)))))

(assert (=> b!514379 (= e!300372 (= (select (arr!15840 a!3235) (index!19446 lt!235549)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514380 () Bool)

(declare-fun e!300370 () SeekEntryResult!4314)

(assert (=> b!514380 (= e!300371 e!300370)))

(declare-fun c!60314 () Bool)

(assert (=> b!514380 (= c!60314 (or (= lt!235548 (select (arr!15840 a!3235) j!176)) (= (bvadd lt!235548 lt!235548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514381 () Bool)

(assert (=> b!514381 (= e!300371 (Intermediate!4314 true lt!235416 #b00000000000000000000000000000000))))

(declare-fun b!514382 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514382 (= e!300370 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235416 #b00000000000000000000000000000000 mask!3524) (select (arr!15840 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514383 () Bool)

(assert (=> b!514383 (= e!300369 (bvsge (x!48436 lt!235549) #b01111111111111111111111111111110))))

(declare-fun b!514384 () Bool)

(assert (=> b!514384 (= e!300370 (Intermediate!4314 false lt!235416 #b00000000000000000000000000000000))))

(declare-fun b!514385 () Bool)

(assert (=> b!514385 (= e!300369 e!300373)))

(declare-fun res!314327 () Bool)

(assert (=> b!514385 (= res!314327 (and (is-Intermediate!4314 lt!235549) (not (undefined!5126 lt!235549)) (bvslt (x!48436 lt!235549) #b01111111111111111111111111111110) (bvsge (x!48436 lt!235549) #b00000000000000000000000000000000) (bvsge (x!48436 lt!235549) #b00000000000000000000000000000000)))))

(assert (=> b!514385 (=> (not res!314327) (not e!300373))))

(declare-fun b!514386 () Bool)

(assert (=> b!514386 (and (bvsge (index!19446 lt!235549) #b00000000000000000000000000000000) (bvslt (index!19446 lt!235549) (size!16204 a!3235)))))

(declare-fun res!314329 () Bool)

(assert (=> b!514386 (= res!314329 (= (select (arr!15840 a!3235) (index!19446 lt!235549)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514386 (=> res!314329 e!300372)))

(assert (= (and d!79277 c!60315) b!514381))

(assert (= (and d!79277 (not c!60315)) b!514380))

(assert (= (and b!514380 c!60314) b!514384))

(assert (= (and b!514380 (not c!60314)) b!514382))

(assert (= (and d!79277 c!60313) b!514383))

(assert (= (and d!79277 (not c!60313)) b!514385))

(assert (= (and b!514385 res!314327) b!514378))

(assert (= (and b!514378 (not res!314328)) b!514386))

(assert (= (and b!514386 (not res!314329)) b!514379))

(declare-fun m!495789 () Bool)

(assert (=> b!514378 m!495789))

(assert (=> b!514386 m!495789))

(declare-fun m!495791 () Bool)

(assert (=> b!514382 m!495791))

(assert (=> b!514382 m!495791))

(assert (=> b!514382 m!495581))

(declare-fun m!495793 () Bool)

(assert (=> b!514382 m!495793))

(declare-fun m!495795 () Bool)

(assert (=> d!79277 m!495795))

(assert (=> d!79277 m!495585))

(assert (=> b!514379 m!495789))

(assert (=> b!514108 d!79277))

(declare-fun d!79283 () Bool)

(assert (=> d!79283 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235554 () Unit!15878)

(declare-fun choose!38 (array!32944 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15878)

(assert (=> d!79283 (= lt!235554 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79283 (validMask!0 mask!3524)))

(assert (=> d!79283 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235554)))

(declare-fun bs!16264 () Bool)

(assert (= bs!16264 d!79283))

(assert (=> bs!16264 m!495599))

(declare-fun m!495805 () Bool)

(assert (=> bs!16264 m!495805))

(assert (=> bs!16264 m!495585))

(assert (=> b!514108 d!79283))

(declare-fun d!79287 () Bool)

(declare-fun lt!235556 () (_ BitVec 32))

(declare-fun lt!235555 () (_ BitVec 32))

(assert (=> d!79287 (= lt!235556 (bvmul (bvxor lt!235555 (bvlshr lt!235555 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79287 (= lt!235555 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15840 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15840 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79287 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314299 (let ((h!10943 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15840 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15840 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48441 (bvmul (bvxor h!10943 (bvlshr h!10943 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48441 (bvlshr x!48441 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314299 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314299 #b00000000000000000000000000000000))))))

(assert (=> d!79287 (= (toIndex!0 (select (store (arr!15840 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!235556 (bvlshr lt!235556 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514108 d!79287))

(declare-fun d!79289 () Bool)

(declare-fun e!300379 () Bool)

(assert (=> d!79289 e!300379))

(declare-fun c!60319 () Bool)

(declare-fun lt!235558 () SeekEntryResult!4314)

(assert (=> d!79289 (= c!60319 (and (is-Intermediate!4314 lt!235558) (undefined!5126 lt!235558)))))

(declare-fun e!300381 () SeekEntryResult!4314)

(assert (=> d!79289 (= lt!235558 e!300381)))

(declare-fun c!60321 () Bool)

(assert (=> d!79289 (= c!60321 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!235557 () (_ BitVec 64))

(assert (=> d!79289 (= lt!235557 (select (arr!15840 (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235))) lt!235417))))

(assert (=> d!79289 (validMask!0 mask!3524)))

(assert (=> d!79289 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235417 (select (store (arr!15840 a!3235) i!1204 k!2280) j!176) (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235)) mask!3524) lt!235558)))

(declare-fun b!514396 () Bool)

(assert (=> b!514396 (and (bvsge (index!19446 lt!235558) #b00000000000000000000000000000000) (bvslt (index!19446 lt!235558) (size!16204 (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235)))))))

(declare-fun res!314334 () Bool)

(assert (=> b!514396 (= res!314334 (= (select (arr!15840 (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235))) (index!19446 lt!235558)) (select (store (arr!15840 a!3235) i!1204 k!2280) j!176)))))

(declare-fun e!300382 () Bool)

(assert (=> b!514396 (=> res!314334 e!300382)))

(declare-fun e!300383 () Bool)

(assert (=> b!514396 (= e!300383 e!300382)))

(declare-fun b!514397 () Bool)

(assert (=> b!514397 (and (bvsge (index!19446 lt!235558) #b00000000000000000000000000000000) (bvslt (index!19446 lt!235558) (size!16204 (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235)))))))

(assert (=> b!514397 (= e!300382 (= (select (arr!15840 (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235))) (index!19446 lt!235558)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514398 () Bool)

(declare-fun e!300380 () SeekEntryResult!4314)

(assert (=> b!514398 (= e!300381 e!300380)))

(declare-fun c!60320 () Bool)

(assert (=> b!514398 (= c!60320 (or (= lt!235557 (select (store (arr!15840 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!235557 lt!235557) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514399 () Bool)

(assert (=> b!514399 (= e!300381 (Intermediate!4314 true lt!235417 #b00000000000000000000000000000000))))

(declare-fun b!514400 () Bool)

(assert (=> b!514400 (= e!300380 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235417 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15840 a!3235) i!1204 k!2280) j!176) (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235)) mask!3524))))

(declare-fun b!514401 () Bool)

(assert (=> b!514401 (= e!300379 (bvsge (x!48436 lt!235558) #b01111111111111111111111111111110))))

(declare-fun b!514402 () Bool)

(assert (=> b!514402 (= e!300380 (Intermediate!4314 false lt!235417 #b00000000000000000000000000000000))))

(declare-fun b!514403 () Bool)

(assert (=> b!514403 (= e!300379 e!300383)))

(declare-fun res!314333 () Bool)

(assert (=> b!514403 (= res!314333 (and (is-Intermediate!4314 lt!235558) (not (undefined!5126 lt!235558)) (bvslt (x!48436 lt!235558) #b01111111111111111111111111111110) (bvsge (x!48436 lt!235558) #b00000000000000000000000000000000) (bvsge (x!48436 lt!235558) #b00000000000000000000000000000000)))))

(assert (=> b!514403 (=> (not res!314333) (not e!300383))))

(declare-fun b!514404 () Bool)

(assert (=> b!514404 (and (bvsge (index!19446 lt!235558) #b00000000000000000000000000000000) (bvslt (index!19446 lt!235558) (size!16204 (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235)))))))

(declare-fun res!314335 () Bool)

(assert (=> b!514404 (= res!314335 (= (select (arr!15840 (array!32945 (store (arr!15840 a!3235) i!1204 k!2280) (size!16204 a!3235))) (index!19446 lt!235558)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514404 (=> res!314335 e!300382)))

(assert (= (and d!79289 c!60321) b!514399))

(assert (= (and d!79289 (not c!60321)) b!514398))

(assert (= (and b!514398 c!60320) b!514402))

(assert (= (and b!514398 (not c!60320)) b!514400))

(assert (= (and d!79289 c!60319) b!514401))

(assert (= (and d!79289 (not c!60319)) b!514403))

(assert (= (and b!514403 res!314333) b!514396))

(assert (= (and b!514396 (not res!314334)) b!514404))

(assert (= (and b!514404 (not res!314335)) b!514397))

(declare-fun m!495807 () Bool)

(assert (=> b!514396 m!495807))

(assert (=> b!514404 m!495807))

(declare-fun m!495809 () Bool)

(assert (=> b!514400 m!495809))

(assert (=> b!514400 m!495809))

(assert (=> b!514400 m!495595))

(declare-fun m!495811 () Bool)

(assert (=> b!514400 m!495811))

(declare-fun m!495813 () Bool)

(assert (=> d!79289 m!495813))

(assert (=> d!79289 m!495585))

(assert (=> b!514397 m!495807))

(assert (=> b!514108 d!79289))

(declare-fun b!514405 () Bool)

(declare-fun e!300384 () Bool)

(declare-fun call!31609 () Bool)

(assert (=> b!514405 (= e!300384 call!31609)))

(declare-fun d!79291 () Bool)

(declare-fun res!314337 () Bool)

(declare-fun e!300385 () Bool)

(assert (=> d!79291 (=> res!314337 e!300385)))

(assert (=> d!79291 (= res!314337 (bvsge #b00000000000000000000000000000000 (size!16204 a!3235)))))

(assert (=> d!79291 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!300385)))

(declare-fun b!514406 () Bool)

(declare-fun e!300386 () Bool)

(assert (=> b!514406 (= e!300386 call!31609)))

(declare-fun b!514407 () Bool)

(assert (=> b!514407 (= e!300385 e!300384)))

(declare-fun c!60322 () Bool)

(assert (=> b!514407 (= c!60322 (validKeyInArray!0 (select (arr!15840 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514408 () Bool)

(assert (=> b!514408 (= e!300384 e!300386)))

(declare-fun lt!235562 () (_ BitVec 64))

(assert (=> b!514408 (= lt!235562 (select (arr!15840 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235563 () Unit!15878)

(assert (=> b!514408 (= lt!235563 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235562 #b00000000000000000000000000000000))))

(assert (=> b!514408 (arrayContainsKey!0 a!3235 lt!235562 #b00000000000000000000000000000000)))

(declare-fun lt!235564 () Unit!15878)

(assert (=> b!514408 (= lt!235564 lt!235563)))

(declare-fun res!314336 () Bool)

(assert (=> b!514408 (= res!314336 (= (seekEntryOrOpen!0 (select (arr!15840 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4314 #b00000000000000000000000000000000)))))

(assert (=> b!514408 (=> (not res!314336) (not e!300386))))

(declare-fun bm!31606 () Bool)

(assert (=> bm!31606 (= call!31609 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!79291 (not res!314337)) b!514407))

(assert (= (and b!514407 c!60322) b!514408))

(assert (= (and b!514407 (not c!60322)) b!514405))

(assert (= (and b!514408 res!314336) b!514406))

(assert (= (or b!514406 b!514405) bm!31606))

(declare-fun m!495817 () Bool)

(assert (=> b!514407 m!495817))

(assert (=> b!514407 m!495817))

(declare-fun m!495819 () Bool)

(assert (=> b!514407 m!495819))

(assert (=> b!514408 m!495817))

(declare-fun m!495821 () Bool)

(assert (=> b!514408 m!495821))

(declare-fun m!495823 () Bool)

(assert (=> b!514408 m!495823))

(assert (=> b!514408 m!495817))

(declare-fun m!495825 () Bool)

(assert (=> b!514408 m!495825))

(declare-fun m!495827 () Bool)

(assert (=> bm!31606 m!495827))

(assert (=> b!514115 d!79291))

(declare-fun d!79297 () Bool)

(declare-fun res!314347 () Bool)

(declare-fun e!300399 () Bool)

(assert (=> d!79297 (=> res!314347 e!300399)))

(assert (=> d!79297 (= res!314347 (= (select (arr!15840 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79297 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!300399)))

(declare-fun b!514426 () Bool)

(declare-fun e!300400 () Bool)

(assert (=> b!514426 (= e!300399 e!300400)))

(declare-fun res!314348 () Bool)

(assert (=> b!514426 (=> (not res!314348) (not e!300400))))

(assert (=> b!514426 (= res!314348 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16204 a!3235)))))

(declare-fun b!514427 () Bool)

(assert (=> b!514427 (= e!300400 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79297 (not res!314347)) b!514426))

(assert (= (and b!514426 res!314348) b!514427))

(assert (=> d!79297 m!495817))

(declare-fun m!495849 () Bool)

(assert (=> b!514427 m!495849))

(assert (=> b!514110 d!79297))

(declare-fun b!514428 () Bool)

(declare-fun e!300401 () SeekEntryResult!4314)

(declare-fun e!300402 () SeekEntryResult!4314)

(assert (=> b!514428 (= e!300401 e!300402)))

(declare-fun lt!235572 () (_ BitVec 64))

(declare-fun lt!235573 () SeekEntryResult!4314)

(assert (=> b!514428 (= lt!235572 (select (arr!15840 a!3235) (index!19446 lt!235573)))))

(declare-fun c!60327 () Bool)

(assert (=> b!514428 (= c!60327 (= lt!235572 k!2280))))

(declare-fun b!514429 () Bool)

(declare-fun e!300403 () SeekEntryResult!4314)

(assert (=> b!514429 (= e!300403 (seekKeyOrZeroReturnVacant!0 (x!48436 lt!235573) (index!19446 lt!235573) (index!19446 lt!235573) k!2280 a!3235 mask!3524))))

(declare-fun b!514430 () Bool)

(declare-fun c!60328 () Bool)

(assert (=> b!514430 (= c!60328 (= lt!235572 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514430 (= e!300402 e!300403)))

(declare-fun b!514431 () Bool)

(assert (=> b!514431 (= e!300402 (Found!4314 (index!19446 lt!235573)))))

(declare-fun b!514432 () Bool)

(assert (=> b!514432 (= e!300401 Undefined!4314)))

(declare-fun b!514433 () Bool)

(assert (=> b!514433 (= e!300403 (MissingZero!4314 (index!19446 lt!235573)))))

(declare-fun d!79305 () Bool)

(declare-fun lt!235574 () SeekEntryResult!4314)

(assert (=> d!79305 (and (or (is-Undefined!4314 lt!235574) (not (is-Found!4314 lt!235574)) (and (bvsge (index!19445 lt!235574) #b00000000000000000000000000000000) (bvslt (index!19445 lt!235574) (size!16204 a!3235)))) (or (is-Undefined!4314 lt!235574) (is-Found!4314 lt!235574) (not (is-MissingZero!4314 lt!235574)) (and (bvsge (index!19444 lt!235574) #b00000000000000000000000000000000) (bvslt (index!19444 lt!235574) (size!16204 a!3235)))) (or (is-Undefined!4314 lt!235574) (is-Found!4314 lt!235574) (is-MissingZero!4314 lt!235574) (not (is-MissingVacant!4314 lt!235574)) (and (bvsge (index!19447 lt!235574) #b00000000000000000000000000000000) (bvslt (index!19447 lt!235574) (size!16204 a!3235)))) (or (is-Undefined!4314 lt!235574) (ite (is-Found!4314 lt!235574) (= (select (arr!15840 a!3235) (index!19445 lt!235574)) k!2280) (ite (is-MissingZero!4314 lt!235574) (= (select (arr!15840 a!3235) (index!19444 lt!235574)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4314 lt!235574) (= (select (arr!15840 a!3235) (index!19447 lt!235574)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!79305 (= lt!235574 e!300401)))

(declare-fun c!60329 () Bool)

(assert (=> d!79305 (= c!60329 (and (is-Intermediate!4314 lt!235573) (undefined!5126 lt!235573)))))

(assert (=> d!79305 (= lt!235573 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79305 (validMask!0 mask!3524)))

(assert (=> d!79305 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!235574)))

(assert (= (and d!79305 c!60329) b!514432))

(assert (= (and d!79305 (not c!60329)) b!514428))

(assert (= (and b!514428 c!60327) b!514431))

(assert (= (and b!514428 (not c!60327)) b!514430))

(assert (= (and b!514430 c!60328) b!514433))

(assert (= (and b!514430 (not c!60328)) b!514429))

(declare-fun m!495851 () Bool)

(assert (=> b!514428 m!495851))

(declare-fun m!495853 () Bool)

(assert (=> b!514429 m!495853))

(declare-fun m!495855 () Bool)

(assert (=> d!79305 m!495855))

(declare-fun m!495857 () Bool)

(assert (=> d!79305 m!495857))

(declare-fun m!495859 () Bool)

(assert (=> d!79305 m!495859))

(assert (=> d!79305 m!495855))

(declare-fun m!495861 () Bool)

(assert (=> d!79305 m!495861))

(declare-fun m!495863 () Bool)

(assert (=> d!79305 m!495863))

(assert (=> d!79305 m!495585))

(assert (=> b!514109 d!79305))

(declare-fun d!79307 () Bool)

(assert (=> d!79307 (= (validKeyInArray!0 (select (arr!15840 a!3235) j!176)) (and (not (= (select (arr!15840 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15840 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514111 d!79307))

(declare-fun d!79311 () Bool)

(assert (=> d!79311 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514118 d!79311))

(declare-fun d!79313 () Bool)

(assert (=> d!79313 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46558 d!79313))

(declare-fun d!79317 () Bool)

(assert (=> d!79317 (= (array_inv!11614 a!3235) (bvsge (size!16204 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46558 d!79317))

(declare-fun b!514460 () Bool)

(declare-fun e!300430 () Bool)

(declare-fun e!300432 () Bool)

(assert (=> b!514460 (= e!300430 e!300432)))

(declare-fun res!314371 () Bool)

(assert (=> b!514460 (=> (not res!314371) (not e!300432))))

(declare-fun e!300426 () Bool)

(assert (=> b!514460 (= res!314371 (not e!300426))))

(declare-fun res!314367 () Bool)

(assert (=> b!514460 (=> (not res!314367) (not e!300426))))

(assert (=> b!514460 (= res!314367 (validKeyInArray!0 (select (arr!15840 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514462 () Bool)

(declare-fun e!300428 () Bool)

(assert (=> b!514462 (= e!300432 e!300428)))

(declare-fun c!60334 () Bool)

(assert (=> b!514462 (= c!60334 (validKeyInArray!0 (select (arr!15840 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514464 () Bool)

(declare-fun call!31616 () Bool)

(assert (=> b!514464 (= e!300428 call!31616)))

(declare-fun b!514465 () Bool)

(declare-fun contains!2743 (List!10051 (_ BitVec 64)) Bool)

(assert (=> b!514465 (= e!300426 (contains!2743 Nil!10048 (select (arr!15840 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514467 () Bool)

(assert (=> b!514467 (= e!300428 call!31616)))

(declare-fun bm!31613 () Bool)

(assert (=> bm!31613 (= call!31616 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60334 (Cons!10047 (select (arr!15840 a!3235) #b00000000000000000000000000000000) Nil!10048) Nil!10048)))))

(declare-fun d!79321 () Bool)

(declare-fun res!314369 () Bool)

(assert (=> d!79321 (=> res!314369 e!300430)))

(assert (=> d!79321 (= res!314369 (bvsge #b00000000000000000000000000000000 (size!16204 a!3235)))))

(assert (=> d!79321 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10048) e!300430)))

(assert (= (and d!79321 (not res!314369)) b!514460))

(assert (= (and b!514460 res!314367) b!514465))

(assert (= (and b!514460 res!314371) b!514462))

(assert (= (and b!514462 c!60334) b!514464))

(assert (= (and b!514462 (not c!60334)) b!514467))

(assert (= (or b!514464 b!514467) bm!31613))

(assert (=> b!514460 m!495817))

(assert (=> b!514460 m!495817))

(assert (=> b!514460 m!495819))

(assert (=> b!514462 m!495817))

(assert (=> b!514462 m!495817))

(assert (=> b!514462 m!495819))

(assert (=> b!514465 m!495817))

(assert (=> b!514465 m!495817))

(declare-fun m!495869 () Bool)

(assert (=> b!514465 m!495869))

(assert (=> bm!31613 m!495817))

(declare-fun m!495873 () Bool)

(assert (=> bm!31613 m!495873))

(assert (=> b!514112 d!79321))

(push 1)

