; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124522 () Bool)

(assert start!124522)

(declare-fun b!1440235 () Bool)

(declare-fun res!972771 () Bool)

(declare-fun e!812130 () Bool)

(assert (=> b!1440235 (=> (not res!972771) (not e!812130))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97887 0))(
  ( (array!97888 (arr!47227 (Array (_ BitVec 32) (_ BitVec 64))) (size!47778 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97887)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11502 0))(
  ( (MissingZero!11502 (index!48399 (_ BitVec 32))) (Found!11502 (index!48400 (_ BitVec 32))) (Intermediate!11502 (undefined!12314 Bool) (index!48401 (_ BitVec 32)) (x!130130 (_ BitVec 32))) (Undefined!11502) (MissingVacant!11502 (index!48402 (_ BitVec 32))) )
))
(declare-fun lt!632890 () SeekEntryResult!11502)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97887 (_ BitVec 32)) SeekEntryResult!11502)

(assert (=> b!1440235 (= res!972771 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47227 a!2862) j!93) a!2862 mask!2687) lt!632890))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1440236 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1440236 (= e!812130 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge intermediateAfterIndex!19 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1440237 () Bool)

(declare-fun res!972777 () Bool)

(declare-fun e!812131 () Bool)

(assert (=> b!1440237 (=> (not res!972777) (not e!812131))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1440237 (= res!972777 (and (= (size!47778 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47778 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47778 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440238 () Bool)

(declare-fun res!972774 () Bool)

(assert (=> b!1440238 (=> (not res!972774) (not e!812131))))

(declare-datatypes ((List!33908 0))(
  ( (Nil!33905) (Cons!33904 (h!35254 (_ BitVec 64)) (t!48609 List!33908)) )
))
(declare-fun arrayNoDuplicates!0 (array!97887 (_ BitVec 32) List!33908) Bool)

(assert (=> b!1440238 (= res!972774 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33905))))

(declare-fun res!972780 () Bool)

(assert (=> start!124522 (=> (not res!972780) (not e!812131))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124522 (= res!972780 (validMask!0 mask!2687))))

(assert (=> start!124522 e!812131))

(assert (=> start!124522 true))

(declare-fun array_inv!36172 (array!97887) Bool)

(assert (=> start!124522 (array_inv!36172 a!2862)))

(declare-fun b!1440239 () Bool)

(declare-fun res!972773 () Bool)

(assert (=> b!1440239 (=> (not res!972773) (not e!812131))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97887 (_ BitVec 32)) Bool)

(assert (=> b!1440239 (= res!972773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440240 () Bool)

(declare-fun res!972778 () Bool)

(assert (=> b!1440240 (=> (not res!972778) (not e!812130))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440240 (= res!972778 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47227 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47227 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97888 (store (arr!47227 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47778 a!2862)) mask!2687) (Intermediate!11502 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440241 () Bool)

(assert (=> b!1440241 (= e!812131 e!812130)))

(declare-fun res!972772 () Bool)

(assert (=> b!1440241 (=> (not res!972772) (not e!812130))))

(assert (=> b!1440241 (= res!972772 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47227 a!2862) j!93) mask!2687) (select (arr!47227 a!2862) j!93) a!2862 mask!2687) lt!632890))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1440241 (= lt!632890 (Intermediate!11502 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440242 () Bool)

(declare-fun res!972776 () Bool)

(assert (=> b!1440242 (=> (not res!972776) (not e!812131))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440242 (= res!972776 (validKeyInArray!0 (select (arr!47227 a!2862) i!1006)))))

(declare-fun b!1440243 () Bool)

(declare-fun res!972779 () Bool)

(assert (=> b!1440243 (=> (not res!972779) (not e!812131))))

(assert (=> b!1440243 (= res!972779 (validKeyInArray!0 (select (arr!47227 a!2862) j!93)))))

(declare-fun b!1440244 () Bool)

(declare-fun res!972775 () Bool)

(assert (=> b!1440244 (=> (not res!972775) (not e!812131))))

(assert (=> b!1440244 (= res!972775 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47778 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47778 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47778 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47227 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124522 res!972780) b!1440237))

(assert (= (and b!1440237 res!972777) b!1440242))

(assert (= (and b!1440242 res!972776) b!1440243))

(assert (= (and b!1440243 res!972779) b!1440239))

(assert (= (and b!1440239 res!972773) b!1440238))

(assert (= (and b!1440238 res!972774) b!1440244))

(assert (= (and b!1440244 res!972775) b!1440241))

(assert (= (and b!1440241 res!972772) b!1440235))

(assert (= (and b!1440235 res!972771) b!1440240))

(assert (= (and b!1440240 res!972778) b!1440236))

(declare-fun m!1329471 () Bool)

(assert (=> b!1440242 m!1329471))

(assert (=> b!1440242 m!1329471))

(declare-fun m!1329473 () Bool)

(assert (=> b!1440242 m!1329473))

(declare-fun m!1329475 () Bool)

(assert (=> b!1440243 m!1329475))

(assert (=> b!1440243 m!1329475))

(declare-fun m!1329477 () Bool)

(assert (=> b!1440243 m!1329477))

(declare-fun m!1329479 () Bool)

(assert (=> b!1440238 m!1329479))

(assert (=> b!1440241 m!1329475))

(assert (=> b!1440241 m!1329475))

(declare-fun m!1329481 () Bool)

(assert (=> b!1440241 m!1329481))

(assert (=> b!1440241 m!1329481))

(assert (=> b!1440241 m!1329475))

(declare-fun m!1329483 () Bool)

(assert (=> b!1440241 m!1329483))

(assert (=> b!1440235 m!1329475))

(assert (=> b!1440235 m!1329475))

(declare-fun m!1329485 () Bool)

(assert (=> b!1440235 m!1329485))

(declare-fun m!1329487 () Bool)

(assert (=> b!1440239 m!1329487))

(declare-fun m!1329489 () Bool)

(assert (=> b!1440244 m!1329489))

(declare-fun m!1329491 () Bool)

(assert (=> b!1440244 m!1329491))

(assert (=> b!1440240 m!1329489))

(declare-fun m!1329493 () Bool)

(assert (=> b!1440240 m!1329493))

(assert (=> b!1440240 m!1329493))

(declare-fun m!1329495 () Bool)

(assert (=> b!1440240 m!1329495))

(assert (=> b!1440240 m!1329495))

(assert (=> b!1440240 m!1329493))

(declare-fun m!1329497 () Bool)

(assert (=> b!1440240 m!1329497))

(declare-fun m!1329499 () Bool)

(assert (=> start!124522 m!1329499))

(declare-fun m!1329501 () Bool)

(assert (=> start!124522 m!1329501))

(push 1)

(assert (not b!1440242))

(assert (not b!1440240))

(assert (not b!1440243))

(assert (not b!1440241))

(assert (not b!1440238))

(assert (not b!1440235))

(assert (not b!1440239))

(assert (not start!124522))

(check-sat)

(pop 1)

(push 1)

(check-sat)

