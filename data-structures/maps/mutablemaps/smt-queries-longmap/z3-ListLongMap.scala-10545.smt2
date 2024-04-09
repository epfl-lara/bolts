; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124452 () Bool)

(assert start!124452)

(declare-fun b!1439226 () Bool)

(declare-fun res!971765 () Bool)

(declare-fun e!811811 () Bool)

(assert (=> b!1439226 (=> (not res!971765) (not e!811811))))

(declare-datatypes ((array!97817 0))(
  ( (array!97818 (arr!47192 (Array (_ BitVec 32) (_ BitVec 64))) (size!47743 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97817)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439226 (= res!971765 (validKeyInArray!0 (select (arr!47192 a!2862) i!1006)))))

(declare-fun b!1439227 () Bool)

(declare-fun res!971766 () Bool)

(assert (=> b!1439227 (=> (not res!971766) (not e!811811))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97817 (_ BitVec 32)) Bool)

(assert (=> b!1439227 (= res!971766 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439228 () Bool)

(declare-fun e!811812 () Bool)

(assert (=> b!1439228 (= e!811811 e!811812)))

(declare-fun res!971771 () Bool)

(assert (=> b!1439228 (=> (not res!971771) (not e!811812))))

(declare-datatypes ((SeekEntryResult!11467 0))(
  ( (MissingZero!11467 (index!48259 (_ BitVec 32))) (Found!11467 (index!48260 (_ BitVec 32))) (Intermediate!11467 (undefined!12279 Bool) (index!48261 (_ BitVec 32)) (x!129999 (_ BitVec 32))) (Undefined!11467) (MissingVacant!11467 (index!48262 (_ BitVec 32))) )
))
(declare-fun lt!632728 () SeekEntryResult!11467)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97817 (_ BitVec 32)) SeekEntryResult!11467)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439228 (= res!971771 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47192 a!2862) j!93) mask!2687) (select (arr!47192 a!2862) j!93) a!2862 mask!2687) lt!632728))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1439228 (= lt!632728 (Intermediate!11467 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439229 () Bool)

(declare-fun res!971772 () Bool)

(assert (=> b!1439229 (=> (not res!971772) (not e!811811))))

(assert (=> b!1439229 (= res!971772 (validKeyInArray!0 (select (arr!47192 a!2862) j!93)))))

(declare-fun b!1439230 () Bool)

(declare-fun res!971763 () Bool)

(assert (=> b!1439230 (=> (not res!971763) (not e!811812))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1439230 (= res!971763 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47192 a!2862) j!93) a!2862 mask!2687) lt!632728))))

(declare-fun b!1439231 () Bool)

(declare-fun e!811814 () Bool)

(assert (=> b!1439231 (= e!811814 (not (validKeyInArray!0 (select (store (arr!47192 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1439233 () Bool)

(declare-fun res!971762 () Bool)

(assert (=> b!1439233 (=> (not res!971762) (not e!811811))))

(declare-datatypes ((List!33873 0))(
  ( (Nil!33870) (Cons!33869 (h!35219 (_ BitVec 64)) (t!48574 List!33873)) )
))
(declare-fun arrayNoDuplicates!0 (array!97817 (_ BitVec 32) List!33873) Bool)

(assert (=> b!1439233 (= res!971762 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33870))))

(declare-fun b!1439234 () Bool)

(declare-fun res!971767 () Bool)

(assert (=> b!1439234 (=> (not res!971767) (not e!811811))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1439234 (= res!971767 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47743 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47743 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47743 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47192 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439235 () Bool)

(declare-fun res!971764 () Bool)

(assert (=> b!1439235 (=> (not res!971764) (not e!811811))))

(assert (=> b!1439235 (= res!971764 (and (= (size!47743 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47743 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47743 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439236 () Bool)

(assert (=> b!1439236 (= e!811812 e!811814)))

(declare-fun res!971770 () Bool)

(assert (=> b!1439236 (=> (not res!971770) (not e!811814))))

(declare-fun lt!632727 () (_ BitVec 32))

(assert (=> b!1439236 (= res!971770 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!632727 (select (store (arr!47192 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97818 (store (arr!47192 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47743 a!2862)) mask!2687) (Intermediate!11467 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1439236 (= lt!632727 (toIndex!0 (select (store (arr!47192 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1439232 () Bool)

(declare-fun res!971769 () Bool)

(assert (=> b!1439232 (=> (not res!971769) (not e!811814))))

(assert (=> b!1439232 (= res!971769 (and (bvsle x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge lt!632727 #b00000000000000000000000000000000) (bvslt lt!632727 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun res!971768 () Bool)

(assert (=> start!124452 (=> (not res!971768) (not e!811811))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124452 (= res!971768 (validMask!0 mask!2687))))

(assert (=> start!124452 e!811811))

(assert (=> start!124452 true))

(declare-fun array_inv!36137 (array!97817) Bool)

(assert (=> start!124452 (array_inv!36137 a!2862)))

(assert (= (and start!124452 res!971768) b!1439235))

(assert (= (and b!1439235 res!971764) b!1439226))

(assert (= (and b!1439226 res!971765) b!1439229))

(assert (= (and b!1439229 res!971772) b!1439227))

(assert (= (and b!1439227 res!971766) b!1439233))

(assert (= (and b!1439233 res!971762) b!1439234))

(assert (= (and b!1439234 res!971767) b!1439228))

(assert (= (and b!1439228 res!971771) b!1439230))

(assert (= (and b!1439230 res!971763) b!1439236))

(assert (= (and b!1439236 res!971770) b!1439232))

(assert (= (and b!1439232 res!971769) b!1439231))

(declare-fun m!1328341 () Bool)

(assert (=> b!1439230 m!1328341))

(assert (=> b!1439230 m!1328341))

(declare-fun m!1328343 () Bool)

(assert (=> b!1439230 m!1328343))

(assert (=> b!1439228 m!1328341))

(assert (=> b!1439228 m!1328341))

(declare-fun m!1328345 () Bool)

(assert (=> b!1439228 m!1328345))

(assert (=> b!1439228 m!1328345))

(assert (=> b!1439228 m!1328341))

(declare-fun m!1328347 () Bool)

(assert (=> b!1439228 m!1328347))

(declare-fun m!1328349 () Bool)

(assert (=> start!124452 m!1328349))

(declare-fun m!1328351 () Bool)

(assert (=> start!124452 m!1328351))

(assert (=> b!1439229 m!1328341))

(assert (=> b!1439229 m!1328341))

(declare-fun m!1328353 () Bool)

(assert (=> b!1439229 m!1328353))

(declare-fun m!1328355 () Bool)

(assert (=> b!1439231 m!1328355))

(declare-fun m!1328357 () Bool)

(assert (=> b!1439231 m!1328357))

(assert (=> b!1439231 m!1328357))

(declare-fun m!1328359 () Bool)

(assert (=> b!1439231 m!1328359))

(assert (=> b!1439234 m!1328355))

(declare-fun m!1328361 () Bool)

(assert (=> b!1439234 m!1328361))

(declare-fun m!1328363 () Bool)

(assert (=> b!1439227 m!1328363))

(declare-fun m!1328365 () Bool)

(assert (=> b!1439233 m!1328365))

(assert (=> b!1439236 m!1328355))

(assert (=> b!1439236 m!1328357))

(assert (=> b!1439236 m!1328357))

(declare-fun m!1328367 () Bool)

(assert (=> b!1439236 m!1328367))

(assert (=> b!1439236 m!1328357))

(declare-fun m!1328369 () Bool)

(assert (=> b!1439236 m!1328369))

(declare-fun m!1328371 () Bool)

(assert (=> b!1439226 m!1328371))

(assert (=> b!1439226 m!1328371))

(declare-fun m!1328373 () Bool)

(assert (=> b!1439226 m!1328373))

(check-sat (not b!1439228) (not b!1439231) (not b!1439226) (not b!1439230) (not b!1439229) (not b!1439227) (not start!124452) (not b!1439233) (not b!1439236))
(check-sat)
