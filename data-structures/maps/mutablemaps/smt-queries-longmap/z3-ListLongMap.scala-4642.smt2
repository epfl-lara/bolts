; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64572 () Bool)

(assert start!64572)

(declare-fun b!727113 () Bool)

(declare-fun res!488147 () Bool)

(declare-fun e!407075 () Bool)

(assert (=> b!727113 (=> (not res!488147) (not e!407075))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41043 0))(
  ( (array!41044 (arr!19639 (Array (_ BitVec 32) (_ BitVec 64))) (size!20060 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41043)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!727113 (= res!488147 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20060 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20060 a!3186))))))

(declare-fun e!407077 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!727114 () Bool)

(declare-datatypes ((SeekEntryResult!7246 0))(
  ( (MissingZero!7246 (index!31351 (_ BitVec 32))) (Found!7246 (index!31352 (_ BitVec 32))) (Intermediate!7246 (undefined!8058 Bool) (index!31353 (_ BitVec 32)) (x!62361 (_ BitVec 32))) (Undefined!7246) (MissingVacant!7246 (index!31354 (_ BitVec 32))) )
))
(declare-fun lt!322067 () SeekEntryResult!7246)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41043 (_ BitVec 32)) SeekEntryResult!7246)

(assert (=> b!727114 (= e!407077 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19639 a!3186) j!159) a!3186 mask!3328) lt!322067))))

(declare-fun b!727115 () Bool)

(declare-fun res!488160 () Bool)

(declare-fun e!407076 () Bool)

(assert (=> b!727115 (=> (not res!488160) (not e!407076))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!727115 (= res!488160 (and (= (size!20060 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20060 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20060 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727116 () Bool)

(declare-fun e!407074 () Bool)

(declare-fun e!407079 () Bool)

(assert (=> b!727116 (= e!407074 e!407079)))

(declare-fun res!488146 () Bool)

(assert (=> b!727116 (=> (not res!488146) (not e!407079))))

(declare-fun lt!322065 () SeekEntryResult!7246)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41043 (_ BitVec 32)) SeekEntryResult!7246)

(assert (=> b!727116 (= res!488146 (= (seekEntryOrOpen!0 (select (arr!19639 a!3186) j!159) a!3186 mask!3328) lt!322065))))

(assert (=> b!727116 (= lt!322065 (Found!7246 j!159))))

(declare-fun b!727117 () Bool)

(declare-fun res!488154 () Bool)

(declare-fun e!407078 () Bool)

(assert (=> b!727117 (=> (not res!488154) (not e!407078))))

(assert (=> b!727117 (= res!488154 e!407077)))

(declare-fun c!79857 () Bool)

(assert (=> b!727117 (= c!79857 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727118 () Bool)

(declare-fun res!488145 () Bool)

(assert (=> b!727118 (=> (not res!488145) (not e!407075))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41043 (_ BitVec 32)) Bool)

(assert (=> b!727118 (= res!488145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!488158 () Bool)

(assert (=> start!64572 (=> (not res!488158) (not e!407076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64572 (= res!488158 (validMask!0 mask!3328))))

(assert (=> start!64572 e!407076))

(assert (=> start!64572 true))

(declare-fun array_inv!15413 (array!41043) Bool)

(assert (=> start!64572 (array_inv!15413 a!3186)))

(declare-fun b!727119 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41043 (_ BitVec 32)) SeekEntryResult!7246)

(assert (=> b!727119 (= e!407079 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19639 a!3186) j!159) a!3186 mask!3328) lt!322065))))

(declare-fun b!727120 () Bool)

(assert (=> b!727120 (= e!407075 e!407078)))

(declare-fun res!488157 () Bool)

(assert (=> b!727120 (=> (not res!488157) (not e!407078))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727120 (= res!488157 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19639 a!3186) j!159) mask!3328) (select (arr!19639 a!3186) j!159) a!3186 mask!3328) lt!322067))))

(assert (=> b!727120 (= lt!322067 (Intermediate!7246 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727121 () Bool)

(declare-fun res!488159 () Bool)

(assert (=> b!727121 (=> (not res!488159) (not e!407076))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41043 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727121 (= res!488159 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727122 () Bool)

(assert (=> b!727122 (= e!407077 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19639 a!3186) j!159) a!3186 mask!3328) (Found!7246 j!159)))))

(declare-fun b!727123 () Bool)

(declare-fun e!407080 () Bool)

(declare-fun e!407082 () Bool)

(assert (=> b!727123 (= e!407080 (not e!407082))))

(declare-fun res!488156 () Bool)

(assert (=> b!727123 (=> res!488156 e!407082)))

(declare-fun lt!322063 () SeekEntryResult!7246)

(get-info :version)

(assert (=> b!727123 (= res!488156 (or (not ((_ is Intermediate!7246) lt!322063)) (bvsge x!1131 (x!62361 lt!322063))))))

(assert (=> b!727123 e!407074))

(declare-fun res!488152 () Bool)

(assert (=> b!727123 (=> (not res!488152) (not e!407074))))

(assert (=> b!727123 (= res!488152 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24810 0))(
  ( (Unit!24811) )
))
(declare-fun lt!322062 () Unit!24810)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24810)

(assert (=> b!727123 (= lt!322062 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727124 () Bool)

(assert (=> b!727124 (= e!407078 e!407080)))

(declare-fun res!488150 () Bool)

(assert (=> b!727124 (=> (not res!488150) (not e!407080))))

(declare-fun lt!322061 () SeekEntryResult!7246)

(assert (=> b!727124 (= res!488150 (= lt!322061 lt!322063))))

(declare-fun lt!322066 () (_ BitVec 64))

(declare-fun lt!322059 () array!41043)

(assert (=> b!727124 (= lt!322063 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322066 lt!322059 mask!3328))))

(assert (=> b!727124 (= lt!322061 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322066 mask!3328) lt!322066 lt!322059 mask!3328))))

(assert (=> b!727124 (= lt!322066 (select (store (arr!19639 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!727124 (= lt!322059 (array!41044 (store (arr!19639 a!3186) i!1173 k0!2102) (size!20060 a!3186)))))

(declare-fun b!727125 () Bool)

(assert (=> b!727125 (= e!407076 e!407075)))

(declare-fun res!488151 () Bool)

(assert (=> b!727125 (=> (not res!488151) (not e!407075))))

(declare-fun lt!322064 () SeekEntryResult!7246)

(assert (=> b!727125 (= res!488151 (or (= lt!322064 (MissingZero!7246 i!1173)) (= lt!322064 (MissingVacant!7246 i!1173))))))

(assert (=> b!727125 (= lt!322064 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!727126 () Bool)

(declare-fun res!488153 () Bool)

(assert (=> b!727126 (=> (not res!488153) (not e!407076))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727126 (= res!488153 (validKeyInArray!0 k0!2102))))

(declare-fun b!727127 () Bool)

(declare-fun lt!322060 () (_ BitVec 32))

(assert (=> b!727127 (= e!407082 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (and (bvsge lt!322060 #b00000000000000000000000000000000) (bvslt lt!322060 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727127 (= lt!322060 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!727128 () Bool)

(declare-fun res!488149 () Bool)

(assert (=> b!727128 (=> (not res!488149) (not e!407075))))

(declare-datatypes ((List!13694 0))(
  ( (Nil!13691) (Cons!13690 (h!14747 (_ BitVec 64)) (t!20017 List!13694)) )
))
(declare-fun arrayNoDuplicates!0 (array!41043 (_ BitVec 32) List!13694) Bool)

(assert (=> b!727128 (= res!488149 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13691))))

(declare-fun b!727129 () Bool)

(declare-fun res!488148 () Bool)

(assert (=> b!727129 (=> (not res!488148) (not e!407078))))

(assert (=> b!727129 (= res!488148 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19639 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727130 () Bool)

(declare-fun res!488155 () Bool)

(assert (=> b!727130 (=> (not res!488155) (not e!407076))))

(assert (=> b!727130 (= res!488155 (validKeyInArray!0 (select (arr!19639 a!3186) j!159)))))

(assert (= (and start!64572 res!488158) b!727115))

(assert (= (and b!727115 res!488160) b!727130))

(assert (= (and b!727130 res!488155) b!727126))

(assert (= (and b!727126 res!488153) b!727121))

(assert (= (and b!727121 res!488159) b!727125))

(assert (= (and b!727125 res!488151) b!727118))

(assert (= (and b!727118 res!488145) b!727128))

(assert (= (and b!727128 res!488149) b!727113))

(assert (= (and b!727113 res!488147) b!727120))

(assert (= (and b!727120 res!488157) b!727129))

(assert (= (and b!727129 res!488148) b!727117))

(assert (= (and b!727117 c!79857) b!727114))

(assert (= (and b!727117 (not c!79857)) b!727122))

(assert (= (and b!727117 res!488154) b!727124))

(assert (= (and b!727124 res!488150) b!727123))

(assert (= (and b!727123 res!488152) b!727116))

(assert (= (and b!727116 res!488146) b!727119))

(assert (= (and b!727123 (not res!488156)) b!727127))

(declare-fun m!681187 () Bool)

(assert (=> b!727128 m!681187))

(declare-fun m!681189 () Bool)

(assert (=> b!727114 m!681189))

(assert (=> b!727114 m!681189))

(declare-fun m!681191 () Bool)

(assert (=> b!727114 m!681191))

(declare-fun m!681193 () Bool)

(assert (=> b!727118 m!681193))

(declare-fun m!681195 () Bool)

(assert (=> b!727129 m!681195))

(assert (=> b!727120 m!681189))

(assert (=> b!727120 m!681189))

(declare-fun m!681197 () Bool)

(assert (=> b!727120 m!681197))

(assert (=> b!727120 m!681197))

(assert (=> b!727120 m!681189))

(declare-fun m!681199 () Bool)

(assert (=> b!727120 m!681199))

(assert (=> b!727119 m!681189))

(assert (=> b!727119 m!681189))

(declare-fun m!681201 () Bool)

(assert (=> b!727119 m!681201))

(declare-fun m!681203 () Bool)

(assert (=> b!727121 m!681203))

(declare-fun m!681205 () Bool)

(assert (=> start!64572 m!681205))

(declare-fun m!681207 () Bool)

(assert (=> start!64572 m!681207))

(assert (=> b!727116 m!681189))

(assert (=> b!727116 m!681189))

(declare-fun m!681209 () Bool)

(assert (=> b!727116 m!681209))

(declare-fun m!681211 () Bool)

(assert (=> b!727123 m!681211))

(declare-fun m!681213 () Bool)

(assert (=> b!727123 m!681213))

(declare-fun m!681215 () Bool)

(assert (=> b!727127 m!681215))

(declare-fun m!681217 () Bool)

(assert (=> b!727124 m!681217))

(declare-fun m!681219 () Bool)

(assert (=> b!727124 m!681219))

(declare-fun m!681221 () Bool)

(assert (=> b!727124 m!681221))

(declare-fun m!681223 () Bool)

(assert (=> b!727124 m!681223))

(declare-fun m!681225 () Bool)

(assert (=> b!727124 m!681225))

(assert (=> b!727124 m!681217))

(declare-fun m!681227 () Bool)

(assert (=> b!727125 m!681227))

(assert (=> b!727130 m!681189))

(assert (=> b!727130 m!681189))

(declare-fun m!681229 () Bool)

(assert (=> b!727130 m!681229))

(declare-fun m!681231 () Bool)

(assert (=> b!727126 m!681231))

(assert (=> b!727122 m!681189))

(assert (=> b!727122 m!681189))

(declare-fun m!681233 () Bool)

(assert (=> b!727122 m!681233))

(check-sat (not b!727121) (not b!727114) (not b!727125) (not b!727122) (not b!727127) (not start!64572) (not b!727126) (not b!727123) (not b!727118) (not b!727130) (not b!727124) (not b!727119) (not b!727128) (not b!727120) (not b!727116))
(check-sat)
(get-model)

(declare-fun b!727197 () Bool)

(declare-fun e!407116 () SeekEntryResult!7246)

(declare-fun lt!322102 () SeekEntryResult!7246)

(assert (=> b!727197 (= e!407116 (Found!7246 (index!31353 lt!322102)))))

(declare-fun e!407117 () SeekEntryResult!7246)

(declare-fun b!727198 () Bool)

(assert (=> b!727198 (= e!407117 (seekKeyOrZeroReturnVacant!0 (x!62361 lt!322102) (index!31353 lt!322102) (index!31353 lt!322102) k0!2102 a!3186 mask!3328))))

(declare-fun d!99383 () Bool)

(declare-fun lt!322103 () SeekEntryResult!7246)

(assert (=> d!99383 (and (or ((_ is Undefined!7246) lt!322103) (not ((_ is Found!7246) lt!322103)) (and (bvsge (index!31352 lt!322103) #b00000000000000000000000000000000) (bvslt (index!31352 lt!322103) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322103) ((_ is Found!7246) lt!322103) (not ((_ is MissingZero!7246) lt!322103)) (and (bvsge (index!31351 lt!322103) #b00000000000000000000000000000000) (bvslt (index!31351 lt!322103) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322103) ((_ is Found!7246) lt!322103) ((_ is MissingZero!7246) lt!322103) (not ((_ is MissingVacant!7246) lt!322103)) (and (bvsge (index!31354 lt!322103) #b00000000000000000000000000000000) (bvslt (index!31354 lt!322103) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322103) (ite ((_ is Found!7246) lt!322103) (= (select (arr!19639 a!3186) (index!31352 lt!322103)) k0!2102) (ite ((_ is MissingZero!7246) lt!322103) (= (select (arr!19639 a!3186) (index!31351 lt!322103)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7246) lt!322103) (= (select (arr!19639 a!3186) (index!31354 lt!322103)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!407118 () SeekEntryResult!7246)

(assert (=> d!99383 (= lt!322103 e!407118)))

(declare-fun c!79868 () Bool)

(assert (=> d!99383 (= c!79868 (and ((_ is Intermediate!7246) lt!322102) (undefined!8058 lt!322102)))))

(assert (=> d!99383 (= lt!322102 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!99383 (validMask!0 mask!3328)))

(assert (=> d!99383 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!322103)))

(declare-fun b!727199 () Bool)

(declare-fun c!79869 () Bool)

(declare-fun lt!322101 () (_ BitVec 64))

(assert (=> b!727199 (= c!79869 (= lt!322101 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727199 (= e!407116 e!407117)))

(declare-fun b!727200 () Bool)

(assert (=> b!727200 (= e!407118 Undefined!7246)))

(declare-fun b!727201 () Bool)

(assert (=> b!727201 (= e!407118 e!407116)))

(assert (=> b!727201 (= lt!322101 (select (arr!19639 a!3186) (index!31353 lt!322102)))))

(declare-fun c!79867 () Bool)

(assert (=> b!727201 (= c!79867 (= lt!322101 k0!2102))))

(declare-fun b!727202 () Bool)

(assert (=> b!727202 (= e!407117 (MissingZero!7246 (index!31353 lt!322102)))))

(assert (= (and d!99383 c!79868) b!727200))

(assert (= (and d!99383 (not c!79868)) b!727201))

(assert (= (and b!727201 c!79867) b!727197))

(assert (= (and b!727201 (not c!79867)) b!727199))

(assert (= (and b!727199 c!79869) b!727202))

(assert (= (and b!727199 (not c!79869)) b!727198))

(declare-fun m!681283 () Bool)

(assert (=> b!727198 m!681283))

(declare-fun m!681285 () Bool)

(assert (=> d!99383 m!681285))

(declare-fun m!681287 () Bool)

(assert (=> d!99383 m!681287))

(assert (=> d!99383 m!681205))

(declare-fun m!681289 () Bool)

(assert (=> d!99383 m!681289))

(declare-fun m!681291 () Bool)

(assert (=> d!99383 m!681291))

(declare-fun m!681293 () Bool)

(assert (=> d!99383 m!681293))

(assert (=> d!99383 m!681289))

(declare-fun m!681295 () Bool)

(assert (=> b!727201 m!681295))

(assert (=> b!727125 d!99383))

(declare-fun b!727221 () Bool)

(declare-fun lt!322108 () SeekEntryResult!7246)

(assert (=> b!727221 (and (bvsge (index!31353 lt!322108) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322108) (size!20060 a!3186)))))

(declare-fun e!407129 () Bool)

(assert (=> b!727221 (= e!407129 (= (select (arr!19639 a!3186) (index!31353 lt!322108)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!727222 () Bool)

(declare-fun e!407131 () Bool)

(assert (=> b!727222 (= e!407131 (bvsge (x!62361 lt!322108) #b01111111111111111111111111111110))))

(declare-fun b!727223 () Bool)

(declare-fun e!407132 () SeekEntryResult!7246)

(declare-fun e!407130 () SeekEntryResult!7246)

(assert (=> b!727223 (= e!407132 e!407130)))

(declare-fun lt!322109 () (_ BitVec 64))

(declare-fun c!79877 () Bool)

(assert (=> b!727223 (= c!79877 (or (= lt!322109 (select (arr!19639 a!3186) j!159)) (= (bvadd lt!322109 lt!322109) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727224 () Bool)

(assert (=> b!727224 (= e!407130 (Intermediate!7246 false index!1321 x!1131))))

(declare-fun b!727225 () Bool)

(assert (=> b!727225 (= e!407132 (Intermediate!7246 true index!1321 x!1131))))

(declare-fun b!727226 () Bool)

(assert (=> b!727226 (= e!407130 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19639 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99385 () Bool)

(assert (=> d!99385 e!407131))

(declare-fun c!79876 () Bool)

(assert (=> d!99385 (= c!79876 (and ((_ is Intermediate!7246) lt!322108) (undefined!8058 lt!322108)))))

(assert (=> d!99385 (= lt!322108 e!407132)))

(declare-fun c!79878 () Bool)

(assert (=> d!99385 (= c!79878 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99385 (= lt!322109 (select (arr!19639 a!3186) index!1321))))

(assert (=> d!99385 (validMask!0 mask!3328)))

(assert (=> d!99385 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19639 a!3186) j!159) a!3186 mask!3328) lt!322108)))

(declare-fun b!727227 () Bool)

(assert (=> b!727227 (and (bvsge (index!31353 lt!322108) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322108) (size!20060 a!3186)))))

(declare-fun res!488217 () Bool)

(assert (=> b!727227 (= res!488217 (= (select (arr!19639 a!3186) (index!31353 lt!322108)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727227 (=> res!488217 e!407129)))

(declare-fun b!727228 () Bool)

(assert (=> b!727228 (and (bvsge (index!31353 lt!322108) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322108) (size!20060 a!3186)))))

(declare-fun res!488215 () Bool)

(assert (=> b!727228 (= res!488215 (= (select (arr!19639 a!3186) (index!31353 lt!322108)) (select (arr!19639 a!3186) j!159)))))

(assert (=> b!727228 (=> res!488215 e!407129)))

(declare-fun e!407133 () Bool)

(assert (=> b!727228 (= e!407133 e!407129)))

(declare-fun b!727229 () Bool)

(assert (=> b!727229 (= e!407131 e!407133)))

(declare-fun res!488216 () Bool)

(assert (=> b!727229 (= res!488216 (and ((_ is Intermediate!7246) lt!322108) (not (undefined!8058 lt!322108)) (bvslt (x!62361 lt!322108) #b01111111111111111111111111111110) (bvsge (x!62361 lt!322108) #b00000000000000000000000000000000) (bvsge (x!62361 lt!322108) x!1131)))))

(assert (=> b!727229 (=> (not res!488216) (not e!407133))))

(assert (= (and d!99385 c!79878) b!727225))

(assert (= (and d!99385 (not c!79878)) b!727223))

(assert (= (and b!727223 c!79877) b!727224))

(assert (= (and b!727223 (not c!79877)) b!727226))

(assert (= (and d!99385 c!79876) b!727222))

(assert (= (and d!99385 (not c!79876)) b!727229))

(assert (= (and b!727229 res!488216) b!727228))

(assert (= (and b!727228 (not res!488215)) b!727227))

(assert (= (and b!727227 (not res!488217)) b!727221))

(declare-fun m!681297 () Bool)

(assert (=> b!727228 m!681297))

(assert (=> b!727226 m!681215))

(assert (=> b!727226 m!681215))

(assert (=> b!727226 m!681189))

(declare-fun m!681299 () Bool)

(assert (=> b!727226 m!681299))

(declare-fun m!681301 () Bool)

(assert (=> d!99385 m!681301))

(assert (=> d!99385 m!681205))

(assert (=> b!727227 m!681297))

(assert (=> b!727221 m!681297))

(assert (=> b!727114 d!99385))

(declare-fun b!727230 () Bool)

(declare-fun lt!322110 () SeekEntryResult!7246)

(assert (=> b!727230 (and (bvsge (index!31353 lt!322110) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322110) (size!20060 lt!322059)))))

(declare-fun e!407134 () Bool)

(assert (=> b!727230 (= e!407134 (= (select (arr!19639 lt!322059) (index!31353 lt!322110)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!727231 () Bool)

(declare-fun e!407136 () Bool)

(assert (=> b!727231 (= e!407136 (bvsge (x!62361 lt!322110) #b01111111111111111111111111111110))))

(declare-fun b!727232 () Bool)

(declare-fun e!407137 () SeekEntryResult!7246)

(declare-fun e!407135 () SeekEntryResult!7246)

(assert (=> b!727232 (= e!407137 e!407135)))

(declare-fun c!79880 () Bool)

(declare-fun lt!322111 () (_ BitVec 64))

(assert (=> b!727232 (= c!79880 (or (= lt!322111 lt!322066) (= (bvadd lt!322111 lt!322111) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727233 () Bool)

(assert (=> b!727233 (= e!407135 (Intermediate!7246 false index!1321 x!1131))))

(declare-fun b!727234 () Bool)

(assert (=> b!727234 (= e!407137 (Intermediate!7246 true index!1321 x!1131))))

(declare-fun b!727235 () Bool)

(assert (=> b!727235 (= e!407135 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!322066 lt!322059 mask!3328))))

(declare-fun d!99391 () Bool)

(assert (=> d!99391 e!407136))

(declare-fun c!79879 () Bool)

(assert (=> d!99391 (= c!79879 (and ((_ is Intermediate!7246) lt!322110) (undefined!8058 lt!322110)))))

(assert (=> d!99391 (= lt!322110 e!407137)))

(declare-fun c!79881 () Bool)

(assert (=> d!99391 (= c!79881 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99391 (= lt!322111 (select (arr!19639 lt!322059) index!1321))))

(assert (=> d!99391 (validMask!0 mask!3328)))

(assert (=> d!99391 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322066 lt!322059 mask!3328) lt!322110)))

(declare-fun b!727236 () Bool)

(assert (=> b!727236 (and (bvsge (index!31353 lt!322110) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322110) (size!20060 lt!322059)))))

(declare-fun res!488220 () Bool)

(assert (=> b!727236 (= res!488220 (= (select (arr!19639 lt!322059) (index!31353 lt!322110)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727236 (=> res!488220 e!407134)))

(declare-fun b!727237 () Bool)

(assert (=> b!727237 (and (bvsge (index!31353 lt!322110) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322110) (size!20060 lt!322059)))))

(declare-fun res!488218 () Bool)

(assert (=> b!727237 (= res!488218 (= (select (arr!19639 lt!322059) (index!31353 lt!322110)) lt!322066))))

(assert (=> b!727237 (=> res!488218 e!407134)))

(declare-fun e!407138 () Bool)

(assert (=> b!727237 (= e!407138 e!407134)))

(declare-fun b!727238 () Bool)

(assert (=> b!727238 (= e!407136 e!407138)))

(declare-fun res!488219 () Bool)

(assert (=> b!727238 (= res!488219 (and ((_ is Intermediate!7246) lt!322110) (not (undefined!8058 lt!322110)) (bvslt (x!62361 lt!322110) #b01111111111111111111111111111110) (bvsge (x!62361 lt!322110) #b00000000000000000000000000000000) (bvsge (x!62361 lt!322110) x!1131)))))

(assert (=> b!727238 (=> (not res!488219) (not e!407138))))

(assert (= (and d!99391 c!79881) b!727234))

(assert (= (and d!99391 (not c!79881)) b!727232))

(assert (= (and b!727232 c!79880) b!727233))

(assert (= (and b!727232 (not c!79880)) b!727235))

(assert (= (and d!99391 c!79879) b!727231))

(assert (= (and d!99391 (not c!79879)) b!727238))

(assert (= (and b!727238 res!488219) b!727237))

(assert (= (and b!727237 (not res!488218)) b!727236))

(assert (= (and b!727236 (not res!488220)) b!727230))

(declare-fun m!681303 () Bool)

(assert (=> b!727237 m!681303))

(assert (=> b!727235 m!681215))

(assert (=> b!727235 m!681215))

(declare-fun m!681305 () Bool)

(assert (=> b!727235 m!681305))

(declare-fun m!681307 () Bool)

(assert (=> d!99391 m!681307))

(assert (=> d!99391 m!681205))

(assert (=> b!727236 m!681303))

(assert (=> b!727230 m!681303))

(assert (=> b!727124 d!99391))

(declare-fun b!727239 () Bool)

(declare-fun lt!322112 () SeekEntryResult!7246)

(assert (=> b!727239 (and (bvsge (index!31353 lt!322112) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322112) (size!20060 lt!322059)))))

(declare-fun e!407139 () Bool)

(assert (=> b!727239 (= e!407139 (= (select (arr!19639 lt!322059) (index!31353 lt!322112)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!727240 () Bool)

(declare-fun e!407141 () Bool)

(assert (=> b!727240 (= e!407141 (bvsge (x!62361 lt!322112) #b01111111111111111111111111111110))))

(declare-fun b!727241 () Bool)

(declare-fun e!407142 () SeekEntryResult!7246)

(declare-fun e!407140 () SeekEntryResult!7246)

(assert (=> b!727241 (= e!407142 e!407140)))

(declare-fun c!79883 () Bool)

(declare-fun lt!322113 () (_ BitVec 64))

(assert (=> b!727241 (= c!79883 (or (= lt!322113 lt!322066) (= (bvadd lt!322113 lt!322113) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727242 () Bool)

(assert (=> b!727242 (= e!407140 (Intermediate!7246 false (toIndex!0 lt!322066 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727243 () Bool)

(assert (=> b!727243 (= e!407142 (Intermediate!7246 true (toIndex!0 lt!322066 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727244 () Bool)

(assert (=> b!727244 (= e!407140 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!322066 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!322066 lt!322059 mask!3328))))

(declare-fun d!99393 () Bool)

(assert (=> d!99393 e!407141))

(declare-fun c!79882 () Bool)

(assert (=> d!99393 (= c!79882 (and ((_ is Intermediate!7246) lt!322112) (undefined!8058 lt!322112)))))

(assert (=> d!99393 (= lt!322112 e!407142)))

(declare-fun c!79884 () Bool)

(assert (=> d!99393 (= c!79884 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99393 (= lt!322113 (select (arr!19639 lt!322059) (toIndex!0 lt!322066 mask!3328)))))

(assert (=> d!99393 (validMask!0 mask!3328)))

(assert (=> d!99393 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322066 mask!3328) lt!322066 lt!322059 mask!3328) lt!322112)))

(declare-fun b!727245 () Bool)

(assert (=> b!727245 (and (bvsge (index!31353 lt!322112) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322112) (size!20060 lt!322059)))))

(declare-fun res!488223 () Bool)

(assert (=> b!727245 (= res!488223 (= (select (arr!19639 lt!322059) (index!31353 lt!322112)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727245 (=> res!488223 e!407139)))

(declare-fun b!727246 () Bool)

(assert (=> b!727246 (and (bvsge (index!31353 lt!322112) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322112) (size!20060 lt!322059)))))

(declare-fun res!488221 () Bool)

(assert (=> b!727246 (= res!488221 (= (select (arr!19639 lt!322059) (index!31353 lt!322112)) lt!322066))))

(assert (=> b!727246 (=> res!488221 e!407139)))

(declare-fun e!407143 () Bool)

(assert (=> b!727246 (= e!407143 e!407139)))

(declare-fun b!727247 () Bool)

(assert (=> b!727247 (= e!407141 e!407143)))

(declare-fun res!488222 () Bool)

(assert (=> b!727247 (= res!488222 (and ((_ is Intermediate!7246) lt!322112) (not (undefined!8058 lt!322112)) (bvslt (x!62361 lt!322112) #b01111111111111111111111111111110) (bvsge (x!62361 lt!322112) #b00000000000000000000000000000000) (bvsge (x!62361 lt!322112) #b00000000000000000000000000000000)))))

(assert (=> b!727247 (=> (not res!488222) (not e!407143))))

(assert (= (and d!99393 c!79884) b!727243))

(assert (= (and d!99393 (not c!79884)) b!727241))

(assert (= (and b!727241 c!79883) b!727242))

(assert (= (and b!727241 (not c!79883)) b!727244))

(assert (= (and d!99393 c!79882) b!727240))

(assert (= (and d!99393 (not c!79882)) b!727247))

(assert (= (and b!727247 res!488222) b!727246))

(assert (= (and b!727246 (not res!488221)) b!727245))

(assert (= (and b!727245 (not res!488223)) b!727239))

(declare-fun m!681309 () Bool)

(assert (=> b!727246 m!681309))

(assert (=> b!727244 m!681217))

(declare-fun m!681311 () Bool)

(assert (=> b!727244 m!681311))

(assert (=> b!727244 m!681311))

(declare-fun m!681313 () Bool)

(assert (=> b!727244 m!681313))

(assert (=> d!99393 m!681217))

(declare-fun m!681315 () Bool)

(assert (=> d!99393 m!681315))

(assert (=> d!99393 m!681205))

(assert (=> b!727245 m!681309))

(assert (=> b!727239 m!681309))

(assert (=> b!727124 d!99393))

(declare-fun d!99395 () Bool)

(declare-fun lt!322123 () (_ BitVec 32))

(declare-fun lt!322122 () (_ BitVec 32))

(assert (=> d!99395 (= lt!322123 (bvmul (bvxor lt!322122 (bvlshr lt!322122 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99395 (= lt!322122 ((_ extract 31 0) (bvand (bvxor lt!322066 (bvlshr lt!322066 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99395 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!488224 (let ((h!14749 ((_ extract 31 0) (bvand (bvxor lt!322066 (bvlshr lt!322066 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62365 (bvmul (bvxor h!14749 (bvlshr h!14749 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62365 (bvlshr x!62365 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!488224 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!488224 #b00000000000000000000000000000000))))))

(assert (=> d!99395 (= (toIndex!0 lt!322066 mask!3328) (bvand (bvxor lt!322123 (bvlshr lt!322123 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!727124 d!99395))

(declare-fun b!727313 () Bool)

(declare-fun e!407180 () SeekEntryResult!7246)

(declare-fun e!407181 () SeekEntryResult!7246)

(assert (=> b!727313 (= e!407180 e!407181)))

(declare-fun c!79911 () Bool)

(declare-fun lt!322148 () (_ BitVec 64))

(assert (=> b!727313 (= c!79911 (= lt!322148 (select (arr!19639 a!3186) j!159)))))

(declare-fun b!727314 () Bool)

(assert (=> b!727314 (= e!407180 Undefined!7246)))

(declare-fun b!727315 () Bool)

(assert (=> b!727315 (= e!407181 (Found!7246 index!1321))))

(declare-fun e!407182 () SeekEntryResult!7246)

(declare-fun b!727316 () Bool)

(assert (=> b!727316 (= e!407182 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19639 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!727317 () Bool)

(declare-fun c!79912 () Bool)

(assert (=> b!727317 (= c!79912 (= lt!322148 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727317 (= e!407181 e!407182)))

(declare-fun b!727318 () Bool)

(assert (=> b!727318 (= e!407182 (MissingVacant!7246 resIntermediateIndex!5))))

(declare-fun d!99397 () Bool)

(declare-fun lt!322149 () SeekEntryResult!7246)

(assert (=> d!99397 (and (or ((_ is Undefined!7246) lt!322149) (not ((_ is Found!7246) lt!322149)) (and (bvsge (index!31352 lt!322149) #b00000000000000000000000000000000) (bvslt (index!31352 lt!322149) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322149) ((_ is Found!7246) lt!322149) (not ((_ is MissingVacant!7246) lt!322149)) (not (= (index!31354 lt!322149) resIntermediateIndex!5)) (and (bvsge (index!31354 lt!322149) #b00000000000000000000000000000000) (bvslt (index!31354 lt!322149) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322149) (ite ((_ is Found!7246) lt!322149) (= (select (arr!19639 a!3186) (index!31352 lt!322149)) (select (arr!19639 a!3186) j!159)) (and ((_ is MissingVacant!7246) lt!322149) (= (index!31354 lt!322149) resIntermediateIndex!5) (= (select (arr!19639 a!3186) (index!31354 lt!322149)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99397 (= lt!322149 e!407180)))

(declare-fun c!79913 () Bool)

(assert (=> d!99397 (= c!79913 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99397 (= lt!322148 (select (arr!19639 a!3186) index!1321))))

(assert (=> d!99397 (validMask!0 mask!3328)))

(assert (=> d!99397 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19639 a!3186) j!159) a!3186 mask!3328) lt!322149)))

(assert (= (and d!99397 c!79913) b!727314))

(assert (= (and d!99397 (not c!79913)) b!727313))

(assert (= (and b!727313 c!79911) b!727315))

(assert (= (and b!727313 (not c!79911)) b!727317))

(assert (= (and b!727317 c!79912) b!727318))

(assert (= (and b!727317 (not c!79912)) b!727316))

(assert (=> b!727316 m!681215))

(assert (=> b!727316 m!681215))

(assert (=> b!727316 m!681189))

(declare-fun m!681333 () Bool)

(assert (=> b!727316 m!681333))

(declare-fun m!681335 () Bool)

(assert (=> d!99397 m!681335))

(declare-fun m!681337 () Bool)

(assert (=> d!99397 m!681337))

(assert (=> d!99397 m!681301))

(assert (=> d!99397 m!681205))

(assert (=> b!727122 d!99397))

(declare-fun call!34812 () Bool)

(declare-fun bm!34809 () Bool)

(assert (=> bm!34809 (= call!34812 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!727341 () Bool)

(declare-fun e!407196 () Bool)

(declare-fun e!407197 () Bool)

(assert (=> b!727341 (= e!407196 e!407197)))

(declare-fun lt!322168 () (_ BitVec 64))

(assert (=> b!727341 (= lt!322168 (select (arr!19639 a!3186) j!159))))

(declare-fun lt!322166 () Unit!24810)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41043 (_ BitVec 64) (_ BitVec 32)) Unit!24810)

(assert (=> b!727341 (= lt!322166 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!322168 j!159))))

(assert (=> b!727341 (arrayContainsKey!0 a!3186 lt!322168 #b00000000000000000000000000000000)))

(declare-fun lt!322167 () Unit!24810)

(assert (=> b!727341 (= lt!322167 lt!322166)))

(declare-fun res!488245 () Bool)

(assert (=> b!727341 (= res!488245 (= (seekEntryOrOpen!0 (select (arr!19639 a!3186) j!159) a!3186 mask!3328) (Found!7246 j!159)))))

(assert (=> b!727341 (=> (not res!488245) (not e!407197))))

(declare-fun d!99407 () Bool)

(declare-fun res!488246 () Bool)

(declare-fun e!407198 () Bool)

(assert (=> d!99407 (=> res!488246 e!407198)))

(assert (=> d!99407 (= res!488246 (bvsge j!159 (size!20060 a!3186)))))

(assert (=> d!99407 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!407198)))

(declare-fun b!727342 () Bool)

(assert (=> b!727342 (= e!407197 call!34812)))

(declare-fun b!727343 () Bool)

(assert (=> b!727343 (= e!407196 call!34812)))

(declare-fun b!727344 () Bool)

(assert (=> b!727344 (= e!407198 e!407196)))

(declare-fun c!79921 () Bool)

(assert (=> b!727344 (= c!79921 (validKeyInArray!0 (select (arr!19639 a!3186) j!159)))))

(assert (= (and d!99407 (not res!488246)) b!727344))

(assert (= (and b!727344 c!79921) b!727341))

(assert (= (and b!727344 (not c!79921)) b!727343))

(assert (= (and b!727341 res!488245) b!727342))

(assert (= (or b!727342 b!727343) bm!34809))

(declare-fun m!681347 () Bool)

(assert (=> bm!34809 m!681347))

(assert (=> b!727341 m!681189))

(declare-fun m!681349 () Bool)

(assert (=> b!727341 m!681349))

(declare-fun m!681351 () Bool)

(assert (=> b!727341 m!681351))

(assert (=> b!727341 m!681189))

(assert (=> b!727341 m!681209))

(assert (=> b!727344 m!681189))

(assert (=> b!727344 m!681189))

(assert (=> b!727344 m!681229))

(assert (=> b!727123 d!99407))

(declare-fun d!99415 () Bool)

(assert (=> d!99415 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!322171 () Unit!24810)

(declare-fun choose!38 (array!41043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24810)

(assert (=> d!99415 (= lt!322171 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99415 (validMask!0 mask!3328)))

(assert (=> d!99415 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!322171)))

(declare-fun bs!20859 () Bool)

(assert (= bs!20859 d!99415))

(assert (=> bs!20859 m!681211))

(declare-fun m!681353 () Bool)

(assert (=> bs!20859 m!681353))

(assert (=> bs!20859 m!681205))

(assert (=> b!727123 d!99415))

(declare-fun d!99417 () Bool)

(declare-fun res!488263 () Bool)

(declare-fun e!407219 () Bool)

(assert (=> d!99417 (=> res!488263 e!407219)))

(assert (=> d!99417 (= res!488263 (= (select (arr!19639 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!99417 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!407219)))

(declare-fun b!727375 () Bool)

(declare-fun e!407220 () Bool)

(assert (=> b!727375 (= e!407219 e!407220)))

(declare-fun res!488264 () Bool)

(assert (=> b!727375 (=> (not res!488264) (not e!407220))))

(assert (=> b!727375 (= res!488264 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20060 a!3186)))))

(declare-fun b!727376 () Bool)

(assert (=> b!727376 (= e!407220 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99417 (not res!488263)) b!727375))

(assert (= (and b!727375 res!488264) b!727376))

(declare-fun m!681369 () Bool)

(assert (=> d!99417 m!681369))

(declare-fun m!681371 () Bool)

(assert (=> b!727376 m!681371))

(assert (=> b!727121 d!99417))

(declare-fun d!99423 () Bool)

(assert (=> d!99423 (= (validKeyInArray!0 (select (arr!19639 a!3186) j!159)) (and (not (= (select (arr!19639 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19639 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!727130 d!99423))

(declare-fun d!99425 () Bool)

(assert (=> d!99425 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64572 d!99425))

(declare-fun d!99431 () Bool)

(assert (=> d!99431 (= (array_inv!15413 a!3186) (bvsge (size!20060 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64572 d!99431))

(declare-fun b!727401 () Bool)

(declare-fun lt!322194 () SeekEntryResult!7246)

(assert (=> b!727401 (and (bvsge (index!31353 lt!322194) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322194) (size!20060 a!3186)))))

(declare-fun e!407234 () Bool)

(assert (=> b!727401 (= e!407234 (= (select (arr!19639 a!3186) (index!31353 lt!322194)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!727402 () Bool)

(declare-fun e!407236 () Bool)

(assert (=> b!727402 (= e!407236 (bvsge (x!62361 lt!322194) #b01111111111111111111111111111110))))

(declare-fun b!727403 () Bool)

(declare-fun e!407237 () SeekEntryResult!7246)

(declare-fun e!407235 () SeekEntryResult!7246)

(assert (=> b!727403 (= e!407237 e!407235)))

(declare-fun lt!322195 () (_ BitVec 64))

(declare-fun c!79942 () Bool)

(assert (=> b!727403 (= c!79942 (or (= lt!322195 (select (arr!19639 a!3186) j!159)) (= (bvadd lt!322195 lt!322195) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727404 () Bool)

(assert (=> b!727404 (= e!407235 (Intermediate!7246 false (toIndex!0 (select (arr!19639 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727405 () Bool)

(assert (=> b!727405 (= e!407237 (Intermediate!7246 true (toIndex!0 (select (arr!19639 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727406 () Bool)

(assert (=> b!727406 (= e!407235 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19639 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19639 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99433 () Bool)

(assert (=> d!99433 e!407236))

(declare-fun c!79941 () Bool)

(assert (=> d!99433 (= c!79941 (and ((_ is Intermediate!7246) lt!322194) (undefined!8058 lt!322194)))))

(assert (=> d!99433 (= lt!322194 e!407237)))

(declare-fun c!79943 () Bool)

(assert (=> d!99433 (= c!79943 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99433 (= lt!322195 (select (arr!19639 a!3186) (toIndex!0 (select (arr!19639 a!3186) j!159) mask!3328)))))

(assert (=> d!99433 (validMask!0 mask!3328)))

(assert (=> d!99433 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19639 a!3186) j!159) mask!3328) (select (arr!19639 a!3186) j!159) a!3186 mask!3328) lt!322194)))

(declare-fun b!727407 () Bool)

(assert (=> b!727407 (and (bvsge (index!31353 lt!322194) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322194) (size!20060 a!3186)))))

(declare-fun res!488270 () Bool)

(assert (=> b!727407 (= res!488270 (= (select (arr!19639 a!3186) (index!31353 lt!322194)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727407 (=> res!488270 e!407234)))

(declare-fun b!727408 () Bool)

(assert (=> b!727408 (and (bvsge (index!31353 lt!322194) #b00000000000000000000000000000000) (bvslt (index!31353 lt!322194) (size!20060 a!3186)))))

(declare-fun res!488268 () Bool)

(assert (=> b!727408 (= res!488268 (= (select (arr!19639 a!3186) (index!31353 lt!322194)) (select (arr!19639 a!3186) j!159)))))

(assert (=> b!727408 (=> res!488268 e!407234)))

(declare-fun e!407238 () Bool)

(assert (=> b!727408 (= e!407238 e!407234)))

(declare-fun b!727409 () Bool)

(assert (=> b!727409 (= e!407236 e!407238)))

(declare-fun res!488269 () Bool)

(assert (=> b!727409 (= res!488269 (and ((_ is Intermediate!7246) lt!322194) (not (undefined!8058 lt!322194)) (bvslt (x!62361 lt!322194) #b01111111111111111111111111111110) (bvsge (x!62361 lt!322194) #b00000000000000000000000000000000) (bvsge (x!62361 lt!322194) #b00000000000000000000000000000000)))))

(assert (=> b!727409 (=> (not res!488269) (not e!407238))))

(assert (= (and d!99433 c!79943) b!727405))

(assert (= (and d!99433 (not c!79943)) b!727403))

(assert (= (and b!727403 c!79942) b!727404))

(assert (= (and b!727403 (not c!79942)) b!727406))

(assert (= (and d!99433 c!79941) b!727402))

(assert (= (and d!99433 (not c!79941)) b!727409))

(assert (= (and b!727409 res!488269) b!727408))

(assert (= (and b!727408 (not res!488268)) b!727407))

(assert (= (and b!727407 (not res!488270)) b!727401))

(declare-fun m!681381 () Bool)

(assert (=> b!727408 m!681381))

(assert (=> b!727406 m!681197))

(declare-fun m!681383 () Bool)

(assert (=> b!727406 m!681383))

(assert (=> b!727406 m!681383))

(assert (=> b!727406 m!681189))

(declare-fun m!681385 () Bool)

(assert (=> b!727406 m!681385))

(assert (=> d!99433 m!681197))

(declare-fun m!681387 () Bool)

(assert (=> d!99433 m!681387))

(assert (=> d!99433 m!681205))

(assert (=> b!727407 m!681381))

(assert (=> b!727401 m!681381))

(assert (=> b!727120 d!99433))

(declare-fun d!99435 () Bool)

(declare-fun lt!322197 () (_ BitVec 32))

(declare-fun lt!322196 () (_ BitVec 32))

(assert (=> d!99435 (= lt!322197 (bvmul (bvxor lt!322196 (bvlshr lt!322196 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99435 (= lt!322196 ((_ extract 31 0) (bvand (bvxor (select (arr!19639 a!3186) j!159) (bvlshr (select (arr!19639 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99435 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!488224 (let ((h!14749 ((_ extract 31 0) (bvand (bvxor (select (arr!19639 a!3186) j!159) (bvlshr (select (arr!19639 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62365 (bvmul (bvxor h!14749 (bvlshr h!14749 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62365 (bvlshr x!62365 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!488224 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!488224 #b00000000000000000000000000000000))))))

(assert (=> d!99435 (= (toIndex!0 (select (arr!19639 a!3186) j!159) mask!3328) (bvand (bvxor lt!322197 (bvlshr lt!322197 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!727120 d!99435))

(declare-fun bm!34812 () Bool)

(declare-fun call!34815 () Bool)

(assert (=> bm!34812 (= call!34815 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!727412 () Bool)

(declare-fun e!407241 () Bool)

(declare-fun e!407242 () Bool)

(assert (=> b!727412 (= e!407241 e!407242)))

(declare-fun lt!322200 () (_ BitVec 64))

(assert (=> b!727412 (= lt!322200 (select (arr!19639 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!322198 () Unit!24810)

(assert (=> b!727412 (= lt!322198 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!322200 #b00000000000000000000000000000000))))

(assert (=> b!727412 (arrayContainsKey!0 a!3186 lt!322200 #b00000000000000000000000000000000)))

(declare-fun lt!322199 () Unit!24810)

(assert (=> b!727412 (= lt!322199 lt!322198)))

(declare-fun res!488273 () Bool)

(assert (=> b!727412 (= res!488273 (= (seekEntryOrOpen!0 (select (arr!19639 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7246 #b00000000000000000000000000000000)))))

(assert (=> b!727412 (=> (not res!488273) (not e!407242))))

(declare-fun d!99437 () Bool)

(declare-fun res!488274 () Bool)

(declare-fun e!407243 () Bool)

(assert (=> d!99437 (=> res!488274 e!407243)))

(assert (=> d!99437 (= res!488274 (bvsge #b00000000000000000000000000000000 (size!20060 a!3186)))))

(assert (=> d!99437 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!407243)))

(declare-fun b!727413 () Bool)

(assert (=> b!727413 (= e!407242 call!34815)))

(declare-fun b!727414 () Bool)

(assert (=> b!727414 (= e!407241 call!34815)))

(declare-fun b!727415 () Bool)

(assert (=> b!727415 (= e!407243 e!407241)))

(declare-fun c!79944 () Bool)

(assert (=> b!727415 (= c!79944 (validKeyInArray!0 (select (arr!19639 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99437 (not res!488274)) b!727415))

(assert (= (and b!727415 c!79944) b!727412))

(assert (= (and b!727415 (not c!79944)) b!727414))

(assert (= (and b!727412 res!488273) b!727413))

(assert (= (or b!727413 b!727414) bm!34812))

(declare-fun m!681389 () Bool)

(assert (=> bm!34812 m!681389))

(assert (=> b!727412 m!681369))

(declare-fun m!681391 () Bool)

(assert (=> b!727412 m!681391))

(declare-fun m!681393 () Bool)

(assert (=> b!727412 m!681393))

(assert (=> b!727412 m!681369))

(declare-fun m!681395 () Bool)

(assert (=> b!727412 m!681395))

(assert (=> b!727415 m!681369))

(assert (=> b!727415 m!681369))

(declare-fun m!681397 () Bool)

(assert (=> b!727415 m!681397))

(assert (=> b!727118 d!99437))

(declare-fun b!727416 () Bool)

(declare-fun e!407244 () SeekEntryResult!7246)

(declare-fun e!407245 () SeekEntryResult!7246)

(assert (=> b!727416 (= e!407244 e!407245)))

(declare-fun c!79945 () Bool)

(declare-fun lt!322201 () (_ BitVec 64))

(assert (=> b!727416 (= c!79945 (= lt!322201 (select (arr!19639 a!3186) j!159)))))

(declare-fun b!727417 () Bool)

(assert (=> b!727417 (= e!407244 Undefined!7246)))

(declare-fun b!727418 () Bool)

(assert (=> b!727418 (= e!407245 (Found!7246 resIntermediateIndex!5))))

(declare-fun e!407246 () SeekEntryResult!7246)

(declare-fun b!727419 () Bool)

(assert (=> b!727419 (= e!407246 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19639 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!727420 () Bool)

(declare-fun c!79946 () Bool)

(assert (=> b!727420 (= c!79946 (= lt!322201 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727420 (= e!407245 e!407246)))

(declare-fun b!727421 () Bool)

(assert (=> b!727421 (= e!407246 (MissingVacant!7246 resIntermediateIndex!5))))

(declare-fun d!99439 () Bool)

(declare-fun lt!322202 () SeekEntryResult!7246)

(assert (=> d!99439 (and (or ((_ is Undefined!7246) lt!322202) (not ((_ is Found!7246) lt!322202)) (and (bvsge (index!31352 lt!322202) #b00000000000000000000000000000000) (bvslt (index!31352 lt!322202) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322202) ((_ is Found!7246) lt!322202) (not ((_ is MissingVacant!7246) lt!322202)) (not (= (index!31354 lt!322202) resIntermediateIndex!5)) (and (bvsge (index!31354 lt!322202) #b00000000000000000000000000000000) (bvslt (index!31354 lt!322202) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322202) (ite ((_ is Found!7246) lt!322202) (= (select (arr!19639 a!3186) (index!31352 lt!322202)) (select (arr!19639 a!3186) j!159)) (and ((_ is MissingVacant!7246) lt!322202) (= (index!31354 lt!322202) resIntermediateIndex!5) (= (select (arr!19639 a!3186) (index!31354 lt!322202)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99439 (= lt!322202 e!407244)))

(declare-fun c!79947 () Bool)

(assert (=> d!99439 (= c!79947 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!99439 (= lt!322201 (select (arr!19639 a!3186) resIntermediateIndex!5))))

(assert (=> d!99439 (validMask!0 mask!3328)))

(assert (=> d!99439 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19639 a!3186) j!159) a!3186 mask!3328) lt!322202)))

(assert (= (and d!99439 c!79947) b!727417))

(assert (= (and d!99439 (not c!79947)) b!727416))

(assert (= (and b!727416 c!79945) b!727418))

(assert (= (and b!727416 (not c!79945)) b!727420))

(assert (= (and b!727420 c!79946) b!727421))

(assert (= (and b!727420 (not c!79946)) b!727419))

(declare-fun m!681399 () Bool)

(assert (=> b!727419 m!681399))

(assert (=> b!727419 m!681399))

(assert (=> b!727419 m!681189))

(declare-fun m!681401 () Bool)

(assert (=> b!727419 m!681401))

(declare-fun m!681403 () Bool)

(assert (=> d!99439 m!681403))

(declare-fun m!681405 () Bool)

(assert (=> d!99439 m!681405))

(assert (=> d!99439 m!681195))

(assert (=> d!99439 m!681205))

(assert (=> b!727119 d!99439))

(declare-fun bm!34816 () Bool)

(declare-fun call!34819 () Bool)

(declare-fun c!79957 () Bool)

(assert (=> bm!34816 (= call!34819 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79957 (Cons!13690 (select (arr!19639 a!3186) #b00000000000000000000000000000000) Nil!13691) Nil!13691)))))

(declare-fun b!727448 () Bool)

(declare-fun e!407264 () Bool)

(assert (=> b!727448 (= e!407264 call!34819)))

(declare-fun b!727449 () Bool)

(declare-fun e!407265 () Bool)

(declare-fun contains!4052 (List!13694 (_ BitVec 64)) Bool)

(assert (=> b!727449 (= e!407265 (contains!4052 Nil!13691 (select (arr!19639 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!727450 () Bool)

(assert (=> b!727450 (= e!407264 call!34819)))

(declare-fun b!727451 () Bool)

(declare-fun e!407267 () Bool)

(declare-fun e!407266 () Bool)

(assert (=> b!727451 (= e!407267 e!407266)))

(declare-fun res!488284 () Bool)

(assert (=> b!727451 (=> (not res!488284) (not e!407266))))

(assert (=> b!727451 (= res!488284 (not e!407265))))

(declare-fun res!488285 () Bool)

(assert (=> b!727451 (=> (not res!488285) (not e!407265))))

(assert (=> b!727451 (= res!488285 (validKeyInArray!0 (select (arr!19639 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!99441 () Bool)

(declare-fun res!488283 () Bool)

(assert (=> d!99441 (=> res!488283 e!407267)))

(assert (=> d!99441 (= res!488283 (bvsge #b00000000000000000000000000000000 (size!20060 a!3186)))))

(assert (=> d!99441 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13691) e!407267)))

(declare-fun b!727452 () Bool)

(assert (=> b!727452 (= e!407266 e!407264)))

(assert (=> b!727452 (= c!79957 (validKeyInArray!0 (select (arr!19639 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99441 (not res!488283)) b!727451))

(assert (= (and b!727451 res!488285) b!727449))

(assert (= (and b!727451 res!488284) b!727452))

(assert (= (and b!727452 c!79957) b!727450))

(assert (= (and b!727452 (not c!79957)) b!727448))

(assert (= (or b!727450 b!727448) bm!34816))

(assert (=> bm!34816 m!681369))

(declare-fun m!681415 () Bool)

(assert (=> bm!34816 m!681415))

(assert (=> b!727449 m!681369))

(assert (=> b!727449 m!681369))

(declare-fun m!681417 () Bool)

(assert (=> b!727449 m!681417))

(assert (=> b!727451 m!681369))

(assert (=> b!727451 m!681369))

(assert (=> b!727451 m!681397))

(assert (=> b!727452 m!681369))

(assert (=> b!727452 m!681369))

(assert (=> b!727452 m!681397))

(assert (=> b!727128 d!99441))

(declare-fun d!99447 () Bool)

(assert (=> d!99447 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!727126 d!99447))

(declare-fun d!99449 () Bool)

(declare-fun lt!322217 () (_ BitVec 32))

(assert (=> d!99449 (and (bvsge lt!322217 #b00000000000000000000000000000000) (bvslt lt!322217 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99449 (= lt!322217 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99449 (validMask!0 mask!3328)))

(assert (=> d!99449 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!322217)))

(declare-fun bs!20861 () Bool)

(assert (= bs!20861 d!99449))

(declare-fun m!681419 () Bool)

(assert (=> bs!20861 m!681419))

(assert (=> bs!20861 m!681205))

(assert (=> b!727127 d!99449))

(declare-fun b!727459 () Bool)

(declare-fun e!407271 () SeekEntryResult!7246)

(declare-fun lt!322222 () SeekEntryResult!7246)

(assert (=> b!727459 (= e!407271 (Found!7246 (index!31353 lt!322222)))))

(declare-fun e!407272 () SeekEntryResult!7246)

(declare-fun b!727460 () Bool)

(assert (=> b!727460 (= e!407272 (seekKeyOrZeroReturnVacant!0 (x!62361 lt!322222) (index!31353 lt!322222) (index!31353 lt!322222) (select (arr!19639 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!99451 () Bool)

(declare-fun lt!322223 () SeekEntryResult!7246)

(assert (=> d!99451 (and (or ((_ is Undefined!7246) lt!322223) (not ((_ is Found!7246) lt!322223)) (and (bvsge (index!31352 lt!322223) #b00000000000000000000000000000000) (bvslt (index!31352 lt!322223) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322223) ((_ is Found!7246) lt!322223) (not ((_ is MissingZero!7246) lt!322223)) (and (bvsge (index!31351 lt!322223) #b00000000000000000000000000000000) (bvslt (index!31351 lt!322223) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322223) ((_ is Found!7246) lt!322223) ((_ is MissingZero!7246) lt!322223) (not ((_ is MissingVacant!7246) lt!322223)) (and (bvsge (index!31354 lt!322223) #b00000000000000000000000000000000) (bvslt (index!31354 lt!322223) (size!20060 a!3186)))) (or ((_ is Undefined!7246) lt!322223) (ite ((_ is Found!7246) lt!322223) (= (select (arr!19639 a!3186) (index!31352 lt!322223)) (select (arr!19639 a!3186) j!159)) (ite ((_ is MissingZero!7246) lt!322223) (= (select (arr!19639 a!3186) (index!31351 lt!322223)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7246) lt!322223) (= (select (arr!19639 a!3186) (index!31354 lt!322223)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!407273 () SeekEntryResult!7246)

(assert (=> d!99451 (= lt!322223 e!407273)))

(declare-fun c!79962 () Bool)

(assert (=> d!99451 (= c!79962 (and ((_ is Intermediate!7246) lt!322222) (undefined!8058 lt!322222)))))

(assert (=> d!99451 (= lt!322222 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19639 a!3186) j!159) mask!3328) (select (arr!19639 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99451 (validMask!0 mask!3328)))

(assert (=> d!99451 (= (seekEntryOrOpen!0 (select (arr!19639 a!3186) j!159) a!3186 mask!3328) lt!322223)))

(declare-fun b!727461 () Bool)

(declare-fun c!79963 () Bool)

(declare-fun lt!322221 () (_ BitVec 64))

(assert (=> b!727461 (= c!79963 (= lt!322221 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727461 (= e!407271 e!407272)))

(declare-fun b!727462 () Bool)

(assert (=> b!727462 (= e!407273 Undefined!7246)))

(declare-fun b!727463 () Bool)

(assert (=> b!727463 (= e!407273 e!407271)))

(assert (=> b!727463 (= lt!322221 (select (arr!19639 a!3186) (index!31353 lt!322222)))))

(declare-fun c!79961 () Bool)

(assert (=> b!727463 (= c!79961 (= lt!322221 (select (arr!19639 a!3186) j!159)))))

(declare-fun b!727464 () Bool)

(assert (=> b!727464 (= e!407272 (MissingZero!7246 (index!31353 lt!322222)))))

(assert (= (and d!99451 c!79962) b!727462))

(assert (= (and d!99451 (not c!79962)) b!727463))

(assert (= (and b!727463 c!79961) b!727459))

(assert (= (and b!727463 (not c!79961)) b!727461))

(assert (= (and b!727461 c!79963) b!727464))

(assert (= (and b!727461 (not c!79963)) b!727460))

(assert (=> b!727460 m!681189))

(declare-fun m!681435 () Bool)

(assert (=> b!727460 m!681435))

(declare-fun m!681437 () Bool)

(assert (=> d!99451 m!681437))

(declare-fun m!681439 () Bool)

(assert (=> d!99451 m!681439))

(assert (=> d!99451 m!681205))

(assert (=> d!99451 m!681197))

(assert (=> d!99451 m!681189))

(assert (=> d!99451 m!681199))

(declare-fun m!681441 () Bool)

(assert (=> d!99451 m!681441))

(assert (=> d!99451 m!681189))

(assert (=> d!99451 m!681197))

(declare-fun m!681443 () Bool)

(assert (=> b!727463 m!681443))

(assert (=> b!727116 d!99451))

(check-sat (not b!727412) (not b!727460) (not b!727316) (not b!727198) (not b!727451) (not d!99449) (not b!727406) (not d!99393) (not b!727376) (not d!99433) (not b!727244) (not b!727449) (not bm!34812) (not b!727452) (not d!99383) (not b!727419) (not bm!34816) (not b!727226) (not b!727344) (not d!99439) (not d!99391) (not bm!34809) (not b!727235) (not d!99397) (not d!99415) (not b!727341) (not d!99385) (not d!99451) (not b!727415))
(check-sat)
