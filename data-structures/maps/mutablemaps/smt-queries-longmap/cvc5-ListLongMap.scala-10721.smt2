; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125506 () Bool)

(assert start!125506)

(declare-fun b!1467699 () Bool)

(declare-fun res!996352 () Bool)

(declare-fun e!824351 () Bool)

(assert (=> b!1467699 (=> (not res!996352) (not e!824351))))

(declare-datatypes ((array!98871 0))(
  ( (array!98872 (arr!47719 (Array (_ BitVec 32) (_ BitVec 64))) (size!48270 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98871)

(declare-datatypes ((List!34400 0))(
  ( (Nil!34397) (Cons!34396 (h!35746 (_ BitVec 64)) (t!49101 List!34400)) )
))
(declare-fun arrayNoDuplicates!0 (array!98871 (_ BitVec 32) List!34400) Bool)

(assert (=> b!1467699 (= res!996352 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34397))))

(declare-fun b!1467700 () Bool)

(assert (=> b!1467700 (= e!824351 false)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11982 0))(
  ( (MissingZero!11982 (index!50319 (_ BitVec 32))) (Found!11982 (index!50320 (_ BitVec 32))) (Intermediate!11982 (undefined!12794 Bool) (index!50321 (_ BitVec 32)) (x!131922 (_ BitVec 32))) (Undefined!11982) (MissingVacant!11982 (index!50322 (_ BitVec 32))) )
))
(declare-fun lt!642088 () SeekEntryResult!11982)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98871 (_ BitVec 32)) SeekEntryResult!11982)

(assert (=> b!1467700 (= lt!642088 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47719 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467701 () Bool)

(declare-fun res!996347 () Bool)

(assert (=> b!1467701 (=> (not res!996347) (not e!824351))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98871 (_ BitVec 32)) Bool)

(assert (=> b!1467701 (= res!996347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467702 () Bool)

(declare-fun res!996354 () Bool)

(assert (=> b!1467702 (=> (not res!996354) (not e!824351))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467702 (= res!996354 (validKeyInArray!0 (select (arr!47719 a!2862) j!93)))))

(declare-fun b!1467703 () Bool)

(declare-fun res!996348 () Bool)

(assert (=> b!1467703 (=> (not res!996348) (not e!824351))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467703 (= res!996348 (and (= (size!48270 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48270 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48270 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467704 () Bool)

(declare-fun res!996350 () Bool)

(assert (=> b!1467704 (=> (not res!996350) (not e!824351))))

(assert (=> b!1467704 (= res!996350 (validKeyInArray!0 (select (arr!47719 a!2862) i!1006)))))

(declare-fun res!996353 () Bool)

(assert (=> start!125506 (=> (not res!996353) (not e!824351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125506 (= res!996353 (validMask!0 mask!2687))))

(assert (=> start!125506 e!824351))

(assert (=> start!125506 true))

(declare-fun array_inv!36664 (array!98871) Bool)

(assert (=> start!125506 (array_inv!36664 a!2862)))

(declare-fun b!1467705 () Bool)

(declare-fun res!996349 () Bool)

(assert (=> b!1467705 (=> (not res!996349) (not e!824351))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467705 (= res!996349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47719 a!2862) j!93) mask!2687) (select (arr!47719 a!2862) j!93) a!2862 mask!2687) (Intermediate!11982 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun b!1467706 () Bool)

(declare-fun res!996351 () Bool)

(assert (=> b!1467706 (=> (not res!996351) (not e!824351))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467706 (= res!996351 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48270 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48270 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48270 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47719 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125506 res!996353) b!1467703))

(assert (= (and b!1467703 res!996348) b!1467704))

(assert (= (and b!1467704 res!996350) b!1467702))

(assert (= (and b!1467702 res!996354) b!1467701))

(assert (= (and b!1467701 res!996347) b!1467699))

(assert (= (and b!1467699 res!996352) b!1467706))

(assert (= (and b!1467706 res!996351) b!1467705))

(assert (= (and b!1467705 res!996349) b!1467700))

(declare-fun m!1354719 () Bool)

(assert (=> b!1467700 m!1354719))

(assert (=> b!1467700 m!1354719))

(declare-fun m!1354721 () Bool)

(assert (=> b!1467700 m!1354721))

(declare-fun m!1354723 () Bool)

(assert (=> b!1467704 m!1354723))

(assert (=> b!1467704 m!1354723))

(declare-fun m!1354725 () Bool)

(assert (=> b!1467704 m!1354725))

(declare-fun m!1354727 () Bool)

(assert (=> start!125506 m!1354727))

(declare-fun m!1354729 () Bool)

(assert (=> start!125506 m!1354729))

(declare-fun m!1354731 () Bool)

(assert (=> b!1467706 m!1354731))

(declare-fun m!1354733 () Bool)

(assert (=> b!1467706 m!1354733))

(declare-fun m!1354735 () Bool)

(assert (=> b!1467701 m!1354735))

(assert (=> b!1467702 m!1354719))

(assert (=> b!1467702 m!1354719))

(declare-fun m!1354737 () Bool)

(assert (=> b!1467702 m!1354737))

(assert (=> b!1467705 m!1354719))

(assert (=> b!1467705 m!1354719))

(declare-fun m!1354739 () Bool)

(assert (=> b!1467705 m!1354739))

(assert (=> b!1467705 m!1354739))

(assert (=> b!1467705 m!1354719))

(declare-fun m!1354741 () Bool)

(assert (=> b!1467705 m!1354741))

(declare-fun m!1354743 () Bool)

(assert (=> b!1467699 m!1354743))

(push 1)

(assert (not b!1467700))

(assert (not b!1467702))

(assert (not b!1467705))

(assert (not b!1467701))

(assert (not b!1467704))

(assert (not start!125506))

(assert (not b!1467699))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

