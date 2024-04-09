; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128700 () Bool)

(assert start!128700)

(declare-fun b!1507973 () Bool)

(declare-fun res!1028164 () Bool)

(declare-fun e!842511 () Bool)

(assert (=> b!1507973 (=> (not res!1028164) (not e!842511))))

(declare-datatypes ((array!100547 0))(
  ( (array!100548 (arr!48509 (Array (_ BitVec 32) (_ BitVec 64))) (size!49060 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100547)

(declare-datatypes ((List!35172 0))(
  ( (Nil!35169) (Cons!35168 (h!36575 (_ BitVec 64)) (t!49873 List!35172)) )
))
(declare-fun arrayNoDuplicates!0 (array!100547 (_ BitVec 32) List!35172) Bool)

(assert (=> b!1507973 (= res!1028164 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35169))))

(declare-fun b!1507974 () Bool)

(declare-fun res!1028166 () Bool)

(assert (=> b!1507974 (=> (not res!1028166) (not e!842511))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1507974 (= res!1028166 (validKeyInArray!0 (select (arr!48509 a!2804) j!70)))))

(declare-fun b!1507975 () Bool)

(declare-fun e!842513 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(assert (=> b!1507975 (= e!842513 (and (bvsge mask!2512 #b00000000000000000000000000000000) (bvsgt mask!2512 #b00111111111111111111111111111111)))))

(declare-fun b!1507976 () Bool)

(declare-fun res!1028161 () Bool)

(assert (=> b!1507976 (=> (not res!1028161) (not e!842511))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1507976 (= res!1028161 (validKeyInArray!0 (select (arr!48509 a!2804) i!961)))))

(declare-fun b!1507977 () Bool)

(declare-fun res!1028159 () Bool)

(assert (=> b!1507977 (=> (not res!1028159) (not e!842511))))

(assert (=> b!1507977 (= res!1028159 (and (= (size!49060 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49060 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49060 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1507978 () Bool)

(declare-fun res!1028162 () Bool)

(assert (=> b!1507978 (=> (not res!1028162) (not e!842511))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1507978 (= res!1028162 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49060 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49060 a!2804))))))

(declare-fun b!1507979 () Bool)

(declare-fun res!1028163 () Bool)

(assert (=> b!1507979 (=> (not res!1028163) (not e!842513))))

(declare-datatypes ((SeekEntryResult!12701 0))(
  ( (MissingZero!12701 (index!53198 (_ BitVec 32))) (Found!12701 (index!53199 (_ BitVec 32))) (Intermediate!12701 (undefined!13513 Bool) (index!53200 (_ BitVec 32)) (x!134964 (_ BitVec 32))) (Undefined!12701) (MissingVacant!12701 (index!53201 (_ BitVec 32))) )
))
(declare-fun lt!654475 () SeekEntryResult!12701)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100547 (_ BitVec 32)) SeekEntryResult!12701)

(assert (=> b!1507979 (= res!1028163 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48509 a!2804) j!70) a!2804 mask!2512) lt!654475))))

(declare-fun res!1028158 () Bool)

(assert (=> start!128700 (=> (not res!1028158) (not e!842511))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128700 (= res!1028158 (validMask!0 mask!2512))))

(assert (=> start!128700 e!842511))

(assert (=> start!128700 true))

(declare-fun array_inv!37454 (array!100547) Bool)

(assert (=> start!128700 (array_inv!37454 a!2804)))

(declare-fun b!1507980 () Bool)

(assert (=> b!1507980 (= e!842511 e!842513)))

(declare-fun res!1028160 () Bool)

(assert (=> b!1507980 (=> (not res!1028160) (not e!842513))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1507980 (= res!1028160 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48509 a!2804) j!70) mask!2512) (select (arr!48509 a!2804) j!70) a!2804 mask!2512) lt!654475))))

(assert (=> b!1507980 (= lt!654475 (Intermediate!12701 false resIndex!21 resX!21))))

(declare-fun b!1507981 () Bool)

(declare-fun res!1028165 () Bool)

(assert (=> b!1507981 (=> (not res!1028165) (not e!842511))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100547 (_ BitVec 32)) Bool)

(assert (=> b!1507981 (= res!1028165 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128700 res!1028158) b!1507977))

(assert (= (and b!1507977 res!1028159) b!1507976))

(assert (= (and b!1507976 res!1028161) b!1507974))

(assert (= (and b!1507974 res!1028166) b!1507981))

(assert (= (and b!1507981 res!1028165) b!1507973))

(assert (= (and b!1507973 res!1028164) b!1507978))

(assert (= (and b!1507978 res!1028162) b!1507980))

(assert (= (and b!1507980 res!1028160) b!1507979))

(assert (= (and b!1507979 res!1028163) b!1507975))

(declare-fun m!1390633 () Bool)

(assert (=> b!1507976 m!1390633))

(assert (=> b!1507976 m!1390633))

(declare-fun m!1390635 () Bool)

(assert (=> b!1507976 m!1390635))

(declare-fun m!1390637 () Bool)

(assert (=> b!1507979 m!1390637))

(assert (=> b!1507979 m!1390637))

(declare-fun m!1390639 () Bool)

(assert (=> b!1507979 m!1390639))

(declare-fun m!1390641 () Bool)

(assert (=> start!128700 m!1390641))

(declare-fun m!1390643 () Bool)

(assert (=> start!128700 m!1390643))

(assert (=> b!1507980 m!1390637))

(assert (=> b!1507980 m!1390637))

(declare-fun m!1390645 () Bool)

(assert (=> b!1507980 m!1390645))

(assert (=> b!1507980 m!1390645))

(assert (=> b!1507980 m!1390637))

(declare-fun m!1390647 () Bool)

(assert (=> b!1507980 m!1390647))

(assert (=> b!1507974 m!1390637))

(assert (=> b!1507974 m!1390637))

(declare-fun m!1390649 () Bool)

(assert (=> b!1507974 m!1390649))

(declare-fun m!1390651 () Bool)

(assert (=> b!1507973 m!1390651))

(declare-fun m!1390653 () Bool)

(assert (=> b!1507981 m!1390653))

(check-sat (not start!128700) (not b!1507973) (not b!1507976) (not b!1507980) (not b!1507974) (not b!1507981) (not b!1507979))
(check-sat)
(get-model)

(declare-fun b!1508019 () Bool)

(declare-fun e!842534 () Bool)

(declare-fun call!68277 () Bool)

(assert (=> b!1508019 (= e!842534 call!68277)))

(declare-fun b!1508020 () Bool)

(declare-fun e!842531 () Bool)

(declare-fun e!842533 () Bool)

(assert (=> b!1508020 (= e!842531 e!842533)))

(declare-fun res!1028201 () Bool)

(assert (=> b!1508020 (=> (not res!1028201) (not e!842533))))

(declare-fun e!842532 () Bool)

(assert (=> b!1508020 (= res!1028201 (not e!842532))))

(declare-fun res!1028200 () Bool)

(assert (=> b!1508020 (=> (not res!1028200) (not e!842532))))

(assert (=> b!1508020 (= res!1028200 (validKeyInArray!0 (select (arr!48509 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1508021 () Bool)

(assert (=> b!1508021 (= e!842534 call!68277)))

(declare-fun b!1508022 () Bool)

(assert (=> b!1508022 (= e!842533 e!842534)))

(declare-fun c!139451 () Bool)

(assert (=> b!1508022 (= c!139451 (validKeyInArray!0 (select (arr!48509 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1508023 () Bool)

(declare-fun contains!9981 (List!35172 (_ BitVec 64)) Bool)

(assert (=> b!1508023 (= e!842532 (contains!9981 Nil!35169 (select (arr!48509 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158339 () Bool)

(declare-fun res!1028202 () Bool)

(assert (=> d!158339 (=> res!1028202 e!842531)))

(assert (=> d!158339 (= res!1028202 (bvsge #b00000000000000000000000000000000 (size!49060 a!2804)))))

(assert (=> d!158339 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35169) e!842531)))

(declare-fun bm!68274 () Bool)

(assert (=> bm!68274 (= call!68277 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139451 (Cons!35168 (select (arr!48509 a!2804) #b00000000000000000000000000000000) Nil!35169) Nil!35169)))))

(assert (= (and d!158339 (not res!1028202)) b!1508020))

(assert (= (and b!1508020 res!1028200) b!1508023))

(assert (= (and b!1508020 res!1028201) b!1508022))

(assert (= (and b!1508022 c!139451) b!1508021))

(assert (= (and b!1508022 (not c!139451)) b!1508019))

(assert (= (or b!1508021 b!1508019) bm!68274))

(declare-fun m!1390677 () Bool)

(assert (=> b!1508020 m!1390677))

(assert (=> b!1508020 m!1390677))

(declare-fun m!1390679 () Bool)

(assert (=> b!1508020 m!1390679))

(assert (=> b!1508022 m!1390677))

(assert (=> b!1508022 m!1390677))

(assert (=> b!1508022 m!1390679))

(assert (=> b!1508023 m!1390677))

(assert (=> b!1508023 m!1390677))

(declare-fun m!1390681 () Bool)

(assert (=> b!1508023 m!1390681))

(assert (=> bm!68274 m!1390677))

(declare-fun m!1390683 () Bool)

(assert (=> bm!68274 m!1390683))

(assert (=> b!1507973 d!158339))

(declare-fun d!158341 () Bool)

(assert (=> d!158341 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128700 d!158341))

(declare-fun d!158347 () Bool)

(assert (=> d!158347 (= (array_inv!37454 a!2804) (bvsge (size!49060 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128700 d!158347))

(declare-fun b!1508089 () Bool)

(declare-fun e!842574 () SeekEntryResult!12701)

(assert (=> b!1508089 (= e!842574 (Intermediate!12701 true index!487 x!534))))

(declare-fun b!1508090 () Bool)

(declare-fun lt!654503 () SeekEntryResult!12701)

(assert (=> b!1508090 (and (bvsge (index!53200 lt!654503) #b00000000000000000000000000000000) (bvslt (index!53200 lt!654503) (size!49060 a!2804)))))

(declare-fun res!1028224 () Bool)

(assert (=> b!1508090 (= res!1028224 (= (select (arr!48509 a!2804) (index!53200 lt!654503)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!842576 () Bool)

(assert (=> b!1508090 (=> res!1028224 e!842576)))

(declare-fun b!1508091 () Bool)

(declare-fun e!842577 () SeekEntryResult!12701)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1508091 (= e!842577 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48509 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1508092 () Bool)

(assert (=> b!1508092 (= e!842577 (Intermediate!12701 false index!487 x!534))))

(declare-fun b!1508094 () Bool)

(assert (=> b!1508094 (= e!842574 e!842577)))

(declare-fun lt!654502 () (_ BitVec 64))

(declare-fun c!139474 () Bool)

(assert (=> b!1508094 (= c!139474 (or (= lt!654502 (select (arr!48509 a!2804) j!70)) (= (bvadd lt!654502 lt!654502) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508095 () Bool)

(declare-fun e!842573 () Bool)

(assert (=> b!1508095 (= e!842573 (bvsge (x!134964 lt!654503) #b01111111111111111111111111111110))))

(declare-fun b!1508096 () Bool)

(assert (=> b!1508096 (and (bvsge (index!53200 lt!654503) #b00000000000000000000000000000000) (bvslt (index!53200 lt!654503) (size!49060 a!2804)))))

(declare-fun res!1028226 () Bool)

(assert (=> b!1508096 (= res!1028226 (= (select (arr!48509 a!2804) (index!53200 lt!654503)) (select (arr!48509 a!2804) j!70)))))

(assert (=> b!1508096 (=> res!1028226 e!842576)))

(declare-fun e!842575 () Bool)

(assert (=> b!1508096 (= e!842575 e!842576)))

(declare-fun b!1508097 () Bool)

(assert (=> b!1508097 (and (bvsge (index!53200 lt!654503) #b00000000000000000000000000000000) (bvslt (index!53200 lt!654503) (size!49060 a!2804)))))

(assert (=> b!1508097 (= e!842576 (= (select (arr!48509 a!2804) (index!53200 lt!654503)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508093 () Bool)

(assert (=> b!1508093 (= e!842573 e!842575)))

(declare-fun res!1028225 () Bool)

(get-info :version)

(assert (=> b!1508093 (= res!1028225 (and ((_ is Intermediate!12701) lt!654503) (not (undefined!13513 lt!654503)) (bvslt (x!134964 lt!654503) #b01111111111111111111111111111110) (bvsge (x!134964 lt!654503) #b00000000000000000000000000000000) (bvsge (x!134964 lt!654503) x!534)))))

(assert (=> b!1508093 (=> (not res!1028225) (not e!842575))))

(declare-fun d!158349 () Bool)

(assert (=> d!158349 e!842573))

(declare-fun c!139476 () Bool)

(assert (=> d!158349 (= c!139476 (and ((_ is Intermediate!12701) lt!654503) (undefined!13513 lt!654503)))))

(assert (=> d!158349 (= lt!654503 e!842574)))

(declare-fun c!139475 () Bool)

(assert (=> d!158349 (= c!139475 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158349 (= lt!654502 (select (arr!48509 a!2804) index!487))))

(assert (=> d!158349 (validMask!0 mask!2512)))

(assert (=> d!158349 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48509 a!2804) j!70) a!2804 mask!2512) lt!654503)))

(assert (= (and d!158349 c!139475) b!1508089))

(assert (= (and d!158349 (not c!139475)) b!1508094))

(assert (= (and b!1508094 c!139474) b!1508092))

(assert (= (and b!1508094 (not c!139474)) b!1508091))

(assert (= (and d!158349 c!139476) b!1508095))

(assert (= (and d!158349 (not c!139476)) b!1508093))

(assert (= (and b!1508093 res!1028225) b!1508096))

(assert (= (and b!1508096 (not res!1028226)) b!1508090))

(assert (= (and b!1508090 (not res!1028224)) b!1508097))

(declare-fun m!1390705 () Bool)

(assert (=> b!1508097 m!1390705))

(declare-fun m!1390707 () Bool)

(assert (=> d!158349 m!1390707))

(assert (=> d!158349 m!1390641))

(declare-fun m!1390709 () Bool)

(assert (=> b!1508091 m!1390709))

(assert (=> b!1508091 m!1390709))

(assert (=> b!1508091 m!1390637))

(declare-fun m!1390711 () Bool)

(assert (=> b!1508091 m!1390711))

(assert (=> b!1508090 m!1390705))

(assert (=> b!1508096 m!1390705))

(assert (=> b!1507979 d!158349))

(declare-fun d!158359 () Bool)

(assert (=> d!158359 (= (validKeyInArray!0 (select (arr!48509 a!2804) j!70)) (and (not (= (select (arr!48509 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48509 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1507974 d!158359))

(declare-fun b!1508108 () Bool)

(declare-fun e!842585 () SeekEntryResult!12701)

(assert (=> b!1508108 (= e!842585 (Intermediate!12701 true (toIndex!0 (select (arr!48509 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508109 () Bool)

(declare-fun lt!654505 () SeekEntryResult!12701)

(assert (=> b!1508109 (and (bvsge (index!53200 lt!654505) #b00000000000000000000000000000000) (bvslt (index!53200 lt!654505) (size!49060 a!2804)))))

(declare-fun res!1028233 () Bool)

(assert (=> b!1508109 (= res!1028233 (= (select (arr!48509 a!2804) (index!53200 lt!654505)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!842587 () Bool)

(assert (=> b!1508109 (=> res!1028233 e!842587)))

(declare-fun b!1508110 () Bool)

(declare-fun e!842588 () SeekEntryResult!12701)

(assert (=> b!1508110 (= e!842588 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48509 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48509 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1508111 () Bool)

(assert (=> b!1508111 (= e!842588 (Intermediate!12701 false (toIndex!0 (select (arr!48509 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1508113 () Bool)

(assert (=> b!1508113 (= e!842585 e!842588)))

(declare-fun lt!654504 () (_ BitVec 64))

(declare-fun c!139479 () Bool)

(assert (=> b!1508113 (= c!139479 (or (= lt!654504 (select (arr!48509 a!2804) j!70)) (= (bvadd lt!654504 lt!654504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1508114 () Bool)

(declare-fun e!842584 () Bool)

(assert (=> b!1508114 (= e!842584 (bvsge (x!134964 lt!654505) #b01111111111111111111111111111110))))

(declare-fun b!1508115 () Bool)

(assert (=> b!1508115 (and (bvsge (index!53200 lt!654505) #b00000000000000000000000000000000) (bvslt (index!53200 lt!654505) (size!49060 a!2804)))))

(declare-fun res!1028235 () Bool)

(assert (=> b!1508115 (= res!1028235 (= (select (arr!48509 a!2804) (index!53200 lt!654505)) (select (arr!48509 a!2804) j!70)))))

(assert (=> b!1508115 (=> res!1028235 e!842587)))

(declare-fun e!842586 () Bool)

(assert (=> b!1508115 (= e!842586 e!842587)))

(declare-fun b!1508116 () Bool)

(assert (=> b!1508116 (and (bvsge (index!53200 lt!654505) #b00000000000000000000000000000000) (bvslt (index!53200 lt!654505) (size!49060 a!2804)))))

(assert (=> b!1508116 (= e!842587 (= (select (arr!48509 a!2804) (index!53200 lt!654505)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1508112 () Bool)

(assert (=> b!1508112 (= e!842584 e!842586)))

(declare-fun res!1028234 () Bool)

(assert (=> b!1508112 (= res!1028234 (and ((_ is Intermediate!12701) lt!654505) (not (undefined!13513 lt!654505)) (bvslt (x!134964 lt!654505) #b01111111111111111111111111111110) (bvsge (x!134964 lt!654505) #b00000000000000000000000000000000) (bvsge (x!134964 lt!654505) #b00000000000000000000000000000000)))))

(assert (=> b!1508112 (=> (not res!1028234) (not e!842586))))

(declare-fun d!158361 () Bool)

(assert (=> d!158361 e!842584))

(declare-fun c!139481 () Bool)

(assert (=> d!158361 (= c!139481 (and ((_ is Intermediate!12701) lt!654505) (undefined!13513 lt!654505)))))

(assert (=> d!158361 (= lt!654505 e!842585)))

(declare-fun c!139480 () Bool)

(assert (=> d!158361 (= c!139480 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158361 (= lt!654504 (select (arr!48509 a!2804) (toIndex!0 (select (arr!48509 a!2804) j!70) mask!2512)))))

(assert (=> d!158361 (validMask!0 mask!2512)))

(assert (=> d!158361 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48509 a!2804) j!70) mask!2512) (select (arr!48509 a!2804) j!70) a!2804 mask!2512) lt!654505)))

(assert (= (and d!158361 c!139480) b!1508108))

(assert (= (and d!158361 (not c!139480)) b!1508113))

(assert (= (and b!1508113 c!139479) b!1508111))

(assert (= (and b!1508113 (not c!139479)) b!1508110))

(assert (= (and d!158361 c!139481) b!1508114))

(assert (= (and d!158361 (not c!139481)) b!1508112))

(assert (= (and b!1508112 res!1028234) b!1508115))

(assert (= (and b!1508115 (not res!1028235)) b!1508109))

(assert (= (and b!1508109 (not res!1028233)) b!1508116))

(declare-fun m!1390713 () Bool)

(assert (=> b!1508116 m!1390713))

(assert (=> d!158361 m!1390645))

(declare-fun m!1390715 () Bool)

(assert (=> d!158361 m!1390715))

(assert (=> d!158361 m!1390641))

(assert (=> b!1508110 m!1390645))

(declare-fun m!1390717 () Bool)

(assert (=> b!1508110 m!1390717))

(assert (=> b!1508110 m!1390717))

(assert (=> b!1508110 m!1390637))

(declare-fun m!1390719 () Bool)

(assert (=> b!1508110 m!1390719))

(assert (=> b!1508109 m!1390713))

(assert (=> b!1508115 m!1390713))

(assert (=> b!1507980 d!158361))

(declare-fun d!158363 () Bool)

(declare-fun lt!654515 () (_ BitVec 32))

(declare-fun lt!654514 () (_ BitVec 32))

(assert (=> d!158363 (= lt!654515 (bvmul (bvxor lt!654514 (bvlshr lt!654514 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158363 (= lt!654514 ((_ extract 31 0) (bvand (bvxor (select (arr!48509 a!2804) j!70) (bvlshr (select (arr!48509 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158363 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1028236 (let ((h!36577 ((_ extract 31 0) (bvand (bvxor (select (arr!48509 a!2804) j!70) (bvlshr (select (arr!48509 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!134969 (bvmul (bvxor h!36577 (bvlshr h!36577 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!134969 (bvlshr x!134969 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1028236 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1028236 #b00000000000000000000000000000000))))))

(assert (=> d!158363 (= (toIndex!0 (select (arr!48509 a!2804) j!70) mask!2512) (bvand (bvxor lt!654515 (bvlshr lt!654515 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1507980 d!158363))

(declare-fun b!1508152 () Bool)

(declare-fun e!842610 () Bool)

(declare-fun e!842612 () Bool)

(assert (=> b!1508152 (= e!842610 e!842612)))

(declare-fun lt!654537 () (_ BitVec 64))

(assert (=> b!1508152 (= lt!654537 (select (arr!48509 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50286 0))(
  ( (Unit!50287) )
))
(declare-fun lt!654536 () Unit!50286)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100547 (_ BitVec 64) (_ BitVec 32)) Unit!50286)

(assert (=> b!1508152 (= lt!654536 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654537 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1508152 (arrayContainsKey!0 a!2804 lt!654537 #b00000000000000000000000000000000)))

(declare-fun lt!654538 () Unit!50286)

(assert (=> b!1508152 (= lt!654538 lt!654536)))

(declare-fun res!1028252 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100547 (_ BitVec 32)) SeekEntryResult!12701)

(assert (=> b!1508152 (= res!1028252 (= (seekEntryOrOpen!0 (select (arr!48509 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12701 #b00000000000000000000000000000000)))))

(assert (=> b!1508152 (=> (not res!1028252) (not e!842612))))

(declare-fun b!1508153 () Bool)

(declare-fun call!68283 () Bool)

(assert (=> b!1508153 (= e!842612 call!68283)))

(declare-fun b!1508154 () Bool)

(assert (=> b!1508154 (= e!842610 call!68283)))

(declare-fun b!1508155 () Bool)

(declare-fun e!842611 () Bool)

(assert (=> b!1508155 (= e!842611 e!842610)))

(declare-fun c!139493 () Bool)

(assert (=> b!1508155 (= c!139493 (validKeyInArray!0 (select (arr!48509 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68280 () Bool)

(assert (=> bm!68280 (= call!68283 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun d!158369 () Bool)

(declare-fun res!1028253 () Bool)

(assert (=> d!158369 (=> res!1028253 e!842611)))

(assert (=> d!158369 (= res!1028253 (bvsge #b00000000000000000000000000000000 (size!49060 a!2804)))))

(assert (=> d!158369 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!842611)))

(assert (= (and d!158369 (not res!1028253)) b!1508155))

(assert (= (and b!1508155 c!139493) b!1508152))

(assert (= (and b!1508155 (not c!139493)) b!1508154))

(assert (= (and b!1508152 res!1028252) b!1508153))

(assert (= (or b!1508153 b!1508154) bm!68280))

(assert (=> b!1508152 m!1390677))

(declare-fun m!1390745 () Bool)

(assert (=> b!1508152 m!1390745))

(declare-fun m!1390747 () Bool)

(assert (=> b!1508152 m!1390747))

(assert (=> b!1508152 m!1390677))

(declare-fun m!1390749 () Bool)

(assert (=> b!1508152 m!1390749))

(assert (=> b!1508155 m!1390677))

(assert (=> b!1508155 m!1390677))

(assert (=> b!1508155 m!1390679))

(declare-fun m!1390751 () Bool)

(assert (=> bm!68280 m!1390751))

(assert (=> b!1507981 d!158369))

(declare-fun d!158387 () Bool)

(assert (=> d!158387 (= (validKeyInArray!0 (select (arr!48509 a!2804) i!961)) (and (not (= (select (arr!48509 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48509 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1507976 d!158387))

(check-sat (not d!158349) (not b!1508091) (not b!1508110) (not d!158361) (not b!1508022) (not b!1508020) (not b!1508023) (not b!1508155) (not b!1508152) (not bm!68280) (not bm!68274))
(check-sat)
