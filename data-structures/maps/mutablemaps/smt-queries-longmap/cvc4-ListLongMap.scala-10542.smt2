; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124394 () Bool)

(assert start!124394)

(declare-fun b!1438775 () Bool)

(declare-fun res!971435 () Bool)

(declare-fun e!811588 () Bool)

(assert (=> b!1438775 (=> (not res!971435) (not e!811588))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97798 0))(
  ( (array!97799 (arr!47184 (Array (_ BitVec 32) (_ BitVec 64))) (size!47735 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97798)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1438775 (= res!971435 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47735 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47735 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47735 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47184 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!971441 () Bool)

(assert (=> start!124394 (=> (not res!971441) (not e!811588))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124394 (= res!971441 (validMask!0 mask!2687))))

(assert (=> start!124394 e!811588))

(assert (=> start!124394 true))

(declare-fun array_inv!36129 (array!97798) Bool)

(assert (=> start!124394 (array_inv!36129 a!2862)))

(declare-fun b!1438776 () Bool)

(declare-fun res!971442 () Bool)

(assert (=> b!1438776 (=> (not res!971442) (not e!811588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97798 (_ BitVec 32)) Bool)

(assert (=> b!1438776 (= res!971442 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438777 () Bool)

(declare-fun res!971440 () Bool)

(assert (=> b!1438777 (=> (not res!971440) (not e!811588))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438777 (= res!971440 (validKeyInArray!0 (select (arr!47184 a!2862) j!93)))))

(declare-fun b!1438778 () Bool)

(declare-fun res!971438 () Bool)

(assert (=> b!1438778 (=> (not res!971438) (not e!811588))))

(assert (=> b!1438778 (= res!971438 (validKeyInArray!0 (select (arr!47184 a!2862) i!1006)))))

(declare-fun b!1438779 () Bool)

(declare-fun res!971434 () Bool)

(assert (=> b!1438779 (=> (not res!971434) (not e!811588))))

(declare-datatypes ((List!33865 0))(
  ( (Nil!33862) (Cons!33861 (h!35208 (_ BitVec 64)) (t!48566 List!33865)) )
))
(declare-fun arrayNoDuplicates!0 (array!97798 (_ BitVec 32) List!33865) Bool)

(assert (=> b!1438779 (= res!971434 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33862))))

(declare-fun b!1438780 () Bool)

(declare-fun res!971436 () Bool)

(assert (=> b!1438780 (=> (not res!971436) (not e!811588))))

(assert (=> b!1438780 (= res!971436 (and (= (size!47735 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47735 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47735 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1438781 () Bool)

(declare-fun e!811587 () Bool)

(assert (=> b!1438781 (= e!811587 false)))

(declare-datatypes ((SeekEntryResult!11459 0))(
  ( (MissingZero!11459 (index!48227 (_ BitVec 32))) (Found!11459 (index!48228 (_ BitVec 32))) (Intermediate!11459 (undefined!12271 Bool) (index!48229 (_ BitVec 32)) (x!129961 (_ BitVec 32))) (Undefined!11459) (MissingVacant!11459 (index!48230 (_ BitVec 32))) )
))
(declare-fun lt!632598 () SeekEntryResult!11459)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97798 (_ BitVec 32)) SeekEntryResult!11459)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438781 (= lt!632598 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47184 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47184 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97799 (store (arr!47184 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47735 a!2862)) mask!2687))))

(declare-fun b!1438782 () Bool)

(declare-fun res!971439 () Bool)

(assert (=> b!1438782 (=> (not res!971439) (not e!811587))))

(declare-fun lt!632599 () SeekEntryResult!11459)

(assert (=> b!1438782 (= res!971439 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47184 a!2862) j!93) a!2862 mask!2687) lt!632599))))

(declare-fun b!1438783 () Bool)

(assert (=> b!1438783 (= e!811588 e!811587)))

(declare-fun res!971437 () Bool)

(assert (=> b!1438783 (=> (not res!971437) (not e!811587))))

(assert (=> b!1438783 (= res!971437 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47184 a!2862) j!93) mask!2687) (select (arr!47184 a!2862) j!93) a!2862 mask!2687) lt!632599))))

(assert (=> b!1438783 (= lt!632599 (Intermediate!11459 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124394 res!971441) b!1438780))

(assert (= (and b!1438780 res!971436) b!1438778))

(assert (= (and b!1438778 res!971438) b!1438777))

(assert (= (and b!1438777 res!971440) b!1438776))

(assert (= (and b!1438776 res!971442) b!1438779))

(assert (= (and b!1438779 res!971434) b!1438775))

(assert (= (and b!1438775 res!971435) b!1438783))

(assert (= (and b!1438783 res!971437) b!1438782))

(assert (= (and b!1438782 res!971439) b!1438781))

(declare-fun m!1327963 () Bool)

(assert (=> b!1438777 m!1327963))

(assert (=> b!1438777 m!1327963))

(declare-fun m!1327965 () Bool)

(assert (=> b!1438777 m!1327965))

(assert (=> b!1438782 m!1327963))

(assert (=> b!1438782 m!1327963))

(declare-fun m!1327967 () Bool)

(assert (=> b!1438782 m!1327967))

(declare-fun m!1327969 () Bool)

(assert (=> b!1438775 m!1327969))

(declare-fun m!1327971 () Bool)

(assert (=> b!1438775 m!1327971))

(assert (=> b!1438781 m!1327969))

(declare-fun m!1327973 () Bool)

(assert (=> b!1438781 m!1327973))

(assert (=> b!1438781 m!1327973))

(declare-fun m!1327975 () Bool)

(assert (=> b!1438781 m!1327975))

(assert (=> b!1438781 m!1327975))

(assert (=> b!1438781 m!1327973))

(declare-fun m!1327977 () Bool)

(assert (=> b!1438781 m!1327977))

(declare-fun m!1327979 () Bool)

(assert (=> b!1438778 m!1327979))

(assert (=> b!1438778 m!1327979))

(declare-fun m!1327981 () Bool)

(assert (=> b!1438778 m!1327981))

(declare-fun m!1327983 () Bool)

(assert (=> b!1438779 m!1327983))

(declare-fun m!1327985 () Bool)

(assert (=> start!124394 m!1327985))

(declare-fun m!1327987 () Bool)

(assert (=> start!124394 m!1327987))

(declare-fun m!1327989 () Bool)

(assert (=> b!1438776 m!1327989))

(assert (=> b!1438783 m!1327963))

(assert (=> b!1438783 m!1327963))

(declare-fun m!1327991 () Bool)

(assert (=> b!1438783 m!1327991))

(assert (=> b!1438783 m!1327991))

(assert (=> b!1438783 m!1327963))

(declare-fun m!1327993 () Bool)

(assert (=> b!1438783 m!1327993))

(push 1)

