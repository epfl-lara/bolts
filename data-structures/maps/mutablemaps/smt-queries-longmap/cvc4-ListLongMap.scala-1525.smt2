; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!28694 () Bool)

(assert start!28694)

(declare-fun b!293137 () Bool)

(declare-fun res!154234 () Bool)

(declare-fun e!185376 () Bool)

(assert (=> b!293137 (=> (not res!154234) (not e!185376))))

(declare-datatypes ((array!14862 0))(
  ( (array!14863 (arr!7053 (Array (_ BitVec 32) (_ BitVec 64))) (size!7405 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14862)

(declare-fun k!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!293137 (= res!154234 (not (arrayContainsKey!0 a!3312 k!2524 #b00000000000000000000000000000000)))))

(declare-fun b!293138 () Bool)

(declare-fun e!185375 () Bool)

(declare-fun lt!145352 () Bool)

(declare-datatypes ((SeekEntryResult!2213 0))(
  ( (MissingZero!2213 (index!11022 (_ BitVec 32))) (Found!2213 (index!11023 (_ BitVec 32))) (Intermediate!2213 (undefined!3025 Bool) (index!11024 (_ BitVec 32)) (x!29164 (_ BitVec 32))) (Undefined!2213) (MissingVacant!2213 (index!11025 (_ BitVec 32))) )
))
(declare-fun lt!145348 () SeekEntryResult!2213)

(assert (=> b!293138 (= e!185375 (and lt!145352 (is-Intermediate!2213 lt!145348) (undefined!3025 lt!145348)))))

(declare-fun lt!145349 () SeekEntryResult!2213)

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun lt!145351 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14862 (_ BitVec 32)) SeekEntryResult!2213)

(assert (=> b!293138 (= lt!145349 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145351 k!2524 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312)) mask!3809))))

(assert (=> b!293138 (= lt!145348 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145351 k!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293138 (= lt!145351 (toIndex!0 k!2524 mask!3809))))

(declare-fun res!154232 () Bool)

(assert (=> start!28694 (=> (not res!154232) (not e!185376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!28694 (= res!154232 (validMask!0 mask!3809))))

(assert (=> start!28694 e!185376))

(assert (=> start!28694 true))

(declare-fun array_inv!5007 (array!14862) Bool)

(assert (=> start!28694 (array_inv!5007 a!3312)))

(declare-fun b!293139 () Bool)

(declare-fun res!154233 () Bool)

(assert (=> b!293139 (=> (not res!154233) (not e!185375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14862 (_ BitVec 32)) Bool)

(assert (=> b!293139 (= res!154233 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!293140 () Bool)

(declare-fun res!154231 () Bool)

(assert (=> b!293140 (=> (not res!154231) (not e!185376))))

(assert (=> b!293140 (= res!154231 (and (= (size!7405 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7405 a!3312))))))

(declare-fun b!293141 () Bool)

(declare-fun res!154235 () Bool)

(assert (=> b!293141 (=> (not res!154235) (not e!185376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!293141 (= res!154235 (validKeyInArray!0 k!2524))))

(declare-fun b!293142 () Bool)

(assert (=> b!293142 (= e!185376 e!185375)))

(declare-fun res!154236 () Bool)

(assert (=> b!293142 (=> (not res!154236) (not e!185375))))

(declare-fun lt!145350 () SeekEntryResult!2213)

(assert (=> b!293142 (= res!154236 (or lt!145352 (= lt!145350 (MissingVacant!2213 i!1256))))))

(assert (=> b!293142 (= lt!145352 (= lt!145350 (MissingZero!2213 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14862 (_ BitVec 32)) SeekEntryResult!2213)

(assert (=> b!293142 (= lt!145350 (seekEntryOrOpen!0 k!2524 a!3312 mask!3809))))

(assert (= (and start!28694 res!154232) b!293140))

(assert (= (and b!293140 res!154231) b!293141))

(assert (= (and b!293141 res!154235) b!293137))

(assert (= (and b!293137 res!154234) b!293142))

(assert (= (and b!293142 res!154236) b!293139))

(assert (= (and b!293139 res!154233) b!293138))

(declare-fun m!306983 () Bool)

(assert (=> b!293138 m!306983))

(declare-fun m!306985 () Bool)

(assert (=> b!293138 m!306985))

(declare-fun m!306987 () Bool)

(assert (=> b!293138 m!306987))

(declare-fun m!306989 () Bool)

(assert (=> b!293138 m!306989))

(declare-fun m!306991 () Bool)

(assert (=> start!28694 m!306991))

(declare-fun m!306993 () Bool)

(assert (=> start!28694 m!306993))

(declare-fun m!306995 () Bool)

(assert (=> b!293142 m!306995))

(declare-fun m!306997 () Bool)

(assert (=> b!293139 m!306997))

(declare-fun m!306999 () Bool)

(assert (=> b!293141 m!306999))

(declare-fun m!307001 () Bool)

(assert (=> b!293137 m!307001))

(push 1)

(assert (not b!293142))

(assert (not b!293137))

(assert (not b!293139))

(assert (not start!28694))

(assert (not b!293141))

(assert (not b!293138))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!66431 () Bool)

(declare-fun res!154267 () Bool)

(declare-fun e!185421 () Bool)

(assert (=> d!66431 (=> res!154267 e!185421)))

(assert (=> d!66431 (= res!154267 (bvsge #b00000000000000000000000000000000 (size!7405 a!3312)))))

(assert (=> d!66431 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!185421)))

(declare-fun b!293205 () Bool)

(declare-fun e!185420 () Bool)

(declare-fun call!25664 () Bool)

(assert (=> b!293205 (= e!185420 call!25664)))

(declare-fun bm!25661 () Bool)

(assert (=> bm!25661 (= call!25664 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!293206 () Bool)

(declare-fun e!185419 () Bool)

(assert (=> b!293206 (= e!185420 e!185419)))

(declare-fun lt!145376 () (_ BitVec 64))

(assert (=> b!293206 (= lt!145376 (select (arr!7053 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9171 0))(
  ( (Unit!9172) )
))
(declare-fun lt!145378 () Unit!9171)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14862 (_ BitVec 64) (_ BitVec 32)) Unit!9171)

(assert (=> b!293206 (= lt!145378 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!145376 #b00000000000000000000000000000000))))

(assert (=> b!293206 (arrayContainsKey!0 a!3312 lt!145376 #b00000000000000000000000000000000)))

(declare-fun lt!145377 () Unit!9171)

(assert (=> b!293206 (= lt!145377 lt!145378)))

(declare-fun res!154266 () Bool)

(assert (=> b!293206 (= res!154266 (= (seekEntryOrOpen!0 (select (arr!7053 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2213 #b00000000000000000000000000000000)))))

(assert (=> b!293206 (=> (not res!154266) (not e!185419))))

(declare-fun b!293207 () Bool)

(assert (=> b!293207 (= e!185421 e!185420)))

(declare-fun c!47036 () Bool)

(assert (=> b!293207 (= c!47036 (validKeyInArray!0 (select (arr!7053 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!293208 () Bool)

(assert (=> b!293208 (= e!185419 call!25664)))

(assert (= (and d!66431 (not res!154267)) b!293207))

(assert (= (and b!293207 c!47036) b!293206))

(assert (= (and b!293207 (not c!47036)) b!293205))

(assert (= (and b!293206 res!154266) b!293208))

(assert (= (or b!293208 b!293205) bm!25661))

(declare-fun m!307031 () Bool)

(assert (=> bm!25661 m!307031))

(declare-fun m!307033 () Bool)

(assert (=> b!293206 m!307033))

(declare-fun m!307035 () Bool)

(assert (=> b!293206 m!307035))

(declare-fun m!307037 () Bool)

(assert (=> b!293206 m!307037))

(assert (=> b!293206 m!307033))

(declare-fun m!307039 () Bool)

(assert (=> b!293206 m!307039))

(assert (=> b!293207 m!307033))

(assert (=> b!293207 m!307033))

(declare-fun m!307041 () Bool)

(assert (=> b!293207 m!307041))

(assert (=> b!293139 d!66431))

(declare-fun b!293245 () Bool)

(declare-fun e!185444 () Bool)

(declare-fun lt!145398 () SeekEntryResult!2213)

(assert (=> b!293245 (= e!185444 (bvsge (x!29164 lt!145398) #b01111111111111111111111111111110))))

(declare-fun b!293246 () Bool)

(assert (=> b!293246 (and (bvsge (index!11024 lt!145398) #b00000000000000000000000000000000) (bvslt (index!11024 lt!145398) (size!7405 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312)))))))

(declare-fun res!154276 () Bool)

(assert (=> b!293246 (= res!154276 (= (select (arr!7053 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312))) (index!11024 lt!145398)) k!2524))))

(declare-fun e!185445 () Bool)

(assert (=> b!293246 (=> res!154276 e!185445)))

(declare-fun e!185442 () Bool)

(assert (=> b!293246 (= e!185442 e!185445)))

(declare-fun b!293247 () Bool)

(assert (=> b!293247 (and (bvsge (index!11024 lt!145398) #b00000000000000000000000000000000) (bvslt (index!11024 lt!145398) (size!7405 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312)))))))

(assert (=> b!293247 (= e!185445 (= (select (arr!7053 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312))) (index!11024 lt!145398)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185441 () SeekEntryResult!2213)

(declare-fun b!293248 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!293248 (= e!185441 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145351 #b00000000000000000000000000000000 mask!3809) k!2524 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312)) mask!3809))))

(declare-fun b!293249 () Bool)

(declare-fun e!185443 () SeekEntryResult!2213)

(assert (=> b!293249 (= e!185443 (Intermediate!2213 true lt!145351 #b00000000000000000000000000000000))))

(declare-fun b!293250 () Bool)

(assert (=> b!293250 (and (bvsge (index!11024 lt!145398) #b00000000000000000000000000000000) (bvslt (index!11024 lt!145398) (size!7405 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312)))))))

(declare-fun res!154275 () Bool)

(assert (=> b!293250 (= res!154275 (= (select (arr!7053 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312))) (index!11024 lt!145398)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293250 (=> res!154275 e!185445)))

(declare-fun b!293251 () Bool)

(assert (=> b!293251 (= e!185443 e!185441)))

(declare-fun c!47052 () Bool)

(declare-fun lt!145399 () (_ BitVec 64))

(assert (=> b!293251 (= c!47052 (or (= lt!145399 k!2524) (= (bvadd lt!145399 lt!145399) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!66439 () Bool)

(assert (=> d!66439 e!185444))

(declare-fun c!47054 () Bool)

(assert (=> d!66439 (= c!47054 (and (is-Intermediate!2213 lt!145398) (undefined!3025 lt!145398)))))

(assert (=> d!66439 (= lt!145398 e!185443)))

(declare-fun c!47053 () Bool)

(assert (=> d!66439 (= c!47053 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66439 (= lt!145399 (select (arr!7053 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312))) lt!145351))))

(assert (=> d!66439 (validMask!0 mask!3809)))

(assert (=> d!66439 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!145351 k!2524 (array!14863 (store (arr!7053 a!3312) i!1256 k!2524) (size!7405 a!3312)) mask!3809) lt!145398)))

(declare-fun b!293252 () Bool)

(assert (=> b!293252 (= e!185444 e!185442)))

(declare-fun res!154274 () Bool)

(assert (=> b!293252 (= res!154274 (and (is-Intermediate!2213 lt!145398) (not (undefined!3025 lt!145398)) (bvslt (x!29164 lt!145398) #b01111111111111111111111111111110) (bvsge (x!29164 lt!145398) #b00000000000000000000000000000000) (bvsge (x!29164 lt!145398) #b00000000000000000000000000000000)))))

(assert (=> b!293252 (=> (not res!154274) (not e!185442))))

(declare-fun b!293253 () Bool)

(assert (=> b!293253 (= e!185441 (Intermediate!2213 false lt!145351 #b00000000000000000000000000000000))))

(assert (= (and d!66439 c!47053) b!293249))

(assert (= (and d!66439 (not c!47053)) b!293251))

(assert (= (and b!293251 c!47052) b!293253))

(assert (= (and b!293251 (not c!47052)) b!293248))

(assert (= (and d!66439 c!47054) b!293245))

(assert (= (and d!66439 (not c!47054)) b!293252))

(assert (= (and b!293252 res!154274) b!293246))

(assert (= (and b!293246 (not res!154276)) b!293250))

(assert (= (and b!293250 (not res!154275)) b!293247))

(declare-fun m!307055 () Bool)

(assert (=> b!293250 m!307055))

(assert (=> b!293247 m!307055))

(declare-fun m!307057 () Bool)

(assert (=> b!293248 m!307057))

(assert (=> b!293248 m!307057))

(declare-fun m!307059 () Bool)

(assert (=> b!293248 m!307059))

(assert (=> b!293246 m!307055))

(declare-fun m!307061 () Bool)

(assert (=> d!66439 m!307061))

(assert (=> d!66439 m!306991))

(assert (=> b!293138 d!66439))

(declare-fun b!293254 () Bool)

(declare-fun e!185449 () Bool)

(declare-fun lt!145400 () SeekEntryResult!2213)

(assert (=> b!293254 (= e!185449 (bvsge (x!29164 lt!145400) #b01111111111111111111111111111110))))

(declare-fun b!293255 () Bool)

(assert (=> b!293255 (and (bvsge (index!11024 lt!145400) #b00000000000000000000000000000000) (bvslt (index!11024 lt!145400) (size!7405 a!3312)))))

(declare-fun res!154279 () Bool)

(assert (=> b!293255 (= res!154279 (= (select (arr!7053 a!3312) (index!11024 lt!145400)) k!2524))))

(declare-fun e!185450 () Bool)

(assert (=> b!293255 (=> res!154279 e!185450)))

(declare-fun e!185447 () Bool)

(assert (=> b!293255 (= e!185447 e!185450)))

(declare-fun b!293256 () Bool)

(assert (=> b!293256 (and (bvsge (index!11024 lt!145400) #b00000000000000000000000000000000) (bvslt (index!11024 lt!145400) (size!7405 a!3312)))))

(assert (=> b!293256 (= e!185450 (= (select (arr!7053 a!3312) (index!11024 lt!145400)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!185446 () SeekEntryResult!2213)

(declare-fun b!293257 () Bool)

(assert (=> b!293257 (= e!185446 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!145351 #b00000000000000000000000000000000 mask!3809) k!2524 a!3312 mask!3809))))

(declare-fun b!293258 () Bool)

(declare-fun e!185448 () SeekEntryResult!2213)

(assert (=> b!293258 (= e!185448 (Intermediate!2213 true lt!145351 #b00000000000000000000000000000000))))

(declare-fun b!293259 () Bool)

(assert (=> b!293259 (and (bvsge (index!11024 lt!145400) #b00000000000000000000000000000000) (bvslt (index!11024 lt!145400) (size!7405 a!3312)))))

(declare-fun res!154278 () Bool)

(assert (=> b!293259 (= res!154278 (= (select (arr!7053 a!3312) (index!11024 lt!145400)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!293259 (=> res!154278 e!185450)))

(declare-fun b!293260 () Bool)

(assert (=> b!293260 (= e!185448 e!185446)))

(declare-fun c!47055 () Bool)

(declare-fun lt!145401 () (_ BitVec 64))

(assert (=> b!293260 (= c!47055 (or (= lt!145401 k!2524) (= (bvadd lt!145401 lt!145401) #b0000000000000000000000000000000000000000000000000000000000000000)))))

