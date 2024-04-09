; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119562 () Bool)

(assert start!119562)

(declare-fun b!1392506 () Bool)

(declare-fun res!932196 () Bool)

(declare-fun e!788548 () Bool)

(assert (=> b!1392506 (=> (not res!932196) (not e!788548))))

(declare-datatypes ((array!95213 0))(
  ( (array!95214 (arr!45962 (Array (_ BitVec 32) (_ BitVec 64))) (size!46513 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95213)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun mask!2840 () (_ BitVec 32))

(assert (=> b!1392506 (= res!932196 (and (= (size!46513 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46513 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46513 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1392507 () Bool)

(declare-fun e!788547 () Bool)

(assert (=> b!1392507 (= e!788548 (not e!788547))))

(declare-fun res!932189 () Bool)

(assert (=> b!1392507 (=> res!932189 e!788547)))

(declare-datatypes ((SeekEntryResult!10301 0))(
  ( (MissingZero!10301 (index!43574 (_ BitVec 32))) (Found!10301 (index!43575 (_ BitVec 32))) (Intermediate!10301 (undefined!11113 Bool) (index!43576 (_ BitVec 32)) (x!125262 (_ BitVec 32))) (Undefined!10301) (MissingVacant!10301 (index!43577 (_ BitVec 32))) )
))
(declare-fun lt!611592 () SeekEntryResult!10301)

(get-info :version)

(assert (=> b!1392507 (= res!932189 (or (not ((_ is Intermediate!10301) lt!611592)) (undefined!11113 lt!611592)))))

(declare-fun e!788549 () Bool)

(assert (=> b!1392507 e!788549))

(declare-fun res!932191 () Bool)

(assert (=> b!1392507 (=> (not res!932191) (not e!788549))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95213 (_ BitVec 32)) Bool)

(assert (=> b!1392507 (= res!932191 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46556 0))(
  ( (Unit!46557) )
))
(declare-fun lt!611593 () Unit!46556)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95213 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46556)

(assert (=> b!1392507 (= lt!611593 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95213 (_ BitVec 32)) SeekEntryResult!10301)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392507 (= lt!611592 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45962 a!2901) j!112) mask!2840) (select (arr!45962 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392508 () Bool)

(declare-fun res!932190 () Bool)

(assert (=> b!1392508 (=> (not res!932190) (not e!788548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1392508 (= res!932190 (validKeyInArray!0 (select (arr!45962 a!2901) j!112)))))

(declare-fun b!1392509 () Bool)

(declare-fun res!932193 () Bool)

(assert (=> b!1392509 (=> (not res!932193) (not e!788548))))

(assert (=> b!1392509 (= res!932193 (validKeyInArray!0 (select (arr!45962 a!2901) i!1037)))))

(declare-fun b!1392511 () Bool)

(declare-fun res!932192 () Bool)

(assert (=> b!1392511 (=> (not res!932192) (not e!788548))))

(assert (=> b!1392511 (= res!932192 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1392512 () Bool)

(declare-fun res!932194 () Bool)

(assert (=> b!1392512 (=> res!932194 e!788547)))

(assert (=> b!1392512 (= res!932194 (not (= lt!611592 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901)) mask!2840))))))

(declare-fun b!1392513 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95213 (_ BitVec 32)) SeekEntryResult!10301)

(assert (=> b!1392513 (= e!788549 (= (seekEntryOrOpen!0 (select (arr!45962 a!2901) j!112) a!2901 mask!2840) (Found!10301 j!112)))))

(declare-fun b!1392514 () Bool)

(declare-fun res!932188 () Bool)

(assert (=> b!1392514 (=> (not res!932188) (not e!788548))))

(declare-datatypes ((List!32661 0))(
  ( (Nil!32658) (Cons!32657 (h!33887 (_ BitVec 64)) (t!47362 List!32661)) )
))
(declare-fun arrayNoDuplicates!0 (array!95213 (_ BitVec 32) List!32661) Bool)

(assert (=> b!1392514 (= res!932188 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32658))))

(declare-fun b!1392510 () Bool)

(assert (=> b!1392510 (= e!788547 (or (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(declare-fun res!932195 () Bool)

(assert (=> start!119562 (=> (not res!932195) (not e!788548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119562 (= res!932195 (validMask!0 mask!2840))))

(assert (=> start!119562 e!788548))

(assert (=> start!119562 true))

(declare-fun array_inv!34907 (array!95213) Bool)

(assert (=> start!119562 (array_inv!34907 a!2901)))

(assert (= (and start!119562 res!932195) b!1392506))

(assert (= (and b!1392506 res!932196) b!1392509))

(assert (= (and b!1392509 res!932193) b!1392508))

(assert (= (and b!1392508 res!932190) b!1392511))

(assert (= (and b!1392511 res!932192) b!1392514))

(assert (= (and b!1392514 res!932188) b!1392507))

(assert (= (and b!1392507 res!932191) b!1392513))

(assert (= (and b!1392507 (not res!932189)) b!1392512))

(assert (= (and b!1392512 (not res!932194)) b!1392510))

(declare-fun m!1278339 () Bool)

(assert (=> b!1392507 m!1278339))

(declare-fun m!1278341 () Bool)

(assert (=> b!1392507 m!1278341))

(assert (=> b!1392507 m!1278339))

(declare-fun m!1278343 () Bool)

(assert (=> b!1392507 m!1278343))

(assert (=> b!1392507 m!1278341))

(assert (=> b!1392507 m!1278339))

(declare-fun m!1278345 () Bool)

(assert (=> b!1392507 m!1278345))

(declare-fun m!1278347 () Bool)

(assert (=> b!1392507 m!1278347))

(declare-fun m!1278349 () Bool)

(assert (=> b!1392512 m!1278349))

(declare-fun m!1278351 () Bool)

(assert (=> b!1392512 m!1278351))

(assert (=> b!1392512 m!1278351))

(declare-fun m!1278353 () Bool)

(assert (=> b!1392512 m!1278353))

(assert (=> b!1392512 m!1278353))

(assert (=> b!1392512 m!1278351))

(declare-fun m!1278355 () Bool)

(assert (=> b!1392512 m!1278355))

(declare-fun m!1278357 () Bool)

(assert (=> b!1392509 m!1278357))

(assert (=> b!1392509 m!1278357))

(declare-fun m!1278359 () Bool)

(assert (=> b!1392509 m!1278359))

(declare-fun m!1278361 () Bool)

(assert (=> b!1392514 m!1278361))

(assert (=> b!1392513 m!1278339))

(assert (=> b!1392513 m!1278339))

(declare-fun m!1278363 () Bool)

(assert (=> b!1392513 m!1278363))

(assert (=> b!1392508 m!1278339))

(assert (=> b!1392508 m!1278339))

(declare-fun m!1278365 () Bool)

(assert (=> b!1392508 m!1278365))

(declare-fun m!1278367 () Bool)

(assert (=> b!1392511 m!1278367))

(declare-fun m!1278369 () Bool)

(assert (=> start!119562 m!1278369))

(declare-fun m!1278371 () Bool)

(assert (=> start!119562 m!1278371))

(check-sat (not b!1392508) (not b!1392514) (not b!1392507) (not start!119562) (not b!1392509) (not b!1392512) (not b!1392511) (not b!1392513))
(check-sat)
(get-model)

(declare-fun d!150431 () Bool)

(assert (=> d!150431 (= (validKeyInArray!0 (select (arr!45962 a!2901) i!1037)) (and (not (= (select (arr!45962 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45962 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1392509 d!150431))

(declare-fun bm!66780 () Bool)

(declare-fun call!66783 () Bool)

(declare-fun c!129614 () Bool)

(assert (=> bm!66780 (= call!66783 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129614 (Cons!32657 (select (arr!45962 a!2901) #b00000000000000000000000000000000) Nil!32658) Nil!32658)))))

(declare-fun b!1392552 () Bool)

(declare-fun e!788570 () Bool)

(assert (=> b!1392552 (= e!788570 call!66783)))

(declare-fun d!150433 () Bool)

(declare-fun res!932231 () Bool)

(declare-fun e!788573 () Bool)

(assert (=> d!150433 (=> res!932231 e!788573)))

(assert (=> d!150433 (= res!932231 (bvsge #b00000000000000000000000000000000 (size!46513 a!2901)))))

(assert (=> d!150433 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32658) e!788573)))

(declare-fun b!1392553 () Bool)

(declare-fun e!788572 () Bool)

(assert (=> b!1392553 (= e!788573 e!788572)))

(declare-fun res!932232 () Bool)

(assert (=> b!1392553 (=> (not res!932232) (not e!788572))))

(declare-fun e!788571 () Bool)

(assert (=> b!1392553 (= res!932232 (not e!788571))))

(declare-fun res!932230 () Bool)

(assert (=> b!1392553 (=> (not res!932230) (not e!788571))))

(assert (=> b!1392553 (= res!932230 (validKeyInArray!0 (select (arr!45962 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392554 () Bool)

(declare-fun contains!9784 (List!32661 (_ BitVec 64)) Bool)

(assert (=> b!1392554 (= e!788571 (contains!9784 Nil!32658 (select (arr!45962 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1392555 () Bool)

(assert (=> b!1392555 (= e!788570 call!66783)))

(declare-fun b!1392556 () Bool)

(assert (=> b!1392556 (= e!788572 e!788570)))

(assert (=> b!1392556 (= c!129614 (validKeyInArray!0 (select (arr!45962 a!2901) #b00000000000000000000000000000000)))))

(assert (= (and d!150433 (not res!932231)) b!1392553))

(assert (= (and b!1392553 res!932230) b!1392554))

(assert (= (and b!1392553 res!932232) b!1392556))

(assert (= (and b!1392556 c!129614) b!1392555))

(assert (= (and b!1392556 (not c!129614)) b!1392552))

(assert (= (or b!1392555 b!1392552) bm!66780))

(declare-fun m!1278407 () Bool)

(assert (=> bm!66780 m!1278407))

(declare-fun m!1278409 () Bool)

(assert (=> bm!66780 m!1278409))

(assert (=> b!1392553 m!1278407))

(assert (=> b!1392553 m!1278407))

(declare-fun m!1278411 () Bool)

(assert (=> b!1392553 m!1278411))

(assert (=> b!1392554 m!1278407))

(assert (=> b!1392554 m!1278407))

(declare-fun m!1278413 () Bool)

(assert (=> b!1392554 m!1278413))

(assert (=> b!1392556 m!1278407))

(assert (=> b!1392556 m!1278407))

(assert (=> b!1392556 m!1278411))

(assert (=> b!1392514 d!150433))

(declare-fun d!150435 () Bool)

(assert (=> d!150435 (= (validKeyInArray!0 (select (arr!45962 a!2901) j!112)) (and (not (= (select (arr!45962 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45962 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1392508 d!150435))

(declare-fun b!1392592 () Bool)

(declare-fun e!788598 () SeekEntryResult!10301)

(declare-fun e!788600 () SeekEntryResult!10301)

(assert (=> b!1392592 (= e!788598 e!788600)))

(declare-fun lt!611612 () (_ BitVec 64))

(declare-fun lt!611614 () SeekEntryResult!10301)

(assert (=> b!1392592 (= lt!611612 (select (arr!45962 a!2901) (index!43576 lt!611614)))))

(declare-fun c!129626 () Bool)

(assert (=> b!1392592 (= c!129626 (= lt!611612 (select (arr!45962 a!2901) j!112)))))

(declare-fun b!1392593 () Bool)

(assert (=> b!1392593 (= e!788600 (Found!10301 (index!43576 lt!611614)))))

(declare-fun b!1392594 () Bool)

(declare-fun e!788599 () SeekEntryResult!10301)

(assert (=> b!1392594 (= e!788599 (MissingZero!10301 (index!43576 lt!611614)))))

(declare-fun b!1392595 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95213 (_ BitVec 32)) SeekEntryResult!10301)

(assert (=> b!1392595 (= e!788599 (seekKeyOrZeroReturnVacant!0 (x!125262 lt!611614) (index!43576 lt!611614) (index!43576 lt!611614) (select (arr!45962 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1392597 () Bool)

(assert (=> b!1392597 (= e!788598 Undefined!10301)))

(declare-fun b!1392596 () Bool)

(declare-fun c!129628 () Bool)

(assert (=> b!1392596 (= c!129628 (= lt!611612 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1392596 (= e!788600 e!788599)))

(declare-fun d!150437 () Bool)

(declare-fun lt!611613 () SeekEntryResult!10301)

(assert (=> d!150437 (and (or ((_ is Undefined!10301) lt!611613) (not ((_ is Found!10301) lt!611613)) (and (bvsge (index!43575 lt!611613) #b00000000000000000000000000000000) (bvslt (index!43575 lt!611613) (size!46513 a!2901)))) (or ((_ is Undefined!10301) lt!611613) ((_ is Found!10301) lt!611613) (not ((_ is MissingZero!10301) lt!611613)) (and (bvsge (index!43574 lt!611613) #b00000000000000000000000000000000) (bvslt (index!43574 lt!611613) (size!46513 a!2901)))) (or ((_ is Undefined!10301) lt!611613) ((_ is Found!10301) lt!611613) ((_ is MissingZero!10301) lt!611613) (not ((_ is MissingVacant!10301) lt!611613)) (and (bvsge (index!43577 lt!611613) #b00000000000000000000000000000000) (bvslt (index!43577 lt!611613) (size!46513 a!2901)))) (or ((_ is Undefined!10301) lt!611613) (ite ((_ is Found!10301) lt!611613) (= (select (arr!45962 a!2901) (index!43575 lt!611613)) (select (arr!45962 a!2901) j!112)) (ite ((_ is MissingZero!10301) lt!611613) (= (select (arr!45962 a!2901) (index!43574 lt!611613)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10301) lt!611613) (= (select (arr!45962 a!2901) (index!43577 lt!611613)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!150437 (= lt!611613 e!788598)))

(declare-fun c!129627 () Bool)

(assert (=> d!150437 (= c!129627 (and ((_ is Intermediate!10301) lt!611614) (undefined!11113 lt!611614)))))

(assert (=> d!150437 (= lt!611614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45962 a!2901) j!112) mask!2840) (select (arr!45962 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150437 (validMask!0 mask!2840)))

(assert (=> d!150437 (= (seekEntryOrOpen!0 (select (arr!45962 a!2901) j!112) a!2901 mask!2840) lt!611613)))

(assert (= (and d!150437 c!129627) b!1392597))

(assert (= (and d!150437 (not c!129627)) b!1392592))

(assert (= (and b!1392592 c!129626) b!1392593))

(assert (= (and b!1392592 (not c!129626)) b!1392596))

(assert (= (and b!1392596 c!129628) b!1392594))

(assert (= (and b!1392596 (not c!129628)) b!1392595))

(declare-fun m!1278423 () Bool)

(assert (=> b!1392592 m!1278423))

(assert (=> b!1392595 m!1278339))

(declare-fun m!1278425 () Bool)

(assert (=> b!1392595 m!1278425))

(assert (=> d!150437 m!1278341))

(assert (=> d!150437 m!1278339))

(assert (=> d!150437 m!1278345))

(declare-fun m!1278427 () Bool)

(assert (=> d!150437 m!1278427))

(assert (=> d!150437 m!1278339))

(assert (=> d!150437 m!1278341))

(declare-fun m!1278429 () Bool)

(assert (=> d!150437 m!1278429))

(assert (=> d!150437 m!1278369))

(declare-fun m!1278431 () Bool)

(assert (=> d!150437 m!1278431))

(assert (=> b!1392513 d!150437))

(declare-fun b!1392638 () Bool)

(declare-fun e!788625 () Bool)

(declare-fun call!66792 () Bool)

(assert (=> b!1392638 (= e!788625 call!66792)))

(declare-fun b!1392639 () Bool)

(declare-fun e!788627 () Bool)

(declare-fun e!788626 () Bool)

(assert (=> b!1392639 (= e!788627 e!788626)))

(declare-fun c!129641 () Bool)

(assert (=> b!1392639 (= c!129641 (validKeyInArray!0 (select (arr!45962 a!2901) j!112)))))

(declare-fun bm!66789 () Bool)

(assert (=> bm!66789 (= call!66792 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392640 () Bool)

(assert (=> b!1392640 (= e!788626 e!788625)))

(declare-fun lt!611630 () (_ BitVec 64))

(assert (=> b!1392640 (= lt!611630 (select (arr!45962 a!2901) j!112))))

(declare-fun lt!611632 () Unit!46556)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95213 (_ BitVec 64) (_ BitVec 32)) Unit!46556)

(assert (=> b!1392640 (= lt!611632 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611630 j!112))))

(declare-fun arrayContainsKey!0 (array!95213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1392640 (arrayContainsKey!0 a!2901 lt!611630 #b00000000000000000000000000000000)))

(declare-fun lt!611631 () Unit!46556)

(assert (=> b!1392640 (= lt!611631 lt!611632)))

(declare-fun res!932262 () Bool)

(assert (=> b!1392640 (= res!932262 (= (seekEntryOrOpen!0 (select (arr!45962 a!2901) j!112) a!2901 mask!2840) (Found!10301 j!112)))))

(assert (=> b!1392640 (=> (not res!932262) (not e!788625))))

(declare-fun b!1392637 () Bool)

(assert (=> b!1392637 (= e!788626 call!66792)))

(declare-fun d!150451 () Bool)

(declare-fun res!932261 () Bool)

(assert (=> d!150451 (=> res!932261 e!788627)))

(assert (=> d!150451 (= res!932261 (bvsge j!112 (size!46513 a!2901)))))

(assert (=> d!150451 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!788627)))

(assert (= (and d!150451 (not res!932261)) b!1392639))

(assert (= (and b!1392639 c!129641) b!1392640))

(assert (= (and b!1392639 (not c!129641)) b!1392637))

(assert (= (and b!1392640 res!932262) b!1392638))

(assert (= (or b!1392638 b!1392637) bm!66789))

(assert (=> b!1392639 m!1278339))

(assert (=> b!1392639 m!1278339))

(assert (=> b!1392639 m!1278365))

(declare-fun m!1278447 () Bool)

(assert (=> bm!66789 m!1278447))

(assert (=> b!1392640 m!1278339))

(declare-fun m!1278449 () Bool)

(assert (=> b!1392640 m!1278449))

(declare-fun m!1278451 () Bool)

(assert (=> b!1392640 m!1278451))

(assert (=> b!1392640 m!1278339))

(assert (=> b!1392640 m!1278363))

(assert (=> b!1392507 d!150451))

(declare-fun d!150455 () Bool)

(assert (=> d!150455 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!611635 () Unit!46556)

(declare-fun choose!38 (array!95213 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46556)

(assert (=> d!150455 (= lt!611635 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150455 (validMask!0 mask!2840)))

(assert (=> d!150455 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!611635)))

(declare-fun bs!40508 () Bool)

(assert (= bs!40508 d!150455))

(assert (=> bs!40508 m!1278347))

(declare-fun m!1278459 () Bool)

(assert (=> bs!40508 m!1278459))

(assert (=> bs!40508 m!1278369))

(assert (=> b!1392507 d!150455))

(declare-fun d!150459 () Bool)

(declare-fun e!788672 () Bool)

(assert (=> d!150459 e!788672))

(declare-fun c!129665 () Bool)

(declare-fun lt!611677 () SeekEntryResult!10301)

(assert (=> d!150459 (= c!129665 (and ((_ is Intermediate!10301) lt!611677) (undefined!11113 lt!611677)))))

(declare-fun e!788670 () SeekEntryResult!10301)

(assert (=> d!150459 (= lt!611677 e!788670)))

(declare-fun c!129664 () Bool)

(assert (=> d!150459 (= c!129664 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611678 () (_ BitVec 64))

(assert (=> d!150459 (= lt!611678 (select (arr!45962 a!2901) (toIndex!0 (select (arr!45962 a!2901) j!112) mask!2840)))))

(assert (=> d!150459 (validMask!0 mask!2840)))

(assert (=> d!150459 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45962 a!2901) j!112) mask!2840) (select (arr!45962 a!2901) j!112) a!2901 mask!2840) lt!611677)))

(declare-fun b!1392711 () Bool)

(declare-fun e!788673 () SeekEntryResult!10301)

(assert (=> b!1392711 (= e!788670 e!788673)))

(declare-fun c!129666 () Bool)

(assert (=> b!1392711 (= c!129666 (or (= lt!611678 (select (arr!45962 a!2901) j!112)) (= (bvadd lt!611678 lt!611678) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1392712 () Bool)

(assert (=> b!1392712 (and (bvsge (index!43576 lt!611677) #b00000000000000000000000000000000) (bvslt (index!43576 lt!611677) (size!46513 a!2901)))))

(declare-fun e!788671 () Bool)

(assert (=> b!1392712 (= e!788671 (= (select (arr!45962 a!2901) (index!43576 lt!611677)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1392713 () Bool)

(declare-fun e!788674 () Bool)

(assert (=> b!1392713 (= e!788672 e!788674)))

(declare-fun res!932291 () Bool)

(assert (=> b!1392713 (= res!932291 (and ((_ is Intermediate!10301) lt!611677) (not (undefined!11113 lt!611677)) (bvslt (x!125262 lt!611677) #b01111111111111111111111111111110) (bvsge (x!125262 lt!611677) #b00000000000000000000000000000000) (bvsge (x!125262 lt!611677) #b00000000000000000000000000000000)))))

(assert (=> b!1392713 (=> (not res!932291) (not e!788674))))

(declare-fun b!1392714 () Bool)

(assert (=> b!1392714 (= e!788673 (Intermediate!10301 false (toIndex!0 (select (arr!45962 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392715 () Bool)

(assert (=> b!1392715 (and (bvsge (index!43576 lt!611677) #b00000000000000000000000000000000) (bvslt (index!43576 lt!611677) (size!46513 a!2901)))))

(declare-fun res!932292 () Bool)

(assert (=> b!1392715 (= res!932292 (= (select (arr!45962 a!2901) (index!43576 lt!611677)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1392715 (=> res!932292 e!788671)))

(declare-fun b!1392716 () Bool)

(assert (=> b!1392716 (= e!788670 (Intermediate!10301 true (toIndex!0 (select (arr!45962 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392717 () Bool)

(assert (=> b!1392717 (and (bvsge (index!43576 lt!611677) #b00000000000000000000000000000000) (bvslt (index!43576 lt!611677) (size!46513 a!2901)))))

(declare-fun res!932293 () Bool)

(assert (=> b!1392717 (= res!932293 (= (select (arr!45962 a!2901) (index!43576 lt!611677)) (select (arr!45962 a!2901) j!112)))))

(assert (=> b!1392717 (=> res!932293 e!788671)))

(assert (=> b!1392717 (= e!788674 e!788671)))

(declare-fun b!1392718 () Bool)

(assert (=> b!1392718 (= e!788672 (bvsge (x!125262 lt!611677) #b01111111111111111111111111111110))))

(declare-fun b!1392719 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1392719 (= e!788673 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45962 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45962 a!2901) j!112) a!2901 mask!2840))))

(assert (= (and d!150459 c!129664) b!1392716))

(assert (= (and d!150459 (not c!129664)) b!1392711))

(assert (= (and b!1392711 c!129666) b!1392714))

(assert (= (and b!1392711 (not c!129666)) b!1392719))

(assert (= (and d!150459 c!129665) b!1392718))

(assert (= (and d!150459 (not c!129665)) b!1392713))

(assert (= (and b!1392713 res!932291) b!1392717))

(assert (= (and b!1392717 (not res!932293)) b!1392715))

(assert (= (and b!1392715 (not res!932292)) b!1392712))

(declare-fun m!1278491 () Bool)

(assert (=> b!1392717 m!1278491))

(assert (=> b!1392715 m!1278491))

(assert (=> b!1392712 m!1278491))

(assert (=> d!150459 m!1278341))

(declare-fun m!1278493 () Bool)

(assert (=> d!150459 m!1278493))

(assert (=> d!150459 m!1278369))

(assert (=> b!1392719 m!1278341))

(declare-fun m!1278495 () Bool)

(assert (=> b!1392719 m!1278495))

(assert (=> b!1392719 m!1278495))

(assert (=> b!1392719 m!1278339))

(declare-fun m!1278498 () Bool)

(assert (=> b!1392719 m!1278498))

(assert (=> b!1392507 d!150459))

(declare-fun d!150479 () Bool)

(declare-fun lt!611691 () (_ BitVec 32))

(declare-fun lt!611690 () (_ BitVec 32))

(assert (=> d!150479 (= lt!611691 (bvmul (bvxor lt!611690 (bvlshr lt!611690 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150479 (= lt!611690 ((_ extract 31 0) (bvand (bvxor (select (arr!45962 a!2901) j!112) (bvlshr (select (arr!45962 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150479 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!932297 (let ((h!33891 ((_ extract 31 0) (bvand (bvxor (select (arr!45962 a!2901) j!112) (bvlshr (select (arr!45962 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125269 (bvmul (bvxor h!33891 (bvlshr h!33891 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125269 (bvlshr x!125269 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!932297 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!932297 #b00000000000000000000000000000000))))))

(assert (=> d!150479 (= (toIndex!0 (select (arr!45962 a!2901) j!112) mask!2840) (bvand (bvxor lt!611691 (bvlshr lt!611691 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1392507 d!150479))

(declare-fun d!150489 () Bool)

(declare-fun e!788690 () Bool)

(assert (=> d!150489 e!788690))

(declare-fun c!129673 () Bool)

(declare-fun lt!611692 () SeekEntryResult!10301)

(assert (=> d!150489 (= c!129673 (and ((_ is Intermediate!10301) lt!611692) (undefined!11113 lt!611692)))))

(declare-fun e!788688 () SeekEntryResult!10301)

(assert (=> d!150489 (= lt!611692 e!788688)))

(declare-fun c!129672 () Bool)

(assert (=> d!150489 (= c!129672 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!611693 () (_ BitVec 64))

(assert (=> d!150489 (= lt!611693 (select (arr!45962 (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901))) (toIndex!0 (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!150489 (validMask!0 mask!2840)))

(assert (=> d!150489 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901)) mask!2840) lt!611692)))

(declare-fun b!1392739 () Bool)

(declare-fun e!788691 () SeekEntryResult!10301)

(assert (=> b!1392739 (= e!788688 e!788691)))

(declare-fun c!129674 () Bool)

(assert (=> b!1392739 (= c!129674 (or (= lt!611693 (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!611693 lt!611693) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1392740 () Bool)

(assert (=> b!1392740 (and (bvsge (index!43576 lt!611692) #b00000000000000000000000000000000) (bvslt (index!43576 lt!611692) (size!46513 (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901)))))))

(declare-fun e!788689 () Bool)

(assert (=> b!1392740 (= e!788689 (= (select (arr!45962 (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901))) (index!43576 lt!611692)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1392741 () Bool)

(declare-fun e!788692 () Bool)

(assert (=> b!1392741 (= e!788690 e!788692)))

(declare-fun res!932304 () Bool)

(assert (=> b!1392741 (= res!932304 (and ((_ is Intermediate!10301) lt!611692) (not (undefined!11113 lt!611692)) (bvslt (x!125262 lt!611692) #b01111111111111111111111111111110) (bvsge (x!125262 lt!611692) #b00000000000000000000000000000000) (bvsge (x!125262 lt!611692) #b00000000000000000000000000000000)))))

(assert (=> b!1392741 (=> (not res!932304) (not e!788692))))

(declare-fun b!1392742 () Bool)

(assert (=> b!1392742 (= e!788691 (Intermediate!10301 false (toIndex!0 (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392743 () Bool)

(assert (=> b!1392743 (and (bvsge (index!43576 lt!611692) #b00000000000000000000000000000000) (bvslt (index!43576 lt!611692) (size!46513 (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901)))))))

(declare-fun res!932305 () Bool)

(assert (=> b!1392743 (= res!932305 (= (select (arr!45962 (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901))) (index!43576 lt!611692)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1392743 (=> res!932305 e!788689)))

(declare-fun b!1392744 () Bool)

(assert (=> b!1392744 (= e!788688 (Intermediate!10301 true (toIndex!0 (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1392745 () Bool)

(assert (=> b!1392745 (and (bvsge (index!43576 lt!611692) #b00000000000000000000000000000000) (bvslt (index!43576 lt!611692) (size!46513 (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901)))))))

(declare-fun res!932306 () Bool)

(assert (=> b!1392745 (= res!932306 (= (select (arr!45962 (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901))) (index!43576 lt!611692)) (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1392745 (=> res!932306 e!788689)))

(assert (=> b!1392745 (= e!788692 e!788689)))

(declare-fun b!1392746 () Bool)

(assert (=> b!1392746 (= e!788690 (bvsge (x!125262 lt!611692) #b01111111111111111111111111111110))))

(declare-fun b!1392747 () Bool)

(assert (=> b!1392747 (= e!788691 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!95214 (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46513 a!2901)) mask!2840))))

(assert (= (and d!150489 c!129672) b!1392744))

(assert (= (and d!150489 (not c!129672)) b!1392739))

(assert (= (and b!1392739 c!129674) b!1392742))

(assert (= (and b!1392739 (not c!129674)) b!1392747))

(assert (= (and d!150489 c!129673) b!1392746))

(assert (= (and d!150489 (not c!129673)) b!1392741))

(assert (= (and b!1392741 res!932304) b!1392745))

(assert (= (and b!1392745 (not res!932306)) b!1392743))

(assert (= (and b!1392743 (not res!932305)) b!1392740))

(declare-fun m!1278509 () Bool)

(assert (=> b!1392745 m!1278509))

(assert (=> b!1392743 m!1278509))

(assert (=> b!1392740 m!1278509))

(assert (=> d!150489 m!1278353))

(declare-fun m!1278511 () Bool)

(assert (=> d!150489 m!1278511))

(assert (=> d!150489 m!1278369))

(assert (=> b!1392747 m!1278353))

(declare-fun m!1278513 () Bool)

(assert (=> b!1392747 m!1278513))

(assert (=> b!1392747 m!1278513))

(assert (=> b!1392747 m!1278351))

(declare-fun m!1278515 () Bool)

(assert (=> b!1392747 m!1278515))

(assert (=> b!1392512 d!150489))

(declare-fun d!150493 () Bool)

(declare-fun lt!611695 () (_ BitVec 32))

(declare-fun lt!611694 () (_ BitVec 32))

(assert (=> d!150493 (= lt!611695 (bvmul (bvxor lt!611694 (bvlshr lt!611694 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150493 (= lt!611694 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150493 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!932297 (let ((h!33891 ((_ extract 31 0) (bvand (bvxor (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125269 (bvmul (bvxor h!33891 (bvlshr h!33891 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125269 (bvlshr x!125269 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!932297 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!932297 #b00000000000000000000000000000000))))))

(assert (=> d!150493 (= (toIndex!0 (select (store (arr!45962 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!611695 (bvlshr lt!611695 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1392512 d!150493))

(declare-fun d!150495 () Bool)

(assert (=> d!150495 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119562 d!150495))

(declare-fun d!150499 () Bool)

(assert (=> d!150499 (= (array_inv!34907 a!2901) (bvsge (size!46513 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119562 d!150499))

(declare-fun b!1392754 () Bool)

(declare-fun e!788697 () Bool)

(declare-fun call!66800 () Bool)

(assert (=> b!1392754 (= e!788697 call!66800)))

(declare-fun b!1392755 () Bool)

(declare-fun e!788699 () Bool)

(declare-fun e!788698 () Bool)

(assert (=> b!1392755 (= e!788699 e!788698)))

(declare-fun c!129676 () Bool)

(assert (=> b!1392755 (= c!129676 (validKeyInArray!0 (select (arr!45962 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66797 () Bool)

(assert (=> bm!66797 (= call!66800 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1392756 () Bool)

(assert (=> b!1392756 (= e!788698 e!788697)))

(declare-fun lt!611696 () (_ BitVec 64))

(assert (=> b!1392756 (= lt!611696 (select (arr!45962 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!611698 () Unit!46556)

(assert (=> b!1392756 (= lt!611698 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!611696 #b00000000000000000000000000000000))))

(assert (=> b!1392756 (arrayContainsKey!0 a!2901 lt!611696 #b00000000000000000000000000000000)))

(declare-fun lt!611697 () Unit!46556)

(assert (=> b!1392756 (= lt!611697 lt!611698)))

(declare-fun res!932311 () Bool)

(assert (=> b!1392756 (= res!932311 (= (seekEntryOrOpen!0 (select (arr!45962 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10301 #b00000000000000000000000000000000)))))

(assert (=> b!1392756 (=> (not res!932311) (not e!788697))))

(declare-fun b!1392753 () Bool)

(assert (=> b!1392753 (= e!788698 call!66800)))

(declare-fun d!150501 () Bool)

(declare-fun res!932310 () Bool)

(assert (=> d!150501 (=> res!932310 e!788699)))

(assert (=> d!150501 (= res!932310 (bvsge #b00000000000000000000000000000000 (size!46513 a!2901)))))

(assert (=> d!150501 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!788699)))

(assert (= (and d!150501 (not res!932310)) b!1392755))

(assert (= (and b!1392755 c!129676) b!1392756))

(assert (= (and b!1392755 (not c!129676)) b!1392753))

(assert (= (and b!1392756 res!932311) b!1392754))

(assert (= (or b!1392754 b!1392753) bm!66797))

(assert (=> b!1392755 m!1278407))

(assert (=> b!1392755 m!1278407))

(assert (=> b!1392755 m!1278411))

(declare-fun m!1278521 () Bool)

(assert (=> bm!66797 m!1278521))

(assert (=> b!1392756 m!1278407))

(declare-fun m!1278523 () Bool)

(assert (=> b!1392756 m!1278523))

(declare-fun m!1278525 () Bool)

(assert (=> b!1392756 m!1278525))

(assert (=> b!1392756 m!1278407))

(declare-fun m!1278527 () Bool)

(assert (=> b!1392756 m!1278527))

(assert (=> b!1392511 d!150501))

(check-sat (not b!1392553) (not b!1392640) (not bm!66780) (not bm!66797) (not d!150455) (not b!1392554) (not d!150437) (not bm!66789) (not b!1392639) (not b!1392747) (not b!1392756) (not b!1392595) (not b!1392719) (not b!1392556) (not d!150489) (not d!150459) (not b!1392755))
(check-sat)
