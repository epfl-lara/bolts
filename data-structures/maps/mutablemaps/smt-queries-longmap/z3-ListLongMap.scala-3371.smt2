; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46290 () Bool)

(assert start!46290)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32904 0))(
  ( (array!32905 (arr!15826 (Array (_ BitVec 32) (_ BitVec 64))) (size!16190 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32904)

(declare-fun e!299262 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!512486 () Bool)

(declare-datatypes ((SeekEntryResult!4300 0))(
  ( (MissingZero!4300 (index!19388 (_ BitVec 32))) (Found!4300 (index!19389 (_ BitVec 32))) (Intermediate!4300 (undefined!5112 Bool) (index!19390 (_ BitVec 32)) (x!48358 (_ BitVec 32))) (Undefined!4300) (MissingVacant!4300 (index!19391 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32904 (_ BitVec 32)) SeekEntryResult!4300)

(assert (=> b!512486 (= e!299262 (= (seekEntryOrOpen!0 (select (arr!15826 a!3235) j!176) a!3235 mask!3524) (Found!4300 j!176)))))

(declare-fun b!512487 () Bool)

(declare-fun res!313307 () Bool)

(declare-fun e!299266 () Bool)

(assert (=> b!512487 (=> (not res!313307) (not e!299266))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512487 (= res!313307 (and (= (size!16190 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16190 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16190 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512488 () Bool)

(declare-fun e!299264 () Bool)

(declare-fun e!299265 () Bool)

(assert (=> b!512488 (= e!299264 (not e!299265))))

(declare-fun res!313302 () Bool)

(assert (=> b!512488 (=> res!313302 e!299265)))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun lt!234689 () (_ BitVec 32))

(declare-fun lt!234691 () SeekEntryResult!4300)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32904 (_ BitVec 32)) SeekEntryResult!4300)

(assert (=> b!512488 (= res!313302 (= lt!234691 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234689 (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176) (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235)) mask!3524)))))

(declare-fun lt!234688 () (_ BitVec 32))

(assert (=> b!512488 (= lt!234691 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234688 (select (arr!15826 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512488 (= lt!234689 (toIndex!0 (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176) mask!3524))))

(assert (=> b!512488 (= lt!234688 (toIndex!0 (select (arr!15826 a!3235) j!176) mask!3524))))

(assert (=> b!512488 e!299262))

(declare-fun res!313306 () Bool)

(assert (=> b!512488 (=> (not res!313306) (not e!299262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32904 (_ BitVec 32)) Bool)

(assert (=> b!512488 (= res!313306 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15850 0))(
  ( (Unit!15851) )
))
(declare-fun lt!234690 () Unit!15850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32904 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15850)

(assert (=> b!512488 (= lt!234690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512489 () Bool)

(declare-fun res!313305 () Bool)

(assert (=> b!512489 (=> (not res!313305) (not e!299266))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512489 (= res!313305 (validKeyInArray!0 k0!2280))))

(declare-fun b!512490 () Bool)

(assert (=> b!512490 (= e!299266 e!299264)))

(declare-fun res!313301 () Bool)

(assert (=> b!512490 (=> (not res!313301) (not e!299264))))

(declare-fun lt!234692 () SeekEntryResult!4300)

(assert (=> b!512490 (= res!313301 (or (= lt!234692 (MissingZero!4300 i!1204)) (= lt!234692 (MissingVacant!4300 i!1204))))))

(assert (=> b!512490 (= lt!234692 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!512491 () Bool)

(get-info :version)

(assert (=> b!512491 (= e!299265 (or (not ((_ is Intermediate!4300) lt!234691)) (undefined!5112 lt!234691) (bvslt (x!48358 lt!234691) #b01111111111111111111111111111110)))))

(declare-fun b!512492 () Bool)

(declare-fun res!313300 () Bool)

(assert (=> b!512492 (=> (not res!313300) (not e!299266))))

(declare-fun arrayContainsKey!0 (array!32904 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512492 (= res!313300 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun res!313299 () Bool)

(assert (=> start!46290 (=> (not res!313299) (not e!299266))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46290 (= res!313299 (validMask!0 mask!3524))))

(assert (=> start!46290 e!299266))

(assert (=> start!46290 true))

(declare-fun array_inv!11600 (array!32904) Bool)

(assert (=> start!46290 (array_inv!11600 a!3235)))

(declare-fun b!512493 () Bool)

(declare-fun res!313304 () Bool)

(assert (=> b!512493 (=> (not res!313304) (not e!299266))))

(assert (=> b!512493 (= res!313304 (validKeyInArray!0 (select (arr!15826 a!3235) j!176)))))

(declare-fun b!512494 () Bool)

(declare-fun res!313303 () Bool)

(assert (=> b!512494 (=> (not res!313303) (not e!299264))))

(declare-datatypes ((List!10037 0))(
  ( (Nil!10034) (Cons!10033 (h!10913 (_ BitVec 64)) (t!16273 List!10037)) )
))
(declare-fun arrayNoDuplicates!0 (array!32904 (_ BitVec 32) List!10037) Bool)

(assert (=> b!512494 (= res!313303 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10034))))

(declare-fun b!512495 () Bool)

(declare-fun res!313298 () Bool)

(assert (=> b!512495 (=> (not res!313298) (not e!299264))))

(assert (=> b!512495 (= res!313298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!46290 res!313299) b!512487))

(assert (= (and b!512487 res!313307) b!512493))

(assert (= (and b!512493 res!313304) b!512489))

(assert (= (and b!512489 res!313305) b!512492))

(assert (= (and b!512492 res!313300) b!512490))

(assert (= (and b!512490 res!313301) b!512495))

(assert (= (and b!512495 res!313298) b!512494))

(assert (= (and b!512494 res!313303) b!512488))

(assert (= (and b!512488 res!313306) b!512486))

(assert (= (and b!512488 (not res!313302)) b!512491))

(declare-fun m!494239 () Bool)

(assert (=> b!512490 m!494239))

(declare-fun m!494241 () Bool)

(assert (=> b!512492 m!494241))

(declare-fun m!494243 () Bool)

(assert (=> start!46290 m!494243))

(declare-fun m!494245 () Bool)

(assert (=> start!46290 m!494245))

(declare-fun m!494247 () Bool)

(assert (=> b!512495 m!494247))

(declare-fun m!494249 () Bool)

(assert (=> b!512486 m!494249))

(assert (=> b!512486 m!494249))

(declare-fun m!494251 () Bool)

(assert (=> b!512486 m!494251))

(declare-fun m!494253 () Bool)

(assert (=> b!512488 m!494253))

(declare-fun m!494255 () Bool)

(assert (=> b!512488 m!494255))

(declare-fun m!494257 () Bool)

(assert (=> b!512488 m!494257))

(assert (=> b!512488 m!494249))

(declare-fun m!494259 () Bool)

(assert (=> b!512488 m!494259))

(assert (=> b!512488 m!494249))

(declare-fun m!494261 () Bool)

(assert (=> b!512488 m!494261))

(assert (=> b!512488 m!494249))

(assert (=> b!512488 m!494257))

(declare-fun m!494263 () Bool)

(assert (=> b!512488 m!494263))

(declare-fun m!494265 () Bool)

(assert (=> b!512488 m!494265))

(assert (=> b!512488 m!494257))

(declare-fun m!494267 () Bool)

(assert (=> b!512488 m!494267))

(declare-fun m!494269 () Bool)

(assert (=> b!512489 m!494269))

(assert (=> b!512493 m!494249))

(assert (=> b!512493 m!494249))

(declare-fun m!494271 () Bool)

(assert (=> b!512493 m!494271))

(declare-fun m!494273 () Bool)

(assert (=> b!512494 m!494273))

(check-sat (not b!512493) (not b!512486) (not b!512489) (not b!512488) (not b!512490) (not start!46290) (not b!512494) (not b!512492) (not b!512495))
(check-sat)
(get-model)

(declare-fun b!512536 () Bool)

(declare-fun e!299291 () Bool)

(declare-fun e!299290 () Bool)

(assert (=> b!512536 (= e!299291 e!299290)))

(declare-fun res!313344 () Bool)

(assert (=> b!512536 (=> (not res!313344) (not e!299290))))

(declare-fun e!299292 () Bool)

(assert (=> b!512536 (= res!313344 (not e!299292))))

(declare-fun res!313345 () Bool)

(assert (=> b!512536 (=> (not res!313345) (not e!299292))))

(assert (=> b!512536 (= res!313345 (validKeyInArray!0 (select (arr!15826 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!512537 () Bool)

(declare-fun e!299293 () Bool)

(declare-fun call!31514 () Bool)

(assert (=> b!512537 (= e!299293 call!31514)))

(declare-fun d!78865 () Bool)

(declare-fun res!313346 () Bool)

(assert (=> d!78865 (=> res!313346 e!299291)))

(assert (=> d!78865 (= res!313346 (bvsge #b00000000000000000000000000000000 (size!16190 a!3235)))))

(assert (=> d!78865 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10034) e!299291)))

(declare-fun b!512538 () Bool)

(declare-fun contains!2731 (List!10037 (_ BitVec 64)) Bool)

(assert (=> b!512538 (= e!299292 (contains!2731 Nil!10034 (select (arr!15826 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!512539 () Bool)

(assert (=> b!512539 (= e!299293 call!31514)))

(declare-fun bm!31511 () Bool)

(declare-fun c!59876 () Bool)

(assert (=> bm!31511 (= call!31514 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59876 (Cons!10033 (select (arr!15826 a!3235) #b00000000000000000000000000000000) Nil!10034) Nil!10034)))))

(declare-fun b!512540 () Bool)

(assert (=> b!512540 (= e!299290 e!299293)))

(assert (=> b!512540 (= c!59876 (validKeyInArray!0 (select (arr!15826 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78865 (not res!313346)) b!512536))

(assert (= (and b!512536 res!313345) b!512538))

(assert (= (and b!512536 res!313344) b!512540))

(assert (= (and b!512540 c!59876) b!512539))

(assert (= (and b!512540 (not c!59876)) b!512537))

(assert (= (or b!512539 b!512537) bm!31511))

(declare-fun m!494311 () Bool)

(assert (=> b!512536 m!494311))

(assert (=> b!512536 m!494311))

(declare-fun m!494313 () Bool)

(assert (=> b!512536 m!494313))

(assert (=> b!512538 m!494311))

(assert (=> b!512538 m!494311))

(declare-fun m!494315 () Bool)

(assert (=> b!512538 m!494315))

(assert (=> bm!31511 m!494311))

(declare-fun m!494317 () Bool)

(assert (=> bm!31511 m!494317))

(assert (=> b!512540 m!494311))

(assert (=> b!512540 m!494311))

(assert (=> b!512540 m!494313))

(assert (=> b!512494 d!78865))

(declare-fun d!78867 () Bool)

(assert (=> d!78867 (= (validKeyInArray!0 k0!2280) (and (not (= k0!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512489 d!78867))

(declare-fun b!512553 () Bool)

(declare-fun e!299300 () SeekEntryResult!4300)

(declare-fun lt!234715 () SeekEntryResult!4300)

(assert (=> b!512553 (= e!299300 (MissingZero!4300 (index!19390 lt!234715)))))

(declare-fun b!512555 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32904 (_ BitVec 32)) SeekEntryResult!4300)

(assert (=> b!512555 (= e!299300 (seekKeyOrZeroReturnVacant!0 (x!48358 lt!234715) (index!19390 lt!234715) (index!19390 lt!234715) k0!2280 a!3235 mask!3524))))

(declare-fun b!512556 () Bool)

(declare-fun e!299301 () SeekEntryResult!4300)

(assert (=> b!512556 (= e!299301 Undefined!4300)))

(declare-fun b!512557 () Bool)

(declare-fun c!59885 () Bool)

(declare-fun lt!234714 () (_ BitVec 64))

(assert (=> b!512557 (= c!59885 (= lt!234714 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!299302 () SeekEntryResult!4300)

(assert (=> b!512557 (= e!299302 e!299300)))

(declare-fun b!512558 () Bool)

(assert (=> b!512558 (= e!299302 (Found!4300 (index!19390 lt!234715)))))

(declare-fun d!78869 () Bool)

(declare-fun lt!234716 () SeekEntryResult!4300)

(assert (=> d!78869 (and (or ((_ is Undefined!4300) lt!234716) (not ((_ is Found!4300) lt!234716)) (and (bvsge (index!19389 lt!234716) #b00000000000000000000000000000000) (bvslt (index!19389 lt!234716) (size!16190 a!3235)))) (or ((_ is Undefined!4300) lt!234716) ((_ is Found!4300) lt!234716) (not ((_ is MissingZero!4300) lt!234716)) (and (bvsge (index!19388 lt!234716) #b00000000000000000000000000000000) (bvslt (index!19388 lt!234716) (size!16190 a!3235)))) (or ((_ is Undefined!4300) lt!234716) ((_ is Found!4300) lt!234716) ((_ is MissingZero!4300) lt!234716) (not ((_ is MissingVacant!4300) lt!234716)) (and (bvsge (index!19391 lt!234716) #b00000000000000000000000000000000) (bvslt (index!19391 lt!234716) (size!16190 a!3235)))) (or ((_ is Undefined!4300) lt!234716) (ite ((_ is Found!4300) lt!234716) (= (select (arr!15826 a!3235) (index!19389 lt!234716)) k0!2280) (ite ((_ is MissingZero!4300) lt!234716) (= (select (arr!15826 a!3235) (index!19388 lt!234716)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4300) lt!234716) (= (select (arr!15826 a!3235) (index!19391 lt!234716)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78869 (= lt!234716 e!299301)))

(declare-fun c!59884 () Bool)

(assert (=> d!78869 (= c!59884 (and ((_ is Intermediate!4300) lt!234715) (undefined!5112 lt!234715)))))

(assert (=> d!78869 (= lt!234715 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2280 mask!3524) k0!2280 a!3235 mask!3524))))

(assert (=> d!78869 (validMask!0 mask!3524)))

(assert (=> d!78869 (= (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524) lt!234716)))

(declare-fun b!512554 () Bool)

(assert (=> b!512554 (= e!299301 e!299302)))

(assert (=> b!512554 (= lt!234714 (select (arr!15826 a!3235) (index!19390 lt!234715)))))

(declare-fun c!59883 () Bool)

(assert (=> b!512554 (= c!59883 (= lt!234714 k0!2280))))

(assert (= (and d!78869 c!59884) b!512556))

(assert (= (and d!78869 (not c!59884)) b!512554))

(assert (= (and b!512554 c!59883) b!512558))

(assert (= (and b!512554 (not c!59883)) b!512557))

(assert (= (and b!512557 c!59885) b!512553))

(assert (= (and b!512557 (not c!59885)) b!512555))

(declare-fun m!494319 () Bool)

(assert (=> b!512555 m!494319))

(declare-fun m!494321 () Bool)

(assert (=> d!78869 m!494321))

(declare-fun m!494323 () Bool)

(assert (=> d!78869 m!494323))

(assert (=> d!78869 m!494243))

(declare-fun m!494325 () Bool)

(assert (=> d!78869 m!494325))

(declare-fun m!494327 () Bool)

(assert (=> d!78869 m!494327))

(assert (=> d!78869 m!494321))

(declare-fun m!494329 () Bool)

(assert (=> d!78869 m!494329))

(declare-fun m!494331 () Bool)

(assert (=> b!512554 m!494331))

(assert (=> b!512490 d!78869))

(declare-fun d!78875 () Bool)

(declare-fun res!313366 () Bool)

(declare-fun e!299330 () Bool)

(assert (=> d!78875 (=> res!313366 e!299330)))

(assert (=> d!78875 (= res!313366 (bvsge #b00000000000000000000000000000000 (size!16190 a!3235)))))

(assert (=> d!78875 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!299330)))

(declare-fun b!512594 () Bool)

(declare-fun e!299332 () Bool)

(declare-fun call!31523 () Bool)

(assert (=> b!512594 (= e!299332 call!31523)))

(declare-fun b!512595 () Bool)

(declare-fun e!299331 () Bool)

(assert (=> b!512595 (= e!299332 e!299331)))

(declare-fun lt!234732 () (_ BitVec 64))

(assert (=> b!512595 (= lt!234732 (select (arr!15826 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!234734 () Unit!15850)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32904 (_ BitVec 64) (_ BitVec 32)) Unit!15850)

(assert (=> b!512595 (= lt!234734 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234732 #b00000000000000000000000000000000))))

(assert (=> b!512595 (arrayContainsKey!0 a!3235 lt!234732 #b00000000000000000000000000000000)))

(declare-fun lt!234733 () Unit!15850)

(assert (=> b!512595 (= lt!234733 lt!234734)))

(declare-fun res!313367 () Bool)

(assert (=> b!512595 (= res!313367 (= (seekEntryOrOpen!0 (select (arr!15826 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4300 #b00000000000000000000000000000000)))))

(assert (=> b!512595 (=> (not res!313367) (not e!299331))))

(declare-fun b!512596 () Bool)

(assert (=> b!512596 (= e!299331 call!31523)))

(declare-fun b!512597 () Bool)

(assert (=> b!512597 (= e!299330 e!299332)))

(declare-fun c!59894 () Bool)

(assert (=> b!512597 (= c!59894 (validKeyInArray!0 (select (arr!15826 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31520 () Bool)

(assert (=> bm!31520 (= call!31523 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!78875 (not res!313366)) b!512597))

(assert (= (and b!512597 c!59894) b!512595))

(assert (= (and b!512597 (not c!59894)) b!512594))

(assert (= (and b!512595 res!313367) b!512596))

(assert (= (or b!512596 b!512594) bm!31520))

(assert (=> b!512595 m!494311))

(declare-fun m!494353 () Bool)

(assert (=> b!512595 m!494353))

(declare-fun m!494355 () Bool)

(assert (=> b!512595 m!494355))

(assert (=> b!512595 m!494311))

(declare-fun m!494357 () Bool)

(assert (=> b!512595 m!494357))

(assert (=> b!512597 m!494311))

(assert (=> b!512597 m!494311))

(assert (=> b!512597 m!494313))

(declare-fun m!494359 () Bool)

(assert (=> bm!31520 m!494359))

(assert (=> b!512495 d!78875))

(declare-fun d!78883 () Bool)

(assert (=> d!78883 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46290 d!78883))

(declare-fun d!78885 () Bool)

(assert (=> d!78885 (= (array_inv!11600 a!3235) (bvsge (size!16190 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46290 d!78885))

(declare-fun b!512598 () Bool)

(declare-fun e!299333 () SeekEntryResult!4300)

(declare-fun lt!234736 () SeekEntryResult!4300)

(assert (=> b!512598 (= e!299333 (MissingZero!4300 (index!19390 lt!234736)))))

(declare-fun b!512600 () Bool)

(assert (=> b!512600 (= e!299333 (seekKeyOrZeroReturnVacant!0 (x!48358 lt!234736) (index!19390 lt!234736) (index!19390 lt!234736) (select (arr!15826 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!512601 () Bool)

(declare-fun e!299334 () SeekEntryResult!4300)

(assert (=> b!512601 (= e!299334 Undefined!4300)))

(declare-fun b!512602 () Bool)

(declare-fun c!59897 () Bool)

(declare-fun lt!234735 () (_ BitVec 64))

(assert (=> b!512602 (= c!59897 (= lt!234735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!299335 () SeekEntryResult!4300)

(assert (=> b!512602 (= e!299335 e!299333)))

(declare-fun b!512603 () Bool)

(assert (=> b!512603 (= e!299335 (Found!4300 (index!19390 lt!234736)))))

(declare-fun d!78887 () Bool)

(declare-fun lt!234737 () SeekEntryResult!4300)

(assert (=> d!78887 (and (or ((_ is Undefined!4300) lt!234737) (not ((_ is Found!4300) lt!234737)) (and (bvsge (index!19389 lt!234737) #b00000000000000000000000000000000) (bvslt (index!19389 lt!234737) (size!16190 a!3235)))) (or ((_ is Undefined!4300) lt!234737) ((_ is Found!4300) lt!234737) (not ((_ is MissingZero!4300) lt!234737)) (and (bvsge (index!19388 lt!234737) #b00000000000000000000000000000000) (bvslt (index!19388 lt!234737) (size!16190 a!3235)))) (or ((_ is Undefined!4300) lt!234737) ((_ is Found!4300) lt!234737) ((_ is MissingZero!4300) lt!234737) (not ((_ is MissingVacant!4300) lt!234737)) (and (bvsge (index!19391 lt!234737) #b00000000000000000000000000000000) (bvslt (index!19391 lt!234737) (size!16190 a!3235)))) (or ((_ is Undefined!4300) lt!234737) (ite ((_ is Found!4300) lt!234737) (= (select (arr!15826 a!3235) (index!19389 lt!234737)) (select (arr!15826 a!3235) j!176)) (ite ((_ is MissingZero!4300) lt!234737) (= (select (arr!15826 a!3235) (index!19388 lt!234737)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!4300) lt!234737) (= (select (arr!15826 a!3235) (index!19391 lt!234737)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78887 (= lt!234737 e!299334)))

(declare-fun c!59896 () Bool)

(assert (=> d!78887 (= c!59896 (and ((_ is Intermediate!4300) lt!234736) (undefined!5112 lt!234736)))))

(assert (=> d!78887 (= lt!234736 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15826 a!3235) j!176) mask!3524) (select (arr!15826 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!78887 (validMask!0 mask!3524)))

(assert (=> d!78887 (= (seekEntryOrOpen!0 (select (arr!15826 a!3235) j!176) a!3235 mask!3524) lt!234737)))

(declare-fun b!512599 () Bool)

(assert (=> b!512599 (= e!299334 e!299335)))

(assert (=> b!512599 (= lt!234735 (select (arr!15826 a!3235) (index!19390 lt!234736)))))

(declare-fun c!59895 () Bool)

(assert (=> b!512599 (= c!59895 (= lt!234735 (select (arr!15826 a!3235) j!176)))))

(assert (= (and d!78887 c!59896) b!512601))

(assert (= (and d!78887 (not c!59896)) b!512599))

(assert (= (and b!512599 c!59895) b!512603))

(assert (= (and b!512599 (not c!59895)) b!512602))

(assert (= (and b!512602 c!59897) b!512598))

(assert (= (and b!512602 (not c!59897)) b!512600))

(assert (=> b!512600 m!494249))

(declare-fun m!494361 () Bool)

(assert (=> b!512600 m!494361))

(assert (=> d!78887 m!494259))

(assert (=> d!78887 m!494249))

(declare-fun m!494363 () Bool)

(assert (=> d!78887 m!494363))

(assert (=> d!78887 m!494243))

(declare-fun m!494365 () Bool)

(assert (=> d!78887 m!494365))

(declare-fun m!494367 () Bool)

(assert (=> d!78887 m!494367))

(assert (=> d!78887 m!494249))

(assert (=> d!78887 m!494259))

(declare-fun m!494369 () Bool)

(assert (=> d!78887 m!494369))

(declare-fun m!494371 () Bool)

(assert (=> b!512599 m!494371))

(assert (=> b!512486 d!78887))

(declare-fun d!78889 () Bool)

(declare-fun res!313378 () Bool)

(declare-fun e!299356 () Bool)

(assert (=> d!78889 (=> res!313378 e!299356)))

(assert (=> d!78889 (= res!313378 (= (select (arr!15826 a!3235) #b00000000000000000000000000000000) k0!2280))))

(assert (=> d!78889 (= (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000) e!299356)))

(declare-fun b!512638 () Bool)

(declare-fun e!299357 () Bool)

(assert (=> b!512638 (= e!299356 e!299357)))

(declare-fun res!313379 () Bool)

(assert (=> b!512638 (=> (not res!313379) (not e!299357))))

(assert (=> b!512638 (= res!313379 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16190 a!3235)))))

(declare-fun b!512639 () Bool)

(assert (=> b!512639 (= e!299357 (arrayContainsKey!0 a!3235 k0!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78889 (not res!313378)) b!512638))

(assert (= (and b!512638 res!313379) b!512639))

(assert (=> d!78889 m!494311))

(declare-fun m!494373 () Bool)

(assert (=> b!512639 m!494373))

(assert (=> b!512492 d!78889))

(declare-fun d!78891 () Bool)

(declare-fun res!313380 () Bool)

(declare-fun e!299358 () Bool)

(assert (=> d!78891 (=> res!313380 e!299358)))

(assert (=> d!78891 (= res!313380 (bvsge j!176 (size!16190 a!3235)))))

(assert (=> d!78891 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!299358)))

(declare-fun b!512640 () Bool)

(declare-fun e!299360 () Bool)

(declare-fun call!31524 () Bool)

(assert (=> b!512640 (= e!299360 call!31524)))

(declare-fun b!512641 () Bool)

(declare-fun e!299359 () Bool)

(assert (=> b!512641 (= e!299360 e!299359)))

(declare-fun lt!234748 () (_ BitVec 64))

(assert (=> b!512641 (= lt!234748 (select (arr!15826 a!3235) j!176))))

(declare-fun lt!234750 () Unit!15850)

(assert (=> b!512641 (= lt!234750 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234748 j!176))))

(assert (=> b!512641 (arrayContainsKey!0 a!3235 lt!234748 #b00000000000000000000000000000000)))

(declare-fun lt!234749 () Unit!15850)

(assert (=> b!512641 (= lt!234749 lt!234750)))

(declare-fun res!313381 () Bool)

(assert (=> b!512641 (= res!313381 (= (seekEntryOrOpen!0 (select (arr!15826 a!3235) j!176) a!3235 mask!3524) (Found!4300 j!176)))))

(assert (=> b!512641 (=> (not res!313381) (not e!299359))))

(declare-fun b!512642 () Bool)

(assert (=> b!512642 (= e!299359 call!31524)))

(declare-fun b!512643 () Bool)

(assert (=> b!512643 (= e!299358 e!299360)))

(declare-fun c!59910 () Bool)

(assert (=> b!512643 (= c!59910 (validKeyInArray!0 (select (arr!15826 a!3235) j!176)))))

(declare-fun bm!31521 () Bool)

(assert (=> bm!31521 (= call!31524 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(assert (= (and d!78891 (not res!313380)) b!512643))

(assert (= (and b!512643 c!59910) b!512641))

(assert (= (and b!512643 (not c!59910)) b!512640))

(assert (= (and b!512641 res!313381) b!512642))

(assert (= (or b!512642 b!512640) bm!31521))

(assert (=> b!512641 m!494249))

(declare-fun m!494375 () Bool)

(assert (=> b!512641 m!494375))

(declare-fun m!494377 () Bool)

(assert (=> b!512641 m!494377))

(assert (=> b!512641 m!494249))

(assert (=> b!512641 m!494251))

(assert (=> b!512643 m!494249))

(assert (=> b!512643 m!494249))

(assert (=> b!512643 m!494271))

(declare-fun m!494379 () Bool)

(assert (=> bm!31521 m!494379))

(assert (=> b!512488 d!78891))

(declare-fun b!512716 () Bool)

(declare-fun e!299405 () SeekEntryResult!4300)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512716 (= e!299405 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234688 #b00000000000000000000000000000000 mask!3524) (select (arr!15826 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!512717 () Bool)

(declare-fun e!299404 () Bool)

(declare-fun e!299407 () Bool)

(assert (=> b!512717 (= e!299404 e!299407)))

(declare-fun res!313407 () Bool)

(declare-fun lt!234781 () SeekEntryResult!4300)

(assert (=> b!512717 (= res!313407 (and ((_ is Intermediate!4300) lt!234781) (not (undefined!5112 lt!234781)) (bvslt (x!48358 lt!234781) #b01111111111111111111111111111110) (bvsge (x!48358 lt!234781) #b00000000000000000000000000000000) (bvsge (x!48358 lt!234781) #b00000000000000000000000000000000)))))

(assert (=> b!512717 (=> (not res!313407) (not e!299407))))

(declare-fun b!512718 () Bool)

(assert (=> b!512718 (= e!299404 (bvsge (x!48358 lt!234781) #b01111111111111111111111111111110))))

(declare-fun b!512719 () Bool)

(assert (=> b!512719 (= e!299405 (Intermediate!4300 false lt!234688 #b00000000000000000000000000000000))))

(declare-fun d!78893 () Bool)

(assert (=> d!78893 e!299404))

(declare-fun c!59935 () Bool)

(assert (=> d!78893 (= c!59935 (and ((_ is Intermediate!4300) lt!234781) (undefined!5112 lt!234781)))))

(declare-fun e!299406 () SeekEntryResult!4300)

(assert (=> d!78893 (= lt!234781 e!299406)))

(declare-fun c!59937 () Bool)

(assert (=> d!78893 (= c!59937 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!234782 () (_ BitVec 64))

(assert (=> d!78893 (= lt!234782 (select (arr!15826 a!3235) lt!234688))))

(assert (=> d!78893 (validMask!0 mask!3524)))

(assert (=> d!78893 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234688 (select (arr!15826 a!3235) j!176) a!3235 mask!3524) lt!234781)))

(declare-fun b!512720 () Bool)

(assert (=> b!512720 (and (bvsge (index!19390 lt!234781) #b00000000000000000000000000000000) (bvslt (index!19390 lt!234781) (size!16190 a!3235)))))

(declare-fun e!299403 () Bool)

(assert (=> b!512720 (= e!299403 (= (select (arr!15826 a!3235) (index!19390 lt!234781)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!512721 () Bool)

(assert (=> b!512721 (= e!299406 (Intermediate!4300 true lt!234688 #b00000000000000000000000000000000))))

(declare-fun b!512722 () Bool)

(assert (=> b!512722 (and (bvsge (index!19390 lt!234781) #b00000000000000000000000000000000) (bvslt (index!19390 lt!234781) (size!16190 a!3235)))))

(declare-fun res!313408 () Bool)

(assert (=> b!512722 (= res!313408 (= (select (arr!15826 a!3235) (index!19390 lt!234781)) (select (arr!15826 a!3235) j!176)))))

(assert (=> b!512722 (=> res!313408 e!299403)))

(assert (=> b!512722 (= e!299407 e!299403)))

(declare-fun b!512723 () Bool)

(assert (=> b!512723 (and (bvsge (index!19390 lt!234781) #b00000000000000000000000000000000) (bvslt (index!19390 lt!234781) (size!16190 a!3235)))))

(declare-fun res!313409 () Bool)

(assert (=> b!512723 (= res!313409 (= (select (arr!15826 a!3235) (index!19390 lt!234781)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!512723 (=> res!313409 e!299403)))

(declare-fun b!512724 () Bool)

(assert (=> b!512724 (= e!299406 e!299405)))

(declare-fun c!59936 () Bool)

(assert (=> b!512724 (= c!59936 (or (= lt!234782 (select (arr!15826 a!3235) j!176)) (= (bvadd lt!234782 lt!234782) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!78893 c!59937) b!512721))

(assert (= (and d!78893 (not c!59937)) b!512724))

(assert (= (and b!512724 c!59936) b!512719))

(assert (= (and b!512724 (not c!59936)) b!512716))

(assert (= (and d!78893 c!59935) b!512718))

(assert (= (and d!78893 (not c!59935)) b!512717))

(assert (= (and b!512717 res!313407) b!512722))

(assert (= (and b!512722 (not res!313408)) b!512723))

(assert (= (and b!512723 (not res!313409)) b!512720))

(declare-fun m!494417 () Bool)

(assert (=> b!512722 m!494417))

(assert (=> b!512723 m!494417))

(assert (=> b!512720 m!494417))

(declare-fun m!494419 () Bool)

(assert (=> b!512716 m!494419))

(assert (=> b!512716 m!494419))

(assert (=> b!512716 m!494249))

(declare-fun m!494421 () Bool)

(assert (=> b!512716 m!494421))

(declare-fun m!494423 () Bool)

(assert (=> d!78893 m!494423))

(assert (=> d!78893 m!494243))

(assert (=> b!512488 d!78893))

(declare-fun d!78907 () Bool)

(assert (=> d!78907 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!234795 () Unit!15850)

(declare-fun choose!38 (array!32904 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15850)

(assert (=> d!78907 (= lt!234795 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78907 (validMask!0 mask!3524)))

(assert (=> d!78907 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!234795)))

(declare-fun bs!16237 () Bool)

(assert (= bs!16237 d!78907))

(assert (=> bs!16237 m!494265))

(declare-fun m!494443 () Bool)

(assert (=> bs!16237 m!494443))

(assert (=> bs!16237 m!494243))

(assert (=> b!512488 d!78907))

(declare-fun d!78917 () Bool)

(declare-fun lt!234812 () (_ BitVec 32))

(declare-fun lt!234811 () (_ BitVec 32))

(assert (=> d!78917 (= lt!234812 (bvmul (bvxor lt!234811 (bvlshr lt!234811 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78917 (= lt!234811 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78917 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313416 (let ((h!10917 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176) (bvlshr (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48365 (bvmul (bvxor h!10917 (bvlshr h!10917 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48365 (bvlshr x!48365 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313416 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313416 #b00000000000000000000000000000000))))))

(assert (=> d!78917 (= (toIndex!0 (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176) mask!3524) (bvand (bvxor lt!234812 (bvlshr lt!234812 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512488 d!78917))

(declare-fun b!512751 () Bool)

(declare-fun e!299426 () SeekEntryResult!4300)

(assert (=> b!512751 (= e!299426 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234689 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176) (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235)) mask!3524))))

(declare-fun b!512752 () Bool)

(declare-fun e!299425 () Bool)

(declare-fun e!299428 () Bool)

(assert (=> b!512752 (= e!299425 e!299428)))

(declare-fun res!313422 () Bool)

(declare-fun lt!234813 () SeekEntryResult!4300)

(assert (=> b!512752 (= res!313422 (and ((_ is Intermediate!4300) lt!234813) (not (undefined!5112 lt!234813)) (bvslt (x!48358 lt!234813) #b01111111111111111111111111111110) (bvsge (x!48358 lt!234813) #b00000000000000000000000000000000) (bvsge (x!48358 lt!234813) #b00000000000000000000000000000000)))))

(assert (=> b!512752 (=> (not res!313422) (not e!299428))))

(declare-fun b!512753 () Bool)

(assert (=> b!512753 (= e!299425 (bvsge (x!48358 lt!234813) #b01111111111111111111111111111110))))

(declare-fun b!512754 () Bool)

(assert (=> b!512754 (= e!299426 (Intermediate!4300 false lt!234689 #b00000000000000000000000000000000))))

(declare-fun d!78927 () Bool)

(assert (=> d!78927 e!299425))

(declare-fun c!59946 () Bool)

(assert (=> d!78927 (= c!59946 (and ((_ is Intermediate!4300) lt!234813) (undefined!5112 lt!234813)))))

(declare-fun e!299427 () SeekEntryResult!4300)

(assert (=> d!78927 (= lt!234813 e!299427)))

(declare-fun c!59948 () Bool)

(assert (=> d!78927 (= c!59948 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!234814 () (_ BitVec 64))

(assert (=> d!78927 (= lt!234814 (select (arr!15826 (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235))) lt!234689))))

(assert (=> d!78927 (validMask!0 mask!3524)))

(assert (=> d!78927 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234689 (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176) (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235)) mask!3524) lt!234813)))

(declare-fun b!512755 () Bool)

(assert (=> b!512755 (and (bvsge (index!19390 lt!234813) #b00000000000000000000000000000000) (bvslt (index!19390 lt!234813) (size!16190 (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235)))))))

(declare-fun e!299424 () Bool)

(assert (=> b!512755 (= e!299424 (= (select (arr!15826 (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235))) (index!19390 lt!234813)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!512756 () Bool)

(assert (=> b!512756 (= e!299427 (Intermediate!4300 true lt!234689 #b00000000000000000000000000000000))))

(declare-fun b!512757 () Bool)

(assert (=> b!512757 (and (bvsge (index!19390 lt!234813) #b00000000000000000000000000000000) (bvslt (index!19390 lt!234813) (size!16190 (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235)))))))

(declare-fun res!313423 () Bool)

(assert (=> b!512757 (= res!313423 (= (select (arr!15826 (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235))) (index!19390 lt!234813)) (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176)))))

(assert (=> b!512757 (=> res!313423 e!299424)))

(assert (=> b!512757 (= e!299428 e!299424)))

(declare-fun b!512758 () Bool)

(assert (=> b!512758 (and (bvsge (index!19390 lt!234813) #b00000000000000000000000000000000) (bvslt (index!19390 lt!234813) (size!16190 (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235)))))))

(declare-fun res!313424 () Bool)

(assert (=> b!512758 (= res!313424 (= (select (arr!15826 (array!32905 (store (arr!15826 a!3235) i!1204 k0!2280) (size!16190 a!3235))) (index!19390 lt!234813)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!512758 (=> res!313424 e!299424)))

(declare-fun b!512759 () Bool)

(assert (=> b!512759 (= e!299427 e!299426)))

(declare-fun c!59947 () Bool)

(assert (=> b!512759 (= c!59947 (or (= lt!234814 (select (store (arr!15826 a!3235) i!1204 k0!2280) j!176)) (= (bvadd lt!234814 lt!234814) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!78927 c!59948) b!512756))

(assert (= (and d!78927 (not c!59948)) b!512759))

(assert (= (and b!512759 c!59947) b!512754))

(assert (= (and b!512759 (not c!59947)) b!512751))

(assert (= (and d!78927 c!59946) b!512753))

(assert (= (and d!78927 (not c!59946)) b!512752))

(assert (= (and b!512752 res!313422) b!512757))

(assert (= (and b!512757 (not res!313423)) b!512758))

(assert (= (and b!512758 (not res!313424)) b!512755))

(declare-fun m!494459 () Bool)

(assert (=> b!512757 m!494459))

(assert (=> b!512758 m!494459))

(assert (=> b!512755 m!494459))

(declare-fun m!494461 () Bool)

(assert (=> b!512751 m!494461))

(assert (=> b!512751 m!494461))

(assert (=> b!512751 m!494257))

(declare-fun m!494463 () Bool)

(assert (=> b!512751 m!494463))

(declare-fun m!494465 () Bool)

(assert (=> d!78927 m!494465))

(assert (=> d!78927 m!494243))

(assert (=> b!512488 d!78927))

(declare-fun d!78929 () Bool)

(declare-fun lt!234816 () (_ BitVec 32))

(declare-fun lt!234815 () (_ BitVec 32))

(assert (=> d!78929 (= lt!234816 (bvmul (bvxor lt!234815 (bvlshr lt!234815 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78929 (= lt!234815 ((_ extract 31 0) (bvand (bvxor (select (arr!15826 a!3235) j!176) (bvlshr (select (arr!15826 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78929 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313416 (let ((h!10917 ((_ extract 31 0) (bvand (bvxor (select (arr!15826 a!3235) j!176) (bvlshr (select (arr!15826 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48365 (bvmul (bvxor h!10917 (bvlshr h!10917 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48365 (bvlshr x!48365 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313416 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313416 #b00000000000000000000000000000000))))))

(assert (=> d!78929 (= (toIndex!0 (select (arr!15826 a!3235) j!176) mask!3524) (bvand (bvxor lt!234816 (bvlshr lt!234816 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512488 d!78929))

(declare-fun d!78931 () Bool)

(assert (=> d!78931 (= (validKeyInArray!0 (select (arr!15826 a!3235) j!176)) (and (not (= (select (arr!15826 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15826 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512493 d!78931))

(check-sat (not d!78927) (not bm!31521) (not b!512751) (not b!512555) (not b!512536) (not b!512595) (not b!512600) (not d!78893) (not b!512538) (not b!512540) (not b!512716) (not b!512639) (not b!512641) (not d!78887) (not b!512597) (not bm!31511) (not bm!31520) (not d!78907) (not b!512643) (not d!78869))
(check-sat)
