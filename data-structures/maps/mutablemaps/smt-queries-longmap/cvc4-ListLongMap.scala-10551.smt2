; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124490 () Bool)

(assert start!124490)

(declare-fun b!1439781 () Bool)

(declare-fun res!972324 () Bool)

(declare-fun e!811987 () Bool)

(assert (=> b!1439781 (=> (not res!972324) (not e!811987))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97855 0))(
  ( (array!97856 (arr!47211 (Array (_ BitVec 32) (_ BitVec 64))) (size!47762 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97855)

(declare-datatypes ((SeekEntryResult!11486 0))(
  ( (MissingZero!11486 (index!48335 (_ BitVec 32))) (Found!11486 (index!48336 (_ BitVec 32))) (Intermediate!11486 (undefined!12298 Bool) (index!48337 (_ BitVec 32)) (x!130066 (_ BitVec 32))) (Undefined!11486) (MissingVacant!11486 (index!48338 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97855 (_ BitVec 32)) SeekEntryResult!11486)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439781 (= res!972324 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47211 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47211 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97856 (store (arr!47211 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47762 a!2862)) mask!2687) (Intermediate!11486 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun res!972327 () Bool)

(declare-fun e!811986 () Bool)

(assert (=> start!124490 (=> (not res!972327) (not e!811986))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124490 (= res!972327 (validMask!0 mask!2687))))

(assert (=> start!124490 e!811986))

(assert (=> start!124490 true))

(declare-fun array_inv!36156 (array!97855) Bool)

(assert (=> start!124490 (array_inv!36156 a!2862)))

(declare-fun b!1439782 () Bool)

(declare-fun res!972317 () Bool)

(assert (=> b!1439782 (=> (not res!972317) (not e!811986))))

(declare-datatypes ((List!33892 0))(
  ( (Nil!33889) (Cons!33888 (h!35238 (_ BitVec 64)) (t!48593 List!33892)) )
))
(declare-fun arrayNoDuplicates!0 (array!97855 (_ BitVec 32) List!33892) Bool)

(assert (=> b!1439782 (= res!972317 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33889))))

(declare-fun b!1439783 () Bool)

(declare-fun res!972326 () Bool)

(assert (=> b!1439783 (=> (not res!972326) (not e!811987))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!632815 () SeekEntryResult!11486)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1439783 (= res!972326 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47211 a!2862) j!93) a!2862 mask!2687) lt!632815))))

(declare-fun b!1439784 () Bool)

(declare-fun res!972320 () Bool)

(assert (=> b!1439784 (=> (not res!972320) (not e!811987))))

(assert (=> b!1439784 (= res!972320 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1439785 () Bool)

(declare-fun res!972321 () Bool)

(assert (=> b!1439785 (=> (not res!972321) (not e!811986))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439785 (= res!972321 (validKeyInArray!0 (select (arr!47211 a!2862) i!1006)))))

(declare-fun b!1439786 () Bool)

(declare-fun res!972322 () Bool)

(assert (=> b!1439786 (=> (not res!972322) (not e!811986))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439786 (= res!972322 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47762 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47762 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47762 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47211 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439787 () Bool)

(assert (=> b!1439787 (= e!811986 e!811987)))

(declare-fun res!972325 () Bool)

(assert (=> b!1439787 (=> (not res!972325) (not e!811987))))

(assert (=> b!1439787 (= res!972325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47211 a!2862) j!93) mask!2687) (select (arr!47211 a!2862) j!93) a!2862 mask!2687) lt!632815))))

(assert (=> b!1439787 (= lt!632815 (Intermediate!11486 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439788 () Bool)

(declare-fun res!972319 () Bool)

(assert (=> b!1439788 (=> (not res!972319) (not e!811986))))

(assert (=> b!1439788 (= res!972319 (validKeyInArray!0 (select (arr!47211 a!2862) j!93)))))

(declare-fun b!1439789 () Bool)

(assert (=> b!1439789 (= e!811987 (not (validKeyInArray!0 (select (store (arr!47211 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1439790 () Bool)

(declare-fun res!972318 () Bool)

(assert (=> b!1439790 (=> (not res!972318) (not e!811986))))

(assert (=> b!1439790 (= res!972318 (and (= (size!47762 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47762 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47762 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439791 () Bool)

(declare-fun res!972323 () Bool)

(assert (=> b!1439791 (=> (not res!972323) (not e!811986))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97855 (_ BitVec 32)) Bool)

(assert (=> b!1439791 (= res!972323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124490 res!972327) b!1439790))

(assert (= (and b!1439790 res!972318) b!1439785))

(assert (= (and b!1439785 res!972321) b!1439788))

(assert (= (and b!1439788 res!972319) b!1439791))

(assert (= (and b!1439791 res!972323) b!1439782))

(assert (= (and b!1439782 res!972317) b!1439786))

(assert (= (and b!1439786 res!972322) b!1439787))

(assert (= (and b!1439787 res!972325) b!1439783))

(assert (= (and b!1439783 res!972326) b!1439781))

(assert (= (and b!1439781 res!972324) b!1439784))

(assert (= (and b!1439784 res!972320) b!1439789))

(declare-fun m!1328957 () Bool)

(assert (=> b!1439782 m!1328957))

(declare-fun m!1328959 () Bool)

(assert (=> b!1439783 m!1328959))

(assert (=> b!1439783 m!1328959))

(declare-fun m!1328961 () Bool)

(assert (=> b!1439783 m!1328961))

(assert (=> b!1439788 m!1328959))

(assert (=> b!1439788 m!1328959))

(declare-fun m!1328963 () Bool)

(assert (=> b!1439788 m!1328963))

(declare-fun m!1328965 () Bool)

(assert (=> b!1439785 m!1328965))

(assert (=> b!1439785 m!1328965))

(declare-fun m!1328967 () Bool)

(assert (=> b!1439785 m!1328967))

(declare-fun m!1328969 () Bool)

(assert (=> b!1439791 m!1328969))

(declare-fun m!1328971 () Bool)

(assert (=> start!124490 m!1328971))

(declare-fun m!1328973 () Bool)

(assert (=> start!124490 m!1328973))

(declare-fun m!1328975 () Bool)

(assert (=> b!1439786 m!1328975))

(declare-fun m!1328977 () Bool)

(assert (=> b!1439786 m!1328977))

(assert (=> b!1439789 m!1328975))

(declare-fun m!1328979 () Bool)

(assert (=> b!1439789 m!1328979))

(assert (=> b!1439789 m!1328979))

(declare-fun m!1328981 () Bool)

(assert (=> b!1439789 m!1328981))

(assert (=> b!1439787 m!1328959))

(assert (=> b!1439787 m!1328959))

(declare-fun m!1328983 () Bool)

(assert (=> b!1439787 m!1328983))

(assert (=> b!1439787 m!1328983))

(assert (=> b!1439787 m!1328959))

(declare-fun m!1328985 () Bool)

(assert (=> b!1439787 m!1328985))

(assert (=> b!1439781 m!1328975))

(assert (=> b!1439781 m!1328979))

(assert (=> b!1439781 m!1328979))

(declare-fun m!1328987 () Bool)

(assert (=> b!1439781 m!1328987))

(assert (=> b!1439781 m!1328987))

(assert (=> b!1439781 m!1328979))

(declare-fun m!1328989 () Bool)

(assert (=> b!1439781 m!1328989))

(push 1)

(assert (not b!1439787))

(assert (not b!1439783))

(assert (not b!1439788))

(assert (not b!1439785))

(assert (not start!124490))

(assert (not b!1439791))

(assert (not b!1439789))

(assert (not b!1439781))

(assert (not b!1439782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

