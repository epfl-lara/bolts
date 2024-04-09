; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!128416 () Bool)

(assert start!128416)

(declare-fun b!1505879 () Bool)

(declare-fun res!1026345 () Bool)

(declare-fun e!841688 () Bool)

(assert (=> b!1505879 (=> (not res!1026345) (not e!841688))))

(declare-datatypes ((array!100401 0))(
  ( (array!100402 (arr!48442 (Array (_ BitVec 32) (_ BitVec 64))) (size!48993 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100401)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1505879 (= res!1026345 (validKeyInArray!0 (select (arr!48442 a!2804) i!961)))))

(declare-fun res!1026344 () Bool)

(assert (=> start!128416 (=> (not res!1026344) (not e!841688))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128416 (= res!1026344 (validMask!0 mask!2512))))

(assert (=> start!128416 e!841688))

(assert (=> start!128416 true))

(declare-fun array_inv!37387 (array!100401) Bool)

(assert (=> start!128416 (array_inv!37387 a!2804)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun b!1505880 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1505880 (= e!841688 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!48993 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!48993 a!2804)) (bvsge mask!2512 #b00000000000000000000000000000000) (bvsgt mask!2512 #b00111111111111111111111111111111)))))

(declare-fun b!1505881 () Bool)

(declare-fun res!1026347 () Bool)

(assert (=> b!1505881 (=> (not res!1026347) (not e!841688))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100401 (_ BitVec 32)) Bool)

(assert (=> b!1505881 (= res!1026347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1505882 () Bool)

(declare-fun res!1026346 () Bool)

(assert (=> b!1505882 (=> (not res!1026346) (not e!841688))))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1505882 (= res!1026346 (validKeyInArray!0 (select (arr!48442 a!2804) j!70)))))

(declare-fun b!1505883 () Bool)

(declare-fun res!1026348 () Bool)

(assert (=> b!1505883 (=> (not res!1026348) (not e!841688))))

(declare-datatypes ((List!35105 0))(
  ( (Nil!35102) (Cons!35101 (h!36499 (_ BitVec 64)) (t!49806 List!35105)) )
))
(declare-fun arrayNoDuplicates!0 (array!100401 (_ BitVec 32) List!35105) Bool)

(assert (=> b!1505883 (= res!1026348 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35102))))

(declare-fun b!1505884 () Bool)

(declare-fun res!1026343 () Bool)

(assert (=> b!1505884 (=> (not res!1026343) (not e!841688))))

(assert (=> b!1505884 (= res!1026343 (and (= (size!48993 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!48993 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!48993 a!2804)) (not (= i!961 j!70))))))

(assert (= (and start!128416 res!1026344) b!1505884))

(assert (= (and b!1505884 res!1026343) b!1505879))

(assert (= (and b!1505879 res!1026345) b!1505882))

(assert (= (and b!1505882 res!1026346) b!1505881))

(assert (= (and b!1505881 res!1026347) b!1505883))

(assert (= (and b!1505883 res!1026348) b!1505880))

(declare-fun m!1388997 () Bool)

(assert (=> start!128416 m!1388997))

(declare-fun m!1388999 () Bool)

(assert (=> start!128416 m!1388999))

(declare-fun m!1389001 () Bool)

(assert (=> b!1505883 m!1389001))

(declare-fun m!1389003 () Bool)

(assert (=> b!1505879 m!1389003))

(assert (=> b!1505879 m!1389003))

(declare-fun m!1389005 () Bool)

(assert (=> b!1505879 m!1389005))

(declare-fun m!1389007 () Bool)

(assert (=> b!1505881 m!1389007))

(declare-fun m!1389009 () Bool)

(assert (=> b!1505882 m!1389009))

(assert (=> b!1505882 m!1389009))

(declare-fun m!1389011 () Bool)

(assert (=> b!1505882 m!1389011))

(push 1)

(assert (not b!1505883))

(assert (not b!1505879))

(assert (not b!1505882))

(assert (not start!128416))

(assert (not b!1505881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!68208 () Bool)

(declare-fun call!68211 () Bool)

(assert (=> bm!68208 (= call!68211 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2804 mask!2512))))

(declare-fun b!1505962 () Bool)

(declare-fun e!841732 () Bool)

(declare-fun e!841733 () Bool)

(assert (=> b!1505962 (= e!841732 e!841733)))

(declare-fun c!139315 () Bool)

(assert (=> b!1505962 (= c!139315 (validKeyInArray!0 (select (arr!48442 a!2804) #b00000000000000000000000000000000)))))

(declare-fun b!1505964 () Bool)

(assert (=> b!1505964 (= e!841733 call!68211)))

(declare-fun b!1505965 () Bool)

(declare-fun e!841736 () Bool)

(assert (=> b!1505965 (= e!841736 call!68211)))

(declare-fun d!158115 () Bool)

(declare-fun res!1026406 () Bool)

(assert (=> d!158115 (=> res!1026406 e!841732)))

(assert (=> d!158115 (= res!1026406 (bvsge #b00000000000000000000000000000000 (size!48993 a!2804)))))

(assert (=> d!158115 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512) e!841732)))

(declare-fun b!1505963 () Bool)

(assert (=> b!1505963 (= e!841733 e!841736)))

(declare-fun lt!654101 () (_ BitVec 64))

(assert (=> b!1505963 (= lt!654101 (select (arr!48442 a!2804) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!50262 0))(
  ( (Unit!50263) )
))
(declare-fun lt!654103 () Unit!50262)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!100401 (_ BitVec 64) (_ BitVec 32)) Unit!50262)

(assert (=> b!1505963 (= lt!654103 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2804 lt!654101 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!100401 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1505963 (arrayContainsKey!0 a!2804 lt!654101 #b00000000000000000000000000000000)))

(declare-fun lt!654102 () Unit!50262)

(assert (=> b!1505963 (= lt!654102 lt!654103)))

(declare-fun res!1026407 () Bool)

(declare-datatypes ((SeekEntryResult!12650 0))(
  ( (MissingZero!12650 (index!52994 (_ BitVec 32))) (Found!12650 (index!52995 (_ BitVec 32))) (Intermediate!12650 (undefined!13462 Bool) (index!52996 (_ BitVec 32)) (x!134722 (_ BitVec 32))) (Undefined!12650) (MissingVacant!12650 (index!52997 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100401 (_ BitVec 32)) SeekEntryResult!12650)

(assert (=> b!1505963 (= res!1026407 (= (seekEntryOrOpen!0 (select (arr!48442 a!2804) #b00000000000000000000000000000000) a!2804 mask!2512) (Found!12650 #b00000000000000000000000000000000)))))

(assert (=> b!1505963 (=> (not res!1026407) (not e!841736))))

(assert (= (and d!158115 (not res!1026406)) b!1505962))

(assert (= (and b!1505962 c!139315) b!1505963))

(assert (= (and b!1505962 (not c!139315)) b!1505964))

(assert (= (and b!1505963 res!1026407) b!1505965))

(assert (= (or b!1505965 b!1505964) bm!68208))

(declare-fun m!1389061 () Bool)

(assert (=> bm!68208 m!1389061))

(declare-fun m!1389063 () Bool)

(assert (=> b!1505962 m!1389063))

(assert (=> b!1505962 m!1389063))

(declare-fun m!1389065 () Bool)

(assert (=> b!1505962 m!1389065))

(assert (=> b!1505963 m!1389063))

(declare-fun m!1389067 () Bool)

(assert (=> b!1505963 m!1389067))

(declare-fun m!1389069 () Bool)

(assert (=> b!1505963 m!1389069))

(assert (=> b!1505963 m!1389063))

(declare-fun m!1389071 () Bool)

(assert (=> b!1505963 m!1389071))

(assert (=> b!1505881 d!158115))

(declare-fun d!158121 () Bool)

(assert (=> d!158121 (= (validKeyInArray!0 (select (arr!48442 a!2804) j!70)) (and (not (= (select (arr!48442 a!2804) j!70) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48442 a!2804) j!70) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1505882 d!158121))

(declare-fun b!1505982 () Bool)

(declare-fun e!841751 () Bool)

(declare-fun e!841749 () Bool)

