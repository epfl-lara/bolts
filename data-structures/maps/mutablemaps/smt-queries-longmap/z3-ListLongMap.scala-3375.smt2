; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46494 () Bool)

(assert start!46494)

(declare-fun b!513751 () Bool)

(declare-fun res!314016 () Bool)

(declare-fun e!300002 () Bool)

(assert (=> b!513751 (=> (not res!314016) (not e!300002))))

(declare-datatypes ((array!32937 0))(
  ( (array!32938 (arr!15838 (Array (_ BitVec 32) (_ BitVec 64))) (size!16202 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32937)

(declare-datatypes ((List!10049 0))(
  ( (Nil!10046) (Cons!10045 (h!10934 (_ BitVec 64)) (t!16285 List!10049)) )
))
(declare-fun arrayNoDuplicates!0 (array!32937 (_ BitVec 32) List!10049) Bool)

(assert (=> b!513751 (= res!314016 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10046))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!300003 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!513752 () Bool)

(declare-datatypes ((SeekEntryResult!4312 0))(
  ( (MissingZero!4312 (index!19436 (_ BitVec 32))) (Found!4312 (index!19437 (_ BitVec 32))) (Intermediate!4312 (undefined!5124 Bool) (index!19438 (_ BitVec 32)) (x!48420 (_ BitVec 32))) (Undefined!4312) (MissingVacant!4312 (index!19439 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32937 (_ BitVec 32)) SeekEntryResult!4312)

(assert (=> b!513752 (= e!300003 (= (seekEntryOrOpen!0 (select (arr!15838 a!3235) j!176) a!3235 mask!3524) (Found!4312 j!176)))))

(declare-fun lt!235258 () SeekEntryResult!4312)

(declare-fun e!300001 () Bool)

(declare-fun b!513753 () Bool)

(assert (=> b!513753 (= e!300001 (or (= (select (arr!15838 a!3235) (index!19438 lt!235258)) (select (arr!15838 a!3235) j!176)) (= (select (arr!15838 a!3235) (index!19438 lt!235258)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (bvsge (index!19438 lt!235258) #b00000000000000000000000000000000) (bvslt (index!19438 lt!235258) (size!16202 a!3235)))))))

(assert (=> b!513753 (bvslt (x!48420 lt!235258) #b01111111111111111111111111111110)))

(declare-fun b!513754 () Bool)

(declare-fun res!314022 () Bool)

(declare-fun e!300004 () Bool)

(assert (=> b!513754 (=> (not res!314022) (not e!300004))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!513754 (= res!314022 (and (= (size!16202 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16202 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16202 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!513756 () Bool)

(assert (=> b!513756 (= e!300004 e!300002)))

(declare-fun res!314024 () Bool)

(assert (=> b!513756 (=> (not res!314024) (not e!300002))))

(declare-fun lt!235259 () SeekEntryResult!4312)

(assert (=> b!513756 (= res!314024 (or (= lt!235259 (MissingZero!4312 i!1204)) (= lt!235259 (MissingVacant!4312 i!1204))))))

(declare-fun k0!2280 () (_ BitVec 64))

(assert (=> b!513756 (= lt!235259 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!513757 () Bool)

(declare-fun res!314019 () Bool)

(assert (=> b!513757 (=> res!314019 e!300001)))

(get-info :version)

(assert (=> b!513757 (= res!314019 (or (undefined!5124 lt!235258) (not ((_ is Intermediate!4312) lt!235258))))))

(declare-fun b!513758 () Bool)

(declare-fun res!314014 () Bool)

(assert (=> b!513758 (=> (not res!314014) (not e!300004))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!513758 (= res!314014 (validKeyInArray!0 k0!2280))))

(declare-fun b!513759 () Bool)

(assert (=> b!513759 (= e!300002 (not e!300001))))

(declare-fun res!314017 () Bool)

(assert (=> b!513759 (=> res!314017 e!300001)))

(declare-fun lt!235257 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32937 (_ BitVec 32)) SeekEntryResult!4312)

(assert (=> b!513759 (= res!314017 (= lt!235258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235257 (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176) (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235)) mask!3524)))))

(declare-fun lt!235255 () (_ BitVec 32))

(assert (=> b!513759 (= lt!235258 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235255 (select (arr!15838 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513759 (= lt!235257 (toIndex!0 (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!513759 (= lt!235255 (toIndex!0 (select (arr!15838 a!3235) j!176) mask!3524))))

(assert (=> b!513759 e!300003))

(declare-fun res!314015 () Bool)

(assert (=> b!513759 (=> (not res!314015) (not e!300003))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32937 (_ BitVec 32)) Bool)

(assert (=> b!513759 (= res!314015 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15874 0))(
  ( (Unit!15875) )
))
(declare-fun lt!235256 () Unit!15874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32937 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15874)

(assert (=> b!513759 (= lt!235256 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun res!314020 () Bool)

(assert (=> start!46494 (=> (not res!314020) (not e!300004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46494 (= res!314020 (validMask!0 mask!3524))))

(assert (=> start!46494 e!300004))

(assert (=> start!46494 true))

(declare-fun array_inv!11612 (array!32937) Bool)

(assert (=> start!46494 (array_inv!11612 a!3235)))

(declare-fun b!513755 () Bool)

(declare-fun res!314023 () Bool)

(assert (=> b!513755 (=> (not res!314023) (not e!300002))))

(assert (=> b!513755 (= res!314023 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!513760 () Bool)

(declare-fun res!314018 () Bool)

(assert (=> b!513760 (=> (not res!314018) (not e!300004))))

(assert (=> b!513760 (= res!314018 (validKeyInArray!0 (select (arr!15838 a!3235) j!176)))))

(declare-fun b!513761 () Bool)

(declare-fun res!314021 () Bool)

(assert (=> b!513761 (=> (not res!314021) (not e!300004))))

(declare-fun arrayContainsKey!0 (array!32937 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!513761 (= res!314021 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46494 res!314020) b!513754))

(assert (= (and b!513754 res!314022) b!513760))

(assert (= (and b!513760 res!314018) b!513758))

(assert (= (and b!513758 res!314014) b!513761))

(assert (= (and b!513761 res!314021) b!513756))

(assert (= (and b!513756 res!314024) b!513755))

(assert (= (and b!513755 res!314023) b!513751))

(assert (= (and b!513751 res!314016) b!513759))

(assert (= (and b!513759 res!314015) b!513752))

(assert (= (and b!513759 (not res!314017)) b!513757))

(assert (= (and b!513757 (not res!314019)) b!513753))

(declare-fun m!495291 () Bool)

(assert (=> b!513752 m!495291))

(assert (=> b!513752 m!495291))

(declare-fun m!495293 () Bool)

(assert (=> b!513752 m!495293))

(declare-fun m!495295 () Bool)

(assert (=> b!513761 m!495295))

(declare-fun m!495297 () Bool)

(assert (=> b!513751 m!495297))

(declare-fun m!495299 () Bool)

(assert (=> b!513756 m!495299))

(declare-fun m!495301 () Bool)

(assert (=> start!46494 m!495301))

(declare-fun m!495303 () Bool)

(assert (=> start!46494 m!495303))

(declare-fun m!495305 () Bool)

(assert (=> b!513755 m!495305))

(declare-fun m!495307 () Bool)

(assert (=> b!513758 m!495307))

(declare-fun m!495309 () Bool)

(assert (=> b!513759 m!495309))

(declare-fun m!495311 () Bool)

(assert (=> b!513759 m!495311))

(declare-fun m!495313 () Bool)

(assert (=> b!513759 m!495313))

(assert (=> b!513759 m!495291))

(declare-fun m!495315 () Bool)

(assert (=> b!513759 m!495315))

(assert (=> b!513759 m!495313))

(declare-fun m!495317 () Bool)

(assert (=> b!513759 m!495317))

(assert (=> b!513759 m!495313))

(declare-fun m!495319 () Bool)

(assert (=> b!513759 m!495319))

(assert (=> b!513759 m!495291))

(assert (=> b!513759 m!495291))

(declare-fun m!495321 () Bool)

(assert (=> b!513759 m!495321))

(declare-fun m!495323 () Bool)

(assert (=> b!513759 m!495323))

(declare-fun m!495325 () Bool)

(assert (=> b!513753 m!495325))

(assert (=> b!513753 m!495291))

(assert (=> b!513760 m!495291))

(assert (=> b!513760 m!495291))

(declare-fun m!495327 () Bool)

(assert (=> b!513760 m!495327))

(check-sat (not b!513760) (not b!513761) (not b!513758) (not start!46494) (not b!513756) (not b!513755) (not b!513759) (not b!513751) (not b!513752))
(check-sat)
(get-model)

(declare-fun b!513807 () Bool)

(declare-fun c!60161 () Bool)

(declare-fun lt!235282 () (_ BitVec 64))

(assert (=> b!513807 (= c!60161 (= lt!235282 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300027 () SeekEntryResult!4312)

(declare-fun e!300026 () SeekEntryResult!4312)

(assert (=> b!513807 (= e!300027 e!300026)))

(declare-fun d!79143 () Bool)

(declare-fun lt!235283 () SeekEntryResult!4312)

(assert (=> d!79143 (and (or ((_ is Undefined!4312) lt!235283) (not ((_ is Found!4312) lt!235283)) (and (bvsge (index!19437 lt!235283) #b00000000000000000000000000000000) (bvslt (index!19437 lt!235283) (size!16202 a!3235)))) (or ((_ is Undefined!4312) lt!235283) ((_ is Found!4312) lt!235283) (not ((_ is MissingZero!4312) lt!235283)) (and (bvsge (index!19436 lt!235283) #b00000000000000000000000000000000) (bvslt (index!19436 lt!235283) (size!16202 a!3235)))) (or ((_ is Undefined!4312) lt!235283) ((_ is Found!4312) lt!235283) ((_ is MissingZero!4312) lt!235283) (not ((_ is MissingVacant!4312) lt!235283)) (and (bvsge (index!19439 lt!235283) #b00000000000000000000000000000000) (bvslt (index!19439 lt!235283) (size!16202 a!3235)))) (or ((_ is Undefined!4312) lt!235283) (ite ((_ is Found!4312) lt!235283) (= (select (arr!15838 a!3235) (index!19437 lt!235283)) (select (arr!15838 a!3235) j!176)) (ite ((_ is MissingZero!4312) lt!235283) (= (select (arr!15838 a!3235) (index!19436 lt!235283)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4312) lt!235283) (= (select (arr!15838 a!3235) (index!19439 lt!235283)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!300028 () SeekEntryResult!4312)

(assert (=> d!79143 (= lt!235283 e!300028)))

(declare-fun c!60160 () Bool)

(declare-fun lt!235281 () SeekEntryResult!4312)

(assert (=> d!79143 (= c!60160 (and ((_ is Intermediate!4312) lt!235281) (undefined!5124 lt!235281)))))

(assert (=> d!79143 (= lt!235281 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15838 a!3235) j!176) mask!3524) (select (arr!15838 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79143 (validMask!0 mask!3524)))

(assert (=> d!79143 (= (seekEntryOrOpen!0 (select (arr!15838 a!3235) j!176) a!3235 mask!3524) lt!235283)))

(declare-fun b!513808 () Bool)

(assert (=> b!513808 (= e!300028 e!300027)))

(assert (=> b!513808 (= lt!235282 (select (arr!15838 a!3235) (index!19438 lt!235281)))))

(declare-fun c!60159 () Bool)

(assert (=> b!513808 (= c!60159 (= lt!235282 (select (arr!15838 a!3235) j!176)))))

(declare-fun b!513809 () Bool)

(assert (=> b!513809 (= e!300026 (MissingZero!4312 (index!19438 lt!235281)))))

(declare-fun b!513810 () Bool)

(assert (=> b!513810 (= e!300027 (Found!4312 (index!19438 lt!235281)))))

(declare-fun b!513811 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32937 (_ BitVec 32)) SeekEntryResult!4312)

(assert (=> b!513811 (= e!300026 (seekKeyOrZeroReturnVacant!0 (x!48420 lt!235281) (index!19438 lt!235281) (index!19438 lt!235281) (select (arr!15838 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513812 () Bool)

(assert (=> b!513812 (= e!300028 Undefined!4312)))

(assert (= (and d!79143 c!60160) b!513812))

(assert (= (and d!79143 (not c!60160)) b!513808))

(assert (= (and b!513808 c!60159) b!513810))

(assert (= (and b!513808 (not c!60159)) b!513807))

(assert (= (and b!513807 c!60161) b!513809))

(assert (= (and b!513807 (not c!60161)) b!513811))

(declare-fun m!495367 () Bool)

(assert (=> d!79143 m!495367))

(declare-fun m!495369 () Bool)

(assert (=> d!79143 m!495369))

(assert (=> d!79143 m!495291))

(assert (=> d!79143 m!495315))

(assert (=> d!79143 m!495301))

(declare-fun m!495371 () Bool)

(assert (=> d!79143 m!495371))

(assert (=> d!79143 m!495315))

(assert (=> d!79143 m!495291))

(declare-fun m!495373 () Bool)

(assert (=> d!79143 m!495373))

(declare-fun m!495375 () Bool)

(assert (=> b!513808 m!495375))

(assert (=> b!513811 m!495291))

(declare-fun m!495377 () Bool)

(assert (=> b!513811 m!495377))

(assert (=> b!513752 d!79143))

(declare-fun d!79145 () Bool)

(declare-fun lt!235289 () (_ BitVec 32))

(declare-fun lt!235288 () (_ BitVec 32))

(assert (=> d!79145 (= lt!235289 (bvmul (bvxor lt!235288 (bvlshr lt!235288 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79145 (= lt!235288 ((_ extract 31 0) (bvand (bvxor (select (arr!15838 a!3235) j!176) (bvlshr (select (arr!15838 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79145 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314058 (let ((h!10936 ((_ extract 31 0) (bvand (bvxor (select (arr!15838 a!3235) j!176) (bvlshr (select (arr!15838 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48422 (bvmul (bvxor h!10936 (bvlshr h!10936 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48422 (bvlshr x!48422 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314058 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314058 #b00000000000000000000000000000000))))))

(assert (=> d!79145 (= (toIndex!0 (select (arr!15838 a!3235) j!176) mask!3524) (bvand (bvxor lt!235289 (bvlshr lt!235289 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513759 d!79145))

(declare-fun d!79151 () Bool)

(assert (=> d!79151 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235292 () Unit!15874)

(declare-fun choose!38 (array!32937 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15874)

(assert (=> d!79151 (= lt!235292 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79151 (validMask!0 mask!3524)))

(assert (=> d!79151 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235292)))

(declare-fun bs!16257 () Bool)

(assert (= bs!16257 d!79151))

(assert (=> bs!16257 m!495323))

(declare-fun m!495379 () Bool)

(assert (=> bs!16257 m!495379))

(assert (=> bs!16257 m!495301))

(assert (=> b!513759 d!79151))

(declare-fun d!79155 () Bool)

(declare-fun lt!235294 () (_ BitVec 32))

(declare-fun lt!235293 () (_ BitVec 32))

(assert (=> d!79155 (= lt!235294 (bvmul (bvxor lt!235293 (bvlshr lt!235293 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79155 (= lt!235293 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79155 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314058 (let ((h!10936 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48422 (bvmul (bvxor h!10936 (bvlshr h!10936 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48422 (bvlshr x!48422 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314058 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314058 #b00000000000000000000000000000000))))))

(assert (=> d!79155 (= (toIndex!0 (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!235294 (bvlshr lt!235294 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!513759 d!79155))

(declare-fun b!513873 () Bool)

(declare-fun lt!235324 () SeekEntryResult!4312)

(assert (=> b!513873 (and (bvsge (index!19438 lt!235324) #b00000000000000000000000000000000) (bvslt (index!19438 lt!235324) (size!16202 a!3235)))))

(declare-fun res!314071 () Bool)

(assert (=> b!513873 (= res!314071 (= (select (arr!15838 a!3235) (index!19438 lt!235324)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300065 () Bool)

(assert (=> b!513873 (=> res!314071 e!300065)))

(declare-fun b!513874 () Bool)

(declare-fun e!300063 () Bool)

(declare-fun e!300064 () Bool)

(assert (=> b!513874 (= e!300063 e!300064)))

(declare-fun res!314073 () Bool)

(assert (=> b!513874 (= res!314073 (and ((_ is Intermediate!4312) lt!235324) (not (undefined!5124 lt!235324)) (bvslt (x!48420 lt!235324) #b01111111111111111111111111111110) (bvsge (x!48420 lt!235324) #b00000000000000000000000000000000) (bvsge (x!48420 lt!235324) #b00000000000000000000000000000000)))))

(assert (=> b!513874 (=> (not res!314073) (not e!300064))))

(declare-fun b!513876 () Bool)

(assert (=> b!513876 (and (bvsge (index!19438 lt!235324) #b00000000000000000000000000000000) (bvslt (index!19438 lt!235324) (size!16202 a!3235)))))

(assert (=> b!513876 (= e!300065 (= (select (arr!15838 a!3235) (index!19438 lt!235324)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513877 () Bool)

(declare-fun e!300066 () SeekEntryResult!4312)

(declare-fun e!300067 () SeekEntryResult!4312)

(assert (=> b!513877 (= e!300066 e!300067)))

(declare-fun c!60188 () Bool)

(declare-fun lt!235323 () (_ BitVec 64))

(assert (=> b!513877 (= c!60188 (or (= lt!235323 (select (arr!15838 a!3235) j!176)) (= (bvadd lt!235323 lt!235323) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513878 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!513878 (= e!300067 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235255 #b00000000000000000000000000000000 mask!3524) (select (arr!15838 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!513879 () Bool)

(assert (=> b!513879 (= e!300063 (bvsge (x!48420 lt!235324) #b01111111111111111111111111111110))))

(declare-fun b!513880 () Bool)

(assert (=> b!513880 (and (bvsge (index!19438 lt!235324) #b00000000000000000000000000000000) (bvslt (index!19438 lt!235324) (size!16202 a!3235)))))

(declare-fun res!314072 () Bool)

(assert (=> b!513880 (= res!314072 (= (select (arr!15838 a!3235) (index!19438 lt!235324)) (select (arr!15838 a!3235) j!176)))))

(assert (=> b!513880 (=> res!314072 e!300065)))

(assert (=> b!513880 (= e!300064 e!300065)))

(declare-fun b!513881 () Bool)

(assert (=> b!513881 (= e!300067 (Intermediate!4312 false lt!235255 #b00000000000000000000000000000000))))

(declare-fun d!79159 () Bool)

(assert (=> d!79159 e!300063))

(declare-fun c!60186 () Bool)

(assert (=> d!79159 (= c!60186 (and ((_ is Intermediate!4312) lt!235324) (undefined!5124 lt!235324)))))

(assert (=> d!79159 (= lt!235324 e!300066)))

(declare-fun c!60187 () Bool)

(assert (=> d!79159 (= c!60187 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79159 (= lt!235323 (select (arr!15838 a!3235) lt!235255))))

(assert (=> d!79159 (validMask!0 mask!3524)))

(assert (=> d!79159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235255 (select (arr!15838 a!3235) j!176) a!3235 mask!3524) lt!235324)))

(declare-fun b!513875 () Bool)

(assert (=> b!513875 (= e!300066 (Intermediate!4312 true lt!235255 #b00000000000000000000000000000000))))

(assert (= (and d!79159 c!60187) b!513875))

(assert (= (and d!79159 (not c!60187)) b!513877))

(assert (= (and b!513877 c!60188) b!513881))

(assert (= (and b!513877 (not c!60188)) b!513878))

(assert (= (and d!79159 c!60186) b!513879))

(assert (= (and d!79159 (not c!60186)) b!513874))

(assert (= (and b!513874 res!314073) b!513880))

(assert (= (and b!513880 (not res!314072)) b!513873))

(assert (= (and b!513873 (not res!314071)) b!513876))

(declare-fun m!495405 () Bool)

(assert (=> d!79159 m!495405))

(assert (=> d!79159 m!495301))

(declare-fun m!495407 () Bool)

(assert (=> b!513873 m!495407))

(assert (=> b!513880 m!495407))

(declare-fun m!495409 () Bool)

(assert (=> b!513878 m!495409))

(assert (=> b!513878 m!495409))

(assert (=> b!513878 m!495291))

(declare-fun m!495411 () Bool)

(assert (=> b!513878 m!495411))

(assert (=> b!513876 m!495407))

(assert (=> b!513759 d!79159))

(declare-fun lt!235326 () SeekEntryResult!4312)

(declare-fun b!513882 () Bool)

(assert (=> b!513882 (and (bvsge (index!19438 lt!235326) #b00000000000000000000000000000000) (bvslt (index!19438 lt!235326) (size!16202 (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235)))))))

(declare-fun res!314074 () Bool)

(assert (=> b!513882 (= res!314074 (= (select (arr!15838 (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235))) (index!19438 lt!235326)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300070 () Bool)

(assert (=> b!513882 (=> res!314074 e!300070)))

(declare-fun b!513883 () Bool)

(declare-fun e!300068 () Bool)

(declare-fun e!300069 () Bool)

(assert (=> b!513883 (= e!300068 e!300069)))

(declare-fun res!314076 () Bool)

(assert (=> b!513883 (= res!314076 (and ((_ is Intermediate!4312) lt!235326) (not (undefined!5124 lt!235326)) (bvslt (x!48420 lt!235326) #b01111111111111111111111111111110) (bvsge (x!48420 lt!235326) #b00000000000000000000000000000000) (bvsge (x!48420 lt!235326) #b00000000000000000000000000000000)))))

(assert (=> b!513883 (=> (not res!314076) (not e!300069))))

(declare-fun b!513885 () Bool)

(assert (=> b!513885 (and (bvsge (index!19438 lt!235326) #b00000000000000000000000000000000) (bvslt (index!19438 lt!235326) (size!16202 (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235)))))))

(assert (=> b!513885 (= e!300070 (= (select (arr!15838 (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235))) (index!19438 lt!235326)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!513886 () Bool)

(declare-fun e!300071 () SeekEntryResult!4312)

(declare-fun e!300072 () SeekEntryResult!4312)

(assert (=> b!513886 (= e!300071 e!300072)))

(declare-fun lt!235325 () (_ BitVec 64))

(declare-fun c!60191 () Bool)

(assert (=> b!513886 (= c!60191 (or (= lt!235325 (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!235325 lt!235325) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!513887 () Bool)

(assert (=> b!513887 (= e!300072 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235257 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176) (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235)) mask!3524))))

(declare-fun b!513888 () Bool)

(assert (=> b!513888 (= e!300068 (bvsge (x!48420 lt!235326) #b01111111111111111111111111111110))))

(declare-fun b!513889 () Bool)

(assert (=> b!513889 (and (bvsge (index!19438 lt!235326) #b00000000000000000000000000000000) (bvslt (index!19438 lt!235326) (size!16202 (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235)))))))

(declare-fun res!314075 () Bool)

(assert (=> b!513889 (= res!314075 (= (select (arr!15838 (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235))) (index!19438 lt!235326)) (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176)))))

(assert (=> b!513889 (=> res!314075 e!300070)))

(assert (=> b!513889 (= e!300069 e!300070)))

(declare-fun b!513890 () Bool)

(assert (=> b!513890 (= e!300072 (Intermediate!4312 false lt!235257 #b00000000000000000000000000000000))))

(declare-fun d!79165 () Bool)

(assert (=> d!79165 e!300068))

(declare-fun c!60189 () Bool)

(assert (=> d!79165 (= c!60189 (and ((_ is Intermediate!4312) lt!235326) (undefined!5124 lt!235326)))))

(assert (=> d!79165 (= lt!235326 e!300071)))

(declare-fun c!60190 () Bool)

(assert (=> d!79165 (= c!60190 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79165 (= lt!235325 (select (arr!15838 (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235))) lt!235257))))

(assert (=> d!79165 (validMask!0 mask!3524)))

(assert (=> d!79165 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235257 (select (store (arr!15838 a!3235) i!1204 k0!2280) j!176) (array!32938 (store (arr!15838 a!3235) i!1204 k0!2280) (size!16202 a!3235)) mask!3524) lt!235326)))

(declare-fun b!513884 () Bool)

(assert (=> b!513884 (= e!300071 (Intermediate!4312 true lt!235257 #b00000000000000000000000000000000))))

(assert (= (and d!79165 c!60190) b!513884))

(assert (= (and d!79165 (not c!60190)) b!513886))

(assert (= (and b!513886 c!60191) b!513890))

(assert (= (and b!513886 (not c!60191)) b!513887))

(assert (= (and d!79165 c!60189) b!513888))

(assert (= (and d!79165 (not c!60189)) b!513883))

(assert (= (and b!513883 res!314076) b!513889))

(assert (= (and b!513889 (not res!314075)) b!513882))

(assert (= (and b!513882 (not res!314074)) b!513885))

(declare-fun m!495413 () Bool)

(assert (=> d!79165 m!495413))

(assert (=> d!79165 m!495301))

(declare-fun m!495415 () Bool)

(assert (=> b!513882 m!495415))

(assert (=> b!513889 m!495415))

(declare-fun m!495417 () Bool)

(assert (=> b!513887 m!495417))

(assert (=> b!513887 m!495417))

(assert (=> b!513887 m!495313))

(declare-fun m!495419 () Bool)

(assert (=> b!513887 m!495419))

(assert (=> b!513885 m!495415))

(assert (=> b!513759 d!79165))

(declare-fun b!513917 () Bool)

(declare-fun e!300095 () Bool)

(declare-fun call!31580 () Bool)

(assert (=> b!513917 (= e!300095 call!31580)))

(declare-fun b!513918 () Bool)

(declare-fun e!300096 () Bool)

(assert (=> b!513918 (= e!300096 e!300095)))

(declare-fun c!60197 () Bool)

(assert (=> b!513918 (= c!60197 (validKeyInArray!0 (select (arr!15838 a!3235) j!176)))))

(declare-fun d!79167 () Bool)

(declare-fun res!314093 () Bool)

(assert (=> d!79167 (=> res!314093 e!300096)))

(assert (=> d!79167 (= res!314093 (bvsge j!176 (size!16202 a!3235)))))

(assert (=> d!79167 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!300096)))

(declare-fun b!513919 () Bool)

(declare-fun e!300094 () Bool)

(assert (=> b!513919 (= e!300095 e!300094)))

(declare-fun lt!235337 () (_ BitVec 64))

(assert (=> b!513919 (= lt!235337 (select (arr!15838 a!3235) j!176))))

(declare-fun lt!235336 () Unit!15874)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32937 (_ BitVec 64) (_ BitVec 32)) Unit!15874)

(assert (=> b!513919 (= lt!235336 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235337 j!176))))

(assert (=> b!513919 (arrayContainsKey!0 a!3235 lt!235337 #b00000000000000000000000000000000)))

(declare-fun lt!235338 () Unit!15874)

(assert (=> b!513919 (= lt!235338 lt!235336)))

(declare-fun res!314094 () Bool)

(assert (=> b!513919 (= res!314094 (= (seekEntryOrOpen!0 (select (arr!15838 a!3235) j!176) a!3235 mask!3524) (Found!4312 j!176)))))

(assert (=> b!513919 (=> (not res!314094) (not e!300094))))

(declare-fun bm!31577 () Bool)

(assert (=> bm!31577 (= call!31580 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!513920 () Bool)

(assert (=> b!513920 (= e!300094 call!31580)))

(assert (= (and d!79167 (not res!314093)) b!513918))

(assert (= (and b!513918 c!60197) b!513919))

(assert (= (and b!513918 (not c!60197)) b!513917))

(assert (= (and b!513919 res!314094) b!513920))

(assert (= (or b!513920 b!513917) bm!31577))

(assert (=> b!513918 m!495291))

(assert (=> b!513918 m!495291))

(assert (=> b!513918 m!495327))

(assert (=> b!513919 m!495291))

(declare-fun m!495435 () Bool)

(assert (=> b!513919 m!495435))

(declare-fun m!495437 () Bool)

(assert (=> b!513919 m!495437))

(assert (=> b!513919 m!495291))

(assert (=> b!513919 m!495293))

(declare-fun m!495439 () Bool)

(assert (=> bm!31577 m!495439))

(assert (=> b!513759 d!79167))

(declare-fun d!79173 () Bool)

(assert (=> d!79173 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513758 d!79173))

(declare-fun b!513925 () Bool)

(declare-fun e!300100 () Bool)

(declare-fun call!31583 () Bool)

(assert (=> b!513925 (= e!300100 call!31583)))

(declare-fun b!513926 () Bool)

(declare-fun e!300101 () Bool)

(assert (=> b!513926 (= e!300101 e!300100)))

(declare-fun c!60200 () Bool)

(assert (=> b!513926 (= c!60200 (validKeyInArray!0 (select (arr!15838 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79175 () Bool)

(declare-fun res!314095 () Bool)

(assert (=> d!79175 (=> res!314095 e!300101)))

(assert (=> d!79175 (= res!314095 (bvsge #b00000000000000000000000000000000 (size!16202 a!3235)))))

(assert (=> d!79175 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!300101)))

(declare-fun b!513927 () Bool)

(declare-fun e!300099 () Bool)

(assert (=> b!513927 (= e!300100 e!300099)))

(declare-fun lt!235340 () (_ BitVec 64))

(assert (=> b!513927 (= lt!235340 (select (arr!15838 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235339 () Unit!15874)

(assert (=> b!513927 (= lt!235339 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235340 #b00000000000000000000000000000000))))

(assert (=> b!513927 (arrayContainsKey!0 a!3235 lt!235340 #b00000000000000000000000000000000)))

(declare-fun lt!235341 () Unit!15874)

(assert (=> b!513927 (= lt!235341 lt!235339)))

(declare-fun res!314096 () Bool)

(assert (=> b!513927 (= res!314096 (= (seekEntryOrOpen!0 (select (arr!15838 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4312 #b00000000000000000000000000000000)))))

(assert (=> b!513927 (=> (not res!314096) (not e!300099))))

(declare-fun bm!31580 () Bool)

(assert (=> bm!31580 (= call!31583 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!513928 () Bool)

(assert (=> b!513928 (= e!300099 call!31583)))

(assert (= (and d!79175 (not res!314095)) b!513926))

(assert (= (and b!513926 c!60200) b!513927))

(assert (= (and b!513926 (not c!60200)) b!513925))

(assert (= (and b!513927 res!314096) b!513928))

(assert (= (or b!513928 b!513925) bm!31580))

(declare-fun m!495441 () Bool)

(assert (=> b!513926 m!495441))

(assert (=> b!513926 m!495441))

(declare-fun m!495443 () Bool)

(assert (=> b!513926 m!495443))

(assert (=> b!513927 m!495441))

(declare-fun m!495445 () Bool)

(assert (=> b!513927 m!495445))

(declare-fun m!495447 () Bool)

(assert (=> b!513927 m!495447))

(assert (=> b!513927 m!495441))

(declare-fun m!495449 () Bool)

(assert (=> b!513927 m!495449))

(declare-fun m!495451 () Bool)

(assert (=> bm!31580 m!495451))

(assert (=> b!513755 d!79175))

(declare-fun d!79177 () Bool)

(assert (=> d!79177 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46494 d!79177))

(declare-fun d!79185 () Bool)

(assert (=> d!79185 (= (array_inv!11612 a!3235) (bvsge (size!16202 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46494 d!79185))

(declare-fun d!79187 () Bool)

(assert (=> d!79187 (= (validKeyInArray!0 (select (arr!15838 a!3235) j!176)) (and (not (= (select (arr!15838 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15838 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!513760 d!79187))

(declare-fun b!513971 () Bool)

(declare-fun e!300129 () Bool)

(declare-fun call!31587 () Bool)

(assert (=> b!513971 (= e!300129 call!31587)))

(declare-fun bm!31584 () Bool)

(declare-fun c!60213 () Bool)

(assert (=> bm!31584 (= call!31587 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60213 (Cons!10045 (select (arr!15838 a!3235) #b00000000000000000000000000000000) Nil!10046) Nil!10046)))))

(declare-fun b!513972 () Bool)

(declare-fun e!300132 () Bool)

(declare-fun contains!2740 (List!10049 (_ BitVec 64)) Bool)

(assert (=> b!513972 (= e!300132 (contains!2740 Nil!10046 (select (arr!15838 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79189 () Bool)

(declare-fun res!314118 () Bool)

(declare-fun e!300131 () Bool)

(assert (=> d!79189 (=> res!314118 e!300131)))

(assert (=> d!79189 (= res!314118 (bvsge #b00000000000000000000000000000000 (size!16202 a!3235)))))

(assert (=> d!79189 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10046) e!300131)))

(declare-fun b!513973 () Bool)

(assert (=> b!513973 (= e!300129 call!31587)))

(declare-fun b!513974 () Bool)

(declare-fun e!300130 () Bool)

(assert (=> b!513974 (= e!300131 e!300130)))

(declare-fun res!314117 () Bool)

(assert (=> b!513974 (=> (not res!314117) (not e!300130))))

(assert (=> b!513974 (= res!314117 (not e!300132))))

(declare-fun res!314119 () Bool)

(assert (=> b!513974 (=> (not res!314119) (not e!300132))))

(assert (=> b!513974 (= res!314119 (validKeyInArray!0 (select (arr!15838 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!513975 () Bool)

(assert (=> b!513975 (= e!300130 e!300129)))

(assert (=> b!513975 (= c!60213 (validKeyInArray!0 (select (arr!15838 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!79189 (not res!314118)) b!513974))

(assert (= (and b!513974 res!314119) b!513972))

(assert (= (and b!513974 res!314117) b!513975))

(assert (= (and b!513975 c!60213) b!513973))

(assert (= (and b!513975 (not c!60213)) b!513971))

(assert (= (or b!513973 b!513971) bm!31584))

(assert (=> bm!31584 m!495441))

(declare-fun m!495465 () Bool)

(assert (=> bm!31584 m!495465))

(assert (=> b!513972 m!495441))

(assert (=> b!513972 m!495441))

(declare-fun m!495467 () Bool)

(assert (=> b!513972 m!495467))

(assert (=> b!513974 m!495441))

(assert (=> b!513974 m!495441))

(assert (=> b!513974 m!495443))

(assert (=> b!513975 m!495441))

(assert (=> b!513975 m!495441))

(assert (=> b!513975 m!495443))

(assert (=> b!513751 d!79189))

(declare-fun b!513976 () Bool)

(declare-fun c!60216 () Bool)

(declare-fun lt!235361 () (_ BitVec 64))

(assert (=> b!513976 (= c!60216 (= lt!235361 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300134 () SeekEntryResult!4312)

(declare-fun e!300133 () SeekEntryResult!4312)

(assert (=> b!513976 (= e!300134 e!300133)))

(declare-fun d!79193 () Bool)

(declare-fun lt!235362 () SeekEntryResult!4312)

(assert (=> d!79193 (and (or ((_ is Undefined!4312) lt!235362) (not ((_ is Found!4312) lt!235362)) (and (bvsge (index!19437 lt!235362) #b00000000000000000000000000000000) (bvslt (index!19437 lt!235362) (size!16202 a!3235)))) (or ((_ is Undefined!4312) lt!235362) ((_ is Found!4312) lt!235362) (not ((_ is MissingZero!4312) lt!235362)) (and (bvsge (index!19436 lt!235362) #b00000000000000000000000000000000) (bvslt (index!19436 lt!235362) (size!16202 a!3235)))) (or ((_ is Undefined!4312) lt!235362) ((_ is Found!4312) lt!235362) ((_ is MissingZero!4312) lt!235362) (not ((_ is MissingVacant!4312) lt!235362)) (and (bvsge (index!19439 lt!235362) #b00000000000000000000000000000000) (bvslt (index!19439 lt!235362) (size!16202 a!3235)))) (or ((_ is Undefined!4312) lt!235362) (ite ((_ is Found!4312) lt!235362) (= (select (arr!15838 a!3235) (index!19437 lt!235362)) k0!2280) (ite ((_ is MissingZero!4312) lt!235362) (= (select (arr!15838 a!3235) (index!19436 lt!235362)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4312) lt!235362) (= (select (arr!15838 a!3235) (index!19439 lt!235362)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!300135 () SeekEntryResult!4312)

(assert (=> d!79193 (= lt!235362 e!300135)))

(declare-fun c!60215 () Bool)

(declare-fun lt!235360 () SeekEntryResult!4312)

(assert (=> d!79193 (= c!60215 (and ((_ is Intermediate!4312) lt!235360) (undefined!5124 lt!235360)))))

(assert (=> d!79193 (= lt!235360 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!79193 (validMask!0 mask!3524)))

(assert (=> d!79193 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!235362)))

(declare-fun b!513977 () Bool)

(assert (=> b!513977 (= e!300135 e!300134)))

(assert (=> b!513977 (= lt!235361 (select (arr!15838 a!3235) (index!19438 lt!235360)))))

(declare-fun c!60214 () Bool)

(assert (=> b!513977 (= c!60214 (= lt!235361 k0!2280))))

(declare-fun b!513978 () Bool)

(assert (=> b!513978 (= e!300133 (MissingZero!4312 (index!19438 lt!235360)))))

(declare-fun b!513979 () Bool)

(assert (=> b!513979 (= e!300134 (Found!4312 (index!19438 lt!235360)))))

(declare-fun b!513980 () Bool)

(assert (=> b!513980 (= e!300133 (seekKeyOrZeroReturnVacant!0 (x!48420 lt!235360) (index!19438 lt!235360) (index!19438 lt!235360) k0!2280 a!3235 mask!3524))))

(declare-fun b!513981 () Bool)

(assert (=> b!513981 (= e!300135 Undefined!4312)))

(assert (= (and d!79193 c!60215) b!513981))

(assert (= (and d!79193 (not c!60215)) b!513977))

(assert (= (and b!513977 c!60214) b!513979))

(assert (= (and b!513977 (not c!60214)) b!513976))

(assert (= (and b!513976 c!60216) b!513978))

(assert (= (and b!513976 (not c!60216)) b!513980))

(declare-fun m!495469 () Bool)

(assert (=> d!79193 m!495469))

(declare-fun m!495471 () Bool)

(assert (=> d!79193 m!495471))

(declare-fun m!495473 () Bool)

(assert (=> d!79193 m!495473))

(assert (=> d!79193 m!495301))

(declare-fun m!495475 () Bool)

(assert (=> d!79193 m!495475))

(assert (=> d!79193 m!495473))

(declare-fun m!495477 () Bool)

(assert (=> d!79193 m!495477))

(declare-fun m!495479 () Bool)

(assert (=> b!513977 m!495479))

(declare-fun m!495481 () Bool)

(assert (=> b!513980 m!495481))

(assert (=> b!513756 d!79193))

(declare-fun d!79195 () Bool)

(declare-fun res!314128 () Bool)

(declare-fun e!300146 () Bool)

(assert (=> d!79195 (=> res!314128 e!300146)))

(assert (=> d!79195 (= res!314128 (= (select (arr!15838 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!79195 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!300146)))

(declare-fun b!513994 () Bool)

(declare-fun e!300147 () Bool)

(assert (=> b!513994 (= e!300146 e!300147)))

(declare-fun res!314129 () Bool)

(assert (=> b!513994 (=> (not res!314129) (not e!300147))))

(assert (=> b!513994 (= res!314129 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16202 a!3235)))))

(declare-fun b!513995 () Bool)

(assert (=> b!513995 (= e!300147 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79195 (not res!314128)) b!513994))

(assert (= (and b!513994 res!314129) b!513995))

(assert (=> d!79195 m!495441))

(declare-fun m!495483 () Bool)

(assert (=> b!513995 m!495483))

(assert (=> b!513761 d!79195))

(check-sat (not d!79193) (not d!79159) (not bm!31584) (not b!513918) (not b!513975) (not b!513919) (not bm!31580) (not d!79143) (not b!513972) (not b!513995) (not b!513926) (not d!79165) (not b!513927) (not b!513974) (not bm!31577) (not b!513887) (not b!513878) (not b!513980) (not b!513811) (not d!79151))
(check-sat)
