; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124260 () Bool)

(assert start!124260)

(declare-fun b!1437659 () Bool)

(declare-fun res!970546 () Bool)

(declare-fun e!811093 () Bool)

(assert (=> b!1437659 (=> (not res!970546) (not e!811093))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11434 0))(
  ( (MissingZero!11434 (index!48127 (_ BitVec 32))) (Found!11434 (index!48128 (_ BitVec 32))) (Intermediate!11434 (undefined!12246 Bool) (index!48129 (_ BitVec 32)) (x!129860 (_ BitVec 32))) (Undefined!11434) (MissingVacant!11434 (index!48130 (_ BitVec 32))) )
))
(declare-fun lt!632320 () SeekEntryResult!11434)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97742 0))(
  ( (array!97743 (arr!47159 (Array (_ BitVec 32) (_ BitVec 64))) (size!47710 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97742)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97742 (_ BitVec 32)) SeekEntryResult!11434)

(assert (=> b!1437659 (= res!970546 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47159 a!2862) j!93) a!2862 mask!2687) lt!632320))))

(declare-fun b!1437660 () Bool)

(declare-fun res!970551 () Bool)

(declare-fun e!811094 () Bool)

(assert (=> b!1437660 (=> (not res!970551) (not e!811094))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437660 (= res!970551 (validKeyInArray!0 (select (arr!47159 a!2862) j!93)))))

(declare-fun b!1437661 () Bool)

(assert (=> b!1437661 (= e!811094 e!811093)))

(declare-fun res!970553 () Bool)

(assert (=> b!1437661 (=> (not res!970553) (not e!811093))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437661 (= res!970553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47159 a!2862) j!93) mask!2687) (select (arr!47159 a!2862) j!93) a!2862 mask!2687) lt!632320))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437661 (= lt!632320 (Intermediate!11434 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437662 () Bool)

(declare-fun res!970548 () Bool)

(assert (=> b!1437662 (=> (not res!970548) (not e!811094))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1437662 (= res!970548 (and (= (size!47710 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47710 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47710 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437664 () Bool)

(declare-fun res!970549 () Bool)

(assert (=> b!1437664 (=> (not res!970549) (not e!811094))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437664 (= res!970549 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47710 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47710 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47710 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47159 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437665 () Bool)

(assert (=> b!1437665 (= e!811093 false)))

(declare-fun lt!632319 () (_ BitVec 32))

(assert (=> b!1437665 (= lt!632319 (toIndex!0 (select (store (arr!47159 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437666 () Bool)

(declare-fun res!970554 () Bool)

(assert (=> b!1437666 (=> (not res!970554) (not e!811094))))

(assert (=> b!1437666 (= res!970554 (validKeyInArray!0 (select (arr!47159 a!2862) i!1006)))))

(declare-fun b!1437667 () Bool)

(declare-fun res!970547 () Bool)

(assert (=> b!1437667 (=> (not res!970547) (not e!811094))))

(declare-datatypes ((List!33840 0))(
  ( (Nil!33837) (Cons!33836 (h!35177 (_ BitVec 64)) (t!48541 List!33840)) )
))
(declare-fun arrayNoDuplicates!0 (array!97742 (_ BitVec 32) List!33840) Bool)

(assert (=> b!1437667 (= res!970547 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33837))))

(declare-fun res!970552 () Bool)

(assert (=> start!124260 (=> (not res!970552) (not e!811094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124260 (= res!970552 (validMask!0 mask!2687))))

(assert (=> start!124260 e!811094))

(assert (=> start!124260 true))

(declare-fun array_inv!36104 (array!97742) Bool)

(assert (=> start!124260 (array_inv!36104 a!2862)))

(declare-fun b!1437663 () Bool)

(declare-fun res!970550 () Bool)

(assert (=> b!1437663 (=> (not res!970550) (not e!811094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97742 (_ BitVec 32)) Bool)

(assert (=> b!1437663 (= res!970550 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124260 res!970552) b!1437662))

(assert (= (and b!1437662 res!970548) b!1437666))

(assert (= (and b!1437666 res!970554) b!1437660))

(assert (= (and b!1437660 res!970551) b!1437663))

(assert (= (and b!1437663 res!970550) b!1437667))

(assert (= (and b!1437667 res!970547) b!1437664))

(assert (= (and b!1437664 res!970549) b!1437661))

(assert (= (and b!1437661 res!970553) b!1437659))

(assert (= (and b!1437659 res!970546) b!1437665))

(declare-fun m!1326963 () Bool)

(assert (=> b!1437667 m!1326963))

(declare-fun m!1326965 () Bool)

(assert (=> b!1437659 m!1326965))

(assert (=> b!1437659 m!1326965))

(declare-fun m!1326967 () Bool)

(assert (=> b!1437659 m!1326967))

(declare-fun m!1326969 () Bool)

(assert (=> b!1437663 m!1326969))

(declare-fun m!1326971 () Bool)

(assert (=> b!1437666 m!1326971))

(assert (=> b!1437666 m!1326971))

(declare-fun m!1326973 () Bool)

(assert (=> b!1437666 m!1326973))

(assert (=> b!1437660 m!1326965))

(assert (=> b!1437660 m!1326965))

(declare-fun m!1326975 () Bool)

(assert (=> b!1437660 m!1326975))

(declare-fun m!1326977 () Bool)

(assert (=> b!1437664 m!1326977))

(declare-fun m!1326979 () Bool)

(assert (=> b!1437664 m!1326979))

(declare-fun m!1326981 () Bool)

(assert (=> start!124260 m!1326981))

(declare-fun m!1326983 () Bool)

(assert (=> start!124260 m!1326983))

(assert (=> b!1437665 m!1326977))

(declare-fun m!1326985 () Bool)

(assert (=> b!1437665 m!1326985))

(assert (=> b!1437665 m!1326985))

(declare-fun m!1326987 () Bool)

(assert (=> b!1437665 m!1326987))

(assert (=> b!1437661 m!1326965))

(assert (=> b!1437661 m!1326965))

(declare-fun m!1326989 () Bool)

(assert (=> b!1437661 m!1326989))

(assert (=> b!1437661 m!1326989))

(assert (=> b!1437661 m!1326965))

(declare-fun m!1326991 () Bool)

(assert (=> b!1437661 m!1326991))

(check-sat (not b!1437665) (not b!1437666) (not b!1437667) (not start!124260) (not b!1437659) (not b!1437661) (not b!1437660) (not b!1437663))
(check-sat)
