; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125498 () Bool)

(assert start!125498)

(declare-fun b!1467603 () Bool)

(declare-fun res!996252 () Bool)

(declare-fun e!824326 () Bool)

(assert (=> b!1467603 (=> (not res!996252) (not e!824326))))

(declare-datatypes ((array!98863 0))(
  ( (array!98864 (arr!47715 (Array (_ BitVec 32) (_ BitVec 64))) (size!48266 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98863)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467603 (= res!996252 (validKeyInArray!0 (select (arr!47715 a!2862) j!93)))))

(declare-fun b!1467604 () Bool)

(declare-fun res!996253 () Bool)

(assert (=> b!1467604 (=> (not res!996253) (not e!824326))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467604 (= res!996253 (and (= (size!48266 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48266 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48266 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467605 () Bool)

(assert (=> b!1467605 (= e!824326 false)))

(declare-datatypes ((SeekEntryResult!11978 0))(
  ( (MissingZero!11978 (index!50303 (_ BitVec 32))) (Found!11978 (index!50304 (_ BitVec 32))) (Intermediate!11978 (undefined!12790 Bool) (index!50305 (_ BitVec 32)) (x!131902 (_ BitVec 32))) (Undefined!11978) (MissingVacant!11978 (index!50306 (_ BitVec 32))) )
))
(declare-fun lt!642076 () SeekEntryResult!11978)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98863 (_ BitVec 32)) SeekEntryResult!11978)

(assert (=> b!1467605 (= lt!642076 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47715 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467606 () Bool)

(declare-fun res!996258 () Bool)

(assert (=> b!1467606 (=> (not res!996258) (not e!824326))))

(assert (=> b!1467606 (= res!996258 (validKeyInArray!0 (select (arr!47715 a!2862) i!1006)))))

(declare-fun b!1467607 () Bool)

(declare-fun res!996255 () Bool)

(assert (=> b!1467607 (=> (not res!996255) (not e!824326))))

(declare-datatypes ((List!34396 0))(
  ( (Nil!34393) (Cons!34392 (h!35742 (_ BitVec 64)) (t!49097 List!34396)) )
))
(declare-fun arrayNoDuplicates!0 (array!98863 (_ BitVec 32) List!34396) Bool)

(assert (=> b!1467607 (= res!996255 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34393))))

(declare-fun b!1467608 () Bool)

(declare-fun res!996257 () Bool)

(assert (=> b!1467608 (=> (not res!996257) (not e!824326))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467608 (= res!996257 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47715 a!2862) j!93) mask!2687) (select (arr!47715 a!2862) j!93) a!2862 mask!2687) (Intermediate!11978 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun b!1467609 () Bool)

(declare-fun res!996251 () Bool)

(assert (=> b!1467609 (=> (not res!996251) (not e!824326))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98863 (_ BitVec 32)) Bool)

(assert (=> b!1467609 (= res!996251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467610 () Bool)

(declare-fun res!996254 () Bool)

(assert (=> b!1467610 (=> (not res!996254) (not e!824326))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467610 (= res!996254 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48266 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48266 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48266 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47715 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!996256 () Bool)

(assert (=> start!125498 (=> (not res!996256) (not e!824326))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125498 (= res!996256 (validMask!0 mask!2687))))

(assert (=> start!125498 e!824326))

(assert (=> start!125498 true))

(declare-fun array_inv!36660 (array!98863) Bool)

(assert (=> start!125498 (array_inv!36660 a!2862)))

(assert (= (and start!125498 res!996256) b!1467604))

(assert (= (and b!1467604 res!996253) b!1467606))

(assert (= (and b!1467606 res!996258) b!1467603))

(assert (= (and b!1467603 res!996252) b!1467609))

(assert (= (and b!1467609 res!996251) b!1467607))

(assert (= (and b!1467607 res!996255) b!1467610))

(assert (= (and b!1467610 res!996254) b!1467608))

(assert (= (and b!1467608 res!996257) b!1467605))

(declare-fun m!1354615 () Bool)

(assert (=> b!1467605 m!1354615))

(assert (=> b!1467605 m!1354615))

(declare-fun m!1354617 () Bool)

(assert (=> b!1467605 m!1354617))

(declare-fun m!1354619 () Bool)

(assert (=> b!1467609 m!1354619))

(declare-fun m!1354621 () Bool)

(assert (=> b!1467607 m!1354621))

(assert (=> b!1467603 m!1354615))

(assert (=> b!1467603 m!1354615))

(declare-fun m!1354623 () Bool)

(assert (=> b!1467603 m!1354623))

(declare-fun m!1354625 () Bool)

(assert (=> start!125498 m!1354625))

(declare-fun m!1354627 () Bool)

(assert (=> start!125498 m!1354627))

(declare-fun m!1354629 () Bool)

(assert (=> b!1467606 m!1354629))

(assert (=> b!1467606 m!1354629))

(declare-fun m!1354631 () Bool)

(assert (=> b!1467606 m!1354631))

(assert (=> b!1467608 m!1354615))

(assert (=> b!1467608 m!1354615))

(declare-fun m!1354633 () Bool)

(assert (=> b!1467608 m!1354633))

(assert (=> b!1467608 m!1354633))

(assert (=> b!1467608 m!1354615))

(declare-fun m!1354635 () Bool)

(assert (=> b!1467608 m!1354635))

(declare-fun m!1354637 () Bool)

(assert (=> b!1467610 m!1354637))

(declare-fun m!1354639 () Bool)

(assert (=> b!1467610 m!1354639))

(push 1)

(assert (not b!1467609))

(assert (not start!125498))

(assert (not b!1467606))

(assert (not b!1467607))

(assert (not b!1467608))

(assert (not b!1467603))

(assert (not b!1467605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

