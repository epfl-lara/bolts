; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122994 () Bool)

(assert start!122994)

(declare-fun b!1426259 () Bool)

(declare-fun e!805654 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97277 0))(
  ( (array!97278 (arr!46952 (Array (_ BitVec 32) (_ BitVec 64))) (size!47503 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97277)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11253 0))(
  ( (MissingZero!11253 (index!47403 (_ BitVec 32))) (Found!11253 (index!47404 (_ BitVec 32))) (Intermediate!11253 (undefined!12065 Bool) (index!47405 (_ BitVec 32)) (x!129034 (_ BitVec 32))) (Undefined!11253) (MissingVacant!11253 (index!47406 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97277 (_ BitVec 32)) SeekEntryResult!11253)

(assert (=> b!1426259 (= e!805654 (not (= (seekEntryOrOpen!0 (select (arr!46952 a!2831) j!81) a!2831 mask!2608) (Found!11253 j!81))))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97277 (_ BitVec 32)) Bool)

(assert (=> b!1426259 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48200 0))(
  ( (Unit!48201) )
))
(declare-fun lt!628062 () Unit!48200)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48200)

(assert (=> b!1426259 (= lt!628062 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426260 () Bool)

(declare-fun res!961802 () Bool)

(declare-fun e!805653 () Bool)

(assert (=> b!1426260 (=> (not res!961802) (not e!805653))))

(assert (=> b!1426260 (= res!961802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426261 () Bool)

(declare-fun res!961809 () Bool)

(assert (=> b!1426261 (=> (not res!961809) (not e!805653))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426261 (= res!961809 (validKeyInArray!0 (select (arr!46952 a!2831) i!982)))))

(declare-fun b!1426262 () Bool)

(declare-fun res!961810 () Bool)

(assert (=> b!1426262 (=> (not res!961810) (not e!805654))))

(declare-fun lt!628061 () SeekEntryResult!11253)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97277 (_ BitVec 32)) SeekEntryResult!11253)

(assert (=> b!1426262 (= res!961810 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46952 a!2831) j!81) a!2831 mask!2608) lt!628061))))

(declare-fun b!1426263 () Bool)

(declare-fun e!805655 () Bool)

(assert (=> b!1426263 (= e!805653 e!805655)))

(declare-fun res!961805 () Bool)

(assert (=> b!1426263 (=> (not res!961805) (not e!805655))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426263 (= res!961805 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46952 a!2831) j!81) mask!2608) (select (arr!46952 a!2831) j!81) a!2831 mask!2608) lt!628061))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1426263 (= lt!628061 (Intermediate!11253 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426264 () Bool)

(declare-fun res!961806 () Bool)

(assert (=> b!1426264 (=> (not res!961806) (not e!805653))))

(assert (=> b!1426264 (= res!961806 (and (= (size!47503 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47503 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47503 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426265 () Bool)

(declare-fun res!961803 () Bool)

(assert (=> b!1426265 (=> (not res!961803) (not e!805654))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426265 (= res!961803 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1426266 () Bool)

(declare-fun res!961811 () Bool)

(assert (=> b!1426266 (=> (not res!961811) (not e!805653))))

(assert (=> b!1426266 (= res!961811 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47503 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47503 a!2831))))))

(declare-fun b!1426267 () Bool)

(declare-fun res!961807 () Bool)

(assert (=> b!1426267 (=> (not res!961807) (not e!805653))))

(declare-datatypes ((List!33642 0))(
  ( (Nil!33639) (Cons!33638 (h!34940 (_ BitVec 64)) (t!48343 List!33642)) )
))
(declare-fun arrayNoDuplicates!0 (array!97277 (_ BitVec 32) List!33642) Bool)

(assert (=> b!1426267 (= res!961807 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33639))))

(declare-fun b!1426269 () Bool)

(declare-fun res!961808 () Bool)

(assert (=> b!1426269 (=> (not res!961808) (not e!805654))))

(declare-fun lt!628063 () (_ BitVec 64))

(declare-fun lt!628060 () array!97277)

(declare-fun lt!628059 () SeekEntryResult!11253)

(assert (=> b!1426269 (= res!961808 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628063 lt!628060 mask!2608) lt!628059))))

(declare-fun b!1426270 () Bool)

(assert (=> b!1426270 (= e!805655 e!805654)))

(declare-fun res!961812 () Bool)

(assert (=> b!1426270 (=> (not res!961812) (not e!805654))))

(assert (=> b!1426270 (= res!961812 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628063 mask!2608) lt!628063 lt!628060 mask!2608) lt!628059))))

(assert (=> b!1426270 (= lt!628059 (Intermediate!11253 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1426270 (= lt!628063 (select (store (arr!46952 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426270 (= lt!628060 (array!97278 (store (arr!46952 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47503 a!2831)))))

(declare-fun b!1426268 () Bool)

(declare-fun res!961804 () Bool)

(assert (=> b!1426268 (=> (not res!961804) (not e!805653))))

(assert (=> b!1426268 (= res!961804 (validKeyInArray!0 (select (arr!46952 a!2831) j!81)))))

(declare-fun res!961801 () Bool)

(assert (=> start!122994 (=> (not res!961801) (not e!805653))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122994 (= res!961801 (validMask!0 mask!2608))))

(assert (=> start!122994 e!805653))

(assert (=> start!122994 true))

(declare-fun array_inv!35897 (array!97277) Bool)

(assert (=> start!122994 (array_inv!35897 a!2831)))

(assert (= (and start!122994 res!961801) b!1426264))

(assert (= (and b!1426264 res!961806) b!1426261))

(assert (= (and b!1426261 res!961809) b!1426268))

(assert (= (and b!1426268 res!961804) b!1426260))

(assert (= (and b!1426260 res!961802) b!1426267))

(assert (= (and b!1426267 res!961807) b!1426266))

(assert (= (and b!1426266 res!961811) b!1426263))

(assert (= (and b!1426263 res!961805) b!1426270))

(assert (= (and b!1426270 res!961812) b!1426262))

(assert (= (and b!1426262 res!961810) b!1426269))

(assert (= (and b!1426269 res!961808) b!1426265))

(assert (= (and b!1426265 res!961803) b!1426259))

(declare-fun m!1316929 () Bool)

(assert (=> b!1426262 m!1316929))

(assert (=> b!1426262 m!1316929))

(declare-fun m!1316931 () Bool)

(assert (=> b!1426262 m!1316931))

(declare-fun m!1316933 () Bool)

(assert (=> start!122994 m!1316933))

(declare-fun m!1316935 () Bool)

(assert (=> start!122994 m!1316935))

(assert (=> b!1426263 m!1316929))

(assert (=> b!1426263 m!1316929))

(declare-fun m!1316937 () Bool)

(assert (=> b!1426263 m!1316937))

(assert (=> b!1426263 m!1316937))

(assert (=> b!1426263 m!1316929))

(declare-fun m!1316939 () Bool)

(assert (=> b!1426263 m!1316939))

(declare-fun m!1316941 () Bool)

(assert (=> b!1426270 m!1316941))

(assert (=> b!1426270 m!1316941))

(declare-fun m!1316943 () Bool)

(assert (=> b!1426270 m!1316943))

(declare-fun m!1316945 () Bool)

(assert (=> b!1426270 m!1316945))

(declare-fun m!1316947 () Bool)

(assert (=> b!1426270 m!1316947))

(declare-fun m!1316949 () Bool)

(assert (=> b!1426261 m!1316949))

(assert (=> b!1426261 m!1316949))

(declare-fun m!1316951 () Bool)

(assert (=> b!1426261 m!1316951))

(declare-fun m!1316953 () Bool)

(assert (=> b!1426269 m!1316953))

(declare-fun m!1316955 () Bool)

(assert (=> b!1426267 m!1316955))

(assert (=> b!1426259 m!1316929))

(assert (=> b!1426259 m!1316929))

(declare-fun m!1316957 () Bool)

(assert (=> b!1426259 m!1316957))

(declare-fun m!1316959 () Bool)

(assert (=> b!1426259 m!1316959))

(declare-fun m!1316961 () Bool)

(assert (=> b!1426259 m!1316961))

(declare-fun m!1316963 () Bool)

(assert (=> b!1426260 m!1316963))

(assert (=> b!1426268 m!1316929))

(assert (=> b!1426268 m!1316929))

(declare-fun m!1316965 () Bool)

(assert (=> b!1426268 m!1316965))

(check-sat (not b!1426262) (not b!1426267) (not b!1426260) (not b!1426263) (not b!1426261) (not b!1426269) (not start!122994) (not b!1426259) (not b!1426268) (not b!1426270))
(check-sat)
(get-model)

(declare-fun d!153101 () Bool)

(assert (=> d!153101 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!122994 d!153101))

(declare-fun d!153103 () Bool)

(assert (=> d!153103 (= (array_inv!35897 a!2831) (bvsge (size!47503 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!122994 d!153103))

(declare-fun b!1426317 () Bool)

(declare-fun e!805678 () Bool)

(declare-fun contains!9857 (List!33642 (_ BitVec 64)) Bool)

(assert (=> b!1426317 (= e!805678 (contains!9857 Nil!33639 (select (arr!46952 a!2831) #b00000000000000000000000000000000)))))

(declare-fun d!153105 () Bool)

(declare-fun res!961856 () Bool)

(declare-fun e!805679 () Bool)

(assert (=> d!153105 (=> res!961856 e!805679)))

(assert (=> d!153105 (= res!961856 (bvsge #b00000000000000000000000000000000 (size!47503 a!2831)))))

(assert (=> d!153105 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33639) e!805679)))

(declare-fun b!1426318 () Bool)

(declare-fun e!805676 () Bool)

(declare-fun call!67323 () Bool)

(assert (=> b!1426318 (= e!805676 call!67323)))

(declare-fun b!1426319 () Bool)

(assert (=> b!1426319 (= e!805676 call!67323)))

(declare-fun b!1426320 () Bool)

(declare-fun e!805677 () Bool)

(assert (=> b!1426320 (= e!805677 e!805676)))

(declare-fun c!131720 () Bool)

(assert (=> b!1426320 (= c!131720 (validKeyInArray!0 (select (arr!46952 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67320 () Bool)

(assert (=> bm!67320 (= call!67323 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!131720 (Cons!33638 (select (arr!46952 a!2831) #b00000000000000000000000000000000) Nil!33639) Nil!33639)))))

(declare-fun b!1426321 () Bool)

(assert (=> b!1426321 (= e!805679 e!805677)))

(declare-fun res!961855 () Bool)

(assert (=> b!1426321 (=> (not res!961855) (not e!805677))))

(assert (=> b!1426321 (= res!961855 (not e!805678))))

(declare-fun res!961857 () Bool)

(assert (=> b!1426321 (=> (not res!961857) (not e!805678))))

(assert (=> b!1426321 (= res!961857 (validKeyInArray!0 (select (arr!46952 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153105 (not res!961856)) b!1426321))

(assert (= (and b!1426321 res!961857) b!1426317))

(assert (= (and b!1426321 res!961855) b!1426320))

(assert (= (and b!1426320 c!131720) b!1426319))

(assert (= (and b!1426320 (not c!131720)) b!1426318))

(assert (= (or b!1426319 b!1426318) bm!67320))

(declare-fun m!1317005 () Bool)

(assert (=> b!1426317 m!1317005))

(assert (=> b!1426317 m!1317005))

(declare-fun m!1317007 () Bool)

(assert (=> b!1426317 m!1317007))

(assert (=> b!1426320 m!1317005))

(assert (=> b!1426320 m!1317005))

(declare-fun m!1317009 () Bool)

(assert (=> b!1426320 m!1317009))

(assert (=> bm!67320 m!1317005))

(declare-fun m!1317011 () Bool)

(assert (=> bm!67320 m!1317011))

(assert (=> b!1426321 m!1317005))

(assert (=> b!1426321 m!1317005))

(assert (=> b!1426321 m!1317009))

(assert (=> b!1426267 d!153105))

(declare-fun b!1426348 () Bool)

(declare-fun lt!628090 () SeekEntryResult!11253)

(assert (=> b!1426348 (and (bvsge (index!47405 lt!628090) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628090) (size!47503 a!2831)))))

(declare-fun e!805698 () Bool)

(assert (=> b!1426348 (= e!805698 (= (select (arr!46952 a!2831) (index!47405 lt!628090)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426349 () Bool)

(declare-fun e!805696 () SeekEntryResult!11253)

(declare-fun e!805699 () SeekEntryResult!11253)

(assert (=> b!1426349 (= e!805696 e!805699)))

(declare-fun lt!628089 () (_ BitVec 64))

(declare-fun c!131730 () Bool)

(assert (=> b!1426349 (= c!131730 (or (= lt!628089 (select (arr!46952 a!2831) j!81)) (= (bvadd lt!628089 lt!628089) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426350 () Bool)

(declare-fun e!805700 () Bool)

(declare-fun e!805697 () Bool)

(assert (=> b!1426350 (= e!805700 e!805697)))

(declare-fun res!961869 () Bool)

(get-info :version)

(assert (=> b!1426350 (= res!961869 (and ((_ is Intermediate!11253) lt!628090) (not (undefined!12065 lt!628090)) (bvslt (x!129034 lt!628090) #b01111111111111111111111111111110) (bvsge (x!129034 lt!628090) #b00000000000000000000000000000000) (bvsge (x!129034 lt!628090) x!605)))))

(assert (=> b!1426350 (=> (not res!961869) (not e!805697))))

(declare-fun b!1426351 () Bool)

(assert (=> b!1426351 (= e!805699 (Intermediate!11253 false index!585 x!605))))

(declare-fun b!1426353 () Bool)

(assert (=> b!1426353 (= e!805700 (bvsge (x!129034 lt!628090) #b01111111111111111111111111111110))))

(declare-fun b!1426354 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426354 (= e!805699 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!46952 a!2831) j!81) a!2831 mask!2608))))

(declare-fun d!153107 () Bool)

(assert (=> d!153107 e!805700))

(declare-fun c!131729 () Bool)

(assert (=> d!153107 (= c!131729 (and ((_ is Intermediate!11253) lt!628090) (undefined!12065 lt!628090)))))

(assert (=> d!153107 (= lt!628090 e!805696)))

(declare-fun c!131731 () Bool)

(assert (=> d!153107 (= c!131731 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153107 (= lt!628089 (select (arr!46952 a!2831) index!585))))

(assert (=> d!153107 (validMask!0 mask!2608)))

(assert (=> d!153107 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46952 a!2831) j!81) a!2831 mask!2608) lt!628090)))

(declare-fun b!1426352 () Bool)

(assert (=> b!1426352 (and (bvsge (index!47405 lt!628090) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628090) (size!47503 a!2831)))))

(declare-fun res!961868 () Bool)

(assert (=> b!1426352 (= res!961868 (= (select (arr!46952 a!2831) (index!47405 lt!628090)) (select (arr!46952 a!2831) j!81)))))

(assert (=> b!1426352 (=> res!961868 e!805698)))

(assert (=> b!1426352 (= e!805697 e!805698)))

(declare-fun b!1426355 () Bool)

(assert (=> b!1426355 (= e!805696 (Intermediate!11253 true index!585 x!605))))

(declare-fun b!1426356 () Bool)

(assert (=> b!1426356 (and (bvsge (index!47405 lt!628090) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628090) (size!47503 a!2831)))))

(declare-fun res!961870 () Bool)

(assert (=> b!1426356 (= res!961870 (= (select (arr!46952 a!2831) (index!47405 lt!628090)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426356 (=> res!961870 e!805698)))

(assert (= (and d!153107 c!131731) b!1426355))

(assert (= (and d!153107 (not c!131731)) b!1426349))

(assert (= (and b!1426349 c!131730) b!1426351))

(assert (= (and b!1426349 (not c!131730)) b!1426354))

(assert (= (and d!153107 c!131729) b!1426353))

(assert (= (and d!153107 (not c!131729)) b!1426350))

(assert (= (and b!1426350 res!961869) b!1426352))

(assert (= (and b!1426352 (not res!961868)) b!1426356))

(assert (= (and b!1426356 (not res!961870)) b!1426348))

(declare-fun m!1317013 () Bool)

(assert (=> b!1426356 m!1317013))

(declare-fun m!1317015 () Bool)

(assert (=> b!1426354 m!1317015))

(assert (=> b!1426354 m!1317015))

(assert (=> b!1426354 m!1316929))

(declare-fun m!1317017 () Bool)

(assert (=> b!1426354 m!1317017))

(assert (=> b!1426352 m!1317013))

(assert (=> b!1426348 m!1317013))

(declare-fun m!1317019 () Bool)

(assert (=> d!153107 m!1317019))

(assert (=> d!153107 m!1316933))

(assert (=> b!1426262 d!153107))

(declare-fun b!1426402 () Bool)

(declare-fun e!805734 () Bool)

(declare-fun call!67332 () Bool)

(assert (=> b!1426402 (= e!805734 call!67332)))

(declare-fun d!153115 () Bool)

(declare-fun res!961892 () Bool)

(declare-fun e!805732 () Bool)

(assert (=> d!153115 (=> res!961892 e!805732)))

(assert (=> d!153115 (= res!961892 (bvsge #b00000000000000000000000000000000 (size!47503 a!2831)))))

(assert (=> d!153115 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!805732)))

(declare-fun b!1426403 () Bool)

(assert (=> b!1426403 (= e!805732 e!805734)))

(declare-fun c!131744 () Bool)

(assert (=> b!1426403 (= c!131744 (validKeyInArray!0 (select (arr!46952 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1426404 () Bool)

(declare-fun e!805733 () Bool)

(assert (=> b!1426404 (= e!805734 e!805733)))

(declare-fun lt!628106 () (_ BitVec 64))

(assert (=> b!1426404 (= lt!628106 (select (arr!46952 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!628104 () Unit!48200)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97277 (_ BitVec 64) (_ BitVec 32)) Unit!48200)

(assert (=> b!1426404 (= lt!628104 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628106 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97277 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1426404 (arrayContainsKey!0 a!2831 lt!628106 #b00000000000000000000000000000000)))

(declare-fun lt!628105 () Unit!48200)

(assert (=> b!1426404 (= lt!628105 lt!628104)))

(declare-fun res!961893 () Bool)

(assert (=> b!1426404 (= res!961893 (= (seekEntryOrOpen!0 (select (arr!46952 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11253 #b00000000000000000000000000000000)))))

(assert (=> b!1426404 (=> (not res!961893) (not e!805733))))

(declare-fun b!1426405 () Bool)

(assert (=> b!1426405 (= e!805733 call!67332)))

(declare-fun bm!67329 () Bool)

(assert (=> bm!67329 (= call!67332 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153115 (not res!961892)) b!1426403))

(assert (= (and b!1426403 c!131744) b!1426404))

(assert (= (and b!1426403 (not c!131744)) b!1426402))

(assert (= (and b!1426404 res!961893) b!1426405))

(assert (= (or b!1426405 b!1426402) bm!67329))

(assert (=> b!1426403 m!1317005))

(assert (=> b!1426403 m!1317005))

(assert (=> b!1426403 m!1317009))

(assert (=> b!1426404 m!1317005))

(declare-fun m!1317037 () Bool)

(assert (=> b!1426404 m!1317037))

(declare-fun m!1317039 () Bool)

(assert (=> b!1426404 m!1317039))

(assert (=> b!1426404 m!1317005))

(declare-fun m!1317041 () Bool)

(assert (=> b!1426404 m!1317041))

(declare-fun m!1317043 () Bool)

(assert (=> bm!67329 m!1317043))

(assert (=> b!1426260 d!153115))

(declare-fun d!153121 () Bool)

(assert (=> d!153121 (= (validKeyInArray!0 (select (arr!46952 a!2831) i!982)) (and (not (= (select (arr!46952 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46952 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426261 d!153121))

(declare-fun b!1426505 () Bool)

(declare-fun e!805795 () SeekEntryResult!11253)

(declare-fun lt!628137 () SeekEntryResult!11253)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97277 (_ BitVec 32)) SeekEntryResult!11253)

(assert (=> b!1426505 (= e!805795 (seekKeyOrZeroReturnVacant!0 (x!129034 lt!628137) (index!47405 lt!628137) (index!47405 lt!628137) (select (arr!46952 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1426506 () Bool)

(declare-fun c!131778 () Bool)

(declare-fun lt!628138 () (_ BitVec 64))

(assert (=> b!1426506 (= c!131778 (= lt!628138 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!805793 () SeekEntryResult!11253)

(assert (=> b!1426506 (= e!805793 e!805795)))

(declare-fun b!1426507 () Bool)

(assert (=> b!1426507 (= e!805793 (Found!11253 (index!47405 lt!628137)))))

(declare-fun b!1426508 () Bool)

(declare-fun e!805794 () SeekEntryResult!11253)

(assert (=> b!1426508 (= e!805794 Undefined!11253)))

(declare-fun d!153123 () Bool)

(declare-fun lt!628139 () SeekEntryResult!11253)

(assert (=> d!153123 (and (or ((_ is Undefined!11253) lt!628139) (not ((_ is Found!11253) lt!628139)) (and (bvsge (index!47404 lt!628139) #b00000000000000000000000000000000) (bvslt (index!47404 lt!628139) (size!47503 a!2831)))) (or ((_ is Undefined!11253) lt!628139) ((_ is Found!11253) lt!628139) (not ((_ is MissingZero!11253) lt!628139)) (and (bvsge (index!47403 lt!628139) #b00000000000000000000000000000000) (bvslt (index!47403 lt!628139) (size!47503 a!2831)))) (or ((_ is Undefined!11253) lt!628139) ((_ is Found!11253) lt!628139) ((_ is MissingZero!11253) lt!628139) (not ((_ is MissingVacant!11253) lt!628139)) (and (bvsge (index!47406 lt!628139) #b00000000000000000000000000000000) (bvslt (index!47406 lt!628139) (size!47503 a!2831)))) (or ((_ is Undefined!11253) lt!628139) (ite ((_ is Found!11253) lt!628139) (= (select (arr!46952 a!2831) (index!47404 lt!628139)) (select (arr!46952 a!2831) j!81)) (ite ((_ is MissingZero!11253) lt!628139) (= (select (arr!46952 a!2831) (index!47403 lt!628139)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11253) lt!628139) (= (select (arr!46952 a!2831) (index!47406 lt!628139)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153123 (= lt!628139 e!805794)))

(declare-fun c!131780 () Bool)

(assert (=> d!153123 (= c!131780 (and ((_ is Intermediate!11253) lt!628137) (undefined!12065 lt!628137)))))

(assert (=> d!153123 (= lt!628137 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46952 a!2831) j!81) mask!2608) (select (arr!46952 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153123 (validMask!0 mask!2608)))

(assert (=> d!153123 (= (seekEntryOrOpen!0 (select (arr!46952 a!2831) j!81) a!2831 mask!2608) lt!628139)))

(declare-fun b!1426509 () Bool)

(assert (=> b!1426509 (= e!805795 (MissingZero!11253 (index!47405 lt!628137)))))

(declare-fun b!1426510 () Bool)

(assert (=> b!1426510 (= e!805794 e!805793)))

(assert (=> b!1426510 (= lt!628138 (select (arr!46952 a!2831) (index!47405 lt!628137)))))

(declare-fun c!131779 () Bool)

(assert (=> b!1426510 (= c!131779 (= lt!628138 (select (arr!46952 a!2831) j!81)))))

(assert (= (and d!153123 c!131780) b!1426508))

(assert (= (and d!153123 (not c!131780)) b!1426510))

(assert (= (and b!1426510 c!131779) b!1426507))

(assert (= (and b!1426510 (not c!131779)) b!1426506))

(assert (= (and b!1426506 c!131778) b!1426509))

(assert (= (and b!1426506 (not c!131778)) b!1426505))

(assert (=> b!1426505 m!1316929))

(declare-fun m!1317099 () Bool)

(assert (=> b!1426505 m!1317099))

(declare-fun m!1317101 () Bool)

(assert (=> d!153123 m!1317101))

(assert (=> d!153123 m!1316933))

(assert (=> d!153123 m!1316929))

(assert (=> d!153123 m!1316937))

(assert (=> d!153123 m!1316937))

(assert (=> d!153123 m!1316929))

(assert (=> d!153123 m!1316939))

(declare-fun m!1317103 () Bool)

(assert (=> d!153123 m!1317103))

(declare-fun m!1317105 () Bool)

(assert (=> d!153123 m!1317105))

(declare-fun m!1317107 () Bool)

(assert (=> b!1426510 m!1317107))

(assert (=> b!1426259 d!153123))

(declare-fun b!1426511 () Bool)

(declare-fun e!805798 () Bool)

(declare-fun call!67336 () Bool)

(assert (=> b!1426511 (= e!805798 call!67336)))

(declare-fun d!153145 () Bool)

(declare-fun res!961929 () Bool)

(declare-fun e!805796 () Bool)

(assert (=> d!153145 (=> res!961929 e!805796)))

(assert (=> d!153145 (= res!961929 (bvsge j!81 (size!47503 a!2831)))))

(assert (=> d!153145 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!805796)))

(declare-fun b!1426512 () Bool)

(assert (=> b!1426512 (= e!805796 e!805798)))

(declare-fun c!131781 () Bool)

(assert (=> b!1426512 (= c!131781 (validKeyInArray!0 (select (arr!46952 a!2831) j!81)))))

(declare-fun b!1426513 () Bool)

(declare-fun e!805797 () Bool)

(assert (=> b!1426513 (= e!805798 e!805797)))

(declare-fun lt!628142 () (_ BitVec 64))

(assert (=> b!1426513 (= lt!628142 (select (arr!46952 a!2831) j!81))))

(declare-fun lt!628140 () Unit!48200)

(assert (=> b!1426513 (= lt!628140 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!628142 j!81))))

(assert (=> b!1426513 (arrayContainsKey!0 a!2831 lt!628142 #b00000000000000000000000000000000)))

(declare-fun lt!628141 () Unit!48200)

(assert (=> b!1426513 (= lt!628141 lt!628140)))

(declare-fun res!961930 () Bool)

(assert (=> b!1426513 (= res!961930 (= (seekEntryOrOpen!0 (select (arr!46952 a!2831) j!81) a!2831 mask!2608) (Found!11253 j!81)))))

(assert (=> b!1426513 (=> (not res!961930) (not e!805797))))

(declare-fun b!1426514 () Bool)

(assert (=> b!1426514 (= e!805797 call!67336)))

(declare-fun bm!67333 () Bool)

(assert (=> bm!67333 (= call!67336 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(assert (= (and d!153145 (not res!961929)) b!1426512))

(assert (= (and b!1426512 c!131781) b!1426513))

(assert (= (and b!1426512 (not c!131781)) b!1426511))

(assert (= (and b!1426513 res!961930) b!1426514))

(assert (= (or b!1426514 b!1426511) bm!67333))

(assert (=> b!1426512 m!1316929))

(assert (=> b!1426512 m!1316929))

(assert (=> b!1426512 m!1316965))

(assert (=> b!1426513 m!1316929))

(declare-fun m!1317109 () Bool)

(assert (=> b!1426513 m!1317109))

(declare-fun m!1317111 () Bool)

(assert (=> b!1426513 m!1317111))

(assert (=> b!1426513 m!1316929))

(assert (=> b!1426513 m!1316957))

(declare-fun m!1317113 () Bool)

(assert (=> bm!67333 m!1317113))

(assert (=> b!1426259 d!153145))

(declare-fun d!153147 () Bool)

(assert (=> d!153147 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!628153 () Unit!48200)

(declare-fun choose!38 (array!97277 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48200)

(assert (=> d!153147 (= lt!628153 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153147 (validMask!0 mask!2608)))

(assert (=> d!153147 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!628153)))

(declare-fun bs!41582 () Bool)

(assert (= bs!41582 d!153147))

(assert (=> bs!41582 m!1316959))

(declare-fun m!1317119 () Bool)

(assert (=> bs!41582 m!1317119))

(assert (=> bs!41582 m!1316933))

(assert (=> b!1426259 d!153147))

(declare-fun b!1426524 () Bool)

(declare-fun lt!628155 () SeekEntryResult!11253)

(assert (=> b!1426524 (and (bvsge (index!47405 lt!628155) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628155) (size!47503 lt!628060)))))

(declare-fun e!805806 () Bool)

(assert (=> b!1426524 (= e!805806 (= (select (arr!46952 lt!628060) (index!47405 lt!628155)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426525 () Bool)

(declare-fun e!805804 () SeekEntryResult!11253)

(declare-fun e!805807 () SeekEntryResult!11253)

(assert (=> b!1426525 (= e!805804 e!805807)))

(declare-fun c!131786 () Bool)

(declare-fun lt!628154 () (_ BitVec 64))

(assert (=> b!1426525 (= c!131786 (or (= lt!628154 lt!628063) (= (bvadd lt!628154 lt!628154) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426526 () Bool)

(declare-fun e!805808 () Bool)

(declare-fun e!805805 () Bool)

(assert (=> b!1426526 (= e!805808 e!805805)))

(declare-fun res!961935 () Bool)

(assert (=> b!1426526 (= res!961935 (and ((_ is Intermediate!11253) lt!628155) (not (undefined!12065 lt!628155)) (bvslt (x!129034 lt!628155) #b01111111111111111111111111111110) (bvsge (x!129034 lt!628155) #b00000000000000000000000000000000) (bvsge (x!129034 lt!628155) #b00000000000000000000000000000000)))))

(assert (=> b!1426526 (=> (not res!961935) (not e!805805))))

(declare-fun b!1426527 () Bool)

(assert (=> b!1426527 (= e!805807 (Intermediate!11253 false (toIndex!0 lt!628063 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426529 () Bool)

(assert (=> b!1426529 (= e!805808 (bvsge (x!129034 lt!628155) #b01111111111111111111111111111110))))

(declare-fun b!1426530 () Bool)

(assert (=> b!1426530 (= e!805807 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!628063 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!628063 lt!628060 mask!2608))))

(declare-fun d!153151 () Bool)

(assert (=> d!153151 e!805808))

(declare-fun c!131785 () Bool)

(assert (=> d!153151 (= c!131785 (and ((_ is Intermediate!11253) lt!628155) (undefined!12065 lt!628155)))))

(assert (=> d!153151 (= lt!628155 e!805804)))

(declare-fun c!131787 () Bool)

(assert (=> d!153151 (= c!131787 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153151 (= lt!628154 (select (arr!46952 lt!628060) (toIndex!0 lt!628063 mask!2608)))))

(assert (=> d!153151 (validMask!0 mask!2608)))

(assert (=> d!153151 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628063 mask!2608) lt!628063 lt!628060 mask!2608) lt!628155)))

(declare-fun b!1426528 () Bool)

(assert (=> b!1426528 (and (bvsge (index!47405 lt!628155) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628155) (size!47503 lt!628060)))))

(declare-fun res!961934 () Bool)

(assert (=> b!1426528 (= res!961934 (= (select (arr!46952 lt!628060) (index!47405 lt!628155)) lt!628063))))

(assert (=> b!1426528 (=> res!961934 e!805806)))

(assert (=> b!1426528 (= e!805805 e!805806)))

(declare-fun b!1426531 () Bool)

(assert (=> b!1426531 (= e!805804 (Intermediate!11253 true (toIndex!0 lt!628063 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426532 () Bool)

(assert (=> b!1426532 (and (bvsge (index!47405 lt!628155) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628155) (size!47503 lt!628060)))))

(declare-fun res!961936 () Bool)

(assert (=> b!1426532 (= res!961936 (= (select (arr!46952 lt!628060) (index!47405 lt!628155)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426532 (=> res!961936 e!805806)))

(assert (= (and d!153151 c!131787) b!1426531))

(assert (= (and d!153151 (not c!131787)) b!1426525))

(assert (= (and b!1426525 c!131786) b!1426527))

(assert (= (and b!1426525 (not c!131786)) b!1426530))

(assert (= (and d!153151 c!131785) b!1426529))

(assert (= (and d!153151 (not c!131785)) b!1426526))

(assert (= (and b!1426526 res!961935) b!1426528))

(assert (= (and b!1426528 (not res!961934)) b!1426532))

(assert (= (and b!1426532 (not res!961936)) b!1426524))

(declare-fun m!1317123 () Bool)

(assert (=> b!1426532 m!1317123))

(assert (=> b!1426530 m!1316941))

(declare-fun m!1317125 () Bool)

(assert (=> b!1426530 m!1317125))

(assert (=> b!1426530 m!1317125))

(declare-fun m!1317127 () Bool)

(assert (=> b!1426530 m!1317127))

(assert (=> b!1426528 m!1317123))

(assert (=> b!1426524 m!1317123))

(assert (=> d!153151 m!1316941))

(declare-fun m!1317129 () Bool)

(assert (=> d!153151 m!1317129))

(assert (=> d!153151 m!1316933))

(assert (=> b!1426270 d!153151))

(declare-fun d!153155 () Bool)

(declare-fun lt!628161 () (_ BitVec 32))

(declare-fun lt!628160 () (_ BitVec 32))

(assert (=> d!153155 (= lt!628161 (bvmul (bvxor lt!628160 (bvlshr lt!628160 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153155 (= lt!628160 ((_ extract 31 0) (bvand (bvxor lt!628063 (bvlshr lt!628063 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153155 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!961937 (let ((h!34944 ((_ extract 31 0) (bvand (bvxor lt!628063 (bvlshr lt!628063 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129041 (bvmul (bvxor h!34944 (bvlshr h!34944 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129041 (bvlshr x!129041 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!961937 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!961937 #b00000000000000000000000000000000))))))

(assert (=> d!153155 (= (toIndex!0 lt!628063 mask!2608) (bvand (bvxor lt!628161 (bvlshr lt!628161 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426270 d!153155))

(declare-fun b!1426533 () Bool)

(declare-fun lt!628163 () SeekEntryResult!11253)

(assert (=> b!1426533 (and (bvsge (index!47405 lt!628163) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628163) (size!47503 a!2831)))))

(declare-fun e!805811 () Bool)

(assert (=> b!1426533 (= e!805811 (= (select (arr!46952 a!2831) (index!47405 lt!628163)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426534 () Bool)

(declare-fun e!805809 () SeekEntryResult!11253)

(declare-fun e!805812 () SeekEntryResult!11253)

(assert (=> b!1426534 (= e!805809 e!805812)))

(declare-fun lt!628162 () (_ BitVec 64))

(declare-fun c!131789 () Bool)

(assert (=> b!1426534 (= c!131789 (or (= lt!628162 (select (arr!46952 a!2831) j!81)) (= (bvadd lt!628162 lt!628162) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426535 () Bool)

(declare-fun e!805813 () Bool)

(declare-fun e!805810 () Bool)

(assert (=> b!1426535 (= e!805813 e!805810)))

(declare-fun res!961939 () Bool)

(assert (=> b!1426535 (= res!961939 (and ((_ is Intermediate!11253) lt!628163) (not (undefined!12065 lt!628163)) (bvslt (x!129034 lt!628163) #b01111111111111111111111111111110) (bvsge (x!129034 lt!628163) #b00000000000000000000000000000000) (bvsge (x!129034 lt!628163) #b00000000000000000000000000000000)))))

(assert (=> b!1426535 (=> (not res!961939) (not e!805810))))

(declare-fun b!1426536 () Bool)

(assert (=> b!1426536 (= e!805812 (Intermediate!11253 false (toIndex!0 (select (arr!46952 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426538 () Bool)

(assert (=> b!1426538 (= e!805813 (bvsge (x!129034 lt!628163) #b01111111111111111111111111111110))))

(declare-fun b!1426539 () Bool)

(assert (=> b!1426539 (= e!805812 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!46952 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!46952 a!2831) j!81) a!2831 mask!2608))))

(declare-fun d!153163 () Bool)

(assert (=> d!153163 e!805813))

(declare-fun c!131788 () Bool)

(assert (=> d!153163 (= c!131788 (and ((_ is Intermediate!11253) lt!628163) (undefined!12065 lt!628163)))))

(assert (=> d!153163 (= lt!628163 e!805809)))

(declare-fun c!131790 () Bool)

(assert (=> d!153163 (= c!131790 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153163 (= lt!628162 (select (arr!46952 a!2831) (toIndex!0 (select (arr!46952 a!2831) j!81) mask!2608)))))

(assert (=> d!153163 (validMask!0 mask!2608)))

(assert (=> d!153163 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46952 a!2831) j!81) mask!2608) (select (arr!46952 a!2831) j!81) a!2831 mask!2608) lt!628163)))

(declare-fun b!1426537 () Bool)

(assert (=> b!1426537 (and (bvsge (index!47405 lt!628163) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628163) (size!47503 a!2831)))))

(declare-fun res!961938 () Bool)

(assert (=> b!1426537 (= res!961938 (= (select (arr!46952 a!2831) (index!47405 lt!628163)) (select (arr!46952 a!2831) j!81)))))

(assert (=> b!1426537 (=> res!961938 e!805811)))

(assert (=> b!1426537 (= e!805810 e!805811)))

(declare-fun b!1426540 () Bool)

(assert (=> b!1426540 (= e!805809 (Intermediate!11253 true (toIndex!0 (select (arr!46952 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1426541 () Bool)

(assert (=> b!1426541 (and (bvsge (index!47405 lt!628163) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628163) (size!47503 a!2831)))))

(declare-fun res!961940 () Bool)

(assert (=> b!1426541 (= res!961940 (= (select (arr!46952 a!2831) (index!47405 lt!628163)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426541 (=> res!961940 e!805811)))

(assert (= (and d!153163 c!131790) b!1426540))

(assert (= (and d!153163 (not c!131790)) b!1426534))

(assert (= (and b!1426534 c!131789) b!1426536))

(assert (= (and b!1426534 (not c!131789)) b!1426539))

(assert (= (and d!153163 c!131788) b!1426538))

(assert (= (and d!153163 (not c!131788)) b!1426535))

(assert (= (and b!1426535 res!961939) b!1426537))

(assert (= (and b!1426537 (not res!961938)) b!1426541))

(assert (= (and b!1426541 (not res!961940)) b!1426533))

(declare-fun m!1317131 () Bool)

(assert (=> b!1426541 m!1317131))

(assert (=> b!1426539 m!1316937))

(declare-fun m!1317133 () Bool)

(assert (=> b!1426539 m!1317133))

(assert (=> b!1426539 m!1317133))

(assert (=> b!1426539 m!1316929))

(declare-fun m!1317135 () Bool)

(assert (=> b!1426539 m!1317135))

(assert (=> b!1426537 m!1317131))

(assert (=> b!1426533 m!1317131))

(assert (=> d!153163 m!1316937))

(declare-fun m!1317137 () Bool)

(assert (=> d!153163 m!1317137))

(assert (=> d!153163 m!1316933))

(assert (=> b!1426263 d!153163))

(declare-fun d!153165 () Bool)

(declare-fun lt!628165 () (_ BitVec 32))

(declare-fun lt!628164 () (_ BitVec 32))

(assert (=> d!153165 (= lt!628165 (bvmul (bvxor lt!628164 (bvlshr lt!628164 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153165 (= lt!628164 ((_ extract 31 0) (bvand (bvxor (select (arr!46952 a!2831) j!81) (bvlshr (select (arr!46952 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153165 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!961937 (let ((h!34944 ((_ extract 31 0) (bvand (bvxor (select (arr!46952 a!2831) j!81) (bvlshr (select (arr!46952 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129041 (bvmul (bvxor h!34944 (bvlshr h!34944 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129041 (bvlshr x!129041 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!961937 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!961937 #b00000000000000000000000000000000))))))

(assert (=> d!153165 (= (toIndex!0 (select (arr!46952 a!2831) j!81) mask!2608) (bvand (bvxor lt!628165 (bvlshr lt!628165 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1426263 d!153165))

(declare-fun d!153167 () Bool)

(assert (=> d!153167 (= (validKeyInArray!0 (select (arr!46952 a!2831) j!81)) (and (not (= (select (arr!46952 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!46952 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1426268 d!153167))

(declare-fun b!1426546 () Bool)

(declare-fun lt!628167 () SeekEntryResult!11253)

(assert (=> b!1426546 (and (bvsge (index!47405 lt!628167) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628167) (size!47503 lt!628060)))))

(declare-fun e!805818 () Bool)

(assert (=> b!1426546 (= e!805818 (= (select (arr!46952 lt!628060) (index!47405 lt!628167)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1426547 () Bool)

(declare-fun e!805816 () SeekEntryResult!11253)

(declare-fun e!805819 () SeekEntryResult!11253)

(assert (=> b!1426547 (= e!805816 e!805819)))

(declare-fun c!131792 () Bool)

(declare-fun lt!628166 () (_ BitVec 64))

(assert (=> b!1426547 (= c!131792 (or (= lt!628166 lt!628063) (= (bvadd lt!628166 lt!628166) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1426548 () Bool)

(declare-fun e!805820 () Bool)

(declare-fun e!805817 () Bool)

(assert (=> b!1426548 (= e!805820 e!805817)))

(declare-fun res!961944 () Bool)

(assert (=> b!1426548 (= res!961944 (and ((_ is Intermediate!11253) lt!628167) (not (undefined!12065 lt!628167)) (bvslt (x!129034 lt!628167) #b01111111111111111111111111111110) (bvsge (x!129034 lt!628167) #b00000000000000000000000000000000) (bvsge (x!129034 lt!628167) x!605)))))

(assert (=> b!1426548 (=> (not res!961944) (not e!805817))))

(declare-fun b!1426549 () Bool)

(assert (=> b!1426549 (= e!805819 (Intermediate!11253 false index!585 x!605))))

(declare-fun b!1426551 () Bool)

(assert (=> b!1426551 (= e!805820 (bvsge (x!129034 lt!628167) #b01111111111111111111111111111110))))

(declare-fun b!1426552 () Bool)

(assert (=> b!1426552 (= e!805819 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!628063 lt!628060 mask!2608))))

(declare-fun d!153169 () Bool)

(assert (=> d!153169 e!805820))

(declare-fun c!131791 () Bool)

(assert (=> d!153169 (= c!131791 (and ((_ is Intermediate!11253) lt!628167) (undefined!12065 lt!628167)))))

(assert (=> d!153169 (= lt!628167 e!805816)))

(declare-fun c!131793 () Bool)

(assert (=> d!153169 (= c!131793 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153169 (= lt!628166 (select (arr!46952 lt!628060) index!585))))

(assert (=> d!153169 (validMask!0 mask!2608)))

(assert (=> d!153169 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628063 lt!628060 mask!2608) lt!628167)))

(declare-fun b!1426550 () Bool)

(assert (=> b!1426550 (and (bvsge (index!47405 lt!628167) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628167) (size!47503 lt!628060)))))

(declare-fun res!961943 () Bool)

(assert (=> b!1426550 (= res!961943 (= (select (arr!46952 lt!628060) (index!47405 lt!628167)) lt!628063))))

(assert (=> b!1426550 (=> res!961943 e!805818)))

(assert (=> b!1426550 (= e!805817 e!805818)))

(declare-fun b!1426553 () Bool)

(assert (=> b!1426553 (= e!805816 (Intermediate!11253 true index!585 x!605))))

(declare-fun b!1426554 () Bool)

(assert (=> b!1426554 (and (bvsge (index!47405 lt!628167) #b00000000000000000000000000000000) (bvslt (index!47405 lt!628167) (size!47503 lt!628060)))))

(declare-fun res!961945 () Bool)

(assert (=> b!1426554 (= res!961945 (= (select (arr!46952 lt!628060) (index!47405 lt!628167)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1426554 (=> res!961945 e!805818)))

(assert (= (and d!153169 c!131793) b!1426553))

(assert (= (and d!153169 (not c!131793)) b!1426547))

(assert (= (and b!1426547 c!131792) b!1426549))

(assert (= (and b!1426547 (not c!131792)) b!1426552))

(assert (= (and d!153169 c!131791) b!1426551))

(assert (= (and d!153169 (not c!131791)) b!1426548))

(assert (= (and b!1426548 res!961944) b!1426550))

(assert (= (and b!1426550 (not res!961943)) b!1426554))

(assert (= (and b!1426554 (not res!961945)) b!1426546))

(declare-fun m!1317139 () Bool)

(assert (=> b!1426554 m!1317139))

(assert (=> b!1426552 m!1317015))

(assert (=> b!1426552 m!1317015))

(declare-fun m!1317141 () Bool)

(assert (=> b!1426552 m!1317141))

(assert (=> b!1426550 m!1317139))

(assert (=> b!1426546 m!1317139))

(declare-fun m!1317143 () Bool)

(assert (=> d!153169 m!1317143))

(assert (=> d!153169 m!1316933))

(assert (=> b!1426269 d!153169))

(check-sat (not d!153151) (not b!1426404) (not b!1426354) (not d!153147) (not d!153123) (not b!1426513) (not d!153169) (not bm!67333) (not b!1426505) (not b!1426403) (not b!1426552) (not b!1426512) (not bm!67320) (not d!153163) (not b!1426317) (not b!1426320) (not b!1426321) (not b!1426530) (not b!1426539) (not d!153107) (not bm!67329))
(check-sat)
