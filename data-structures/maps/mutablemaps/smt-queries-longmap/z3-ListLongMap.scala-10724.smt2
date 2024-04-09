; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125526 () Bool)

(assert start!125526)

(declare-fun b!1467962 () Bool)

(declare-fun res!996613 () Bool)

(declare-fun e!824435 () Bool)

(assert (=> b!1467962 (=> (not res!996613) (not e!824435))))

(declare-datatypes ((array!98891 0))(
  ( (array!98892 (arr!47729 (Array (_ BitVec 32) (_ BitVec 64))) (size!48280 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98891)

(declare-datatypes ((List!34410 0))(
  ( (Nil!34407) (Cons!34406 (h!35756 (_ BitVec 64)) (t!49111 List!34410)) )
))
(declare-fun arrayNoDuplicates!0 (array!98891 (_ BitVec 32) List!34410) Bool)

(assert (=> b!1467962 (= res!996613 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34407))))

(declare-fun b!1467963 () Bool)

(declare-fun res!996616 () Bool)

(assert (=> b!1467963 (=> (not res!996616) (not e!824435))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467963 (= res!996616 (validKeyInArray!0 (select (arr!47729 a!2862) i!1006)))))

(declare-fun b!1467964 () Bool)

(declare-fun e!824434 () Bool)

(assert (=> b!1467964 (= e!824435 e!824434)))

(declare-fun res!996612 () Bool)

(assert (=> b!1467964 (=> (not res!996612) (not e!824434))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11992 0))(
  ( (MissingZero!11992 (index!50359 (_ BitVec 32))) (Found!11992 (index!50360 (_ BitVec 32))) (Intermediate!11992 (undefined!12804 Bool) (index!50361 (_ BitVec 32)) (x!131956 (_ BitVec 32))) (Undefined!11992) (MissingVacant!11992 (index!50362 (_ BitVec 32))) )
))
(declare-fun lt!642141 () SeekEntryResult!11992)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98891 (_ BitVec 32)) SeekEntryResult!11992)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467964 (= res!996612 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47729 a!2862) j!93) mask!2687) (select (arr!47729 a!2862) j!93) a!2862 mask!2687) lt!642141))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467964 (= lt!642141 (Intermediate!11992 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467965 () Bool)

(declare-fun res!996617 () Bool)

(assert (=> b!1467965 (=> (not res!996617) (not e!824434))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1467965 (= res!996617 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47729 a!2862) j!93) a!2862 mask!2687) lt!642141))))

(declare-fun b!1467966 () Bool)

(declare-fun res!996611 () Bool)

(assert (=> b!1467966 (=> (not res!996611) (not e!824435))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98891 (_ BitVec 32)) Bool)

(assert (=> b!1467966 (= res!996611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467967 () Bool)

(declare-fun res!996610 () Bool)

(assert (=> b!1467967 (=> (not res!996610) (not e!824435))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467967 (= res!996610 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48280 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48280 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48280 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47729 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467968 () Bool)

(assert (=> b!1467968 (= e!824434 false)))

(declare-fun lt!642142 () SeekEntryResult!11992)

(assert (=> b!1467968 (= lt!642142 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47729 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47729 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98892 (store (arr!47729 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48280 a!2862)) mask!2687))))

(declare-fun b!1467969 () Bool)

(declare-fun res!996618 () Bool)

(assert (=> b!1467969 (=> (not res!996618) (not e!824435))))

(assert (=> b!1467969 (= res!996618 (validKeyInArray!0 (select (arr!47729 a!2862) j!93)))))

(declare-fun res!996614 () Bool)

(assert (=> start!125526 (=> (not res!996614) (not e!824435))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125526 (= res!996614 (validMask!0 mask!2687))))

(assert (=> start!125526 e!824435))

(assert (=> start!125526 true))

(declare-fun array_inv!36674 (array!98891) Bool)

(assert (=> start!125526 (array_inv!36674 a!2862)))

(declare-fun b!1467970 () Bool)

(declare-fun res!996615 () Bool)

(assert (=> b!1467970 (=> (not res!996615) (not e!824435))))

(assert (=> b!1467970 (= res!996615 (and (= (size!48280 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48280 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48280 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125526 res!996614) b!1467970))

(assert (= (and b!1467970 res!996615) b!1467963))

(assert (= (and b!1467963 res!996616) b!1467969))

(assert (= (and b!1467969 res!996618) b!1467966))

(assert (= (and b!1467966 res!996611) b!1467962))

(assert (= (and b!1467962 res!996613) b!1467967))

(assert (= (and b!1467967 res!996610) b!1467964))

(assert (= (and b!1467964 res!996612) b!1467965))

(assert (= (and b!1467965 res!996617) b!1467968))

(declare-fun m!1355009 () Bool)

(assert (=> b!1467969 m!1355009))

(assert (=> b!1467969 m!1355009))

(declare-fun m!1355011 () Bool)

(assert (=> b!1467969 m!1355011))

(declare-fun m!1355013 () Bool)

(assert (=> b!1467968 m!1355013))

(declare-fun m!1355015 () Bool)

(assert (=> b!1467968 m!1355015))

(assert (=> b!1467968 m!1355015))

(declare-fun m!1355017 () Bool)

(assert (=> b!1467968 m!1355017))

(assert (=> b!1467968 m!1355017))

(assert (=> b!1467968 m!1355015))

(declare-fun m!1355019 () Bool)

(assert (=> b!1467968 m!1355019))

(declare-fun m!1355021 () Bool)

(assert (=> b!1467962 m!1355021))

(assert (=> b!1467964 m!1355009))

(assert (=> b!1467964 m!1355009))

(declare-fun m!1355023 () Bool)

(assert (=> b!1467964 m!1355023))

(assert (=> b!1467964 m!1355023))

(assert (=> b!1467964 m!1355009))

(declare-fun m!1355025 () Bool)

(assert (=> b!1467964 m!1355025))

(declare-fun m!1355027 () Bool)

(assert (=> b!1467963 m!1355027))

(assert (=> b!1467963 m!1355027))

(declare-fun m!1355029 () Bool)

(assert (=> b!1467963 m!1355029))

(declare-fun m!1355031 () Bool)

(assert (=> b!1467966 m!1355031))

(assert (=> b!1467965 m!1355009))

(assert (=> b!1467965 m!1355009))

(declare-fun m!1355033 () Bool)

(assert (=> b!1467965 m!1355033))

(declare-fun m!1355035 () Bool)

(assert (=> start!125526 m!1355035))

(declare-fun m!1355037 () Bool)

(assert (=> start!125526 m!1355037))

(assert (=> b!1467967 m!1355013))

(declare-fun m!1355039 () Bool)

(assert (=> b!1467967 m!1355039))

(check-sat (not b!1467964) (not b!1467968) (not b!1467963) (not b!1467962) (not b!1467965) (not start!125526) (not b!1467969) (not b!1467966))
