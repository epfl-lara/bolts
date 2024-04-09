; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125180 () Bool)

(assert start!125180)

(declare-fun b!1458112 () Bool)

(declare-fun res!988387 () Bool)

(declare-fun e!820215 () Bool)

(assert (=> b!1458112 (=> (not res!988387) (not e!820215))))

(declare-datatypes ((array!98545 0))(
  ( (array!98546 (arr!47556 (Array (_ BitVec 32) (_ BitVec 64))) (size!48107 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98545)

(declare-datatypes ((List!34237 0))(
  ( (Nil!34234) (Cons!34233 (h!35583 (_ BitVec 64)) (t!48938 List!34237)) )
))
(declare-fun arrayNoDuplicates!0 (array!98545 (_ BitVec 32) List!34237) Bool)

(assert (=> b!1458112 (= res!988387 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34234))))

(declare-fun b!1458113 () Bool)

(declare-fun res!988400 () Bool)

(assert (=> b!1458113 (=> (not res!988400) (not e!820215))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98545 (_ BitVec 32)) Bool)

(assert (=> b!1458113 (= res!988400 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1458114 () Bool)

(declare-fun e!820217 () Bool)

(assert (=> b!1458114 (= e!820217 true)))

(declare-fun lt!638893 () Bool)

(declare-fun e!820222 () Bool)

(assert (=> b!1458114 (= lt!638893 e!820222)))

(declare-fun c!134377 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1458114 (= c!134377 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1458115 () Bool)

(declare-fun res!988386 () Bool)

(declare-fun e!820220 () Bool)

(assert (=> b!1458115 (=> (not res!988386) (not e!820220))))

(declare-fun e!820223 () Bool)

(assert (=> b!1458115 (= res!988386 e!820223)))

(declare-fun c!134378 () Bool)

(assert (=> b!1458115 (= c!134378 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1458116 () Bool)

(declare-fun res!988391 () Bool)

(declare-fun e!820218 () Bool)

(assert (=> b!1458116 (=> (not res!988391) (not e!820218))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11831 0))(
  ( (MissingZero!11831 (index!49715 (_ BitVec 32))) (Found!11831 (index!49716 (_ BitVec 32))) (Intermediate!11831 (undefined!12643 Bool) (index!49717 (_ BitVec 32)) (x!131331 (_ BitVec 32))) (Undefined!11831) (MissingVacant!11831 (index!49718 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98545 (_ BitVec 32)) SeekEntryResult!11831)

(assert (=> b!1458116 (= res!988391 (= (seekEntryOrOpen!0 (select (arr!47556 a!2862) j!93) a!2862 mask!2687) (Found!11831 j!93)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun b!1458117 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1458117 (= e!820218 (and (or (= (select (arr!47556 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47556 a!2862) intermediateBeforeIndex!19) (select (arr!47556 a!2862) j!93))) (let ((bdg!53401 (select (store (arr!47556 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47556 a!2862) index!646) bdg!53401) (= (select (arr!47556 a!2862) index!646) (select (arr!47556 a!2862) j!93))) (= (select (arr!47556 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53401 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1458118 () Bool)

(declare-fun res!988395 () Bool)

(assert (=> b!1458118 (=> (not res!988395) (not e!820215))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1458118 (= res!988395 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48107 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48107 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48107 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!638899 () array!98545)

(declare-fun lt!638897 () (_ BitVec 64))

(declare-fun lt!638898 () SeekEntryResult!11831)

(declare-fun lt!638895 () (_ BitVec 32))

(declare-fun b!1458119 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98545 (_ BitVec 32)) SeekEntryResult!11831)

(assert (=> b!1458119 (= e!820222 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638895 intermediateAfterIndex!19 lt!638897 lt!638899 mask!2687) lt!638898)))))

(declare-fun b!1458120 () Bool)

(declare-fun res!988399 () Bool)

(assert (=> b!1458120 (=> (not res!988399) (not e!820220))))

(assert (=> b!1458120 (= res!988399 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1458122 () Bool)

(declare-fun lt!638894 () SeekEntryResult!11831)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98545 (_ BitVec 32)) SeekEntryResult!11831)

(assert (=> b!1458122 (= e!820223 (= lt!638894 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638897 lt!638899 mask!2687)))))

(declare-fun b!1458123 () Bool)

(declare-fun e!820214 () Bool)

(assert (=> b!1458123 (= e!820214 e!820220)))

(declare-fun res!988398 () Bool)

(assert (=> b!1458123 (=> (not res!988398) (not e!820220))))

(assert (=> b!1458123 (= res!988398 (= lt!638894 (Intermediate!11831 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458123 (= lt!638894 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638897 mask!2687) lt!638897 lt!638899 mask!2687))))

(assert (=> b!1458123 (= lt!638897 (select (store (arr!47556 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1458124 () Bool)

(declare-fun e!820221 () Bool)

(assert (=> b!1458124 (= e!820221 e!820217)))

(declare-fun res!988394 () Bool)

(assert (=> b!1458124 (=> res!988394 e!820217)))

(assert (=> b!1458124 (= res!988394 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638895 #b00000000000000000000000000000000) (bvsge lt!638895 (size!48107 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1458124 (= lt!638895 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1458124 (= lt!638898 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638897 lt!638899 mask!2687))))

(assert (=> b!1458124 (= lt!638898 (seekEntryOrOpen!0 lt!638897 lt!638899 mask!2687))))

(declare-fun b!1458125 () Bool)

(declare-fun res!988396 () Bool)

(assert (=> b!1458125 (=> (not res!988396) (not e!820215))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1458125 (= res!988396 (validKeyInArray!0 (select (arr!47556 a!2862) j!93)))))

(declare-fun b!1458126 () Bool)

(declare-fun e!820219 () Bool)

(assert (=> b!1458126 (= e!820215 e!820219)))

(declare-fun res!988388 () Bool)

(assert (=> b!1458126 (=> (not res!988388) (not e!820219))))

(assert (=> b!1458126 (= res!988388 (= (select (store (arr!47556 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1458126 (= lt!638899 (array!98546 (store (arr!47556 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48107 a!2862)))))

(declare-fun b!1458127 () Bool)

(assert (=> b!1458127 (= e!820223 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638897 lt!638899 mask!2687) (seekEntryOrOpen!0 lt!638897 lt!638899 mask!2687)))))

(declare-fun b!1458128 () Bool)

(declare-fun res!988392 () Bool)

(assert (=> b!1458128 (=> (not res!988392) (not e!820215))))

(assert (=> b!1458128 (= res!988392 (and (= (size!48107 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48107 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48107 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1458129 () Bool)

(declare-fun res!988385 () Bool)

(assert (=> b!1458129 (=> (not res!988385) (not e!820214))))

(declare-fun lt!638896 () SeekEntryResult!11831)

(assert (=> b!1458129 (= res!988385 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47556 a!2862) j!93) a!2862 mask!2687) lt!638896))))

(declare-fun b!1458130 () Bool)

(declare-fun res!988393 () Bool)

(assert (=> b!1458130 (=> (not res!988393) (not e!820215))))

(assert (=> b!1458130 (= res!988393 (validKeyInArray!0 (select (arr!47556 a!2862) i!1006)))))

(declare-fun b!1458131 () Bool)

(declare-fun res!988384 () Bool)

(assert (=> b!1458131 (=> res!988384 e!820217)))

(assert (=> b!1458131 (= res!988384 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638895 (select (arr!47556 a!2862) j!93) a!2862 mask!2687) lt!638896)))))

(declare-fun b!1458132 () Bool)

(assert (=> b!1458132 (= e!820220 (not e!820221))))

(declare-fun res!988390 () Bool)

(assert (=> b!1458132 (=> res!988390 e!820221)))

(assert (=> b!1458132 (= res!988390 (or (and (= (select (arr!47556 a!2862) index!646) (select (store (arr!47556 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47556 a!2862) index!646) (select (arr!47556 a!2862) j!93))) (= (select (arr!47556 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1458132 e!820218))

(declare-fun res!988401 () Bool)

(assert (=> b!1458132 (=> (not res!988401) (not e!820218))))

(assert (=> b!1458132 (= res!988401 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49106 0))(
  ( (Unit!49107) )
))
(declare-fun lt!638892 () Unit!49106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98545 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49106)

(assert (=> b!1458132 (= lt!638892 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1458133 () Bool)

(assert (=> b!1458133 (= e!820219 e!820214)))

(declare-fun res!988397 () Bool)

(assert (=> b!1458133 (=> (not res!988397) (not e!820214))))

(assert (=> b!1458133 (= res!988397 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47556 a!2862) j!93) mask!2687) (select (arr!47556 a!2862) j!93) a!2862 mask!2687) lt!638896))))

(assert (=> b!1458133 (= lt!638896 (Intermediate!11831 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!988389 () Bool)

(assert (=> start!125180 (=> (not res!988389) (not e!820215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125180 (= res!988389 (validMask!0 mask!2687))))

(assert (=> start!125180 e!820215))

(assert (=> start!125180 true))

(declare-fun array_inv!36501 (array!98545) Bool)

(assert (=> start!125180 (array_inv!36501 a!2862)))

(declare-fun b!1458121 () Bool)

(assert (=> b!1458121 (= e!820222 (not (= lt!638894 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638895 lt!638897 lt!638899 mask!2687))))))

(assert (= (and start!125180 res!988389) b!1458128))

(assert (= (and b!1458128 res!988392) b!1458130))

(assert (= (and b!1458130 res!988393) b!1458125))

(assert (= (and b!1458125 res!988396) b!1458113))

(assert (= (and b!1458113 res!988400) b!1458112))

(assert (= (and b!1458112 res!988387) b!1458118))

(assert (= (and b!1458118 res!988395) b!1458126))

(assert (= (and b!1458126 res!988388) b!1458133))

(assert (= (and b!1458133 res!988397) b!1458129))

(assert (= (and b!1458129 res!988385) b!1458123))

(assert (= (and b!1458123 res!988398) b!1458115))

(assert (= (and b!1458115 c!134378) b!1458122))

(assert (= (and b!1458115 (not c!134378)) b!1458127))

(assert (= (and b!1458115 res!988386) b!1458120))

(assert (= (and b!1458120 res!988399) b!1458132))

(assert (= (and b!1458132 res!988401) b!1458116))

(assert (= (and b!1458116 res!988391) b!1458117))

(assert (= (and b!1458132 (not res!988390)) b!1458124))

(assert (= (and b!1458124 (not res!988394)) b!1458131))

(assert (= (and b!1458131 (not res!988384)) b!1458114))

(assert (= (and b!1458114 c!134377) b!1458121))

(assert (= (and b!1458114 (not c!134377)) b!1458119))

(declare-fun m!1346057 () Bool)

(assert (=> b!1458127 m!1346057))

(declare-fun m!1346059 () Bool)

(assert (=> b!1458127 m!1346059))

(declare-fun m!1346061 () Bool)

(assert (=> b!1458123 m!1346061))

(assert (=> b!1458123 m!1346061))

(declare-fun m!1346063 () Bool)

(assert (=> b!1458123 m!1346063))

(declare-fun m!1346065 () Bool)

(assert (=> b!1458123 m!1346065))

(declare-fun m!1346067 () Bool)

(assert (=> b!1458123 m!1346067))

(declare-fun m!1346069 () Bool)

(assert (=> b!1458130 m!1346069))

(assert (=> b!1458130 m!1346069))

(declare-fun m!1346071 () Bool)

(assert (=> b!1458130 m!1346071))

(declare-fun m!1346073 () Bool)

(assert (=> b!1458122 m!1346073))

(declare-fun m!1346075 () Bool)

(assert (=> b!1458124 m!1346075))

(assert (=> b!1458124 m!1346057))

(assert (=> b!1458124 m!1346059))

(declare-fun m!1346077 () Bool)

(assert (=> b!1458116 m!1346077))

(assert (=> b!1458116 m!1346077))

(declare-fun m!1346079 () Bool)

(assert (=> b!1458116 m!1346079))

(declare-fun m!1346081 () Bool)

(assert (=> b!1458132 m!1346081))

(assert (=> b!1458132 m!1346065))

(declare-fun m!1346083 () Bool)

(assert (=> b!1458132 m!1346083))

(declare-fun m!1346085 () Bool)

(assert (=> b!1458132 m!1346085))

(declare-fun m!1346087 () Bool)

(assert (=> b!1458132 m!1346087))

(assert (=> b!1458132 m!1346077))

(declare-fun m!1346089 () Bool)

(assert (=> b!1458121 m!1346089))

(assert (=> b!1458117 m!1346065))

(declare-fun m!1346091 () Bool)

(assert (=> b!1458117 m!1346091))

(assert (=> b!1458117 m!1346083))

(assert (=> b!1458117 m!1346085))

(assert (=> b!1458117 m!1346077))

(assert (=> b!1458125 m!1346077))

(assert (=> b!1458125 m!1346077))

(declare-fun m!1346093 () Bool)

(assert (=> b!1458125 m!1346093))

(assert (=> b!1458131 m!1346077))

(assert (=> b!1458131 m!1346077))

(declare-fun m!1346095 () Bool)

(assert (=> b!1458131 m!1346095))

(assert (=> b!1458126 m!1346065))

(declare-fun m!1346097 () Bool)

(assert (=> b!1458126 m!1346097))

(declare-fun m!1346099 () Bool)

(assert (=> start!125180 m!1346099))

(declare-fun m!1346101 () Bool)

(assert (=> start!125180 m!1346101))

(declare-fun m!1346103 () Bool)

(assert (=> b!1458113 m!1346103))

(declare-fun m!1346105 () Bool)

(assert (=> b!1458119 m!1346105))

(assert (=> b!1458133 m!1346077))

(assert (=> b!1458133 m!1346077))

(declare-fun m!1346107 () Bool)

(assert (=> b!1458133 m!1346107))

(assert (=> b!1458133 m!1346107))

(assert (=> b!1458133 m!1346077))

(declare-fun m!1346109 () Bool)

(assert (=> b!1458133 m!1346109))

(declare-fun m!1346111 () Bool)

(assert (=> b!1458112 m!1346111))

(assert (=> b!1458129 m!1346077))

(assert (=> b!1458129 m!1346077))

(declare-fun m!1346113 () Bool)

(assert (=> b!1458129 m!1346113))

(push 1)

