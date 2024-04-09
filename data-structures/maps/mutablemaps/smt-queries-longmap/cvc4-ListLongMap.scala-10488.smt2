; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123494 () Bool)

(assert start!123494)

(declare-fun b!1431126 () Bool)

(declare-fun res!965302 () Bool)

(declare-fun e!808003 () Bool)

(assert (=> b!1431126 (=> (not res!965302) (not e!808003))))

(declare-datatypes ((array!97435 0))(
  ( (array!97436 (arr!47022 (Array (_ BitVec 32) (_ BitVec 64))) (size!47573 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97435)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1431126 (= res!965302 (validKeyInArray!0 (select (arr!47022 a!2831) i!982)))))

(declare-fun b!1431127 () Bool)

(declare-fun res!965300 () Bool)

(assert (=> b!1431127 (=> (not res!965300) (not e!808003))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97435 (_ BitVec 32)) Bool)

(assert (=> b!1431127 (= res!965300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1431128 () Bool)

(declare-fun res!965304 () Bool)

(assert (=> b!1431128 (=> (not res!965304) (not e!808003))))

(declare-datatypes ((List!33712 0))(
  ( (Nil!33709) (Cons!33708 (h!35028 (_ BitVec 64)) (t!48413 List!33712)) )
))
(declare-fun arrayNoDuplicates!0 (array!97435 (_ BitVec 32) List!33712) Bool)

(assert (=> b!1431128 (= res!965304 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33709))))

(declare-fun b!1431129 () Bool)

(declare-fun res!965313 () Bool)

(declare-fun e!808002 () Bool)

(assert (=> b!1431129 (=> (not res!965313) (not e!808002))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1431129 (= res!965313 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1431130 () Bool)

(declare-fun res!965306 () Bool)

(assert (=> b!1431130 (=> (not res!965306) (not e!808003))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1431130 (= res!965306 (and (= (size!47573 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47573 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47573 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1431131 () Bool)

(declare-fun res!965310 () Bool)

(declare-fun e!808004 () Bool)

(assert (=> b!1431131 (=> (not res!965310) (not e!808004))))

(declare-datatypes ((SeekEntryResult!11323 0))(
  ( (MissingZero!11323 (index!47683 (_ BitVec 32))) (Found!11323 (index!47684 (_ BitVec 32))) (Intermediate!11323 (undefined!12135 Bool) (index!47685 (_ BitVec 32)) (x!129330 (_ BitVec 32))) (Undefined!11323) (MissingVacant!11323 (index!47686 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97435 (_ BitVec 32)) SeekEntryResult!11323)

(assert (=> b!1431131 (= res!965310 (= (seekEntryOrOpen!0 (select (arr!47022 a!2831) j!81) a!2831 mask!2608) (Found!11323 j!81)))))

(declare-fun res!965303 () Bool)

(assert (=> start!123494 (=> (not res!965303) (not e!808003))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123494 (= res!965303 (validMask!0 mask!2608))))

(assert (=> start!123494 e!808003))

(assert (=> start!123494 true))

(declare-fun array_inv!35967 (array!97435) Bool)

(assert (=> start!123494 (array_inv!35967 a!2831)))

(declare-fun b!1431132 () Bool)

(declare-fun e!808001 () Bool)

(assert (=> b!1431132 (= e!808003 e!808001)))

(declare-fun res!965308 () Bool)

(assert (=> b!1431132 (=> (not res!965308) (not e!808001))))

(declare-fun lt!630007 () SeekEntryResult!11323)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97435 (_ BitVec 32)) SeekEntryResult!11323)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431132 (= res!965308 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47022 a!2831) j!81) mask!2608) (select (arr!47022 a!2831) j!81) a!2831 mask!2608) lt!630007))))

(assert (=> b!1431132 (= lt!630007 (Intermediate!11323 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1431133 () Bool)

(declare-fun res!965307 () Bool)

(assert (=> b!1431133 (=> (not res!965307) (not e!808003))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1431133 (= res!965307 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47573 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47573 a!2831))))))

(declare-fun b!1431134 () Bool)

(assert (=> b!1431134 (= e!808004 (or (= (select (arr!47022 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47022 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47022 a!2831) index!585) (select (arr!47022 a!2831) j!81)) (not (= (select (store (arr!47022 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (and (= index!585 intermediateAfterIndex!13) (= intermediateAfterIndex!13 i!982))))))

(declare-fun b!1431135 () Bool)

(assert (=> b!1431135 (= e!808002 (not (or (= (select (arr!47022 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47022 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47022 a!2831) index!585) (select (arr!47022 a!2831) j!81)) (not (= (select (store (arr!47022 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge intermediateAfterX!13 intermediateBeforeX!13) (not undefinedAfter!5))))))

(assert (=> b!1431135 e!808004))

(declare-fun res!965305 () Bool)

(assert (=> b!1431135 (=> (not res!965305) (not e!808004))))

(assert (=> b!1431135 (= res!965305 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48340 0))(
  ( (Unit!48341) )
))
(declare-fun lt!630006 () Unit!48340)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97435 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48340)

(assert (=> b!1431135 (= lt!630006 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1431136 () Bool)

(declare-fun res!965311 () Bool)

(assert (=> b!1431136 (=> (not res!965311) (not e!808002))))

(declare-fun lt!630010 () array!97435)

(declare-fun lt!630008 () SeekEntryResult!11323)

(declare-fun lt!630009 () (_ BitVec 64))

(assert (=> b!1431136 (= res!965311 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630009 lt!630010 mask!2608) lt!630008))))

(declare-fun b!1431137 () Bool)

(declare-fun res!965301 () Bool)

(assert (=> b!1431137 (=> (not res!965301) (not e!808003))))

(assert (=> b!1431137 (= res!965301 (validKeyInArray!0 (select (arr!47022 a!2831) j!81)))))

(declare-fun b!1431138 () Bool)

(assert (=> b!1431138 (= e!808001 e!808002)))

(declare-fun res!965312 () Bool)

(assert (=> b!1431138 (=> (not res!965312) (not e!808002))))

(assert (=> b!1431138 (= res!965312 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630009 mask!2608) lt!630009 lt!630010 mask!2608) lt!630008))))

(assert (=> b!1431138 (= lt!630008 (Intermediate!11323 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1431138 (= lt!630009 (select (store (arr!47022 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1431138 (= lt!630010 (array!97436 (store (arr!47022 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47573 a!2831)))))

(declare-fun b!1431139 () Bool)

(declare-fun res!965309 () Bool)

(assert (=> b!1431139 (=> (not res!965309) (not e!808002))))

(assert (=> b!1431139 (= res!965309 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47022 a!2831) j!81) a!2831 mask!2608) lt!630007))))

(assert (= (and start!123494 res!965303) b!1431130))

(assert (= (and b!1431130 res!965306) b!1431126))

(assert (= (and b!1431126 res!965302) b!1431137))

(assert (= (and b!1431137 res!965301) b!1431127))

(assert (= (and b!1431127 res!965300) b!1431128))

(assert (= (and b!1431128 res!965304) b!1431133))

(assert (= (and b!1431133 res!965307) b!1431132))

(assert (= (and b!1431132 res!965308) b!1431138))

(assert (= (and b!1431138 res!965312) b!1431139))

(assert (= (and b!1431139 res!965309) b!1431136))

(assert (= (and b!1431136 res!965311) b!1431129))

(assert (= (and b!1431129 res!965313) b!1431135))

(assert (= (and b!1431135 res!965305) b!1431131))

(assert (= (and b!1431131 res!965310) b!1431134))

(declare-fun m!1321073 () Bool)

(assert (=> b!1431138 m!1321073))

(assert (=> b!1431138 m!1321073))

(declare-fun m!1321075 () Bool)

(assert (=> b!1431138 m!1321075))

(declare-fun m!1321077 () Bool)

(assert (=> b!1431138 m!1321077))

(declare-fun m!1321079 () Bool)

(assert (=> b!1431138 m!1321079))

(declare-fun m!1321081 () Bool)

(assert (=> start!123494 m!1321081))

(declare-fun m!1321083 () Bool)

(assert (=> start!123494 m!1321083))

(declare-fun m!1321085 () Bool)

(assert (=> b!1431136 m!1321085))

(declare-fun m!1321087 () Bool)

(assert (=> b!1431126 m!1321087))

(assert (=> b!1431126 m!1321087))

(declare-fun m!1321089 () Bool)

(assert (=> b!1431126 m!1321089))

(declare-fun m!1321091 () Bool)

(assert (=> b!1431139 m!1321091))

(assert (=> b!1431139 m!1321091))

(declare-fun m!1321093 () Bool)

(assert (=> b!1431139 m!1321093))

(assert (=> b!1431132 m!1321091))

(assert (=> b!1431132 m!1321091))

(declare-fun m!1321095 () Bool)

(assert (=> b!1431132 m!1321095))

(assert (=> b!1431132 m!1321095))

(assert (=> b!1431132 m!1321091))

(declare-fun m!1321097 () Bool)

(assert (=> b!1431132 m!1321097))

(declare-fun m!1321099 () Bool)

(assert (=> b!1431127 m!1321099))

(assert (=> b!1431135 m!1321077))

(declare-fun m!1321101 () Bool)

(assert (=> b!1431135 m!1321101))

(declare-fun m!1321103 () Bool)

(assert (=> b!1431135 m!1321103))

(declare-fun m!1321105 () Bool)

(assert (=> b!1431135 m!1321105))

(assert (=> b!1431135 m!1321091))

(declare-fun m!1321107 () Bool)

(assert (=> b!1431135 m!1321107))

(assert (=> b!1431137 m!1321091))

(assert (=> b!1431137 m!1321091))

(declare-fun m!1321109 () Bool)

(assert (=> b!1431137 m!1321109))

(assert (=> b!1431131 m!1321091))

(assert (=> b!1431131 m!1321091))

(declare-fun m!1321111 () Bool)

(assert (=> b!1431131 m!1321111))

(declare-fun m!1321113 () Bool)

(assert (=> b!1431128 m!1321113))

(assert (=> b!1431134 m!1321103))

(assert (=> b!1431134 m!1321091))

(assert (=> b!1431134 m!1321077))

(assert (=> b!1431134 m!1321101))

(push 1)

(assert (not b!1431127))

(assert (not b!1431128))

(assert (not b!1431132))

(assert (not b!1431135))

(assert (not b!1431126))

(assert (not start!123494))

(assert (not b!1431136))

(assert (not b!1431131))

(assert (not b!1431139))

(assert (not b!1431138))

(assert (not b!1431137))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!67458 () Bool)

(declare-fun call!67461 () Bool)

(declare-fun c!132428 () Bool)

(assert (=> bm!67458 (= call!67461 (arrayNoDuplicates!0 a!2831 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132428 (Cons!33708 (select (arr!47022 a!2831) #b00000000000000000000000000000000) Nil!33709) Nil!33709)))))

(declare-fun b!1431198 () Bool)

(declare-fun e!808045 () Bool)

(declare-fun e!808044 () Bool)

(assert (=> b!1431198 (= e!808045 e!808044)))

(assert (=> b!1431198 (= c!132428 (validKeyInArray!0 (select (arr!47022 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1431199 () Bool)

(assert (=> b!1431199 (= e!808044 call!67461)))

(declare-fun d!153811 () Bool)

(declare-fun res!965341 () Bool)

(declare-fun e!808042 () Bool)

(assert (=> d!153811 (=> res!965341 e!808042)))

(assert (=> d!153811 (= res!965341 (bvsge #b00000000000000000000000000000000 (size!47573 a!2831)))))

(assert (=> d!153811 (= (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33709) e!808042)))

(declare-fun b!1431200 () Bool)

(assert (=> b!1431200 (= e!808042 e!808045)))

(declare-fun res!965340 () Bool)

(assert (=> b!1431200 (=> (not res!965340) (not e!808045))))

(declare-fun e!808043 () Bool)

(assert (=> b!1431200 (= res!965340 (not e!808043))))

(declare-fun res!965339 () Bool)

(assert (=> b!1431200 (=> (not res!965339) (not e!808043))))

(assert (=> b!1431200 (= res!965339 (validKeyInArray!0 (select (arr!47022 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1431201 () Bool)

(declare-fun contains!9874 (List!33712 (_ BitVec 64)) Bool)

(assert (=> b!1431201 (= e!808043 (contains!9874 Nil!33709 (select (arr!47022 a!2831) #b00000000000000000000000000000000)))))

(declare-fun b!1431202 () Bool)

(assert (=> b!1431202 (= e!808044 call!67461)))

(assert (= (and d!153811 (not res!965341)) b!1431200))

(assert (= (and b!1431200 res!965339) b!1431201))

(assert (= (and b!1431200 res!965340) b!1431198))

(assert (= (and b!1431198 c!132428) b!1431202))

(assert (= (and b!1431198 (not c!132428)) b!1431199))

(assert (= (or b!1431202 b!1431199) bm!67458))

(declare-fun m!1321131 () Bool)

(assert (=> bm!67458 m!1321131))

(declare-fun m!1321137 () Bool)

(assert (=> bm!67458 m!1321137))

(assert (=> b!1431198 m!1321131))

(assert (=> b!1431198 m!1321131))

(declare-fun m!1321141 () Bool)

(assert (=> b!1431198 m!1321141))

(assert (=> b!1431200 m!1321131))

(assert (=> b!1431200 m!1321131))

(assert (=> b!1431200 m!1321141))

(assert (=> b!1431201 m!1321131))

(assert (=> b!1431201 m!1321131))

(declare-fun m!1321143 () Bool)

(assert (=> b!1431201 m!1321143))

(assert (=> b!1431128 d!153811))

(declare-fun d!153819 () Bool)

(declare-fun res!965357 () Bool)

(declare-fun e!808067 () Bool)

(assert (=> d!153819 (=> res!965357 e!808067)))

(assert (=> d!153819 (= res!965357 (bvsge #b00000000000000000000000000000000 (size!47573 a!2831)))))

(assert (=> d!153819 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608) e!808067)))

(declare-fun bm!67461 () Bool)

(declare-fun call!67464 () Bool)

(assert (=> bm!67461 (= call!67464 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1431238 () Bool)

(declare-fun e!808069 () Bool)

(assert (=> b!1431238 (= e!808069 call!67464)))

(declare-fun b!1431239 () Bool)

(declare-fun e!808068 () Bool)

(assert (=> b!1431239 (= e!808069 e!808068)))

(declare-fun lt!630051 () (_ BitVec 64))

(assert (=> b!1431239 (= lt!630051 (select (arr!47022 a!2831) #b00000000000000000000000000000000))))

(declare-fun lt!630049 () Unit!48340)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97435 (_ BitVec 64) (_ BitVec 32)) Unit!48340)

(assert (=> b!1431239 (= lt!630049 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630051 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97435 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1431239 (arrayContainsKey!0 a!2831 lt!630051 #b00000000000000000000000000000000)))

(declare-fun lt!630050 () Unit!48340)

(assert (=> b!1431239 (= lt!630050 lt!630049)))

(declare-fun res!965356 () Bool)

(assert (=> b!1431239 (= res!965356 (= (seekEntryOrOpen!0 (select (arr!47022 a!2831) #b00000000000000000000000000000000) a!2831 mask!2608) (Found!11323 #b00000000000000000000000000000000)))))

(assert (=> b!1431239 (=> (not res!965356) (not e!808068))))

(declare-fun b!1431240 () Bool)

(assert (=> b!1431240 (= e!808068 call!67464)))

(declare-fun b!1431241 () Bool)

(assert (=> b!1431241 (= e!808067 e!808069)))

(declare-fun c!132440 () Bool)

(assert (=> b!1431241 (= c!132440 (validKeyInArray!0 (select (arr!47022 a!2831) #b00000000000000000000000000000000)))))

(assert (= (and d!153819 (not res!965357)) b!1431241))

(assert (= (and b!1431241 c!132440) b!1431239))

(assert (= (and b!1431241 (not c!132440)) b!1431238))

(assert (= (and b!1431239 res!965356) b!1431240))

(assert (= (or b!1431240 b!1431238) bm!67461))

(declare-fun m!1321153 () Bool)

(assert (=> bm!67461 m!1321153))

(assert (=> b!1431239 m!1321131))

(declare-fun m!1321155 () Bool)

(assert (=> b!1431239 m!1321155))

(declare-fun m!1321157 () Bool)

(assert (=> b!1431239 m!1321157))

(assert (=> b!1431239 m!1321131))

(declare-fun m!1321159 () Bool)

(assert (=> b!1431239 m!1321159))

(assert (=> b!1431241 m!1321131))

(assert (=> b!1431241 m!1321131))

(assert (=> b!1431241 m!1321141))

(assert (=> b!1431127 d!153819))

(declare-fun b!1431284 () Bool)

(declare-fun e!808099 () Bool)

(declare-fun lt!630080 () SeekEntryResult!11323)

(assert (=> b!1431284 (= e!808099 (bvsge (x!129330 lt!630080) #b01111111111111111111111111111110))))

(declare-fun b!1431285 () Bool)

(assert (=> b!1431285 (and (bvsge (index!47685 lt!630080) #b00000000000000000000000000000000) (bvslt (index!47685 lt!630080) (size!47573 lt!630010)))))

(declare-fun res!965372 () Bool)

(assert (=> b!1431285 (= res!965372 (= (select (arr!47022 lt!630010) (index!47685 lt!630080)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808098 () Bool)

(assert (=> b!1431285 (=> res!965372 e!808098)))

(declare-fun d!153823 () Bool)

(assert (=> d!153823 e!808099))

(declare-fun c!132458 () Bool)

(assert (=> d!153823 (= c!132458 (and (is-Intermediate!11323 lt!630080) (undefined!12135 lt!630080)))))

(declare-fun e!808095 () SeekEntryResult!11323)

(assert (=> d!153823 (= lt!630080 e!808095)))

(declare-fun c!132457 () Bool)

(assert (=> d!153823 (= c!132457 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!630081 () (_ BitVec 64))

(assert (=> d!153823 (= lt!630081 (select (arr!47022 lt!630010) (toIndex!0 lt!630009 mask!2608)))))

(assert (=> d!153823 (validMask!0 mask!2608)))

(assert (=> d!153823 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630009 mask!2608) lt!630009 lt!630010 mask!2608) lt!630080)))

(declare-fun b!1431286 () Bool)

(declare-fun e!808096 () SeekEntryResult!11323)

(assert (=> b!1431286 (= e!808095 e!808096)))

(declare-fun c!132456 () Bool)

(assert (=> b!1431286 (= c!132456 (or (= lt!630081 lt!630009) (= (bvadd lt!630081 lt!630081) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431287 () Bool)

(declare-fun e!808097 () Bool)

(assert (=> b!1431287 (= e!808099 e!808097)))

(declare-fun res!965370 () Bool)

(assert (=> b!1431287 (= res!965370 (and (is-Intermediate!11323 lt!630080) (not (undefined!12135 lt!630080)) (bvslt (x!129330 lt!630080) #b01111111111111111111111111111110) (bvsge (x!129330 lt!630080) #b00000000000000000000000000000000) (bvsge (x!129330 lt!630080) #b00000000000000000000000000000000)))))

(assert (=> b!1431287 (=> (not res!965370) (not e!808097))))

(declare-fun b!1431288 () Bool)

(assert (=> b!1431288 (= e!808095 (Intermediate!11323 true (toIndex!0 lt!630009 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431289 () Bool)

(assert (=> b!1431289 (and (bvsge (index!47685 lt!630080) #b00000000000000000000000000000000) (bvslt (index!47685 lt!630080) (size!47573 lt!630010)))))

(declare-fun res!965371 () Bool)

(assert (=> b!1431289 (= res!965371 (= (select (arr!47022 lt!630010) (index!47685 lt!630080)) lt!630009))))

(assert (=> b!1431289 (=> res!965371 e!808098)))

(assert (=> b!1431289 (= e!808097 e!808098)))

(declare-fun b!1431290 () Bool)

(assert (=> b!1431290 (and (bvsge (index!47685 lt!630080) #b00000000000000000000000000000000) (bvslt (index!47685 lt!630080) (size!47573 lt!630010)))))

(assert (=> b!1431290 (= e!808098 (= (select (arr!47022 lt!630010) (index!47685 lt!630080)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1431291 () Bool)

(assert (=> b!1431291 (= e!808096 (Intermediate!11323 false (toIndex!0 lt!630009 mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431292 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1431292 (= e!808096 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!630009 mask!2608) #b00000000000000000000000000000000 mask!2608) lt!630009 lt!630010 mask!2608))))

(assert (= (and d!153823 c!132457) b!1431288))

(assert (= (and d!153823 (not c!132457)) b!1431286))

(assert (= (and b!1431286 c!132456) b!1431291))

(assert (= (and b!1431286 (not c!132456)) b!1431292))

(assert (= (and d!153823 c!132458) b!1431284))

(assert (= (and d!153823 (not c!132458)) b!1431287))

(assert (= (and b!1431287 res!965370) b!1431289))

(assert (= (and b!1431289 (not res!965371)) b!1431285))

(assert (= (and b!1431285 (not res!965372)) b!1431290))

(declare-fun m!1321169 () Bool)

(assert (=> b!1431290 m!1321169))

(assert (=> b!1431289 m!1321169))

(assert (=> d!153823 m!1321073))

(declare-fun m!1321171 () Bool)

(assert (=> d!153823 m!1321171))

(assert (=> d!153823 m!1321081))

(assert (=> b!1431292 m!1321073))

(declare-fun m!1321173 () Bool)

(assert (=> b!1431292 m!1321173))

(assert (=> b!1431292 m!1321173))

(declare-fun m!1321179 () Bool)

(assert (=> b!1431292 m!1321179))

(assert (=> b!1431285 m!1321169))

(assert (=> b!1431138 d!153823))

(declare-fun d!153837 () Bool)

(declare-fun lt!630090 () (_ BitVec 32))

(declare-fun lt!630089 () (_ BitVec 32))

(assert (=> d!153837 (= lt!630090 (bvmul (bvxor lt!630089 (bvlshr lt!630089 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153837 (= lt!630089 ((_ extract 31 0) (bvand (bvxor lt!630009 (bvlshr lt!630009 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153837 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965373 (let ((h!35031 ((_ extract 31 0) (bvand (bvxor lt!630009 (bvlshr lt!630009 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129336 (bvmul (bvxor h!35031 (bvlshr h!35031 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129336 (bvlshr x!129336 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965373 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965373 #b00000000000000000000000000000000))))))

(assert (=> d!153837 (= (toIndex!0 lt!630009 mask!2608) (bvand (bvxor lt!630090 (bvlshr lt!630090 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1431138 d!153837))

(declare-fun d!153841 () Bool)

(assert (=> d!153841 (= (validKeyInArray!0 (select (arr!47022 a!2831) j!81)) (and (not (= (select (arr!47022 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47022 a!2831) j!81) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1431137 d!153841))

(declare-fun d!153843 () Bool)

(assert (=> d!153843 (= (validKeyInArray!0 (select (arr!47022 a!2831) i!982)) (and (not (= (select (arr!47022 a!2831) i!982) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47022 a!2831) i!982) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1431126 d!153843))

(declare-fun b!1431309 () Bool)

(declare-fun e!808115 () Bool)

(declare-fun lt!630091 () SeekEntryResult!11323)

(assert (=> b!1431309 (= e!808115 (bvsge (x!129330 lt!630091) #b01111111111111111111111111111110))))

(declare-fun b!1431310 () Bool)

(assert (=> b!1431310 (and (bvsge (index!47685 lt!630091) #b00000000000000000000000000000000) (bvslt (index!47685 lt!630091) (size!47573 lt!630010)))))

(declare-fun res!965382 () Bool)

(assert (=> b!1431310 (= res!965382 (= (select (arr!47022 lt!630010) (index!47685 lt!630091)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808114 () Bool)

(assert (=> b!1431310 (=> res!965382 e!808114)))

(declare-fun d!153845 () Bool)

(assert (=> d!153845 e!808115))

(declare-fun c!132466 () Bool)

(assert (=> d!153845 (= c!132466 (and (is-Intermediate!11323 lt!630091) (undefined!12135 lt!630091)))))

(declare-fun e!808111 () SeekEntryResult!11323)

(assert (=> d!153845 (= lt!630091 e!808111)))

(declare-fun c!132465 () Bool)

(assert (=> d!153845 (= c!132465 (bvsge x!605 #b01111111111111111111111111111110))))

(declare-fun lt!630092 () (_ BitVec 64))

(assert (=> d!153845 (= lt!630092 (select (arr!47022 lt!630010) index!585))))

(assert (=> d!153845 (validMask!0 mask!2608)))

(assert (=> d!153845 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630009 lt!630010 mask!2608) lt!630091)))

(declare-fun b!1431311 () Bool)

(declare-fun e!808112 () SeekEntryResult!11323)

(assert (=> b!1431311 (= e!808111 e!808112)))

(declare-fun c!132464 () Bool)

(assert (=> b!1431311 (= c!132464 (or (= lt!630092 lt!630009) (= (bvadd lt!630092 lt!630092) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431312 () Bool)

(declare-fun e!808113 () Bool)

(assert (=> b!1431312 (= e!808115 e!808113)))

(declare-fun res!965380 () Bool)

(assert (=> b!1431312 (= res!965380 (and (is-Intermediate!11323 lt!630091) (not (undefined!12135 lt!630091)) (bvslt (x!129330 lt!630091) #b01111111111111111111111111111110) (bvsge (x!129330 lt!630091) #b00000000000000000000000000000000) (bvsge (x!129330 lt!630091) x!605)))))

(assert (=> b!1431312 (=> (not res!965380) (not e!808113))))

(declare-fun b!1431313 () Bool)

(assert (=> b!1431313 (= e!808111 (Intermediate!11323 true index!585 x!605))))

(declare-fun b!1431314 () Bool)

(assert (=> b!1431314 (and (bvsge (index!47685 lt!630091) #b00000000000000000000000000000000) (bvslt (index!47685 lt!630091) (size!47573 lt!630010)))))

(declare-fun res!965381 () Bool)

(assert (=> b!1431314 (= res!965381 (= (select (arr!47022 lt!630010) (index!47685 lt!630091)) lt!630009))))

(assert (=> b!1431314 (=> res!965381 e!808114)))

(assert (=> b!1431314 (= e!808113 e!808114)))

(declare-fun b!1431315 () Bool)

(assert (=> b!1431315 (and (bvsge (index!47685 lt!630091) #b00000000000000000000000000000000) (bvslt (index!47685 lt!630091) (size!47573 lt!630010)))))

(assert (=> b!1431315 (= e!808114 (= (select (arr!47022 lt!630010) (index!47685 lt!630091)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1431316 () Bool)

(assert (=> b!1431316 (= e!808112 (Intermediate!11323 false index!585 x!605))))

(declare-fun b!1431317 () Bool)

(assert (=> b!1431317 (= e!808112 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!605 #b00000000000000000000000000000001) (nextIndex!0 index!585 x!605 mask!2608) lt!630009 lt!630010 mask!2608))))

(assert (= (and d!153845 c!132465) b!1431313))

(assert (= (and d!153845 (not c!132465)) b!1431311))

(assert (= (and b!1431311 c!132464) b!1431316))

(assert (= (and b!1431311 (not c!132464)) b!1431317))

(assert (= (and d!153845 c!132466) b!1431309))

(assert (= (and d!153845 (not c!132466)) b!1431312))

(assert (= (and b!1431312 res!965380) b!1431314))

(assert (= (and b!1431314 (not res!965381)) b!1431310))

(assert (= (and b!1431310 (not res!965382)) b!1431315))

(declare-fun m!1321189 () Bool)

(assert (=> b!1431315 m!1321189))

(assert (=> b!1431314 m!1321189))

(declare-fun m!1321193 () Bool)

(assert (=> d!153845 m!1321193))

(assert (=> d!153845 m!1321081))

(declare-fun m!1321197 () Bool)

(assert (=> b!1431317 m!1321197))

(assert (=> b!1431317 m!1321197))

(declare-fun m!1321199 () Bool)

(assert (=> b!1431317 m!1321199))

(assert (=> b!1431310 m!1321189))

(assert (=> b!1431136 d!153845))

(declare-fun d!153847 () Bool)

(declare-fun res!965387 () Bool)

(declare-fun e!808120 () Bool)

(assert (=> d!153847 (=> res!965387 e!808120)))

(assert (=> d!153847 (= res!965387 (bvsge j!81 (size!47573 a!2831)))))

(assert (=> d!153847 (= (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608) e!808120)))

(declare-fun call!67471 () Bool)

(declare-fun bm!67468 () Bool)

(assert (=> bm!67468 (= call!67471 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!81 #b00000000000000000000000000000001) a!2831 mask!2608))))

(declare-fun b!1431323 () Bool)

(declare-fun e!808122 () Bool)

(assert (=> b!1431323 (= e!808122 call!67471)))

(declare-fun b!1431324 () Bool)

(declare-fun e!808121 () Bool)

(assert (=> b!1431324 (= e!808122 e!808121)))

(declare-fun lt!630095 () (_ BitVec 64))

(assert (=> b!1431324 (= lt!630095 (select (arr!47022 a!2831) j!81))))

(declare-fun lt!630093 () Unit!48340)

(assert (=> b!1431324 (= lt!630093 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2831 lt!630095 j!81))))

(assert (=> b!1431324 (arrayContainsKey!0 a!2831 lt!630095 #b00000000000000000000000000000000)))

(declare-fun lt!630094 () Unit!48340)

(assert (=> b!1431324 (= lt!630094 lt!630093)))

(declare-fun res!965386 () Bool)

(assert (=> b!1431324 (= res!965386 (= (seekEntryOrOpen!0 (select (arr!47022 a!2831) j!81) a!2831 mask!2608) (Found!11323 j!81)))))

(assert (=> b!1431324 (=> (not res!965386) (not e!808121))))

(declare-fun b!1431325 () Bool)

(assert (=> b!1431325 (= e!808121 call!67471)))

(declare-fun b!1431326 () Bool)

(assert (=> b!1431326 (= e!808120 e!808122)))

(declare-fun c!132468 () Bool)

(assert (=> b!1431326 (= c!132468 (validKeyInArray!0 (select (arr!47022 a!2831) j!81)))))

(assert (= (and d!153847 (not res!965387)) b!1431326))

(assert (= (and b!1431326 c!132468) b!1431324))

(assert (= (and b!1431326 (not c!132468)) b!1431323))

(assert (= (and b!1431324 res!965386) b!1431325))

(assert (= (or b!1431325 b!1431323) bm!67468))

(declare-fun m!1321203 () Bool)

(assert (=> bm!67468 m!1321203))

(assert (=> b!1431324 m!1321091))

(declare-fun m!1321205 () Bool)

(assert (=> b!1431324 m!1321205))

(declare-fun m!1321207 () Bool)

(assert (=> b!1431324 m!1321207))

(assert (=> b!1431324 m!1321091))

(assert (=> b!1431324 m!1321111))

(assert (=> b!1431326 m!1321091))

(assert (=> b!1431326 m!1321091))

(assert (=> b!1431326 m!1321109))

(assert (=> b!1431135 d!153847))

(declare-fun d!153851 () Bool)

(assert (=> d!153851 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-fun lt!630111 () Unit!48340)

(declare-fun choose!38 (array!97435 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48340)

(assert (=> d!153851 (= lt!630111 (choose!38 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (=> d!153851 (validMask!0 mask!2608)))

(assert (=> d!153851 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81) lt!630111)))

(declare-fun bs!41689 () Bool)

(assert (= bs!41689 d!153851))

(assert (=> bs!41689 m!1321105))

(declare-fun m!1321231 () Bool)

(assert (=> bs!41689 m!1321231))

(assert (=> bs!41689 m!1321081))

(assert (=> b!1431135 d!153851))

(declare-fun d!153861 () Bool)

(assert (=> d!153861 (= (validMask!0 mask!2608) (and (or (= mask!2608 #b00000000000000000000000000000111) (= mask!2608 #b00000000000000000000000000001111) (= mask!2608 #b00000000000000000000000000011111) (= mask!2608 #b00000000000000000000000000111111) (= mask!2608 #b00000000000000000000000001111111) (= mask!2608 #b00000000000000000000000011111111) (= mask!2608 #b00000000000000000000000111111111) (= mask!2608 #b00000000000000000000001111111111) (= mask!2608 #b00000000000000000000011111111111) (= mask!2608 #b00000000000000000000111111111111) (= mask!2608 #b00000000000000000001111111111111) (= mask!2608 #b00000000000000000011111111111111) (= mask!2608 #b00000000000000000111111111111111) (= mask!2608 #b00000000000000001111111111111111) (= mask!2608 #b00000000000000011111111111111111) (= mask!2608 #b00000000000000111111111111111111) (= mask!2608 #b00000000000001111111111111111111) (= mask!2608 #b00000000000011111111111111111111) (= mask!2608 #b00000000000111111111111111111111) (= mask!2608 #b00000000001111111111111111111111) (= mask!2608 #b00000000011111111111111111111111) (= mask!2608 #b00000000111111111111111111111111) (= mask!2608 #b00000001111111111111111111111111) (= mask!2608 #b00000011111111111111111111111111) (= mask!2608 #b00000111111111111111111111111111) (= mask!2608 #b00001111111111111111111111111111) (= mask!2608 #b00011111111111111111111111111111) (= mask!2608 #b00111111111111111111111111111111)) (bvsle mask!2608 #b00111111111111111111111111111111)))))

(assert (=> start!123494 d!153861))

(declare-fun d!153869 () Bool)

(assert (=> d!153869 (= (array_inv!35967 a!2831) (bvsge (size!47573 a!2831) #b00000000000000000000000000000000))))

(assert (=> start!123494 d!153869))

(declare-fun b!1431376 () Bool)

(declare-fun e!808154 () Bool)

(declare-fun lt!630121 () SeekEntryResult!11323)

(assert (=> b!1431376 (= e!808154 (bvsge (x!129330 lt!630121) #b01111111111111111111111111111110))))

(declare-fun b!1431377 () Bool)

(assert (=> b!1431377 (and (bvsge (index!47685 lt!630121) #b00000000000000000000000000000000) (bvslt (index!47685 lt!630121) (size!47573 a!2831)))))

(declare-fun res!965401 () Bool)

(assert (=> b!1431377 (= res!965401 (= (select (arr!47022 a!2831) (index!47685 lt!630121)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!808153 () Bool)

(assert (=> b!1431377 (=> res!965401 e!808153)))

(declare-fun d!153871 () Bool)

(assert (=> d!153871 e!808154))

(declare-fun c!132490 () Bool)

(assert (=> d!153871 (= c!132490 (and (is-Intermediate!11323 lt!630121) (undefined!12135 lt!630121)))))

(declare-fun e!808150 () SeekEntryResult!11323)

(assert (=> d!153871 (= lt!630121 e!808150)))

(declare-fun c!132489 () Bool)

(assert (=> d!153871 (= c!132489 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!630122 () (_ BitVec 64))

(assert (=> d!153871 (= lt!630122 (select (arr!47022 a!2831) (toIndex!0 (select (arr!47022 a!2831) j!81) mask!2608)))))

(assert (=> d!153871 (validMask!0 mask!2608)))

(assert (=> d!153871 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47022 a!2831) j!81) mask!2608) (select (arr!47022 a!2831) j!81) a!2831 mask!2608) lt!630121)))

(declare-fun b!1431378 () Bool)

(declare-fun e!808151 () SeekEntryResult!11323)

(assert (=> b!1431378 (= e!808150 e!808151)))

(declare-fun c!132488 () Bool)

(assert (=> b!1431378 (= c!132488 (or (= lt!630122 (select (arr!47022 a!2831) j!81)) (= (bvadd lt!630122 lt!630122) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1431379 () Bool)

(declare-fun e!808152 () Bool)

(assert (=> b!1431379 (= e!808154 e!808152)))

(declare-fun res!965399 () Bool)

(assert (=> b!1431379 (= res!965399 (and (is-Intermediate!11323 lt!630121) (not (undefined!12135 lt!630121)) (bvslt (x!129330 lt!630121) #b01111111111111111111111111111110) (bvsge (x!129330 lt!630121) #b00000000000000000000000000000000) (bvsge (x!129330 lt!630121) #b00000000000000000000000000000000)))))

(assert (=> b!1431379 (=> (not res!965399) (not e!808152))))

(declare-fun b!1431380 () Bool)

(assert (=> b!1431380 (= e!808150 (Intermediate!11323 true (toIndex!0 (select (arr!47022 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431381 () Bool)

(assert (=> b!1431381 (and (bvsge (index!47685 lt!630121) #b00000000000000000000000000000000) (bvslt (index!47685 lt!630121) (size!47573 a!2831)))))

(declare-fun res!965400 () Bool)

(assert (=> b!1431381 (= res!965400 (= (select (arr!47022 a!2831) (index!47685 lt!630121)) (select (arr!47022 a!2831) j!81)))))

(assert (=> b!1431381 (=> res!965400 e!808153)))

(assert (=> b!1431381 (= e!808152 e!808153)))

(declare-fun b!1431382 () Bool)

(assert (=> b!1431382 (and (bvsge (index!47685 lt!630121) #b00000000000000000000000000000000) (bvslt (index!47685 lt!630121) (size!47573 a!2831)))))

(assert (=> b!1431382 (= e!808153 (= (select (arr!47022 a!2831) (index!47685 lt!630121)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1431383 () Bool)

(assert (=> b!1431383 (= e!808151 (Intermediate!11323 false (toIndex!0 (select (arr!47022 a!2831) j!81) mask!2608) #b00000000000000000000000000000000))))

(declare-fun b!1431384 () Bool)

(assert (=> b!1431384 (= e!808151 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47022 a!2831) j!81) mask!2608) #b00000000000000000000000000000000 mask!2608) (select (arr!47022 a!2831) j!81) a!2831 mask!2608))))

(assert (= (and d!153871 c!132489) b!1431380))

(assert (= (and d!153871 (not c!132489)) b!1431378))

(assert (= (and b!1431378 c!132488) b!1431383))

(assert (= (and b!1431378 (not c!132488)) b!1431384))

(assert (= (and d!153871 c!132490) b!1431376))

(assert (= (and d!153871 (not c!132490)) b!1431379))

(assert (= (and b!1431379 res!965399) b!1431381))

(assert (= (and b!1431381 (not res!965400)) b!1431377))

(assert (= (and b!1431377 (not res!965401)) b!1431382))

(declare-fun m!1321251 () Bool)

(assert (=> b!1431382 m!1321251))

(assert (=> b!1431381 m!1321251))

(assert (=> d!153871 m!1321095))

(declare-fun m!1321253 () Bool)

(assert (=> d!153871 m!1321253))

(assert (=> d!153871 m!1321081))

(assert (=> b!1431384 m!1321095))

(declare-fun m!1321255 () Bool)

(assert (=> b!1431384 m!1321255))

(assert (=> b!1431384 m!1321255))

(assert (=> b!1431384 m!1321091))

(declare-fun m!1321257 () Bool)

(assert (=> b!1431384 m!1321257))

(assert (=> b!1431377 m!1321251))

(assert (=> b!1431132 d!153871))

(declare-fun d!153873 () Bool)

(declare-fun lt!630124 () (_ BitVec 32))

(declare-fun lt!630123 () (_ BitVec 32))

(assert (=> d!153873 (= lt!630124 (bvmul (bvxor lt!630123 (bvlshr lt!630123 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!153873 (= lt!630123 ((_ extract 31 0) (bvand (bvxor (select (arr!47022 a!2831) j!81) (bvlshr (select (arr!47022 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!153873 (and (bvsge mask!2608 #b00000000000000000000000000000000) (let ((res!965373 (let ((h!35031 ((_ extract 31 0) (bvand (bvxor (select (arr!47022 a!2831) j!81) (bvlshr (select (arr!47022 a!2831) j!81) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129336 (bvmul (bvxor h!35031 (bvlshr h!35031 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129336 (bvlshr x!129336 #b00000000000000000000000000001101)) mask!2608))))) (and (bvslt res!965373 (bvadd mask!2608 #b00000000000000000000000000000001)) (bvsge res!965373 #b00000000000000000000000000000000))))))

(assert (=> d!153873 (= (toIndex!0 (select (arr!47022 a!2831) j!81) mask!2608) (bvand (bvxor lt!630124 (bvlshr lt!630124 #b00000000000000000000000000001101)) mask!2608))))

(assert (=> b!1431132 d!153873))

(declare-fun b!1431434 () Bool)

(declare-fun e!808187 () SeekEntryResult!11323)

(declare-fun e!808188 () SeekEntryResult!11323)

(assert (=> b!1431434 (= e!808187 e!808188)))

(declare-fun lt!630140 () (_ BitVec 64))

(declare-fun lt!630139 () SeekEntryResult!11323)

(assert (=> b!1431434 (= lt!630140 (select (arr!47022 a!2831) (index!47685 lt!630139)))))

(declare-fun c!132508 () Bool)

(assert (=> b!1431434 (= c!132508 (= lt!630140 (select (arr!47022 a!2831) j!81)))))

(declare-fun b!1431435 () Bool)

(declare-fun e!808186 () SeekEntryResult!11323)

(assert (=> b!1431435 (= e!808186 (MissingZero!11323 (index!47685 lt!630139)))))

(declare-fun b!1431436 () Bool)

(declare-fun c!132509 () Bool)

(assert (=> b!1431436 (= c!132509 (= lt!630140 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1431436 (= e!808188 e!808186)))

(declare-fun b!1431437 () Bool)

(assert (=> b!1431437 (= e!808188 (Found!11323 (index!47685 lt!630139)))))

(declare-fun b!1431438 () Bool)

(assert (=> b!1431438 (= e!808187 Undefined!11323)))

(declare-fun b!1431439 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97435 (_ BitVec 32)) SeekEntryResult!11323)

(assert (=> b!1431439 (= e!808186 (seekKeyOrZeroReturnVacant!0 (x!129330 lt!630139) (index!47685 lt!630139) (index!47685 lt!630139) (select (arr!47022 a!2831) j!81) a!2831 mask!2608))))

(declare-fun d!153875 () Bool)

(declare-fun lt!630138 () SeekEntryResult!11323)

(assert (=> d!153875 (and (or (is-Undefined!11323 lt!630138) (not (is-Found!11323 lt!630138)) (and (bvsge (index!47684 lt!630138) #b00000000000000000000000000000000) (bvslt (index!47684 lt!630138) (size!47573 a!2831)))) (or (is-Undefined!11323 lt!630138) (is-Found!11323 lt!630138) (not (is-MissingZero!11323 lt!630138)) (and (bvsge (index!47683 lt!630138) #b00000000000000000000000000000000) (bvslt (index!47683 lt!630138) (size!47573 a!2831)))) (or (is-Undefined!11323 lt!630138) (is-Found!11323 lt!630138) (is-MissingZero!11323 lt!630138) (not (is-MissingVacant!11323 lt!630138)) (and (bvsge (index!47686 lt!630138) #b00000000000000000000000000000000) (bvslt (index!47686 lt!630138) (size!47573 a!2831)))) (or (is-Undefined!11323 lt!630138) (ite (is-Found!11323 lt!630138) (= (select (arr!47022 a!2831) (index!47684 lt!630138)) (select (arr!47022 a!2831) j!81)) (ite (is-MissingZero!11323 lt!630138) (= (select (arr!47022 a!2831) (index!47683 lt!630138)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!11323 lt!630138) (= (select (arr!47022 a!2831) (index!47686 lt!630138)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!153875 (= lt!630138 e!808187)))

(declare-fun c!132507 () Bool)

(assert (=> d!153875 (= c!132507 (and (is-Intermediate!11323 lt!630139) (undefined!12135 lt!630139)))))

(assert (=> d!153875 (= lt!630139 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47022 a!2831) j!81) mask!2608) (select (arr!47022 a!2831) j!81) a!2831 mask!2608))))

(assert (=> d!153875 (validMask!0 mask!2608)))

(assert (=> d!153875 (= (seekEntryOrOpen!0 (select (arr!47022 a!2831) j!81) a!2831 mask!2608) lt!630138)))

(assert (= (and d!153875 c!132507) b!1431438))

(assert (= (and d!153875 (not c!132507)) b!1431434))

(assert (= (and b!1431434 c!132508) b!1431437))

(assert (= (and b!1431434 (not c!132508)) b!1431436))

(assert (= (and b!1431436 c!132509) b!1431435))

(assert (= (and b!1431436 (not c!132509)) b!1431439))

(declare-fun m!1321287 () Bool)

(assert (=> b!1431434 m!1321287))

(assert (=> b!1431439 m!1321091))

(declare-fun m!1321289 () Bool)

(assert (=> b!1431439 m!1321289))

(declare-fun m!1321291 () Bool)

(assert (=> d!153875 m!1321291))

(assert (=> d!153875 m!1321095))

(assert (=> d!153875 m!1321091))

(assert (=> d!153875 m!1321097))

(declare-fun m!1321293 () Bool)

(assert (=> d!153875 m!1321293))

(assert (=> d!153875 m!1321091))

(assert (=> d!153875 m!1321095))

(declare-fun m!1321295 () Bool)

(assert (=> d!153875 m!1321295))

