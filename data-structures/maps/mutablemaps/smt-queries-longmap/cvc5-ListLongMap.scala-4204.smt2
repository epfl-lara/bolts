; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57456 () Bool)

(assert start!57456)

(declare-fun b!635614 () Bool)

(declare-fun res!411363 () Bool)

(declare-fun e!363570 () Bool)

(assert (=> b!635614 (=> (not res!411363) (not e!363570))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38202 0))(
  ( (array!38203 (arr!18324 (Array (_ BitVec 32) (_ BitVec 64))) (size!18688 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38202)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!635614 (= res!411363 (and (= (size!18688 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18688 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18688 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!635615 () Bool)

(declare-datatypes ((Unit!21442 0))(
  ( (Unit!21443) )
))
(declare-fun e!363574 () Unit!21442)

(declare-fun Unit!21444 () Unit!21442)

(assert (=> b!635615 (= e!363574 Unit!21444)))

(declare-fun b!635616 () Bool)

(declare-fun e!363580 () Bool)

(declare-datatypes ((List!12418 0))(
  ( (Nil!12415) (Cons!12414 (h!13459 (_ BitVec 64)) (t!18654 List!12418)) )
))
(declare-fun noDuplicate!376 (List!12418) Bool)

(assert (=> b!635616 (= e!363580 (noDuplicate!376 Nil!12415))))

(declare-fun b!635617 () Bool)

(declare-fun e!363576 () Bool)

(declare-fun e!363568 () Bool)

(assert (=> b!635617 (= e!363576 e!363568)))

(declare-fun res!411351 () Bool)

(assert (=> b!635617 (=> res!411351 e!363568)))

(declare-fun lt!293967 () (_ BitVec 64))

(declare-fun lt!293963 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!635617 (= res!411351 (or (not (= (select (arr!18324 a!2986) j!136) lt!293963)) (not (= (select (arr!18324 a!2986) j!136) lt!293967)) (bvsge j!136 index!984)))))

(declare-fun b!635618 () Bool)

(declare-fun e!363571 () Bool)

(assert (=> b!635618 (= e!363571 e!363580)))

(declare-fun res!411357 () Bool)

(assert (=> b!635618 (=> res!411357 e!363580)))

(assert (=> b!635618 (= res!411357 (or (bvsge (size!18688 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18688 a!2986))))))

(declare-fun lt!293973 () array!38202)

(declare-fun arrayContainsKey!0 (array!38202 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!635618 (arrayContainsKey!0 lt!293973 (select (arr!18324 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!293969 () Unit!21442)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38202 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21442)

(assert (=> b!635618 (= lt!293969 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293973 (select (arr!18324 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!635619 () Bool)

(declare-fun res!411362 () Bool)

(assert (=> b!635619 (=> (not res!411362) (not e!363570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!635619 (= res!411362 (validKeyInArray!0 (select (arr!18324 a!2986) j!136)))))

(declare-fun b!635620 () Bool)

(declare-fun e!363575 () Bool)

(assert (=> b!635620 (= e!363575 e!363571)))

(declare-fun res!411359 () Bool)

(assert (=> b!635620 (=> res!411359 e!363571)))

(assert (=> b!635620 (= res!411359 (or (not (= (select (arr!18324 a!2986) j!136) lt!293963)) (not (= (select (arr!18324 a!2986) j!136) lt!293967)) (bvsge j!136 index!984)))))

(assert (=> b!635620 e!363576))

(declare-fun res!411365 () Bool)

(assert (=> b!635620 (=> (not res!411365) (not e!363576))))

(assert (=> b!635620 (= res!411365 (= lt!293967 (select (arr!18324 a!2986) j!136)))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!635620 (= lt!293967 (select (store (arr!18324 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!635621 () Bool)

(declare-fun e!363569 () Bool)

(assert (=> b!635621 (= e!363569 (not e!363575))))

(declare-fun res!411356 () Bool)

(assert (=> b!635621 (=> res!411356 e!363575)))

(declare-datatypes ((SeekEntryResult!6771 0))(
  ( (MissingZero!6771 (index!29388 (_ BitVec 32))) (Found!6771 (index!29389 (_ BitVec 32))) (Intermediate!6771 (undefined!7583 Bool) (index!29390 (_ BitVec 32)) (x!58163 (_ BitVec 32))) (Undefined!6771) (MissingVacant!6771 (index!29391 (_ BitVec 32))) )
))
(declare-fun lt!293970 () SeekEntryResult!6771)

(assert (=> b!635621 (= res!411356 (not (= lt!293970 (Found!6771 index!984))))))

(declare-fun lt!293971 () Unit!21442)

(assert (=> b!635621 (= lt!293971 e!363574)))

(declare-fun c!72500 () Bool)

(assert (=> b!635621 (= c!72500 (= lt!293970 Undefined!6771))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38202 (_ BitVec 32)) SeekEntryResult!6771)

(assert (=> b!635621 (= lt!293970 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293963 lt!293973 mask!3053))))

(declare-fun e!363572 () Bool)

(assert (=> b!635621 e!363572))

(declare-fun res!411352 () Bool)

(assert (=> b!635621 (=> (not res!411352) (not e!363572))))

(declare-fun lt!293965 () SeekEntryResult!6771)

(declare-fun lt!293972 () (_ BitVec 32))

(assert (=> b!635621 (= res!411352 (= lt!293965 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293972 vacantSpotIndex!68 lt!293963 lt!293973 mask!3053)))))

(assert (=> b!635621 (= lt!293965 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293972 vacantSpotIndex!68 (select (arr!18324 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!635621 (= lt!293963 (select (store (arr!18324 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293966 () Unit!21442)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38202 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21442)

(assert (=> b!635621 (= lt!293966 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293972 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!635621 (= lt!293972 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!635622 () Bool)

(declare-fun e!363578 () Bool)

(assert (=> b!635622 (= e!363578 (arrayContainsKey!0 lt!293973 (select (arr!18324 a!2986) j!136) index!984))))

(declare-fun b!635623 () Bool)

(declare-fun e!363579 () Bool)

(assert (=> b!635623 (= e!363579 e!363569)))

(declare-fun res!411350 () Bool)

(assert (=> b!635623 (=> (not res!411350) (not e!363569))))

(declare-fun lt!293964 () SeekEntryResult!6771)

(assert (=> b!635623 (= res!411350 (and (= lt!293964 (Found!6771 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18324 a!2986) index!984) (select (arr!18324 a!2986) j!136))) (not (= (select (arr!18324 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!635623 (= lt!293964 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18324 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635624 () Bool)

(declare-fun res!411361 () Bool)

(declare-fun e!363573 () Bool)

(assert (=> b!635624 (=> (not res!411361) (not e!363573))))

(assert (=> b!635624 (= res!411361 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18324 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!635625 () Bool)

(declare-fun res!411360 () Bool)

(assert (=> b!635625 (=> (not res!411360) (not e!363570))))

(assert (=> b!635625 (= res!411360 (validKeyInArray!0 k!1786))))

(declare-fun b!635626 () Bool)

(declare-fun res!411358 () Bool)

(assert (=> b!635626 (=> (not res!411358) (not e!363573))))

(declare-fun arrayNoDuplicates!0 (array!38202 (_ BitVec 32) List!12418) Bool)

(assert (=> b!635626 (= res!411358 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12415))))

(declare-fun res!411364 () Bool)

(assert (=> start!57456 (=> (not res!411364) (not e!363570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57456 (= res!411364 (validMask!0 mask!3053))))

(assert (=> start!57456 e!363570))

(assert (=> start!57456 true))

(declare-fun array_inv!14098 (array!38202) Bool)

(assert (=> start!57456 (array_inv!14098 a!2986)))

(declare-fun b!635627 () Bool)

(assert (=> b!635627 (= e!363568 e!363578)))

(declare-fun res!411348 () Bool)

(assert (=> b!635627 (=> (not res!411348) (not e!363578))))

(assert (=> b!635627 (= res!411348 (arrayContainsKey!0 lt!293973 (select (arr!18324 a!2986) j!136) j!136))))

(declare-fun b!635628 () Bool)

(assert (=> b!635628 (= e!363572 (= lt!293964 lt!293965))))

(declare-fun b!635629 () Bool)

(assert (=> b!635629 (= e!363570 e!363573)))

(declare-fun res!411354 () Bool)

(assert (=> b!635629 (=> (not res!411354) (not e!363573))))

(declare-fun lt!293968 () SeekEntryResult!6771)

(assert (=> b!635629 (= res!411354 (or (= lt!293968 (MissingZero!6771 i!1108)) (= lt!293968 (MissingVacant!6771 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38202 (_ BitVec 32)) SeekEntryResult!6771)

(assert (=> b!635629 (= lt!293968 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!635630 () Bool)

(assert (=> b!635630 (= e!363573 e!363579)))

(declare-fun res!411349 () Bool)

(assert (=> b!635630 (=> (not res!411349) (not e!363579))))

(assert (=> b!635630 (= res!411349 (= (select (store (arr!18324 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635630 (= lt!293973 (array!38203 (store (arr!18324 a!2986) i!1108 k!1786) (size!18688 a!2986)))))

(declare-fun b!635631 () Bool)

(declare-fun res!411355 () Bool)

(assert (=> b!635631 (=> (not res!411355) (not e!363570))))

(assert (=> b!635631 (= res!411355 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!635632 () Bool)

(declare-fun res!411353 () Bool)

(assert (=> b!635632 (=> (not res!411353) (not e!363573))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38202 (_ BitVec 32)) Bool)

(assert (=> b!635632 (= res!411353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!635633 () Bool)

(declare-fun Unit!21445 () Unit!21442)

(assert (=> b!635633 (= e!363574 Unit!21445)))

(assert (=> b!635633 false))

(assert (= (and start!57456 res!411364) b!635614))

(assert (= (and b!635614 res!411363) b!635619))

(assert (= (and b!635619 res!411362) b!635625))

(assert (= (and b!635625 res!411360) b!635631))

(assert (= (and b!635631 res!411355) b!635629))

(assert (= (and b!635629 res!411354) b!635632))

(assert (= (and b!635632 res!411353) b!635626))

(assert (= (and b!635626 res!411358) b!635624))

(assert (= (and b!635624 res!411361) b!635630))

(assert (= (and b!635630 res!411349) b!635623))

(assert (= (and b!635623 res!411350) b!635621))

(assert (= (and b!635621 res!411352) b!635628))

(assert (= (and b!635621 c!72500) b!635633))

(assert (= (and b!635621 (not c!72500)) b!635615))

(assert (= (and b!635621 (not res!411356)) b!635620))

(assert (= (and b!635620 res!411365) b!635617))

(assert (= (and b!635617 (not res!411351)) b!635627))

(assert (= (and b!635627 res!411348) b!635622))

(assert (= (and b!635620 (not res!411359)) b!635618))

(assert (= (and b!635618 (not res!411357)) b!635616))

(declare-fun m!609993 () Bool)

(assert (=> b!635629 m!609993))

(declare-fun m!609995 () Bool)

(assert (=> b!635616 m!609995))

(declare-fun m!609997 () Bool)

(assert (=> b!635619 m!609997))

(assert (=> b!635619 m!609997))

(declare-fun m!609999 () Bool)

(assert (=> b!635619 m!609999))

(declare-fun m!610001 () Bool)

(assert (=> b!635630 m!610001))

(declare-fun m!610003 () Bool)

(assert (=> b!635630 m!610003))

(declare-fun m!610005 () Bool)

(assert (=> start!57456 m!610005))

(declare-fun m!610007 () Bool)

(assert (=> start!57456 m!610007))

(declare-fun m!610009 () Bool)

(assert (=> b!635623 m!610009))

(assert (=> b!635623 m!609997))

(assert (=> b!635623 m!609997))

(declare-fun m!610011 () Bool)

(assert (=> b!635623 m!610011))

(declare-fun m!610013 () Bool)

(assert (=> b!635625 m!610013))

(declare-fun m!610015 () Bool)

(assert (=> b!635624 m!610015))

(assert (=> b!635627 m!609997))

(assert (=> b!635627 m!609997))

(declare-fun m!610017 () Bool)

(assert (=> b!635627 m!610017))

(assert (=> b!635622 m!609997))

(assert (=> b!635622 m!609997))

(declare-fun m!610019 () Bool)

(assert (=> b!635622 m!610019))

(assert (=> b!635617 m!609997))

(assert (=> b!635620 m!609997))

(assert (=> b!635620 m!610001))

(declare-fun m!610021 () Bool)

(assert (=> b!635620 m!610021))

(declare-fun m!610023 () Bool)

(assert (=> b!635631 m!610023))

(declare-fun m!610025 () Bool)

(assert (=> b!635626 m!610025))

(declare-fun m!610027 () Bool)

(assert (=> b!635632 m!610027))

(assert (=> b!635618 m!609997))

(assert (=> b!635618 m!609997))

(declare-fun m!610029 () Bool)

(assert (=> b!635618 m!610029))

(assert (=> b!635618 m!609997))

(declare-fun m!610031 () Bool)

(assert (=> b!635618 m!610031))

(declare-fun m!610033 () Bool)

(assert (=> b!635621 m!610033))

(assert (=> b!635621 m!610001))

(declare-fun m!610035 () Bool)

(assert (=> b!635621 m!610035))

(assert (=> b!635621 m!609997))

(declare-fun m!610037 () Bool)

(assert (=> b!635621 m!610037))

(declare-fun m!610039 () Bool)

(assert (=> b!635621 m!610039))

(declare-fun m!610041 () Bool)

(assert (=> b!635621 m!610041))

(assert (=> b!635621 m!609997))

(declare-fun m!610043 () Bool)

(assert (=> b!635621 m!610043))

(push 1)

(assert (not b!635627))

(assert (not b!635622))

(assert (not b!635618))

(assert (not start!57456))

(assert (not b!635616))

(assert (not b!635621))

(assert (not b!635623))

(assert (not b!635619))

(assert (not b!635626))

(assert (not b!635629))

(assert (not b!635625))

(assert (not b!635632))

(assert (not b!635631))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!635812 () Bool)

(declare-fun e!363694 () Bool)

(declare-fun call!33416 () Bool)

(assert (=> b!635812 (= e!363694 call!33416)))

(declare-fun b!635813 () Bool)

(declare-fun e!363695 () Bool)

(declare-fun e!363696 () Bool)

(assert (=> b!635813 (= e!363695 e!363696)))

(declare-fun res!411488 () Bool)

(assert (=> b!635813 (=> (not res!411488) (not e!363696))))

(declare-fun e!363697 () Bool)

(assert (=> b!635813 (= res!411488 (not e!363697))))

(declare-fun res!411486 () Bool)

(assert (=> b!635813 (=> (not res!411486) (not e!363697))))

(assert (=> b!635813 (= res!411486 (validKeyInArray!0 (select (arr!18324 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!635814 () Bool)

(assert (=> b!635814 (= e!363694 call!33416)))

(declare-fun bm!33413 () Bool)

(declare-fun c!72530 () Bool)

(assert (=> bm!33413 (= call!33416 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!72530 (Cons!12414 (select (arr!18324 a!2986) #b00000000000000000000000000000000) Nil!12415) Nil!12415)))))

(declare-fun d!89707 () Bool)

(declare-fun res!411487 () Bool)

(assert (=> d!89707 (=> res!411487 e!363695)))

(assert (=> d!89707 (= res!411487 (bvsge #b00000000000000000000000000000000 (size!18688 a!2986)))))

(assert (=> d!89707 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12415) e!363695)))

(declare-fun b!635815 () Bool)

(assert (=> b!635815 (= e!363696 e!363694)))

(assert (=> b!635815 (= c!72530 (validKeyInArray!0 (select (arr!18324 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!635816 () Bool)

(declare-fun contains!3103 (List!12418 (_ BitVec 64)) Bool)

(assert (=> b!635816 (= e!363697 (contains!3103 Nil!12415 (select (arr!18324 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89707 (not res!411487)) b!635813))

(assert (= (and b!635813 res!411486) b!635816))

(assert (= (and b!635813 res!411488) b!635815))

(assert (= (and b!635815 c!72530) b!635812))

(assert (= (and b!635815 (not c!72530)) b!635814))

(assert (= (or b!635812 b!635814) bm!33413))

(declare-fun m!610181 () Bool)

(assert (=> b!635813 m!610181))

(assert (=> b!635813 m!610181))

(declare-fun m!610183 () Bool)

(assert (=> b!635813 m!610183))

(assert (=> bm!33413 m!610181))

(declare-fun m!610185 () Bool)

(assert (=> bm!33413 m!610185))

(assert (=> b!635815 m!610181))

(assert (=> b!635815 m!610181))

(assert (=> b!635815 m!610183))

(assert (=> b!635816 m!610181))

(assert (=> b!635816 m!610181))

(declare-fun m!610187 () Bool)

(assert (=> b!635816 m!610187))

(assert (=> b!635626 d!89707))

(declare-fun d!89711 () Bool)

(declare-fun res!411493 () Bool)

(declare-fun e!363702 () Bool)

(assert (=> d!89711 (=> res!411493 e!363702)))

(assert (=> d!89711 (= res!411493 (is-Nil!12415 Nil!12415))))

(assert (=> d!89711 (= (noDuplicate!376 Nil!12415) e!363702)))

(declare-fun b!635821 () Bool)

(declare-fun e!363703 () Bool)

(assert (=> b!635821 (= e!363702 e!363703)))

(declare-fun res!411494 () Bool)

(assert (=> b!635821 (=> (not res!411494) (not e!363703))))

(assert (=> b!635821 (= res!411494 (not (contains!3103 (t!18654 Nil!12415) (h!13459 Nil!12415))))))

(declare-fun b!635822 () Bool)

(assert (=> b!635822 (= e!363703 (noDuplicate!376 (t!18654 Nil!12415)))))

(assert (= (and d!89711 (not res!411493)) b!635821))

(assert (= (and b!635821 res!411494) b!635822))

(declare-fun m!610189 () Bool)

(assert (=> b!635821 m!610189))

(declare-fun m!610191 () Bool)

(assert (=> b!635822 m!610191))

(assert (=> b!635616 d!89711))

(declare-fun d!89713 () Bool)

(declare-fun res!411502 () Bool)

(declare-fun e!363711 () Bool)

(assert (=> d!89713 (=> res!411502 e!363711)))

(assert (=> d!89713 (= res!411502 (= (select (arr!18324 lt!293973) j!136) (select (arr!18324 a!2986) j!136)))))

(assert (=> d!89713 (= (arrayContainsKey!0 lt!293973 (select (arr!18324 a!2986) j!136) j!136) e!363711)))

(declare-fun b!635830 () Bool)

(declare-fun e!363712 () Bool)

(assert (=> b!635830 (= e!363711 e!363712)))

(declare-fun res!411503 () Bool)

(assert (=> b!635830 (=> (not res!411503) (not e!363712))))

(assert (=> b!635830 (= res!411503 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18688 lt!293973)))))

(declare-fun b!635831 () Bool)

(assert (=> b!635831 (= e!363712 (arrayContainsKey!0 lt!293973 (select (arr!18324 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89713 (not res!411502)) b!635830))

(assert (= (and b!635830 res!411503) b!635831))

(declare-fun m!610193 () Bool)

(assert (=> d!89713 m!610193))

(assert (=> b!635831 m!609997))

(declare-fun m!610197 () Bool)

(assert (=> b!635831 m!610197))

(assert (=> b!635627 d!89713))

(declare-fun d!89715 () Bool)

(declare-fun res!411504 () Bool)

(declare-fun e!363713 () Bool)

(assert (=> d!89715 (=> res!411504 e!363713)))

(assert (=> d!89715 (= res!411504 (= (select (arr!18324 lt!293973) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18324 a!2986) j!136)))))

(assert (=> d!89715 (= (arrayContainsKey!0 lt!293973 (select (arr!18324 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!363713)))

(declare-fun b!635832 () Bool)

(declare-fun e!363714 () Bool)

(assert (=> b!635832 (= e!363713 e!363714)))

(declare-fun res!411505 () Bool)

(assert (=> b!635832 (=> (not res!411505) (not e!363714))))

(assert (=> b!635832 (= res!411505 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18688 lt!293973)))))

(declare-fun b!635833 () Bool)

(assert (=> b!635833 (= e!363714 (arrayContainsKey!0 lt!293973 (select (arr!18324 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!89715 (not res!411504)) b!635832))

(assert (= (and b!635832 res!411505) b!635833))

(declare-fun m!610201 () Bool)

(assert (=> d!89715 m!610201))

(assert (=> b!635833 m!609997))

(declare-fun m!610203 () Bool)

(assert (=> b!635833 m!610203))

(assert (=> b!635618 d!89715))

(declare-fun d!89719 () Bool)

(assert (=> d!89719 (arrayContainsKey!0 lt!293973 (select (arr!18324 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!294069 () Unit!21442)

(declare-fun choose!114 (array!38202 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21442)

(assert (=> d!89719 (= lt!294069 (choose!114 lt!293973 (select (arr!18324 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!89719 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!89719 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!293973 (select (arr!18324 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!294069)))

(declare-fun bs!19100 () Bool)

(assert (= bs!19100 d!89719))

(assert (=> bs!19100 m!609997))

(assert (=> bs!19100 m!610029))

(assert (=> bs!19100 m!609997))

(declare-fun m!610205 () Bool)

(assert (=> bs!19100 m!610205))

(assert (=> b!635618 d!89719))

(declare-fun e!363773 () SeekEntryResult!6771)

(declare-fun b!635921 () Bool)

(declare-fun lt!294099 () SeekEntryResult!6771)

(assert (=> b!635921 (= e!363773 (seekKeyOrZeroReturnVacant!0 (x!58163 lt!294099) (index!29390 lt!294099) (index!29390 lt!294099) k!1786 a!2986 mask!3053))))

(declare-fun d!89725 () Bool)

(declare-fun lt!294101 () SeekEntryResult!6771)

(assert (=> d!89725 (and (or (is-Undefined!6771 lt!294101) (not (is-Found!6771 lt!294101)) (and (bvsge (index!29389 lt!294101) #b00000000000000000000000000000000) (bvslt (index!29389 lt!294101) (size!18688 a!2986)))) (or (is-Undefined!6771 lt!294101) (is-Found!6771 lt!294101) (not (is-MissingZero!6771 lt!294101)) (and (bvsge (index!29388 lt!294101) #b00000000000000000000000000000000) (bvslt (index!29388 lt!294101) (size!18688 a!2986)))) (or (is-Undefined!6771 lt!294101) (is-Found!6771 lt!294101) (is-MissingZero!6771 lt!294101) (not (is-MissingVacant!6771 lt!294101)) (and (bvsge (index!29391 lt!294101) #b00000000000000000000000000000000) (bvslt (index!29391 lt!294101) (size!18688 a!2986)))) (or (is-Undefined!6771 lt!294101) (ite (is-Found!6771 lt!294101) (= (select (arr!18324 a!2986) (index!29389 lt!294101)) k!1786) (ite (is-MissingZero!6771 lt!294101) (= (select (arr!18324 a!2986) (index!29388 lt!294101)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6771 lt!294101) (= (select (arr!18324 a!2986) (index!29391 lt!294101)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!363774 () SeekEntryResult!6771)

(assert (=> d!89725 (= lt!294101 e!363774)))

(declare-fun c!72561 () Bool)

(assert (=> d!89725 (= c!72561 (and (is-Intermediate!6771 lt!294099) (undefined!7583 lt!294099)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38202 (_ BitVec 32)) SeekEntryResult!6771)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89725 (= lt!294099 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!89725 (validMask!0 mask!3053)))

(assert (=> d!89725 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!294101)))

(declare-fun b!635922 () Bool)

(assert (=> b!635922 (= e!363774 Undefined!6771)))

(declare-fun b!635923 () Bool)

(declare-fun c!72563 () Bool)

(declare-fun lt!294100 () (_ BitVec 64))

(assert (=> b!635923 (= c!72563 (= lt!294100 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!363772 () SeekEntryResult!6771)

(assert (=> b!635923 (= e!363772 e!363773)))

(declare-fun b!635924 () Bool)

(assert (=> b!635924 (= e!363773 (MissingZero!6771 (index!29390 lt!294099)))))

(declare-fun b!635925 () Bool)

(assert (=> b!635925 (= e!363774 e!363772)))

(assert (=> b!635925 (= lt!294100 (select (arr!18324 a!2986) (index!29390 lt!294099)))))

(declare-fun c!72562 () Bool)

(assert (=> b!635925 (= c!72562 (= lt!294100 k!1786))))

(declare-fun b!635926 () Bool)

(assert (=> b!635926 (= e!363772 (Found!6771 (index!29390 lt!294099)))))

(assert (= (and d!89725 c!72561) b!635922))

(assert (= (and d!89725 (not c!72561)) b!635925))

(assert (= (and b!635925 c!72562) b!635926))

(assert (= (and b!635925 (not c!72562)) b!635923))

(assert (= (and b!635923 c!72563) b!635924))

(assert (= (and b!635923 (not c!72563)) b!635921))

(declare-fun m!610279 () Bool)

(assert (=> b!635921 m!610279))

(declare-fun m!610281 () Bool)

(assert (=> d!89725 m!610281))

(declare-fun m!610283 () Bool)

(assert (=> d!89725 m!610283))

(declare-fun m!610285 () Bool)

(assert (=> d!89725 m!610285))

(declare-fun m!610287 () Bool)

(assert (=> d!89725 m!610287))

(assert (=> d!89725 m!610005))

(declare-fun m!610289 () Bool)

(assert (=> d!89725 m!610289))

(assert (=> d!89725 m!610283))

(declare-fun m!610291 () Bool)

(assert (=> b!635925 m!610291))

(assert (=> b!635629 d!89725))

(declare-fun d!89759 () Bool)

(assert (=> d!89759 (= (validKeyInArray!0 (select (arr!18324 a!2986) j!136)) (and (not (= (select (arr!18324 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18324 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!635619 d!89759))

(declare-fun d!89763 () Bool)

(declare-fun res!411533 () Bool)

(declare-fun e!363778 () Bool)

(assert (=> d!89763 (=> res!411533 e!363778)))

(assert (=> d!89763 (= res!411533 (= (select (arr!18324 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89763 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!363778)))

(declare-fun b!635933 () Bool)

(declare-fun e!363779 () Bool)

(assert (=> b!635933 (= e!363778 e!363779)))

(declare-fun res!411534 () Bool)

(assert (=> b!635933 (=> (not res!411534) (not e!363779))))

(assert (=> b!635933 (= res!411534 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18688 a!2986)))))

(declare-fun b!635934 () Bool)

(assert (=> b!635934 (= e!363779 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89763 (not res!411533)) b!635933))

(assert (= (and b!635933 res!411534) b!635934))

(assert (=> d!89763 m!610181))

(declare-fun m!610299 () Bool)

(assert (=> b!635934 m!610299))

(assert (=> b!635631 d!89763))

(declare-fun b!635962 () Bool)

(declare-fun e!363796 () SeekEntryResult!6771)

(declare-fun e!363797 () SeekEntryResult!6771)

(assert (=> b!635962 (= e!363796 e!363797)))

(declare-fun c!72579 () Bool)

(declare-fun lt!294118 () (_ BitVec 64))

(assert (=> b!635962 (= c!72579 (= lt!294118 (select (arr!18324 a!2986) j!136)))))

(declare-fun d!89765 () Bool)

(declare-fun lt!294117 () SeekEntryResult!6771)

(assert (=> d!89765 (and (or (is-Undefined!6771 lt!294117) (not (is-Found!6771 lt!294117)) (and (bvsge (index!29389 lt!294117) #b00000000000000000000000000000000) (bvslt (index!29389 lt!294117) (size!18688 a!2986)))) (or (is-Undefined!6771 lt!294117) (is-Found!6771 lt!294117) (not (is-MissingVacant!6771 lt!294117)) (not (= (index!29391 lt!294117) vacantSpotIndex!68)) (and (bvsge (index!29391 lt!294117) #b00000000000000000000000000000000) (bvslt (index!29391 lt!294117) (size!18688 a!2986)))) (or (is-Undefined!6771 lt!294117) (ite (is-Found!6771 lt!294117) (= (select (arr!18324 a!2986) (index!29389 lt!294117)) (select (arr!18324 a!2986) j!136)) (and (is-MissingVacant!6771 lt!294117) (= (index!29391 lt!294117) vacantSpotIndex!68) (= (select (arr!18324 a!2986) (index!29391 lt!294117)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89765 (= lt!294117 e!363796)))

(declare-fun c!72581 () Bool)

(assert (=> d!89765 (= c!72581 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89765 (= lt!294118 (select (arr!18324 a!2986) lt!293972))))

(assert (=> d!89765 (validMask!0 mask!3053)))

(assert (=> d!89765 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293972 vacantSpotIndex!68 (select (arr!18324 a!2986) j!136) a!2986 mask!3053) lt!294117)))

(declare-fun b!635963 () Bool)

(declare-fun e!363795 () SeekEntryResult!6771)

(assert (=> b!635963 (= e!363795 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293972 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18324 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!635964 () Bool)

(assert (=> b!635964 (= e!363797 (Found!6771 lt!293972))))

(declare-fun b!635965 () Bool)

(assert (=> b!635965 (= e!363796 Undefined!6771)))

(declare-fun b!635966 () Bool)

(assert (=> b!635966 (= e!363795 (MissingVacant!6771 vacantSpotIndex!68))))

(declare-fun b!635967 () Bool)

(declare-fun c!72580 () Bool)

(assert (=> b!635967 (= c!72580 (= lt!294118 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635967 (= e!363797 e!363795)))

(assert (= (and d!89765 c!72581) b!635965))

(assert (= (and d!89765 (not c!72581)) b!635962))

(assert (= (and b!635962 c!72579) b!635964))

(assert (= (and b!635962 (not c!72579)) b!635967))

(assert (= (and b!635967 c!72580) b!635966))

(assert (= (and b!635967 (not c!72580)) b!635963))

(declare-fun m!610305 () Bool)

(assert (=> d!89765 m!610305))

(declare-fun m!610307 () Bool)

(assert (=> d!89765 m!610307))

(declare-fun m!610309 () Bool)

(assert (=> d!89765 m!610309))

(assert (=> d!89765 m!610005))

(declare-fun m!610311 () Bool)

(assert (=> b!635963 m!610311))

(assert (=> b!635963 m!610311))

(assert (=> b!635963 m!609997))

(declare-fun m!610313 () Bool)

(assert (=> b!635963 m!610313))

(assert (=> b!635621 d!89765))

(declare-fun b!635968 () Bool)

(declare-fun e!363799 () SeekEntryResult!6771)

(declare-fun e!363800 () SeekEntryResult!6771)

(assert (=> b!635968 (= e!363799 e!363800)))

(declare-fun c!72582 () Bool)

(declare-fun lt!294120 () (_ BitVec 64))

(assert (=> b!635968 (= c!72582 (= lt!294120 lt!293963))))

(declare-fun d!89767 () Bool)

(declare-fun lt!294119 () SeekEntryResult!6771)

(assert (=> d!89767 (and (or (is-Undefined!6771 lt!294119) (not (is-Found!6771 lt!294119)) (and (bvsge (index!29389 lt!294119) #b00000000000000000000000000000000) (bvslt (index!29389 lt!294119) (size!18688 lt!293973)))) (or (is-Undefined!6771 lt!294119) (is-Found!6771 lt!294119) (not (is-MissingVacant!6771 lt!294119)) (not (= (index!29391 lt!294119) vacantSpotIndex!68)) (and (bvsge (index!29391 lt!294119) #b00000000000000000000000000000000) (bvslt (index!29391 lt!294119) (size!18688 lt!293973)))) (or (is-Undefined!6771 lt!294119) (ite (is-Found!6771 lt!294119) (= (select (arr!18324 lt!293973) (index!29389 lt!294119)) lt!293963) (and (is-MissingVacant!6771 lt!294119) (= (index!29391 lt!294119) vacantSpotIndex!68) (= (select (arr!18324 lt!293973) (index!29391 lt!294119)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89767 (= lt!294119 e!363799)))

(declare-fun c!72584 () Bool)

(assert (=> d!89767 (= c!72584 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89767 (= lt!294120 (select (arr!18324 lt!293973) lt!293972))))

(assert (=> d!89767 (validMask!0 mask!3053)))

(assert (=> d!89767 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293972 vacantSpotIndex!68 lt!293963 lt!293973 mask!3053) lt!294119)))

(declare-fun b!635969 () Bool)

(declare-fun e!363798 () SeekEntryResult!6771)

(assert (=> b!635969 (= e!363798 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!293972 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!293963 lt!293973 mask!3053))))

(declare-fun b!635970 () Bool)

(assert (=> b!635970 (= e!363800 (Found!6771 lt!293972))))

(declare-fun b!635971 () Bool)

(assert (=> b!635971 (= e!363799 Undefined!6771)))

(declare-fun b!635972 () Bool)

(assert (=> b!635972 (= e!363798 (MissingVacant!6771 vacantSpotIndex!68))))

(declare-fun b!635973 () Bool)

(declare-fun c!72583 () Bool)

(assert (=> b!635973 (= c!72583 (= lt!294120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!635973 (= e!363800 e!363798)))

(assert (= (and d!89767 c!72584) b!635971))

(assert (= (and d!89767 (not c!72584)) b!635968))

(assert (= (and b!635968 c!72582) b!635970))

(assert (= (and b!635968 (not c!72582)) b!635973))

(assert (= (and b!635973 c!72583) b!635972))

(assert (= (and b!635973 (not c!72583)) b!635969))

(declare-fun m!610315 () Bool)

(assert (=> d!89767 m!610315))

(declare-fun m!610317 () Bool)

(assert (=> d!89767 m!610317))

(declare-fun m!610319 () Bool)

(assert (=> d!89767 m!610319))

(assert (=> d!89767 m!610005))

(assert (=> b!635969 m!610311))

(assert (=> b!635969 m!610311))

(declare-fun m!610321 () Bool)

(assert (=> b!635969 m!610321))

(assert (=> b!635621 d!89767))

(declare-fun d!89769 () Bool)

(declare-fun e!363816 () Bool)

(assert (=> d!89769 e!363816))

(declare-fun res!411550 () Bool)

(assert (=> d!89769 (=> (not res!411550) (not e!363816))))

(assert (=> d!89769 (= res!411550 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18688 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18688 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18688 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18688 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18688 a!2986))))))

(declare-fun lt!294129 () Unit!21442)

(declare-fun choose!9 (array!38202 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21442)

(assert (=> d!89769 (= lt!294129 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293972 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89769 (validMask!0 mask!3053)))

(assert (=> d!89769 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293972 vacantSpotIndex!68 mask!3053) lt!294129)))

(declare-fun b!635992 () Bool)

(assert (=> b!635992 (= e!363816 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293972 vacantSpotIndex!68 (select (arr!18324 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293972 vacantSpotIndex!68 (select (store (arr!18324 a!2986) i!1108 k!1786) j!136) (array!38203 (store (arr!18324 a!2986) i!1108 k!1786) (size!18688 a!2986)) mask!3053)))))

(assert (= (and d!89769 res!411550) b!635992))

(declare-fun m!610349 () Bool)

(assert (=> d!89769 m!610349))

(assert (=> d!89769 m!610005))

(assert (=> b!635992 m!609997))

(assert (=> b!635992 m!609997))

(assert (=> b!635992 m!610037))

(assert (=> b!635992 m!610001))

(assert (=> b!635992 m!610041))

(declare-fun m!610351 () Bool)

(assert (=> b!635992 m!610351))

(assert (=> b!635992 m!610041))

(assert (=> b!635621 d!89769))

(declare-fun b!635993 () Bool)

(declare-fun e!363818 () SeekEntryResult!6771)

(declare-fun e!363819 () SeekEntryResult!6771)

(assert (=> b!635993 (= e!363818 e!363819)))

(declare-fun c!72588 () Bool)

(declare-fun lt!294131 () (_ BitVec 64))

(assert (=> b!635993 (= c!72588 (= lt!294131 lt!293963))))

(declare-fun lt!294130 () SeekEntryResult!6771)

(declare-fun d!89783 () Bool)

(assert (=> d!89783 (and (or (is-Undefined!6771 lt!294130) (not (is-Found!6771 lt!294130)) (and (bvsge (index!29389 lt!294130) #b00000000000000000000000000000000) (bvslt (index!29389 lt!294130) (size!18688 lt!293973)))) (or (is-Undefined!6771 lt!294130) (is-Found!6771 lt!294130) (not (is-MissingVacant!6771 lt!294130)) (not (= (index!29391 lt!294130) vacantSpotIndex!68)) (and (bvsge (index!29391 lt!294130) #b00000000000000000000000000000000) (bvslt (index!29391 lt!294130) (size!18688 lt!293973)))) (or (is-Undefined!6771 lt!294130) (ite (is-Found!6771 lt!294130) (= (select (arr!18324 lt!293973) (index!29389 lt!294130)) lt!293963) (and (is-MissingVacant!6771 lt!294130) (= (index!29391 lt!294130) vacantSpotIndex!68) (= (select (arr!18324 lt!293973) (index!29391 lt!294130)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

