; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125490 () Bool)

(assert start!125490)

(declare-fun res!996161 () Bool)

(declare-fun e!824303 () Bool)

(assert (=> start!125490 (=> (not res!996161) (not e!824303))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125490 (= res!996161 (validMask!0 mask!2687))))

(assert (=> start!125490 e!824303))

(assert (=> start!125490 true))

(declare-datatypes ((array!98855 0))(
  ( (array!98856 (arr!47711 (Array (_ BitVec 32) (_ BitVec 64))) (size!48262 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98855)

(declare-fun array_inv!36656 (array!98855) Bool)

(assert (=> start!125490 (array_inv!36656 a!2862)))

(declare-fun b!1467511 () Bool)

(declare-fun res!996162 () Bool)

(assert (=> b!1467511 (=> (not res!996162) (not e!824303))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467511 (= res!996162 (and (= (size!48262 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48262 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48262 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467512 () Bool)

(declare-fun res!996165 () Bool)

(assert (=> b!1467512 (=> (not res!996165) (not e!824303))))

(declare-datatypes ((List!34392 0))(
  ( (Nil!34389) (Cons!34388 (h!35738 (_ BitVec 64)) (t!49093 List!34392)) )
))
(declare-fun arrayNoDuplicates!0 (array!98855 (_ BitVec 32) List!34392) Bool)

(assert (=> b!1467512 (= res!996165 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34389))))

(declare-fun b!1467513 () Bool)

(assert (=> b!1467513 (= e!824303 false)))

(declare-datatypes ((SeekEntryResult!11974 0))(
  ( (MissingZero!11974 (index!50287 (_ BitVec 32))) (Found!11974 (index!50288 (_ BitVec 32))) (Intermediate!11974 (undefined!12786 Bool) (index!50289 (_ BitVec 32)) (x!131890 (_ BitVec 32))) (Undefined!11974) (MissingVacant!11974 (index!50290 (_ BitVec 32))) )
))
(declare-fun lt!642064 () SeekEntryResult!11974)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98855 (_ BitVec 32)) SeekEntryResult!11974)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467513 (= lt!642064 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47711 a!2862) j!93) mask!2687) (select (arr!47711 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467514 () Bool)

(declare-fun res!996160 () Bool)

(assert (=> b!1467514 (=> (not res!996160) (not e!824303))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467514 (= res!996160 (validKeyInArray!0 (select (arr!47711 a!2862) j!93)))))

(declare-fun b!1467515 () Bool)

(declare-fun res!996163 () Bool)

(assert (=> b!1467515 (=> (not res!996163) (not e!824303))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1467515 (= res!996163 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48262 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48262 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48262 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47711 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467516 () Bool)

(declare-fun res!996164 () Bool)

(assert (=> b!1467516 (=> (not res!996164) (not e!824303))))

(assert (=> b!1467516 (= res!996164 (validKeyInArray!0 (select (arr!47711 a!2862) i!1006)))))

(declare-fun b!1467517 () Bool)

(declare-fun res!996159 () Bool)

(assert (=> b!1467517 (=> (not res!996159) (not e!824303))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98855 (_ BitVec 32)) Bool)

(assert (=> b!1467517 (= res!996159 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125490 res!996161) b!1467511))

(assert (= (and b!1467511 res!996162) b!1467516))

(assert (= (and b!1467516 res!996164) b!1467514))

(assert (= (and b!1467514 res!996160) b!1467517))

(assert (= (and b!1467517 res!996159) b!1467512))

(assert (= (and b!1467512 res!996165) b!1467515))

(assert (= (and b!1467515 res!996163) b!1467513))

(declare-fun m!1354515 () Bool)

(assert (=> b!1467513 m!1354515))

(assert (=> b!1467513 m!1354515))

(declare-fun m!1354517 () Bool)

(assert (=> b!1467513 m!1354517))

(assert (=> b!1467513 m!1354517))

(assert (=> b!1467513 m!1354515))

(declare-fun m!1354519 () Bool)

(assert (=> b!1467513 m!1354519))

(declare-fun m!1354521 () Bool)

(assert (=> start!125490 m!1354521))

(declare-fun m!1354523 () Bool)

(assert (=> start!125490 m!1354523))

(assert (=> b!1467514 m!1354515))

(assert (=> b!1467514 m!1354515))

(declare-fun m!1354525 () Bool)

(assert (=> b!1467514 m!1354525))

(declare-fun m!1354527 () Bool)

(assert (=> b!1467515 m!1354527))

(declare-fun m!1354529 () Bool)

(assert (=> b!1467515 m!1354529))

(declare-fun m!1354531 () Bool)

(assert (=> b!1467516 m!1354531))

(assert (=> b!1467516 m!1354531))

(declare-fun m!1354533 () Bool)

(assert (=> b!1467516 m!1354533))

(declare-fun m!1354535 () Bool)

(assert (=> b!1467517 m!1354535))

(declare-fun m!1354537 () Bool)

(assert (=> b!1467512 m!1354537))

(check-sat (not b!1467516) (not b!1467512) (not b!1467513) (not b!1467514) (not start!125490) (not b!1467517))
