; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!86262 () Bool)

(assert start!86262)

(declare-fun b!998283 () Bool)

(declare-fun e!562985 () Bool)

(declare-fun e!562988 () Bool)

(assert (=> b!998283 (= e!562985 e!562988)))

(declare-fun res!668236 () Bool)

(assert (=> b!998283 (=> (not res!668236) (not e!562988))))

(declare-datatypes ((SeekEntryResult!9315 0))(
  ( (MissingZero!9315 (index!39630 (_ BitVec 32))) (Found!9315 (index!39631 (_ BitVec 32))) (Intermediate!9315 (undefined!10127 Bool) (index!39632 (_ BitVec 32)) (x!87092 (_ BitVec 32))) (Undefined!9315) (MissingVacant!9315 (index!39633 (_ BitVec 32))) )
))
(declare-fun lt!441645 () SeekEntryResult!9315)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998283 (= res!668236 (or (= lt!441645 (MissingVacant!9315 i!1194)) (= lt!441645 (MissingZero!9315 i!1194))))))

(declare-datatypes ((array!63117 0))(
  ( (array!63118 (arr!30383 (Array (_ BitVec 32) (_ BitVec 64))) (size!30886 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63117)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k0!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63117 (_ BitVec 32)) SeekEntryResult!9315)

(assert (=> b!998283 (= lt!441645 (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464))))

(declare-fun b!998284 () Bool)

(declare-fun res!668242 () Bool)

(assert (=> b!998284 (=> (not res!668242) (not e!562985))))

(declare-fun arrayContainsKey!0 (array!63117 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998284 (= res!668242 (not (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998285 () Bool)

(declare-fun res!668243 () Bool)

(assert (=> b!998285 (=> (not res!668243) (not e!562988))))

(declare-datatypes ((List!21185 0))(
  ( (Nil!21182) (Cons!21181 (h!22352 (_ BitVec 64)) (t!30194 List!21185)) )
))
(declare-fun arrayNoDuplicates!0 (array!63117 (_ BitVec 32) List!21185) Bool)

(assert (=> b!998285 (= res!668243 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21182))))

(declare-fun b!998286 () Bool)

(declare-fun res!668237 () Bool)

(assert (=> b!998286 (=> (not res!668237) (not e!562985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998286 (= res!668237 (validKeyInArray!0 k0!2224))))

(declare-fun b!998287 () Bool)

(declare-fun e!562987 () Bool)

(assert (=> b!998287 (= e!562987 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsgt mask!3464 #b00111111111111111111111111111111)))))

(declare-fun b!998288 () Bool)

(assert (=> b!998288 (= e!562988 e!562987)))

(declare-fun res!668245 () Bool)

(assert (=> b!998288 (=> (not res!668245) (not e!562987))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun lt!441644 () SeekEntryResult!9315)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63117 (_ BitVec 32)) SeekEntryResult!9315)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998288 (= res!668245 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30383 a!3219) j!170) mask!3464) (select (arr!30383 a!3219) j!170) a!3219 mask!3464) lt!441644))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998288 (= lt!441644 (Intermediate!9315 false resIndex!38 resX!38))))

(declare-fun b!998289 () Bool)

(declare-fun res!668240 () Bool)

(assert (=> b!998289 (=> (not res!668240) (not e!562988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63117 (_ BitVec 32)) Bool)

(assert (=> b!998289 (= res!668240 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun res!668244 () Bool)

(assert (=> start!86262 (=> (not res!668244) (not e!562985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86262 (= res!668244 (validMask!0 mask!3464))))

(assert (=> start!86262 e!562985))

(declare-fun array_inv!23373 (array!63117) Bool)

(assert (=> start!86262 (array_inv!23373 a!3219)))

(assert (=> start!86262 true))

(declare-fun b!998290 () Bool)

(declare-fun res!668239 () Bool)

(assert (=> b!998290 (=> (not res!668239) (not e!562985))))

(assert (=> b!998290 (= res!668239 (and (= (size!30886 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30886 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30886 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998291 () Bool)

(declare-fun res!668238 () Bool)

(assert (=> b!998291 (=> (not res!668238) (not e!562988))))

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(assert (=> b!998291 (= res!668238 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30886 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30886 a!3219))))))

(declare-fun b!998292 () Bool)

(declare-fun res!668235 () Bool)

(assert (=> b!998292 (=> (not res!668235) (not e!562987))))

(assert (=> b!998292 (= res!668235 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30383 a!3219) j!170) a!3219 mask!3464) lt!441644))))

(declare-fun b!998293 () Bool)

(declare-fun res!668241 () Bool)

(assert (=> b!998293 (=> (not res!668241) (not e!562985))))

(assert (=> b!998293 (= res!668241 (validKeyInArray!0 (select (arr!30383 a!3219) j!170)))))

(assert (= (and start!86262 res!668244) b!998290))

(assert (= (and b!998290 res!668239) b!998293))

(assert (= (and b!998293 res!668241) b!998286))

(assert (= (and b!998286 res!668237) b!998284))

(assert (= (and b!998284 res!668242) b!998283))

(assert (= (and b!998283 res!668236) b!998289))

(assert (= (and b!998289 res!668240) b!998285))

(assert (= (and b!998285 res!668243) b!998291))

(assert (= (and b!998291 res!668238) b!998288))

(assert (= (and b!998288 res!668245) b!998292))

(assert (= (and b!998292 res!668235) b!998287))

(declare-fun m!924933 () Bool)

(assert (=> b!998283 m!924933))

(declare-fun m!924935 () Bool)

(assert (=> b!998286 m!924935))

(declare-fun m!924937 () Bool)

(assert (=> b!998284 m!924937))

(declare-fun m!924939 () Bool)

(assert (=> start!86262 m!924939))

(declare-fun m!924941 () Bool)

(assert (=> start!86262 m!924941))

(declare-fun m!924943 () Bool)

(assert (=> b!998285 m!924943))

(declare-fun m!924945 () Bool)

(assert (=> b!998289 m!924945))

(declare-fun m!924947 () Bool)

(assert (=> b!998292 m!924947))

(assert (=> b!998292 m!924947))

(declare-fun m!924949 () Bool)

(assert (=> b!998292 m!924949))

(assert (=> b!998288 m!924947))

(assert (=> b!998288 m!924947))

(declare-fun m!924951 () Bool)

(assert (=> b!998288 m!924951))

(assert (=> b!998288 m!924951))

(assert (=> b!998288 m!924947))

(declare-fun m!924953 () Bool)

(assert (=> b!998288 m!924953))

(assert (=> b!998293 m!924947))

(assert (=> b!998293 m!924947))

(declare-fun m!924955 () Bool)

(assert (=> b!998293 m!924955))

(check-sat (not b!998292) (not b!998284) (not b!998293) (not b!998286) (not start!86262) (not b!998285) (not b!998289) (not b!998283) (not b!998288))
(check-sat)
(get-model)

(declare-fun d!119119 () Bool)

(assert (=> d!119119 (= (validKeyInArray!0 (select (arr!30383 a!3219) j!170)) (and (not (= (select (arr!30383 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30383 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998293 d!119119))

(declare-fun e!563024 () SeekEntryResult!9315)

(declare-fun b!998360 () Bool)

(assert (=> b!998360 (= e!563024 (Intermediate!9315 true (toIndex!0 (select (arr!30383 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun e!563023 () SeekEntryResult!9315)

(declare-fun b!998361 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998361 (= e!563023 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30383 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30383 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998362 () Bool)

(assert (=> b!998362 (= e!563023 (Intermediate!9315 false (toIndex!0 (select (arr!30383 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!998363 () Bool)

(declare-fun lt!441656 () SeekEntryResult!9315)

(assert (=> b!998363 (and (bvsge (index!39632 lt!441656) #b00000000000000000000000000000000) (bvslt (index!39632 lt!441656) (size!30886 a!3219)))))

(declare-fun e!563027 () Bool)

(assert (=> b!998363 (= e!563027 (= (select (arr!30383 a!3219) (index!39632 lt!441656)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!998364 () Bool)

(assert (=> b!998364 (= e!563024 e!563023)))

(declare-fun lt!441657 () (_ BitVec 64))

(declare-fun c!101179 () Bool)

(assert (=> b!998364 (= c!101179 (or (= lt!441657 (select (arr!30383 a!3219) j!170)) (= (bvadd lt!441657 lt!441657) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119121 () Bool)

(declare-fun e!563025 () Bool)

(assert (=> d!119121 e!563025))

(declare-fun c!101180 () Bool)

(get-info :version)

(assert (=> d!119121 (= c!101180 (and ((_ is Intermediate!9315) lt!441656) (undefined!10127 lt!441656)))))

(assert (=> d!119121 (= lt!441656 e!563024)))

(declare-fun c!101181 () Bool)

(assert (=> d!119121 (= c!101181 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119121 (= lt!441657 (select (arr!30383 a!3219) (toIndex!0 (select (arr!30383 a!3219) j!170) mask!3464)))))

(assert (=> d!119121 (validMask!0 mask!3464)))

(assert (=> d!119121 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30383 a!3219) j!170) mask!3464) (select (arr!30383 a!3219) j!170) a!3219 mask!3464) lt!441656)))

(declare-fun b!998365 () Bool)

(declare-fun e!563026 () Bool)

(assert (=> b!998365 (= e!563025 e!563026)))

(declare-fun res!668295 () Bool)

(assert (=> b!998365 (= res!668295 (and ((_ is Intermediate!9315) lt!441656) (not (undefined!10127 lt!441656)) (bvslt (x!87092 lt!441656) #b01111111111111111111111111111110) (bvsge (x!87092 lt!441656) #b00000000000000000000000000000000) (bvsge (x!87092 lt!441656) #b00000000000000000000000000000000)))))

(assert (=> b!998365 (=> (not res!668295) (not e!563026))))

(declare-fun b!998366 () Bool)

(assert (=> b!998366 (and (bvsge (index!39632 lt!441656) #b00000000000000000000000000000000) (bvslt (index!39632 lt!441656) (size!30886 a!3219)))))

(declare-fun res!668294 () Bool)

(assert (=> b!998366 (= res!668294 (= (select (arr!30383 a!3219) (index!39632 lt!441656)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!998366 (=> res!668294 e!563027)))

(declare-fun b!998367 () Bool)

(assert (=> b!998367 (= e!563025 (bvsge (x!87092 lt!441656) #b01111111111111111111111111111110))))

(declare-fun b!998368 () Bool)

(assert (=> b!998368 (and (bvsge (index!39632 lt!441656) #b00000000000000000000000000000000) (bvslt (index!39632 lt!441656) (size!30886 a!3219)))))

(declare-fun res!668296 () Bool)

(assert (=> b!998368 (= res!668296 (= (select (arr!30383 a!3219) (index!39632 lt!441656)) (select (arr!30383 a!3219) j!170)))))

(assert (=> b!998368 (=> res!668296 e!563027)))

(assert (=> b!998368 (= e!563026 e!563027)))

(assert (= (and d!119121 c!101181) b!998360))

(assert (= (and d!119121 (not c!101181)) b!998364))

(assert (= (and b!998364 c!101179) b!998362))

(assert (= (and b!998364 (not c!101179)) b!998361))

(assert (= (and d!119121 c!101180) b!998367))

(assert (= (and d!119121 (not c!101180)) b!998365))

(assert (= (and b!998365 res!668295) b!998368))

(assert (= (and b!998368 (not res!668296)) b!998366))

(assert (= (and b!998366 (not res!668294)) b!998363))

(assert (=> b!998361 m!924951))

(declare-fun m!924989 () Bool)

(assert (=> b!998361 m!924989))

(assert (=> b!998361 m!924989))

(assert (=> b!998361 m!924947))

(declare-fun m!924991 () Bool)

(assert (=> b!998361 m!924991))

(declare-fun m!924993 () Bool)

(assert (=> b!998368 m!924993))

(assert (=> d!119121 m!924951))

(declare-fun m!924995 () Bool)

(assert (=> d!119121 m!924995))

(assert (=> d!119121 m!924939))

(assert (=> b!998366 m!924993))

(assert (=> b!998363 m!924993))

(assert (=> b!998288 d!119121))

(declare-fun d!119131 () Bool)

(declare-fun lt!441667 () (_ BitVec 32))

(declare-fun lt!441666 () (_ BitVec 32))

(assert (=> d!119131 (= lt!441667 (bvmul (bvxor lt!441666 (bvlshr lt!441666 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!119131 (= lt!441666 ((_ extract 31 0) (bvand (bvxor (select (arr!30383 a!3219) j!170) (bvlshr (select (arr!30383 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!119131 (and (bvsge mask!3464 #b00000000000000000000000000000000) (let ((res!668297 (let ((h!22354 ((_ extract 31 0) (bvand (bvxor (select (arr!30383 a!3219) j!170) (bvlshr (select (arr!30383 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!87095 (bvmul (bvxor h!22354 (bvlshr h!22354 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!87095 (bvlshr x!87095 #b00000000000000000000000000001101)) mask!3464))))) (and (bvslt res!668297 (bvadd mask!3464 #b00000000000000000000000000000001)) (bvsge res!668297 #b00000000000000000000000000000000))))))

(assert (=> d!119131 (= (toIndex!0 (select (arr!30383 a!3219) j!170) mask!3464) (bvand (bvxor lt!441667 (bvlshr lt!441667 #b00000000000000000000000000001101)) mask!3464))))

(assert (=> b!998288 d!119131))

(declare-fun b!998440 () Bool)

(declare-fun e!563070 () SeekEntryResult!9315)

(declare-fun lt!441698 () SeekEntryResult!9315)

(assert (=> b!998440 (= e!563070 (Found!9315 (index!39632 lt!441698)))))

(declare-fun b!998441 () Bool)

(declare-fun e!563071 () SeekEntryResult!9315)

(assert (=> b!998441 (= e!563071 (MissingZero!9315 (index!39632 lt!441698)))))

(declare-fun d!119133 () Bool)

(declare-fun lt!441697 () SeekEntryResult!9315)

(assert (=> d!119133 (and (or ((_ is Undefined!9315) lt!441697) (not ((_ is Found!9315) lt!441697)) (and (bvsge (index!39631 lt!441697) #b00000000000000000000000000000000) (bvslt (index!39631 lt!441697) (size!30886 a!3219)))) (or ((_ is Undefined!9315) lt!441697) ((_ is Found!9315) lt!441697) (not ((_ is MissingZero!9315) lt!441697)) (and (bvsge (index!39630 lt!441697) #b00000000000000000000000000000000) (bvslt (index!39630 lt!441697) (size!30886 a!3219)))) (or ((_ is Undefined!9315) lt!441697) ((_ is Found!9315) lt!441697) ((_ is MissingZero!9315) lt!441697) (not ((_ is MissingVacant!9315) lt!441697)) (and (bvsge (index!39633 lt!441697) #b00000000000000000000000000000000) (bvslt (index!39633 lt!441697) (size!30886 a!3219)))) (or ((_ is Undefined!9315) lt!441697) (ite ((_ is Found!9315) lt!441697) (= (select (arr!30383 a!3219) (index!39631 lt!441697)) k0!2224) (ite ((_ is MissingZero!9315) lt!441697) (= (select (arr!30383 a!3219) (index!39630 lt!441697)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9315) lt!441697) (= (select (arr!30383 a!3219) (index!39633 lt!441697)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!563072 () SeekEntryResult!9315)

(assert (=> d!119133 (= lt!441697 e!563072)))

(declare-fun c!101208 () Bool)

(assert (=> d!119133 (= c!101208 (and ((_ is Intermediate!9315) lt!441698) (undefined!10127 lt!441698)))))

(assert (=> d!119133 (= lt!441698 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2224 mask!3464) k0!2224 a!3219 mask!3464))))

(assert (=> d!119133 (validMask!0 mask!3464)))

(assert (=> d!119133 (= (seekEntryOrOpen!0 k0!2224 a!3219 mask!3464) lt!441697)))

(declare-fun b!998442 () Bool)

(assert (=> b!998442 (= e!563072 Undefined!9315)))

(declare-fun b!998443 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63117 (_ BitVec 32)) SeekEntryResult!9315)

(assert (=> b!998443 (= e!563071 (seekKeyOrZeroReturnVacant!0 (x!87092 lt!441698) (index!39632 lt!441698) (index!39632 lt!441698) k0!2224 a!3219 mask!3464))))

(declare-fun b!998444 () Bool)

(declare-fun c!101210 () Bool)

(declare-fun lt!441699 () (_ BitVec 64))

(assert (=> b!998444 (= c!101210 (= lt!441699 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!998444 (= e!563070 e!563071)))

(declare-fun b!998445 () Bool)

(assert (=> b!998445 (= e!563072 e!563070)))

(assert (=> b!998445 (= lt!441699 (select (arr!30383 a!3219) (index!39632 lt!441698)))))

(declare-fun c!101209 () Bool)

(assert (=> b!998445 (= c!101209 (= lt!441699 k0!2224))))

(assert (= (and d!119133 c!101208) b!998442))

(assert (= (and d!119133 (not c!101208)) b!998445))

(assert (= (and b!998445 c!101209) b!998440))

(assert (= (and b!998445 (not c!101209)) b!998444))

(assert (= (and b!998444 c!101210) b!998441))

(assert (= (and b!998444 (not c!101210)) b!998443))

(declare-fun m!925021 () Bool)

(assert (=> d!119133 m!925021))

(declare-fun m!925023 () Bool)

(assert (=> d!119133 m!925023))

(declare-fun m!925025 () Bool)

(assert (=> d!119133 m!925025))

(assert (=> d!119133 m!924939))

(declare-fun m!925027 () Bool)

(assert (=> d!119133 m!925027))

(declare-fun m!925029 () Bool)

(assert (=> d!119133 m!925029))

(assert (=> d!119133 m!925027))

(declare-fun m!925031 () Bool)

(assert (=> b!998443 m!925031))

(declare-fun m!925033 () Bool)

(assert (=> b!998445 m!925033))

(assert (=> b!998283 d!119133))

(declare-fun bm!42285 () Bool)

(declare-fun call!42288 () Bool)

(assert (=> bm!42285 (= call!42288 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!998466 () Bool)

(declare-fun e!563090 () Bool)

(declare-fun e!563088 () Bool)

(assert (=> b!998466 (= e!563090 e!563088)))

(declare-fun c!101216 () Bool)

(assert (=> b!998466 (= c!101216 (validKeyInArray!0 (select (arr!30383 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!998467 () Bool)

(declare-fun e!563089 () Bool)

(assert (=> b!998467 (= e!563089 call!42288)))

(declare-fun b!998468 () Bool)

(assert (=> b!998468 (= e!563088 call!42288)))

(declare-fun d!119145 () Bool)

(declare-fun res!668329 () Bool)

(assert (=> d!119145 (=> res!668329 e!563090)))

(assert (=> d!119145 (= res!668329 (bvsge #b00000000000000000000000000000000 (size!30886 a!3219)))))

(assert (=> d!119145 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!563090)))

(declare-fun b!998469 () Bool)

(assert (=> b!998469 (= e!563088 e!563089)))

(declare-fun lt!441716 () (_ BitVec 64))

(assert (=> b!998469 (= lt!441716 (select (arr!30383 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32930 0))(
  ( (Unit!32931) )
))
(declare-fun lt!441717 () Unit!32930)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63117 (_ BitVec 64) (_ BitVec 32)) Unit!32930)

(assert (=> b!998469 (= lt!441717 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441716 #b00000000000000000000000000000000))))

(assert (=> b!998469 (arrayContainsKey!0 a!3219 lt!441716 #b00000000000000000000000000000000)))

(declare-fun lt!441715 () Unit!32930)

(assert (=> b!998469 (= lt!441715 lt!441717)))

(declare-fun res!668328 () Bool)

(assert (=> b!998469 (= res!668328 (= (seekEntryOrOpen!0 (select (arr!30383 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9315 #b00000000000000000000000000000000)))))

(assert (=> b!998469 (=> (not res!668328) (not e!563089))))

(assert (= (and d!119145 (not res!668329)) b!998466))

(assert (= (and b!998466 c!101216) b!998469))

(assert (= (and b!998466 (not c!101216)) b!998468))

(assert (= (and b!998469 res!668328) b!998467))

(assert (= (or b!998467 b!998468) bm!42285))

(declare-fun m!925043 () Bool)

(assert (=> bm!42285 m!925043))

(declare-fun m!925045 () Bool)

(assert (=> b!998466 m!925045))

(assert (=> b!998466 m!925045))

(declare-fun m!925047 () Bool)

(assert (=> b!998466 m!925047))

(assert (=> b!998469 m!925045))

(declare-fun m!925049 () Bool)

(assert (=> b!998469 m!925049))

(declare-fun m!925051 () Bool)

(assert (=> b!998469 m!925051))

(assert (=> b!998469 m!925045))

(declare-fun m!925053 () Bool)

(assert (=> b!998469 m!925053))

(assert (=> b!998289 d!119145))

(declare-fun d!119153 () Bool)

(assert (=> d!119153 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86262 d!119153))

(declare-fun d!119165 () Bool)

(assert (=> d!119165 (= (array_inv!23373 a!3219) (bvsge (size!30886 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86262 d!119165))

(declare-fun d!119167 () Bool)

(declare-fun res!668354 () Bool)

(declare-fun e!563121 () Bool)

(assert (=> d!119167 (=> res!668354 e!563121)))

(assert (=> d!119167 (= res!668354 (= (select (arr!30383 a!3219) #b00000000000000000000000000000000) k0!2224))))

(assert (=> d!119167 (= (arrayContainsKey!0 a!3219 k0!2224 #b00000000000000000000000000000000) e!563121)))

(declare-fun b!998508 () Bool)

(declare-fun e!563122 () Bool)

(assert (=> b!998508 (= e!563121 e!563122)))

(declare-fun res!668355 () Bool)

(assert (=> b!998508 (=> (not res!668355) (not e!563122))))

(assert (=> b!998508 (= res!668355 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30886 a!3219)))))

(declare-fun b!998509 () Bool)

(assert (=> b!998509 (= e!563122 (arrayContainsKey!0 a!3219 k0!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119167 (not res!668354)) b!998508))

(assert (= (and b!998508 res!668355) b!998509))

(assert (=> d!119167 m!925045))

(declare-fun m!925081 () Bool)

(assert (=> b!998509 m!925081))

(assert (=> b!998284 d!119167))

(declare-fun b!998532 () Bool)

(declare-fun e!563140 () Bool)

(declare-fun e!563137 () Bool)

(assert (=> b!998532 (= e!563140 e!563137)))

(declare-fun res!668364 () Bool)

(assert (=> b!998532 (=> (not res!668364) (not e!563137))))

(declare-fun e!563139 () Bool)

(assert (=> b!998532 (= res!668364 (not e!563139))))

(declare-fun res!668363 () Bool)

(assert (=> b!998532 (=> (not res!668363) (not e!563139))))

(assert (=> b!998532 (= res!668363 (validKeyInArray!0 (select (arr!30383 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!998533 () Bool)

(declare-fun e!563138 () Bool)

(declare-fun call!42295 () Bool)

(assert (=> b!998533 (= e!563138 call!42295)))

(declare-fun bm!42292 () Bool)

(declare-fun c!101232 () Bool)

(assert (=> bm!42292 (= call!42295 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101232 (Cons!21181 (select (arr!30383 a!3219) #b00000000000000000000000000000000) Nil!21182) Nil!21182)))))

(declare-fun b!998534 () Bool)

(assert (=> b!998534 (= e!563138 call!42295)))

(declare-fun b!998535 () Bool)

(declare-fun contains!5883 (List!21185 (_ BitVec 64)) Bool)

(assert (=> b!998535 (= e!563139 (contains!5883 Nil!21182 (select (arr!30383 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119171 () Bool)

(declare-fun res!668362 () Bool)

(assert (=> d!119171 (=> res!668362 e!563140)))

(assert (=> d!119171 (= res!668362 (bvsge #b00000000000000000000000000000000 (size!30886 a!3219)))))

(assert (=> d!119171 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21182) e!563140)))

(declare-fun b!998536 () Bool)

(assert (=> b!998536 (= e!563137 e!563138)))

(assert (=> b!998536 (= c!101232 (validKeyInArray!0 (select (arr!30383 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119171 (not res!668362)) b!998532))

(assert (= (and b!998532 res!668363) b!998535))

(assert (= (and b!998532 res!668364) b!998536))

(assert (= (and b!998536 c!101232) b!998533))

(assert (= (and b!998536 (not c!101232)) b!998534))

(assert (= (or b!998533 b!998534) bm!42292))

(assert (=> b!998532 m!925045))

(assert (=> b!998532 m!925045))

(assert (=> b!998532 m!925047))

(assert (=> bm!42292 m!925045))

(declare-fun m!925083 () Bool)

(assert (=> bm!42292 m!925083))

(assert (=> b!998535 m!925045))

(assert (=> b!998535 m!925045))

(declare-fun m!925085 () Bool)

(assert (=> b!998535 m!925085))

(assert (=> b!998536 m!925045))

(assert (=> b!998536 m!925045))

(assert (=> b!998536 m!925047))

(assert (=> b!998285 d!119171))

(declare-fun d!119173 () Bool)

(assert (=> d!119173 (= (validKeyInArray!0 k0!2224) (and (not (= k0!2224 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2224 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998286 d!119173))

(declare-fun b!998537 () Bool)

(declare-fun e!563142 () SeekEntryResult!9315)

(assert (=> b!998537 (= e!563142 (Intermediate!9315 true index!1507 x!1245))))

(declare-fun e!563141 () SeekEntryResult!9315)

(declare-fun b!998538 () Bool)

(assert (=> b!998538 (= e!563141 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1245 #b00000000000000000000000000000001) (nextIndex!0 index!1507 x!1245 mask!3464) (select (arr!30383 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998539 () Bool)

(assert (=> b!998539 (= e!563141 (Intermediate!9315 false index!1507 x!1245))))

(declare-fun b!998540 () Bool)

(declare-fun lt!441729 () SeekEntryResult!9315)

(assert (=> b!998540 (and (bvsge (index!39632 lt!441729) #b00000000000000000000000000000000) (bvslt (index!39632 lt!441729) (size!30886 a!3219)))))

(declare-fun e!563145 () Bool)

(assert (=> b!998540 (= e!563145 (= (select (arr!30383 a!3219) (index!39632 lt!441729)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!998541 () Bool)

(assert (=> b!998541 (= e!563142 e!563141)))

(declare-fun c!101233 () Bool)

(declare-fun lt!441730 () (_ BitVec 64))

(assert (=> b!998541 (= c!101233 (or (= lt!441730 (select (arr!30383 a!3219) j!170)) (= (bvadd lt!441730 lt!441730) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!119175 () Bool)

(declare-fun e!563143 () Bool)

(assert (=> d!119175 e!563143))

(declare-fun c!101234 () Bool)

(assert (=> d!119175 (= c!101234 (and ((_ is Intermediate!9315) lt!441729) (undefined!10127 lt!441729)))))

(assert (=> d!119175 (= lt!441729 e!563142)))

(declare-fun c!101235 () Bool)

(assert (=> d!119175 (= c!101235 (bvsge x!1245 #b01111111111111111111111111111110))))

(assert (=> d!119175 (= lt!441730 (select (arr!30383 a!3219) index!1507))))

(assert (=> d!119175 (validMask!0 mask!3464)))

(assert (=> d!119175 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30383 a!3219) j!170) a!3219 mask!3464) lt!441729)))

(declare-fun b!998542 () Bool)

(declare-fun e!563144 () Bool)

(assert (=> b!998542 (= e!563143 e!563144)))

(declare-fun res!668366 () Bool)

(assert (=> b!998542 (= res!668366 (and ((_ is Intermediate!9315) lt!441729) (not (undefined!10127 lt!441729)) (bvslt (x!87092 lt!441729) #b01111111111111111111111111111110) (bvsge (x!87092 lt!441729) #b00000000000000000000000000000000) (bvsge (x!87092 lt!441729) x!1245)))))

(assert (=> b!998542 (=> (not res!668366) (not e!563144))))

(declare-fun b!998543 () Bool)

(assert (=> b!998543 (and (bvsge (index!39632 lt!441729) #b00000000000000000000000000000000) (bvslt (index!39632 lt!441729) (size!30886 a!3219)))))

(declare-fun res!668365 () Bool)

(assert (=> b!998543 (= res!668365 (= (select (arr!30383 a!3219) (index!39632 lt!441729)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!998543 (=> res!668365 e!563145)))

(declare-fun b!998544 () Bool)

(assert (=> b!998544 (= e!563143 (bvsge (x!87092 lt!441729) #b01111111111111111111111111111110))))

(declare-fun b!998545 () Bool)

(assert (=> b!998545 (and (bvsge (index!39632 lt!441729) #b00000000000000000000000000000000) (bvslt (index!39632 lt!441729) (size!30886 a!3219)))))

(declare-fun res!668367 () Bool)

(assert (=> b!998545 (= res!668367 (= (select (arr!30383 a!3219) (index!39632 lt!441729)) (select (arr!30383 a!3219) j!170)))))

(assert (=> b!998545 (=> res!668367 e!563145)))

(assert (=> b!998545 (= e!563144 e!563145)))

(assert (= (and d!119175 c!101235) b!998537))

(assert (= (and d!119175 (not c!101235)) b!998541))

(assert (= (and b!998541 c!101233) b!998539))

(assert (= (and b!998541 (not c!101233)) b!998538))

(assert (= (and d!119175 c!101234) b!998544))

(assert (= (and d!119175 (not c!101234)) b!998542))

(assert (= (and b!998542 res!668366) b!998545))

(assert (= (and b!998545 (not res!668367)) b!998543))

(assert (= (and b!998543 (not res!668365)) b!998540))

(declare-fun m!925087 () Bool)

(assert (=> b!998538 m!925087))

(assert (=> b!998538 m!925087))

(assert (=> b!998538 m!924947))

(declare-fun m!925089 () Bool)

(assert (=> b!998538 m!925089))

(declare-fun m!925091 () Bool)

(assert (=> b!998545 m!925091))

(declare-fun m!925093 () Bool)

(assert (=> d!119175 m!925093))

(assert (=> d!119175 m!924939))

(assert (=> b!998543 m!925091))

(assert (=> b!998540 m!925091))

(assert (=> b!998292 d!119175))

(check-sat (not bm!42285) (not d!119121) (not bm!42292) (not b!998535) (not b!998532) (not d!119133) (not b!998536) (not b!998469) (not b!998443) (not d!119175) (not b!998466) (not b!998361) (not b!998538) (not b!998509))
(check-sat)
