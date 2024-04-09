; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122780 () Bool)

(assert start!122780)

(declare-fun b!1422313 () Bool)

(declare-fun e!804106 () Bool)

(declare-fun e!804109 () Bool)

(assert (=> b!1422313 (= e!804106 (not e!804109))))

(declare-fun res!957859 () Bool)

(assert (=> b!1422313 (=> res!957859 e!804109)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97063 0))(
  ( (array!97064 (arr!46845 (Array (_ BitVec 32) (_ BitVec 64))) (size!47396 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97063)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422313 (= res!957859 (or (= (select (arr!46845 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46845 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46845 a!2831) index!585) (select (arr!46845 a!2831) j!81)) (= (select (store (arr!46845 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804110 () Bool)

(assert (=> b!1422313 e!804110))

(declare-fun res!957863 () Bool)

(assert (=> b!1422313 (=> (not res!957863) (not e!804110))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97063 (_ BitVec 32)) Bool)

(assert (=> b!1422313 (= res!957863 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48088 0))(
  ( (Unit!48089) )
))
(declare-fun lt!626598 () Unit!48088)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97063 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48088)

(assert (=> b!1422313 (= lt!626598 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422314 () Bool)

(declare-fun res!957861 () Bool)

(declare-fun e!804107 () Bool)

(assert (=> b!1422314 (=> (not res!957861) (not e!804107))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422314 (= res!957861 (validKeyInArray!0 (select (arr!46845 a!2831) j!81)))))

(declare-fun b!1422315 () Bool)

(declare-fun e!804105 () Bool)

(assert (=> b!1422315 (= e!804109 e!804105)))

(declare-fun res!957860 () Bool)

(assert (=> b!1422315 (=> res!957860 e!804105)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!626597 () (_ BitVec 32))

(assert (=> b!1422315 (= res!957860 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626597 #b00000000000000000000000000000000) (bvsge lt!626597 (size!47396 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422315 (= lt!626597 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422316 () Bool)

(declare-fun res!957869 () Bool)

(assert (=> b!1422316 (=> (not res!957869) (not e!804107))))

(assert (=> b!1422316 (= res!957869 (and (= (size!47396 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47396 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47396 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422317 () Bool)

(declare-fun e!804108 () Bool)

(assert (=> b!1422317 (= e!804107 e!804108)))

(declare-fun res!957864 () Bool)

(assert (=> b!1422317 (=> (not res!957864) (not e!804108))))

(declare-datatypes ((SeekEntryResult!11152 0))(
  ( (MissingZero!11152 (index!46999 (_ BitVec 32))) (Found!11152 (index!47000 (_ BitVec 32))) (Intermediate!11152 (undefined!11964 Bool) (index!47001 (_ BitVec 32)) (x!128645 (_ BitVec 32))) (Undefined!11152) (MissingVacant!11152 (index!47002 (_ BitVec 32))) )
))
(declare-fun lt!626602 () SeekEntryResult!11152)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97063 (_ BitVec 32)) SeekEntryResult!11152)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422317 (= res!957864 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46845 a!2831) j!81) mask!2608) (select (arr!46845 a!2831) j!81) a!2831 mask!2608) lt!626602))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1422317 (= lt!626602 (Intermediate!11152 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422319 () Bool)

(declare-fun res!957856 () Bool)

(assert (=> b!1422319 (=> (not res!957856) (not e!804106))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422319 (= res!957856 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422320 () Bool)

(declare-fun res!957862 () Bool)

(assert (=> b!1422320 (=> (not res!957862) (not e!804107))))

(assert (=> b!1422320 (= res!957862 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47396 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47396 a!2831))))))

(declare-fun b!1422321 () Bool)

(declare-fun res!957858 () Bool)

(assert (=> b!1422321 (=> (not res!957858) (not e!804107))))

(declare-datatypes ((List!33535 0))(
  ( (Nil!33532) (Cons!33531 (h!34833 (_ BitVec 64)) (t!48236 List!33535)) )
))
(declare-fun arrayNoDuplicates!0 (array!97063 (_ BitVec 32) List!33535) Bool)

(assert (=> b!1422321 (= res!957858 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33532))))

(declare-fun b!1422322 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97063 (_ BitVec 32)) SeekEntryResult!11152)

(assert (=> b!1422322 (= e!804110 (= (seekEntryOrOpen!0 (select (arr!46845 a!2831) j!81) a!2831 mask!2608) (Found!11152 j!81)))))

(declare-fun b!1422323 () Bool)

(assert (=> b!1422323 (= e!804105 true)))

(declare-fun lt!626599 () SeekEntryResult!11152)

(declare-fun lt!626600 () array!97063)

(declare-fun lt!626596 () (_ BitVec 64))

(assert (=> b!1422323 (= lt!626599 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626597 lt!626596 lt!626600 mask!2608))))

(declare-fun b!1422324 () Bool)

(declare-fun res!957867 () Bool)

(assert (=> b!1422324 (=> (not res!957867) (not e!804107))))

(assert (=> b!1422324 (= res!957867 (validKeyInArray!0 (select (arr!46845 a!2831) i!982)))))

(declare-fun res!957865 () Bool)

(assert (=> start!122780 (=> (not res!957865) (not e!804107))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122780 (= res!957865 (validMask!0 mask!2608))))

(assert (=> start!122780 e!804107))

(assert (=> start!122780 true))

(declare-fun array_inv!35790 (array!97063) Bool)

(assert (=> start!122780 (array_inv!35790 a!2831)))

(declare-fun b!1422318 () Bool)

(declare-fun res!957857 () Bool)

(assert (=> b!1422318 (=> (not res!957857) (not e!804107))))

(assert (=> b!1422318 (= res!957857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422325 () Bool)

(declare-fun res!957870 () Bool)

(assert (=> b!1422325 (=> (not res!957870) (not e!804106))))

(declare-fun lt!626601 () SeekEntryResult!11152)

(assert (=> b!1422325 (= res!957870 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626596 lt!626600 mask!2608) lt!626601))))

(declare-fun b!1422326 () Bool)

(assert (=> b!1422326 (= e!804108 e!804106)))

(declare-fun res!957855 () Bool)

(assert (=> b!1422326 (=> (not res!957855) (not e!804106))))

(assert (=> b!1422326 (= res!957855 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626596 mask!2608) lt!626596 lt!626600 mask!2608) lt!626601))))

(assert (=> b!1422326 (= lt!626601 (Intermediate!11152 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422326 (= lt!626596 (select (store (arr!46845 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422326 (= lt!626600 (array!97064 (store (arr!46845 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47396 a!2831)))))

(declare-fun b!1422327 () Bool)

(declare-fun res!957868 () Bool)

(assert (=> b!1422327 (=> res!957868 e!804105)))

(assert (=> b!1422327 (= res!957868 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626597 (select (arr!46845 a!2831) j!81) a!2831 mask!2608) lt!626602)))))

(declare-fun b!1422328 () Bool)

(declare-fun res!957866 () Bool)

(assert (=> b!1422328 (=> (not res!957866) (not e!804106))))

(assert (=> b!1422328 (= res!957866 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46845 a!2831) j!81) a!2831 mask!2608) lt!626602))))

(assert (= (and start!122780 res!957865) b!1422316))

(assert (= (and b!1422316 res!957869) b!1422324))

(assert (= (and b!1422324 res!957867) b!1422314))

(assert (= (and b!1422314 res!957861) b!1422318))

(assert (= (and b!1422318 res!957857) b!1422321))

(assert (= (and b!1422321 res!957858) b!1422320))

(assert (= (and b!1422320 res!957862) b!1422317))

(assert (= (and b!1422317 res!957864) b!1422326))

(assert (= (and b!1422326 res!957855) b!1422328))

(assert (= (and b!1422328 res!957866) b!1422325))

(assert (= (and b!1422325 res!957870) b!1422319))

(assert (= (and b!1422319 res!957856) b!1422313))

(assert (= (and b!1422313 res!957863) b!1422322))

(assert (= (and b!1422313 (not res!957859)) b!1422315))

(assert (= (and b!1422315 (not res!957860)) b!1422327))

(assert (= (and b!1422327 (not res!957868)) b!1422323))

(declare-fun m!1312919 () Bool)

(assert (=> start!122780 m!1312919))

(declare-fun m!1312921 () Bool)

(assert (=> start!122780 m!1312921))

(declare-fun m!1312923 () Bool)

(assert (=> b!1422314 m!1312923))

(assert (=> b!1422314 m!1312923))

(declare-fun m!1312925 () Bool)

(assert (=> b!1422314 m!1312925))

(declare-fun m!1312927 () Bool)

(assert (=> b!1422321 m!1312927))

(declare-fun m!1312929 () Bool)

(assert (=> b!1422325 m!1312929))

(declare-fun m!1312931 () Bool)

(assert (=> b!1422323 m!1312931))

(assert (=> b!1422317 m!1312923))

(assert (=> b!1422317 m!1312923))

(declare-fun m!1312933 () Bool)

(assert (=> b!1422317 m!1312933))

(assert (=> b!1422317 m!1312933))

(assert (=> b!1422317 m!1312923))

(declare-fun m!1312935 () Bool)

(assert (=> b!1422317 m!1312935))

(assert (=> b!1422322 m!1312923))

(assert (=> b!1422322 m!1312923))

(declare-fun m!1312937 () Bool)

(assert (=> b!1422322 m!1312937))

(declare-fun m!1312939 () Bool)

(assert (=> b!1422318 m!1312939))

(declare-fun m!1312941 () Bool)

(assert (=> b!1422326 m!1312941))

(assert (=> b!1422326 m!1312941))

(declare-fun m!1312943 () Bool)

(assert (=> b!1422326 m!1312943))

(declare-fun m!1312945 () Bool)

(assert (=> b!1422326 m!1312945))

(declare-fun m!1312947 () Bool)

(assert (=> b!1422326 m!1312947))

(assert (=> b!1422327 m!1312923))

(assert (=> b!1422327 m!1312923))

(declare-fun m!1312949 () Bool)

(assert (=> b!1422327 m!1312949))

(declare-fun m!1312951 () Bool)

(assert (=> b!1422324 m!1312951))

(assert (=> b!1422324 m!1312951))

(declare-fun m!1312953 () Bool)

(assert (=> b!1422324 m!1312953))

(assert (=> b!1422313 m!1312945))

(declare-fun m!1312955 () Bool)

(assert (=> b!1422313 m!1312955))

(declare-fun m!1312957 () Bool)

(assert (=> b!1422313 m!1312957))

(declare-fun m!1312959 () Bool)

(assert (=> b!1422313 m!1312959))

(assert (=> b!1422313 m!1312923))

(declare-fun m!1312961 () Bool)

(assert (=> b!1422313 m!1312961))

(declare-fun m!1312963 () Bool)

(assert (=> b!1422315 m!1312963))

(assert (=> b!1422328 m!1312923))

(assert (=> b!1422328 m!1312923))

(declare-fun m!1312965 () Bool)

(assert (=> b!1422328 m!1312965))

(push 1)

