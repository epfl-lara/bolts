; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125528 () Bool)

(assert start!125528)

(declare-fun b!1467989 () Bool)

(declare-fun res!996644 () Bool)

(declare-fun e!824443 () Bool)

(assert (=> b!1467989 (=> (not res!996644) (not e!824443))))

(declare-datatypes ((array!98893 0))(
  ( (array!98894 (arr!47730 (Array (_ BitVec 32) (_ BitVec 64))) (size!48281 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98893)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98893 (_ BitVec 32)) Bool)

(assert (=> b!1467989 (= res!996644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!996645 () Bool)

(assert (=> start!125528 (=> (not res!996645) (not e!824443))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125528 (= res!996645 (validMask!0 mask!2687))))

(assert (=> start!125528 e!824443))

(assert (=> start!125528 true))

(declare-fun array_inv!36675 (array!98893) Bool)

(assert (=> start!125528 (array_inv!36675 a!2862)))

(declare-fun b!1467990 () Bool)

(declare-fun e!824444 () Bool)

(assert (=> b!1467990 (= e!824443 e!824444)))

(declare-fun res!996640 () Bool)

(assert (=> b!1467990 (=> (not res!996640) (not e!824444))))

(declare-datatypes ((SeekEntryResult!11993 0))(
  ( (MissingZero!11993 (index!50363 (_ BitVec 32))) (Found!11993 (index!50364 (_ BitVec 32))) (Intermediate!11993 (undefined!12805 Bool) (index!50365 (_ BitVec 32)) (x!131957 (_ BitVec 32))) (Undefined!11993) (MissingVacant!11993 (index!50366 (_ BitVec 32))) )
))
(declare-fun lt!642148 () SeekEntryResult!11993)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98893 (_ BitVec 32)) SeekEntryResult!11993)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467990 (= res!996640 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47730 a!2862) j!93) mask!2687) (select (arr!47730 a!2862) j!93) a!2862 mask!2687) lt!642148))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467990 (= lt!642148 (Intermediate!11993 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467991 () Bool)

(declare-fun res!996643 () Bool)

(assert (=> b!1467991 (=> (not res!996643) (not e!824444))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1467991 (= res!996643 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47730 a!2862) j!93) a!2862 mask!2687) lt!642148))))

(declare-fun b!1467992 () Bool)

(assert (=> b!1467992 (= e!824444 false)))

(declare-fun lt!642147 () SeekEntryResult!11993)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467992 (= lt!642147 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47730 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47730 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98894 (store (arr!47730 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48281 a!2862)) mask!2687))))

(declare-fun b!1467993 () Bool)

(declare-fun res!996642 () Bool)

(assert (=> b!1467993 (=> (not res!996642) (not e!824443))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467993 (= res!996642 (validKeyInArray!0 (select (arr!47730 a!2862) i!1006)))))

(declare-fun b!1467994 () Bool)

(declare-fun res!996639 () Bool)

(assert (=> b!1467994 (=> (not res!996639) (not e!824443))))

(assert (=> b!1467994 (= res!996639 (and (= (size!48281 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48281 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48281 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467995 () Bool)

(declare-fun res!996638 () Bool)

(assert (=> b!1467995 (=> (not res!996638) (not e!824443))))

(declare-datatypes ((List!34411 0))(
  ( (Nil!34408) (Cons!34407 (h!35757 (_ BitVec 64)) (t!49112 List!34411)) )
))
(declare-fun arrayNoDuplicates!0 (array!98893 (_ BitVec 32) List!34411) Bool)

(assert (=> b!1467995 (= res!996638 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34408))))

(declare-fun b!1467996 () Bool)

(declare-fun res!996637 () Bool)

(assert (=> b!1467996 (=> (not res!996637) (not e!824443))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467996 (= res!996637 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48281 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48281 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48281 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47730 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467997 () Bool)

(declare-fun res!996641 () Bool)

(assert (=> b!1467997 (=> (not res!996641) (not e!824443))))

(assert (=> b!1467997 (= res!996641 (validKeyInArray!0 (select (arr!47730 a!2862) j!93)))))

(assert (= (and start!125528 res!996645) b!1467994))

(assert (= (and b!1467994 res!996639) b!1467993))

(assert (= (and b!1467993 res!996642) b!1467997))

(assert (= (and b!1467997 res!996641) b!1467989))

(assert (= (and b!1467989 res!996644) b!1467995))

(assert (= (and b!1467995 res!996638) b!1467996))

(assert (= (and b!1467996 res!996637) b!1467990))

(assert (= (and b!1467990 res!996640) b!1467991))

(assert (= (and b!1467991 res!996643) b!1467992))

(declare-fun m!1355041 () Bool)

(assert (=> b!1467996 m!1355041))

(declare-fun m!1355043 () Bool)

(assert (=> b!1467996 m!1355043))

(declare-fun m!1355045 () Bool)

(assert (=> b!1467997 m!1355045))

(assert (=> b!1467997 m!1355045))

(declare-fun m!1355047 () Bool)

(assert (=> b!1467997 m!1355047))

(assert (=> b!1467990 m!1355045))

(assert (=> b!1467990 m!1355045))

(declare-fun m!1355049 () Bool)

(assert (=> b!1467990 m!1355049))

(assert (=> b!1467990 m!1355049))

(assert (=> b!1467990 m!1355045))

(declare-fun m!1355051 () Bool)

(assert (=> b!1467990 m!1355051))

(assert (=> b!1467992 m!1355041))

(declare-fun m!1355053 () Bool)

(assert (=> b!1467992 m!1355053))

(assert (=> b!1467992 m!1355053))

(declare-fun m!1355055 () Bool)

(assert (=> b!1467992 m!1355055))

(assert (=> b!1467992 m!1355055))

(assert (=> b!1467992 m!1355053))

(declare-fun m!1355057 () Bool)

(assert (=> b!1467992 m!1355057))

(declare-fun m!1355059 () Bool)

(assert (=> b!1467995 m!1355059))

(assert (=> b!1467991 m!1355045))

(assert (=> b!1467991 m!1355045))

(declare-fun m!1355061 () Bool)

(assert (=> b!1467991 m!1355061))

(declare-fun m!1355063 () Bool)

(assert (=> b!1467993 m!1355063))

(assert (=> b!1467993 m!1355063))

(declare-fun m!1355065 () Bool)

(assert (=> b!1467993 m!1355065))

(declare-fun m!1355067 () Bool)

(assert (=> start!125528 m!1355067))

(declare-fun m!1355069 () Bool)

(assert (=> start!125528 m!1355069))

(declare-fun m!1355071 () Bool)

(assert (=> b!1467989 m!1355071))

(push 1)

(assert (not b!1467992))

(assert (not b!1467997))

(assert (not b!1467993))

(assert (not b!1467989))

(assert (not start!125528))

(assert (not b!1467991))

(assert (not b!1467990))

(assert (not b!1467995))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

