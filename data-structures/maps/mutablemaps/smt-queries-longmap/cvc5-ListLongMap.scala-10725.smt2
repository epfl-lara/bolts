; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125530 () Bool)

(assert start!125530)

(declare-fun b!1468016 () Bool)

(declare-fun res!996668 () Bool)

(declare-fun e!824451 () Bool)

(assert (=> b!1468016 (=> (not res!996668) (not e!824451))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98895 0))(
  ( (array!98896 (arr!47731 (Array (_ BitVec 32) (_ BitVec 64))) (size!48282 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98895)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11994 0))(
  ( (MissingZero!11994 (index!50367 (_ BitVec 32))) (Found!11994 (index!50368 (_ BitVec 32))) (Intermediate!11994 (undefined!12806 Bool) (index!50369 (_ BitVec 32)) (x!131966 (_ BitVec 32))) (Undefined!11994) (MissingVacant!11994 (index!50370 (_ BitVec 32))) )
))
(declare-fun lt!642153 () SeekEntryResult!11994)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98895 (_ BitVec 32)) SeekEntryResult!11994)

(assert (=> b!1468016 (= res!996668 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47731 a!2862) j!93) a!2862 mask!2687) lt!642153))))

(declare-fun b!1468017 () Bool)

(declare-fun e!824452 () Bool)

(assert (=> b!1468017 (= e!824452 e!824451)))

(declare-fun res!996669 () Bool)

(assert (=> b!1468017 (=> (not res!996669) (not e!824451))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468017 (= res!996669 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47731 a!2862) j!93) mask!2687) (select (arr!47731 a!2862) j!93) a!2862 mask!2687) lt!642153))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468017 (= lt!642153 (Intermediate!11994 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468018 () Bool)

(declare-fun res!996671 () Bool)

(assert (=> b!1468018 (=> (not res!996671) (not e!824452))))

(declare-datatypes ((List!34412 0))(
  ( (Nil!34409) (Cons!34408 (h!35758 (_ BitVec 64)) (t!49113 List!34412)) )
))
(declare-fun arrayNoDuplicates!0 (array!98895 (_ BitVec 32) List!34412) Bool)

(assert (=> b!1468018 (= res!996671 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34409))))

(declare-fun b!1468019 () Bool)

(assert (=> b!1468019 (= e!824451 false)))

(declare-fun lt!642154 () SeekEntryResult!11994)

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1468019 (= lt!642154 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47731 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47731 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98896 (store (arr!47731 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48282 a!2862)) mask!2687))))

(declare-fun b!1468021 () Bool)

(declare-fun res!996666 () Bool)

(assert (=> b!1468021 (=> (not res!996666) (not e!824452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468021 (= res!996666 (validKeyInArray!0 (select (arr!47731 a!2862) j!93)))))

(declare-fun b!1468022 () Bool)

(declare-fun res!996664 () Bool)

(assert (=> b!1468022 (=> (not res!996664) (not e!824452))))

(assert (=> b!1468022 (= res!996664 (validKeyInArray!0 (select (arr!47731 a!2862) i!1006)))))

(declare-fun b!1468023 () Bool)

(declare-fun res!996670 () Bool)

(assert (=> b!1468023 (=> (not res!996670) (not e!824452))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468023 (= res!996670 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48282 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48282 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48282 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47731 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1468024 () Bool)

(declare-fun res!996672 () Bool)

(assert (=> b!1468024 (=> (not res!996672) (not e!824452))))

(assert (=> b!1468024 (= res!996672 (and (= (size!48282 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48282 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48282 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468020 () Bool)

(declare-fun res!996667 () Bool)

(assert (=> b!1468020 (=> (not res!996667) (not e!824452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98895 (_ BitVec 32)) Bool)

(assert (=> b!1468020 (= res!996667 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!996665 () Bool)

(assert (=> start!125530 (=> (not res!996665) (not e!824452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125530 (= res!996665 (validMask!0 mask!2687))))

(assert (=> start!125530 e!824452))

(assert (=> start!125530 true))

(declare-fun array_inv!36676 (array!98895) Bool)

(assert (=> start!125530 (array_inv!36676 a!2862)))

(assert (= (and start!125530 res!996665) b!1468024))

(assert (= (and b!1468024 res!996672) b!1468022))

(assert (= (and b!1468022 res!996664) b!1468021))

(assert (= (and b!1468021 res!996666) b!1468020))

(assert (= (and b!1468020 res!996667) b!1468018))

(assert (= (and b!1468018 res!996671) b!1468023))

(assert (= (and b!1468023 res!996670) b!1468017))

(assert (= (and b!1468017 res!996669) b!1468016))

(assert (= (and b!1468016 res!996668) b!1468019))

(declare-fun m!1355073 () Bool)

(assert (=> b!1468023 m!1355073))

(declare-fun m!1355075 () Bool)

(assert (=> b!1468023 m!1355075))

(declare-fun m!1355077 () Bool)

(assert (=> b!1468022 m!1355077))

(assert (=> b!1468022 m!1355077))

(declare-fun m!1355079 () Bool)

(assert (=> b!1468022 m!1355079))

(assert (=> b!1468019 m!1355073))

(declare-fun m!1355081 () Bool)

(assert (=> b!1468019 m!1355081))

(assert (=> b!1468019 m!1355081))

(declare-fun m!1355083 () Bool)

(assert (=> b!1468019 m!1355083))

(assert (=> b!1468019 m!1355083))

(assert (=> b!1468019 m!1355081))

(declare-fun m!1355085 () Bool)

(assert (=> b!1468019 m!1355085))

(declare-fun m!1355087 () Bool)

(assert (=> b!1468018 m!1355087))

(declare-fun m!1355089 () Bool)

(assert (=> b!1468021 m!1355089))

(assert (=> b!1468021 m!1355089))

(declare-fun m!1355091 () Bool)

(assert (=> b!1468021 m!1355091))

(assert (=> b!1468017 m!1355089))

(assert (=> b!1468017 m!1355089))

(declare-fun m!1355093 () Bool)

(assert (=> b!1468017 m!1355093))

(assert (=> b!1468017 m!1355093))

(assert (=> b!1468017 m!1355089))

(declare-fun m!1355095 () Bool)

(assert (=> b!1468017 m!1355095))

(declare-fun m!1355097 () Bool)

(assert (=> b!1468020 m!1355097))

(declare-fun m!1355099 () Bool)

(assert (=> start!125530 m!1355099))

(declare-fun m!1355101 () Bool)

(assert (=> start!125530 m!1355101))

(assert (=> b!1468016 m!1355089))

(assert (=> b!1468016 m!1355089))

(declare-fun m!1355103 () Bool)

(assert (=> b!1468016 m!1355103))

(push 1)

