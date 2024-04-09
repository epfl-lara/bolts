; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!86264 () Bool)

(assert start!86264)

(declare-fun b!998316 () Bool)

(declare-fun e!562998 () Bool)

(declare-fun e!562997 () Bool)

(assert (=> b!998316 (= e!562998 e!562997)))

(declare-fun res!668272 () Bool)

(assert (=> b!998316 (=> (not res!668272) (not e!562997))))

(declare-datatypes ((SeekEntryResult!9316 0))(
  ( (MissingZero!9316 (index!39634 (_ BitVec 32))) (Found!9316 (index!39635 (_ BitVec 32))) (Intermediate!9316 (undefined!10128 Bool) (index!39636 (_ BitVec 32)) (x!87093 (_ BitVec 32))) (Undefined!9316) (MissingVacant!9316 (index!39637 (_ BitVec 32))) )
))
(declare-fun lt!441650 () SeekEntryResult!9316)

(declare-fun i!1194 () (_ BitVec 32))

(assert (=> b!998316 (= res!668272 (or (= lt!441650 (MissingVacant!9316 i!1194)) (= lt!441650 (MissingZero!9316 i!1194))))))

(declare-datatypes ((array!63119 0))(
  ( (array!63120 (arr!30384 (Array (_ BitVec 32) (_ BitVec 64))) (size!30887 (_ BitVec 32))) )
))
(declare-fun a!3219 () array!63119)

(declare-fun mask!3464 () (_ BitVec 32))

(declare-fun k!2224 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!63119 (_ BitVec 32)) SeekEntryResult!9316)

(assert (=> b!998316 (= lt!441650 (seekEntryOrOpen!0 k!2224 a!3219 mask!3464))))

(declare-fun b!998317 () Bool)

(declare-fun res!668278 () Bool)

(assert (=> b!998317 (=> (not res!668278) (not e!562998))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!998317 (= res!668278 (validKeyInArray!0 k!2224))))

(declare-fun b!998318 () Bool)

(declare-fun res!668273 () Bool)

(assert (=> b!998318 (=> (not res!668273) (not e!562998))))

(declare-fun arrayContainsKey!0 (array!63119 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!998318 (= res!668273 (not (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000)))))

(declare-fun b!998320 () Bool)

(declare-fun res!668271 () Bool)

(assert (=> b!998320 (=> (not res!668271) (not e!562997))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!63119 (_ BitVec 32)) Bool)

(assert (=> b!998320 (= res!668271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464))))

(declare-fun b!998321 () Bool)

(declare-fun e!562999 () Bool)

(assert (=> b!998321 (= e!562999 (and (bvsge mask!3464 #b00000000000000000000000000000000) (bvsgt mask!3464 #b00111111111111111111111111111111)))))

(declare-fun b!998322 () Bool)

(declare-fun res!668269 () Bool)

(assert (=> b!998322 (=> (not res!668269) (not e!562999))))

(declare-fun j!170 () (_ BitVec 32))

(declare-fun index!1507 () (_ BitVec 32))

(declare-fun lt!441651 () SeekEntryResult!9316)

(declare-fun x!1245 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63119 (_ BitVec 32)) SeekEntryResult!9316)

(assert (=> b!998322 (= res!668269 (= (seekKeyOrZeroOrLongMinValue!0 x!1245 index!1507 (select (arr!30384 a!3219) j!170) a!3219 mask!3464) lt!441651))))

(declare-fun b!998323 () Bool)

(assert (=> b!998323 (= e!562997 e!562999)))

(declare-fun res!668277 () Bool)

(assert (=> b!998323 (=> (not res!668277) (not e!562999))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998323 (= res!668277 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30384 a!3219) j!170) mask!3464) (select (arr!30384 a!3219) j!170) a!3219 mask!3464) lt!441651))))

(declare-fun resIndex!38 () (_ BitVec 32))

(declare-fun resX!38 () (_ BitVec 32))

(assert (=> b!998323 (= lt!441651 (Intermediate!9316 false resIndex!38 resX!38))))

(declare-fun b!998324 () Bool)

(declare-fun res!668270 () Bool)

(assert (=> b!998324 (=> (not res!668270) (not e!562998))))

(assert (=> b!998324 (= res!668270 (and (= (size!30887 a!3219) (bvadd #b00000000000000000000000000000001 mask!3464)) (bvsge i!1194 #b00000000000000000000000000000000) (bvslt i!1194 (size!30887 a!3219)) (bvsge j!170 #b00000000000000000000000000000000) (bvslt j!170 (size!30887 a!3219)) (not (= i!1194 j!170))))))

(declare-fun b!998325 () Bool)

(declare-fun res!668274 () Bool)

(assert (=> b!998325 (=> (not res!668274) (not e!562997))))

(assert (=> b!998325 (= res!668274 (and (bvsle x!1245 resX!38) (bvsge x!1245 #b00000000000000000000000000000000) (bvsle resX!38 #b01111111111111111111111111111110) (bvsge index!1507 #b00000000000000000000000000000000) (bvslt index!1507 (size!30887 a!3219)) (bvsge resIndex!38 #b00000000000000000000000000000000) (bvslt resIndex!38 (size!30887 a!3219))))))

(declare-fun b!998326 () Bool)

(declare-fun res!668276 () Bool)

(assert (=> b!998326 (=> (not res!668276) (not e!562998))))

(assert (=> b!998326 (= res!668276 (validKeyInArray!0 (select (arr!30384 a!3219) j!170)))))

(declare-fun b!998319 () Bool)

(declare-fun res!668268 () Bool)

(assert (=> b!998319 (=> (not res!668268) (not e!562997))))

(declare-datatypes ((List!21186 0))(
  ( (Nil!21183) (Cons!21182 (h!22353 (_ BitVec 64)) (t!30195 List!21186)) )
))
(declare-fun arrayNoDuplicates!0 (array!63119 (_ BitVec 32) List!21186) Bool)

(assert (=> b!998319 (= res!668268 (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21183))))

(declare-fun res!668275 () Bool)

(assert (=> start!86264 (=> (not res!668275) (not e!562998))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!86264 (= res!668275 (validMask!0 mask!3464))))

(assert (=> start!86264 e!562998))

(declare-fun array_inv!23374 (array!63119) Bool)

(assert (=> start!86264 (array_inv!23374 a!3219)))

(assert (=> start!86264 true))

(assert (= (and start!86264 res!668275) b!998324))

(assert (= (and b!998324 res!668270) b!998326))

(assert (= (and b!998326 res!668276) b!998317))

(assert (= (and b!998317 res!668278) b!998318))

(assert (= (and b!998318 res!668273) b!998316))

(assert (= (and b!998316 res!668272) b!998320))

(assert (= (and b!998320 res!668271) b!998319))

(assert (= (and b!998319 res!668268) b!998325))

(assert (= (and b!998325 res!668274) b!998323))

(assert (= (and b!998323 res!668277) b!998322))

(assert (= (and b!998322 res!668269) b!998321))

(declare-fun m!924957 () Bool)

(assert (=> b!998322 m!924957))

(assert (=> b!998322 m!924957))

(declare-fun m!924959 () Bool)

(assert (=> b!998322 m!924959))

(declare-fun m!924961 () Bool)

(assert (=> b!998317 m!924961))

(declare-fun m!924963 () Bool)

(assert (=> b!998319 m!924963))

(declare-fun m!924965 () Bool)

(assert (=> b!998320 m!924965))

(declare-fun m!924967 () Bool)

(assert (=> b!998318 m!924967))

(declare-fun m!924969 () Bool)

(assert (=> start!86264 m!924969))

(declare-fun m!924971 () Bool)

(assert (=> start!86264 m!924971))

(assert (=> b!998326 m!924957))

(assert (=> b!998326 m!924957))

(declare-fun m!924973 () Bool)

(assert (=> b!998326 m!924973))

(assert (=> b!998323 m!924957))

(assert (=> b!998323 m!924957))

(declare-fun m!924975 () Bool)

(assert (=> b!998323 m!924975))

(assert (=> b!998323 m!924975))

(assert (=> b!998323 m!924957))

(declare-fun m!924977 () Bool)

(assert (=> b!998323 m!924977))

(declare-fun m!924979 () Bool)

(assert (=> b!998316 m!924979))

(push 1)

(assert (not b!998317))

(assert (not b!998316))

(assert (not start!86264))

(assert (not b!998326))

(assert (not b!998319))

(assert (not b!998322))

(assert (not b!998318))

(assert (not b!998323))

(assert (not b!998320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!998408 () Bool)

(declare-fun e!563049 () SeekEntryResult!9316)

(declare-fun lt!441681 () SeekEntryResult!9316)

(assert (=> b!998408 (= e!563049 (MissingZero!9316 (index!39636 lt!441681)))))

(declare-fun b!998409 () Bool)

(declare-fun e!563051 () SeekEntryResult!9316)

(assert (=> b!998409 (= e!563051 (Found!9316 (index!39636 lt!441681)))))

(declare-fun d!119129 () Bool)

(declare-fun lt!441680 () SeekEntryResult!9316)

(assert (=> d!119129 (and (or (is-Undefined!9316 lt!441680) (not (is-Found!9316 lt!441680)) (and (bvsge (index!39635 lt!441680) #b00000000000000000000000000000000) (bvslt (index!39635 lt!441680) (size!30887 a!3219)))) (or (is-Undefined!9316 lt!441680) (is-Found!9316 lt!441680) (not (is-MissingZero!9316 lt!441680)) (and (bvsge (index!39634 lt!441680) #b00000000000000000000000000000000) (bvslt (index!39634 lt!441680) (size!30887 a!3219)))) (or (is-Undefined!9316 lt!441680) (is-Found!9316 lt!441680) (is-MissingZero!9316 lt!441680) (not (is-MissingVacant!9316 lt!441680)) (and (bvsge (index!39637 lt!441680) #b00000000000000000000000000000000) (bvslt (index!39637 lt!441680) (size!30887 a!3219)))) (or (is-Undefined!9316 lt!441680) (ite (is-Found!9316 lt!441680) (= (select (arr!30384 a!3219) (index!39635 lt!441680)) k!2224) (ite (is-MissingZero!9316 lt!441680) (= (select (arr!30384 a!3219) (index!39634 lt!441680)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!9316 lt!441680) (= (select (arr!30384 a!3219) (index!39637 lt!441680)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!563050 () SeekEntryResult!9316)

(assert (=> d!119129 (= lt!441680 e!563050)))

(declare-fun c!101198 () Bool)

(assert (=> d!119129 (= c!101198 (and (is-Intermediate!9316 lt!441681) (undefined!10128 lt!441681)))))

(assert (=> d!119129 (= lt!441681 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2224 mask!3464) k!2224 a!3219 mask!3464))))

(assert (=> d!119129 (validMask!0 mask!3464)))

(assert (=> d!119129 (= (seekEntryOrOpen!0 k!2224 a!3219 mask!3464) lt!441680)))

(declare-fun b!998410 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!63119 (_ BitVec 32)) SeekEntryResult!9316)

(assert (=> b!998410 (= e!563049 (seekKeyOrZeroReturnVacant!0 (x!87093 lt!441681) (index!39636 lt!441681) (index!39636 lt!441681) k!2224 a!3219 mask!3464))))

(declare-fun b!998411 () Bool)

(assert (=> b!998411 (= e!563050 e!563051)))

(declare-fun lt!441682 () (_ BitVec 64))

(assert (=> b!998411 (= lt!441682 (select (arr!30384 a!3219) (index!39636 lt!441681)))))

(declare-fun c!101197 () Bool)

(assert (=> b!998411 (= c!101197 (= lt!441682 k!2224))))

(declare-fun b!998412 () Bool)

(assert (=> b!998412 (= e!563050 Undefined!9316)))

(declare-fun b!998413 () Bool)

(declare-fun c!101199 () Bool)

(assert (=> b!998413 (= c!101199 (= lt!441682 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!998413 (= e!563051 e!563049)))

(assert (= (and d!119129 c!101198) b!998412))

(assert (= (and d!119129 (not c!101198)) b!998411))

(assert (= (and b!998411 c!101197) b!998409))

(assert (= (and b!998411 (not c!101197)) b!998413))

(assert (= (and b!998413 c!101199) b!998408))

(assert (= (and b!998413 (not c!101199)) b!998410))

(declare-fun m!925005 () Bool)

(assert (=> d!119129 m!925005))

(declare-fun m!925007 () Bool)

(assert (=> d!119129 m!925007))

(declare-fun m!925009 () Bool)

(assert (=> d!119129 m!925009))

(assert (=> d!119129 m!925009))

(declare-fun m!925011 () Bool)

(assert (=> d!119129 m!925011))

(assert (=> d!119129 m!924969))

(declare-fun m!925013 () Bool)

(assert (=> d!119129 m!925013))

(declare-fun m!925015 () Bool)

(assert (=> b!998410 m!925015))

(declare-fun m!925017 () Bool)

(assert (=> b!998411 m!925017))

(assert (=> b!998316 d!119129))

(declare-fun d!119139 () Bool)

(assert (=> d!119139 (= (validMask!0 mask!3464) (and (or (= mask!3464 #b00000000000000000000000000000111) (= mask!3464 #b00000000000000000000000000001111) (= mask!3464 #b00000000000000000000000000011111) (= mask!3464 #b00000000000000000000000000111111) (= mask!3464 #b00000000000000000000000001111111) (= mask!3464 #b00000000000000000000000011111111) (= mask!3464 #b00000000000000000000000111111111) (= mask!3464 #b00000000000000000000001111111111) (= mask!3464 #b00000000000000000000011111111111) (= mask!3464 #b00000000000000000000111111111111) (= mask!3464 #b00000000000000000001111111111111) (= mask!3464 #b00000000000000000011111111111111) (= mask!3464 #b00000000000000000111111111111111) (= mask!3464 #b00000000000000001111111111111111) (= mask!3464 #b00000000000000011111111111111111) (= mask!3464 #b00000000000000111111111111111111) (= mask!3464 #b00000000000001111111111111111111) (= mask!3464 #b00000000000011111111111111111111) (= mask!3464 #b00000000000111111111111111111111) (= mask!3464 #b00000000001111111111111111111111) (= mask!3464 #b00000000011111111111111111111111) (= mask!3464 #b00000000111111111111111111111111) (= mask!3464 #b00000001111111111111111111111111) (= mask!3464 #b00000011111111111111111111111111) (= mask!3464 #b00000111111111111111111111111111) (= mask!3464 #b00001111111111111111111111111111) (= mask!3464 #b00011111111111111111111111111111) (= mask!3464 #b00111111111111111111111111111111)) (bvsle mask!3464 #b00111111111111111111111111111111)))))

(assert (=> start!86264 d!119139))

(declare-fun d!119143 () Bool)

(assert (=> d!119143 (= (array_inv!23374 a!3219) (bvsge (size!30887 a!3219) #b00000000000000000000000000000000))))

(assert (=> start!86264 d!119143))

(declare-fun d!119147 () Bool)

(assert (=> d!119147 (= (validKeyInArray!0 (select (arr!30384 a!3219) j!170)) (and (not (= (select (arr!30384 a!3219) j!170) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!30384 a!3219) j!170) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!998326 d!119147))

(declare-fun bm!42286 () Bool)

(declare-fun call!42289 () Bool)

(assert (=> bm!42286 (= call!42289 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3219 mask!3464))))

(declare-fun b!998470 () Bool)

(declare-fun e!563091 () Bool)

(assert (=> b!998470 (= e!563091 call!42289)))

(declare-fun b!998471 () Bool)

(declare-fun e!563092 () Bool)

(assert (=> b!998471 (= e!563092 call!42289)))

(declare-fun d!119149 () Bool)

(declare-fun res!668330 () Bool)

(declare-fun e!563093 () Bool)

(assert (=> d!119149 (=> res!668330 e!563093)))

(assert (=> d!119149 (= res!668330 (bvsge #b00000000000000000000000000000000 (size!30887 a!3219)))))

(assert (=> d!119149 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3219 mask!3464) e!563093)))

(declare-fun b!998472 () Bool)

(assert (=> b!998472 (= e!563093 e!563091)))

(declare-fun c!101217 () Bool)

(assert (=> b!998472 (= c!101217 (validKeyInArray!0 (select (arr!30384 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!998473 () Bool)

(assert (=> b!998473 (= e!563091 e!563092)))

(declare-fun lt!441719 () (_ BitVec 64))

(assert (=> b!998473 (= lt!441719 (select (arr!30384 a!3219) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32934 0))(
  ( (Unit!32935) )
))
(declare-fun lt!441720 () Unit!32934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!63119 (_ BitVec 64) (_ BitVec 32)) Unit!32934)

(assert (=> b!998473 (= lt!441720 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3219 lt!441719 #b00000000000000000000000000000000))))

(assert (=> b!998473 (arrayContainsKey!0 a!3219 lt!441719 #b00000000000000000000000000000000)))

(declare-fun lt!441718 () Unit!32934)

(assert (=> b!998473 (= lt!441718 lt!441720)))

(declare-fun res!668331 () Bool)

(assert (=> b!998473 (= res!668331 (= (seekEntryOrOpen!0 (select (arr!30384 a!3219) #b00000000000000000000000000000000) a!3219 mask!3464) (Found!9316 #b00000000000000000000000000000000)))))

(assert (=> b!998473 (=> (not res!668331) (not e!563092))))

(assert (= (and d!119149 (not res!668330)) b!998472))

(assert (= (and b!998472 c!101217) b!998473))

(assert (= (and b!998472 (not c!101217)) b!998470))

(assert (= (and b!998473 res!668331) b!998471))

(assert (= (or b!998471 b!998470) bm!42286))

(declare-fun m!925055 () Bool)

(assert (=> bm!42286 m!925055))

(declare-fun m!925057 () Bool)

(assert (=> b!998472 m!925057))

(assert (=> b!998472 m!925057))

(declare-fun m!925059 () Bool)

(assert (=> b!998472 m!925059))

(assert (=> b!998473 m!925057))

(declare-fun m!925061 () Bool)

(assert (=> b!998473 m!925061))

(declare-fun m!925063 () Bool)

(assert (=> b!998473 m!925063))

(assert (=> b!998473 m!925057))

(declare-fun m!925065 () Bool)

(assert (=> b!998473 m!925065))

(assert (=> b!998320 d!119149))

(declare-fun b!998494 () Bool)

(declare-fun e!563110 () Bool)

(declare-fun call!42292 () Bool)

(assert (=> b!998494 (= e!563110 call!42292)))

(declare-fun b!998495 () Bool)

(assert (=> b!998495 (= e!563110 call!42292)))

(declare-fun bm!42289 () Bool)

(declare-fun c!101223 () Bool)

(assert (=> bm!42289 (= call!42292 (arrayNoDuplicates!0 a!3219 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!101223 (Cons!21182 (select (arr!30384 a!3219) #b00000000000000000000000000000000) Nil!21183) Nil!21183)))))

(declare-fun b!998496 () Bool)

(declare-fun e!563108 () Bool)

(declare-fun e!563107 () Bool)

(assert (=> b!998496 (= e!563108 e!563107)))

(declare-fun res!668343 () Bool)

(assert (=> b!998496 (=> (not res!668343) (not e!563107))))

(declare-fun e!563109 () Bool)

(assert (=> b!998496 (= res!668343 (not e!563109))))

(declare-fun res!668342 () Bool)

(assert (=> b!998496 (=> (not res!668342) (not e!563109))))

(assert (=> b!998496 (= res!668342 (validKeyInArray!0 (select (arr!30384 a!3219) #b00000000000000000000000000000000)))))

(declare-fun b!998497 () Bool)

(assert (=> b!998497 (= e!563107 e!563110)))

(assert (=> b!998497 (= c!101223 (validKeyInArray!0 (select (arr!30384 a!3219) #b00000000000000000000000000000000)))))

(declare-fun d!119155 () Bool)

(declare-fun res!668341 () Bool)

(assert (=> d!119155 (=> res!668341 e!563108)))

(assert (=> d!119155 (= res!668341 (bvsge #b00000000000000000000000000000000 (size!30887 a!3219)))))

(assert (=> d!119155 (= (arrayNoDuplicates!0 a!3219 #b00000000000000000000000000000000 Nil!21183) e!563108)))

(declare-fun b!998493 () Bool)

(declare-fun contains!5884 (List!21186 (_ BitVec 64)) Bool)

(assert (=> b!998493 (= e!563109 (contains!5884 Nil!21183 (select (arr!30384 a!3219) #b00000000000000000000000000000000)))))

(assert (= (and d!119155 (not res!668341)) b!998496))

(assert (= (and b!998496 res!668342) b!998493))

(assert (= (and b!998496 res!668343) b!998497))

(assert (= (and b!998497 c!101223) b!998495))

(assert (= (and b!998497 (not c!101223)) b!998494))

(assert (= (or b!998495 b!998494) bm!42289))

(assert (=> bm!42289 m!925057))

(declare-fun m!925075 () Bool)

(assert (=> bm!42289 m!925075))

(assert (=> b!998496 m!925057))

(assert (=> b!998496 m!925057))

(assert (=> b!998496 m!925059))

(assert (=> b!998497 m!925057))

(assert (=> b!998497 m!925057))

(assert (=> b!998497 m!925059))

(assert (=> b!998493 m!925057))

(assert (=> b!998493 m!925057))

(declare-fun m!925077 () Bool)

(assert (=> b!998493 m!925077))

(assert (=> b!998319 d!119155))

(declare-fun d!119163 () Bool)

(declare-fun res!668348 () Bool)

(declare-fun e!563115 () Bool)

(assert (=> d!119163 (=> res!668348 e!563115)))

(assert (=> d!119163 (= res!668348 (= (select (arr!30384 a!3219) #b00000000000000000000000000000000) k!2224))))

(assert (=> d!119163 (= (arrayContainsKey!0 a!3219 k!2224 #b00000000000000000000000000000000) e!563115)))

(declare-fun b!998502 () Bool)

(declare-fun e!563116 () Bool)

(assert (=> b!998502 (= e!563115 e!563116)))

(declare-fun res!668349 () Bool)

(assert (=> b!998502 (=> (not res!668349) (not e!563116))))

(assert (=> b!998502 (= res!668349 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!30887 a!3219)))))

(declare-fun b!998503 () Bool)

(assert (=> b!998503 (= e!563116 (arrayContainsKey!0 a!3219 k!2224 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!119163 (not res!668348)) b!998502))

(assert (= (and b!998502 res!668349) b!998503))

(assert (=> d!119163 m!925057))

(declare-fun m!925079 () Bool)

(assert (=> b!998503 m!925079))

(assert (=> b!998318 d!119163))

(declare-fun b!998570 () Bool)

(declare-fun lt!441738 () SeekEntryResult!9316)

(assert (=> b!998570 (and (bvsge (index!39636 lt!441738) #b00000000000000000000000000000000) (bvslt (index!39636 lt!441738) (size!30887 a!3219)))))

(declare-fun res!668374 () Bool)

(assert (=> b!998570 (= res!668374 (= (select (arr!30384 a!3219) (index!39636 lt!441738)) (select (arr!30384 a!3219) j!170)))))

(declare-fun e!563159 () Bool)

(assert (=> b!998570 (=> res!668374 e!563159)))

(declare-fun e!563163 () Bool)

(assert (=> b!998570 (= e!563163 e!563159)))

(declare-fun b!998571 () Bool)

(declare-fun e!563162 () Bool)

(assert (=> b!998571 (= e!563162 (bvsge (x!87093 lt!441738) #b01111111111111111111111111111110))))

(declare-fun b!998572 () Bool)

(declare-fun e!563161 () SeekEntryResult!9316)

(declare-fun e!563160 () SeekEntryResult!9316)

(assert (=> b!998572 (= e!563161 e!563160)))

(declare-fun lt!441739 () (_ BitVec 64))

(declare-fun c!101247 () Bool)

(assert (=> b!998572 (= c!101247 (or (= lt!441739 (select (arr!30384 a!3219) j!170)) (= (bvadd lt!441739 lt!441739) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!998573 () Bool)

(assert (=> b!998573 (= e!563162 e!563163)))

(declare-fun res!668376 () Bool)

(assert (=> b!998573 (= res!668376 (and (is-Intermediate!9316 lt!441738) (not (undefined!10128 lt!441738)) (bvslt (x!87093 lt!441738) #b01111111111111111111111111111110) (bvsge (x!87093 lt!441738) #b00000000000000000000000000000000) (bvsge (x!87093 lt!441738) #b00000000000000000000000000000000)))))

(assert (=> b!998573 (=> (not res!668376) (not e!563163))))

(declare-fun b!998574 () Bool)

(assert (=> b!998574 (and (bvsge (index!39636 lt!441738) #b00000000000000000000000000000000) (bvslt (index!39636 lt!441738) (size!30887 a!3219)))))

(declare-fun res!668375 () Bool)

(assert (=> b!998574 (= res!668375 (= (select (arr!30384 a!3219) (index!39636 lt!441738)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!998574 (=> res!668375 e!563159)))

(declare-fun b!998575 () Bool)

(assert (=> b!998575 (and (bvsge (index!39636 lt!441738) #b00000000000000000000000000000000) (bvslt (index!39636 lt!441738) (size!30887 a!3219)))))

(assert (=> b!998575 (= e!563159 (= (select (arr!30384 a!3219) (index!39636 lt!441738)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!119169 () Bool)

(assert (=> d!119169 e!563162))

(declare-fun c!101245 () Bool)

(assert (=> d!119169 (= c!101245 (and (is-Intermediate!9316 lt!441738) (undefined!10128 lt!441738)))))

(assert (=> d!119169 (= lt!441738 e!563161)))

(declare-fun c!101246 () Bool)

(assert (=> d!119169 (= c!101246 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!119169 (= lt!441739 (select (arr!30384 a!3219) (toIndex!0 (select (arr!30384 a!3219) j!170) mask!3464)))))

(assert (=> d!119169 (validMask!0 mask!3464)))

(assert (=> d!119169 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!30384 a!3219) j!170) mask!3464) (select (arr!30384 a!3219) j!170) a!3219 mask!3464) lt!441738)))

(declare-fun b!998576 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!998576 (= e!563160 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!30384 a!3219) j!170) mask!3464) #b00000000000000000000000000000000 mask!3464) (select (arr!30384 a!3219) j!170) a!3219 mask!3464))))

(declare-fun b!998577 () Bool)

(assert (=> b!998577 (= e!563161 (Intermediate!9316 true (toIndex!0 (select (arr!30384 a!3219) j!170) mask!3464) #b00000000000000000000000000000000))))

(declare-fun b!998578 () Bool)

