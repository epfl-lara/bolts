; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!25564 () Bool)

(assert start!25564)

(declare-fun res!129748 () Bool)

(declare-fun e!171841 () Bool)

(assert (=> start!25564 (=> (not res!129748) (not e!171841))))

(declare-fun mask!4002 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!25564 (= res!129748 (validMask!0 mask!4002))))

(assert (=> start!25564 e!171841))

(assert (=> start!25564 true))

(declare-datatypes ((array!12775 0))(
  ( (array!12776 (arr!6043 (Array (_ BitVec 32) (_ BitVec 64))) (size!6395 (_ BitVec 32))) )
))
(declare-fun a!3436 () array!12775)

(declare-fun array_inv!3997 (array!12775) Bool)

(assert (=> start!25564 (array_inv!3997 a!3436)))

(declare-fun b!265339 () Bool)

(declare-fun res!129752 () Bool)

(declare-fun e!171838 () Bool)

(assert (=> b!265339 (=> (not res!129752) (not e!171838))))

(declare-datatypes ((List!3878 0))(
  ( (Nil!3875) (Cons!3874 (h!4541 (_ BitVec 64)) (t!8968 List!3878)) )
))
(declare-fun noDuplicate!107 (List!3878) Bool)

(assert (=> b!265339 (= res!129752 (noDuplicate!107 Nil!3875))))

(declare-fun b!265340 () Bool)

(declare-fun e!171839 () Bool)

(declare-fun contains!1918 (List!3878 (_ BitVec 64)) Bool)

(assert (=> b!265340 (= e!171839 (contains!1918 Nil!3875 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265341 () Bool)

(declare-fun res!129747 () Bool)

(assert (=> b!265341 (=> (not res!129747) (not e!171841))))

(declare-fun k!2698 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!265341 (= res!129747 (not (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000)))))

(declare-fun b!265342 () Bool)

(declare-fun res!129745 () Bool)

(assert (=> b!265342 (=> (not res!129745) (not e!171838))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12775 (_ BitVec 32)) Bool)

(assert (=> b!265342 (= res!129745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002))))

(declare-fun b!265343 () Bool)

(assert (=> b!265343 (= e!171838 e!171839)))

(declare-fun res!129751 () Bool)

(assert (=> b!265343 (=> res!129751 e!171839)))

(assert (=> b!265343 (= res!129751 (contains!1918 Nil!3875 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265344 () Bool)

(declare-fun res!129749 () Bool)

(assert (=> b!265344 (=> (not res!129749) (not e!171841))))

(declare-fun i!1355 () (_ BitVec 32))

(assert (=> b!265344 (= res!129749 (and (= (size!6395 a!3436) (bvadd #b00000000000000000000000000000001 mask!4002)) (bvsge i!1355 #b00000000000000000000000000000000) (bvslt i!1355 (size!6395 a!3436))))))

(declare-fun b!265345 () Bool)

(assert (=> b!265345 (= e!171841 e!171838)))

(declare-fun res!129746 () Bool)

(assert (=> b!265345 (=> (not res!129746) (not e!171838))))

(declare-datatypes ((SeekEntryResult!1245 0))(
  ( (MissingZero!1245 (index!7150 (_ BitVec 32))) (Found!1245 (index!7151 (_ BitVec 32))) (Intermediate!1245 (undefined!2057 Bool) (index!7152 (_ BitVec 32)) (x!25442 (_ BitVec 32))) (Undefined!1245) (MissingVacant!1245 (index!7153 (_ BitVec 32))) )
))
(declare-fun lt!134108 () SeekEntryResult!1245)

(assert (=> b!265345 (= res!129746 (or (= lt!134108 (MissingZero!1245 i!1355)) (= lt!134108 (MissingVacant!1245 i!1355))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12775 (_ BitVec 32)) SeekEntryResult!1245)

(assert (=> b!265345 (= lt!134108 (seekEntryOrOpen!0 k!2698 a!3436 mask!4002))))

(declare-fun b!265346 () Bool)

(declare-fun res!129753 () Bool)

(assert (=> b!265346 (=> (not res!129753) (not e!171841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!265346 (= res!129753 (validKeyInArray!0 k!2698))))

(declare-fun b!265347 () Bool)

(declare-fun res!129750 () Bool)

(assert (=> b!265347 (=> (not res!129750) (not e!171838))))

(assert (=> b!265347 (= res!129750 (and (bvsle #b00000000000000000000000000000000 (size!6395 a!3436)) (bvslt (size!6395 a!3436) #b01111111111111111111111111111111)))))

(assert (= (and start!25564 res!129748) b!265344))

(assert (= (and b!265344 res!129749) b!265346))

(assert (= (and b!265346 res!129753) b!265341))

(assert (= (and b!265341 res!129747) b!265345))

(assert (= (and b!265345 res!129746) b!265342))

(assert (= (and b!265342 res!129745) b!265347))

(assert (= (and b!265347 res!129750) b!265339))

(assert (= (and b!265339 res!129752) b!265343))

(assert (= (and b!265343 (not res!129751)) b!265340))

(declare-fun m!282197 () Bool)

(assert (=> b!265342 m!282197))

(declare-fun m!282199 () Bool)

(assert (=> b!265345 m!282199))

(declare-fun m!282201 () Bool)

(assert (=> b!265343 m!282201))

(declare-fun m!282203 () Bool)

(assert (=> b!265339 m!282203))

(declare-fun m!282205 () Bool)

(assert (=> b!265340 m!282205))

(declare-fun m!282207 () Bool)

(assert (=> b!265346 m!282207))

(declare-fun m!282209 () Bool)

(assert (=> b!265341 m!282209))

(declare-fun m!282211 () Bool)

(assert (=> start!25564 m!282211))

(declare-fun m!282213 () Bool)

(assert (=> start!25564 m!282213))

(push 1)

(assert (not b!265345))

(assert (not b!265341))

(assert (not b!265346))

(assert (not b!265343))

(assert (not b!265342))

(assert (not b!265339))

(assert (not b!265340))

(assert (not start!25564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64105 () Bool)

(declare-fun lt!134117 () Bool)

(declare-fun content!177 (List!3878) (Set (_ BitVec 64)))

(assert (=> d!64105 (= lt!134117 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!177 Nil!3875)))))

(declare-fun e!171877 () Bool)

(assert (=> d!64105 (= lt!134117 e!171877)))

(declare-fun res!129818 () Bool)

(assert (=> d!64105 (=> (not res!129818) (not e!171877))))

(assert (=> d!64105 (= res!129818 (is-Cons!3874 Nil!3875))))

(assert (=> d!64105 (= (contains!1918 Nil!3875 #b0000000000000000000000000000000000000000000000000000000000000000) lt!134117)))

(declare-fun b!265412 () Bool)

(declare-fun e!171876 () Bool)

(assert (=> b!265412 (= e!171877 e!171876)))

(declare-fun res!129819 () Bool)

(assert (=> b!265412 (=> res!129819 e!171876)))

(assert (=> b!265412 (= res!129819 (= (h!4541 Nil!3875) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265413 () Bool)

(assert (=> b!265413 (= e!171876 (contains!1918 (t!8968 Nil!3875) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64105 res!129818) b!265412))

(assert (= (and b!265412 (not res!129819)) b!265413))

(declare-fun m!282255 () Bool)

(assert (=> d!64105 m!282255))

(declare-fun m!282257 () Bool)

(assert (=> d!64105 m!282257))

(declare-fun m!282259 () Bool)

(assert (=> b!265413 m!282259))

(assert (=> b!265343 d!64105))

(declare-fun d!64111 () Bool)

(declare-fun lt!134118 () Bool)

(assert (=> d!64111 (= lt!134118 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!177 Nil!3875)))))

(declare-fun e!171879 () Bool)

(assert (=> d!64111 (= lt!134118 e!171879)))

(declare-fun res!129820 () Bool)

(assert (=> d!64111 (=> (not res!129820) (not e!171879))))

(assert (=> d!64111 (= res!129820 (is-Cons!3874 Nil!3875))))

(assert (=> d!64111 (= (contains!1918 Nil!3875 #b1000000000000000000000000000000000000000000000000000000000000000) lt!134118)))

(declare-fun b!265414 () Bool)

(declare-fun e!171878 () Bool)

(assert (=> b!265414 (= e!171879 e!171878)))

(declare-fun res!129821 () Bool)

(assert (=> b!265414 (=> res!129821 e!171878)))

(assert (=> b!265414 (= res!129821 (= (h!4541 Nil!3875) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!265415 () Bool)

(assert (=> b!265415 (= e!171878 (contains!1918 (t!8968 Nil!3875) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!64111 res!129820) b!265414))

(assert (= (and b!265414 (not res!129821)) b!265415))

(assert (=> d!64111 m!282255))

(declare-fun m!282261 () Bool)

(assert (=> d!64111 m!282261))

(declare-fun m!282263 () Bool)

(assert (=> b!265415 m!282263))

(assert (=> b!265340 d!64111))

(declare-fun lt!134138 () SeekEntryResult!1245)

(declare-fun b!265450 () Bool)

(declare-fun e!171906 () SeekEntryResult!1245)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12775 (_ BitVec 32)) SeekEntryResult!1245)

(assert (=> b!265450 (= e!171906 (seekKeyOrZeroReturnVacant!0 (x!25442 lt!134138) (index!7152 lt!134138) (index!7152 lt!134138) k!2698 a!3436 mask!4002))))

(declare-fun b!265451 () Bool)

(assert (=> b!265451 (= e!171906 (MissingZero!1245 (index!7152 lt!134138)))))

(declare-fun b!265452 () Bool)

(declare-fun e!171907 () SeekEntryResult!1245)

(assert (=> b!265452 (= e!171907 Undefined!1245)))

(declare-fun d!64113 () Bool)

(declare-fun lt!134136 () SeekEntryResult!1245)

(assert (=> d!64113 (and (or (is-Undefined!1245 lt!134136) (not (is-Found!1245 lt!134136)) (and (bvsge (index!7151 lt!134136) #b00000000000000000000000000000000) (bvslt (index!7151 lt!134136) (size!6395 a!3436)))) (or (is-Undefined!1245 lt!134136) (is-Found!1245 lt!134136) (not (is-MissingZero!1245 lt!134136)) (and (bvsge (index!7150 lt!134136) #b00000000000000000000000000000000) (bvslt (index!7150 lt!134136) (size!6395 a!3436)))) (or (is-Undefined!1245 lt!134136) (is-Found!1245 lt!134136) (is-MissingZero!1245 lt!134136) (not (is-MissingVacant!1245 lt!134136)) (and (bvsge (index!7153 lt!134136) #b00000000000000000000000000000000) (bvslt (index!7153 lt!134136) (size!6395 a!3436)))) (or (is-Undefined!1245 lt!134136) (ite (is-Found!1245 lt!134136) (= (select (arr!6043 a!3436) (index!7151 lt!134136)) k!2698) (ite (is-MissingZero!1245 lt!134136) (= (select (arr!6043 a!3436) (index!7150 lt!134136)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1245 lt!134136) (= (select (arr!6043 a!3436) (index!7153 lt!134136)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64113 (= lt!134136 e!171907)))

(declare-fun c!45358 () Bool)

(assert (=> d!64113 (= c!45358 (and (is-Intermediate!1245 lt!134138) (undefined!2057 lt!134138)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12775 (_ BitVec 32)) SeekEntryResult!1245)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64113 (= lt!134138 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2698 mask!4002) k!2698 a!3436 mask!4002))))

(assert (=> d!64113 (validMask!0 mask!4002)))

(assert (=> d!64113 (= (seekEntryOrOpen!0 k!2698 a!3436 mask!4002) lt!134136)))

(declare-fun b!265453 () Bool)

(declare-fun e!171905 () SeekEntryResult!1245)

(assert (=> b!265453 (= e!171907 e!171905)))

(declare-fun lt!134137 () (_ BitVec 64))

(assert (=> b!265453 (= lt!134137 (select (arr!6043 a!3436) (index!7152 lt!134138)))))

(declare-fun c!45359 () Bool)

(assert (=> b!265453 (= c!45359 (= lt!134137 k!2698))))

(declare-fun b!265454 () Bool)

(assert (=> b!265454 (= e!171905 (Found!1245 (index!7152 lt!134138)))))

(declare-fun b!265455 () Bool)

(declare-fun c!45357 () Bool)

(assert (=> b!265455 (= c!45357 (= lt!134137 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!265455 (= e!171905 e!171906)))

(assert (= (and d!64113 c!45358) b!265452))

(assert (= (and d!64113 (not c!45358)) b!265453))

(assert (= (and b!265453 c!45359) b!265454))

(assert (= (and b!265453 (not c!45359)) b!265455))

(assert (= (and b!265455 c!45357) b!265451))

(assert (= (and b!265455 (not c!45357)) b!265450))

(declare-fun m!282287 () Bool)

(assert (=> b!265450 m!282287))

(assert (=> d!64113 m!282211))

(declare-fun m!282289 () Bool)

(assert (=> d!64113 m!282289))

(declare-fun m!282291 () Bool)

(assert (=> d!64113 m!282291))

(declare-fun m!282293 () Bool)

(assert (=> d!64113 m!282293))

(assert (=> d!64113 m!282289))

(declare-fun m!282295 () Bool)

(assert (=> d!64113 m!282295))

(declare-fun m!282297 () Bool)

(assert (=> d!64113 m!282297))

(declare-fun m!282299 () Bool)

(assert (=> b!265453 m!282299))

(assert (=> b!265345 d!64113))

(declare-fun d!64129 () Bool)

(declare-fun res!129850 () Bool)

(declare-fun e!171920 () Bool)

(assert (=> d!64129 (=> res!129850 e!171920)))

(assert (=> d!64129 (= res!129850 (is-Nil!3875 Nil!3875))))

(assert (=> d!64129 (= (noDuplicate!107 Nil!3875) e!171920)))

(declare-fun b!265468 () Bool)

(declare-fun e!171921 () Bool)

(assert (=> b!265468 (= e!171920 e!171921)))

(declare-fun res!129851 () Bool)

(assert (=> b!265468 (=> (not res!129851) (not e!171921))))

(assert (=> b!265468 (= res!129851 (not (contains!1918 (t!8968 Nil!3875) (h!4541 Nil!3875))))))

(declare-fun b!265469 () Bool)

(assert (=> b!265469 (= e!171921 (noDuplicate!107 (t!8968 Nil!3875)))))

(assert (= (and d!64129 (not res!129850)) b!265468))

(assert (= (and b!265468 res!129851) b!265469))

(declare-fun m!282305 () Bool)

(assert (=> b!265468 m!282305))

(declare-fun m!282307 () Bool)

(assert (=> b!265469 m!282307))

(assert (=> b!265339 d!64129))

(declare-fun d!64135 () Bool)

(declare-fun res!129858 () Bool)

(declare-fun e!171928 () Bool)

(assert (=> d!64135 (=> res!129858 e!171928)))

(assert (=> d!64135 (= res!129858 (= (select (arr!6043 a!3436) #b00000000000000000000000000000000) k!2698))))

(assert (=> d!64135 (= (arrayContainsKey!0 a!3436 k!2698 #b00000000000000000000000000000000) e!171928)))

(declare-fun b!265476 () Bool)

(declare-fun e!171929 () Bool)

(assert (=> b!265476 (= e!171928 e!171929)))

(declare-fun res!129859 () Bool)

(assert (=> b!265476 (=> (not res!129859) (not e!171929))))

(assert (=> b!265476 (= res!129859 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6395 a!3436)))))

(declare-fun b!265477 () Bool)

(assert (=> b!265477 (= e!171929 (arrayContainsKey!0 a!3436 k!2698 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64135 (not res!129858)) b!265476))

(assert (= (and b!265476 res!129859) b!265477))

(declare-fun m!282313 () Bool)

(assert (=> d!64135 m!282313))

(declare-fun m!282315 () Bool)

(assert (=> b!265477 m!282315))

(assert (=> b!265341 d!64135))

(declare-fun d!64139 () Bool)

(assert (=> d!64139 (= (validKeyInArray!0 k!2698) (and (not (= k!2698 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2698 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!265346 d!64139))

(declare-fun bm!25334 () Bool)

(declare-fun call!25337 () Bool)

(assert (=> bm!25334 (= call!25337 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3436 mask!4002))))

(declare-fun b!265504 () Bool)

(declare-fun e!171951 () Bool)

(declare-fun e!171953 () Bool)

(assert (=> b!265504 (= e!171951 e!171953)))

(declare-fun lt!134159 () (_ BitVec 64))

(assert (=> b!265504 (= lt!134159 (select (arr!6043 a!3436) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8264 0))(
  ( (Unit!8265) )
))
(declare-fun lt!134160 () Unit!8264)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12775 (_ BitVec 64) (_ BitVec 32)) Unit!8264)

(assert (=> b!265504 (= lt!134160 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3436 lt!134159 #b00000000000000000000000000000000))))

(assert (=> b!265504 (arrayContainsKey!0 a!3436 lt!134159 #b00000000000000000000000000000000)))

(declare-fun lt!134161 () Unit!8264)

(assert (=> b!265504 (= lt!134161 lt!134160)))

(declare-fun res!129877 () Bool)

(assert (=> b!265504 (= res!129877 (= (seekEntryOrOpen!0 (select (arr!6043 a!3436) #b00000000000000000000000000000000) a!3436 mask!4002) (Found!1245 #b00000000000000000000000000000000)))))

(assert (=> b!265504 (=> (not res!129877) (not e!171953))))

(declare-fun b!265505 () Bool)

(assert (=> b!265505 (= e!171951 call!25337)))

(declare-fun b!265506 () Bool)

(declare-fun e!171952 () Bool)

(assert (=> b!265506 (= e!171952 e!171951)))

(declare-fun c!45365 () Bool)

(assert (=> b!265506 (= c!45365 (validKeyInArray!0 (select (arr!6043 a!3436) #b00000000000000000000000000000000)))))

(declare-fun b!265507 () Bool)

(assert (=> b!265507 (= e!171953 call!25337)))

(declare-fun d!64141 () Bool)

(declare-fun res!129876 () Bool)

(assert (=> d!64141 (=> res!129876 e!171952)))

(assert (=> d!64141 (= res!129876 (bvsge #b00000000000000000000000000000000 (size!6395 a!3436)))))

(assert (=> d!64141 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3436 mask!4002) e!171952)))

(assert (= (and d!64141 (not res!129876)) b!265506))

(assert (= (and b!265506 c!45365) b!265504))

(assert (= (and b!265506 (not c!45365)) b!265505))

(assert (= (and b!265504 res!129877) b!265507))

(assert (= (or b!265507 b!265505) bm!25334))

(declare-fun m!282333 () Bool)

(assert (=> bm!25334 m!282333))

(assert (=> b!265504 m!282313))

(declare-fun m!282335 () Bool)

(assert (=> b!265504 m!282335))

(declare-fun m!282337 () Bool)

(assert (=> b!265504 m!282337))

(assert (=> b!265504 m!282313))

(declare-fun m!282339 () Bool)

(assert (=> b!265504 m!282339))

(assert (=> b!265506 m!282313))

(assert (=> b!265506 m!282313))

(declare-fun m!282341 () Bool)

(assert (=> b!265506 m!282341))

(assert (=> b!265342 d!64141))

(declare-fun d!64147 () Bool)

(assert (=> d!64147 (= (validMask!0 mask!4002) (and (or (= mask!4002 #b00000000000000000000000000000111) (= mask!4002 #b00000000000000000000000000001111) (= mask!4002 #b00000000000000000000000000011111) (= mask!4002 #b00000000000000000000000000111111) (= mask!4002 #b00000000000000000000000001111111) (= mask!4002 #b00000000000000000000000011111111) (= mask!4002 #b00000000000000000000000111111111) (= mask!4002 #b00000000000000000000001111111111) (= mask!4002 #b00000000000000000000011111111111) (= mask!4002 #b00000000000000000000111111111111) (= mask!4002 #b00000000000000000001111111111111) (= mask!4002 #b00000000000000000011111111111111) (= mask!4002 #b00000000000000000111111111111111) (= mask!4002 #b00000000000000001111111111111111) (= mask!4002 #b00000000000000011111111111111111) (= mask!4002 #b00000000000000111111111111111111) (= mask!4002 #b00000000000001111111111111111111) (= mask!4002 #b00000000000011111111111111111111) (= mask!4002 #b00000000000111111111111111111111) (= mask!4002 #b00000000001111111111111111111111) (= mask!4002 #b00000000011111111111111111111111) (= mask!4002 #b00000000111111111111111111111111) (= mask!4002 #b00000001111111111111111111111111) (= mask!4002 #b00000011111111111111111111111111) (= mask!4002 #b00000111111111111111111111111111) (= mask!4002 #b00001111111111111111111111111111) (= mask!4002 #b00011111111111111111111111111111) (= mask!4002 #b00111111111111111111111111111111)) (bvsle mask!4002 #b00111111111111111111111111111111)))))

(assert (=> start!25564 d!64147))

(declare-fun d!64151 () Bool)

(assert (=> d!64151 (= (array_inv!3997 a!3436) (bvsge (size!6395 a!3436) #b00000000000000000000000000000000))))

(assert (=> start!25564 d!64151))

(push 1)

(assert (not b!265504))

(assert (not d!64111))

(assert (not d!64113))

(assert (not b!265413))

(assert (not d!64105))

(assert (not b!265415))

(assert (not b!265469))

(assert (not b!265506))

(assert (not b!265450))

(assert (not b!265477))

(assert (not b!265468))

(assert (not bm!25334))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

