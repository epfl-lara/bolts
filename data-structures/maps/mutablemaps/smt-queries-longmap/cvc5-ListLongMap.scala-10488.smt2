; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123490 () Bool)

(assert start!123490)

(declare-fun b!1431042 () Bool)

(declare-fun e!807973 () Bool)

(declare-fun e!807972 () Bool)

(assert (=> b!1431042 (= e!807973 e!807972)))

(declare-fun res!965223 () Bool)

(assert (=> b!1431042 (=> (not res!965223) (not e!807972))))

(declare-datatypes ((SeekEntryResult!11321 0))(
  ( (MissingZero!11321 (index!47675 (_ BitVec 32))) (Found!11321 (index!47676 (_ BitVec 32))) (Intermediate!11321 (undefined!12133 Bool) (index!47677 (_ BitVec 32)) (x!129328 (_ BitVec 32))) (Undefined!11321) (MissingVacant!11321 (index!47678 (_ BitVec 32))) )
))
(declare-fun lt!629976 () SeekEntryResult!11321)

(declare-fun lt!629979 () (_ BitVec 64))

(declare-datatypes ((array!97431 0))(
  ( (array!97432 (arr!47020 (Array (_ BitVec 32) (_ BitVec 64))) (size!47571 (_ BitVec 32))) )
))
(declare-fun lt!629980 () array!97431)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97431 (_ BitVec 32)) SeekEntryResult!11321)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431042 (= res!965223 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629979 mask!2608) lt!629979 lt!629980 mask!2608) lt!629976))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1431042 (= lt!629976 (Intermediate!11321 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97431)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1431042 (= lt!629979 (select (store (arr!47020 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431042 (= lt!629980 (array!97432 (store (arr!47020 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47571 a!2831)))))

(declare-fun res!965227 () Bool)

(declare-fun e!807970 () Bool)

(assert (=> start!123490 (=> (not res!965227) (not e!807970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123490 (= res!965227 (validMask!0 mask!2608))))

(assert (=> start!123490 e!807970))

(assert (=> start!123490 true))

(declare-fun array_inv!35965 (array!97431) Bool)

(assert (=> start!123490 (array_inv!35965 a!2831)))

(declare-fun b!1431043 () Bool)

(declare-fun res!965217 () Bool)

(assert (=> b!1431043 (=> (not res!965217) (not e!807970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431043 (= res!965217 (validKeyInArray!0 (select (arr!47020 a!2831) i!982)))))

(declare-fun b!1431044 () Bool)

(declare-fun res!965219 () Bool)

(assert (=> b!1431044 (=> (not res!965219) (not e!807970))))

(assert (=> b!1431044 (= res!965219 (and (= (size!47571 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47571 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47571 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431045 () Bool)

(assert (=> b!1431045 (= e!807970 e!807973)))

(declare-fun res!965220 () Bool)

(assert (=> b!1431045 (=> (not res!965220) (not e!807973))))

(declare-fun lt!629977 () SeekEntryResult!11321)

(assert (=> b!1431045 (= res!965220 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47020 a!2831) j!81) mask!2608) (select (arr!47020 a!2831) j!81) a!2831 mask!2608) lt!629977))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1431045 (= lt!629977 (Intermediate!11321 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431046 () Bool)

(declare-fun res!965224 () Bool)

(assert (=> b!1431046 (=> (not res!965224) (not e!807970))))

(assert (=> b!1431046 (= res!965224 (validKeyInArray!0 (select (arr!47020 a!2831) j!81)))))

(declare-fun e!807971 () Bool)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun b!1431047 () Bool)

(assert (=> b!1431047 (= e!807971 (or (= (select (arr!47020 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47020 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47020 a!2831) index!585) (select (arr!47020 a!2831) j!81)) (not (= (select (store (arr!47020 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (= index!585 intermediateAfterIndex!13) (= intermediateAfterIndex!13 i!982))))))

(declare-fun b!1431048 () Bool)

(declare-fun res!965216 () Bool)

(assert (=> b!1431048 (=> (not res!965216) (not e!807970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97431 (_ BitVec 32)) Bool)

(assert (=> b!1431048 (= res!965216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431049 () Bool)

(declare-fun res!965221 () Bool)

(assert (=> b!1431049 (=> (not res!965221) (not e!807972))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1431049 (= res!965221 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47020 a!2831) j!81) a!2831 mask!2608) lt!629977))))

(declare-fun b!1431050 () Bool)

(declare-fun res!965229 () Bool)

(assert (=> b!1431050 (=> (not res!965229) (not e!807972))))

(assert (=> b!1431050 (= res!965229 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629979 lt!629980 mask!2608) lt!629976))))

(declare-fun b!1431051 () Bool)

(declare-fun res!965222 () Bool)

(assert (=> b!1431051 (=> (not res!965222) (not e!807970))))

(declare-datatypes ((List!33710 0))(
  ( (Nil!33707) (Cons!33706 (h!35026 (_ BitVec 64)) (t!48411 List!33710)) )
))
(declare-fun arrayNoDuplicates!0 (array!97431 (_ BitVec 32) List!33710) Bool)

(assert (=> b!1431051 (= res!965222 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33707))))

(declare-fun b!1431052 () Bool)

(declare-fun res!965228 () Bool)

(assert (=> b!1431052 (=> (not res!965228) (not e!807970))))

(assert (=> b!1431052 (= res!965228 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47571 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47571 a!2831))))))

(declare-fun b!1431053 () Bool)

(declare-fun res!965226 () Bool)

(assert (=> b!1431053 (=> (not res!965226) (not e!807971))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97431 (_ BitVec 32)) SeekEntryResult!11321)

(assert (=> b!1431053 (= res!965226 (= (seekEntryOrOpen!0 (select (arr!47020 a!2831) j!81) a!2831 mask!2608) (Found!11321 j!81)))))

(declare-fun b!1431054 () Bool)

(declare-fun res!965225 () Bool)

(assert (=> b!1431054 (=> (not res!965225) (not e!807972))))

(assert (=> b!1431054 (= res!965225 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431055 () Bool)

(assert (=> b!1431055 (= e!807972 (not (or (= (select (arr!47020 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47020 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47020 a!2831) index!585) (select (arr!47020 a!2831) j!81)) (not (= (select (store (arr!47020 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge intermediateAfterX!13 intermediateBeforeX!13) (not undefinedAfter!5))))))

(assert (=> b!1431055 e!807971))

(declare-fun res!965218 () Bool)

(assert (=> b!1431055 (=> (not res!965218) (not e!807971))))

(assert (=> b!1431055 (= res!965218 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48336 0))(
  ( (Unit!48337) )
))
(declare-fun lt!629978 () Unit!48336)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97431 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48336)

(assert (=> b!1431055 (= lt!629978 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!123490 res!965227) b!1431044))

(assert (= (and b!1431044 res!965219) b!1431043))

(assert (= (and b!1431043 res!965217) b!1431046))

(assert (= (and b!1431046 res!965224) b!1431048))

(assert (= (and b!1431048 res!965216) b!1431051))

(assert (= (and b!1431051 res!965222) b!1431052))

(assert (= (and b!1431052 res!965228) b!1431045))

(assert (= (and b!1431045 res!965220) b!1431042))

(assert (= (and b!1431042 res!965223) b!1431049))

(assert (= (and b!1431049 res!965221) b!1431050))

(assert (= (and b!1431050 res!965229) b!1431054))

(assert (= (and b!1431054 res!965225) b!1431055))

(assert (= (and b!1431055 res!965218) b!1431053))

(assert (= (and b!1431053 res!965226) b!1431047))

(declare-fun m!1320989 () Bool)

(assert (=> b!1431047 m!1320989))

(declare-fun m!1320991 () Bool)

(assert (=> b!1431047 m!1320991))

(declare-fun m!1320993 () Bool)

(assert (=> b!1431047 m!1320993))

(declare-fun m!1320995 () Bool)

(assert (=> b!1431047 m!1320995))

(declare-fun m!1320997 () Bool)

(assert (=> start!123490 m!1320997))

(declare-fun m!1320999 () Bool)

(assert (=> start!123490 m!1320999))

(declare-fun m!1321001 () Bool)

(assert (=> b!1431051 m!1321001))

(declare-fun m!1321003 () Bool)

(assert (=> b!1431043 m!1321003))

(assert (=> b!1431043 m!1321003))

(declare-fun m!1321005 () Bool)

(assert (=> b!1431043 m!1321005))

(assert (=> b!1431046 m!1320991))

(assert (=> b!1431046 m!1320991))

(declare-fun m!1321007 () Bool)

(assert (=> b!1431046 m!1321007))

(declare-fun m!1321009 () Bool)

(assert (=> b!1431042 m!1321009))

(assert (=> b!1431042 m!1321009))

(declare-fun m!1321011 () Bool)

(assert (=> b!1431042 m!1321011))

(assert (=> b!1431042 m!1320993))

(declare-fun m!1321013 () Bool)

(assert (=> b!1431042 m!1321013))

(assert (=> b!1431053 m!1320991))

(assert (=> b!1431053 m!1320991))

(declare-fun m!1321015 () Bool)

(assert (=> b!1431053 m!1321015))

(assert (=> b!1431055 m!1320993))

(assert (=> b!1431055 m!1320995))

(assert (=> b!1431055 m!1320989))

(declare-fun m!1321017 () Bool)

(assert (=> b!1431055 m!1321017))

(assert (=> b!1431055 m!1320991))

(declare-fun m!1321019 () Bool)

(assert (=> b!1431055 m!1321019))

(assert (=> b!1431049 m!1320991))

(assert (=> b!1431049 m!1320991))

(declare-fun m!1321021 () Bool)

(assert (=> b!1431049 m!1321021))

(declare-fun m!1321023 () Bool)

(assert (=> b!1431050 m!1321023))

(assert (=> b!1431045 m!1320991))

(assert (=> b!1431045 m!1320991))

(declare-fun m!1321025 () Bool)

(assert (=> b!1431045 m!1321025))

(assert (=> b!1431045 m!1321025))

(assert (=> b!1431045 m!1320991))

(declare-fun m!1321027 () Bool)

(assert (=> b!1431045 m!1321027))

(declare-fun m!1321029 () Bool)

(assert (=> b!1431048 m!1321029))

(push 1)

(assert (not b!1431048))

(assert (not b!1431050))

(assert (not b!1431049))

(assert (not b!1431042))

(assert (not start!123490))

(assert (not b!1431051))

(assert (not b!1431046))

(assert (not b!1431043))

(assert (not b!1431055))

(assert (not b!1431053))

(assert (not b!1431045))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1431229 () Bool)

(declare-fun e!808066 () Bool)

(declare-fun lt!630048 () SeekEntryResult!11321)

(assert (=> b!1431229 (= e!808066 (bvsge (x!129328 lt!630048) #b01111111111111111111111111111110))))

(declare-fun b!1431230 () Bool)

(assert (=> b!1431230 (and (bvsge (index!47677 lt!630048) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630048) (size!47571 a!2831)))))

(declare-fun e!808062 () Bool)

(assert (=> b!1431230 (= e!808062 (= (select (arr!47020 a!2831) (index!47677 lt!630048)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1431231 () Bool)

(declare-fun e!808065 () Bool)

(assert (=> b!1431231 (= e!808066 e!808065)))

(declare-fun res!965354 () Bool)

(assert (=> b!1431231 (= res!965354 (and (is-Intermediate!11321 lt!630048) (not (undefined!12133 lt!630048)) (bvslt (x!129328 lt!630048) #b01111111111111111111111111111110) (bvsge (x!129328 lt!630048) #b00000000000000000000000000000000) (bvsge (x!129328 lt!630048) #b00000000000000000000000000000000)))))

(assert (=> b!1431231 (=> (not res!965354) (not e!808065))))

(declare-fun b!1431232 () Bool)

(declare-fun e!808064 () SeekEntryResult!11321)

(assert (=> b!1431232 (= e!808064 (Intermediate!11321 true (toIndex!0 (select (arr!47020 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431233 () Bool)

(declare-fun e!808063 () SeekEntryResult!11321)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431233 (= e!808063 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47020 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47020 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1431234 () Bool)

(assert (=> b!1431234 (= e!808064 e!808063)))

(declare-fun lt!630047 () (_ BitVec 64))

(declare-fun c!132437 () Bool)

(assert (=> b!1431234 (= c!132437 (or (= lt!630047 (select (arr!47020 a!2831) j!81)) (= (bvadd lt!630047 lt!630047) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431236 () Bool)

(assert (=> b!1431236 (= e!808063 (Intermediate!11321 false (toIndex!0 (select (arr!47020 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431237 () Bool)

(assert (=> b!1431237 (and (bvsge (index!47677 lt!630048) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630048) (size!47571 a!2831)))))

(declare-fun res!965352 () Bool)

(assert (=> b!1431237 (= res!965352 (= (select (arr!47020 a!2831) (index!47677 lt!630048)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1431237 (=> res!965352 e!808062)))

(declare-fun b!1431235 () Bool)

(assert (=> b!1431235 (and (bvsge (index!47677 lt!630048) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630048) (size!47571 a!2831)))))

(declare-fun res!965353 () Bool)

(assert (=> b!1431235 (= res!965353 (= (select (arr!47020 a!2831) (index!47677 lt!630048)) (select (arr!47020 a!2831) j!81)))))

(assert (=> b!1431235 (=> res!965353 e!808062)))

(assert (=> b!1431235 (= e!808065 e!808062)))

(declare-fun d!153809 () Bool)

(assert (=> d!153809 e!808066))

(declare-fun c!132439 () Bool)

(assert (=> d!153809 (= c!132439 (and (is-Intermediate!11321 lt!630048) (undefined!12133 lt!630048)))))

(assert (=> d!153809 (= lt!630048 e!808064)))

(declare-fun c!132438 () Bool)

(assert (=> d!153809 (= c!132438 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153809 (= lt!630047 (select (arr!47020 a!2831) (toIndex!0 (select (arr!47020 a!2831) j!81) mask!2608)))))

(assert (=> d!153809 (validMask!0 mask!2608)))

(assert (=> d!153809 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47020 a!2831) j!81) mask!2608) (select (arr!47020 a!2831) j!81) a!2831 mask!2608) lt!630048)))

(assert (= (and d!153809 c!132438) b!1431232))

(assert (= (and d!153809 (not c!132438)) b!1431234))

(assert (= (and b!1431234 c!132437) b!1431236))

(assert (= (and b!1431234 (not c!132437)) b!1431233))

(assert (= (and d!153809 c!132439) b!1431229))

(assert (= (and d!153809 (not c!132439)) b!1431231))

(assert (= (and b!1431231 res!965354) b!1431235))

(assert (= (and b!1431235 (not res!965353)) b!1431237))

(assert (= (and b!1431237 (not res!965352)) b!1431230))

(declare-fun m!1321145 () Bool)

(assert (=> b!1431237 m!1321145))

(assert (=> b!1431230 m!1321145))

(assert (=> b!1431233 m!1321025))

(declare-fun m!1321147 () Bool)

(assert (=> b!1431233 m!1321147))

(assert (=> b!1431233 m!1321147))

(assert (=> b!1431233 m!1320991))

(declare-fun m!1321149 () Bool)

(assert (=> b!1431233 m!1321149))

(assert (=> b!1431235 m!1321145))

(assert (=> d!153809 m!1321025))

(declare-fun m!1321151 () Bool)

(assert (=> d!153809 m!1321151))

(assert (=> d!153809 m!1320997))

(assert (=> b!1431045 d!153809))

(declare-fun d!153821 () Bool)

(declare-fun lt!630057 () (_ BitVec 32))

(declare-fun lt!630056 () (_ BitVec 32))

(assert (=> d!153821 (= lt!630057 (bvmul (bvxor lt!630056 (bvlshr lt!630056 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153821 (= lt!630056 ((_ extract 31 0) (bvand (bvxor (select (arr!47020 a!2831) j!81) (bvlshr (select (arr!47020 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153821 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965355 (let ((h!35030 ((_ extract 31 0) (bvand (bvxor (select (arr!47020 a!2831) j!81) (bvlshr (select (arr!47020 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129334 (bvmul (bvxor h!35030 (bvlshr h!35030 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129334 (bvlshr x!129334 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965355 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965355 #b00000000000000000000000000000000))))))

(assert (=> d!153821 (= (toIndex!0 (select (arr!47020 a!2831) j!81) mask!2608) (bvand (bvxor lt!630057 (bvlshr lt!630057 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1431045 d!153821))

(declare-fun b!1431251 () Bool)

(declare-fun e!808078 () Bool)

(declare-fun call!67467 () Bool)

(assert (=> b!1431251 (= e!808078 call!67467)))

(declare-fun b!1431252 () Bool)

(declare-fun e!808076 () Bool)

(assert (=> b!1431252 (= e!808076 e!808078)))

(declare-fun c!132443 () Bool)

(assert (=> b!1431252 (= c!132443 (validKeyInArray!0 (select (arr!47020 a!2831) j!81)))))

(declare-fun bm!67464 () Bool)

(assert (=> bm!67464 (= call!67467 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1431253 () Bool)

(declare-fun e!808077 () Bool)

(assert (=> b!1431253 (= e!808077 call!67467)))

(declare-fun d!153829 () Bool)

(declare-fun res!965362 () Bool)

(assert (=> d!153829 (=> res!965362 e!808076)))

(assert (=> d!153829 (= res!965362 (bvsge j!81 (size!47571 a!2831)))))

(assert (=> d!153829 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!808076)))

(declare-fun b!1431250 () Bool)

(assert (=> b!1431250 (= e!808078 e!808077)))

(declare-fun lt!630065 () (_ BitVec 64))

(assert (=> b!1431250 (= lt!630065 (select (arr!47020 a!2831) j!81))))

(declare-fun lt!630066 () Unit!48336)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97431 (_ BitVec 64) (_ BitVec 32)) Unit!48336)

(assert (=> b!1431250 (= lt!630066 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630065 j!81))))

(declare-fun arrayContainsKey!0 (array!97431 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1431250 (arrayContainsKey!0 a!2831 lt!630065 #b00000000000000000000000000000000)))

(declare-fun lt!630064 () Unit!48336)

(assert (=> b!1431250 (= lt!630064 lt!630066)))

(declare-fun res!965363 () Bool)

(assert (=> b!1431250 (= res!965363 (= (seekEntryOrOpen!0 (select (arr!47020 a!2831) j!81) a!2831 mask!2608) (Found!11321 j!81)))))

(assert (=> b!1431250 (=> (not res!965363) (not e!808077))))

(assert (= (and d!153829 (not res!965362)) b!1431252))

(assert (= (and b!1431252 c!132443) b!1431250))

(assert (= (and b!1431252 (not c!132443)) b!1431251))

(assert (= (and b!1431250 res!965363) b!1431253))

(assert (= (or b!1431253 b!1431251) bm!67464))

(assert (=> b!1431252 m!1320991))

(assert (=> b!1431252 m!1320991))

(assert (=> b!1431252 m!1321007))

(declare-fun m!1321161 () Bool)

(assert (=> bm!67464 m!1321161))

(assert (=> b!1431250 m!1320991))

(declare-fun m!1321163 () Bool)

(assert (=> b!1431250 m!1321163))

(declare-fun m!1321165 () Bool)

(assert (=> b!1431250 m!1321165))

(assert (=> b!1431250 m!1320991))

(assert (=> b!1431250 m!1321015))

(assert (=> b!1431055 d!153829))

(declare-fun d!153831 () Bool)

(assert (=> d!153831 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!630079 () Unit!48336)

(declare-fun choose!38 (array!97431 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48336)

(assert (=> d!153831 (= lt!630079 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153831 (validMask!0 mask!2608)))

(assert (=> d!153831 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!630079)))

(declare-fun bs!41688 () Bool)

(assert (= bs!41688 d!153831))

(assert (=> bs!41688 m!1321017))

(declare-fun m!1321167 () Bool)

(assert (=> bs!41688 m!1321167))

(assert (=> bs!41688 m!1320997))

(assert (=> b!1431055 d!153831))

(declare-fun d!153833 () Bool)

(assert (=> d!153833 (= (validKeyInArray!0 (select (arr!47020 a!2831) i!982)) (and (not (= (select (arr!47020 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47020 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1431043 d!153833))

(declare-fun b!1431361 () Bool)

(declare-fun e!808144 () SeekEntryResult!11321)

(declare-fun lt!630114 () SeekEntryResult!11321)

(assert (=> b!1431361 (= e!808144 (Found!11321 (index!47677 lt!630114)))))

(declare-fun e!808143 () SeekEntryResult!11321)

(declare-fun b!1431362 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97431 (_ BitVec 32)) SeekEntryResult!11321)

(assert (=> b!1431362 (= e!808143 (seekKeyOrZeroReturnVacant!0 (x!129328 lt!630114) (index!47677 lt!630114) (index!47677 lt!630114) (select (arr!47020 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1431363 () Bool)

(assert (=> b!1431363 (= e!808143 (MissingZero!11321 (index!47677 lt!630114)))))

(declare-fun b!1431364 () Bool)

(declare-fun c!132483 () Bool)

(declare-fun lt!630116 () (_ BitVec 64))

(assert (=> b!1431364 (= c!132483 (= lt!630116 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1431364 (= e!808144 e!808143)))

(declare-fun d!153835 () Bool)

(declare-fun lt!630115 () SeekEntryResult!11321)

(assert (=> d!153835 (and (or (is-Undefined!11321 lt!630115) (not (is-Found!11321 lt!630115)) (and (bvsge (index!47676 lt!630115) #b00000000000000000000000000000000) (bvslt (index!47676 lt!630115) (size!47571 a!2831)))) (or (is-Undefined!11321 lt!630115) (is-Found!11321 lt!630115) (not (is-MissingZero!11321 lt!630115)) (and (bvsge (index!47675 lt!630115) #b00000000000000000000000000000000) (bvslt (index!47675 lt!630115) (size!47571 a!2831)))) (or (is-Undefined!11321 lt!630115) (is-Found!11321 lt!630115) (is-MissingZero!11321 lt!630115) (not (is-MissingVacant!11321 lt!630115)) (and (bvsge (index!47678 lt!630115) #b00000000000000000000000000000000) (bvslt (index!47678 lt!630115) (size!47571 a!2831)))) (or (is-Undefined!11321 lt!630115) (ite (is-Found!11321 lt!630115) (= (select (arr!47020 a!2831) (index!47676 lt!630115)) (select (arr!47020 a!2831) j!81)) (ite (is-MissingZero!11321 lt!630115) (= (select (arr!47020 a!2831) (index!47675 lt!630115)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11321 lt!630115) (= (select (arr!47020 a!2831) (index!47678 lt!630115)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!808142 () SeekEntryResult!11321)

(assert (=> d!153835 (= lt!630115 e!808142)))

(declare-fun c!132482 () Bool)

(assert (=> d!153835 (= c!132482 (and (is-Intermediate!11321 lt!630114) (undefined!12133 lt!630114)))))

(assert (=> d!153835 (= lt!630114 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47020 a!2831) j!81) mask!2608) (select (arr!47020 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153835 (validMask!0 mask!2608)))

(assert (=> d!153835 (= (seekEntryOrOpen!0 (select (arr!47020 a!2831) j!81) a!2831 mask!2608) lt!630115)))

(declare-fun b!1431365 () Bool)

(assert (=> b!1431365 (= e!808142 Undefined!11321)))

(declare-fun b!1431366 () Bool)

(assert (=> b!1431366 (= e!808142 e!808144)))

(assert (=> b!1431366 (= lt!630116 (select (arr!47020 a!2831) (index!47677 lt!630114)))))

(declare-fun c!132484 () Bool)

(assert (=> b!1431366 (= c!132484 (= lt!630116 (select (arr!47020 a!2831) j!81)))))

(assert (= (and d!153835 c!132482) b!1431365))

(assert (= (and d!153835 (not c!132482)) b!1431366))

(assert (= (and b!1431366 c!132484) b!1431361))

(assert (= (and b!1431366 (not c!132484)) b!1431364))

(assert (= (and b!1431364 c!132483) b!1431363))

(assert (= (and b!1431364 (not c!132483)) b!1431362))

(assert (=> b!1431362 m!1320991))

(declare-fun m!1321233 () Bool)

(assert (=> b!1431362 m!1321233))

(assert (=> d!153835 m!1321025))

(assert (=> d!153835 m!1320991))

(assert (=> d!153835 m!1321027))

(declare-fun m!1321235 () Bool)

(assert (=> d!153835 m!1321235))

(assert (=> d!153835 m!1320991))

(assert (=> d!153835 m!1321025))

(declare-fun m!1321237 () Bool)

(assert (=> d!153835 m!1321237))

(declare-fun m!1321239 () Bool)

(assert (=> d!153835 m!1321239))

(assert (=> d!153835 m!1320997))

(declare-fun m!1321241 () Bool)

(assert (=> b!1431366 m!1321241))

(assert (=> b!1431053 d!153835))

(declare-fun b!1431367 () Bool)

(declare-fun e!808149 () Bool)

(declare-fun lt!630118 () SeekEntryResult!11321)

(assert (=> b!1431367 (= e!808149 (bvsge (x!129328 lt!630118) #b01111111111111111111111111111110))))

(declare-fun b!1431368 () Bool)

(assert (=> b!1431368 (and (bvsge (index!47677 lt!630118) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630118) (size!47571 lt!629980)))))

(declare-fun e!808145 () Bool)

(assert (=> b!1431368 (= e!808145 (= (select (arr!47020 lt!629980) (index!47677 lt!630118)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1431369 () Bool)

(declare-fun e!808148 () Bool)

(assert (=> b!1431369 (= e!808149 e!808148)))

(declare-fun res!965398 () Bool)

(assert (=> b!1431369 (= res!965398 (and (is-Intermediate!11321 lt!630118) (not (undefined!12133 lt!630118)) (bvslt (x!129328 lt!630118) #b01111111111111111111111111111110) (bvsge (x!129328 lt!630118) #b00000000000000000000000000000000) (bvsge (x!129328 lt!630118) #b00000000000000000000000000000000)))))

(assert (=> b!1431369 (=> (not res!965398) (not e!808148))))

(declare-fun b!1431370 () Bool)

(declare-fun e!808147 () SeekEntryResult!11321)

(assert (=> b!1431370 (= e!808147 (Intermediate!11321 true (toIndex!0 lt!629979 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431371 () Bool)

(declare-fun e!808146 () SeekEntryResult!11321)

(assert (=> b!1431371 (= e!808146 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629979 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629979 lt!629980 mask!2608))))

(declare-fun b!1431372 () Bool)

(assert (=> b!1431372 (= e!808147 e!808146)))

(declare-fun c!132485 () Bool)

(declare-fun lt!630117 () (_ BitVec 64))

(assert (=> b!1431372 (= c!132485 (or (= lt!630117 lt!629979) (= (bvadd lt!630117 lt!630117) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431374 () Bool)

(assert (=> b!1431374 (= e!808146 (Intermediate!11321 false (toIndex!0 lt!629979 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431375 () Bool)

(assert (=> b!1431375 (and (bvsge (index!47677 lt!630118) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630118) (size!47571 lt!629980)))))

(declare-fun res!965396 () Bool)

(assert (=> b!1431375 (= res!965396 (= (select (arr!47020 lt!629980) (index!47677 lt!630118)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1431375 (=> res!965396 e!808145)))

(declare-fun b!1431373 () Bool)

(assert (=> b!1431373 (and (bvsge (index!47677 lt!630118) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630118) (size!47571 lt!629980)))))

(declare-fun res!965397 () Bool)

(assert (=> b!1431373 (= res!965397 (= (select (arr!47020 lt!629980) (index!47677 lt!630118)) lt!629979))))

(assert (=> b!1431373 (=> res!965397 e!808145)))

(assert (=> b!1431373 (= e!808148 e!808145)))

(declare-fun d!153863 () Bool)

(assert (=> d!153863 e!808149))

(declare-fun c!132487 () Bool)

(assert (=> d!153863 (= c!132487 (and (is-Intermediate!11321 lt!630118) (undefined!12133 lt!630118)))))

(assert (=> d!153863 (= lt!630118 e!808147)))

(declare-fun c!132486 () Bool)

(assert (=> d!153863 (= c!132486 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!153863 (= lt!630117 (select (arr!47020 lt!629980) (toIndex!0 lt!629979 mask!2608)))))

(assert (=> d!153863 (validMask!0 mask!2608)))

(assert (=> d!153863 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629979 mask!2608) lt!629979 lt!629980 mask!2608) lt!630118)))

(assert (= (and d!153863 c!132486) b!1431370))

(assert (= (and d!153863 (not c!132486)) b!1431372))

(assert (= (and b!1431372 c!132485) b!1431374))

(assert (= (and b!1431372 (not c!132485)) b!1431371))

(assert (= (and d!153863 c!132487) b!1431367))

(assert (= (and d!153863 (not c!132487)) b!1431369))

(assert (= (and b!1431369 res!965398) b!1431373))

(assert (= (and b!1431373 (not res!965397)) b!1431375))

(assert (= (and b!1431375 (not res!965396)) b!1431368))

(declare-fun m!1321243 () Bool)

(assert (=> b!1431375 m!1321243))

(assert (=> b!1431368 m!1321243))

(assert (=> b!1431371 m!1321009))

(declare-fun m!1321245 () Bool)

(assert (=> b!1431371 m!1321245))

(assert (=> b!1431371 m!1321245))

(declare-fun m!1321247 () Bool)

(assert (=> b!1431371 m!1321247))

(assert (=> b!1431373 m!1321243))

(assert (=> d!153863 m!1321009))

(declare-fun m!1321249 () Bool)

(assert (=> d!153863 m!1321249))

(assert (=> d!153863 m!1320997))

(assert (=> b!1431042 d!153863))

(declare-fun d!153865 () Bool)

(declare-fun lt!630120 () (_ BitVec 32))

(declare-fun lt!630119 () (_ BitVec 32))

(assert (=> d!153865 (= lt!630120 (bvmul (bvxor lt!630119 (bvlshr lt!630119 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153865 (= lt!630119 ((_ extract 31 0) (bvand (bvxor lt!629979 (bvlshr lt!629979 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153865 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965355 (let ((h!35030 ((_ extract 31 0) (bvand (bvxor lt!629979 (bvlshr lt!629979 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129334 (bvmul (bvxor h!35030 (bvlshr h!35030 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129334 (bvlshr x!129334 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965355 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965355 #b00000000000000000000000000000000))))))

(assert (=> d!153865 (= (toIndex!0 lt!629979 mask!2608) (bvand (bvxor lt!630120 (bvlshr lt!630120 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1431042 d!153865))

(declare-fun d!153867 () Bool)

(declare-fun res!965410 () Bool)

(declare-fun e!808165 () Bool)

(assert (=> d!153867 (=> res!965410 e!808165)))

(assert (=> d!153867 (= res!965410 (bvsge #b00000000000000000000000000000000 (size!47571 a!2831)))))

(assert (=> d!153867 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33707) e!808165)))

(declare-fun b!1431395 () Bool)

(declare-fun e!808166 () Bool)

(assert (=> b!1431395 (= e!808165 e!808166)))

(declare-fun res!965409 () Bool)

(assert (=> b!1431395 (=> (not res!965409) (not e!808166))))

(declare-fun e!808164 () Bool)

(assert (=> b!1431395 (= res!965409 (not e!808164))))

(declare-fun res!965408 () Bool)

(assert (=> b!1431395 (=> (not res!965408) (not e!808164))))

(assert (=> b!1431395 (= res!965408 (validKeyInArray!0 (select (arr!47020 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67472 () Bool)

(declare-fun call!67475 () Bool)

(declare-fun c!132493 () Bool)

(assert (=> bm!67472 (= call!67475 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132493 (Cons!33706 (select (arr!47020 a!2831) #b00000000000000000000000000000000) Nil!33707) Nil!33707)))))

(declare-fun b!1431396 () Bool)

(declare-fun e!808163 () Bool)

(assert (=> b!1431396 (= e!808163 call!67475)))

(declare-fun b!1431397 () Bool)

(assert (=> b!1431397 (= e!808166 e!808163)))

(assert (=> b!1431397 (= c!132493 (validKeyInArray!0 (select (arr!47020 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1431398 () Bool)

(declare-fun contains!9876 (List!33710 (_ BitVec 64)) Bool)

(assert (=> b!1431398 (= e!808164 (contains!9876 Nil!33707 (select (arr!47020 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1431399 () Bool)

(assert (=> b!1431399 (= e!808163 call!67475)))

(assert (= (and d!153867 (not res!965410)) b!1431395))

(assert (= (and b!1431395 res!965408) b!1431398))

(assert (= (and b!1431395 res!965409) b!1431397))

(assert (= (and b!1431397 c!132493) b!1431399))

(assert (= (and b!1431397 (not c!132493)) b!1431396))

(assert (= (or b!1431399 b!1431396) bm!67472))

(declare-fun m!1321259 () Bool)

(assert (=> b!1431395 m!1321259))

(assert (=> b!1431395 m!1321259))

(declare-fun m!1321261 () Bool)

(assert (=> b!1431395 m!1321261))

(assert (=> bm!67472 m!1321259))

(declare-fun m!1321263 () Bool)

(assert (=> bm!67472 m!1321263))

(assert (=> b!1431397 m!1321259))

(assert (=> b!1431397 m!1321259))

(assert (=> b!1431397 m!1321261))

(assert (=> b!1431398 m!1321259))

(assert (=> b!1431398 m!1321259))

(declare-fun m!1321265 () Bool)

(assert (=> b!1431398 m!1321265))

(assert (=> b!1431051 d!153867))

(declare-fun b!1431400 () Bool)

(declare-fun e!808171 () Bool)

(declare-fun lt!630126 () SeekEntryResult!11321)

(assert (=> b!1431400 (= e!808171 (bvsge (x!129328 lt!630126) #b01111111111111111111111111111110))))

(declare-fun b!1431401 () Bool)

(assert (=> b!1431401 (and (bvsge (index!47677 lt!630126) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630126) (size!47571 lt!629980)))))

(declare-fun e!808167 () Bool)

(assert (=> b!1431401 (= e!808167 (= (select (arr!47020 lt!629980) (index!47677 lt!630126)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1431402 () Bool)

(declare-fun e!808170 () Bool)

(assert (=> b!1431402 (= e!808171 e!808170)))

(declare-fun res!965413 () Bool)

(assert (=> b!1431402 (= res!965413 (and (is-Intermediate!11321 lt!630126) (not (undefined!12133 lt!630126)) (bvslt (x!129328 lt!630126) #b01111111111111111111111111111110) (bvsge (x!129328 lt!630126) #b00000000000000000000000000000000) (bvsge (x!129328 lt!630126) x!605)))))

(assert (=> b!1431402 (=> (not res!965413) (not e!808170))))

(declare-fun b!1431403 () Bool)

(declare-fun e!808169 () SeekEntryResult!11321)

(assert (=> b!1431403 (= e!808169 (Intermediate!11321 true index!585 x!605))))

(declare-fun b!1431404 () Bool)

(declare-fun e!808168 () SeekEntryResult!11321)

(assert (=> b!1431404 (= e!808168 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629979 lt!629980 mask!2608))))

(declare-fun b!1431405 () Bool)

(assert (=> b!1431405 (= e!808169 e!808168)))

(declare-fun c!132494 () Bool)

(declare-fun lt!630125 () (_ BitVec 64))

(assert (=> b!1431405 (= c!132494 (or (= lt!630125 lt!629979) (= (bvadd lt!630125 lt!630125) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431407 () Bool)

(assert (=> b!1431407 (= e!808168 (Intermediate!11321 false index!585 x!605))))

(declare-fun b!1431408 () Bool)

(assert (=> b!1431408 (and (bvsge (index!47677 lt!630126) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630126) (size!47571 lt!629980)))))

(declare-fun res!965411 () Bool)

(assert (=> b!1431408 (= res!965411 (= (select (arr!47020 lt!629980) (index!47677 lt!630126)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1431408 (=> res!965411 e!808167)))

(declare-fun b!1431406 () Bool)

(assert (=> b!1431406 (and (bvsge (index!47677 lt!630126) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630126) (size!47571 lt!629980)))))

(declare-fun res!965412 () Bool)

(assert (=> b!1431406 (= res!965412 (= (select (arr!47020 lt!629980) (index!47677 lt!630126)) lt!629979))))

(assert (=> b!1431406 (=> res!965412 e!808167)))

(assert (=> b!1431406 (= e!808170 e!808167)))

(declare-fun d!153877 () Bool)

(assert (=> d!153877 e!808171))

(declare-fun c!132496 () Bool)

(assert (=> d!153877 (= c!132496 (and (is-Intermediate!11321 lt!630126) (undefined!12133 lt!630126)))))

(assert (=> d!153877 (= lt!630126 e!808169)))

(declare-fun c!132495 () Bool)

(assert (=> d!153877 (= c!132495 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153877 (= lt!630125 (select (arr!47020 lt!629980) index!585))))

(assert (=> d!153877 (validMask!0 mask!2608)))

(assert (=> d!153877 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629979 lt!629980 mask!2608) lt!630126)))

(assert (= (and d!153877 c!132495) b!1431403))

(assert (= (and d!153877 (not c!132495)) b!1431405))

(assert (= (and b!1431405 c!132494) b!1431407))

(assert (= (and b!1431405 (not c!132494)) b!1431404))

(assert (= (and d!153877 c!132496) b!1431400))

(assert (= (and d!153877 (not c!132496)) b!1431402))

(assert (= (and b!1431402 res!965413) b!1431406))

(assert (= (and b!1431406 (not res!965412)) b!1431408))

(assert (= (and b!1431408 (not res!965411)) b!1431401))

(declare-fun m!1321267 () Bool)

(assert (=> b!1431408 m!1321267))

(assert (=> b!1431401 m!1321267))

(declare-fun m!1321269 () Bool)

(assert (=> b!1431404 m!1321269))

(assert (=> b!1431404 m!1321269))

(declare-fun m!1321271 () Bool)

(assert (=> b!1431404 m!1321271))

(assert (=> b!1431406 m!1321267))

(declare-fun m!1321273 () Bool)

(assert (=> d!153877 m!1321273))

(assert (=> d!153877 m!1320997))

(assert (=> b!1431050 d!153877))

(declare-fun b!1431409 () Bool)

(declare-fun e!808176 () Bool)

(declare-fun lt!630128 () SeekEntryResult!11321)

(assert (=> b!1431409 (= e!808176 (bvsge (x!129328 lt!630128) #b01111111111111111111111111111110))))

(declare-fun b!1431410 () Bool)

(assert (=> b!1431410 (and (bvsge (index!47677 lt!630128) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630128) (size!47571 a!2831)))))

(declare-fun e!808172 () Bool)

(assert (=> b!1431410 (= e!808172 (= (select (arr!47020 a!2831) (index!47677 lt!630128)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1431411 () Bool)

(declare-fun e!808175 () Bool)

(assert (=> b!1431411 (= e!808176 e!808175)))

(declare-fun res!965416 () Bool)

(assert (=> b!1431411 (= res!965416 (and (is-Intermediate!11321 lt!630128) (not (undefined!12133 lt!630128)) (bvslt (x!129328 lt!630128) #b01111111111111111111111111111110) (bvsge (x!129328 lt!630128) #b00000000000000000000000000000000) (bvsge (x!129328 lt!630128) x!605)))))

(assert (=> b!1431411 (=> (not res!965416) (not e!808175))))

(declare-fun b!1431412 () Bool)

(declare-fun e!808174 () SeekEntryResult!11321)

(assert (=> b!1431412 (= e!808174 (Intermediate!11321 true index!585 x!605))))

(declare-fun b!1431413 () Bool)

(declare-fun e!808173 () SeekEntryResult!11321)

(assert (=> b!1431413 (= e!808173 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47020 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1431414 () Bool)

(assert (=> b!1431414 (= e!808174 e!808173)))

(declare-fun c!132497 () Bool)

(declare-fun lt!630127 () (_ BitVec 64))

(assert (=> b!1431414 (= c!132497 (or (= lt!630127 (select (arr!47020 a!2831) j!81)) (= (bvadd lt!630127 lt!630127) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431416 () Bool)

(assert (=> b!1431416 (= e!808173 (Intermediate!11321 false index!585 x!605))))

(declare-fun b!1431417 () Bool)

(assert (=> b!1431417 (and (bvsge (index!47677 lt!630128) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630128) (size!47571 a!2831)))))

(declare-fun res!965414 () Bool)

(assert (=> b!1431417 (= res!965414 (= (select (arr!47020 a!2831) (index!47677 lt!630128)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1431417 (=> res!965414 e!808172)))

(declare-fun b!1431415 () Bool)

(assert (=> b!1431415 (and (bvsge (index!47677 lt!630128) #b00000000000000000000000000000000) (bvslt (index!47677 lt!630128) (size!47571 a!2831)))))

(declare-fun res!965415 () Bool)

(assert (=> b!1431415 (= res!965415 (= (select (arr!47020 a!2831) (index!47677 lt!630128)) (select (arr!47020 a!2831) j!81)))))

(assert (=> b!1431415 (=> res!965415 e!808172)))

(assert (=> b!1431415 (= e!808175 e!808172)))

(declare-fun d!153879 () Bool)

(assert (=> d!153879 e!808176))

(declare-fun c!132499 () Bool)

(assert (=> d!153879 (= c!132499 (and (is-Intermediate!11321 lt!630128) (undefined!12133 lt!630128)))))

(assert (=> d!153879 (= lt!630128 e!808174)))

(declare-fun c!132498 () Bool)

(assert (=> d!153879 (= c!132498 (bvsge x!605 #b01111111111111111111111111111110))))

(assert (=> d!153879 (= lt!630127 (select (arr!47020 a!2831) index!585))))

(assert (=> d!153879 (validMask!0 mask!2608)))

(assert (=> d!153879 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47020 a!2831) j!81) a!2831 mask!2608) lt!630128)))

(assert (= (and d!153879 c!132498) b!1431412))

(assert (= (and d!153879 (not c!132498)) b!1431414))

(assert (= (and b!1431414 c!132497) b!1431416))

(assert (= (and b!1431414 (not c!132497)) b!1431413))

(assert (= (and d!153879 c!132499) b!1431409))

(assert (= (and d!153879 (not c!132499)) b!1431411))

(assert (= (and b!1431411 res!965416) b!1431415))

(assert (= (and b!1431415 (not res!965415)) b!1431417))

(assert (= (and b!1431417 (not res!965414)) b!1431410))

(declare-fun m!1321275 () Bool)

(assert (=> b!1431417 m!1321275))

(assert (=> b!1431410 m!1321275))

(assert (=> b!1431413 m!1321269))

(assert (=> b!1431413 m!1321269))

(assert (=> b!1431413 m!1320991))

(declare-fun m!1321277 () Bool)

(assert (=> b!1431413 m!1321277))

(assert (=> b!1431415 m!1321275))

(assert (=> d!153879 m!1320989))

(assert (=> d!153879 m!1320997))

(assert (=> b!1431049 d!153879))

(declare-fun d!153881 () Bool)

(assert (=> d!153881 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123490 d!153881))

(declare-fun d!153883 () Bool)

(assert (=> d!153883 (= (array_inv!35965 a!2831) (bvsge (size!47571 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123490 d!153883))

(declare-fun b!1431431 () Bool)

(declare-fun e!808185 () Bool)

(declare-fun call!67476 () Bool)

(assert (=> b!1431431 (= e!808185 call!67476)))

(declare-fun b!1431432 () Bool)

(declare-fun e!808183 () Bool)

(assert (=> b!1431432 (= e!808183 e!808185)))

(declare-fun c!132506 () Bool)

(assert (=> b!1431432 (= c!132506 (validKeyInArray!0 (select (arr!47020 a!2831) #b00000000000000000000000000000000)))))

(declare-fun bm!67473 () Bool)

(assert (=> bm!67473 (= call!67476 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1431433 () Bool)

(declare-fun e!808184 () Bool)

(assert (=> b!1431433 (= e!808184 call!67476)))

(declare-fun d!153885 () Bool)

(declare-fun res!965417 () Bool)

(assert (=> d!153885 (=> res!965417 e!808183)))

(assert (=> d!153885 (= res!965417 (bvsge #b00000000000000000000000000000000 (size!47571 a!2831)))))

(assert (=> d!153885 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!808183)))

(declare-fun b!1431430 () Bool)

(assert (=> b!1431430 (= e!808185 e!808184)))

(declare-fun lt!630136 () (_ BitVec 64))

(assert (=> b!1431430 (= lt!630136 (select (arr!47020 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!630137 () Unit!48336)

(assert (=> b!1431430 (= lt!630137 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630136 #b00000000000000000000000000000000))))

(assert (=> b!1431430 (arrayContainsKey!0 a!2831 lt!630136 #b00000000000000000000000000000000)))

(declare-fun lt!630135 () Unit!48336)

(assert (=> b!1431430 (= lt!630135 lt!630137)))

(declare-fun res!965418 () Bool)

(assert (=> b!1431430 (= res!965418 (= (seekEntryOrOpen!0 (select (arr!47020 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11321 #b00000000000000000000000000000000)))))

(assert (=> b!1431430 (=> (not res!965418) (not e!808184))))

(assert (= (and d!153885 (not res!965417)) b!1431432))

(assert (= (and b!1431432 c!132506) b!1431430))

(assert (= (and b!1431432 (not c!132506)) b!1431431))

(assert (= (and b!1431430 res!965418) b!1431433))

(assert (= (or b!1431433 b!1431431) bm!67473))

(assert (=> b!1431432 m!1321259))

(assert (=> b!1431432 m!1321259))

(assert (=> b!1431432 m!1321261))

(declare-fun m!1321279 () Bool)

(assert (=> bm!67473 m!1321279))

(assert (=> b!1431430 m!1321259))

(declare-fun m!1321281 () Bool)

(assert (=> b!1431430 m!1321281))

(declare-fun m!1321283 () Bool)

(assert (=> b!1431430 m!1321283))

(assert (=> b!1431430 m!1321259))

(declare-fun m!1321285 () Bool)

(assert (=> b!1431430 m!1321285))

(assert (=> b!1431048 d!153885))

(declare-fun d!153887 () Bool)

(assert (=> d!153887 (= (validKeyInArray!0 (select (arr!47020 a!2831) j!81)) (and (not (= (select (arr!47020 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47020 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1431046 d!153887))

(push 1)

