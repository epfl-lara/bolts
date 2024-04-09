; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129216 () Bool)

(assert start!129216)

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun e!846041 () Bool)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100985 0))(
  ( (array!100986 (arr!48725 (Array (_ BitVec 32) (_ BitVec 64))) (size!49276 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100985)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun b!1516083 () Bool)

(assert (=> b!1516083 (= e!846041 (not (or (not (= (select (arr!48725 a!2804) j!70) (select (store (arr!48725 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21) (bvsge mask!2512 #b00000000000000000000000000000000))))))

(declare-fun e!846039 () Bool)

(assert (=> b!1516083 e!846039))

(declare-fun res!1036063 () Bool)

(assert (=> b!1516083 (=> (not res!1036063) (not e!846039))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100985 (_ BitVec 32)) Bool)

(assert (=> b!1516083 (= res!1036063 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50658 0))(
  ( (Unit!50659) )
))
(declare-fun lt!657268 () Unit!50658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100985 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50658)

(assert (=> b!1516083 (= lt!657268 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1516084 () Bool)

(declare-fun res!1036068 () Bool)

(declare-fun e!846038 () Bool)

(assert (=> b!1516084 (=> (not res!1036068) (not e!846038))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1516084 (= res!1036068 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49276 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49276 a!2804))))))

(declare-fun b!1516085 () Bool)

(assert (=> b!1516085 (= e!846038 e!846041)))

(declare-fun res!1036058 () Bool)

(assert (=> b!1516085 (=> (not res!1036058) (not e!846041))))

(declare-datatypes ((SeekEntryResult!12917 0))(
  ( (MissingZero!12917 (index!54062 (_ BitVec 32))) (Found!12917 (index!54063 (_ BitVec 32))) (Intermediate!12917 (undefined!13729 Bool) (index!54064 (_ BitVec 32)) (x!135768 (_ BitVec 32))) (Undefined!12917) (MissingVacant!12917 (index!54065 (_ BitVec 32))) )
))
(declare-fun lt!657267 () SeekEntryResult!12917)

(declare-fun lt!657266 () SeekEntryResult!12917)

(assert (=> b!1516085 (= res!1036058 (= lt!657267 lt!657266))))

(assert (=> b!1516085 (= lt!657266 (Intermediate!12917 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100985 (_ BitVec 32)) SeekEntryResult!12917)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1516085 (= lt!657267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48725 a!2804) j!70) mask!2512) (select (arr!48725 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1036061 () Bool)

(assert (=> start!129216 (=> (not res!1036061) (not e!846038))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129216 (= res!1036061 (validMask!0 mask!2512))))

(assert (=> start!129216 e!846038))

(assert (=> start!129216 true))

(declare-fun array_inv!37670 (array!100985) Bool)

(assert (=> start!129216 (array_inv!37670 a!2804)))

(declare-fun b!1516086 () Bool)

(declare-fun res!1036059 () Bool)

(assert (=> b!1516086 (=> (not res!1036059) (not e!846038))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1516086 (= res!1036059 (validKeyInArray!0 (select (arr!48725 a!2804) j!70)))))

(declare-fun b!1516087 () Bool)

(declare-fun res!1036065 () Bool)

(assert (=> b!1516087 (=> (not res!1036065) (not e!846041))))

(assert (=> b!1516087 (= res!1036065 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48725 a!2804) j!70) a!2804 mask!2512) lt!657266))))

(declare-fun b!1516088 () Bool)

(declare-fun res!1036062 () Bool)

(assert (=> b!1516088 (=> (not res!1036062) (not e!846038))))

(assert (=> b!1516088 (= res!1036062 (validKeyInArray!0 (select (arr!48725 a!2804) i!961)))))

(declare-fun b!1516089 () Bool)

(declare-fun res!1036064 () Bool)

(assert (=> b!1516089 (=> (not res!1036064) (not e!846041))))

(assert (=> b!1516089 (= res!1036064 (= lt!657267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48725 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48725 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100986 (store (arr!48725 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49276 a!2804)) mask!2512)))))

(declare-fun b!1516090 () Bool)

(declare-fun res!1036067 () Bool)

(assert (=> b!1516090 (=> (not res!1036067) (not e!846038))))

(declare-datatypes ((List!35388 0))(
  ( (Nil!35385) (Cons!35384 (h!36797 (_ BitVec 64)) (t!50089 List!35388)) )
))
(declare-fun arrayNoDuplicates!0 (array!100985 (_ BitVec 32) List!35388) Bool)

(assert (=> b!1516090 (= res!1036067 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35385))))

(declare-fun b!1516091 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100985 (_ BitVec 32)) SeekEntryResult!12917)

(assert (=> b!1516091 (= e!846039 (= (seekEntry!0 (select (arr!48725 a!2804) j!70) a!2804 mask!2512) (Found!12917 j!70)))))

(declare-fun b!1516092 () Bool)

(declare-fun res!1036066 () Bool)

(assert (=> b!1516092 (=> (not res!1036066) (not e!846038))))

(assert (=> b!1516092 (= res!1036066 (and (= (size!49276 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49276 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49276 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1516093 () Bool)

(declare-fun res!1036060 () Bool)

(assert (=> b!1516093 (=> (not res!1036060) (not e!846038))))

(assert (=> b!1516093 (= res!1036060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129216 res!1036061) b!1516092))

(assert (= (and b!1516092 res!1036066) b!1516088))

(assert (= (and b!1516088 res!1036062) b!1516086))

(assert (= (and b!1516086 res!1036059) b!1516093))

(assert (= (and b!1516093 res!1036060) b!1516090))

(assert (= (and b!1516090 res!1036067) b!1516084))

(assert (= (and b!1516084 res!1036068) b!1516085))

(assert (= (and b!1516085 res!1036058) b!1516087))

(assert (= (and b!1516087 res!1036065) b!1516089))

(assert (= (and b!1516089 res!1036064) b!1516083))

(assert (= (and b!1516083 res!1036063) b!1516091))

(declare-fun m!1399383 () Bool)

(assert (=> b!1516085 m!1399383))

(assert (=> b!1516085 m!1399383))

(declare-fun m!1399385 () Bool)

(assert (=> b!1516085 m!1399385))

(assert (=> b!1516085 m!1399385))

(assert (=> b!1516085 m!1399383))

(declare-fun m!1399387 () Bool)

(assert (=> b!1516085 m!1399387))

(assert (=> b!1516086 m!1399383))

(assert (=> b!1516086 m!1399383))

(declare-fun m!1399389 () Bool)

(assert (=> b!1516086 m!1399389))

(assert (=> b!1516087 m!1399383))

(assert (=> b!1516087 m!1399383))

(declare-fun m!1399391 () Bool)

(assert (=> b!1516087 m!1399391))

(assert (=> b!1516091 m!1399383))

(assert (=> b!1516091 m!1399383))

(declare-fun m!1399393 () Bool)

(assert (=> b!1516091 m!1399393))

(declare-fun m!1399395 () Bool)

(assert (=> b!1516089 m!1399395))

(declare-fun m!1399397 () Bool)

(assert (=> b!1516089 m!1399397))

(assert (=> b!1516089 m!1399397))

(declare-fun m!1399399 () Bool)

(assert (=> b!1516089 m!1399399))

(assert (=> b!1516089 m!1399399))

(assert (=> b!1516089 m!1399397))

(declare-fun m!1399401 () Bool)

(assert (=> b!1516089 m!1399401))

(declare-fun m!1399403 () Bool)

(assert (=> b!1516088 m!1399403))

(assert (=> b!1516088 m!1399403))

(declare-fun m!1399405 () Bool)

(assert (=> b!1516088 m!1399405))

(declare-fun m!1399407 () Bool)

(assert (=> b!1516090 m!1399407))

(assert (=> b!1516083 m!1399383))

(declare-fun m!1399409 () Bool)

(assert (=> b!1516083 m!1399409))

(assert (=> b!1516083 m!1399395))

(assert (=> b!1516083 m!1399397))

(declare-fun m!1399411 () Bool)

(assert (=> b!1516083 m!1399411))

(declare-fun m!1399413 () Bool)

(assert (=> b!1516093 m!1399413))

(declare-fun m!1399415 () Bool)

(assert (=> start!129216 m!1399415))

(declare-fun m!1399417 () Bool)

(assert (=> start!129216 m!1399417))

(check-sat (not b!1516086) (not b!1516093) (not b!1516088) (not start!129216) (not b!1516090) (not b!1516089) (not b!1516083) (not b!1516087) (not b!1516085) (not b!1516091))
(check-sat)
