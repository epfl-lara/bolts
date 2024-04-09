; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128418 () Bool)

(assert start!128418)

(declare-fun res!1026364 () Bool)

(declare-fun e!841694 () Bool)

(assert (=> start!128418 (=> (not res!1026364) (not e!841694))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128418 (= res!1026364 (validMask!0 mask!2512))))

(assert (=> start!128418 e!841694))

(assert (=> start!128418 true))

(declare-datatypes ((array!100403 0))(
  ( (array!100404 (arr!48443 (Array (_ BitVec 32) (_ BitVec 64))) (size!48994 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100403)

(declare-fun array_inv!37388 (array!100403) Bool)

(assert (=> start!128418 (array_inv!37388 a!2804)))

(declare-fun b!1505897 () Bool)

(declare-fun res!1026366 () Bool)

(assert (=> b!1505897 (=> (not res!1026366) (not e!841694))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1505897 (= res!1026366 (and (= (size!48994 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48994 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48994 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505898 () Bool)

(declare-fun res!1026363 () Bool)

(assert (=> b!1505898 (=> (not res!1026363) (not e!841694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505898 (= res!1026363 (validKeyInArray!0 (select (arr!48443 a!2804) i!961)))))

(declare-fun b!1505899 () Bool)

(declare-fun res!1026362 () Bool)

(assert (=> b!1505899 (=> (not res!1026362) (not e!841694))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100403 (_ BitVec 32)) Bool)

(assert (=> b!1505899 (= res!1026362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505900 () Bool)

(declare-fun res!1026361 () Bool)

(assert (=> b!1505900 (=> (not res!1026361) (not e!841694))))

(declare-datatypes ((List!35106 0))(
  ( (Nil!35103) (Cons!35102 (h!36500 (_ BitVec 64)) (t!49807 List!35106)) )
))
(declare-fun arrayNoDuplicates!0 (array!100403 (_ BitVec 32) List!35106) Bool)

(assert (=> b!1505900 (= res!1026361 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35103))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun b!1505901 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1505901 (= e!841694 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48994 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48994 a!2804)) (bvsge mask!2512 #b00000000000000000000000000000000) (bvsgt mask!2512 #b00111111111111111111111111111111)))))

(declare-fun b!1505902 () Bool)

(declare-fun res!1026365 () Bool)

(assert (=> b!1505902 (=> (not res!1026365) (not e!841694))))

(assert (=> b!1505902 (= res!1026365 (validKeyInArray!0 (select (arr!48443 a!2804) j!70)))))

(assert (= (and start!128418 res!1026364) b!1505897))

(assert (= (and b!1505897 res!1026366) b!1505898))

(assert (= (and b!1505898 res!1026363) b!1505902))

(assert (= (and b!1505902 res!1026365) b!1505899))

(assert (= (and b!1505899 res!1026362) b!1505900))

(assert (= (and b!1505900 res!1026361) b!1505901))

(declare-fun m!1389013 () Bool)

(assert (=> b!1505902 m!1389013))

(assert (=> b!1505902 m!1389013))

(declare-fun m!1389015 () Bool)

(assert (=> b!1505902 m!1389015))

(declare-fun m!1389017 () Bool)

(assert (=> b!1505899 m!1389017))

(declare-fun m!1389019 () Bool)

(assert (=> b!1505900 m!1389019))

(declare-fun m!1389021 () Bool)

(assert (=> b!1505898 m!1389021))

(assert (=> b!1505898 m!1389021))

(declare-fun m!1389023 () Bool)

(assert (=> b!1505898 m!1389023))

(declare-fun m!1389025 () Bool)

(assert (=> start!128418 m!1389025))

(declare-fun m!1389027 () Bool)

(assert (=> start!128418 m!1389027))

(check-sat (not start!128418) (not b!1505902) (not b!1505898) (not b!1505900) (not b!1505899))
(check-sat)
(get-model)

(declare-fun d!158109 () Bool)

(assert (=> d!158109 (= (validKeyInArray!0 (select (arr!48443 a!2804) i!961)) (and (not (= (select (arr!48443 a!2804) i!961) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48443 a!2804) i!961) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505898 d!158109))

(declare-fun b!1505931 () Bool)

(declare-fun e!841710 () Bool)

(declare-fun call!68205 () Bool)

(assert (=> b!1505931 (= e!841710 call!68205)))

(declare-fun b!1505932 () Bool)

(declare-fun e!841711 () Bool)

(assert (=> b!1505932 (= e!841711 e!841710)))

(declare-fun c!139307 () Bool)

(assert (=> b!1505932 (= c!139307 (validKeyInArray!0 (select (arr!48443 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1505933 () Bool)

(assert (=> b!1505933 (= e!841710 call!68205)))

(declare-fun b!1505934 () Bool)

(declare-fun e!841712 () Bool)

(assert (=> b!1505934 (= e!841712 e!841711)))

(declare-fun res!1026392 () Bool)

(assert (=> b!1505934 (=> (not res!1026392) (not e!841711))))

(declare-fun e!841709 () Bool)

(assert (=> b!1505934 (= res!1026392 (not e!841709))))

(declare-fun res!1026393 () Bool)

(assert (=> b!1505934 (=> (not res!1026393) (not e!841709))))

(assert (=> b!1505934 (= res!1026393 (validKeyInArray!0 (select (arr!48443 a!2804) #b00000000000000000000000000000000)))))

(declare-fun d!158111 () Bool)

(declare-fun res!1026391 () Bool)

(assert (=> d!158111 (=> res!1026391 e!841712)))

(assert (=> d!158111 (= res!1026391 (bvsge #b00000000000000000000000000000000 (size!48994 a!2804)))))

(assert (=> d!158111 (= (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35103) e!841712)))

(declare-fun b!1505935 () Bool)

(declare-fun contains!9972 (List!35106 (_ BitVec 64)) Bool)

(assert (=> b!1505935 (= e!841709 (contains!9972 Nil!35103 (select (arr!48443 a!2804) #b00000000000000000000000000000000)))))

(declare-fun bm!68202 () Bool)

(assert (=> bm!68202 (= call!68205 (arrayNoDuplicates!0 a!2804 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!139307 (Cons!35102 (select (arr!48443 a!2804) #b00000000000000000000000000000000) Nil!35103) Nil!35103)))))

(assert (= (and d!158111 (not res!1026391)) b!1505934))

(assert (= (and b!1505934 res!1026393) b!1505935))

(assert (= (and b!1505934 res!1026392) b!1505932))

(assert (= (and b!1505932 c!139307) b!1505931))

(assert (= (and b!1505932 (not c!139307)) b!1505933))

(assert (= (or b!1505931 b!1505933) bm!68202))

(declare-fun m!1389045 () Bool)

(assert (=> b!1505932 m!1389045))

(assert (=> b!1505932 m!1389045))

(declare-fun m!1389047 () Bool)

(assert (=> b!1505932 m!1389047))

(assert (=> b!1505934 m!1389045))

(assert (=> b!1505934 m!1389045))

(assert (=> b!1505934 m!1389047))

(assert (=> b!1505935 m!1389045))

(assert (=> b!1505935 m!1389045))

(declare-fun m!1389049 () Bool)

(assert (=> b!1505935 m!1389049))

(assert (=> bm!68202 m!1389045))

(declare-fun m!1389051 () Bool)

(assert (=> bm!68202 m!1389051))

(assert (=> b!1505900 d!158111))

(declare-fun d!158113 () Bool)

(declare-fun res!1026400 () Bool)

(declare-fun e!841722 () Bool)

(assert (=> d!158113 (=> res!1026400 e!841722)))

(assert (=> d!158113 (= res!1026400 (bvsge #b00000000000000000000000000000000 (size!48994 a!2804)))))

(assert (=> d!158113 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841722)))

(declare-fun b!1505950 () Bool)

(declare-fun e!841723 () Bool)

(assert (=> b!1505950 (= e!841722 e!841723)))

(declare-fun c!139312 () Bool)

(assert (=> b!1505950 (= c!139312 (validKeyInArray!0 (select (arr!48443 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1505951 () Bool)

(declare-fun e!841724 () Bool)

(declare-fun call!68208 () Bool)

(assert (=> b!1505951 (= e!841724 call!68208)))

(declare-fun b!1505952 () Bool)

(assert (=> b!1505952 (= e!841723 call!68208)))

(declare-fun b!1505953 () Bool)

(assert (=> b!1505953 (= e!841723 e!841724)))

(declare-fun lt!654088 () (_ BitVec 64))

(assert (=> b!1505953 (= lt!654088 (select (arr!48443 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50260 0))(
  ( (Unit!50261) )
))
(declare-fun lt!654086 () Unit!50260)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100403 (_ BitVec 64) (_ BitVec 32)) Unit!50260)

(assert (=> b!1505953 (= lt!654086 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654088 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100403 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505953 (arrayContainsKey!0 a!2804 lt!654088 #b00000000000000000000000000000000)))

(declare-fun lt!654087 () Unit!50260)

(assert (=> b!1505953 (= lt!654087 lt!654086)))

(declare-fun res!1026401 () Bool)

(declare-datatypes ((SeekEntryResult!12649 0))(
  ( (MissingZero!12649 (index!52990 (_ BitVec 32))) (Found!12649 (index!52991 (_ BitVec 32))) (Intermediate!12649 (undefined!13461 Bool) (index!52992 (_ BitVec 32)) (x!134721 (_ BitVec 32))) (Undefined!12649) (MissingVacant!12649 (index!52993 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100403 (_ BitVec 32)) SeekEntryResult!12649)

(assert (=> b!1505953 (= res!1026401 (= (seekEntryOrOpen!0 (select (arr!48443 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12649 #b00000000000000000000000000000000)))))

(assert (=> b!1505953 (=> (not res!1026401) (not e!841724))))

(declare-fun bm!68205 () Bool)

(assert (=> bm!68205 (= call!68208 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(assert (= (and d!158113 (not res!1026400)) b!1505950))

(assert (= (and b!1505950 c!139312) b!1505953))

(assert (= (and b!1505950 (not c!139312)) b!1505952))

(assert (= (and b!1505953 res!1026401) b!1505951))

(assert (= (or b!1505951 b!1505952) bm!68205))

(assert (=> b!1505950 m!1389045))

(assert (=> b!1505950 m!1389045))

(assert (=> b!1505950 m!1389047))

(assert (=> b!1505953 m!1389045))

(declare-fun m!1389053 () Bool)

(assert (=> b!1505953 m!1389053))

(declare-fun m!1389055 () Bool)

(assert (=> b!1505953 m!1389055))

(assert (=> b!1505953 m!1389045))

(declare-fun m!1389057 () Bool)

(assert (=> b!1505953 m!1389057))

(declare-fun m!1389059 () Bool)

(assert (=> bm!68205 m!1389059))

(assert (=> b!1505899 d!158113))

(declare-fun d!158119 () Bool)

(assert (=> d!158119 (= (validMask!0 mask!2512) (and (or (= mask!2512 #b00000000000000000000000000000111) (= mask!2512 #b00000000000000000000000000001111) (= mask!2512 #b00000000000000000000000000011111) (= mask!2512 #b00000000000000000000000000111111) (= mask!2512 #b00000000000000000000000001111111) (= mask!2512 #b00000000000000000000000011111111) (= mask!2512 #b00000000000000000000000111111111) (= mask!2512 #b00000000000000000000001111111111) (= mask!2512 #b00000000000000000000011111111111) (= mask!2512 #b00000000000000000000111111111111) (= mask!2512 #b00000000000000000001111111111111) (= mask!2512 #b00000000000000000011111111111111) (= mask!2512 #b00000000000000000111111111111111) (= mask!2512 #b00000000000000001111111111111111) (= mask!2512 #b00000000000000011111111111111111) (= mask!2512 #b00000000000000111111111111111111) (= mask!2512 #b00000000000001111111111111111111) (= mask!2512 #b00000000000011111111111111111111) (= mask!2512 #b00000000000111111111111111111111) (= mask!2512 #b00000000001111111111111111111111) (= mask!2512 #b00000000011111111111111111111111) (= mask!2512 #b00000000111111111111111111111111) (= mask!2512 #b00000001111111111111111111111111) (= mask!2512 #b00000011111111111111111111111111) (= mask!2512 #b00000111111111111111111111111111) (= mask!2512 #b00001111111111111111111111111111) (= mask!2512 #b00011111111111111111111111111111) (= mask!2512 #b00111111111111111111111111111111)) (bvsle mask!2512 #b00111111111111111111111111111111)))))

(assert (=> start!128418 d!158119))

(declare-fun d!158127 () Bool)

(assert (=> d!158127 (= (array_inv!37388 a!2804) (bvsge (size!48994 a!2804) #b00000000000000000000000000000000))))

(assert (=> start!128418 d!158127))

(declare-fun d!158129 () Bool)

(assert (=> d!158129 (= (validKeyInArray!0 (select (arr!48443 a!2804) j!70)) (and (not (= (select (arr!48443 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48443 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505902 d!158129))

(check-sat (not b!1505953) (not b!1505932) (not b!1505950) (not b!1505934) (not b!1505935) (not bm!68205) (not bm!68202))
(check-sat)
