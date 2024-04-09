; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33094 () Bool)

(assert start!33094)

(declare-fun b!329139 () Bool)

(declare-fun res!181486 () Bool)

(declare-fun e!202202 () Bool)

(assert (=> b!329139 (=> (not res!181486) (not e!202202))))

(declare-datatypes ((array!16851 0))(
  ( (array!16852 (arr!7968 (Array (_ BitVec 32) (_ BitVec 64))) (size!8320 (_ BitVec 32))) )
))
(declare-fun a!3305 () array!16851)

(declare-fun index!1840 () (_ BitVec 32))

(declare-fun k!2497 () (_ BitVec 64))

(declare-fun resX!58 () (_ BitVec 32))

(declare-fun resIndex!58 () (_ BitVec 32))

(declare-fun x!1490 () (_ BitVec 32))

(assert (=> b!329139 (= res!181486 (and (bvslt resX!58 #b01111111111111111111111111111110) (not (= (select (arr!7968 a!3305) index!1840) k!2497)) (= x!1490 resX!58) (not (= resIndex!58 index!1840)) (not (= (select (arr!7968 a!3305) index!1840) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!7968 a!3305) index!1840) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!329140 () Bool)

(declare-fun res!181483 () Bool)

(assert (=> b!329140 (=> (not res!181483) (not e!202202))))

(declare-fun i!1250 () (_ BitVec 32))

(assert (=> b!329140 (= res!181483 (and (= (select (arr!7968 a!3305) resIndex!58) #b1000000000000000000000000000000000000000000000000000000000000000) (= resIndex!58 i!1250) (bvsle x!1490 resX!58) (bvsge x!1490 #b00000000000000000000000000000000) (bvsge index!1840 #b00000000000000000000000000000000) (bvslt index!1840 (size!8320 a!3305))))))

(declare-fun b!329141 () Bool)

(declare-fun res!181489 () Bool)

(declare-fun e!202203 () Bool)

(assert (=> b!329141 (=> (not res!181489) (not e!202203))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!329141 (= res!181489 (validKeyInArray!0 k!2497))))

(declare-fun b!329142 () Bool)

(declare-fun res!181488 () Bool)

(assert (=> b!329142 (=> (not res!181488) (not e!202203))))

(declare-fun mask!3777 () (_ BitVec 32))

(assert (=> b!329142 (= res!181488 (and (= (size!8320 a!3305) (bvadd #b00000000000000000000000000000001 mask!3777)) (bvsge i!1250 #b00000000000000000000000000000000) (bvslt i!1250 (size!8320 a!3305))))))

(declare-fun b!329143 () Bool)

(assert (=> b!329143 (= e!202203 e!202202)))

(declare-fun res!181482 () Bool)

(assert (=> b!329143 (=> (not res!181482) (not e!202202))))

(declare-datatypes ((SeekEntryResult!3110 0))(
  ( (MissingZero!3110 (index!14616 (_ BitVec 32))) (Found!3110 (index!14617 (_ BitVec 32))) (Intermediate!3110 (undefined!3922 Bool) (index!14618 (_ BitVec 32)) (x!32846 (_ BitVec 32))) (Undefined!3110) (MissingVacant!3110 (index!14619 (_ BitVec 32))) )
))
(declare-fun lt!158138 () SeekEntryResult!3110)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16851 (_ BitVec 32)) SeekEntryResult!3110)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329143 (= res!181482 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158138))))

(assert (=> b!329143 (= lt!158138 (Intermediate!3110 false resIndex!58 resX!58))))

(declare-fun res!181490 () Bool)

(assert (=> start!33094 (=> (not res!181490) (not e!202203))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33094 (= res!181490 (validMask!0 mask!3777))))

(assert (=> start!33094 e!202203))

(declare-fun array_inv!5922 (array!16851) Bool)

(assert (=> start!33094 (array_inv!5922 a!3305)))

(assert (=> start!33094 true))

(declare-fun b!329144 () Bool)

(declare-fun res!181491 () Bool)

(assert (=> b!329144 (=> (not res!181491) (not e!202203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!16851 (_ BitVec 32)) Bool)

(assert (=> b!329144 (= res!181491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777))))

(declare-fun b!329145 () Bool)

(declare-fun res!181484 () Bool)

(assert (=> b!329145 (=> (not res!181484) (not e!202202))))

(assert (=> b!329145 (= res!181484 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158138))))

(declare-fun b!329146 () Bool)

(declare-fun res!181487 () Bool)

(assert (=> b!329146 (=> (not res!181487) (not e!202203))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!16851 (_ BitVec 32)) SeekEntryResult!3110)

(assert (=> b!329146 (= res!181487 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) (MissingVacant!3110 i!1250)))))

(declare-fun b!329147 () Bool)

(declare-fun res!181485 () Bool)

(assert (=> b!329147 (=> (not res!181485) (not e!202203))))

(declare-fun arrayContainsKey!0 (array!16851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!329147 (= res!181485 (not (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000)))))

(declare-fun b!329148 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!329148 (= e!202202 (not (is-Intermediate!3110 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))))

(assert (= (and start!33094 res!181490) b!329142))

(assert (= (and b!329142 res!181488) b!329141))

(assert (= (and b!329141 res!181489) b!329147))

(assert (= (and b!329147 res!181485) b!329146))

(assert (= (and b!329146 res!181487) b!329144))

(assert (= (and b!329144 res!181491) b!329143))

(assert (= (and b!329143 res!181482) b!329140))

(assert (= (and b!329140 res!181483) b!329145))

(assert (= (and b!329145 res!181484) b!329139))

(assert (= (and b!329139 res!181486) b!329148))

(declare-fun m!334883 () Bool)

(assert (=> b!329144 m!334883))

(declare-fun m!334885 () Bool)

(assert (=> b!329146 m!334885))

(declare-fun m!334887 () Bool)

(assert (=> b!329140 m!334887))

(declare-fun m!334889 () Bool)

(assert (=> b!329139 m!334889))

(declare-fun m!334891 () Bool)

(assert (=> b!329145 m!334891))

(declare-fun m!334893 () Bool)

(assert (=> b!329143 m!334893))

(assert (=> b!329143 m!334893))

(declare-fun m!334895 () Bool)

(assert (=> b!329143 m!334895))

(declare-fun m!334897 () Bool)

(assert (=> b!329147 m!334897))

(declare-fun m!334899 () Bool)

(assert (=> start!33094 m!334899))

(declare-fun m!334901 () Bool)

(assert (=> start!33094 m!334901))

(declare-fun m!334903 () Bool)

(assert (=> b!329148 m!334903))

(assert (=> b!329148 m!334903))

(declare-fun m!334905 () Bool)

(assert (=> b!329148 m!334905))

(declare-fun m!334907 () Bool)

(assert (=> b!329141 m!334907))

(push 1)

(assert (not b!329141))

(assert (not b!329143))

(assert (not b!329145))

(assert (not start!33094))

(assert (not b!329144))

(assert (not b!329147))

(assert (not b!329146))

(assert (not b!329148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!70023 () Bool)

(assert (=> d!70023 (= (validMask!0 mask!3777) (and (or (= mask!3777 #b00000000000000000000000000000111) (= mask!3777 #b00000000000000000000000000001111) (= mask!3777 #b00000000000000000000000000011111) (= mask!3777 #b00000000000000000000000000111111) (= mask!3777 #b00000000000000000000000001111111) (= mask!3777 #b00000000000000000000000011111111) (= mask!3777 #b00000000000000000000000111111111) (= mask!3777 #b00000000000000000000001111111111) (= mask!3777 #b00000000000000000000011111111111) (= mask!3777 #b00000000000000000000111111111111) (= mask!3777 #b00000000000000000001111111111111) (= mask!3777 #b00000000000000000011111111111111) (= mask!3777 #b00000000000000000111111111111111) (= mask!3777 #b00000000000000001111111111111111) (= mask!3777 #b00000000000000011111111111111111) (= mask!3777 #b00000000000000111111111111111111) (= mask!3777 #b00000000000001111111111111111111) (= mask!3777 #b00000000000011111111111111111111) (= mask!3777 #b00000000000111111111111111111111) (= mask!3777 #b00000000001111111111111111111111) (= mask!3777 #b00000000011111111111111111111111) (= mask!3777 #b00000000111111111111111111111111) (= mask!3777 #b00000001111111111111111111111111) (= mask!3777 #b00000011111111111111111111111111) (= mask!3777 #b00000111111111111111111111111111) (= mask!3777 #b00001111111111111111111111111111) (= mask!3777 #b00011111111111111111111111111111) (= mask!3777 #b00111111111111111111111111111111)) (bvsle mask!3777 #b00111111111111111111111111111111)))))

(assert (=> start!33094 d!70023))

(declare-fun d!70025 () Bool)

(assert (=> d!70025 (= (array_inv!5922 a!3305) (bvsge (size!8320 a!3305) #b00000000000000000000000000000000))))

(assert (=> start!33094 d!70025))

(declare-fun b!329239 () Bool)

(declare-fun lt!158175 () SeekEntryResult!3110)

(assert (=> b!329239 (and (bvsge (index!14618 lt!158175) #b00000000000000000000000000000000) (bvslt (index!14618 lt!158175) (size!8320 a!3305)))))

(declare-fun res!181525 () Bool)

(assert (=> b!329239 (= res!181525 (= (select (arr!7968 a!3305) (index!14618 lt!158175)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202257 () Bool)

(assert (=> b!329239 (=> res!181525 e!202257)))

(declare-fun b!329240 () Bool)

(declare-fun e!202260 () Bool)

(declare-fun e!202258 () Bool)

(assert (=> b!329240 (= e!202260 e!202258)))

(declare-fun res!181526 () Bool)

(assert (=> b!329240 (= res!181526 (and (is-Intermediate!3110 lt!158175) (not (undefined!3922 lt!158175)) (bvslt (x!32846 lt!158175) #b01111111111111111111111111111110) (bvsge (x!32846 lt!158175) #b00000000000000000000000000000000) (bvsge (x!32846 lt!158175) x!1490)))))

(assert (=> b!329240 (=> (not res!181526) (not e!202258))))

(declare-fun b!329241 () Bool)

(assert (=> b!329241 (and (bvsge (index!14618 lt!158175) #b00000000000000000000000000000000) (bvslt (index!14618 lt!158175) (size!8320 a!3305)))))

(declare-fun res!181527 () Bool)

(assert (=> b!329241 (= res!181527 (= (select (arr!7968 a!3305) (index!14618 lt!158175)) k!2497))))

(assert (=> b!329241 (=> res!181527 e!202257)))

(assert (=> b!329241 (= e!202258 e!202257)))

(declare-fun b!329242 () Bool)

(declare-fun e!202259 () SeekEntryResult!3110)

(assert (=> b!329242 (= e!202259 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1490 #b00000000000000000000000000000001) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!329243 () Bool)

(assert (=> b!329243 (= e!202260 (bvsge (x!32846 lt!158175) #b01111111111111111111111111111110))))

(declare-fun b!329244 () Bool)

(declare-fun e!202256 () SeekEntryResult!3110)

(assert (=> b!329244 (= e!202256 (Intermediate!3110 true index!1840 x!1490))))

(declare-fun b!329245 () Bool)

(assert (=> b!329245 (and (bvsge (index!14618 lt!158175) #b00000000000000000000000000000000) (bvslt (index!14618 lt!158175) (size!8320 a!3305)))))

(assert (=> b!329245 (= e!202257 (= (select (arr!7968 a!3305) (index!14618 lt!158175)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329246 () Bool)

(assert (=> b!329246 (= e!202256 e!202259)))

(declare-fun c!51499 () Bool)

(declare-fun lt!158176 () (_ BitVec 64))

(assert (=> b!329246 (= c!51499 (or (= lt!158176 k!2497) (= (bvadd lt!158176 lt!158176) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!70027 () Bool)

(assert (=> d!70027 e!202260))

(declare-fun c!51498 () Bool)

(assert (=> d!70027 (= c!51498 (and (is-Intermediate!3110 lt!158175) (undefined!3922 lt!158175)))))

(assert (=> d!70027 (= lt!158175 e!202256)))

(declare-fun c!51497 () Bool)

(assert (=> d!70027 (= c!51497 (bvsge x!1490 #b01111111111111111111111111111110))))

(assert (=> d!70027 (= lt!158176 (select (arr!7968 a!3305) index!1840))))

(assert (=> d!70027 (validMask!0 mask!3777)))

(assert (=> d!70027 (= (seekKeyOrZeroOrLongMinValue!0 x!1490 index!1840 k!2497 a!3305 mask!3777) lt!158175)))

(declare-fun b!329238 () Bool)

(assert (=> b!329238 (= e!202259 (Intermediate!3110 false index!1840 x!1490))))

(assert (= (and d!70027 c!51497) b!329244))

(assert (= (and d!70027 (not c!51497)) b!329246))

(assert (= (and b!329246 c!51499) b!329238))

(assert (= (and b!329246 (not c!51499)) b!329242))

(assert (= (and d!70027 c!51498) b!329243))

(assert (= (and d!70027 (not c!51498)) b!329240))

(assert (= (and b!329240 res!181526) b!329241))

(assert (= (and b!329241 (not res!181527)) b!329239))

(assert (= (and b!329239 (not res!181525)) b!329245))

(declare-fun m!334929 () Bool)

(assert (=> b!329239 m!334929))

(assert (=> b!329245 m!334929))

(assert (=> b!329242 m!334903))

(assert (=> b!329242 m!334903))

(declare-fun m!334939 () Bool)

(assert (=> b!329242 m!334939))

(assert (=> d!70027 m!334889))

(assert (=> d!70027 m!334899))

(assert (=> b!329241 m!334929))

(assert (=> b!329145 d!70027))

(declare-fun b!329261 () Bool)

(declare-fun lt!158182 () SeekEntryResult!3110)

(assert (=> b!329261 (and (bvsge (index!14618 lt!158182) #b00000000000000000000000000000000) (bvslt (index!14618 lt!158182) (size!8320 a!3305)))))

(declare-fun res!181533 () Bool)

(assert (=> b!329261 (= res!181533 (= (select (arr!7968 a!3305) (index!14618 lt!158182)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202270 () Bool)

(assert (=> b!329261 (=> res!181533 e!202270)))

(declare-fun b!329262 () Bool)

(declare-fun e!202273 () Bool)

(declare-fun e!202271 () Bool)

(assert (=> b!329262 (= e!202273 e!202271)))

(declare-fun res!181534 () Bool)

(assert (=> b!329262 (= res!181534 (and (is-Intermediate!3110 lt!158182) (not (undefined!3922 lt!158182)) (bvslt (x!32846 lt!158182) #b01111111111111111111111111111110) (bvsge (x!32846 lt!158182) #b00000000000000000000000000000000) (bvsge (x!32846 lt!158182) #b00000000000000000000000000000000)))))

(assert (=> b!329262 (=> (not res!181534) (not e!202271))))

(declare-fun b!329263 () Bool)

(assert (=> b!329263 (and (bvsge (index!14618 lt!158182) #b00000000000000000000000000000000) (bvslt (index!14618 lt!158182) (size!8320 a!3305)))))

(declare-fun res!181535 () Bool)

(assert (=> b!329263 (= res!181535 (= (select (arr!7968 a!3305) (index!14618 lt!158182)) k!2497))))

(assert (=> b!329263 (=> res!181535 e!202270)))

(assert (=> b!329263 (= e!202271 e!202270)))

(declare-fun e!202272 () SeekEntryResult!3110)

(declare-fun b!329264 () Bool)

(assert (=> b!329264 (= e!202272 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000 mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!329265 () Bool)

(assert (=> b!329265 (= e!202273 (bvsge (x!32846 lt!158182) #b01111111111111111111111111111110))))

(declare-fun b!329266 () Bool)

(declare-fun e!202269 () SeekEntryResult!3110)

(assert (=> b!329266 (= e!202269 (Intermediate!3110 true (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(declare-fun b!329267 () Bool)

(assert (=> b!329267 (and (bvsge (index!14618 lt!158182) #b00000000000000000000000000000000) (bvslt (index!14618 lt!158182) (size!8320 a!3305)))))

(assert (=> b!329267 (= e!202270 (= (select (arr!7968 a!3305) (index!14618 lt!158182)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329268 () Bool)

(assert (=> b!329268 (= e!202269 e!202272)))

(declare-fun c!51506 () Bool)

(declare-fun lt!158183 () (_ BitVec 64))

(assert (=> b!329268 (= c!51506 (or (= lt!158183 k!2497) (= (bvadd lt!158183 lt!158183) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!70039 () Bool)

(assert (=> d!70039 e!202273))

(declare-fun c!51505 () Bool)

(assert (=> d!70039 (= c!51505 (and (is-Intermediate!3110 lt!158182) (undefined!3922 lt!158182)))))

(assert (=> d!70039 (= lt!158182 e!202269)))

(declare-fun c!51504 () Bool)

(assert (=> d!70039 (= c!51504 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!70039 (= lt!158183 (select (arr!7968 a!3305) (toIndex!0 k!2497 mask!3777)))))

(assert (=> d!70039 (validMask!0 mask!3777)))

(assert (=> d!70039 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777) lt!158182)))

(declare-fun b!329260 () Bool)

(assert (=> b!329260 (= e!202272 (Intermediate!3110 false (toIndex!0 k!2497 mask!3777) #b00000000000000000000000000000000))))

(assert (= (and d!70039 c!51504) b!329266))

(assert (= (and d!70039 (not c!51504)) b!329268))

(assert (= (and b!329268 c!51506) b!329260))

(assert (= (and b!329268 (not c!51506)) b!329264))

(assert (= (and d!70039 c!51505) b!329265))

(assert (= (and d!70039 (not c!51505)) b!329262))

(assert (= (and b!329262 res!181534) b!329263))

(assert (= (and b!329263 (not res!181535)) b!329261))

(assert (= (and b!329261 (not res!181533)) b!329267))

(declare-fun m!334947 () Bool)

(assert (=> b!329261 m!334947))

(assert (=> b!329267 m!334947))

(assert (=> b!329264 m!334893))

(declare-fun m!334949 () Bool)

(assert (=> b!329264 m!334949))

(assert (=> b!329264 m!334949))

(declare-fun m!334951 () Bool)

(assert (=> b!329264 m!334951))

(assert (=> d!70039 m!334893))

(declare-fun m!334955 () Bool)

(assert (=> d!70039 m!334955))

(assert (=> d!70039 m!334899))

(assert (=> b!329263 m!334947))

(assert (=> b!329143 d!70039))

(declare-fun d!70045 () Bool)

(declare-fun lt!158195 () (_ BitVec 32))

(declare-fun lt!158194 () (_ BitVec 32))

(assert (=> d!70045 (= lt!158195 (bvmul (bvxor lt!158194 (bvlshr lt!158194 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!70045 (= lt!158194 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!70045 (and (bvsge mask!3777 #b00000000000000000000000000000000) (let ((res!181536 (let ((h!5437 ((_ extract 31 0) (bvand (bvxor k!2497 (bvlshr k!2497 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!32852 (bvmul (bvxor h!5437 (bvlshr h!5437 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!32852 (bvlshr x!32852 #b00000000000000000000000000001101)) mask!3777))))) (and (bvslt res!181536 (bvadd mask!3777 #b00000000000000000000000000000001)) (bvsge res!181536 #b00000000000000000000000000000000))))))

(assert (=> d!70045 (= (toIndex!0 k!2497 mask!3777) (bvand (bvxor lt!158195 (bvlshr lt!158195 #b00000000000000000000000000001101)) mask!3777))))

(assert (=> b!329143 d!70045))

(declare-fun d!70051 () Bool)

(declare-fun res!181551 () Bool)

(declare-fun e!202300 () Bool)

(assert (=> d!70051 (=> res!181551 e!202300)))

(assert (=> d!70051 (= res!181551 (bvsge #b00000000000000000000000000000000 (size!8320 a!3305)))))

(assert (=> d!70051 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3305 mask!3777) e!202300)))

(declare-fun b!329310 () Bool)

(declare-fun e!202302 () Bool)

(assert (=> b!329310 (= e!202300 e!202302)))

(declare-fun c!51521 () Bool)

(assert (=> b!329310 (= c!51521 (validKeyInArray!0 (select (arr!7968 a!3305) #b00000000000000000000000000000000)))))

(declare-fun bm!26141 () Bool)

(declare-fun call!26144 () Bool)

(assert (=> bm!26141 (= call!26144 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3305 mask!3777))))

(declare-fun b!329311 () Bool)

(assert (=> b!329311 (= e!202302 call!26144)))

(declare-fun b!329312 () Bool)

(declare-fun e!202301 () Bool)

(assert (=> b!329312 (= e!202302 e!202301)))

(declare-fun lt!158210 () (_ BitVec 64))

(assert (=> b!329312 (= lt!158210 (select (arr!7968 a!3305) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10203 0))(
  ( (Unit!10204) )
))
(declare-fun lt!158212 () Unit!10203)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!16851 (_ BitVec 64) (_ BitVec 32)) Unit!10203)

(assert (=> b!329312 (= lt!158212 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3305 lt!158210 #b00000000000000000000000000000000))))

(assert (=> b!329312 (arrayContainsKey!0 a!3305 lt!158210 #b00000000000000000000000000000000)))

(declare-fun lt!158211 () Unit!10203)

(assert (=> b!329312 (= lt!158211 lt!158212)))

(declare-fun res!181550 () Bool)

(assert (=> b!329312 (= res!181550 (= (seekEntryOrOpen!0 (select (arr!7968 a!3305) #b00000000000000000000000000000000) a!3305 mask!3777) (Found!3110 #b00000000000000000000000000000000)))))

(assert (=> b!329312 (=> (not res!181550) (not e!202301))))

(declare-fun b!329313 () Bool)

(assert (=> b!329313 (= e!202301 call!26144)))

(assert (= (and d!70051 (not res!181551)) b!329310))

(assert (= (and b!329310 c!51521) b!329312))

(assert (= (and b!329310 (not c!51521)) b!329311))

(assert (= (and b!329312 res!181550) b!329313))

(assert (= (or b!329313 b!329311) bm!26141))

(declare-fun m!334979 () Bool)

(assert (=> b!329310 m!334979))

(assert (=> b!329310 m!334979))

(declare-fun m!334981 () Bool)

(assert (=> b!329310 m!334981))

(declare-fun m!334983 () Bool)

(assert (=> bm!26141 m!334983))

(assert (=> b!329312 m!334979))

(declare-fun m!334985 () Bool)

(assert (=> b!329312 m!334985))

(declare-fun m!334987 () Bool)

(assert (=> b!329312 m!334987))

(assert (=> b!329312 m!334979))

(declare-fun m!334989 () Bool)

(assert (=> b!329312 m!334989))

(assert (=> b!329144 d!70051))

(declare-fun d!70059 () Bool)

(declare-fun res!181560 () Bool)

(declare-fun e!202313 () Bool)

(assert (=> d!70059 (=> res!181560 e!202313)))

(assert (=> d!70059 (= res!181560 (= (select (arr!7968 a!3305) #b00000000000000000000000000000000) k!2497))))

(assert (=> d!70059 (= (arrayContainsKey!0 a!3305 k!2497 #b00000000000000000000000000000000) e!202313)))

(declare-fun b!329326 () Bool)

(declare-fun e!202314 () Bool)

(assert (=> b!329326 (= e!202313 e!202314)))

(declare-fun res!181561 () Bool)

(assert (=> b!329326 (=> (not res!181561) (not e!202314))))

(assert (=> b!329326 (= res!181561 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!8320 a!3305)))))

(declare-fun b!329327 () Bool)

(assert (=> b!329327 (= e!202314 (arrayContainsKey!0 a!3305 k!2497 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!70059 (not res!181560)) b!329326))

(assert (= (and b!329326 res!181561) b!329327))

(assert (=> d!70059 m!334979))

(declare-fun m!334991 () Bool)

(assert (=> b!329327 m!334991))

(assert (=> b!329147 d!70059))

(declare-fun b!329329 () Bool)

(declare-fun lt!158219 () SeekEntryResult!3110)

(assert (=> b!329329 (and (bvsge (index!14618 lt!158219) #b00000000000000000000000000000000) (bvslt (index!14618 lt!158219) (size!8320 a!3305)))))

(declare-fun res!181562 () Bool)

(assert (=> b!329329 (= res!181562 (= (select (arr!7968 a!3305) (index!14618 lt!158219)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!202316 () Bool)

(assert (=> b!329329 (=> res!181562 e!202316)))

(declare-fun b!329330 () Bool)

(declare-fun e!202319 () Bool)

(declare-fun e!202317 () Bool)

(assert (=> b!329330 (= e!202319 e!202317)))

(declare-fun res!181563 () Bool)

(assert (=> b!329330 (= res!181563 (and (is-Intermediate!3110 lt!158219) (not (undefined!3922 lt!158219)) (bvslt (x!32846 lt!158219) #b01111111111111111111111111111110) (bvsge (x!32846 lt!158219) #b00000000000000000000000000000000) (bvsge (x!32846 lt!158219) (bvadd #b00000000000000000000000000000001 x!1490))))))

(assert (=> b!329330 (=> (not res!181563) (not e!202317))))

(declare-fun b!329331 () Bool)

(assert (=> b!329331 (and (bvsge (index!14618 lt!158219) #b00000000000000000000000000000000) (bvslt (index!14618 lt!158219) (size!8320 a!3305)))))

(declare-fun res!181564 () Bool)

(assert (=> b!329331 (= res!181564 (= (select (arr!7968 a!3305) (index!14618 lt!158219)) k!2497))))

(assert (=> b!329331 (=> res!181564 e!202316)))

(assert (=> b!329331 (= e!202317 e!202316)))

(declare-fun e!202318 () SeekEntryResult!3110)

(declare-fun b!329332 () Bool)

(assert (=> b!329332 (= e!202318 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490) mask!3777) k!2497 a!3305 mask!3777))))

(declare-fun b!329333 () Bool)

(assert (=> b!329333 (= e!202319 (bvsge (x!32846 lt!158219) #b01111111111111111111111111111110))))

(declare-fun b!329334 () Bool)

(declare-fun e!202315 () SeekEntryResult!3110)

(assert (=> b!329334 (= e!202315 (Intermediate!3110 true (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(declare-fun b!329335 () Bool)

(assert (=> b!329335 (and (bvsge (index!14618 lt!158219) #b00000000000000000000000000000000) (bvslt (index!14618 lt!158219) (size!8320 a!3305)))))

(assert (=> b!329335 (= e!202316 (= (select (arr!7968 a!3305) (index!14618 lt!158219)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!329336 () Bool)

(assert (=> b!329336 (= e!202315 e!202318)))

(declare-fun c!51526 () Bool)

(declare-fun lt!158220 () (_ BitVec 64))

(assert (=> b!329336 (= c!51526 (or (= lt!158220 k!2497) (= (bvadd lt!158220 lt!158220) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!70061 () Bool)

(assert (=> d!70061 e!202319))

(declare-fun c!51525 () Bool)

(assert (=> d!70061 (= c!51525 (and (is-Intermediate!3110 lt!158219) (undefined!3922 lt!158219)))))

(assert (=> d!70061 (= lt!158219 e!202315)))

(declare-fun c!51524 () Bool)

(assert (=> d!70061 (= c!51524 (bvsge (bvadd #b00000000000000000000000000000001 x!1490) #b01111111111111111111111111111110))))

(assert (=> d!70061 (= lt!158220 (select (arr!7968 a!3305) (nextIndex!0 index!1840 x!1490 mask!3777)))))

(assert (=> d!70061 (validMask!0 mask!3777)))

(assert (=> d!70061 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1490) (nextIndex!0 index!1840 x!1490 mask!3777) k!2497 a!3305 mask!3777) lt!158219)))

(declare-fun b!329328 () Bool)

(assert (=> b!329328 (= e!202318 (Intermediate!3110 false (nextIndex!0 index!1840 x!1490 mask!3777) (bvadd #b00000000000000000000000000000001 x!1490)))))

(assert (= (and d!70061 c!51524) b!329334))

(assert (= (and d!70061 (not c!51524)) b!329336))

(assert (= (and b!329336 c!51526) b!329328))

(assert (= (and b!329336 (not c!51526)) b!329332))

(assert (= (and d!70061 c!51525) b!329333))

(assert (= (and d!70061 (not c!51525)) b!329330))

(assert (= (and b!329330 res!181563) b!329331))

(assert (= (and b!329331 (not res!181564)) b!329329))

(assert (= (and b!329329 (not res!181562)) b!329335))

(declare-fun m!334993 () Bool)

(assert (=> b!329329 m!334993))

(assert (=> b!329335 m!334993))

(assert (=> b!329332 m!334903))

(declare-fun m!334995 () Bool)

(assert (=> b!329332 m!334995))

(assert (=> b!329332 m!334995))

(declare-fun m!334997 () Bool)

(assert (=> b!329332 m!334997))

(assert (=> d!70061 m!334903))

(declare-fun m!334999 () Bool)

(assert (=> d!70061 m!334999))

(assert (=> d!70061 m!334899))

(assert (=> b!329331 m!334993))

(assert (=> b!329148 d!70061))

(declare-fun d!70067 () Bool)

(declare-fun lt!158226 () (_ BitVec 32))

(assert (=> d!70067 (and (bvsge lt!158226 #b00000000000000000000000000000000) (bvslt lt!158226 (bvadd mask!3777 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!70067 (= lt!158226 (choose!52 index!1840 x!1490 mask!3777))))

(assert (=> d!70067 (validMask!0 mask!3777)))

(assert (=> d!70067 (= (nextIndex!0 index!1840 x!1490 mask!3777) lt!158226)))

(declare-fun bs!11405 () Bool)

(assert (= bs!11405 d!70067))

(declare-fun m!335013 () Bool)

(assert (=> bs!11405 m!335013))

(assert (=> bs!11405 m!334899))

(assert (=> b!329148 d!70067))

(declare-fun b!329386 () Bool)

(declare-fun e!202350 () SeekEntryResult!3110)

(declare-fun e!202351 () SeekEntryResult!3110)

(assert (=> b!329386 (= e!202350 e!202351)))

(declare-fun lt!158249 () (_ BitVec 64))

(declare-fun lt!158247 () SeekEntryResult!3110)

(assert (=> b!329386 (= lt!158249 (select (arr!7968 a!3305) (index!14618 lt!158247)))))

(declare-fun c!51548 () Bool)

(assert (=> b!329386 (= c!51548 (= lt!158249 k!2497))))

(declare-fun b!329387 () Bool)

(declare-fun e!202349 () SeekEntryResult!3110)

(assert (=> b!329387 (= e!202349 (MissingZero!3110 (index!14618 lt!158247)))))

(declare-fun b!329388 () Bool)

(assert (=> b!329388 (= e!202350 Undefined!3110)))

(declare-fun d!70071 () Bool)

(declare-fun lt!158248 () SeekEntryResult!3110)

(assert (=> d!70071 (and (or (is-Undefined!3110 lt!158248) (not (is-Found!3110 lt!158248)) (and (bvsge (index!14617 lt!158248) #b00000000000000000000000000000000) (bvslt (index!14617 lt!158248) (size!8320 a!3305)))) (or (is-Undefined!3110 lt!158248) (is-Found!3110 lt!158248) (not (is-MissingZero!3110 lt!158248)) (and (bvsge (index!14616 lt!158248) #b00000000000000000000000000000000) (bvslt (index!14616 lt!158248) (size!8320 a!3305)))) (or (is-Undefined!3110 lt!158248) (is-Found!3110 lt!158248) (is-MissingZero!3110 lt!158248) (not (is-MissingVacant!3110 lt!158248)) (and (bvsge (index!14619 lt!158248) #b00000000000000000000000000000000) (bvslt (index!14619 lt!158248) (size!8320 a!3305)))) (or (is-Undefined!3110 lt!158248) (ite (is-Found!3110 lt!158248) (= (select (arr!7968 a!3305) (index!14617 lt!158248)) k!2497) (ite (is-MissingZero!3110 lt!158248) (= (select (arr!7968 a!3305) (index!14616 lt!158248)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3110 lt!158248) (= (select (arr!7968 a!3305) (index!14619 lt!158248)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!70071 (= lt!158248 e!202350)))

(declare-fun c!51547 () Bool)

(assert (=> d!70071 (= c!51547 (and (is-Intermediate!3110 lt!158247) (undefined!3922 lt!158247)))))

(assert (=> d!70071 (= lt!158247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2497 mask!3777) k!2497 a!3305 mask!3777))))

(assert (=> d!70071 (validMask!0 mask!3777)))

(assert (=> d!70071 (= (seekEntryOrOpen!0 k!2497 a!3305 mask!3777) lt!158248)))

(declare-fun b!329389 () Bool)

(declare-fun c!51546 () Bool)

(assert (=> b!329389 (= c!51546 (= lt!158249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!329389 (= e!202351 e!202349)))

(declare-fun b!329390 () Bool)

(assert (=> b!329390 (= e!202351 (Found!3110 (index!14618 lt!158247)))))

(declare-fun b!329391 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!16851 (_ BitVec 32)) SeekEntryResult!3110)

(assert (=> b!329391 (= e!202349 (seekKeyOrZeroReturnVacant!0 (x!32846 lt!158247) (index!14618 lt!158247) (index!14618 lt!158247) k!2497 a!3305 mask!3777))))

(assert (= (and d!70071 c!51547) b!329388))

(assert (= (and d!70071 (not c!51547)) b!329386))

(assert (= (and b!329386 c!51548) b!329390))

(assert (= (and b!329386 (not c!51548)) b!329389))

(assert (= (and b!329389 c!51546) b!329387))

(assert (= (and b!329389 (not c!51546)) b!329391))

(declare-fun m!335037 () Bool)

(assert (=> b!329386 m!335037))

(assert (=> d!70071 m!334893))

(assert (=> d!70071 m!334895))

(assert (=> d!70071 m!334899))

(declare-fun m!335039 () Bool)

(assert (=> d!70071 m!335039))

(assert (=> d!70071 m!334893))

(declare-fun m!335041 () Bool)

(assert (=> d!70071 m!335041))

(declare-fun m!335043 () Bool)

(assert (=> d!70071 m!335043))

(declare-fun m!335045 () Bool)

(assert (=> b!329391 m!335045))

(assert (=> b!329146 d!70071))

(declare-fun d!70083 () Bool)

(assert (=> d!70083 (= (validKeyInArray!0 k!2497) (and (not (= k!2497 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2497 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!329141 d!70083))

(push 1)

