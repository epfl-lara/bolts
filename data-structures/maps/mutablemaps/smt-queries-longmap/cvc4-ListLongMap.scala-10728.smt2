; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125552 () Bool)

(assert start!125552)

(declare-fun b!1468313 () Bool)

(declare-fun res!996964 () Bool)

(declare-fun e!824552 () Bool)

(assert (=> b!1468313 (=> (not res!996964) (not e!824552))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98917 0))(
  ( (array!98918 (arr!47742 (Array (_ BitVec 32) (_ BitVec 64))) (size!48293 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98917)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12005 0))(
  ( (MissingZero!12005 (index!50411 (_ BitVec 32))) (Found!12005 (index!50412 (_ BitVec 32))) (Intermediate!12005 (undefined!12817 Bool) (index!50413 (_ BitVec 32)) (x!132001 (_ BitVec 32))) (Undefined!12005) (MissingVacant!12005 (index!50414 (_ BitVec 32))) )
))
(declare-fun lt!642220 () SeekEntryResult!12005)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98917 (_ BitVec 32)) SeekEntryResult!12005)

(assert (=> b!1468313 (= res!996964 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47742 a!2862) j!93) a!2862 mask!2687) lt!642220))))

(declare-fun b!1468314 () Bool)

(assert (=> b!1468314 (= e!824552 false)))

(declare-fun lt!642219 () SeekEntryResult!12005)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468314 (= lt!642219 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47742 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47742 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98918 (store (arr!47742 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48293 a!2862)) mask!2687))))

(declare-fun b!1468315 () Bool)

(declare-fun res!996967 () Bool)

(declare-fun e!824550 () Bool)

(assert (=> b!1468315 (=> (not res!996967) (not e!824550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98917 (_ BitVec 32)) Bool)

(assert (=> b!1468315 (= res!996967 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468316 () Bool)

(declare-fun res!996966 () Bool)

(assert (=> b!1468316 (=> (not res!996966) (not e!824550))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468316 (= res!996966 (validKeyInArray!0 (select (arr!47742 a!2862) i!1006)))))

(declare-fun b!1468317 () Bool)

(assert (=> b!1468317 (= e!824550 e!824552)))

(declare-fun res!996969 () Bool)

(assert (=> b!1468317 (=> (not res!996969) (not e!824552))))

(assert (=> b!1468317 (= res!996969 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47742 a!2862) j!93) mask!2687) (select (arr!47742 a!2862) j!93) a!2862 mask!2687) lt!642220))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468317 (= lt!642220 (Intermediate!12005 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468318 () Bool)

(declare-fun res!996962 () Bool)

(assert (=> b!1468318 (=> (not res!996962) (not e!824550))))

(assert (=> b!1468318 (= res!996962 (and (= (size!48293 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48293 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48293 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!996965 () Bool)

(assert (=> start!125552 (=> (not res!996965) (not e!824550))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125552 (= res!996965 (validMask!0 mask!2687))))

(assert (=> start!125552 e!824550))

(assert (=> start!125552 true))

(declare-fun array_inv!36687 (array!98917) Bool)

(assert (=> start!125552 (array_inv!36687 a!2862)))

(declare-fun b!1468319 () Bool)

(declare-fun res!996968 () Bool)

(assert (=> b!1468319 (=> (not res!996968) (not e!824550))))

(assert (=> b!1468319 (= res!996968 (validKeyInArray!0 (select (arr!47742 a!2862) j!93)))))

(declare-fun b!1468320 () Bool)

(declare-fun res!996963 () Bool)

(assert (=> b!1468320 (=> (not res!996963) (not e!824550))))

(declare-datatypes ((List!34423 0))(
  ( (Nil!34420) (Cons!34419 (h!35769 (_ BitVec 64)) (t!49124 List!34423)) )
))
(declare-fun arrayNoDuplicates!0 (array!98917 (_ BitVec 32) List!34423) Bool)

(assert (=> b!1468320 (= res!996963 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34420))))

(declare-fun b!1468321 () Bool)

(declare-fun res!996961 () Bool)

(assert (=> b!1468321 (=> (not res!996961) (not e!824550))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468321 (= res!996961 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48293 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48293 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48293 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47742 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125552 res!996965) b!1468318))

(assert (= (and b!1468318 res!996962) b!1468316))

(assert (= (and b!1468316 res!996966) b!1468319))

(assert (= (and b!1468319 res!996968) b!1468315))

(assert (= (and b!1468315 res!996967) b!1468320))

(assert (= (and b!1468320 res!996963) b!1468321))

(assert (= (and b!1468321 res!996961) b!1468317))

(assert (= (and b!1468317 res!996969) b!1468313))

(assert (= (and b!1468313 res!996964) b!1468314))

(declare-fun m!1355425 () Bool)

(assert (=> b!1468320 m!1355425))

(declare-fun m!1355427 () Bool)

(assert (=> b!1468317 m!1355427))

(assert (=> b!1468317 m!1355427))

(declare-fun m!1355429 () Bool)

(assert (=> b!1468317 m!1355429))

(assert (=> b!1468317 m!1355429))

(assert (=> b!1468317 m!1355427))

(declare-fun m!1355431 () Bool)

(assert (=> b!1468317 m!1355431))

(declare-fun m!1355433 () Bool)

(assert (=> b!1468321 m!1355433))

(declare-fun m!1355435 () Bool)

(assert (=> b!1468321 m!1355435))

(assert (=> b!1468313 m!1355427))

(assert (=> b!1468313 m!1355427))

(declare-fun m!1355437 () Bool)

(assert (=> b!1468313 m!1355437))

(assert (=> b!1468314 m!1355433))

(declare-fun m!1355439 () Bool)

(assert (=> b!1468314 m!1355439))

(assert (=> b!1468314 m!1355439))

(declare-fun m!1355441 () Bool)

(assert (=> b!1468314 m!1355441))

(assert (=> b!1468314 m!1355441))

(assert (=> b!1468314 m!1355439))

(declare-fun m!1355443 () Bool)

(assert (=> b!1468314 m!1355443))

(assert (=> b!1468319 m!1355427))

(assert (=> b!1468319 m!1355427))

(declare-fun m!1355445 () Bool)

(assert (=> b!1468319 m!1355445))

(declare-fun m!1355447 () Bool)

(assert (=> start!125552 m!1355447))

(declare-fun m!1355449 () Bool)

(assert (=> start!125552 m!1355449))

(declare-fun m!1355451 () Bool)

(assert (=> b!1468316 m!1355451))

(assert (=> b!1468316 m!1355451))

(declare-fun m!1355453 () Bool)

(assert (=> b!1468316 m!1355453))

(declare-fun m!1355455 () Bool)

(assert (=> b!1468315 m!1355455))

(push 1)

(assert (not start!125552))

(assert (not b!1468320))

(assert (not b!1468313))

(assert (not b!1468316))

(assert (not b!1468314))

(assert (not b!1468319))

(assert (not b!1468315))

