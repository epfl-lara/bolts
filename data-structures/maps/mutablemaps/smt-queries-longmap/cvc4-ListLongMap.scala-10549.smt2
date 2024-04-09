; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124478 () Bool)

(assert start!124478)

(declare-fun b!1439602 () Bool)

(declare-fun res!972147 () Bool)

(declare-fun e!811932 () Bool)

(assert (=> b!1439602 (=> (not res!972147) (not e!811932))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97843 0))(
  ( (array!97844 (arr!47205 (Array (_ BitVec 32) (_ BitVec 64))) (size!47756 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97843)

(declare-datatypes ((SeekEntryResult!11480 0))(
  ( (MissingZero!11480 (index!48311 (_ BitVec 32))) (Found!11480 (index!48312 (_ BitVec 32))) (Intermediate!11480 (undefined!12292 Bool) (index!48313 (_ BitVec 32)) (x!130044 (_ BitVec 32))) (Undefined!11480) (MissingVacant!11480 (index!48314 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97843 (_ BitVec 32)) SeekEntryResult!11480)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439602 (= res!972147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47205 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47205 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97844 (store (arr!47205 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47756 a!2862)) mask!2687) (Intermediate!11480 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1439603 () Bool)

(declare-fun e!811934 () Bool)

(assert (=> b!1439603 (= e!811934 e!811932)))

(declare-fun res!972138 () Bool)

(assert (=> b!1439603 (=> (not res!972138) (not e!811932))))

(declare-fun lt!632788 () SeekEntryResult!11480)

(assert (=> b!1439603 (= res!972138 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47205 a!2862) j!93) mask!2687) (select (arr!47205 a!2862) j!93) a!2862 mask!2687) lt!632788))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439603 (= lt!632788 (Intermediate!11480 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!972141 () Bool)

(assert (=> start!124478 (=> (not res!972141) (not e!811934))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124478 (= res!972141 (validMask!0 mask!2687))))

(assert (=> start!124478 e!811934))

(assert (=> start!124478 true))

(declare-fun array_inv!36150 (array!97843) Bool)

(assert (=> start!124478 (array_inv!36150 a!2862)))

(declare-fun b!1439604 () Bool)

(declare-fun res!972145 () Bool)

(assert (=> b!1439604 (=> (not res!972145) (not e!811934))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1439604 (= res!972145 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47756 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47756 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47756 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47205 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439605 () Bool)

(declare-fun res!972143 () Bool)

(assert (=> b!1439605 (=> (not res!972143) (not e!811934))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97843 (_ BitVec 32)) Bool)

(assert (=> b!1439605 (= res!972143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439606 () Bool)

(assert (=> b!1439606 (= e!811932 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1439607 () Bool)

(declare-fun res!972144 () Bool)

(assert (=> b!1439607 (=> (not res!972144) (not e!811934))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439607 (= res!972144 (validKeyInArray!0 (select (arr!47205 a!2862) j!93)))))

(declare-fun b!1439608 () Bool)

(declare-fun res!972146 () Bool)

(assert (=> b!1439608 (=> (not res!972146) (not e!811934))))

(assert (=> b!1439608 (= res!972146 (and (= (size!47756 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47756 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47756 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439609 () Bool)

(declare-fun res!972142 () Bool)

(assert (=> b!1439609 (=> (not res!972142) (not e!811932))))

(assert (=> b!1439609 (= res!972142 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47205 a!2862) j!93) a!2862 mask!2687) lt!632788))))

(declare-fun b!1439610 () Bool)

(declare-fun res!972140 () Bool)

(assert (=> b!1439610 (=> (not res!972140) (not e!811934))))

(declare-datatypes ((List!33886 0))(
  ( (Nil!33883) (Cons!33882 (h!35232 (_ BitVec 64)) (t!48587 List!33886)) )
))
(declare-fun arrayNoDuplicates!0 (array!97843 (_ BitVec 32) List!33886) Bool)

(assert (=> b!1439610 (= res!972140 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33883))))

(declare-fun b!1439611 () Bool)

(declare-fun res!972139 () Bool)

(assert (=> b!1439611 (=> (not res!972139) (not e!811934))))

(assert (=> b!1439611 (= res!972139 (validKeyInArray!0 (select (arr!47205 a!2862) i!1006)))))

(assert (= (and start!124478 res!972141) b!1439608))

(assert (= (and b!1439608 res!972146) b!1439611))

(assert (= (and b!1439611 res!972139) b!1439607))

(assert (= (and b!1439607 res!972144) b!1439605))

(assert (= (and b!1439605 res!972143) b!1439610))

(assert (= (and b!1439610 res!972140) b!1439604))

(assert (= (and b!1439604 res!972145) b!1439603))

(assert (= (and b!1439603 res!972138) b!1439609))

(assert (= (and b!1439609 res!972142) b!1439602))

(assert (= (and b!1439602 res!972147) b!1439606))

(declare-fun m!1328761 () Bool)

(assert (=> start!124478 m!1328761))

(declare-fun m!1328763 () Bool)

(assert (=> start!124478 m!1328763))

(declare-fun m!1328765 () Bool)

(assert (=> b!1439607 m!1328765))

(assert (=> b!1439607 m!1328765))

(declare-fun m!1328767 () Bool)

(assert (=> b!1439607 m!1328767))

(assert (=> b!1439609 m!1328765))

(assert (=> b!1439609 m!1328765))

(declare-fun m!1328769 () Bool)

(assert (=> b!1439609 m!1328769))

(declare-fun m!1328771 () Bool)

(assert (=> b!1439605 m!1328771))

(declare-fun m!1328773 () Bool)

(assert (=> b!1439610 m!1328773))

(declare-fun m!1328775 () Bool)

(assert (=> b!1439604 m!1328775))

(declare-fun m!1328777 () Bool)

(assert (=> b!1439604 m!1328777))

(assert (=> b!1439602 m!1328775))

(declare-fun m!1328779 () Bool)

(assert (=> b!1439602 m!1328779))

(assert (=> b!1439602 m!1328779))

(declare-fun m!1328781 () Bool)

(assert (=> b!1439602 m!1328781))

(assert (=> b!1439602 m!1328781))

(assert (=> b!1439602 m!1328779))

(declare-fun m!1328783 () Bool)

(assert (=> b!1439602 m!1328783))

(assert (=> b!1439603 m!1328765))

(assert (=> b!1439603 m!1328765))

(declare-fun m!1328785 () Bool)

(assert (=> b!1439603 m!1328785))

(assert (=> b!1439603 m!1328785))

(assert (=> b!1439603 m!1328765))

(declare-fun m!1328787 () Bool)

(assert (=> b!1439603 m!1328787))

(declare-fun m!1328789 () Bool)

(assert (=> b!1439611 m!1328789))

(assert (=> b!1439611 m!1328789))

(declare-fun m!1328791 () Bool)

(assert (=> b!1439611 m!1328791))

(push 1)

(assert (not b!1439611))

(assert (not b!1439607))

(assert (not b!1439602))

(assert (not start!124478))

(assert (not b!1439603))

(assert (not b!1439610))

(assert (not b!1439609))

(assert (not b!1439605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

