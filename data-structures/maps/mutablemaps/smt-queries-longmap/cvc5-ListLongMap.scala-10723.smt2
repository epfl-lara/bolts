; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125518 () Bool)

(assert start!125518)

(declare-fun res!996510 () Bool)

(declare-fun e!824399 () Bool)

(assert (=> start!125518 (=> (not res!996510) (not e!824399))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125518 (= res!996510 (validMask!0 mask!2687))))

(assert (=> start!125518 e!824399))

(assert (=> start!125518 true))

(declare-datatypes ((array!98883 0))(
  ( (array!98884 (arr!47725 (Array (_ BitVec 32) (_ BitVec 64))) (size!48276 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98883)

(declare-fun array_inv!36670 (array!98883) Bool)

(assert (=> start!125518 (array_inv!36670 a!2862)))

(declare-fun b!1467854 () Bool)

(declare-fun e!824397 () Bool)

(assert (=> b!1467854 (= e!824399 e!824397)))

(declare-fun res!996504 () Bool)

(assert (=> b!1467854 (=> (not res!996504) (not e!824397))))

(declare-datatypes ((SeekEntryResult!11988 0))(
  ( (MissingZero!11988 (index!50343 (_ BitVec 32))) (Found!11988 (index!50344 (_ BitVec 32))) (Intermediate!11988 (undefined!12800 Bool) (index!50345 (_ BitVec 32)) (x!131944 (_ BitVec 32))) (Undefined!11988) (MissingVacant!11988 (index!50346 (_ BitVec 32))) )
))
(declare-fun lt!642118 () SeekEntryResult!11988)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98883 (_ BitVec 32)) SeekEntryResult!11988)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467854 (= res!996504 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47725 a!2862) j!93) mask!2687) (select (arr!47725 a!2862) j!93) a!2862 mask!2687) lt!642118))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467854 (= lt!642118 (Intermediate!11988 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467855 () Bool)

(declare-fun res!996509 () Bool)

(assert (=> b!1467855 (=> (not res!996509) (not e!824399))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467855 (= res!996509 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48276 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48276 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48276 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47725 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467856 () Bool)

(declare-fun res!996502 () Bool)

(assert (=> b!1467856 (=> (not res!996502) (not e!824399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467856 (= res!996502 (validKeyInArray!0 (select (arr!47725 a!2862) i!1006)))))

(declare-fun b!1467857 () Bool)

(assert (=> b!1467857 (= e!824397 false)))

(declare-fun lt!642117 () (_ BitVec 32))

(assert (=> b!1467857 (= lt!642117 (toIndex!0 (select (store (arr!47725 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1467858 () Bool)

(declare-fun res!996506 () Bool)

(assert (=> b!1467858 (=> (not res!996506) (not e!824399))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98883 (_ BitVec 32)) Bool)

(assert (=> b!1467858 (= res!996506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467859 () Bool)

(declare-fun res!996505 () Bool)

(assert (=> b!1467859 (=> (not res!996505) (not e!824399))))

(assert (=> b!1467859 (= res!996505 (and (= (size!48276 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48276 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48276 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467860 () Bool)

(declare-fun res!996503 () Bool)

(assert (=> b!1467860 (=> (not res!996503) (not e!824399))))

(declare-datatypes ((List!34406 0))(
  ( (Nil!34403) (Cons!34402 (h!35752 (_ BitVec 64)) (t!49107 List!34406)) )
))
(declare-fun arrayNoDuplicates!0 (array!98883 (_ BitVec 32) List!34406) Bool)

(assert (=> b!1467860 (= res!996503 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34403))))

(declare-fun b!1467861 () Bool)

(declare-fun res!996508 () Bool)

(assert (=> b!1467861 (=> (not res!996508) (not e!824397))))

(assert (=> b!1467861 (= res!996508 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47725 a!2862) j!93) a!2862 mask!2687) lt!642118))))

(declare-fun b!1467862 () Bool)

(declare-fun res!996507 () Bool)

(assert (=> b!1467862 (=> (not res!996507) (not e!824399))))

(assert (=> b!1467862 (= res!996507 (validKeyInArray!0 (select (arr!47725 a!2862) j!93)))))

(assert (= (and start!125518 res!996510) b!1467859))

(assert (= (and b!1467859 res!996505) b!1467856))

(assert (= (and b!1467856 res!996502) b!1467862))

(assert (= (and b!1467862 res!996507) b!1467858))

(assert (= (and b!1467858 res!996506) b!1467860))

(assert (= (and b!1467860 res!996503) b!1467855))

(assert (= (and b!1467855 res!996509) b!1467854))

(assert (= (and b!1467854 res!996504) b!1467861))

(assert (= (and b!1467861 res!996508) b!1467857))

(declare-fun m!1354887 () Bool)

(assert (=> b!1467856 m!1354887))

(assert (=> b!1467856 m!1354887))

(declare-fun m!1354889 () Bool)

(assert (=> b!1467856 m!1354889))

(declare-fun m!1354891 () Bool)

(assert (=> b!1467860 m!1354891))

(declare-fun m!1354893 () Bool)

(assert (=> b!1467857 m!1354893))

(declare-fun m!1354895 () Bool)

(assert (=> b!1467857 m!1354895))

(assert (=> b!1467857 m!1354895))

(declare-fun m!1354897 () Bool)

(assert (=> b!1467857 m!1354897))

(declare-fun m!1354899 () Bool)

(assert (=> start!125518 m!1354899))

(declare-fun m!1354901 () Bool)

(assert (=> start!125518 m!1354901))

(declare-fun m!1354903 () Bool)

(assert (=> b!1467862 m!1354903))

(assert (=> b!1467862 m!1354903))

(declare-fun m!1354905 () Bool)

(assert (=> b!1467862 m!1354905))

(assert (=> b!1467854 m!1354903))

(assert (=> b!1467854 m!1354903))

(declare-fun m!1354907 () Bool)

(assert (=> b!1467854 m!1354907))

(assert (=> b!1467854 m!1354907))

(assert (=> b!1467854 m!1354903))

(declare-fun m!1354909 () Bool)

(assert (=> b!1467854 m!1354909))

(declare-fun m!1354911 () Bool)

(assert (=> b!1467858 m!1354911))

(assert (=> b!1467861 m!1354903))

(assert (=> b!1467861 m!1354903))

(declare-fun m!1354913 () Bool)

(assert (=> b!1467861 m!1354913))

(assert (=> b!1467855 m!1354893))

(declare-fun m!1354915 () Bool)

(assert (=> b!1467855 m!1354915))

(push 1)

