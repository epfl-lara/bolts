; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125948 () Bool)

(assert start!125948)

(declare-fun b!1474073 () Bool)

(declare-fun res!1001419 () Bool)

(declare-fun e!827137 () Bool)

(assert (=> b!1474073 (=> (not res!1001419) (not e!827137))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12113 0))(
  ( (MissingZero!12113 (index!50843 (_ BitVec 32))) (Found!12113 (index!50844 (_ BitVec 32))) (Intermediate!12113 (undefined!12925 Bool) (index!50845 (_ BitVec 32)) (x!132424 (_ BitVec 32))) (Undefined!12113) (MissingVacant!12113 (index!50846 (_ BitVec 32))) )
))
(declare-fun lt!644106 () SeekEntryResult!12113)

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!99142 0))(
  ( (array!99143 (arr!47850 (Array (_ BitVec 32) (_ BitVec 64))) (size!48401 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99142)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99142 (_ BitVec 32)) SeekEntryResult!12113)

(assert (=> b!1474073 (= res!1001419 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47850 a!2862) j!93) a!2862 mask!2687) lt!644106))))

(declare-fun e!827142 () Bool)

(declare-fun lt!644107 () (_ BitVec 64))

(declare-fun b!1474074 () Bool)

(declare-fun lt!644108 () array!99142)

(declare-fun lt!644105 () SeekEntryResult!12113)

(assert (=> b!1474074 (= e!827142 (= lt!644105 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644107 lt!644108 mask!2687)))))

(declare-fun b!1474075 () Bool)

(declare-fun res!1001428 () Bool)

(declare-fun e!827139 () Bool)

(assert (=> b!1474075 (=> (not res!1001428) (not e!827139))))

(assert (=> b!1474075 (= res!1001428 e!827142)))

(declare-fun c!135845 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1474075 (= c!135845 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474076 () Bool)

(declare-fun e!827141 () Bool)

(assert (=> b!1474076 (= e!827141 true)))

(declare-fun lt!644110 () SeekEntryResult!12113)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99142 (_ BitVec 32)) SeekEntryResult!12113)

(assert (=> b!1474076 (= lt!644110 (seekEntryOrOpen!0 lt!644107 lt!644108 mask!2687))))

(declare-fun b!1474077 () Bool)

(assert (=> b!1474077 (= e!827137 e!827139)))

(declare-fun res!1001431 () Bool)

(assert (=> b!1474077 (=> (not res!1001431) (not e!827139))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1474077 (= res!1001431 (= lt!644105 (Intermediate!12113 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474077 (= lt!644105 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644107 mask!2687) lt!644107 lt!644108 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1474077 (= lt!644107 (select (store (arr!47850 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474078 () Bool)

(declare-fun res!1001433 () Bool)

(declare-fun e!827143 () Bool)

(assert (=> b!1474078 (=> (not res!1001433) (not e!827143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99142 (_ BitVec 32)) Bool)

(assert (=> b!1474078 (= res!1001433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474079 () Bool)

(declare-fun res!1001430 () Bool)

(assert (=> b!1474079 (=> (not res!1001430) (not e!827143))))

(assert (=> b!1474079 (= res!1001430 (and (= (size!48401 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48401 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48401 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1001424 () Bool)

(assert (=> start!125948 (=> (not res!1001424) (not e!827143))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125948 (= res!1001424 (validMask!0 mask!2687))))

(assert (=> start!125948 e!827143))

(assert (=> start!125948 true))

(declare-fun array_inv!36795 (array!99142) Bool)

(assert (=> start!125948 (array_inv!36795 a!2862)))

(declare-fun b!1474080 () Bool)

(declare-fun res!1001421 () Bool)

(assert (=> b!1474080 (=> (not res!1001421) (not e!827139))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474080 (= res!1001421 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474081 () Bool)

(declare-fun res!1001422 () Bool)

(assert (=> b!1474081 (=> (not res!1001422) (not e!827143))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1474081 (= res!1001422 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48401 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48401 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48401 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474082 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99142 (_ BitVec 32)) SeekEntryResult!12113)

(assert (=> b!1474082 (= e!827142 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644107 lt!644108 mask!2687) (seekEntryOrOpen!0 lt!644107 lt!644108 mask!2687)))))

(declare-fun e!827144 () Bool)

(declare-fun b!1474083 () Bool)

(assert (=> b!1474083 (= e!827144 (or (= (select (arr!47850 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47850 a!2862) intermediateBeforeIndex!19) (select (arr!47850 a!2862) j!93))))))

(declare-fun b!1474084 () Bool)

(declare-fun res!1001423 () Bool)

(assert (=> b!1474084 (=> (not res!1001423) (not e!827143))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474084 (= res!1001423 (validKeyInArray!0 (select (arr!47850 a!2862) j!93)))))

(declare-fun b!1474085 () Bool)

(declare-fun res!1001429 () Bool)

(assert (=> b!1474085 (=> (not res!1001429) (not e!827143))))

(declare-datatypes ((List!34531 0))(
  ( (Nil!34528) (Cons!34527 (h!35886 (_ BitVec 64)) (t!49232 List!34531)) )
))
(declare-fun arrayNoDuplicates!0 (array!99142 (_ BitVec 32) List!34531) Bool)

(assert (=> b!1474085 (= res!1001429 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34528))))

(declare-fun b!1474086 () Bool)

(declare-fun e!827138 () Bool)

(assert (=> b!1474086 (= e!827143 e!827138)))

(declare-fun res!1001425 () Bool)

(assert (=> b!1474086 (=> (not res!1001425) (not e!827138))))

(assert (=> b!1474086 (= res!1001425 (= (select (store (arr!47850 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474086 (= lt!644108 (array!99143 (store (arr!47850 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48401 a!2862)))))

(declare-fun b!1474087 () Bool)

(assert (=> b!1474087 (= e!827139 (not e!827141))))

(declare-fun res!1001432 () Bool)

(assert (=> b!1474087 (=> res!1001432 e!827141)))

(assert (=> b!1474087 (= res!1001432 (or (not (= (select (arr!47850 a!2862) index!646) (select (store (arr!47850 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47850 a!2862) index!646) (select (arr!47850 a!2862) j!93)))))))

(assert (=> b!1474087 e!827144))

(declare-fun res!1001418 () Bool)

(assert (=> b!1474087 (=> (not res!1001418) (not e!827144))))

(assert (=> b!1474087 (= res!1001418 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49514 0))(
  ( (Unit!49515) )
))
(declare-fun lt!644109 () Unit!49514)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99142 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49514)

(assert (=> b!1474087 (= lt!644109 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474088 () Bool)

(assert (=> b!1474088 (= e!827138 e!827137)))

(declare-fun res!1001427 () Bool)

(assert (=> b!1474088 (=> (not res!1001427) (not e!827137))))

(assert (=> b!1474088 (= res!1001427 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47850 a!2862) j!93) mask!2687) (select (arr!47850 a!2862) j!93) a!2862 mask!2687) lt!644106))))

(assert (=> b!1474088 (= lt!644106 (Intermediate!12113 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474089 () Bool)

(declare-fun res!1001420 () Bool)

(assert (=> b!1474089 (=> (not res!1001420) (not e!827144))))

(assert (=> b!1474089 (= res!1001420 (= (seekEntryOrOpen!0 (select (arr!47850 a!2862) j!93) a!2862 mask!2687) (Found!12113 j!93)))))

(declare-fun b!1474090 () Bool)

(declare-fun res!1001426 () Bool)

(assert (=> b!1474090 (=> (not res!1001426) (not e!827143))))

(assert (=> b!1474090 (= res!1001426 (validKeyInArray!0 (select (arr!47850 a!2862) i!1006)))))

(assert (= (and start!125948 res!1001424) b!1474079))

(assert (= (and b!1474079 res!1001430) b!1474090))

(assert (= (and b!1474090 res!1001426) b!1474084))

(assert (= (and b!1474084 res!1001423) b!1474078))

(assert (= (and b!1474078 res!1001433) b!1474085))

(assert (= (and b!1474085 res!1001429) b!1474081))

(assert (= (and b!1474081 res!1001422) b!1474086))

(assert (= (and b!1474086 res!1001425) b!1474088))

(assert (= (and b!1474088 res!1001427) b!1474073))

(assert (= (and b!1474073 res!1001419) b!1474077))

(assert (= (and b!1474077 res!1001431) b!1474075))

(assert (= (and b!1474075 c!135845) b!1474074))

(assert (= (and b!1474075 (not c!135845)) b!1474082))

(assert (= (and b!1474075 res!1001428) b!1474080))

(assert (= (and b!1474080 res!1001421) b!1474087))

(assert (= (and b!1474087 res!1001418) b!1474089))

(assert (= (and b!1474089 res!1001420) b!1474083))

(assert (= (and b!1474087 (not res!1001432)) b!1474076))

(declare-fun m!1360603 () Bool)

(assert (=> b!1474089 m!1360603))

(assert (=> b!1474089 m!1360603))

(declare-fun m!1360605 () Bool)

(assert (=> b!1474089 m!1360605))

(declare-fun m!1360607 () Bool)

(assert (=> start!125948 m!1360607))

(declare-fun m!1360609 () Bool)

(assert (=> start!125948 m!1360609))

(declare-fun m!1360611 () Bool)

(assert (=> b!1474082 m!1360611))

(declare-fun m!1360613 () Bool)

(assert (=> b!1474082 m!1360613))

(assert (=> b!1474076 m!1360613))

(declare-fun m!1360615 () Bool)

(assert (=> b!1474077 m!1360615))

(assert (=> b!1474077 m!1360615))

(declare-fun m!1360617 () Bool)

(assert (=> b!1474077 m!1360617))

(declare-fun m!1360619 () Bool)

(assert (=> b!1474077 m!1360619))

(declare-fun m!1360621 () Bool)

(assert (=> b!1474077 m!1360621))

(assert (=> b!1474084 m!1360603))

(assert (=> b!1474084 m!1360603))

(declare-fun m!1360623 () Bool)

(assert (=> b!1474084 m!1360623))

(assert (=> b!1474086 m!1360619))

(declare-fun m!1360625 () Bool)

(assert (=> b!1474086 m!1360625))

(declare-fun m!1360627 () Bool)

(assert (=> b!1474074 m!1360627))

(declare-fun m!1360629 () Bool)

(assert (=> b!1474083 m!1360629))

(assert (=> b!1474083 m!1360603))

(declare-fun m!1360631 () Bool)

(assert (=> b!1474090 m!1360631))

(assert (=> b!1474090 m!1360631))

(declare-fun m!1360633 () Bool)

(assert (=> b!1474090 m!1360633))

(declare-fun m!1360635 () Bool)

(assert (=> b!1474078 m!1360635))

(assert (=> b!1474088 m!1360603))

(assert (=> b!1474088 m!1360603))

(declare-fun m!1360637 () Bool)

(assert (=> b!1474088 m!1360637))

(assert (=> b!1474088 m!1360637))

(assert (=> b!1474088 m!1360603))

(declare-fun m!1360639 () Bool)

(assert (=> b!1474088 m!1360639))

(assert (=> b!1474073 m!1360603))

(assert (=> b!1474073 m!1360603))

(declare-fun m!1360641 () Bool)

(assert (=> b!1474073 m!1360641))

(declare-fun m!1360643 () Bool)

(assert (=> b!1474087 m!1360643))

(assert (=> b!1474087 m!1360619))

(declare-fun m!1360645 () Bool)

(assert (=> b!1474087 m!1360645))

(declare-fun m!1360647 () Bool)

(assert (=> b!1474087 m!1360647))

(declare-fun m!1360649 () Bool)

(assert (=> b!1474087 m!1360649))

(assert (=> b!1474087 m!1360603))

(declare-fun m!1360651 () Bool)

(assert (=> b!1474085 m!1360651))

(push 1)

(assert (not b!1474084))

