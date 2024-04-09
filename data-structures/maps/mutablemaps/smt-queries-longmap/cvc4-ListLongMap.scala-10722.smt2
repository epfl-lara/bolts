; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125516 () Bool)

(assert start!125516)

(declare-fun b!1467827 () Bool)

(declare-fun e!824390 () Bool)

(assert (=> b!1467827 (= e!824390 false)))

(declare-fun lt!642111 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98881 0))(
  ( (array!98882 (arr!47724 (Array (_ BitVec 32) (_ BitVec 64))) (size!48275 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98881)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467827 (= lt!642111 (toIndex!0 (select (store (arr!47724 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1467828 () Bool)

(declare-fun res!996476 () Bool)

(assert (=> b!1467828 (=> (not res!996476) (not e!824390))))

(declare-datatypes ((SeekEntryResult!11987 0))(
  ( (MissingZero!11987 (index!50339 (_ BitVec 32))) (Found!11987 (index!50340 (_ BitVec 32))) (Intermediate!11987 (undefined!12799 Bool) (index!50341 (_ BitVec 32)) (x!131935 (_ BitVec 32))) (Undefined!11987) (MissingVacant!11987 (index!50342 (_ BitVec 32))) )
))
(declare-fun lt!642112 () SeekEntryResult!11987)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98881 (_ BitVec 32)) SeekEntryResult!11987)

(assert (=> b!1467828 (= res!996476 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47724 a!2862) j!93) a!2862 mask!2687) lt!642112))))

(declare-fun b!1467829 () Bool)

(declare-fun res!996481 () Bool)

(declare-fun e!824388 () Bool)

(assert (=> b!1467829 (=> (not res!996481) (not e!824388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98881 (_ BitVec 32)) Bool)

(assert (=> b!1467829 (= res!996481 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467830 () Bool)

(declare-fun res!996482 () Bool)

(assert (=> b!1467830 (=> (not res!996482) (not e!824388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467830 (= res!996482 (validKeyInArray!0 (select (arr!47724 a!2862) j!93)))))

(declare-fun b!1467832 () Bool)

(declare-fun res!996480 () Bool)

(assert (=> b!1467832 (=> (not res!996480) (not e!824388))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1467832 (= res!996480 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48275 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48275 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48275 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47724 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1467833 () Bool)

(declare-fun res!996479 () Bool)

(assert (=> b!1467833 (=> (not res!996479) (not e!824388))))

(assert (=> b!1467833 (= res!996479 (validKeyInArray!0 (select (arr!47724 a!2862) i!1006)))))

(declare-fun res!996478 () Bool)

(assert (=> start!125516 (=> (not res!996478) (not e!824388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125516 (= res!996478 (validMask!0 mask!2687))))

(assert (=> start!125516 e!824388))

(assert (=> start!125516 true))

(declare-fun array_inv!36669 (array!98881) Bool)

(assert (=> start!125516 (array_inv!36669 a!2862)))

(declare-fun b!1467831 () Bool)

(declare-fun res!996483 () Bool)

(assert (=> b!1467831 (=> (not res!996483) (not e!824388))))

(assert (=> b!1467831 (= res!996483 (and (= (size!48275 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48275 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48275 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1467834 () Bool)

(assert (=> b!1467834 (= e!824388 e!824390)))

(declare-fun res!996477 () Bool)

(assert (=> b!1467834 (=> (not res!996477) (not e!824390))))

(assert (=> b!1467834 (= res!996477 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47724 a!2862) j!93) mask!2687) (select (arr!47724 a!2862) j!93) a!2862 mask!2687) lt!642112))))

(assert (=> b!1467834 (= lt!642112 (Intermediate!11987 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467835 () Bool)

(declare-fun res!996475 () Bool)

(assert (=> b!1467835 (=> (not res!996475) (not e!824388))))

(declare-datatypes ((List!34405 0))(
  ( (Nil!34402) (Cons!34401 (h!35751 (_ BitVec 64)) (t!49106 List!34405)) )
))
(declare-fun arrayNoDuplicates!0 (array!98881 (_ BitVec 32) List!34405) Bool)

(assert (=> b!1467835 (= res!996475 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34402))))

(assert (= (and start!125516 res!996478) b!1467831))

(assert (= (and b!1467831 res!996483) b!1467833))

(assert (= (and b!1467833 res!996479) b!1467830))

(assert (= (and b!1467830 res!996482) b!1467829))

(assert (= (and b!1467829 res!996481) b!1467835))

(assert (= (and b!1467835 res!996475) b!1467832))

(assert (= (and b!1467832 res!996480) b!1467834))

(assert (= (and b!1467834 res!996477) b!1467828))

(assert (= (and b!1467828 res!996476) b!1467827))

(declare-fun m!1354857 () Bool)

(assert (=> b!1467827 m!1354857))

(declare-fun m!1354859 () Bool)

(assert (=> b!1467827 m!1354859))

(assert (=> b!1467827 m!1354859))

(declare-fun m!1354861 () Bool)

(assert (=> b!1467827 m!1354861))

(declare-fun m!1354863 () Bool)

(assert (=> b!1467833 m!1354863))

(assert (=> b!1467833 m!1354863))

(declare-fun m!1354865 () Bool)

(assert (=> b!1467833 m!1354865))

(declare-fun m!1354867 () Bool)

(assert (=> b!1467830 m!1354867))

(assert (=> b!1467830 m!1354867))

(declare-fun m!1354869 () Bool)

(assert (=> b!1467830 m!1354869))

(assert (=> b!1467834 m!1354867))

(assert (=> b!1467834 m!1354867))

(declare-fun m!1354871 () Bool)

(assert (=> b!1467834 m!1354871))

(assert (=> b!1467834 m!1354871))

(assert (=> b!1467834 m!1354867))

(declare-fun m!1354873 () Bool)

(assert (=> b!1467834 m!1354873))

(assert (=> b!1467828 m!1354867))

(assert (=> b!1467828 m!1354867))

(declare-fun m!1354875 () Bool)

(assert (=> b!1467828 m!1354875))

(declare-fun m!1354877 () Bool)

(assert (=> b!1467829 m!1354877))

(declare-fun m!1354879 () Bool)

(assert (=> b!1467835 m!1354879))

(assert (=> b!1467832 m!1354857))

(declare-fun m!1354881 () Bool)

(assert (=> b!1467832 m!1354881))

(declare-fun m!1354883 () Bool)

(assert (=> start!125516 m!1354883))

(declare-fun m!1354885 () Bool)

(assert (=> start!125516 m!1354885))

(push 1)

(assert (not b!1467830))

(assert (not b!1467834))

(assert (not b!1467828))

(assert (not b!1467835))

(assert (not b!1467833))

(assert (not b!1467827))

(assert (not b!1467829))

(assert (not start!125516))

(check-sat)

(pop 1)

