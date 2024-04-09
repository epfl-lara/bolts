; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85998 () Bool)

(assert start!85998)

(declare-fun b!995987 () Bool)

(declare-fun res!666350 () Bool)

(declare-fun e!562007 () Bool)

(assert (=> b!995987 (=> (not res!666350) (not e!562007))))

(declare-datatypes ((array!63000 0))(
  ( (array!63001 (arr!30329 (Array (_ BitVec 32) (_ BitVec 64))) (size!30832 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63000)

(declare-fun j!170 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!995987 (= res!666350 (validKeyInArray!0 (select (arr!30329 a!3219) j!170)))))

(declare-fun b!995988 () Bool)

(declare-fun res!666352 () Bool)

(declare-fun e!562005 () Bool)

(assert (=> b!995988 (=> (not res!666352) (not e!562005))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!995988 (= res!666352 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30832 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30832 a!3219))))))

(declare-fun b!995989 () Bool)

(declare-fun res!666348 () Bool)

(assert (=> b!995989 (=> (not res!666348) (not e!562007))))

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!995989 (= res!666348 (and (= (size!30832 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30832 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30832 a!3219)) (not (= i!1194 j!170))))))

(declare-fun res!666351 () Bool)

(assert (=> start!85998 (=> (not res!666351) (not e!562007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!85998 (= res!666351 (validMask!0 mask!3464))))

(assert (=> start!85998 e!562007))

(declare-fun array_inv!23319 (array!63000) Bool)

(assert (=> start!85998 (array_inv!23319 a!3219)))

(assert (=> start!85998 true))

(declare-fun b!995990 () Bool)

(assert (=> b!995990 (= e!562007 e!562005)))

(declare-fun res!666345 () Bool)

(assert (=> b!995990 (=> (not res!666345) (not e!562005))))

(declare-datatypes ((SeekEntryResult!9261 0))(
  ( (MissingZero!9261 (index!39414 (_ BitVec 32))) (Found!9261 (index!39415 (_ BitVec 32))) (Intermediate!9261 (undefined!10073 Bool) (index!39416 (_ BitVec 32)) (x!86879 (_ BitVec 32))) (Undefined!9261) (MissingVacant!9261 (index!39417 (_ BitVec 32))) )
))
(declare-fun lt!441074 () SeekEntryResult!9261)

(assert (=> b!995990 (= res!666345 (or (= lt!441074 (MissingVacant!9261 i!1194)) (= lt!441074 (MissingZero!9261 i!1194))))))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63000 (_ BitVec 32)) SeekEntryResult!9261)

(assert (=> b!995990 (= lt!441074 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!995991 () Bool)

(declare-fun res!666344 () Bool)

(assert (=> b!995991 (=> (not res!666344) (not e!562005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63000 (_ BitVec 32)) Bool)

(assert (=> b!995991 (= res!666344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!995992 () Bool)

(declare-fun res!666346 () Bool)

(assert (=> b!995992 (=> (not res!666346) (not e!562007))))

(declare-fun arrayContainsKey!0 (array!63000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!995992 (= res!666346 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!995993 () Bool)

(declare-fun res!666349 () Bool)

(assert (=> b!995993 (=> (not res!666349) (not e!562007))))

(assert (=> b!995993 (= res!666349 (validKeyInArray!0 k0!2224))))

(declare-fun b!995994 () Bool)

(declare-fun lt!441075 () (_ BitVec 32))

(assert (=> b!995994 (= e!562005 (and (bvsge mask!3464 #b00000000000000000000000000000000) (or (bvslt lt!441075 #b00000000000000000000000000000000) (bvsge lt!441075 (bvadd #b00000000000000000000000000000001 mask!3464)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!995994 (= lt!441075 (toIndex!0 (select (arr!30329 a!3219) j!170) mask!3464))))

(declare-fun b!995995 () Bool)

(declare-fun res!666347 () Bool)

(assert (=> b!995995 (=> (not res!666347) (not e!562005))))

(declare-datatypes ((List!21131 0))(
  ( (Nil!21128) (Cons!21127 (h!22289 (_ BitVec 64)) (t!30140 List!21131)) )
))
(declare-fun arrayNoDuplicates!0 (array!63000 (_ BitVec 32) List!21131) Bool)

(assert (=> b!995995 (= res!666347 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21128))))

(assert (= (and start!85998 res!666351) b!995989))

(assert (= (and b!995989 res!666348) b!995987))

(assert (= (and b!995987 res!666350) b!995993))

(assert (= (and b!995993 res!666349) b!995992))

(assert (= (and b!995992 res!666346) b!995990))

(assert (= (and b!995990 res!666345) b!995991))

(assert (= (and b!995991 res!666344) b!995995))

(assert (= (and b!995995 res!666347) b!995988))

(assert (= (and b!995988 res!666352) b!995994))

(declare-fun m!923321 () Bool)

(assert (=> b!995995 m!923321))

(declare-fun m!923323 () Bool)

(assert (=> b!995993 m!923323))

(declare-fun m!923325 () Bool)

(assert (=> b!995991 m!923325))

(declare-fun m!923327 () Bool)

(assert (=> b!995994 m!923327))

(assert (=> b!995994 m!923327))

(declare-fun m!923329 () Bool)

(assert (=> b!995994 m!923329))

(declare-fun m!923331 () Bool)

(assert (=> b!995992 m!923331))

(declare-fun m!923333 () Bool)

(assert (=> b!995990 m!923333))

(assert (=> b!995987 m!923327))

(assert (=> b!995987 m!923327))

(declare-fun m!923335 () Bool)

(assert (=> b!995987 m!923335))

(declare-fun m!923337 () Bool)

(assert (=> start!85998 m!923337))

(declare-fun m!923339 () Bool)

(assert (=> start!85998 m!923339))

(check-sat (not b!995987) (not start!85998) (not b!995991) (not b!995992) (not b!995990) (not b!995993) (not b!995995) (not b!995994))
(check-sat)
(get-model)

(declare-fun d!118897 () Bool)

(declare-fun lt!441087 () (_ BitVec 32))

(declare-fun lt!441086 () (_ BitVec 32))

(assert (=> d!118897 (= lt!441087 (bvmul (bvxor lt!441086 (bvlshr lt!441086 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!118897 (= lt!441086 ((_ extract 31 0) (bvand (bvxor (select (arr!30329 a!3219) j!170) (bvlshr (select (arr!30329 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!118897 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!666380 (let ((h!22291 ((_ extract 31 0) (bvand (bvxor (select (arr!30329 a!3219) j!170) (bvlshr (select (arr!30329 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!86881 (bvmul (bvxor h!22291 (bvlshr h!22291 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!86881 (bvlshr x!86881 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!666380 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!666380 #b00000000000000000000000000000000))))))

(assert (=> d!118897 (= (toIndex!0 (select (arr!30329 a!3219) j!170) mask!3464) (bvand (bvxor lt!441087 (bvlshr lt!441087 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!995994 d!118897))

(declare-fun b!996047 () Bool)

(declare-fun lt!441103 () SeekEntryResult!9261)

(declare-fun e!562034 () SeekEntryResult!9261)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63000 (_ BitVec 32)) SeekEntryResult!9261)

(assert (=> b!996047 (= e!562034 (seekKeyOrZeroReturnVacant!0 (x!86879 lt!441103) (index!39416 lt!441103) (index!39416 lt!441103) k0!2224 a!3219 mask!3464))))

(declare-fun b!996048 () Bool)

(declare-fun e!562032 () SeekEntryResult!9261)

(assert (=> b!996048 (= e!562032 (Found!9261 (index!39416 lt!441103)))))

(declare-fun b!996049 () Bool)

(declare-fun c!100974 () Bool)

(declare-fun lt!441105 () (_ BitVec 64))

(assert (=> b!996049 (= c!100974 (= lt!441105 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!996049 (= e!562032 e!562034)))

(declare-fun b!996050 () Bool)

(declare-fun e!562033 () SeekEntryResult!9261)

(assert (=> b!996050 (= e!562033 Undefined!9261)))

(declare-fun b!996051 () Bool)

(assert (=> b!996051 (= e!562033 e!562032)))

(assert (=> b!996051 (= lt!441105 (select (arr!30329 a!3219) (index!39416 lt!441103)))))

(declare-fun c!100973 () Bool)

(assert (=> b!996051 (= c!100973 (= lt!441105 k0!2224))))

(declare-fun d!118899 () Bool)

(declare-fun lt!441104 () SeekEntryResult!9261)

(get-info :version)

(assert (=> d!118899 (and (or ((_ is Undefined!9261) lt!441104) (not ((_ is Found!9261) lt!441104)) (and (bvsge (index!39415 lt!441104) #b00000000000000000000000000000000) (bvslt (index!39415 lt!441104) (size!30832 a!3219)))) (or ((_ is Undefined!9261) lt!441104) ((_ is Found!9261) lt!441104) (not ((_ is MissingZero!9261) lt!441104)) (and (bvsge (index!39414 lt!441104) #b00000000000000000000000000000000) (bvslt (index!39414 lt!441104) (size!30832 a!3219)))) (or ((_ is Undefined!9261) lt!441104) ((_ is Found!9261) lt!441104) ((_ is MissingZero!9261) lt!441104) (not ((_ is MissingVacant!9261) lt!441104)) (and (bvsge (index!39417 lt!441104) #b00000000000000000000000000000000) (bvslt (index!39417 lt!441104) (size!30832 a!3219)))) (or ((_ is Undefined!9261) lt!441104) (ite ((_ is Found!9261) lt!441104) (= (select (arr!30329 a!3219) (index!39415 lt!441104)) k0!2224) (ite ((_ is MissingZero!9261) lt!441104) (= (select (arr!30329 a!3219) (index!39414 lt!441104)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9261) lt!441104) (= (select (arr!30329 a!3219) (index!39417 lt!441104)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!118899 (= lt!441104 e!562033)))

(declare-fun c!100972 () Bool)

(assert (=> d!118899 (= c!100972 (and ((_ is Intermediate!9261) lt!441103) (undefined!10073 lt!441103)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63000 (_ BitVec 32)) SeekEntryResult!9261)

(assert (=> d!118899 (= lt!441103 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!118899 (validMask!0 mask!3464)))

(assert (=> d!118899 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!441104)))

(declare-fun b!996052 () Bool)

(assert (=> b!996052 (= e!562034 (MissingZero!9261 (index!39416 lt!441103)))))

(assert (= (and d!118899 c!100972) b!996050))

(assert (= (and d!118899 (not c!100972)) b!996051))

(assert (= (and b!996051 c!100973) b!996048))

(assert (= (and b!996051 (not c!100973)) b!996049))

(assert (= (and b!996049 c!100974) b!996052))

(assert (= (and b!996049 (not c!100974)) b!996047))

(declare-fun m!923373 () Bool)

(assert (=> b!996047 m!923373))

(declare-fun m!923375 () Bool)

(assert (=> b!996051 m!923375))

(declare-fun m!923377 () Bool)

(assert (=> d!118899 m!923377))

(declare-fun m!923379 () Bool)

(assert (=> d!118899 m!923379))

(assert (=> d!118899 m!923377))

(declare-fun m!923381 () Bool)

(assert (=> d!118899 m!923381))

(declare-fun m!923383 () Bool)

(assert (=> d!118899 m!923383))

(assert (=> d!118899 m!923337))

(declare-fun m!923385 () Bool)

(assert (=> d!118899 m!923385))

(assert (=> b!995990 d!118899))

(declare-fun d!118907 () Bool)

(assert (=> d!118907 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!85998 d!118907))

(declare-fun d!118915 () Bool)

(assert (=> d!118915 (= (array_inv!23319 a!3219) (bvsge (size!30832 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!85998 d!118915))

(declare-fun d!118917 () Bool)

(declare-fun res!666393 () Bool)

(declare-fun e!562053 () Bool)

(assert (=> d!118917 (=> res!666393 e!562053)))

(assert (=> d!118917 (= res!666393 (bvsge #b00000000000000000000000000000000 (size!30832 a!3219)))))

(assert (=> d!118917 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21128) e!562053)))

(declare-fun b!996081 () Bool)

(declare-fun e!562055 () Bool)

(declare-fun e!562054 () Bool)

(assert (=> b!996081 (= e!562055 e!562054)))

(declare-fun c!100986 () Bool)

(assert (=> b!996081 (= c!100986 (validKeyInArray!0 (select (arr!30329 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!996082 () Bool)

(declare-fun e!562052 () Bool)

(declare-fun contains!5873 (List!21131 (_ BitVec 64)) Bool)

(assert (=> b!996082 (= e!562052 (contains!5873 Nil!21128 (select (arr!30329 a!3219) #b00000000000000000000000000000000)))))

(declare-fun bm!42226 () Bool)

(declare-fun call!42229 () Bool)

(assert (=> bm!42226 (= call!42229 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!100986 (Cons!21127 (select (arr!30329 a!3219) #b00000000000000000000000000000000) Nil!21128) Nil!21128)))))

(declare-fun b!996083 () Bool)

(assert (=> b!996083 (= e!562054 call!42229)))

(declare-fun b!996084 () Bool)

(assert (=> b!996084 (= e!562054 call!42229)))

(declare-fun b!996085 () Bool)

(assert (=> b!996085 (= e!562053 e!562055)))

(declare-fun res!666394 () Bool)

(assert (=> b!996085 (=> (not res!666394) (not e!562055))))

(assert (=> b!996085 (= res!666394 (not e!562052))))

(declare-fun res!666395 () Bool)

(assert (=> b!996085 (=> (not res!666395) (not e!562052))))

(assert (=> b!996085 (= res!666395 (validKeyInArray!0 (select (arr!30329 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!118917 (not res!666393)) b!996085))

(assert (= (and b!996085 res!666395) b!996082))

(assert (= (and b!996085 res!666394) b!996081))

(assert (= (and b!996081 c!100986) b!996084))

(assert (= (and b!996081 (not c!100986)) b!996083))

(assert (= (or b!996084 b!996083) bm!42226))

(declare-fun m!923397 () Bool)

(assert (=> b!996081 m!923397))

(assert (=> b!996081 m!923397))

(declare-fun m!923401 () Bool)

(assert (=> b!996081 m!923401))

(assert (=> b!996082 m!923397))

(assert (=> b!996082 m!923397))

(declare-fun m!923405 () Bool)

(assert (=> b!996082 m!923405))

(assert (=> bm!42226 m!923397))

(declare-fun m!923407 () Bool)

(assert (=> bm!42226 m!923407))

(assert (=> b!996085 m!923397))

(assert (=> b!996085 m!923397))

(assert (=> b!996085 m!923401))

(assert (=> b!995995 d!118917))

(declare-fun b!996127 () Bool)

(declare-fun e!562084 () Bool)

(declare-fun e!562085 () Bool)

(assert (=> b!996127 (= e!562084 e!562085)))

(declare-fun lt!441130 () (_ BitVec 64))

(assert (=> b!996127 (= lt!441130 (select (arr!30329 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32918 0))(
  ( (Unit!32919) )
))
(declare-fun lt!441132 () Unit!32918)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63000 (_ BitVec 64) (_ BitVec 32)) Unit!32918)

(assert (=> b!996127 (= lt!441132 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441130 #b00000000000000000000000000000000))))

(assert (=> b!996127 (arrayContainsKey!0 a!3219 lt!441130 #b00000000000000000000000000000000)))

(declare-fun lt!441131 () Unit!32918)

(assert (=> b!996127 (= lt!441131 lt!441132)))

(declare-fun res!666411 () Bool)

(assert (=> b!996127 (= res!666411 (= (seekEntryOrOpen!0 (select (arr!30329 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9261 #b00000000000000000000000000000000)))))

(assert (=> b!996127 (=> (not res!666411) (not e!562085))))

(declare-fun bm!42232 () Bool)

(declare-fun call!42235 () Bool)

(assert (=> bm!42232 (= call!42235 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun d!118921 () Bool)

(declare-fun res!666410 () Bool)

(declare-fun e!562083 () Bool)

(assert (=> d!118921 (=> res!666410 e!562083)))

(assert (=> d!118921 (= res!666410 (bvsge #b00000000000000000000000000000000 (size!30832 a!3219)))))

(assert (=> d!118921 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!562083)))

(declare-fun b!996128 () Bool)

(assert (=> b!996128 (= e!562084 call!42235)))

(declare-fun b!996129 () Bool)

(assert (=> b!996129 (= e!562083 e!562084)))

(declare-fun c!101001 () Bool)

(assert (=> b!996129 (= c!101001 (validKeyInArray!0 (select (arr!30329 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!996130 () Bool)

(assert (=> b!996130 (= e!562085 call!42235)))

(assert (= (and d!118921 (not res!666410)) b!996129))

(assert (= (and b!996129 c!101001) b!996127))

(assert (= (and b!996129 (not c!101001)) b!996128))

(assert (= (and b!996127 res!666411) b!996130))

(assert (= (or b!996130 b!996128) bm!42232))

(assert (=> b!996127 m!923397))

(declare-fun m!923427 () Bool)

(assert (=> b!996127 m!923427))

(declare-fun m!923431 () Bool)

(assert (=> b!996127 m!923431))

(assert (=> b!996127 m!923397))

(declare-fun m!923435 () Bool)

(assert (=> b!996127 m!923435))

(declare-fun m!923437 () Bool)

(assert (=> bm!42232 m!923437))

(assert (=> b!996129 m!923397))

(assert (=> b!996129 m!923397))

(assert (=> b!996129 m!923401))

(assert (=> b!995991 d!118921))

(declare-fun d!118929 () Bool)

(assert (=> d!118929 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995993 d!118929))

(declare-fun d!118931 () Bool)

(assert (=> d!118931 (= (validKeyInArray!0 (select (arr!30329 a!3219) j!170)) (and (not (= (select (arr!30329 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30329 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!995987 d!118931))

(declare-fun d!118933 () Bool)

(declare-fun res!666422 () Bool)

(declare-fun e!562098 () Bool)

(assert (=> d!118933 (=> res!666422 e!562098)))

(assert (=> d!118933 (= res!666422 (= (select (arr!30329 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!118933 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!562098)))

(declare-fun b!996145 () Bool)

(declare-fun e!562099 () Bool)

(assert (=> b!996145 (= e!562098 e!562099)))

(declare-fun res!666423 () Bool)

(assert (=> b!996145 (=> (not res!666423) (not e!562099))))

(assert (=> b!996145 (= res!666423 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30832 a!3219)))))

(declare-fun b!996146 () Bool)

(assert (=> b!996146 (= e!562099 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!118933 (not res!666422)) b!996145))

(assert (= (and b!996145 res!666423) b!996146))

(assert (=> d!118933 m!923397))

(declare-fun m!923439 () Bool)

(assert (=> b!996146 m!923439))

(assert (=> b!995992 d!118933))

(check-sat (not b!996081) (not bm!42226) (not b!996146) (not bm!42232) (not b!996085) (not b!996082) (not b!996047) (not b!996127) (not b!996129) (not d!118899))
(check-sat)
