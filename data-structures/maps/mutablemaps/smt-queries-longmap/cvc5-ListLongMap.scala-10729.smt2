; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125554 () Bool)

(assert start!125554)

(declare-fun b!1468340 () Bool)

(declare-fun e!824559 () Bool)

(assert (=> b!1468340 (= e!824559 false)))

(declare-datatypes ((SeekEntryResult!12006 0))(
  ( (MissingZero!12006 (index!50415 (_ BitVec 32))) (Found!12006 (index!50416 (_ BitVec 32))) (Intermediate!12006 (undefined!12818 Bool) (index!50417 (_ BitVec 32)) (x!132010 (_ BitVec 32))) (Undefined!12006) (MissingVacant!12006 (index!50418 (_ BitVec 32))) )
))
(declare-fun lt!642226 () SeekEntryResult!12006)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98919 0))(
  ( (array!98920 (arr!47743 (Array (_ BitVec 32) (_ BitVec 64))) (size!48294 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98919)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98919 (_ BitVec 32)) SeekEntryResult!12006)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468340 (= lt!642226 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47743 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47743 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98920 (store (arr!47743 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48294 a!2862)) mask!2687))))

(declare-fun b!1468341 () Bool)

(declare-fun e!824561 () Bool)

(assert (=> b!1468341 (= e!824561 e!824559)))

(declare-fun res!996990 () Bool)

(assert (=> b!1468341 (=> (not res!996990) (not e!824559))))

(declare-fun lt!642225 () SeekEntryResult!12006)

(assert (=> b!1468341 (= res!996990 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47743 a!2862) j!93) mask!2687) (select (arr!47743 a!2862) j!93) a!2862 mask!2687) lt!642225))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468341 (= lt!642225 (Intermediate!12006 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468342 () Bool)

(declare-fun res!996996 () Bool)

(assert (=> b!1468342 (=> (not res!996996) (not e!824561))))

(declare-datatypes ((List!34424 0))(
  ( (Nil!34421) (Cons!34420 (h!35770 (_ BitVec 64)) (t!49125 List!34424)) )
))
(declare-fun arrayNoDuplicates!0 (array!98919 (_ BitVec 32) List!34424) Bool)

(assert (=> b!1468342 (= res!996996 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34421))))

(declare-fun b!1468343 () Bool)

(declare-fun res!996995 () Bool)

(assert (=> b!1468343 (=> (not res!996995) (not e!824559))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1468343 (= res!996995 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47743 a!2862) j!93) a!2862 mask!2687) lt!642225))))

(declare-fun b!1468344 () Bool)

(declare-fun res!996989 () Bool)

(assert (=> b!1468344 (=> (not res!996989) (not e!824561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98919 (_ BitVec 32)) Bool)

(assert (=> b!1468344 (= res!996989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468345 () Bool)

(declare-fun res!996988 () Bool)

(assert (=> b!1468345 (=> (not res!996988) (not e!824561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468345 (= res!996988 (validKeyInArray!0 (select (arr!47743 a!2862) i!1006)))))

(declare-fun res!996994 () Bool)

(assert (=> start!125554 (=> (not res!996994) (not e!824561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125554 (= res!996994 (validMask!0 mask!2687))))

(assert (=> start!125554 e!824561))

(assert (=> start!125554 true))

(declare-fun array_inv!36688 (array!98919) Bool)

(assert (=> start!125554 (array_inv!36688 a!2862)))

(declare-fun b!1468346 () Bool)

(declare-fun res!996991 () Bool)

(assert (=> b!1468346 (=> (not res!996991) (not e!824561))))

(assert (=> b!1468346 (= res!996991 (and (= (size!48294 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48294 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48294 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468347 () Bool)

(declare-fun res!996993 () Bool)

(assert (=> b!1468347 (=> (not res!996993) (not e!824561))))

(assert (=> b!1468347 (= res!996993 (validKeyInArray!0 (select (arr!47743 a!2862) j!93)))))

(declare-fun b!1468348 () Bool)

(declare-fun res!996992 () Bool)

(assert (=> b!1468348 (=> (not res!996992) (not e!824561))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468348 (= res!996992 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48294 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48294 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48294 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47743 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125554 res!996994) b!1468346))

(assert (= (and b!1468346 res!996991) b!1468345))

(assert (= (and b!1468345 res!996988) b!1468347))

(assert (= (and b!1468347 res!996993) b!1468344))

(assert (= (and b!1468344 res!996989) b!1468342))

(assert (= (and b!1468342 res!996996) b!1468348))

(assert (= (and b!1468348 res!996992) b!1468341))

(assert (= (and b!1468341 res!996990) b!1468343))

(assert (= (and b!1468343 res!996995) b!1468340))

(declare-fun m!1355457 () Bool)

(assert (=> b!1468344 m!1355457))

(declare-fun m!1355459 () Bool)

(assert (=> start!125554 m!1355459))

(declare-fun m!1355461 () Bool)

(assert (=> start!125554 m!1355461))

(declare-fun m!1355463 () Bool)

(assert (=> b!1468348 m!1355463))

(declare-fun m!1355465 () Bool)

(assert (=> b!1468348 m!1355465))

(declare-fun m!1355467 () Bool)

(assert (=> b!1468343 m!1355467))

(assert (=> b!1468343 m!1355467))

(declare-fun m!1355469 () Bool)

(assert (=> b!1468343 m!1355469))

(declare-fun m!1355471 () Bool)

(assert (=> b!1468345 m!1355471))

(assert (=> b!1468345 m!1355471))

(declare-fun m!1355473 () Bool)

(assert (=> b!1468345 m!1355473))

(assert (=> b!1468341 m!1355467))

(assert (=> b!1468341 m!1355467))

(declare-fun m!1355475 () Bool)

(assert (=> b!1468341 m!1355475))

(assert (=> b!1468341 m!1355475))

(assert (=> b!1468341 m!1355467))

(declare-fun m!1355477 () Bool)

(assert (=> b!1468341 m!1355477))

(declare-fun m!1355479 () Bool)

(assert (=> b!1468342 m!1355479))

(assert (=> b!1468347 m!1355467))

(assert (=> b!1468347 m!1355467))

(declare-fun m!1355481 () Bool)

(assert (=> b!1468347 m!1355481))

(assert (=> b!1468340 m!1355463))

(declare-fun m!1355483 () Bool)

(assert (=> b!1468340 m!1355483))

(assert (=> b!1468340 m!1355483))

(declare-fun m!1355485 () Bool)

(assert (=> b!1468340 m!1355485))

(assert (=> b!1468340 m!1355485))

(assert (=> b!1468340 m!1355483))

(declare-fun m!1355487 () Bool)

(assert (=> b!1468340 m!1355487))

(push 1)

