; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124480 () Bool)

(assert start!124480)

(declare-fun b!1439630 () Bool)

(declare-fun res!972174 () Bool)

(declare-fun e!811942 () Bool)

(assert (=> b!1439630 (=> (not res!972174) (not e!811942))))

(declare-datatypes ((array!97845 0))(
  ( (array!97846 (arr!47206 (Array (_ BitVec 32) (_ BitVec 64))) (size!47757 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97845)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439630 (= res!972174 (validKeyInArray!0 (select (arr!47206 a!2862) j!93)))))

(declare-fun b!1439631 () Bool)

(declare-fun res!972171 () Bool)

(assert (=> b!1439631 (=> (not res!972171) (not e!811942))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439631 (= res!972171 (validKeyInArray!0 (select (arr!47206 a!2862) i!1006)))))

(declare-fun b!1439632 () Bool)

(declare-fun res!972173 () Bool)

(assert (=> b!1439632 (=> (not res!972173) (not e!811942))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97845 (_ BitVec 32)) Bool)

(assert (=> b!1439632 (= res!972173 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439633 () Bool)

(declare-fun res!972168 () Bool)

(assert (=> b!1439633 (=> (not res!972168) (not e!811942))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439633 (= res!972168 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47757 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47757 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47757 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47206 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439634 () Bool)

(declare-fun res!972170 () Bool)

(assert (=> b!1439634 (=> (not res!972170) (not e!811942))))

(declare-datatypes ((List!33887 0))(
  ( (Nil!33884) (Cons!33883 (h!35233 (_ BitVec 64)) (t!48588 List!33887)) )
))
(declare-fun arrayNoDuplicates!0 (array!97845 (_ BitVec 32) List!33887) Bool)

(assert (=> b!1439634 (= res!972170 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33884))))

(declare-fun res!972167 () Bool)

(assert (=> start!124480 (=> (not res!972167) (not e!811942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124480 (= res!972167 (validMask!0 mask!2687))))

(assert (=> start!124480 e!811942))

(assert (=> start!124480 true))

(declare-fun array_inv!36151 (array!97845) Bool)

(assert (=> start!124480 (array_inv!36151 a!2862)))

(declare-fun b!1439635 () Bool)

(declare-fun res!972169 () Bool)

(assert (=> b!1439635 (=> (not res!972169) (not e!811942))))

(assert (=> b!1439635 (= res!972169 (and (= (size!47757 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47757 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47757 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439636 () Bool)

(declare-fun res!972172 () Bool)

(declare-fun e!811941 () Bool)

(assert (=> b!1439636 (=> (not res!972172) (not e!811941))))

(declare-datatypes ((SeekEntryResult!11481 0))(
  ( (MissingZero!11481 (index!48315 (_ BitVec 32))) (Found!11481 (index!48316 (_ BitVec 32))) (Intermediate!11481 (undefined!12293 Bool) (index!48317 (_ BitVec 32)) (x!130053 (_ BitVec 32))) (Undefined!11481) (MissingVacant!11481 (index!48318 (_ BitVec 32))) )
))
(declare-fun lt!632793 () SeekEntryResult!11481)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97845 (_ BitVec 32)) SeekEntryResult!11481)

(assert (=> b!1439636 (= res!972172 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47206 a!2862) j!93) a!2862 mask!2687) lt!632793))))

(declare-fun b!1439637 () Bool)

(assert (=> b!1439637 (= e!811942 e!811941)))

(declare-fun res!972166 () Bool)

(assert (=> b!1439637 (=> (not res!972166) (not e!811941))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439637 (= res!972166 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47206 a!2862) j!93) mask!2687) (select (arr!47206 a!2862) j!93) a!2862 mask!2687) lt!632793))))

(assert (=> b!1439637 (= lt!632793 (Intermediate!11481 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439638 () Bool)

(assert (=> b!1439638 (= e!811941 false)))

(declare-fun lt!632794 () SeekEntryResult!11481)

(assert (=> b!1439638 (= lt!632794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47206 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47206 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97846 (store (arr!47206 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47757 a!2862)) mask!2687))))

(assert (= (and start!124480 res!972167) b!1439635))

(assert (= (and b!1439635 res!972169) b!1439631))

(assert (= (and b!1439631 res!972171) b!1439630))

(assert (= (and b!1439630 res!972174) b!1439632))

(assert (= (and b!1439632 res!972173) b!1439634))

(assert (= (and b!1439634 res!972170) b!1439633))

(assert (= (and b!1439633 res!972168) b!1439637))

(assert (= (and b!1439637 res!972166) b!1439636))

(assert (= (and b!1439636 res!972172) b!1439638))

(declare-fun m!1328793 () Bool)

(assert (=> b!1439634 m!1328793))

(declare-fun m!1328795 () Bool)

(assert (=> start!124480 m!1328795))

(declare-fun m!1328797 () Bool)

(assert (=> start!124480 m!1328797))

(declare-fun m!1328799 () Bool)

(assert (=> b!1439636 m!1328799))

(assert (=> b!1439636 m!1328799))

(declare-fun m!1328801 () Bool)

(assert (=> b!1439636 m!1328801))

(declare-fun m!1328803 () Bool)

(assert (=> b!1439632 m!1328803))

(assert (=> b!1439630 m!1328799))

(assert (=> b!1439630 m!1328799))

(declare-fun m!1328805 () Bool)

(assert (=> b!1439630 m!1328805))

(declare-fun m!1328807 () Bool)

(assert (=> b!1439638 m!1328807))

(declare-fun m!1328809 () Bool)

(assert (=> b!1439638 m!1328809))

(assert (=> b!1439638 m!1328809))

(declare-fun m!1328811 () Bool)

(assert (=> b!1439638 m!1328811))

(assert (=> b!1439638 m!1328811))

(assert (=> b!1439638 m!1328809))

(declare-fun m!1328813 () Bool)

(assert (=> b!1439638 m!1328813))

(declare-fun m!1328815 () Bool)

(assert (=> b!1439631 m!1328815))

(assert (=> b!1439631 m!1328815))

(declare-fun m!1328817 () Bool)

(assert (=> b!1439631 m!1328817))

(assert (=> b!1439633 m!1328807))

(declare-fun m!1328819 () Bool)

(assert (=> b!1439633 m!1328819))

(assert (=> b!1439637 m!1328799))

(assert (=> b!1439637 m!1328799))

(declare-fun m!1328821 () Bool)

(assert (=> b!1439637 m!1328821))

(assert (=> b!1439637 m!1328821))

(assert (=> b!1439637 m!1328799))

(declare-fun m!1328823 () Bool)

(assert (=> b!1439637 m!1328823))

(push 1)

