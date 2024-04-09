; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119404 () Bool)

(assert start!119404)

(declare-fun b!1391434 () Bool)

(declare-fun res!931413 () Bool)

(declare-fun e!787958 () Bool)

(assert (=> b!1391434 (=> (not res!931413) (not e!787958))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-datatypes ((array!95157 0))(
  ( (array!95158 (arr!45937 (Array (_ BitVec 32) (_ BitVec 64))) (size!46488 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95157)

(assert (=> b!1391434 (= res!931413 (and (= (size!46488 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46488 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46488 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391435 () Bool)

(declare-fun res!931416 () Bool)

(assert (=> b!1391435 (=> (not res!931416) (not e!787958))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391435 (= res!931416 (validKeyInArray!0 (select (arr!45937 a!2901) j!112)))))

(declare-fun b!1391436 () Bool)

(declare-fun e!787956 () Bool)

(declare-datatypes ((SeekEntryResult!10276 0))(
  ( (MissingZero!10276 (index!43474 (_ BitVec 32))) (Found!10276 (index!43475 (_ BitVec 32))) (Intermediate!10276 (undefined!11088 Bool) (index!43476 (_ BitVec 32)) (x!125161 (_ BitVec 32))) (Undefined!10276) (MissingVacant!10276 (index!43477 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95157 (_ BitVec 32)) SeekEntryResult!10276)

(assert (=> b!1391436 (= e!787956 (= (seekEntryOrOpen!0 (select (arr!45937 a!2901) j!112) a!2901 mask!2840) (Found!10276 j!112)))))

(declare-fun b!1391437 () Bool)

(declare-fun res!931410 () Bool)

(assert (=> b!1391437 (=> (not res!931410) (not e!787958))))

(assert (=> b!1391437 (= res!931410 (validKeyInArray!0 (select (arr!45937 a!2901) i!1037)))))

(declare-fun b!1391438 () Bool)

(declare-fun res!931411 () Bool)

(assert (=> b!1391438 (=> (not res!931411) (not e!787958))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95157 (_ BitVec 32)) Bool)

(assert (=> b!1391438 (= res!931411 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun res!931412 () Bool)

(assert (=> start!119404 (=> (not res!931412) (not e!787958))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119404 (= res!931412 (validMask!0 mask!2840))))

(assert (=> start!119404 e!787958))

(assert (=> start!119404 true))

(declare-fun array_inv!34882 (array!95157) Bool)

(assert (=> start!119404 (array_inv!34882 a!2901)))

(declare-fun b!1391439 () Bool)

(declare-fun lt!611166 () SeekEntryResult!10276)

(assert (=> b!1391439 (= e!787958 (not (or (not (is-Intermediate!10276 lt!611166)) (undefined!11088 lt!611166) (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111))))))

(assert (=> b!1391439 e!787956))

(declare-fun res!931414 () Bool)

(assert (=> b!1391439 (=> (not res!931414) (not e!787956))))

(assert (=> b!1391439 (= res!931414 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46506 0))(
  ( (Unit!46507) )
))
(declare-fun lt!611167 () Unit!46506)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46506)

(assert (=> b!1391439 (= lt!611167 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95157 (_ BitVec 32)) SeekEntryResult!10276)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391439 (= lt!611166 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45937 a!2901) j!112) mask!2840) (select (arr!45937 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391440 () Bool)

(declare-fun res!931415 () Bool)

(assert (=> b!1391440 (=> (not res!931415) (not e!787958))))

(declare-datatypes ((List!32636 0))(
  ( (Nil!32633) (Cons!32632 (h!33856 (_ BitVec 64)) (t!47337 List!32636)) )
))
(declare-fun arrayNoDuplicates!0 (array!95157 (_ BitVec 32) List!32636) Bool)

(assert (=> b!1391440 (= res!931415 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32633))))

(assert (= (and start!119404 res!931412) b!1391434))

(assert (= (and b!1391434 res!931413) b!1391437))

(assert (= (and b!1391437 res!931410) b!1391435))

(assert (= (and b!1391435 res!931416) b!1391438))

(assert (= (and b!1391438 res!931411) b!1391440))

(assert (= (and b!1391440 res!931415) b!1391439))

(assert (= (and b!1391439 res!931414) b!1391436))

(declare-fun m!1277291 () Bool)

(assert (=> start!119404 m!1277291))

(declare-fun m!1277293 () Bool)

(assert (=> start!119404 m!1277293))

(declare-fun m!1277295 () Bool)

(assert (=> b!1391439 m!1277295))

(declare-fun m!1277297 () Bool)

(assert (=> b!1391439 m!1277297))

(assert (=> b!1391439 m!1277295))

(declare-fun m!1277299 () Bool)

(assert (=> b!1391439 m!1277299))

(assert (=> b!1391439 m!1277297))

(assert (=> b!1391439 m!1277295))

(declare-fun m!1277301 () Bool)

(assert (=> b!1391439 m!1277301))

(declare-fun m!1277303 () Bool)

(assert (=> b!1391439 m!1277303))

(assert (=> b!1391435 m!1277295))

(assert (=> b!1391435 m!1277295))

(declare-fun m!1277305 () Bool)

(assert (=> b!1391435 m!1277305))

(declare-fun m!1277307 () Bool)

(assert (=> b!1391437 m!1277307))

(assert (=> b!1391437 m!1277307))

(declare-fun m!1277309 () Bool)

(assert (=> b!1391437 m!1277309))

(assert (=> b!1391436 m!1277295))

(assert (=> b!1391436 m!1277295))

(declare-fun m!1277311 () Bool)

(assert (=> b!1391436 m!1277311))

(declare-fun m!1277313 () Bool)

(assert (=> b!1391440 m!1277313))

(declare-fun m!1277315 () Bool)

(assert (=> b!1391438 m!1277315))

(push 1)

(assert (not b!1391440))

(assert (not b!1391435))

(assert (not b!1391438))

(assert (not start!119404))

(assert (not b!1391439))

(assert (not b!1391437))

(assert (not b!1391436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1391507 () Bool)

(declare-fun e!787997 () Bool)

(declare-fun e!787995 () Bool)

(assert (=> b!1391507 (= e!787997 e!787995)))

(declare-fun c!129468 () Bool)

(assert (=> b!1391507 (= c!129468 (validKeyInArray!0 (select (arr!45937 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391508 () Bool)

(declare-fun e!787996 () Bool)

(assert (=> b!1391508 (= e!787995 e!787996)))

(declare-fun lt!611202 () (_ BitVec 64))

(assert (=> b!1391508 (= lt!611202 (select (arr!45937 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611201 () Unit!46506)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95157 (_ BitVec 64) (_ BitVec 32)) Unit!46506)

(assert (=> b!1391508 (= lt!611201 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611202 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!95157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1391508 (arrayContainsKey!0 a!2901 lt!611202 #b00000000000000000000000000000000)))

(declare-fun lt!611203 () Unit!46506)

(assert (=> b!1391508 (= lt!611203 lt!611201)))

(declare-fun res!931472 () Bool)

(assert (=> b!1391508 (= res!931472 (= (seekEntryOrOpen!0 (select (arr!45937 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10276 #b00000000000000000000000000000000)))))

(assert (=> b!1391508 (=> (not res!931472) (not e!787996))))

(declare-fun b!1391509 () Bool)

(declare-fun call!66745 () Bool)

(assert (=> b!1391509 (= e!787995 call!66745)))

(declare-fun bm!66742 () Bool)

(assert (=> bm!66742 (= call!66745 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!150279 () Bool)

(declare-fun res!931471 () Bool)

(assert (=> d!150279 (=> res!931471 e!787997)))

(assert (=> d!150279 (= res!931471 (bvsge #b00000000000000000000000000000000 (size!46488 a!2901)))))

(assert (=> d!150279 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!787997)))

(declare-fun b!1391510 () Bool)

(assert (=> b!1391510 (= e!787996 call!66745)))

(assert (= (and d!150279 (not res!931471)) b!1391507))

(assert (= (and b!1391507 c!129468) b!1391508))

(assert (= (and b!1391507 (not c!129468)) b!1391509))

(assert (= (and b!1391508 res!931472) b!1391510))

(assert (= (or b!1391510 b!1391509) bm!66742))

(declare-fun m!1277389 () Bool)

(assert (=> b!1391507 m!1277389))

(assert (=> b!1391507 m!1277389))

(declare-fun m!1277391 () Bool)

(assert (=> b!1391507 m!1277391))

(assert (=> b!1391508 m!1277389))

(declare-fun m!1277393 () Bool)

(assert (=> b!1391508 m!1277393))

(declare-fun m!1277395 () Bool)

(assert (=> b!1391508 m!1277395))

(assert (=> b!1391508 m!1277389))

(declare-fun m!1277397 () Bool)

(assert (=> b!1391508 m!1277397))

(declare-fun m!1277399 () Bool)

(assert (=> bm!66742 m!1277399))

(assert (=> b!1391438 d!150279))

(declare-fun d!150289 () Bool)

(assert (=> d!150289 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119404 d!150289))

(declare-fun d!150291 () Bool)

(assert (=> d!150291 (= (array_inv!34882 a!2901) (bvsge (size!46488 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119404 d!150291))

(declare-fun b!1391594 () Bool)

(declare-fun e!788050 () SeekEntryResult!10276)

(declare-fun lt!611248 () SeekEntryResult!10276)

(assert (=> b!1391594 (= e!788050 (MissingZero!10276 (index!43476 lt!611248)))))

(declare-fun b!1391595 () Bool)

(declare-fun e!788049 () SeekEntryResult!10276)

(assert (=> b!1391595 (= e!788049 Undefined!10276)))

(declare-fun b!1391596 () Bool)

(declare-fun e!788048 () SeekEntryResult!10276)

(assert (=> b!1391596 (= e!788048 (Found!10276 (index!43476 lt!611248)))))

(declare-fun b!1391597 () Bool)

(declare-fun c!129501 () Bool)

(declare-fun lt!611247 () (_ BitVec 64))

(assert (=> b!1391597 (= c!129501 (= lt!611247 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1391597 (= e!788048 e!788050)))

(declare-fun d!150293 () Bool)

(declare-fun lt!611246 () SeekEntryResult!10276)

(assert (=> d!150293 (and (or (is-Undefined!10276 lt!611246) (not (is-Found!10276 lt!611246)) (and (bvsge (index!43475 lt!611246) #b00000000000000000000000000000000) (bvslt (index!43475 lt!611246) (size!46488 a!2901)))) (or (is-Undefined!10276 lt!611246) (is-Found!10276 lt!611246) (not (is-MissingZero!10276 lt!611246)) (and (bvsge (index!43474 lt!611246) #b00000000000000000000000000000000) (bvslt (index!43474 lt!611246) (size!46488 a!2901)))) (or (is-Undefined!10276 lt!611246) (is-Found!10276 lt!611246) (is-MissingZero!10276 lt!611246) (not (is-MissingVacant!10276 lt!611246)) (and (bvsge (index!43477 lt!611246) #b00000000000000000000000000000000) (bvslt (index!43477 lt!611246) (size!46488 a!2901)))) (or (is-Undefined!10276 lt!611246) (ite (is-Found!10276 lt!611246) (= (select (arr!45937 a!2901) (index!43475 lt!611246)) (select (arr!45937 a!2901) j!112)) (ite (is-MissingZero!10276 lt!611246) (= (select (arr!45937 a!2901) (index!43474 lt!611246)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10276 lt!611246) (= (select (arr!45937 a!2901) (index!43477 lt!611246)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150293 (= lt!611246 e!788049)))

(declare-fun c!129500 () Bool)

(assert (=> d!150293 (= c!129500 (and (is-Intermediate!10276 lt!611248) (undefined!11088 lt!611248)))))

(assert (=> d!150293 (= lt!611248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45937 a!2901) j!112) mask!2840) (select (arr!45937 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150293 (validMask!0 mask!2840)))

(assert (=> d!150293 (= (seekEntryOrOpen!0 (select (arr!45937 a!2901) j!112) a!2901 mask!2840) lt!611246)))

(declare-fun b!1391598 () Bool)

(assert (=> b!1391598 (= e!788049 e!788048)))

(assert (=> b!1391598 (= lt!611247 (select (arr!45937 a!2901) (index!43476 lt!611248)))))

(declare-fun c!129499 () Bool)

(assert (=> b!1391598 (= c!129499 (= lt!611247 (select (arr!45937 a!2901) j!112)))))

(declare-fun b!1391599 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95157 (_ BitVec 32)) SeekEntryResult!10276)

(assert (=> b!1391599 (= e!788050 (seekKeyOrZeroReturnVacant!0 (x!125161 lt!611248) (index!43476 lt!611248) (index!43476 lt!611248) (select (arr!45937 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!150293 c!129500) b!1391595))

(assert (= (and d!150293 (not c!129500)) b!1391598))

(assert (= (and b!1391598 c!129499) b!1391596))

(assert (= (and b!1391598 (not c!129499)) b!1391597))

(assert (= (and b!1391597 c!129501) b!1391594))

(assert (= (and b!1391597 (not c!129501)) b!1391599))

(declare-fun m!1277439 () Bool)

(assert (=> d!150293 m!1277439))

(declare-fun m!1277441 () Bool)

(assert (=> d!150293 m!1277441))

(assert (=> d!150293 m!1277291))

(declare-fun m!1277443 () Bool)

(assert (=> d!150293 m!1277443))

(assert (=> d!150293 m!1277295))

(assert (=> d!150293 m!1277297))

(assert (=> d!150293 m!1277297))

(assert (=> d!150293 m!1277295))

(assert (=> d!150293 m!1277301))

(declare-fun m!1277445 () Bool)

(assert (=> b!1391598 m!1277445))

(assert (=> b!1391599 m!1277295))

(declare-fun m!1277447 () Bool)

(assert (=> b!1391599 m!1277447))

(assert (=> b!1391436 d!150293))

(declare-fun d!150307 () Bool)

(assert (=> d!150307 (= (validKeyInArray!0 (select (arr!45937 a!2901) i!1037)) (and (not (= (select (arr!45937 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45937 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391437 d!150307))

(declare-fun d!150309 () Bool)

(assert (=> d!150309 (= (validKeyInArray!0 (select (arr!45937 a!2901) j!112)) (and (not (= (select (arr!45937 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45937 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1391435 d!150309))

(declare-fun d!150311 () Bool)

(declare-fun res!931507 () Bool)

(declare-fun e!788064 () Bool)

(assert (=> d!150311 (=> res!931507 e!788064)))

(assert (=> d!150311 (= res!931507 (bvsge #b00000000000000000000000000000000 (size!46488 a!2901)))))

(assert (=> d!150311 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32633) e!788064)))

(declare-fun b!1391615 () Bool)

(declare-fun e!788066 () Bool)

(assert (=> b!1391615 (= e!788064 e!788066)))

(declare-fun res!931506 () Bool)

(assert (=> b!1391615 (=> (not res!931506) (not e!788066))))

(declare-fun e!788063 () Bool)

(assert (=> b!1391615 (= res!931506 (not e!788063))))

(declare-fun res!931508 () Bool)

(assert (=> b!1391615 (=> (not res!931508) (not e!788063))))

(assert (=> b!1391615 (= res!931508 (validKeyInArray!0 (select (arr!45937 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391616 () Bool)

(declare-fun e!788065 () Bool)

(assert (=> b!1391616 (= e!788066 e!788065)))

(declare-fun c!129505 () Bool)

(assert (=> b!1391616 (= c!129505 (validKeyInArray!0 (select (arr!45937 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391617 () Bool)

(declare-fun contains!9780 (List!32636 (_ BitVec 64)) Bool)

(assert (=> b!1391617 (= e!788063 (contains!9780 Nil!32633 (select (arr!45937 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1391618 () Bool)

(declare-fun call!66755 () Bool)

(assert (=> b!1391618 (= e!788065 call!66755)))

(declare-fun b!1391619 () Bool)

(assert (=> b!1391619 (= e!788065 call!66755)))

(declare-fun bm!66752 () Bool)

(assert (=> bm!66752 (= call!66755 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129505 (Cons!32632 (select (arr!45937 a!2901) #b00000000000000000000000000000000) Nil!32633) Nil!32633)))))

(assert (= (and d!150311 (not res!931507)) b!1391615))

(assert (= (and b!1391615 res!931508) b!1391617))

(assert (= (and b!1391615 res!931506) b!1391616))

(assert (= (and b!1391616 c!129505) b!1391619))

(assert (= (and b!1391616 (not c!129505)) b!1391618))

(assert (= (or b!1391619 b!1391618) bm!66752))

(assert (=> b!1391615 m!1277389))

(assert (=> b!1391615 m!1277389))

(assert (=> b!1391615 m!1277391))

(assert (=> b!1391616 m!1277389))

(assert (=> b!1391616 m!1277389))

(assert (=> b!1391616 m!1277391))

(assert (=> b!1391617 m!1277389))

(assert (=> b!1391617 m!1277389))

(declare-fun m!1277453 () Bool)

(assert (=> b!1391617 m!1277453))

(assert (=> bm!66752 m!1277389))

(declare-fun m!1277455 () Bool)

(assert (=> bm!66752 m!1277455))

(assert (=> b!1391440 d!150311))

(declare-fun b!1391620 () Bool)

(declare-fun e!788069 () Bool)

(declare-fun e!788067 () Bool)

(assert (=> b!1391620 (= e!788069 e!788067)))

(declare-fun c!129506 () Bool)

(assert (=> b!1391620 (= c!129506 (validKeyInArray!0 (select (arr!45937 a!2901) j!112)))))

(declare-fun b!1391621 () Bool)

(declare-fun e!788068 () Bool)

(assert (=> b!1391621 (= e!788067 e!788068)))

(declare-fun lt!611250 () (_ BitVec 64))

(assert (=> b!1391621 (= lt!611250 (select (arr!45937 a!2901) j!112))))

(declare-fun lt!611249 () Unit!46506)

(assert (=> b!1391621 (= lt!611249 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611250 j!112))))

(assert (=> b!1391621 (arrayContainsKey!0 a!2901 lt!611250 #b00000000000000000000000000000000)))

(declare-fun lt!611251 () Unit!46506)

(assert (=> b!1391621 (= lt!611251 lt!611249)))

(declare-fun res!931510 () Bool)

(assert (=> b!1391621 (= res!931510 (= (seekEntryOrOpen!0 (select (arr!45937 a!2901) j!112) a!2901 mask!2840) (Found!10276 j!112)))))

(assert (=> b!1391621 (=> (not res!931510) (not e!788068))))

(declare-fun b!1391622 () Bool)

(declare-fun call!66756 () Bool)

(assert (=> b!1391622 (= e!788067 call!66756)))

(declare-fun bm!66753 () Bool)

(assert (=> bm!66753 (= call!66756 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun d!150317 () Bool)

(declare-fun res!931509 () Bool)

(assert (=> d!150317 (=> res!931509 e!788069)))

(assert (=> d!150317 (= res!931509 (bvsge j!112 (size!46488 a!2901)))))

(assert (=> d!150317 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!788069)))

(declare-fun b!1391623 () Bool)

(assert (=> b!1391623 (= e!788068 call!66756)))

(assert (= (and d!150317 (not res!931509)) b!1391620))

(assert (= (and b!1391620 c!129506) b!1391621))

(assert (= (and b!1391620 (not c!129506)) b!1391622))

(assert (= (and b!1391621 res!931510) b!1391623))

(assert (= (or b!1391623 b!1391622) bm!66753))

(assert (=> b!1391620 m!1277295))

(assert (=> b!1391620 m!1277295))

(assert (=> b!1391620 m!1277305))

(assert (=> b!1391621 m!1277295))

(declare-fun m!1277457 () Bool)

(assert (=> b!1391621 m!1277457))

(declare-fun m!1277459 () Bool)

(assert (=> b!1391621 m!1277459))

(assert (=> b!1391621 m!1277295))

(assert (=> b!1391621 m!1277311))

(declare-fun m!1277461 () Bool)

(assert (=> bm!66753 m!1277461))

(assert (=> b!1391439 d!150317))

(declare-fun d!150319 () Bool)

(assert (=> d!150319 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611258 () Unit!46506)

(declare-fun choose!38 (array!95157 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46506)

(assert (=> d!150319 (= lt!611258 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150319 (validMask!0 mask!2840)))

(assert (=> d!150319 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611258)))

(declare-fun bs!40480 () Bool)

(assert (= bs!40480 d!150319))

(assert (=> bs!40480 m!1277303))

(declare-fun m!1277463 () Bool)

(assert (=> bs!40480 m!1277463))

(assert (=> bs!40480 m!1277291))

(assert (=> b!1391439 d!150319))

(declare-fun b!1391687 () Bool)

(declare-fun e!788107 () Bool)

(declare-fun e!788108 () Bool)

(assert (=> b!1391687 (= e!788107 e!788108)))

(declare-fun res!931529 () Bool)

(declare-fun lt!611281 () SeekEntryResult!10276)

(assert (=> b!1391687 (= res!931529 (and (is-Intermediate!10276 lt!611281) (not (undefined!11088 lt!611281)) (bvslt (x!125161 lt!611281) #b01111111111111111111111111111110) (bvsge (x!125161 lt!611281) #b00000000000000000000000000000000) (bvsge (x!125161 lt!611281) #b00000000000000000000000000000000)))))

(assert (=> b!1391687 (=> (not res!931529) (not e!788108))))

(declare-fun b!1391688 () Bool)

(assert (=> b!1391688 (= e!788107 (bvsge (x!125161 lt!611281) #b01111111111111111111111111111110))))

(declare-fun b!1391690 () Bool)

(assert (=> b!1391690 (and (bvsge (index!43476 lt!611281) #b00000000000000000000000000000000) (bvslt (index!43476 lt!611281) (size!46488 a!2901)))))

(declare-fun e!788105 () Bool)

(assert (=> b!1391690 (= e!788105 (= (select (arr!45937 a!2901) (index!43476 lt!611281)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!788104 () SeekEntryResult!10276)

(declare-fun b!1391691 () Bool)

(assert (=> b!1391691 (= e!788104 (Intermediate!10276 false (toIndex!0 (select (arr!45937 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1391692 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391692 (= e!788104 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45937 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45937 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1391693 () Bool)

(assert (=> b!1391693 (and (bvsge (index!43476 lt!611281) #b00000000000000000000000000000000) (bvslt (index!43476 lt!611281) (size!46488 a!2901)))))

(declare-fun res!931527 () Bool)

(assert (=> b!1391693 (= res!931527 (= (select (arr!45937 a!2901) (index!43476 lt!611281)) (select (arr!45937 a!2901) j!112)))))

(assert (=> b!1391693 (=> res!931527 e!788105)))

(assert (=> b!1391693 (= e!788108 e!788105)))

(declare-fun b!1391694 () Bool)

(declare-fun e!788106 () SeekEntryResult!10276)

(assert (=> b!1391694 (= e!788106 e!788104)))

(declare-fun c!129531 () Bool)

(declare-fun lt!611280 () (_ BitVec 64))

(assert (=> b!1391694 (= c!129531 (or (= lt!611280 (select (arr!45937 a!2901) j!112)) (= (bvadd lt!611280 lt!611280) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1391695 () Bool)

(assert (=> b!1391695 (= e!788106 (Intermediate!10276 true (toIndex!0 (select (arr!45937 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1391689 () Bool)

(assert (=> b!1391689 (and (bvsge (index!43476 lt!611281) #b00000000000000000000000000000000) (bvslt (index!43476 lt!611281) (size!46488 a!2901)))))

(declare-fun res!931528 () Bool)

(assert (=> b!1391689 (= res!931528 (= (select (arr!45937 a!2901) (index!43476 lt!611281)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1391689 (=> res!931528 e!788105)))

(declare-fun d!150321 () Bool)

(assert (=> d!150321 e!788107))

(declare-fun c!129532 () Bool)

(assert (=> d!150321 (= c!129532 (and (is-Intermediate!10276 lt!611281) (undefined!11088 lt!611281)))))

(assert (=> d!150321 (= lt!611281 e!788106)))

(declare-fun c!129533 () Bool)

(assert (=> d!150321 (= c!129533 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!150321 (= lt!611280 (select (arr!45937 a!2901) (toIndex!0 (select (arr!45937 a!2901) j!112) mask!2840)))))

(assert (=> d!150321 (validMask!0 mask!2840)))

(assert (=> d!150321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45937 a!2901) j!112) mask!2840) (select (arr!45937 a!2901) j!112) a!2901 mask!2840) lt!611281)))

(assert (= (and d!150321 c!129533) b!1391695))

(assert (= (and d!150321 (not c!129533)) b!1391694))

(assert (= (and b!1391694 c!129531) b!1391691))

(assert (= (and b!1391694 (not c!129531)) b!1391692))

