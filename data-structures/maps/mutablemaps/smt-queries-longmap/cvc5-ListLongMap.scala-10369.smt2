; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122068 () Bool)

(assert start!122068)

(declare-fun b!1416321 () Bool)

(declare-fun res!952472 () Bool)

(declare-fun e!801626 () Bool)

(assert (=> b!1416321 (=> (not res!952472) (not e!801626))))

(declare-datatypes ((array!96672 0))(
  ( (array!96673 (arr!46663 (Array (_ BitVec 32) (_ BitVec 64))) (size!47214 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96672)

(declare-datatypes ((List!33362 0))(
  ( (Nil!33359) (Cons!33358 (h!34645 (_ BitVec 64)) (t!48063 List!33362)) )
))
(declare-fun arrayNoDuplicates!0 (array!96672 (_ BitVec 32) List!33362) Bool)

(assert (=> b!1416321 (= res!952472 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33359))))

(declare-fun b!1416322 () Bool)

(declare-fun res!952479 () Bool)

(assert (=> b!1416322 (=> (not res!952479) (not e!801626))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96672 (_ BitVec 32)) Bool)

(assert (=> b!1416322 (= res!952479 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416324 () Bool)

(declare-fun e!801624 () Bool)

(declare-datatypes ((SeekEntryResult!10996 0))(
  ( (MissingZero!10996 (index!46375 (_ BitVec 32))) (Found!10996 (index!46376 (_ BitVec 32))) (Intermediate!10996 (undefined!11808 Bool) (index!46377 (_ BitVec 32)) (x!127982 (_ BitVec 32))) (Undefined!10996) (MissingVacant!10996 (index!46378 (_ BitVec 32))) )
))
(declare-fun lt!624889 () SeekEntryResult!10996)

(declare-fun lt!624888 () SeekEntryResult!10996)

(assert (=> b!1416324 (= e!801624 (or (= lt!624889 lt!624888) (is-Intermediate!10996 lt!624888)))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96672 (_ BitVec 32)) SeekEntryResult!10996)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416324 (= lt!624888 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901)) mask!2840))))

(declare-fun e!801623 () Bool)

(declare-fun b!1416325 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96672 (_ BitVec 32)) SeekEntryResult!10996)

(assert (=> b!1416325 (= e!801623 (= (seekEntryOrOpen!0 (select (arr!46663 a!2901) j!112) a!2901 mask!2840) (Found!10996 j!112)))))

(declare-fun b!1416326 () Bool)

(declare-fun res!952476 () Bool)

(assert (=> b!1416326 (=> (not res!952476) (not e!801626))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416326 (= res!952476 (validKeyInArray!0 (select (arr!46663 a!2901) i!1037)))))

(declare-fun b!1416327 () Bool)

(assert (=> b!1416327 (= e!801626 (not e!801624))))

(declare-fun res!952475 () Bool)

(assert (=> b!1416327 (=> res!952475 e!801624)))

(assert (=> b!1416327 (= res!952475 (or (not (is-Intermediate!10996 lt!624889)) (undefined!11808 lt!624889)))))

(assert (=> b!1416327 e!801623))

(declare-fun res!952477 () Bool)

(assert (=> b!1416327 (=> (not res!952477) (not e!801623))))

(assert (=> b!1416327 (= res!952477 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!47916 0))(
  ( (Unit!47917) )
))
(declare-fun lt!624887 () Unit!47916)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96672 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47916)

(assert (=> b!1416327 (= lt!624887 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1416327 (= lt!624889 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46663 a!2901) j!112) mask!2840) (select (arr!46663 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416328 () Bool)

(declare-fun res!952473 () Bool)

(assert (=> b!1416328 (=> (not res!952473) (not e!801626))))

(assert (=> b!1416328 (= res!952473 (validKeyInArray!0 (select (arr!46663 a!2901) j!112)))))

(declare-fun b!1416323 () Bool)

(declare-fun res!952474 () Bool)

(assert (=> b!1416323 (=> (not res!952474) (not e!801626))))

(assert (=> b!1416323 (= res!952474 (and (= (size!47214 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47214 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47214 a!2901)) (not (= i!1037 j!112))))))

(declare-fun res!952478 () Bool)

(assert (=> start!122068 (=> (not res!952478) (not e!801626))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122068 (= res!952478 (validMask!0 mask!2840))))

(assert (=> start!122068 e!801626))

(assert (=> start!122068 true))

(declare-fun array_inv!35608 (array!96672) Bool)

(assert (=> start!122068 (array_inv!35608 a!2901)))

(assert (= (and start!122068 res!952478) b!1416323))

(assert (= (and b!1416323 res!952474) b!1416326))

(assert (= (and b!1416326 res!952476) b!1416328))

(assert (= (and b!1416328 res!952473) b!1416322))

(assert (= (and b!1416322 res!952479) b!1416321))

(assert (= (and b!1416321 res!952472) b!1416327))

(assert (= (and b!1416327 res!952477) b!1416325))

(assert (= (and b!1416327 (not res!952475)) b!1416324))

(declare-fun m!1307093 () Bool)

(assert (=> b!1416326 m!1307093))

(assert (=> b!1416326 m!1307093))

(declare-fun m!1307095 () Bool)

(assert (=> b!1416326 m!1307095))

(declare-fun m!1307097 () Bool)

(assert (=> b!1416328 m!1307097))

(assert (=> b!1416328 m!1307097))

(declare-fun m!1307099 () Bool)

(assert (=> b!1416328 m!1307099))

(declare-fun m!1307101 () Bool)

(assert (=> b!1416324 m!1307101))

(declare-fun m!1307103 () Bool)

(assert (=> b!1416324 m!1307103))

(assert (=> b!1416324 m!1307103))

(declare-fun m!1307105 () Bool)

(assert (=> b!1416324 m!1307105))

(assert (=> b!1416324 m!1307105))

(assert (=> b!1416324 m!1307103))

(declare-fun m!1307107 () Bool)

(assert (=> b!1416324 m!1307107))

(declare-fun m!1307109 () Bool)

(assert (=> b!1416321 m!1307109))

(assert (=> b!1416325 m!1307097))

(assert (=> b!1416325 m!1307097))

(declare-fun m!1307111 () Bool)

(assert (=> b!1416325 m!1307111))

(declare-fun m!1307113 () Bool)

(assert (=> start!122068 m!1307113))

(declare-fun m!1307115 () Bool)

(assert (=> start!122068 m!1307115))

(assert (=> b!1416327 m!1307097))

(declare-fun m!1307117 () Bool)

(assert (=> b!1416327 m!1307117))

(assert (=> b!1416327 m!1307097))

(declare-fun m!1307119 () Bool)

(assert (=> b!1416327 m!1307119))

(assert (=> b!1416327 m!1307117))

(assert (=> b!1416327 m!1307097))

(declare-fun m!1307121 () Bool)

(assert (=> b!1416327 m!1307121))

(declare-fun m!1307123 () Bool)

(assert (=> b!1416327 m!1307123))

(declare-fun m!1307125 () Bool)

(assert (=> b!1416322 m!1307125))

(push 1)

(assert (not b!1416322))

(assert (not b!1416321))

(assert (not b!1416328))

(assert (not b!1416325))

(assert (not b!1416327))

(assert (not b!1416326))

(assert (not start!122068))

(assert (not b!1416324))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1416422 () Bool)

(declare-fun e!801680 () SeekEntryResult!10996)

(declare-fun lt!624923 () SeekEntryResult!10996)

(assert (=> b!1416422 (= e!801680 (Found!10996 (index!46377 lt!624923)))))

(declare-fun b!1416423 () Bool)

(declare-fun e!801678 () SeekEntryResult!10996)

(assert (=> b!1416423 (= e!801678 (MissingZero!10996 (index!46377 lt!624923)))))

(declare-fun b!1416424 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96672 (_ BitVec 32)) SeekEntryResult!10996)

(assert (=> b!1416424 (= e!801678 (seekKeyOrZeroReturnVacant!0 (x!127982 lt!624923) (index!46377 lt!624923) (index!46377 lt!624923) (select (arr!46663 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416425 () Bool)

(declare-fun c!131424 () Bool)

(declare-fun lt!624924 () (_ BitVec 64))

(assert (=> b!1416425 (= c!131424 (= lt!624924 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1416425 (= e!801680 e!801678)))

(declare-fun d!152475 () Bool)

(declare-fun lt!624925 () SeekEntryResult!10996)

(assert (=> d!152475 (and (or (is-Undefined!10996 lt!624925) (not (is-Found!10996 lt!624925)) (and (bvsge (index!46376 lt!624925) #b00000000000000000000000000000000) (bvslt (index!46376 lt!624925) (size!47214 a!2901)))) (or (is-Undefined!10996 lt!624925) (is-Found!10996 lt!624925) (not (is-MissingZero!10996 lt!624925)) (and (bvsge (index!46375 lt!624925) #b00000000000000000000000000000000) (bvslt (index!46375 lt!624925) (size!47214 a!2901)))) (or (is-Undefined!10996 lt!624925) (is-Found!10996 lt!624925) (is-MissingZero!10996 lt!624925) (not (is-MissingVacant!10996 lt!624925)) (and (bvsge (index!46378 lt!624925) #b00000000000000000000000000000000) (bvslt (index!46378 lt!624925) (size!47214 a!2901)))) (or (is-Undefined!10996 lt!624925) (ite (is-Found!10996 lt!624925) (= (select (arr!46663 a!2901) (index!46376 lt!624925)) (select (arr!46663 a!2901) j!112)) (ite (is-MissingZero!10996 lt!624925) (= (select (arr!46663 a!2901) (index!46375 lt!624925)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!10996 lt!624925) (= (select (arr!46663 a!2901) (index!46378 lt!624925)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!801679 () SeekEntryResult!10996)

(assert (=> d!152475 (= lt!624925 e!801679)))

(declare-fun c!131426 () Bool)

(assert (=> d!152475 (= c!131426 (and (is-Intermediate!10996 lt!624923) (undefined!11808 lt!624923)))))

(assert (=> d!152475 (= lt!624923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46663 a!2901) j!112) mask!2840) (select (arr!46663 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!152475 (validMask!0 mask!2840)))

(assert (=> d!152475 (= (seekEntryOrOpen!0 (select (arr!46663 a!2901) j!112) a!2901 mask!2840) lt!624925)))

(declare-fun b!1416426 () Bool)

(assert (=> b!1416426 (= e!801679 Undefined!10996)))

(declare-fun b!1416427 () Bool)

(assert (=> b!1416427 (= e!801679 e!801680)))

(assert (=> b!1416427 (= lt!624924 (select (arr!46663 a!2901) (index!46377 lt!624923)))))

(declare-fun c!131425 () Bool)

(assert (=> b!1416427 (= c!131425 (= lt!624924 (select (arr!46663 a!2901) j!112)))))

(assert (= (and d!152475 c!131426) b!1416426))

(assert (= (and d!152475 (not c!131426)) b!1416427))

(assert (= (and b!1416427 c!131425) b!1416422))

(assert (= (and b!1416427 (not c!131425)) b!1416425))

(assert (= (and b!1416425 c!131424) b!1416423))

(assert (= (and b!1416425 (not c!131424)) b!1416424))

(assert (=> b!1416424 m!1307097))

(declare-fun m!1307213 () Bool)

(assert (=> b!1416424 m!1307213))

(assert (=> d!152475 m!1307117))

(assert (=> d!152475 m!1307097))

(assert (=> d!152475 m!1307121))

(assert (=> d!152475 m!1307113))

(declare-fun m!1307215 () Bool)

(assert (=> d!152475 m!1307215))

(declare-fun m!1307217 () Bool)

(assert (=> d!152475 m!1307217))

(assert (=> d!152475 m!1307097))

(assert (=> d!152475 m!1307117))

(declare-fun m!1307219 () Bool)

(assert (=> d!152475 m!1307219))

(declare-fun m!1307221 () Bool)

(assert (=> b!1416427 m!1307221))

(assert (=> b!1416325 d!152475))

(declare-fun b!1416450 () Bool)

(declare-fun e!801699 () Bool)

(declare-fun call!67188 () Bool)

(assert (=> b!1416450 (= e!801699 call!67188)))

(declare-fun b!1416451 () Bool)

(assert (=> b!1416451 (= e!801699 call!67188)))

(declare-fun b!1416452 () Bool)

(declare-fun e!801700 () Bool)

(assert (=> b!1416452 (= e!801700 e!801699)))

(declare-fun c!131432 () Bool)

(assert (=> b!1416452 (= c!131432 (validKeyInArray!0 (select (arr!46663 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1416453 () Bool)

(declare-fun e!801698 () Bool)

(declare-fun contains!9840 (List!33362 (_ BitVec 64)) Bool)

(assert (=> b!1416453 (= e!801698 (contains!9840 Nil!33359 (select (arr!46663 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67185 () Bool)

(assert (=> bm!67185 (= call!67188 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131432 (Cons!33358 (select (arr!46663 a!2901) #b00000000000000000000000000000000) Nil!33359) Nil!33359)))))

(declare-fun b!1416454 () Bool)

(declare-fun e!801701 () Bool)

(assert (=> b!1416454 (= e!801701 e!801700)))

(declare-fun res!952550 () Bool)

(assert (=> b!1416454 (=> (not res!952550) (not e!801700))))

(assert (=> b!1416454 (= res!952550 (not e!801698))))

(declare-fun res!952551 () Bool)

(assert (=> b!1416454 (=> (not res!952551) (not e!801698))))

(assert (=> b!1416454 (= res!952551 (validKeyInArray!0 (select (arr!46663 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!152487 () Bool)

(declare-fun res!952549 () Bool)

(assert (=> d!152487 (=> res!952549 e!801701)))

(assert (=> d!152487 (= res!952549 (bvsge #b00000000000000000000000000000000 (size!47214 a!2901)))))

(assert (=> d!152487 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33359) e!801701)))

(assert (= (and d!152487 (not res!952549)) b!1416454))

(assert (= (and b!1416454 res!952551) b!1416453))

(assert (= (and b!1416454 res!952550) b!1416452))

(assert (= (and b!1416452 c!131432) b!1416450))

(assert (= (and b!1416452 (not c!131432)) b!1416451))

(assert (= (or b!1416450 b!1416451) bm!67185))

(declare-fun m!1307231 () Bool)

(assert (=> b!1416452 m!1307231))

(assert (=> b!1416452 m!1307231))

(declare-fun m!1307233 () Bool)

(assert (=> b!1416452 m!1307233))

(assert (=> b!1416453 m!1307231))

(assert (=> b!1416453 m!1307231))

(declare-fun m!1307235 () Bool)

(assert (=> b!1416453 m!1307235))

(assert (=> bm!67185 m!1307231))

(declare-fun m!1307237 () Bool)

(assert (=> bm!67185 m!1307237))

(assert (=> b!1416454 m!1307231))

(assert (=> b!1416454 m!1307231))

(assert (=> b!1416454 m!1307233))

(assert (=> b!1416321 d!152487))

(declare-fun d!152493 () Bool)

(assert (=> d!152493 (= (validKeyInArray!0 (select (arr!46663 a!2901) i!1037)) (and (not (= (select (arr!46663 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46663 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1416326 d!152493))

(declare-fun d!152495 () Bool)

(assert (=> d!152495 (= (validKeyInArray!0 (select (arr!46663 a!2901) j!112)) (and (not (= (select (arr!46663 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46663 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1416328 d!152495))

(declare-fun b!1416490 () Bool)

(declare-fun e!801723 () Bool)

(declare-fun e!801724 () Bool)

(assert (=> b!1416490 (= e!801723 e!801724)))

(declare-fun c!131444 () Bool)

(assert (=> b!1416490 (= c!131444 (validKeyInArray!0 (select (arr!46663 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!67188 () Bool)

(declare-fun call!67191 () Bool)

(assert (=> bm!67188 (= call!67191 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1416491 () Bool)

(declare-fun e!801725 () Bool)

(assert (=> b!1416491 (= e!801725 call!67191)))

(declare-fun b!1416492 () Bool)

(assert (=> b!1416492 (= e!801724 call!67191)))

(declare-fun b!1416493 () Bool)

(assert (=> b!1416493 (= e!801724 e!801725)))

(declare-fun lt!624948 () (_ BitVec 64))

(assert (=> b!1416493 (= lt!624948 (select (arr!46663 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!624949 () Unit!47916)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!96672 (_ BitVec 64) (_ BitVec 32)) Unit!47916)

(assert (=> b!1416493 (= lt!624949 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!624948 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!96672 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1416493 (arrayContainsKey!0 a!2901 lt!624948 #b00000000000000000000000000000000)))

(declare-fun lt!624947 () Unit!47916)

(assert (=> b!1416493 (= lt!624947 lt!624949)))

(declare-fun res!952566 () Bool)

(assert (=> b!1416493 (= res!952566 (= (seekEntryOrOpen!0 (select (arr!46663 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10996 #b00000000000000000000000000000000)))))

(assert (=> b!1416493 (=> (not res!952566) (not e!801725))))

(declare-fun d!152497 () Bool)

(declare-fun res!952567 () Bool)

(assert (=> d!152497 (=> res!952567 e!801723)))

(assert (=> d!152497 (= res!952567 (bvsge #b00000000000000000000000000000000 (size!47214 a!2901)))))

(assert (=> d!152497 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!801723)))

(assert (= (and d!152497 (not res!952567)) b!1416490))

(assert (= (and b!1416490 c!131444) b!1416493))

(assert (= (and b!1416490 (not c!131444)) b!1416492))

(assert (= (and b!1416493 res!952566) b!1416491))

(assert (= (or b!1416491 b!1416492) bm!67188))

(assert (=> b!1416490 m!1307231))

(assert (=> b!1416490 m!1307231))

(assert (=> b!1416490 m!1307233))

(declare-fun m!1307247 () Bool)

(assert (=> bm!67188 m!1307247))

(assert (=> b!1416493 m!1307231))

(declare-fun m!1307249 () Bool)

(assert (=> b!1416493 m!1307249))

(declare-fun m!1307251 () Bool)

(assert (=> b!1416493 m!1307251))

(assert (=> b!1416493 m!1307231))

(declare-fun m!1307253 () Bool)

(assert (=> b!1416493 m!1307253))

(assert (=> b!1416322 d!152497))

(declare-fun b!1416494 () Bool)

(declare-fun e!801726 () Bool)

(declare-fun e!801727 () Bool)

(assert (=> b!1416494 (= e!801726 e!801727)))

(declare-fun c!131445 () Bool)

(assert (=> b!1416494 (= c!131445 (validKeyInArray!0 (select (arr!46663 a!2901) j!112)))))

(declare-fun bm!67189 () Bool)

(declare-fun call!67192 () Bool)

(assert (=> bm!67189 (= call!67192 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1416495 () Bool)

(declare-fun e!801728 () Bool)

(assert (=> b!1416495 (= e!801728 call!67192)))

(declare-fun b!1416496 () Bool)

(assert (=> b!1416496 (= e!801727 call!67192)))

(declare-fun b!1416497 () Bool)

(assert (=> b!1416497 (= e!801727 e!801728)))

(declare-fun lt!624951 () (_ BitVec 64))

(assert (=> b!1416497 (= lt!624951 (select (arr!46663 a!2901) j!112))))

(declare-fun lt!624952 () Unit!47916)

(assert (=> b!1416497 (= lt!624952 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!624951 j!112))))

(assert (=> b!1416497 (arrayContainsKey!0 a!2901 lt!624951 #b00000000000000000000000000000000)))

(declare-fun lt!624950 () Unit!47916)

(assert (=> b!1416497 (= lt!624950 lt!624952)))

(declare-fun res!952568 () Bool)

(assert (=> b!1416497 (= res!952568 (= (seekEntryOrOpen!0 (select (arr!46663 a!2901) j!112) a!2901 mask!2840) (Found!10996 j!112)))))

(assert (=> b!1416497 (=> (not res!952568) (not e!801728))))

(declare-fun d!152505 () Bool)

(declare-fun res!952569 () Bool)

(assert (=> d!152505 (=> res!952569 e!801726)))

(assert (=> d!152505 (= res!952569 (bvsge j!112 (size!47214 a!2901)))))

(assert (=> d!152505 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!801726)))

(assert (= (and d!152505 (not res!952569)) b!1416494))

(assert (= (and b!1416494 c!131445) b!1416497))

(assert (= (and b!1416494 (not c!131445)) b!1416496))

(assert (= (and b!1416497 res!952568) b!1416495))

(assert (= (or b!1416495 b!1416496) bm!67189))

(assert (=> b!1416494 m!1307097))

(assert (=> b!1416494 m!1307097))

(assert (=> b!1416494 m!1307099))

(declare-fun m!1307255 () Bool)

(assert (=> bm!67189 m!1307255))

(assert (=> b!1416497 m!1307097))

(declare-fun m!1307257 () Bool)

(assert (=> b!1416497 m!1307257))

(declare-fun m!1307259 () Bool)

(assert (=> b!1416497 m!1307259))

(assert (=> b!1416497 m!1307097))

(assert (=> b!1416497 m!1307111))

(assert (=> b!1416327 d!152505))

(declare-fun d!152507 () Bool)

(assert (=> d!152507 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!624961 () Unit!47916)

(declare-fun choose!38 (array!96672 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47916)

(assert (=> d!152507 (= lt!624961 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!152507 (validMask!0 mask!2840)))

(assert (=> d!152507 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!624961)))

(declare-fun bs!41288 () Bool)

(assert (= bs!41288 d!152507))

(assert (=> bs!41288 m!1307123))

(declare-fun m!1307261 () Bool)

(assert (=> bs!41288 m!1307261))

(assert (=> bs!41288 m!1307113))

(assert (=> b!1416327 d!152507))

(declare-fun b!1416572 () Bool)

(declare-fun e!801778 () SeekEntryResult!10996)

(declare-fun e!801774 () SeekEntryResult!10996)

(assert (=> b!1416572 (= e!801778 e!801774)))

(declare-fun c!131470 () Bool)

(declare-fun lt!625000 () (_ BitVec 64))

(assert (=> b!1416572 (= c!131470 (or (= lt!625000 (select (arr!46663 a!2901) j!112)) (= (bvadd lt!625000 lt!625000) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1416573 () Bool)

(declare-fun e!801775 () Bool)

(declare-fun e!801776 () Bool)

(assert (=> b!1416573 (= e!801775 e!801776)))

(declare-fun res!952601 () Bool)

(declare-fun lt!625001 () SeekEntryResult!10996)

(assert (=> b!1416573 (= res!952601 (and (is-Intermediate!10996 lt!625001) (not (undefined!11808 lt!625001)) (bvslt (x!127982 lt!625001) #b01111111111111111111111111111110) (bvsge (x!127982 lt!625001) #b00000000000000000000000000000000) (bvsge (x!127982 lt!625001) #b00000000000000000000000000000000)))))

(assert (=> b!1416573 (=> (not res!952601) (not e!801776))))

(declare-fun d!152513 () Bool)

(assert (=> d!152513 e!801775))

(declare-fun c!131471 () Bool)

(assert (=> d!152513 (= c!131471 (and (is-Intermediate!10996 lt!625001) (undefined!11808 lt!625001)))))

(assert (=> d!152513 (= lt!625001 e!801778)))

(declare-fun c!131469 () Bool)

(assert (=> d!152513 (= c!131469 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152513 (= lt!625000 (select (arr!46663 a!2901) (toIndex!0 (select (arr!46663 a!2901) j!112) mask!2840)))))

(assert (=> d!152513 (validMask!0 mask!2840)))

(assert (=> d!152513 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46663 a!2901) j!112) mask!2840) (select (arr!46663 a!2901) j!112) a!2901 mask!2840) lt!625001)))

(declare-fun b!1416574 () Bool)

(assert (=> b!1416574 (and (bvsge (index!46377 lt!625001) #b00000000000000000000000000000000) (bvslt (index!46377 lt!625001) (size!47214 a!2901)))))

(declare-fun e!801777 () Bool)

(assert (=> b!1416574 (= e!801777 (= (select (arr!46663 a!2901) (index!46377 lt!625001)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1416575 () Bool)

(assert (=> b!1416575 (and (bvsge (index!46377 lt!625001) #b00000000000000000000000000000000) (bvslt (index!46377 lt!625001) (size!47214 a!2901)))))

(declare-fun res!952599 () Bool)

(assert (=> b!1416575 (= res!952599 (= (select (arr!46663 a!2901) (index!46377 lt!625001)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1416575 (=> res!952599 e!801777)))

(declare-fun b!1416576 () Bool)

(assert (=> b!1416576 (and (bvsge (index!46377 lt!625001) #b00000000000000000000000000000000) (bvslt (index!46377 lt!625001) (size!47214 a!2901)))))

(declare-fun res!952600 () Bool)

(assert (=> b!1416576 (= res!952600 (= (select (arr!46663 a!2901) (index!46377 lt!625001)) (select (arr!46663 a!2901) j!112)))))

(assert (=> b!1416576 (=> res!952600 e!801777)))

(assert (=> b!1416576 (= e!801776 e!801777)))

(declare-fun b!1416577 () Bool)

(assert (=> b!1416577 (= e!801778 (Intermediate!10996 true (toIndex!0 (select (arr!46663 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416578 () Bool)

(assert (=> b!1416578 (= e!801774 (Intermediate!10996 false (toIndex!0 (select (arr!46663 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416579 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416579 (= e!801774 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46663 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!46663 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1416580 () Bool)

(assert (=> b!1416580 (= e!801775 (bvsge (x!127982 lt!625001) #b01111111111111111111111111111110))))

(assert (= (and d!152513 c!131469) b!1416577))

(assert (= (and d!152513 (not c!131469)) b!1416572))

(assert (= (and b!1416572 c!131470) b!1416578))

(assert (= (and b!1416572 (not c!131470)) b!1416579))

(assert (= (and d!152513 c!131471) b!1416580))

(assert (= (and d!152513 (not c!131471)) b!1416573))

(assert (= (and b!1416573 res!952601) b!1416576))

(assert (= (and b!1416576 (not res!952600)) b!1416575))

(assert (= (and b!1416575 (not res!952599)) b!1416574))

(assert (=> d!152513 m!1307117))

(declare-fun m!1307305 () Bool)

(assert (=> d!152513 m!1307305))

(assert (=> d!152513 m!1307113))

(declare-fun m!1307307 () Bool)

(assert (=> b!1416576 m!1307307))

(assert (=> b!1416579 m!1307117))

(declare-fun m!1307309 () Bool)

(assert (=> b!1416579 m!1307309))

(assert (=> b!1416579 m!1307309))

(assert (=> b!1416579 m!1307097))

(declare-fun m!1307311 () Bool)

(assert (=> b!1416579 m!1307311))

(assert (=> b!1416574 m!1307307))

(assert (=> b!1416575 m!1307307))

(assert (=> b!1416327 d!152513))

(declare-fun d!152533 () Bool)

(declare-fun lt!625014 () (_ BitVec 32))

(declare-fun lt!625013 () (_ BitVec 32))

(assert (=> d!152533 (= lt!625014 (bvmul (bvxor lt!625013 (bvlshr lt!625013 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152533 (= lt!625013 ((_ extract 31 0) (bvand (bvxor (select (arr!46663 a!2901) j!112) (bvlshr (select (arr!46663 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152533 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!952602 (let ((h!34650 ((_ extract 31 0) (bvand (bvxor (select (arr!46663 a!2901) j!112) (bvlshr (select (arr!46663 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127990 (bvmul (bvxor h!34650 (bvlshr h!34650 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127990 (bvlshr x!127990 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!952602 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!952602 #b00000000000000000000000000000000))))))

(assert (=> d!152533 (= (toIndex!0 (select (arr!46663 a!2901) j!112) mask!2840) (bvand (bvxor lt!625014 (bvlshr lt!625014 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1416327 d!152533))

(declare-fun b!1416590 () Bool)

(declare-fun e!801788 () SeekEntryResult!10996)

(declare-fun e!801784 () SeekEntryResult!10996)

(assert (=> b!1416590 (= e!801788 e!801784)))

(declare-fun lt!625015 () (_ BitVec 64))

(declare-fun c!131476 () Bool)

(assert (=> b!1416590 (= c!131476 (or (= lt!625015 (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)) (= (bvadd lt!625015 lt!625015) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1416591 () Bool)

(declare-fun e!801785 () Bool)

(declare-fun e!801786 () Bool)

(assert (=> b!1416591 (= e!801785 e!801786)))

(declare-fun res!952608 () Bool)

(declare-fun lt!625016 () SeekEntryResult!10996)

(assert (=> b!1416591 (= res!952608 (and (is-Intermediate!10996 lt!625016) (not (undefined!11808 lt!625016)) (bvslt (x!127982 lt!625016) #b01111111111111111111111111111110) (bvsge (x!127982 lt!625016) #b00000000000000000000000000000000) (bvsge (x!127982 lt!625016) #b00000000000000000000000000000000)))))

(assert (=> b!1416591 (=> (not res!952608) (not e!801786))))

(declare-fun d!152539 () Bool)

(assert (=> d!152539 e!801785))

(declare-fun c!131477 () Bool)

(assert (=> d!152539 (= c!131477 (and (is-Intermediate!10996 lt!625016) (undefined!11808 lt!625016)))))

(assert (=> d!152539 (= lt!625016 e!801788)))

(declare-fun c!131475 () Bool)

(assert (=> d!152539 (= c!131475 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!152539 (= lt!625015 (select (arr!46663 (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901))) (toIndex!0 (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840)))))

(assert (=> d!152539 (validMask!0 mask!2840)))

(assert (=> d!152539 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901)) mask!2840) lt!625016)))

(declare-fun b!1416592 () Bool)

(assert (=> b!1416592 (and (bvsge (index!46377 lt!625016) #b00000000000000000000000000000000) (bvslt (index!46377 lt!625016) (size!47214 (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901)))))))

(declare-fun e!801787 () Bool)

(assert (=> b!1416592 (= e!801787 (= (select (arr!46663 (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901))) (index!46377 lt!625016)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1416593 () Bool)

(assert (=> b!1416593 (and (bvsge (index!46377 lt!625016) #b00000000000000000000000000000000) (bvslt (index!46377 lt!625016) (size!47214 (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901)))))))

(declare-fun res!952606 () Bool)

(assert (=> b!1416593 (= res!952606 (= (select (arr!46663 (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901))) (index!46377 lt!625016)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1416593 (=> res!952606 e!801787)))

(declare-fun b!1416594 () Bool)

(assert (=> b!1416594 (and (bvsge (index!46377 lt!625016) #b00000000000000000000000000000000) (bvslt (index!46377 lt!625016) (size!47214 (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901)))))))

(declare-fun res!952607 () Bool)

(assert (=> b!1416594 (= res!952607 (= (select (arr!46663 (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901))) (index!46377 lt!625016)) (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112)))))

(assert (=> b!1416594 (=> res!952607 e!801787)))

(assert (=> b!1416594 (= e!801786 e!801787)))

(declare-fun b!1416595 () Bool)

(assert (=> b!1416595 (= e!801788 (Intermediate!10996 true (toIndex!0 (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416596 () Bool)

(assert (=> b!1416596 (= e!801784 (Intermediate!10996 false (toIndex!0 (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1416597 () Bool)

(assert (=> b!1416597 (= e!801784 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (array!96673 (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47214 a!2901)) mask!2840))))

(declare-fun b!1416598 () Bool)

(assert (=> b!1416598 (= e!801785 (bvsge (x!127982 lt!625016) #b01111111111111111111111111111110))))

(assert (= (and d!152539 c!131475) b!1416595))

(assert (= (and d!152539 (not c!131475)) b!1416590))

(assert (= (and b!1416590 c!131476) b!1416596))

(assert (= (and b!1416590 (not c!131476)) b!1416597))

(assert (= (and d!152539 c!131477) b!1416598))

(assert (= (and d!152539 (not c!131477)) b!1416591))

(assert (= (and b!1416591 res!952608) b!1416594))

(assert (= (and b!1416594 (not res!952607)) b!1416593))

(assert (= (and b!1416593 (not res!952606)) b!1416592))

(assert (=> d!152539 m!1307105))

(declare-fun m!1307323 () Bool)

(assert (=> d!152539 m!1307323))

(assert (=> d!152539 m!1307113))

(declare-fun m!1307325 () Bool)

(assert (=> b!1416594 m!1307325))

(assert (=> b!1416597 m!1307105))

(declare-fun m!1307327 () Bool)

(assert (=> b!1416597 m!1307327))

(assert (=> b!1416597 m!1307327))

(assert (=> b!1416597 m!1307103))

(declare-fun m!1307329 () Bool)

(assert (=> b!1416597 m!1307329))

(assert (=> b!1416592 m!1307325))

(assert (=> b!1416593 m!1307325))

(assert (=> b!1416324 d!152539))

(declare-fun d!152541 () Bool)

(declare-fun lt!625018 () (_ BitVec 32))

(declare-fun lt!625017 () (_ BitVec 32))

(assert (=> d!152541 (= lt!625018 (bvmul (bvxor lt!625017 (bvlshr lt!625017 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!152541 (= lt!625017 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!152541 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!952602 (let ((h!34650 ((_ extract 31 0) (bvand (bvxor (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) (bvlshr (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!127990 (bvmul (bvxor h!34650 (bvlshr h!34650 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!127990 (bvlshr x!127990 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!952602 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!952602 #b00000000000000000000000000000000))))))

(assert (=> d!152541 (= (toIndex!0 (select (store (arr!46663 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840) (bvand (bvxor lt!625018 (bvlshr lt!625018 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1416324 d!152541))

(declare-fun d!152543 () Bool)

(assert (=> d!152543 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!122068 d!152543))

(declare-fun d!152547 () Bool)

(assert (=> d!152547 (= (array_inv!35608 a!2901) (bvsge (size!47214 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!122068 d!152547))

(push 1)

