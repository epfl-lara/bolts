; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129472 () Bool)

(assert start!129472)

(declare-fun res!1039846 () Bool)

(declare-fun e!847949 () Bool)

(assert (=> start!129472 (=> (not res!1039846) (not e!847949))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129472 (= res!1039846 (validMask!0 mask!2512))))

(assert (=> start!129472 e!847949))

(assert (=> start!129472 true))

(declare-datatypes ((array!101176 0))(
  ( (array!101177 (arr!48819 (Array (_ BitVec 32) (_ BitVec 64))) (size!49370 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101176)

(declare-fun array_inv!37764 (array!101176) Bool)

(assert (=> start!129472 (array_inv!37764 a!2804)))

(declare-fun b!1520112 () Bool)

(declare-fun res!1039847 () Bool)

(assert (=> b!1520112 (=> (not res!1039847) (not e!847949))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1520112 (= res!1039847 (validKeyInArray!0 (select (arr!48819 a!2804) i!961)))))

(declare-fun b!1520113 () Bool)

(declare-fun res!1039844 () Bool)

(declare-fun e!847952 () Bool)

(assert (=> b!1520113 (=> (not res!1039844) (not e!847952))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13011 0))(
  ( (MissingZero!13011 (index!54438 (_ BitVec 32))) (Found!13011 (index!54439 (_ BitVec 32))) (Intermediate!13011 (undefined!13823 Bool) (index!54440 (_ BitVec 32)) (x!136118 (_ BitVec 32))) (Undefined!13011) (MissingVacant!13011 (index!54441 (_ BitVec 32))) )
))
(declare-fun lt!658902 () SeekEntryResult!13011)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101176 (_ BitVec 32)) SeekEntryResult!13011)

(assert (=> b!1520113 (= res!1039844 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48819 a!2804) j!70) a!2804 mask!2512) lt!658902))))

(declare-fun b!1520114 () Bool)

(declare-fun res!1039838 () Bool)

(assert (=> b!1520114 (=> (not res!1039838) (not e!847949))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1520114 (= res!1039838 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49370 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49370 a!2804))))))

(declare-fun b!1520115 () Bool)

(declare-fun res!1039841 () Bool)

(assert (=> b!1520115 (=> (not res!1039841) (not e!847949))))

(assert (=> b!1520115 (= res!1039841 (and (= (size!49370 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49370 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49370 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1520116 () Bool)

(declare-fun res!1039842 () Bool)

(assert (=> b!1520116 (=> (not res!1039842) (not e!847949))))

(assert (=> b!1520116 (= res!1039842 (validKeyInArray!0 (select (arr!48819 a!2804) j!70)))))

(declare-fun e!847951 () Bool)

(declare-fun b!1520117 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101176 (_ BitVec 32)) SeekEntryResult!13011)

(assert (=> b!1520117 (= e!847951 (= (seekEntry!0 (select (arr!48819 a!2804) j!70) a!2804 mask!2512) (Found!13011 j!70)))))

(declare-fun b!1520118 () Bool)

(declare-fun res!1039848 () Bool)

(assert (=> b!1520118 (=> (not res!1039848) (not e!847952))))

(declare-fun lt!658901 () SeekEntryResult!13011)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520118 (= res!1039848 (= lt!658901 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804)) mask!2512)))))

(declare-fun b!1520119 () Bool)

(declare-fun res!1039845 () Bool)

(assert (=> b!1520119 (=> (not res!1039845) (not e!847949))))

(declare-datatypes ((List!35482 0))(
  ( (Nil!35479) (Cons!35478 (h!36894 (_ BitVec 64)) (t!50183 List!35482)) )
))
(declare-fun arrayNoDuplicates!0 (array!101176 (_ BitVec 32) List!35482) Bool)

(assert (=> b!1520119 (= res!1039845 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35479))))

(declare-fun b!1520120 () Bool)

(assert (=> b!1520120 (= e!847952 (not (or (not (= (select (arr!48819 a!2804) j!70) (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (not (= (select (arr!48819 a!2804) index!487) (select (arr!48819 a!2804) j!70))) (= j!70 index!487))))))

(assert (=> b!1520120 e!847951))

(declare-fun res!1039840 () Bool)

(assert (=> b!1520120 (=> (not res!1039840) (not e!847951))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101176 (_ BitVec 32)) Bool)

(assert (=> b!1520120 (= res!1039840 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50846 0))(
  ( (Unit!50847) )
))
(declare-fun lt!658903 () Unit!50846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101176 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50846)

(assert (=> b!1520120 (= lt!658903 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1520121 () Bool)

(assert (=> b!1520121 (= e!847949 e!847952)))

(declare-fun res!1039843 () Bool)

(assert (=> b!1520121 (=> (not res!1039843) (not e!847952))))

(assert (=> b!1520121 (= res!1039843 (= lt!658901 lt!658902))))

(assert (=> b!1520121 (= lt!658902 (Intermediate!13011 false resIndex!21 resX!21))))

(assert (=> b!1520121 (= lt!658901 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48819 a!2804) j!70) mask!2512) (select (arr!48819 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520122 () Bool)

(declare-fun res!1039839 () Bool)

(assert (=> b!1520122 (=> (not res!1039839) (not e!847949))))

(assert (=> b!1520122 (= res!1039839 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129472 res!1039846) b!1520115))

(assert (= (and b!1520115 res!1039841) b!1520112))

(assert (= (and b!1520112 res!1039847) b!1520116))

(assert (= (and b!1520116 res!1039842) b!1520122))

(assert (= (and b!1520122 res!1039839) b!1520119))

(assert (= (and b!1520119 res!1039845) b!1520114))

(assert (= (and b!1520114 res!1039838) b!1520121))

(assert (= (and b!1520121 res!1039843) b!1520113))

(assert (= (and b!1520113 res!1039844) b!1520118))

(assert (= (and b!1520118 res!1039848) b!1520120))

(assert (= (and b!1520120 res!1039840) b!1520117))

(declare-fun m!1403505 () Bool)

(assert (=> b!1520112 m!1403505))

(assert (=> b!1520112 m!1403505))

(declare-fun m!1403507 () Bool)

(assert (=> b!1520112 m!1403507))

(declare-fun m!1403509 () Bool)

(assert (=> b!1520116 m!1403509))

(assert (=> b!1520116 m!1403509))

(declare-fun m!1403511 () Bool)

(assert (=> b!1520116 m!1403511))

(declare-fun m!1403513 () Bool)

(assert (=> b!1520119 m!1403513))

(assert (=> b!1520117 m!1403509))

(assert (=> b!1520117 m!1403509))

(declare-fun m!1403515 () Bool)

(assert (=> b!1520117 m!1403515))

(declare-fun m!1403517 () Bool)

(assert (=> b!1520118 m!1403517))

(declare-fun m!1403519 () Bool)

(assert (=> b!1520118 m!1403519))

(assert (=> b!1520118 m!1403519))

(declare-fun m!1403521 () Bool)

(assert (=> b!1520118 m!1403521))

(assert (=> b!1520118 m!1403521))

(assert (=> b!1520118 m!1403519))

(declare-fun m!1403523 () Bool)

(assert (=> b!1520118 m!1403523))

(declare-fun m!1403525 () Bool)

(assert (=> start!129472 m!1403525))

(declare-fun m!1403527 () Bool)

(assert (=> start!129472 m!1403527))

(assert (=> b!1520121 m!1403509))

(assert (=> b!1520121 m!1403509))

(declare-fun m!1403529 () Bool)

(assert (=> b!1520121 m!1403529))

(assert (=> b!1520121 m!1403529))

(assert (=> b!1520121 m!1403509))

(declare-fun m!1403531 () Bool)

(assert (=> b!1520121 m!1403531))

(declare-fun m!1403533 () Bool)

(assert (=> b!1520122 m!1403533))

(assert (=> b!1520120 m!1403509))

(declare-fun m!1403535 () Bool)

(assert (=> b!1520120 m!1403535))

(assert (=> b!1520120 m!1403517))

(declare-fun m!1403537 () Bool)

(assert (=> b!1520120 m!1403537))

(assert (=> b!1520120 m!1403519))

(declare-fun m!1403539 () Bool)

(assert (=> b!1520120 m!1403539))

(assert (=> b!1520113 m!1403509))

(assert (=> b!1520113 m!1403509))

(declare-fun m!1403541 () Bool)

(assert (=> b!1520113 m!1403541))

(push 1)

(assert (not b!1520118))

(assert (not b!1520112))

(assert (not b!1520121))

(assert (not b!1520116))

(assert (not b!1520120))

(assert (not b!1520119))

(assert (not b!1520113))

(assert (not b!1520117))

(assert (not start!129472))

(assert (not b!1520122))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1520174 () Bool)

(declare-fun c!139702 () Bool)

(declare-fun lt!658935 () (_ BitVec 64))

(assert (=> b!1520174 (= c!139702 (= lt!658935 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!847983 () SeekEntryResult!13011)

(declare-fun e!847985 () SeekEntryResult!13011)

(assert (=> b!1520174 (= e!847983 e!847985)))

(declare-fun b!1520175 () Bool)

(declare-fun lt!658934 () SeekEntryResult!13011)

(assert (=> b!1520175 (= e!847985 (MissingZero!13011 (index!54440 lt!658934)))))

(declare-fun b!1520176 () Bool)

(declare-fun e!847984 () SeekEntryResult!13011)

(assert (=> b!1520176 (= e!847984 e!847983)))

(assert (=> b!1520176 (= lt!658935 (select (arr!48819 a!2804) (index!54440 lt!658934)))))

(declare-fun c!139701 () Bool)

(assert (=> b!1520176 (= c!139701 (= lt!658935 (select (arr!48819 a!2804) j!70)))))

(declare-fun d!158791 () Bool)

(declare-fun lt!658936 () SeekEntryResult!13011)

(assert (=> d!158791 (and (or (is-MissingVacant!13011 lt!658936) (not (is-Found!13011 lt!658936)) (and (bvsge (index!54439 lt!658936) #b00000000000000000000000000000000) (bvslt (index!54439 lt!658936) (size!49370 a!2804)))) (not (is-MissingVacant!13011 lt!658936)) (or (not (is-Found!13011 lt!658936)) (= (select (arr!48819 a!2804) (index!54439 lt!658936)) (select (arr!48819 a!2804) j!70))))))

(assert (=> d!158791 (= lt!658936 e!847984)))

(declare-fun c!139703 () Bool)

(assert (=> d!158791 (= c!139703 (and (is-Intermediate!13011 lt!658934) (undefined!13823 lt!658934)))))

(assert (=> d!158791 (= lt!658934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48819 a!2804) j!70) mask!2512) (select (arr!48819 a!2804) j!70) a!2804 mask!2512))))

(assert (=> d!158791 (validMask!0 mask!2512)))

(assert (=> d!158791 (= (seekEntry!0 (select (arr!48819 a!2804) j!70) a!2804 mask!2512) lt!658936)))

(declare-fun b!1520177 () Bool)

(assert (=> b!1520177 (= e!847984 Undefined!13011)))

(declare-fun b!1520178 () Bool)

(assert (=> b!1520178 (= e!847983 (Found!13011 (index!54440 lt!658934)))))

(declare-fun b!1520179 () Bool)

(declare-fun lt!658933 () SeekEntryResult!13011)

(assert (=> b!1520179 (= e!847985 (ite (is-MissingVacant!13011 lt!658933) (MissingZero!13011 (index!54441 lt!658933)) lt!658933))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101176 (_ BitVec 32)) SeekEntryResult!13011)

(assert (=> b!1520179 (= lt!658933 (seekKeyOrZeroReturnVacant!0 (x!136118 lt!658934) (index!54440 lt!658934) (index!54440 lt!658934) (select (arr!48819 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and d!158791 c!139703) b!1520177))

(assert (= (and d!158791 (not c!139703)) b!1520176))

(assert (= (and b!1520176 c!139701) b!1520178))

(assert (= (and b!1520176 (not c!139701)) b!1520174))

(assert (= (and b!1520174 c!139702) b!1520175))

(assert (= (and b!1520174 (not c!139702)) b!1520179))

(declare-fun m!1403563 () Bool)

(assert (=> b!1520176 m!1403563))

(declare-fun m!1403565 () Bool)

(assert (=> d!158791 m!1403565))

(assert (=> d!158791 m!1403509))

(assert (=> d!158791 m!1403529))

(assert (=> d!158791 m!1403529))

(assert (=> d!158791 m!1403509))

(assert (=> d!158791 m!1403531))

(assert (=> d!158791 m!1403525))

(assert (=> b!1520179 m!1403509))

(declare-fun m!1403567 () Bool)

(assert (=> b!1520179 m!1403567))

(assert (=> b!1520117 d!158791))

(declare-fun d!158801 () Bool)

(assert (=> d!158801 (= (validKeyInArray!0 (select (arr!48819 a!2804) i!961)) (and (not (= (select (arr!48819 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48819 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520112 d!158801))

(declare-fun b!1520216 () Bool)

(declare-fun e!848013 () Bool)

(declare-fun call!68343 () Bool)

(assert (=> b!1520216 (= e!848013 call!68343)))

(declare-fun bm!68340 () Bool)

(assert (=> bm!68340 (= call!68343 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520217 () Bool)

(declare-fun e!848012 () Bool)

(assert (=> b!1520217 (= e!848013 e!848012)))

(declare-fun lt!658951 () (_ BitVec 64))

(assert (=> b!1520217 (= lt!658951 (select (arr!48819 a!2804) #b00000000000000000000000000000000))))

(declare-fun lt!658953 () Unit!50846)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!101176 (_ BitVec 64) (_ BitVec 32)) Unit!50846)

(assert (=> b!1520217 (= lt!658953 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!658951 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!101176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1520217 (arrayContainsKey!0 a!2804 lt!658951 #b00000000000000000000000000000000)))

(declare-fun lt!658952 () Unit!50846)

(assert (=> b!1520217 (= lt!658952 lt!658953)))

(declare-fun res!1039881 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101176 (_ BitVec 32)) SeekEntryResult!13011)

(assert (=> b!1520217 (= res!1039881 (= (seekEntryOrOpen!0 (select (arr!48819 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!13011 #b00000000000000000000000000000000)))))

(assert (=> b!1520217 (=> (not res!1039881) (not e!848012))))

(declare-fun d!158803 () Bool)

(declare-fun res!1039882 () Bool)

(declare-fun e!848011 () Bool)

(assert (=> d!158803 (=> res!1039882 e!848011)))

(assert (=> d!158803 (= res!1039882 (bvsge #b00000000000000000000000000000000 (size!49370 a!2804)))))

(assert (=> d!158803 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!848011)))

(declare-fun b!1520218 () Bool)

(assert (=> b!1520218 (= e!848011 e!848013)))

(declare-fun c!139714 () Bool)

(assert (=> b!1520218 (= c!139714 (validKeyInArray!0 (select (arr!48819 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520219 () Bool)

(assert (=> b!1520219 (= e!848012 call!68343)))

(assert (= (and d!158803 (not res!1039882)) b!1520218))

(assert (= (and b!1520218 c!139714) b!1520217))

(assert (= (and b!1520218 (not c!139714)) b!1520216))

(assert (= (and b!1520217 res!1039881) b!1520219))

(assert (= (or b!1520219 b!1520216) bm!68340))

(declare-fun m!1403581 () Bool)

(assert (=> bm!68340 m!1403581))

(declare-fun m!1403583 () Bool)

(assert (=> b!1520217 m!1403583))

(declare-fun m!1403585 () Bool)

(assert (=> b!1520217 m!1403585))

(declare-fun m!1403587 () Bool)

(assert (=> b!1520217 m!1403587))

(assert (=> b!1520217 m!1403583))

(declare-fun m!1403589 () Bool)

(assert (=> b!1520217 m!1403589))

(assert (=> b!1520218 m!1403583))

(assert (=> b!1520218 m!1403583))

(declare-fun m!1403591 () Bool)

(assert (=> b!1520218 m!1403591))

(assert (=> b!1520122 d!158803))

(declare-fun e!848059 () SeekEntryResult!13011)

(declare-fun b!1520290 () Bool)

(assert (=> b!1520290 (= e!848059 (Intermediate!13011 true (toIndex!0 (select (arr!48819 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun e!848058 () SeekEntryResult!13011)

(declare-fun b!1520291 () Bool)

(assert (=> b!1520291 (= e!848058 (Intermediate!13011 false (toIndex!0 (select (arr!48819 a!2804) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520292 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1520292 (= e!848058 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48819 a!2804) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (arr!48819 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520293 () Bool)

(declare-fun e!848057 () Bool)

(declare-fun e!848056 () Bool)

(assert (=> b!1520293 (= e!848057 e!848056)))

(declare-fun res!1039899 () Bool)

(declare-fun lt!659000 () SeekEntryResult!13011)

(assert (=> b!1520293 (= res!1039899 (and (is-Intermediate!13011 lt!659000) (not (undefined!13823 lt!659000)) (bvslt (x!136118 lt!659000) #b01111111111111111111111111111110) (bvsge (x!136118 lt!659000) #b00000000000000000000000000000000) (bvsge (x!136118 lt!659000) #b00000000000000000000000000000000)))))

(assert (=> b!1520293 (=> (not res!1039899) (not e!848056))))

(declare-fun b!1520294 () Bool)

(assert (=> b!1520294 (= e!848057 (bvsge (x!136118 lt!659000) #b01111111111111111111111111111110))))

(declare-fun b!1520295 () Bool)

(assert (=> b!1520295 (and (bvsge (index!54440 lt!659000) #b00000000000000000000000000000000) (bvslt (index!54440 lt!659000) (size!49370 a!2804)))))

(declare-fun res!1039900 () Bool)

(assert (=> b!1520295 (= res!1039900 (= (select (arr!48819 a!2804) (index!54440 lt!659000)) (select (arr!48819 a!2804) j!70)))))

(declare-fun e!848055 () Bool)

(assert (=> b!1520295 (=> res!1039900 e!848055)))

(assert (=> b!1520295 (= e!848056 e!848055)))

(declare-fun b!1520296 () Bool)

(assert (=> b!1520296 (and (bvsge (index!54440 lt!659000) #b00000000000000000000000000000000) (bvslt (index!54440 lt!659000) (size!49370 a!2804)))))

(declare-fun res!1039901 () Bool)

(assert (=> b!1520296 (= res!1039901 (= (select (arr!48819 a!2804) (index!54440 lt!659000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520296 (=> res!1039901 e!848055)))

(declare-fun b!1520297 () Bool)

(assert (=> b!1520297 (= e!848059 e!848058)))

(declare-fun c!139742 () Bool)

(declare-fun lt!658999 () (_ BitVec 64))

(assert (=> b!1520297 (= c!139742 (or (= lt!658999 (select (arr!48819 a!2804) j!70)) (= (bvadd lt!658999 lt!658999) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!158811 () Bool)

(assert (=> d!158811 e!848057))

(declare-fun c!139744 () Bool)

(assert (=> d!158811 (= c!139744 (and (is-Intermediate!13011 lt!659000) (undefined!13823 lt!659000)))))

(assert (=> d!158811 (= lt!659000 e!848059)))

(declare-fun c!139743 () Bool)

(assert (=> d!158811 (= c!139743 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158811 (= lt!658999 (select (arr!48819 a!2804) (toIndex!0 (select (arr!48819 a!2804) j!70) mask!2512)))))

(assert (=> d!158811 (validMask!0 mask!2512)))

(assert (=> d!158811 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48819 a!2804) j!70) mask!2512) (select (arr!48819 a!2804) j!70) a!2804 mask!2512) lt!659000)))

(declare-fun b!1520298 () Bool)

(assert (=> b!1520298 (and (bvsge (index!54440 lt!659000) #b00000000000000000000000000000000) (bvslt (index!54440 lt!659000) (size!49370 a!2804)))))

(assert (=> b!1520298 (= e!848055 (= (select (arr!48819 a!2804) (index!54440 lt!659000)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158811 c!139743) b!1520290))

(assert (= (and d!158811 (not c!139743)) b!1520297))

(assert (= (and b!1520297 c!139742) b!1520291))

(assert (= (and b!1520297 (not c!139742)) b!1520292))

(assert (= (and d!158811 c!139744) b!1520294))

(assert (= (and d!158811 (not c!139744)) b!1520293))

(assert (= (and b!1520293 res!1039899) b!1520295))

(assert (= (and b!1520295 (not res!1039900)) b!1520296))

(assert (= (and b!1520296 (not res!1039901)) b!1520298))

(declare-fun m!1403637 () Bool)

(assert (=> b!1520298 m!1403637))

(assert (=> b!1520292 m!1403529))

(declare-fun m!1403639 () Bool)

(assert (=> b!1520292 m!1403639))

(assert (=> b!1520292 m!1403639))

(assert (=> b!1520292 m!1403509))

(declare-fun m!1403641 () Bool)

(assert (=> b!1520292 m!1403641))

(assert (=> b!1520296 m!1403637))

(assert (=> b!1520295 m!1403637))

(assert (=> d!158811 m!1403529))

(declare-fun m!1403643 () Bool)

(assert (=> d!158811 m!1403643))

(assert (=> d!158811 m!1403525))

(assert (=> b!1520121 d!158811))

(declare-fun d!158829 () Bool)

(declare-fun lt!659008 () (_ BitVec 32))

(declare-fun lt!659007 () (_ BitVec 32))

(assert (=> d!158829 (= lt!659008 (bvmul (bvxor lt!659007 (bvlshr lt!659007 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158829 (= lt!659007 ((_ extract 31 0) (bvand (bvxor (select (arr!48819 a!2804) j!70) (bvlshr (select (arr!48819 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158829 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039902 (let ((h!36896 ((_ extract 31 0) (bvand (bvxor (select (arr!48819 a!2804) j!70) (bvlshr (select (arr!48819 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136122 (bvmul (bvxor h!36896 (bvlshr h!36896 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136122 (bvlshr x!136122 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039902 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039902 #b00000000000000000000000000000000))))))

(assert (=> d!158829 (= (toIndex!0 (select (arr!48819 a!2804) j!70) mask!2512) (bvand (bvxor lt!659008 (bvlshr lt!659008 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520121 d!158829))

(declare-fun d!158835 () Bool)

(assert (=> d!158835 (= (validKeyInArray!0 (select (arr!48819 a!2804) j!70)) (and (not (= (select (arr!48819 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48819 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1520116 d!158835))

(declare-fun d!158837 () Bool)

(assert (=> d!158837 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!129472 d!158837))

(declare-fun d!158839 () Bool)

(assert (=> d!158839 (= (array_inv!37764 a!2804) (bvsge (size!49370 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!129472 d!158839))

(declare-fun b!1520326 () Bool)

(declare-fun e!848077 () Bool)

(declare-fun call!68349 () Bool)

(assert (=> b!1520326 (= e!848077 call!68349)))

(declare-fun bm!68346 () Bool)

(assert (=> bm!68346 (= call!68349 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!70 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1520327 () Bool)

(declare-fun e!848076 () Bool)

(assert (=> b!1520327 (= e!848077 e!848076)))

(declare-fun lt!659013 () (_ BitVec 64))

(assert (=> b!1520327 (= lt!659013 (select (arr!48819 a!2804) j!70))))

(declare-fun lt!659015 () Unit!50846)

(assert (=> b!1520327 (= lt!659015 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!659013 j!70))))

(assert (=> b!1520327 (arrayContainsKey!0 a!2804 lt!659013 #b00000000000000000000000000000000)))

(declare-fun lt!659014 () Unit!50846)

(assert (=> b!1520327 (= lt!659014 lt!659015)))

(declare-fun res!1039912 () Bool)

(assert (=> b!1520327 (= res!1039912 (= (seekEntryOrOpen!0 (select (arr!48819 a!2804) j!70) a!2804 mask!2512) (Found!13011 j!70)))))

(assert (=> b!1520327 (=> (not res!1039912) (not e!848076))))

(declare-fun d!158841 () Bool)

(declare-fun res!1039913 () Bool)

(declare-fun e!848075 () Bool)

(assert (=> d!158841 (=> res!1039913 e!848075)))

(assert (=> d!158841 (= res!1039913 (bvsge j!70 (size!49370 a!2804)))))

(assert (=> d!158841 (= (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512) e!848075)))

(declare-fun b!1520328 () Bool)

(assert (=> b!1520328 (= e!848075 e!848077)))

(declare-fun c!139754 () Bool)

(assert (=> b!1520328 (= c!139754 (validKeyInArray!0 (select (arr!48819 a!2804) j!70)))))

(declare-fun b!1520329 () Bool)

(assert (=> b!1520329 (= e!848076 call!68349)))

(assert (= (and d!158841 (not res!1039913)) b!1520328))

(assert (= (and b!1520328 c!139754) b!1520327))

(assert (= (and b!1520328 (not c!139754)) b!1520326))

(assert (= (and b!1520327 res!1039912) b!1520329))

(assert (= (or b!1520329 b!1520326) bm!68346))

(declare-fun m!1403651 () Bool)

(assert (=> bm!68346 m!1403651))

(assert (=> b!1520327 m!1403509))

(declare-fun m!1403653 () Bool)

(assert (=> b!1520327 m!1403653))

(declare-fun m!1403655 () Bool)

(assert (=> b!1520327 m!1403655))

(assert (=> b!1520327 m!1403509))

(declare-fun m!1403657 () Bool)

(assert (=> b!1520327 m!1403657))

(assert (=> b!1520328 m!1403509))

(assert (=> b!1520328 m!1403509))

(assert (=> b!1520328 m!1403511))

(assert (=> b!1520120 d!158841))

(declare-fun d!158843 () Bool)

(assert (=> d!158843 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-fun lt!659020 () Unit!50846)

(declare-fun choose!38 (array!101176 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50846)

(assert (=> d!158843 (= lt!659020 (choose!38 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (=> d!158843 (validMask!0 mask!2512)))

(assert (=> d!158843 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70) lt!659020)))

(declare-fun bs!43624 () Bool)

(assert (= bs!43624 d!158843))

(assert (=> bs!43624 m!1403539))

(declare-fun m!1403665 () Bool)

(assert (=> bs!43624 m!1403665))

(assert (=> bs!43624 m!1403525))

(assert (=> b!1520120 d!158843))

(declare-fun b!1520373 () Bool)

(declare-fun e!848108 () Bool)

(declare-fun contains!9991 (List!35482 (_ BitVec 64)) Bool)

(assert (=> b!1520373 (= e!848108 (contains!9991 Nil!35479 (select (arr!48819 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520374 () Bool)

(declare-fun e!848109 () Bool)

(declare-fun call!68355 () Bool)

(assert (=> b!1520374 (= e!848109 call!68355)))

(declare-fun b!1520375 () Bool)

(declare-fun e!848111 () Bool)

(assert (=> b!1520375 (= e!848111 e!848109)))

(declare-fun c!139766 () Bool)

(assert (=> b!1520375 (= c!139766 (validKeyInArray!0 (select (arr!48819 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1520376 () Bool)

(assert (=> b!1520376 (= e!848109 call!68355)))

(declare-fun b!1520377 () Bool)

(declare-fun e!848110 () Bool)

(assert (=> b!1520377 (= e!848110 e!848111)))

(declare-fun res!1039938 () Bool)

(assert (=> b!1520377 (=> (not res!1039938) (not e!848111))))

(assert (=> b!1520377 (= res!1039938 (not e!848108))))

(declare-fun res!1039937 () Bool)

(assert (=> b!1520377 (=> (not res!1039937) (not e!848108))))

(assert (=> b!1520377 (= res!1039937 (validKeyInArray!0 (select (arr!48819 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158847 () Bool)

(declare-fun res!1039936 () Bool)

(assert (=> d!158847 (=> res!1039936 e!848110)))

(assert (=> d!158847 (= res!1039936 (bvsge #b00000000000000000000000000000000 (size!49370 a!2804)))))

(assert (=> d!158847 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35479) e!848110)))

(declare-fun bm!68352 () Bool)

(assert (=> bm!68352 (= call!68355 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139766 (Cons!35478 (select (arr!48819 a!2804) #b00000000000000000000000000000000) Nil!35479) Nil!35479)))))

(assert (= (and d!158847 (not res!1039936)) b!1520377))

(assert (= (and b!1520377 res!1039937) b!1520373))

(assert (= (and b!1520377 res!1039938) b!1520375))

(assert (= (and b!1520375 c!139766) b!1520376))

(assert (= (and b!1520375 (not c!139766)) b!1520374))

(assert (= (or b!1520376 b!1520374) bm!68352))

(assert (=> b!1520373 m!1403583))

(assert (=> b!1520373 m!1403583))

(declare-fun m!1403679 () Bool)

(assert (=> b!1520373 m!1403679))

(assert (=> b!1520375 m!1403583))

(assert (=> b!1520375 m!1403583))

(assert (=> b!1520375 m!1403591))

(assert (=> b!1520377 m!1403583))

(assert (=> b!1520377 m!1403583))

(assert (=> b!1520377 m!1403591))

(assert (=> bm!68352 m!1403583))

(declare-fun m!1403681 () Bool)

(assert (=> bm!68352 m!1403681))

(assert (=> b!1520119 d!158847))

(declare-fun b!1520378 () Bool)

(declare-fun e!848116 () SeekEntryResult!13011)

(assert (=> b!1520378 (= e!848116 (Intermediate!13011 true index!487 x!534))))

(declare-fun b!1520379 () Bool)

(declare-fun e!848115 () SeekEntryResult!13011)

(assert (=> b!1520379 (= e!848115 (Intermediate!13011 false index!487 x!534))))

(declare-fun b!1520380 () Bool)

(assert (=> b!1520380 (= e!848115 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!534 #b00000000000000000000000000000001) (nextIndex!0 index!487 x!534 mask!2512) (select (arr!48819 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1520381 () Bool)

(declare-fun e!848114 () Bool)

(declare-fun e!848113 () Bool)

(assert (=> b!1520381 (= e!848114 e!848113)))

(declare-fun res!1039939 () Bool)

(declare-fun lt!659024 () SeekEntryResult!13011)

(assert (=> b!1520381 (= res!1039939 (and (is-Intermediate!13011 lt!659024) (not (undefined!13823 lt!659024)) (bvslt (x!136118 lt!659024) #b01111111111111111111111111111110) (bvsge (x!136118 lt!659024) #b00000000000000000000000000000000) (bvsge (x!136118 lt!659024) x!534)))))

(assert (=> b!1520381 (=> (not res!1039939) (not e!848113))))

(declare-fun b!1520382 () Bool)

(assert (=> b!1520382 (= e!848114 (bvsge (x!136118 lt!659024) #b01111111111111111111111111111110))))

(declare-fun b!1520383 () Bool)

(assert (=> b!1520383 (and (bvsge (index!54440 lt!659024) #b00000000000000000000000000000000) (bvslt (index!54440 lt!659024) (size!49370 a!2804)))))

(declare-fun res!1039940 () Bool)

(assert (=> b!1520383 (= res!1039940 (= (select (arr!48819 a!2804) (index!54440 lt!659024)) (select (arr!48819 a!2804) j!70)))))

(declare-fun e!848112 () Bool)

(assert (=> b!1520383 (=> res!1039940 e!848112)))

(assert (=> b!1520383 (= e!848113 e!848112)))

(declare-fun b!1520384 () Bool)

(assert (=> b!1520384 (and (bvsge (index!54440 lt!659024) #b00000000000000000000000000000000) (bvslt (index!54440 lt!659024) (size!49370 a!2804)))))

(declare-fun res!1039941 () Bool)

(assert (=> b!1520384 (= res!1039941 (= (select (arr!48819 a!2804) (index!54440 lt!659024)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520384 (=> res!1039941 e!848112)))

(declare-fun b!1520385 () Bool)

(assert (=> b!1520385 (= e!848116 e!848115)))

(declare-fun lt!659023 () (_ BitVec 64))

(declare-fun c!139767 () Bool)

(assert (=> b!1520385 (= c!139767 (or (= lt!659023 (select (arr!48819 a!2804) j!70)) (= (bvadd lt!659023 lt!659023) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!158853 () Bool)

(assert (=> d!158853 e!848114))

(declare-fun c!139769 () Bool)

(assert (=> d!158853 (= c!139769 (and (is-Intermediate!13011 lt!659024) (undefined!13823 lt!659024)))))

(assert (=> d!158853 (= lt!659024 e!848116)))

(declare-fun c!139768 () Bool)

(assert (=> d!158853 (= c!139768 (bvsge x!534 #b01111111111111111111111111111110))))

(assert (=> d!158853 (= lt!659023 (select (arr!48819 a!2804) index!487))))

(assert (=> d!158853 (validMask!0 mask!2512)))

(assert (=> d!158853 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48819 a!2804) j!70) a!2804 mask!2512) lt!659024)))

(declare-fun b!1520386 () Bool)

(assert (=> b!1520386 (and (bvsge (index!54440 lt!659024) #b00000000000000000000000000000000) (bvslt (index!54440 lt!659024) (size!49370 a!2804)))))

(assert (=> b!1520386 (= e!848112 (= (select (arr!48819 a!2804) (index!54440 lt!659024)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158853 c!139768) b!1520378))

(assert (= (and d!158853 (not c!139768)) b!1520385))

(assert (= (and b!1520385 c!139767) b!1520379))

(assert (= (and b!1520385 (not c!139767)) b!1520380))

(assert (= (and d!158853 c!139769) b!1520382))

(assert (= (and d!158853 (not c!139769)) b!1520381))

(assert (= (and b!1520381 res!1039939) b!1520383))

(assert (= (and b!1520383 (not res!1039940)) b!1520384))

(assert (= (and b!1520384 (not res!1039941)) b!1520386))

(declare-fun m!1403683 () Bool)

(assert (=> b!1520386 m!1403683))

(declare-fun m!1403685 () Bool)

(assert (=> b!1520380 m!1403685))

(assert (=> b!1520380 m!1403685))

(assert (=> b!1520380 m!1403509))

(declare-fun m!1403687 () Bool)

(assert (=> b!1520380 m!1403687))

(assert (=> b!1520384 m!1403683))

(assert (=> b!1520383 m!1403683))

(assert (=> d!158853 m!1403537))

(assert (=> d!158853 m!1403525))

(assert (=> b!1520113 d!158853))

(declare-fun e!848121 () SeekEntryResult!13011)

(declare-fun b!1520387 () Bool)

(assert (=> b!1520387 (= e!848121 (Intermediate!13011 true (toIndex!0 (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun e!848120 () SeekEntryResult!13011)

(declare-fun b!1520388 () Bool)

(assert (=> b!1520388 (= e!848120 (Intermediate!13011 false (toIndex!0 (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000))))

(declare-fun b!1520389 () Bool)

(assert (=> b!1520389 (= e!848120 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) #b00000000000000000000000000000000 mask!2512) (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804)) mask!2512))))

(declare-fun b!1520390 () Bool)

(declare-fun e!848119 () Bool)

(declare-fun e!848118 () Bool)

(assert (=> b!1520390 (= e!848119 e!848118)))

(declare-fun res!1039942 () Bool)

(declare-fun lt!659026 () SeekEntryResult!13011)

(assert (=> b!1520390 (= res!1039942 (and (is-Intermediate!13011 lt!659026) (not (undefined!13823 lt!659026)) (bvslt (x!136118 lt!659026) #b01111111111111111111111111111110) (bvsge (x!136118 lt!659026) #b00000000000000000000000000000000) (bvsge (x!136118 lt!659026) #b00000000000000000000000000000000)))))

(assert (=> b!1520390 (=> (not res!1039942) (not e!848118))))

(declare-fun b!1520391 () Bool)

(assert (=> b!1520391 (= e!848119 (bvsge (x!136118 lt!659026) #b01111111111111111111111111111110))))

(declare-fun b!1520392 () Bool)

(assert (=> b!1520392 (and (bvsge (index!54440 lt!659026) #b00000000000000000000000000000000) (bvslt (index!54440 lt!659026) (size!49370 (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804)))))))

(declare-fun res!1039943 () Bool)

(assert (=> b!1520392 (= res!1039943 (= (select (arr!48819 (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804))) (index!54440 lt!659026)) (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)))))

(declare-fun e!848117 () Bool)

(assert (=> b!1520392 (=> res!1039943 e!848117)))

(assert (=> b!1520392 (= e!848118 e!848117)))

(declare-fun b!1520393 () Bool)

(assert (=> b!1520393 (and (bvsge (index!54440 lt!659026) #b00000000000000000000000000000000) (bvslt (index!54440 lt!659026) (size!49370 (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804)))))))

(declare-fun res!1039944 () Bool)

(assert (=> b!1520393 (= res!1039944 (= (select (arr!48819 (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804))) (index!54440 lt!659026)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1520393 (=> res!1039944 e!848117)))

(declare-fun b!1520394 () Bool)

(assert (=> b!1520394 (= e!848121 e!848120)))

(declare-fun lt!659025 () (_ BitVec 64))

(declare-fun c!139770 () Bool)

(assert (=> b!1520394 (= c!139770 (or (= lt!659025 (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70)) (= (bvadd lt!659025 lt!659025) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!158855 () Bool)

(assert (=> d!158855 e!848119))

(declare-fun c!139772 () Bool)

(assert (=> d!158855 (= c!139772 (and (is-Intermediate!13011 lt!659026) (undefined!13823 lt!659026)))))

(assert (=> d!158855 (= lt!659026 e!848121)))

(declare-fun c!139771 () Bool)

(assert (=> d!158855 (= c!139771 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!158855 (= lt!659025 (select (arr!48819 (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804))) (toIndex!0 (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512)))))

(assert (=> d!158855 (validMask!0 mask!2512)))

(assert (=> d!158855 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804)) mask!2512) lt!659026)))

(declare-fun b!1520395 () Bool)

(assert (=> b!1520395 (and (bvsge (index!54440 lt!659026) #b00000000000000000000000000000000) (bvslt (index!54440 lt!659026) (size!49370 (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804)))))))

(assert (=> b!1520395 (= e!848117 (= (select (arr!48819 (array!101177 (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49370 a!2804))) (index!54440 lt!659026)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!158855 c!139771) b!1520387))

(assert (= (and d!158855 (not c!139771)) b!1520394))

(assert (= (and b!1520394 c!139770) b!1520388))

(assert (= (and b!1520394 (not c!139770)) b!1520389))

(assert (= (and d!158855 c!139772) b!1520391))

(assert (= (and d!158855 (not c!139772)) b!1520390))

(assert (= (and b!1520390 res!1039942) b!1520392))

(assert (= (and b!1520392 (not res!1039943)) b!1520393))

(assert (= (and b!1520393 (not res!1039944)) b!1520395))

(declare-fun m!1403689 () Bool)

(assert (=> b!1520395 m!1403689))

(assert (=> b!1520389 m!1403521))

(declare-fun m!1403691 () Bool)

(assert (=> b!1520389 m!1403691))

(assert (=> b!1520389 m!1403691))

(assert (=> b!1520389 m!1403519))

(declare-fun m!1403693 () Bool)

(assert (=> b!1520389 m!1403693))

(assert (=> b!1520393 m!1403689))

(assert (=> b!1520392 m!1403689))

(assert (=> d!158855 m!1403521))

(declare-fun m!1403695 () Bool)

(assert (=> d!158855 m!1403695))

(assert (=> d!158855 m!1403525))

(assert (=> b!1520118 d!158855))

(declare-fun d!158857 () Bool)

(declare-fun lt!659034 () (_ BitVec 32))

(declare-fun lt!659033 () (_ BitVec 32))

(assert (=> d!158857 (= lt!659034 (bvmul (bvxor lt!659033 (bvlshr lt!659033 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!158857 (= lt!659033 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!158857 (and (bvsge mask!2512 #b00000000000000000000000000000000) (let ((res!1039902 (let ((h!36896 ((_ extract 31 0) (bvand (bvxor (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (bvlshr (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!136122 (bvmul (bvxor h!36896 (bvlshr h!36896 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!136122 (bvlshr x!136122 #b00000000000000000000000000001101)) mask!2512))))) (and (bvslt res!1039902 (bvadd mask!2512 #b00000000000000000000000000000001)) (bvsge res!1039902 #b00000000000000000000000000000000))))))

(assert (=> d!158857 (= (toIndex!0 (select (store (arr!48819 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (bvand (bvxor lt!659034 (bvlshr lt!659034 #b00000000000000000000000000001101)) mask!2512))))

(assert (=> b!1520118 d!158857))

(push 1)

