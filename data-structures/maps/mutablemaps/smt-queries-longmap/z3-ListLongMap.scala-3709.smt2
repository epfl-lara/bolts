; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51010 () Bool)

(assert start!51010)

(declare-fun b!557246 () Bool)

(declare-fun res!349445 () Bool)

(declare-fun e!321034 () Bool)

(assert (=> b!557246 (=> (not res!349445) (not e!321034))))

(declare-datatypes ((array!35075 0))(
  ( (array!35076 (arr!16840 (Array (_ BitVec 32) (_ BitVec 64))) (size!17204 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35075)

(declare-datatypes ((List!10973 0))(
  ( (Nil!10970) (Cons!10969 (h!11960 (_ BitVec 64)) (t!17209 List!10973)) )
))
(declare-fun arrayNoDuplicates!0 (array!35075 (_ BitVec 32) List!10973) Bool)

(assert (=> b!557246 (= res!349445 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10970))))

(declare-fun b!557247 () Bool)

(declare-fun e!321033 () Bool)

(assert (=> b!557247 (= e!321034 e!321033)))

(declare-fun res!349450 () Bool)

(assert (=> b!557247 (=> (not res!349450) (not e!321033))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5296 0))(
  ( (MissingZero!5296 (index!23411 (_ BitVec 32))) (Found!5296 (index!23412 (_ BitVec 32))) (Intermediate!5296 (undefined!6108 Bool) (index!23413 (_ BitVec 32)) (x!52337 (_ BitVec 32))) (Undefined!5296) (MissingVacant!5296 (index!23414 (_ BitVec 32))) )
))
(declare-fun lt!253263 () SeekEntryResult!5296)

(declare-fun lt!253262 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35075 (_ BitVec 32)) SeekEntryResult!5296)

(assert (=> b!557247 (= res!349450 (= lt!253263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253262 (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142) (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118)) mask!3119)))))

(declare-fun lt!253264 () (_ BitVec 32))

(assert (=> b!557247 (= lt!253263 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253264 (select (arr!16840 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557247 (= lt!253262 (toIndex!0 (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!557247 (= lt!253264 (toIndex!0 (select (arr!16840 a!3118) j!142) mask!3119))))

(declare-fun b!557248 () Bool)

(declare-fun res!349446 () Bool)

(declare-fun e!321032 () Bool)

(assert (=> b!557248 (=> (not res!349446) (not e!321032))))

(assert (=> b!557248 (= res!349446 (and (= (size!17204 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17204 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17204 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!349447 () Bool)

(assert (=> start!51010 (=> (not res!349447) (not e!321032))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51010 (= res!349447 (validMask!0 mask!3119))))

(assert (=> start!51010 e!321032))

(assert (=> start!51010 true))

(declare-fun array_inv!12614 (array!35075) Bool)

(assert (=> start!51010 (array_inv!12614 a!3118)))

(declare-fun b!557249 () Bool)

(declare-fun res!349449 () Bool)

(assert (=> b!557249 (=> (not res!349449) (not e!321032))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557249 (= res!349449 (validKeyInArray!0 (select (arr!16840 a!3118) j!142)))))

(declare-fun b!557250 () Bool)

(declare-fun e!321030 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35075 (_ BitVec 32)) SeekEntryResult!5296)

(assert (=> b!557250 (= e!321030 (= (seekEntryOrOpen!0 (select (arr!16840 a!3118) j!142) a!3118 mask!3119) (Found!5296 j!142)))))

(declare-fun b!557251 () Bool)

(get-info :version)

(assert (=> b!557251 (= e!321033 (not (or (not ((_ is Intermediate!5296) lt!253263)) (undefined!6108 lt!253263) (= (select (arr!16840 a!3118) (index!23413 lt!253263)) (select (arr!16840 a!3118) j!142)) (= (select (arr!16840 a!3118) (index!23413 lt!253263)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23413 lt!253263) #b00000000000000000000000000000000) (bvsge (index!23413 lt!253263) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52337 lt!253263) #b01111111111111111111111111111110) (bvslt (x!52337 lt!253263) #b00000000000000000000000000000000) (= (select (arr!16840 a!3118) (index!23413 lt!253263)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!557251 e!321030))

(declare-fun res!349444 () Bool)

(assert (=> b!557251 (=> (not res!349444) (not e!321030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35075 (_ BitVec 32)) Bool)

(assert (=> b!557251 (= res!349444 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17366 0))(
  ( (Unit!17367) )
))
(declare-fun lt!253261 () Unit!17366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17366)

(assert (=> b!557251 (= lt!253261 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557252 () Bool)

(declare-fun res!349443 () Bool)

(assert (=> b!557252 (=> (not res!349443) (not e!321032))))

(declare-fun arrayContainsKey!0 (array!35075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557252 (= res!349443 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!557253 () Bool)

(declare-fun res!349442 () Bool)

(assert (=> b!557253 (=> (not res!349442) (not e!321032))))

(assert (=> b!557253 (= res!349442 (validKeyInArray!0 k0!1914))))

(declare-fun b!557254 () Bool)

(assert (=> b!557254 (= e!321032 e!321034)))

(declare-fun res!349451 () Bool)

(assert (=> b!557254 (=> (not res!349451) (not e!321034))))

(declare-fun lt!253265 () SeekEntryResult!5296)

(assert (=> b!557254 (= res!349451 (or (= lt!253265 (MissingZero!5296 i!1132)) (= lt!253265 (MissingVacant!5296 i!1132))))))

(assert (=> b!557254 (= lt!253265 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!557255 () Bool)

(declare-fun res!349448 () Bool)

(assert (=> b!557255 (=> (not res!349448) (not e!321034))))

(assert (=> b!557255 (= res!349448 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51010 res!349447) b!557248))

(assert (= (and b!557248 res!349446) b!557249))

(assert (= (and b!557249 res!349449) b!557253))

(assert (= (and b!557253 res!349442) b!557252))

(assert (= (and b!557252 res!349443) b!557254))

(assert (= (and b!557254 res!349451) b!557255))

(assert (= (and b!557255 res!349448) b!557246))

(assert (= (and b!557246 res!349445) b!557247))

(assert (= (and b!557247 res!349450) b!557251))

(assert (= (and b!557251 res!349444) b!557250))

(declare-fun m!535203 () Bool)

(assert (=> start!51010 m!535203))

(declare-fun m!535205 () Bool)

(assert (=> start!51010 m!535205))

(declare-fun m!535207 () Bool)

(assert (=> b!557250 m!535207))

(assert (=> b!557250 m!535207))

(declare-fun m!535209 () Bool)

(assert (=> b!557250 m!535209))

(assert (=> b!557249 m!535207))

(assert (=> b!557249 m!535207))

(declare-fun m!535211 () Bool)

(assert (=> b!557249 m!535211))

(declare-fun m!535213 () Bool)

(assert (=> b!557252 m!535213))

(declare-fun m!535215 () Bool)

(assert (=> b!557253 m!535215))

(declare-fun m!535217 () Bool)

(assert (=> b!557251 m!535217))

(assert (=> b!557251 m!535207))

(declare-fun m!535219 () Bool)

(assert (=> b!557251 m!535219))

(declare-fun m!535221 () Bool)

(assert (=> b!557251 m!535221))

(declare-fun m!535223 () Bool)

(assert (=> b!557254 m!535223))

(assert (=> b!557247 m!535207))

(declare-fun m!535225 () Bool)

(assert (=> b!557247 m!535225))

(assert (=> b!557247 m!535207))

(declare-fun m!535227 () Bool)

(assert (=> b!557247 m!535227))

(assert (=> b!557247 m!535227))

(declare-fun m!535229 () Bool)

(assert (=> b!557247 m!535229))

(declare-fun m!535231 () Bool)

(assert (=> b!557247 m!535231))

(assert (=> b!557247 m!535207))

(declare-fun m!535233 () Bool)

(assert (=> b!557247 m!535233))

(assert (=> b!557247 m!535227))

(declare-fun m!535235 () Bool)

(assert (=> b!557247 m!535235))

(declare-fun m!535237 () Bool)

(assert (=> b!557255 m!535237))

(declare-fun m!535239 () Bool)

(assert (=> b!557246 m!535239))

(check-sat (not b!557252) (not b!557255) (not b!557254) (not b!557250) (not b!557253) (not b!557247) (not b!557249) (not start!51010) (not b!557246) (not b!557251))
(check-sat)
(get-model)

(declare-fun b!557316 () Bool)

(declare-fun c!64251 () Bool)

(declare-fun lt!253299 () (_ BitVec 64))

(assert (=> b!557316 (= c!64251 (= lt!253299 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321072 () SeekEntryResult!5296)

(declare-fun e!321071 () SeekEntryResult!5296)

(assert (=> b!557316 (= e!321072 e!321071)))

(declare-fun d!83361 () Bool)

(declare-fun lt!253301 () SeekEntryResult!5296)

(assert (=> d!83361 (and (or ((_ is Undefined!5296) lt!253301) (not ((_ is Found!5296) lt!253301)) (and (bvsge (index!23412 lt!253301) #b00000000000000000000000000000000) (bvslt (index!23412 lt!253301) (size!17204 a!3118)))) (or ((_ is Undefined!5296) lt!253301) ((_ is Found!5296) lt!253301) (not ((_ is MissingZero!5296) lt!253301)) (and (bvsge (index!23411 lt!253301) #b00000000000000000000000000000000) (bvslt (index!23411 lt!253301) (size!17204 a!3118)))) (or ((_ is Undefined!5296) lt!253301) ((_ is Found!5296) lt!253301) ((_ is MissingZero!5296) lt!253301) (not ((_ is MissingVacant!5296) lt!253301)) (and (bvsge (index!23414 lt!253301) #b00000000000000000000000000000000) (bvslt (index!23414 lt!253301) (size!17204 a!3118)))) (or ((_ is Undefined!5296) lt!253301) (ite ((_ is Found!5296) lt!253301) (= (select (arr!16840 a!3118) (index!23412 lt!253301)) k0!1914) (ite ((_ is MissingZero!5296) lt!253301) (= (select (arr!16840 a!3118) (index!23411 lt!253301)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5296) lt!253301) (= (select (arr!16840 a!3118) (index!23414 lt!253301)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!321073 () SeekEntryResult!5296)

(assert (=> d!83361 (= lt!253301 e!321073)))

(declare-fun c!64252 () Bool)

(declare-fun lt!253300 () SeekEntryResult!5296)

(assert (=> d!83361 (= c!64252 (and ((_ is Intermediate!5296) lt!253300) (undefined!6108 lt!253300)))))

(assert (=> d!83361 (= lt!253300 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1914 mask!3119) k0!1914 a!3118 mask!3119))))

(assert (=> d!83361 (validMask!0 mask!3119)))

(assert (=> d!83361 (= (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119) lt!253301)))

(declare-fun b!557317 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35075 (_ BitVec 32)) SeekEntryResult!5296)

(assert (=> b!557317 (= e!321071 (seekKeyOrZeroReturnVacant!0 (x!52337 lt!253300) (index!23413 lt!253300) (index!23413 lt!253300) k0!1914 a!3118 mask!3119))))

(declare-fun b!557318 () Bool)

(assert (=> b!557318 (= e!321073 Undefined!5296)))

(declare-fun b!557319 () Bool)

(assert (=> b!557319 (= e!321071 (MissingZero!5296 (index!23413 lt!253300)))))

(declare-fun b!557320 () Bool)

(assert (=> b!557320 (= e!321073 e!321072)))

(assert (=> b!557320 (= lt!253299 (select (arr!16840 a!3118) (index!23413 lt!253300)))))

(declare-fun c!64253 () Bool)

(assert (=> b!557320 (= c!64253 (= lt!253299 k0!1914))))

(declare-fun b!557321 () Bool)

(assert (=> b!557321 (= e!321072 (Found!5296 (index!23413 lt!253300)))))

(assert (= (and d!83361 c!64252) b!557318))

(assert (= (and d!83361 (not c!64252)) b!557320))

(assert (= (and b!557320 c!64253) b!557321))

(assert (= (and b!557320 (not c!64253)) b!557316))

(assert (= (and b!557316 c!64251) b!557319))

(assert (= (and b!557316 (not c!64251)) b!557317))

(declare-fun m!535291 () Bool)

(assert (=> d!83361 m!535291))

(assert (=> d!83361 m!535203))

(declare-fun m!535293 () Bool)

(assert (=> d!83361 m!535293))

(declare-fun m!535295 () Bool)

(assert (=> d!83361 m!535295))

(declare-fun m!535297 () Bool)

(assert (=> d!83361 m!535297))

(assert (=> d!83361 m!535293))

(declare-fun m!535299 () Bool)

(assert (=> d!83361 m!535299))

(declare-fun m!535301 () Bool)

(assert (=> b!557317 m!535301))

(declare-fun m!535303 () Bool)

(assert (=> b!557320 m!535303))

(assert (=> b!557254 d!83361))

(declare-fun d!83373 () Bool)

(assert (=> d!83373 (= (validKeyInArray!0 k0!1914) (and (not (= k0!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!557253 d!83373))

(declare-fun b!557370 () Bool)

(declare-fun lt!253325 () SeekEntryResult!5296)

(assert (=> b!557370 (and (bvsge (index!23413 lt!253325) #b00000000000000000000000000000000) (bvslt (index!23413 lt!253325) (size!17204 (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118)))))))

(declare-fun res!349508 () Bool)

(assert (=> b!557370 (= res!349508 (= (select (arr!16840 (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118))) (index!23413 lt!253325)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321102 () Bool)

(assert (=> b!557370 (=> res!349508 e!321102)))

(declare-fun b!557371 () Bool)

(assert (=> b!557371 (and (bvsge (index!23413 lt!253325) #b00000000000000000000000000000000) (bvslt (index!23413 lt!253325) (size!17204 (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118)))))))

(assert (=> b!557371 (= e!321102 (= (select (arr!16840 (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118))) (index!23413 lt!253325)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!557372 () Bool)

(declare-fun e!321103 () SeekEntryResult!5296)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557372 (= e!321103 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253262 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142) (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118)) mask!3119))))

(declare-fun b!557373 () Bool)

(declare-fun e!321106 () SeekEntryResult!5296)

(assert (=> b!557373 (= e!321106 e!321103)))

(declare-fun lt!253324 () (_ BitVec 64))

(declare-fun c!64274 () Bool)

(assert (=> b!557373 (= c!64274 (or (= lt!253324 (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142)) (= (bvadd lt!253324 lt!253324) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!83375 () Bool)

(declare-fun e!321105 () Bool)

(assert (=> d!83375 e!321105))

(declare-fun c!64272 () Bool)

(assert (=> d!83375 (= c!64272 (and ((_ is Intermediate!5296) lt!253325) (undefined!6108 lt!253325)))))

(assert (=> d!83375 (= lt!253325 e!321106)))

(declare-fun c!64273 () Bool)

(assert (=> d!83375 (= c!64273 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83375 (= lt!253324 (select (arr!16840 (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118))) lt!253262))))

(assert (=> d!83375 (validMask!0 mask!3119)))

(assert (=> d!83375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253262 (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142) (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118)) mask!3119) lt!253325)))

(declare-fun b!557374 () Bool)

(assert (=> b!557374 (= e!321103 (Intermediate!5296 false lt!253262 #b00000000000000000000000000000000))))

(declare-fun b!557375 () Bool)

(assert (=> b!557375 (= e!321106 (Intermediate!5296 true lt!253262 #b00000000000000000000000000000000))))

(declare-fun b!557376 () Bool)

(assert (=> b!557376 (and (bvsge (index!23413 lt!253325) #b00000000000000000000000000000000) (bvslt (index!23413 lt!253325) (size!17204 (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118)))))))

(declare-fun res!349507 () Bool)

(assert (=> b!557376 (= res!349507 (= (select (arr!16840 (array!35076 (store (arr!16840 a!3118) i!1132 k0!1914) (size!17204 a!3118))) (index!23413 lt!253325)) (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142)))))

(assert (=> b!557376 (=> res!349507 e!321102)))

(declare-fun e!321104 () Bool)

(assert (=> b!557376 (= e!321104 e!321102)))

(declare-fun b!557377 () Bool)

(assert (=> b!557377 (= e!321105 (bvsge (x!52337 lt!253325) #b01111111111111111111111111111110))))

(declare-fun b!557378 () Bool)

(assert (=> b!557378 (= e!321105 e!321104)))

(declare-fun res!349506 () Bool)

(assert (=> b!557378 (= res!349506 (and ((_ is Intermediate!5296) lt!253325) (not (undefined!6108 lt!253325)) (bvslt (x!52337 lt!253325) #b01111111111111111111111111111110) (bvsge (x!52337 lt!253325) #b00000000000000000000000000000000) (bvsge (x!52337 lt!253325) #b00000000000000000000000000000000)))))

(assert (=> b!557378 (=> (not res!349506) (not e!321104))))

(assert (= (and d!83375 c!64273) b!557375))

(assert (= (and d!83375 (not c!64273)) b!557373))

(assert (= (and b!557373 c!64274) b!557374))

(assert (= (and b!557373 (not c!64274)) b!557372))

(assert (= (and d!83375 c!64272) b!557377))

(assert (= (and d!83375 (not c!64272)) b!557378))

(assert (= (and b!557378 res!349506) b!557376))

(assert (= (and b!557376 (not res!349507)) b!557370))

(assert (= (and b!557370 (not res!349508)) b!557371))

(declare-fun m!535323 () Bool)

(assert (=> b!557372 m!535323))

(assert (=> b!557372 m!535323))

(assert (=> b!557372 m!535227))

(declare-fun m!535325 () Bool)

(assert (=> b!557372 m!535325))

(declare-fun m!535327 () Bool)

(assert (=> b!557370 m!535327))

(declare-fun m!535329 () Bool)

(assert (=> d!83375 m!535329))

(assert (=> d!83375 m!535203))

(assert (=> b!557371 m!535327))

(assert (=> b!557376 m!535327))

(assert (=> b!557247 d!83375))

(declare-fun b!557379 () Bool)

(declare-fun lt!253327 () SeekEntryResult!5296)

(assert (=> b!557379 (and (bvsge (index!23413 lt!253327) #b00000000000000000000000000000000) (bvslt (index!23413 lt!253327) (size!17204 a!3118)))))

(declare-fun res!349511 () Bool)

(assert (=> b!557379 (= res!349511 (= (select (arr!16840 a!3118) (index!23413 lt!253327)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321107 () Bool)

(assert (=> b!557379 (=> res!349511 e!321107)))

(declare-fun b!557380 () Bool)

(assert (=> b!557380 (and (bvsge (index!23413 lt!253327) #b00000000000000000000000000000000) (bvslt (index!23413 lt!253327) (size!17204 a!3118)))))

(assert (=> b!557380 (= e!321107 (= (select (arr!16840 a!3118) (index!23413 lt!253327)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!557381 () Bool)

(declare-fun e!321108 () SeekEntryResult!5296)

(assert (=> b!557381 (= e!321108 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253264 #b00000000000000000000000000000000 mask!3119) (select (arr!16840 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!557382 () Bool)

(declare-fun e!321111 () SeekEntryResult!5296)

(assert (=> b!557382 (= e!321111 e!321108)))

(declare-fun c!64277 () Bool)

(declare-fun lt!253326 () (_ BitVec 64))

(assert (=> b!557382 (= c!64277 (or (= lt!253326 (select (arr!16840 a!3118) j!142)) (= (bvadd lt!253326 lt!253326) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!83385 () Bool)

(declare-fun e!321110 () Bool)

(assert (=> d!83385 e!321110))

(declare-fun c!64275 () Bool)

(assert (=> d!83385 (= c!64275 (and ((_ is Intermediate!5296) lt!253327) (undefined!6108 lt!253327)))))

(assert (=> d!83385 (= lt!253327 e!321111)))

(declare-fun c!64276 () Bool)

(assert (=> d!83385 (= c!64276 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83385 (= lt!253326 (select (arr!16840 a!3118) lt!253264))))

(assert (=> d!83385 (validMask!0 mask!3119)))

(assert (=> d!83385 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253264 (select (arr!16840 a!3118) j!142) a!3118 mask!3119) lt!253327)))

(declare-fun b!557383 () Bool)

(assert (=> b!557383 (= e!321108 (Intermediate!5296 false lt!253264 #b00000000000000000000000000000000))))

(declare-fun b!557384 () Bool)

(assert (=> b!557384 (= e!321111 (Intermediate!5296 true lt!253264 #b00000000000000000000000000000000))))

(declare-fun b!557385 () Bool)

(assert (=> b!557385 (and (bvsge (index!23413 lt!253327) #b00000000000000000000000000000000) (bvslt (index!23413 lt!253327) (size!17204 a!3118)))))

(declare-fun res!349510 () Bool)

(assert (=> b!557385 (= res!349510 (= (select (arr!16840 a!3118) (index!23413 lt!253327)) (select (arr!16840 a!3118) j!142)))))

(assert (=> b!557385 (=> res!349510 e!321107)))

(declare-fun e!321109 () Bool)

(assert (=> b!557385 (= e!321109 e!321107)))

(declare-fun b!557386 () Bool)

(assert (=> b!557386 (= e!321110 (bvsge (x!52337 lt!253327) #b01111111111111111111111111111110))))

(declare-fun b!557387 () Bool)

(assert (=> b!557387 (= e!321110 e!321109)))

(declare-fun res!349509 () Bool)

(assert (=> b!557387 (= res!349509 (and ((_ is Intermediate!5296) lt!253327) (not (undefined!6108 lt!253327)) (bvslt (x!52337 lt!253327) #b01111111111111111111111111111110) (bvsge (x!52337 lt!253327) #b00000000000000000000000000000000) (bvsge (x!52337 lt!253327) #b00000000000000000000000000000000)))))

(assert (=> b!557387 (=> (not res!349509) (not e!321109))))

(assert (= (and d!83385 c!64276) b!557384))

(assert (= (and d!83385 (not c!64276)) b!557382))

(assert (= (and b!557382 c!64277) b!557383))

(assert (= (and b!557382 (not c!64277)) b!557381))

(assert (= (and d!83385 c!64275) b!557386))

(assert (= (and d!83385 (not c!64275)) b!557387))

(assert (= (and b!557387 res!349509) b!557385))

(assert (= (and b!557385 (not res!349510)) b!557379))

(assert (= (and b!557379 (not res!349511)) b!557380))

(declare-fun m!535331 () Bool)

(assert (=> b!557381 m!535331))

(assert (=> b!557381 m!535331))

(assert (=> b!557381 m!535207))

(declare-fun m!535333 () Bool)

(assert (=> b!557381 m!535333))

(declare-fun m!535335 () Bool)

(assert (=> b!557379 m!535335))

(declare-fun m!535337 () Bool)

(assert (=> d!83385 m!535337))

(assert (=> d!83385 m!535203))

(assert (=> b!557380 m!535335))

(assert (=> b!557385 m!535335))

(assert (=> b!557247 d!83385))

(declare-fun d!83387 () Bool)

(declare-fun lt!253339 () (_ BitVec 32))

(declare-fun lt!253338 () (_ BitVec 32))

(assert (=> d!83387 (= lt!253339 (bvmul (bvxor lt!253338 (bvlshr lt!253338 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83387 (= lt!253338 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83387 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349520 (let ((h!11962 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142) (bvlshr (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52340 (bvmul (bvxor h!11962 (bvlshr h!11962 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52340 (bvlshr x!52340 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349520 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349520 #b00000000000000000000000000000000))))))

(assert (=> d!83387 (= (toIndex!0 (select (store (arr!16840 a!3118) i!1132 k0!1914) j!142) mask!3119) (bvand (bvxor lt!253339 (bvlshr lt!253339 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!557247 d!83387))

(declare-fun d!83399 () Bool)

(declare-fun lt!253341 () (_ BitVec 32))

(declare-fun lt!253340 () (_ BitVec 32))

(assert (=> d!83399 (= lt!253341 (bvmul (bvxor lt!253340 (bvlshr lt!253340 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83399 (= lt!253340 ((_ extract 31 0) (bvand (bvxor (select (arr!16840 a!3118) j!142) (bvlshr (select (arr!16840 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83399 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349520 (let ((h!11962 ((_ extract 31 0) (bvand (bvxor (select (arr!16840 a!3118) j!142) (bvlshr (select (arr!16840 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52340 (bvmul (bvxor h!11962 (bvlshr h!11962 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52340 (bvlshr x!52340 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349520 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349520 #b00000000000000000000000000000000))))))

(assert (=> d!83399 (= (toIndex!0 (select (arr!16840 a!3118) j!142) mask!3119) (bvand (bvxor lt!253341 (bvlshr lt!253341 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!557247 d!83399))

(declare-fun d!83401 () Bool)

(declare-fun res!349540 () Bool)

(declare-fun e!321145 () Bool)

(assert (=> d!83401 (=> res!349540 e!321145)))

(assert (=> d!83401 (= res!349540 (= (select (arr!16840 a!3118) #b00000000000000000000000000000000) k0!1914))))

(assert (=> d!83401 (= (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000) e!321145)))

(declare-fun b!557427 () Bool)

(declare-fun e!321146 () Bool)

(assert (=> b!557427 (= e!321145 e!321146)))

(declare-fun res!349541 () Bool)

(assert (=> b!557427 (=> (not res!349541) (not e!321146))))

(assert (=> b!557427 (= res!349541 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17204 a!3118)))))

(declare-fun b!557428 () Bool)

(assert (=> b!557428 (= e!321146 (arrayContainsKey!0 a!3118 k0!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83401 (not res!349540)) b!557427))

(assert (= (and b!557427 res!349541) b!557428))

(declare-fun m!535361 () Bool)

(assert (=> d!83401 m!535361))

(declare-fun m!535363 () Bool)

(assert (=> b!557428 m!535363))

(assert (=> b!557252 d!83401))

(declare-fun b!557452 () Bool)

(declare-fun e!321163 () Bool)

(declare-fun e!321165 () Bool)

(assert (=> b!557452 (= e!321163 e!321165)))

(declare-fun lt!253356 () (_ BitVec 64))

(assert (=> b!557452 (= lt!253356 (select (arr!16840 a!3118) j!142))))

(declare-fun lt!253355 () Unit!17366)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35075 (_ BitVec 64) (_ BitVec 32)) Unit!17366)

(assert (=> b!557452 (= lt!253355 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253356 j!142))))

(assert (=> b!557452 (arrayContainsKey!0 a!3118 lt!253356 #b00000000000000000000000000000000)))

(declare-fun lt!253354 () Unit!17366)

(assert (=> b!557452 (= lt!253354 lt!253355)))

(declare-fun res!349551 () Bool)

(assert (=> b!557452 (= res!349551 (= (seekEntryOrOpen!0 (select (arr!16840 a!3118) j!142) a!3118 mask!3119) (Found!5296 j!142)))))

(assert (=> b!557452 (=> (not res!349551) (not e!321165))))

(declare-fun call!32386 () Bool)

(declare-fun bm!32383 () Bool)

(assert (=> bm!32383 (= call!32386 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!557453 () Bool)

(assert (=> b!557453 (= e!321163 call!32386)))

(declare-fun b!557454 () Bool)

(declare-fun e!321164 () Bool)

(assert (=> b!557454 (= e!321164 e!321163)))

(declare-fun c!64291 () Bool)

(assert (=> b!557454 (= c!64291 (validKeyInArray!0 (select (arr!16840 a!3118) j!142)))))

(declare-fun d!83403 () Bool)

(declare-fun res!349552 () Bool)

(assert (=> d!83403 (=> res!349552 e!321164)))

(assert (=> d!83403 (= res!349552 (bvsge j!142 (size!17204 a!3118)))))

(assert (=> d!83403 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!321164)))

(declare-fun b!557455 () Bool)

(assert (=> b!557455 (= e!321165 call!32386)))

(assert (= (and d!83403 (not res!349552)) b!557454))

(assert (= (and b!557454 c!64291) b!557452))

(assert (= (and b!557454 (not c!64291)) b!557453))

(assert (= (and b!557452 res!349551) b!557455))

(assert (= (or b!557455 b!557453) bm!32383))

(assert (=> b!557452 m!535207))

(declare-fun m!535391 () Bool)

(assert (=> b!557452 m!535391))

(declare-fun m!535393 () Bool)

(assert (=> b!557452 m!535393))

(assert (=> b!557452 m!535207))

(assert (=> b!557452 m!535209))

(declare-fun m!535395 () Bool)

(assert (=> bm!32383 m!535395))

(assert (=> b!557454 m!535207))

(assert (=> b!557454 m!535207))

(assert (=> b!557454 m!535211))

(assert (=> b!557251 d!83403))

(declare-fun d!83415 () Bool)

(assert (=> d!83415 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!253359 () Unit!17366)

(declare-fun choose!38 (array!35075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17366)

(assert (=> d!83415 (= lt!253359 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83415 (validMask!0 mask!3119)))

(assert (=> d!83415 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!253359)))

(declare-fun bs!17354 () Bool)

(assert (= bs!17354 d!83415))

(assert (=> bs!17354 m!535219))

(declare-fun m!535397 () Bool)

(assert (=> bs!17354 m!535397))

(assert (=> bs!17354 m!535203))

(assert (=> b!557251 d!83415))

(declare-fun bm!32386 () Bool)

(declare-fun call!32389 () Bool)

(declare-fun c!64300 () Bool)

(assert (=> bm!32386 (= call!32389 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64300 (Cons!10969 (select (arr!16840 a!3118) #b00000000000000000000000000000000) Nil!10970) Nil!10970)))))

(declare-fun b!557478 () Bool)

(declare-fun e!321180 () Bool)

(declare-fun e!321182 () Bool)

(assert (=> b!557478 (= e!321180 e!321182)))

(assert (=> b!557478 (= c!64300 (validKeyInArray!0 (select (arr!16840 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!557479 () Bool)

(assert (=> b!557479 (= e!321182 call!32389)))

(declare-fun d!83417 () Bool)

(declare-fun res!349561 () Bool)

(declare-fun e!321181 () Bool)

(assert (=> d!83417 (=> res!349561 e!321181)))

(assert (=> d!83417 (= res!349561 (bvsge #b00000000000000000000000000000000 (size!17204 a!3118)))))

(assert (=> d!83417 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10970) e!321181)))

(declare-fun b!557480 () Bool)

(assert (=> b!557480 (= e!321182 call!32389)))

(declare-fun b!557481 () Bool)

(assert (=> b!557481 (= e!321181 e!321180)))

(declare-fun res!349560 () Bool)

(assert (=> b!557481 (=> (not res!349560) (not e!321180))))

(declare-fun e!321183 () Bool)

(assert (=> b!557481 (= res!349560 (not e!321183))))

(declare-fun res!349559 () Bool)

(assert (=> b!557481 (=> (not res!349559) (not e!321183))))

(assert (=> b!557481 (= res!349559 (validKeyInArray!0 (select (arr!16840 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!557482 () Bool)

(declare-fun contains!2855 (List!10973 (_ BitVec 64)) Bool)

(assert (=> b!557482 (= e!321183 (contains!2855 Nil!10970 (select (arr!16840 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83417 (not res!349561)) b!557481))

(assert (= (and b!557481 res!349559) b!557482))

(assert (= (and b!557481 res!349560) b!557478))

(assert (= (and b!557478 c!64300) b!557480))

(assert (= (and b!557478 (not c!64300)) b!557479))

(assert (= (or b!557480 b!557479) bm!32386))

(assert (=> bm!32386 m!535361))

(declare-fun m!535399 () Bool)

(assert (=> bm!32386 m!535399))

(assert (=> b!557478 m!535361))

(assert (=> b!557478 m!535361))

(declare-fun m!535401 () Bool)

(assert (=> b!557478 m!535401))

(assert (=> b!557481 m!535361))

(assert (=> b!557481 m!535361))

(assert (=> b!557481 m!535401))

(assert (=> b!557482 m!535361))

(assert (=> b!557482 m!535361))

(declare-fun m!535403 () Bool)

(assert (=> b!557482 m!535403))

(assert (=> b!557246 d!83417))

(declare-fun d!83419 () Bool)

(assert (=> d!83419 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51010 d!83419))

(declare-fun d!83427 () Bool)

(assert (=> d!83427 (= (array_inv!12614 a!3118) (bvsge (size!17204 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51010 d!83427))

(declare-fun b!557525 () Bool)

(declare-fun e!321207 () Bool)

(declare-fun e!321209 () Bool)

(assert (=> b!557525 (= e!321207 e!321209)))

(declare-fun lt!253379 () (_ BitVec 64))

(assert (=> b!557525 (= lt!253379 (select (arr!16840 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253378 () Unit!17366)

(assert (=> b!557525 (= lt!253378 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253379 #b00000000000000000000000000000000))))

(assert (=> b!557525 (arrayContainsKey!0 a!3118 lt!253379 #b00000000000000000000000000000000)))

(declare-fun lt!253377 () Unit!17366)

(assert (=> b!557525 (= lt!253377 lt!253378)))

(declare-fun res!349574 () Bool)

(assert (=> b!557525 (= res!349574 (= (seekEntryOrOpen!0 (select (arr!16840 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5296 #b00000000000000000000000000000000)))))

(assert (=> b!557525 (=> (not res!349574) (not e!321209))))

(declare-fun bm!32387 () Bool)

(declare-fun call!32390 () Bool)

(assert (=> bm!32387 (= call!32390 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun b!557526 () Bool)

(assert (=> b!557526 (= e!321207 call!32390)))

(declare-fun b!557527 () Bool)

(declare-fun e!321208 () Bool)

(assert (=> b!557527 (= e!321208 e!321207)))

(declare-fun c!64316 () Bool)

(assert (=> b!557527 (= c!64316 (validKeyInArray!0 (select (arr!16840 a!3118) #b00000000000000000000000000000000)))))

(declare-fun d!83431 () Bool)

(declare-fun res!349575 () Bool)

(assert (=> d!83431 (=> res!349575 e!321208)))

(assert (=> d!83431 (= res!349575 (bvsge #b00000000000000000000000000000000 (size!17204 a!3118)))))

(assert (=> d!83431 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!321208)))

(declare-fun b!557528 () Bool)

(assert (=> b!557528 (= e!321209 call!32390)))

(assert (= (and d!83431 (not res!349575)) b!557527))

(assert (= (and b!557527 c!64316) b!557525))

(assert (= (and b!557527 (not c!64316)) b!557526))

(assert (= (and b!557525 res!349574) b!557528))

(assert (= (or b!557528 b!557526) bm!32387))

(assert (=> b!557525 m!535361))

(declare-fun m!535433 () Bool)

(assert (=> b!557525 m!535433))

(declare-fun m!535435 () Bool)

(assert (=> b!557525 m!535435))

(assert (=> b!557525 m!535361))

(declare-fun m!535437 () Bool)

(assert (=> b!557525 m!535437))

(declare-fun m!535439 () Bool)

(assert (=> bm!32387 m!535439))

(assert (=> b!557527 m!535361))

(assert (=> b!557527 m!535361))

(assert (=> b!557527 m!535401))

(assert (=> b!557255 d!83431))

(declare-fun b!557529 () Bool)

(declare-fun c!64317 () Bool)

(declare-fun lt!253380 () (_ BitVec 64))

(assert (=> b!557529 (= c!64317 (= lt!253380 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321211 () SeekEntryResult!5296)

(declare-fun e!321210 () SeekEntryResult!5296)

(assert (=> b!557529 (= e!321211 e!321210)))

(declare-fun d!83433 () Bool)

(declare-fun lt!253382 () SeekEntryResult!5296)

(assert (=> d!83433 (and (or ((_ is Undefined!5296) lt!253382) (not ((_ is Found!5296) lt!253382)) (and (bvsge (index!23412 lt!253382) #b00000000000000000000000000000000) (bvslt (index!23412 lt!253382) (size!17204 a!3118)))) (or ((_ is Undefined!5296) lt!253382) ((_ is Found!5296) lt!253382) (not ((_ is MissingZero!5296) lt!253382)) (and (bvsge (index!23411 lt!253382) #b00000000000000000000000000000000) (bvslt (index!23411 lt!253382) (size!17204 a!3118)))) (or ((_ is Undefined!5296) lt!253382) ((_ is Found!5296) lt!253382) ((_ is MissingZero!5296) lt!253382) (not ((_ is MissingVacant!5296) lt!253382)) (and (bvsge (index!23414 lt!253382) #b00000000000000000000000000000000) (bvslt (index!23414 lt!253382) (size!17204 a!3118)))) (or ((_ is Undefined!5296) lt!253382) (ite ((_ is Found!5296) lt!253382) (= (select (arr!16840 a!3118) (index!23412 lt!253382)) (select (arr!16840 a!3118) j!142)) (ite ((_ is MissingZero!5296) lt!253382) (= (select (arr!16840 a!3118) (index!23411 lt!253382)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!5296) lt!253382) (= (select (arr!16840 a!3118) (index!23414 lt!253382)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!321212 () SeekEntryResult!5296)

(assert (=> d!83433 (= lt!253382 e!321212)))

(declare-fun c!64318 () Bool)

(declare-fun lt!253381 () SeekEntryResult!5296)

(assert (=> d!83433 (= c!64318 (and ((_ is Intermediate!5296) lt!253381) (undefined!6108 lt!253381)))))

(assert (=> d!83433 (= lt!253381 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16840 a!3118) j!142) mask!3119) (select (arr!16840 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83433 (validMask!0 mask!3119)))

(assert (=> d!83433 (= (seekEntryOrOpen!0 (select (arr!16840 a!3118) j!142) a!3118 mask!3119) lt!253382)))

(declare-fun b!557530 () Bool)

(assert (=> b!557530 (= e!321210 (seekKeyOrZeroReturnVacant!0 (x!52337 lt!253381) (index!23413 lt!253381) (index!23413 lt!253381) (select (arr!16840 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!557531 () Bool)

(assert (=> b!557531 (= e!321212 Undefined!5296)))

(declare-fun b!557532 () Bool)

(assert (=> b!557532 (= e!321210 (MissingZero!5296 (index!23413 lt!253381)))))

(declare-fun b!557533 () Bool)

(assert (=> b!557533 (= e!321212 e!321211)))

(assert (=> b!557533 (= lt!253380 (select (arr!16840 a!3118) (index!23413 lt!253381)))))

(declare-fun c!64319 () Bool)

(assert (=> b!557533 (= c!64319 (= lt!253380 (select (arr!16840 a!3118) j!142)))))

(declare-fun b!557534 () Bool)

(assert (=> b!557534 (= e!321211 (Found!5296 (index!23413 lt!253381)))))

(assert (= (and d!83433 c!64318) b!557531))

(assert (= (and d!83433 (not c!64318)) b!557533))

(assert (= (and b!557533 c!64319) b!557534))

(assert (= (and b!557533 (not c!64319)) b!557529))

(assert (= (and b!557529 c!64317) b!557532))

(assert (= (and b!557529 (not c!64317)) b!557530))

(declare-fun m!535441 () Bool)

(assert (=> d!83433 m!535441))

(assert (=> d!83433 m!535203))

(assert (=> d!83433 m!535225))

(assert (=> d!83433 m!535207))

(declare-fun m!535443 () Bool)

(assert (=> d!83433 m!535443))

(declare-fun m!535445 () Bool)

(assert (=> d!83433 m!535445))

(assert (=> d!83433 m!535207))

(assert (=> d!83433 m!535225))

(declare-fun m!535447 () Bool)

(assert (=> d!83433 m!535447))

(assert (=> b!557530 m!535207))

(declare-fun m!535449 () Bool)

(assert (=> b!557530 m!535449))

(declare-fun m!535451 () Bool)

(assert (=> b!557533 m!535451))

(assert (=> b!557250 d!83433))

(declare-fun d!83435 () Bool)

(assert (=> d!83435 (= (validKeyInArray!0 (select (arr!16840 a!3118) j!142)) (and (not (= (select (arr!16840 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16840 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!557249 d!83435))

(check-sat (not d!83361) (not b!557482) (not b!557481) (not d!83385) (not bm!32386) (not b!557525) (not b!557530) (not d!83433) (not bm!32387) (not bm!32383) (not b!557428) (not b!557527) (not b!557478) (not b!557454) (not d!83375) (not b!557372) (not b!557317) (not b!557381) (not b!557452) (not d!83415))
(check-sat)
