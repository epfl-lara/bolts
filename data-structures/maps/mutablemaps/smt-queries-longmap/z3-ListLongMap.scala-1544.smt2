; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!29198 () Bool)

(assert start!29198)

(declare-fun b!296158 () Bool)

(declare-fun res!156084 () Bool)

(declare-fun e!187198 () Bool)

(assert (=> b!296158 (=> (not res!156084) (not e!187198))))

(declare-datatypes ((array!14998 0))(
  ( (array!14999 (arr!7109 (Array (_ BitVec 32) (_ BitVec 64))) (size!7461 (_ BitVec 32))) )
))
(declare-fun a!3312 () array!14998)

(declare-fun k0!2524 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!14998 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!296158 (= res!156084 (not (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000)))))

(declare-fun b!296159 () Bool)

(declare-fun res!156086 () Bool)

(declare-fun e!187199 () Bool)

(assert (=> b!296159 (=> (not res!156086) (not e!187199))))

(declare-fun mask!3809 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!14998 (_ BitVec 32)) Bool)

(assert (=> b!296159 (= res!156086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809))))

(declare-fun b!296160 () Bool)

(declare-fun e!187197 () Bool)

(declare-fun e!187196 () Bool)

(assert (=> b!296160 (= e!187197 e!187196)))

(declare-fun res!156080 () Bool)

(assert (=> b!296160 (=> (not res!156080) (not e!187196))))

(declare-fun lt!147099 () Bool)

(declare-datatypes ((SeekEntryResult!2269 0))(
  ( (MissingZero!2269 (index!11246 (_ BitVec 32))) (Found!2269 (index!11247 (_ BitVec 32))) (Intermediate!2269 (undefined!3081 Bool) (index!11248 (_ BitVec 32)) (x!29422 (_ BitVec 32))) (Undefined!2269) (MissingVacant!2269 (index!11249 (_ BitVec 32))) )
))
(declare-fun lt!147098 () SeekEntryResult!2269)

(assert (=> b!296160 (= res!156080 (and (or lt!147099 (not (undefined!3081 lt!147098))) (or lt!147099 (not (= (select (arr!7109 a!3312) (index!11248 lt!147098)) #b1000000000000000000000000000000000000000000000000000000000000000))) (or lt!147099 (not (= (select (arr!7109 a!3312) (index!11248 lt!147098)) k0!2524))) (not lt!147099)))))

(get-info :version)

(assert (=> b!296160 (= lt!147099 (not ((_ is Intermediate!2269) lt!147098)))))

(declare-fun b!296161 () Bool)

(assert (=> b!296161 (= e!187198 e!187199)))

(declare-fun res!156087 () Bool)

(assert (=> b!296161 (=> (not res!156087) (not e!187199))))

(declare-fun i!1256 () (_ BitVec 32))

(declare-fun lt!147096 () Bool)

(declare-fun lt!147101 () SeekEntryResult!2269)

(assert (=> b!296161 (= res!156087 (or lt!147096 (= lt!147101 (MissingVacant!2269 i!1256))))))

(assert (=> b!296161 (= lt!147096 (= lt!147101 (MissingZero!2269 i!1256)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!14998 (_ BitVec 32)) SeekEntryResult!2269)

(assert (=> b!296161 (= lt!147101 (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809))))

(declare-fun res!156083 () Bool)

(assert (=> start!29198 (=> (not res!156083) (not e!187198))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!29198 (= res!156083 (validMask!0 mask!3809))))

(assert (=> start!29198 e!187198))

(assert (=> start!29198 true))

(declare-fun array_inv!5063 (array!14998) Bool)

(assert (=> start!29198 (array_inv!5063 a!3312)))

(declare-fun b!296162 () Bool)

(declare-fun res!156082 () Bool)

(assert (=> b!296162 (=> (not res!156082) (not e!187198))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!296162 (= res!156082 (validKeyInArray!0 k0!2524))))

(declare-fun b!296163 () Bool)

(assert (=> b!296163 (= e!187196 (not (or (not (= lt!147098 (Intermediate!2269 false (index!11248 lt!147098) (x!29422 lt!147098)))) (bvsle #b00000000000000000000000000000000 (x!29422 lt!147098)))))))

(assert (=> b!296163 (and (= (select (arr!7109 a!3312) (index!11248 lt!147098)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (index!11248 lt!147098) i!1256))))

(declare-fun b!296164 () Bool)

(assert (=> b!296164 (= e!187199 e!187197)))

(declare-fun res!156085 () Bool)

(assert (=> b!296164 (=> (not res!156085) (not e!187197))))

(assert (=> b!296164 (= res!156085 lt!147096)))

(declare-fun lt!147097 () SeekEntryResult!2269)

(declare-fun lt!147100 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14998 (_ BitVec 32)) SeekEntryResult!2269)

(assert (=> b!296164 (= lt!147097 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147100 k0!2524 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312)) mask!3809))))

(assert (=> b!296164 (= lt!147098 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147100 k0!2524 a!3312 mask!3809))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296164 (= lt!147100 (toIndex!0 k0!2524 mask!3809))))

(declare-fun b!296165 () Bool)

(declare-fun res!156081 () Bool)

(assert (=> b!296165 (=> (not res!156081) (not e!187198))))

(assert (=> b!296165 (= res!156081 (and (= (size!7461 a!3312) (bvadd #b00000000000000000000000000000001 mask!3809)) (bvsge i!1256 #b00000000000000000000000000000000) (bvslt i!1256 (size!7461 a!3312))))))

(assert (= (and start!29198 res!156083) b!296165))

(assert (= (and b!296165 res!156081) b!296162))

(assert (= (and b!296162 res!156082) b!296158))

(assert (= (and b!296158 res!156084) b!296161))

(assert (= (and b!296161 res!156087) b!296159))

(assert (= (and b!296159 res!156086) b!296164))

(assert (= (and b!296164 res!156085) b!296160))

(assert (= (and b!296160 res!156080) b!296163))

(declare-fun m!309231 () Bool)

(assert (=> b!296158 m!309231))

(declare-fun m!309233 () Bool)

(assert (=> b!296163 m!309233))

(declare-fun m!309235 () Bool)

(assert (=> start!29198 m!309235))

(declare-fun m!309237 () Bool)

(assert (=> start!29198 m!309237))

(declare-fun m!309239 () Bool)

(assert (=> b!296161 m!309239))

(declare-fun m!309241 () Bool)

(assert (=> b!296159 m!309241))

(assert (=> b!296160 m!309233))

(declare-fun m!309243 () Bool)

(assert (=> b!296162 m!309243))

(declare-fun m!309245 () Bool)

(assert (=> b!296164 m!309245))

(declare-fun m!309247 () Bool)

(assert (=> b!296164 m!309247))

(declare-fun m!309249 () Bool)

(assert (=> b!296164 m!309249))

(declare-fun m!309251 () Bool)

(assert (=> b!296164 m!309251))

(check-sat (not start!29198) (not b!296164) (not b!296158) (not b!296162) (not b!296161) (not b!296159))
(check-sat)
(get-model)

(declare-fun d!66919 () Bool)

(declare-fun res!156116 () Bool)

(declare-fun e!187223 () Bool)

(assert (=> d!66919 (=> res!156116 e!187223)))

(assert (=> d!66919 (= res!156116 (bvsge #b00000000000000000000000000000000 (size!7461 a!3312)))))

(assert (=> d!66919 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3312 mask!3809) e!187223)))

(declare-fun bm!25731 () Bool)

(declare-fun call!25734 () Bool)

(assert (=> bm!25731 (= call!25734 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3312 mask!3809))))

(declare-fun b!296198 () Bool)

(declare-fun e!187222 () Bool)

(assert (=> b!296198 (= e!187223 e!187222)))

(declare-fun c!47619 () Bool)

(assert (=> b!296198 (= c!47619 (validKeyInArray!0 (select (arr!7109 a!3312) #b00000000000000000000000000000000)))))

(declare-fun b!296199 () Bool)

(declare-fun e!187221 () Bool)

(assert (=> b!296199 (= e!187222 e!187221)))

(declare-fun lt!147128 () (_ BitVec 64))

(assert (=> b!296199 (= lt!147128 (select (arr!7109 a!3312) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!9215 0))(
  ( (Unit!9216) )
))
(declare-fun lt!147127 () Unit!9215)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!14998 (_ BitVec 64) (_ BitVec 32)) Unit!9215)

(assert (=> b!296199 (= lt!147127 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3312 lt!147128 #b00000000000000000000000000000000))))

(assert (=> b!296199 (arrayContainsKey!0 a!3312 lt!147128 #b00000000000000000000000000000000)))

(declare-fun lt!147126 () Unit!9215)

(assert (=> b!296199 (= lt!147126 lt!147127)))

(declare-fun res!156117 () Bool)

(assert (=> b!296199 (= res!156117 (= (seekEntryOrOpen!0 (select (arr!7109 a!3312) #b00000000000000000000000000000000) a!3312 mask!3809) (Found!2269 #b00000000000000000000000000000000)))))

(assert (=> b!296199 (=> (not res!156117) (not e!187221))))

(declare-fun b!296200 () Bool)

(assert (=> b!296200 (= e!187221 call!25734)))

(declare-fun b!296201 () Bool)

(assert (=> b!296201 (= e!187222 call!25734)))

(assert (= (and d!66919 (not res!156116)) b!296198))

(assert (= (and b!296198 c!47619) b!296199))

(assert (= (and b!296198 (not c!47619)) b!296201))

(assert (= (and b!296199 res!156117) b!296200))

(assert (= (or b!296200 b!296201) bm!25731))

(declare-fun m!309275 () Bool)

(assert (=> bm!25731 m!309275))

(declare-fun m!309277 () Bool)

(assert (=> b!296198 m!309277))

(assert (=> b!296198 m!309277))

(declare-fun m!309279 () Bool)

(assert (=> b!296198 m!309279))

(assert (=> b!296199 m!309277))

(declare-fun m!309281 () Bool)

(assert (=> b!296199 m!309281))

(declare-fun m!309283 () Bool)

(assert (=> b!296199 m!309283))

(assert (=> b!296199 m!309277))

(declare-fun m!309285 () Bool)

(assert (=> b!296199 m!309285))

(assert (=> b!296159 d!66919))

(declare-fun d!66921 () Bool)

(declare-fun res!156122 () Bool)

(declare-fun e!187228 () Bool)

(assert (=> d!66921 (=> res!156122 e!187228)))

(assert (=> d!66921 (= res!156122 (= (select (arr!7109 a!3312) #b00000000000000000000000000000000) k0!2524))))

(assert (=> d!66921 (= (arrayContainsKey!0 a!3312 k0!2524 #b00000000000000000000000000000000) e!187228)))

(declare-fun b!296206 () Bool)

(declare-fun e!187229 () Bool)

(assert (=> b!296206 (= e!187228 e!187229)))

(declare-fun res!156123 () Bool)

(assert (=> b!296206 (=> (not res!156123) (not e!187229))))

(assert (=> b!296206 (= res!156123 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!7461 a!3312)))))

(declare-fun b!296207 () Bool)

(assert (=> b!296207 (= e!187229 (arrayContainsKey!0 a!3312 k0!2524 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!66921 (not res!156122)) b!296206))

(assert (= (and b!296206 res!156123) b!296207))

(assert (=> d!66921 m!309277))

(declare-fun m!309287 () Bool)

(assert (=> b!296207 m!309287))

(assert (=> b!296158 d!66921))

(declare-fun d!66925 () Bool)

(assert (=> d!66925 (= (validMask!0 mask!3809) (and (or (= mask!3809 #b00000000000000000000000000000111) (= mask!3809 #b00000000000000000000000000001111) (= mask!3809 #b00000000000000000000000000011111) (= mask!3809 #b00000000000000000000000000111111) (= mask!3809 #b00000000000000000000000001111111) (= mask!3809 #b00000000000000000000000011111111) (= mask!3809 #b00000000000000000000000111111111) (= mask!3809 #b00000000000000000000001111111111) (= mask!3809 #b00000000000000000000011111111111) (= mask!3809 #b00000000000000000000111111111111) (= mask!3809 #b00000000000000000001111111111111) (= mask!3809 #b00000000000000000011111111111111) (= mask!3809 #b00000000000000000111111111111111) (= mask!3809 #b00000000000000001111111111111111) (= mask!3809 #b00000000000000011111111111111111) (= mask!3809 #b00000000000000111111111111111111) (= mask!3809 #b00000000000001111111111111111111) (= mask!3809 #b00000000000011111111111111111111) (= mask!3809 #b00000000000111111111111111111111) (= mask!3809 #b00000000001111111111111111111111) (= mask!3809 #b00000000011111111111111111111111) (= mask!3809 #b00000000111111111111111111111111) (= mask!3809 #b00000001111111111111111111111111) (= mask!3809 #b00000011111111111111111111111111) (= mask!3809 #b00000111111111111111111111111111) (= mask!3809 #b00001111111111111111111111111111) (= mask!3809 #b00011111111111111111111111111111) (= mask!3809 #b00111111111111111111111111111111)) (bvsle mask!3809 #b00111111111111111111111111111111)))))

(assert (=> start!29198 d!66925))

(declare-fun d!66929 () Bool)

(assert (=> d!66929 (= (array_inv!5063 a!3312) (bvsge (size!7461 a!3312) #b00000000000000000000000000000000))))

(assert (=> start!29198 d!66929))

(declare-fun b!296258 () Bool)

(declare-fun e!187261 () Bool)

(declare-fun e!187262 () Bool)

(assert (=> b!296258 (= e!187261 e!187262)))

(declare-fun res!156140 () Bool)

(declare-fun lt!147148 () SeekEntryResult!2269)

(assert (=> b!296258 (= res!156140 (and ((_ is Intermediate!2269) lt!147148) (not (undefined!3081 lt!147148)) (bvslt (x!29422 lt!147148) #b01111111111111111111111111111110) (bvsge (x!29422 lt!147148) #b00000000000000000000000000000000) (bvsge (x!29422 lt!147148) #b00000000000000000000000000000000)))))

(assert (=> b!296258 (=> (not res!156140) (not e!187262))))

(declare-fun b!296259 () Bool)

(assert (=> b!296259 (and (bvsge (index!11248 lt!147148) #b00000000000000000000000000000000) (bvslt (index!11248 lt!147148) (size!7461 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312)))))))

(declare-fun res!156141 () Bool)

(assert (=> b!296259 (= res!156141 (= (select (arr!7109 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312))) (index!11248 lt!147148)) k0!2524))))

(declare-fun e!187263 () Bool)

(assert (=> b!296259 (=> res!156141 e!187263)))

(assert (=> b!296259 (= e!187262 e!187263)))

(declare-fun b!296261 () Bool)

(declare-fun e!187265 () SeekEntryResult!2269)

(assert (=> b!296261 (= e!187265 (Intermediate!2269 false lt!147100 #b00000000000000000000000000000000))))

(declare-fun b!296262 () Bool)

(assert (=> b!296262 (and (bvsge (index!11248 lt!147148) #b00000000000000000000000000000000) (bvslt (index!11248 lt!147148) (size!7461 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312)))))))

(assert (=> b!296262 (= e!187263 (= (select (arr!7109 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312))) (index!11248 lt!147148)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!296263 () Bool)

(assert (=> b!296263 (and (bvsge (index!11248 lt!147148) #b00000000000000000000000000000000) (bvslt (index!11248 lt!147148) (size!7461 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312)))))))

(declare-fun res!156142 () Bool)

(assert (=> b!296263 (= res!156142 (= (select (arr!7109 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312))) (index!11248 lt!147148)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!296263 (=> res!156142 e!187263)))

(declare-fun b!296264 () Bool)

(declare-fun e!187264 () SeekEntryResult!2269)

(assert (=> b!296264 (= e!187264 (Intermediate!2269 true lt!147100 #b00000000000000000000000000000000))))

(declare-fun b!296265 () Bool)

(assert (=> b!296265 (= e!187264 e!187265)))

(declare-fun c!47637 () Bool)

(declare-fun lt!147149 () (_ BitVec 64))

(assert (=> b!296265 (= c!47637 (or (= lt!147149 k0!2524) (= (bvadd lt!147149 lt!147149) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!296266 () Bool)

(assert (=> b!296266 (= e!187261 (bvsge (x!29422 lt!147148) #b01111111111111111111111111111110))))

(declare-fun d!66931 () Bool)

(assert (=> d!66931 e!187261))

(declare-fun c!47638 () Bool)

(assert (=> d!66931 (= c!47638 (and ((_ is Intermediate!2269) lt!147148) (undefined!3081 lt!147148)))))

(assert (=> d!66931 (= lt!147148 e!187264)))

(declare-fun c!47639 () Bool)

(assert (=> d!66931 (= c!47639 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66931 (= lt!147149 (select (arr!7109 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312))) lt!147100))))

(assert (=> d!66931 (validMask!0 mask!3809)))

(assert (=> d!66931 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147100 k0!2524 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312)) mask!3809) lt!147148)))

(declare-fun b!296260 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!296260 (= e!187265 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147100 #b00000000000000000000000000000000 mask!3809) k0!2524 (array!14999 (store (arr!7109 a!3312) i!1256 k0!2524) (size!7461 a!3312)) mask!3809))))

(assert (= (and d!66931 c!47639) b!296264))

(assert (= (and d!66931 (not c!47639)) b!296265))

(assert (= (and b!296265 c!47637) b!296261))

(assert (= (and b!296265 (not c!47637)) b!296260))

(assert (= (and d!66931 c!47638) b!296266))

(assert (= (and d!66931 (not c!47638)) b!296258))

(assert (= (and b!296258 res!156140) b!296259))

(assert (= (and b!296259 (not res!156141)) b!296263))

(assert (= (and b!296263 (not res!156142)) b!296262))

(declare-fun m!309305 () Bool)

(assert (=> b!296262 m!309305))

(declare-fun m!309307 () Bool)

(assert (=> d!66931 m!309307))

(assert (=> d!66931 m!309235))

(assert (=> b!296259 m!309305))

(assert (=> b!296263 m!309305))

(declare-fun m!309309 () Bool)

(assert (=> b!296260 m!309309))

(assert (=> b!296260 m!309309))

(declare-fun m!309311 () Bool)

(assert (=> b!296260 m!309311))

(assert (=> b!296164 d!66931))

(declare-fun b!296271 () Bool)

(declare-fun e!187270 () Bool)

(declare-fun e!187271 () Bool)

(assert (=> b!296271 (= e!187270 e!187271)))

(declare-fun res!156147 () Bool)

(declare-fun lt!147150 () SeekEntryResult!2269)

(assert (=> b!296271 (= res!156147 (and ((_ is Intermediate!2269) lt!147150) (not (undefined!3081 lt!147150)) (bvslt (x!29422 lt!147150) #b01111111111111111111111111111110) (bvsge (x!29422 lt!147150) #b00000000000000000000000000000000) (bvsge (x!29422 lt!147150) #b00000000000000000000000000000000)))))

(assert (=> b!296271 (=> (not res!156147) (not e!187271))))

(declare-fun b!296272 () Bool)

(assert (=> b!296272 (and (bvsge (index!11248 lt!147150) #b00000000000000000000000000000000) (bvslt (index!11248 lt!147150) (size!7461 a!3312)))))

(declare-fun res!156148 () Bool)

(assert (=> b!296272 (= res!156148 (= (select (arr!7109 a!3312) (index!11248 lt!147150)) k0!2524))))

(declare-fun e!187272 () Bool)

(assert (=> b!296272 (=> res!156148 e!187272)))

(assert (=> b!296272 (= e!187271 e!187272)))

(declare-fun b!296274 () Bool)

(declare-fun e!187274 () SeekEntryResult!2269)

(assert (=> b!296274 (= e!187274 (Intermediate!2269 false lt!147100 #b00000000000000000000000000000000))))

(declare-fun b!296275 () Bool)

(assert (=> b!296275 (and (bvsge (index!11248 lt!147150) #b00000000000000000000000000000000) (bvslt (index!11248 lt!147150) (size!7461 a!3312)))))

(assert (=> b!296275 (= e!187272 (= (select (arr!7109 a!3312) (index!11248 lt!147150)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!296276 () Bool)

(assert (=> b!296276 (and (bvsge (index!11248 lt!147150) #b00000000000000000000000000000000) (bvslt (index!11248 lt!147150) (size!7461 a!3312)))))

(declare-fun res!156149 () Bool)

(assert (=> b!296276 (= res!156149 (= (select (arr!7109 a!3312) (index!11248 lt!147150)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!296276 (=> res!156149 e!187272)))

(declare-fun b!296277 () Bool)

(declare-fun e!187273 () SeekEntryResult!2269)

(assert (=> b!296277 (= e!187273 (Intermediate!2269 true lt!147100 #b00000000000000000000000000000000))))

(declare-fun b!296278 () Bool)

(assert (=> b!296278 (= e!187273 e!187274)))

(declare-fun c!47640 () Bool)

(declare-fun lt!147151 () (_ BitVec 64))

(assert (=> b!296278 (= c!47640 (or (= lt!147151 k0!2524) (= (bvadd lt!147151 lt!147151) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!296279 () Bool)

(assert (=> b!296279 (= e!187270 (bvsge (x!29422 lt!147150) #b01111111111111111111111111111110))))

(declare-fun d!66947 () Bool)

(assert (=> d!66947 e!187270))

(declare-fun c!47641 () Bool)

(assert (=> d!66947 (= c!47641 (and ((_ is Intermediate!2269) lt!147150) (undefined!3081 lt!147150)))))

(assert (=> d!66947 (= lt!147150 e!187273)))

(declare-fun c!47642 () Bool)

(assert (=> d!66947 (= c!47642 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!66947 (= lt!147151 (select (arr!7109 a!3312) lt!147100))))

(assert (=> d!66947 (validMask!0 mask!3809)))

(assert (=> d!66947 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!147100 k0!2524 a!3312 mask!3809) lt!147150)))

(declare-fun b!296273 () Bool)

(assert (=> b!296273 (= e!187274 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!147100 #b00000000000000000000000000000000 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (= (and d!66947 c!47642) b!296277))

(assert (= (and d!66947 (not c!47642)) b!296278))

(assert (= (and b!296278 c!47640) b!296274))

(assert (= (and b!296278 (not c!47640)) b!296273))

(assert (= (and d!66947 c!47641) b!296279))

(assert (= (and d!66947 (not c!47641)) b!296271))

(assert (= (and b!296271 res!156147) b!296272))

(assert (= (and b!296272 (not res!156148)) b!296276))

(assert (= (and b!296276 (not res!156149)) b!296275))

(declare-fun m!309313 () Bool)

(assert (=> b!296275 m!309313))

(declare-fun m!309315 () Bool)

(assert (=> d!66947 m!309315))

(assert (=> d!66947 m!309235))

(assert (=> b!296272 m!309313))

(assert (=> b!296276 m!309313))

(assert (=> b!296273 m!309309))

(assert (=> b!296273 m!309309))

(declare-fun m!309317 () Bool)

(assert (=> b!296273 m!309317))

(assert (=> b!296164 d!66947))

(declare-fun d!66949 () Bool)

(declare-fun lt!147160 () (_ BitVec 32))

(declare-fun lt!147159 () (_ BitVec 32))

(assert (=> d!66949 (= lt!147160 (bvmul (bvxor lt!147159 (bvlshr lt!147159 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!66949 (= lt!147159 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!66949 (and (bvsge mask!3809 #b00000000000000000000000000000000) (let ((res!156154 (let ((h!5312 ((_ extract 31 0) (bvand (bvxor k0!2524 (bvlshr k0!2524 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!29425 (bvmul (bvxor h!5312 (bvlshr h!5312 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!29425 (bvlshr x!29425 #b00000000000000000000000000001101)) mask!3809))))) (and (bvslt res!156154 (bvadd mask!3809 #b00000000000000000000000000000001)) (bvsge res!156154 #b00000000000000000000000000000000))))))

(assert (=> d!66949 (= (toIndex!0 k0!2524 mask!3809) (bvand (bvxor lt!147160 (bvlshr lt!147160 #b00000000000000000000000000001101)) mask!3809))))

(assert (=> b!296164 d!66949))

(declare-fun d!66955 () Bool)

(assert (=> d!66955 (= (validKeyInArray!0 k0!2524) (and (not (= k0!2524 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2524 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!296162 d!66955))

(declare-fun b!296354 () Bool)

(declare-fun e!187319 () SeekEntryResult!2269)

(assert (=> b!296354 (= e!187319 Undefined!2269)))

(declare-fun b!296355 () Bool)

(declare-fun e!187320 () SeekEntryResult!2269)

(declare-fun lt!147189 () SeekEntryResult!2269)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!14998 (_ BitVec 32)) SeekEntryResult!2269)

(assert (=> b!296355 (= e!187320 (seekKeyOrZeroReturnVacant!0 (x!29422 lt!147189) (index!11248 lt!147189) (index!11248 lt!147189) k0!2524 a!3312 mask!3809))))

(declare-fun b!296356 () Bool)

(assert (=> b!296356 (= e!187320 (MissingZero!2269 (index!11248 lt!147189)))))

(declare-fun b!296357 () Bool)

(declare-fun e!187321 () SeekEntryResult!2269)

(assert (=> b!296357 (= e!187321 (Found!2269 (index!11248 lt!147189)))))

(declare-fun d!66957 () Bool)

(declare-fun lt!147190 () SeekEntryResult!2269)

(assert (=> d!66957 (and (or ((_ is Undefined!2269) lt!147190) (not ((_ is Found!2269) lt!147190)) (and (bvsge (index!11247 lt!147190) #b00000000000000000000000000000000) (bvslt (index!11247 lt!147190) (size!7461 a!3312)))) (or ((_ is Undefined!2269) lt!147190) ((_ is Found!2269) lt!147190) (not ((_ is MissingZero!2269) lt!147190)) (and (bvsge (index!11246 lt!147190) #b00000000000000000000000000000000) (bvslt (index!11246 lt!147190) (size!7461 a!3312)))) (or ((_ is Undefined!2269) lt!147190) ((_ is Found!2269) lt!147190) ((_ is MissingZero!2269) lt!147190) (not ((_ is MissingVacant!2269) lt!147190)) (and (bvsge (index!11249 lt!147190) #b00000000000000000000000000000000) (bvslt (index!11249 lt!147190) (size!7461 a!3312)))) (or ((_ is Undefined!2269) lt!147190) (ite ((_ is Found!2269) lt!147190) (= (select (arr!7109 a!3312) (index!11247 lt!147190)) k0!2524) (ite ((_ is MissingZero!2269) lt!147190) (= (select (arr!7109 a!3312) (index!11246 lt!147190)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!2269) lt!147190) (= (select (arr!7109 a!3312) (index!11249 lt!147190)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!66957 (= lt!147190 e!187319)))

(declare-fun c!47671 () Bool)

(assert (=> d!66957 (= c!47671 (and ((_ is Intermediate!2269) lt!147189) (undefined!3081 lt!147189)))))

(assert (=> d!66957 (= lt!147189 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2524 mask!3809) k0!2524 a!3312 mask!3809))))

(assert (=> d!66957 (validMask!0 mask!3809)))

(assert (=> d!66957 (= (seekEntryOrOpen!0 k0!2524 a!3312 mask!3809) lt!147190)))

(declare-fun b!296358 () Bool)

(assert (=> b!296358 (= e!187319 e!187321)))

(declare-fun lt!147188 () (_ BitVec 64))

(assert (=> b!296358 (= lt!147188 (select (arr!7109 a!3312) (index!11248 lt!147189)))))

(declare-fun c!47670 () Bool)

(assert (=> b!296358 (= c!47670 (= lt!147188 k0!2524))))

(declare-fun b!296359 () Bool)

(declare-fun c!47669 () Bool)

(assert (=> b!296359 (= c!47669 (= lt!147188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!296359 (= e!187321 e!187320)))

(assert (= (and d!66957 c!47671) b!296354))

(assert (= (and d!66957 (not c!47671)) b!296358))

(assert (= (and b!296358 c!47670) b!296357))

(assert (= (and b!296358 (not c!47670)) b!296359))

(assert (= (and b!296359 c!47669) b!296356))

(assert (= (and b!296359 (not c!47669)) b!296355))

(declare-fun m!309357 () Bool)

(assert (=> b!296355 m!309357))

(assert (=> d!66957 m!309251))

(declare-fun m!309359 () Bool)

(assert (=> d!66957 m!309359))

(declare-fun m!309361 () Bool)

(assert (=> d!66957 m!309361))

(assert (=> d!66957 m!309251))

(declare-fun m!309363 () Bool)

(assert (=> d!66957 m!309363))

(declare-fun m!309365 () Bool)

(assert (=> d!66957 m!309365))

(assert (=> d!66957 m!309235))

(declare-fun m!309367 () Bool)

(assert (=> b!296358 m!309367))

(assert (=> b!296161 d!66957))

(check-sat (not d!66947) (not b!296198) (not bm!25731) (not b!296207) (not b!296199) (not b!296273) (not d!66957) (not d!66931) (not b!296355) (not b!296260))
(check-sat)
