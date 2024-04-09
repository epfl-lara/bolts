; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123492 () Bool)

(assert start!123492)

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun b!1431085 () Bool)

(declare-fun e!807989 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(declare-datatypes ((array!97433 0))(
  ( (array!97434 (arr!47021 (Array (_ BitVec 32) (_ BitVec 64))) (size!47572 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97433)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1431085 (= e!807989 (not (or (= (select (arr!47021 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47021 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47021 a!2831) index!585) (select (arr!47021 a!2831) j!81)) (not (= (select (store (arr!47021 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge intermediateAfterX!13 intermediateBeforeX!13) (not undefinedAfter!5))))))

(declare-fun e!807987 () Bool)

(assert (=> b!1431085 e!807987))

(declare-fun res!965267 () Bool)

(assert (=> b!1431085 (=> (not res!965267) (not e!807987))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97433 (_ BitVec 32)) Bool)

(assert (=> b!1431085 (= res!965267 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48338 0))(
  ( (Unit!48339) )
))
(declare-fun lt!629994 () Unit!48338)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97433 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48338)

(assert (=> b!1431085 (= lt!629994 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431086 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1431086 (= e!807987 (or (= (select (arr!47021 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47021 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47021 a!2831) index!585) (select (arr!47021 a!2831) j!81)) (not (= (select (store (arr!47021 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (= index!585 intermediateAfterIndex!13) (= intermediateAfterIndex!13 i!982))))))

(declare-fun b!1431087 () Bool)

(declare-fun res!965271 () Bool)

(declare-fun e!807985 () Bool)

(assert (=> b!1431087 (=> (not res!965271) (not e!807985))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431087 (= res!965271 (validKeyInArray!0 (select (arr!47021 a!2831) i!982)))))

(declare-fun b!1431088 () Bool)

(declare-fun res!965264 () Bool)

(assert (=> b!1431088 (=> (not res!965264) (not e!807985))))

(assert (=> b!1431088 (= res!965264 (and (= (size!47572 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47572 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47572 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!965270 () Bool)

(assert (=> start!123492 (=> (not res!965270) (not e!807985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123492 (= res!965270 (validMask!0 mask!2608))))

(assert (=> start!123492 e!807985))

(assert (=> start!123492 true))

(declare-fun array_inv!35966 (array!97433) Bool)

(assert (=> start!123492 (array_inv!35966 a!2831)))

(declare-fun b!1431084 () Bool)

(declare-fun e!807988 () Bool)

(assert (=> b!1431084 (= e!807988 e!807989)))

(declare-fun res!965260 () Bool)

(assert (=> b!1431084 (=> (not res!965260) (not e!807989))))

(declare-datatypes ((SeekEntryResult!11322 0))(
  ( (MissingZero!11322 (index!47679 (_ BitVec 32))) (Found!11322 (index!47680 (_ BitVec 32))) (Intermediate!11322 (undefined!12134 Bool) (index!47681 (_ BitVec 32)) (x!129329 (_ BitVec 32))) (Undefined!11322) (MissingVacant!11322 (index!47682 (_ BitVec 32))) )
))
(declare-fun lt!629995 () SeekEntryResult!11322)

(declare-fun lt!629991 () (_ BitVec 64))

(declare-fun lt!629993 () array!97433)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97433 (_ BitVec 32)) SeekEntryResult!11322)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431084 (= res!965260 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629991 mask!2608) lt!629991 lt!629993 mask!2608) lt!629995))))

(assert (=> b!1431084 (= lt!629995 (Intermediate!11322 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431084 (= lt!629991 (select (store (arr!47021 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431084 (= lt!629993 (array!97434 (store (arr!47021 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47572 a!2831)))))

(declare-fun b!1431089 () Bool)

(declare-fun res!965265 () Bool)

(assert (=> b!1431089 (=> (not res!965265) (not e!807985))))

(declare-datatypes ((List!33711 0))(
  ( (Nil!33708) (Cons!33707 (h!35027 (_ BitVec 64)) (t!48412 List!33711)) )
))
(declare-fun arrayNoDuplicates!0 (array!97433 (_ BitVec 32) List!33711) Bool)

(assert (=> b!1431089 (= res!965265 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33708))))

(declare-fun b!1431090 () Bool)

(declare-fun res!965262 () Bool)

(assert (=> b!1431090 (=> (not res!965262) (not e!807989))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1431090 (= res!965262 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431091 () Bool)

(declare-fun res!965258 () Bool)

(assert (=> b!1431091 (=> (not res!965258) (not e!807985))))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1431091 (= res!965258 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47572 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47572 a!2831))))))

(declare-fun b!1431092 () Bool)

(assert (=> b!1431092 (= e!807985 e!807988)))

(declare-fun res!965268 () Bool)

(assert (=> b!1431092 (=> (not res!965268) (not e!807988))))

(declare-fun lt!629992 () SeekEntryResult!11322)

(assert (=> b!1431092 (= res!965268 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47021 a!2831) j!81) mask!2608) (select (arr!47021 a!2831) j!81) a!2831 mask!2608) lt!629992))))

(assert (=> b!1431092 (= lt!629992 (Intermediate!11322 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431093 () Bool)

(declare-fun res!965263 () Bool)

(assert (=> b!1431093 (=> (not res!965263) (not e!807989))))

(assert (=> b!1431093 (= res!965263 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629991 lt!629993 mask!2608) lt!629995))))

(declare-fun b!1431094 () Bool)

(declare-fun res!965261 () Bool)

(assert (=> b!1431094 (=> (not res!965261) (not e!807985))))

(assert (=> b!1431094 (= res!965261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431095 () Bool)

(declare-fun res!965266 () Bool)

(assert (=> b!1431095 (=> (not res!965266) (not e!807987))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97433 (_ BitVec 32)) SeekEntryResult!11322)

(assert (=> b!1431095 (= res!965266 (= (seekEntryOrOpen!0 (select (arr!47021 a!2831) j!81) a!2831 mask!2608) (Found!11322 j!81)))))

(declare-fun b!1431096 () Bool)

(declare-fun res!965269 () Bool)

(assert (=> b!1431096 (=> (not res!965269) (not e!807989))))

(assert (=> b!1431096 (= res!965269 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47021 a!2831) j!81) a!2831 mask!2608) lt!629992))))

(declare-fun b!1431097 () Bool)

(declare-fun res!965259 () Bool)

(assert (=> b!1431097 (=> (not res!965259) (not e!807985))))

(assert (=> b!1431097 (= res!965259 (validKeyInArray!0 (select (arr!47021 a!2831) j!81)))))

(assert (= (and start!123492 res!965270) b!1431088))

(assert (= (and b!1431088 res!965264) b!1431087))

(assert (= (and b!1431087 res!965271) b!1431097))

(assert (= (and b!1431097 res!965259) b!1431094))

(assert (= (and b!1431094 res!965261) b!1431089))

(assert (= (and b!1431089 res!965265) b!1431091))

(assert (= (and b!1431091 res!965258) b!1431092))

(assert (= (and b!1431092 res!965268) b!1431084))

(assert (= (and b!1431084 res!965260) b!1431096))

(assert (= (and b!1431096 res!965269) b!1431093))

(assert (= (and b!1431093 res!965263) b!1431090))

(assert (= (and b!1431090 res!965262) b!1431085))

(assert (= (and b!1431085 res!965267) b!1431095))

(assert (= (and b!1431095 res!965266) b!1431086))

(declare-fun m!1321031 () Bool)

(assert (=> b!1431085 m!1321031))

(declare-fun m!1321033 () Bool)

(assert (=> b!1431085 m!1321033))

(declare-fun m!1321035 () Bool)

(assert (=> b!1431085 m!1321035))

(declare-fun m!1321037 () Bool)

(assert (=> b!1431085 m!1321037))

(declare-fun m!1321039 () Bool)

(assert (=> b!1431085 m!1321039))

(declare-fun m!1321041 () Bool)

(assert (=> b!1431085 m!1321041))

(declare-fun m!1321043 () Bool)

(assert (=> b!1431084 m!1321043))

(assert (=> b!1431084 m!1321043))

(declare-fun m!1321045 () Bool)

(assert (=> b!1431084 m!1321045))

(assert (=> b!1431084 m!1321031))

(declare-fun m!1321047 () Bool)

(assert (=> b!1431084 m!1321047))

(assert (=> b!1431096 m!1321039))

(assert (=> b!1431096 m!1321039))

(declare-fun m!1321049 () Bool)

(assert (=> b!1431096 m!1321049))

(assert (=> b!1431097 m!1321039))

(assert (=> b!1431097 m!1321039))

(declare-fun m!1321051 () Bool)

(assert (=> b!1431097 m!1321051))

(assert (=> b!1431095 m!1321039))

(assert (=> b!1431095 m!1321039))

(declare-fun m!1321053 () Bool)

(assert (=> b!1431095 m!1321053))

(declare-fun m!1321055 () Bool)

(assert (=> b!1431093 m!1321055))

(declare-fun m!1321057 () Bool)

(assert (=> b!1431089 m!1321057))

(assert (=> b!1431092 m!1321039))

(assert (=> b!1431092 m!1321039))

(declare-fun m!1321059 () Bool)

(assert (=> b!1431092 m!1321059))

(assert (=> b!1431092 m!1321059))

(assert (=> b!1431092 m!1321039))

(declare-fun m!1321061 () Bool)

(assert (=> b!1431092 m!1321061))

(assert (=> b!1431086 m!1321035))

(assert (=> b!1431086 m!1321039))

(assert (=> b!1431086 m!1321031))

(assert (=> b!1431086 m!1321033))

(declare-fun m!1321063 () Bool)

(assert (=> start!123492 m!1321063))

(declare-fun m!1321065 () Bool)

(assert (=> start!123492 m!1321065))

(declare-fun m!1321067 () Bool)

(assert (=> b!1431094 m!1321067))

(declare-fun m!1321069 () Bool)

(assert (=> b!1431087 m!1321069))

(assert (=> b!1431087 m!1321069))

(declare-fun m!1321071 () Bool)

(assert (=> b!1431087 m!1321071))

(check-sat (not b!1431089) (not b!1431094) (not b!1431084) (not b!1431097) (not b!1431092) (not b!1431093) (not start!123492) (not b!1431095) (not b!1431087) (not b!1431085) (not b!1431096))
(check-sat)
(get-model)

(declare-fun d!153801 () Bool)

(assert (=> d!153801 (= (validKeyInArray!0 (select (arr!47021 a!2831) j!81)) (and (not (= (select (arr!47021 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47021 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1431097 d!153801))

(declare-fun d!153803 () Bool)

(declare-fun e!808015 () Bool)

(assert (=> d!153803 e!808015))

(declare-fun c!132418 () Bool)

(declare-fun lt!630016 () SeekEntryResult!11322)

(get-info :version)

(assert (=> d!153803 (= c!132418 (and ((_ is Intermediate!11322) lt!630016) (undefined!12134 lt!630016)))))

(declare-fun e!808019 () SeekEntryResult!11322)

(assert (=> d!153803 (= lt!630016 e!808019)))

(declare-fun c!132417 () Bool)

(assert (=> d!153803 (= c!132417 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!630015 () (_ BitVec 64))

(assert (=> d!153803 (= lt!630015 (select (arr!47021 a!2831) (toIndex!0 (select (arr!47021 a!2831) j!81) mask!2608)))))

(assert (=> d!153803 (validMask!0 mask!2608)))

(assert (=> d!153803 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47021 a!2831) j!81) mask!2608) (select (arr!47021 a!2831) j!81) a!2831 mask!2608) lt!630016)))

(declare-fun b!1431158 () Bool)

(declare-fun e!808018 () SeekEntryResult!11322)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431158 (= e!808018 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47021 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47021 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1431159 () Bool)

(assert (=> b!1431159 (and (bvsge (index!47681 lt!630016) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630016) (size!47572 a!2831)))))

(declare-fun res!965322 () Bool)

(assert (=> b!1431159 (= res!965322 (= (select (arr!47021 a!2831) (index!47681 lt!630016)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808016 () Bool)

(assert (=> b!1431159 (=> res!965322 e!808016)))

(declare-fun b!1431160 () Bool)

(assert (=> b!1431160 (and (bvsge (index!47681 lt!630016) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630016) (size!47572 a!2831)))))

(declare-fun res!965321 () Bool)

(assert (=> b!1431160 (= res!965321 (= (select (arr!47021 a!2831) (index!47681 lt!630016)) (select (arr!47021 a!2831) j!81)))))

(assert (=> b!1431160 (=> res!965321 e!808016)))

(declare-fun e!808017 () Bool)

(assert (=> b!1431160 (= e!808017 e!808016)))

(declare-fun b!1431161 () Bool)

(assert (=> b!1431161 (= e!808019 (Intermediate!11322 true (toIndex!0 (select (arr!47021 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431162 () Bool)

(assert (=> b!1431162 (= e!808015 (bvsge (x!129329 lt!630016) #b01111111111111111111111111111110))))

(declare-fun b!1431163 () Bool)

(assert (=> b!1431163 (= e!808019 e!808018)))

(declare-fun c!132419 () Bool)

(assert (=> b!1431163 (= c!132419 (or (= lt!630015 (select (arr!47021 a!2831) j!81)) (= (bvadd lt!630015 lt!630015) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431164 () Bool)

(assert (=> b!1431164 (= e!808018 (Intermediate!11322 false (toIndex!0 (select (arr!47021 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431165 () Bool)

(assert (=> b!1431165 (= e!808015 e!808017)))

(declare-fun res!965320 () Bool)

(assert (=> b!1431165 (= res!965320 (and ((_ is Intermediate!11322) lt!630016) (not (undefined!12134 lt!630016)) (bvslt (x!129329 lt!630016) #b01111111111111111111111111111110) (bvsge (x!129329 lt!630016) #b00000000000000000000000000000000) (bvsge (x!129329 lt!630016) #b00000000000000000000000000000000)))))

(assert (=> b!1431165 (=> (not res!965320) (not e!808017))))

(declare-fun b!1431166 () Bool)

(assert (=> b!1431166 (and (bvsge (index!47681 lt!630016) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630016) (size!47572 a!2831)))))

(assert (=> b!1431166 (= e!808016 (= (select (arr!47021 a!2831) (index!47681 lt!630016)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153803 c!132417) b!1431161))

(assert (= (and d!153803 (not c!132417)) b!1431163))

(assert (= (and b!1431163 c!132419) b!1431164))

(assert (= (and b!1431163 (not c!132419)) b!1431158))

(assert (= (and d!153803 c!132418) b!1431162))

(assert (= (and d!153803 (not c!132418)) b!1431165))

(assert (= (and b!1431165 res!965320) b!1431160))

(assert (= (and b!1431160 (not res!965321)) b!1431159))

(assert (= (and b!1431159 (not res!965322)) b!1431166))

(declare-fun m!1321115 () Bool)

(assert (=> b!1431159 m!1321115))

(assert (=> b!1431158 m!1321059))

(declare-fun m!1321117 () Bool)

(assert (=> b!1431158 m!1321117))

(assert (=> b!1431158 m!1321117))

(assert (=> b!1431158 m!1321039))

(declare-fun m!1321119 () Bool)

(assert (=> b!1431158 m!1321119))

(assert (=> b!1431166 m!1321115))

(assert (=> b!1431160 m!1321115))

(assert (=> d!153803 m!1321059))

(declare-fun m!1321121 () Bool)

(assert (=> d!153803 m!1321121))

(assert (=> d!153803 m!1321063))

(assert (=> b!1431092 d!153803))

(declare-fun d!153805 () Bool)

(declare-fun lt!630022 () (_ BitVec 32))

(declare-fun lt!630021 () (_ BitVec 32))

(assert (=> d!153805 (= lt!630022 (bvmul (bvxor lt!630021 (bvlshr lt!630021 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153805 (= lt!630021 ((_ extract 31 0) (bvand (bvxor (select (arr!47021 a!2831) j!81) (bvlshr (select (arr!47021 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153805 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965323 (let ((h!35029 ((_ extract 31 0) (bvand (bvxor (select (arr!47021 a!2831) j!81) (bvlshr (select (arr!47021 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129332 (bvmul (bvxor h!35029 (bvlshr h!35029 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129332 (bvlshr x!129332 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965323 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965323 #b00000000000000000000000000000000))))))

(assert (=> d!153805 (= (toIndex!0 (select (arr!47021 a!2831) j!81) mask!2608) (bvand (bvxor lt!630022 (bvlshr lt!630022 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1431092 d!153805))

(declare-fun bm!67455 () Bool)

(declare-fun call!67458 () Bool)

(assert (=> bm!67455 (= call!67458 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1431175 () Bool)

(declare-fun e!808026 () Bool)

(declare-fun e!808028 () Bool)

(assert (=> b!1431175 (= e!808026 e!808028)))

(declare-fun lt!630029 () (_ BitVec 64))

(assert (=> b!1431175 (= lt!630029 (select (arr!47021 a!2831) j!81))))

(declare-fun lt!630030 () Unit!48338)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97433 (_ BitVec 64) (_ BitVec 32)) Unit!48338)

(assert (=> b!1431175 (= lt!630030 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630029 j!81))))

(declare-fun arrayContainsKey!0 (array!97433 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1431175 (arrayContainsKey!0 a!2831 lt!630029 #b00000000000000000000000000000000)))

(declare-fun lt!630031 () Unit!48338)

(assert (=> b!1431175 (= lt!630031 lt!630030)))

(declare-fun res!965329 () Bool)

(assert (=> b!1431175 (= res!965329 (= (seekEntryOrOpen!0 (select (arr!47021 a!2831) j!81) a!2831 mask!2608) (Found!11322 j!81)))))

(assert (=> b!1431175 (=> (not res!965329) (not e!808028))))

(declare-fun b!1431176 () Bool)

(assert (=> b!1431176 (= e!808028 call!67458)))

(declare-fun d!153807 () Bool)

(declare-fun res!965328 () Bool)

(declare-fun e!808027 () Bool)

(assert (=> d!153807 (=> res!965328 e!808027)))

(assert (=> d!153807 (= res!965328 (bvsge j!81 (size!47572 a!2831)))))

(assert (=> d!153807 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!808027)))

(declare-fun b!1431177 () Bool)

(assert (=> b!1431177 (= e!808027 e!808026)))

(declare-fun c!132422 () Bool)

(assert (=> b!1431177 (= c!132422 (validKeyInArray!0 (select (arr!47021 a!2831) j!81)))))

(declare-fun b!1431178 () Bool)

(assert (=> b!1431178 (= e!808026 call!67458)))

(assert (= (and d!153807 (not res!965328)) b!1431177))

(assert (= (and b!1431177 c!132422) b!1431175))

(assert (= (and b!1431177 (not c!132422)) b!1431178))

(assert (= (and b!1431175 res!965329) b!1431176))

(assert (= (or b!1431176 b!1431178) bm!67455))

(declare-fun m!1321123 () Bool)

(assert (=> bm!67455 m!1321123))

(assert (=> b!1431175 m!1321039))

(declare-fun m!1321125 () Bool)

(assert (=> b!1431175 m!1321125))

(declare-fun m!1321127 () Bool)

(assert (=> b!1431175 m!1321127))

(assert (=> b!1431175 m!1321039))

(assert (=> b!1431175 m!1321053))

(assert (=> b!1431177 m!1321039))

(assert (=> b!1431177 m!1321039))

(assert (=> b!1431177 m!1321051))

(assert (=> b!1431085 d!153807))

(declare-fun d!153813 () Bool)

(assert (=> d!153813 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!630034 () Unit!48338)

(declare-fun choose!38 (array!97433 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48338)

(assert (=> d!153813 (= lt!630034 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153813 (validMask!0 mask!2608)))

(assert (=> d!153813 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!630034)))

(declare-fun bs!41687 () Bool)

(assert (= bs!41687 d!153813))

(assert (=> bs!41687 m!1321037))

(declare-fun m!1321129 () Bool)

(assert (=> bs!41687 m!1321129))

(assert (=> bs!41687 m!1321063))

(assert (=> b!1431085 d!153813))

(declare-fun d!153815 () Bool)

(declare-fun e!808037 () Bool)

(assert (=> d!153815 e!808037))

(declare-fun c!132426 () Bool)

(declare-fun lt!630036 () SeekEntryResult!11322)

(assert (=> d!153815 (= c!132426 (and ((_ is Intermediate!11322) lt!630036) (undefined!12134 lt!630036)))))

(declare-fun e!808041 () SeekEntryResult!11322)

(assert (=> d!153815 (= lt!630036 e!808041)))

(declare-fun c!132425 () Bool)

(assert (=> d!153815 (= c!132425 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!630035 () (_ BitVec 64))

(assert (=> d!153815 (= lt!630035 (select (arr!47021 a!2831) index!585))))

(assert (=> d!153815 (validMask!0 mask!2608)))

(assert (=> d!153815 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47021 a!2831) j!81) a!2831 mask!2608) lt!630036)))

(declare-fun e!808040 () SeekEntryResult!11322)

(declare-fun b!1431189 () Bool)

(assert (=> b!1431189 (= e!808040 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) (select (arr!47021 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1431190 () Bool)

(assert (=> b!1431190 (and (bvsge (index!47681 lt!630036) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630036) (size!47572 a!2831)))))

(declare-fun res!965338 () Bool)

(assert (=> b!1431190 (= res!965338 (= (select (arr!47021 a!2831) (index!47681 lt!630036)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808038 () Bool)

(assert (=> b!1431190 (=> res!965338 e!808038)))

(declare-fun b!1431191 () Bool)

(assert (=> b!1431191 (and (bvsge (index!47681 lt!630036) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630036) (size!47572 a!2831)))))

(declare-fun res!965337 () Bool)

(assert (=> b!1431191 (= res!965337 (= (select (arr!47021 a!2831) (index!47681 lt!630036)) (select (arr!47021 a!2831) j!81)))))

(assert (=> b!1431191 (=> res!965337 e!808038)))

(declare-fun e!808039 () Bool)

(assert (=> b!1431191 (= e!808039 e!808038)))

(declare-fun b!1431192 () Bool)

(assert (=> b!1431192 (= e!808041 (Intermediate!11322 true index!585 x!605))))

(declare-fun b!1431193 () Bool)

(assert (=> b!1431193 (= e!808037 (bvsge (x!129329 lt!630036) #b01111111111111111111111111111110))))

(declare-fun b!1431194 () Bool)

(assert (=> b!1431194 (= e!808041 e!808040)))

(declare-fun c!132427 () Bool)

(assert (=> b!1431194 (= c!132427 (or (= lt!630035 (select (arr!47021 a!2831) j!81)) (= (bvadd lt!630035 lt!630035) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431195 () Bool)

(assert (=> b!1431195 (= e!808040 (Intermediate!11322 false index!585 x!605))))

(declare-fun b!1431196 () Bool)

(assert (=> b!1431196 (= e!808037 e!808039)))

(declare-fun res!965336 () Bool)

(assert (=> b!1431196 (= res!965336 (and ((_ is Intermediate!11322) lt!630036) (not (undefined!12134 lt!630036)) (bvslt (x!129329 lt!630036) #b01111111111111111111111111111110) (bvsge (x!129329 lt!630036) #b00000000000000000000000000000000) (bvsge (x!129329 lt!630036) x!605)))))

(assert (=> b!1431196 (=> (not res!965336) (not e!808039))))

(declare-fun b!1431197 () Bool)

(assert (=> b!1431197 (and (bvsge (index!47681 lt!630036) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630036) (size!47572 a!2831)))))

(assert (=> b!1431197 (= e!808038 (= (select (arr!47021 a!2831) (index!47681 lt!630036)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153815 c!132425) b!1431192))

(assert (= (and d!153815 (not c!132425)) b!1431194))

(assert (= (and b!1431194 c!132427) b!1431195))

(assert (= (and b!1431194 (not c!132427)) b!1431189))

(assert (= (and d!153815 c!132426) b!1431193))

(assert (= (and d!153815 (not c!132426)) b!1431196))

(assert (= (and b!1431196 res!965336) b!1431191))

(assert (= (and b!1431191 (not res!965337)) b!1431190))

(assert (= (and b!1431190 (not res!965338)) b!1431197))

(declare-fun m!1321133 () Bool)

(assert (=> b!1431190 m!1321133))

(declare-fun m!1321135 () Bool)

(assert (=> b!1431189 m!1321135))

(assert (=> b!1431189 m!1321135))

(assert (=> b!1431189 m!1321039))

(declare-fun m!1321139 () Bool)

(assert (=> b!1431189 m!1321139))

(assert (=> b!1431197 m!1321133))

(assert (=> b!1431191 m!1321133))

(assert (=> d!153815 m!1321035))

(assert (=> d!153815 m!1321063))

(assert (=> b!1431096 d!153815))

(declare-fun d!153817 () Bool)

(assert (=> d!153817 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123492 d!153817))

(declare-fun d!153825 () Bool)

(assert (=> d!153825 (= (array_inv!35966 a!2831) (bvsge (size!47572 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123492 d!153825))

(declare-fun b!1431293 () Bool)

(declare-fun c!132459 () Bool)

(declare-fun lt!630082 () (_ BitVec 64))

(assert (=> b!1431293 (= c!132459 (= lt!630082 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808101 () SeekEntryResult!11322)

(declare-fun e!808100 () SeekEntryResult!11322)

(assert (=> b!1431293 (= e!808101 e!808100)))

(declare-fun d!153827 () Bool)

(declare-fun lt!630083 () SeekEntryResult!11322)

(assert (=> d!153827 (and (or ((_ is Undefined!11322) lt!630083) (not ((_ is Found!11322) lt!630083)) (and (bvsge (index!47680 lt!630083) #b00000000000000000000000000000000) (bvslt (index!47680 lt!630083) (size!47572 a!2831)))) (or ((_ is Undefined!11322) lt!630083) ((_ is Found!11322) lt!630083) (not ((_ is MissingZero!11322) lt!630083)) (and (bvsge (index!47679 lt!630083) #b00000000000000000000000000000000) (bvslt (index!47679 lt!630083) (size!47572 a!2831)))) (or ((_ is Undefined!11322) lt!630083) ((_ is Found!11322) lt!630083) ((_ is MissingZero!11322) lt!630083) (not ((_ is MissingVacant!11322) lt!630083)) (and (bvsge (index!47682 lt!630083) #b00000000000000000000000000000000) (bvslt (index!47682 lt!630083) (size!47572 a!2831)))) (or ((_ is Undefined!11322) lt!630083) (ite ((_ is Found!11322) lt!630083) (= (select (arr!47021 a!2831) (index!47680 lt!630083)) (select (arr!47021 a!2831) j!81)) (ite ((_ is MissingZero!11322) lt!630083) (= (select (arr!47021 a!2831) (index!47679 lt!630083)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!11322) lt!630083) (= (select (arr!47021 a!2831) (index!47682 lt!630083)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!808102 () SeekEntryResult!11322)

(assert (=> d!153827 (= lt!630083 e!808102)))

(declare-fun c!132460 () Bool)

(declare-fun lt!630084 () SeekEntryResult!11322)

(assert (=> d!153827 (= c!132460 (and ((_ is Intermediate!11322) lt!630084) (undefined!12134 lt!630084)))))

(assert (=> d!153827 (= lt!630084 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47021 a!2831) j!81) mask!2608) (select (arr!47021 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153827 (validMask!0 mask!2608)))

(assert (=> d!153827 (= (seekEntryOrOpen!0 (select (arr!47021 a!2831) j!81) a!2831 mask!2608) lt!630083)))

(declare-fun b!1431294 () Bool)

(assert (=> b!1431294 (= e!808100 (MissingZero!11322 (index!47681 lt!630084)))))

(declare-fun b!1431295 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97433 (_ BitVec 32)) SeekEntryResult!11322)

(assert (=> b!1431295 (= e!808100 (seekKeyOrZeroReturnVacant!0 (x!129329 lt!630084) (index!47681 lt!630084) (index!47681 lt!630084) (select (arr!47021 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1431296 () Bool)

(assert (=> b!1431296 (= e!808102 Undefined!11322)))

(declare-fun b!1431297 () Bool)

(assert (=> b!1431297 (= e!808102 e!808101)))

(assert (=> b!1431297 (= lt!630082 (select (arr!47021 a!2831) (index!47681 lt!630084)))))

(declare-fun c!132461 () Bool)

(assert (=> b!1431297 (= c!132461 (= lt!630082 (select (arr!47021 a!2831) j!81)))))

(declare-fun b!1431298 () Bool)

(assert (=> b!1431298 (= e!808101 (Found!11322 (index!47681 lt!630084)))))

(assert (= (and d!153827 c!132460) b!1431296))

(assert (= (and d!153827 (not c!132460)) b!1431297))

(assert (= (and b!1431297 c!132461) b!1431298))

(assert (= (and b!1431297 (not c!132461)) b!1431293))

(assert (= (and b!1431293 c!132459) b!1431294))

(assert (= (and b!1431293 (not c!132459)) b!1431295))

(assert (=> d!153827 m!1321059))

(assert (=> d!153827 m!1321039))

(assert (=> d!153827 m!1321061))

(assert (=> d!153827 m!1321039))

(assert (=> d!153827 m!1321059))

(assert (=> d!153827 m!1321063))

(declare-fun m!1321175 () Bool)

(assert (=> d!153827 m!1321175))

(declare-fun m!1321177 () Bool)

(assert (=> d!153827 m!1321177))

(declare-fun m!1321181 () Bool)

(assert (=> d!153827 m!1321181))

(assert (=> b!1431295 m!1321039))

(declare-fun m!1321183 () Bool)

(assert (=> b!1431295 m!1321183))

(declare-fun m!1321185 () Bool)

(assert (=> b!1431297 m!1321185))

(assert (=> b!1431095 d!153827))

(declare-fun bm!67467 () Bool)

(declare-fun call!67470 () Bool)

(declare-fun c!132467 () Bool)

(assert (=> bm!67467 (= call!67470 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132467 (Cons!33707 (select (arr!47021 a!2831) #b00000000000000000000000000000000) Nil!33708) Nil!33708)))))

(declare-fun b!1431318 () Bool)

(declare-fun e!808118 () Bool)

(declare-fun e!808119 () Bool)

(assert (=> b!1431318 (= e!808118 e!808119)))

(assert (=> b!1431318 (= c!132467 (validKeyInArray!0 (select (arr!47021 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1431319 () Bool)

(declare-fun e!808116 () Bool)

(declare-fun contains!9875 (List!33711 (_ BitVec 64)) Bool)

(assert (=> b!1431319 (= e!808116 (contains!9875 Nil!33708 (select (arr!47021 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1431320 () Bool)

(assert (=> b!1431320 (= e!808119 call!67470)))

(declare-fun d!153839 () Bool)

(declare-fun res!965385 () Bool)

(declare-fun e!808117 () Bool)

(assert (=> d!153839 (=> res!965385 e!808117)))

(assert (=> d!153839 (= res!965385 (bvsge #b00000000000000000000000000000000 (size!47572 a!2831)))))

(assert (=> d!153839 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33708) e!808117)))

(declare-fun b!1431321 () Bool)

(assert (=> b!1431321 (= e!808119 call!67470)))

(declare-fun b!1431322 () Bool)

(assert (=> b!1431322 (= e!808117 e!808118)))

(declare-fun res!965384 () Bool)

(assert (=> b!1431322 (=> (not res!965384) (not e!808118))))

(assert (=> b!1431322 (= res!965384 (not e!808116))))

(declare-fun res!965383 () Bool)

(assert (=> b!1431322 (=> (not res!965383) (not e!808116))))

(assert (=> b!1431322 (= res!965383 (validKeyInArray!0 (select (arr!47021 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153839 (not res!965385)) b!1431322))

(assert (= (and b!1431322 res!965383) b!1431319))

(assert (= (and b!1431322 res!965384) b!1431318))

(assert (= (and b!1431318 c!132467) b!1431320))

(assert (= (and b!1431318 (not c!132467)) b!1431321))

(assert (= (or b!1431320 b!1431321) bm!67467))

(declare-fun m!1321187 () Bool)

(assert (=> bm!67467 m!1321187))

(declare-fun m!1321191 () Bool)

(assert (=> bm!67467 m!1321191))

(assert (=> b!1431318 m!1321187))

(assert (=> b!1431318 m!1321187))

(declare-fun m!1321195 () Bool)

(assert (=> b!1431318 m!1321195))

(assert (=> b!1431319 m!1321187))

(assert (=> b!1431319 m!1321187))

(declare-fun m!1321201 () Bool)

(assert (=> b!1431319 m!1321201))

(assert (=> b!1431322 m!1321187))

(assert (=> b!1431322 m!1321187))

(assert (=> b!1431322 m!1321195))

(assert (=> b!1431089 d!153839))

(declare-fun d!153849 () Bool)

(declare-fun e!808123 () Bool)

(assert (=> d!153849 e!808123))

(declare-fun c!132470 () Bool)

(declare-fun lt!630097 () SeekEntryResult!11322)

(assert (=> d!153849 (= c!132470 (and ((_ is Intermediate!11322) lt!630097) (undefined!12134 lt!630097)))))

(declare-fun e!808127 () SeekEntryResult!11322)

(assert (=> d!153849 (= lt!630097 e!808127)))

(declare-fun c!132469 () Bool)

(assert (=> d!153849 (= c!132469 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!630096 () (_ BitVec 64))

(assert (=> d!153849 (= lt!630096 (select (arr!47021 lt!629993) (toIndex!0 lt!629991 mask!2608)))))

(assert (=> d!153849 (validMask!0 mask!2608)))

(assert (=> d!153849 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629991 mask!2608) lt!629991 lt!629993 mask!2608) lt!630097)))

(declare-fun b!1431327 () Bool)

(declare-fun e!808126 () SeekEntryResult!11322)

(assert (=> b!1431327 (= e!808126 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!629991 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!629991 lt!629993 mask!2608))))

(declare-fun b!1431328 () Bool)

(assert (=> b!1431328 (and (bvsge (index!47681 lt!630097) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630097) (size!47572 lt!629993)))))

(declare-fun res!965390 () Bool)

(assert (=> b!1431328 (= res!965390 (= (select (arr!47021 lt!629993) (index!47681 lt!630097)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808124 () Bool)

(assert (=> b!1431328 (=> res!965390 e!808124)))

(declare-fun b!1431329 () Bool)

(assert (=> b!1431329 (and (bvsge (index!47681 lt!630097) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630097) (size!47572 lt!629993)))))

(declare-fun res!965389 () Bool)

(assert (=> b!1431329 (= res!965389 (= (select (arr!47021 lt!629993) (index!47681 lt!630097)) lt!629991))))

(assert (=> b!1431329 (=> res!965389 e!808124)))

(declare-fun e!808125 () Bool)

(assert (=> b!1431329 (= e!808125 e!808124)))

(declare-fun b!1431330 () Bool)

(assert (=> b!1431330 (= e!808127 (Intermediate!11322 true (toIndex!0 lt!629991 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431331 () Bool)

(assert (=> b!1431331 (= e!808123 (bvsge (x!129329 lt!630097) #b01111111111111111111111111111110))))

(declare-fun b!1431332 () Bool)

(assert (=> b!1431332 (= e!808127 e!808126)))

(declare-fun c!132471 () Bool)

(assert (=> b!1431332 (= c!132471 (or (= lt!630096 lt!629991) (= (bvadd lt!630096 lt!630096) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431333 () Bool)

(assert (=> b!1431333 (= e!808126 (Intermediate!11322 false (toIndex!0 lt!629991 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431334 () Bool)

(assert (=> b!1431334 (= e!808123 e!808125)))

(declare-fun res!965388 () Bool)

(assert (=> b!1431334 (= res!965388 (and ((_ is Intermediate!11322) lt!630097) (not (undefined!12134 lt!630097)) (bvslt (x!129329 lt!630097) #b01111111111111111111111111111110) (bvsge (x!129329 lt!630097) #b00000000000000000000000000000000) (bvsge (x!129329 lt!630097) #b00000000000000000000000000000000)))))

(assert (=> b!1431334 (=> (not res!965388) (not e!808125))))

(declare-fun b!1431335 () Bool)

(assert (=> b!1431335 (and (bvsge (index!47681 lt!630097) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630097) (size!47572 lt!629993)))))

(assert (=> b!1431335 (= e!808124 (= (select (arr!47021 lt!629993) (index!47681 lt!630097)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153849 c!132469) b!1431330))

(assert (= (and d!153849 (not c!132469)) b!1431332))

(assert (= (and b!1431332 c!132471) b!1431333))

(assert (= (and b!1431332 (not c!132471)) b!1431327))

(assert (= (and d!153849 c!132470) b!1431331))

(assert (= (and d!153849 (not c!132470)) b!1431334))

(assert (= (and b!1431334 res!965388) b!1431329))

(assert (= (and b!1431329 (not res!965389)) b!1431328))

(assert (= (and b!1431328 (not res!965390)) b!1431335))

(declare-fun m!1321209 () Bool)

(assert (=> b!1431328 m!1321209))

(assert (=> b!1431327 m!1321043))

(declare-fun m!1321211 () Bool)

(assert (=> b!1431327 m!1321211))

(assert (=> b!1431327 m!1321211))

(declare-fun m!1321213 () Bool)

(assert (=> b!1431327 m!1321213))

(assert (=> b!1431335 m!1321209))

(assert (=> b!1431329 m!1321209))

(assert (=> d!153849 m!1321043))

(declare-fun m!1321215 () Bool)

(assert (=> d!153849 m!1321215))

(assert (=> d!153849 m!1321063))

(assert (=> b!1431084 d!153849))

(declare-fun d!153853 () Bool)

(declare-fun lt!630099 () (_ BitVec 32))

(declare-fun lt!630098 () (_ BitVec 32))

(assert (=> d!153853 (= lt!630099 (bvmul (bvxor lt!630098 (bvlshr lt!630098 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153853 (= lt!630098 ((_ extract 31 0) (bvand (bvxor lt!629991 (bvlshr lt!629991 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153853 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965323 (let ((h!35029 ((_ extract 31 0) (bvand (bvxor lt!629991 (bvlshr lt!629991 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129332 (bvmul (bvxor h!35029 (bvlshr h!35029 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129332 (bvlshr x!129332 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965323 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965323 #b00000000000000000000000000000000))))))

(assert (=> d!153853 (= (toIndex!0 lt!629991 mask!2608) (bvand (bvxor lt!630099 (bvlshr lt!630099 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1431084 d!153853))

(declare-fun bm!67469 () Bool)

(declare-fun call!67472 () Bool)

(assert (=> bm!67469 (= call!67472 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1431336 () Bool)

(declare-fun e!808128 () Bool)

(declare-fun e!808130 () Bool)

(assert (=> b!1431336 (= e!808128 e!808130)))

(declare-fun lt!630100 () (_ BitVec 64))

(assert (=> b!1431336 (= lt!630100 (select (arr!47021 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!630101 () Unit!48338)

(assert (=> b!1431336 (= lt!630101 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630100 #b00000000000000000000000000000000))))

(assert (=> b!1431336 (arrayContainsKey!0 a!2831 lt!630100 #b00000000000000000000000000000000)))

(declare-fun lt!630102 () Unit!48338)

(assert (=> b!1431336 (= lt!630102 lt!630101)))

(declare-fun res!965392 () Bool)

(assert (=> b!1431336 (= res!965392 (= (seekEntryOrOpen!0 (select (arr!47021 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11322 #b00000000000000000000000000000000)))))

(assert (=> b!1431336 (=> (not res!965392) (not e!808130))))

(declare-fun b!1431337 () Bool)

(assert (=> b!1431337 (= e!808130 call!67472)))

(declare-fun d!153855 () Bool)

(declare-fun res!965391 () Bool)

(declare-fun e!808129 () Bool)

(assert (=> d!153855 (=> res!965391 e!808129)))

(assert (=> d!153855 (= res!965391 (bvsge #b00000000000000000000000000000000 (size!47572 a!2831)))))

(assert (=> d!153855 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!808129)))

(declare-fun b!1431338 () Bool)

(assert (=> b!1431338 (= e!808129 e!808128)))

(declare-fun c!132472 () Bool)

(assert (=> b!1431338 (= c!132472 (validKeyInArray!0 (select (arr!47021 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1431339 () Bool)

(assert (=> b!1431339 (= e!808128 call!67472)))

(assert (= (and d!153855 (not res!965391)) b!1431338))

(assert (= (and b!1431338 c!132472) b!1431336))

(assert (= (and b!1431338 (not c!132472)) b!1431339))

(assert (= (and b!1431336 res!965392) b!1431337))

(assert (= (or b!1431337 b!1431339) bm!67469))

(declare-fun m!1321217 () Bool)

(assert (=> bm!67469 m!1321217))

(assert (=> b!1431336 m!1321187))

(declare-fun m!1321219 () Bool)

(assert (=> b!1431336 m!1321219))

(declare-fun m!1321221 () Bool)

(assert (=> b!1431336 m!1321221))

(assert (=> b!1431336 m!1321187))

(declare-fun m!1321223 () Bool)

(assert (=> b!1431336 m!1321223))

(assert (=> b!1431338 m!1321187))

(assert (=> b!1431338 m!1321187))

(assert (=> b!1431338 m!1321195))

(assert (=> b!1431094 d!153855))

(declare-fun d!153857 () Bool)

(declare-fun e!808131 () Bool)

(assert (=> d!153857 e!808131))

(declare-fun c!132474 () Bool)

(declare-fun lt!630104 () SeekEntryResult!11322)

(assert (=> d!153857 (= c!132474 (and ((_ is Intermediate!11322) lt!630104) (undefined!12134 lt!630104)))))

(declare-fun e!808135 () SeekEntryResult!11322)

(assert (=> d!153857 (= lt!630104 e!808135)))

(declare-fun c!132473 () Bool)

(assert (=> d!153857 (= c!132473 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!630103 () (_ BitVec 64))

(assert (=> d!153857 (= lt!630103 (select (arr!47021 lt!629993) index!585))))

(assert (=> d!153857 (validMask!0 mask!2608)))

(assert (=> d!153857 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629991 lt!629993 mask!2608) lt!630104)))

(declare-fun e!808134 () SeekEntryResult!11322)

(declare-fun b!1431340 () Bool)

(assert (=> b!1431340 (= e!808134 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!629991 lt!629993 mask!2608))))

(declare-fun b!1431341 () Bool)

(assert (=> b!1431341 (and (bvsge (index!47681 lt!630104) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630104) (size!47572 lt!629993)))))

(declare-fun res!965395 () Bool)

(assert (=> b!1431341 (= res!965395 (= (select (arr!47021 lt!629993) (index!47681 lt!630104)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808132 () Bool)

(assert (=> b!1431341 (=> res!965395 e!808132)))

(declare-fun b!1431342 () Bool)

(assert (=> b!1431342 (and (bvsge (index!47681 lt!630104) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630104) (size!47572 lt!629993)))))

(declare-fun res!965394 () Bool)

(assert (=> b!1431342 (= res!965394 (= (select (arr!47021 lt!629993) (index!47681 lt!630104)) lt!629991))))

(assert (=> b!1431342 (=> res!965394 e!808132)))

(declare-fun e!808133 () Bool)

(assert (=> b!1431342 (= e!808133 e!808132)))

(declare-fun b!1431343 () Bool)

(assert (=> b!1431343 (= e!808135 (Intermediate!11322 true index!585 x!605))))

(declare-fun b!1431344 () Bool)

(assert (=> b!1431344 (= e!808131 (bvsge (x!129329 lt!630104) #b01111111111111111111111111111110))))

(declare-fun b!1431345 () Bool)

(assert (=> b!1431345 (= e!808135 e!808134)))

(declare-fun c!132475 () Bool)

(assert (=> b!1431345 (= c!132475 (or (= lt!630103 lt!629991) (= (bvadd lt!630103 lt!630103) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431346 () Bool)

(assert (=> b!1431346 (= e!808134 (Intermediate!11322 false index!585 x!605))))

(declare-fun b!1431347 () Bool)

(assert (=> b!1431347 (= e!808131 e!808133)))

(declare-fun res!965393 () Bool)

(assert (=> b!1431347 (= res!965393 (and ((_ is Intermediate!11322) lt!630104) (not (undefined!12134 lt!630104)) (bvslt (x!129329 lt!630104) #b01111111111111111111111111111110) (bvsge (x!129329 lt!630104) #b00000000000000000000000000000000) (bvsge (x!129329 lt!630104) x!605)))))

(assert (=> b!1431347 (=> (not res!965393) (not e!808133))))

(declare-fun b!1431348 () Bool)

(assert (=> b!1431348 (and (bvsge (index!47681 lt!630104) #b00000000000000000000000000000000) (bvslt (index!47681 lt!630104) (size!47572 lt!629993)))))

(assert (=> b!1431348 (= e!808132 (= (select (arr!47021 lt!629993) (index!47681 lt!630104)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!153857 c!132473) b!1431343))

(assert (= (and d!153857 (not c!132473)) b!1431345))

(assert (= (and b!1431345 c!132475) b!1431346))

(assert (= (and b!1431345 (not c!132475)) b!1431340))

(assert (= (and d!153857 c!132474) b!1431344))

(assert (= (and d!153857 (not c!132474)) b!1431347))

(assert (= (and b!1431347 res!965393) b!1431342))

(assert (= (and b!1431342 (not res!965394)) b!1431341))

(assert (= (and b!1431341 (not res!965395)) b!1431348))

(declare-fun m!1321225 () Bool)

(assert (=> b!1431341 m!1321225))

(assert (=> b!1431340 m!1321135))

(assert (=> b!1431340 m!1321135))

(declare-fun m!1321227 () Bool)

(assert (=> b!1431340 m!1321227))

(assert (=> b!1431348 m!1321225))

(assert (=> b!1431342 m!1321225))

(declare-fun m!1321229 () Bool)

(assert (=> d!153857 m!1321229))

(assert (=> d!153857 m!1321063))

(assert (=> b!1431093 d!153857))

(declare-fun d!153859 () Bool)

(assert (=> d!153859 (= (validKeyInArray!0 (select (arr!47021 a!2831) i!982)) (and (not (= (select (arr!47021 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47021 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1431087 d!153859))

(check-sat (not d!153849) (not d!153827) (not b!1431340) (not b!1431327) (not d!153815) (not bm!67455) (not d!153857) (not b!1431322) (not b!1431338) (not b!1431177) (not b!1431189) (not b!1431295) (not d!153803) (not d!153813) (not b!1431319) (not bm!67469) (not b!1431175) (not b!1431318) (not b!1431158) (not bm!67467) (not b!1431336))
(check-sat)
