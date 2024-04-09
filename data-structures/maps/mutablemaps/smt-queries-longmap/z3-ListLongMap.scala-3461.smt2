; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48048 () Bool)

(assert start!48048)

(declare-fun b!529094 () Bool)

(declare-fun res!325136 () Bool)

(declare-fun e!308303 () Bool)

(assert (=> b!529094 (=> (not res!325136) (not e!308303))))

(declare-datatypes ((array!33501 0))(
  ( (array!33502 (arr!16096 (Array (_ BitVec 32) (_ BitVec 64))) (size!16460 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33501)

(declare-datatypes ((List!10307 0))(
  ( (Nil!10304) (Cons!10303 (h!11240 (_ BitVec 64)) (t!16543 List!10307)) )
))
(declare-fun arrayNoDuplicates!0 (array!33501 (_ BitVec 32) List!10307) Bool)

(assert (=> b!529094 (= res!325136 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10304))))

(declare-fun b!529095 () Bool)

(declare-fun e!308302 () Bool)

(assert (=> b!529095 (= e!308303 (not e!308302))))

(declare-fun res!325139 () Bool)

(assert (=> b!529095 (=> res!325139 e!308302)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!243973 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4570 0))(
  ( (MissingZero!4570 (index!20504 (_ BitVec 32))) (Found!4570 (index!20505 (_ BitVec 32))) (Intermediate!4570 (undefined!5382 Bool) (index!20506 (_ BitVec 32)) (x!49501 (_ BitVec 32))) (Undefined!4570) (MissingVacant!4570 (index!20507 (_ BitVec 32))) )
))
(declare-fun lt!243972 () SeekEntryResult!4570)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33501 (_ BitVec 32)) SeekEntryResult!4570)

(assert (=> b!529095 (= res!325139 (= lt!243972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243973 (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176) (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235)) mask!3524)))))

(declare-fun lt!243975 () (_ BitVec 32))

(assert (=> b!529095 (= lt!243972 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243975 (select (arr!16096 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529095 (= lt!243973 (toIndex!0 (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!529095 (= lt!243975 (toIndex!0 (select (arr!16096 a!3235) j!176) mask!3524))))

(declare-fun e!308301 () Bool)

(assert (=> b!529095 e!308301))

(declare-fun res!325142 () Bool)

(assert (=> b!529095 (=> (not res!325142) (not e!308301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33501 (_ BitVec 32)) Bool)

(assert (=> b!529095 (= res!325142 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16744 0))(
  ( (Unit!16745) )
))
(declare-fun lt!243974 () Unit!16744)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33501 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16744)

(assert (=> b!529095 (= lt!243974 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!529096 () Bool)

(declare-fun res!325133 () Bool)

(declare-fun e!308304 () Bool)

(assert (=> b!529096 (=> (not res!325133) (not e!308304))))

(declare-fun arrayContainsKey!0 (array!33501 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!529096 (= res!325133 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!529097 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33501 (_ BitVec 32)) SeekEntryResult!4570)

(assert (=> b!529097 (= e!308301 (= (seekEntryOrOpen!0 (select (arr!16096 a!3235) j!176) a!3235 mask!3524) (Found!4570 j!176)))))

(declare-fun b!529098 () Bool)

(declare-fun lt!243977 () Bool)

(assert (=> b!529098 (= e!308302 (or (and (not lt!243977) (undefined!5382 lt!243972)) (and (not lt!243977) (not (undefined!5382 lt!243972)))))))

(get-info :version)

(assert (=> b!529098 (= lt!243977 (not ((_ is Intermediate!4570) lt!243972)))))

(declare-fun res!325137 () Bool)

(assert (=> start!48048 (=> (not res!325137) (not e!308304))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48048 (= res!325137 (validMask!0 mask!3524))))

(assert (=> start!48048 e!308304))

(assert (=> start!48048 true))

(declare-fun array_inv!11870 (array!33501) Bool)

(assert (=> start!48048 (array_inv!11870 a!3235)))

(declare-fun b!529099 () Bool)

(declare-fun res!325138 () Bool)

(assert (=> b!529099 (=> (not res!325138) (not e!308304))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!529099 (= res!325138 (validKeyInArray!0 k0!2280))))

(declare-fun b!529100 () Bool)

(assert (=> b!529100 (= e!308304 e!308303)))

(declare-fun res!325140 () Bool)

(assert (=> b!529100 (=> (not res!325140) (not e!308303))))

(declare-fun lt!243976 () SeekEntryResult!4570)

(assert (=> b!529100 (= res!325140 (or (= lt!243976 (MissingZero!4570 i!1204)) (= lt!243976 (MissingVacant!4570 i!1204))))))

(assert (=> b!529100 (= lt!243976 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!529101 () Bool)

(declare-fun res!325135 () Bool)

(assert (=> b!529101 (=> (not res!325135) (not e!308304))))

(assert (=> b!529101 (= res!325135 (validKeyInArray!0 (select (arr!16096 a!3235) j!176)))))

(declare-fun b!529102 () Bool)

(declare-fun res!325134 () Bool)

(assert (=> b!529102 (=> (not res!325134) (not e!308304))))

(assert (=> b!529102 (= res!325134 (and (= (size!16460 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16460 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16460 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!529103 () Bool)

(declare-fun res!325141 () Bool)

(assert (=> b!529103 (=> (not res!325141) (not e!308303))))

(assert (=> b!529103 (= res!325141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!48048 res!325137) b!529102))

(assert (= (and b!529102 res!325134) b!529101))

(assert (= (and b!529101 res!325135) b!529099))

(assert (= (and b!529099 res!325138) b!529096))

(assert (= (and b!529096 res!325133) b!529100))

(assert (= (and b!529100 res!325140) b!529103))

(assert (= (and b!529103 res!325141) b!529094))

(assert (= (and b!529094 res!325136) b!529095))

(assert (= (and b!529095 res!325142) b!529097))

(assert (= (and b!529095 (not res!325139)) b!529098))

(declare-fun m!509683 () Bool)

(assert (=> b!529101 m!509683))

(assert (=> b!529101 m!509683))

(declare-fun m!509685 () Bool)

(assert (=> b!529101 m!509685))

(assert (=> b!529097 m!509683))

(assert (=> b!529097 m!509683))

(declare-fun m!509687 () Bool)

(assert (=> b!529097 m!509687))

(declare-fun m!509689 () Bool)

(assert (=> b!529095 m!509689))

(declare-fun m!509691 () Bool)

(assert (=> b!529095 m!509691))

(declare-fun m!509693 () Bool)

(assert (=> b!529095 m!509693))

(assert (=> b!529095 m!509683))

(declare-fun m!509695 () Bool)

(assert (=> b!529095 m!509695))

(assert (=> b!529095 m!509683))

(declare-fun m!509697 () Bool)

(assert (=> b!529095 m!509697))

(assert (=> b!529095 m!509683))

(assert (=> b!529095 m!509693))

(declare-fun m!509699 () Bool)

(assert (=> b!529095 m!509699))

(assert (=> b!529095 m!509693))

(declare-fun m!509701 () Bool)

(assert (=> b!529095 m!509701))

(declare-fun m!509703 () Bool)

(assert (=> b!529095 m!509703))

(declare-fun m!509705 () Bool)

(assert (=> b!529103 m!509705))

(declare-fun m!509707 () Bool)

(assert (=> b!529099 m!509707))

(declare-fun m!509709 () Bool)

(assert (=> b!529100 m!509709))

(declare-fun m!509711 () Bool)

(assert (=> b!529096 m!509711))

(declare-fun m!509713 () Bool)

(assert (=> b!529094 m!509713))

(declare-fun m!509715 () Bool)

(assert (=> start!48048 m!509715))

(declare-fun m!509717 () Bool)

(assert (=> start!48048 m!509717))

(check-sat (not b!529096) (not b!529099) (not b!529103) (not b!529100) (not b!529094) (not b!529097) (not b!529095) (not b!529101) (not start!48048))
(check-sat)
(get-model)

(declare-fun b!529144 () Bool)

(declare-fun e!308330 () Bool)

(declare-fun call!31913 () Bool)

(assert (=> b!529144 (= e!308330 call!31913)))

(declare-fun b!529145 () Bool)

(declare-fun e!308331 () Bool)

(declare-fun e!308332 () Bool)

(assert (=> b!529145 (= e!308331 e!308332)))

(declare-fun res!325181 () Bool)

(assert (=> b!529145 (=> (not res!325181) (not e!308332))))

(declare-fun e!308329 () Bool)

(assert (=> b!529145 (= res!325181 (not e!308329))))

(declare-fun res!325179 () Bool)

(assert (=> b!529145 (=> (not res!325179) (not e!308329))))

(assert (=> b!529145 (= res!325179 (validKeyInArray!0 (select (arr!16096 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!80893 () Bool)

(declare-fun res!325180 () Bool)

(assert (=> d!80893 (=> res!325180 e!308331)))

(assert (=> d!80893 (= res!325180 (bvsge #b00000000000000000000000000000000 (size!16460 a!3235)))))

(assert (=> d!80893 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10304) e!308331)))

(declare-fun b!529146 () Bool)

(assert (=> b!529146 (= e!308332 e!308330)))

(declare-fun c!62291 () Bool)

(assert (=> b!529146 (= c!62291 (validKeyInArray!0 (select (arr!16096 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!529147 () Bool)

(assert (=> b!529147 (= e!308330 call!31913)))

(declare-fun b!529148 () Bool)

(declare-fun contains!2783 (List!10307 (_ BitVec 64)) Bool)

(assert (=> b!529148 (= e!308329 (contains!2783 Nil!10304 (select (arr!16096 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31910 () Bool)

(assert (=> bm!31910 (= call!31913 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62291 (Cons!10303 (select (arr!16096 a!3235) #b00000000000000000000000000000000) Nil!10304) Nil!10304)))))

(assert (= (and d!80893 (not res!325180)) b!529145))

(assert (= (and b!529145 res!325179) b!529148))

(assert (= (and b!529145 res!325181) b!529146))

(assert (= (and b!529146 c!62291) b!529144))

(assert (= (and b!529146 (not c!62291)) b!529147))

(assert (= (or b!529144 b!529147) bm!31910))

(declare-fun m!509755 () Bool)

(assert (=> b!529145 m!509755))

(assert (=> b!529145 m!509755))

(declare-fun m!509757 () Bool)

(assert (=> b!529145 m!509757))

(assert (=> b!529146 m!509755))

(assert (=> b!529146 m!509755))

(assert (=> b!529146 m!509757))

(assert (=> b!529148 m!509755))

(assert (=> b!529148 m!509755))

(declare-fun m!509759 () Bool)

(assert (=> b!529148 m!509759))

(assert (=> bm!31910 m!509755))

(declare-fun m!509761 () Bool)

(assert (=> bm!31910 m!509761))

(assert (=> b!529094 d!80893))

(declare-fun lt!244004 () SeekEntryResult!4570)

(declare-fun e!308341 () SeekEntryResult!4570)

(declare-fun b!529161 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33501 (_ BitVec 32)) SeekEntryResult!4570)

(assert (=> b!529161 (= e!308341 (seekKeyOrZeroReturnVacant!0 (x!49501 lt!244004) (index!20506 lt!244004) (index!20506 lt!244004) k0!2280 a!3235 mask!3524))))

(declare-fun b!529162 () Bool)

(declare-fun e!308339 () SeekEntryResult!4570)

(assert (=> b!529162 (= e!308339 (Found!4570 (index!20506 lt!244004)))))

(declare-fun b!529163 () Bool)

(assert (=> b!529163 (= e!308341 (MissingZero!4570 (index!20506 lt!244004)))))

(declare-fun b!529164 () Bool)

(declare-fun e!308340 () SeekEntryResult!4570)

(assert (=> b!529164 (= e!308340 Undefined!4570)))

(declare-fun d!80895 () Bool)

(declare-fun lt!244003 () SeekEntryResult!4570)

(assert (=> d!80895 (and (or ((_ is Undefined!4570) lt!244003) (not ((_ is Found!4570) lt!244003)) (and (bvsge (index!20505 lt!244003) #b00000000000000000000000000000000) (bvslt (index!20505 lt!244003) (size!16460 a!3235)))) (or ((_ is Undefined!4570) lt!244003) ((_ is Found!4570) lt!244003) (not ((_ is MissingZero!4570) lt!244003)) (and (bvsge (index!20504 lt!244003) #b00000000000000000000000000000000) (bvslt (index!20504 lt!244003) (size!16460 a!3235)))) (or ((_ is Undefined!4570) lt!244003) ((_ is Found!4570) lt!244003) ((_ is MissingZero!4570) lt!244003) (not ((_ is MissingVacant!4570) lt!244003)) (and (bvsge (index!20507 lt!244003) #b00000000000000000000000000000000) (bvslt (index!20507 lt!244003) (size!16460 a!3235)))) (or ((_ is Undefined!4570) lt!244003) (ite ((_ is Found!4570) lt!244003) (= (select (arr!16096 a!3235) (index!20505 lt!244003)) k0!2280) (ite ((_ is MissingZero!4570) lt!244003) (= (select (arr!16096 a!3235) (index!20504 lt!244003)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4570) lt!244003) (= (select (arr!16096 a!3235) (index!20507 lt!244003)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80895 (= lt!244003 e!308340)))

(declare-fun c!62299 () Bool)

(assert (=> d!80895 (= c!62299 (and ((_ is Intermediate!4570) lt!244004) (undefined!5382 lt!244004)))))

(assert (=> d!80895 (= lt!244004 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!80895 (validMask!0 mask!3524)))

(assert (=> d!80895 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!244003)))

(declare-fun b!529165 () Bool)

(declare-fun c!62300 () Bool)

(declare-fun lt!244002 () (_ BitVec 64))

(assert (=> b!529165 (= c!62300 (= lt!244002 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529165 (= e!308339 e!308341)))

(declare-fun b!529166 () Bool)

(assert (=> b!529166 (= e!308340 e!308339)))

(assert (=> b!529166 (= lt!244002 (select (arr!16096 a!3235) (index!20506 lt!244004)))))

(declare-fun c!62298 () Bool)

(assert (=> b!529166 (= c!62298 (= lt!244002 k0!2280))))

(assert (= (and d!80895 c!62299) b!529164))

(assert (= (and d!80895 (not c!62299)) b!529166))

(assert (= (and b!529166 c!62298) b!529162))

(assert (= (and b!529166 (not c!62298)) b!529165))

(assert (= (and b!529165 c!62300) b!529163))

(assert (= (and b!529165 (not c!62300)) b!529161))

(declare-fun m!509763 () Bool)

(assert (=> b!529161 m!509763))

(declare-fun m!509765 () Bool)

(assert (=> d!80895 m!509765))

(assert (=> d!80895 m!509765))

(declare-fun m!509767 () Bool)

(assert (=> d!80895 m!509767))

(declare-fun m!509769 () Bool)

(assert (=> d!80895 m!509769))

(declare-fun m!509771 () Bool)

(assert (=> d!80895 m!509771))

(assert (=> d!80895 m!509715))

(declare-fun m!509773 () Bool)

(assert (=> d!80895 m!509773))

(declare-fun m!509775 () Bool)

(assert (=> b!529166 m!509775))

(assert (=> b!529100 d!80895))

(declare-fun d!80899 () Bool)

(declare-fun lt!244010 () (_ BitVec 32))

(declare-fun lt!244009 () (_ BitVec 32))

(assert (=> d!80899 (= lt!244010 (bvmul (bvxor lt!244009 (bvlshr lt!244009 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80899 (= lt!244009 ((_ extract 31 0) (bvand (bvxor (select (arr!16096 a!3235) j!176) (bvlshr (select (arr!16096 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80899 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!325182 (let ((h!11242 ((_ extract 31 0) (bvand (bvxor (select (arr!16096 a!3235) j!176) (bvlshr (select (arr!16096 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49503 (bvmul (bvxor h!11242 (bvlshr h!11242 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49503 (bvlshr x!49503 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!325182 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!325182 #b00000000000000000000000000000000))))))

(assert (=> d!80899 (= (toIndex!0 (select (arr!16096 a!3235) j!176) mask!3524) (bvand (bvxor lt!244010 (bvlshr lt!244010 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!529095 d!80899))

(declare-fun d!80903 () Bool)

(declare-fun e!308369 () Bool)

(assert (=> d!80903 e!308369))

(declare-fun c!62317 () Bool)

(declare-fun lt!244024 () SeekEntryResult!4570)

(assert (=> d!80903 (= c!62317 (and ((_ is Intermediate!4570) lt!244024) (undefined!5382 lt!244024)))))

(declare-fun e!308367 () SeekEntryResult!4570)

(assert (=> d!80903 (= lt!244024 e!308367)))

(declare-fun c!62316 () Bool)

(assert (=> d!80903 (= c!62316 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!244025 () (_ BitVec 64))

(assert (=> d!80903 (= lt!244025 (select (arr!16096 (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235))) lt!243973))))

(assert (=> d!80903 (validMask!0 mask!3524)))

(assert (=> d!80903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243973 (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176) (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235)) mask!3524) lt!244024)))

(declare-fun b!529209 () Bool)

(assert (=> b!529209 (= e!308369 (bvsge (x!49501 lt!244024) #b01111111111111111111111111111110))))

(declare-fun b!529210 () Bool)

(declare-fun e!308370 () SeekEntryResult!4570)

(assert (=> b!529210 (= e!308370 (Intermediate!4570 false lt!243973 #b00000000000000000000000000000000))))

(declare-fun b!529211 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!529211 (= e!308370 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243973 #b00000000000000000000000000000000 mask!3524) (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176) (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235)) mask!3524))))

(declare-fun b!529212 () Bool)

(assert (=> b!529212 (and (bvsge (index!20506 lt!244024) #b00000000000000000000000000000000) (bvslt (index!20506 lt!244024) (size!16460 (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235)))))))

(declare-fun e!308371 () Bool)

(assert (=> b!529212 (= e!308371 (= (select (arr!16096 (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235))) (index!20506 lt!244024)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!529213 () Bool)

(assert (=> b!529213 (= e!308367 (Intermediate!4570 true lt!243973 #b00000000000000000000000000000000))))

(declare-fun b!529214 () Bool)

(assert (=> b!529214 (= e!308367 e!308370)))

(declare-fun c!62318 () Bool)

(assert (=> b!529214 (= c!62318 (or (= lt!244025 (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!244025 lt!244025) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!529215 () Bool)

(assert (=> b!529215 (and (bvsge (index!20506 lt!244024) #b00000000000000000000000000000000) (bvslt (index!20506 lt!244024) (size!16460 (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235)))))))

(declare-fun res!325195 () Bool)

(assert (=> b!529215 (= res!325195 (= (select (arr!16096 (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235))) (index!20506 lt!244024)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529215 (=> res!325195 e!308371)))

(declare-fun b!529216 () Bool)

(declare-fun e!308368 () Bool)

(assert (=> b!529216 (= e!308369 e!308368)))

(declare-fun res!325196 () Bool)

(assert (=> b!529216 (= res!325196 (and ((_ is Intermediate!4570) lt!244024) (not (undefined!5382 lt!244024)) (bvslt (x!49501 lt!244024) #b01111111111111111111111111111110) (bvsge (x!49501 lt!244024) #b00000000000000000000000000000000) (bvsge (x!49501 lt!244024) #b00000000000000000000000000000000)))))

(assert (=> b!529216 (=> (not res!325196) (not e!308368))))

(declare-fun b!529217 () Bool)

(assert (=> b!529217 (and (bvsge (index!20506 lt!244024) #b00000000000000000000000000000000) (bvslt (index!20506 lt!244024) (size!16460 (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235)))))))

(declare-fun res!325197 () Bool)

(assert (=> b!529217 (= res!325197 (= (select (arr!16096 (array!33502 (store (arr!16096 a!3235) i!1204 k0!2280) (size!16460 a!3235))) (index!20506 lt!244024)) (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176)))))

(assert (=> b!529217 (=> res!325197 e!308371)))

(assert (=> b!529217 (= e!308368 e!308371)))

(assert (= (and d!80903 c!62316) b!529213))

(assert (= (and d!80903 (not c!62316)) b!529214))

(assert (= (and b!529214 c!62318) b!529210))

(assert (= (and b!529214 (not c!62318)) b!529211))

(assert (= (and d!80903 c!62317) b!529209))

(assert (= (and d!80903 (not c!62317)) b!529216))

(assert (= (and b!529216 res!325196) b!529217))

(assert (= (and b!529217 (not res!325197)) b!529215))

(assert (= (and b!529215 (not res!325195)) b!529212))

(declare-fun m!509795 () Bool)

(assert (=> b!529217 m!509795))

(declare-fun m!509797 () Bool)

(assert (=> d!80903 m!509797))

(assert (=> d!80903 m!509715))

(assert (=> b!529212 m!509795))

(assert (=> b!529215 m!509795))

(declare-fun m!509799 () Bool)

(assert (=> b!529211 m!509799))

(assert (=> b!529211 m!509799))

(assert (=> b!529211 m!509693))

(declare-fun m!509801 () Bool)

(assert (=> b!529211 m!509801))

(assert (=> b!529095 d!80903))

(declare-fun d!80913 () Bool)

(assert (=> d!80913 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!244028 () Unit!16744)

(declare-fun choose!38 (array!33501 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16744)

(assert (=> d!80913 (= lt!244028 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!80913 (validMask!0 mask!3524)))

(assert (=> d!80913 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!244028)))

(declare-fun bs!16569 () Bool)

(assert (= bs!16569 d!80913))

(assert (=> bs!16569 m!509703))

(declare-fun m!509803 () Bool)

(assert (=> bs!16569 m!509803))

(assert (=> bs!16569 m!509715))

(assert (=> b!529095 d!80913))

(declare-fun d!80915 () Bool)

(declare-fun lt!244030 () (_ BitVec 32))

(declare-fun lt!244029 () (_ BitVec 32))

(assert (=> d!80915 (= lt!244030 (bvmul (bvxor lt!244029 (bvlshr lt!244029 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!80915 (= lt!244029 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!80915 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!325182 (let ((h!11242 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!49503 (bvmul (bvxor h!11242 (bvlshr h!11242 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!49503 (bvlshr x!49503 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!325182 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!325182 #b00000000000000000000000000000000))))))

(assert (=> d!80915 (= (toIndex!0 (select (store (arr!16096 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!244030 (bvlshr lt!244030 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!529095 d!80915))

(declare-fun d!80917 () Bool)

(declare-fun res!325212 () Bool)

(declare-fun e!308401 () Bool)

(assert (=> d!80917 (=> res!325212 e!308401)))

(assert (=> d!80917 (= res!325212 (bvsge j!176 (size!16460 a!3235)))))

(assert (=> d!80917 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!308401)))

(declare-fun b!529259 () Bool)

(declare-fun e!308400 () Bool)

(declare-fun call!31919 () Bool)

(assert (=> b!529259 (= e!308400 call!31919)))

(declare-fun b!529260 () Bool)

(assert (=> b!529260 (= e!308401 e!308400)))

(declare-fun c!62333 () Bool)

(assert (=> b!529260 (= c!62333 (validKeyInArray!0 (select (arr!16096 a!3235) j!176)))))

(declare-fun bm!31916 () Bool)

(assert (=> bm!31916 (= call!31919 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!529261 () Bool)

(declare-fun e!308399 () Bool)

(assert (=> b!529261 (= e!308400 e!308399)))

(declare-fun lt!244047 () (_ BitVec 64))

(assert (=> b!529261 (= lt!244047 (select (arr!16096 a!3235) j!176))))

(declare-fun lt!244048 () Unit!16744)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!33501 (_ BitVec 64) (_ BitVec 32)) Unit!16744)

(assert (=> b!529261 (= lt!244048 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!244047 j!176))))

(assert (=> b!529261 (arrayContainsKey!0 a!3235 lt!244047 #b00000000000000000000000000000000)))

(declare-fun lt!244046 () Unit!16744)

(assert (=> b!529261 (= lt!244046 lt!244048)))

(declare-fun res!325211 () Bool)

(assert (=> b!529261 (= res!325211 (= (seekEntryOrOpen!0 (select (arr!16096 a!3235) j!176) a!3235 mask!3524) (Found!4570 j!176)))))

(assert (=> b!529261 (=> (not res!325211) (not e!308399))))

(declare-fun b!529262 () Bool)

(assert (=> b!529262 (= e!308399 call!31919)))

(assert (= (and d!80917 (not res!325212)) b!529260))

(assert (= (and b!529260 c!62333) b!529261))

(assert (= (and b!529260 (not c!62333)) b!529259))

(assert (= (and b!529261 res!325211) b!529262))

(assert (= (or b!529262 b!529259) bm!31916))

(assert (=> b!529260 m!509683))

(assert (=> b!529260 m!509683))

(assert (=> b!529260 m!509685))

(declare-fun m!509825 () Bool)

(assert (=> bm!31916 m!509825))

(assert (=> b!529261 m!509683))

(declare-fun m!509827 () Bool)

(assert (=> b!529261 m!509827))

(declare-fun m!509829 () Bool)

(assert (=> b!529261 m!509829))

(assert (=> b!529261 m!509683))

(assert (=> b!529261 m!509687))

(assert (=> b!529095 d!80917))

(declare-fun d!80927 () Bool)

(declare-fun e!308404 () Bool)

(assert (=> d!80927 e!308404))

(declare-fun c!62335 () Bool)

(declare-fun lt!244049 () SeekEntryResult!4570)

(assert (=> d!80927 (= c!62335 (and ((_ is Intermediate!4570) lt!244049) (undefined!5382 lt!244049)))))

(declare-fun e!308402 () SeekEntryResult!4570)

(assert (=> d!80927 (= lt!244049 e!308402)))

(declare-fun c!62334 () Bool)

(assert (=> d!80927 (= c!62334 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!244050 () (_ BitVec 64))

(assert (=> d!80927 (= lt!244050 (select (arr!16096 a!3235) lt!243975))))

(assert (=> d!80927 (validMask!0 mask!3524)))

(assert (=> d!80927 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243975 (select (arr!16096 a!3235) j!176) a!3235 mask!3524) lt!244049)))

(declare-fun b!529263 () Bool)

(assert (=> b!529263 (= e!308404 (bvsge (x!49501 lt!244049) #b01111111111111111111111111111110))))

(declare-fun b!529264 () Bool)

(declare-fun e!308405 () SeekEntryResult!4570)

(assert (=> b!529264 (= e!308405 (Intermediate!4570 false lt!243975 #b00000000000000000000000000000000))))

(declare-fun b!529265 () Bool)

(assert (=> b!529265 (= e!308405 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!243975 #b00000000000000000000000000000000 mask!3524) (select (arr!16096 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!529266 () Bool)

(assert (=> b!529266 (and (bvsge (index!20506 lt!244049) #b00000000000000000000000000000000) (bvslt (index!20506 lt!244049) (size!16460 a!3235)))))

(declare-fun e!308406 () Bool)

(assert (=> b!529266 (= e!308406 (= (select (arr!16096 a!3235) (index!20506 lt!244049)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!529267 () Bool)

(assert (=> b!529267 (= e!308402 (Intermediate!4570 true lt!243975 #b00000000000000000000000000000000))))

(declare-fun b!529268 () Bool)

(assert (=> b!529268 (= e!308402 e!308405)))

(declare-fun c!62336 () Bool)

(assert (=> b!529268 (= c!62336 (or (= lt!244050 (select (arr!16096 a!3235) j!176)) (= (bvadd lt!244050 lt!244050) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!529269 () Bool)

(assert (=> b!529269 (and (bvsge (index!20506 lt!244049) #b00000000000000000000000000000000) (bvslt (index!20506 lt!244049) (size!16460 a!3235)))))

(declare-fun res!325213 () Bool)

(assert (=> b!529269 (= res!325213 (= (select (arr!16096 a!3235) (index!20506 lt!244049)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529269 (=> res!325213 e!308406)))

(declare-fun b!529270 () Bool)

(declare-fun e!308403 () Bool)

(assert (=> b!529270 (= e!308404 e!308403)))

(declare-fun res!325214 () Bool)

(assert (=> b!529270 (= res!325214 (and ((_ is Intermediate!4570) lt!244049) (not (undefined!5382 lt!244049)) (bvslt (x!49501 lt!244049) #b01111111111111111111111111111110) (bvsge (x!49501 lt!244049) #b00000000000000000000000000000000) (bvsge (x!49501 lt!244049) #b00000000000000000000000000000000)))))

(assert (=> b!529270 (=> (not res!325214) (not e!308403))))

(declare-fun b!529271 () Bool)

(assert (=> b!529271 (and (bvsge (index!20506 lt!244049) #b00000000000000000000000000000000) (bvslt (index!20506 lt!244049) (size!16460 a!3235)))))

(declare-fun res!325215 () Bool)

(assert (=> b!529271 (= res!325215 (= (select (arr!16096 a!3235) (index!20506 lt!244049)) (select (arr!16096 a!3235) j!176)))))

(assert (=> b!529271 (=> res!325215 e!308406)))

(assert (=> b!529271 (= e!308403 e!308406)))

(assert (= (and d!80927 c!62334) b!529267))

(assert (= (and d!80927 (not c!62334)) b!529268))

(assert (= (and b!529268 c!62336) b!529264))

(assert (= (and b!529268 (not c!62336)) b!529265))

(assert (= (and d!80927 c!62335) b!529263))

(assert (= (and d!80927 (not c!62335)) b!529270))

(assert (= (and b!529270 res!325214) b!529271))

(assert (= (and b!529271 (not res!325215)) b!529269))

(assert (= (and b!529269 (not res!325213)) b!529266))

(declare-fun m!509831 () Bool)

(assert (=> b!529271 m!509831))

(declare-fun m!509833 () Bool)

(assert (=> d!80927 m!509833))

(assert (=> d!80927 m!509715))

(assert (=> b!529266 m!509831))

(assert (=> b!529269 m!509831))

(declare-fun m!509837 () Bool)

(assert (=> b!529265 m!509837))

(assert (=> b!529265 m!509837))

(assert (=> b!529265 m!509683))

(declare-fun m!509841 () Bool)

(assert (=> b!529265 m!509841))

(assert (=> b!529095 d!80927))

(declare-fun d!80929 () Bool)

(assert (=> d!80929 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!529099 d!80929))

(declare-fun b!529278 () Bool)

(declare-fun lt!244056 () SeekEntryResult!4570)

(declare-fun e!308412 () SeekEntryResult!4570)

(assert (=> b!529278 (= e!308412 (seekKeyOrZeroReturnVacant!0 (x!49501 lt!244056) (index!20506 lt!244056) (index!20506 lt!244056) (select (arr!16096 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!529279 () Bool)

(declare-fun e!308410 () SeekEntryResult!4570)

(assert (=> b!529279 (= e!308410 (Found!4570 (index!20506 lt!244056)))))

(declare-fun b!529280 () Bool)

(assert (=> b!529280 (= e!308412 (MissingZero!4570 (index!20506 lt!244056)))))

(declare-fun b!529281 () Bool)

(declare-fun e!308411 () SeekEntryResult!4570)

(assert (=> b!529281 (= e!308411 Undefined!4570)))

(declare-fun d!80933 () Bool)

(declare-fun lt!244055 () SeekEntryResult!4570)

(assert (=> d!80933 (and (or ((_ is Undefined!4570) lt!244055) (not ((_ is Found!4570) lt!244055)) (and (bvsge (index!20505 lt!244055) #b00000000000000000000000000000000) (bvslt (index!20505 lt!244055) (size!16460 a!3235)))) (or ((_ is Undefined!4570) lt!244055) ((_ is Found!4570) lt!244055) (not ((_ is MissingZero!4570) lt!244055)) (and (bvsge (index!20504 lt!244055) #b00000000000000000000000000000000) (bvslt (index!20504 lt!244055) (size!16460 a!3235)))) (or ((_ is Undefined!4570) lt!244055) ((_ is Found!4570) lt!244055) ((_ is MissingZero!4570) lt!244055) (not ((_ is MissingVacant!4570) lt!244055)) (and (bvsge (index!20507 lt!244055) #b00000000000000000000000000000000) (bvslt (index!20507 lt!244055) (size!16460 a!3235)))) (or ((_ is Undefined!4570) lt!244055) (ite ((_ is Found!4570) lt!244055) (= (select (arr!16096 a!3235) (index!20505 lt!244055)) (select (arr!16096 a!3235) j!176)) (ite ((_ is MissingZero!4570) lt!244055) (= (select (arr!16096 a!3235) (index!20504 lt!244055)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4570) lt!244055) (= (select (arr!16096 a!3235) (index!20507 lt!244055)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!80933 (= lt!244055 e!308411)))

(declare-fun c!62341 () Bool)

(assert (=> d!80933 (= c!62341 (and ((_ is Intermediate!4570) lt!244056) (undefined!5382 lt!244056)))))

(assert (=> d!80933 (= lt!244056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16096 a!3235) j!176) mask!3524) (select (arr!16096 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!80933 (validMask!0 mask!3524)))

(assert (=> d!80933 (= (seekEntryOrOpen!0 (select (arr!16096 a!3235) j!176) a!3235 mask!3524) lt!244055)))

(declare-fun b!529282 () Bool)

(declare-fun c!62342 () Bool)

(declare-fun lt!244054 () (_ BitVec 64))

(assert (=> b!529282 (= c!62342 (= lt!244054 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!529282 (= e!308410 e!308412)))

(declare-fun b!529283 () Bool)

(assert (=> b!529283 (= e!308411 e!308410)))

(assert (=> b!529283 (= lt!244054 (select (arr!16096 a!3235) (index!20506 lt!244056)))))

(declare-fun c!62340 () Bool)

(assert (=> b!529283 (= c!62340 (= lt!244054 (select (arr!16096 a!3235) j!176)))))

(assert (= (and d!80933 c!62341) b!529281))

(assert (= (and d!80933 (not c!62341)) b!529283))

(assert (= (and b!529283 c!62340) b!529279))

(assert (= (and b!529283 (not c!62340)) b!529282))

(assert (= (and b!529282 c!62342) b!529280))

(assert (= (and b!529282 (not c!62342)) b!529278))

(assert (=> b!529278 m!509683))

(declare-fun m!509851 () Bool)

(assert (=> b!529278 m!509851))

(assert (=> d!80933 m!509683))

(assert (=> d!80933 m!509695))

(assert (=> d!80933 m!509695))

(assert (=> d!80933 m!509683))

(declare-fun m!509853 () Bool)

(assert (=> d!80933 m!509853))

(declare-fun m!509855 () Bool)

(assert (=> d!80933 m!509855))

(declare-fun m!509857 () Bool)

(assert (=> d!80933 m!509857))

(assert (=> d!80933 m!509715))

(declare-fun m!509859 () Bool)

(assert (=> d!80933 m!509859))

(declare-fun m!509861 () Bool)

(assert (=> b!529283 m!509861))

(assert (=> b!529097 d!80933))

(declare-fun d!80937 () Bool)

(declare-fun res!325217 () Bool)

(declare-fun e!308415 () Bool)

(assert (=> d!80937 (=> res!325217 e!308415)))

(assert (=> d!80937 (= res!325217 (bvsge #b00000000000000000000000000000000 (size!16460 a!3235)))))

(assert (=> d!80937 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!308415)))

(declare-fun b!529284 () Bool)

(declare-fun e!308414 () Bool)

(declare-fun call!31920 () Bool)

(assert (=> b!529284 (= e!308414 call!31920)))

(declare-fun b!529285 () Bool)

(assert (=> b!529285 (= e!308415 e!308414)))

(declare-fun c!62343 () Bool)

(assert (=> b!529285 (= c!62343 (validKeyInArray!0 (select (arr!16096 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31917 () Bool)

(assert (=> bm!31917 (= call!31920 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!529286 () Bool)

(declare-fun e!308413 () Bool)

(assert (=> b!529286 (= e!308414 e!308413)))

(declare-fun lt!244058 () (_ BitVec 64))

(assert (=> b!529286 (= lt!244058 (select (arr!16096 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!244059 () Unit!16744)

(assert (=> b!529286 (= lt!244059 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!244058 #b00000000000000000000000000000000))))

(assert (=> b!529286 (arrayContainsKey!0 a!3235 lt!244058 #b00000000000000000000000000000000)))

(declare-fun lt!244057 () Unit!16744)

(assert (=> b!529286 (= lt!244057 lt!244059)))

(declare-fun res!325216 () Bool)

(assert (=> b!529286 (= res!325216 (= (seekEntryOrOpen!0 (select (arr!16096 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4570 #b00000000000000000000000000000000)))))

(assert (=> b!529286 (=> (not res!325216) (not e!308413))))

(declare-fun b!529287 () Bool)

(assert (=> b!529287 (= e!308413 call!31920)))

(assert (= (and d!80937 (not res!325217)) b!529285))

(assert (= (and b!529285 c!62343) b!529286))

(assert (= (and b!529285 (not c!62343)) b!529284))

(assert (= (and b!529286 res!325216) b!529287))

(assert (= (or b!529287 b!529284) bm!31917))

(assert (=> b!529285 m!509755))

(assert (=> b!529285 m!509755))

(assert (=> b!529285 m!509757))

(declare-fun m!509863 () Bool)

(assert (=> bm!31917 m!509863))

(assert (=> b!529286 m!509755))

(declare-fun m!509865 () Bool)

(assert (=> b!529286 m!509865))

(declare-fun m!509867 () Bool)

(assert (=> b!529286 m!509867))

(assert (=> b!529286 m!509755))

(declare-fun m!509869 () Bool)

(assert (=> b!529286 m!509869))

(assert (=> b!529103 d!80937))

(declare-fun d!80939 () Bool)

(assert (=> d!80939 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!48048 d!80939))

(declare-fun d!80943 () Bool)

(assert (=> d!80943 (= (array_inv!11870 a!3235) (bvsge (size!16460 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!48048 d!80943))

(declare-fun d!80947 () Bool)

(assert (=> d!80947 (= (validKeyInArray!0 (select (arr!16096 a!3235) j!176)) (and (not (= (select (arr!16096 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16096 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!529101 d!80947))

(declare-fun d!80949 () Bool)

(declare-fun res!325242 () Bool)

(declare-fun e!308447 () Bool)

(assert (=> d!80949 (=> res!325242 e!308447)))

(assert (=> d!80949 (= res!325242 (= (select (arr!16096 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!80949 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!308447)))

(declare-fun b!529334 () Bool)

(declare-fun e!308448 () Bool)

(assert (=> b!529334 (= e!308447 e!308448)))

(declare-fun res!325243 () Bool)

(assert (=> b!529334 (=> (not res!325243) (not e!308448))))

(assert (=> b!529334 (= res!325243 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16460 a!3235)))))

(declare-fun b!529335 () Bool)

(assert (=> b!529335 (= e!308448 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!80949 (not res!325242)) b!529334))

(assert (= (and b!529334 res!325243) b!529335))

(assert (=> d!80949 m!509755))

(declare-fun m!509885 () Bool)

(assert (=> b!529335 m!509885))

(assert (=> b!529096 d!80949))

(check-sat (not d!80913) (not b!529278) (not bm!31917) (not b!529260) (not d!80933) (not bm!31916) (not d!80927) (not b!529211) (not d!80903) (not b!529286) (not b!529285) (not d!80895) (not b!529261) (not bm!31910) (not b!529265) (not b!529146) (not b!529148) (not b!529335) (not b!529145) (not b!529161))
(check-sat)
