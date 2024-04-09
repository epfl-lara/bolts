; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124192 () Bool)

(assert start!124192)

(declare-fun b!1437119 () Bool)

(declare-fun res!970112 () Bool)

(declare-fun e!810852 () Bool)

(assert (=> b!1437119 (=> (not res!970112) (not e!810852))))

(declare-datatypes ((array!97713 0))(
  ( (array!97714 (arr!47146 (Array (_ BitVec 32) (_ BitVec 64))) (size!47697 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97713)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97713 (_ BitVec 32)) Bool)

(assert (=> b!1437119 (= res!970112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437120 () Bool)

(declare-fun e!810853 () Bool)

(assert (=> b!1437120 (= e!810853 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun b!1437121 () Bool)

(declare-fun res!970117 () Bool)

(assert (=> b!1437121 (=> (not res!970117) (not e!810852))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1437121 (= res!970117 (and (= (size!47697 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47697 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47697 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437122 () Bool)

(declare-fun res!970116 () Bool)

(assert (=> b!1437122 (=> (not res!970116) (not e!810852))))

(declare-datatypes ((List!33827 0))(
  ( (Nil!33824) (Cons!33823 (h!35161 (_ BitVec 64)) (t!48528 List!33827)) )
))
(declare-fun arrayNoDuplicates!0 (array!97713 (_ BitVec 32) List!33827) Bool)

(assert (=> b!1437122 (= res!970116 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33824))))

(declare-fun res!970114 () Bool)

(assert (=> start!124192 (=> (not res!970114) (not e!810852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124192 (= res!970114 (validMask!0 mask!2687))))

(assert (=> start!124192 e!810852))

(assert (=> start!124192 true))

(declare-fun array_inv!36091 (array!97713) Bool)

(assert (=> start!124192 (array_inv!36091 a!2862)))

(declare-fun b!1437123 () Bool)

(declare-fun res!970113 () Bool)

(assert (=> b!1437123 (=> (not res!970113) (not e!810852))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1437123 (= res!970113 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47697 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47697 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47697 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47146 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437124 () Bool)

(declare-fun res!970119 () Bool)

(assert (=> b!1437124 (=> (not res!970119) (not e!810852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437124 (= res!970119 (validKeyInArray!0 (select (arr!47146 a!2862) j!93)))))

(declare-fun b!1437125 () Bool)

(declare-fun res!970118 () Bool)

(assert (=> b!1437125 (=> (not res!970118) (not e!810852))))

(assert (=> b!1437125 (= res!970118 (validKeyInArray!0 (select (arr!47146 a!2862) i!1006)))))

(declare-fun b!1437126 () Bool)

(declare-fun res!970115 () Bool)

(assert (=> b!1437126 (=> (not res!970115) (not e!810853))))

(declare-datatypes ((SeekEntryResult!11421 0))(
  ( (MissingZero!11421 (index!48075 (_ BitVec 32))) (Found!11421 (index!48076 (_ BitVec 32))) (Intermediate!11421 (undefined!12233 Bool) (index!48077 (_ BitVec 32)) (x!129809 (_ BitVec 32))) (Undefined!11421) (MissingVacant!11421 (index!48078 (_ BitVec 32))) )
))
(declare-fun lt!632188 () SeekEntryResult!11421)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97713 (_ BitVec 32)) SeekEntryResult!11421)

(assert (=> b!1437126 (= res!970115 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47146 a!2862) j!93) a!2862 mask!2687) lt!632188))))

(declare-fun b!1437127 () Bool)

(assert (=> b!1437127 (= e!810852 e!810853)))

(declare-fun res!970111 () Bool)

(assert (=> b!1437127 (=> (not res!970111) (not e!810853))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437127 (= res!970111 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47146 a!2862) j!93) mask!2687) (select (arr!47146 a!2862) j!93) a!2862 mask!2687) lt!632188))))

(assert (=> b!1437127 (= lt!632188 (Intermediate!11421 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124192 res!970114) b!1437121))

(assert (= (and b!1437121 res!970117) b!1437125))

(assert (= (and b!1437125 res!970118) b!1437124))

(assert (= (and b!1437124 res!970119) b!1437119))

(assert (= (and b!1437119 res!970112) b!1437122))

(assert (= (and b!1437122 res!970116) b!1437123))

(assert (= (and b!1437123 res!970113) b!1437127))

(assert (= (and b!1437127 res!970111) b!1437126))

(assert (= (and b!1437126 res!970115) b!1437120))

(declare-fun m!1326501 () Bool)

(assert (=> b!1437119 m!1326501))

(declare-fun m!1326503 () Bool)

(assert (=> b!1437127 m!1326503))

(assert (=> b!1437127 m!1326503))

(declare-fun m!1326505 () Bool)

(assert (=> b!1437127 m!1326505))

(assert (=> b!1437127 m!1326505))

(assert (=> b!1437127 m!1326503))

(declare-fun m!1326507 () Bool)

(assert (=> b!1437127 m!1326507))

(declare-fun m!1326509 () Bool)

(assert (=> b!1437122 m!1326509))

(declare-fun m!1326511 () Bool)

(assert (=> start!124192 m!1326511))

(declare-fun m!1326513 () Bool)

(assert (=> start!124192 m!1326513))

(assert (=> b!1437126 m!1326503))

(assert (=> b!1437126 m!1326503))

(declare-fun m!1326515 () Bool)

(assert (=> b!1437126 m!1326515))

(assert (=> b!1437124 m!1326503))

(assert (=> b!1437124 m!1326503))

(declare-fun m!1326517 () Bool)

(assert (=> b!1437124 m!1326517))

(declare-fun m!1326519 () Bool)

(assert (=> b!1437125 m!1326519))

(assert (=> b!1437125 m!1326519))

(declare-fun m!1326521 () Bool)

(assert (=> b!1437125 m!1326521))

(declare-fun m!1326523 () Bool)

(assert (=> b!1437123 m!1326523))

(declare-fun m!1326525 () Bool)

(assert (=> b!1437123 m!1326525))

(push 1)

(assert (not b!1437122))

(assert (not b!1437119))

(assert (not b!1437125))

(assert (not b!1437126))

