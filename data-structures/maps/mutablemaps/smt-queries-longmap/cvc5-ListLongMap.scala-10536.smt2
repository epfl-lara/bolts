; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124312 () Bool)

(assert start!124312)

(declare-fun b!1437983 () Bool)

(declare-fun e!811260 () Bool)

(declare-fun e!811261 () Bool)

(assert (=> b!1437983 (= e!811260 e!811261)))

(declare-fun res!970768 () Bool)

(assert (=> b!1437983 (=> (not res!970768) (not e!811261))))

(declare-datatypes ((SeekEntryResult!11439 0))(
  ( (MissingZero!11439 (index!48147 (_ BitVec 32))) (Found!11439 (index!48148 (_ BitVec 32))) (Intermediate!11439 (undefined!12251 Bool) (index!48149 (_ BitVec 32)) (x!129887 (_ BitVec 32))) (Undefined!11439) (MissingVacant!11439 (index!48150 (_ BitVec 32))) )
))
(declare-fun lt!632424 () SeekEntryResult!11439)

(declare-datatypes ((array!97755 0))(
  ( (array!97756 (arr!47164 (Array (_ BitVec 32) (_ BitVec 64))) (size!47715 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97755)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97755 (_ BitVec 32)) SeekEntryResult!11439)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437983 (= res!970768 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47164 a!2862) j!93) mask!2687) (select (arr!47164 a!2862) j!93) a!2862 mask!2687) lt!632424))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437983 (= lt!632424 (Intermediate!11439 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!970766 () Bool)

(assert (=> start!124312 (=> (not res!970766) (not e!811260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124312 (= res!970766 (validMask!0 mask!2687))))

(assert (=> start!124312 e!811260))

(assert (=> start!124312 true))

(declare-fun array_inv!36109 (array!97755) Bool)

(assert (=> start!124312 (array_inv!36109 a!2862)))

(declare-fun b!1437984 () Bool)

(declare-fun res!970772 () Bool)

(assert (=> b!1437984 (=> (not res!970772) (not e!811260))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437984 (= res!970772 (validKeyInArray!0 (select (arr!47164 a!2862) j!93)))))

(declare-fun b!1437985 () Bool)

(declare-fun res!970765 () Bool)

(assert (=> b!1437985 (=> (not res!970765) (not e!811260))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1437985 (= res!970765 (and (= (size!47715 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47715 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47715 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437986 () Bool)

(declare-fun res!970769 () Bool)

(assert (=> b!1437986 (=> (not res!970769) (not e!811260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97755 (_ BitVec 32)) Bool)

(assert (=> b!1437986 (= res!970769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437987 () Bool)

(declare-fun res!970770 () Bool)

(assert (=> b!1437987 (=> (not res!970770) (not e!811261))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1437987 (= res!970770 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47164 a!2862) j!93) a!2862 mask!2687) lt!632424))))

(declare-fun b!1437988 () Bool)

(declare-fun res!970773 () Bool)

(assert (=> b!1437988 (=> (not res!970773) (not e!811260))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1437988 (= res!970773 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47715 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47715 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47715 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47164 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437989 () Bool)

(declare-fun res!970767 () Bool)

(assert (=> b!1437989 (=> (not res!970767) (not e!811260))))

(declare-datatypes ((List!33845 0))(
  ( (Nil!33842) (Cons!33841 (h!35185 (_ BitVec 64)) (t!48546 List!33845)) )
))
(declare-fun arrayNoDuplicates!0 (array!97755 (_ BitVec 32) List!33845) Bool)

(assert (=> b!1437989 (= res!970767 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33842))))

(declare-fun b!1437990 () Bool)

(declare-fun res!970771 () Bool)

(assert (=> b!1437990 (=> (not res!970771) (not e!811260))))

(assert (=> b!1437990 (= res!970771 (validKeyInArray!0 (select (arr!47164 a!2862) i!1006)))))

(declare-fun b!1437991 () Bool)

(assert (=> b!1437991 (= e!811261 false)))

(declare-fun lt!632425 () (_ BitVec 32))

(assert (=> b!1437991 (= lt!632425 (toIndex!0 (select (store (arr!47164 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(assert (= (and start!124312 res!970766) b!1437985))

(assert (= (and b!1437985 res!970765) b!1437990))

(assert (= (and b!1437990 res!970771) b!1437984))

(assert (= (and b!1437984 res!970772) b!1437986))

(assert (= (and b!1437986 res!970769) b!1437989))

(assert (= (and b!1437989 res!970767) b!1437988))

(assert (= (and b!1437988 res!970773) b!1437983))

(assert (= (and b!1437983 res!970768) b!1437987))

(assert (= (and b!1437987 res!970770) b!1437991))

(declare-fun m!1327209 () Bool)

(assert (=> b!1437990 m!1327209))

(assert (=> b!1437990 m!1327209))

(declare-fun m!1327211 () Bool)

(assert (=> b!1437990 m!1327211))

(declare-fun m!1327213 () Bool)

(assert (=> b!1437991 m!1327213))

(declare-fun m!1327215 () Bool)

(assert (=> b!1437991 m!1327215))

(assert (=> b!1437991 m!1327215))

(declare-fun m!1327217 () Bool)

(assert (=> b!1437991 m!1327217))

(declare-fun m!1327219 () Bool)

(assert (=> b!1437984 m!1327219))

(assert (=> b!1437984 m!1327219))

(declare-fun m!1327221 () Bool)

(assert (=> b!1437984 m!1327221))

(declare-fun m!1327223 () Bool)

(assert (=> b!1437989 m!1327223))

(assert (=> b!1437987 m!1327219))

(assert (=> b!1437987 m!1327219))

(declare-fun m!1327225 () Bool)

(assert (=> b!1437987 m!1327225))

(assert (=> b!1437983 m!1327219))

(assert (=> b!1437983 m!1327219))

(declare-fun m!1327227 () Bool)

(assert (=> b!1437983 m!1327227))

(assert (=> b!1437983 m!1327227))

(assert (=> b!1437983 m!1327219))

(declare-fun m!1327229 () Bool)

(assert (=> b!1437983 m!1327229))

(assert (=> b!1437988 m!1327213))

(declare-fun m!1327231 () Bool)

(assert (=> b!1437988 m!1327231))

(declare-fun m!1327233 () Bool)

(assert (=> b!1437986 m!1327233))

(declare-fun m!1327235 () Bool)

(assert (=> start!124312 m!1327235))

(declare-fun m!1327237 () Bool)

(assert (=> start!124312 m!1327237))

(push 1)

