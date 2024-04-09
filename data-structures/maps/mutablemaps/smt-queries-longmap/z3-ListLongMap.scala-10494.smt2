; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123582 () Bool)

(assert start!123582)

(declare-fun b!1432149 () Bool)

(declare-fun res!966133 () Bool)

(declare-fun e!808494 () Bool)

(assert (=> b!1432149 (=> (not res!966133) (not e!808494))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432149 (= res!966133 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!966126 () Bool)

(declare-fun e!808496 () Bool)

(assert (=> start!123582 (=> (not res!966126) (not e!808496))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123582 (= res!966126 (validMask!0 mask!2608))))

(assert (=> start!123582 e!808496))

(assert (=> start!123582 true))

(declare-datatypes ((array!97472 0))(
  ( (array!97473 (arr!47039 (Array (_ BitVec 32) (_ BitVec 64))) (size!47590 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97472)

(declare-fun array_inv!35984 (array!97472) Bool)

(assert (=> start!123582 (array_inv!35984 a!2831)))

(declare-fun b!1432150 () Bool)

(declare-fun e!808497 () Bool)

(assert (=> b!1432150 (= e!808496 e!808497)))

(declare-fun res!966130 () Bool)

(assert (=> b!1432150 (=> (not res!966130) (not e!808497))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11340 0))(
  ( (MissingZero!11340 (index!47751 (_ BitVec 32))) (Found!11340 (index!47752 (_ BitVec 32))) (Intermediate!11340 (undefined!12152 Bool) (index!47753 (_ BitVec 32)) (x!129401 (_ BitVec 32))) (Undefined!11340) (MissingVacant!11340 (index!47754 (_ BitVec 32))) )
))
(declare-fun lt!630446 () SeekEntryResult!11340)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97472 (_ BitVec 32)) SeekEntryResult!11340)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432150 (= res!966130 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47039 a!2831) j!81) mask!2608) (select (arr!47039 a!2831) j!81) a!2831 mask!2608) lt!630446))))

(assert (=> b!1432150 (= lt!630446 (Intermediate!11340 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432151 () Bool)

(assert (=> b!1432151 (= e!808497 e!808494)))

(declare-fun res!966131 () Bool)

(assert (=> b!1432151 (=> (not res!966131) (not e!808494))))

(declare-fun lt!630448 () (_ BitVec 64))

(declare-fun lt!630447 () SeekEntryResult!11340)

(declare-fun lt!630445 () array!97472)

(assert (=> b!1432151 (= res!966131 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630448 mask!2608) lt!630448 lt!630445 mask!2608) lt!630447))))

(assert (=> b!1432151 (= lt!630447 (Intermediate!11340 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432151 (= lt!630448 (select (store (arr!47039 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432151 (= lt!630445 (array!97473 (store (arr!47039 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47590 a!2831)))))

(declare-fun b!1432152 () Bool)

(declare-fun res!966135 () Bool)

(assert (=> b!1432152 (=> (not res!966135) (not e!808494))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432152 (= res!966135 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47039 a!2831) j!81) a!2831 mask!2608) lt!630446))))

(declare-fun b!1432153 () Bool)

(declare-fun res!966127 () Bool)

(assert (=> b!1432153 (=> (not res!966127) (not e!808496))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432153 (= res!966127 (validKeyInArray!0 (select (arr!47039 a!2831) j!81)))))

(declare-fun b!1432154 () Bool)

(declare-fun res!966132 () Bool)

(assert (=> b!1432154 (=> (not res!966132) (not e!808496))))

(assert (=> b!1432154 (= res!966132 (validKeyInArray!0 (select (arr!47039 a!2831) i!982)))))

(declare-fun e!808498 () Bool)

(declare-fun b!1432155 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97472 (_ BitVec 32)) SeekEntryResult!11340)

(assert (=> b!1432155 (= e!808498 (= (seekEntryOrOpen!0 (select (arr!47039 a!2831) j!81) a!2831 mask!2608) (Found!11340 j!81)))))

(declare-fun b!1432156 () Bool)

(declare-fun res!966125 () Bool)

(assert (=> b!1432156 (=> (not res!966125) (not e!808496))))

(assert (=> b!1432156 (= res!966125 (and (= (size!47590 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47590 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47590 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432157 () Bool)

(declare-fun res!966134 () Bool)

(assert (=> b!1432157 (=> (not res!966134) (not e!808496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97472 (_ BitVec 32)) Bool)

(assert (=> b!1432157 (= res!966134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432158 () Bool)

(declare-fun res!966124 () Bool)

(assert (=> b!1432158 (=> (not res!966124) (not e!808496))))

(declare-datatypes ((List!33729 0))(
  ( (Nil!33726) (Cons!33725 (h!35048 (_ BitVec 64)) (t!48430 List!33729)) )
))
(declare-fun arrayNoDuplicates!0 (array!97472 (_ BitVec 32) List!33729) Bool)

(assert (=> b!1432158 (= res!966124 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33726))))

(declare-fun b!1432159 () Bool)

(declare-fun res!966129 () Bool)

(assert (=> b!1432159 (=> (not res!966129) (not e!808494))))

(assert (=> b!1432159 (= res!966129 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630448 lt!630445 mask!2608) lt!630447))))

(declare-fun b!1432160 () Bool)

(declare-fun res!966128 () Bool)

(assert (=> b!1432160 (=> (not res!966128) (not e!808496))))

(assert (=> b!1432160 (= res!966128 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47590 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47590 a!2831))))))

(declare-fun b!1432161 () Bool)

(declare-fun e!808499 () Bool)

(assert (=> b!1432161 (= e!808499 true)))

(declare-fun lt!630444 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432161 (= lt!630444 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432162 () Bool)

(assert (=> b!1432162 (= e!808494 (not e!808499))))

(declare-fun res!966123 () Bool)

(assert (=> b!1432162 (=> res!966123 e!808499)))

(assert (=> b!1432162 (= res!966123 (or (= (select (arr!47039 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47039 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47039 a!2831) index!585) (select (arr!47039 a!2831) j!81)) (= (select (store (arr!47039 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432162 e!808498))

(declare-fun res!966122 () Bool)

(assert (=> b!1432162 (=> (not res!966122) (not e!808498))))

(assert (=> b!1432162 (= res!966122 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48374 0))(
  ( (Unit!48375) )
))
(declare-fun lt!630443 () Unit!48374)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97472 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48374)

(assert (=> b!1432162 (= lt!630443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!123582 res!966126) b!1432156))

(assert (= (and b!1432156 res!966125) b!1432154))

(assert (= (and b!1432154 res!966132) b!1432153))

(assert (= (and b!1432153 res!966127) b!1432157))

(assert (= (and b!1432157 res!966134) b!1432158))

(assert (= (and b!1432158 res!966124) b!1432160))

(assert (= (and b!1432160 res!966128) b!1432150))

(assert (= (and b!1432150 res!966130) b!1432151))

(assert (= (and b!1432151 res!966131) b!1432152))

(assert (= (and b!1432152 res!966135) b!1432159))

(assert (= (and b!1432159 res!966129) b!1432149))

(assert (= (and b!1432149 res!966133) b!1432162))

(assert (= (and b!1432162 res!966122) b!1432155))

(assert (= (and b!1432162 (not res!966123)) b!1432161))

(declare-fun m!1322005 () Bool)

(assert (=> b!1432151 m!1322005))

(assert (=> b!1432151 m!1322005))

(declare-fun m!1322007 () Bool)

(assert (=> b!1432151 m!1322007))

(declare-fun m!1322009 () Bool)

(assert (=> b!1432151 m!1322009))

(declare-fun m!1322011 () Bool)

(assert (=> b!1432151 m!1322011))

(declare-fun m!1322013 () Bool)

(assert (=> b!1432161 m!1322013))

(declare-fun m!1322015 () Bool)

(assert (=> b!1432152 m!1322015))

(assert (=> b!1432152 m!1322015))

(declare-fun m!1322017 () Bool)

(assert (=> b!1432152 m!1322017))

(assert (=> b!1432150 m!1322015))

(assert (=> b!1432150 m!1322015))

(declare-fun m!1322019 () Bool)

(assert (=> b!1432150 m!1322019))

(assert (=> b!1432150 m!1322019))

(assert (=> b!1432150 m!1322015))

(declare-fun m!1322021 () Bool)

(assert (=> b!1432150 m!1322021))

(declare-fun m!1322023 () Bool)

(assert (=> b!1432159 m!1322023))

(declare-fun m!1322025 () Bool)

(assert (=> b!1432158 m!1322025))

(assert (=> b!1432153 m!1322015))

(assert (=> b!1432153 m!1322015))

(declare-fun m!1322027 () Bool)

(assert (=> b!1432153 m!1322027))

(assert (=> b!1432162 m!1322009))

(declare-fun m!1322029 () Bool)

(assert (=> b!1432162 m!1322029))

(declare-fun m!1322031 () Bool)

(assert (=> b!1432162 m!1322031))

(declare-fun m!1322033 () Bool)

(assert (=> b!1432162 m!1322033))

(assert (=> b!1432162 m!1322015))

(declare-fun m!1322035 () Bool)

(assert (=> b!1432162 m!1322035))

(declare-fun m!1322037 () Bool)

(assert (=> start!123582 m!1322037))

(declare-fun m!1322039 () Bool)

(assert (=> start!123582 m!1322039))

(declare-fun m!1322041 () Bool)

(assert (=> b!1432154 m!1322041))

(assert (=> b!1432154 m!1322041))

(declare-fun m!1322043 () Bool)

(assert (=> b!1432154 m!1322043))

(assert (=> b!1432155 m!1322015))

(assert (=> b!1432155 m!1322015))

(declare-fun m!1322045 () Bool)

(assert (=> b!1432155 m!1322045))

(declare-fun m!1322047 () Bool)

(assert (=> b!1432157 m!1322047))

(check-sat (not b!1432153) (not b!1432162) (not b!1432152) (not b!1432151) (not b!1432158) (not b!1432150) (not b!1432157) (not b!1432159) (not start!123582) (not b!1432161) (not b!1432154) (not b!1432155))
(check-sat)
