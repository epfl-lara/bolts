; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125522 () Bool)

(assert start!125522)

(declare-fun b!1467908 () Bool)

(declare-fun res!996558 () Bool)

(declare-fun e!824416 () Bool)

(assert (=> b!1467908 (=> (not res!996558) (not e!824416))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98887 0))(
  ( (array!98888 (arr!47727 (Array (_ BitVec 32) (_ BitVec 64))) (size!48278 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98887)

(assert (=> b!1467908 (= res!996558 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48278 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48278 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48278 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47727 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!996560 () Bool)

(assert (=> start!125522 (=> (not res!996560) (not e!824416))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125522 (= res!996560 (validMask!0 mask!2687))))

(assert (=> start!125522 e!824416))

(assert (=> start!125522 true))

(declare-fun array_inv!36672 (array!98887) Bool)

(assert (=> start!125522 (array_inv!36672 a!2862)))

(declare-fun b!1467909 () Bool)

(declare-fun res!996563 () Bool)

(assert (=> b!1467909 (=> (not res!996563) (not e!824416))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98887 (_ BitVec 32)) Bool)

(assert (=> b!1467909 (= res!996563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467910 () Bool)

(declare-fun e!824415 () Bool)

(assert (=> b!1467910 (= e!824416 e!824415)))

(declare-fun res!996556 () Bool)

(assert (=> b!1467910 (=> (not res!996556) (not e!824415))))

(declare-datatypes ((SeekEntryResult!11990 0))(
  ( (MissingZero!11990 (index!50351 (_ BitVec 32))) (Found!11990 (index!50352 (_ BitVec 32))) (Intermediate!11990 (undefined!12802 Bool) (index!50353 (_ BitVec 32)) (x!131946 (_ BitVec 32))) (Undefined!11990) (MissingVacant!11990 (index!50354 (_ BitVec 32))) )
))
(declare-fun lt!642129 () SeekEntryResult!11990)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98887 (_ BitVec 32)) SeekEntryResult!11990)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467910 (= res!996556 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47727 a!2862) j!93) mask!2687) (select (arr!47727 a!2862) j!93) a!2862 mask!2687) lt!642129))))

(assert (=> b!1467910 (= lt!642129 (Intermediate!11990 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467911 () Bool)

(assert (=> b!1467911 (= e!824415 false)))

(declare-fun lt!642130 () (_ BitVec 32))

(assert (=> b!1467911 (= lt!642130 (toIndex!0 (select (store (arr!47727 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1467912 () Bool)

(declare-fun res!996559 () Bool)

(assert (=> b!1467912 (=> (not res!996559) (not e!824416))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467912 (= res!996559 (validKeyInArray!0 (select (arr!47727 a!2862) i!1006)))))

(declare-fun b!1467913 () Bool)

(declare-fun res!996562 () Bool)

(assert (=> b!1467913 (=> (not res!996562) (not e!824415))))

(assert (=> b!1467913 (= res!996562 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47727 a!2862) j!93) a!2862 mask!2687) lt!642129))))

(declare-fun b!1467914 () Bool)

(declare-fun res!996564 () Bool)

(assert (=> b!1467914 (=> (not res!996564) (not e!824416))))

(declare-datatypes ((List!34408 0))(
  ( (Nil!34405) (Cons!34404 (h!35754 (_ BitVec 64)) (t!49109 List!34408)) )
))
(declare-fun arrayNoDuplicates!0 (array!98887 (_ BitVec 32) List!34408) Bool)

(assert (=> b!1467914 (= res!996564 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34405))))

(declare-fun b!1467915 () Bool)

(declare-fun res!996561 () Bool)

(assert (=> b!1467915 (=> (not res!996561) (not e!824416))))

(assert (=> b!1467915 (= res!996561 (validKeyInArray!0 (select (arr!47727 a!2862) j!93)))))

(declare-fun b!1467916 () Bool)

(declare-fun res!996557 () Bool)

(assert (=> b!1467916 (=> (not res!996557) (not e!824416))))

(assert (=> b!1467916 (= res!996557 (and (= (size!48278 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48278 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48278 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!125522 res!996560) b!1467916))

(assert (= (and b!1467916 res!996557) b!1467912))

(assert (= (and b!1467912 res!996559) b!1467915))

(assert (= (and b!1467915 res!996561) b!1467909))

(assert (= (and b!1467909 res!996563) b!1467914))

(assert (= (and b!1467914 res!996564) b!1467908))

(assert (= (and b!1467908 res!996558) b!1467910))

(assert (= (and b!1467910 res!996556) b!1467913))

(assert (= (and b!1467913 res!996562) b!1467911))

(declare-fun m!1354947 () Bool)

(assert (=> b!1467913 m!1354947))

(assert (=> b!1467913 m!1354947))

(declare-fun m!1354949 () Bool)

(assert (=> b!1467913 m!1354949))

(declare-fun m!1354951 () Bool)

(assert (=> b!1467912 m!1354951))

(assert (=> b!1467912 m!1354951))

(declare-fun m!1354953 () Bool)

(assert (=> b!1467912 m!1354953))

(declare-fun m!1354955 () Bool)

(assert (=> b!1467911 m!1354955))

(declare-fun m!1354957 () Bool)

(assert (=> b!1467911 m!1354957))

(assert (=> b!1467911 m!1354957))

(declare-fun m!1354959 () Bool)

(assert (=> b!1467911 m!1354959))

(assert (=> b!1467908 m!1354955))

(declare-fun m!1354961 () Bool)

(assert (=> b!1467908 m!1354961))

(declare-fun m!1354963 () Bool)

(assert (=> b!1467914 m!1354963))

(assert (=> b!1467915 m!1354947))

(assert (=> b!1467915 m!1354947))

(declare-fun m!1354965 () Bool)

(assert (=> b!1467915 m!1354965))

(assert (=> b!1467910 m!1354947))

(assert (=> b!1467910 m!1354947))

(declare-fun m!1354967 () Bool)

(assert (=> b!1467910 m!1354967))

(assert (=> b!1467910 m!1354967))

(assert (=> b!1467910 m!1354947))

(declare-fun m!1354969 () Bool)

(assert (=> b!1467910 m!1354969))

(declare-fun m!1354971 () Bool)

(assert (=> start!125522 m!1354971))

(declare-fun m!1354973 () Bool)

(assert (=> start!125522 m!1354973))

(declare-fun m!1354975 () Bool)

(assert (=> b!1467909 m!1354975))

(push 1)

(assert (not b!1467910))

(assert (not b!1467915))

(assert (not b!1467912))

(assert (not start!125522))

(assert (not b!1467913))

(assert (not b!1467909))

(assert (not b!1467911))

(assert (not b!1467914))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

