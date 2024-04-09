; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49048 () Bool)

(assert start!49048)

(declare-fun b!540163 () Bool)

(declare-fun e!312939 () Bool)

(declare-fun e!312937 () Bool)

(assert (=> b!540163 (= e!312939 e!312937)))

(declare-fun res!335364 () Bool)

(assert (=> b!540163 (=> (not res!335364) (not e!312937))))

(declare-fun resIndex!32 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4881 0))(
  ( (MissingZero!4881 (index!21748 (_ BitVec 32))) (Found!4881 (index!21749 (_ BitVec 32))) (Intermediate!4881 (undefined!5693 Bool) (index!21750 (_ BitVec 32)) (x!50689 (_ BitVec 32))) (Undefined!4881) (MissingVacant!4881 (index!21751 (_ BitVec 32))) )
))
(declare-fun lt!247324 () SeekEntryResult!4881)

(declare-fun resX!32 () (_ BitVec 32))

(assert (=> b!540163 (= res!335364 (= lt!247324 (Intermediate!4881 false resIndex!32 resX!32)))))

(declare-fun index!1177 () (_ BitVec 32))

(declare-fun x!1030 () (_ BitVec 32))

(declare-fun mask!3216 () (_ BitVec 32))

(declare-datatypes ((array!34165 0))(
  ( (array!34166 (arr!16416 (Array (_ BitVec 32) (_ BitVec 64))) (size!16780 (_ BitVec 32))) )
))
(declare-fun a!3154 () array!34165)

(declare-fun j!147 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34165 (_ BitVec 32)) SeekEntryResult!4881)

(assert (=> b!540163 (= lt!247324 (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16416 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540164 () Bool)

(declare-fun res!335366 () Bool)

(assert (=> b!540164 (=> (not res!335366) (not e!312939))))

(declare-datatypes ((List!10588 0))(
  ( (Nil!10585) (Cons!10584 (h!11530 (_ BitVec 64)) (t!16824 List!10588)) )
))
(declare-fun arrayNoDuplicates!0 (array!34165 (_ BitVec 32) List!10588) Bool)

(assert (=> b!540164 (= res!335366 (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10585))))

(declare-fun b!540165 () Bool)

(declare-fun res!335363 () Bool)

(declare-fun e!312938 () Bool)

(assert (=> b!540165 (=> (not res!335363) (not e!312938))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!540165 (= res!335363 (validKeyInArray!0 (select (arr!16416 a!3154) j!147)))))

(declare-fun b!540166 () Bool)

(declare-fun res!335359 () Bool)

(assert (=> b!540166 (=> (not res!335359) (not e!312937))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540166 (= res!335359 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16416 a!3154) j!147) mask!3216) (select (arr!16416 a!3154) j!147) a!3154 mask!3216) lt!247324))))

(declare-fun b!540167 () Bool)

(declare-fun res!335365 () Bool)

(assert (=> b!540167 (=> (not res!335365) (not e!312939))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34165 (_ BitVec 32)) Bool)

(assert (=> b!540167 (= res!335365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216))))

(declare-fun b!540168 () Bool)

(declare-fun res!335368 () Bool)

(assert (=> b!540168 (=> (not res!335368) (not e!312938))))

(declare-fun i!1153 () (_ BitVec 32))

(assert (=> b!540168 (= res!335368 (and (= (size!16780 a!3154) (bvadd #b00000000000000000000000000000001 mask!3216)) (bvsge i!1153 #b00000000000000000000000000000000) (bvslt i!1153 (size!16780 a!3154)) (bvsge j!147 #b00000000000000000000000000000000) (bvslt j!147 (size!16780 a!3154)) (not (= i!1153 j!147))))))

(declare-fun b!540170 () Bool)

(declare-fun res!335362 () Bool)

(assert (=> b!540170 (=> (not res!335362) (not e!312939))))

(assert (=> b!540170 (= res!335362 (and (bvsle resX!32 #b01111111111111111111111111111110) (bvsle x!1030 resX!32) (bvsge x!1030 #b00000000000000000000000000000000) (bvsge index!1177 #b00000000000000000000000000000000) (bvslt index!1177 (size!16780 a!3154)) (bvsge resIndex!32 #b00000000000000000000000000000000) (bvslt resIndex!32 (size!16780 a!3154)) (= (select (arr!16416 a!3154) resIndex!32) (select (arr!16416 a!3154) j!147))))))

(declare-fun b!540171 () Bool)

(declare-fun res!335361 () Bool)

(assert (=> b!540171 (=> (not res!335361) (not e!312938))))

(declare-fun k!1998 () (_ BitVec 64))

(assert (=> b!540171 (= res!335361 (validKeyInArray!0 k!1998))))

(declare-fun b!540172 () Bool)

(declare-fun res!335369 () Bool)

(assert (=> b!540172 (=> (not res!335369) (not e!312938))))

(declare-fun arrayContainsKey!0 (array!34165 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!540172 (= res!335369 (not (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000)))))

(declare-fun b!540173 () Bool)

(assert (=> b!540173 (= e!312937 (and (not (= (select (arr!16416 a!3154) index!1177) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16416 a!3154) index!1177) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!540169 () Bool)

(assert (=> b!540169 (= e!312938 e!312939)))

(declare-fun res!335367 () Bool)

(assert (=> b!540169 (=> (not res!335367) (not e!312939))))

(declare-fun lt!247325 () SeekEntryResult!4881)

(assert (=> b!540169 (= res!335367 (or (= lt!247325 (MissingZero!4881 i!1153)) (= lt!247325 (MissingVacant!4881 i!1153))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34165 (_ BitVec 32)) SeekEntryResult!4881)

(assert (=> b!540169 (= lt!247325 (seekEntryOrOpen!0 k!1998 a!3154 mask!3216))))

(declare-fun res!335360 () Bool)

(assert (=> start!49048 (=> (not res!335360) (not e!312938))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49048 (= res!335360 (validMask!0 mask!3216))))

(assert (=> start!49048 e!312938))

(assert (=> start!49048 true))

(declare-fun array_inv!12190 (array!34165) Bool)

(assert (=> start!49048 (array_inv!12190 a!3154)))

(assert (= (and start!49048 res!335360) b!540168))

(assert (= (and b!540168 res!335368) b!540165))

(assert (= (and b!540165 res!335363) b!540171))

(assert (= (and b!540171 res!335361) b!540172))

(assert (= (and b!540172 res!335369) b!540169))

(assert (= (and b!540169 res!335367) b!540167))

(assert (= (and b!540167 res!335365) b!540164))

(assert (= (and b!540164 res!335366) b!540170))

(assert (= (and b!540170 res!335362) b!540163))

(assert (= (and b!540163 res!335364) b!540166))

(assert (= (and b!540166 res!335359) b!540173))

(declare-fun m!519007 () Bool)

(assert (=> b!540172 m!519007))

(declare-fun m!519009 () Bool)

(assert (=> b!540163 m!519009))

(assert (=> b!540163 m!519009))

(declare-fun m!519011 () Bool)

(assert (=> b!540163 m!519011))

(declare-fun m!519013 () Bool)

(assert (=> b!540171 m!519013))

(declare-fun m!519015 () Bool)

(assert (=> b!540173 m!519015))

(declare-fun m!519017 () Bool)

(assert (=> b!540164 m!519017))

(declare-fun m!519019 () Bool)

(assert (=> b!540167 m!519019))

(declare-fun m!519021 () Bool)

(assert (=> start!49048 m!519021))

(declare-fun m!519023 () Bool)

(assert (=> start!49048 m!519023))

(assert (=> b!540166 m!519009))

(assert (=> b!540166 m!519009))

(declare-fun m!519025 () Bool)

(assert (=> b!540166 m!519025))

(assert (=> b!540166 m!519025))

(assert (=> b!540166 m!519009))

(declare-fun m!519027 () Bool)

(assert (=> b!540166 m!519027))

(assert (=> b!540165 m!519009))

(assert (=> b!540165 m!519009))

(declare-fun m!519029 () Bool)

(assert (=> b!540165 m!519029))

(declare-fun m!519031 () Bool)

(assert (=> b!540169 m!519031))

(declare-fun m!519033 () Bool)

(assert (=> b!540170 m!519033))

(assert (=> b!540170 m!519009))

(push 1)

(assert (not b!540165))

(assert (not b!540164))

(assert (not b!540163))

(assert (not b!540167))

(assert (not b!540171))

(assert (not b!540166))

(assert (not start!49048))

(assert (not b!540172))

(assert (not b!540169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!81557 () Bool)

(assert (=> d!81557 (= (validKeyInArray!0 (select (arr!16416 a!3154) j!147)) (and (not (= (select (arr!16416 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16416 a!3154) j!147) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!540165 d!81557))

(declare-fun d!81559 () Bool)

(assert (=> d!81559 (= (validKeyInArray!0 k!1998) (and (not (= k!1998 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1998 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!540171 d!81559))

(declare-fun b!540314 () Bool)

(declare-fun lt!247360 () SeekEntryResult!4881)

(assert (=> b!540314 (and (bvsge (index!21750 lt!247360) #b00000000000000000000000000000000) (bvslt (index!21750 lt!247360) (size!16780 a!3154)))))

(declare-fun e!313014 () Bool)

(assert (=> b!540314 (= e!313014 (= (select (arr!16416 a!3154) (index!21750 lt!247360)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!540315 () Bool)

(declare-fun e!313016 () SeekEntryResult!4881)

(declare-fun e!313018 () SeekEntryResult!4881)

(assert (=> b!540315 (= e!313016 e!313018)))

(declare-fun lt!247361 () (_ BitVec 64))

(declare-fun c!62736 () Bool)

(assert (=> b!540315 (= c!62736 (or (= lt!247361 (select (arr!16416 a!3154) j!147)) (= (bvadd lt!247361 lt!247361) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81561 () Bool)

(declare-fun e!313015 () Bool)

(assert (=> d!81561 e!313015))

(declare-fun c!62735 () Bool)

(assert (=> d!81561 (= c!62735 (and (is-Intermediate!4881 lt!247360) (undefined!5693 lt!247360)))))

(assert (=> d!81561 (= lt!247360 e!313016)))

(declare-fun c!62737 () Bool)

(assert (=> d!81561 (= c!62737 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!81561 (= lt!247361 (select (arr!16416 a!3154) (toIndex!0 (select (arr!16416 a!3154) j!147) mask!3216)))))

(assert (=> d!81561 (validMask!0 mask!3216)))

(assert (=> d!81561 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16416 a!3154) j!147) mask!3216) (select (arr!16416 a!3154) j!147) a!3154 mask!3216) lt!247360)))

(declare-fun b!540316 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!540316 (= e!313018 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!16416 a!3154) j!147) mask!3216) #b00000000000000000000000000000000 mask!3216) (select (arr!16416 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540317 () Bool)

(assert (=> b!540317 (= e!313016 (Intermediate!4881 true (toIndex!0 (select (arr!16416 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(declare-fun b!540318 () Bool)

(assert (=> b!540318 (and (bvsge (index!21750 lt!247360) #b00000000000000000000000000000000) (bvslt (index!21750 lt!247360) (size!16780 a!3154)))))

(declare-fun res!335473 () Bool)

(assert (=> b!540318 (= res!335473 (= (select (arr!16416 a!3154) (index!21750 lt!247360)) (select (arr!16416 a!3154) j!147)))))

(assert (=> b!540318 (=> res!335473 e!313014)))

(declare-fun e!313017 () Bool)

(assert (=> b!540318 (= e!313017 e!313014)))

(declare-fun b!540319 () Bool)

(assert (=> b!540319 (= e!313015 (bvsge (x!50689 lt!247360) #b01111111111111111111111111111110))))

(declare-fun b!540320 () Bool)

(assert (=> b!540320 (= e!313015 e!313017)))

(declare-fun res!335471 () Bool)

(assert (=> b!540320 (= res!335471 (and (is-Intermediate!4881 lt!247360) (not (undefined!5693 lt!247360)) (bvslt (x!50689 lt!247360) #b01111111111111111111111111111110) (bvsge (x!50689 lt!247360) #b00000000000000000000000000000000) (bvsge (x!50689 lt!247360) #b00000000000000000000000000000000)))))

(assert (=> b!540320 (=> (not res!335471) (not e!313017))))

(declare-fun b!540321 () Bool)

(assert (=> b!540321 (and (bvsge (index!21750 lt!247360) #b00000000000000000000000000000000) (bvslt (index!21750 lt!247360) (size!16780 a!3154)))))

(declare-fun res!335472 () Bool)

(assert (=> b!540321 (= res!335472 (= (select (arr!16416 a!3154) (index!21750 lt!247360)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!540321 (=> res!335472 e!313014)))

(declare-fun b!540322 () Bool)

(assert (=> b!540322 (= e!313018 (Intermediate!4881 false (toIndex!0 (select (arr!16416 a!3154) j!147) mask!3216) #b00000000000000000000000000000000))))

(assert (= (and d!81561 c!62737) b!540317))

(assert (= (and d!81561 (not c!62737)) b!540315))

(assert (= (and b!540315 c!62736) b!540322))

(assert (= (and b!540315 (not c!62736)) b!540316))

(assert (= (and d!81561 c!62735) b!540319))

(assert (= (and d!81561 (not c!62735)) b!540320))

(assert (= (and b!540320 res!335471) b!540318))

(assert (= (and b!540318 (not res!335473)) b!540321))

(assert (= (and b!540321 (not res!335472)) b!540314))

(declare-fun m!519111 () Bool)

(assert (=> b!540321 m!519111))

(assert (=> d!81561 m!519025))

(declare-fun m!519113 () Bool)

(assert (=> d!81561 m!519113))

(assert (=> d!81561 m!519021))

(assert (=> b!540318 m!519111))

(assert (=> b!540314 m!519111))

(assert (=> b!540316 m!519025))

(declare-fun m!519115 () Bool)

(assert (=> b!540316 m!519115))

(assert (=> b!540316 m!519115))

(assert (=> b!540316 m!519009))

(declare-fun m!519117 () Bool)

(assert (=> b!540316 m!519117))

(assert (=> b!540166 d!81561))

(declare-fun d!81573 () Bool)

(declare-fun lt!247374 () (_ BitVec 32))

(declare-fun lt!247373 () (_ BitVec 32))

(assert (=> d!81573 (= lt!247374 (bvmul (bvxor lt!247373 (bvlshr lt!247373 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!81573 (= lt!247373 ((_ extract 31 0) (bvand (bvxor (select (arr!16416 a!3154) j!147) (bvlshr (select (arr!16416 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!81573 (and (bvsge mask!3216 #b00000000000000000000000000000000) (let ((res!335474 (let ((h!11534 ((_ extract 31 0) (bvand (bvxor (select (arr!16416 a!3154) j!147) (bvlshr (select (arr!16416 a!3154) j!147) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!50695 (bvmul (bvxor h!11534 (bvlshr h!11534 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!50695 (bvlshr x!50695 #b00000000000000000000000000001101)) mask!3216))))) (and (bvslt res!335474 (bvadd mask!3216 #b00000000000000000000000000000001)) (bvsge res!335474 #b00000000000000000000000000000000))))))

(assert (=> d!81573 (= (toIndex!0 (select (arr!16416 a!3154) j!147) mask!3216) (bvand (bvxor lt!247374 (bvlshr lt!247374 #b00000000000000000000000000001101)) mask!3216))))

(assert (=> b!540166 d!81573))

(declare-fun bm!32018 () Bool)

(declare-fun call!32021 () Bool)

(assert (=> bm!32018 (= call!32021 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3154 mask!3216))))

(declare-fun b!540362 () Bool)

(declare-fun e!313045 () Bool)

(assert (=> b!540362 (= e!313045 call!32021)))

(declare-fun b!540363 () Bool)

(declare-fun e!313044 () Bool)

(assert (=> b!540363 (= e!313045 e!313044)))

(declare-fun lt!247384 () (_ BitVec 64))

(assert (=> b!540363 (= lt!247384 (select (arr!16416 a!3154) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!16864 0))(
  ( (Unit!16865) )
))
(declare-fun lt!247383 () Unit!16864)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!34165 (_ BitVec 64) (_ BitVec 32)) Unit!16864)

(assert (=> b!540363 (= lt!247383 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3154 lt!247384 #b00000000000000000000000000000000))))

(assert (=> b!540363 (arrayContainsKey!0 a!3154 lt!247384 #b00000000000000000000000000000000)))

(declare-fun lt!247385 () Unit!16864)

(assert (=> b!540363 (= lt!247385 lt!247383)))

(declare-fun res!335491 () Bool)

(assert (=> b!540363 (= res!335491 (= (seekEntryOrOpen!0 (select (arr!16416 a!3154) #b00000000000000000000000000000000) a!3154 mask!3216) (Found!4881 #b00000000000000000000000000000000)))))

(assert (=> b!540363 (=> (not res!335491) (not e!313044))))

(declare-fun b!540364 () Bool)

(declare-fun e!313043 () Bool)

(assert (=> b!540364 (= e!313043 e!313045)))

(declare-fun c!62750 () Bool)

(assert (=> b!540364 (= c!62750 (validKeyInArray!0 (select (arr!16416 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!540365 () Bool)

(assert (=> b!540365 (= e!313044 call!32021)))

(declare-fun d!81577 () Bool)

(declare-fun res!335490 () Bool)

(assert (=> d!81577 (=> res!335490 e!313043)))

(assert (=> d!81577 (= res!335490 (bvsge #b00000000000000000000000000000000 (size!16780 a!3154)))))

(assert (=> d!81577 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3154 mask!3216) e!313043)))

(assert (= (and d!81577 (not res!335490)) b!540364))

(assert (= (and b!540364 c!62750) b!540363))

(assert (= (and b!540364 (not c!62750)) b!540362))

(assert (= (and b!540363 res!335491) b!540365))

(assert (= (or b!540365 b!540362) bm!32018))

(declare-fun m!519135 () Bool)

(assert (=> bm!32018 m!519135))

(declare-fun m!519137 () Bool)

(assert (=> b!540363 m!519137))

(declare-fun m!519139 () Bool)

(assert (=> b!540363 m!519139))

(declare-fun m!519141 () Bool)

(assert (=> b!540363 m!519141))

(assert (=> b!540363 m!519137))

(declare-fun m!519143 () Bool)

(assert (=> b!540363 m!519143))

(assert (=> b!540364 m!519137))

(assert (=> b!540364 m!519137))

(declare-fun m!519145 () Bool)

(assert (=> b!540364 m!519145))

(assert (=> b!540167 d!81577))

(declare-fun d!81587 () Bool)

(declare-fun res!335502 () Bool)

(declare-fun e!313058 () Bool)

(assert (=> d!81587 (=> res!335502 e!313058)))

(assert (=> d!81587 (= res!335502 (= (select (arr!16416 a!3154) #b00000000000000000000000000000000) k!1998))))

(assert (=> d!81587 (= (arrayContainsKey!0 a!3154 k!1998 #b00000000000000000000000000000000) e!313058)))

(declare-fun b!540380 () Bool)

(declare-fun e!313059 () Bool)

(assert (=> b!540380 (= e!313058 e!313059)))

(declare-fun res!335503 () Bool)

(assert (=> b!540380 (=> (not res!335503) (not e!313059))))

(assert (=> b!540380 (= res!335503 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16780 a!3154)))))

(declare-fun b!540381 () Bool)

(assert (=> b!540381 (= e!313059 (arrayContainsKey!0 a!3154 k!1998 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!81587 (not res!335502)) b!540380))

(assert (= (and b!540380 res!335503) b!540381))

(assert (=> d!81587 m!519137))

(declare-fun m!519147 () Bool)

(assert (=> b!540381 m!519147))

(assert (=> b!540172 d!81587))

(declare-fun b!540386 () Bool)

(declare-fun lt!247386 () SeekEntryResult!4881)

(assert (=> b!540386 (and (bvsge (index!21750 lt!247386) #b00000000000000000000000000000000) (bvslt (index!21750 lt!247386) (size!16780 a!3154)))))

(declare-fun e!313062 () Bool)

(assert (=> b!540386 (= e!313062 (= (select (arr!16416 a!3154) (index!21750 lt!247386)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!540387 () Bool)

(declare-fun e!313064 () SeekEntryResult!4881)

(declare-fun e!313066 () SeekEntryResult!4881)

(assert (=> b!540387 (= e!313064 e!313066)))

(declare-fun lt!247387 () (_ BitVec 64))

(declare-fun c!62754 () Bool)

(assert (=> b!540387 (= c!62754 (or (= lt!247387 (select (arr!16416 a!3154) j!147)) (= (bvadd lt!247387 lt!247387) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!81589 () Bool)

(declare-fun e!313063 () Bool)

(assert (=> d!81589 e!313063))

(declare-fun c!62753 () Bool)

(assert (=> d!81589 (= c!62753 (and (is-Intermediate!4881 lt!247386) (undefined!5693 lt!247386)))))

(assert (=> d!81589 (= lt!247386 e!313064)))

(declare-fun c!62755 () Bool)

(assert (=> d!81589 (= c!62755 (bvsge x!1030 #b01111111111111111111111111111110))))

(assert (=> d!81589 (= lt!247387 (select (arr!16416 a!3154) index!1177))))

(assert (=> d!81589 (validMask!0 mask!3216)))

(assert (=> d!81589 (= (seekKeyOrZeroOrLongMinValue!0 x!1030 index!1177 (select (arr!16416 a!3154) j!147) a!3154 mask!3216) lt!247386)))

(declare-fun b!540388 () Bool)

(assert (=> b!540388 (= e!313066 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1030 #b00000000000000000000000000000001) (nextIndex!0 index!1177 x!1030 mask!3216) (select (arr!16416 a!3154) j!147) a!3154 mask!3216))))

(declare-fun b!540389 () Bool)

(assert (=> b!540389 (= e!313064 (Intermediate!4881 true index!1177 x!1030))))

(declare-fun b!540390 () Bool)

(assert (=> b!540390 (and (bvsge (index!21750 lt!247386) #b00000000000000000000000000000000) (bvslt (index!21750 lt!247386) (size!16780 a!3154)))))

(declare-fun res!335508 () Bool)

(assert (=> b!540390 (= res!335508 (= (select (arr!16416 a!3154) (index!21750 lt!247386)) (select (arr!16416 a!3154) j!147)))))

(assert (=> b!540390 (=> res!335508 e!313062)))

(declare-fun e!313065 () Bool)

(assert (=> b!540390 (= e!313065 e!313062)))

(declare-fun b!540391 () Bool)

(assert (=> b!540391 (= e!313063 (bvsge (x!50689 lt!247386) #b01111111111111111111111111111110))))

(declare-fun b!540392 () Bool)

(assert (=> b!540392 (= e!313063 e!313065)))

(declare-fun res!335506 () Bool)

(assert (=> b!540392 (= res!335506 (and (is-Intermediate!4881 lt!247386) (not (undefined!5693 lt!247386)) (bvslt (x!50689 lt!247386) #b01111111111111111111111111111110) (bvsge (x!50689 lt!247386) #b00000000000000000000000000000000) (bvsge (x!50689 lt!247386) x!1030)))))

(assert (=> b!540392 (=> (not res!335506) (not e!313065))))

(declare-fun b!540393 () Bool)

(assert (=> b!540393 (and (bvsge (index!21750 lt!247386) #b00000000000000000000000000000000) (bvslt (index!21750 lt!247386) (size!16780 a!3154)))))

(declare-fun res!335507 () Bool)

(assert (=> b!540393 (= res!335507 (= (select (arr!16416 a!3154) (index!21750 lt!247386)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!540393 (=> res!335507 e!313062)))

(declare-fun b!540394 () Bool)

(assert (=> b!540394 (= e!313066 (Intermediate!4881 false index!1177 x!1030))))

(assert (= (and d!81589 c!62755) b!540389))

(assert (= (and d!81589 (not c!62755)) b!540387))

(assert (= (and b!540387 c!62754) b!540394))

(assert (= (and b!540387 (not c!62754)) b!540388))

(assert (= (and d!81589 c!62753) b!540391))

(assert (= (and d!81589 (not c!62753)) b!540392))

(assert (= (and b!540392 res!335506) b!540390))

(assert (= (and b!540390 (not res!335508)) b!540393))

(assert (= (and b!540393 (not res!335507)) b!540386))

(declare-fun m!519149 () Bool)

(assert (=> b!540393 m!519149))

(assert (=> d!81589 m!519015))

(assert (=> d!81589 m!519021))

(assert (=> b!540390 m!519149))

(assert (=> b!540386 m!519149))

(declare-fun m!519151 () Bool)

(assert (=> b!540388 m!519151))

(assert (=> b!540388 m!519151))

(assert (=> b!540388 m!519009))

(declare-fun m!519153 () Bool)

(assert (=> b!540388 m!519153))

(assert (=> b!540163 d!81589))

(declare-fun d!81591 () Bool)

(declare-fun lt!247413 () SeekEntryResult!4881)

(assert (=> d!81591 (and (or (is-Undefined!4881 lt!247413) (not (is-Found!4881 lt!247413)) (and (bvsge (index!21749 lt!247413) #b00000000000000000000000000000000) (bvslt (index!21749 lt!247413) (size!16780 a!3154)))) (or (is-Undefined!4881 lt!247413) (is-Found!4881 lt!247413) (not (is-MissingZero!4881 lt!247413)) (and (bvsge (index!21748 lt!247413) #b00000000000000000000000000000000) (bvslt (index!21748 lt!247413) (size!16780 a!3154)))) (or (is-Undefined!4881 lt!247413) (is-Found!4881 lt!247413) (is-MissingZero!4881 lt!247413) (not (is-MissingVacant!4881 lt!247413)) (and (bvsge (index!21751 lt!247413) #b00000000000000000000000000000000) (bvslt (index!21751 lt!247413) (size!16780 a!3154)))) (or (is-Undefined!4881 lt!247413) (ite (is-Found!4881 lt!247413) (= (select (arr!16416 a!3154) (index!21749 lt!247413)) k!1998) (ite (is-MissingZero!4881 lt!247413) (= (select (arr!16416 a!3154) (index!21748 lt!247413)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4881 lt!247413) (= (select (arr!16416 a!3154) (index!21751 lt!247413)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!313101 () SeekEntryResult!4881)

(assert (=> d!81591 (= lt!247413 e!313101)))

(declare-fun c!62776 () Bool)

(declare-fun lt!247412 () SeekEntryResult!4881)

(assert (=> d!81591 (= c!62776 (and (is-Intermediate!4881 lt!247412) (undefined!5693 lt!247412)))))

(assert (=> d!81591 (= lt!247412 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1998 mask!3216) k!1998 a!3154 mask!3216))))

(assert (=> d!81591 (validMask!0 mask!3216)))

(assert (=> d!81591 (= (seekEntryOrOpen!0 k!1998 a!3154 mask!3216) lt!247413)))

(declare-fun b!540447 () Bool)

(declare-fun e!313102 () SeekEntryResult!4881)

(assert (=> b!540447 (= e!313102 (MissingZero!4881 (index!21750 lt!247412)))))

(declare-fun b!540448 () Bool)

(assert (=> b!540448 (= e!313101 Undefined!4881)))

(declare-fun b!540449 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34165 (_ BitVec 32)) SeekEntryResult!4881)

(assert (=> b!540449 (= e!313102 (seekKeyOrZeroReturnVacant!0 (x!50689 lt!247412) (index!21750 lt!247412) (index!21750 lt!247412) k!1998 a!3154 mask!3216))))

(declare-fun b!540450 () Bool)

(declare-fun e!313103 () SeekEntryResult!4881)

(assert (=> b!540450 (= e!313103 (Found!4881 (index!21750 lt!247412)))))

(declare-fun b!540451 () Bool)

(assert (=> b!540451 (= e!313101 e!313103)))

(declare-fun lt!247411 () (_ BitVec 64))

(assert (=> b!540451 (= lt!247411 (select (arr!16416 a!3154) (index!21750 lt!247412)))))

(declare-fun c!62775 () Bool)

(assert (=> b!540451 (= c!62775 (= lt!247411 k!1998))))

(declare-fun b!540452 () Bool)

(declare-fun c!62777 () Bool)

(assert (=> b!540452 (= c!62777 (= lt!247411 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!540452 (= e!313103 e!313102)))

(assert (= (and d!81591 c!62776) b!540448))

(assert (= (and d!81591 (not c!62776)) b!540451))

(assert (= (and b!540451 c!62775) b!540450))

(assert (= (and b!540451 (not c!62775)) b!540452))

(assert (= (and b!540452 c!62777) b!540447))

(assert (= (and b!540452 (not c!62777)) b!540449))

(declare-fun m!519175 () Bool)

(assert (=> d!81591 m!519175))

(assert (=> d!81591 m!519021))

(declare-fun m!519177 () Bool)

(assert (=> d!81591 m!519177))

(declare-fun m!519179 () Bool)

(assert (=> d!81591 m!519179))

(assert (=> d!81591 m!519177))

(declare-fun m!519181 () Bool)

(assert (=> d!81591 m!519181))

(declare-fun m!519183 () Bool)

(assert (=> d!81591 m!519183))

(declare-fun m!519185 () Bool)

(assert (=> b!540449 m!519185))

(declare-fun m!519187 () Bool)

(assert (=> b!540451 m!519187))

(assert (=> b!540169 d!81591))

(declare-fun d!81601 () Bool)

(assert (=> d!81601 (= (validMask!0 mask!3216) (and (or (= mask!3216 #b00000000000000000000000000000111) (= mask!3216 #b00000000000000000000000000001111) (= mask!3216 #b00000000000000000000000000011111) (= mask!3216 #b00000000000000000000000000111111) (= mask!3216 #b00000000000000000000000001111111) (= mask!3216 #b00000000000000000000000011111111) (= mask!3216 #b00000000000000000000000111111111) (= mask!3216 #b00000000000000000000001111111111) (= mask!3216 #b00000000000000000000011111111111) (= mask!3216 #b00000000000000000000111111111111) (= mask!3216 #b00000000000000000001111111111111) (= mask!3216 #b00000000000000000011111111111111) (= mask!3216 #b00000000000000000111111111111111) (= mask!3216 #b00000000000000001111111111111111) (= mask!3216 #b00000000000000011111111111111111) (= mask!3216 #b00000000000000111111111111111111) (= mask!3216 #b00000000000001111111111111111111) (= mask!3216 #b00000000000011111111111111111111) (= mask!3216 #b00000000000111111111111111111111) (= mask!3216 #b00000000001111111111111111111111) (= mask!3216 #b00000000011111111111111111111111) (= mask!3216 #b00000000111111111111111111111111) (= mask!3216 #b00000001111111111111111111111111) (= mask!3216 #b00000011111111111111111111111111) (= mask!3216 #b00000111111111111111111111111111) (= mask!3216 #b00001111111111111111111111111111) (= mask!3216 #b00011111111111111111111111111111) (= mask!3216 #b00111111111111111111111111111111)) (bvsle mask!3216 #b00111111111111111111111111111111)))))

(assert (=> start!49048 d!81601))

(declare-fun d!81603 () Bool)

(assert (=> d!81603 (= (array_inv!12190 a!3154) (bvsge (size!16780 a!3154) #b00000000000000000000000000000000))))

(assert (=> start!49048 d!81603))

(declare-fun b!540496 () Bool)

(declare-fun e!313130 () Bool)

(declare-fun contains!2803 (List!10588 (_ BitVec 64)) Bool)

(assert (=> b!540496 (= e!313130 (contains!2803 Nil!10585 (select (arr!16416 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!540497 () Bool)

(declare-fun e!313131 () Bool)

(declare-fun e!313129 () Bool)

(assert (=> b!540497 (= e!313131 e!313129)))

(declare-fun c!62795 () Bool)

(assert (=> b!540497 (= c!62795 (validKeyInArray!0 (select (arr!16416 a!3154) #b00000000000000000000000000000000)))))

(declare-fun b!540498 () Bool)

(declare-fun call!32030 () Bool)

(assert (=> b!540498 (= e!313129 call!32030)))

(declare-fun d!81605 () Bool)

(declare-fun res!335537 () Bool)

(declare-fun e!313132 () Bool)

(assert (=> d!81605 (=> res!335537 e!313132)))

(assert (=> d!81605 (= res!335537 (bvsge #b00000000000000000000000000000000 (size!16780 a!3154)))))

(assert (=> d!81605 (= (arrayNoDuplicates!0 a!3154 #b00000000000000000000000000000000 Nil!10585) e!313132)))

(declare-fun b!540499 () Bool)

(assert (=> b!540499 (= e!313129 call!32030)))

(declare-fun b!540500 () Bool)

(assert (=> b!540500 (= e!313132 e!313131)))

(declare-fun res!335536 () Bool)

(assert (=> b!540500 (=> (not res!335536) (not e!313131))))

(assert (=> b!540500 (= res!335536 (not e!313130))))

(declare-fun res!335535 () Bool)

(assert (=> b!540500 (=> (not res!335535) (not e!313130))))

(assert (=> b!540500 (= res!335535 (validKeyInArray!0 (select (arr!16416 a!3154) #b00000000000000000000000000000000)))))

(declare-fun bm!32027 () Bool)

(assert (=> bm!32027 (= call!32030 (arrayNoDuplicates!0 a!3154 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!62795 (Cons!10584 (select (arr!16416 a!3154) #b00000000000000000000000000000000) Nil!10585) Nil!10585)))))

(assert (= (and d!81605 (not res!335537)) b!540500))

(assert (= (and b!540500 res!335535) b!540496))

(assert (= (and b!540500 res!335536) b!540497))

(assert (= (and b!540497 c!62795) b!540499))

(assert (= (and b!540497 (not c!62795)) b!540498))

(assert (= (or b!540499 b!540498) bm!32027))

(assert (=> b!540496 m!519137))

(assert (=> b!540496 m!519137))

(declare-fun m!519225 () Bool)

(assert (=> b!540496 m!519225))

(assert (=> b!540497 m!519137))

(assert (=> b!540497 m!519137))

(assert (=> b!540497 m!519145))

(assert (=> b!540500 m!519137))

(assert (=> b!540500 m!519137))

(assert (=> b!540500 m!519145))

(assert (=> bm!32027 m!519137))

(declare-fun m!519227 () Bool)

(assert (=> bm!32027 m!519227))

(assert (=> b!540164 d!81605))

(push 1)

