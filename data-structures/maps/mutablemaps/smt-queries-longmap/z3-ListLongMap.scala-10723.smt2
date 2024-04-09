; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125520 () Bool)

(assert start!125520)

(declare-fun b!1467881 () Bool)

(declare-fun res!996537 () Bool)

(declare-fun e!824407 () Bool)

(assert (=> b!1467881 (=> (not res!996537) (not e!824407))))

(declare-datatypes ((array!98885 0))(
  ( (array!98886 (arr!47726 (Array (_ BitVec 32) (_ BitVec 64))) (size!48277 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98885)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467881 (= res!996537 (validKeyInArray!0 (select (arr!47726 a!2862) j!93)))))

(declare-fun b!1467882 () Bool)

(declare-fun res!996530 () Bool)

(assert (=> b!1467882 (=> (not res!996530) (not e!824407))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98885 (_ BitVec 32)) Bool)

(assert (=> b!1467882 (= res!996530 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467883 () Bool)

(declare-fun res!996531 () Bool)

(assert (=> b!1467883 (=> (not res!996531) (not e!824407))))

(declare-datatypes ((List!34407 0))(
  ( (Nil!34404) (Cons!34403 (h!35753 (_ BitVec 64)) (t!49108 List!34407)) )
))
(declare-fun arrayNoDuplicates!0 (array!98885 (_ BitVec 32) List!34407) Bool)

(assert (=> b!1467883 (= res!996531 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34404))))

(declare-fun b!1467884 () Bool)

(declare-fun e!824408 () Bool)

(assert (=> b!1467884 (= e!824407 e!824408)))

(declare-fun res!996532 () Bool)

(assert (=> b!1467884 (=> (not res!996532) (not e!824408))))

(declare-datatypes ((SeekEntryResult!11989 0))(
  ( (MissingZero!11989 (index!50347 (_ BitVec 32))) (Found!11989 (index!50348 (_ BitVec 32))) (Intermediate!11989 (undefined!12801 Bool) (index!50349 (_ BitVec 32)) (x!131945 (_ BitVec 32))) (Undefined!11989) (MissingVacant!11989 (index!50350 (_ BitVec 32))) )
))
(declare-fun lt!642124 () SeekEntryResult!11989)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98885 (_ BitVec 32)) SeekEntryResult!11989)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467884 (= res!996532 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47726 a!2862) j!93) mask!2687) (select (arr!47726 a!2862) j!93) a!2862 mask!2687) lt!642124))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467884 (= lt!642124 (Intermediate!11989 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467885 () Bool)

(declare-fun res!996529 () Bool)

(assert (=> b!1467885 (=> (not res!996529) (not e!824408))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1467885 (= res!996529 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47726 a!2862) j!93) a!2862 mask!2687) lt!642124))))

(declare-fun b!1467886 () Bool)

(assert (=> b!1467886 (= e!824408 false)))

(declare-fun lt!642123 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467886 (= lt!642123 (toIndex!0 (select (store (arr!47726 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun res!996536 () Bool)

(assert (=> start!125520 (=> (not res!996536) (not e!824407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125520 (= res!996536 (validMask!0 mask!2687))))

(assert (=> start!125520 e!824407))

(assert (=> start!125520 true))

(declare-fun array_inv!36671 (array!98885) Bool)

(assert (=> start!125520 (array_inv!36671 a!2862)))

(declare-fun b!1467887 () Bool)

(declare-fun res!996534 () Bool)

(assert (=> b!1467887 (=> (not res!996534) (not e!824407))))

(assert (=> b!1467887 (= res!996534 (validKeyInArray!0 (select (arr!47726 a!2862) i!1006)))))

(declare-fun b!1467888 () Bool)

(declare-fun res!996533 () Bool)

(assert (=> b!1467888 (=> (not res!996533) (not e!824407))))

(assert (=> b!1467888 (= res!996533 (and (= (size!48277 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48277 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48277 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467889 () Bool)

(declare-fun res!996535 () Bool)

(assert (=> b!1467889 (=> (not res!996535) (not e!824407))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1467889 (= res!996535 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48277 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48277 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48277 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47726 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!125520 res!996536) b!1467888))

(assert (= (and b!1467888 res!996533) b!1467887))

(assert (= (and b!1467887 res!996534) b!1467881))

(assert (= (and b!1467881 res!996537) b!1467882))

(assert (= (and b!1467882 res!996530) b!1467883))

(assert (= (and b!1467883 res!996531) b!1467889))

(assert (= (and b!1467889 res!996535) b!1467884))

(assert (= (and b!1467884 res!996532) b!1467885))

(assert (= (and b!1467885 res!996529) b!1467886))

(declare-fun m!1354917 () Bool)

(assert (=> b!1467884 m!1354917))

(assert (=> b!1467884 m!1354917))

(declare-fun m!1354919 () Bool)

(assert (=> b!1467884 m!1354919))

(assert (=> b!1467884 m!1354919))

(assert (=> b!1467884 m!1354917))

(declare-fun m!1354921 () Bool)

(assert (=> b!1467884 m!1354921))

(assert (=> b!1467885 m!1354917))

(assert (=> b!1467885 m!1354917))

(declare-fun m!1354923 () Bool)

(assert (=> b!1467885 m!1354923))

(declare-fun m!1354925 () Bool)

(assert (=> b!1467883 m!1354925))

(declare-fun m!1354927 () Bool)

(assert (=> b!1467882 m!1354927))

(declare-fun m!1354929 () Bool)

(assert (=> b!1467886 m!1354929))

(declare-fun m!1354931 () Bool)

(assert (=> b!1467886 m!1354931))

(assert (=> b!1467886 m!1354931))

(declare-fun m!1354933 () Bool)

(assert (=> b!1467886 m!1354933))

(declare-fun m!1354935 () Bool)

(assert (=> start!125520 m!1354935))

(declare-fun m!1354937 () Bool)

(assert (=> start!125520 m!1354937))

(assert (=> b!1467881 m!1354917))

(assert (=> b!1467881 m!1354917))

(declare-fun m!1354939 () Bool)

(assert (=> b!1467881 m!1354939))

(declare-fun m!1354941 () Bool)

(assert (=> b!1467887 m!1354941))

(assert (=> b!1467887 m!1354941))

(declare-fun m!1354943 () Bool)

(assert (=> b!1467887 m!1354943))

(assert (=> b!1467889 m!1354929))

(declare-fun m!1354945 () Bool)

(assert (=> b!1467889 m!1354945))

(check-sat (not b!1467886) (not start!125520) (not b!1467887) (not b!1467883) (not b!1467884) (not b!1467882) (not b!1467881) (not b!1467885))
