; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124382 () Bool)

(assert start!124382)

(declare-fun b!1438604 () Bool)

(declare-fun res!971267 () Bool)

(declare-fun e!811535 () Bool)

(assert (=> b!1438604 (=> (not res!971267) (not e!811535))))

(declare-datatypes ((array!97786 0))(
  ( (array!97787 (arr!47178 (Array (_ BitVec 32) (_ BitVec 64))) (size!47729 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97786)

(declare-datatypes ((List!33859 0))(
  ( (Nil!33856) (Cons!33855 (h!35202 (_ BitVec 64)) (t!48560 List!33859)) )
))
(declare-fun arrayNoDuplicates!0 (array!97786 (_ BitVec 32) List!33859) Bool)

(assert (=> b!1438604 (= res!971267 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33856))))

(declare-fun b!1438605 () Bool)

(declare-fun res!971270 () Bool)

(assert (=> b!1438605 (=> (not res!971270) (not e!811535))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1438605 (= res!971270 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47729 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47729 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47729 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47178 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!971271 () Bool)

(assert (=> start!124382 (=> (not res!971271) (not e!811535))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124382 (= res!971271 (validMask!0 mask!2687))))

(assert (=> start!124382 e!811535))

(assert (=> start!124382 true))

(declare-fun array_inv!36123 (array!97786) Bool)

(assert (=> start!124382 (array_inv!36123 a!2862)))

(declare-fun b!1438606 () Bool)

(declare-fun e!811534 () Bool)

(assert (=> b!1438606 (= e!811534 false)))

(declare-datatypes ((SeekEntryResult!11453 0))(
  ( (MissingZero!11453 (index!48203 (_ BitVec 32))) (Found!11453 (index!48204 (_ BitVec 32))) (Intermediate!11453 (undefined!12265 Bool) (index!48205 (_ BitVec 32)) (x!129939 (_ BitVec 32))) (Undefined!11453) (MissingVacant!11453 (index!48206 (_ BitVec 32))) )
))
(declare-fun lt!632572 () SeekEntryResult!11453)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97786 (_ BitVec 32)) SeekEntryResult!11453)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1438606 (= lt!632572 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47178 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47178 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97787 (store (arr!47178 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47729 a!2862)) mask!2687))))

(declare-fun b!1438607 () Bool)

(declare-fun res!971265 () Bool)

(assert (=> b!1438607 (=> (not res!971265) (not e!811535))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97786 (_ BitVec 32)) Bool)

(assert (=> b!1438607 (= res!971265 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1438608 () Bool)

(declare-fun res!971264 () Bool)

(assert (=> b!1438608 (=> (not res!971264) (not e!811535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1438608 (= res!971264 (validKeyInArray!0 (select (arr!47178 a!2862) j!93)))))

(declare-fun b!1438609 () Bool)

(declare-fun res!971266 () Bool)

(assert (=> b!1438609 (=> (not res!971266) (not e!811535))))

(assert (=> b!1438609 (= res!971266 (validKeyInArray!0 (select (arr!47178 a!2862) i!1006)))))

(declare-fun b!1438610 () Bool)

(declare-fun res!971268 () Bool)

(assert (=> b!1438610 (=> (not res!971268) (not e!811534))))

(declare-fun lt!632571 () SeekEntryResult!11453)

(assert (=> b!1438610 (= res!971268 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47178 a!2862) j!93) a!2862 mask!2687) lt!632571))))

(declare-fun b!1438611 () Bool)

(assert (=> b!1438611 (= e!811535 e!811534)))

(declare-fun res!971269 () Bool)

(assert (=> b!1438611 (=> (not res!971269) (not e!811534))))

(assert (=> b!1438611 (= res!971269 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47178 a!2862) j!93) mask!2687) (select (arr!47178 a!2862) j!93) a!2862 mask!2687) lt!632571))))

(assert (=> b!1438611 (= lt!632571 (Intermediate!11453 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1438612 () Bool)

(declare-fun res!971263 () Bool)

(assert (=> b!1438612 (=> (not res!971263) (not e!811535))))

(assert (=> b!1438612 (= res!971263 (and (= (size!47729 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47729 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47729 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124382 res!971271) b!1438612))

(assert (= (and b!1438612 res!971263) b!1438609))

(assert (= (and b!1438609 res!971266) b!1438608))

(assert (= (and b!1438608 res!971264) b!1438607))

(assert (= (and b!1438607 res!971265) b!1438604))

(assert (= (and b!1438604 res!971267) b!1438605))

(assert (= (and b!1438605 res!971270) b!1438611))

(assert (= (and b!1438611 res!971269) b!1438610))

(assert (= (and b!1438610 res!971268) b!1438606))

(declare-fun m!1327771 () Bool)

(assert (=> b!1438610 m!1327771))

(assert (=> b!1438610 m!1327771))

(declare-fun m!1327773 () Bool)

(assert (=> b!1438610 m!1327773))

(declare-fun m!1327775 () Bool)

(assert (=> b!1438609 m!1327775))

(assert (=> b!1438609 m!1327775))

(declare-fun m!1327777 () Bool)

(assert (=> b!1438609 m!1327777))

(declare-fun m!1327779 () Bool)

(assert (=> b!1438607 m!1327779))

(declare-fun m!1327781 () Bool)

(assert (=> b!1438606 m!1327781))

(declare-fun m!1327783 () Bool)

(assert (=> b!1438606 m!1327783))

(assert (=> b!1438606 m!1327783))

(declare-fun m!1327785 () Bool)

(assert (=> b!1438606 m!1327785))

(assert (=> b!1438606 m!1327785))

(assert (=> b!1438606 m!1327783))

(declare-fun m!1327787 () Bool)

(assert (=> b!1438606 m!1327787))

(assert (=> b!1438611 m!1327771))

(assert (=> b!1438611 m!1327771))

(declare-fun m!1327789 () Bool)

(assert (=> b!1438611 m!1327789))

(assert (=> b!1438611 m!1327789))

(assert (=> b!1438611 m!1327771))

(declare-fun m!1327791 () Bool)

(assert (=> b!1438611 m!1327791))

(assert (=> b!1438605 m!1327781))

(declare-fun m!1327793 () Bool)

(assert (=> b!1438605 m!1327793))

(assert (=> b!1438608 m!1327771))

(assert (=> b!1438608 m!1327771))

(declare-fun m!1327795 () Bool)

(assert (=> b!1438608 m!1327795))

(declare-fun m!1327797 () Bool)

(assert (=> b!1438604 m!1327797))

(declare-fun m!1327799 () Bool)

(assert (=> start!124382 m!1327799))

(declare-fun m!1327801 () Bool)

(assert (=> start!124382 m!1327801))

(push 1)

(assert (not b!1438604))

(assert (not b!1438608))

(assert (not start!124382))

(assert (not b!1438607))

(assert (not b!1438611))

(assert (not b!1438606))

(assert (not b!1438609))

(assert (not b!1438610))

(check-sat)

(pop 1)

(push 1)

