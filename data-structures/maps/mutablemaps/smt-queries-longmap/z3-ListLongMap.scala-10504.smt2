; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123762 () Bool)

(assert start!123762)

(declare-fun b!1434027 () Bool)

(declare-fun res!967601 () Bool)

(declare-fun e!809417 () Bool)

(assert (=> b!1434027 (=> (not res!967601) (not e!809417))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97538 0))(
  ( (array!97539 (arr!47069 (Array (_ BitVec 32) (_ BitVec 64))) (size!47620 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97538)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434027 (= res!967601 (and (= (size!47620 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47620 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47620 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1434028 () Bool)

(declare-fun e!809415 () Bool)

(declare-fun e!809416 () Bool)

(assert (=> b!1434028 (= e!809415 e!809416)))

(declare-fun res!967598 () Bool)

(assert (=> b!1434028 (=> (not res!967598) (not e!809416))))

(declare-datatypes ((SeekEntryResult!11370 0))(
  ( (MissingZero!11370 (index!47871 (_ BitVec 32))) (Found!11370 (index!47872 (_ BitVec 32))) (Intermediate!11370 (undefined!12182 Bool) (index!47873 (_ BitVec 32)) (x!129529 (_ BitVec 32))) (Undefined!11370) (MissingVacant!11370 (index!47874 (_ BitVec 32))) )
))
(declare-fun lt!631270 () SeekEntryResult!11370)

(declare-fun lt!631265 () array!97538)

(declare-fun lt!631267 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97538 (_ BitVec 32)) SeekEntryResult!11370)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434028 (= res!967598 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631267 mask!2608) lt!631267 lt!631265 mask!2608) lt!631270))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434028 (= lt!631270 (Intermediate!11370 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434028 (= lt!631267 (select (store (arr!47069 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434028 (= lt!631265 (array!97539 (store (arr!47069 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47620 a!2831)))))

(declare-fun e!809413 () Bool)

(declare-fun b!1434029 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97538 (_ BitVec 32)) SeekEntryResult!11370)

(assert (=> b!1434029 (= e!809413 (= (seekEntryOrOpen!0 (select (arr!47069 a!2831) j!81) a!2831 mask!2608) (Found!11370 j!81)))))

(declare-fun b!1434030 () Bool)

(declare-fun res!967606 () Bool)

(assert (=> b!1434030 (=> (not res!967606) (not e!809417))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434030 (= res!967606 (validKeyInArray!0 (select (arr!47069 a!2831) i!982)))))

(declare-fun res!967600 () Bool)

(assert (=> start!123762 (=> (not res!967600) (not e!809417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123762 (= res!967600 (validMask!0 mask!2608))))

(assert (=> start!123762 e!809417))

(assert (=> start!123762 true))

(declare-fun array_inv!36014 (array!97538) Bool)

(assert (=> start!123762 (array_inv!36014 a!2831)))

(declare-fun b!1434031 () Bool)

(assert (=> b!1434031 (= e!809417 e!809415)))

(declare-fun res!967605 () Bool)

(assert (=> b!1434031 (=> (not res!967605) (not e!809415))))

(declare-fun lt!631269 () SeekEntryResult!11370)

(assert (=> b!1434031 (= res!967605 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47069 a!2831) j!81) mask!2608) (select (arr!47069 a!2831) j!81) a!2831 mask!2608) lt!631269))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1434031 (= lt!631269 (Intermediate!11370 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434032 () Bool)

(declare-fun e!809414 () Bool)

(assert (=> b!1434032 (= e!809416 (not e!809414))))

(declare-fun res!967608 () Bool)

(assert (=> b!1434032 (=> res!967608 e!809414)))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1434032 (= res!967608 (or (= (select (arr!47069 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47069 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47069 a!2831) index!585) (select (arr!47069 a!2831) j!81)) (= (select (store (arr!47069 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1434032 e!809413))

(declare-fun res!967602 () Bool)

(assert (=> b!1434032 (=> (not res!967602) (not e!809413))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97538 (_ BitVec 32)) Bool)

(assert (=> b!1434032 (= res!967602 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48434 0))(
  ( (Unit!48435) )
))
(declare-fun lt!631268 () Unit!48434)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97538 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48434)

(assert (=> b!1434032 (= lt!631268 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434033 () Bool)

(assert (=> b!1434033 (= e!809414 true)))

(declare-fun lt!631266 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434033 (= lt!631266 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1434034 () Bool)

(declare-fun res!967603 () Bool)

(assert (=> b!1434034 (=> (not res!967603) (not e!809417))))

(declare-datatypes ((List!33759 0))(
  ( (Nil!33756) (Cons!33755 (h!35084 (_ BitVec 64)) (t!48460 List!33759)) )
))
(declare-fun arrayNoDuplicates!0 (array!97538 (_ BitVec 32) List!33759) Bool)

(assert (=> b!1434034 (= res!967603 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33756))))

(declare-fun b!1434035 () Bool)

(declare-fun res!967607 () Bool)

(assert (=> b!1434035 (=> (not res!967607) (not e!809416))))

(assert (=> b!1434035 (= res!967607 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631267 lt!631265 mask!2608) lt!631270))))

(declare-fun b!1434036 () Bool)

(declare-fun res!967609 () Bool)

(assert (=> b!1434036 (=> (not res!967609) (not e!809417))))

(assert (=> b!1434036 (= res!967609 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47620 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47620 a!2831))))))

(declare-fun b!1434037 () Bool)

(declare-fun res!967599 () Bool)

(assert (=> b!1434037 (=> (not res!967599) (not e!809416))))

(assert (=> b!1434037 (= res!967599 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1434038 () Bool)

(declare-fun res!967610 () Bool)

(assert (=> b!1434038 (=> (not res!967610) (not e!809417))))

(assert (=> b!1434038 (= res!967610 (validKeyInArray!0 (select (arr!47069 a!2831) j!81)))))

(declare-fun b!1434039 () Bool)

(declare-fun res!967611 () Bool)

(assert (=> b!1434039 (=> (not res!967611) (not e!809416))))

(assert (=> b!1434039 (= res!967611 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47069 a!2831) j!81) a!2831 mask!2608) lt!631269))))

(declare-fun b!1434040 () Bool)

(declare-fun res!967604 () Bool)

(assert (=> b!1434040 (=> (not res!967604) (not e!809417))))

(assert (=> b!1434040 (= res!967604 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!123762 res!967600) b!1434027))

(assert (= (and b!1434027 res!967601) b!1434030))

(assert (= (and b!1434030 res!967606) b!1434038))

(assert (= (and b!1434038 res!967610) b!1434040))

(assert (= (and b!1434040 res!967604) b!1434034))

(assert (= (and b!1434034 res!967603) b!1434036))

(assert (= (and b!1434036 res!967609) b!1434031))

(assert (= (and b!1434031 res!967605) b!1434028))

(assert (= (and b!1434028 res!967598) b!1434039))

(assert (= (and b!1434039 res!967611) b!1434035))

(assert (= (and b!1434035 res!967607) b!1434037))

(assert (= (and b!1434037 res!967599) b!1434032))

(assert (= (and b!1434032 res!967602) b!1434029))

(assert (= (and b!1434032 (not res!967608)) b!1434033))

(declare-fun m!1323697 () Bool)

(assert (=> start!123762 m!1323697))

(declare-fun m!1323699 () Bool)

(assert (=> start!123762 m!1323699))

(declare-fun m!1323701 () Bool)

(assert (=> b!1434032 m!1323701))

(declare-fun m!1323703 () Bool)

(assert (=> b!1434032 m!1323703))

(declare-fun m!1323705 () Bool)

(assert (=> b!1434032 m!1323705))

(declare-fun m!1323707 () Bool)

(assert (=> b!1434032 m!1323707))

(declare-fun m!1323709 () Bool)

(assert (=> b!1434032 m!1323709))

(declare-fun m!1323711 () Bool)

(assert (=> b!1434032 m!1323711))

(declare-fun m!1323713 () Bool)

(assert (=> b!1434033 m!1323713))

(declare-fun m!1323715 () Bool)

(assert (=> b!1434028 m!1323715))

(assert (=> b!1434028 m!1323715))

(declare-fun m!1323717 () Bool)

(assert (=> b!1434028 m!1323717))

(assert (=> b!1434028 m!1323701))

(declare-fun m!1323719 () Bool)

(assert (=> b!1434028 m!1323719))

(assert (=> b!1434031 m!1323709))

(assert (=> b!1434031 m!1323709))

(declare-fun m!1323721 () Bool)

(assert (=> b!1434031 m!1323721))

(assert (=> b!1434031 m!1323721))

(assert (=> b!1434031 m!1323709))

(declare-fun m!1323723 () Bool)

(assert (=> b!1434031 m!1323723))

(assert (=> b!1434039 m!1323709))

(assert (=> b!1434039 m!1323709))

(declare-fun m!1323725 () Bool)

(assert (=> b!1434039 m!1323725))

(declare-fun m!1323727 () Bool)

(assert (=> b!1434035 m!1323727))

(declare-fun m!1323729 () Bool)

(assert (=> b!1434040 m!1323729))

(declare-fun m!1323731 () Bool)

(assert (=> b!1434034 m!1323731))

(declare-fun m!1323733 () Bool)

(assert (=> b!1434030 m!1323733))

(assert (=> b!1434030 m!1323733))

(declare-fun m!1323735 () Bool)

(assert (=> b!1434030 m!1323735))

(assert (=> b!1434038 m!1323709))

(assert (=> b!1434038 m!1323709))

(declare-fun m!1323737 () Bool)

(assert (=> b!1434038 m!1323737))

(assert (=> b!1434029 m!1323709))

(assert (=> b!1434029 m!1323709))

(declare-fun m!1323739 () Bool)

(assert (=> b!1434029 m!1323739))

(check-sat (not start!123762) (not b!1434038) (not b!1434031) (not b!1434030) (not b!1434040) (not b!1434034) (not b!1434032) (not b!1434039) (not b!1434033) (not b!1434028) (not b!1434035) (not b!1434029))
(check-sat)
