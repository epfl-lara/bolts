; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123060 () Bool)

(assert start!123060)

(declare-fun b!1426798 () Bool)

(declare-fun res!962143 () Bool)

(declare-fun e!805930 () Bool)

(assert (=> b!1426798 (=> (not res!962143) (not e!805930))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11259 0))(
  ( (MissingZero!11259 (index!47427 (_ BitVec 32))) (Found!11259 (index!47428 (_ BitVec 32))) (Intermediate!11259 (undefined!12071 Bool) (index!47429 (_ BitVec 32)) (x!129062 (_ BitVec 32))) (Undefined!11259) (MissingVacant!11259 (index!47430 (_ BitVec 32))) )
))
(declare-fun lt!628285 () SeekEntryResult!11259)

(declare-datatypes ((array!97292 0))(
  ( (array!97293 (arr!46958 (Array (_ BitVec 32) (_ BitVec 64))) (size!47509 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97292)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97292 (_ BitVec 32)) SeekEntryResult!11259)

(assert (=> b!1426798 (= res!962143 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46958 a!2831) j!81) a!2831 mask!2608) lt!628285))))

(declare-fun b!1426799 () Bool)

(declare-fun res!962141 () Bool)

(declare-fun e!805928 () Bool)

(assert (=> b!1426799 (=> (not res!962141) (not e!805928))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1426799 (= res!962141 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47509 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47509 a!2831))))))

(declare-fun b!1426800 () Bool)

(declare-fun e!805931 () Bool)

(assert (=> b!1426800 (= e!805931 e!805930)))

(declare-fun res!962144 () Bool)

(assert (=> b!1426800 (=> (not res!962144) (not e!805930))))

(declare-fun lt!628283 () (_ BitVec 64))

(declare-fun lt!628282 () SeekEntryResult!11259)

(declare-fun lt!628281 () array!97292)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426800 (= res!962144 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628283 mask!2608) lt!628283 lt!628281 mask!2608) lt!628282))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426800 (= lt!628282 (Intermediate!11259 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1426800 (= lt!628283 (select (store (arr!46958 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426800 (= lt!628281 (array!97293 (store (arr!46958 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47509 a!2831)))))

(declare-fun b!1426801 () Bool)

(assert (=> b!1426801 (= e!805928 e!805931)))

(declare-fun res!962140 () Bool)

(assert (=> b!1426801 (=> (not res!962140) (not e!805931))))

(assert (=> b!1426801 (= res!962140 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46958 a!2831) j!81) mask!2608) (select (arr!46958 a!2831) j!81) a!2831 mask!2608) lt!628285))))

(assert (=> b!1426801 (= lt!628285 (Intermediate!11259 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426802 () Bool)

(declare-fun res!962149 () Bool)

(assert (=> b!1426802 (=> (not res!962149) (not e!805930))))

(assert (=> b!1426802 (= res!962149 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1426803 () Bool)

(declare-fun res!962147 () Bool)

(assert (=> b!1426803 (=> (not res!962147) (not e!805930))))

(assert (=> b!1426803 (= res!962147 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628283 lt!628281 mask!2608) lt!628282))))

(declare-fun b!1426804 () Bool)

(declare-fun res!962150 () Bool)

(assert (=> b!1426804 (=> (not res!962150) (not e!805928))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426804 (= res!962150 (validKeyInArray!0 (select (arr!46958 a!2831) i!982)))))

(declare-fun res!962148 () Bool)

(assert (=> start!123060 (=> (not res!962148) (not e!805928))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123060 (= res!962148 (validMask!0 mask!2608))))

(assert (=> start!123060 e!805928))

(assert (=> start!123060 true))

(declare-fun array_inv!35903 (array!97292) Bool)

(assert (=> start!123060 (array_inv!35903 a!2831)))

(declare-fun b!1426805 () Bool)

(declare-fun res!962145 () Bool)

(assert (=> b!1426805 (=> (not res!962145) (not e!805928))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97292 (_ BitVec 32)) Bool)

(assert (=> b!1426805 (= res!962145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426806 () Bool)

(assert (=> b!1426806 (= e!805930 (not (not (= (select (arr!46958 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!805929 () Bool)

(assert (=> b!1426806 e!805929))

(declare-fun res!962151 () Bool)

(assert (=> b!1426806 (=> (not res!962151) (not e!805929))))

(assert (=> b!1426806 (= res!962151 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48212 0))(
  ( (Unit!48213) )
))
(declare-fun lt!628284 () Unit!48212)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97292 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48212)

(assert (=> b!1426806 (= lt!628284 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426807 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97292 (_ BitVec 32)) SeekEntryResult!11259)

(assert (=> b!1426807 (= e!805929 (= (seekEntryOrOpen!0 (select (arr!46958 a!2831) j!81) a!2831 mask!2608) (Found!11259 j!81)))))

(declare-fun b!1426808 () Bool)

(declare-fun res!962146 () Bool)

(assert (=> b!1426808 (=> (not res!962146) (not e!805928))))

(declare-datatypes ((List!33648 0))(
  ( (Nil!33645) (Cons!33644 (h!34949 (_ BitVec 64)) (t!48349 List!33648)) )
))
(declare-fun arrayNoDuplicates!0 (array!97292 (_ BitVec 32) List!33648) Bool)

(assert (=> b!1426808 (= res!962146 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33645))))

(declare-fun b!1426809 () Bool)

(declare-fun res!962139 () Bool)

(assert (=> b!1426809 (=> (not res!962139) (not e!805928))))

(assert (=> b!1426809 (= res!962139 (and (= (size!47509 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47509 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47509 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426810 () Bool)

(declare-fun res!962142 () Bool)

(assert (=> b!1426810 (=> (not res!962142) (not e!805928))))

(assert (=> b!1426810 (= res!962142 (validKeyInArray!0 (select (arr!46958 a!2831) j!81)))))

(assert (= (and start!123060 res!962148) b!1426809))

(assert (= (and b!1426809 res!962139) b!1426804))

(assert (= (and b!1426804 res!962150) b!1426810))

(assert (= (and b!1426810 res!962142) b!1426805))

(assert (= (and b!1426805 res!962145) b!1426808))

(assert (= (and b!1426808 res!962146) b!1426799))

(assert (= (and b!1426799 res!962141) b!1426801))

(assert (= (and b!1426801 res!962140) b!1426800))

(assert (= (and b!1426800 res!962144) b!1426798))

(assert (= (and b!1426798 res!962143) b!1426803))

(assert (= (and b!1426803 res!962147) b!1426802))

(assert (= (and b!1426802 res!962149) b!1426806))

(assert (= (and b!1426806 res!962151) b!1426807))

(declare-fun m!1317351 () Bool)

(assert (=> b!1426806 m!1317351))

(declare-fun m!1317353 () Bool)

(assert (=> b!1426806 m!1317353))

(declare-fun m!1317355 () Bool)

(assert (=> b!1426806 m!1317355))

(declare-fun m!1317357 () Bool)

(assert (=> b!1426807 m!1317357))

(assert (=> b!1426807 m!1317357))

(declare-fun m!1317359 () Bool)

(assert (=> b!1426807 m!1317359))

(assert (=> b!1426810 m!1317357))

(assert (=> b!1426810 m!1317357))

(declare-fun m!1317361 () Bool)

(assert (=> b!1426810 m!1317361))

(declare-fun m!1317363 () Bool)

(assert (=> start!123060 m!1317363))

(declare-fun m!1317365 () Bool)

(assert (=> start!123060 m!1317365))

(declare-fun m!1317367 () Bool)

(assert (=> b!1426805 m!1317367))

(assert (=> b!1426801 m!1317357))

(assert (=> b!1426801 m!1317357))

(declare-fun m!1317369 () Bool)

(assert (=> b!1426801 m!1317369))

(assert (=> b!1426801 m!1317369))

(assert (=> b!1426801 m!1317357))

(declare-fun m!1317371 () Bool)

(assert (=> b!1426801 m!1317371))

(declare-fun m!1317373 () Bool)

(assert (=> b!1426803 m!1317373))

(declare-fun m!1317375 () Bool)

(assert (=> b!1426804 m!1317375))

(assert (=> b!1426804 m!1317375))

(declare-fun m!1317377 () Bool)

(assert (=> b!1426804 m!1317377))

(assert (=> b!1426798 m!1317357))

(assert (=> b!1426798 m!1317357))

(declare-fun m!1317379 () Bool)

(assert (=> b!1426798 m!1317379))

(declare-fun m!1317381 () Bool)

(assert (=> b!1426808 m!1317381))

(declare-fun m!1317383 () Bool)

(assert (=> b!1426800 m!1317383))

(assert (=> b!1426800 m!1317383))

(declare-fun m!1317385 () Bool)

(assert (=> b!1426800 m!1317385))

(declare-fun m!1317387 () Bool)

(assert (=> b!1426800 m!1317387))

(declare-fun m!1317389 () Bool)

(assert (=> b!1426800 m!1317389))

(check-sat (not b!1426806) (not b!1426801) (not b!1426798) (not b!1426810) (not b!1426807) (not b!1426800) (not b!1426805) (not b!1426804) (not b!1426803) (not b!1426808) (not start!123060))
(check-sat)
(get-model)

(declare-fun b!1426868 () Bool)

(declare-fun e!805960 () SeekEntryResult!11259)

(assert (=> b!1426868 (= e!805960 (Intermediate!11259 true (toIndex!0 lt!628283 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426869 () Bool)

(declare-fun lt!628305 () SeekEntryResult!11259)

(assert (=> b!1426869 (and (bvsge (index!47429 lt!628305) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628305) (size!47509 lt!628281)))))

(declare-fun e!805957 () Bool)

(assert (=> b!1426869 (= e!805957 (= (select (arr!46958 lt!628281) (index!47429 lt!628305)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!805961 () SeekEntryResult!11259)

(declare-fun b!1426870 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426870 (= e!805961 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628283 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628283 lt!628281 mask!2608))))

(declare-fun b!1426871 () Bool)

(declare-fun e!805958 () Bool)

(declare-fun e!805959 () Bool)

(assert (=> b!1426871 (= e!805958 e!805959)))

(declare-fun res!962197 () Bool)

(get-info :version)

(assert (=> b!1426871 (= res!962197 (and ((_ is Intermediate!11259) lt!628305) (not (undefined!12071 lt!628305)) (bvslt (x!129062 lt!628305) #b01111111111111111111111111111110) (bvsge (x!129062 lt!628305) #b00000000000000000000000000000000) (bvsge (x!129062 lt!628305) #b00000000000000000000000000000000)))))

(assert (=> b!1426871 (=> (not res!962197) (not e!805959))))

(declare-fun d!153195 () Bool)

(assert (=> d!153195 e!805958))

(declare-fun c!131826 () Bool)

(assert (=> d!153195 (= c!131826 (and ((_ is Intermediate!11259) lt!628305) (undefined!12071 lt!628305)))))

(assert (=> d!153195 (= lt!628305 e!805960)))

(declare-fun c!131828 () Bool)

(assert (=> d!153195 (= c!131828 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628306 () (_ BitVec 64))

(assert (=> d!153195 (= lt!628306 (select (arr!46958 lt!628281) (toIndex!0 lt!628283 mask!2608)))))

(assert (=> d!153195 (validMask!0 mask!2608)))

(assert (=> d!153195 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628283 mask!2608) lt!628283 lt!628281 mask!2608) lt!628305)))

(declare-fun b!1426872 () Bool)

(assert (=> b!1426872 (= e!805960 e!805961)))

(declare-fun c!131827 () Bool)

(assert (=> b!1426872 (= c!131827 (or (= lt!628306 lt!628283) (= (bvadd lt!628306 lt!628306) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426873 () Bool)

(assert (=> b!1426873 (= e!805958 (bvsge (x!129062 lt!628305) #b01111111111111111111111111111110))))

(declare-fun b!1426874 () Bool)

(assert (=> b!1426874 (and (bvsge (index!47429 lt!628305) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628305) (size!47509 lt!628281)))))

(declare-fun res!962199 () Bool)

(assert (=> b!1426874 (= res!962199 (= (select (arr!46958 lt!628281) (index!47429 lt!628305)) lt!628283))))

(assert (=> b!1426874 (=> res!962199 e!805957)))

(assert (=> b!1426874 (= e!805959 e!805957)))

(declare-fun b!1426875 () Bool)

(assert (=> b!1426875 (and (bvsge (index!47429 lt!628305) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628305) (size!47509 lt!628281)))))

(declare-fun res!962198 () Bool)

(assert (=> b!1426875 (= res!962198 (= (select (arr!46958 lt!628281) (index!47429 lt!628305)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426875 (=> res!962198 e!805957)))

(declare-fun b!1426876 () Bool)

(assert (=> b!1426876 (= e!805961 (Intermediate!11259 false (toIndex!0 lt!628283 mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153195 c!131828) b!1426868))

(assert (= (and d!153195 (not c!131828)) b!1426872))

(assert (= (and b!1426872 c!131827) b!1426876))

(assert (= (and b!1426872 (not c!131827)) b!1426870))

(assert (= (and d!153195 c!131826) b!1426873))

(assert (= (and d!153195 (not c!131826)) b!1426871))

(assert (= (and b!1426871 res!962197) b!1426874))

(assert (= (and b!1426874 (not res!962199)) b!1426875))

(assert (= (and b!1426875 (not res!962198)) b!1426869))

(declare-fun m!1317431 () Bool)

(assert (=> b!1426875 m!1317431))

(assert (=> b!1426874 m!1317431))

(assert (=> d!153195 m!1317383))

(declare-fun m!1317433 () Bool)

(assert (=> d!153195 m!1317433))

(assert (=> d!153195 m!1317363))

(assert (=> b!1426869 m!1317431))

(assert (=> b!1426870 m!1317383))

(declare-fun m!1317435 () Bool)

(assert (=> b!1426870 m!1317435))

(assert (=> b!1426870 m!1317435))

(declare-fun m!1317437 () Bool)

(assert (=> b!1426870 m!1317437))

(assert (=> b!1426800 d!153195))

(declare-fun d!153197 () Bool)

(declare-fun lt!628312 () (_ BitVec 32))

(declare-fun lt!628311 () (_ BitVec 32))

(assert (=> d!153197 (= lt!628312 (bvmul (bvxor lt!628311 (bvlshr lt!628311 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153197 (= lt!628311 ((_ extract 31 0) (bvand (bvxor lt!628283 (bvlshr lt!628283 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153197 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962200 (let ((h!34951 ((_ extract 31 0) (bvand (bvxor lt!628283 (bvlshr lt!628283 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129065 (bvmul (bvxor h!34951 (bvlshr h!34951 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129065 (bvlshr x!129065 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962200 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962200 #b00000000000000000000000000000000))))))

(assert (=> d!153197 (= (toIndex!0 lt!628283 mask!2608) (bvand (bvxor lt!628312 (bvlshr lt!628312 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426800 d!153197))

(declare-fun b!1426877 () Bool)

(declare-fun e!805965 () SeekEntryResult!11259)

(assert (=> b!1426877 (= e!805965 (Intermediate!11259 true (toIndex!0 (select (arr!46958 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426878 () Bool)

(declare-fun lt!628313 () SeekEntryResult!11259)

(assert (=> b!1426878 (and (bvsge (index!47429 lt!628313) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628313) (size!47509 a!2831)))))

(declare-fun e!805962 () Bool)

(assert (=> b!1426878 (= e!805962 (= (select (arr!46958 a!2831) (index!47429 lt!628313)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426879 () Bool)

(declare-fun e!805966 () SeekEntryResult!11259)

(assert (=> b!1426879 (= e!805966 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46958 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46958 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1426880 () Bool)

(declare-fun e!805963 () Bool)

(declare-fun e!805964 () Bool)

(assert (=> b!1426880 (= e!805963 e!805964)))

(declare-fun res!962201 () Bool)

(assert (=> b!1426880 (= res!962201 (and ((_ is Intermediate!11259) lt!628313) (not (undefined!12071 lt!628313)) (bvslt (x!129062 lt!628313) #b01111111111111111111111111111110) (bvsge (x!129062 lt!628313) #b00000000000000000000000000000000) (bvsge (x!129062 lt!628313) #b00000000000000000000000000000000)))))

(assert (=> b!1426880 (=> (not res!962201) (not e!805964))))

(declare-fun d!153201 () Bool)

(assert (=> d!153201 e!805963))

(declare-fun c!131829 () Bool)

(assert (=> d!153201 (= c!131829 (and ((_ is Intermediate!11259) lt!628313) (undefined!12071 lt!628313)))))

(assert (=> d!153201 (= lt!628313 e!805965)))

(declare-fun c!131831 () Bool)

(assert (=> d!153201 (= c!131831 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!628314 () (_ BitVec 64))

(assert (=> d!153201 (= lt!628314 (select (arr!46958 a!2831) (toIndex!0 (select (arr!46958 a!2831) j!81) mask!2608)))))

(assert (=> d!153201 (validMask!0 mask!2608)))

(assert (=> d!153201 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46958 a!2831) j!81) mask!2608) (select (arr!46958 a!2831) j!81) a!2831 mask!2608) lt!628313)))

(declare-fun b!1426881 () Bool)

(assert (=> b!1426881 (= e!805965 e!805966)))

(declare-fun c!131830 () Bool)

(assert (=> b!1426881 (= c!131830 (or (= lt!628314 (select (arr!46958 a!2831) j!81)) (= (bvadd lt!628314 lt!628314) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426882 () Bool)

(assert (=> b!1426882 (= e!805963 (bvsge (x!129062 lt!628313) #b01111111111111111111111111111110))))

(declare-fun b!1426883 () Bool)

(assert (=> b!1426883 (and (bvsge (index!47429 lt!628313) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628313) (size!47509 a!2831)))))

(declare-fun res!962203 () Bool)

(assert (=> b!1426883 (= res!962203 (= (select (arr!46958 a!2831) (index!47429 lt!628313)) (select (arr!46958 a!2831) j!81)))))

(assert (=> b!1426883 (=> res!962203 e!805962)))

(assert (=> b!1426883 (= e!805964 e!805962)))

(declare-fun b!1426884 () Bool)

(assert (=> b!1426884 (and (bvsge (index!47429 lt!628313) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628313) (size!47509 a!2831)))))

(declare-fun res!962202 () Bool)

(assert (=> b!1426884 (= res!962202 (= (select (arr!46958 a!2831) (index!47429 lt!628313)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426884 (=> res!962202 e!805962)))

(declare-fun b!1426885 () Bool)

(assert (=> b!1426885 (= e!805966 (Intermediate!11259 false (toIndex!0 (select (arr!46958 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(assert (= (and d!153201 c!131831) b!1426877))

(assert (= (and d!153201 (not c!131831)) b!1426881))

(assert (= (and b!1426881 c!131830) b!1426885))

(assert (= (and b!1426881 (not c!131830)) b!1426879))

(assert (= (and d!153201 c!131829) b!1426882))

(assert (= (and d!153201 (not c!131829)) b!1426880))

(assert (= (and b!1426880 res!962201) b!1426883))

(assert (= (and b!1426883 (not res!962203)) b!1426884))

(assert (= (and b!1426884 (not res!962202)) b!1426878))

(declare-fun m!1317439 () Bool)

(assert (=> b!1426884 m!1317439))

(assert (=> b!1426883 m!1317439))

(assert (=> d!153201 m!1317369))

(declare-fun m!1317441 () Bool)

(assert (=> d!153201 m!1317441))

(assert (=> d!153201 m!1317363))

(assert (=> b!1426878 m!1317439))

(assert (=> b!1426879 m!1317369))

(declare-fun m!1317443 () Bool)

(assert (=> b!1426879 m!1317443))

(assert (=> b!1426879 m!1317443))

(assert (=> b!1426879 m!1317357))

(declare-fun m!1317445 () Bool)

(assert (=> b!1426879 m!1317445))

(assert (=> b!1426801 d!153201))

(declare-fun d!153203 () Bool)

(declare-fun lt!628316 () (_ BitVec 32))

(declare-fun lt!628315 () (_ BitVec 32))

(assert (=> d!153203 (= lt!628316 (bvmul (bvxor lt!628315 (bvlshr lt!628315 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153203 (= lt!628315 ((_ extract 31 0) (bvand (bvxor (select (arr!46958 a!2831) j!81) (bvlshr (select (arr!46958 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153203 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!962200 (let ((h!34951 ((_ extract 31 0) (bvand (bvxor (select (arr!46958 a!2831) j!81) (bvlshr (select (arr!46958 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129065 (bvmul (bvxor h!34951 (bvlshr h!34951 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129065 (bvlshr x!129065 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!962200 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!962200 #b00000000000000000000000000000000))))))

(assert (=> d!153203 (= (toIndex!0 (select (arr!46958 a!2831) j!81) mask!2608) (bvand (bvxor lt!628316 (bvlshr lt!628316 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426801 d!153203))

(declare-fun b!1426886 () Bool)

(declare-fun e!805970 () SeekEntryResult!11259)

(assert (=> b!1426886 (= e!805970 (Intermediate!11259 true index!585 x!605))))

(declare-fun b!1426887 () Bool)

(declare-fun lt!628317 () SeekEntryResult!11259)

(assert (=> b!1426887 (and (bvsge (index!47429 lt!628317) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628317) (size!47509 lt!628281)))))

(declare-fun e!805967 () Bool)

(assert (=> b!1426887 (= e!805967 (= (select (arr!46958 lt!628281) (index!47429 lt!628317)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426888 () Bool)

(declare-fun e!805971 () SeekEntryResult!11259)

(assert (=> b!1426888 (= e!805971 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628283 lt!628281 mask!2608))))

(declare-fun b!1426889 () Bool)

(declare-fun e!805968 () Bool)

(declare-fun e!805969 () Bool)

(assert (=> b!1426889 (= e!805968 e!805969)))

(declare-fun res!962204 () Bool)

(assert (=> b!1426889 (= res!962204 (and ((_ is Intermediate!11259) lt!628317) (not (undefined!12071 lt!628317)) (bvslt (x!129062 lt!628317) #b01111111111111111111111111111110) (bvsge (x!129062 lt!628317) #b00000000000000000000000000000000) (bvsge (x!129062 lt!628317) x!605)))))

(assert (=> b!1426889 (=> (not res!962204) (not e!805969))))

(declare-fun d!153205 () Bool)

(assert (=> d!153205 e!805968))

(declare-fun c!131832 () Bool)

(assert (=> d!153205 (= c!131832 (and ((_ is Intermediate!11259) lt!628317) (undefined!12071 lt!628317)))))

(assert (=> d!153205 (= lt!628317 e!805970)))

(declare-fun c!131834 () Bool)

(assert (=> d!153205 (= c!131834 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628318 () (_ BitVec 64))

(assert (=> d!153205 (= lt!628318 (select (arr!46958 lt!628281) index!585))))

(assert (=> d!153205 (validMask!0 mask!2608)))

(assert (=> d!153205 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628283 lt!628281 mask!2608) lt!628317)))

(declare-fun b!1426890 () Bool)

(assert (=> b!1426890 (= e!805970 e!805971)))

(declare-fun c!131833 () Bool)

(assert (=> b!1426890 (= c!131833 (or (= lt!628318 lt!628283) (= (bvadd lt!628318 lt!628318) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426891 () Bool)

(assert (=> b!1426891 (= e!805968 (bvsge (x!129062 lt!628317) #b01111111111111111111111111111110))))

(declare-fun b!1426892 () Bool)

(assert (=> b!1426892 (and (bvsge (index!47429 lt!628317) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628317) (size!47509 lt!628281)))))

(declare-fun res!962206 () Bool)

(assert (=> b!1426892 (= res!962206 (= (select (arr!46958 lt!628281) (index!47429 lt!628317)) lt!628283))))

(assert (=> b!1426892 (=> res!962206 e!805967)))

(assert (=> b!1426892 (= e!805969 e!805967)))

(declare-fun b!1426893 () Bool)

(assert (=> b!1426893 (and (bvsge (index!47429 lt!628317) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628317) (size!47509 lt!628281)))))

(declare-fun res!962205 () Bool)

(assert (=> b!1426893 (= res!962205 (= (select (arr!46958 lt!628281) (index!47429 lt!628317)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426893 (=> res!962205 e!805967)))

(declare-fun b!1426894 () Bool)

(assert (=> b!1426894 (= e!805971 (Intermediate!11259 false index!585 x!605))))

(assert (= (and d!153205 c!131834) b!1426886))

(assert (= (and d!153205 (not c!131834)) b!1426890))

(assert (= (and b!1426890 c!131833) b!1426894))

(assert (= (and b!1426890 (not c!131833)) b!1426888))

(assert (= (and d!153205 c!131832) b!1426891))

(assert (= (and d!153205 (not c!131832)) b!1426889))

(assert (= (and b!1426889 res!962204) b!1426892))

(assert (= (and b!1426892 (not res!962206)) b!1426893))

(assert (= (and b!1426893 (not res!962205)) b!1426887))

(declare-fun m!1317447 () Bool)

(assert (=> b!1426893 m!1317447))

(assert (=> b!1426892 m!1317447))

(declare-fun m!1317449 () Bool)

(assert (=> d!153205 m!1317449))

(assert (=> d!153205 m!1317363))

(assert (=> b!1426887 m!1317447))

(declare-fun m!1317451 () Bool)

(assert (=> b!1426888 m!1317451))

(assert (=> b!1426888 m!1317451))

(declare-fun m!1317453 () Bool)

(assert (=> b!1426888 m!1317453))

(assert (=> b!1426803 d!153205))

(declare-fun d!153209 () Bool)

(assert (=> d!153209 (= (validKeyInArray!0 (select (arr!46958 a!2831) i!982)) (and (not (= (select (arr!46958 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46958 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426804 d!153209))

(declare-fun b!1426930 () Bool)

(declare-fun e!806000 () Bool)

(declare-fun call!67350 () Bool)

(assert (=> b!1426930 (= e!806000 call!67350)))

(declare-fun d!153211 () Bool)

(declare-fun res!962227 () Bool)

(declare-fun e!806001 () Bool)

(assert (=> d!153211 (=> res!962227 e!806001)))

(assert (=> d!153211 (= res!962227 (bvsge j!81 (size!47509 a!2831)))))

(assert (=> d!153211 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!806001)))

(declare-fun b!1426931 () Bool)

(declare-fun e!805999 () Bool)

(assert (=> b!1426931 (= e!805999 call!67350)))

(declare-fun b!1426932 () Bool)

(assert (=> b!1426932 (= e!805999 e!806000)))

(declare-fun lt!628335 () (_ BitVec 64))

(assert (=> b!1426932 (= lt!628335 (select (arr!46958 a!2831) j!81))))

(declare-fun lt!628334 () Unit!48212)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97292 (_ BitVec 64) (_ BitVec 32)) Unit!48212)

(assert (=> b!1426932 (= lt!628334 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628335 j!81))))

(declare-fun arrayContainsKey!0 (array!97292 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1426932 (arrayContainsKey!0 a!2831 lt!628335 #b00000000000000000000000000000000)))

(declare-fun lt!628336 () Unit!48212)

(assert (=> b!1426932 (= lt!628336 lt!628334)))

(declare-fun res!962226 () Bool)

(assert (=> b!1426932 (= res!962226 (= (seekEntryOrOpen!0 (select (arr!46958 a!2831) j!81) a!2831 mask!2608) (Found!11259 j!81)))))

(assert (=> b!1426932 (=> (not res!962226) (not e!806000))))

(declare-fun b!1426933 () Bool)

(assert (=> b!1426933 (= e!806001 e!805999)))

(declare-fun c!131843 () Bool)

(assert (=> b!1426933 (= c!131843 (validKeyInArray!0 (select (arr!46958 a!2831) j!81)))))

(declare-fun bm!67347 () Bool)

(assert (=> bm!67347 (= call!67350 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153211 (not res!962227)) b!1426933))

(assert (= (and b!1426933 c!131843) b!1426932))

(assert (= (and b!1426933 (not c!131843)) b!1426931))

(assert (= (and b!1426932 res!962226) b!1426930))

(assert (= (or b!1426930 b!1426931) bm!67347))

(assert (=> b!1426932 m!1317357))

(declare-fun m!1317471 () Bool)

(assert (=> b!1426932 m!1317471))

(declare-fun m!1317473 () Bool)

(assert (=> b!1426932 m!1317473))

(assert (=> b!1426932 m!1317357))

(assert (=> b!1426932 m!1317359))

(assert (=> b!1426933 m!1317357))

(assert (=> b!1426933 m!1317357))

(assert (=> b!1426933 m!1317361))

(declare-fun m!1317475 () Bool)

(assert (=> bm!67347 m!1317475))

(assert (=> b!1426806 d!153211))

(declare-fun d!153219 () Bool)

(assert (=> d!153219 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628339 () Unit!48212)

(declare-fun choose!38 (array!97292 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48212)

(assert (=> d!153219 (= lt!628339 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153219 (validMask!0 mask!2608)))

(assert (=> d!153219 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628339)))

(declare-fun bs!41591 () Bool)

(assert (= bs!41591 d!153219))

(assert (=> bs!41591 m!1317353))

(declare-fun m!1317477 () Bool)

(assert (=> bs!41591 m!1317477))

(assert (=> bs!41591 m!1317363))

(assert (=> b!1426806 d!153219))

(declare-fun b!1426934 () Bool)

(declare-fun e!806003 () Bool)

(declare-fun call!67351 () Bool)

(assert (=> b!1426934 (= e!806003 call!67351)))

(declare-fun d!153221 () Bool)

(declare-fun res!962229 () Bool)

(declare-fun e!806004 () Bool)

(assert (=> d!153221 (=> res!962229 e!806004)))

(assert (=> d!153221 (= res!962229 (bvsge #b00000000000000000000000000000000 (size!47509 a!2831)))))

(assert (=> d!153221 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!806004)))

(declare-fun b!1426935 () Bool)

(declare-fun e!806002 () Bool)

(assert (=> b!1426935 (= e!806002 call!67351)))

(declare-fun b!1426936 () Bool)

(assert (=> b!1426936 (= e!806002 e!806003)))

(declare-fun lt!628345 () (_ BitVec 64))

(assert (=> b!1426936 (= lt!628345 (select (arr!46958 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628344 () Unit!48212)

(assert (=> b!1426936 (= lt!628344 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628345 #b00000000000000000000000000000000))))

(assert (=> b!1426936 (arrayContainsKey!0 a!2831 lt!628345 #b00000000000000000000000000000000)))

(declare-fun lt!628346 () Unit!48212)

(assert (=> b!1426936 (= lt!628346 lt!628344)))

(declare-fun res!962228 () Bool)

(assert (=> b!1426936 (= res!962228 (= (seekEntryOrOpen!0 (select (arr!46958 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11259 #b00000000000000000000000000000000)))))

(assert (=> b!1426936 (=> (not res!962228) (not e!806003))))

(declare-fun b!1426937 () Bool)

(assert (=> b!1426937 (= e!806004 e!806002)))

(declare-fun c!131844 () Bool)

(assert (=> b!1426937 (= c!131844 (validKeyInArray!0 (select (arr!46958 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67348 () Bool)

(assert (=> bm!67348 (= call!67351 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153221 (not res!962229)) b!1426937))

(assert (= (and b!1426937 c!131844) b!1426936))

(assert (= (and b!1426937 (not c!131844)) b!1426935))

(assert (= (and b!1426936 res!962228) b!1426934))

(assert (= (or b!1426934 b!1426935) bm!67348))

(declare-fun m!1317479 () Bool)

(assert (=> b!1426936 m!1317479))

(declare-fun m!1317481 () Bool)

(assert (=> b!1426936 m!1317481))

(declare-fun m!1317483 () Bool)

(assert (=> b!1426936 m!1317483))

(assert (=> b!1426936 m!1317479))

(declare-fun m!1317485 () Bool)

(assert (=> b!1426936 m!1317485))

(assert (=> b!1426937 m!1317479))

(assert (=> b!1426937 m!1317479))

(declare-fun m!1317487 () Bool)

(assert (=> b!1426937 m!1317487))

(declare-fun m!1317489 () Bool)

(assert (=> bm!67348 m!1317489))

(assert (=> b!1426805 d!153221))

(declare-fun b!1427025 () Bool)

(declare-fun e!806052 () SeekEntryResult!11259)

(declare-fun lt!628387 () SeekEntryResult!11259)

(assert (=> b!1427025 (= e!806052 (Found!11259 (index!47429 lt!628387)))))

(declare-fun b!1427026 () Bool)

(declare-fun e!806054 () SeekEntryResult!11259)

(assert (=> b!1427026 (= e!806054 (MissingZero!11259 (index!47429 lt!628387)))))

(declare-fun b!1427027 () Bool)

(declare-fun e!806053 () SeekEntryResult!11259)

(assert (=> b!1427027 (= e!806053 e!806052)))

(declare-fun lt!628388 () (_ BitVec 64))

(assert (=> b!1427027 (= lt!628388 (select (arr!46958 a!2831) (index!47429 lt!628387)))))

(declare-fun c!131881 () Bool)

(assert (=> b!1427027 (= c!131881 (= lt!628388 (select (arr!46958 a!2831) j!81)))))

(declare-fun b!1427028 () Bool)

(declare-fun c!131880 () Bool)

(assert (=> b!1427028 (= c!131880 (= lt!628388 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427028 (= e!806052 e!806054)))

(declare-fun b!1427030 () Bool)

(assert (=> b!1427030 (= e!806053 Undefined!11259)))

(declare-fun d!153223 () Bool)

(declare-fun lt!628386 () SeekEntryResult!11259)

(assert (=> d!153223 (and (or ((_ is Undefined!11259) lt!628386) (not ((_ is Found!11259) lt!628386)) (and (bvsge (index!47428 lt!628386) #b00000000000000000000000000000000) (bvslt (index!47428 lt!628386) (size!47509 a!2831)))) (or ((_ is Undefined!11259) lt!628386) ((_ is Found!11259) lt!628386) (not ((_ is MissingZero!11259) lt!628386)) (and (bvsge (index!47427 lt!628386) #b00000000000000000000000000000000) (bvslt (index!47427 lt!628386) (size!47509 a!2831)))) (or ((_ is Undefined!11259) lt!628386) ((_ is Found!11259) lt!628386) ((_ is MissingZero!11259) lt!628386) (not ((_ is MissingVacant!11259) lt!628386)) (and (bvsge (index!47430 lt!628386) #b00000000000000000000000000000000) (bvslt (index!47430 lt!628386) (size!47509 a!2831)))) (or ((_ is Undefined!11259) lt!628386) (ite ((_ is Found!11259) lt!628386) (= (select (arr!46958 a!2831) (index!47428 lt!628386)) (select (arr!46958 a!2831) j!81)) (ite ((_ is MissingZero!11259) lt!628386) (= (select (arr!46958 a!2831) (index!47427 lt!628386)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11259) lt!628386) (= (select (arr!46958 a!2831) (index!47430 lt!628386)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153223 (= lt!628386 e!806053)))

(declare-fun c!131882 () Bool)

(assert (=> d!153223 (= c!131882 (and ((_ is Intermediate!11259) lt!628387) (undefined!12071 lt!628387)))))

(assert (=> d!153223 (= lt!628387 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46958 a!2831) j!81) mask!2608) (select (arr!46958 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153223 (validMask!0 mask!2608)))

(assert (=> d!153223 (= (seekEntryOrOpen!0 (select (arr!46958 a!2831) j!81) a!2831 mask!2608) lt!628386)))

(declare-fun b!1427029 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97292 (_ BitVec 32)) SeekEntryResult!11259)

(assert (=> b!1427029 (= e!806054 (seekKeyOrZeroReturnVacant!0 (x!129062 lt!628387) (index!47429 lt!628387) (index!47429 lt!628387) (select (arr!46958 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and d!153223 c!131882) b!1427030))

(assert (= (and d!153223 (not c!131882)) b!1427027))

(assert (= (and b!1427027 c!131881) b!1427025))

(assert (= (and b!1427027 (not c!131881)) b!1427028))

(assert (= (and b!1427028 c!131880) b!1427026))

(assert (= (and b!1427028 (not c!131880)) b!1427029))

(declare-fun m!1317531 () Bool)

(assert (=> b!1427027 m!1317531))

(assert (=> d!153223 m!1317357))

(assert (=> d!153223 m!1317369))

(assert (=> d!153223 m!1317369))

(assert (=> d!153223 m!1317357))

(assert (=> d!153223 m!1317371))

(declare-fun m!1317535 () Bool)

(assert (=> d!153223 m!1317535))

(declare-fun m!1317537 () Bool)

(assert (=> d!153223 m!1317537))

(declare-fun m!1317543 () Bool)

(assert (=> d!153223 m!1317543))

(assert (=> d!153223 m!1317363))

(assert (=> b!1427029 m!1317357))

(declare-fun m!1317545 () Bool)

(assert (=> b!1427029 m!1317545))

(assert (=> b!1426807 d!153223))

(declare-fun d!153249 () Bool)

(assert (=> d!153249 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123060 d!153249))

(declare-fun d!153255 () Bool)

(assert (=> d!153255 (= (array_inv!35903 a!2831) (bvsge (size!47509 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123060 d!153255))

(declare-fun b!1427071 () Bool)

(declare-fun e!806080 () SeekEntryResult!11259)

(assert (=> b!1427071 (= e!806080 (Intermediate!11259 true index!585 x!605))))

(declare-fun b!1427072 () Bool)

(declare-fun lt!628405 () SeekEntryResult!11259)

(assert (=> b!1427072 (and (bvsge (index!47429 lt!628405) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628405) (size!47509 a!2831)))))

(declare-fun e!806077 () Bool)

(assert (=> b!1427072 (= e!806077 (= (select (arr!46958 a!2831) (index!47429 lt!628405)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1427073 () Bool)

(declare-fun e!806081 () SeekEntryResult!11259)

(assert (=> b!1427073 (= e!806081 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!46958 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1427074 () Bool)

(declare-fun e!806078 () Bool)

(declare-fun e!806079 () Bool)

(assert (=> b!1427074 (= e!806078 e!806079)))

(declare-fun res!962261 () Bool)

(assert (=> b!1427074 (= res!962261 (and ((_ is Intermediate!11259) lt!628405) (not (undefined!12071 lt!628405)) (bvslt (x!129062 lt!628405) #b01111111111111111111111111111110) (bvsge (x!129062 lt!628405) #b00000000000000000000000000000000) (bvsge (x!129062 lt!628405) x!605)))))

(assert (=> b!1427074 (=> (not res!962261) (not e!806079))))

(declare-fun d!153257 () Bool)

(assert (=> d!153257 e!806078))

(declare-fun c!131897 () Bool)

(assert (=> d!153257 (= c!131897 (and ((_ is Intermediate!11259) lt!628405) (undefined!12071 lt!628405)))))

(assert (=> d!153257 (= lt!628405 e!806080)))

(declare-fun c!131899 () Bool)

(assert (=> d!153257 (= c!131899 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!628406 () (_ BitVec 64))

(assert (=> d!153257 (= lt!628406 (select (arr!46958 a!2831) index!585))))

(assert (=> d!153257 (validMask!0 mask!2608)))

(assert (=> d!153257 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46958 a!2831) j!81) a!2831 mask!2608) lt!628405)))

(declare-fun b!1427075 () Bool)

(assert (=> b!1427075 (= e!806080 e!806081)))

(declare-fun c!131898 () Bool)

(assert (=> b!1427075 (= c!131898 (or (= lt!628406 (select (arr!46958 a!2831) j!81)) (= (bvadd lt!628406 lt!628406) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1427076 () Bool)

(assert (=> b!1427076 (= e!806078 (bvsge (x!129062 lt!628405) #b01111111111111111111111111111110))))

(declare-fun b!1427077 () Bool)

(assert (=> b!1427077 (and (bvsge (index!47429 lt!628405) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628405) (size!47509 a!2831)))))

(declare-fun res!962263 () Bool)

(assert (=> b!1427077 (= res!962263 (= (select (arr!46958 a!2831) (index!47429 lt!628405)) (select (arr!46958 a!2831) j!81)))))

(assert (=> b!1427077 (=> res!962263 e!806077)))

(assert (=> b!1427077 (= e!806079 e!806077)))

(declare-fun b!1427078 () Bool)

(assert (=> b!1427078 (and (bvsge (index!47429 lt!628405) #b00000000000000000000000000000000) (bvslt (index!47429 lt!628405) (size!47509 a!2831)))))

(declare-fun res!962262 () Bool)

(assert (=> b!1427078 (= res!962262 (= (select (arr!46958 a!2831) (index!47429 lt!628405)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1427078 (=> res!962262 e!806077)))

(declare-fun b!1427079 () Bool)

(assert (=> b!1427079 (= e!806081 (Intermediate!11259 false index!585 x!605))))

(assert (= (and d!153257 c!131899) b!1427071))

(assert (= (and d!153257 (not c!131899)) b!1427075))

(assert (= (and b!1427075 c!131898) b!1427079))

(assert (= (and b!1427075 (not c!131898)) b!1427073))

(assert (= (and d!153257 c!131897) b!1427076))

(assert (= (and d!153257 (not c!131897)) b!1427074))

(assert (= (and b!1427074 res!962261) b!1427077))

(assert (= (and b!1427077 (not res!962263)) b!1427078))

(assert (= (and b!1427078 (not res!962262)) b!1427072))

(declare-fun m!1317565 () Bool)

(assert (=> b!1427078 m!1317565))

(assert (=> b!1427077 m!1317565))

(assert (=> d!153257 m!1317351))

(assert (=> d!153257 m!1317363))

(assert (=> b!1427072 m!1317565))

(assert (=> b!1427073 m!1317451))

(assert (=> b!1427073 m!1317451))

(assert (=> b!1427073 m!1317357))

(declare-fun m!1317567 () Bool)

(assert (=> b!1427073 m!1317567))

(assert (=> b!1426798 d!153257))

(declare-fun b!1427105 () Bool)

(declare-fun e!806098 () Bool)

(declare-fun e!806099 () Bool)

(assert (=> b!1427105 (= e!806098 e!806099)))

(declare-fun res!962274 () Bool)

(assert (=> b!1427105 (=> (not res!962274) (not e!806099))))

(declare-fun e!806100 () Bool)

(assert (=> b!1427105 (= res!962274 (not e!806100))))

(declare-fun res!962273 () Bool)

(assert (=> b!1427105 (=> (not res!962273) (not e!806100))))

(assert (=> b!1427105 (= res!962273 (validKeyInArray!0 (select (arr!46958 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427106 () Bool)

(declare-fun e!806101 () Bool)

(assert (=> b!1427106 (= e!806099 e!806101)))

(declare-fun c!131908 () Bool)

(assert (=> b!1427106 (= c!131908 (validKeyInArray!0 (select (arr!46958 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1427107 () Bool)

(declare-fun call!67355 () Bool)

(assert (=> b!1427107 (= e!806101 call!67355)))

(declare-fun b!1427108 () Bool)

(assert (=> b!1427108 (= e!806101 call!67355)))

(declare-fun b!1427109 () Bool)

(declare-fun contains!9861 (List!33648 (_ BitVec 64)) Bool)

(assert (=> b!1427109 (= e!806100 (contains!9861 Nil!33645 (select (arr!46958 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153259 () Bool)

(declare-fun res!962275 () Bool)

(assert (=> d!153259 (=> res!962275 e!806098)))

(assert (=> d!153259 (= res!962275 (bvsge #b00000000000000000000000000000000 (size!47509 a!2831)))))

(assert (=> d!153259 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33645) e!806098)))

(declare-fun bm!67352 () Bool)

(assert (=> bm!67352 (= call!67355 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131908 (Cons!33644 (select (arr!46958 a!2831) #b00000000000000000000000000000000) Nil!33645) Nil!33645)))))

(assert (= (and d!153259 (not res!962275)) b!1427105))

(assert (= (and b!1427105 res!962273) b!1427109))

(assert (= (and b!1427105 res!962274) b!1427106))

(assert (= (and b!1427106 c!131908) b!1427108))

(assert (= (and b!1427106 (not c!131908)) b!1427107))

(assert (= (or b!1427108 b!1427107) bm!67352))

(assert (=> b!1427105 m!1317479))

(assert (=> b!1427105 m!1317479))

(assert (=> b!1427105 m!1317487))

(assert (=> b!1427106 m!1317479))

(assert (=> b!1427106 m!1317479))

(assert (=> b!1427106 m!1317487))

(assert (=> b!1427109 m!1317479))

(assert (=> b!1427109 m!1317479))

(declare-fun m!1317577 () Bool)

(assert (=> b!1427109 m!1317577))

(assert (=> bm!67352 m!1317479))

(declare-fun m!1317579 () Bool)

(assert (=> bm!67352 m!1317579))

(assert (=> b!1426808 d!153259))

(declare-fun d!153271 () Bool)

(assert (=> d!153271 (= (validKeyInArray!0 (select (arr!46958 a!2831) j!81)) (and (not (= (select (arr!46958 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46958 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426810 d!153271))

(check-sat (not d!153201) (not bm!67347) (not b!1427109) (not bm!67348) (not b!1426932) (not b!1427073) (not d!153205) (not b!1426936) (not d!153219) (not d!153223) (not bm!67352) (not b!1427105) (not b!1427029) (not b!1427106) (not b!1426937) (not b!1426870) (not b!1426888) (not b!1426879) (not d!153257) (not d!153195) (not b!1426933))
(check-sat)
