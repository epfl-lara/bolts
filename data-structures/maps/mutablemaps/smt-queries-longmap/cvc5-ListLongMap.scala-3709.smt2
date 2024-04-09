; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51008 () Bool)

(assert start!51008)

(declare-fun res!349417 () Bool)

(declare-fun e!321018 () Bool)

(assert (=> start!51008 (=> (not res!349417) (not e!321018))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51008 (= res!349417 (validMask!0 mask!3119))))

(assert (=> start!51008 e!321018))

(assert (=> start!51008 true))

(declare-datatypes ((array!35073 0))(
  ( (array!35074 (arr!16839 (Array (_ BitVec 32) (_ BitVec 64))) (size!17203 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35073)

(declare-fun array_inv!12613 (array!35073) Bool)

(assert (=> start!51008 (array_inv!12613 a!3118)))

(declare-fun b!557216 () Bool)

(declare-fun res!349421 () Bool)

(assert (=> b!557216 (=> (not res!349421) (not e!321018))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557216 (= res!349421 (validKeyInArray!0 k!1914))))

(declare-fun b!557217 () Bool)

(declare-fun res!349415 () Bool)

(assert (=> b!557217 (=> (not res!349415) (not e!321018))))

(declare-fun arrayContainsKey!0 (array!35073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557217 (= res!349415 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5295 0))(
  ( (MissingZero!5295 (index!23407 (_ BitVec 32))) (Found!5295 (index!23408 (_ BitVec 32))) (Intermediate!5295 (undefined!6107 Bool) (index!23409 (_ BitVec 32)) (x!52336 (_ BitVec 32))) (Undefined!5295) (MissingVacant!5295 (index!23410 (_ BitVec 32))) )
))
(declare-fun lt!253247 () SeekEntryResult!5295)

(declare-fun e!321017 () Bool)

(declare-fun b!557218 () Bool)

(assert (=> b!557218 (= e!321017 (not (or (not (is-Intermediate!5295 lt!253247)) (undefined!6107 lt!253247) (= (select (arr!16839 a!3118) (index!23409 lt!253247)) (select (arr!16839 a!3118) j!142)) (= (select (arr!16839 a!3118) (index!23409 lt!253247)) #b0000000000000000000000000000000000000000000000000000000000000000) (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt (index!23409 lt!253247) #b00000000000000000000000000000000) (bvsge (index!23409 lt!253247) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52336 lt!253247) #b01111111111111111111111111111110) (bvslt (x!52336 lt!253247) #b00000000000000000000000000000000) (= (select (arr!16839 a!3118) (index!23409 lt!253247)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!321019 () Bool)

(assert (=> b!557218 e!321019))

(declare-fun res!349419 () Bool)

(assert (=> b!557218 (=> (not res!349419) (not e!321019))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35073 (_ BitVec 32)) Bool)

(assert (=> b!557218 (= res!349419 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17364 0))(
  ( (Unit!17365) )
))
(declare-fun lt!253248 () Unit!17364)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17364)

(assert (=> b!557218 (= lt!253248 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557219 () Bool)

(declare-fun e!321015 () Bool)

(assert (=> b!557219 (= e!321015 e!321017)))

(declare-fun res!349414 () Bool)

(assert (=> b!557219 (=> (not res!349414) (not e!321017))))

(declare-fun lt!253249 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35073 (_ BitVec 32)) SeekEntryResult!5295)

(assert (=> b!557219 (= res!349414 (= lt!253247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253249 (select (store (arr!16839 a!3118) i!1132 k!1914) j!142) (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118)) mask!3119)))))

(declare-fun lt!253250 () (_ BitVec 32))

(assert (=> b!557219 (= lt!253247 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253250 (select (arr!16839 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557219 (= lt!253249 (toIndex!0 (select (store (arr!16839 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!557219 (= lt!253250 (toIndex!0 (select (arr!16839 a!3118) j!142) mask!3119))))

(declare-fun b!557220 () Bool)

(assert (=> b!557220 (= e!321018 e!321015)))

(declare-fun res!349413 () Bool)

(assert (=> b!557220 (=> (not res!349413) (not e!321015))))

(declare-fun lt!253246 () SeekEntryResult!5295)

(assert (=> b!557220 (= res!349413 (or (= lt!253246 (MissingZero!5295 i!1132)) (= lt!253246 (MissingVacant!5295 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35073 (_ BitVec 32)) SeekEntryResult!5295)

(assert (=> b!557220 (= lt!253246 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557221 () Bool)

(declare-fun res!349420 () Bool)

(assert (=> b!557221 (=> (not res!349420) (not e!321015))))

(declare-datatypes ((List!10972 0))(
  ( (Nil!10969) (Cons!10968 (h!11959 (_ BitVec 64)) (t!17208 List!10972)) )
))
(declare-fun arrayNoDuplicates!0 (array!35073 (_ BitVec 32) List!10972) Bool)

(assert (=> b!557221 (= res!349420 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10969))))

(declare-fun b!557222 () Bool)

(assert (=> b!557222 (= e!321019 (= (seekEntryOrOpen!0 (select (arr!16839 a!3118) j!142) a!3118 mask!3119) (Found!5295 j!142)))))

(declare-fun b!557223 () Bool)

(declare-fun res!349418 () Bool)

(assert (=> b!557223 (=> (not res!349418) (not e!321018))))

(assert (=> b!557223 (= res!349418 (validKeyInArray!0 (select (arr!16839 a!3118) j!142)))))

(declare-fun b!557224 () Bool)

(declare-fun res!349416 () Bool)

(assert (=> b!557224 (=> (not res!349416) (not e!321018))))

(assert (=> b!557224 (= res!349416 (and (= (size!17203 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17203 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17203 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557225 () Bool)

(declare-fun res!349412 () Bool)

(assert (=> b!557225 (=> (not res!349412) (not e!321015))))

(assert (=> b!557225 (= res!349412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51008 res!349417) b!557224))

(assert (= (and b!557224 res!349416) b!557223))

(assert (= (and b!557223 res!349418) b!557216))

(assert (= (and b!557216 res!349421) b!557217))

(assert (= (and b!557217 res!349415) b!557220))

(assert (= (and b!557220 res!349413) b!557225))

(assert (= (and b!557225 res!349412) b!557221))

(assert (= (and b!557221 res!349420) b!557219))

(assert (= (and b!557219 res!349414) b!557218))

(assert (= (and b!557218 res!349419) b!557222))

(declare-fun m!535165 () Bool)

(assert (=> start!51008 m!535165))

(declare-fun m!535167 () Bool)

(assert (=> start!51008 m!535167))

(declare-fun m!535169 () Bool)

(assert (=> b!557217 m!535169))

(declare-fun m!535171 () Bool)

(assert (=> b!557223 m!535171))

(assert (=> b!557223 m!535171))

(declare-fun m!535173 () Bool)

(assert (=> b!557223 m!535173))

(assert (=> b!557219 m!535171))

(declare-fun m!535175 () Bool)

(assert (=> b!557219 m!535175))

(assert (=> b!557219 m!535171))

(declare-fun m!535177 () Bool)

(assert (=> b!557219 m!535177))

(assert (=> b!557219 m!535171))

(declare-fun m!535179 () Bool)

(assert (=> b!557219 m!535179))

(declare-fun m!535181 () Bool)

(assert (=> b!557219 m!535181))

(declare-fun m!535183 () Bool)

(assert (=> b!557219 m!535183))

(assert (=> b!557219 m!535181))

(assert (=> b!557219 m!535181))

(declare-fun m!535185 () Bool)

(assert (=> b!557219 m!535185))

(declare-fun m!535187 () Bool)

(assert (=> b!557225 m!535187))

(declare-fun m!535189 () Bool)

(assert (=> b!557220 m!535189))

(declare-fun m!535191 () Bool)

(assert (=> b!557216 m!535191))

(assert (=> b!557222 m!535171))

(assert (=> b!557222 m!535171))

(declare-fun m!535193 () Bool)

(assert (=> b!557222 m!535193))

(declare-fun m!535195 () Bool)

(assert (=> b!557218 m!535195))

(assert (=> b!557218 m!535171))

(declare-fun m!535197 () Bool)

(assert (=> b!557218 m!535197))

(declare-fun m!535199 () Bool)

(assert (=> b!557218 m!535199))

(declare-fun m!535201 () Bool)

(assert (=> b!557221 m!535201))

(push 1)

(assert (not b!557222))

(assert (not b!557219))

(assert (not b!557220))

(assert (not b!557223))

(assert (not b!557218))

(assert (not start!51008))

(assert (not b!557225))

(assert (not b!557217))

(assert (not b!557221))

(assert (not b!557216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!83363 () Bool)

(assert (=> d!83363 (= (validKeyInArray!0 (select (arr!16839 a!3118) j!142)) (and (not (= (select (arr!16839 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16839 a!3118) j!142) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!557223 d!83363))

(declare-fun b!557294 () Bool)

(declare-fun e!321058 () Bool)

(declare-fun e!321056 () Bool)

(assert (=> b!557294 (= e!321058 e!321056)))

(declare-fun lt!253288 () (_ BitVec 64))

(assert (=> b!557294 (= lt!253288 (select (arr!16839 a!3118) j!142))))

(declare-fun lt!253287 () Unit!17364)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!35073 (_ BitVec 64) (_ BitVec 32)) Unit!17364)

(assert (=> b!557294 (= lt!253287 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253288 j!142))))

(assert (=> b!557294 (arrayContainsKey!0 a!3118 lt!253288 #b00000000000000000000000000000000)))

(declare-fun lt!253289 () Unit!17364)

(assert (=> b!557294 (= lt!253289 lt!253287)))

(declare-fun res!349487 () Bool)

(assert (=> b!557294 (= res!349487 (= (seekEntryOrOpen!0 (select (arr!16839 a!3118) j!142) a!3118 mask!3119) (Found!5295 j!142)))))

(assert (=> b!557294 (=> (not res!349487) (not e!321056))))

(declare-fun bm!32369 () Bool)

(declare-fun call!32372 () Bool)

(assert (=> bm!32369 (= call!32372 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!142 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83365 () Bool)

(declare-fun res!349486 () Bool)

(declare-fun e!321057 () Bool)

(assert (=> d!83365 (=> res!349486 e!321057)))

(assert (=> d!83365 (= res!349486 (bvsge j!142 (size!17203 a!3118)))))

(assert (=> d!83365 (= (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119) e!321057)))

(declare-fun b!557295 () Bool)

(assert (=> b!557295 (= e!321056 call!32372)))

(declare-fun b!557296 () Bool)

(assert (=> b!557296 (= e!321057 e!321058)))

(declare-fun c!64244 () Bool)

(assert (=> b!557296 (= c!64244 (validKeyInArray!0 (select (arr!16839 a!3118) j!142)))))

(declare-fun b!557297 () Bool)

(assert (=> b!557297 (= e!321058 call!32372)))

(assert (= (and d!83365 (not res!349486)) b!557296))

(assert (= (and b!557296 c!64244) b!557294))

(assert (= (and b!557296 (not c!64244)) b!557297))

(assert (= (and b!557294 res!349487) b!557295))

(assert (= (or b!557295 b!557297) bm!32369))

(assert (=> b!557294 m!535171))

(declare-fun m!535279 () Bool)

(assert (=> b!557294 m!535279))

(declare-fun m!535281 () Bool)

(assert (=> b!557294 m!535281))

(assert (=> b!557294 m!535171))

(assert (=> b!557294 m!535193))

(declare-fun m!535283 () Bool)

(assert (=> bm!32369 m!535283))

(assert (=> b!557296 m!535171))

(assert (=> b!557296 m!535171))

(assert (=> b!557296 m!535173))

(assert (=> b!557218 d!83365))

(declare-fun d!83367 () Bool)

(assert (=> d!83367 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!253298 () Unit!17364)

(declare-fun choose!38 (array!35073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17364)

(assert (=> d!83367 (= lt!253298 (choose!38 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (=> d!83367 (validMask!0 mask!3119)))

(assert (=> d!83367 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142) lt!253298)))

(declare-fun bs!17352 () Bool)

(assert (= bs!17352 d!83367))

(assert (=> bs!17352 m!535197))

(declare-fun m!535285 () Bool)

(assert (=> bs!17352 m!535285))

(assert (=> bs!17352 m!535165))

(assert (=> b!557218 d!83367))

(declare-fun d!83369 () Bool)

(declare-fun res!349492 () Bool)

(declare-fun e!321069 () Bool)

(assert (=> d!83369 (=> res!349492 e!321069)))

(assert (=> d!83369 (= res!349492 (= (select (arr!16839 a!3118) #b00000000000000000000000000000000) k!1914))))

(assert (=> d!83369 (= (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000) e!321069)))

(declare-fun b!557314 () Bool)

(declare-fun e!321070 () Bool)

(assert (=> b!557314 (= e!321069 e!321070)))

(declare-fun res!349493 () Bool)

(assert (=> b!557314 (=> (not res!349493) (not e!321070))))

(assert (=> b!557314 (= res!349493 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!17203 a!3118)))))

(declare-fun b!557315 () Bool)

(assert (=> b!557315 (= e!321070 (arrayContainsKey!0 a!3118 k!1914 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!83369 (not res!349492)) b!557314))

(assert (= (and b!557314 res!349493) b!557315))

(declare-fun m!535287 () Bool)

(assert (=> d!83369 m!535287))

(declare-fun m!535289 () Bool)

(assert (=> b!557315 m!535289))

(assert (=> b!557217 d!83369))

(declare-fun d!83371 () Bool)

(declare-fun lt!253321 () SeekEntryResult!5295)

(assert (=> d!83371 (and (or (is-Undefined!5295 lt!253321) (not (is-Found!5295 lt!253321)) (and (bvsge (index!23408 lt!253321) #b00000000000000000000000000000000) (bvslt (index!23408 lt!253321) (size!17203 a!3118)))) (or (is-Undefined!5295 lt!253321) (is-Found!5295 lt!253321) (not (is-MissingZero!5295 lt!253321)) (and (bvsge (index!23407 lt!253321) #b00000000000000000000000000000000) (bvslt (index!23407 lt!253321) (size!17203 a!3118)))) (or (is-Undefined!5295 lt!253321) (is-Found!5295 lt!253321) (is-MissingZero!5295 lt!253321) (not (is-MissingVacant!5295 lt!253321)) (and (bvsge (index!23410 lt!253321) #b00000000000000000000000000000000) (bvslt (index!23410 lt!253321) (size!17203 a!3118)))) (or (is-Undefined!5295 lt!253321) (ite (is-Found!5295 lt!253321) (= (select (arr!16839 a!3118) (index!23408 lt!253321)) (select (arr!16839 a!3118) j!142)) (ite (is-MissingZero!5295 lt!253321) (= (select (arr!16839 a!3118) (index!23407 lt!253321)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5295 lt!253321) (= (select (arr!16839 a!3118) (index!23410 lt!253321)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!321100 () SeekEntryResult!5295)

(assert (=> d!83371 (= lt!253321 e!321100)))

(declare-fun c!64269 () Bool)

(declare-fun lt!253323 () SeekEntryResult!5295)

(assert (=> d!83371 (= c!64269 (and (is-Intermediate!5295 lt!253323) (undefined!6107 lt!253323)))))

(assert (=> d!83371 (= lt!253323 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16839 a!3118) j!142) mask!3119) (select (arr!16839 a!3118) j!142) a!3118 mask!3119))))

(assert (=> d!83371 (validMask!0 mask!3119)))

(assert (=> d!83371 (= (seekEntryOrOpen!0 (select (arr!16839 a!3118) j!142) a!3118 mask!3119) lt!253321)))

(declare-fun e!321099 () SeekEntryResult!5295)

(declare-fun b!557364 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35073 (_ BitVec 32)) SeekEntryResult!5295)

(assert (=> b!557364 (= e!321099 (seekKeyOrZeroReturnVacant!0 (x!52336 lt!253323) (index!23409 lt!253323) (index!23409 lt!253323) (select (arr!16839 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!557365 () Bool)

(declare-fun e!321101 () SeekEntryResult!5295)

(assert (=> b!557365 (= e!321101 (Found!5295 (index!23409 lt!253323)))))

(declare-fun b!557366 () Bool)

(assert (=> b!557366 (= e!321100 e!321101)))

(declare-fun lt!253322 () (_ BitVec 64))

(assert (=> b!557366 (= lt!253322 (select (arr!16839 a!3118) (index!23409 lt!253323)))))

(declare-fun c!64271 () Bool)

(assert (=> b!557366 (= c!64271 (= lt!253322 (select (arr!16839 a!3118) j!142)))))

(declare-fun b!557367 () Bool)

(declare-fun c!64270 () Bool)

(assert (=> b!557367 (= c!64270 (= lt!253322 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!557367 (= e!321101 e!321099)))

(declare-fun b!557368 () Bool)

(assert (=> b!557368 (= e!321099 (MissingZero!5295 (index!23409 lt!253323)))))

(declare-fun b!557369 () Bool)

(assert (=> b!557369 (= e!321100 Undefined!5295)))

(assert (= (and d!83371 c!64269) b!557369))

(assert (= (and d!83371 (not c!64269)) b!557366))

(assert (= (and b!557366 c!64271) b!557365))

(assert (= (and b!557366 (not c!64271)) b!557367))

(assert (= (and b!557367 c!64270) b!557368))

(assert (= (and b!557367 (not c!64270)) b!557364))

(assert (=> d!83371 m!535171))

(assert (=> d!83371 m!535175))

(declare-fun m!535311 () Bool)

(assert (=> d!83371 m!535311))

(assert (=> d!83371 m!535175))

(assert (=> d!83371 m!535171))

(declare-fun m!535313 () Bool)

(assert (=> d!83371 m!535313))

(declare-fun m!535315 () Bool)

(assert (=> d!83371 m!535315))

(declare-fun m!535317 () Bool)

(assert (=> d!83371 m!535317))

(assert (=> d!83371 m!535165))

(assert (=> b!557364 m!535171))

(declare-fun m!535319 () Bool)

(assert (=> b!557364 m!535319))

(declare-fun m!535321 () Bool)

(assert (=> b!557366 m!535321))

(assert (=> b!557222 d!83371))

(declare-fun b!557406 () Bool)

(declare-fun e!321129 () Bool)

(declare-fun call!32379 () Bool)

(assert (=> b!557406 (= e!321129 call!32379)))

(declare-fun d!83383 () Bool)

(declare-fun res!349525 () Bool)

(declare-fun e!321130 () Bool)

(assert (=> d!83383 (=> res!349525 e!321130)))

(assert (=> d!83383 (= res!349525 (bvsge #b00000000000000000000000000000000 (size!17203 a!3118)))))

(assert (=> d!83383 (= (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10969) e!321130)))

(declare-fun b!557407 () Bool)

(declare-fun e!321127 () Bool)

(assert (=> b!557407 (= e!321127 e!321129)))

(declare-fun c!64281 () Bool)

(assert (=> b!557407 (= c!64281 (validKeyInArray!0 (select (arr!16839 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!557408 () Bool)

(declare-fun e!321128 () Bool)

(declare-fun contains!2854 (List!10972 (_ BitVec 64)) Bool)

(assert (=> b!557408 (= e!321128 (contains!2854 Nil!10969 (select (arr!16839 a!3118) #b00000000000000000000000000000000)))))

(declare-fun bm!32376 () Bool)

(assert (=> bm!32376 (= call!32379 (arrayNoDuplicates!0 a!3118 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!64281 (Cons!10968 (select (arr!16839 a!3118) #b00000000000000000000000000000000) Nil!10969) Nil!10969)))))

(declare-fun b!557409 () Bool)

(assert (=> b!557409 (= e!321129 call!32379)))

(declare-fun b!557410 () Bool)

(assert (=> b!557410 (= e!321130 e!321127)))

(declare-fun res!349526 () Bool)

(assert (=> b!557410 (=> (not res!349526) (not e!321127))))

(assert (=> b!557410 (= res!349526 (not e!321128))))

(declare-fun res!349527 () Bool)

(assert (=> b!557410 (=> (not res!349527) (not e!321128))))

(assert (=> b!557410 (= res!349527 (validKeyInArray!0 (select (arr!16839 a!3118) #b00000000000000000000000000000000)))))

(assert (= (and d!83383 (not res!349525)) b!557410))

(assert (= (and b!557410 res!349527) b!557408))

(assert (= (and b!557410 res!349526) b!557407))

(assert (= (and b!557407 c!64281) b!557409))

(assert (= (and b!557407 (not c!64281)) b!557406))

(assert (= (or b!557409 b!557406) bm!32376))

(assert (=> b!557407 m!535287))

(assert (=> b!557407 m!535287))

(declare-fun m!535353 () Bool)

(assert (=> b!557407 m!535353))

(assert (=> b!557408 m!535287))

(assert (=> b!557408 m!535287))

(declare-fun m!535355 () Bool)

(assert (=> b!557408 m!535355))

(assert (=> bm!32376 m!535287))

(declare-fun m!535357 () Bool)

(assert (=> bm!32376 m!535357))

(assert (=> b!557410 m!535287))

(assert (=> b!557410 m!535287))

(assert (=> b!557410 m!535353))

(assert (=> b!557221 d!83383))

(declare-fun d!83393 () Bool)

(assert (=> d!83393 (= (validKeyInArray!0 k!1914) (and (not (= k!1914 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1914 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!557216 d!83393))

(declare-fun d!83395 () Bool)

(assert (=> d!83395 (= (validMask!0 mask!3119) (and (or (= mask!3119 #b00000000000000000000000000000111) (= mask!3119 #b00000000000000000000000000001111) (= mask!3119 #b00000000000000000000000000011111) (= mask!3119 #b00000000000000000000000000111111) (= mask!3119 #b00000000000000000000000001111111) (= mask!3119 #b00000000000000000000000011111111) (= mask!3119 #b00000000000000000000000111111111) (= mask!3119 #b00000000000000000000001111111111) (= mask!3119 #b00000000000000000000011111111111) (= mask!3119 #b00000000000000000000111111111111) (= mask!3119 #b00000000000000000001111111111111) (= mask!3119 #b00000000000000000011111111111111) (= mask!3119 #b00000000000000000111111111111111) (= mask!3119 #b00000000000000001111111111111111) (= mask!3119 #b00000000000000011111111111111111) (= mask!3119 #b00000000000000111111111111111111) (= mask!3119 #b00000000000001111111111111111111) (= mask!3119 #b00000000000011111111111111111111) (= mask!3119 #b00000000000111111111111111111111) (= mask!3119 #b00000000001111111111111111111111) (= mask!3119 #b00000000011111111111111111111111) (= mask!3119 #b00000000111111111111111111111111) (= mask!3119 #b00000001111111111111111111111111) (= mask!3119 #b00000011111111111111111111111111) (= mask!3119 #b00000111111111111111111111111111) (= mask!3119 #b00001111111111111111111111111111) (= mask!3119 #b00011111111111111111111111111111) (= mask!3119 #b00111111111111111111111111111111)) (bvsle mask!3119 #b00111111111111111111111111111111)))))

(assert (=> start!51008 d!83395))

(declare-fun d!83407 () Bool)

(assert (=> d!83407 (= (array_inv!12613 a!3118) (bvsge (size!17203 a!3118) #b00000000000000000000000000000000))))

(assert (=> start!51008 d!83407))

(declare-fun b!557442 () Bool)

(declare-fun e!321159 () Bool)

(declare-fun e!321157 () Bool)

(assert (=> b!557442 (= e!321159 e!321157)))

(declare-fun lt!253349 () (_ BitVec 64))

(assert (=> b!557442 (= lt!253349 (select (arr!16839 a!3118) #b00000000000000000000000000000000))))

(declare-fun lt!253348 () Unit!17364)

(assert (=> b!557442 (= lt!253348 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3118 lt!253349 #b00000000000000000000000000000000))))

(assert (=> b!557442 (arrayContainsKey!0 a!3118 lt!253349 #b00000000000000000000000000000000)))

(declare-fun lt!253350 () Unit!17364)

(assert (=> b!557442 (= lt!253350 lt!253348)))

(declare-fun res!349550 () Bool)

(assert (=> b!557442 (= res!349550 (= (seekEntryOrOpen!0 (select (arr!16839 a!3118) #b00000000000000000000000000000000) a!3118 mask!3119) (Found!5295 #b00000000000000000000000000000000)))))

(assert (=> b!557442 (=> (not res!349550) (not e!321157))))

(declare-fun bm!32380 () Bool)

(declare-fun call!32385 () Bool)

(assert (=> bm!32380 (= call!32385 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3118 mask!3119))))

(declare-fun d!83409 () Bool)

(declare-fun res!349549 () Bool)

(declare-fun e!321158 () Bool)

(assert (=> d!83409 (=> res!349549 e!321158)))

(assert (=> d!83409 (= res!349549 (bvsge #b00000000000000000000000000000000 (size!17203 a!3118)))))

(assert (=> d!83409 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119) e!321158)))

(declare-fun b!557443 () Bool)

(assert (=> b!557443 (= e!321157 call!32385)))

(declare-fun b!557444 () Bool)

(assert (=> b!557444 (= e!321158 e!321159)))

(declare-fun c!64287 () Bool)

(assert (=> b!557444 (= c!64287 (validKeyInArray!0 (select (arr!16839 a!3118) #b00000000000000000000000000000000)))))

(declare-fun b!557445 () Bool)

(assert (=> b!557445 (= e!321159 call!32385)))

(assert (= (and d!83409 (not res!349549)) b!557444))

(assert (= (and b!557444 c!64287) b!557442))

(assert (= (and b!557444 (not c!64287)) b!557445))

(assert (= (and b!557442 res!349550) b!557443))

(assert (= (or b!557443 b!557445) bm!32380))

(assert (=> b!557442 m!535287))

(declare-fun m!535369 () Bool)

(assert (=> b!557442 m!535369))

(declare-fun m!535371 () Bool)

(assert (=> b!557442 m!535371))

(assert (=> b!557442 m!535287))

(declare-fun m!535373 () Bool)

(assert (=> b!557442 m!535373))

(declare-fun m!535375 () Bool)

(assert (=> bm!32380 m!535375))

(assert (=> b!557444 m!535287))

(assert (=> b!557444 m!535287))

(assert (=> b!557444 m!535353))

(assert (=> b!557225 d!83409))

(declare-fun d!83411 () Bool)

(declare-fun lt!253351 () SeekEntryResult!5295)

(assert (=> d!83411 (and (or (is-Undefined!5295 lt!253351) (not (is-Found!5295 lt!253351)) (and (bvsge (index!23408 lt!253351) #b00000000000000000000000000000000) (bvslt (index!23408 lt!253351) (size!17203 a!3118)))) (or (is-Undefined!5295 lt!253351) (is-Found!5295 lt!253351) (not (is-MissingZero!5295 lt!253351)) (and (bvsge (index!23407 lt!253351) #b00000000000000000000000000000000) (bvslt (index!23407 lt!253351) (size!17203 a!3118)))) (or (is-Undefined!5295 lt!253351) (is-Found!5295 lt!253351) (is-MissingZero!5295 lt!253351) (not (is-MissingVacant!5295 lt!253351)) (and (bvsge (index!23410 lt!253351) #b00000000000000000000000000000000) (bvslt (index!23410 lt!253351) (size!17203 a!3118)))) (or (is-Undefined!5295 lt!253351) (ite (is-Found!5295 lt!253351) (= (select (arr!16839 a!3118) (index!23408 lt!253351)) k!1914) (ite (is-MissingZero!5295 lt!253351) (= (select (arr!16839 a!3118) (index!23407 lt!253351)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!5295 lt!253351) (= (select (arr!16839 a!3118) (index!23410 lt!253351)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!321161 () SeekEntryResult!5295)

(assert (=> d!83411 (= lt!253351 e!321161)))

(declare-fun c!64288 () Bool)

(declare-fun lt!253353 () SeekEntryResult!5295)

(assert (=> d!83411 (= c!64288 (and (is-Intermediate!5295 lt!253353) (undefined!6107 lt!253353)))))

(assert (=> d!83411 (= lt!253353 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1914 mask!3119) k!1914 a!3118 mask!3119))))

(assert (=> d!83411 (validMask!0 mask!3119)))

(assert (=> d!83411 (= (seekEntryOrOpen!0 k!1914 a!3118 mask!3119) lt!253351)))

(declare-fun e!321160 () SeekEntryResult!5295)

(declare-fun b!557446 () Bool)

(assert (=> b!557446 (= e!321160 (seekKeyOrZeroReturnVacant!0 (x!52336 lt!253353) (index!23409 lt!253353) (index!23409 lt!253353) k!1914 a!3118 mask!3119))))

(declare-fun b!557447 () Bool)

(declare-fun e!321162 () SeekEntryResult!5295)

(assert (=> b!557447 (= e!321162 (Found!5295 (index!23409 lt!253353)))))

(declare-fun b!557448 () Bool)

(assert (=> b!557448 (= e!321161 e!321162)))

(declare-fun lt!253352 () (_ BitVec 64))

(assert (=> b!557448 (= lt!253352 (select (arr!16839 a!3118) (index!23409 lt!253353)))))

(declare-fun c!64290 () Bool)

(assert (=> b!557448 (= c!64290 (= lt!253352 k!1914))))

(declare-fun b!557449 () Bool)

(declare-fun c!64289 () Bool)

(assert (=> b!557449 (= c!64289 (= lt!253352 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!557449 (= e!321162 e!321160)))

(declare-fun b!557450 () Bool)

(assert (=> b!557450 (= e!321160 (MissingZero!5295 (index!23409 lt!253353)))))

(declare-fun b!557451 () Bool)

(assert (=> b!557451 (= e!321161 Undefined!5295)))

(assert (= (and d!83411 c!64288) b!557451))

(assert (= (and d!83411 (not c!64288)) b!557448))

(assert (= (and b!557448 c!64290) b!557447))

(assert (= (and b!557448 (not c!64290)) b!557449))

(assert (= (and b!557449 c!64289) b!557450))

(assert (= (and b!557449 (not c!64289)) b!557446))

(declare-fun m!535377 () Bool)

(assert (=> d!83411 m!535377))

(declare-fun m!535379 () Bool)

(assert (=> d!83411 m!535379))

(assert (=> d!83411 m!535377))

(declare-fun m!535381 () Bool)

(assert (=> d!83411 m!535381))

(declare-fun m!535383 () Bool)

(assert (=> d!83411 m!535383))

(declare-fun m!535385 () Bool)

(assert (=> d!83411 m!535385))

(assert (=> d!83411 m!535165))

(declare-fun m!535387 () Bool)

(assert (=> b!557446 m!535387))

(declare-fun m!535389 () Bool)

(assert (=> b!557448 m!535389))

(assert (=> b!557220 d!83411))

(declare-fun b!557507 () Bool)

(declare-fun lt!253374 () SeekEntryResult!5295)

(assert (=> b!557507 (and (bvsge (index!23409 lt!253374) #b00000000000000000000000000000000) (bvslt (index!23409 lt!253374) (size!17203 (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118)))))))

(declare-fun res!349569 () Bool)

(assert (=> b!557507 (= res!349569 (= (select (arr!16839 (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118))) (index!23409 lt!253374)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321201 () Bool)

(assert (=> b!557507 (=> res!349569 e!321201)))

(declare-fun b!557508 () Bool)

(assert (=> b!557508 (and (bvsge (index!23409 lt!253374) #b00000000000000000000000000000000) (bvslt (index!23409 lt!253374) (size!17203 (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118)))))))

(declare-fun res!349570 () Bool)

(assert (=> b!557508 (= res!349570 (= (select (arr!16839 (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118))) (index!23409 lt!253374)) (select (store (arr!16839 a!3118) i!1132 k!1914) j!142)))))

(assert (=> b!557508 (=> res!349570 e!321201)))

(declare-fun e!321197 () Bool)

(assert (=> b!557508 (= e!321197 e!321201)))

(declare-fun b!557509 () Bool)

(declare-fun e!321198 () SeekEntryResult!5295)

(assert (=> b!557509 (= e!321198 (Intermediate!5295 true lt!253249 #b00000000000000000000000000000000))))

(declare-fun b!557510 () Bool)

(declare-fun e!321200 () SeekEntryResult!5295)

(assert (=> b!557510 (= e!321198 e!321200)))

(declare-fun c!64311 () Bool)

(declare-fun lt!253373 () (_ BitVec 64))

(assert (=> b!557510 (= c!64311 (or (= lt!253373 (select (store (arr!16839 a!3118) i!1132 k!1914) j!142)) (= (bvadd lt!253373 lt!253373) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!83413 () Bool)

(declare-fun e!321199 () Bool)

(assert (=> d!83413 e!321199))

(declare-fun c!64312 () Bool)

(assert (=> d!83413 (= c!64312 (and (is-Intermediate!5295 lt!253374) (undefined!6107 lt!253374)))))

(assert (=> d!83413 (= lt!253374 e!321198)))

(declare-fun c!64310 () Bool)

(assert (=> d!83413 (= c!64310 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83413 (= lt!253373 (select (arr!16839 (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118))) lt!253249))))

(assert (=> d!83413 (validMask!0 mask!3119)))

(assert (=> d!83413 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253249 (select (store (arr!16839 a!3118) i!1132 k!1914) j!142) (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118)) mask!3119) lt!253374)))

(declare-fun b!557511 () Bool)

(assert (=> b!557511 (= e!321199 (bvsge (x!52336 lt!253374) #b01111111111111111111111111111110))))

(declare-fun b!557512 () Bool)

(assert (=> b!557512 (= e!321200 (Intermediate!5295 false lt!253249 #b00000000000000000000000000000000))))

(declare-fun b!557513 () Bool)

(assert (=> b!557513 (and (bvsge (index!23409 lt!253374) #b00000000000000000000000000000000) (bvslt (index!23409 lt!253374) (size!17203 (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118)))))))

(assert (=> b!557513 (= e!321201 (= (select (arr!16839 (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118))) (index!23409 lt!253374)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!557514 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557514 (= e!321200 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253249 #b00000000000000000000000000000000 mask!3119) (select (store (arr!16839 a!3118) i!1132 k!1914) j!142) (array!35074 (store (arr!16839 a!3118) i!1132 k!1914) (size!17203 a!3118)) mask!3119))))

(declare-fun b!557515 () Bool)

(assert (=> b!557515 (= e!321199 e!321197)))

(declare-fun res!349568 () Bool)

(assert (=> b!557515 (= res!349568 (and (is-Intermediate!5295 lt!253374) (not (undefined!6107 lt!253374)) (bvslt (x!52336 lt!253374) #b01111111111111111111111111111110) (bvsge (x!52336 lt!253374) #b00000000000000000000000000000000) (bvsge (x!52336 lt!253374) #b00000000000000000000000000000000)))))

(assert (=> b!557515 (=> (not res!349568) (not e!321197))))

(assert (= (and d!83413 c!64310) b!557509))

(assert (= (and d!83413 (not c!64310)) b!557510))

(assert (= (and b!557510 c!64311) b!557512))

(assert (= (and b!557510 (not c!64311)) b!557514))

(assert (= (and d!83413 c!64312) b!557511))

(assert (= (and d!83413 (not c!64312)) b!557515))

(assert (= (and b!557515 res!349568) b!557508))

(assert (= (and b!557508 (not res!349570)) b!557507))

(assert (= (and b!557507 (not res!349569)) b!557513))

(declare-fun m!535417 () Bool)

(assert (=> b!557514 m!535417))

(assert (=> b!557514 m!535417))

(assert (=> b!557514 m!535181))

(declare-fun m!535419 () Bool)

(assert (=> b!557514 m!535419))

(declare-fun m!535421 () Bool)

(assert (=> b!557508 m!535421))

(assert (=> b!557513 m!535421))

(declare-fun m!535423 () Bool)

(assert (=> d!83413 m!535423))

(assert (=> d!83413 m!535165))

(assert (=> b!557507 m!535421))

(assert (=> b!557219 d!83413))

(declare-fun b!557516 () Bool)

(declare-fun lt!253376 () SeekEntryResult!5295)

(assert (=> b!557516 (and (bvsge (index!23409 lt!253376) #b00000000000000000000000000000000) (bvslt (index!23409 lt!253376) (size!17203 a!3118)))))

(declare-fun res!349572 () Bool)

(assert (=> b!557516 (= res!349572 (= (select (arr!16839 a!3118) (index!23409 lt!253376)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!321206 () Bool)

(assert (=> b!557516 (=> res!349572 e!321206)))

(declare-fun b!557517 () Bool)

(assert (=> b!557517 (and (bvsge (index!23409 lt!253376) #b00000000000000000000000000000000) (bvslt (index!23409 lt!253376) (size!17203 a!3118)))))

(declare-fun res!349573 () Bool)

(assert (=> b!557517 (= res!349573 (= (select (arr!16839 a!3118) (index!23409 lt!253376)) (select (arr!16839 a!3118) j!142)))))

(assert (=> b!557517 (=> res!349573 e!321206)))

(declare-fun e!321202 () Bool)

(assert (=> b!557517 (= e!321202 e!321206)))

(declare-fun b!557518 () Bool)

(declare-fun e!321203 () SeekEntryResult!5295)

(assert (=> b!557518 (= e!321203 (Intermediate!5295 true lt!253250 #b00000000000000000000000000000000))))

(declare-fun b!557519 () Bool)

(declare-fun e!321205 () SeekEntryResult!5295)

(assert (=> b!557519 (= e!321203 e!321205)))

(declare-fun c!64314 () Bool)

(declare-fun lt!253375 () (_ BitVec 64))

(assert (=> b!557519 (= c!64314 (or (= lt!253375 (select (arr!16839 a!3118) j!142)) (= (bvadd lt!253375 lt!253375) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!83425 () Bool)

(declare-fun e!321204 () Bool)

(assert (=> d!83425 e!321204))

(declare-fun c!64315 () Bool)

(assert (=> d!83425 (= c!64315 (and (is-Intermediate!5295 lt!253376) (undefined!6107 lt!253376)))))

(assert (=> d!83425 (= lt!253376 e!321203)))

(declare-fun c!64313 () Bool)

(assert (=> d!83425 (= c!64313 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!83425 (= lt!253375 (select (arr!16839 a!3118) lt!253250))))

(assert (=> d!83425 (validMask!0 mask!3119)))

(assert (=> d!83425 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253250 (select (arr!16839 a!3118) j!142) a!3118 mask!3119) lt!253376)))

(declare-fun b!557520 () Bool)

(assert (=> b!557520 (= e!321204 (bvsge (x!52336 lt!253376) #b01111111111111111111111111111110))))

(declare-fun b!557521 () Bool)

(assert (=> b!557521 (= e!321205 (Intermediate!5295 false lt!253250 #b00000000000000000000000000000000))))

(declare-fun b!557522 () Bool)

(assert (=> b!557522 (and (bvsge (index!23409 lt!253376) #b00000000000000000000000000000000) (bvslt (index!23409 lt!253376) (size!17203 a!3118)))))

(assert (=> b!557522 (= e!321206 (= (select (arr!16839 a!3118) (index!23409 lt!253376)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!557523 () Bool)

(assert (=> b!557523 (= e!321205 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!253250 #b00000000000000000000000000000000 mask!3119) (select (arr!16839 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!557524 () Bool)

(assert (=> b!557524 (= e!321204 e!321202)))

(declare-fun res!349571 () Bool)

(assert (=> b!557524 (= res!349571 (and (is-Intermediate!5295 lt!253376) (not (undefined!6107 lt!253376)) (bvslt (x!52336 lt!253376) #b01111111111111111111111111111110) (bvsge (x!52336 lt!253376) #b00000000000000000000000000000000) (bvsge (x!52336 lt!253376) #b00000000000000000000000000000000)))))

(assert (=> b!557524 (=> (not res!349571) (not e!321202))))

(assert (= (and d!83425 c!64313) b!557518))

(assert (= (and d!83425 (not c!64313)) b!557519))

(assert (= (and b!557519 c!64314) b!557521))

(assert (= (and b!557519 (not c!64314)) b!557523))

(assert (= (and d!83425 c!64315) b!557520))

(assert (= (and d!83425 (not c!64315)) b!557524))

(assert (= (and b!557524 res!349571) b!557517))

(assert (= (and b!557517 (not res!349573)) b!557516))

(assert (= (and b!557516 (not res!349572)) b!557522))

(declare-fun m!535425 () Bool)

(assert (=> b!557523 m!535425))

(assert (=> b!557523 m!535425))

(assert (=> b!557523 m!535171))

(declare-fun m!535427 () Bool)

(assert (=> b!557523 m!535427))

(declare-fun m!535429 () Bool)

(assert (=> b!557517 m!535429))

(assert (=> b!557522 m!535429))

(declare-fun m!535431 () Bool)

(assert (=> d!83425 m!535431))

(assert (=> d!83425 m!535165))

(assert (=> b!557516 m!535429))

(assert (=> b!557219 d!83425))

(declare-fun d!83429 () Bool)

(declare-fun lt!253391 () (_ BitVec 32))

(declare-fun lt!253390 () (_ BitVec 32))

(assert (=> d!83429 (= lt!253391 (bvmul (bvxor lt!253390 (bvlshr lt!253390 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83429 (= lt!253390 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16839 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16839 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83429 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349576 (let ((h!11963 ((_ extract 31 0) (bvand (bvxor (select (store (arr!16839 a!3118) i!1132 k!1914) j!142) (bvlshr (select (store (arr!16839 a!3118) i!1132 k!1914) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52342 (bvmul (bvxor h!11963 (bvlshr h!11963 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52342 (bvlshr x!52342 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349576 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349576 #b00000000000000000000000000000000))))))

(assert (=> d!83429 (= (toIndex!0 (select (store (arr!16839 a!3118) i!1132 k!1914) j!142) mask!3119) (bvand (bvxor lt!253391 (bvlshr lt!253391 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!557219 d!83429))

(declare-fun d!83443 () Bool)

(declare-fun lt!253393 () (_ BitVec 32))

(declare-fun lt!253392 () (_ BitVec 32))

(assert (=> d!83443 (= lt!253393 (bvmul (bvxor lt!253392 (bvlshr lt!253392 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!83443 (= lt!253392 ((_ extract 31 0) (bvand (bvxor (select (arr!16839 a!3118) j!142) (bvlshr (select (arr!16839 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!83443 (and (bvsge mask!3119 #b00000000000000000000000000000000) (let ((res!349576 (let ((h!11963 ((_ extract 31 0) (bvand (bvxor (select (arr!16839 a!3118) j!142) (bvlshr (select (arr!16839 a!3118) j!142) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!52342 (bvmul (bvxor h!11963 (bvlshr h!11963 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!52342 (bvlshr x!52342 #b00000000000000000000000000001101)) mask!3119))))) (and (bvslt res!349576 (bvadd mask!3119 #b00000000000000000000000000000001)) (bvsge res!349576 #b00000000000000000000000000000000))))))

(assert (=> d!83443 (= (toIndex!0 (select (arr!16839 a!3118) j!142) mask!3119) (bvand (bvxor lt!253393 (bvlshr lt!253393 #b00000000000000000000000000001101)) mask!3119))))

(assert (=> b!557219 d!83443))

(push 1)

(assert (not b!557408))

(assert (not b!557442))

(assert (not b!557514))

(assert (not d!83413))

(assert (not d!83371))

(assert (not b!557444))

(assert (not b!557407))

(assert (not bm!32380))

(assert (not d!83367))

(assert (not d!83411))

(assert (not b!557294))

(assert (not d!83425))

(assert (not b!557410))

(assert (not b!557523))

(assert (not bm!32369))

(assert (not b!557446))

(assert (not b!557315))

(assert (not bm!32376))

(assert (not b!557296))

(assert (not b!557364))

(check-sat)

