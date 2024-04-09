; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124528 () Bool)

(assert start!124528)

(declare-fun b!1440324 () Bool)

(declare-fun res!972865 () Bool)

(declare-fun e!812159 () Bool)

(assert (=> b!1440324 (=> (not res!972865) (not e!812159))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97893 0))(
  ( (array!97894 (arr!47230 (Array (_ BitVec 32) (_ BitVec 64))) (size!47781 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97893)

(assert (=> b!1440324 (= res!972865 (and (= (size!47781 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47781 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47781 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440325 () Bool)

(declare-fun res!972861 () Bool)

(assert (=> b!1440325 (=> (not res!972861) (not e!812159))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440325 (= res!972861 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47781 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47781 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47781 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47230 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!972859 () Bool)

(assert (=> start!124528 (=> (not res!972859) (not e!812159))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124528 (= res!972859 (validMask!0 mask!2687))))

(assert (=> start!124528 e!812159))

(assert (=> start!124528 true))

(declare-fun array_inv!36175 (array!97893) Bool)

(assert (=> start!124528 (array_inv!36175 a!2862)))

(declare-fun b!1440323 () Bool)

(declare-fun e!812158 () Bool)

(assert (=> b!1440323 (= e!812159 e!812158)))

(declare-fun res!972860 () Bool)

(assert (=> b!1440323 (=> (not res!972860) (not e!812158))))

(declare-datatypes ((SeekEntryResult!11505 0))(
  ( (MissingZero!11505 (index!48411 (_ BitVec 32))) (Found!11505 (index!48412 (_ BitVec 32))) (Intermediate!11505 (undefined!12317 Bool) (index!48413 (_ BitVec 32)) (x!130141 (_ BitVec 32))) (Undefined!11505) (MissingVacant!11505 (index!48414 (_ BitVec 32))) )
))
(declare-fun lt!632901 () SeekEntryResult!11505)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97893 (_ BitVec 32)) SeekEntryResult!11505)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440323 (= res!972860 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47230 a!2862) j!93) mask!2687) (select (arr!47230 a!2862) j!93) a!2862 mask!2687) lt!632901))))

(assert (=> b!1440323 (= lt!632901 (Intermediate!11505 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440326 () Bool)

(declare-fun res!972864 () Bool)

(assert (=> b!1440326 (=> (not res!972864) (not e!812158))))

(assert (=> b!1440326 (= res!972864 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47230 a!2862) j!93) a!2862 mask!2687) lt!632901))))

(declare-fun b!1440327 () Bool)

(declare-fun res!972867 () Bool)

(assert (=> b!1440327 (=> (not res!972867) (not e!812159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440327 (= res!972867 (validKeyInArray!0 (select (arr!47230 a!2862) i!1006)))))

(declare-fun b!1440328 () Bool)

(declare-fun res!972863 () Bool)

(assert (=> b!1440328 (=> (not res!972863) (not e!812159))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97893 (_ BitVec 32)) Bool)

(assert (=> b!1440328 (= res!972863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440329 () Bool)

(assert (=> b!1440329 (= e!812158 false)))

(declare-fun lt!632902 () SeekEntryResult!11505)

(assert (=> b!1440329 (= lt!632902 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47230 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47230 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97894 (store (arr!47230 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47781 a!2862)) mask!2687))))

(declare-fun b!1440330 () Bool)

(declare-fun res!972862 () Bool)

(assert (=> b!1440330 (=> (not res!972862) (not e!812159))))

(assert (=> b!1440330 (= res!972862 (validKeyInArray!0 (select (arr!47230 a!2862) j!93)))))

(declare-fun b!1440331 () Bool)

(declare-fun res!972866 () Bool)

(assert (=> b!1440331 (=> (not res!972866) (not e!812159))))

(declare-datatypes ((List!33911 0))(
  ( (Nil!33908) (Cons!33907 (h!35257 (_ BitVec 64)) (t!48612 List!33911)) )
))
(declare-fun arrayNoDuplicates!0 (array!97893 (_ BitVec 32) List!33911) Bool)

(assert (=> b!1440331 (= res!972866 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33908))))

(assert (= (and start!124528 res!972859) b!1440324))

(assert (= (and b!1440324 res!972865) b!1440327))

(assert (= (and b!1440327 res!972867) b!1440330))

(assert (= (and b!1440330 res!972862) b!1440328))

(assert (= (and b!1440328 res!972863) b!1440331))

(assert (= (and b!1440331 res!972866) b!1440325))

(assert (= (and b!1440325 res!972861) b!1440323))

(assert (= (and b!1440323 res!972860) b!1440326))

(assert (= (and b!1440326 res!972864) b!1440329))

(declare-fun m!1329567 () Bool)

(assert (=> start!124528 m!1329567))

(declare-fun m!1329569 () Bool)

(assert (=> start!124528 m!1329569))

(declare-fun m!1329571 () Bool)

(assert (=> b!1440325 m!1329571))

(declare-fun m!1329573 () Bool)

(assert (=> b!1440325 m!1329573))

(declare-fun m!1329575 () Bool)

(assert (=> b!1440331 m!1329575))

(declare-fun m!1329577 () Bool)

(assert (=> b!1440326 m!1329577))

(assert (=> b!1440326 m!1329577))

(declare-fun m!1329579 () Bool)

(assert (=> b!1440326 m!1329579))

(declare-fun m!1329581 () Bool)

(assert (=> b!1440328 m!1329581))

(assert (=> b!1440323 m!1329577))

(assert (=> b!1440323 m!1329577))

(declare-fun m!1329583 () Bool)

(assert (=> b!1440323 m!1329583))

(assert (=> b!1440323 m!1329583))

(assert (=> b!1440323 m!1329577))

(declare-fun m!1329585 () Bool)

(assert (=> b!1440323 m!1329585))

(assert (=> b!1440329 m!1329571))

(declare-fun m!1329587 () Bool)

(assert (=> b!1440329 m!1329587))

(assert (=> b!1440329 m!1329587))

(declare-fun m!1329589 () Bool)

(assert (=> b!1440329 m!1329589))

(assert (=> b!1440329 m!1329589))

(assert (=> b!1440329 m!1329587))

(declare-fun m!1329591 () Bool)

(assert (=> b!1440329 m!1329591))

(assert (=> b!1440330 m!1329577))

(assert (=> b!1440330 m!1329577))

(declare-fun m!1329593 () Bool)

(assert (=> b!1440330 m!1329593))

(declare-fun m!1329595 () Bool)

(assert (=> b!1440327 m!1329595))

(assert (=> b!1440327 m!1329595))

(declare-fun m!1329597 () Bool)

(assert (=> b!1440327 m!1329597))

(push 1)

