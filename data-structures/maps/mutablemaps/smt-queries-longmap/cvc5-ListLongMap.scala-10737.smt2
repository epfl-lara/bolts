; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125602 () Bool)

(assert start!125602)

(declare-fun b!1468988 () Bool)

(declare-fun res!997640 () Bool)

(declare-fun e!824776 () Bool)

(assert (=> b!1468988 (=> (not res!997640) (not e!824776))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12030 0))(
  ( (MissingZero!12030 (index!50511 (_ BitVec 32))) (Found!12030 (index!50512 (_ BitVec 32))) (Intermediate!12030 (undefined!12842 Bool) (index!50513 (_ BitVec 32)) (x!132098 (_ BitVec 32))) (Undefined!12030) (MissingVacant!12030 (index!50514 (_ BitVec 32))) )
))
(declare-fun lt!642369 () SeekEntryResult!12030)

(declare-datatypes ((array!98967 0))(
  ( (array!98968 (arr!47767 (Array (_ BitVec 32) (_ BitVec 64))) (size!48318 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98967)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98967 (_ BitVec 32)) SeekEntryResult!12030)

(assert (=> b!1468988 (= res!997640 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47767 a!2862) j!93) a!2862 mask!2687) lt!642369))))

(declare-fun b!1468989 () Bool)

(assert (=> b!1468989 (= e!824776 false)))

(declare-fun lt!642370 () SeekEntryResult!12030)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468989 (= lt!642370 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47767 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47767 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98968 (store (arr!47767 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48318 a!2862)) mask!2687))))

(declare-fun b!1468990 () Bool)

(declare-fun res!997639 () Bool)

(declare-fun e!824777 () Bool)

(assert (=> b!1468990 (=> (not res!997639) (not e!824777))))

(declare-datatypes ((List!34448 0))(
  ( (Nil!34445) (Cons!34444 (h!35794 (_ BitVec 64)) (t!49149 List!34448)) )
))
(declare-fun arrayNoDuplicates!0 (array!98967 (_ BitVec 32) List!34448) Bool)

(assert (=> b!1468990 (= res!997639 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34445))))

(declare-fun res!997637 () Bool)

(assert (=> start!125602 (=> (not res!997637) (not e!824777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125602 (= res!997637 (validMask!0 mask!2687))))

(assert (=> start!125602 e!824777))

(assert (=> start!125602 true))

(declare-fun array_inv!36712 (array!98967) Bool)

(assert (=> start!125602 (array_inv!36712 a!2862)))

(declare-fun b!1468991 () Bool)

(declare-fun res!997636 () Bool)

(assert (=> b!1468991 (=> (not res!997636) (not e!824777))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98967 (_ BitVec 32)) Bool)

(assert (=> b!1468991 (= res!997636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468992 () Bool)

(declare-fun res!997644 () Bool)

(assert (=> b!1468992 (=> (not res!997644) (not e!824777))))

(assert (=> b!1468992 (= res!997644 (and (= (size!48318 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48318 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48318 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468993 () Bool)

(declare-fun res!997642 () Bool)

(assert (=> b!1468993 (=> (not res!997642) (not e!824777))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468993 (= res!997642 (validKeyInArray!0 (select (arr!47767 a!2862) i!1006)))))

(declare-fun b!1468994 () Bool)

(declare-fun res!997641 () Bool)

(assert (=> b!1468994 (=> (not res!997641) (not e!824777))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468994 (= res!997641 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48318 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48318 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48318 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47767 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468995 () Bool)

(declare-fun res!997643 () Bool)

(assert (=> b!1468995 (=> (not res!997643) (not e!824777))))

(assert (=> b!1468995 (= res!997643 (validKeyInArray!0 (select (arr!47767 a!2862) j!93)))))

(declare-fun b!1468996 () Bool)

(assert (=> b!1468996 (= e!824777 e!824776)))

(declare-fun res!997638 () Bool)

(assert (=> b!1468996 (=> (not res!997638) (not e!824776))))

(assert (=> b!1468996 (= res!997638 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47767 a!2862) j!93) mask!2687) (select (arr!47767 a!2862) j!93) a!2862 mask!2687) lt!642369))))

(assert (=> b!1468996 (= lt!642369 (Intermediate!12030 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125602 res!997637) b!1468992))

(assert (= (and b!1468992 res!997644) b!1468993))

(assert (= (and b!1468993 res!997642) b!1468995))

(assert (= (and b!1468995 res!997643) b!1468991))

(assert (= (and b!1468991 res!997636) b!1468990))

(assert (= (and b!1468990 res!997639) b!1468994))

(assert (= (and b!1468994 res!997641) b!1468996))

(assert (= (and b!1468996 res!997638) b!1468988))

(assert (= (and b!1468988 res!997640) b!1468989))

(declare-fun m!1356225 () Bool)

(assert (=> b!1468988 m!1356225))

(assert (=> b!1468988 m!1356225))

(declare-fun m!1356227 () Bool)

(assert (=> b!1468988 m!1356227))

(assert (=> b!1468995 m!1356225))

(assert (=> b!1468995 m!1356225))

(declare-fun m!1356229 () Bool)

(assert (=> b!1468995 m!1356229))

(declare-fun m!1356231 () Bool)

(assert (=> b!1468994 m!1356231))

(declare-fun m!1356233 () Bool)

(assert (=> b!1468994 m!1356233))

(assert (=> b!1468989 m!1356231))

(declare-fun m!1356235 () Bool)

(assert (=> b!1468989 m!1356235))

(assert (=> b!1468989 m!1356235))

(declare-fun m!1356237 () Bool)

(assert (=> b!1468989 m!1356237))

(assert (=> b!1468989 m!1356237))

(assert (=> b!1468989 m!1356235))

(declare-fun m!1356239 () Bool)

(assert (=> b!1468989 m!1356239))

(declare-fun m!1356241 () Bool)

(assert (=> b!1468991 m!1356241))

(declare-fun m!1356243 () Bool)

(assert (=> b!1468990 m!1356243))

(declare-fun m!1356245 () Bool)

(assert (=> start!125602 m!1356245))

(declare-fun m!1356247 () Bool)

(assert (=> start!125602 m!1356247))

(declare-fun m!1356249 () Bool)

(assert (=> b!1468993 m!1356249))

(assert (=> b!1468993 m!1356249))

(declare-fun m!1356251 () Bool)

(assert (=> b!1468993 m!1356251))

(assert (=> b!1468996 m!1356225))

(assert (=> b!1468996 m!1356225))

(declare-fun m!1356253 () Bool)

(assert (=> b!1468996 m!1356253))

(assert (=> b!1468996 m!1356253))

(assert (=> b!1468996 m!1356225))

(declare-fun m!1356255 () Bool)

(assert (=> b!1468996 m!1356255))

(push 1)

