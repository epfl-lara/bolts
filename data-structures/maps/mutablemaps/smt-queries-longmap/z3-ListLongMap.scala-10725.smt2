; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125532 () Bool)

(assert start!125532)

(declare-fun b!1468043 () Bool)

(declare-fun e!824460 () Bool)

(declare-fun e!824461 () Bool)

(assert (=> b!1468043 (= e!824460 e!824461)))

(declare-fun res!996695 () Bool)

(assert (=> b!1468043 (=> (not res!996695) (not e!824461))))

(declare-datatypes ((SeekEntryResult!11995 0))(
  ( (MissingZero!11995 (index!50371 (_ BitVec 32))) (Found!11995 (index!50372 (_ BitVec 32))) (Intermediate!11995 (undefined!12807 Bool) (index!50373 (_ BitVec 32)) (x!131967 (_ BitVec 32))) (Undefined!11995) (MissingVacant!11995 (index!50374 (_ BitVec 32))) )
))
(declare-fun lt!642159 () SeekEntryResult!11995)

(declare-datatypes ((array!98897 0))(
  ( (array!98898 (arr!47732 (Array (_ BitVec 32) (_ BitVec 64))) (size!48283 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98897)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98897 (_ BitVec 32)) SeekEntryResult!11995)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1468043 (= res!996695 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47732 a!2862) j!93) mask!2687) (select (arr!47732 a!2862) j!93) a!2862 mask!2687) lt!642159))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1468043 (= lt!642159 (Intermediate!11995 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1468044 () Bool)

(declare-fun res!996699 () Bool)

(assert (=> b!1468044 (=> (not res!996699) (not e!824460))))

(declare-datatypes ((List!34413 0))(
  ( (Nil!34410) (Cons!34409 (h!35759 (_ BitVec 64)) (t!49114 List!34413)) )
))
(declare-fun arrayNoDuplicates!0 (array!98897 (_ BitVec 32) List!34413) Bool)

(assert (=> b!1468044 (= res!996699 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34410))))

(declare-fun b!1468045 () Bool)

(declare-fun res!996698 () Bool)

(assert (=> b!1468045 (=> (not res!996698) (not e!824460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98897 (_ BitVec 32)) Bool)

(assert (=> b!1468045 (= res!996698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1468046 () Bool)

(declare-fun res!996691 () Bool)

(assert (=> b!1468046 (=> (not res!996691) (not e!824461))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1468046 (= res!996691 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47732 a!2862) j!93) a!2862 mask!2687) lt!642159))))

(declare-fun b!1468047 () Bool)

(declare-fun res!996693 () Bool)

(assert (=> b!1468047 (=> (not res!996693) (not e!824460))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1468047 (= res!996693 (validKeyInArray!0 (select (arr!47732 a!2862) i!1006)))))

(declare-fun b!1468048 () Bool)

(assert (=> b!1468048 (= e!824461 false)))

(declare-fun lt!642160 () SeekEntryResult!11995)

(assert (=> b!1468048 (= lt!642160 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47732 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47732 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!98898 (store (arr!47732 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48283 a!2862)) mask!2687))))

(declare-fun b!1468049 () Bool)

(declare-fun res!996692 () Bool)

(assert (=> b!1468049 (=> (not res!996692) (not e!824460))))

(assert (=> b!1468049 (= res!996692 (and (= (size!48283 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48283 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48283 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1468050 () Bool)

(declare-fun res!996697 () Bool)

(assert (=> b!1468050 (=> (not res!996697) (not e!824460))))

(assert (=> b!1468050 (= res!996697 (validKeyInArray!0 (select (arr!47732 a!2862) j!93)))))

(declare-fun b!1468051 () Bool)

(declare-fun res!996694 () Bool)

(assert (=> b!1468051 (=> (not res!996694) (not e!824460))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1468051 (= res!996694 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48283 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48283 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48283 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47732 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!996696 () Bool)

(assert (=> start!125532 (=> (not res!996696) (not e!824460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125532 (= res!996696 (validMask!0 mask!2687))))

(assert (=> start!125532 e!824460))

(assert (=> start!125532 true))

(declare-fun array_inv!36677 (array!98897) Bool)

(assert (=> start!125532 (array_inv!36677 a!2862)))

(assert (= (and start!125532 res!996696) b!1468049))

(assert (= (and b!1468049 res!996692) b!1468047))

(assert (= (and b!1468047 res!996693) b!1468050))

(assert (= (and b!1468050 res!996697) b!1468045))

(assert (= (and b!1468045 res!996698) b!1468044))

(assert (= (and b!1468044 res!996699) b!1468051))

(assert (= (and b!1468051 res!996694) b!1468043))

(assert (= (and b!1468043 res!996695) b!1468046))

(assert (= (and b!1468046 res!996691) b!1468048))

(declare-fun m!1355105 () Bool)

(assert (=> b!1468046 m!1355105))

(assert (=> b!1468046 m!1355105))

(declare-fun m!1355107 () Bool)

(assert (=> b!1468046 m!1355107))

(declare-fun m!1355109 () Bool)

(assert (=> b!1468051 m!1355109))

(declare-fun m!1355111 () Bool)

(assert (=> b!1468051 m!1355111))

(declare-fun m!1355113 () Bool)

(assert (=> b!1468045 m!1355113))

(declare-fun m!1355115 () Bool)

(assert (=> b!1468044 m!1355115))

(assert (=> b!1468048 m!1355109))

(declare-fun m!1355117 () Bool)

(assert (=> b!1468048 m!1355117))

(assert (=> b!1468048 m!1355117))

(declare-fun m!1355119 () Bool)

(assert (=> b!1468048 m!1355119))

(assert (=> b!1468048 m!1355119))

(assert (=> b!1468048 m!1355117))

(declare-fun m!1355121 () Bool)

(assert (=> b!1468048 m!1355121))

(declare-fun m!1355123 () Bool)

(assert (=> start!125532 m!1355123))

(declare-fun m!1355125 () Bool)

(assert (=> start!125532 m!1355125))

(declare-fun m!1355127 () Bool)

(assert (=> b!1468047 m!1355127))

(assert (=> b!1468047 m!1355127))

(declare-fun m!1355129 () Bool)

(assert (=> b!1468047 m!1355129))

(assert (=> b!1468043 m!1355105))

(assert (=> b!1468043 m!1355105))

(declare-fun m!1355131 () Bool)

(assert (=> b!1468043 m!1355131))

(assert (=> b!1468043 m!1355131))

(assert (=> b!1468043 m!1355105))

(declare-fun m!1355133 () Bool)

(assert (=> b!1468043 m!1355133))

(assert (=> b!1468050 m!1355105))

(assert (=> b!1468050 m!1355105))

(declare-fun m!1355135 () Bool)

(assert (=> b!1468050 m!1355135))

(check-sat (not b!1468044) (not b!1468047) (not b!1468043) (not b!1468050) (not b!1468045) (not b!1468046) (not b!1468048) (not start!125532))
(check-sat)
