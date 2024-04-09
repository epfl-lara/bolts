; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125500 () Bool)

(assert start!125500)

(declare-fun b!1467627 () Bool)

(declare-fun res!996281 () Bool)

(declare-fun e!824333 () Bool)

(assert (=> b!1467627 (=> (not res!996281) (not e!824333))))

(declare-datatypes ((array!98865 0))(
  ( (array!98866 (arr!47716 (Array (_ BitVec 32) (_ BitVec 64))) (size!48267 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98865)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467627 (= res!996281 (validKeyInArray!0 (select (arr!47716 a!2862) i!1006)))))

(declare-fun b!1467628 () Bool)

(declare-fun res!996276 () Bool)

(assert (=> b!1467628 (=> (not res!996276) (not e!824333))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1467628 (= res!996276 (validKeyInArray!0 (select (arr!47716 a!2862) j!93)))))

(declare-fun b!1467629 () Bool)

(declare-fun res!996277 () Bool)

(assert (=> b!1467629 (=> (not res!996277) (not e!824333))))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1467629 (= res!996277 (and (= (size!48267 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48267 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48267 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467630 () Bool)

(declare-fun res!996280 () Bool)

(assert (=> b!1467630 (=> (not res!996280) (not e!824333))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467630 (= res!996280 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48267 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48267 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48267 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47716 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467631 () Bool)

(declare-fun res!996275 () Bool)

(assert (=> b!1467631 (=> (not res!996275) (not e!824333))))

(declare-datatypes ((List!34397 0))(
  ( (Nil!34394) (Cons!34393 (h!35743 (_ BitVec 64)) (t!49098 List!34397)) )
))
(declare-fun arrayNoDuplicates!0 (array!98865 (_ BitVec 32) List!34397) Bool)

(assert (=> b!1467631 (= res!996275 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34394))))

(declare-fun b!1467632 () Bool)

(assert (=> b!1467632 (= e!824333 false)))

(declare-datatypes ((SeekEntryResult!11979 0))(
  ( (MissingZero!11979 (index!50307 (_ BitVec 32))) (Found!11979 (index!50308 (_ BitVec 32))) (Intermediate!11979 (undefined!12791 Bool) (index!50309 (_ BitVec 32)) (x!131911 (_ BitVec 32))) (Undefined!11979) (MissingVacant!11979 (index!50310 (_ BitVec 32))) )
))
(declare-fun lt!642079 () SeekEntryResult!11979)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98865 (_ BitVec 32)) SeekEntryResult!11979)

(assert (=> b!1467632 (= lt!642079 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47716 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1467634 () Bool)

(declare-fun res!996279 () Bool)

(assert (=> b!1467634 (=> (not res!996279) (not e!824333))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98865 (_ BitVec 32)) Bool)

(assert (=> b!1467634 (= res!996279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!996278 () Bool)

(assert (=> start!125500 (=> (not res!996278) (not e!824333))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125500 (= res!996278 (validMask!0 mask!2687))))

(assert (=> start!125500 e!824333))

(assert (=> start!125500 true))

(declare-fun array_inv!36661 (array!98865) Bool)

(assert (=> start!125500 (array_inv!36661 a!2862)))

(declare-fun b!1467633 () Bool)

(declare-fun res!996282 () Bool)

(assert (=> b!1467633 (=> (not res!996282) (not e!824333))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467633 (= res!996282 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47716 a!2862) j!93) mask!2687) (select (arr!47716 a!2862) j!93) a!2862 mask!2687) (Intermediate!11979 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(assert (= (and start!125500 res!996278) b!1467629))

(assert (= (and b!1467629 res!996277) b!1467627))

(assert (= (and b!1467627 res!996281) b!1467628))

(assert (= (and b!1467628 res!996276) b!1467634))

(assert (= (and b!1467634 res!996279) b!1467631))

(assert (= (and b!1467631 res!996275) b!1467630))

(assert (= (and b!1467630 res!996280) b!1467633))

(assert (= (and b!1467633 res!996282) b!1467632))

(declare-fun m!1354641 () Bool)

(assert (=> start!125500 m!1354641))

(declare-fun m!1354643 () Bool)

(assert (=> start!125500 m!1354643))

(declare-fun m!1354645 () Bool)

(assert (=> b!1467628 m!1354645))

(assert (=> b!1467628 m!1354645))

(declare-fun m!1354647 () Bool)

(assert (=> b!1467628 m!1354647))

(declare-fun m!1354649 () Bool)

(assert (=> b!1467630 m!1354649))

(declare-fun m!1354651 () Bool)

(assert (=> b!1467630 m!1354651))

(assert (=> b!1467632 m!1354645))

(assert (=> b!1467632 m!1354645))

(declare-fun m!1354653 () Bool)

(assert (=> b!1467632 m!1354653))

(declare-fun m!1354655 () Bool)

(assert (=> b!1467631 m!1354655))

(declare-fun m!1354657 () Bool)

(assert (=> b!1467634 m!1354657))

(declare-fun m!1354659 () Bool)

(assert (=> b!1467627 m!1354659))

(assert (=> b!1467627 m!1354659))

(declare-fun m!1354661 () Bool)

(assert (=> b!1467627 m!1354661))

(assert (=> b!1467633 m!1354645))

(assert (=> b!1467633 m!1354645))

(declare-fun m!1354663 () Bool)

(assert (=> b!1467633 m!1354663))

(assert (=> b!1467633 m!1354663))

(assert (=> b!1467633 m!1354645))

(declare-fun m!1354665 () Bool)

(assert (=> b!1467633 m!1354665))

(push 1)

(assert (not start!125500))

(assert (not b!1467627))

(assert (not b!1467632))

(assert (not b!1467633))

(assert (not b!1467628))

(assert (not b!1467631))

(assert (not b!1467634))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

