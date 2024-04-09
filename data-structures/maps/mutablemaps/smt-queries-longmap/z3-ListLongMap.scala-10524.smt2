; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124158 () Bool)

(assert start!124158)

(declare-fun b!1436740 () Bool)

(declare-fun res!969736 () Bool)

(declare-fun e!810748 () Bool)

(assert (=> b!1436740 (=> (not res!969736) (not e!810748))))

(declare-datatypes ((array!97679 0))(
  ( (array!97680 (arr!47129 (Array (_ BitVec 32) (_ BitVec 64))) (size!47680 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97679)

(declare-datatypes ((List!33810 0))(
  ( (Nil!33807) (Cons!33806 (h!35144 (_ BitVec 64)) (t!48511 List!33810)) )
))
(declare-fun arrayNoDuplicates!0 (array!97679 (_ BitVec 32) List!33810) Bool)

(assert (=> b!1436740 (= res!969736 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33807))))

(declare-fun b!1436741 () Bool)

(assert (=> b!1436741 (= e!810748 false)))

(declare-datatypes ((SeekEntryResult!11404 0))(
  ( (MissingZero!11404 (index!48007 (_ BitVec 32))) (Found!11404 (index!48008 (_ BitVec 32))) (Intermediate!11404 (undefined!12216 Bool) (index!48009 (_ BitVec 32)) (x!129744 (_ BitVec 32))) (Undefined!11404) (MissingVacant!11404 (index!48010 (_ BitVec 32))) )
))
(declare-fun lt!632155 () SeekEntryResult!11404)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97679 (_ BitVec 32)) SeekEntryResult!11404)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436741 (= lt!632155 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47129 a!2862) j!93) mask!2687) (select (arr!47129 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1436742 () Bool)

(declare-fun res!969734 () Bool)

(assert (=> b!1436742 (=> (not res!969734) (not e!810748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436742 (= res!969734 (validKeyInArray!0 (select (arr!47129 a!2862) j!93)))))

(declare-fun res!969733 () Bool)

(assert (=> start!124158 (=> (not res!969733) (not e!810748))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124158 (= res!969733 (validMask!0 mask!2687))))

(assert (=> start!124158 e!810748))

(assert (=> start!124158 true))

(declare-fun array_inv!36074 (array!97679) Bool)

(assert (=> start!124158 (array_inv!36074 a!2862)))

(declare-fun b!1436743 () Bool)

(declare-fun res!969732 () Bool)

(assert (=> b!1436743 (=> (not res!969732) (not e!810748))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436743 (= res!969732 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47680 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47680 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47680 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47129 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436744 () Bool)

(declare-fun res!969735 () Bool)

(assert (=> b!1436744 (=> (not res!969735) (not e!810748))))

(assert (=> b!1436744 (= res!969735 (validKeyInArray!0 (select (arr!47129 a!2862) i!1006)))))

(declare-fun b!1436745 () Bool)

(declare-fun res!969737 () Bool)

(assert (=> b!1436745 (=> (not res!969737) (not e!810748))))

(assert (=> b!1436745 (= res!969737 (and (= (size!47680 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47680 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47680 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436746 () Bool)

(declare-fun res!969738 () Bool)

(assert (=> b!1436746 (=> (not res!969738) (not e!810748))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97679 (_ BitVec 32)) Bool)

(assert (=> b!1436746 (= res!969738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124158 res!969733) b!1436745))

(assert (= (and b!1436745 res!969737) b!1436744))

(assert (= (and b!1436744 res!969735) b!1436742))

(assert (= (and b!1436742 res!969734) b!1436746))

(assert (= (and b!1436746 res!969738) b!1436740))

(assert (= (and b!1436740 res!969736) b!1436743))

(assert (= (and b!1436743 res!969732) b!1436741))

(declare-fun m!1326093 () Bool)

(assert (=> b!1436742 m!1326093))

(assert (=> b!1436742 m!1326093))

(declare-fun m!1326095 () Bool)

(assert (=> b!1436742 m!1326095))

(assert (=> b!1436741 m!1326093))

(assert (=> b!1436741 m!1326093))

(declare-fun m!1326097 () Bool)

(assert (=> b!1436741 m!1326097))

(assert (=> b!1436741 m!1326097))

(assert (=> b!1436741 m!1326093))

(declare-fun m!1326099 () Bool)

(assert (=> b!1436741 m!1326099))

(declare-fun m!1326101 () Bool)

(assert (=> b!1436740 m!1326101))

(declare-fun m!1326103 () Bool)

(assert (=> b!1436746 m!1326103))

(declare-fun m!1326105 () Bool)

(assert (=> b!1436744 m!1326105))

(assert (=> b!1436744 m!1326105))

(declare-fun m!1326107 () Bool)

(assert (=> b!1436744 m!1326107))

(declare-fun m!1326109 () Bool)

(assert (=> b!1436743 m!1326109))

(declare-fun m!1326111 () Bool)

(assert (=> b!1436743 m!1326111))

(declare-fun m!1326113 () Bool)

(assert (=> start!124158 m!1326113))

(declare-fun m!1326115 () Bool)

(assert (=> start!124158 m!1326115))

(check-sat (not b!1436741) (not b!1436746) (not start!124158) (not b!1436742) (not b!1436744) (not b!1436740))
