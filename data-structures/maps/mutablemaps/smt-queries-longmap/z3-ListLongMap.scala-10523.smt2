; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124152 () Bool)

(assert start!124152)

(declare-fun b!1436677 () Bool)

(declare-fun e!810730 () Bool)

(assert (=> b!1436677 (= e!810730 false)))

(declare-fun lt!632146 () (_ BitVec 32))

(declare-datatypes ((array!97673 0))(
  ( (array!97674 (arr!47126 (Array (_ BitVec 32) (_ BitVec 64))) (size!47677 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97673)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436677 (= lt!632146 (toIndex!0 (select (arr!47126 a!2862) j!93) mask!2687))))

(declare-fun b!1436678 () Bool)

(declare-fun res!969669 () Bool)

(assert (=> b!1436678 (=> (not res!969669) (not e!810730))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1436678 (= res!969669 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47677 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47677 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47677 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47126 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!969673 () Bool)

(assert (=> start!124152 (=> (not res!969673) (not e!810730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124152 (= res!969673 (validMask!0 mask!2687))))

(assert (=> start!124152 e!810730))

(assert (=> start!124152 true))

(declare-fun array_inv!36071 (array!97673) Bool)

(assert (=> start!124152 (array_inv!36071 a!2862)))

(declare-fun b!1436679 () Bool)

(declare-fun res!969671 () Bool)

(assert (=> b!1436679 (=> (not res!969671) (not e!810730))))

(declare-datatypes ((List!33807 0))(
  ( (Nil!33804) (Cons!33803 (h!35141 (_ BitVec 64)) (t!48508 List!33807)) )
))
(declare-fun arrayNoDuplicates!0 (array!97673 (_ BitVec 32) List!33807) Bool)

(assert (=> b!1436679 (= res!969671 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33804))))

(declare-fun b!1436680 () Bool)

(declare-fun res!969670 () Bool)

(assert (=> b!1436680 (=> (not res!969670) (not e!810730))))

(assert (=> b!1436680 (= res!969670 (and (= (size!47677 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47677 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47677 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436681 () Bool)

(declare-fun res!969674 () Bool)

(assert (=> b!1436681 (=> (not res!969674) (not e!810730))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436681 (= res!969674 (validKeyInArray!0 (select (arr!47126 a!2862) j!93)))))

(declare-fun b!1436682 () Bool)

(declare-fun res!969672 () Bool)

(assert (=> b!1436682 (=> (not res!969672) (not e!810730))))

(assert (=> b!1436682 (= res!969672 (validKeyInArray!0 (select (arr!47126 a!2862) i!1006)))))

(declare-fun b!1436683 () Bool)

(declare-fun res!969675 () Bool)

(assert (=> b!1436683 (=> (not res!969675) (not e!810730))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97673 (_ BitVec 32)) Bool)

(assert (=> b!1436683 (= res!969675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124152 res!969673) b!1436680))

(assert (= (and b!1436680 res!969670) b!1436682))

(assert (= (and b!1436682 res!969672) b!1436681))

(assert (= (and b!1436681 res!969674) b!1436683))

(assert (= (and b!1436683 res!969675) b!1436679))

(assert (= (and b!1436679 res!969671) b!1436678))

(assert (= (and b!1436678 res!969669) b!1436677))

(declare-fun m!1326025 () Bool)

(assert (=> start!124152 m!1326025))

(declare-fun m!1326027 () Bool)

(assert (=> start!124152 m!1326027))

(declare-fun m!1326029 () Bool)

(assert (=> b!1436677 m!1326029))

(assert (=> b!1436677 m!1326029))

(declare-fun m!1326031 () Bool)

(assert (=> b!1436677 m!1326031))

(assert (=> b!1436681 m!1326029))

(assert (=> b!1436681 m!1326029))

(declare-fun m!1326033 () Bool)

(assert (=> b!1436681 m!1326033))

(declare-fun m!1326035 () Bool)

(assert (=> b!1436682 m!1326035))

(assert (=> b!1436682 m!1326035))

(declare-fun m!1326037 () Bool)

(assert (=> b!1436682 m!1326037))

(declare-fun m!1326039 () Bool)

(assert (=> b!1436679 m!1326039))

(declare-fun m!1326041 () Bool)

(assert (=> b!1436683 m!1326041))

(declare-fun m!1326043 () Bool)

(assert (=> b!1436678 m!1326043))

(declare-fun m!1326045 () Bool)

(assert (=> b!1436678 m!1326045))

(check-sat (not start!124152) (not b!1436681) (not b!1436683) (not b!1436679) (not b!1436682) (not b!1436677))
