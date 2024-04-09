; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125562 () Bool)

(assert start!125562)

(declare-fun b!1468448 () Bool)

(declare-fun res!997104 () Bool)

(declare-fun e!824596 () Bool)

(assert (=> b!1468448 (=> (not res!997104) (not e!824596))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98927 0))(
  ( (array!98928 (arr!47747 (Array (_ BitVec 32) (_ BitVec 64))) (size!48298 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98927)

(assert (=> b!1468448 (= res!997104 (and (= (size!48298 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48298 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48298 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468449 () Bool)

(declare-fun e!824597 () Bool)

(assert (=> b!1468449 (= e!824596 e!824597)))

(declare-fun res!997097 () Bool)

(assert (=> b!1468449 (=> (not res!997097) (not e!824597))))

(declare-datatypes ((SeekEntryResult!12010 0))(
  ( (MissingZero!12010 (index!50431 (_ BitVec 32))) (Found!12010 (index!50432 (_ BitVec 32))) (Intermediate!12010 (undefined!12822 Bool) (index!50433 (_ BitVec 32)) (x!132022 (_ BitVec 32))) (Undefined!12010) (MissingVacant!12010 (index!50434 (_ BitVec 32))) )
))
(declare-fun lt!642249 () SeekEntryResult!12010)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98927 (_ BitVec 32)) SeekEntryResult!12010)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468449 (= res!997097 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47747 a!2862) j!93) mask!2687) (select (arr!47747 a!2862) j!93) a!2862 mask!2687) lt!642249))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468449 (= lt!642249 (Intermediate!12010 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468450 () Bool)

(declare-fun res!997102 () Bool)

(assert (=> b!1468450 (=> (not res!997102) (not e!824596))))

(declare-datatypes ((List!34428 0))(
  ( (Nil!34425) (Cons!34424 (h!35774 (_ BitVec 64)) (t!49129 List!34428)) )
))
(declare-fun arrayNoDuplicates!0 (array!98927 (_ BitVec 32) List!34428) Bool)

(assert (=> b!1468450 (= res!997102 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34425))))

(declare-fun b!1468451 () Bool)

(assert (=> b!1468451 (= e!824597 false)))

(declare-fun lt!642250 () SeekEntryResult!12010)

(assert (=> b!1468451 (= lt!642250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47747 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47747 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98928 (store (arr!47747 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48298 a!2862)) mask!2687))))

(declare-fun b!1468452 () Bool)

(declare-fun res!997096 () Bool)

(assert (=> b!1468452 (=> (not res!997096) (not e!824596))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468452 (= res!997096 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48298 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48298 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48298 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47747 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468453 () Bool)

(declare-fun res!997099 () Bool)

(assert (=> b!1468453 (=> (not res!997099) (not e!824596))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468453 (= res!997099 (validKeyInArray!0 (select (arr!47747 a!2862) j!93)))))

(declare-fun b!1468454 () Bool)

(declare-fun res!997100 () Bool)

(assert (=> b!1468454 (=> (not res!997100) (not e!824597))))

(assert (=> b!1468454 (= res!997100 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47747 a!2862) j!93) a!2862 mask!2687) lt!642249))))

(declare-fun res!997103 () Bool)

(assert (=> start!125562 (=> (not res!997103) (not e!824596))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125562 (= res!997103 (validMask!0 mask!2687))))

(assert (=> start!125562 e!824596))

(assert (=> start!125562 true))

(declare-fun array_inv!36692 (array!98927) Bool)

(assert (=> start!125562 (array_inv!36692 a!2862)))

(declare-fun b!1468455 () Bool)

(declare-fun res!997101 () Bool)

(assert (=> b!1468455 (=> (not res!997101) (not e!824596))))

(assert (=> b!1468455 (= res!997101 (validKeyInArray!0 (select (arr!47747 a!2862) i!1006)))))

(declare-fun b!1468456 () Bool)

(declare-fun res!997098 () Bool)

(assert (=> b!1468456 (=> (not res!997098) (not e!824596))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98927 (_ BitVec 32)) Bool)

(assert (=> b!1468456 (= res!997098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125562 res!997103) b!1468448))

(assert (= (and b!1468448 res!997104) b!1468455))

(assert (= (and b!1468455 res!997101) b!1468453))

(assert (= (and b!1468453 res!997099) b!1468456))

(assert (= (and b!1468456 res!997098) b!1468450))

(assert (= (and b!1468450 res!997102) b!1468452))

(assert (= (and b!1468452 res!997096) b!1468449))

(assert (= (and b!1468449 res!997097) b!1468454))

(assert (= (and b!1468454 res!997100) b!1468451))

(declare-fun m!1355585 () Bool)

(assert (=> b!1468455 m!1355585))

(assert (=> b!1468455 m!1355585))

(declare-fun m!1355587 () Bool)

(assert (=> b!1468455 m!1355587))

(declare-fun m!1355589 () Bool)

(assert (=> b!1468456 m!1355589))

(declare-fun m!1355591 () Bool)

(assert (=> b!1468450 m!1355591))

(declare-fun m!1355593 () Bool)

(assert (=> b!1468449 m!1355593))

(assert (=> b!1468449 m!1355593))

(declare-fun m!1355595 () Bool)

(assert (=> b!1468449 m!1355595))

(assert (=> b!1468449 m!1355595))

(assert (=> b!1468449 m!1355593))

(declare-fun m!1355597 () Bool)

(assert (=> b!1468449 m!1355597))

(assert (=> b!1468453 m!1355593))

(assert (=> b!1468453 m!1355593))

(declare-fun m!1355599 () Bool)

(assert (=> b!1468453 m!1355599))

(declare-fun m!1355601 () Bool)

(assert (=> b!1468452 m!1355601))

(declare-fun m!1355603 () Bool)

(assert (=> b!1468452 m!1355603))

(assert (=> b!1468451 m!1355601))

(declare-fun m!1355605 () Bool)

(assert (=> b!1468451 m!1355605))

(assert (=> b!1468451 m!1355605))

(declare-fun m!1355607 () Bool)

(assert (=> b!1468451 m!1355607))

(assert (=> b!1468451 m!1355607))

(assert (=> b!1468451 m!1355605))

(declare-fun m!1355609 () Bool)

(assert (=> b!1468451 m!1355609))

(assert (=> b!1468454 m!1355593))

(assert (=> b!1468454 m!1355593))

(declare-fun m!1355611 () Bool)

(assert (=> b!1468454 m!1355611))

(declare-fun m!1355613 () Bool)

(assert (=> start!125562 m!1355613))

(declare-fun m!1355615 () Bool)

(assert (=> start!125562 m!1355615))

(check-sat (not b!1468456) (not b!1468449) (not start!125562) (not b!1468451) (not b!1468454) (not b!1468455) (not b!1468450) (not b!1468453))
(check-sat)
