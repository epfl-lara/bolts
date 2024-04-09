; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128420 () Bool)

(assert start!128420)

(declare-fun b!1505915 () Bool)

(declare-fun res!1026381 () Bool)

(declare-fun e!841700 () Bool)

(assert (=> b!1505915 (=> (not res!1026381) (not e!841700))))

(declare-datatypes ((array!100405 0))(
  ( (array!100406 (arr!48444 (Array (_ BitVec 32) (_ BitVec 64))) (size!48995 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100405)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505915 (= res!1026381 (validKeyInArray!0 (select (arr!48444 a!2804) i!961)))))

(declare-fun b!1505916 () Bool)

(declare-fun res!1026383 () Bool)

(assert (=> b!1505916 (=> (not res!1026383) (not e!841700))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100405 (_ BitVec 32)) Bool)

(assert (=> b!1505916 (= res!1026383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun b!1505917 () Bool)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1505917 (= e!841700 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48995 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48995 a!2804)) (bvsge mask!2512 #b00000000000000000000000000000000) (bvsgt mask!2512 #b00111111111111111111111111111111)))))

(declare-fun res!1026380 () Bool)

(assert (=> start!128420 (=> (not res!1026380) (not e!841700))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128420 (= res!1026380 (validMask!0 mask!2512))))

(assert (=> start!128420 e!841700))

(assert (=> start!128420 true))

(declare-fun array_inv!37389 (array!100405) Bool)

(assert (=> start!128420 (array_inv!37389 a!2804)))

(declare-fun b!1505918 () Bool)

(declare-fun res!1026382 () Bool)

(assert (=> b!1505918 (=> (not res!1026382) (not e!841700))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1505918 (= res!1026382 (and (= (size!48995 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48995 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48995 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1505919 () Bool)

(declare-fun res!1026384 () Bool)

(assert (=> b!1505919 (=> (not res!1026384) (not e!841700))))

(declare-datatypes ((List!35107 0))(
  ( (Nil!35104) (Cons!35103 (h!36501 (_ BitVec 64)) (t!49808 List!35107)) )
))
(declare-fun arrayNoDuplicates!0 (array!100405 (_ BitVec 32) List!35107) Bool)

(assert (=> b!1505919 (= res!1026384 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35104))))

(declare-fun b!1505920 () Bool)

(declare-fun res!1026379 () Bool)

(assert (=> b!1505920 (=> (not res!1026379) (not e!841700))))

(assert (=> b!1505920 (= res!1026379 (validKeyInArray!0 (select (arr!48444 a!2804) j!70)))))

(assert (= (and start!128420 res!1026380) b!1505918))

(assert (= (and b!1505918 res!1026382) b!1505915))

(assert (= (and b!1505915 res!1026381) b!1505920))

(assert (= (and b!1505920 res!1026379) b!1505916))

(assert (= (and b!1505916 res!1026383) b!1505919))

(assert (= (and b!1505919 res!1026384) b!1505917))

(declare-fun m!1389029 () Bool)

(assert (=> start!128420 m!1389029))

(declare-fun m!1389031 () Bool)

(assert (=> start!128420 m!1389031))

(declare-fun m!1389033 () Bool)

(assert (=> b!1505919 m!1389033))

(declare-fun m!1389035 () Bool)

(assert (=> b!1505915 m!1389035))

(assert (=> b!1505915 m!1389035))

(declare-fun m!1389037 () Bool)

(assert (=> b!1505915 m!1389037))

(declare-fun m!1389039 () Bool)

(assert (=> b!1505916 m!1389039))

(declare-fun m!1389041 () Bool)

(assert (=> b!1505920 m!1389041))

(assert (=> b!1505920 m!1389041))

(declare-fun m!1389043 () Bool)

(assert (=> b!1505920 m!1389043))

(push 1)

(assert (not b!1505920))

(assert (not b!1505919))

(assert (not b!1505916))

(assert (not b!1505915))

(assert (not start!128420))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!158117 () Bool)

(declare-fun res!1026411 () Bool)

(declare-fun e!841738 () Bool)

(assert (=> d!158117 (=> res!1026411 e!841738)))

(assert (=> d!158117 (= res!1026411 (bvsge #b00000000000000000000000000000000 (size!48995 a!2804)))))

(assert (=> d!158117 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841738)))

(declare-fun b!1505968 () Bool)

(declare-fun e!841737 () Bool)

(declare-fun call!68214 () Bool)

(assert (=> b!1505968 (= e!841737 call!68214)))

(declare-fun b!1505969 () Bool)

(declare-fun e!841739 () Bool)

(assert (=> b!1505969 (= e!841739 call!68214)))

(declare-fun bm!68211 () Bool)

(assert (=> bm!68211 (= call!68214 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1505970 () Bool)

(assert (=> b!1505970 (= e!841738 e!841737)))

(declare-fun c!139316 () Bool)

(assert (=> b!1505970 (= c!139316 (validKeyInArray!0 (select (arr!48444 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1505971 () Bool)

(assert (=> b!1505971 (= e!841737 e!841739)))

(declare-fun lt!654106 () (_ BitVec 64))

(assert (=> b!1505971 (= lt!654106 (select (arr!48444 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50264 0))(
  ( (Unit!50265) )
))
(declare-fun lt!654105 () Unit!50264)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100405 (_ BitVec 64) (_ BitVec 32)) Unit!50264)

(assert (=> b!1505971 (= lt!654105 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654106 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100405 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505971 (arrayContainsKey!0 a!2804 lt!654106 #b00000000000000000000000000000000)))

(declare-fun lt!654104 () Unit!50264)

(assert (=> b!1505971 (= lt!654104 lt!654105)))

(declare-fun res!1026410 () Bool)

(declare-datatypes ((SeekEntryResult!12651 0))(
  ( (MissingZero!12651 (index!52998 (_ BitVec 32))) (Found!12651 (index!52999 (_ BitVec 32))) (Intermediate!12651 (undefined!13463 Bool) (index!53000 (_ BitVec 32)) (x!134723 (_ BitVec 32))) (Undefined!12651) (MissingVacant!12651 (index!53001 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100405 (_ BitVec 32)) SeekEntryResult!12651)

(assert (=> b!1505971 (= res!1026410 (= (seekEntryOrOpen!0 (select (arr!48444 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12651 #b00000000000000000000000000000000)))))

(assert (=> b!1505971 (=> (not res!1026410) (not e!841739))))

(assert (= (and d!158117 (not res!1026411)) b!1505970))

(assert (= (and b!1505970 c!139316) b!1505971))

(assert (= (and b!1505970 (not c!139316)) b!1505968))

(assert (= (and b!1505971 res!1026410) b!1505969))

(assert (= (or b!1505969 b!1505968) bm!68211))

(declare-fun m!1389073 () Bool)

(assert (=> bm!68211 m!1389073))

(declare-fun m!1389075 () Bool)

(assert (=> b!1505970 m!1389075))

(assert (=> b!1505970 m!1389075))

(declare-fun m!1389077 () Bool)

(assert (=> b!1505970 m!1389077))

(assert (=> b!1505971 m!1389075))

(declare-fun m!1389079 () Bool)

(assert (=> b!1505971 m!1389079))

(declare-fun m!1389081 () Bool)

(assert (=> b!1505971 m!1389081))

(assert (=> b!1505971 m!1389075))

