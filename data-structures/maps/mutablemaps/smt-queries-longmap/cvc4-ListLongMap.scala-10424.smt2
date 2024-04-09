; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122750 () Bool)

(assert start!122750)

(declare-fun b!1421650 () Bool)

(declare-fun res!957199 () Bool)

(declare-fun e!803827 () Bool)

(assert (=> b!1421650 (=> (not res!957199) (not e!803827))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97033 0))(
  ( (array!97034 (arr!46830 (Array (_ BitVec 32) (_ BitVec 64))) (size!47381 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97033)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421650 (= res!957199 (and (= (size!47381 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47381 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47381 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421651 () Bool)

(declare-fun res!957204 () Bool)

(assert (=> b!1421651 (=> (not res!957204) (not e!803827))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421651 (= res!957204 (validKeyInArray!0 (select (arr!46830 a!2831) i!982)))))

(declare-fun b!1421653 () Bool)

(declare-fun res!957203 () Bool)

(declare-fun e!803829 () Bool)

(assert (=> b!1421653 (=> (not res!957203) (not e!803829))))

(declare-fun lt!626322 () array!97033)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!626320 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11137 0))(
  ( (MissingZero!11137 (index!46939 (_ BitVec 32))) (Found!11137 (index!46940 (_ BitVec 32))) (Intermediate!11137 (undefined!11949 Bool) (index!46941 (_ BitVec 32)) (x!128590 (_ BitVec 32))) (Undefined!11137) (MissingVacant!11137 (index!46942 (_ BitVec 32))) )
))
(declare-fun lt!626319 () SeekEntryResult!11137)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97033 (_ BitVec 32)) SeekEntryResult!11137)

(assert (=> b!1421653 (= res!957203 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626320 lt!626322 mask!2608) lt!626319))))

(declare-fun b!1421654 () Bool)

(declare-fun res!957195 () Bool)

(assert (=> b!1421654 (=> (not res!957195) (not e!803829))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421654 (= res!957195 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421655 () Bool)

(declare-fun res!957196 () Bool)

(assert (=> b!1421655 (=> (not res!957196) (not e!803829))))

(declare-fun lt!626321 () SeekEntryResult!11137)

(assert (=> b!1421655 (= res!957196 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46830 a!2831) j!81) a!2831 mask!2608) lt!626321))))

(declare-fun b!1421656 () Bool)

(declare-fun res!957200 () Bool)

(assert (=> b!1421656 (=> (not res!957200) (not e!803827))))

(declare-datatypes ((List!33520 0))(
  ( (Nil!33517) (Cons!33516 (h!34818 (_ BitVec 64)) (t!48221 List!33520)) )
))
(declare-fun arrayNoDuplicates!0 (array!97033 (_ BitVec 32) List!33520) Bool)

(assert (=> b!1421656 (= res!957200 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33517))))

(declare-fun b!1421657 () Bool)

(declare-fun res!957197 () Bool)

(assert (=> b!1421657 (=> (not res!957197) (not e!803827))))

(assert (=> b!1421657 (= res!957197 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47381 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47381 a!2831))))))

(declare-fun b!1421658 () Bool)

(declare-fun e!803830 () Bool)

(assert (=> b!1421658 (= e!803827 e!803830)))

(declare-fun res!957202 () Bool)

(assert (=> b!1421658 (=> (not res!957202) (not e!803830))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421658 (= res!957202 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46830 a!2831) j!81) mask!2608) (select (arr!46830 a!2831) j!81) a!2831 mask!2608) lt!626321))))

(assert (=> b!1421658 (= lt!626321 (Intermediate!11137 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!957201 () Bool)

(assert (=> start!122750 (=> (not res!957201) (not e!803827))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122750 (= res!957201 (validMask!0 mask!2608))))

(assert (=> start!122750 e!803827))

(assert (=> start!122750 true))

(declare-fun array_inv!35775 (array!97033) Bool)

(assert (=> start!122750 (array_inv!35775 a!2831)))

(declare-fun b!1421652 () Bool)

(assert (=> b!1421652 (= e!803829 (not (or (= (select (arr!46830 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46830 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46830 a!2831) index!585) (select (arr!46830 a!2831) j!81)) (= (select (store (arr!46830 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2608 #b00000000000000000000000000000000))))))

(declare-fun e!803831 () Bool)

(assert (=> b!1421652 e!803831))

(declare-fun res!957192 () Bool)

(assert (=> b!1421652 (=> (not res!957192) (not e!803831))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97033 (_ BitVec 32)) Bool)

(assert (=> b!1421652 (= res!957192 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48058 0))(
  ( (Unit!48059) )
))
(declare-fun lt!626323 () Unit!48058)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97033 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48058)

(assert (=> b!1421652 (= lt!626323 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421659 () Bool)

(declare-fun res!957194 () Bool)

(assert (=> b!1421659 (=> (not res!957194) (not e!803827))))

(assert (=> b!1421659 (= res!957194 (validKeyInArray!0 (select (arr!46830 a!2831) j!81)))))

(declare-fun b!1421660 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97033 (_ BitVec 32)) SeekEntryResult!11137)

(assert (=> b!1421660 (= e!803831 (= (seekEntryOrOpen!0 (select (arr!46830 a!2831) j!81) a!2831 mask!2608) (Found!11137 j!81)))))

(declare-fun b!1421661 () Bool)

(declare-fun res!957193 () Bool)

(assert (=> b!1421661 (=> (not res!957193) (not e!803827))))

(assert (=> b!1421661 (= res!957193 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421662 () Bool)

(assert (=> b!1421662 (= e!803830 e!803829)))

(declare-fun res!957198 () Bool)

(assert (=> b!1421662 (=> (not res!957198) (not e!803829))))

(assert (=> b!1421662 (= res!957198 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626320 mask!2608) lt!626320 lt!626322 mask!2608) lt!626319))))

(assert (=> b!1421662 (= lt!626319 (Intermediate!11137 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421662 (= lt!626320 (select (store (arr!46830 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421662 (= lt!626322 (array!97034 (store (arr!46830 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47381 a!2831)))))

(assert (= (and start!122750 res!957201) b!1421650))

(assert (= (and b!1421650 res!957199) b!1421651))

(assert (= (and b!1421651 res!957204) b!1421659))

(assert (= (and b!1421659 res!957194) b!1421661))

(assert (= (and b!1421661 res!957193) b!1421656))

(assert (= (and b!1421656 res!957200) b!1421657))

(assert (= (and b!1421657 res!957197) b!1421658))

(assert (= (and b!1421658 res!957202) b!1421662))

(assert (= (and b!1421662 res!957198) b!1421655))

(assert (= (and b!1421655 res!957196) b!1421653))

(assert (= (and b!1421653 res!957203) b!1421654))

(assert (= (and b!1421654 res!957195) b!1421652))

(assert (= (and b!1421652 res!957192) b!1421660))

(declare-fun m!1312253 () Bool)

(assert (=> b!1421651 m!1312253))

(assert (=> b!1421651 m!1312253))

(declare-fun m!1312255 () Bool)

(assert (=> b!1421651 m!1312255))

(declare-fun m!1312257 () Bool)

(assert (=> b!1421660 m!1312257))

(assert (=> b!1421660 m!1312257))

(declare-fun m!1312259 () Bool)

(assert (=> b!1421660 m!1312259))

(declare-fun m!1312261 () Bool)

(assert (=> b!1421653 m!1312261))

(declare-fun m!1312263 () Bool)

(assert (=> b!1421652 m!1312263))

(declare-fun m!1312265 () Bool)

(assert (=> b!1421652 m!1312265))

(declare-fun m!1312267 () Bool)

(assert (=> b!1421652 m!1312267))

(declare-fun m!1312269 () Bool)

(assert (=> b!1421652 m!1312269))

(assert (=> b!1421652 m!1312257))

(declare-fun m!1312271 () Bool)

(assert (=> b!1421652 m!1312271))

(declare-fun m!1312273 () Bool)

(assert (=> b!1421662 m!1312273))

(assert (=> b!1421662 m!1312273))

(declare-fun m!1312275 () Bool)

(assert (=> b!1421662 m!1312275))

(assert (=> b!1421662 m!1312263))

(declare-fun m!1312277 () Bool)

(assert (=> b!1421662 m!1312277))

(declare-fun m!1312279 () Bool)

(assert (=> b!1421656 m!1312279))

(assert (=> b!1421655 m!1312257))

(assert (=> b!1421655 m!1312257))

(declare-fun m!1312281 () Bool)

(assert (=> b!1421655 m!1312281))

(declare-fun m!1312283 () Bool)

(assert (=> b!1421661 m!1312283))

(assert (=> b!1421659 m!1312257))

(assert (=> b!1421659 m!1312257))

(declare-fun m!1312285 () Bool)

(assert (=> b!1421659 m!1312285))

(assert (=> b!1421658 m!1312257))

(assert (=> b!1421658 m!1312257))

(declare-fun m!1312287 () Bool)

(assert (=> b!1421658 m!1312287))

(assert (=> b!1421658 m!1312287))

(assert (=> b!1421658 m!1312257))

(declare-fun m!1312289 () Bool)

(assert (=> b!1421658 m!1312289))

(declare-fun m!1312291 () Bool)

(assert (=> start!122750 m!1312291))

(declare-fun m!1312293 () Bool)

(assert (=> start!122750 m!1312293))

(push 1)

(assert (not b!1421658))

(assert (not b!1421661))

(assert (not b!1421655))

(assert (not start!122750))

