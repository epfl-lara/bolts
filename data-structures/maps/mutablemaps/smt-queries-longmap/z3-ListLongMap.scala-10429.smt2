; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122778 () Bool)

(assert start!122778)

(declare-fun b!1422265 () Bool)

(declare-fun e!804083 () Bool)

(assert (=> b!1422265 (= e!804083 true)))

(declare-fun lt!626578 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11151 0))(
  ( (MissingZero!11151 (index!46995 (_ BitVec 32))) (Found!11151 (index!46996 (_ BitVec 32))) (Intermediate!11151 (undefined!11963 Bool) (index!46997 (_ BitVec 32)) (x!128644 (_ BitVec 32))) (Undefined!11151) (MissingVacant!11151 (index!46998 (_ BitVec 32))) )
))
(declare-fun lt!626575 () SeekEntryResult!11151)

(declare-fun lt!626576 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!97061 0))(
  ( (array!97062 (arr!46844 (Array (_ BitVec 32) (_ BitVec 64))) (size!47395 (_ BitVec 32))) )
))
(declare-fun lt!626580 () array!97061)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97061 (_ BitVec 32)) SeekEntryResult!11151)

(assert (=> b!1422265 (= lt!626575 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626576 lt!626578 lt!626580 mask!2608))))

(declare-fun b!1422266 () Bool)

(declare-fun e!804089 () Bool)

(declare-fun e!804087 () Bool)

(assert (=> b!1422266 (= e!804089 e!804087)))

(declare-fun res!957820 () Bool)

(assert (=> b!1422266 (=> (not res!957820) (not e!804087))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97061)

(declare-fun lt!626579 () SeekEntryResult!11151)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422266 (= res!957820 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46844 a!2831) j!81) mask!2608) (select (arr!46844 a!2831) j!81) a!2831 mask!2608) lt!626579))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1422266 (= lt!626579 (Intermediate!11151 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422267 () Bool)

(declare-fun res!957807 () Bool)

(declare-fun e!804086 () Bool)

(assert (=> b!1422267 (=> (not res!957807) (not e!804086))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422267 (= res!957807 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422268 () Bool)

(declare-fun res!957815 () Bool)

(assert (=> b!1422268 (=> (not res!957815) (not e!804089))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422268 (= res!957815 (validKeyInArray!0 (select (arr!46844 a!2831) j!81)))))

(declare-fun b!1422269 () Bool)

(declare-fun res!957816 () Bool)

(assert (=> b!1422269 (=> (not res!957816) (not e!804089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97061 (_ BitVec 32)) Bool)

(assert (=> b!1422269 (= res!957816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422270 () Bool)

(declare-fun res!957817 () Bool)

(assert (=> b!1422270 (=> (not res!957817) (not e!804086))))

(declare-fun lt!626577 () SeekEntryResult!11151)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1422270 (= res!957817 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626578 lt!626580 mask!2608) lt!626577))))

(declare-fun e!804088 () Bool)

(declare-fun b!1422271 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97061 (_ BitVec 32)) SeekEntryResult!11151)

(assert (=> b!1422271 (= e!804088 (= (seekEntryOrOpen!0 (select (arr!46844 a!2831) j!81) a!2831 mask!2608) (Found!11151 j!81)))))

(declare-fun res!957818 () Bool)

(assert (=> start!122778 (=> (not res!957818) (not e!804089))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122778 (= res!957818 (validMask!0 mask!2608))))

(assert (=> start!122778 e!804089))

(assert (=> start!122778 true))

(declare-fun array_inv!35789 (array!97061) Bool)

(assert (=> start!122778 (array_inv!35789 a!2831)))

(declare-fun b!1422272 () Bool)

(declare-fun res!957811 () Bool)

(assert (=> b!1422272 (=> (not res!957811) (not e!804089))))

(declare-datatypes ((List!33534 0))(
  ( (Nil!33531) (Cons!33530 (h!34832 (_ BitVec 64)) (t!48235 List!33534)) )
))
(declare-fun arrayNoDuplicates!0 (array!97061 (_ BitVec 32) List!33534) Bool)

(assert (=> b!1422272 (= res!957811 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33531))))

(declare-fun b!1422273 () Bool)

(declare-fun res!957822 () Bool)

(assert (=> b!1422273 (=> (not res!957822) (not e!804089))))

(assert (=> b!1422273 (= res!957822 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47395 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47395 a!2831))))))

(declare-fun b!1422274 () Bool)

(declare-fun res!957809 () Bool)

(assert (=> b!1422274 (=> (not res!957809) (not e!804089))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422274 (= res!957809 (and (= (size!47395 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47395 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47395 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422275 () Bool)

(declare-fun e!804084 () Bool)

(assert (=> b!1422275 (= e!804086 (not e!804084))))

(declare-fun res!957813 () Bool)

(assert (=> b!1422275 (=> res!957813 e!804084)))

(assert (=> b!1422275 (= res!957813 (or (= (select (arr!46844 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46844 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46844 a!2831) index!585) (select (arr!46844 a!2831) j!81)) (= (select (store (arr!46844 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422275 e!804088))

(declare-fun res!957821 () Bool)

(assert (=> b!1422275 (=> (not res!957821) (not e!804088))))

(assert (=> b!1422275 (= res!957821 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48086 0))(
  ( (Unit!48087) )
))
(declare-fun lt!626581 () Unit!48086)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97061 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48086)

(assert (=> b!1422275 (= lt!626581 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422276 () Bool)

(declare-fun res!957808 () Bool)

(assert (=> b!1422276 (=> res!957808 e!804083)))

(assert (=> b!1422276 (= res!957808 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626576 (select (arr!46844 a!2831) j!81) a!2831 mask!2608) lt!626579)))))

(declare-fun b!1422277 () Bool)

(declare-fun res!957814 () Bool)

(assert (=> b!1422277 (=> (not res!957814) (not e!804086))))

(assert (=> b!1422277 (= res!957814 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46844 a!2831) j!81) a!2831 mask!2608) lt!626579))))

(declare-fun b!1422278 () Bool)

(assert (=> b!1422278 (= e!804087 e!804086)))

(declare-fun res!957810 () Bool)

(assert (=> b!1422278 (=> (not res!957810) (not e!804086))))

(assert (=> b!1422278 (= res!957810 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626578 mask!2608) lt!626578 lt!626580 mask!2608) lt!626577))))

(assert (=> b!1422278 (= lt!626577 (Intermediate!11151 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422278 (= lt!626578 (select (store (arr!46844 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422278 (= lt!626580 (array!97062 (store (arr!46844 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47395 a!2831)))))

(declare-fun b!1422279 () Bool)

(declare-fun res!957819 () Bool)

(assert (=> b!1422279 (=> (not res!957819) (not e!804089))))

(assert (=> b!1422279 (= res!957819 (validKeyInArray!0 (select (arr!46844 a!2831) i!982)))))

(declare-fun b!1422280 () Bool)

(assert (=> b!1422280 (= e!804084 e!804083)))

(declare-fun res!957812 () Bool)

(assert (=> b!1422280 (=> res!957812 e!804083)))

(assert (=> b!1422280 (= res!957812 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626576 #b00000000000000000000000000000000) (bvsge lt!626576 (size!47395 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422280 (= lt!626576 (nextIndex!0 index!585 x!605 mask!2608))))

(assert (= (and start!122778 res!957818) b!1422274))

(assert (= (and b!1422274 res!957809) b!1422279))

(assert (= (and b!1422279 res!957819) b!1422268))

(assert (= (and b!1422268 res!957815) b!1422269))

(assert (= (and b!1422269 res!957816) b!1422272))

(assert (= (and b!1422272 res!957811) b!1422273))

(assert (= (and b!1422273 res!957822) b!1422266))

(assert (= (and b!1422266 res!957820) b!1422278))

(assert (= (and b!1422278 res!957810) b!1422277))

(assert (= (and b!1422277 res!957814) b!1422270))

(assert (= (and b!1422270 res!957817) b!1422267))

(assert (= (and b!1422267 res!957807) b!1422275))

(assert (= (and b!1422275 res!957821) b!1422271))

(assert (= (and b!1422275 (not res!957813)) b!1422280))

(assert (= (and b!1422280 (not res!957812)) b!1422276))

(assert (= (and b!1422276 (not res!957808)) b!1422265))

(declare-fun m!1312871 () Bool)

(assert (=> b!1422269 m!1312871))

(declare-fun m!1312873 () Bool)

(assert (=> b!1422272 m!1312873))

(declare-fun m!1312875 () Bool)

(assert (=> b!1422280 m!1312875))

(declare-fun m!1312877 () Bool)

(assert (=> b!1422277 m!1312877))

(assert (=> b!1422277 m!1312877))

(declare-fun m!1312879 () Bool)

(assert (=> b!1422277 m!1312879))

(declare-fun m!1312881 () Bool)

(assert (=> b!1422265 m!1312881))

(assert (=> b!1422266 m!1312877))

(assert (=> b!1422266 m!1312877))

(declare-fun m!1312883 () Bool)

(assert (=> b!1422266 m!1312883))

(assert (=> b!1422266 m!1312883))

(assert (=> b!1422266 m!1312877))

(declare-fun m!1312885 () Bool)

(assert (=> b!1422266 m!1312885))

(assert (=> b!1422268 m!1312877))

(assert (=> b!1422268 m!1312877))

(declare-fun m!1312887 () Bool)

(assert (=> b!1422268 m!1312887))

(declare-fun m!1312889 () Bool)

(assert (=> b!1422275 m!1312889))

(declare-fun m!1312891 () Bool)

(assert (=> b!1422275 m!1312891))

(declare-fun m!1312893 () Bool)

(assert (=> b!1422275 m!1312893))

(declare-fun m!1312895 () Bool)

(assert (=> b!1422275 m!1312895))

(assert (=> b!1422275 m!1312877))

(declare-fun m!1312897 () Bool)

(assert (=> b!1422275 m!1312897))

(assert (=> b!1422276 m!1312877))

(assert (=> b!1422276 m!1312877))

(declare-fun m!1312899 () Bool)

(assert (=> b!1422276 m!1312899))

(declare-fun m!1312901 () Bool)

(assert (=> start!122778 m!1312901))

(declare-fun m!1312903 () Bool)

(assert (=> start!122778 m!1312903))

(declare-fun m!1312905 () Bool)

(assert (=> b!1422278 m!1312905))

(assert (=> b!1422278 m!1312905))

(declare-fun m!1312907 () Bool)

(assert (=> b!1422278 m!1312907))

(assert (=> b!1422278 m!1312889))

(declare-fun m!1312909 () Bool)

(assert (=> b!1422278 m!1312909))

(declare-fun m!1312911 () Bool)

(assert (=> b!1422279 m!1312911))

(assert (=> b!1422279 m!1312911))

(declare-fun m!1312913 () Bool)

(assert (=> b!1422279 m!1312913))

(assert (=> b!1422271 m!1312877))

(assert (=> b!1422271 m!1312877))

(declare-fun m!1312915 () Bool)

(assert (=> b!1422271 m!1312915))

(declare-fun m!1312917 () Bool)

(assert (=> b!1422270 m!1312917))

(check-sat (not b!1422279) (not b!1422271) (not b!1422275) (not b!1422270) (not b!1422266) (not b!1422269) (not b!1422272) (not b!1422265) (not b!1422278) (not start!122778) (not b!1422268) (not b!1422276) (not b!1422277) (not b!1422280))
(check-sat)
