; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46292 () Bool)

(assert start!46292)

(declare-fun b!512516 () Bool)

(declare-fun e!299279 () Bool)

(declare-datatypes ((SeekEntryResult!4301 0))(
  ( (MissingZero!4301 (index!19392 (_ BitVec 32))) (Found!4301 (index!19393 (_ BitVec 32))) (Intermediate!4301 (undefined!5113 Bool) (index!19394 (_ BitVec 32)) (x!48359 (_ BitVec 32))) (Undefined!4301) (MissingVacant!4301 (index!19395 (_ BitVec 32))) )
))
(declare-fun lt!234705 () SeekEntryResult!4301)

(assert (=> b!512516 (= e!299279 (or (not (is-Intermediate!4301 lt!234705)) (undefined!5113 lt!234705) (bvslt (x!48359 lt!234705) #b01111111111111111111111111111110)))))

(declare-fun b!512517 () Bool)

(declare-fun e!299281 () Bool)

(declare-fun e!299277 () Bool)

(assert (=> b!512517 (= e!299281 e!299277)))

(declare-fun res!313336 () Bool)

(assert (=> b!512517 (=> (not res!313336) (not e!299277))))

(declare-fun lt!234707 () SeekEntryResult!4301)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512517 (= res!313336 (or (= lt!234707 (MissingZero!4301 i!1204)) (= lt!234707 (MissingVacant!4301 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32906 0))(
  ( (array!32907 (arr!15827 (Array (_ BitVec 32) (_ BitVec 64))) (size!16191 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32906)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32906 (_ BitVec 32)) SeekEntryResult!4301)

(assert (=> b!512517 (= lt!234707 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512518 () Bool)

(declare-fun res!313329 () Bool)

(assert (=> b!512518 (=> (not res!313329) (not e!299281))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512518 (= res!313329 (validKeyInArray!0 k!2280))))

(declare-fun b!512519 () Bool)

(declare-fun res!313332 () Bool)

(assert (=> b!512519 (=> (not res!313332) (not e!299277))))

(declare-datatypes ((List!10038 0))(
  ( (Nil!10035) (Cons!10034 (h!10914 (_ BitVec 64)) (t!16274 List!10038)) )
))
(declare-fun arrayNoDuplicates!0 (array!32906 (_ BitVec 32) List!10038) Bool)

(assert (=> b!512519 (= res!313332 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10035))))

(declare-fun res!313335 () Bool)

(assert (=> start!46292 (=> (not res!313335) (not e!299281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46292 (= res!313335 (validMask!0 mask!3524))))

(assert (=> start!46292 e!299281))

(assert (=> start!46292 true))

(declare-fun array_inv!11601 (array!32906) Bool)

(assert (=> start!46292 (array_inv!11601 a!3235)))

(declare-fun b!512520 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!299278 () Bool)

(assert (=> b!512520 (= e!299278 (= (seekEntryOrOpen!0 (select (arr!15827 a!3235) j!176) a!3235 mask!3524) (Found!4301 j!176)))))

(declare-fun b!512521 () Bool)

(declare-fun res!313333 () Bool)

(assert (=> b!512521 (=> (not res!313333) (not e!299277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32906 (_ BitVec 32)) Bool)

(assert (=> b!512521 (= res!313333 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512522 () Bool)

(declare-fun res!313337 () Bool)

(assert (=> b!512522 (=> (not res!313337) (not e!299281))))

(assert (=> b!512522 (= res!313337 (validKeyInArray!0 (select (arr!15827 a!3235) j!176)))))

(declare-fun b!512523 () Bool)

(assert (=> b!512523 (= e!299277 (not e!299279))))

(declare-fun res!313330 () Bool)

(assert (=> b!512523 (=> res!313330 e!299279)))

(declare-fun lt!234706 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32906 (_ BitVec 32)) SeekEntryResult!4301)

(assert (=> b!512523 (= res!313330 (= lt!234705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234706 (select (store (arr!15827 a!3235) i!1204 k!2280) j!176) (array!32907 (store (arr!15827 a!3235) i!1204 k!2280) (size!16191 a!3235)) mask!3524)))))

(declare-fun lt!234703 () (_ BitVec 32))

(assert (=> b!512523 (= lt!234705 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234703 (select (arr!15827 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512523 (= lt!234706 (toIndex!0 (select (store (arr!15827 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512523 (= lt!234703 (toIndex!0 (select (arr!15827 a!3235) j!176) mask!3524))))

(assert (=> b!512523 e!299278))

(declare-fun res!313331 () Bool)

(assert (=> b!512523 (=> (not res!313331) (not e!299278))))

(assert (=> b!512523 (= res!313331 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15852 0))(
  ( (Unit!15853) )
))
(declare-fun lt!234704 () Unit!15852)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32906 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15852)

(assert (=> b!512523 (= lt!234704 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512524 () Bool)

(declare-fun res!313328 () Bool)

(assert (=> b!512524 (=> (not res!313328) (not e!299281))))

(declare-fun arrayContainsKey!0 (array!32906 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512524 (= res!313328 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512525 () Bool)

(declare-fun res!313334 () Bool)

(assert (=> b!512525 (=> (not res!313334) (not e!299281))))

(assert (=> b!512525 (= res!313334 (and (= (size!16191 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16191 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16191 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!46292 res!313335) b!512525))

(assert (= (and b!512525 res!313334) b!512522))

(assert (= (and b!512522 res!313337) b!512518))

(assert (= (and b!512518 res!313329) b!512524))

(assert (= (and b!512524 res!313328) b!512517))

(assert (= (and b!512517 res!313336) b!512521))

(assert (= (and b!512521 res!313333) b!512519))

(assert (= (and b!512519 res!313332) b!512523))

(assert (= (and b!512523 res!313331) b!512520))

(assert (= (and b!512523 (not res!313330)) b!512516))

(declare-fun m!494275 () Bool)

(assert (=> b!512523 m!494275))

(declare-fun m!494277 () Bool)

(assert (=> b!512523 m!494277))

(declare-fun m!494279 () Bool)

(assert (=> b!512523 m!494279))

(declare-fun m!494281 () Bool)

(assert (=> b!512523 m!494281))

(assert (=> b!512523 m!494277))

(declare-fun m!494283 () Bool)

(assert (=> b!512523 m!494283))

(declare-fun m!494285 () Bool)

(assert (=> b!512523 m!494285))

(assert (=> b!512523 m!494283))

(declare-fun m!494287 () Bool)

(assert (=> b!512523 m!494287))

(assert (=> b!512523 m!494283))

(declare-fun m!494289 () Bool)

(assert (=> b!512523 m!494289))

(assert (=> b!512523 m!494277))

(declare-fun m!494291 () Bool)

(assert (=> b!512523 m!494291))

(assert (=> b!512522 m!494283))

(assert (=> b!512522 m!494283))

(declare-fun m!494293 () Bool)

(assert (=> b!512522 m!494293))

(declare-fun m!494295 () Bool)

(assert (=> b!512517 m!494295))

(declare-fun m!494297 () Bool)

(assert (=> b!512518 m!494297))

(declare-fun m!494299 () Bool)

(assert (=> start!46292 m!494299))

(declare-fun m!494301 () Bool)

(assert (=> start!46292 m!494301))

(declare-fun m!494303 () Bool)

(assert (=> b!512519 m!494303))

(declare-fun m!494305 () Bool)

(assert (=> b!512524 m!494305))

(assert (=> b!512520 m!494283))

(assert (=> b!512520 m!494283))

(declare-fun m!494307 () Bool)

(assert (=> b!512520 m!494307))

(declare-fun m!494309 () Bool)

(assert (=> b!512521 m!494309))

(push 1)

(assert (not b!512523))

(assert (not b!512520))

(assert (not b!512519))

(assert (not b!512524))

(assert (not start!46292))

(assert (not b!512518))

(assert (not b!512522))

(assert (not b!512521))

(assert (not b!512517))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!78871 () Bool)

(declare-fun res!313357 () Bool)

(declare-fun e!299317 () Bool)

(assert (=> d!78871 (=> res!313357 e!299317)))

(assert (=> d!78871 (= res!313357 (bvsge #b00000000000000000000000000000000 (size!16191 a!3235)))))

(assert (=> d!78871 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!299317)))

(declare-fun b!512577 () Bool)

(declare-fun e!299318 () Bool)

(assert (=> b!512577 (= e!299317 e!299318)))

(declare-fun c!59890 () Bool)

(assert (=> b!512577 (= c!59890 (validKeyInArray!0 (select (arr!15827 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31516 () Bool)

(declare-fun call!31519 () Bool)

(assert (=> bm!31516 (= call!31519 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!512578 () Bool)

(declare-fun e!299319 () Bool)

(assert (=> b!512578 (= e!299319 call!31519)))

(declare-fun b!512579 () Bool)

(assert (=> b!512579 (= e!299318 call!31519)))

(declare-fun b!512580 () Bool)

(assert (=> b!512580 (= e!299318 e!299319)))

(declare-fun lt!234723 () (_ BitVec 64))

(assert (=> b!512580 (= lt!234723 (select (arr!15827 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!234725 () Unit!15852)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32906 (_ BitVec 64) (_ BitVec 32)) Unit!15852)

(assert (=> b!512580 (= lt!234725 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234723 #b00000000000000000000000000000000))))

(assert (=> b!512580 (arrayContainsKey!0 a!3235 lt!234723 #b00000000000000000000000000000000)))

(declare-fun lt!234724 () Unit!15852)

(assert (=> b!512580 (= lt!234724 lt!234725)))

(declare-fun res!313358 () Bool)

(assert (=> b!512580 (= res!313358 (= (seekEntryOrOpen!0 (select (arr!15827 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4301 #b00000000000000000000000000000000)))))

(assert (=> b!512580 (=> (not res!313358) (not e!299319))))

(assert (= (and d!78871 (not res!313357)) b!512577))

(assert (= (and b!512577 c!59890) b!512580))

(assert (= (and b!512577 (not c!59890)) b!512579))

(assert (= (and b!512580 res!313358) b!512578))

(assert (= (or b!512578 b!512579) bm!31516))

(declare-fun m!494333 () Bool)

(assert (=> b!512577 m!494333))

(assert (=> b!512577 m!494333))

(declare-fun m!494335 () Bool)

(assert (=> b!512577 m!494335))

(declare-fun m!494337 () Bool)

(assert (=> bm!31516 m!494337))

(assert (=> b!512580 m!494333))

(declare-fun m!494339 () Bool)

(assert (=> b!512580 m!494339))

(declare-fun m!494341 () Bool)

(assert (=> b!512580 m!494341))

(assert (=> b!512580 m!494333))

(declare-fun m!494343 () Bool)

(assert (=> b!512580 m!494343))

(assert (=> b!512521 d!78871))

(declare-fun d!78877 () Bool)

(assert (=> d!78877 (= (validKeyInArray!0 (select (arr!15827 a!3235) j!176)) (and (not (= (select (arr!15827 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15827 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512522 d!78877))

(declare-fun d!78879 () Bool)

(declare-fun lt!234753 () SeekEntryResult!4301)

(assert (=> d!78879 (and (or (is-Undefined!4301 lt!234753) (not (is-Found!4301 lt!234753)) (and (bvsge (index!19393 lt!234753) #b00000000000000000000000000000000) (bvslt (index!19393 lt!234753) (size!16191 a!3235)))) (or (is-Undefined!4301 lt!234753) (is-Found!4301 lt!234753) (not (is-MissingZero!4301 lt!234753)) (and (bvsge (index!19392 lt!234753) #b00000000000000000000000000000000) (bvslt (index!19392 lt!234753) (size!16191 a!3235)))) (or (is-Undefined!4301 lt!234753) (is-Found!4301 lt!234753) (is-MissingZero!4301 lt!234753) (not (is-MissingVacant!4301 lt!234753)) (and (bvsge (index!19395 lt!234753) #b00000000000000000000000000000000) (bvslt (index!19395 lt!234753) (size!16191 a!3235)))) (or (is-Undefined!4301 lt!234753) (ite (is-Found!4301 lt!234753) (= (select (arr!15827 a!3235) (index!19393 lt!234753)) k!2280) (ite (is-MissingZero!4301 lt!234753) (= (select (arr!15827 a!3235) (index!19392 lt!234753)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4301 lt!234753) (= (select (arr!15827 a!3235) (index!19395 lt!234753)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!299363 () SeekEntryResult!4301)

(assert (=> d!78879 (= lt!234753 e!299363)))

(declare-fun c!59913 () Bool)

(declare-fun lt!234751 () SeekEntryResult!4301)

(assert (=> d!78879 (= c!59913 (and (is-Intermediate!4301 lt!234751) (undefined!5113 lt!234751)))))

(assert (=> d!78879 (= lt!234751 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78879 (validMask!0 mask!3524)))

(assert (=> d!78879 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!234753)))

(declare-fun b!512644 () Bool)

(declare-fun e!299361 () SeekEntryResult!4301)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32906 (_ BitVec 32)) SeekEntryResult!4301)

(assert (=> b!512644 (= e!299361 (seekKeyOrZeroReturnVacant!0 (x!48359 lt!234751) (index!19394 lt!234751) (index!19394 lt!234751) k!2280 a!3235 mask!3524))))

(declare-fun b!512645 () Bool)

(declare-fun e!299362 () SeekEntryResult!4301)

(assert (=> b!512645 (= e!299363 e!299362)))

(declare-fun lt!234752 () (_ BitVec 64))

(assert (=> b!512645 (= lt!234752 (select (arr!15827 a!3235) (index!19394 lt!234751)))))

(declare-fun c!59911 () Bool)

(assert (=> b!512645 (= c!59911 (= lt!234752 k!2280))))

(declare-fun b!512646 () Bool)

(declare-fun c!59912 () Bool)

(assert (=> b!512646 (= c!59912 (= lt!234752 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!512646 (= e!299362 e!299361)))

(declare-fun b!512647 () Bool)

(assert (=> b!512647 (= e!299363 Undefined!4301)))

(declare-fun b!512648 () Bool)

(assert (=> b!512648 (= e!299362 (Found!4301 (index!19394 lt!234751)))))

(declare-fun b!512649 () Bool)

(assert (=> b!512649 (= e!299361 (MissingZero!4301 (index!19394 lt!234751)))))

(assert (= (and d!78879 c!59913) b!512647))

(assert (= (and d!78879 (not c!59913)) b!512645))

(assert (= (and b!512645 c!59911) b!512648))

(assert (= (and b!512645 (not c!59911)) b!512646))

(assert (= (and b!512646 c!59912) b!512649))

(assert (= (and b!512646 (not c!59912)) b!512644))

(declare-fun m!494381 () Bool)

(assert (=> d!78879 m!494381))

(declare-fun m!494383 () Bool)

(assert (=> d!78879 m!494383))

(declare-fun m!494385 () Bool)

(assert (=> d!78879 m!494385))

(declare-fun m!494387 () Bool)

(assert (=> d!78879 m!494387))

(assert (=> d!78879 m!494383))

(declare-fun m!494389 () Bool)

(assert (=> d!78879 m!494389))

(assert (=> d!78879 m!494299))

(declare-fun m!494391 () Bool)

(assert (=> b!512644 m!494391))

(declare-fun m!494393 () Bool)

(assert (=> b!512645 m!494393))

(assert (=> b!512517 d!78879))

(declare-fun d!78895 () Bool)

(assert (=> d!78895 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512518 d!78895))

(declare-fun b!512725 () Bool)

(declare-fun e!299411 () SeekEntryResult!4301)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512725 (= e!299411 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234703 #b00000000000000000000000000000000 mask!3524) (select (arr!15827 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!512726 () Bool)

(declare-fun e!299408 () Bool)

(declare-fun e!299409 () Bool)

(assert (=> b!512726 (= e!299408 e!299409)))

(declare-fun res!313412 () Bool)

(declare-fun lt!234784 () SeekEntryResult!4301)

(assert (=> b!512726 (= res!313412 (and (is-Intermediate!4301 lt!234784) (not (undefined!5113 lt!234784)) (bvslt (x!48359 lt!234784) #b01111111111111111111111111111110) (bvsge (x!48359 lt!234784) #b00000000000000000000000000000000) (bvsge (x!48359 lt!234784) #b00000000000000000000000000000000)))))

(assert (=> b!512726 (=> (not res!313412) (not e!299409))))

(declare-fun b!512727 () Bool)

(assert (=> b!512727 (= e!299411 (Intermediate!4301 false lt!234703 #b00000000000000000000000000000000))))

(declare-fun b!512729 () Bool)

(declare-fun e!299410 () SeekEntryResult!4301)

(assert (=> b!512729 (= e!299410 e!299411)))

(declare-fun c!59939 () Bool)

(declare-fun lt!234783 () (_ BitVec 64))

(assert (=> b!512729 (= c!59939 (or (= lt!234783 (select (arr!15827 a!3235) j!176)) (= (bvadd lt!234783 lt!234783) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!512730 () Bool)

(assert (=> b!512730 (= e!299408 (bvsge (x!48359 lt!234784) #b01111111111111111111111111111110))))

(declare-fun b!512731 () Bool)

(assert (=> b!512731 (and (bvsge (index!19394 lt!234784) #b00000000000000000000000000000000) (bvslt (index!19394 lt!234784) (size!16191 a!3235)))))

(declare-fun res!313410 () Bool)

(assert (=> b!512731 (= res!313410 (= (select (arr!15827 a!3235) (index!19394 lt!234784)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!299412 () Bool)

(assert (=> b!512731 (=> res!313410 e!299412)))

(declare-fun b!512732 () Bool)

(assert (=> b!512732 (and (bvsge (index!19394 lt!234784) #b00000000000000000000000000000000) (bvslt (index!19394 lt!234784) (size!16191 a!3235)))))

(declare-fun res!313411 () Bool)

(assert (=> b!512732 (= res!313411 (= (select (arr!15827 a!3235) (index!19394 lt!234784)) (select (arr!15827 a!3235) j!176)))))

(assert (=> b!512732 (=> res!313411 e!299412)))

(assert (=> b!512732 (= e!299409 e!299412)))

(declare-fun b!512733 () Bool)

(assert (=> b!512733 (= e!299410 (Intermediate!4301 true lt!234703 #b00000000000000000000000000000000))))

(declare-fun b!512728 () Bool)

(assert (=> b!512728 (and (bvsge (index!19394 lt!234784) #b00000000000000000000000000000000) (bvslt (index!19394 lt!234784) (size!16191 a!3235)))))

(assert (=> b!512728 (= e!299412 (= (select (arr!15827 a!3235) (index!19394 lt!234784)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!78897 () Bool)

(assert (=> d!78897 e!299408))

(declare-fun c!59940 () Bool)

(assert (=> d!78897 (= c!59940 (and (is-Intermediate!4301 lt!234784) (undefined!5113 lt!234784)))))

(assert (=> d!78897 (= lt!234784 e!299410)))

(declare-fun c!59938 () Bool)

(assert (=> d!78897 (= c!59938 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78897 (= lt!234783 (select (arr!15827 a!3235) lt!234703))))

(assert (=> d!78897 (validMask!0 mask!3524)))

(assert (=> d!78897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234703 (select (arr!15827 a!3235) j!176) a!3235 mask!3524) lt!234784)))

(assert (= (and d!78897 c!59938) b!512733))

(assert (= (and d!78897 (not c!59938)) b!512729))

(assert (= (and b!512729 c!59939) b!512727))

(assert (= (and b!512729 (not c!59939)) b!512725))

(assert (= (and d!78897 c!59940) b!512730))

(assert (= (and d!78897 (not c!59940)) b!512726))

(assert (= (and b!512726 res!313412) b!512732))

(assert (= (and b!512732 (not res!313411)) b!512731))

(assert (= (and b!512731 (not res!313410)) b!512728))

(declare-fun m!494425 () Bool)

(assert (=> b!512725 m!494425))

(assert (=> b!512725 m!494425))

(assert (=> b!512725 m!494283))

(declare-fun m!494427 () Bool)

(assert (=> b!512725 m!494427))

(declare-fun m!494429 () Bool)

(assert (=> b!512732 m!494429))

(declare-fun m!494431 () Bool)

(assert (=> d!78897 m!494431))

(assert (=> d!78897 m!494299))

(assert (=> b!512728 m!494429))

(assert (=> b!512731 m!494429))

(assert (=> b!512523 d!78897))

(declare-fun d!78909 () Bool)

(declare-fun lt!234801 () (_ BitVec 32))

(declare-fun lt!234800 () (_ BitVec 32))

(assert (=> d!78909 (= lt!234801 (bvmul (bvxor lt!234800 (bvlshr lt!234800 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78909 (= lt!234800 ((_ extract 31 0) (bvand (bvxor (select (arr!15827 a!3235) j!176) (bvlshr (select (arr!15827 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78909 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313413 (let ((h!10916 ((_ extract 31 0) (bvand (bvxor (select (arr!15827 a!3235) j!176) (bvlshr (select (arr!15827 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48364 (bvmul (bvxor h!10916 (bvlshr h!10916 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48364 (bvlshr x!48364 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313413 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313413 #b00000000000000000000000000000000))))))

(assert (=> d!78909 (= (toIndex!0 (select (arr!15827 a!3235) j!176) mask!3524) (bvand (bvxor lt!234801 (bvlshr lt!234801 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512523 d!78909))

(declare-fun d!78921 () Bool)

(declare-fun res!313417 () Bool)

(declare-fun e!299416 () Bool)

(assert (=> d!78921 (=> res!313417 e!299416)))

(assert (=> d!78921 (= res!313417 (bvsge j!176 (size!16191 a!3235)))))

(assert (=> d!78921 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!299416)))

