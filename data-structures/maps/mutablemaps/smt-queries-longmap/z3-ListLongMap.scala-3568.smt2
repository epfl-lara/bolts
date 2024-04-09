; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49050 () Bool)

(assert start!49050)

(declare-fun b!540196 () Bool)

(declare-fun res!335393 () Bool)

(declare-fun e!312951 () Bool)

(assert (=> b!540196 (=> (not res!335393) (not e!312951))))

(declare-datatypes ((SeekEntryResult!4882 0))(
  ( (MissingZero!4882 (index!21752 (_ BitVec 32))) (Found!4882 (index!21753 (_ BitVec 32))) (Intermediate!4882 (undefined!5694 Bool) (index!21754 (_ BitVec 32)) (x!50690 (_ BitVec 32))) (Undefined!4882) (MissingVacant!4882 (index!21755 (_ BitVec 32))) )
))
(declare-fun lt!247330 () SeekEntryResult!4882)

(declare-fun mask!3216 () (_ BitVec 32))

(declare-fun j!147 () (_ BitVec 32))

(declare-datatypes ((array!34167 0))(
  ( (array!34168 (arr!16417 (Array (_ BitVec 32) (_ BitVec 64))) (size!16781 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34167)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34167 (_ BitVec 32)) SeekEntryResult!4882)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540196 (= res!335393 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16417 a!3154) j!147) mask!3216) (select (arr!16417 a!3154) j!147) a!3154 mask!3216) lt!247330))))

(declare-fun b!540197 () Bool)

(declare-fun res!335395 () Bool)

(declare-fun e!312952 () Bool)

(assert (=> b!540197 (=> (not res!335395) (not e!312952))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540197 (= res!335395 (and (= (size!16781 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16781 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16781 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540198 () Bool)

(declare-fun res!335397 () Bool)

(assert (=> b!540198 (=> (not res!335397) (not e!312952))))

(declare-fun k0!1998 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540198 (= res!335397 (validKeyInArray!0 k0!1998))))

(declare-fun b!540199 () Bool)

(declare-fun res!335402 () Bool)

(declare-fun e!312950 () Bool)

(assert (=> b!540199 (=> (not res!335402) (not e!312950))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540199 (= res!335402 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16781 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16781 a!3154)) (= (select (arr!16417 a!3154) resIndex!32) (select (arr!16417 a!3154) j!147))))))

(declare-fun b!540200 () Bool)

(assert (=> b!540200 (= e!312950 e!312951)))

(declare-fun res!335401 () Bool)

(assert (=> b!540200 (=> (not res!335401) (not e!312951))))

(assert (=> b!540200 (= res!335401 (= lt!247330 (Intermediate!4882 false resIndex!32 resX!32)))))

(assert (=> b!540200 (= lt!247330 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16417 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540201 () Bool)

(declare-fun res!335392 () Bool)

(assert (=> b!540201 (=> (not res!335392) (not e!312952))))

(assert (=> b!540201 (= res!335392 (validKeyInArray!0 (select (arr!16417 a!3154) j!147)))))

(declare-fun b!540203 () Bool)

(assert (=> b!540203 (= e!312951 (and (not (= (select (arr!16417 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16417 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!540204 () Bool)

(declare-fun res!335399 () Bool)

(assert (=> b!540204 (=> (not res!335399) (not e!312950))))

(declare-datatypes ((List!10589 0))(
  ( (Nil!10586) (Cons!10585 (h!11531 (_ BitVec 64)) (t!16825 List!10589)) )
))
(declare-fun arrayNoDuplicates!0 (array!34167 (_ BitVec 32) List!10589) Bool)

(assert (=> b!540204 (= res!335399 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10586))))

(declare-fun b!540205 () Bool)

(assert (=> b!540205 (= e!312952 e!312950)))

(declare-fun res!335400 () Bool)

(assert (=> b!540205 (=> (not res!335400) (not e!312950))))

(declare-fun lt!247331 () SeekEntryResult!4882)

(assert (=> b!540205 (= res!335400 (or (= lt!247331 (MissingZero!4882 i!1153)) (= lt!247331 (MissingVacant!4882 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34167 (_ BitVec 32)) SeekEntryResult!4882)

(assert (=> b!540205 (= lt!247331 (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216))))

(declare-fun b!540206 () Bool)

(declare-fun res!335394 () Bool)

(assert (=> b!540206 (=> (not res!335394) (not e!312952))))

(declare-fun arrayContainsKey!0 (array!34167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540206 (= res!335394 (not (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000)))))

(declare-fun res!335398 () Bool)

(assert (=> start!49050 (=> (not res!335398) (not e!312952))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49050 (= res!335398 (validMask!0 mask!3216))))

(assert (=> start!49050 e!312952))

(assert (=> start!49050 true))

(declare-fun array_inv!12191 (array!34167) Bool)

(assert (=> start!49050 (array_inv!12191 a!3154)))

(declare-fun b!540202 () Bool)

(declare-fun res!335396 () Bool)

(assert (=> b!540202 (=> (not res!335396) (not e!312950))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34167 (_ BitVec 32)) Bool)

(assert (=> b!540202 (= res!335396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(assert (= (and start!49050 res!335398) b!540197))

(assert (= (and b!540197 res!335395) b!540201))

(assert (= (and b!540201 res!335392) b!540198))

(assert (= (and b!540198 res!335397) b!540206))

(assert (= (and b!540206 res!335394) b!540205))

(assert (= (and b!540205 res!335400) b!540202))

(assert (= (and b!540202 res!335396) b!540204))

(assert (= (and b!540204 res!335399) b!540199))

(assert (= (and b!540199 res!335402) b!540200))

(assert (= (and b!540200 res!335401) b!540196))

(assert (= (and b!540196 res!335393) b!540203))

(declare-fun m!519035 () Bool)

(assert (=> b!540205 m!519035))

(declare-fun m!519037 () Bool)

(assert (=> start!49050 m!519037))

(declare-fun m!519039 () Bool)

(assert (=> start!49050 m!519039))

(declare-fun m!519041 () Bool)

(assert (=> b!540199 m!519041))

(declare-fun m!519043 () Bool)

(assert (=> b!540199 m!519043))

(declare-fun m!519045 () Bool)

(assert (=> b!540203 m!519045))

(declare-fun m!519047 () Bool)

(assert (=> b!540202 m!519047))

(declare-fun m!519049 () Bool)

(assert (=> b!540204 m!519049))

(assert (=> b!540201 m!519043))

(assert (=> b!540201 m!519043))

(declare-fun m!519051 () Bool)

(assert (=> b!540201 m!519051))

(assert (=> b!540200 m!519043))

(assert (=> b!540200 m!519043))

(declare-fun m!519053 () Bool)

(assert (=> b!540200 m!519053))

(declare-fun m!519055 () Bool)

(assert (=> b!540206 m!519055))

(declare-fun m!519057 () Bool)

(assert (=> b!540198 m!519057))

(assert (=> b!540196 m!519043))

(assert (=> b!540196 m!519043))

(declare-fun m!519059 () Bool)

(assert (=> b!540196 m!519059))

(assert (=> b!540196 m!519059))

(assert (=> b!540196 m!519043))

(declare-fun m!519061 () Bool)

(assert (=> b!540196 m!519061))

(check-sat (not b!540201) (not b!540196) (not start!49050) (not b!540198) (not b!540205) (not b!540204) (not b!540200) (not b!540202) (not b!540206))
(check-sat)
(get-model)

(declare-fun d!81551 () Bool)

(declare-fun res!335440 () Bool)

(declare-fun e!312969 () Bool)

(assert (=> d!81551 (=> res!335440 e!312969)))

(assert (=> d!81551 (= res!335440 (= (select (arr!16417 a!3154) #b00000000000000000000000000000000) k0!1998))))

(assert (=> d!81551 (= (arrayContainsKey!0 a!3154 k0!1998 #b00000000000000000000000000000000) e!312969)))

(declare-fun b!540244 () Bool)

(declare-fun e!312970 () Bool)

(assert (=> b!540244 (= e!312969 e!312970)))

(declare-fun res!335441 () Bool)

(assert (=> b!540244 (=> (not res!335441) (not e!312970))))

(assert (=> b!540244 (= res!335441 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16781 a!3154)))))

(declare-fun b!540245 () Bool)

(assert (=> b!540245 (= e!312970 (arrayContainsKey!0 a!3154 k0!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81551 (not res!335440)) b!540244))

(assert (= (and b!540244 res!335441) b!540245))

(declare-fun m!519091 () Bool)

(assert (=> d!81551 m!519091))

(declare-fun m!519093 () Bool)

(assert (=> b!540245 m!519093))

(assert (=> b!540206 d!81551))

(declare-fun b!540279 () Bool)

(declare-fun e!312994 () SeekEntryResult!4882)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540279 (= e!312994 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16417 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16417 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540280 () Bool)

(declare-fun e!312995 () SeekEntryResult!4882)

(assert (=> b!540280 (= e!312995 e!312994)))

(declare-fun c!62724 () Bool)

(declare-fun lt!247342 () (_ BitVec 64))

(assert (=> b!540280 (= c!62724 (or (= lt!247342 (select (arr!16417 a!3154) j!147)) (= (bvadd lt!247342 lt!247342) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!540282 () Bool)

(declare-fun e!312996 () Bool)

(declare-fun e!312997 () Bool)

(assert (=> b!540282 (= e!312996 e!312997)))

(declare-fun res!335458 () Bool)

(declare-fun lt!247343 () SeekEntryResult!4882)

(get-info :version)

(assert (=> b!540282 (= res!335458 (and ((_ is Intermediate!4882) lt!247343) (not (undefined!5694 lt!247343)) (bvslt (x!50690 lt!247343) #b01111111111111111111111111111110) (bvsge (x!50690 lt!247343) #b00000000000000000000000000000000) (bvsge (x!50690 lt!247343) #b00000000000000000000000000000000)))))

(assert (=> b!540282 (=> (not res!335458) (not e!312997))))

(declare-fun b!540283 () Bool)

(assert (=> b!540283 (= e!312994 (Intermediate!4882 false (toIndex!0 (select (arr!16417 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!540284 () Bool)

(assert (=> b!540284 (and (bvsge (index!21754 lt!247343) #b00000000000000000000000000000000) (bvslt (index!21754 lt!247343) (size!16781 a!3154)))))

(declare-fun res!335457 () Bool)

(assert (=> b!540284 (= res!335457 (= (select (arr!16417 a!3154) (index!21754 lt!247343)) (select (arr!16417 a!3154) j!147)))))

(declare-fun e!312993 () Bool)

(assert (=> b!540284 (=> res!335457 e!312993)))

(assert (=> b!540284 (= e!312997 e!312993)))

(declare-fun b!540285 () Bool)

(assert (=> b!540285 (and (bvsge (index!21754 lt!247343) #b00000000000000000000000000000000) (bvslt (index!21754 lt!247343) (size!16781 a!3154)))))

(assert (=> b!540285 (= e!312993 (= (select (arr!16417 a!3154) (index!21754 lt!247343)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!540286 () Bool)

(assert (=> b!540286 (= e!312996 (bvsge (x!50690 lt!247343) #b01111111111111111111111111111110))))

(declare-fun b!540287 () Bool)

(assert (=> b!540287 (and (bvsge (index!21754 lt!247343) #b00000000000000000000000000000000) (bvslt (index!21754 lt!247343) (size!16781 a!3154)))))

(declare-fun res!335459 () Bool)

(assert (=> b!540287 (= res!335459 (= (select (arr!16417 a!3154) (index!21754 lt!247343)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!540287 (=> res!335459 e!312993)))

(declare-fun d!81553 () Bool)

(assert (=> d!81553 e!312996))

(declare-fun c!62726 () Bool)

(assert (=> d!81553 (= c!62726 (and ((_ is Intermediate!4882) lt!247343) (undefined!5694 lt!247343)))))

(assert (=> d!81553 (= lt!247343 e!312995)))

(declare-fun c!62725 () Bool)

(assert (=> d!81553 (= c!62725 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81553 (= lt!247342 (select (arr!16417 a!3154) (toIndex!0 (select (arr!16417 a!3154) j!147) mask!3216)))))

(assert (=> d!81553 (validMask!0 mask!3216)))

(assert (=> d!81553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16417 a!3154) j!147) mask!3216) (select (arr!16417 a!3154) j!147) a!3154 mask!3216) lt!247343)))

(declare-fun b!540281 () Bool)

(assert (=> b!540281 (= e!312995 (Intermediate!4882 true (toIndex!0 (select (arr!16417 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(assert (= (and d!81553 c!62725) b!540281))

(assert (= (and d!81553 (not c!62725)) b!540280))

(assert (= (and b!540280 c!62724) b!540283))

(assert (= (and b!540280 (not c!62724)) b!540279))

(assert (= (and d!81553 c!62726) b!540286))

(assert (= (and d!81553 (not c!62726)) b!540282))

(assert (= (and b!540282 res!335458) b!540284))

(assert (= (and b!540284 (not res!335457)) b!540287))

(assert (= (and b!540287 (not res!335459)) b!540285))

(assert (=> b!540279 m!519059))

(declare-fun m!519103 () Bool)

(assert (=> b!540279 m!519103))

(assert (=> b!540279 m!519103))

(assert (=> b!540279 m!519043))

(declare-fun m!519105 () Bool)

(assert (=> b!540279 m!519105))

(assert (=> d!81553 m!519059))

(declare-fun m!519107 () Bool)

(assert (=> d!81553 m!519107))

(assert (=> d!81553 m!519037))

(declare-fun m!519109 () Bool)

(assert (=> b!540287 m!519109))

(assert (=> b!540284 m!519109))

(assert (=> b!540285 m!519109))

(assert (=> b!540196 d!81553))

(declare-fun d!81567 () Bool)

(declare-fun lt!247349 () (_ BitVec 32))

(declare-fun lt!247348 () (_ BitVec 32))

(assert (=> d!81567 (= lt!247349 (bvmul (bvxor lt!247348 (bvlshr lt!247348 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81567 (= lt!247348 ((_ extract 31 0) (bvand (bvxor (select (arr!16417 a!3154) j!147) (bvlshr (select (arr!16417 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81567 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!335460 (let ((h!11533 ((_ extract 31 0) (bvand (bvxor (select (arr!16417 a!3154) j!147) (bvlshr (select (arr!16417 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50693 (bvmul (bvxor h!11533 (bvlshr h!11533 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50693 (bvlshr x!50693 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!335460 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!335460 #b00000000000000000000000000000000))))))

(assert (=> d!81567 (= (toIndex!0 (select (arr!16417 a!3154) j!147) mask!3216) (bvand (bvxor lt!247349 (bvlshr lt!247349 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!540196 d!81567))

(declare-fun d!81569 () Bool)

(assert (=> d!81569 (= (validKeyInArray!0 (select (arr!16417 a!3154) j!147)) (and (not (= (select (arr!16417 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16417 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!540201 d!81569))

(declare-fun d!81571 () Bool)

(declare-fun res!335476 () Bool)

(declare-fun e!313019 () Bool)

(assert (=> d!81571 (=> res!335476 e!313019)))

(assert (=> d!81571 (= res!335476 (bvsge #b00000000000000000000000000000000 (size!16781 a!3154)))))

(assert (=> d!81571 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!313019)))

(declare-fun b!540323 () Bool)

(declare-fun e!313020 () Bool)

(declare-fun e!313021 () Bool)

(assert (=> b!540323 (= e!313020 e!313021)))

(declare-fun lt!247362 () (_ BitVec 64))

(assert (=> b!540323 (= lt!247362 (select (arr!16417 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16862 0))(
  ( (Unit!16863) )
))
(declare-fun lt!247364 () Unit!16862)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34167 (_ BitVec 64) (_ BitVec 32)) Unit!16862)

(assert (=> b!540323 (= lt!247364 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247362 #b00000000000000000000000000000000))))

(assert (=> b!540323 (arrayContainsKey!0 a!3154 lt!247362 #b00000000000000000000000000000000)))

(declare-fun lt!247363 () Unit!16862)

(assert (=> b!540323 (= lt!247363 lt!247364)))

(declare-fun res!335475 () Bool)

(assert (=> b!540323 (= res!335475 (= (seekEntryOrOpen!0 (select (arr!16417 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4882 #b00000000000000000000000000000000)))))

(assert (=> b!540323 (=> (not res!335475) (not e!313021))))

(declare-fun bm!32015 () Bool)

(declare-fun call!32018 () Bool)

(assert (=> bm!32015 (= call!32018 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!540324 () Bool)

(assert (=> b!540324 (= e!313021 call!32018)))

(declare-fun b!540325 () Bool)

(assert (=> b!540325 (= e!313019 e!313020)))

(declare-fun c!62738 () Bool)

(assert (=> b!540325 (= c!62738 (validKeyInArray!0 (select (arr!16417 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!540326 () Bool)

(assert (=> b!540326 (= e!313020 call!32018)))

(assert (= (and d!81571 (not res!335476)) b!540325))

(assert (= (and b!540325 c!62738) b!540323))

(assert (= (and b!540325 (not c!62738)) b!540326))

(assert (= (and b!540323 res!335475) b!540324))

(assert (= (or b!540324 b!540326) bm!32015))

(assert (=> b!540323 m!519091))

(declare-fun m!519119 () Bool)

(assert (=> b!540323 m!519119))

(declare-fun m!519121 () Bool)

(assert (=> b!540323 m!519121))

(assert (=> b!540323 m!519091))

(declare-fun m!519123 () Bool)

(assert (=> b!540323 m!519123))

(declare-fun m!519125 () Bool)

(assert (=> bm!32015 m!519125))

(assert (=> b!540325 m!519091))

(assert (=> b!540325 m!519091))

(declare-fun m!519127 () Bool)

(assert (=> b!540325 m!519127))

(assert (=> b!540202 d!81571))

(declare-fun d!81575 () Bool)

(assert (=> d!81575 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49050 d!81575))

(declare-fun d!81581 () Bool)

(assert (=> d!81581 (= (array_inv!12191 a!3154) (bvsge (size!16781 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49050 d!81581))

(declare-fun d!81583 () Bool)

(assert (=> d!81583 (= (validKeyInArray!0 k0!1998) (and (not (= k0!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!540198 d!81583))

(declare-fun b!540399 () Bool)

(declare-fun e!313073 () Bool)

(declare-fun call!32026 () Bool)

(assert (=> b!540399 (= e!313073 call!32026)))

(declare-fun d!81585 () Bool)

(declare-fun res!335511 () Bool)

(declare-fun e!313072 () Bool)

(assert (=> d!81585 (=> res!335511 e!313072)))

(assert (=> d!81585 (= res!335511 (bvsge #b00000000000000000000000000000000 (size!16781 a!3154)))))

(assert (=> d!81585 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10586) e!313072)))

(declare-fun b!540400 () Bool)

(declare-fun e!313071 () Bool)

(assert (=> b!540400 (= e!313071 e!313073)))

(declare-fun c!62758 () Bool)

(assert (=> b!540400 (= c!62758 (validKeyInArray!0 (select (arr!16417 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!540401 () Bool)

(assert (=> b!540401 (= e!313072 e!313071)))

(declare-fun res!335512 () Bool)

(assert (=> b!540401 (=> (not res!335512) (not e!313071))))

(declare-fun e!313074 () Bool)

(assert (=> b!540401 (= res!335512 (not e!313074))))

(declare-fun res!335513 () Bool)

(assert (=> b!540401 (=> (not res!335513) (not e!313074))))

(assert (=> b!540401 (= res!335513 (validKeyInArray!0 (select (arr!16417 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!540402 () Bool)

(declare-fun contains!2801 (List!10589 (_ BitVec 64)) Bool)

(assert (=> b!540402 (= e!313074 (contains!2801 Nil!10586 (select (arr!16417 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32021 () Bool)

(assert (=> bm!32021 (= call!32026 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62758 (Cons!10585 (select (arr!16417 a!3154) #b00000000000000000000000000000000) Nil!10586) Nil!10586)))))

(declare-fun b!540403 () Bool)

(assert (=> b!540403 (= e!313073 call!32026)))

(assert (= (and d!81585 (not res!335511)) b!540401))

(assert (= (and b!540401 res!335513) b!540402))

(assert (= (and b!540401 res!335512) b!540400))

(assert (= (and b!540400 c!62758) b!540399))

(assert (= (and b!540400 (not c!62758)) b!540403))

(assert (= (or b!540399 b!540403) bm!32021))

(assert (=> b!540400 m!519091))

(assert (=> b!540400 m!519091))

(assert (=> b!540400 m!519127))

(assert (=> b!540401 m!519091))

(assert (=> b!540401 m!519091))

(assert (=> b!540401 m!519127))

(assert (=> b!540402 m!519091))

(assert (=> b!540402 m!519091))

(declare-fun m!519155 () Bool)

(assert (=> b!540402 m!519155))

(assert (=> bm!32021 m!519091))

(declare-fun m!519157 () Bool)

(assert (=> bm!32021 m!519157))

(assert (=> b!540204 d!81585))

(declare-fun b!540404 () Bool)

(declare-fun e!313076 () SeekEntryResult!4882)

(assert (=> b!540404 (= e!313076 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16417 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540405 () Bool)

(declare-fun e!313077 () SeekEntryResult!4882)

(assert (=> b!540405 (= e!313077 e!313076)))

(declare-fun lt!247394 () (_ BitVec 64))

(declare-fun c!62759 () Bool)

(assert (=> b!540405 (= c!62759 (or (= lt!247394 (select (arr!16417 a!3154) j!147)) (= (bvadd lt!247394 lt!247394) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!540407 () Bool)

(declare-fun e!313078 () Bool)

(declare-fun e!313079 () Bool)

(assert (=> b!540407 (= e!313078 e!313079)))

(declare-fun res!335515 () Bool)

(declare-fun lt!247395 () SeekEntryResult!4882)

(assert (=> b!540407 (= res!335515 (and ((_ is Intermediate!4882) lt!247395) (not (undefined!5694 lt!247395)) (bvslt (x!50690 lt!247395) #b01111111111111111111111111111110) (bvsge (x!50690 lt!247395) #b00000000000000000000000000000000) (bvsge (x!50690 lt!247395) x!1030)))))

(assert (=> b!540407 (=> (not res!335515) (not e!313079))))

(declare-fun b!540408 () Bool)

(assert (=> b!540408 (= e!313076 (Intermediate!4882 false index!1177 x!1030))))

(declare-fun b!540409 () Bool)

(assert (=> b!540409 (and (bvsge (index!21754 lt!247395) #b00000000000000000000000000000000) (bvslt (index!21754 lt!247395) (size!16781 a!3154)))))

(declare-fun res!335514 () Bool)

(assert (=> b!540409 (= res!335514 (= (select (arr!16417 a!3154) (index!21754 lt!247395)) (select (arr!16417 a!3154) j!147)))))

(declare-fun e!313075 () Bool)

(assert (=> b!540409 (=> res!335514 e!313075)))

(assert (=> b!540409 (= e!313079 e!313075)))

(declare-fun b!540410 () Bool)

(assert (=> b!540410 (and (bvsge (index!21754 lt!247395) #b00000000000000000000000000000000) (bvslt (index!21754 lt!247395) (size!16781 a!3154)))))

(assert (=> b!540410 (= e!313075 (= (select (arr!16417 a!3154) (index!21754 lt!247395)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!540411 () Bool)

(assert (=> b!540411 (= e!313078 (bvsge (x!50690 lt!247395) #b01111111111111111111111111111110))))

(declare-fun b!540412 () Bool)

(assert (=> b!540412 (and (bvsge (index!21754 lt!247395) #b00000000000000000000000000000000) (bvslt (index!21754 lt!247395) (size!16781 a!3154)))))

(declare-fun res!335516 () Bool)

(assert (=> b!540412 (= res!335516 (= (select (arr!16417 a!3154) (index!21754 lt!247395)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!540412 (=> res!335516 e!313075)))

(declare-fun d!81593 () Bool)

(assert (=> d!81593 e!313078))

(declare-fun c!62761 () Bool)

(assert (=> d!81593 (= c!62761 (and ((_ is Intermediate!4882) lt!247395) (undefined!5694 lt!247395)))))

(assert (=> d!81593 (= lt!247395 e!313077)))

(declare-fun c!62760 () Bool)

(assert (=> d!81593 (= c!62760 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81593 (= lt!247394 (select (arr!16417 a!3154) index!1177))))

(assert (=> d!81593 (validMask!0 mask!3216)))

(assert (=> d!81593 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16417 a!3154) j!147) a!3154 mask!3216) lt!247395)))

(declare-fun b!540406 () Bool)

(assert (=> b!540406 (= e!313077 (Intermediate!4882 true index!1177 x!1030))))

(assert (= (and d!81593 c!62760) b!540406))

(assert (= (and d!81593 (not c!62760)) b!540405))

(assert (= (and b!540405 c!62759) b!540408))

(assert (= (and b!540405 (not c!62759)) b!540404))

(assert (= (and d!81593 c!62761) b!540411))

(assert (= (and d!81593 (not c!62761)) b!540407))

(assert (= (and b!540407 res!335515) b!540409))

(assert (= (and b!540409 (not res!335514)) b!540412))

(assert (= (and b!540412 (not res!335516)) b!540410))

(declare-fun m!519159 () Bool)

(assert (=> b!540404 m!519159))

(assert (=> b!540404 m!519159))

(assert (=> b!540404 m!519043))

(declare-fun m!519161 () Bool)

(assert (=> b!540404 m!519161))

(assert (=> d!81593 m!519045))

(assert (=> d!81593 m!519037))

(declare-fun m!519163 () Bool)

(assert (=> b!540412 m!519163))

(assert (=> b!540409 m!519163))

(assert (=> b!540410 m!519163))

(assert (=> b!540200 d!81593))

(declare-fun b!540453 () Bool)

(declare-fun e!313105 () SeekEntryResult!4882)

(assert (=> b!540453 (= e!313105 Undefined!4882)))

(declare-fun b!540454 () Bool)

(declare-fun e!313104 () SeekEntryResult!4882)

(declare-fun lt!247414 () SeekEntryResult!4882)

(assert (=> b!540454 (= e!313104 (MissingZero!4882 (index!21754 lt!247414)))))

(declare-fun b!540455 () Bool)

(declare-fun e!313106 () SeekEntryResult!4882)

(assert (=> b!540455 (= e!313105 e!313106)))

(declare-fun lt!247415 () (_ BitVec 64))

(assert (=> b!540455 (= lt!247415 (select (arr!16417 a!3154) (index!21754 lt!247414)))))

(declare-fun c!62778 () Bool)

(assert (=> b!540455 (= c!62778 (= lt!247415 k0!1998))))

(declare-fun b!540456 () Bool)

(declare-fun c!62780 () Bool)

(assert (=> b!540456 (= c!62780 (= lt!247415 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!540456 (= e!313106 e!313104)))

(declare-fun d!81595 () Bool)

(declare-fun lt!247416 () SeekEntryResult!4882)

(assert (=> d!81595 (and (or ((_ is Undefined!4882) lt!247416) (not ((_ is Found!4882) lt!247416)) (and (bvsge (index!21753 lt!247416) #b00000000000000000000000000000000) (bvslt (index!21753 lt!247416) (size!16781 a!3154)))) (or ((_ is Undefined!4882) lt!247416) ((_ is Found!4882) lt!247416) (not ((_ is MissingZero!4882) lt!247416)) (and (bvsge (index!21752 lt!247416) #b00000000000000000000000000000000) (bvslt (index!21752 lt!247416) (size!16781 a!3154)))) (or ((_ is Undefined!4882) lt!247416) ((_ is Found!4882) lt!247416) ((_ is MissingZero!4882) lt!247416) (not ((_ is MissingVacant!4882) lt!247416)) (and (bvsge (index!21755 lt!247416) #b00000000000000000000000000000000) (bvslt (index!21755 lt!247416) (size!16781 a!3154)))) (or ((_ is Undefined!4882) lt!247416) (ite ((_ is Found!4882) lt!247416) (= (select (arr!16417 a!3154) (index!21753 lt!247416)) k0!1998) (ite ((_ is MissingZero!4882) lt!247416) (= (select (arr!16417 a!3154) (index!21752 lt!247416)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4882) lt!247416) (= (select (arr!16417 a!3154) (index!21755 lt!247416)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!81595 (= lt!247416 e!313105)))

(declare-fun c!62779 () Bool)

(assert (=> d!81595 (= c!62779 (and ((_ is Intermediate!4882) lt!247414) (undefined!5694 lt!247414)))))

(assert (=> d!81595 (= lt!247414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1998 mask!3216) k0!1998 a!3154 mask!3216))))

(assert (=> d!81595 (validMask!0 mask!3216)))

(assert (=> d!81595 (= (seekEntryOrOpen!0 k0!1998 a!3154 mask!3216) lt!247416)))

(declare-fun b!540457 () Bool)

(assert (=> b!540457 (= e!313106 (Found!4882 (index!21754 lt!247414)))))

(declare-fun b!540458 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34167 (_ BitVec 32)) SeekEntryResult!4882)

(assert (=> b!540458 (= e!313104 (seekKeyOrZeroReturnVacant!0 (x!50690 lt!247414) (index!21754 lt!247414) (index!21754 lt!247414) k0!1998 a!3154 mask!3216))))

(assert (= (and d!81595 c!62779) b!540453))

(assert (= (and d!81595 (not c!62779)) b!540455))

(assert (= (and b!540455 c!62778) b!540457))

(assert (= (and b!540455 (not c!62778)) b!540456))

(assert (= (and b!540456 c!62780) b!540454))

(assert (= (and b!540456 (not c!62780)) b!540458))

(declare-fun m!519189 () Bool)

(assert (=> b!540455 m!519189))

(declare-fun m!519191 () Bool)

(assert (=> d!81595 m!519191))

(declare-fun m!519193 () Bool)

(assert (=> d!81595 m!519193))

(declare-fun m!519195 () Bool)

(assert (=> d!81595 m!519195))

(declare-fun m!519197 () Bool)

(assert (=> d!81595 m!519197))

(assert (=> d!81595 m!519037))

(assert (=> d!81595 m!519193))

(declare-fun m!519199 () Bool)

(assert (=> d!81595 m!519199))

(declare-fun m!519201 () Bool)

(assert (=> b!540458 m!519201))

(assert (=> b!540205 d!81595))

(check-sat (not d!81595) (not b!540404) (not d!81593) (not b!540400) (not bm!32015) (not b!540325) (not b!540402) (not b!540458) (not d!81553) (not b!540323) (not b!540401) (not b!540245) (not b!540279) (not bm!32021))
(check-sat)
