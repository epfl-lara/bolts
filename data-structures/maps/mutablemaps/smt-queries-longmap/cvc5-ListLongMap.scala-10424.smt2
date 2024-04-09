; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122746 () Bool)

(assert start!122746)

(declare-fun b!1421572 () Bool)

(declare-fun res!957124 () Bool)

(declare-fun e!803801 () Bool)

(assert (=> b!1421572 (=> (not res!957124) (not e!803801))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97029 0))(
  ( (array!97030 (arr!46828 (Array (_ BitVec 32) (_ BitVec 64))) (size!47379 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97029)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421572 (= res!957124 (and (= (size!47379 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47379 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47379 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421573 () Bool)

(declare-fun e!803799 () Bool)

(assert (=> b!1421573 (= e!803801 e!803799)))

(declare-fun res!957126 () Bool)

(assert (=> b!1421573 (=> (not res!957126) (not e!803799))))

(declare-datatypes ((SeekEntryResult!11135 0))(
  ( (MissingZero!11135 (index!46931 (_ BitVec 32))) (Found!11135 (index!46932 (_ BitVec 32))) (Intermediate!11135 (undefined!11947 Bool) (index!46933 (_ BitVec 32)) (x!128588 (_ BitVec 32))) (Undefined!11135) (MissingVacant!11135 (index!46934 (_ BitVec 32))) )
))
(declare-fun lt!626292 () SeekEntryResult!11135)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97029 (_ BitVec 32)) SeekEntryResult!11135)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421573 (= res!957126 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46828 a!2831) j!81) mask!2608) (select (arr!46828 a!2831) j!81) a!2831 mask!2608) lt!626292))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421573 (= lt!626292 (Intermediate!11135 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421574 () Bool)

(declare-fun res!957120 () Bool)

(assert (=> b!1421574 (=> (not res!957120) (not e!803801))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421574 (= res!957120 (validKeyInArray!0 (select (arr!46828 a!2831) i!982)))))

(declare-fun b!1421575 () Bool)

(declare-fun res!957123 () Bool)

(assert (=> b!1421575 (=> (not res!957123) (not e!803801))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421575 (= res!957123 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47379 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47379 a!2831))))))

(declare-fun b!1421577 () Bool)

(declare-fun res!957121 () Bool)

(declare-fun e!803797 () Bool)

(assert (=> b!1421577 (=> (not res!957121) (not e!803797))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421577 (= res!957121 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421578 () Bool)

(declare-fun res!957119 () Bool)

(assert (=> b!1421578 (=> (not res!957119) (not e!803801))))

(assert (=> b!1421578 (= res!957119 (validKeyInArray!0 (select (arr!46828 a!2831) j!81)))))

(declare-fun b!1421579 () Bool)

(assert (=> b!1421579 (= e!803797 (not (or (= (select (arr!46828 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46828 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46828 a!2831) index!585) (select (arr!46828 a!2831) j!81)) (= (select (store (arr!46828 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2608 #b00000000000000000000000000000000))))))

(declare-fun e!803798 () Bool)

(assert (=> b!1421579 e!803798))

(declare-fun res!957115 () Bool)

(assert (=> b!1421579 (=> (not res!957115) (not e!803798))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97029 (_ BitVec 32)) Bool)

(assert (=> b!1421579 (= res!957115 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48054 0))(
  ( (Unit!48055) )
))
(declare-fun lt!626290 () Unit!48054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97029 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48054)

(assert (=> b!1421579 (= lt!626290 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421580 () Bool)

(assert (=> b!1421580 (= e!803799 e!803797)))

(declare-fun res!957125 () Bool)

(assert (=> b!1421580 (=> (not res!957125) (not e!803797))))

(declare-fun lt!626293 () (_ BitVec 64))

(declare-fun lt!626289 () array!97029)

(declare-fun lt!626291 () SeekEntryResult!11135)

(assert (=> b!1421580 (= res!957125 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626293 mask!2608) lt!626293 lt!626289 mask!2608) lt!626291))))

(assert (=> b!1421580 (= lt!626291 (Intermediate!11135 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421580 (= lt!626293 (select (store (arr!46828 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421580 (= lt!626289 (array!97030 (store (arr!46828 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47379 a!2831)))))

(declare-fun b!1421581 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97029 (_ BitVec 32)) SeekEntryResult!11135)

(assert (=> b!1421581 (= e!803798 (= (seekEntryOrOpen!0 (select (arr!46828 a!2831) j!81) a!2831 mask!2608) (Found!11135 j!81)))))

(declare-fun b!1421582 () Bool)

(declare-fun res!957122 () Bool)

(assert (=> b!1421582 (=> (not res!957122) (not e!803801))))

(assert (=> b!1421582 (= res!957122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421583 () Bool)

(declare-fun res!957114 () Bool)

(assert (=> b!1421583 (=> (not res!957114) (not e!803801))))

(declare-datatypes ((List!33518 0))(
  ( (Nil!33515) (Cons!33514 (h!34816 (_ BitVec 64)) (t!48219 List!33518)) )
))
(declare-fun arrayNoDuplicates!0 (array!97029 (_ BitVec 32) List!33518) Bool)

(assert (=> b!1421583 (= res!957114 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33515))))

(declare-fun b!1421584 () Bool)

(declare-fun res!957117 () Bool)

(assert (=> b!1421584 (=> (not res!957117) (not e!803797))))

(assert (=> b!1421584 (= res!957117 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626293 lt!626289 mask!2608) lt!626291))))

(declare-fun res!957118 () Bool)

(assert (=> start!122746 (=> (not res!957118) (not e!803801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122746 (= res!957118 (validMask!0 mask!2608))))

(assert (=> start!122746 e!803801))

(assert (=> start!122746 true))

(declare-fun array_inv!35773 (array!97029) Bool)

(assert (=> start!122746 (array_inv!35773 a!2831)))

(declare-fun b!1421576 () Bool)

(declare-fun res!957116 () Bool)

(assert (=> b!1421576 (=> (not res!957116) (not e!803797))))

(assert (=> b!1421576 (= res!957116 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46828 a!2831) j!81) a!2831 mask!2608) lt!626292))))

(assert (= (and start!122746 res!957118) b!1421572))

(assert (= (and b!1421572 res!957124) b!1421574))

(assert (= (and b!1421574 res!957120) b!1421578))

(assert (= (and b!1421578 res!957119) b!1421582))

(assert (= (and b!1421582 res!957122) b!1421583))

(assert (= (and b!1421583 res!957114) b!1421575))

(assert (= (and b!1421575 res!957123) b!1421573))

(assert (= (and b!1421573 res!957126) b!1421580))

(assert (= (and b!1421580 res!957125) b!1421576))

(assert (= (and b!1421576 res!957116) b!1421584))

(assert (= (and b!1421584 res!957117) b!1421577))

(assert (= (and b!1421577 res!957121) b!1421579))

(assert (= (and b!1421579 res!957115) b!1421581))

(declare-fun m!1312169 () Bool)

(assert (=> b!1421581 m!1312169))

(assert (=> b!1421581 m!1312169))

(declare-fun m!1312171 () Bool)

(assert (=> b!1421581 m!1312171))

(declare-fun m!1312173 () Bool)

(assert (=> b!1421579 m!1312173))

(declare-fun m!1312175 () Bool)

(assert (=> b!1421579 m!1312175))

(declare-fun m!1312177 () Bool)

(assert (=> b!1421579 m!1312177))

(declare-fun m!1312179 () Bool)

(assert (=> b!1421579 m!1312179))

(assert (=> b!1421579 m!1312169))

(declare-fun m!1312181 () Bool)

(assert (=> b!1421579 m!1312181))

(declare-fun m!1312183 () Bool)

(assert (=> b!1421582 m!1312183))

(declare-fun m!1312185 () Bool)

(assert (=> b!1421583 m!1312185))

(declare-fun m!1312187 () Bool)

(assert (=> b!1421580 m!1312187))

(assert (=> b!1421580 m!1312187))

(declare-fun m!1312189 () Bool)

(assert (=> b!1421580 m!1312189))

(assert (=> b!1421580 m!1312173))

(declare-fun m!1312191 () Bool)

(assert (=> b!1421580 m!1312191))

(declare-fun m!1312193 () Bool)

(assert (=> start!122746 m!1312193))

(declare-fun m!1312195 () Bool)

(assert (=> start!122746 m!1312195))

(assert (=> b!1421576 m!1312169))

(assert (=> b!1421576 m!1312169))

(declare-fun m!1312197 () Bool)

(assert (=> b!1421576 m!1312197))

(assert (=> b!1421578 m!1312169))

(assert (=> b!1421578 m!1312169))

(declare-fun m!1312199 () Bool)

(assert (=> b!1421578 m!1312199))

(assert (=> b!1421573 m!1312169))

(assert (=> b!1421573 m!1312169))

(declare-fun m!1312201 () Bool)

(assert (=> b!1421573 m!1312201))

(assert (=> b!1421573 m!1312201))

(assert (=> b!1421573 m!1312169))

(declare-fun m!1312203 () Bool)

(assert (=> b!1421573 m!1312203))

(declare-fun m!1312205 () Bool)

(assert (=> b!1421584 m!1312205))

(declare-fun m!1312207 () Bool)

(assert (=> b!1421574 m!1312207))

(assert (=> b!1421574 m!1312207))

(declare-fun m!1312209 () Bool)

(assert (=> b!1421574 m!1312209))

(push 1)

