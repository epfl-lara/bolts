; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124458 () Bool)

(assert start!124458)

(declare-fun res!971858 () Bool)

(declare-fun e!811843 () Bool)

(assert (=> start!124458 (=> (not res!971858) (not e!811843))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124458 (= res!971858 (validMask!0 mask!2687))))

(assert (=> start!124458 e!811843))

(assert (=> start!124458 true))

(declare-datatypes ((array!97823 0))(
  ( (array!97824 (arr!47195 (Array (_ BitVec 32) (_ BitVec 64))) (size!47746 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97823)

(declare-fun array_inv!36140 (array!97823) Bool)

(assert (=> start!124458 (array_inv!36140 a!2862)))

(declare-fun b!1439315 () Bool)

(declare-fun res!971855 () Bool)

(assert (=> b!1439315 (=> (not res!971855) (not e!811843))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1439315 (= res!971855 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47746 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47746 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47746 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47195 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1439316 () Bool)

(declare-fun res!971854 () Bool)

(declare-fun e!811842 () Bool)

(assert (=> b!1439316 (=> (not res!971854) (not e!811842))))

(declare-datatypes ((SeekEntryResult!11470 0))(
  ( (MissingZero!11470 (index!48271 (_ BitVec 32))) (Found!11470 (index!48272 (_ BitVec 32))) (Intermediate!11470 (undefined!12282 Bool) (index!48273 (_ BitVec 32)) (x!130010 (_ BitVec 32))) (Undefined!11470) (MissingVacant!11470 (index!48274 (_ BitVec 32))) )
))
(declare-fun lt!632745 () SeekEntryResult!11470)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97823 (_ BitVec 32)) SeekEntryResult!11470)

(assert (=> b!1439316 (= res!971854 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47195 a!2862) j!93) a!2862 mask!2687) lt!632745))))

(declare-fun b!1439317 () Bool)

(declare-fun res!971853 () Bool)

(assert (=> b!1439317 (=> (not res!971853) (not e!811843))))

(declare-datatypes ((List!33876 0))(
  ( (Nil!33873) (Cons!33872 (h!35222 (_ BitVec 64)) (t!48577 List!33876)) )
))
(declare-fun arrayNoDuplicates!0 (array!97823 (_ BitVec 32) List!33876) Bool)

(assert (=> b!1439317 (= res!971853 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33873))))

(declare-fun b!1439318 () Bool)

(assert (=> b!1439318 (= e!811843 e!811842)))

(declare-fun res!971857 () Bool)

(assert (=> b!1439318 (=> (not res!971857) (not e!811842))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1439318 (= res!971857 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47195 a!2862) j!93) mask!2687) (select (arr!47195 a!2862) j!93) a!2862 mask!2687) lt!632745))))

(assert (=> b!1439318 (= lt!632745 (Intermediate!11470 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1439319 () Bool)

(declare-fun res!971851 () Bool)

(assert (=> b!1439319 (=> (not res!971851) (not e!811843))))

(assert (=> b!1439319 (= res!971851 (and (= (size!47746 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47746 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47746 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1439320 () Bool)

(declare-fun res!971856 () Bool)

(assert (=> b!1439320 (=> (not res!971856) (not e!811843))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97823 (_ BitVec 32)) Bool)

(assert (=> b!1439320 (= res!971856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1439321 () Bool)

(declare-fun res!971859 () Bool)

(assert (=> b!1439321 (=> (not res!971859) (not e!811843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1439321 (= res!971859 (validKeyInArray!0 (select (arr!47195 a!2862) j!93)))))

(declare-fun b!1439322 () Bool)

(declare-fun res!971852 () Bool)

(assert (=> b!1439322 (=> (not res!971852) (not e!811843))))

(assert (=> b!1439322 (= res!971852 (validKeyInArray!0 (select (arr!47195 a!2862) i!1006)))))

(declare-fun b!1439323 () Bool)

(assert (=> b!1439323 (= e!811842 false)))

(declare-fun lt!632746 () SeekEntryResult!11470)

(assert (=> b!1439323 (= lt!632746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47195 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47195 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97824 (store (arr!47195 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47746 a!2862)) mask!2687))))

(assert (= (and start!124458 res!971858) b!1439319))

(assert (= (and b!1439319 res!971851) b!1439322))

(assert (= (and b!1439322 res!971852) b!1439321))

(assert (= (and b!1439321 res!971859) b!1439320))

(assert (= (and b!1439320 res!971856) b!1439317))

(assert (= (and b!1439317 res!971853) b!1439315))

(assert (= (and b!1439315 res!971855) b!1439318))

(assert (= (and b!1439318 res!971857) b!1439316))

(assert (= (and b!1439316 res!971854) b!1439323))

(declare-fun m!1328441 () Bool)

(assert (=> b!1439320 m!1328441))

(declare-fun m!1328443 () Bool)

(assert (=> b!1439317 m!1328443))

(declare-fun m!1328445 () Bool)

(assert (=> b!1439323 m!1328445))

(declare-fun m!1328447 () Bool)

(assert (=> b!1439323 m!1328447))

(assert (=> b!1439323 m!1328447))

(declare-fun m!1328449 () Bool)

(assert (=> b!1439323 m!1328449))

(assert (=> b!1439323 m!1328449))

(assert (=> b!1439323 m!1328447))

(declare-fun m!1328451 () Bool)

(assert (=> b!1439323 m!1328451))

(declare-fun m!1328453 () Bool)

(assert (=> b!1439316 m!1328453))

(assert (=> b!1439316 m!1328453))

(declare-fun m!1328455 () Bool)

(assert (=> b!1439316 m!1328455))

(assert (=> b!1439321 m!1328453))

(assert (=> b!1439321 m!1328453))

(declare-fun m!1328457 () Bool)

(assert (=> b!1439321 m!1328457))

(assert (=> b!1439315 m!1328445))

(declare-fun m!1328459 () Bool)

(assert (=> b!1439315 m!1328459))

(declare-fun m!1328461 () Bool)

(assert (=> b!1439322 m!1328461))

(assert (=> b!1439322 m!1328461))

(declare-fun m!1328463 () Bool)

(assert (=> b!1439322 m!1328463))

(assert (=> b!1439318 m!1328453))

(assert (=> b!1439318 m!1328453))

(declare-fun m!1328465 () Bool)

(assert (=> b!1439318 m!1328465))

(assert (=> b!1439318 m!1328465))

(assert (=> b!1439318 m!1328453))

(declare-fun m!1328467 () Bool)

(assert (=> b!1439318 m!1328467))

(declare-fun m!1328469 () Bool)

(assert (=> start!124458 m!1328469))

(declare-fun m!1328471 () Bool)

(assert (=> start!124458 m!1328471))

(check-sat (not b!1439320) (not b!1439317) (not b!1439321) (not b!1439316) (not b!1439318) (not b!1439323) (not start!124458) (not b!1439322))
(check-sat)
