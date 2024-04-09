; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125556 () Bool)

(assert start!125556)

(declare-fun b!1468367 () Bool)

(declare-fun res!997019 () Bool)

(declare-fun e!824570 () Bool)

(assert (=> b!1468367 (=> (not res!997019) (not e!824570))))

(declare-datatypes ((array!98921 0))(
  ( (array!98922 (arr!47744 (Array (_ BitVec 32) (_ BitVec 64))) (size!48295 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98921)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468367 (= res!997019 (validKeyInArray!0 (select (arr!47744 a!2862) i!1006)))))

(declare-fun b!1468368 () Bool)

(declare-fun res!997022 () Bool)

(assert (=> b!1468368 (=> (not res!997022) (not e!824570))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468368 (= res!997022 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48295 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48295 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48295 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47744 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468369 () Bool)

(declare-fun e!824568 () Bool)

(assert (=> b!1468369 (= e!824568 false)))

(declare-datatypes ((SeekEntryResult!12007 0))(
  ( (MissingZero!12007 (index!50419 (_ BitVec 32))) (Found!12007 (index!50420 (_ BitVec 32))) (Intermediate!12007 (undefined!12819 Bool) (index!50421 (_ BitVec 32)) (x!132011 (_ BitVec 32))) (Undefined!12007) (MissingVacant!12007 (index!50422 (_ BitVec 32))) )
))
(declare-fun lt!642231 () SeekEntryResult!12007)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98921 (_ BitVec 32)) SeekEntryResult!12007)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468369 (= lt!642231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47744 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47744 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98922 (store (arr!47744 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48295 a!2862)) mask!2687))))

(declare-fun b!1468370 () Bool)

(declare-fun res!997016 () Bool)

(assert (=> b!1468370 (=> (not res!997016) (not e!824570))))

(declare-datatypes ((List!34425 0))(
  ( (Nil!34422) (Cons!34421 (h!35771 (_ BitVec 64)) (t!49126 List!34425)) )
))
(declare-fun arrayNoDuplicates!0 (array!98921 (_ BitVec 32) List!34425) Bool)

(assert (=> b!1468370 (= res!997016 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34422))))

(declare-fun res!997020 () Bool)

(assert (=> start!125556 (=> (not res!997020) (not e!824570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125556 (= res!997020 (validMask!0 mask!2687))))

(assert (=> start!125556 e!824570))

(assert (=> start!125556 true))

(declare-fun array_inv!36689 (array!98921) Bool)

(assert (=> start!125556 (array_inv!36689 a!2862)))

(declare-fun b!1468371 () Bool)

(assert (=> b!1468371 (= e!824570 e!824568)))

(declare-fun res!997023 () Bool)

(assert (=> b!1468371 (=> (not res!997023) (not e!824568))))

(declare-fun lt!642232 () SeekEntryResult!12007)

(assert (=> b!1468371 (= res!997023 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47744 a!2862) j!93) mask!2687) (select (arr!47744 a!2862) j!93) a!2862 mask!2687) lt!642232))))

(assert (=> b!1468371 (= lt!642232 (Intermediate!12007 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468372 () Bool)

(declare-fun res!997015 () Bool)

(assert (=> b!1468372 (=> (not res!997015) (not e!824570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98921 (_ BitVec 32)) Bool)

(assert (=> b!1468372 (= res!997015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468373 () Bool)

(declare-fun res!997017 () Bool)

(assert (=> b!1468373 (=> (not res!997017) (not e!824570))))

(assert (=> b!1468373 (= res!997017 (validKeyInArray!0 (select (arr!47744 a!2862) j!93)))))

(declare-fun b!1468374 () Bool)

(declare-fun res!997018 () Bool)

(assert (=> b!1468374 (=> (not res!997018) (not e!824568))))

(assert (=> b!1468374 (= res!997018 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47744 a!2862) j!93) a!2862 mask!2687) lt!642232))))

(declare-fun b!1468375 () Bool)

(declare-fun res!997021 () Bool)

(assert (=> b!1468375 (=> (not res!997021) (not e!824570))))

(assert (=> b!1468375 (= res!997021 (and (= (size!48295 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48295 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48295 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125556 res!997020) b!1468375))

(assert (= (and b!1468375 res!997021) b!1468367))

(assert (= (and b!1468367 res!997019) b!1468373))

(assert (= (and b!1468373 res!997017) b!1468372))

(assert (= (and b!1468372 res!997015) b!1468370))

(assert (= (and b!1468370 res!997016) b!1468368))

(assert (= (and b!1468368 res!997022) b!1468371))

(assert (= (and b!1468371 res!997023) b!1468374))

(assert (= (and b!1468374 res!997018) b!1468369))

(declare-fun m!1355489 () Bool)

(assert (=> start!125556 m!1355489))

(declare-fun m!1355491 () Bool)

(assert (=> start!125556 m!1355491))

(declare-fun m!1355493 () Bool)

(assert (=> b!1468372 m!1355493))

(declare-fun m!1355495 () Bool)

(assert (=> b!1468369 m!1355495))

(declare-fun m!1355497 () Bool)

(assert (=> b!1468369 m!1355497))

(assert (=> b!1468369 m!1355497))

(declare-fun m!1355499 () Bool)

(assert (=> b!1468369 m!1355499))

(assert (=> b!1468369 m!1355499))

(assert (=> b!1468369 m!1355497))

(declare-fun m!1355501 () Bool)

(assert (=> b!1468369 m!1355501))

(declare-fun m!1355503 () Bool)

(assert (=> b!1468367 m!1355503))

(assert (=> b!1468367 m!1355503))

(declare-fun m!1355505 () Bool)

(assert (=> b!1468367 m!1355505))

(declare-fun m!1355507 () Bool)

(assert (=> b!1468370 m!1355507))

(declare-fun m!1355509 () Bool)

(assert (=> b!1468371 m!1355509))

(assert (=> b!1468371 m!1355509))

(declare-fun m!1355511 () Bool)

(assert (=> b!1468371 m!1355511))

(assert (=> b!1468371 m!1355511))

(assert (=> b!1468371 m!1355509))

(declare-fun m!1355513 () Bool)

(assert (=> b!1468371 m!1355513))

(assert (=> b!1468368 m!1355495))

(declare-fun m!1355515 () Bool)

(assert (=> b!1468368 m!1355515))

(assert (=> b!1468374 m!1355509))

(assert (=> b!1468374 m!1355509))

(declare-fun m!1355517 () Bool)

(assert (=> b!1468374 m!1355517))

(assert (=> b!1468373 m!1355509))

(assert (=> b!1468373 m!1355509))

(declare-fun m!1355519 () Bool)

(assert (=> b!1468373 m!1355519))

(check-sat (not b!1468369) (not start!125556) (not b!1468374) (not b!1468372) (not b!1468370) (not b!1468367) (not b!1468371) (not b!1468373))
(check-sat)
