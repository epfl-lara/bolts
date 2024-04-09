; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86338 () Bool)

(assert start!86338)

(declare-fun res!668705 () Bool)

(declare-fun e!563286 () Bool)

(assert (=> start!86338 (=> (not res!668705) (not e!563286))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86338 (= res!668705 (validMask!0 mask!3464))))

(assert (=> start!86338 e!563286))

(declare-datatypes ((array!63142 0))(
  ( (array!63143 (arr!30394 (Array (_ BitVec 32) (_ BitVec 64))) (size!30897 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63142)

(declare-fun array_inv!23384 (array!63142) Bool)

(assert (=> start!86338 (array_inv!23384 a!3219)))

(assert (=> start!86338 true))

(declare-fun b!998907 () Bool)

(declare-fun e!563287 () Bool)

(assert (=> b!998907 (= e!563286 e!563287)))

(declare-fun res!668706 () Bool)

(assert (=> b!998907 (=> (not res!668706) (not e!563287))))

(declare-datatypes ((SeekEntryResult!9326 0))(
  ( (MissingZero!9326 (index!39674 (_ BitVec 32))) (Found!9326 (index!39675 (_ BitVec 32))) (Intermediate!9326 (undefined!10138 Bool) (index!39676 (_ BitVec 32)) (x!87141 (_ BitVec 32))) (Undefined!9326) (MissingVacant!9326 (index!39677 (_ BitVec 32))) )
))
(declare-fun lt!441837 () SeekEntryResult!9326)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998907 (= res!668706 (or (= lt!441837 (MissingVacant!9326 i!1194)) (= lt!441837 (MissingZero!9326 i!1194))))))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63142 (_ BitVec 32)) SeekEntryResult!9326)

(assert (=> b!998907 (= lt!441837 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998908 () Bool)

(declare-fun res!668707 () Bool)

(declare-fun e!563285 () Bool)

(assert (=> b!998908 (=> (not res!668707) (not e!563285))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!441835 () SeekEntryResult!9326)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63142 (_ BitVec 32)) SeekEntryResult!9326)

(assert (=> b!998908 (= res!668707 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30394 a!3219) j!170) a!3219 mask!3464) lt!441835))))

(declare-fun b!998909 () Bool)

(declare-fun lt!441836 () (_ BitVec 32))

(assert (=> b!998909 (= e!563285 (and (bvsge mask!3464 #b00000000000000000000000000000000) (or (bvslt lt!441836 #b00000000000000000000000000000000) (bvsge lt!441836 (bvadd #b00000000000000000000000000000001 mask!3464)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998909 (= lt!441836 (toIndex!0 (select (store (arr!30394 a!3219) i!1194 k!2224) j!170) mask!3464))))

(declare-fun b!998910 () Bool)

(declare-fun res!668710 () Bool)

(assert (=> b!998910 (=> (not res!668710) (not e!563286))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998910 (= res!668710 (validKeyInArray!0 k!2224))))

(declare-fun b!998911 () Bool)

(declare-fun res!668708 () Bool)

(assert (=> b!998911 (=> (not res!668708) (not e!563286))))

(assert (=> b!998911 (= res!668708 (validKeyInArray!0 (select (arr!30394 a!3219) j!170)))))

(declare-fun b!998912 () Bool)

(declare-fun res!668700 () Bool)

(assert (=> b!998912 (=> (not res!668700) (not e!563287))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998912 (= res!668700 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30897 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30897 a!3219))))))

(declare-fun b!998913 () Bool)

(assert (=> b!998913 (= e!563287 e!563285)))

(declare-fun res!668704 () Bool)

(assert (=> b!998913 (=> (not res!668704) (not e!563285))))

(assert (=> b!998913 (= res!668704 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30394 a!3219) j!170) mask!3464) (select (arr!30394 a!3219) j!170) a!3219 mask!3464) lt!441835))))

(assert (=> b!998913 (= lt!441835 (Intermediate!9326 false resIndex!38 resX!38))))

(declare-fun b!998914 () Bool)

(declare-fun res!668702 () Bool)

(assert (=> b!998914 (=> (not res!668702) (not e!563287))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63142 (_ BitVec 32)) Bool)

(assert (=> b!998914 (= res!668702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998915 () Bool)

(declare-fun res!668701 () Bool)

(assert (=> b!998915 (=> (not res!668701) (not e!563286))))

(assert (=> b!998915 (= res!668701 (and (= (size!30897 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30897 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30897 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998916 () Bool)

(declare-fun res!668709 () Bool)

(assert (=> b!998916 (=> (not res!668709) (not e!563287))))

(declare-datatypes ((List!21196 0))(
  ( (Nil!21193) (Cons!21192 (h!22366 (_ BitVec 64)) (t!30205 List!21196)) )
))
(declare-fun arrayNoDuplicates!0 (array!63142 (_ BitVec 32) List!21196) Bool)

(assert (=> b!998916 (= res!668709 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21193))))

(declare-fun b!998917 () Bool)

(declare-fun res!668703 () Bool)

(assert (=> b!998917 (=> (not res!668703) (not e!563286))))

(declare-fun arrayContainsKey!0 (array!63142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998917 (= res!668703 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(assert (= (and start!86338 res!668705) b!998915))

(assert (= (and b!998915 res!668701) b!998911))

(assert (= (and b!998911 res!668708) b!998910))

(assert (= (and b!998910 res!668710) b!998917))

(assert (= (and b!998917 res!668703) b!998907))

(assert (= (and b!998907 res!668706) b!998914))

(assert (= (and b!998914 res!668702) b!998916))

(assert (= (and b!998916 res!668709) b!998912))

(assert (= (and b!998912 res!668700) b!998913))

(assert (= (and b!998913 res!668704) b!998908))

(assert (= (and b!998908 res!668707) b!998909))

(declare-fun m!925395 () Bool)

(assert (=> b!998916 m!925395))

(declare-fun m!925397 () Bool)

(assert (=> b!998910 m!925397))

(declare-fun m!925399 () Bool)

(assert (=> b!998907 m!925399))

(declare-fun m!925401 () Bool)

(assert (=> b!998917 m!925401))

(declare-fun m!925403 () Bool)

(assert (=> start!86338 m!925403))

(declare-fun m!925405 () Bool)

(assert (=> start!86338 m!925405))

(declare-fun m!925407 () Bool)

(assert (=> b!998913 m!925407))

(assert (=> b!998913 m!925407))

(declare-fun m!925409 () Bool)

(assert (=> b!998913 m!925409))

(assert (=> b!998913 m!925409))

(assert (=> b!998913 m!925407))

(declare-fun m!925411 () Bool)

(assert (=> b!998913 m!925411))

(assert (=> b!998908 m!925407))

(assert (=> b!998908 m!925407))

(declare-fun m!925413 () Bool)

(assert (=> b!998908 m!925413))

(declare-fun m!925415 () Bool)

(assert (=> b!998909 m!925415))

(declare-fun m!925417 () Bool)

(assert (=> b!998909 m!925417))

(assert (=> b!998909 m!925417))

(declare-fun m!925419 () Bool)

(assert (=> b!998909 m!925419))

(declare-fun m!925421 () Bool)

(assert (=> b!998914 m!925421))

(assert (=> b!998911 m!925407))

(assert (=> b!998911 m!925407))

(declare-fun m!925423 () Bool)

(assert (=> b!998911 m!925423))

(push 1)

(assert (not b!998913))

(assert (not start!86338))

(assert (not b!998917))

(assert (not b!998910))

(assert (not b!998914))

(assert (not b!998911))

(assert (not b!998916))

(assert (not b!998907))

(assert (not b!998909))

(assert (not b!998908))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!999038 () Bool)

(declare-fun e!563352 () SeekEntryResult!9326)

(declare-fun lt!441878 () SeekEntryResult!9326)

(assert (=> b!999038 (= e!563352 (MissingZero!9326 (index!39676 lt!441878)))))

(declare-fun d!119199 () Bool)

(declare-fun lt!441877 () SeekEntryResult!9326)

(assert (=> d!119199 (and (or (is-Undefined!9326 lt!441877) (not (is-Found!9326 lt!441877)) (and (bvsge (index!39675 lt!441877) #b00000000000000000000000000000000) (bvslt (index!39675 lt!441877) (size!30897 a!3219)))) (or (is-Undefined!9326 lt!441877) (is-Found!9326 lt!441877) (not (is-MissingZero!9326 lt!441877)) (and (bvsge (index!39674 lt!441877) #b00000000000000000000000000000000) (bvslt (index!39674 lt!441877) (size!30897 a!3219)))) (or (is-Undefined!9326 lt!441877) (is-Found!9326 lt!441877) (is-MissingZero!9326 lt!441877) (not (is-MissingVacant!9326 lt!441877)) (and (bvsge (index!39677 lt!441877) #b00000000000000000000000000000000) (bvslt (index!39677 lt!441877) (size!30897 a!3219)))) (or (is-Undefined!9326 lt!441877) (ite (is-Found!9326 lt!441877) (= (select (arr!30394 a!3219) (index!39675 lt!441877)) k!2224) (ite (is-MissingZero!9326 lt!441877) (= (select (arr!30394 a!3219) (index!39674 lt!441877)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9326 lt!441877) (= (select (arr!30394 a!3219) (index!39677 lt!441877)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!563354 () SeekEntryResult!9326)

(assert (=> d!119199 (= lt!441877 e!563354)))

(declare-fun c!101268 () Bool)

(assert (=> d!119199 (= c!101268 (and (is-Intermediate!9326 lt!441878) (undefined!10138 lt!441878)))))

(assert (=> d!119199 (= lt!441878 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119199 (validMask!0 mask!3464)))

(assert (=> d!119199 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441877)))

(declare-fun b!999039 () Bool)

(declare-fun e!563353 () SeekEntryResult!9326)

(assert (=> b!999039 (= e!563354 e!563353)))

(declare-fun lt!441879 () (_ BitVec 64))

(assert (=> b!999039 (= lt!441879 (select (arr!30394 a!3219) (index!39676 lt!441878)))))

(declare-fun c!101267 () Bool)

(assert (=> b!999039 (= c!101267 (= lt!441879 k!2224))))

(declare-fun b!999040 () Bool)

(assert (=> b!999040 (= e!563354 Undefined!9326)))

(declare-fun b!999041 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63142 (_ BitVec 32)) SeekEntryResult!9326)

(assert (=> b!999041 (= e!563352 (seekKeyOrZeroReturnVacant!0 (x!87141 lt!441878) (index!39676 lt!441878) (index!39676 lt!441878) k!2224 a!3219 mask!3464))))

(declare-fun b!999042 () Bool)

(assert (=> b!999042 (= e!563353 (Found!9326 (index!39676 lt!441878)))))

(declare-fun b!999043 () Bool)

(declare-fun c!101266 () Bool)

(assert (=> b!999043 (= c!101266 (= lt!441879 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!999043 (= e!563353 e!563352)))

(assert (= (and d!119199 c!101268) b!999040))

(assert (= (and d!119199 (not c!101268)) b!999039))

(assert (= (and b!999039 c!101267) b!999042))

(assert (= (and b!999039 (not c!101267)) b!999043))

(assert (= (and b!999043 c!101266) b!999038))

(assert (= (and b!999043 (not c!101266)) b!999041))

(declare-fun m!925509 () Bool)

(assert (=> d!119199 m!925509))

(declare-fun m!925511 () Bool)

(assert (=> d!119199 m!925511))

(assert (=> d!119199 m!925403))

(declare-fun m!925513 () Bool)

(assert (=> d!119199 m!925513))

(declare-fun m!925515 () Bool)

(assert (=> d!119199 m!925515))

(assert (=> d!119199 m!925509))

(declare-fun m!925517 () Bool)

(assert (=> d!119199 m!925517))

(declare-fun m!925519 () Bool)

(assert (=> b!999039 m!925519))

(declare-fun m!925521 () Bool)

(assert (=> b!999041 m!925521))

(assert (=> b!998907 d!119199))

(declare-fun b!999116 () Bool)

(declare-fun e!563396 () Bool)

(declare-fun e!563397 () Bool)

(assert (=> b!999116 (= e!563396 e!563397)))

(declare-fun res!668821 () Bool)

(declare-fun lt!441908 () SeekEntryResult!9326)

(assert (=> b!999116 (= res!668821 (and (is-Intermediate!9326 lt!441908) (not (undefined!10138 lt!441908)) (bvslt (x!87141 lt!441908) #b01111111111111111111111111111110) (bvsge (x!87141 lt!441908) #b00000000000000000000000000000000) (bvsge (x!87141 lt!441908) #b00000000000000000000000000000000)))))

(assert (=> b!999116 (=> (not res!668821) (not e!563397))))

(declare-fun b!999117 () Bool)

(declare-fun e!563394 () SeekEntryResult!9326)

(assert (=> b!999117 (= e!563394 (Intermediate!9326 false (toIndex!0 (select (arr!30394 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!999118 () Bool)

(assert (=> b!999118 (and (bvsge (index!39676 lt!441908) #b00000000000000000000000000000000) (bvslt (index!39676 lt!441908) (size!30897 a!3219)))))

(declare-fun res!668822 () Bool)

(assert (=> b!999118 (= res!668822 (= (select (arr!30394 a!3219) (index!39676 lt!441908)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!563398 () Bool)

(assert (=> b!999118 (=> res!668822 e!563398)))

(declare-fun b!999119 () Bool)

(assert (=> b!999119 (and (bvsge (index!39676 lt!441908) #b00000000000000000000000000000000) (bvslt (index!39676 lt!441908) (size!30897 a!3219)))))

(declare-fun res!668823 () Bool)

(assert (=> b!999119 (= res!668823 (= (select (arr!30394 a!3219) (index!39676 lt!441908)) (select (arr!30394 a!3219) j!170)))))

(assert (=> b!999119 (=> res!668823 e!563398)))

(assert (=> b!999119 (= e!563397 e!563398)))

(declare-fun d!119213 () Bool)

(assert (=> d!119213 e!563396))

(declare-fun c!101298 () Bool)

(assert (=> d!119213 (= c!101298 (and (is-Intermediate!9326 lt!441908) (undefined!10138 lt!441908)))))

(declare-fun e!563395 () SeekEntryResult!9326)

(assert (=> d!119213 (= lt!441908 e!563395)))

(declare-fun c!101296 () Bool)

(assert (=> d!119213 (= c!101296 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!441907 () (_ BitVec 64))

(assert (=> d!119213 (= lt!441907 (select (arr!30394 a!3219) (toIndex!0 (select (arr!30394 a!3219) j!170) mask!3464)))))

(assert (=> d!119213 (validMask!0 mask!3464)))

(assert (=> d!119213 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30394 a!3219) j!170) mask!3464) (select (arr!30394 a!3219) j!170) a!3219 mask!3464) lt!441908)))

(declare-fun b!999120 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!999120 (= e!563394 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30394 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30394 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999121 () Bool)

(assert (=> b!999121 (and (bvsge (index!39676 lt!441908) #b00000000000000000000000000000000) (bvslt (index!39676 lt!441908) (size!30897 a!3219)))))

(assert (=> b!999121 (= e!563398 (= (select (arr!30394 a!3219) (index!39676 lt!441908)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!999122 () Bool)

(assert (=> b!999122 (= e!563396 (bvsge (x!87141 lt!441908) #b01111111111111111111111111111110))))

(declare-fun b!999123 () Bool)

(assert (=> b!999123 (= e!563395 (Intermediate!9326 true (toIndex!0 (select (arr!30394 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!999124 () Bool)

(assert (=> b!999124 (= e!563395 e!563394)))

(declare-fun c!101297 () Bool)

(assert (=> b!999124 (= c!101297 (or (= lt!441907 (select (arr!30394 a!3219) j!170)) (= (bvadd lt!441907 lt!441907) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119213 c!101296) b!999123))

(assert (= (and d!119213 (not c!101296)) b!999124))

(assert (= (and b!999124 c!101297) b!999117))

(assert (= (and b!999124 (not c!101297)) b!999120))

(assert (= (and d!119213 c!101298) b!999122))

(assert (= (and d!119213 (not c!101298)) b!999116))

(assert (= (and b!999116 res!668821) b!999119))

(assert (= (and b!999119 (not res!668823)) b!999118))

(assert (= (and b!999118 (not res!668822)) b!999121))

(declare-fun m!925553 () Bool)

(assert (=> b!999121 m!925553))

(assert (=> b!999120 m!925409))

(declare-fun m!925555 () Bool)

(assert (=> b!999120 m!925555))

(assert (=> b!999120 m!925555))

(assert (=> b!999120 m!925407))

(declare-fun m!925557 () Bool)

(assert (=> b!999120 m!925557))

(assert (=> b!999119 m!925553))

(assert (=> d!119213 m!925409))

(declare-fun m!925559 () Bool)

(assert (=> d!119213 m!925559))

(assert (=> d!119213 m!925403))

(assert (=> b!999118 m!925553))

(assert (=> b!998913 d!119213))

(declare-fun d!119227 () Bool)

(declare-fun lt!441920 () (_ BitVec 32))

(declare-fun lt!441919 () (_ BitVec 32))

(assert (=> d!119227 (= lt!441920 (bvmul (bvxor lt!441919 (bvlshr lt!441919 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119227 (= lt!441919 ((_ extract 31 0) (bvand (bvxor (select (arr!30394 a!3219) j!170) (bvlshr (select (arr!30394 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119227 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!668824 (let ((h!22371 ((_ extract 31 0) (bvand (bvxor (select (arr!30394 a!3219) j!170) (bvlshr (select (arr!30394 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87148 (bvmul (bvxor h!22371 (bvlshr h!22371 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87148 (bvlshr x!87148 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!668824 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!668824 #b00000000000000000000000000000000))))))

(assert (=> d!119227 (= (toIndex!0 (select (arr!30394 a!3219) j!170) mask!3464) (bvand (bvxor lt!441920 (bvlshr lt!441920 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!998913 d!119227))

(declare-fun d!119229 () Bool)

(assert (=> d!119229 (= (validKeyInArray!0 (select (arr!30394 a!3219) j!170)) (and (not (= (select (arr!30394 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30394 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998911 d!119229))

(declare-fun bm!42307 () Bool)

(declare-fun call!42310 () Bool)

(declare-fun c!101304 () Bool)

(assert (=> bm!42307 (= call!42310 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101304 (Cons!21192 (select (arr!30394 a!3219) #b00000000000000000000000000000000) Nil!21193) Nil!21193)))))

(declare-fun b!999147 () Bool)

(declare-fun e!563416 () Bool)

(declare-fun contains!5887 (List!21196 (_ BitVec 64)) Bool)

(assert (=> b!999147 (= e!563416 (contains!5887 Nil!21193 (select (arr!30394 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!999148 () Bool)

(declare-fun e!563417 () Bool)

(declare-fun e!563418 () Bool)

(assert (=> b!999148 (= e!563417 e!563418)))

(declare-fun res!668839 () Bool)

(assert (=> b!999148 (=> (not res!668839) (not e!563418))))

(assert (=> b!999148 (= res!668839 (not e!563416))))

(declare-fun res!668837 () Bool)

(assert (=> b!999148 (=> (not res!668837) (not e!563416))))

(assert (=> b!999148 (= res!668837 (validKeyInArray!0 (select (arr!30394 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119231 () Bool)

(declare-fun res!668838 () Bool)

(assert (=> d!119231 (=> res!668838 e!563417)))

(assert (=> d!119231 (= res!668838 (bvsge #b00000000000000000000000000000000 (size!30897 a!3219)))))

(assert (=> d!119231 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21193) e!563417)))

(declare-fun b!999149 () Bool)

(declare-fun e!563419 () Bool)

(assert (=> b!999149 (= e!563419 call!42310)))

(declare-fun b!999150 () Bool)

(assert (=> b!999150 (= e!563418 e!563419)))

(assert (=> b!999150 (= c!101304 (validKeyInArray!0 (select (arr!30394 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!999151 () Bool)

(assert (=> b!999151 (= e!563419 call!42310)))

(assert (= (and d!119231 (not res!668838)) b!999148))

(assert (= (and b!999148 res!668837) b!999147))

(assert (= (and b!999148 res!668839) b!999150))

(assert (= (and b!999150 c!101304) b!999151))

(assert (= (and b!999150 (not c!101304)) b!999149))

(assert (= (or b!999151 b!999149) bm!42307))

(declare-fun m!925569 () Bool)

(assert (=> bm!42307 m!925569))

(declare-fun m!925571 () Bool)

(assert (=> bm!42307 m!925571))

(assert (=> b!999147 m!925569))

(assert (=> b!999147 m!925569))

(declare-fun m!925573 () Bool)

(assert (=> b!999147 m!925573))

(assert (=> b!999148 m!925569))

(assert (=> b!999148 m!925569))

(declare-fun m!925575 () Bool)

(assert (=> b!999148 m!925575))

(assert (=> b!999150 m!925569))

(assert (=> b!999150 m!925569))

(assert (=> b!999150 m!925575))

(assert (=> b!998916 d!119231))

(declare-fun d!119235 () Bool)

(declare-fun res!668844 () Bool)

(declare-fun e!563430 () Bool)

(assert (=> d!119235 (=> res!668844 e!563430)))

(assert (=> d!119235 (= res!668844 (= (select (arr!30394 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119235 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!563430)))

(declare-fun b!999168 () Bool)

(declare-fun e!563431 () Bool)

(assert (=> b!999168 (= e!563430 e!563431)))

(declare-fun res!668845 () Bool)

(assert (=> b!999168 (=> (not res!668845) (not e!563431))))

(assert (=> b!999168 (= res!668845 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30897 a!3219)))))

(declare-fun b!999169 () Bool)

(assert (=> b!999169 (= e!563431 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119235 (not res!668844)) b!999168))

(assert (= (and b!999168 res!668845) b!999169))

(assert (=> d!119235 m!925569))

(declare-fun m!925577 () Bool)

(assert (=> b!999169 m!925577))

(assert (=> b!998917 d!119235))

(declare-fun d!119237 () Bool)

(assert (=> d!119237 (= (validKeyInArray!0 k!2224) (and (not (= k!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998910 d!119237))

(declare-fun d!119239 () Bool)

(assert (=> d!119239 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86338 d!119239))

(declare-fun d!119251 () Bool)

(assert (=> d!119251 (= (array_inv!23384 a!3219) (bvsge (size!30897 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86338 d!119251))

(declare-fun b!999188 () Bool)

(declare-fun e!563449 () Bool)

(declare-fun e!563450 () Bool)

(assert (=> b!999188 (= e!563449 e!563450)))

(declare-fun res!668858 () Bool)

(declare-fun lt!441936 () SeekEntryResult!9326)

(assert (=> b!999188 (= res!668858 (and (is-Intermediate!9326 lt!441936) (not (undefined!10138 lt!441936)) (bvslt (x!87141 lt!441936) #b01111111111111111111111111111110) (bvsge (x!87141 lt!441936) #b00000000000000000000000000000000) (bvsge (x!87141 lt!441936) x!1245)))))

(assert (=> b!999188 (=> (not res!668858) (not e!563450))))

(declare-fun b!999189 () Bool)

(declare-fun e!563447 () SeekEntryResult!9326)

(assert (=> b!999189 (= e!563447 (Intermediate!9326 false index!1507 x!1245))))

(declare-fun b!999190 () Bool)

(assert (=> b!999190 (and (bvsge (index!39676 lt!441936) #b00000000000000000000000000000000) (bvslt (index!39676 lt!441936) (size!30897 a!3219)))))

(declare-fun res!668859 () Bool)

(assert (=> b!999190 (= res!668859 (= (select (arr!30394 a!3219) (index!39676 lt!441936)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!563451 () Bool)

(assert (=> b!999190 (=> res!668859 e!563451)))

(declare-fun b!999191 () Bool)

(assert (=> b!999191 (and (bvsge (index!39676 lt!441936) #b00000000000000000000000000000000) (bvslt (index!39676 lt!441936) (size!30897 a!3219)))))

(declare-fun res!668860 () Bool)

(assert (=> b!999191 (= res!668860 (= (select (arr!30394 a!3219) (index!39676 lt!441936)) (select (arr!30394 a!3219) j!170)))))

(assert (=> b!999191 (=> res!668860 e!563451)))

(assert (=> b!999191 (= e!563450 e!563451)))

(declare-fun d!119253 () Bool)

(assert (=> d!119253 e!563449))

(declare-fun c!101316 () Bool)

(assert (=> d!119253 (= c!101316 (and (is-Intermediate!9326 lt!441936) (undefined!10138 lt!441936)))))

(declare-fun e!563448 () SeekEntryResult!9326)

(assert (=> d!119253 (= lt!441936 e!563448)))

(declare-fun c!101314 () Bool)

(assert (=> d!119253 (= c!101314 (bvsge x!1245 #b01111111111111111111111111111110))))

(declare-fun lt!441935 () (_ BitVec 64))

(assert (=> d!119253 (= lt!441935 (select (arr!30394 a!3219) index!1507))))

(assert (=> d!119253 (validMask!0 mask!3464)))

(assert (=> d!119253 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30394 a!3219) j!170) a!3219 mask!3464) lt!441936)))

(declare-fun b!999192 () Bool)

(assert (=> b!999192 (= e!563447 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30394 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!999193 () Bool)

(assert (=> b!999193 (and (bvsge (index!39676 lt!441936) #b00000000000000000000000000000000) (bvslt (index!39676 lt!441936) (size!30897 a!3219)))))

(assert (=> b!999193 (= e!563451 (= (select (arr!30394 a!3219) (index!39676 lt!441936)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!999194 () Bool)

(assert (=> b!999194 (= e!563449 (bvsge (x!87141 lt!441936) #b01111111111111111111111111111110))))

(declare-fun b!999195 () Bool)

(assert (=> b!999195 (= e!563448 (Intermediate!9326 true index!1507 x!1245))))

(declare-fun b!999196 () Bool)

(assert (=> b!999196 (= e!563448 e!563447)))

(declare-fun c!101315 () Bool)

(assert (=> b!999196 (= c!101315 (or (= lt!441935 (select (arr!30394 a!3219) j!170)) (= (bvadd lt!441935 lt!441935) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!119253 c!101314) b!999195))

(assert (= (and d!119253 (not c!101314)) b!999196))

(assert (= (and b!999196 c!101315) b!999189))

(assert (= (and b!999196 (not c!101315)) b!999192))

(assert (= (and d!119253 c!101316) b!999194))

(assert (= (and d!119253 (not c!101316)) b!999188))

(assert (= (and b!999188 res!668858) b!999191))

(assert (= (and b!999191 (not res!668860)) b!999190))

(assert (= (and b!999190 (not res!668859)) b!999193))

(declare-fun m!925597 () Bool)

(assert (=> b!999193 m!925597))

(declare-fun m!925599 () Bool)

(assert (=> b!999192 m!925599))

(assert (=> b!999192 m!925599))

(assert (=> b!999192 m!925407))

(declare-fun m!925601 () Bool)

(assert (=> b!999192 m!925601))

(assert (=> b!999191 m!925597))

(declare-fun m!925603 () Bool)

(assert (=> d!119253 m!925603))

(assert (=> d!119253 m!925403))

(assert (=> b!999190 m!925597))

(assert (=> b!998908 d!119253))

(declare-fun d!119255 () Bool)

(declare-fun lt!441938 () (_ BitVec 32))

(declare-fun lt!441937 () (_ BitVec 32))

(assert (=> d!119255 (= lt!441938 (bvmul (bvxor lt!441937 (bvlshr lt!441937 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119255 (= lt!441937 ((_ extract 31 0) (bvand (bvxor (select (store (arr!30394 a!3219) i!1194 k!2224) j!170) (bvlshr (select (store (arr!30394 a!3219) i!1194 k!2224) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119255 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!668824 (let ((h!22371 ((_ extract 31 0) (bvand (bvxor (select (store (arr!30394 a!3219) i!1194 k!2224) j!170) (bvlshr (select (store (arr!30394 a!3219) i!1194 k!2224) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87148 (bvmul (bvxor h!22371 (bvlshr h!22371 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87148 (bvlshr x!87148 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!668824 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!668824 #b00000000000000000000000000000000))))))

(assert (=> d!119255 (= (toIndex!0 (select (store (arr!30394 a!3219) i!1194 k!2224) j!170) mask!3464) (bvand (bvxor lt!441938 (bvlshr lt!441938 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!998909 d!119255))

(declare-fun b!999223 () Bool)

(declare-fun e!563468 () Bool)

(declare-fun call!42313 () Bool)

(assert (=> b!999223 (= e!563468 call!42313)))

(declare-fun b!999224 () Bool)

(declare-fun e!563470 () Bool)

(assert (=> b!999224 (= e!563470 e!563468)))

(declare-fun lt!441951 () (_ BitVec 64))

(assert (=> b!999224 (= lt!441951 (select (arr!30394 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32940 0))(
  ( (Unit!32941) )
))
(declare-fun lt!441949 () Unit!32940)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63142 (_ BitVec 64) (_ BitVec 32)) Unit!32940)

(assert (=> b!999224 (= lt!441949 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441951 #b00000000000000000000000000000000))))

(assert (=> b!999224 (arrayContainsKey!0 a!3219 lt!441951 #b00000000000000000000000000000000)))

(declare-fun lt!441950 () Unit!32940)

(assert (=> b!999224 (= lt!441950 lt!441949)))

(declare-fun res!668871 () Bool)

(assert (=> b!999224 (= res!668871 (= (seekEntryOrOpen!0 (select (arr!30394 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9326 #b00000000000000000000000000000000)))))

(assert (=> b!999224 (=> (not res!668871) (not e!563468))))

(declare-fun b!999225 () Bool)

(assert (=> b!999225 (= e!563470 call!42313)))

(declare-fun b!999226 () Bool)

(declare-fun e!563469 () Bool)

(assert (=> b!999226 (= e!563469 e!563470)))

(declare-fun c!101325 () Bool)

(assert (=> b!999226 (= c!101325 (validKeyInArray!0 (select (arr!30394 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42310 () Bool)

(assert (=> bm!42310 (= call!42313 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun d!119257 () Bool)

(declare-fun res!668872 () Bool)

(assert (=> d!119257 (=> res!668872 e!563469)))

(assert (=> d!119257 (= res!668872 (bvsge #b00000000000000000000000000000000 (size!30897 a!3219)))))

(assert (=> d!119257 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!563469)))

(assert (= (and d!119257 (not res!668872)) b!999226))

(assert (= (and b!999226 c!101325) b!999224))

(assert (= (and b!999226 (not c!101325)) b!999225))

(assert (= (and b!999224 res!668871) b!999223))

(assert (= (or b!999223 b!999225) bm!42310))

(assert (=> b!999224 m!925569))

(declare-fun m!925605 () Bool)

(assert (=> b!999224 m!925605))

(declare-fun m!925607 () Bool)

(assert (=> b!999224 m!925607))

(assert (=> b!999224 m!925569))

(declare-fun m!925609 () Bool)

(assert (=> b!999224 m!925609))

(assert (=> b!999226 m!925569))

(assert (=> b!999226 m!925569))

(assert (=> b!999226 m!925575))

(declare-fun m!925611 () Bool)

(assert (=> bm!42310 m!925611))

(assert (=> b!998914 d!119257))

(push 1)

(assert (not b!999150))

(assert (not b!999148))

(assert (not b!999041))

(assert (not d!119213))

(assert (not b!999192))

(assert (not bm!42310))

(assert (not b!999120))

(assert (not b!999226))

(assert (not d!119253))

(assert (not b!999147))

(assert (not bm!42307))

(assert (not b!999224))

(assert (not d!119199))

(assert (not b!999169))

(check-sat)

(pop 1)

(push 1)

(check-sat)

