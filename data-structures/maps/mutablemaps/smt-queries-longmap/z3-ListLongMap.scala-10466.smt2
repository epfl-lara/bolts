; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123054 () Bool)

(assert start!123054)

(declare-fun b!1426681 () Bool)

(declare-fun res!962022 () Bool)

(declare-fun e!805884 () Bool)

(assert (=> b!1426681 (=> (not res!962022) (not e!805884))))

(declare-datatypes ((array!97286 0))(
  ( (array!97287 (arr!46955 (Array (_ BitVec 32) (_ BitVec 64))) (size!47506 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97286)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426681 (= res!962022 (validKeyInArray!0 (select (arr!46955 a!2831) i!982)))))

(declare-fun b!1426682 () Bool)

(declare-fun res!962033 () Bool)

(assert (=> b!1426682 (=> (not res!962033) (not e!805884))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1426682 (= res!962033 (validKeyInArray!0 (select (arr!46955 a!2831) j!81)))))

(declare-fun b!1426683 () Bool)

(declare-fun res!962025 () Bool)

(declare-fun e!805883 () Bool)

(assert (=> b!1426683 (=> (not res!962025) (not e!805883))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426683 (= res!962025 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1426684 () Bool)

(assert (=> b!1426684 (= e!805883 (not true))))

(declare-fun e!805886 () Bool)

(assert (=> b!1426684 e!805886))

(declare-fun res!962028 () Bool)

(assert (=> b!1426684 (=> (not res!962028) (not e!805886))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97286 (_ BitVec 32)) Bool)

(assert (=> b!1426684 (= res!962028 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48206 0))(
  ( (Unit!48207) )
))
(declare-fun lt!628238 () Unit!48206)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97286 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48206)

(assert (=> b!1426684 (= lt!628238 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426685 () Bool)

(declare-fun res!962023 () Bool)

(assert (=> b!1426685 (=> (not res!962023) (not e!805883))))

(declare-datatypes ((SeekEntryResult!11256 0))(
  ( (MissingZero!11256 (index!47415 (_ BitVec 32))) (Found!11256 (index!47416 (_ BitVec 32))) (Intermediate!11256 (undefined!12068 Bool) (index!47417 (_ BitVec 32)) (x!129051 (_ BitVec 32))) (Undefined!11256) (MissingVacant!11256 (index!47418 (_ BitVec 32))) )
))
(declare-fun lt!628240 () SeekEntryResult!11256)

(declare-fun lt!628236 () array!97286)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!628239 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97286 (_ BitVec 32)) SeekEntryResult!11256)

(assert (=> b!1426685 (= res!962023 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628239 lt!628236 mask!2608) lt!628240))))

(declare-fun b!1426687 () Bool)

(declare-fun res!962030 () Bool)

(assert (=> b!1426687 (=> (not res!962030) (not e!805884))))

(declare-datatypes ((List!33645 0))(
  ( (Nil!33642) (Cons!33641 (h!34946 (_ BitVec 64)) (t!48346 List!33645)) )
))
(declare-fun arrayNoDuplicates!0 (array!97286 (_ BitVec 32) List!33645) Bool)

(assert (=> b!1426687 (= res!962030 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33642))))

(declare-fun b!1426688 () Bool)

(declare-fun res!962024 () Bool)

(assert (=> b!1426688 (=> (not res!962024) (not e!805884))))

(assert (=> b!1426688 (= res!962024 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47506 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47506 a!2831))))))

(declare-fun b!1426689 () Bool)

(declare-fun res!962027 () Bool)

(assert (=> b!1426689 (=> (not res!962027) (not e!805883))))

(declare-fun lt!628237 () SeekEntryResult!11256)

(assert (=> b!1426689 (= res!962027 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46955 a!2831) j!81) a!2831 mask!2608) lt!628237))))

(declare-fun b!1426690 () Bool)

(declare-fun res!962029 () Bool)

(assert (=> b!1426690 (=> (not res!962029) (not e!805884))))

(assert (=> b!1426690 (= res!962029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426691 () Bool)

(declare-fun res!962034 () Bool)

(assert (=> b!1426691 (=> (not res!962034) (not e!805884))))

(assert (=> b!1426691 (= res!962034 (and (= (size!47506 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47506 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47506 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!962032 () Bool)

(assert (=> start!123054 (=> (not res!962032) (not e!805884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123054 (= res!962032 (validMask!0 mask!2608))))

(assert (=> start!123054 e!805884))

(assert (=> start!123054 true))

(declare-fun array_inv!35900 (array!97286) Bool)

(assert (=> start!123054 (array_inv!35900 a!2831)))

(declare-fun b!1426686 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97286 (_ BitVec 32)) SeekEntryResult!11256)

(assert (=> b!1426686 (= e!805886 (= (seekEntryOrOpen!0 (select (arr!46955 a!2831) j!81) a!2831 mask!2608) (Found!11256 j!81)))))

(declare-fun b!1426692 () Bool)

(declare-fun e!805885 () Bool)

(assert (=> b!1426692 (= e!805885 e!805883)))

(declare-fun res!962026 () Bool)

(assert (=> b!1426692 (=> (not res!962026) (not e!805883))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426692 (= res!962026 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628239 mask!2608) lt!628239 lt!628236 mask!2608) lt!628240))))

(assert (=> b!1426692 (= lt!628240 (Intermediate!11256 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1426692 (= lt!628239 (select (store (arr!46955 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426692 (= lt!628236 (array!97287 (store (arr!46955 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47506 a!2831)))))

(declare-fun b!1426693 () Bool)

(assert (=> b!1426693 (= e!805884 e!805885)))

(declare-fun res!962031 () Bool)

(assert (=> b!1426693 (=> (not res!962031) (not e!805885))))

(assert (=> b!1426693 (= res!962031 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46955 a!2831) j!81) mask!2608) (select (arr!46955 a!2831) j!81) a!2831 mask!2608) lt!628237))))

(assert (=> b!1426693 (= lt!628237 (Intermediate!11256 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!123054 res!962032) b!1426691))

(assert (= (and b!1426691 res!962034) b!1426681))

(assert (= (and b!1426681 res!962022) b!1426682))

(assert (= (and b!1426682 res!962033) b!1426690))

(assert (= (and b!1426690 res!962029) b!1426687))

(assert (= (and b!1426687 res!962030) b!1426688))

(assert (= (and b!1426688 res!962024) b!1426693))

(assert (= (and b!1426693 res!962031) b!1426692))

(assert (= (and b!1426692 res!962026) b!1426689))

(assert (= (and b!1426689 res!962027) b!1426685))

(assert (= (and b!1426685 res!962023) b!1426683))

(assert (= (and b!1426683 res!962025) b!1426684))

(assert (= (and b!1426684 res!962028) b!1426686))

(declare-fun m!1317235 () Bool)

(assert (=> b!1426686 m!1317235))

(assert (=> b!1426686 m!1317235))

(declare-fun m!1317237 () Bool)

(assert (=> b!1426686 m!1317237))

(assert (=> b!1426693 m!1317235))

(assert (=> b!1426693 m!1317235))

(declare-fun m!1317239 () Bool)

(assert (=> b!1426693 m!1317239))

(assert (=> b!1426693 m!1317239))

(assert (=> b!1426693 m!1317235))

(declare-fun m!1317241 () Bool)

(assert (=> b!1426693 m!1317241))

(declare-fun m!1317243 () Bool)

(assert (=> start!123054 m!1317243))

(declare-fun m!1317245 () Bool)

(assert (=> start!123054 m!1317245))

(declare-fun m!1317247 () Bool)

(assert (=> b!1426685 m!1317247))

(declare-fun m!1317249 () Bool)

(assert (=> b!1426690 m!1317249))

(assert (=> b!1426682 m!1317235))

(assert (=> b!1426682 m!1317235))

(declare-fun m!1317251 () Bool)

(assert (=> b!1426682 m!1317251))

(declare-fun m!1317253 () Bool)

(assert (=> b!1426684 m!1317253))

(declare-fun m!1317255 () Bool)

(assert (=> b!1426684 m!1317255))

(declare-fun m!1317257 () Bool)

(assert (=> b!1426687 m!1317257))

(declare-fun m!1317259 () Bool)

(assert (=> b!1426681 m!1317259))

(assert (=> b!1426681 m!1317259))

(declare-fun m!1317261 () Bool)

(assert (=> b!1426681 m!1317261))

(declare-fun m!1317263 () Bool)

(assert (=> b!1426692 m!1317263))

(assert (=> b!1426692 m!1317263))

(declare-fun m!1317265 () Bool)

(assert (=> b!1426692 m!1317265))

(declare-fun m!1317267 () Bool)

(assert (=> b!1426692 m!1317267))

(declare-fun m!1317269 () Bool)

(assert (=> b!1426692 m!1317269))

(assert (=> b!1426689 m!1317235))

(assert (=> b!1426689 m!1317235))

(declare-fun m!1317271 () Bool)

(assert (=> b!1426689 m!1317271))

(check-sat (not start!123054) (not b!1426689) (not b!1426687) (not b!1426690) (not b!1426681) (not b!1426685) (not b!1426682) (not b!1426692) (not b!1426686) (not b!1426684) (not b!1426693))
(check-sat)
