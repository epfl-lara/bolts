; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130404 () Bool)

(assert start!130404)

(declare-fun b!1530335 () Bool)

(declare-fun res!1047997 () Bool)

(declare-fun e!852767 () Bool)

(assert (=> b!1530335 (=> (not res!1047997) (not e!852767))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101624 0))(
  ( (array!101625 (arr!49031 (Array (_ BitVec 32) (_ BitVec 64))) (size!49582 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101624)

(assert (=> b!1530335 (= res!1047997 (and (= (size!49582 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49582 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49582 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1530336 () Bool)

(declare-fun res!1048001 () Bool)

(declare-fun e!852768 () Bool)

(assert (=> b!1530336 (=> (not res!1048001) (not e!852768))))

(declare-datatypes ((SeekEntryResult!13217 0))(
  ( (MissingZero!13217 (index!55262 (_ BitVec 32))) (Found!13217 (index!55263 (_ BitVec 32))) (Intermediate!13217 (undefined!14029 Bool) (index!55264 (_ BitVec 32)) (x!136956 (_ BitVec 32))) (Undefined!13217) (MissingVacant!13217 (index!55265 (_ BitVec 32))) )
))
(declare-fun lt!662746 () SeekEntryResult!13217)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101624 (_ BitVec 32)) SeekEntryResult!13217)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530336 (= res!1048001 (= lt!662746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804)) mask!2512)))))

(declare-fun b!1530337 () Bool)

(declare-fun res!1048003 () Bool)

(assert (=> b!1530337 (=> (not res!1048003) (not e!852767))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1530337 (= res!1048003 (validKeyInArray!0 (select (arr!49031 a!2804) i!961)))))

(declare-fun b!1530339 () Bool)

(declare-fun res!1048006 () Bool)

(assert (=> b!1530339 (=> (not res!1048006) (not e!852767))))

(assert (=> b!1530339 (= res!1048006 (validKeyInArray!0 (select (arr!49031 a!2804) j!70)))))

(declare-fun b!1530340 () Bool)

(declare-fun res!1047998 () Bool)

(assert (=> b!1530340 (=> (not res!1047998) (not e!852767))))

(declare-datatypes ((List!35694 0))(
  ( (Nil!35691) (Cons!35690 (h!37130 (_ BitVec 64)) (t!50395 List!35694)) )
))
(declare-fun arrayNoDuplicates!0 (array!101624 (_ BitVec 32) List!35694) Bool)

(assert (=> b!1530340 (= res!1047998 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35691))))

(declare-fun b!1530341 () Bool)

(declare-fun e!852766 () Bool)

(assert (=> b!1530341 (= e!852768 (not e!852766))))

(declare-fun res!1048000 () Bool)

(assert (=> b!1530341 (=> res!1048000 e!852766)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1530341 (= res!1048000 (or (not (= (select (arr!49031 a!2804) j!70) (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!852770 () Bool)

(assert (=> b!1530341 e!852770))

(declare-fun res!1048008 () Bool)

(assert (=> b!1530341 (=> (not res!1048008) (not e!852770))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101624 (_ BitVec 32)) Bool)

(assert (=> b!1530341 (= res!1048008 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!51174 0))(
  ( (Unit!51175) )
))
(declare-fun lt!662747 () Unit!51174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51174)

(assert (=> b!1530341 (= lt!662747 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1530342 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101624 (_ BitVec 32)) SeekEntryResult!13217)

(assert (=> b!1530342 (= e!852770 (= (seekEntry!0 (select (arr!49031 a!2804) j!70) a!2804 mask!2512) (Found!13217 j!70)))))

(declare-fun b!1530343 () Bool)

(declare-fun res!1047999 () Bool)

(assert (=> b!1530343 (=> (not res!1047999) (not e!852767))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1530343 (= res!1047999 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49582 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49582 a!2804))))))

(declare-fun lt!662748 () (_ BitVec 32))

(declare-fun b!1530344 () Bool)

(assert (=> b!1530344 (= e!852766 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (and (bvsge lt!662748 #b00000000000000000000000000000000) (bvslt lt!662748 (size!49582 a!2804)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1530344 (= lt!662748 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1530345 () Bool)

(assert (=> b!1530345 (= e!852767 e!852768)))

(declare-fun res!1048007 () Bool)

(assert (=> b!1530345 (=> (not res!1048007) (not e!852768))))

(declare-fun lt!662749 () SeekEntryResult!13217)

(assert (=> b!1530345 (= res!1048007 (= lt!662746 lt!662749))))

(assert (=> b!1530345 (= lt!662749 (Intermediate!13217 false resIndex!21 resX!21))))

(assert (=> b!1530345 (= lt!662746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49031 a!2804) j!70) mask!2512) (select (arr!49031 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530346 () Bool)

(declare-fun res!1048004 () Bool)

(assert (=> b!1530346 (=> (not res!1048004) (not e!852768))))

(assert (=> b!1530346 (= res!1048004 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49031 a!2804) j!70) a!2804 mask!2512) lt!662749))))

(declare-fun b!1530338 () Bool)

(declare-fun res!1048002 () Bool)

(assert (=> b!1530338 (=> (not res!1048002) (not e!852767))))

(assert (=> b!1530338 (= res!1048002 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun res!1048005 () Bool)

(assert (=> start!130404 (=> (not res!1048005) (not e!852767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130404 (= res!1048005 (validMask!0 mask!2512))))

(assert (=> start!130404 e!852767))

(assert (=> start!130404 true))

(declare-fun array_inv!37976 (array!101624) Bool)

(assert (=> start!130404 (array_inv!37976 a!2804)))

(assert (= (and start!130404 res!1048005) b!1530335))

(assert (= (and b!1530335 res!1047997) b!1530337))

(assert (= (and b!1530337 res!1048003) b!1530339))

(assert (= (and b!1530339 res!1048006) b!1530338))

(assert (= (and b!1530338 res!1048002) b!1530340))

(assert (= (and b!1530340 res!1047998) b!1530343))

(assert (= (and b!1530343 res!1047999) b!1530345))

(assert (= (and b!1530345 res!1048007) b!1530346))

(assert (= (and b!1530346 res!1048004) b!1530336))

(assert (= (and b!1530336 res!1048001) b!1530341))

(assert (= (and b!1530341 res!1048008) b!1530342))

(assert (= (and b!1530341 (not res!1048000)) b!1530344))

(declare-fun m!1413257 () Bool)

(assert (=> b!1530339 m!1413257))

(assert (=> b!1530339 m!1413257))

(declare-fun m!1413259 () Bool)

(assert (=> b!1530339 m!1413259))

(declare-fun m!1413261 () Bool)

(assert (=> b!1530336 m!1413261))

(declare-fun m!1413263 () Bool)

(assert (=> b!1530336 m!1413263))

(assert (=> b!1530336 m!1413263))

(declare-fun m!1413265 () Bool)

(assert (=> b!1530336 m!1413265))

(assert (=> b!1530336 m!1413265))

(assert (=> b!1530336 m!1413263))

(declare-fun m!1413267 () Bool)

(assert (=> b!1530336 m!1413267))

(declare-fun m!1413269 () Bool)

(assert (=> b!1530340 m!1413269))

(assert (=> b!1530346 m!1413257))

(assert (=> b!1530346 m!1413257))

(declare-fun m!1413271 () Bool)

(assert (=> b!1530346 m!1413271))

(declare-fun m!1413273 () Bool)

(assert (=> b!1530338 m!1413273))

(declare-fun m!1413275 () Bool)

(assert (=> start!130404 m!1413275))

(declare-fun m!1413277 () Bool)

(assert (=> start!130404 m!1413277))

(assert (=> b!1530341 m!1413257))

(declare-fun m!1413279 () Bool)

(assert (=> b!1530341 m!1413279))

(assert (=> b!1530341 m!1413261))

(assert (=> b!1530341 m!1413263))

(declare-fun m!1413281 () Bool)

(assert (=> b!1530341 m!1413281))

(declare-fun m!1413283 () Bool)

(assert (=> b!1530344 m!1413283))

(declare-fun m!1413285 () Bool)

(assert (=> b!1530337 m!1413285))

(assert (=> b!1530337 m!1413285))

(declare-fun m!1413287 () Bool)

(assert (=> b!1530337 m!1413287))

(assert (=> b!1530342 m!1413257))

(assert (=> b!1530342 m!1413257))

(declare-fun m!1413289 () Bool)

(assert (=> b!1530342 m!1413289))

(assert (=> b!1530345 m!1413257))

(assert (=> b!1530345 m!1413257))

(declare-fun m!1413291 () Bool)

(assert (=> b!1530345 m!1413291))

(assert (=> b!1530345 m!1413291))

(assert (=> b!1530345 m!1413257))

(declare-fun m!1413293 () Bool)

(assert (=> b!1530345 m!1413293))

(check-sat (not b!1530345) (not b!1530344) (not b!1530340) (not b!1530341) (not b!1530336) (not start!130404) (not b!1530339) (not b!1530337) (not b!1530346) (not b!1530338) (not b!1530342))
(check-sat)
(get-model)

(declare-fun b!1530391 () Bool)

(declare-fun e!852793 () Bool)

(declare-fun call!68511 () Bool)

(assert (=> b!1530391 (= e!852793 call!68511)))

(declare-fun b!1530392 () Bool)

(declare-fun e!852794 () Bool)

(declare-fun e!852792 () Bool)

(assert (=> b!1530392 (= e!852794 e!852792)))

(declare-fun c!140729 () Bool)

(assert (=> b!1530392 (= c!140729 (validKeyInArray!0 (select (arr!49031 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!159749 () Bool)

(declare-fun res!1048049 () Bool)

(assert (=> d!159749 (=> res!1048049 e!852794)))

(assert (=> d!159749 (= res!1048049 (bvsge #b00000000000000000000000000000000 (size!49582 a!2804)))))

(assert (=> d!159749 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!852794)))

(declare-fun b!1530393 () Bool)

(assert (=> b!1530393 (= e!852792 call!68511)))

(declare-fun b!1530394 () Bool)

(assert (=> b!1530394 (= e!852792 e!852793)))

(declare-fun lt!662768 () (_ BitVec 64))

(assert (=> b!1530394 (= lt!662768 (select (arr!49031 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!662769 () Unit!51174)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101624 (_ BitVec 64) (_ BitVec 32)) Unit!51174)

(assert (=> b!1530394 (= lt!662769 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662768 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101624 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1530394 (arrayContainsKey!0 a!2804 lt!662768 #b00000000000000000000000000000000)))

(declare-fun lt!662770 () Unit!51174)

(assert (=> b!1530394 (= lt!662770 lt!662769)))

(declare-fun res!1048050 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101624 (_ BitVec 32)) SeekEntryResult!13217)

(assert (=> b!1530394 (= res!1048050 (= (seekEntryOrOpen!0 (select (arr!49031 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13217 #b00000000000000000000000000000000)))))

(assert (=> b!1530394 (=> (not res!1048050) (not e!852793))))

(declare-fun bm!68508 () Bool)

(assert (=> bm!68508 (= call!68511 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!159749 (not res!1048049)) b!1530392))

(assert (= (and b!1530392 c!140729) b!1530394))

(assert (= (and b!1530392 (not c!140729)) b!1530393))

(assert (= (and b!1530394 res!1048050) b!1530391))

(assert (= (or b!1530391 b!1530393) bm!68508))

(declare-fun m!1413333 () Bool)

(assert (=> b!1530392 m!1413333))

(assert (=> b!1530392 m!1413333))

(declare-fun m!1413335 () Bool)

(assert (=> b!1530392 m!1413335))

(assert (=> b!1530394 m!1413333))

(declare-fun m!1413337 () Bool)

(assert (=> b!1530394 m!1413337))

(declare-fun m!1413339 () Bool)

(assert (=> b!1530394 m!1413339))

(assert (=> b!1530394 m!1413333))

(declare-fun m!1413341 () Bool)

(assert (=> b!1530394 m!1413341))

(declare-fun m!1413343 () Bool)

(assert (=> bm!68508 m!1413343))

(assert (=> b!1530338 d!159749))

(declare-fun d!159751 () Bool)

(assert (=> d!159751 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!130404 d!159751))

(declare-fun d!159763 () Bool)

(assert (=> d!159763 (= (array_inv!37976 a!2804) (bvsge (size!49582 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!130404 d!159763))

(declare-fun b!1530440 () Bool)

(declare-fun e!852829 () SeekEntryResult!13217)

(assert (=> b!1530440 (= e!852829 (Intermediate!13217 true (toIndex!0 (select (arr!49031 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1530441 () Bool)

(declare-fun e!852827 () SeekEntryResult!13217)

(assert (=> b!1530441 (= e!852827 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!49031 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!49031 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530442 () Bool)

(declare-fun lt!662794 () SeekEntryResult!13217)

(assert (=> b!1530442 (and (bvsge (index!55264 lt!662794) #b00000000000000000000000000000000) (bvslt (index!55264 lt!662794) (size!49582 a!2804)))))

(declare-fun res!1048073 () Bool)

(assert (=> b!1530442 (= res!1048073 (= (select (arr!49031 a!2804) (index!55264 lt!662794)) (select (arr!49031 a!2804) j!70)))))

(declare-fun e!852830 () Bool)

(assert (=> b!1530442 (=> res!1048073 e!852830)))

(declare-fun e!852828 () Bool)

(assert (=> b!1530442 (= e!852828 e!852830)))

(declare-fun b!1530443 () Bool)

(declare-fun e!852826 () Bool)

(assert (=> b!1530443 (= e!852826 (bvsge (x!136956 lt!662794) #b01111111111111111111111111111110))))

(declare-fun b!1530444 () Bool)

(assert (=> b!1530444 (and (bvsge (index!55264 lt!662794) #b00000000000000000000000000000000) (bvslt (index!55264 lt!662794) (size!49582 a!2804)))))

(declare-fun res!1048074 () Bool)

(assert (=> b!1530444 (= res!1048074 (= (select (arr!49031 a!2804) (index!55264 lt!662794)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1530444 (=> res!1048074 e!852830)))

(declare-fun b!1530445 () Bool)

(assert (=> b!1530445 (= e!852829 e!852827)))

(declare-fun lt!662793 () (_ BitVec 64))

(declare-fun c!140742 () Bool)

(assert (=> b!1530445 (= c!140742 (or (= lt!662793 (select (arr!49031 a!2804) j!70)) (= (bvadd lt!662793 lt!662793) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530447 () Bool)

(assert (=> b!1530447 (and (bvsge (index!55264 lt!662794) #b00000000000000000000000000000000) (bvslt (index!55264 lt!662794) (size!49582 a!2804)))))

(assert (=> b!1530447 (= e!852830 (= (select (arr!49031 a!2804) (index!55264 lt!662794)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1530448 () Bool)

(assert (=> b!1530448 (= e!852827 (Intermediate!13217 false (toIndex!0 (select (arr!49031 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun d!159765 () Bool)

(assert (=> d!159765 e!852826))

(declare-fun c!140744 () Bool)

(get-info :version)

(assert (=> d!159765 (= c!140744 (and ((_ is Intermediate!13217) lt!662794) (undefined!14029 lt!662794)))))

(assert (=> d!159765 (= lt!662794 e!852829)))

(declare-fun c!140743 () Bool)

(assert (=> d!159765 (= c!140743 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159765 (= lt!662793 (select (arr!49031 a!2804) (toIndex!0 (select (arr!49031 a!2804) j!70) mask!2512)))))

(assert (=> d!159765 (validMask!0 mask!2512)))

(assert (=> d!159765 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49031 a!2804) j!70) mask!2512) (select (arr!49031 a!2804) j!70) a!2804 mask!2512) lt!662794)))

(declare-fun b!1530446 () Bool)

(assert (=> b!1530446 (= e!852826 e!852828)))

(declare-fun res!1048072 () Bool)

(assert (=> b!1530446 (= res!1048072 (and ((_ is Intermediate!13217) lt!662794) (not (undefined!14029 lt!662794)) (bvslt (x!136956 lt!662794) #b01111111111111111111111111111110) (bvsge (x!136956 lt!662794) #b00000000000000000000000000000000) (bvsge (x!136956 lt!662794) #b00000000000000000000000000000000)))))

(assert (=> b!1530446 (=> (not res!1048072) (not e!852828))))

(assert (= (and d!159765 c!140743) b!1530440))

(assert (= (and d!159765 (not c!140743)) b!1530445))

(assert (= (and b!1530445 c!140742) b!1530448))

(assert (= (and b!1530445 (not c!140742)) b!1530441))

(assert (= (and d!159765 c!140744) b!1530443))

(assert (= (and d!159765 (not c!140744)) b!1530446))

(assert (= (and b!1530446 res!1048072) b!1530442))

(assert (= (and b!1530442 (not res!1048073)) b!1530444))

(assert (= (and b!1530444 (not res!1048074)) b!1530447))

(assert (=> b!1530441 m!1413291))

(declare-fun m!1413367 () Bool)

(assert (=> b!1530441 m!1413367))

(assert (=> b!1530441 m!1413367))

(assert (=> b!1530441 m!1413257))

(declare-fun m!1413369 () Bool)

(assert (=> b!1530441 m!1413369))

(declare-fun m!1413371 () Bool)

(assert (=> b!1530447 m!1413371))

(assert (=> b!1530442 m!1413371))

(assert (=> b!1530444 m!1413371))

(assert (=> d!159765 m!1413291))

(declare-fun m!1413373 () Bool)

(assert (=> d!159765 m!1413373))

(assert (=> d!159765 m!1413275))

(assert (=> b!1530345 d!159765))

(declare-fun d!159775 () Bool)

(declare-fun lt!662806 () (_ BitVec 32))

(declare-fun lt!662805 () (_ BitVec 32))

(assert (=> d!159775 (= lt!662806 (bvmul (bvxor lt!662805 (bvlshr lt!662805 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159775 (= lt!662805 ((_ extract 31 0) (bvand (bvxor (select (arr!49031 a!2804) j!70) (bvlshr (select (arr!49031 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159775 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048075 (let ((h!37132 ((_ extract 31 0) (bvand (bvxor (select (arr!49031 a!2804) j!70) (bvlshr (select (arr!49031 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136962 (bvmul (bvxor h!37132 (bvlshr h!37132 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136962 (bvlshr x!136962 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048075 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048075 #b00000000000000000000000000000000))))))

(assert (=> d!159775 (= (toIndex!0 (select (arr!49031 a!2804) j!70) mask!2512) (bvand (bvxor lt!662806 (bvlshr lt!662806 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530345 d!159775))

(declare-fun d!159777 () Bool)

(declare-fun lt!662809 () (_ BitVec 32))

(assert (=> d!159777 (and (bvsge lt!662809 #b00000000000000000000000000000000) (bvslt lt!662809 (bvadd mask!2512 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!159777 (= lt!662809 (choose!52 index!487 x!534 mask!2512))))

(assert (=> d!159777 (validMask!0 mask!2512)))

(assert (=> d!159777 (= (nextIndex!0 index!487 x!534 mask!2512) lt!662809)))

(declare-fun bs!43877 () Bool)

(assert (= bs!43877 d!159777))

(declare-fun m!1413383 () Bool)

(assert (=> bs!43877 m!1413383))

(assert (=> bs!43877 m!1413275))

(assert (=> b!1530344 d!159777))

(declare-fun d!159781 () Bool)

(assert (=> d!159781 (= (validKeyInArray!0 (select (arr!49031 a!2804) j!70)) (and (not (= (select (arr!49031 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49031 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530339 d!159781))

(declare-fun b!1530484 () Bool)

(declare-fun e!852853 () SeekEntryResult!13217)

(assert (=> b!1530484 (= e!852853 (Intermediate!13217 true index!487 x!534))))

(declare-fun b!1530485 () Bool)

(declare-fun e!852851 () SeekEntryResult!13217)

(assert (=> b!1530485 (= e!852851 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!49031 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530486 () Bool)

(declare-fun lt!662815 () SeekEntryResult!13217)

(assert (=> b!1530486 (and (bvsge (index!55264 lt!662815) #b00000000000000000000000000000000) (bvslt (index!55264 lt!662815) (size!49582 a!2804)))))

(declare-fun res!1048087 () Bool)

(assert (=> b!1530486 (= res!1048087 (= (select (arr!49031 a!2804) (index!55264 lt!662815)) (select (arr!49031 a!2804) j!70)))))

(declare-fun e!852854 () Bool)

(assert (=> b!1530486 (=> res!1048087 e!852854)))

(declare-fun e!852852 () Bool)

(assert (=> b!1530486 (= e!852852 e!852854)))

(declare-fun b!1530487 () Bool)

(declare-fun e!852850 () Bool)

(assert (=> b!1530487 (= e!852850 (bvsge (x!136956 lt!662815) #b01111111111111111111111111111110))))

(declare-fun b!1530488 () Bool)

(assert (=> b!1530488 (and (bvsge (index!55264 lt!662815) #b00000000000000000000000000000000) (bvslt (index!55264 lt!662815) (size!49582 a!2804)))))

(declare-fun res!1048088 () Bool)

(assert (=> b!1530488 (= res!1048088 (= (select (arr!49031 a!2804) (index!55264 lt!662815)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1530488 (=> res!1048088 e!852854)))

(declare-fun b!1530489 () Bool)

(assert (=> b!1530489 (= e!852853 e!852851)))

(declare-fun c!140758 () Bool)

(declare-fun lt!662814 () (_ BitVec 64))

(assert (=> b!1530489 (= c!140758 (or (= lt!662814 (select (arr!49031 a!2804) j!70)) (= (bvadd lt!662814 lt!662814) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530491 () Bool)

(assert (=> b!1530491 (and (bvsge (index!55264 lt!662815) #b00000000000000000000000000000000) (bvslt (index!55264 lt!662815) (size!49582 a!2804)))))

(assert (=> b!1530491 (= e!852854 (= (select (arr!49031 a!2804) (index!55264 lt!662815)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1530492 () Bool)

(assert (=> b!1530492 (= e!852851 (Intermediate!13217 false index!487 x!534))))

(declare-fun d!159783 () Bool)

(assert (=> d!159783 e!852850))

(declare-fun c!140760 () Bool)

(assert (=> d!159783 (= c!140760 (and ((_ is Intermediate!13217) lt!662815) (undefined!14029 lt!662815)))))

(assert (=> d!159783 (= lt!662815 e!852853)))

(declare-fun c!140759 () Bool)

(assert (=> d!159783 (= c!140759 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!159783 (= lt!662814 (select (arr!49031 a!2804) index!487))))

(assert (=> d!159783 (validMask!0 mask!2512)))

(assert (=> d!159783 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!49031 a!2804) j!70) a!2804 mask!2512) lt!662815)))

(declare-fun b!1530490 () Bool)

(assert (=> b!1530490 (= e!852850 e!852852)))

(declare-fun res!1048086 () Bool)

(assert (=> b!1530490 (= res!1048086 (and ((_ is Intermediate!13217) lt!662815) (not (undefined!14029 lt!662815)) (bvslt (x!136956 lt!662815) #b01111111111111111111111111111110) (bvsge (x!136956 lt!662815) #b00000000000000000000000000000000) (bvsge (x!136956 lt!662815) x!534)))))

(assert (=> b!1530490 (=> (not res!1048086) (not e!852852))))

(assert (= (and d!159783 c!140759) b!1530484))

(assert (= (and d!159783 (not c!140759)) b!1530489))

(assert (= (and b!1530489 c!140758) b!1530492))

(assert (= (and b!1530489 (not c!140758)) b!1530485))

(assert (= (and d!159783 c!140760) b!1530487))

(assert (= (and d!159783 (not c!140760)) b!1530490))

(assert (= (and b!1530490 res!1048086) b!1530486))

(assert (= (and b!1530486 (not res!1048087)) b!1530488))

(assert (= (and b!1530488 (not res!1048088)) b!1530491))

(assert (=> b!1530485 m!1413283))

(assert (=> b!1530485 m!1413283))

(assert (=> b!1530485 m!1413257))

(declare-fun m!1413385 () Bool)

(assert (=> b!1530485 m!1413385))

(declare-fun m!1413387 () Bool)

(assert (=> b!1530491 m!1413387))

(assert (=> b!1530486 m!1413387))

(assert (=> b!1530488 m!1413387))

(declare-fun m!1413389 () Bool)

(assert (=> d!159783 m!1413389))

(assert (=> d!159783 m!1413275))

(assert (=> b!1530346 d!159783))

(declare-fun b!1530503 () Bool)

(declare-fun e!852862 () Bool)

(declare-fun call!68518 () Bool)

(assert (=> b!1530503 (= e!852862 call!68518)))

(declare-fun b!1530504 () Bool)

(declare-fun e!852863 () Bool)

(declare-fun e!852861 () Bool)

(assert (=> b!1530504 (= e!852863 e!852861)))

(declare-fun c!140763 () Bool)

(assert (=> b!1530504 (= c!140763 (validKeyInArray!0 (select (arr!49031 a!2804) j!70)))))

(declare-fun d!159785 () Bool)

(declare-fun res!1048095 () Bool)

(assert (=> d!159785 (=> res!1048095 e!852863)))

(assert (=> d!159785 (= res!1048095 (bvsge j!70 (size!49582 a!2804)))))

(assert (=> d!159785 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!852863)))

(declare-fun b!1530505 () Bool)

(assert (=> b!1530505 (= e!852861 call!68518)))

(declare-fun b!1530506 () Bool)

(assert (=> b!1530506 (= e!852861 e!852862)))

(declare-fun lt!662820 () (_ BitVec 64))

(assert (=> b!1530506 (= lt!662820 (select (arr!49031 a!2804) j!70))))

(declare-fun lt!662821 () Unit!51174)

(assert (=> b!1530506 (= lt!662821 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!662820 j!70))))

(assert (=> b!1530506 (arrayContainsKey!0 a!2804 lt!662820 #b00000000000000000000000000000000)))

(declare-fun lt!662822 () Unit!51174)

(assert (=> b!1530506 (= lt!662822 lt!662821)))

(declare-fun res!1048096 () Bool)

(assert (=> b!1530506 (= res!1048096 (= (seekEntryOrOpen!0 (select (arr!49031 a!2804) j!70) a!2804 mask!2512) (Found!13217 j!70)))))

(assert (=> b!1530506 (=> (not res!1048096) (not e!852862))))

(declare-fun bm!68515 () Bool)

(assert (=> bm!68515 (= call!68518 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!159785 (not res!1048095)) b!1530504))

(assert (= (and b!1530504 c!140763) b!1530506))

(assert (= (and b!1530504 (not c!140763)) b!1530505))

(assert (= (and b!1530506 res!1048096) b!1530503))

(assert (= (or b!1530503 b!1530505) bm!68515))

(assert (=> b!1530504 m!1413257))

(assert (=> b!1530504 m!1413257))

(assert (=> b!1530504 m!1413259))

(assert (=> b!1530506 m!1413257))

(declare-fun m!1413391 () Bool)

(assert (=> b!1530506 m!1413391))

(declare-fun m!1413393 () Bool)

(assert (=> b!1530506 m!1413393))

(assert (=> b!1530506 m!1413257))

(declare-fun m!1413395 () Bool)

(assert (=> b!1530506 m!1413395))

(declare-fun m!1413397 () Bool)

(assert (=> bm!68515 m!1413397))

(assert (=> b!1530341 d!159785))

(declare-fun d!159787 () Bool)

(assert (=> d!159787 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!662829 () Unit!51174)

(declare-fun choose!38 (array!101624 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51174)

(assert (=> d!159787 (= lt!662829 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!159787 (validMask!0 mask!2512)))

(assert (=> d!159787 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!662829)))

(declare-fun bs!43878 () Bool)

(assert (= bs!43878 d!159787))

(assert (=> bs!43878 m!1413281))

(declare-fun m!1413407 () Bool)

(assert (=> bs!43878 m!1413407))

(assert (=> bs!43878 m!1413275))

(assert (=> b!1530341 d!159787))

(declare-fun d!159793 () Bool)

(declare-fun res!1048108 () Bool)

(declare-fun e!852880 () Bool)

(assert (=> d!159793 (=> res!1048108 e!852880)))

(assert (=> d!159793 (= res!1048108 (bvsge #b00000000000000000000000000000000 (size!49582 a!2804)))))

(assert (=> d!159793 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35691) e!852880)))

(declare-fun b!1530526 () Bool)

(declare-fun e!852878 () Bool)

(declare-fun e!852879 () Bool)

(assert (=> b!1530526 (= e!852878 e!852879)))

(declare-fun c!140769 () Bool)

(assert (=> b!1530526 (= c!140769 (validKeyInArray!0 (select (arr!49031 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68518 () Bool)

(declare-fun call!68521 () Bool)

(assert (=> bm!68518 (= call!68521 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!140769 (Cons!35690 (select (arr!49031 a!2804) #b00000000000000000000000000000000) Nil!35691) Nil!35691)))))

(declare-fun b!1530527 () Bool)

(assert (=> b!1530527 (= e!852879 call!68521)))

(declare-fun b!1530528 () Bool)

(assert (=> b!1530528 (= e!852880 e!852878)))

(declare-fun res!1048107 () Bool)

(assert (=> b!1530528 (=> (not res!1048107) (not e!852878))))

(declare-fun e!852877 () Bool)

(assert (=> b!1530528 (= res!1048107 (not e!852877))))

(declare-fun res!1048109 () Bool)

(assert (=> b!1530528 (=> (not res!1048109) (not e!852877))))

(assert (=> b!1530528 (= res!1048109 (validKeyInArray!0 (select (arr!49031 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1530529 () Bool)

(declare-fun contains!10013 (List!35694 (_ BitVec 64)) Bool)

(assert (=> b!1530529 (= e!852877 (contains!10013 Nil!35691 (select (arr!49031 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1530530 () Bool)

(assert (=> b!1530530 (= e!852879 call!68521)))

(assert (= (and d!159793 (not res!1048108)) b!1530528))

(assert (= (and b!1530528 res!1048109) b!1530529))

(assert (= (and b!1530528 res!1048107) b!1530526))

(assert (= (and b!1530526 c!140769) b!1530527))

(assert (= (and b!1530526 (not c!140769)) b!1530530))

(assert (= (or b!1530527 b!1530530) bm!68518))

(assert (=> b!1530526 m!1413333))

(assert (=> b!1530526 m!1413333))

(assert (=> b!1530526 m!1413335))

(assert (=> bm!68518 m!1413333))

(declare-fun m!1413409 () Bool)

(assert (=> bm!68518 m!1413409))

(assert (=> b!1530528 m!1413333))

(assert (=> b!1530528 m!1413333))

(assert (=> b!1530528 m!1413335))

(assert (=> b!1530529 m!1413333))

(assert (=> b!1530529 m!1413333))

(declare-fun m!1413411 () Bool)

(assert (=> b!1530529 m!1413411))

(assert (=> b!1530340 d!159793))

(declare-fun b!1530583 () Bool)

(declare-fun e!852917 () SeekEntryResult!13217)

(assert (=> b!1530583 (= e!852917 Undefined!13217)))

(declare-fun b!1530584 () Bool)

(declare-fun c!140786 () Bool)

(declare-fun lt!662861 () (_ BitVec 64))

(assert (=> b!1530584 (= c!140786 (= lt!662861 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!852918 () SeekEntryResult!13217)

(declare-fun e!852916 () SeekEntryResult!13217)

(assert (=> b!1530584 (= e!852918 e!852916)))

(declare-fun d!159801 () Bool)

(declare-fun lt!662863 () SeekEntryResult!13217)

(assert (=> d!159801 (and (or ((_ is MissingVacant!13217) lt!662863) (not ((_ is Found!13217) lt!662863)) (and (bvsge (index!55263 lt!662863) #b00000000000000000000000000000000) (bvslt (index!55263 lt!662863) (size!49582 a!2804)))) (not ((_ is MissingVacant!13217) lt!662863)) (or (not ((_ is Found!13217) lt!662863)) (= (select (arr!49031 a!2804) (index!55263 lt!662863)) (select (arr!49031 a!2804) j!70))))))

(assert (=> d!159801 (= lt!662863 e!852917)))

(declare-fun c!140788 () Bool)

(declare-fun lt!662862 () SeekEntryResult!13217)

(assert (=> d!159801 (= c!140788 (and ((_ is Intermediate!13217) lt!662862) (undefined!14029 lt!662862)))))

(assert (=> d!159801 (= lt!662862 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!49031 a!2804) j!70) mask!2512) (select (arr!49031 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!159801 (validMask!0 mask!2512)))

(assert (=> d!159801 (= (seekEntry!0 (select (arr!49031 a!2804) j!70) a!2804 mask!2512) lt!662863)))

(declare-fun b!1530585 () Bool)

(assert (=> b!1530585 (= e!852917 e!852918)))

(assert (=> b!1530585 (= lt!662861 (select (arr!49031 a!2804) (index!55264 lt!662862)))))

(declare-fun c!140787 () Bool)

(assert (=> b!1530585 (= c!140787 (= lt!662861 (select (arr!49031 a!2804) j!70)))))

(declare-fun b!1530586 () Bool)

(assert (=> b!1530586 (= e!852918 (Found!13217 (index!55264 lt!662862)))))

(declare-fun b!1530587 () Bool)

(declare-fun lt!662864 () SeekEntryResult!13217)

(assert (=> b!1530587 (= e!852916 (ite ((_ is MissingVacant!13217) lt!662864) (MissingZero!13217 (index!55265 lt!662864)) lt!662864))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101624 (_ BitVec 32)) SeekEntryResult!13217)

(assert (=> b!1530587 (= lt!662864 (seekKeyOrZeroReturnVacant!0 (x!136956 lt!662862) (index!55264 lt!662862) (index!55264 lt!662862) (select (arr!49031 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1530588 () Bool)

(assert (=> b!1530588 (= e!852916 (MissingZero!13217 (index!55264 lt!662862)))))

(assert (= (and d!159801 c!140788) b!1530583))

(assert (= (and d!159801 (not c!140788)) b!1530585))

(assert (= (and b!1530585 c!140787) b!1530586))

(assert (= (and b!1530585 (not c!140787)) b!1530584))

(assert (= (and b!1530584 c!140786) b!1530588))

(assert (= (and b!1530584 (not c!140786)) b!1530587))

(declare-fun m!1413443 () Bool)

(assert (=> d!159801 m!1413443))

(assert (=> d!159801 m!1413257))

(assert (=> d!159801 m!1413291))

(assert (=> d!159801 m!1413291))

(assert (=> d!159801 m!1413257))

(assert (=> d!159801 m!1413293))

(assert (=> d!159801 m!1413275))

(declare-fun m!1413447 () Bool)

(assert (=> b!1530585 m!1413447))

(assert (=> b!1530587 m!1413257))

(declare-fun m!1413449 () Bool)

(assert (=> b!1530587 m!1413449))

(assert (=> b!1530342 d!159801))

(declare-fun d!159815 () Bool)

(assert (=> d!159815 (= (validKeyInArray!0 (select (arr!49031 a!2804) i!961)) (and (not (= (select (arr!49031 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!49031 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1530337 d!159815))

(declare-fun b!1530598 () Bool)

(declare-fun e!852927 () SeekEntryResult!13217)

(assert (=> b!1530598 (= e!852927 (Intermediate!13217 true (toIndex!0 (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun e!852925 () SeekEntryResult!13217)

(declare-fun b!1530599 () Bool)

(assert (=> b!1530599 (= e!852925 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804)) mask!2512))))

(declare-fun b!1530600 () Bool)

(declare-fun lt!662868 () SeekEntryResult!13217)

(assert (=> b!1530600 (and (bvsge (index!55264 lt!662868) #b00000000000000000000000000000000) (bvslt (index!55264 lt!662868) (size!49582 (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804)))))))

(declare-fun res!1048134 () Bool)

(assert (=> b!1530600 (= res!1048134 (= (select (arr!49031 (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804))) (index!55264 lt!662868)) (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun e!852928 () Bool)

(assert (=> b!1530600 (=> res!1048134 e!852928)))

(declare-fun e!852926 () Bool)

(assert (=> b!1530600 (= e!852926 e!852928)))

(declare-fun b!1530601 () Bool)

(declare-fun e!852924 () Bool)

(assert (=> b!1530601 (= e!852924 (bvsge (x!136956 lt!662868) #b01111111111111111111111111111110))))

(declare-fun b!1530602 () Bool)

(assert (=> b!1530602 (and (bvsge (index!55264 lt!662868) #b00000000000000000000000000000000) (bvslt (index!55264 lt!662868) (size!49582 (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804)))))))

(declare-fun res!1048135 () Bool)

(assert (=> b!1530602 (= res!1048135 (= (select (arr!49031 (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804))) (index!55264 lt!662868)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1530602 (=> res!1048135 e!852928)))

(declare-fun b!1530603 () Bool)

(assert (=> b!1530603 (= e!852927 e!852925)))

(declare-fun lt!662867 () (_ BitVec 64))

(declare-fun c!140792 () Bool)

(assert (=> b!1530603 (= c!140792 (or (= lt!662867 (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!662867 lt!662867) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1530605 () Bool)

(assert (=> b!1530605 (and (bvsge (index!55264 lt!662868) #b00000000000000000000000000000000) (bvslt (index!55264 lt!662868) (size!49582 (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804)))))))

(assert (=> b!1530605 (= e!852928 (= (select (arr!49031 (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804))) (index!55264 lt!662868)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1530606 () Bool)

(assert (=> b!1530606 (= e!852925 (Intermediate!13217 false (toIndex!0 (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun d!159819 () Bool)

(assert (=> d!159819 e!852924))

(declare-fun c!140794 () Bool)

(assert (=> d!159819 (= c!140794 (and ((_ is Intermediate!13217) lt!662868) (undefined!14029 lt!662868)))))

(assert (=> d!159819 (= lt!662868 e!852927)))

(declare-fun c!140793 () Bool)

(assert (=> d!159819 (= c!140793 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!159819 (= lt!662867 (select (arr!49031 (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804))) (toIndex!0 (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!159819 (validMask!0 mask!2512)))

(assert (=> d!159819 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101625 (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49582 a!2804)) mask!2512) lt!662868)))

(declare-fun b!1530604 () Bool)

(assert (=> b!1530604 (= e!852924 e!852926)))

(declare-fun res!1048133 () Bool)

(assert (=> b!1530604 (= res!1048133 (and ((_ is Intermediate!13217) lt!662868) (not (undefined!14029 lt!662868)) (bvslt (x!136956 lt!662868) #b01111111111111111111111111111110) (bvsge (x!136956 lt!662868) #b00000000000000000000000000000000) (bvsge (x!136956 lt!662868) #b00000000000000000000000000000000)))))

(assert (=> b!1530604 (=> (not res!1048133) (not e!852926))))

(assert (= (and d!159819 c!140793) b!1530598))

(assert (= (and d!159819 (not c!140793)) b!1530603))

(assert (= (and b!1530603 c!140792) b!1530606))

(assert (= (and b!1530603 (not c!140792)) b!1530599))

(assert (= (and d!159819 c!140794) b!1530601))

(assert (= (and d!159819 (not c!140794)) b!1530604))

(assert (= (and b!1530604 res!1048133) b!1530600))

(assert (= (and b!1530600 (not res!1048134)) b!1530602))

(assert (= (and b!1530602 (not res!1048135)) b!1530605))

(assert (=> b!1530599 m!1413265))

(declare-fun m!1413457 () Bool)

(assert (=> b!1530599 m!1413457))

(assert (=> b!1530599 m!1413457))

(assert (=> b!1530599 m!1413263))

(declare-fun m!1413461 () Bool)

(assert (=> b!1530599 m!1413461))

(declare-fun m!1413463 () Bool)

(assert (=> b!1530605 m!1413463))

(assert (=> b!1530600 m!1413463))

(assert (=> b!1530602 m!1413463))

(assert (=> d!159819 m!1413265))

(declare-fun m!1413465 () Bool)

(assert (=> d!159819 m!1413465))

(assert (=> d!159819 m!1413275))

(assert (=> b!1530336 d!159819))

(declare-fun d!159825 () Bool)

(declare-fun lt!662872 () (_ BitVec 32))

(declare-fun lt!662871 () (_ BitVec 32))

(assert (=> d!159825 (= lt!662872 (bvmul (bvxor lt!662871 (bvlshr lt!662871 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!159825 (= lt!662871 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!159825 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1048075 (let ((h!37132 ((_ extract 31 0) (bvand (bvxor (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136962 (bvmul (bvxor h!37132 (bvlshr h!37132 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136962 (bvlshr x!136962 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1048075 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1048075 #b00000000000000000000000000000000))))))

(assert (=> d!159825 (= (toIndex!0 (select (store (arr!49031 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!662872 (bvlshr lt!662872 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1530336 d!159825))

(check-sat (not d!159777) (not b!1530506) (not b!1530392) (not d!159787) (not b!1530528) (not b!1530485) (not b!1530526) (not d!159819) (not b!1530394) (not bm!68515) (not bm!68508) (not b!1530587) (not d!159783) (not b!1530504) (not b!1530529) (not b!1530599) (not d!159801) (not bm!68518) (not d!159765) (not b!1530441))
(check-sat)
