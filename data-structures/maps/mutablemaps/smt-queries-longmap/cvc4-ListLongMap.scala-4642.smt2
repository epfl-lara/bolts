; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64574 () Bool)

(assert start!64574)

(declare-fun b!727167 () Bool)

(declare-fun res!488197 () Bool)

(declare-fun e!407109 () Bool)

(assert (=> b!727167 (=> (not res!488197) (not e!407109))))

(declare-datatypes ((array!41045 0))(
  ( (array!41046 (arr!19640 (Array (_ BitVec 32) (_ BitVec 64))) (size!20061 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41045)

(declare-datatypes ((List!13695 0))(
  ( (Nil!13692) (Cons!13691 (h!14748 (_ BitVec 64)) (t!20018 List!13695)) )
))
(declare-fun arrayNoDuplicates!0 (array!41045 (_ BitVec 32) List!13695) Bool)

(assert (=> b!727167 (= res!488197 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13692))))

(declare-fun b!727168 () Bool)

(declare-fun e!407104 () Bool)

(declare-fun e!407103 () Bool)

(assert (=> b!727168 (= e!407104 (not e!407103))))

(declare-fun res!488208 () Bool)

(assert (=> b!727168 (=> res!488208 e!407103)))

(declare-datatypes ((SeekEntryResult!7247 0))(
  ( (MissingZero!7247 (index!31355 (_ BitVec 32))) (Found!7247 (index!31356 (_ BitVec 32))) (Intermediate!7247 (undefined!8059 Bool) (index!31357 (_ BitVec 32)) (x!62362 (_ BitVec 32))) (Undefined!7247) (MissingVacant!7247 (index!31358 (_ BitVec 32))) )
))
(declare-fun lt!322090 () SeekEntryResult!7247)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!727168 (= res!488208 (or (not (is-Intermediate!7247 lt!322090)) (bvsge x!1131 (x!62362 lt!322090))))))

(declare-fun e!407108 () Bool)

(assert (=> b!727168 e!407108))

(declare-fun res!488195 () Bool)

(assert (=> b!727168 (=> (not res!488195) (not e!407108))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41045 (_ BitVec 32)) Bool)

(assert (=> b!727168 (= res!488195 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24812 0))(
  ( (Unit!24813) )
))
(declare-fun lt!322091 () Unit!24812)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24812)

(assert (=> b!727168 (= lt!322091 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727169 () Bool)

(declare-fun res!488203 () Bool)

(declare-fun e!407106 () Bool)

(assert (=> b!727169 (=> (not res!488203) (not e!407106))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!727169 (= res!488203 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19640 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727170 () Bool)

(declare-fun res!488193 () Bool)

(assert (=> b!727170 (=> (not res!488193) (not e!407109))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!727170 (= res!488193 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20061 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20061 a!3186))))))

(declare-fun b!727171 () Bool)

(declare-fun res!488198 () Bool)

(declare-fun e!407101 () Bool)

(assert (=> b!727171 (=> (not res!488198) (not e!407101))))

(assert (=> b!727171 (= res!488198 (and (= (size!20061 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20061 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20061 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727172 () Bool)

(declare-fun res!488199 () Bool)

(assert (=> b!727172 (=> (not res!488199) (not e!407109))))

(assert (=> b!727172 (= res!488199 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!727173 () Bool)

(declare-fun res!488205 () Bool)

(assert (=> b!727173 (=> (not res!488205) (not e!407101))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727173 (= res!488205 (validKeyInArray!0 k!2102))))

(declare-fun b!727174 () Bool)

(declare-fun res!488207 () Bool)

(assert (=> b!727174 (=> (not res!488207) (not e!407106))))

(declare-fun e!407107 () Bool)

(assert (=> b!727174 (= res!488207 e!407107)))

(declare-fun c!79860 () Bool)

(assert (=> b!727174 (= c!79860 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727175 () Bool)

(assert (=> b!727175 (= e!407109 e!407106)))

(declare-fun res!488194 () Bool)

(assert (=> b!727175 (=> (not res!488194) (not e!407106))))

(declare-fun lt!322086 () SeekEntryResult!7247)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41045 (_ BitVec 32)) SeekEntryResult!7247)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727175 (= res!488194 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19640 a!3186) j!159) mask!3328) (select (arr!19640 a!3186) j!159) a!3186 mask!3328) lt!322086))))

(assert (=> b!727175 (= lt!322086 (Intermediate!7247 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727176 () Bool)

(declare-fun res!488201 () Bool)

(assert (=> b!727176 (=> (not res!488201) (not e!407101))))

(declare-fun arrayContainsKey!0 (array!41045 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727176 (= res!488201 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727177 () Bool)

(declare-fun e!407102 () Bool)

(assert (=> b!727177 (= e!407108 e!407102)))

(declare-fun res!488204 () Bool)

(assert (=> b!727177 (=> (not res!488204) (not e!407102))))

(declare-fun lt!322087 () SeekEntryResult!7247)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41045 (_ BitVec 32)) SeekEntryResult!7247)

(assert (=> b!727177 (= res!488204 (= (seekEntryOrOpen!0 (select (arr!19640 a!3186) j!159) a!3186 mask!3328) lt!322087))))

(assert (=> b!727177 (= lt!322087 (Found!7247 j!159))))

(declare-fun b!727178 () Bool)

(declare-fun res!488206 () Bool)

(assert (=> b!727178 (=> (not res!488206) (not e!407101))))

(assert (=> b!727178 (= res!488206 (validKeyInArray!0 (select (arr!19640 a!3186) j!159)))))

(declare-fun b!727179 () Bool)

(assert (=> b!727179 (= e!407106 e!407104)))

(declare-fun res!488202 () Bool)

(assert (=> b!727179 (=> (not res!488202) (not e!407104))))

(declare-fun lt!322088 () SeekEntryResult!7247)

(assert (=> b!727179 (= res!488202 (= lt!322088 lt!322090))))

(declare-fun lt!322093 () (_ BitVec 64))

(declare-fun lt!322094 () array!41045)

(assert (=> b!727179 (= lt!322090 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322093 lt!322094 mask!3328))))

(assert (=> b!727179 (= lt!322088 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322093 mask!3328) lt!322093 lt!322094 mask!3328))))

(assert (=> b!727179 (= lt!322093 (select (store (arr!19640 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!727179 (= lt!322094 (array!41046 (store (arr!19640 a!3186) i!1173 k!2102) (size!20061 a!3186)))))

(declare-fun b!727180 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41045 (_ BitVec 32)) SeekEntryResult!7247)

(assert (=> b!727180 (= e!407107 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19640 a!3186) j!159) a!3186 mask!3328) (Found!7247 j!159)))))

(declare-fun b!727181 () Bool)

(assert (=> b!727181 (= e!407102 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19640 a!3186) j!159) a!3186 mask!3328) lt!322087))))

(declare-fun b!727182 () Bool)

(assert (=> b!727182 (= e!407107 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19640 a!3186) j!159) a!3186 mask!3328) lt!322086))))

(declare-fun res!488200 () Bool)

(assert (=> start!64574 (=> (not res!488200) (not e!407101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64574 (= res!488200 (validMask!0 mask!3328))))

(assert (=> start!64574 e!407101))

(assert (=> start!64574 true))

(declare-fun array_inv!15414 (array!41045) Bool)

(assert (=> start!64574 (array_inv!15414 a!3186)))

(declare-fun b!727183 () Bool)

(assert (=> b!727183 (= e!407101 e!407109)))

(declare-fun res!488196 () Bool)

(assert (=> b!727183 (=> (not res!488196) (not e!407109))))

(declare-fun lt!322092 () SeekEntryResult!7247)

(assert (=> b!727183 (= res!488196 (or (= lt!322092 (MissingZero!7247 i!1173)) (= lt!322092 (MissingVacant!7247 i!1173))))))

(assert (=> b!727183 (= lt!322092 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!727184 () Bool)

(declare-fun lt!322089 () (_ BitVec 32))

(assert (=> b!727184 (= e!407103 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (and (bvsge lt!322089 #b00000000000000000000000000000000) (bvslt lt!322089 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727184 (= lt!322089 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!64574 res!488200) b!727171))

(assert (= (and b!727171 res!488198) b!727178))

(assert (= (and b!727178 res!488206) b!727173))

(assert (= (and b!727173 res!488205) b!727176))

(assert (= (and b!727176 res!488201) b!727183))

(assert (= (and b!727183 res!488196) b!727172))

(assert (= (and b!727172 res!488199) b!727167))

(assert (= (and b!727167 res!488197) b!727170))

(assert (= (and b!727170 res!488193) b!727175))

(assert (= (and b!727175 res!488194) b!727169))

(assert (= (and b!727169 res!488203) b!727174))

(assert (= (and b!727174 c!79860) b!727182))

(assert (= (and b!727174 (not c!79860)) b!727180))

(assert (= (and b!727174 res!488207) b!727179))

(assert (= (and b!727179 res!488202) b!727168))

(assert (= (and b!727168 res!488195) b!727177))

(assert (= (and b!727177 res!488204) b!727181))

(assert (= (and b!727168 (not res!488208)) b!727184))

(declare-fun m!681235 () Bool)

(assert (=> b!727173 m!681235))

(declare-fun m!681237 () Bool)

(assert (=> b!727167 m!681237))

(declare-fun m!681239 () Bool)

(assert (=> b!727180 m!681239))

(assert (=> b!727180 m!681239))

(declare-fun m!681241 () Bool)

(assert (=> b!727180 m!681241))

(declare-fun m!681243 () Bool)

(assert (=> b!727179 m!681243))

(assert (=> b!727179 m!681243))

(declare-fun m!681245 () Bool)

(assert (=> b!727179 m!681245))

(declare-fun m!681247 () Bool)

(assert (=> b!727179 m!681247))

(declare-fun m!681249 () Bool)

(assert (=> b!727179 m!681249))

(declare-fun m!681251 () Bool)

(assert (=> b!727179 m!681251))

(declare-fun m!681253 () Bool)

(assert (=> b!727183 m!681253))

(declare-fun m!681255 () Bool)

(assert (=> b!727176 m!681255))

(declare-fun m!681257 () Bool)

(assert (=> b!727184 m!681257))

(assert (=> b!727177 m!681239))

(assert (=> b!727177 m!681239))

(declare-fun m!681259 () Bool)

(assert (=> b!727177 m!681259))

(declare-fun m!681261 () Bool)

(assert (=> b!727172 m!681261))

(assert (=> b!727175 m!681239))

(assert (=> b!727175 m!681239))

(declare-fun m!681263 () Bool)

(assert (=> b!727175 m!681263))

(assert (=> b!727175 m!681263))

(assert (=> b!727175 m!681239))

(declare-fun m!681265 () Bool)

(assert (=> b!727175 m!681265))

(assert (=> b!727182 m!681239))

(assert (=> b!727182 m!681239))

(declare-fun m!681267 () Bool)

(assert (=> b!727182 m!681267))

(declare-fun m!681269 () Bool)

(assert (=> start!64574 m!681269))

(declare-fun m!681271 () Bool)

(assert (=> start!64574 m!681271))

(assert (=> b!727181 m!681239))

(assert (=> b!727181 m!681239))

(declare-fun m!681273 () Bool)

(assert (=> b!727181 m!681273))

(assert (=> b!727178 m!681239))

(assert (=> b!727178 m!681239))

(declare-fun m!681275 () Bool)

(assert (=> b!727178 m!681275))

(declare-fun m!681277 () Bool)

(assert (=> b!727169 m!681277))

(declare-fun m!681279 () Bool)

(assert (=> b!727168 m!681279))

(declare-fun m!681281 () Bool)

(assert (=> b!727168 m!681281))

(push 1)

(assert (not b!727178))

(assert (not b!727180))

(assert (not b!727167))

(assert (not b!727173))

(assert (not b!727183))

(assert (not start!64574))

(assert (not b!727181))

(assert (not b!727168))

(assert (not b!727175))

(assert (not b!727179))

(assert (not b!727172))

(assert (not b!727177))

(assert (not b!727176))

(assert (not b!727184))

(assert (not b!727182))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!727288 () Bool)

(declare-fun e!407165 () SeekEntryResult!7247)

(assert (=> b!727288 (= e!407165 (MissingVacant!7247 resIntermediateIndex!5))))

(declare-fun b!727289 () Bool)

(declare-fun e!407167 () SeekEntryResult!7247)

(assert (=> b!727289 (= e!407167 Undefined!7247)))

(declare-fun b!727290 () Bool)

(declare-fun e!407166 () SeekEntryResult!7247)

(assert (=> b!727290 (= e!407166 (Found!7247 index!1321))))

(declare-fun b!727291 () Bool)

(declare-fun c!79901 () Bool)

(declare-fun lt!322135 () (_ BitVec 64))

(assert (=> b!727291 (= c!79901 (= lt!322135 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727291 (= e!407166 e!407165)))

(declare-fun b!727292 () Bool)

(assert (=> b!727292 (= e!407165 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19640 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!727287 () Bool)

(assert (=> b!727287 (= e!407167 e!407166)))

(declare-fun c!79900 () Bool)

(assert (=> b!727287 (= c!79900 (= lt!322135 (select (arr!19640 a!3186) j!159)))))

(declare-fun d!99389 () Bool)

(declare-fun lt!322134 () SeekEntryResult!7247)

(assert (=> d!99389 (and (or (is-Undefined!7247 lt!322134) (not (is-Found!7247 lt!322134)) (and (bvsge (index!31356 lt!322134) #b00000000000000000000000000000000) (bvslt (index!31356 lt!322134) (size!20061 a!3186)))) (or (is-Undefined!7247 lt!322134) (is-Found!7247 lt!322134) (not (is-MissingVacant!7247 lt!322134)) (not (= (index!31358 lt!322134) resIntermediateIndex!5)) (and (bvsge (index!31358 lt!322134) #b00000000000000000000000000000000) (bvslt (index!31358 lt!322134) (size!20061 a!3186)))) (or (is-Undefined!7247 lt!322134) (ite (is-Found!7247 lt!322134) (= (select (arr!19640 a!3186) (index!31356 lt!322134)) (select (arr!19640 a!3186) j!159)) (and (is-MissingVacant!7247 lt!322134) (= (index!31358 lt!322134) resIntermediateIndex!5) (= (select (arr!19640 a!3186) (index!31358 lt!322134)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99389 (= lt!322134 e!407167)))

(declare-fun c!79902 () Bool)

(assert (=> d!99389 (= c!79902 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99389 (= lt!322135 (select (arr!19640 a!3186) index!1321))))

(assert (=> d!99389 (validMask!0 mask!3328)))

(assert (=> d!99389 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19640 a!3186) j!159) a!3186 mask!3328) lt!322134)))

(assert (= (and d!99389 c!79902) b!727289))

(assert (= (and d!99389 (not c!79902)) b!727287))

(assert (= (and b!727287 c!79900) b!727290))

(assert (= (and b!727287 (not c!79900)) b!727291))

(assert (= (and b!727291 c!79901) b!727288))

(assert (= (and b!727291 (not c!79901)) b!727292))

(assert (=> b!727292 m!681257))

(assert (=> b!727292 m!681257))

(assert (=> b!727292 m!681239))

(declare-fun m!681325 () Bool)

(assert (=> b!727292 m!681325))

(declare-fun m!681327 () Bool)

(assert (=> d!99389 m!681327))

(declare-fun m!681329 () Bool)

(assert (=> d!99389 m!681329))

(declare-fun m!681331 () Bool)

(assert (=> d!99389 m!681331))

(assert (=> d!99389 m!681269))

(assert (=> b!727180 d!99389))

(declare-fun d!99403 () Bool)

(assert (=> d!99403 (= (validKeyInArray!0 (select (arr!19640 a!3186) j!159)) (and (not (= (select (arr!19640 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19640 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!727178 d!99403))

(declare-fun b!727353 () Bool)

(declare-fun e!407207 () SeekEntryResult!7247)

(declare-fun e!407209 () SeekEntryResult!7247)

(assert (=> b!727353 (= e!407207 e!407209)))

(declare-fun c!79925 () Bool)

(declare-fun lt!322172 () (_ BitVec 64))

(assert (=> b!727353 (= c!79925 (or (= lt!322172 lt!322093) (= (bvadd lt!322172 lt!322172) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727354 () Bool)

(assert (=> b!727354 (= e!407209 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!322093 lt!322094 mask!3328))))

(declare-fun b!727355 () Bool)

(declare-fun lt!322173 () SeekEntryResult!7247)

(assert (=> b!727355 (and (bvsge (index!31357 lt!322173) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322173) (size!20061 lt!322094)))))

(declare-fun res!488253 () Bool)

(assert (=> b!727355 (= res!488253 (= (select (arr!19640 lt!322094) (index!31357 lt!322173)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!407205 () Bool)

(assert (=> b!727355 (=> res!488253 e!407205)))

(declare-fun b!727356 () Bool)

(assert (=> b!727356 (= e!407207 (Intermediate!7247 true index!1321 x!1131))))

(declare-fun b!727357 () Bool)

(declare-fun e!407206 () Bool)

(assert (=> b!727357 (= e!407206 (bvsge (x!62362 lt!322173) #b01111111111111111111111111111110))))

(declare-fun b!727358 () Bool)

(assert (=> b!727358 (= e!407209 (Intermediate!7247 false index!1321 x!1131))))

(declare-fun d!99405 () Bool)

(assert (=> d!99405 e!407206))

(declare-fun c!79926 () Bool)

(assert (=> d!99405 (= c!79926 (and (is-Intermediate!7247 lt!322173) (undefined!8059 lt!322173)))))

(assert (=> d!99405 (= lt!322173 e!407207)))

(declare-fun c!79924 () Bool)

(assert (=> d!99405 (= c!79924 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99405 (= lt!322172 (select (arr!19640 lt!322094) index!1321))))

(assert (=> d!99405 (validMask!0 mask!3328)))

(assert (=> d!99405 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322093 lt!322094 mask!3328) lt!322173)))

(declare-fun b!727359 () Bool)

(assert (=> b!727359 (and (bvsge (index!31357 lt!322173) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322173) (size!20061 lt!322094)))))

(declare-fun res!488255 () Bool)

(assert (=> b!727359 (= res!488255 (= (select (arr!19640 lt!322094) (index!31357 lt!322173)) lt!322093))))

(assert (=> b!727359 (=> res!488255 e!407205)))

(declare-fun e!407208 () Bool)

(assert (=> b!727359 (= e!407208 e!407205)))

(declare-fun b!727360 () Bool)

(assert (=> b!727360 (= e!407206 e!407208)))

(declare-fun res!488254 () Bool)

(assert (=> b!727360 (= res!488254 (and (is-Intermediate!7247 lt!322173) (not (undefined!8059 lt!322173)) (bvslt (x!62362 lt!322173) #b01111111111111111111111111111110) (bvsge (x!62362 lt!322173) #b00000000000000000000000000000000) (bvsge (x!62362 lt!322173) x!1131)))))

(assert (=> b!727360 (=> (not res!488254) (not e!407208))))

(declare-fun b!727361 () Bool)

(assert (=> b!727361 (and (bvsge (index!31357 lt!322173) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322173) (size!20061 lt!322094)))))

(assert (=> b!727361 (= e!407205 (= (select (arr!19640 lt!322094) (index!31357 lt!322173)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!99405 c!79924) b!727356))

(assert (= (and d!99405 (not c!79924)) b!727353))

(assert (= (and b!727353 c!79925) b!727358))

(assert (= (and b!727353 (not c!79925)) b!727354))

(assert (= (and d!99405 c!79926) b!727357))

(assert (= (and d!99405 (not c!79926)) b!727360))

(assert (= (and b!727360 res!488254) b!727359))

(assert (= (and b!727359 (not res!488255)) b!727355))

(assert (= (and b!727355 (not res!488253)) b!727361))

(declare-fun m!681355 () Bool)

(assert (=> b!727355 m!681355))

(assert (=> b!727354 m!681257))

(assert (=> b!727354 m!681257))

(declare-fun m!681357 () Bool)

(assert (=> b!727354 m!681357))

(assert (=> b!727359 m!681355))

(assert (=> b!727361 m!681355))

(declare-fun m!681359 () Bool)

(assert (=> d!99405 m!681359))

(assert (=> d!99405 m!681269))

(assert (=> b!727179 d!99405))

(declare-fun b!727362 () Bool)

(declare-fun e!407212 () SeekEntryResult!7247)

(declare-fun e!407214 () SeekEntryResult!7247)

(assert (=> b!727362 (= e!407212 e!407214)))

(declare-fun c!79928 () Bool)

(declare-fun lt!322174 () (_ BitVec 64))

(assert (=> b!727362 (= c!79928 (or (= lt!322174 lt!322093) (= (bvadd lt!322174 lt!322174) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727363 () Bool)

(assert (=> b!727363 (= e!407214 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!322093 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!322093 lt!322094 mask!3328))))

(declare-fun b!727364 () Bool)

(declare-fun lt!322175 () SeekEntryResult!7247)

(assert (=> b!727364 (and (bvsge (index!31357 lt!322175) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322175) (size!20061 lt!322094)))))

(declare-fun res!488256 () Bool)

(assert (=> b!727364 (= res!488256 (= (select (arr!19640 lt!322094) (index!31357 lt!322175)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!407210 () Bool)

(assert (=> b!727364 (=> res!488256 e!407210)))

(declare-fun b!727365 () Bool)

(assert (=> b!727365 (= e!407212 (Intermediate!7247 true (toIndex!0 lt!322093 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727366 () Bool)

(declare-fun e!407211 () Bool)

(assert (=> b!727366 (= e!407211 (bvsge (x!62362 lt!322175) #b01111111111111111111111111111110))))

(declare-fun b!727367 () Bool)

(assert (=> b!727367 (= e!407214 (Intermediate!7247 false (toIndex!0 lt!322093 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!99419 () Bool)

(assert (=> d!99419 e!407211))

(declare-fun c!79929 () Bool)

(assert (=> d!99419 (= c!79929 (and (is-Intermediate!7247 lt!322175) (undefined!8059 lt!322175)))))

(assert (=> d!99419 (= lt!322175 e!407212)))

(declare-fun c!79927 () Bool)

(assert (=> d!99419 (= c!79927 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99419 (= lt!322174 (select (arr!19640 lt!322094) (toIndex!0 lt!322093 mask!3328)))))

(assert (=> d!99419 (validMask!0 mask!3328)))

(assert (=> d!99419 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322093 mask!3328) lt!322093 lt!322094 mask!3328) lt!322175)))

(declare-fun b!727368 () Bool)

(assert (=> b!727368 (and (bvsge (index!31357 lt!322175) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322175) (size!20061 lt!322094)))))

(declare-fun res!488258 () Bool)

(assert (=> b!727368 (= res!488258 (= (select (arr!19640 lt!322094) (index!31357 lt!322175)) lt!322093))))

(assert (=> b!727368 (=> res!488258 e!407210)))

(declare-fun e!407213 () Bool)

(assert (=> b!727368 (= e!407213 e!407210)))

(declare-fun b!727369 () Bool)

(assert (=> b!727369 (= e!407211 e!407213)))

(declare-fun res!488257 () Bool)

(assert (=> b!727369 (= res!488257 (and (is-Intermediate!7247 lt!322175) (not (undefined!8059 lt!322175)) (bvslt (x!62362 lt!322175) #b01111111111111111111111111111110) (bvsge (x!62362 lt!322175) #b00000000000000000000000000000000) (bvsge (x!62362 lt!322175) #b00000000000000000000000000000000)))))

(assert (=> b!727369 (=> (not res!488257) (not e!407213))))

(declare-fun b!727370 () Bool)

(assert (=> b!727370 (and (bvsge (index!31357 lt!322175) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322175) (size!20061 lt!322094)))))

(assert (=> b!727370 (= e!407210 (= (select (arr!19640 lt!322094) (index!31357 lt!322175)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!99419 c!79927) b!727365))

(assert (= (and d!99419 (not c!79927)) b!727362))

(assert (= (and b!727362 c!79928) b!727367))

(assert (= (and b!727362 (not c!79928)) b!727363))

(assert (= (and d!99419 c!79929) b!727366))

(assert (= (and d!99419 (not c!79929)) b!727369))

(assert (= (and b!727369 res!488257) b!727368))

(assert (= (and b!727368 (not res!488258)) b!727364))

(assert (= (and b!727364 (not res!488256)) b!727370))

(declare-fun m!681361 () Bool)

(assert (=> b!727364 m!681361))

(assert (=> b!727363 m!681243))

(declare-fun m!681363 () Bool)

(assert (=> b!727363 m!681363))

(assert (=> b!727363 m!681363))

(declare-fun m!681365 () Bool)

(assert (=> b!727363 m!681365))

(assert (=> b!727368 m!681361))

(assert (=> b!727370 m!681361))

(assert (=> d!99419 m!681243))

(declare-fun m!681367 () Bool)

(assert (=> d!99419 m!681367))

(assert (=> d!99419 m!681269))

(assert (=> b!727179 d!99419))

(declare-fun d!99421 () Bool)

(declare-fun lt!322187 () (_ BitVec 32))

(declare-fun lt!322186 () (_ BitVec 32))

(assert (=> d!99421 (= lt!322187 (bvmul (bvxor lt!322186 (bvlshr lt!322186 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99421 (= lt!322186 ((_ extract 31 0) (bvand (bvxor lt!322093 (bvlshr lt!322093 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99421 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!488265 (let ((h!14751 ((_ extract 31 0) (bvand (bvxor lt!322093 (bvlshr lt!322093 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62371 (bvmul (bvxor h!14751 (bvlshr h!14751 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62371 (bvlshr x!62371 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!488265 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!488265 #b00000000000000000000000000000000))))))

(assert (=> d!99421 (= (toIndex!0 lt!322093 mask!3328) (bvand (bvxor lt!322187 (bvlshr lt!322187 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!727179 d!99421))

(declare-fun b!727422 () Bool)

(declare-fun e!407248 () Bool)

(declare-fun e!407249 () Bool)

(assert (=> b!727422 (= e!407248 e!407249)))

(declare-fun lt!322205 () (_ BitVec 64))

(assert (=> b!727422 (= lt!322205 (select (arr!19640 a!3186) j!159))))

(declare-fun lt!322203 () Unit!24812)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41045 (_ BitVec 64) (_ BitVec 32)) Unit!24812)

(assert (=> b!727422 (= lt!322203 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!322205 j!159))))

(assert (=> b!727422 (arrayContainsKey!0 a!3186 lt!322205 #b00000000000000000000000000000000)))

(declare-fun lt!322204 () Unit!24812)

(assert (=> b!727422 (= lt!322204 lt!322203)))

(declare-fun res!488275 () Bool)

(assert (=> b!727422 (= res!488275 (= (seekEntryOrOpen!0 (select (arr!19640 a!3186) j!159) a!3186 mask!3328) (Found!7247 j!159)))))

(assert (=> b!727422 (=> (not res!488275) (not e!407249))))

(declare-fun b!727423 () Bool)

(declare-fun call!34816 () Bool)

(assert (=> b!727423 (= e!407249 call!34816)))

(declare-fun b!727424 () Bool)

(assert (=> b!727424 (= e!407248 call!34816)))

(declare-fun b!727425 () Bool)

(declare-fun e!407247 () Bool)

(assert (=> b!727425 (= e!407247 e!407248)))

(declare-fun c!79948 () Bool)

(assert (=> b!727425 (= c!79948 (validKeyInArray!0 (select (arr!19640 a!3186) j!159)))))

(declare-fun d!99429 () Bool)

(declare-fun res!488276 () Bool)

(assert (=> d!99429 (=> res!488276 e!407247)))

(assert (=> d!99429 (= res!488276 (bvsge j!159 (size!20061 a!3186)))))

(assert (=> d!99429 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!407247)))

(declare-fun bm!34813 () Bool)

(assert (=> bm!34813 (= call!34816 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(assert (= (and d!99429 (not res!488276)) b!727425))

(assert (= (and b!727425 c!79948) b!727422))

(assert (= (and b!727425 (not c!79948)) b!727424))

(assert (= (and b!727422 res!488275) b!727423))

(assert (= (or b!727423 b!727424) bm!34813))

(assert (=> b!727422 m!681239))

(declare-fun m!681407 () Bool)

(assert (=> b!727422 m!681407))

(declare-fun m!681409 () Bool)

(assert (=> b!727422 m!681409))

(assert (=> b!727422 m!681239))

(assert (=> b!727422 m!681259))

(assert (=> b!727425 m!681239))

(assert (=> b!727425 m!681239))

(assert (=> b!727425 m!681275))

(declare-fun m!681411 () Bool)

(assert (=> bm!34813 m!681411))

(assert (=> b!727168 d!99429))

(declare-fun d!99443 () Bool)

(assert (=> d!99443 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!322214 () Unit!24812)

(declare-fun choose!38 (array!41045 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24812)

(assert (=> d!99443 (= lt!322214 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99443 (validMask!0 mask!3328)))

(assert (=> d!99443 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!322214)))

(declare-fun bs!20860 () Bool)

(assert (= bs!20860 d!99443))

(assert (=> bs!20860 m!681279))

(declare-fun m!681413 () Bool)

(assert (=> bs!20860 m!681413))

(assert (=> bs!20860 m!681269))

(assert (=> b!727168 d!99443))

(declare-fun b!727511 () Bool)

(declare-fun e!407305 () SeekEntryResult!7247)

(declare-fun lt!322239 () SeekEntryResult!7247)

(assert (=> b!727511 (= e!407305 (MissingZero!7247 (index!31357 lt!322239)))))

(declare-fun b!727512 () Bool)

(declare-fun e!407303 () SeekEntryResult!7247)

(declare-fun e!407304 () SeekEntryResult!7247)

(assert (=> b!727512 (= e!407303 e!407304)))

(declare-fun lt!322238 () (_ BitVec 64))

(assert (=> b!727512 (= lt!322238 (select (arr!19640 a!3186) (index!31357 lt!322239)))))

(declare-fun c!79980 () Bool)

(assert (=> b!727512 (= c!79980 (= lt!322238 (select (arr!19640 a!3186) j!159)))))

(declare-fun d!99445 () Bool)

(declare-fun lt!322240 () SeekEntryResult!7247)

(assert (=> d!99445 (and (or (is-Undefined!7247 lt!322240) (not (is-Found!7247 lt!322240)) (and (bvsge (index!31356 lt!322240) #b00000000000000000000000000000000) (bvslt (index!31356 lt!322240) (size!20061 a!3186)))) (or (is-Undefined!7247 lt!322240) (is-Found!7247 lt!322240) (not (is-MissingZero!7247 lt!322240)) (and (bvsge (index!31355 lt!322240) #b00000000000000000000000000000000) (bvslt (index!31355 lt!322240) (size!20061 a!3186)))) (or (is-Undefined!7247 lt!322240) (is-Found!7247 lt!322240) (is-MissingZero!7247 lt!322240) (not (is-MissingVacant!7247 lt!322240)) (and (bvsge (index!31358 lt!322240) #b00000000000000000000000000000000) (bvslt (index!31358 lt!322240) (size!20061 a!3186)))) (or (is-Undefined!7247 lt!322240) (ite (is-Found!7247 lt!322240) (= (select (arr!19640 a!3186) (index!31356 lt!322240)) (select (arr!19640 a!3186) j!159)) (ite (is-MissingZero!7247 lt!322240) (= (select (arr!19640 a!3186) (index!31355 lt!322240)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7247 lt!322240) (= (select (arr!19640 a!3186) (index!31358 lt!322240)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!99445 (= lt!322240 e!407303)))

(declare-fun c!79982 () Bool)

(assert (=> d!99445 (= c!79982 (and (is-Intermediate!7247 lt!322239) (undefined!8059 lt!322239)))))

(assert (=> d!99445 (= lt!322239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19640 a!3186) j!159) mask!3328) (select (arr!19640 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99445 (validMask!0 mask!3328)))

(assert (=> d!99445 (= (seekEntryOrOpen!0 (select (arr!19640 a!3186) j!159) a!3186 mask!3328) lt!322240)))

(declare-fun b!727513 () Bool)

(assert (=> b!727513 (= e!407303 Undefined!7247)))

(declare-fun b!727514 () Bool)

(assert (=> b!727514 (= e!407305 (seekKeyOrZeroReturnVacant!0 (x!62362 lt!322239) (index!31357 lt!322239) (index!31357 lt!322239) (select (arr!19640 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!727515 () Bool)

(assert (=> b!727515 (= e!407304 (Found!7247 (index!31357 lt!322239)))))

(declare-fun b!727516 () Bool)

(declare-fun c!79981 () Bool)

(assert (=> b!727516 (= c!79981 (= lt!322238 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727516 (= e!407304 e!407305)))

(assert (= (and d!99445 c!79982) b!727513))

(assert (= (and d!99445 (not c!79982)) b!727512))

(assert (= (and b!727512 c!79980) b!727515))

(assert (= (and b!727512 (not c!79980)) b!727516))

(assert (= (and b!727516 c!79981) b!727511))

(assert (= (and b!727516 (not c!79981)) b!727514))

(declare-fun m!681477 () Bool)

(assert (=> b!727512 m!681477))

(assert (=> d!99445 m!681269))

(declare-fun m!681479 () Bool)

(assert (=> d!99445 m!681479))

(assert (=> d!99445 m!681239))

(assert (=> d!99445 m!681263))

(declare-fun m!681481 () Bool)

(assert (=> d!99445 m!681481))

(assert (=> d!99445 m!681263))

(assert (=> d!99445 m!681239))

(assert (=> d!99445 m!681265))

(declare-fun m!681483 () Bool)

(assert (=> d!99445 m!681483))

(assert (=> b!727514 m!681239))

(declare-fun m!681485 () Bool)

(assert (=> b!727514 m!681485))

(assert (=> b!727177 d!99445))

(declare-fun d!99467 () Bool)

(declare-fun res!488319 () Bool)

(declare-fun e!407333 () Bool)

(assert (=> d!99467 (=> res!488319 e!407333)))

(assert (=> d!99467 (= res!488319 (bvsge #b00000000000000000000000000000000 (size!20061 a!3186)))))

(assert (=> d!99467 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13692) e!407333)))

(declare-fun bm!34823 () Bool)

(declare-fun call!34826 () Bool)

(declare-fun c!79994 () Bool)

(assert (=> bm!34823 (= call!34826 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79994 (Cons!13691 (select (arr!19640 a!3186) #b00000000000000000000000000000000) Nil!13692) Nil!13692)))))

(declare-fun b!727557 () Bool)

(declare-fun e!407336 () Bool)

(assert (=> b!727557 (= e!407336 call!34826)))

(declare-fun b!727558 () Bool)

(declare-fun e!407335 () Bool)

(declare-fun contains!4053 (List!13695 (_ BitVec 64)) Bool)

(assert (=> b!727558 (= e!407335 (contains!4053 Nil!13692 (select (arr!19640 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!727559 () Bool)

(declare-fun e!407334 () Bool)

(assert (=> b!727559 (= e!407334 e!407336)))

(assert (=> b!727559 (= c!79994 (validKeyInArray!0 (select (arr!19640 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!727560 () Bool)

(assert (=> b!727560 (= e!407333 e!407334)))

(declare-fun res!488318 () Bool)

(assert (=> b!727560 (=> (not res!488318) (not e!407334))))

(assert (=> b!727560 (= res!488318 (not e!407335))))

(declare-fun res!488320 () Bool)

(assert (=> b!727560 (=> (not res!488320) (not e!407335))))

(assert (=> b!727560 (= res!488320 (validKeyInArray!0 (select (arr!19640 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!727561 () Bool)

(assert (=> b!727561 (= e!407336 call!34826)))

(assert (= (and d!99467 (not res!488319)) b!727560))

(assert (= (and b!727560 res!488320) b!727558))

(assert (= (and b!727560 res!488318) b!727559))

(assert (= (and b!727559 c!79994) b!727561))

(assert (= (and b!727559 (not c!79994)) b!727557))

(assert (= (or b!727561 b!727557) bm!34823))

(declare-fun m!681511 () Bool)

(assert (=> bm!34823 m!681511))

(declare-fun m!681513 () Bool)

(assert (=> bm!34823 m!681513))

(assert (=> b!727558 m!681511))

(assert (=> b!727558 m!681511))

(declare-fun m!681515 () Bool)

(assert (=> b!727558 m!681515))

(assert (=> b!727559 m!681511))

(assert (=> b!727559 m!681511))

(declare-fun m!681517 () Bool)

(assert (=> b!727559 m!681517))

(assert (=> b!727560 m!681511))

(assert (=> b!727560 m!681511))

(assert (=> b!727560 m!681517))

(assert (=> b!727167 d!99467))

(declare-fun d!99481 () Bool)

(declare-fun res!488325 () Bool)

(declare-fun e!407341 () Bool)

(assert (=> d!99481 (=> res!488325 e!407341)))

(assert (=> d!99481 (= res!488325 (= (select (arr!19640 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!99481 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!407341)))

(declare-fun b!727566 () Bool)

(declare-fun e!407342 () Bool)

(assert (=> b!727566 (= e!407341 e!407342)))

(declare-fun res!488326 () Bool)

(assert (=> b!727566 (=> (not res!488326) (not e!407342))))

(assert (=> b!727566 (= res!488326 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20061 a!3186)))))

(declare-fun b!727567 () Bool)

(assert (=> b!727567 (= e!407342 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99481 (not res!488325)) b!727566))

(assert (= (and b!727566 res!488326) b!727567))

(assert (=> d!99481 m!681511))

(declare-fun m!681519 () Bool)

(assert (=> b!727567 m!681519))

(assert (=> b!727176 d!99481))

(declare-fun b!727568 () Bool)

(declare-fun e!407345 () SeekEntryResult!7247)

(declare-fun e!407347 () SeekEntryResult!7247)

(assert (=> b!727568 (= e!407345 e!407347)))

(declare-fun c!79996 () Bool)

(declare-fun lt!322252 () (_ BitVec 64))

(assert (=> b!727568 (= c!79996 (or (= lt!322252 (select (arr!19640 a!3186) j!159)) (= (bvadd lt!322252 lt!322252) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727569 () Bool)

(assert (=> b!727569 (= e!407347 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19640 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19640 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!727570 () Bool)

(declare-fun lt!322253 () SeekEntryResult!7247)

(assert (=> b!727570 (and (bvsge (index!31357 lt!322253) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322253) (size!20061 a!3186)))))

(declare-fun res!488327 () Bool)

(assert (=> b!727570 (= res!488327 (= (select (arr!19640 a!3186) (index!31357 lt!322253)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!407343 () Bool)

(assert (=> b!727570 (=> res!488327 e!407343)))

(declare-fun b!727571 () Bool)

(assert (=> b!727571 (= e!407345 (Intermediate!7247 true (toIndex!0 (select (arr!19640 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727572 () Bool)

(declare-fun e!407344 () Bool)

(assert (=> b!727572 (= e!407344 (bvsge (x!62362 lt!322253) #b01111111111111111111111111111110))))

(declare-fun b!727573 () Bool)

(assert (=> b!727573 (= e!407347 (Intermediate!7247 false (toIndex!0 (select (arr!19640 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!99483 () Bool)

(assert (=> d!99483 e!407344))

(declare-fun c!79997 () Bool)

(assert (=> d!99483 (= c!79997 (and (is-Intermediate!7247 lt!322253) (undefined!8059 lt!322253)))))

(assert (=> d!99483 (= lt!322253 e!407345)))

(declare-fun c!79995 () Bool)

(assert (=> d!99483 (= c!79995 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99483 (= lt!322252 (select (arr!19640 a!3186) (toIndex!0 (select (arr!19640 a!3186) j!159) mask!3328)))))

(assert (=> d!99483 (validMask!0 mask!3328)))

(assert (=> d!99483 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19640 a!3186) j!159) mask!3328) (select (arr!19640 a!3186) j!159) a!3186 mask!3328) lt!322253)))

(declare-fun b!727574 () Bool)

(assert (=> b!727574 (and (bvsge (index!31357 lt!322253) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322253) (size!20061 a!3186)))))

(declare-fun res!488329 () Bool)

(assert (=> b!727574 (= res!488329 (= (select (arr!19640 a!3186) (index!31357 lt!322253)) (select (arr!19640 a!3186) j!159)))))

(assert (=> b!727574 (=> res!488329 e!407343)))

(declare-fun e!407346 () Bool)

(assert (=> b!727574 (= e!407346 e!407343)))

(declare-fun b!727575 () Bool)

(assert (=> b!727575 (= e!407344 e!407346)))

(declare-fun res!488328 () Bool)

(assert (=> b!727575 (= res!488328 (and (is-Intermediate!7247 lt!322253) (not (undefined!8059 lt!322253)) (bvslt (x!62362 lt!322253) #b01111111111111111111111111111110) (bvsge (x!62362 lt!322253) #b00000000000000000000000000000000) (bvsge (x!62362 lt!322253) #b00000000000000000000000000000000)))))

(assert (=> b!727575 (=> (not res!488328) (not e!407346))))

(declare-fun b!727576 () Bool)

(assert (=> b!727576 (and (bvsge (index!31357 lt!322253) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322253) (size!20061 a!3186)))))

(assert (=> b!727576 (= e!407343 (= (select (arr!19640 a!3186) (index!31357 lt!322253)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!99483 c!79995) b!727571))

(assert (= (and d!99483 (not c!79995)) b!727568))

(assert (= (and b!727568 c!79996) b!727573))

(assert (= (and b!727568 (not c!79996)) b!727569))

(assert (= (and d!99483 c!79997) b!727572))

(assert (= (and d!99483 (not c!79997)) b!727575))

(assert (= (and b!727575 res!488328) b!727574))

(assert (= (and b!727574 (not res!488329)) b!727570))

(assert (= (and b!727570 (not res!488327)) b!727576))

(declare-fun m!681521 () Bool)

(assert (=> b!727570 m!681521))

(assert (=> b!727569 m!681263))

(declare-fun m!681523 () Bool)

(assert (=> b!727569 m!681523))

(assert (=> b!727569 m!681523))

(assert (=> b!727569 m!681239))

(declare-fun m!681525 () Bool)

(assert (=> b!727569 m!681525))

(assert (=> b!727574 m!681521))

(assert (=> b!727576 m!681521))

(assert (=> d!99483 m!681263))

(declare-fun m!681527 () Bool)

(assert (=> d!99483 m!681527))

(assert (=> d!99483 m!681269))

(assert (=> b!727175 d!99483))

(declare-fun d!99485 () Bool)

(declare-fun lt!322255 () (_ BitVec 32))

(declare-fun lt!322254 () (_ BitVec 32))

(assert (=> d!99485 (= lt!322255 (bvmul (bvxor lt!322254 (bvlshr lt!322254 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99485 (= lt!322254 ((_ extract 31 0) (bvand (bvxor (select (arr!19640 a!3186) j!159) (bvlshr (select (arr!19640 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99485 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!488265 (let ((h!14751 ((_ extract 31 0) (bvand (bvxor (select (arr!19640 a!3186) j!159) (bvlshr (select (arr!19640 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62371 (bvmul (bvxor h!14751 (bvlshr h!14751 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62371 (bvlshr x!62371 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!488265 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!488265 #b00000000000000000000000000000000))))))

(assert (=> d!99485 (= (toIndex!0 (select (arr!19640 a!3186) j!159) mask!3328) (bvand (bvxor lt!322255 (bvlshr lt!322255 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!727175 d!99485))

(declare-fun d!99487 () Bool)

(assert (=> d!99487 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!727173 d!99487))

(declare-fun d!99489 () Bool)

(declare-fun lt!322258 () (_ BitVec 32))

(assert (=> d!99489 (and (bvsge lt!322258 #b00000000000000000000000000000000) (bvslt lt!322258 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99489 (= lt!322258 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99489 (validMask!0 mask!3328)))

(assert (=> d!99489 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!322258)))

(declare-fun bs!20863 () Bool)

(assert (= bs!20863 d!99489))

(declare-fun m!681529 () Bool)

(assert (=> bs!20863 m!681529))

(assert (=> bs!20863 m!681269))

(assert (=> b!727184 d!99489))

(declare-fun d!99491 () Bool)

(assert (=> d!99491 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64574 d!99491))

(declare-fun d!99493 () Bool)

(assert (=> d!99493 (= (array_inv!15414 a!3186) (bvsge (size!20061 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64574 d!99493))

(declare-fun b!727577 () Bool)

(declare-fun e!407350 () SeekEntryResult!7247)

(declare-fun e!407352 () SeekEntryResult!7247)

(assert (=> b!727577 (= e!407350 e!407352)))

(declare-fun c!79999 () Bool)

(declare-fun lt!322259 () (_ BitVec 64))

(assert (=> b!727577 (= c!79999 (or (= lt!322259 (select (arr!19640 a!3186) j!159)) (= (bvadd lt!322259 lt!322259) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727578 () Bool)

(assert (=> b!727578 (= e!407352 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19640 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!727579 () Bool)

(declare-fun lt!322260 () SeekEntryResult!7247)

(assert (=> b!727579 (and (bvsge (index!31357 lt!322260) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322260) (size!20061 a!3186)))))

(declare-fun res!488330 () Bool)

(assert (=> b!727579 (= res!488330 (= (select (arr!19640 a!3186) (index!31357 lt!322260)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!407348 () Bool)

(assert (=> b!727579 (=> res!488330 e!407348)))

(declare-fun b!727580 () Bool)

(assert (=> b!727580 (= e!407350 (Intermediate!7247 true index!1321 x!1131))))

(declare-fun b!727581 () Bool)

(declare-fun e!407349 () Bool)

(assert (=> b!727581 (= e!407349 (bvsge (x!62362 lt!322260) #b01111111111111111111111111111110))))

(declare-fun b!727582 () Bool)

(assert (=> b!727582 (= e!407352 (Intermediate!7247 false index!1321 x!1131))))

(declare-fun d!99495 () Bool)

(assert (=> d!99495 e!407349))

(declare-fun c!80000 () Bool)

(assert (=> d!99495 (= c!80000 (and (is-Intermediate!7247 lt!322260) (undefined!8059 lt!322260)))))

(assert (=> d!99495 (= lt!322260 e!407350)))

(declare-fun c!79998 () Bool)

(assert (=> d!99495 (= c!79998 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99495 (= lt!322259 (select (arr!19640 a!3186) index!1321))))

(assert (=> d!99495 (validMask!0 mask!3328)))

(assert (=> d!99495 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19640 a!3186) j!159) a!3186 mask!3328) lt!322260)))

(declare-fun b!727583 () Bool)

(assert (=> b!727583 (and (bvsge (index!31357 lt!322260) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322260) (size!20061 a!3186)))))

(declare-fun res!488332 () Bool)

(assert (=> b!727583 (= res!488332 (= (select (arr!19640 a!3186) (index!31357 lt!322260)) (select (arr!19640 a!3186) j!159)))))

(assert (=> b!727583 (=> res!488332 e!407348)))

(declare-fun e!407351 () Bool)

(assert (=> b!727583 (= e!407351 e!407348)))

(declare-fun b!727584 () Bool)

(assert (=> b!727584 (= e!407349 e!407351)))

(declare-fun res!488331 () Bool)

(assert (=> b!727584 (= res!488331 (and (is-Intermediate!7247 lt!322260) (not (undefined!8059 lt!322260)) (bvslt (x!62362 lt!322260) #b01111111111111111111111111111110) (bvsge (x!62362 lt!322260) #b00000000000000000000000000000000) (bvsge (x!62362 lt!322260) x!1131)))))

(assert (=> b!727584 (=> (not res!488331) (not e!407351))))

(declare-fun b!727585 () Bool)

(assert (=> b!727585 (and (bvsge (index!31357 lt!322260) #b00000000000000000000000000000000) (bvslt (index!31357 lt!322260) (size!20061 a!3186)))))

(assert (=> b!727585 (= e!407348 (= (select (arr!19640 a!3186) (index!31357 lt!322260)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!99495 c!79998) b!727580))

(assert (= (and d!99495 (not c!79998)) b!727577))

(assert (= (and b!727577 c!79999) b!727582))

(assert (= (and b!727577 (not c!79999)) b!727578))

(assert (= (and d!99495 c!80000) b!727581))

(assert (= (and d!99495 (not c!80000)) b!727584))

(assert (= (and b!727584 res!488331) b!727583))

(assert (= (and b!727583 (not res!488332)) b!727579))

(assert (= (and b!727579 (not res!488330)) b!727585))

(declare-fun m!681531 () Bool)

(assert (=> b!727579 m!681531))

(assert (=> b!727578 m!681257))

(assert (=> b!727578 m!681257))

(assert (=> b!727578 m!681239))

(declare-fun m!681533 () Bool)

(assert (=> b!727578 m!681533))

(assert (=> b!727583 m!681531))

(assert (=> b!727585 m!681531))

(assert (=> d!99495 m!681331))

(assert (=> d!99495 m!681269))

(assert (=> b!727182 d!99495))

(declare-fun b!727586 () Bool)

(declare-fun e!407355 () SeekEntryResult!7247)

(declare-fun lt!322262 () SeekEntryResult!7247)

(assert (=> b!727586 (= e!407355 (MissingZero!7247 (index!31357 lt!322262)))))

(declare-fun b!727587 () Bool)

(declare-fun e!407353 () SeekEntryResult!7247)

(declare-fun e!407354 () SeekEntryResult!7247)

(assert (=> b!727587 (= e!407353 e!407354)))

(declare-fun lt!322261 () (_ BitVec 64))

(assert (=> b!727587 (= lt!322261 (select (arr!19640 a!3186) (index!31357 lt!322262)))))

(declare-fun c!80001 () Bool)

(assert (=> b!727587 (= c!80001 (= lt!322261 k!2102))))

