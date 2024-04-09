; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124520 () Bool)

(assert start!124520)

(declare-fun b!1440206 () Bool)

(declare-fun e!812122 () Bool)

(declare-fun e!812123 () Bool)

(assert (=> b!1440206 (= e!812122 e!812123)))

(declare-fun res!972745 () Bool)

(assert (=> b!1440206 (=> (not res!972745) (not e!812123))))

(declare-datatypes ((SeekEntryResult!11501 0))(
  ( (MissingZero!11501 (index!48395 (_ BitVec 32))) (Found!11501 (index!48396 (_ BitVec 32))) (Intermediate!11501 (undefined!12313 Bool) (index!48397 (_ BitVec 32)) (x!130121 (_ BitVec 32))) (Undefined!11501) (MissingVacant!11501 (index!48398 (_ BitVec 32))) )
))
(declare-fun lt!632887 () SeekEntryResult!11501)

(declare-datatypes ((array!97885 0))(
  ( (array!97886 (arr!47226 (Array (_ BitVec 32) (_ BitVec 64))) (size!47777 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97885)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97885 (_ BitVec 32)) SeekEntryResult!11501)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440206 (= res!972745 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47226 a!2862) j!93) mask!2687) (select (arr!47226 a!2862) j!93) a!2862 mask!2687) lt!632887))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440206 (= lt!632887 (Intermediate!11501 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440207 () Bool)

(declare-fun res!972744 () Bool)

(assert (=> b!1440207 (=> (not res!972744) (not e!812122))))

(declare-datatypes ((List!33907 0))(
  ( (Nil!33904) (Cons!33903 (h!35253 (_ BitVec 64)) (t!48608 List!33907)) )
))
(declare-fun arrayNoDuplicates!0 (array!97885 (_ BitVec 32) List!33907) Bool)

(assert (=> b!1440207 (= res!972744 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33904))))

(declare-fun b!1440209 () Bool)

(declare-fun res!972742 () Bool)

(assert (=> b!1440209 (=> (not res!972742) (not e!812122))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440209 (= res!972742 (validKeyInArray!0 (select (arr!47226 a!2862) j!93)))))

(declare-fun b!1440210 () Bool)

(declare-fun res!972746 () Bool)

(assert (=> b!1440210 (=> (not res!972746) (not e!812122))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97885 (_ BitVec 32)) Bool)

(assert (=> b!1440210 (= res!972746 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440211 () Bool)

(declare-fun res!972750 () Bool)

(assert (=> b!1440211 (=> (not res!972750) (not e!812123))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1440211 (= res!972750 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47226 a!2862) j!93) a!2862 mask!2687) lt!632887))))

(declare-fun b!1440212 () Bool)

(declare-fun res!972748 () Bool)

(assert (=> b!1440212 (=> (not res!972748) (not e!812122))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440212 (= res!972748 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47777 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47777 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47777 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47226 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440213 () Bool)

(assert (=> b!1440213 (= e!812123 false)))

(declare-fun lt!632886 () SeekEntryResult!11501)

(assert (=> b!1440213 (= lt!632886 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47226 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47226 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97886 (store (arr!47226 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47777 a!2862)) mask!2687))))

(declare-fun b!1440214 () Bool)

(declare-fun res!972747 () Bool)

(assert (=> b!1440214 (=> (not res!972747) (not e!812122))))

(assert (=> b!1440214 (= res!972747 (and (= (size!47777 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47777 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47777 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440208 () Bool)

(declare-fun res!972749 () Bool)

(assert (=> b!1440208 (=> (not res!972749) (not e!812122))))

(assert (=> b!1440208 (= res!972749 (validKeyInArray!0 (select (arr!47226 a!2862) i!1006)))))

(declare-fun res!972743 () Bool)

(assert (=> start!124520 (=> (not res!972743) (not e!812122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124520 (= res!972743 (validMask!0 mask!2687))))

(assert (=> start!124520 e!812122))

(assert (=> start!124520 true))

(declare-fun array_inv!36171 (array!97885) Bool)

(assert (=> start!124520 (array_inv!36171 a!2862)))

(assert (= (and start!124520 res!972743) b!1440214))

(assert (= (and b!1440214 res!972747) b!1440208))

(assert (= (and b!1440208 res!972749) b!1440209))

(assert (= (and b!1440209 res!972742) b!1440210))

(assert (= (and b!1440210 res!972746) b!1440207))

(assert (= (and b!1440207 res!972744) b!1440212))

(assert (= (and b!1440212 res!972748) b!1440206))

(assert (= (and b!1440206 res!972745) b!1440211))

(assert (= (and b!1440211 res!972750) b!1440213))

(declare-fun m!1329439 () Bool)

(assert (=> b!1440206 m!1329439))

(assert (=> b!1440206 m!1329439))

(declare-fun m!1329441 () Bool)

(assert (=> b!1440206 m!1329441))

(assert (=> b!1440206 m!1329441))

(assert (=> b!1440206 m!1329439))

(declare-fun m!1329443 () Bool)

(assert (=> b!1440206 m!1329443))

(declare-fun m!1329445 () Bool)

(assert (=> b!1440208 m!1329445))

(assert (=> b!1440208 m!1329445))

(declare-fun m!1329447 () Bool)

(assert (=> b!1440208 m!1329447))

(assert (=> b!1440211 m!1329439))

(assert (=> b!1440211 m!1329439))

(declare-fun m!1329449 () Bool)

(assert (=> b!1440211 m!1329449))

(declare-fun m!1329451 () Bool)

(assert (=> b!1440210 m!1329451))

(assert (=> b!1440209 m!1329439))

(assert (=> b!1440209 m!1329439))

(declare-fun m!1329453 () Bool)

(assert (=> b!1440209 m!1329453))

(declare-fun m!1329455 () Bool)

(assert (=> b!1440212 m!1329455))

(declare-fun m!1329457 () Bool)

(assert (=> b!1440212 m!1329457))

(declare-fun m!1329459 () Bool)

(assert (=> b!1440207 m!1329459))

(assert (=> b!1440213 m!1329455))

(declare-fun m!1329461 () Bool)

(assert (=> b!1440213 m!1329461))

(assert (=> b!1440213 m!1329461))

(declare-fun m!1329463 () Bool)

(assert (=> b!1440213 m!1329463))

(assert (=> b!1440213 m!1329463))

(assert (=> b!1440213 m!1329461))

(declare-fun m!1329465 () Bool)

(assert (=> b!1440213 m!1329465))

(declare-fun m!1329467 () Bool)

(assert (=> start!124520 m!1329467))

(declare-fun m!1329469 () Bool)

(assert (=> start!124520 m!1329469))

(push 1)

(assert (not b!1440206))

(assert (not b!1440211))

(assert (not b!1440208))

(assert (not b!1440210))

(assert (not start!124520))

