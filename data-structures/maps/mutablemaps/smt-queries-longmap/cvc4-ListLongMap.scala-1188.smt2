; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25520 () Bool)

(assert start!25520)

(declare-fun b!265188 () Bool)

(declare-fun e!171737 () Bool)

(declare-fun e!171738 () Bool)

(assert (=> b!265188 (= e!171737 e!171738)))

(declare-fun res!129670 () Bool)

(assert (=> b!265188 (=> (not res!129670) (not e!171738))))

(declare-datatypes ((SeekEntryResult!1244 0))(
  ( (MissingZero!1244 (index!7146 (_ BitVec 32))) (Found!1244 (index!7147 (_ BitVec 32))) (Intermediate!1244 (undefined!2056 Bool) (index!7148 (_ BitVec 32)) (x!25433 (_ BitVec 32))) (Undefined!1244) (MissingVacant!1244 (index!7149 (_ BitVec 32))) )
))
(declare-fun lt!134051 () SeekEntryResult!1244)

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265188 (= res!129670 (or (= lt!134051 (MissingZero!1244 i!1355)) (= lt!134051 (MissingVacant!1244 i!1355))))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-datatypes ((array!12770 0))(
  ( (array!12771 (arr!6042 (Array (_ BitVec 32) (_ BitVec 64))) (size!6394 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12770)

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12770 (_ BitVec 32)) SeekEntryResult!1244)

(assert (=> b!265188 (= lt!134051 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265189 () Bool)

(declare-datatypes ((List!3877 0))(
  ( (Nil!3874) (Cons!3873 (h!4540 (_ BitVec 64)) (t!8967 List!3877)) )
))
(declare-fun noDuplicate!106 (List!3877) Bool)

(assert (=> b!265189 (= e!171738 (not (noDuplicate!106 Nil!3874)))))

(declare-fun b!265190 () Bool)

(declare-fun res!129671 () Bool)

(assert (=> b!265190 (=> (not res!129671) (not e!171737))))

(assert (=> b!265190 (= res!129671 (and (= (size!6394 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6394 a!3436))))))

(declare-fun b!265191 () Bool)

(declare-fun res!129666 () Bool)

(assert (=> b!265191 (=> (not res!129666) (not e!171738))))

(assert (=> b!265191 (= res!129666 (and (bvsle #b00000000000000000000000000000000 (size!6394 a!3436)) (bvslt (size!6394 a!3436) #b01111111111111111111111111111111)))))

(declare-fun b!265192 () Bool)

(declare-fun res!129667 () Bool)

(assert (=> b!265192 (=> (not res!129667) (not e!171737))))

(declare-fun arrayContainsKey!0 (array!12770 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265192 (= res!129667 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265193 () Bool)

(declare-fun res!129668 () Bool)

(assert (=> b!265193 (=> (not res!129668) (not e!171737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265193 (= res!129668 (validKeyInArray!0 k!2698))))

(declare-fun b!265194 () Bool)

(declare-fun res!129672 () Bool)

(assert (=> b!265194 (=> (not res!129672) (not e!171738))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12770 (_ BitVec 32)) Bool)

(assert (=> b!265194 (= res!129672 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun res!129669 () Bool)

(assert (=> start!25520 (=> (not res!129669) (not e!171737))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25520 (= res!129669 (validMask!0 mask!4002))))

(assert (=> start!25520 e!171737))

(assert (=> start!25520 true))

(declare-fun array_inv!3996 (array!12770) Bool)

(assert (=> start!25520 (array_inv!3996 a!3436)))

(assert (= (and start!25520 res!129669) b!265190))

(assert (= (and b!265190 res!129671) b!265193))

(assert (= (and b!265193 res!129668) b!265192))

(assert (= (and b!265192 res!129667) b!265188))

(assert (= (and b!265188 res!129670) b!265194))

(assert (= (and b!265194 res!129672) b!265191))

(assert (= (and b!265191 res!129666) b!265189))

(declare-fun m!282087 () Bool)

(assert (=> b!265188 m!282087))

(declare-fun m!282089 () Bool)

(assert (=> b!265192 m!282089))

(declare-fun m!282091 () Bool)

(assert (=> b!265189 m!282091))

(declare-fun m!282093 () Bool)

(assert (=> start!25520 m!282093))

(declare-fun m!282095 () Bool)

(assert (=> start!25520 m!282095))

(declare-fun m!282097 () Bool)

(assert (=> b!265194 m!282097))

(declare-fun m!282099 () Bool)

(assert (=> b!265193 m!282099))

(push 1)

(assert (not start!25520))

(assert (not b!265189))

(assert (not b!265192))

(assert (not b!265188))

(assert (not b!265194))

(assert (not b!265193))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!265231 () Bool)

(declare-fun c!45329 () Bool)

(declare-fun lt!134073 () (_ BitVec 64))

(assert (=> b!265231 (= c!45329 (= lt!134073 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!171761 () SeekEntryResult!1244)

(declare-fun e!171762 () SeekEntryResult!1244)

(assert (=> b!265231 (= e!171761 e!171762)))

(declare-fun b!265232 () Bool)

(declare-fun lt!134074 () SeekEntryResult!1244)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12770 (_ BitVec 32)) SeekEntryResult!1244)

(assert (=> b!265232 (= e!171762 (seekKeyOrZeroReturnVacant!0 (x!25433 lt!134074) (index!7148 lt!134074) (index!7148 lt!134074) k!2698 a!3436 mask!4002))))

(declare-fun b!265233 () Bool)

(declare-fun e!171763 () SeekEntryResult!1244)

(assert (=> b!265233 (= e!171763 Undefined!1244)))

(declare-fun b!265234 () Bool)

(assert (=> b!265234 (= e!171762 (MissingZero!1244 (index!7148 lt!134074)))))

(declare-fun b!265235 () Bool)

(assert (=> b!265235 (= e!171761 (Found!1244 (index!7148 lt!134074)))))

(declare-fun b!265236 () Bool)

(assert (=> b!265236 (= e!171763 e!171761)))

(assert (=> b!265236 (= lt!134073 (select (arr!6042 a!3436) (index!7148 lt!134074)))))

(declare-fun c!45328 () Bool)

(assert (=> b!265236 (= c!45328 (= lt!134073 k!2698))))

(declare-fun d!64063 () Bool)

(declare-fun lt!134075 () SeekEntryResult!1244)

(assert (=> d!64063 (and (or (is-Undefined!1244 lt!134075) (not (is-Found!1244 lt!134075)) (and (bvsge (index!7147 lt!134075) #b00000000000000000000000000000000) (bvslt (index!7147 lt!134075) (size!6394 a!3436)))) (or (is-Undefined!1244 lt!134075) (is-Found!1244 lt!134075) (not (is-MissingZero!1244 lt!134075)) (and (bvsge (index!7146 lt!134075) #b00000000000000000000000000000000) (bvslt (index!7146 lt!134075) (size!6394 a!3436)))) (or (is-Undefined!1244 lt!134075) (is-Found!1244 lt!134075) (is-MissingZero!1244 lt!134075) (not (is-MissingVacant!1244 lt!134075)) (and (bvsge (index!7149 lt!134075) #b00000000000000000000000000000000) (bvslt (index!7149 lt!134075) (size!6394 a!3436)))) (or (is-Undefined!1244 lt!134075) (ite (is-Found!1244 lt!134075) (= (select (arr!6042 a!3436) (index!7147 lt!134075)) k!2698) (ite (is-MissingZero!1244 lt!134075) (= (select (arr!6042 a!3436) (index!7146 lt!134075)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1244 lt!134075) (= (select (arr!6042 a!3436) (index!7149 lt!134075)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64063 (= lt!134075 e!171763)))

(declare-fun c!45327 () Bool)

(assert (=> d!64063 (= c!45327 (and (is-Intermediate!1244 lt!134074) (undefined!2056 lt!134074)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12770 (_ BitVec 32)) SeekEntryResult!1244)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64063 (= lt!134074 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2698 mask!4002) k!2698 a!3436 mask!4002))))

(assert (=> d!64063 (validMask!0 mask!4002)))

(assert (=> d!64063 (= (seekEntryOrOpen!0 k!2698 a!3436 mask!4002) lt!134075)))

(assert (= (and d!64063 c!45327) b!265233))

(assert (= (and d!64063 (not c!45327)) b!265236))

(assert (= (and b!265236 c!45328) b!265235))

(assert (= (and b!265236 (not c!45328)) b!265231))

(assert (= (and b!265231 c!45329) b!265234))

(assert (= (and b!265231 (not c!45329)) b!265232))

(declare-fun m!282113 () Bool)

(assert (=> b!265232 m!282113))

(declare-fun m!282115 () Bool)

(assert (=> b!265236 m!282115))

(declare-fun m!282117 () Bool)

(assert (=> d!64063 m!282117))

(declare-fun m!282119 () Bool)

(assert (=> d!64063 m!282119))

(declare-fun m!282121 () Bool)

(assert (=> d!64063 m!282121))

(assert (=> d!64063 m!282119))

(declare-fun m!282123 () Bool)

(assert (=> d!64063 m!282123))

(assert (=> d!64063 m!282093))

(declare-fun m!282125 () Bool)

(assert (=> d!64063 m!282125))

(assert (=> b!265188 d!64063))

(declare-fun d!64073 () Bool)

(assert (=> d!64073 (= (validMask!0 mask!4002) (and (or (= mask!4002 #b00000000000000000000000000000111) (= mask!4002 #b00000000000000000000000000001111) (= mask!4002 #b00000000000000000000000000011111) (= mask!4002 #b00000000000000000000000000111111) (= mask!4002 #b00000000000000000000000001111111) (= mask!4002 #b00000000000000000000000011111111) (= mask!4002 #b00000000000000000000000111111111) (= mask!4002 #b00000000000000000000001111111111) (= mask!4002 #b00000000000000000000011111111111) (= mask!4002 #b00000000000000000000111111111111) (= mask!4002 #b00000000000000000001111111111111) (= mask!4002 #b00000000000000000011111111111111) (= mask!4002 #b00000000000000000111111111111111) (= mask!4002 #b00000000000000001111111111111111) (= mask!4002 #b00000000000000011111111111111111) (= mask!4002 #b00000000000000111111111111111111) (= mask!4002 #b00000000000001111111111111111111) (= mask!4002 #b00000000000011111111111111111111) (= mask!4002 #b00000000000111111111111111111111) (= mask!4002 #b00000000001111111111111111111111) (= mask!4002 #b00000000011111111111111111111111) (= mask!4002 #b00000000111111111111111111111111) (= mask!4002 #b00000001111111111111111111111111) (= mask!4002 #b00000011111111111111111111111111) (= mask!4002 #b00000111111111111111111111111111) (= mask!4002 #b00001111111111111111111111111111) (= mask!4002 #b00011111111111111111111111111111) (= mask!4002 #b00111111111111111111111111111111)) (bvsle mask!4002 #b00111111111111111111111111111111)))))

(assert (=> start!25520 d!64073))

(declare-fun d!64081 () Bool)

(assert (=> d!64081 (= (array_inv!3996 a!3436) (bvsge (size!6394 a!3436) #b00000000000000000000000000000000))))

(assert (=> start!25520 d!64081))

(declare-fun b!265282 () Bool)

(declare-fun e!171795 () Bool)

(declare-fun call!25325 () Bool)

(assert (=> b!265282 (= e!171795 call!25325)))

(declare-fun b!265283 () Bool)

(declare-fun e!171796 () Bool)

(assert (=> b!265283 (= e!171796 e!171795)))

(declare-fun lt!134096 () (_ BitVec 64))

(assert (=> b!265283 (= lt!134096 (select (arr!6042 a!3436) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8258 0))(
  ( (Unit!8259) )
))
(declare-fun lt!134095 () Unit!8258)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12770 (_ BitVec 64) (_ BitVec 32)) Unit!8258)

(assert (=> b!265283 (= lt!134095 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3436 lt!134096 #b00000000000000000000000000000000))))

(assert (=> b!265283 (arrayContainsKey!0 a!3436 lt!134096 #b00000000000000000000000000000000)))

(declare-fun lt!134094 () Unit!8258)

(assert (=> b!265283 (= lt!134094 lt!134095)))

(declare-fun res!129696 () Bool)

(assert (=> b!265283 (= res!129696 (= (seekEntryOrOpen!0 (select (arr!6042 a!3436) #b00000000000000000000000000000000) a!3436 mask!4002) (Found!1244 #b00000000000000000000000000000000)))))

(assert (=> b!265283 (=> (not res!129696) (not e!171795))))

(declare-fun bm!25322 () Bool)

(assert (=> bm!25322 (= call!25325 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3436 mask!4002))))

(declare-fun b!265284 () Bool)

(declare-fun e!171794 () Bool)

(assert (=> b!265284 (= e!171794 e!171796)))

(declare-fun c!45344 () Bool)

(assert (=> b!265284 (= c!45344 (validKeyInArray!0 (select (arr!6042 a!3436) #b00000000000000000000000000000000)))))

(declare-fun b!265281 () Bool)

(assert (=> b!265281 (= e!171796 call!25325)))

(declare-fun d!64083 () Bool)

(declare-fun res!129695 () Bool)

(assert (=> d!64083 (=> res!129695 e!171794)))

(assert (=> d!64083 (= res!129695 (bvsge #b00000000000000000000000000000000 (size!6394 a!3436)))))

(assert (=> d!64083 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002) e!171794)))

(assert (= (and d!64083 (not res!129695)) b!265284))

(assert (= (and b!265284 c!45344) b!265283))

(assert (= (and b!265284 (not c!45344)) b!265281))

(assert (= (and b!265283 res!129696) b!265282))

(assert (= (or b!265282 b!265281) bm!25322))

(declare-fun m!282163 () Bool)

(assert (=> b!265283 m!282163))

(declare-fun m!282165 () Bool)

(assert (=> b!265283 m!282165))

(declare-fun m!282167 () Bool)

(assert (=> b!265283 m!282167))

(assert (=> b!265283 m!282163))

(declare-fun m!282169 () Bool)

(assert (=> b!265283 m!282169))

(declare-fun m!282171 () Bool)

(assert (=> bm!25322 m!282171))

(assert (=> b!265284 m!282163))

(assert (=> b!265284 m!282163))

(declare-fun m!282173 () Bool)

(assert (=> b!265284 m!282173))

(assert (=> b!265194 d!64083))

(declare-fun d!64089 () Bool)

(declare-fun res!129707 () Bool)

(declare-fun e!171807 () Bool)

(assert (=> d!64089 (=> res!129707 e!171807)))

(assert (=> d!64089 (= res!129707 (is-Nil!3874 Nil!3874))))

(assert (=> d!64089 (= (noDuplicate!106 Nil!3874) e!171807)))

(declare-fun b!265295 () Bool)

(declare-fun e!171808 () Bool)

(assert (=> b!265295 (= e!171807 e!171808)))

(declare-fun res!129708 () Bool)

(assert (=> b!265295 (=> (not res!129708) (not e!171808))))

(declare-fun contains!1917 (List!3877 (_ BitVec 64)) Bool)

(assert (=> b!265295 (= res!129708 (not (contains!1917 (t!8967 Nil!3874) (h!4540 Nil!3874))))))

(declare-fun b!265296 () Bool)

(assert (=> b!265296 (= e!171808 (noDuplicate!106 (t!8967 Nil!3874)))))

(assert (= (and d!64089 (not res!129707)) b!265295))

(assert (= (and b!265295 res!129708) b!265296))

(declare-fun m!282177 () Bool)

(assert (=> b!265295 m!282177))

(declare-fun m!282179 () Bool)

(assert (=> b!265296 m!282179))

(assert (=> b!265189 d!64089))

(declare-fun d!64093 () Bool)

(declare-fun res!129719 () Bool)

(declare-fun e!171819 () Bool)

(assert (=> d!64093 (=> res!129719 e!171819)))

(assert (=> d!64093 (= res!129719 (= (select (arr!6042 a!3436) #b00000000000000000000000000000000) k!2698))))

(assert (=> d!64093 (= (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000) e!171819)))

(declare-fun b!265307 () Bool)

(declare-fun e!171820 () Bool)

(assert (=> b!265307 (= e!171819 e!171820)))

(declare-fun res!129720 () Bool)

(assert (=> b!265307 (=> (not res!129720) (not e!171820))))

(assert (=> b!265307 (= res!129720 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6394 a!3436)))))

(declare-fun b!265308 () Bool)

(assert (=> b!265308 (= e!171820 (arrayContainsKey!0 a!3436 k!2698 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64093 (not res!129719)) b!265307))

(assert (= (and b!265307 res!129720) b!265308))

(assert (=> d!64093 m!282163))

(declare-fun m!282185 () Bool)

(assert (=> b!265308 m!282185))

(assert (=> b!265192 d!64093))

(declare-fun d!64099 () Bool)

(assert (=> d!64099 (= (validKeyInArray!0 k!2698) (and (not (= k!2698 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2698 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!265193 d!64099))

(push 1)

