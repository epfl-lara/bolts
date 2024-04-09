; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125494 () Bool)

(assert start!125494)

(declare-fun b!1467555 () Bool)

(declare-fun e!824314 () Bool)

(assert (=> b!1467555 (= e!824314 false)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98859 0))(
  ( (array!98860 (arr!47713 (Array (_ BitVec 32) (_ BitVec 64))) (size!48264 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98859)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11976 0))(
  ( (MissingZero!11976 (index!50295 (_ BitVec 32))) (Found!11976 (index!50296 (_ BitVec 32))) (Intermediate!11976 (undefined!12788 Bool) (index!50297 (_ BitVec 32)) (x!131900 (_ BitVec 32))) (Undefined!11976) (MissingVacant!11976 (index!50298 (_ BitVec 32))) )
))
(declare-fun lt!642070 () SeekEntryResult!11976)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98859 (_ BitVec 32)) SeekEntryResult!11976)

(assert (=> b!1467555 (= lt!642070 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47713 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467556 () Bool)

(declare-fun res!996208 () Bool)

(assert (=> b!1467556 (=> (not res!996208) (not e!824314))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467556 (= res!996208 (and (= (size!48264 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48264 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48264 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467557 () Bool)

(declare-fun res!996206 () Bool)

(assert (=> b!1467557 (=> (not res!996206) (not e!824314))))

(declare-datatypes ((List!34394 0))(
  ( (Nil!34391) (Cons!34390 (h!35740 (_ BitVec 64)) (t!49095 List!34394)) )
))
(declare-fun arrayNoDuplicates!0 (array!98859 (_ BitVec 32) List!34394) Bool)

(assert (=> b!1467557 (= res!996206 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34391))))

(declare-fun res!996203 () Bool)

(assert (=> start!125494 (=> (not res!996203) (not e!824314))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125494 (= res!996203 (validMask!0 mask!2687))))

(assert (=> start!125494 e!824314))

(assert (=> start!125494 true))

(declare-fun array_inv!36658 (array!98859) Bool)

(assert (=> start!125494 (array_inv!36658 a!2862)))

(declare-fun b!1467558 () Bool)

(declare-fun res!996205 () Bool)

(assert (=> b!1467558 (=> (not res!996205) (not e!824314))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467558 (= res!996205 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47713 a!2862) j!93) mask!2687) (select (arr!47713 a!2862) j!93) a!2862 mask!2687) (Intermediate!11976 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun b!1467559 () Bool)

(declare-fun res!996209 () Bool)

(assert (=> b!1467559 (=> (not res!996209) (not e!824314))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98859 (_ BitVec 32)) Bool)

(assert (=> b!1467559 (= res!996209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467560 () Bool)

(declare-fun res!996204 () Bool)

(assert (=> b!1467560 (=> (not res!996204) (not e!824314))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467560 (= res!996204 (validKeyInArray!0 (select (arr!47713 a!2862) j!93)))))

(declare-fun b!1467561 () Bool)

(declare-fun res!996207 () Bool)

(assert (=> b!1467561 (=> (not res!996207) (not e!824314))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467561 (= res!996207 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48264 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48264 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48264 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47713 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467562 () Bool)

(declare-fun res!996210 () Bool)

(assert (=> b!1467562 (=> (not res!996210) (not e!824314))))

(assert (=> b!1467562 (= res!996210 (validKeyInArray!0 (select (arr!47713 a!2862) i!1006)))))

(assert (= (and start!125494 res!996203) b!1467556))

(assert (= (and b!1467556 res!996208) b!1467562))

(assert (= (and b!1467562 res!996210) b!1467560))

(assert (= (and b!1467560 res!996204) b!1467559))

(assert (= (and b!1467559 res!996209) b!1467557))

(assert (= (and b!1467557 res!996206) b!1467561))

(assert (= (and b!1467561 res!996207) b!1467558))

(assert (= (and b!1467558 res!996205) b!1467555))

(declare-fun m!1354563 () Bool)

(assert (=> b!1467561 m!1354563))

(declare-fun m!1354565 () Bool)

(assert (=> b!1467561 m!1354565))

(declare-fun m!1354567 () Bool)

(assert (=> b!1467559 m!1354567))

(declare-fun m!1354569 () Bool)

(assert (=> start!125494 m!1354569))

(declare-fun m!1354571 () Bool)

(assert (=> start!125494 m!1354571))

(declare-fun m!1354573 () Bool)

(assert (=> b!1467557 m!1354573))

(declare-fun m!1354575 () Bool)

(assert (=> b!1467560 m!1354575))

(assert (=> b!1467560 m!1354575))

(declare-fun m!1354577 () Bool)

(assert (=> b!1467560 m!1354577))

(assert (=> b!1467558 m!1354575))

(assert (=> b!1467558 m!1354575))

(declare-fun m!1354579 () Bool)

(assert (=> b!1467558 m!1354579))

(assert (=> b!1467558 m!1354579))

(assert (=> b!1467558 m!1354575))

(declare-fun m!1354581 () Bool)

(assert (=> b!1467558 m!1354581))

(assert (=> b!1467555 m!1354575))

(assert (=> b!1467555 m!1354575))

(declare-fun m!1354583 () Bool)

(assert (=> b!1467555 m!1354583))

(declare-fun m!1354585 () Bool)

(assert (=> b!1467562 m!1354585))

(assert (=> b!1467562 m!1354585))

(declare-fun m!1354587 () Bool)

(assert (=> b!1467562 m!1354587))

(push 1)

(assert (not b!1467557))

(assert (not b!1467558))

(assert (not start!125494))

(assert (not b!1467559))

(assert (not b!1467562))

(assert (not b!1467555))

(assert (not b!1467560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

