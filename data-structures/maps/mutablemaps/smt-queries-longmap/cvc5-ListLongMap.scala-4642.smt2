; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64570 () Bool)

(assert start!64570)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41041 0))(
  ( (array!41042 (arr!19638 (Array (_ BitVec 32) (_ BitVec 64))) (size!20059 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41041)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7245 0))(
  ( (MissingZero!7245 (index!31347 (_ BitVec 32))) (Found!7245 (index!31348 (_ BitVec 32))) (Intermediate!7245 (undefined!8057 Bool) (index!31349 (_ BitVec 32)) (x!62360 (_ BitVec 32))) (Undefined!7245) (MissingVacant!7245 (index!31350 (_ BitVec 32))) )
))
(declare-fun lt!322039 () SeekEntryResult!7245)

(declare-fun b!727059 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!407052 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41041 (_ BitVec 32)) SeekEntryResult!7245)

(assert (=> b!727059 (= e!407052 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19638 a!3186) j!159) a!3186 mask!3328) lt!322039))))

(declare-fun b!727060 () Bool)

(declare-fun e!407050 () Bool)

(declare-fun e!407048 () Bool)

(assert (=> b!727060 (= e!407050 e!407048)))

(declare-fun res!488104 () Bool)

(assert (=> b!727060 (=> (not res!488104) (not e!407048))))

(declare-fun lt!322038 () SeekEntryResult!7245)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41041 (_ BitVec 32)) SeekEntryResult!7245)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727060 (= res!488104 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19638 a!3186) j!159) mask!3328) (select (arr!19638 a!3186) j!159) a!3186 mask!3328) lt!322038))))

(assert (=> b!727060 (= lt!322038 (Intermediate!7245 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727061 () Bool)

(declare-fun res!488102 () Bool)

(declare-fun e!407047 () Bool)

(assert (=> b!727061 (=> (not res!488102) (not e!407047))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727061 (= res!488102 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!407051 () Bool)

(declare-fun b!727062 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!727062 (= e!407051 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19638 a!3186) j!159) a!3186 mask!3328) (Found!7245 j!159)))))

(declare-fun b!727063 () Bool)

(declare-fun e!407049 () Bool)

(declare-fun lt!322032 () (_ BitVec 32))

(assert (=> b!727063 (= e!407049 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (and (bvsge lt!322032 #b00000000000000000000000000000000) (bvslt lt!322032 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727063 (= lt!322032 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!727064 () Bool)

(declare-fun res!488098 () Bool)

(assert (=> b!727064 (=> (not res!488098) (not e!407050))))

(declare-datatypes ((List!13693 0))(
  ( (Nil!13690) (Cons!13689 (h!14746 (_ BitVec 64)) (t!20016 List!13693)) )
))
(declare-fun arrayNoDuplicates!0 (array!41041 (_ BitVec 32) List!13693) Bool)

(assert (=> b!727064 (= res!488098 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13690))))

(declare-fun res!488109 () Bool)

(assert (=> start!64570 (=> (not res!488109) (not e!407047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64570 (= res!488109 (validMask!0 mask!3328))))

(assert (=> start!64570 e!407047))

(assert (=> start!64570 true))

(declare-fun array_inv!15412 (array!41041) Bool)

(assert (=> start!64570 (array_inv!15412 a!3186)))

(declare-fun b!727065 () Bool)

(declare-fun e!407054 () Bool)

(assert (=> b!727065 (= e!407054 e!407052)))

(declare-fun res!488100 () Bool)

(assert (=> b!727065 (=> (not res!488100) (not e!407052))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41041 (_ BitVec 32)) SeekEntryResult!7245)

(assert (=> b!727065 (= res!488100 (= (seekEntryOrOpen!0 (select (arr!19638 a!3186) j!159) a!3186 mask!3328) lt!322039))))

(assert (=> b!727065 (= lt!322039 (Found!7245 j!159))))

(declare-fun b!727066 () Bool)

(declare-fun res!488112 () Bool)

(assert (=> b!727066 (=> (not res!488112) (not e!407047))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!727066 (= res!488112 (and (= (size!20059 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20059 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20059 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727067 () Bool)

(declare-fun res!488110 () Bool)

(assert (=> b!727067 (=> (not res!488110) (not e!407048))))

(assert (=> b!727067 (= res!488110 e!407051)))

(declare-fun c!79854 () Bool)

(assert (=> b!727067 (= c!79854 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727068 () Bool)

(declare-fun res!488111 () Bool)

(assert (=> b!727068 (=> (not res!488111) (not e!407050))))

(assert (=> b!727068 (= res!488111 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20059 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20059 a!3186))))))

(declare-fun b!727069 () Bool)

(assert (=> b!727069 (= e!407047 e!407050)))

(declare-fun res!488101 () Bool)

(assert (=> b!727069 (=> (not res!488101) (not e!407050))))

(declare-fun lt!322040 () SeekEntryResult!7245)

(assert (=> b!727069 (= res!488101 (or (= lt!322040 (MissingZero!7245 i!1173)) (= lt!322040 (MissingVacant!7245 i!1173))))))

(assert (=> b!727069 (= lt!322040 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!727070 () Bool)

(declare-fun res!488105 () Bool)

(assert (=> b!727070 (=> (not res!488105) (not e!407047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727070 (= res!488105 (validKeyInArray!0 (select (arr!19638 a!3186) j!159)))))

(declare-fun b!727071 () Bool)

(declare-fun e!407055 () Bool)

(assert (=> b!727071 (= e!407055 (not e!407049))))

(declare-fun res!488108 () Bool)

(assert (=> b!727071 (=> res!488108 e!407049)))

(declare-fun lt!322033 () SeekEntryResult!7245)

(assert (=> b!727071 (= res!488108 (or (not (is-Intermediate!7245 lt!322033)) (bvsge x!1131 (x!62360 lt!322033))))))

(assert (=> b!727071 e!407054))

(declare-fun res!488103 () Bool)

(assert (=> b!727071 (=> (not res!488103) (not e!407054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41041 (_ BitVec 32)) Bool)

(assert (=> b!727071 (= res!488103 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24808 0))(
  ( (Unit!24809) )
))
(declare-fun lt!322036 () Unit!24808)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24808)

(assert (=> b!727071 (= lt!322036 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727072 () Bool)

(assert (=> b!727072 (= e!407051 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19638 a!3186) j!159) a!3186 mask!3328) lt!322038))))

(declare-fun b!727073 () Bool)

(declare-fun res!488106 () Bool)

(assert (=> b!727073 (=> (not res!488106) (not e!407048))))

(assert (=> b!727073 (= res!488106 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19638 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727074 () Bool)

(declare-fun res!488099 () Bool)

(assert (=> b!727074 (=> (not res!488099) (not e!407047))))

(assert (=> b!727074 (= res!488099 (validKeyInArray!0 k!2102))))

(declare-fun b!727075 () Bool)

(assert (=> b!727075 (= e!407048 e!407055)))

(declare-fun res!488107 () Bool)

(assert (=> b!727075 (=> (not res!488107) (not e!407055))))

(declare-fun lt!322034 () SeekEntryResult!7245)

(assert (=> b!727075 (= res!488107 (= lt!322034 lt!322033))))

(declare-fun lt!322035 () array!41041)

(declare-fun lt!322037 () (_ BitVec 64))

(assert (=> b!727075 (= lt!322033 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322037 lt!322035 mask!3328))))

(assert (=> b!727075 (= lt!322034 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322037 mask!3328) lt!322037 lt!322035 mask!3328))))

(assert (=> b!727075 (= lt!322037 (select (store (arr!19638 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!727075 (= lt!322035 (array!41042 (store (arr!19638 a!3186) i!1173 k!2102) (size!20059 a!3186)))))

(declare-fun b!727076 () Bool)

(declare-fun res!488097 () Bool)

(assert (=> b!727076 (=> (not res!488097) (not e!407050))))

(assert (=> b!727076 (= res!488097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64570 res!488109) b!727066))

(assert (= (and b!727066 res!488112) b!727070))

(assert (= (and b!727070 res!488105) b!727074))

(assert (= (and b!727074 res!488099) b!727061))

(assert (= (and b!727061 res!488102) b!727069))

(assert (= (and b!727069 res!488101) b!727076))

(assert (= (and b!727076 res!488097) b!727064))

(assert (= (and b!727064 res!488098) b!727068))

(assert (= (and b!727068 res!488111) b!727060))

(assert (= (and b!727060 res!488104) b!727073))

(assert (= (and b!727073 res!488106) b!727067))

(assert (= (and b!727067 c!79854) b!727072))

(assert (= (and b!727067 (not c!79854)) b!727062))

(assert (= (and b!727067 res!488110) b!727075))

(assert (= (and b!727075 res!488107) b!727071))

(assert (= (and b!727071 res!488103) b!727065))

(assert (= (and b!727065 res!488100) b!727059))

(assert (= (and b!727071 (not res!488108)) b!727063))

(declare-fun m!681139 () Bool)

(assert (=> b!727074 m!681139))

(declare-fun m!681141 () Bool)

(assert (=> b!727064 m!681141))

(declare-fun m!681143 () Bool)

(assert (=> b!727072 m!681143))

(assert (=> b!727072 m!681143))

(declare-fun m!681145 () Bool)

(assert (=> b!727072 m!681145))

(declare-fun m!681147 () Bool)

(assert (=> b!727075 m!681147))

(declare-fun m!681149 () Bool)

(assert (=> b!727075 m!681149))

(declare-fun m!681151 () Bool)

(assert (=> b!727075 m!681151))

(declare-fun m!681153 () Bool)

(assert (=> b!727075 m!681153))

(assert (=> b!727075 m!681153))

(declare-fun m!681155 () Bool)

(assert (=> b!727075 m!681155))

(declare-fun m!681157 () Bool)

(assert (=> b!727076 m!681157))

(declare-fun m!681159 () Bool)

(assert (=> b!727073 m!681159))

(assert (=> b!727062 m!681143))

(assert (=> b!727062 m!681143))

(declare-fun m!681161 () Bool)

(assert (=> b!727062 m!681161))

(declare-fun m!681163 () Bool)

(assert (=> b!727071 m!681163))

(declare-fun m!681165 () Bool)

(assert (=> b!727071 m!681165))

(assert (=> b!727065 m!681143))

(assert (=> b!727065 m!681143))

(declare-fun m!681167 () Bool)

(assert (=> b!727065 m!681167))

(assert (=> b!727060 m!681143))

(assert (=> b!727060 m!681143))

(declare-fun m!681169 () Bool)

(assert (=> b!727060 m!681169))

(assert (=> b!727060 m!681169))

(assert (=> b!727060 m!681143))

(declare-fun m!681171 () Bool)

(assert (=> b!727060 m!681171))

(declare-fun m!681173 () Bool)

(assert (=> b!727069 m!681173))

(declare-fun m!681175 () Bool)

(assert (=> b!727061 m!681175))

(declare-fun m!681177 () Bool)

(assert (=> start!64570 m!681177))

(declare-fun m!681179 () Bool)

(assert (=> start!64570 m!681179))

(assert (=> b!727070 m!681143))

(assert (=> b!727070 m!681143))

(declare-fun m!681181 () Bool)

(assert (=> b!727070 m!681181))

(declare-fun m!681183 () Bool)

(assert (=> b!727063 m!681183))

(assert (=> b!727059 m!681143))

(assert (=> b!727059 m!681143))

(declare-fun m!681185 () Bool)

(assert (=> b!727059 m!681185))

(push 1)

(assert (not b!727069))

(assert (not b!727072))

(assert (not b!727061))

(assert (not b!727062))

(assert (not b!727065))

(assert (not b!727064))

(assert (not b!727060))

(assert (not b!727070))

(assert (not b!727076))

(assert (not b!727074))

(assert (not b!727071))

(assert (not b!727063))

(assert (not b!727059))

(assert (not start!64570))

(assert (not b!727075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!727266 () Bool)

(declare-fun e!407155 () Bool)

(declare-fun lt!322125 () SeekEntryResult!7245)

(assert (=> b!727266 (= e!407155 (bvsge (x!62360 lt!322125) #b01111111111111111111111111111110))))

(declare-fun b!727267 () Bool)

(assert (=> b!727267 (and (bvsge (index!31349 lt!322125) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322125) (size!20059 a!3186)))))

(declare-fun res!488233 () Bool)

(assert (=> b!727267 (= res!488233 (= (select (arr!19638 a!3186) (index!31349 lt!322125)) (select (arr!19638 a!3186) j!159)))))

(declare-fun e!407157 () Bool)

(assert (=> b!727267 (=> res!488233 e!407157)))

(declare-fun e!407158 () Bool)

(assert (=> b!727267 (= e!407158 e!407157)))

(declare-fun b!727268 () Bool)

(assert (=> b!727268 (= e!407155 e!407158)))

(declare-fun res!488232 () Bool)

(assert (=> b!727268 (= res!488232 (and (is-Intermediate!7245 lt!322125) (not (undefined!8057 lt!322125)) (bvslt (x!62360 lt!322125) #b01111111111111111111111111111110) (bvsge (x!62360 lt!322125) #b00000000000000000000000000000000) (bvsge (x!62360 lt!322125) #b00000000000000000000000000000000)))))

(assert (=> b!727268 (=> (not res!488232) (not e!407158))))

(declare-fun b!727269 () Bool)

(declare-fun e!407156 () SeekEntryResult!7245)

(declare-fun e!407154 () SeekEntryResult!7245)

(assert (=> b!727269 (= e!407156 e!407154)))

(declare-fun c!79892 () Bool)

(declare-fun lt!322124 () (_ BitVec 64))

(assert (=> b!727269 (= c!79892 (or (= lt!322124 (select (arr!19638 a!3186) j!159)) (= (bvadd lt!322124 lt!322124) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!99387 () Bool)

(assert (=> d!99387 e!407155))

(declare-fun c!79891 () Bool)

(assert (=> d!99387 (= c!79891 (and (is-Intermediate!7245 lt!322125) (undefined!8057 lt!322125)))))

(assert (=> d!99387 (= lt!322125 e!407156)))

(declare-fun c!79893 () Bool)

(assert (=> d!99387 (= c!79893 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99387 (= lt!322124 (select (arr!19638 a!3186) (toIndex!0 (select (arr!19638 a!3186) j!159) mask!3328)))))

(assert (=> d!99387 (validMask!0 mask!3328)))

(assert (=> d!99387 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19638 a!3186) j!159) mask!3328) (select (arr!19638 a!3186) j!159) a!3186 mask!3328) lt!322125)))

(declare-fun b!727270 () Bool)

(assert (=> b!727270 (and (bvsge (index!31349 lt!322125) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322125) (size!20059 a!3186)))))

(assert (=> b!727270 (= e!407157 (= (select (arr!19638 a!3186) (index!31349 lt!322125)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!727271 () Bool)

(assert (=> b!727271 (and (bvsge (index!31349 lt!322125) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322125) (size!20059 a!3186)))))

(declare-fun res!488231 () Bool)

(assert (=> b!727271 (= res!488231 (= (select (arr!19638 a!3186) (index!31349 lt!322125)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727271 (=> res!488231 e!407157)))

(declare-fun b!727272 () Bool)

(assert (=> b!727272 (= e!407156 (Intermediate!7245 true (toIndex!0 (select (arr!19638 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727273 () Bool)

(assert (=> b!727273 (= e!407154 (Intermediate!7245 false (toIndex!0 (select (arr!19638 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727274 () Bool)

(assert (=> b!727274 (= e!407154 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!19638 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!19638 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99387 c!79893) b!727272))

(assert (= (and d!99387 (not c!79893)) b!727269))

(assert (= (and b!727269 c!79892) b!727273))

(assert (= (and b!727269 (not c!79892)) b!727274))

(assert (= (and d!99387 c!79891) b!727266))

(assert (= (and d!99387 (not c!79891)) b!727268))

(assert (= (and b!727268 res!488232) b!727267))

(assert (= (and b!727267 (not res!488233)) b!727271))

(assert (= (and b!727271 (not res!488231)) b!727270))

(declare-fun m!681317 () Bool)

(assert (=> b!727270 m!681317))

(assert (=> b!727267 m!681317))

(assert (=> d!99387 m!681169))

(declare-fun m!681319 () Bool)

(assert (=> d!99387 m!681319))

(assert (=> d!99387 m!681177))

(assert (=> b!727274 m!681169))

(declare-fun m!681321 () Bool)

(assert (=> b!727274 m!681321))

(assert (=> b!727274 m!681321))

(assert (=> b!727274 m!681143))

(declare-fun m!681323 () Bool)

(assert (=> b!727274 m!681323))

(assert (=> b!727271 m!681317))

(assert (=> b!727060 d!99387))

(declare-fun d!99399 () Bool)

(declare-fun lt!322137 () (_ BitVec 32))

(declare-fun lt!322136 () (_ BitVec 32))

(assert (=> d!99399 (= lt!322137 (bvmul (bvxor lt!322136 (bvlshr lt!322136 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99399 (= lt!322136 ((_ extract 31 0) (bvand (bvxor (select (arr!19638 a!3186) j!159) (bvlshr (select (arr!19638 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99399 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!488234 (let ((h!14750 ((_ extract 31 0) (bvand (bvxor (select (arr!19638 a!3186) j!159) (bvlshr (select (arr!19638 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62367 (bvmul (bvxor h!14750 (bvlshr h!14750 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62367 (bvlshr x!62367 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!488234 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!488234 #b00000000000000000000000000000000))))))

(assert (=> d!99399 (= (toIndex!0 (select (arr!19638 a!3186) j!159) mask!3328) (bvand (bvxor lt!322137 (bvlshr lt!322137 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!727060 d!99399))

(declare-fun call!34809 () Bool)

(declare-fun bm!34806 () Bool)

(assert (=> bm!34806 (= call!34809 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!727319 () Bool)

(declare-fun e!407184 () Bool)

(assert (=> b!727319 (= e!407184 call!34809)))

(declare-fun b!727320 () Bool)

(declare-fun e!407185 () Bool)

(assert (=> b!727320 (= e!407184 e!407185)))

(declare-fun lt!322150 () (_ BitVec 64))

(assert (=> b!727320 (= lt!322150 (select (arr!19638 a!3186) j!159))))

(declare-fun lt!322151 () Unit!24808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!41041 (_ BitVec 64) (_ BitVec 32)) Unit!24808)

(assert (=> b!727320 (= lt!322151 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!322150 j!159))))

(assert (=> b!727320 (arrayContainsKey!0 a!3186 lt!322150 #b00000000000000000000000000000000)))

(declare-fun lt!322152 () Unit!24808)

(assert (=> b!727320 (= lt!322152 lt!322151)))

(declare-fun res!488239 () Bool)

(assert (=> b!727320 (= res!488239 (= (seekEntryOrOpen!0 (select (arr!19638 a!3186) j!159) a!3186 mask!3328) (Found!7245 j!159)))))

(assert (=> b!727320 (=> (not res!488239) (not e!407185))))

(declare-fun b!727321 () Bool)

(assert (=> b!727321 (= e!407185 call!34809)))

(declare-fun d!99401 () Bool)

(declare-fun res!488240 () Bool)

(declare-fun e!407183 () Bool)

(assert (=> d!99401 (=> res!488240 e!407183)))

(assert (=> d!99401 (= res!488240 (bvsge j!159 (size!20059 a!3186)))))

(assert (=> d!99401 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!407183)))

(declare-fun b!727322 () Bool)

(assert (=> b!727322 (= e!407183 e!407184)))

(declare-fun c!79914 () Bool)

(assert (=> b!727322 (= c!79914 (validKeyInArray!0 (select (arr!19638 a!3186) j!159)))))

(assert (= (and d!99401 (not res!488240)) b!727322))

(assert (= (and b!727322 c!79914) b!727320))

(assert (= (and b!727322 (not c!79914)) b!727319))

(assert (= (and b!727320 res!488239) b!727321))

(assert (= (or b!727321 b!727319) bm!34806))

(declare-fun m!681339 () Bool)

(assert (=> bm!34806 m!681339))

(assert (=> b!727320 m!681143))

(declare-fun m!681341 () Bool)

(assert (=> b!727320 m!681341))

(declare-fun m!681343 () Bool)

(assert (=> b!727320 m!681343))

(assert (=> b!727320 m!681143))

(assert (=> b!727320 m!681167))

(assert (=> b!727322 m!681143))

(assert (=> b!727322 m!681143))

(assert (=> b!727322 m!681181))

(assert (=> b!727071 d!99401))

(declare-fun d!99409 () Bool)

(assert (=> d!99409 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!322155 () Unit!24808)

(declare-fun choose!38 (array!41041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24808)

(assert (=> d!99409 (= lt!322155 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!99409 (validMask!0 mask!3328)))

(assert (=> d!99409 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!322155)))

(declare-fun bs!20858 () Bool)

(assert (= bs!20858 d!99409))

(assert (=> bs!20858 m!681163))

(declare-fun m!681345 () Bool)

(assert (=> bs!20858 m!681345))

(assert (=> bs!20858 m!681177))

(assert (=> b!727071 d!99409))

(declare-fun d!99411 () Bool)

(assert (=> d!99411 (= (validKeyInArray!0 (select (arr!19638 a!3186) j!159)) (and (not (= (select (arr!19638 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19638 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!727070 d!99411))

(declare-fun b!727389 () Bool)

(declare-fun e!407227 () SeekEntryResult!7245)

(assert (=> b!727389 (= e!407227 (Found!7245 resIntermediateIndex!5))))

(declare-fun b!727390 () Bool)

(declare-fun e!407228 () SeekEntryResult!7245)

(assert (=> b!727390 (= e!407228 Undefined!7245)))

(declare-fun b!727391 () Bool)

(assert (=> b!727391 (= e!407228 e!407227)))

(declare-fun c!79937 () Bool)

(declare-fun lt!322184 () (_ BitVec 64))

(assert (=> b!727391 (= c!79937 (= lt!322184 (select (arr!19638 a!3186) j!159)))))

(declare-fun b!727392 () Bool)

(declare-fun e!407229 () SeekEntryResult!7245)

(assert (=> b!727392 (= e!407229 (MissingVacant!7245 resIntermediateIndex!5))))

(declare-fun b!727394 () Bool)

(declare-fun c!79936 () Bool)

(assert (=> b!727394 (= c!79936 (= lt!322184 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727394 (= e!407227 e!407229)))

(declare-fun lt!322185 () SeekEntryResult!7245)

(declare-fun d!99413 () Bool)

(assert (=> d!99413 (and (or (is-Undefined!7245 lt!322185) (not (is-Found!7245 lt!322185)) (and (bvsge (index!31348 lt!322185) #b00000000000000000000000000000000) (bvslt (index!31348 lt!322185) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322185) (is-Found!7245 lt!322185) (not (is-MissingVacant!7245 lt!322185)) (not (= (index!31350 lt!322185) resIntermediateIndex!5)) (and (bvsge (index!31350 lt!322185) #b00000000000000000000000000000000) (bvslt (index!31350 lt!322185) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322185) (ite (is-Found!7245 lt!322185) (= (select (arr!19638 a!3186) (index!31348 lt!322185)) (select (arr!19638 a!3186) j!159)) (and (is-MissingVacant!7245 lt!322185) (= (index!31350 lt!322185) resIntermediateIndex!5) (= (select (arr!19638 a!3186) (index!31350 lt!322185)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99413 (= lt!322185 e!407228)))

(declare-fun c!79938 () Bool)

(assert (=> d!99413 (= c!79938 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!99413 (= lt!322184 (select (arr!19638 a!3186) resIntermediateIndex!5))))

(assert (=> d!99413 (validMask!0 mask!3328)))

(assert (=> d!99413 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19638 a!3186) j!159) a!3186 mask!3328) lt!322185)))

(declare-fun b!727393 () Bool)

(assert (=> b!727393 (= e!407229 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!19638 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99413 c!79938) b!727390))

(assert (= (and d!99413 (not c!79938)) b!727391))

(assert (= (and b!727391 c!79937) b!727389))

(assert (= (and b!727391 (not c!79937)) b!727394))

(assert (= (and b!727394 c!79936) b!727392))

(assert (= (and b!727394 (not c!79936)) b!727393))

(declare-fun m!681373 () Bool)

(assert (=> d!99413 m!681373))

(declare-fun m!681375 () Bool)

(assert (=> d!99413 m!681375))

(assert (=> d!99413 m!681159))

(assert (=> d!99413 m!681177))

(declare-fun m!681377 () Bool)

(assert (=> b!727393 m!681377))

(assert (=> b!727393 m!681377))

(assert (=> b!727393 m!681143))

(declare-fun m!681379 () Bool)

(assert (=> b!727393 m!681379))

(assert (=> b!727059 d!99413))

(declare-fun b!727453 () Bool)

(declare-fun c!79959 () Bool)

(declare-fun lt!322219 () (_ BitVec 64))

(assert (=> b!727453 (= c!79959 (= lt!322219 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!407270 () SeekEntryResult!7245)

(declare-fun e!407268 () SeekEntryResult!7245)

(assert (=> b!727453 (= e!407270 e!407268)))

(declare-fun d!99427 () Bool)

(declare-fun lt!322220 () SeekEntryResult!7245)

(assert (=> d!99427 (and (or (is-Undefined!7245 lt!322220) (not (is-Found!7245 lt!322220)) (and (bvsge (index!31348 lt!322220) #b00000000000000000000000000000000) (bvslt (index!31348 lt!322220) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322220) (is-Found!7245 lt!322220) (not (is-MissingZero!7245 lt!322220)) (and (bvsge (index!31347 lt!322220) #b00000000000000000000000000000000) (bvslt (index!31347 lt!322220) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322220) (is-Found!7245 lt!322220) (is-MissingZero!7245 lt!322220) (not (is-MissingVacant!7245 lt!322220)) (and (bvsge (index!31350 lt!322220) #b00000000000000000000000000000000) (bvslt (index!31350 lt!322220) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322220) (ite (is-Found!7245 lt!322220) (= (select (arr!19638 a!3186) (index!31348 lt!322220)) k!2102) (ite (is-MissingZero!7245 lt!322220) (= (select (arr!19638 a!3186) (index!31347 lt!322220)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7245 lt!322220) (= (select (arr!19638 a!3186) (index!31350 lt!322220)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!407269 () SeekEntryResult!7245)

(assert (=> d!99427 (= lt!322220 e!407269)))

(declare-fun c!79958 () Bool)

(declare-fun lt!322218 () SeekEntryResult!7245)

(assert (=> d!99427 (= c!79958 (and (is-Intermediate!7245 lt!322218) (undefined!8057 lt!322218)))))

(assert (=> d!99427 (= lt!322218 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!99427 (validMask!0 mask!3328)))

(assert (=> d!99427 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!322220)))

(declare-fun b!727454 () Bool)

(assert (=> b!727454 (= e!407270 (Found!7245 (index!31349 lt!322218)))))

(declare-fun b!727455 () Bool)

(assert (=> b!727455 (= e!407269 Undefined!7245)))

(declare-fun b!727456 () Bool)

(assert (=> b!727456 (= e!407268 (seekKeyOrZeroReturnVacant!0 (x!62360 lt!322218) (index!31349 lt!322218) (index!31349 lt!322218) k!2102 a!3186 mask!3328))))

(declare-fun b!727457 () Bool)

(assert (=> b!727457 (= e!407268 (MissingZero!7245 (index!31349 lt!322218)))))

(declare-fun b!727458 () Bool)

(assert (=> b!727458 (= e!407269 e!407270)))

(assert (=> b!727458 (= lt!322219 (select (arr!19638 a!3186) (index!31349 lt!322218)))))

(declare-fun c!79960 () Bool)

(assert (=> b!727458 (= c!79960 (= lt!322219 k!2102))))

(assert (= (and d!99427 c!79958) b!727455))

(assert (= (and d!99427 (not c!79958)) b!727458))

(assert (= (and b!727458 c!79960) b!727454))

(assert (= (and b!727458 (not c!79960)) b!727453))

(assert (= (and b!727453 c!79959) b!727457))

(assert (= (and b!727453 (not c!79959)) b!727456))

(declare-fun m!681421 () Bool)

(assert (=> d!99427 m!681421))

(declare-fun m!681423 () Bool)

(assert (=> d!99427 m!681423))

(declare-fun m!681425 () Bool)

(assert (=> d!99427 m!681425))

(declare-fun m!681427 () Bool)

(assert (=> d!99427 m!681427))

(assert (=> d!99427 m!681421))

(declare-fun m!681429 () Bool)

(assert (=> d!99427 m!681429))

(assert (=> d!99427 m!681177))

(declare-fun m!681431 () Bool)

(assert (=> b!727456 m!681431))

(declare-fun m!681433 () Bool)

(assert (=> b!727458 m!681433))

(assert (=> b!727069 d!99427))

(declare-fun bm!34817 () Bool)

(declare-fun call!34820 () Bool)

(assert (=> bm!34817 (= call!34820 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!727465 () Bool)

(declare-fun e!407275 () Bool)

(assert (=> b!727465 (= e!407275 call!34820)))

(declare-fun b!727466 () Bool)

(declare-fun e!407276 () Bool)

(assert (=> b!727466 (= e!407275 e!407276)))

(declare-fun lt!322224 () (_ BitVec 64))

(assert (=> b!727466 (= lt!322224 (select (arr!19638 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!322225 () Unit!24808)

(assert (=> b!727466 (= lt!322225 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!322224 #b00000000000000000000000000000000))))

(assert (=> b!727466 (arrayContainsKey!0 a!3186 lt!322224 #b00000000000000000000000000000000)))

(declare-fun lt!322226 () Unit!24808)

(assert (=> b!727466 (= lt!322226 lt!322225)))

(declare-fun res!488286 () Bool)

(assert (=> b!727466 (= res!488286 (= (seekEntryOrOpen!0 (select (arr!19638 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7245 #b00000000000000000000000000000000)))))

(assert (=> b!727466 (=> (not res!488286) (not e!407276))))

(declare-fun b!727467 () Bool)

(assert (=> b!727467 (= e!407276 call!34820)))

(declare-fun d!99453 () Bool)

(declare-fun res!488287 () Bool)

(declare-fun e!407274 () Bool)

(assert (=> d!99453 (=> res!488287 e!407274)))

(assert (=> d!99453 (= res!488287 (bvsge #b00000000000000000000000000000000 (size!20059 a!3186)))))

(assert (=> d!99453 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!407274)))

(declare-fun b!727468 () Bool)

(assert (=> b!727468 (= e!407274 e!407275)))

(declare-fun c!79964 () Bool)

(assert (=> b!727468 (= c!79964 (validKeyInArray!0 (select (arr!19638 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!99453 (not res!488287)) b!727468))

(assert (= (and b!727468 c!79964) b!727466))

(assert (= (and b!727468 (not c!79964)) b!727465))

(assert (= (and b!727466 res!488286) b!727467))

(assert (= (or b!727467 b!727465) bm!34817))

(declare-fun m!681445 () Bool)

(assert (=> bm!34817 m!681445))

(declare-fun m!681447 () Bool)

(assert (=> b!727466 m!681447))

(declare-fun m!681449 () Bool)

(assert (=> b!727466 m!681449))

(declare-fun m!681451 () Bool)

(assert (=> b!727466 m!681451))

(assert (=> b!727466 m!681447))

(declare-fun m!681453 () Bool)

(assert (=> b!727466 m!681453))

(assert (=> b!727468 m!681447))

(assert (=> b!727468 m!681447))

(declare-fun m!681455 () Bool)

(assert (=> b!727468 m!681455))

(assert (=> b!727076 d!99453))

(declare-fun d!99455 () Bool)

(assert (=> d!99455 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!64570 d!99455))

(declare-fun d!99457 () Bool)

(assert (=> d!99457 (= (array_inv!15412 a!3186) (bvsge (size!20059 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!64570 d!99457))

(declare-fun b!727469 () Bool)

(declare-fun c!79966 () Bool)

(declare-fun lt!322228 () (_ BitVec 64))

(assert (=> b!727469 (= c!79966 (= lt!322228 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!407279 () SeekEntryResult!7245)

(declare-fun e!407277 () SeekEntryResult!7245)

(assert (=> b!727469 (= e!407279 e!407277)))

(declare-fun d!99459 () Bool)

(declare-fun lt!322229 () SeekEntryResult!7245)

(assert (=> d!99459 (and (or (is-Undefined!7245 lt!322229) (not (is-Found!7245 lt!322229)) (and (bvsge (index!31348 lt!322229) #b00000000000000000000000000000000) (bvslt (index!31348 lt!322229) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322229) (is-Found!7245 lt!322229) (not (is-MissingZero!7245 lt!322229)) (and (bvsge (index!31347 lt!322229) #b00000000000000000000000000000000) (bvslt (index!31347 lt!322229) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322229) (is-Found!7245 lt!322229) (is-MissingZero!7245 lt!322229) (not (is-MissingVacant!7245 lt!322229)) (and (bvsge (index!31350 lt!322229) #b00000000000000000000000000000000) (bvslt (index!31350 lt!322229) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322229) (ite (is-Found!7245 lt!322229) (= (select (arr!19638 a!3186) (index!31348 lt!322229)) (select (arr!19638 a!3186) j!159)) (ite (is-MissingZero!7245 lt!322229) (= (select (arr!19638 a!3186) (index!31347 lt!322229)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7245 lt!322229) (= (select (arr!19638 a!3186) (index!31350 lt!322229)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!407278 () SeekEntryResult!7245)

(assert (=> d!99459 (= lt!322229 e!407278)))

(declare-fun c!79965 () Bool)

(declare-fun lt!322227 () SeekEntryResult!7245)

(assert (=> d!99459 (= c!79965 (and (is-Intermediate!7245 lt!322227) (undefined!8057 lt!322227)))))

(assert (=> d!99459 (= lt!322227 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19638 a!3186) j!159) mask!3328) (select (arr!19638 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!99459 (validMask!0 mask!3328)))

(assert (=> d!99459 (= (seekEntryOrOpen!0 (select (arr!19638 a!3186) j!159) a!3186 mask!3328) lt!322229)))

(declare-fun b!727470 () Bool)

(assert (=> b!727470 (= e!407279 (Found!7245 (index!31349 lt!322227)))))

(declare-fun b!727471 () Bool)

(assert (=> b!727471 (= e!407278 Undefined!7245)))

(declare-fun b!727472 () Bool)

(assert (=> b!727472 (= e!407277 (seekKeyOrZeroReturnVacant!0 (x!62360 lt!322227) (index!31349 lt!322227) (index!31349 lt!322227) (select (arr!19638 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!727473 () Bool)

(assert (=> b!727473 (= e!407277 (MissingZero!7245 (index!31349 lt!322227)))))

(declare-fun b!727474 () Bool)

(assert (=> b!727474 (= e!407278 e!407279)))

(assert (=> b!727474 (= lt!322228 (select (arr!19638 a!3186) (index!31349 lt!322227)))))

(declare-fun c!79967 () Bool)

(assert (=> b!727474 (= c!79967 (= lt!322228 (select (arr!19638 a!3186) j!159)))))

(assert (= (and d!99459 c!79965) b!727471))

(assert (= (and d!99459 (not c!79965)) b!727474))

(assert (= (and b!727474 c!79967) b!727470))

(assert (= (and b!727474 (not c!79967)) b!727469))

(assert (= (and b!727469 c!79966) b!727473))

(assert (= (and b!727469 (not c!79966)) b!727472))

(assert (=> d!99459 m!681143))

(assert (=> d!99459 m!681169))

(declare-fun m!681457 () Bool)

(assert (=> d!99459 m!681457))

(declare-fun m!681459 () Bool)

(assert (=> d!99459 m!681459))

(declare-fun m!681461 () Bool)

(assert (=> d!99459 m!681461))

(assert (=> d!99459 m!681169))

(assert (=> d!99459 m!681143))

(assert (=> d!99459 m!681171))

(assert (=> d!99459 m!681177))

(assert (=> b!727472 m!681143))

(declare-fun m!681463 () Bool)

(assert (=> b!727472 m!681463))

(declare-fun m!681465 () Bool)

(assert (=> b!727474 m!681465))

(assert (=> b!727065 d!99459))

(declare-fun bm!34820 () Bool)

(declare-fun call!34823 () Bool)

(declare-fun c!79976 () Bool)

(assert (=> bm!34820 (= call!34823 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!79976 (Cons!13689 (select (arr!19638 a!3186) #b00000000000000000000000000000000) Nil!13690) Nil!13690)))))

(declare-fun d!99461 () Bool)

(declare-fun res!488295 () Bool)

(declare-fun e!407295 () Bool)

(assert (=> d!99461 (=> res!488295 e!407295)))

(assert (=> d!99461 (= res!488295 (bvsge #b00000000000000000000000000000000 (size!20059 a!3186)))))

(assert (=> d!99461 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13690) e!407295)))

(declare-fun b!727497 () Bool)

(declare-fun e!407294 () Bool)

(declare-fun contains!4051 (List!13693 (_ BitVec 64)) Bool)

(assert (=> b!727497 (= e!407294 (contains!4051 Nil!13690 (select (arr!19638 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!727498 () Bool)

(declare-fun e!407297 () Bool)

(assert (=> b!727498 (= e!407295 e!407297)))

(declare-fun res!488294 () Bool)

(assert (=> b!727498 (=> (not res!488294) (not e!407297))))

(assert (=> b!727498 (= res!488294 (not e!407294))))

(declare-fun res!488296 () Bool)

(assert (=> b!727498 (=> (not res!488296) (not e!407294))))

(assert (=> b!727498 (= res!488296 (validKeyInArray!0 (select (arr!19638 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!727499 () Bool)

(declare-fun e!407296 () Bool)

(assert (=> b!727499 (= e!407296 call!34823)))

(declare-fun b!727500 () Bool)

(assert (=> b!727500 (= e!407297 e!407296)))

(assert (=> b!727500 (= c!79976 (validKeyInArray!0 (select (arr!19638 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!727501 () Bool)

(assert (=> b!727501 (= e!407296 call!34823)))

(assert (= (and d!99461 (not res!488295)) b!727498))

(assert (= (and b!727498 res!488296) b!727497))

(assert (= (and b!727498 res!488294) b!727500))

(assert (= (and b!727500 c!79976) b!727499))

(assert (= (and b!727500 (not c!79976)) b!727501))

(assert (= (or b!727499 b!727501) bm!34820))

(assert (=> bm!34820 m!681447))

(declare-fun m!681467 () Bool)

(assert (=> bm!34820 m!681467))

(assert (=> b!727497 m!681447))

(assert (=> b!727497 m!681447))

(declare-fun m!681469 () Bool)

(assert (=> b!727497 m!681469))

(assert (=> b!727498 m!681447))

(assert (=> b!727498 m!681447))

(assert (=> b!727498 m!681455))

(assert (=> b!727500 m!681447))

(assert (=> b!727500 m!681447))

(assert (=> b!727500 m!681455))

(assert (=> b!727064 d!99461))

(declare-fun b!727502 () Bool)

(declare-fun e!407299 () Bool)

(declare-fun lt!322237 () SeekEntryResult!7245)

(assert (=> b!727502 (= e!407299 (bvsge (x!62360 lt!322237) #b01111111111111111111111111111110))))

(declare-fun b!727503 () Bool)

(assert (=> b!727503 (and (bvsge (index!31349 lt!322237) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322237) (size!20059 lt!322035)))))

(declare-fun res!488299 () Bool)

(assert (=> b!727503 (= res!488299 (= (select (arr!19638 lt!322035) (index!31349 lt!322237)) lt!322037))))

(declare-fun e!407301 () Bool)

(assert (=> b!727503 (=> res!488299 e!407301)))

(declare-fun e!407302 () Bool)

(assert (=> b!727503 (= e!407302 e!407301)))

(declare-fun b!727504 () Bool)

(assert (=> b!727504 (= e!407299 e!407302)))

(declare-fun res!488298 () Bool)

(assert (=> b!727504 (= res!488298 (and (is-Intermediate!7245 lt!322237) (not (undefined!8057 lt!322237)) (bvslt (x!62360 lt!322237) #b01111111111111111111111111111110) (bvsge (x!62360 lt!322237) #b00000000000000000000000000000000) (bvsge (x!62360 lt!322237) x!1131)))))

(assert (=> b!727504 (=> (not res!488298) (not e!407302))))

(declare-fun b!727505 () Bool)

(declare-fun e!407300 () SeekEntryResult!7245)

(declare-fun e!407298 () SeekEntryResult!7245)

(assert (=> b!727505 (= e!407300 e!407298)))

(declare-fun c!79978 () Bool)

(declare-fun lt!322236 () (_ BitVec 64))

(assert (=> b!727505 (= c!79978 (or (= lt!322236 lt!322037) (= (bvadd lt!322236 lt!322236) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!99463 () Bool)

(assert (=> d!99463 e!407299))

(declare-fun c!79977 () Bool)

(assert (=> d!99463 (= c!79977 (and (is-Intermediate!7245 lt!322237) (undefined!8057 lt!322237)))))

(assert (=> d!99463 (= lt!322237 e!407300)))

(declare-fun c!79979 () Bool)

(assert (=> d!99463 (= c!79979 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99463 (= lt!322236 (select (arr!19638 lt!322035) index!1321))))

(assert (=> d!99463 (validMask!0 mask!3328)))

(assert (=> d!99463 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322037 lt!322035 mask!3328) lt!322237)))

(declare-fun b!727506 () Bool)

(assert (=> b!727506 (and (bvsge (index!31349 lt!322237) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322237) (size!20059 lt!322035)))))

(assert (=> b!727506 (= e!407301 (= (select (arr!19638 lt!322035) (index!31349 lt!322237)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!727507 () Bool)

(assert (=> b!727507 (and (bvsge (index!31349 lt!322237) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322237) (size!20059 lt!322035)))))

(declare-fun res!488297 () Bool)

(assert (=> b!727507 (= res!488297 (= (select (arr!19638 lt!322035) (index!31349 lt!322237)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727507 (=> res!488297 e!407301)))

(declare-fun b!727508 () Bool)

(assert (=> b!727508 (= e!407300 (Intermediate!7245 true index!1321 x!1131))))

(declare-fun b!727509 () Bool)

(assert (=> b!727509 (= e!407298 (Intermediate!7245 false index!1321 x!1131))))

(declare-fun b!727510 () Bool)

(assert (=> b!727510 (= e!407298 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!322037 lt!322035 mask!3328))))

(assert (= (and d!99463 c!79979) b!727508))

(assert (= (and d!99463 (not c!79979)) b!727505))

(assert (= (and b!727505 c!79978) b!727509))

(assert (= (and b!727505 (not c!79978)) b!727510))

(assert (= (and d!99463 c!79977) b!727502))

(assert (= (and d!99463 (not c!79977)) b!727504))

(assert (= (and b!727504 res!488298) b!727503))

(assert (= (and b!727503 (not res!488299)) b!727507))

(assert (= (and b!727507 (not res!488297)) b!727506))

(declare-fun m!681471 () Bool)

(assert (=> b!727506 m!681471))

(assert (=> b!727503 m!681471))

(declare-fun m!681473 () Bool)

(assert (=> d!99463 m!681473))

(assert (=> d!99463 m!681177))

(assert (=> b!727510 m!681183))

(assert (=> b!727510 m!681183))

(declare-fun m!681475 () Bool)

(assert (=> b!727510 m!681475))

(assert (=> b!727507 m!681471))

(assert (=> b!727075 d!99463))

(declare-fun b!727517 () Bool)

(declare-fun e!407307 () Bool)

(declare-fun lt!322242 () SeekEntryResult!7245)

(assert (=> b!727517 (= e!407307 (bvsge (x!62360 lt!322242) #b01111111111111111111111111111110))))

(declare-fun b!727518 () Bool)

(assert (=> b!727518 (and (bvsge (index!31349 lt!322242) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322242) (size!20059 lt!322035)))))

(declare-fun res!488302 () Bool)

(assert (=> b!727518 (= res!488302 (= (select (arr!19638 lt!322035) (index!31349 lt!322242)) lt!322037))))

(declare-fun e!407309 () Bool)

(assert (=> b!727518 (=> res!488302 e!407309)))

(declare-fun e!407310 () Bool)

(assert (=> b!727518 (= e!407310 e!407309)))

(declare-fun b!727519 () Bool)

(assert (=> b!727519 (= e!407307 e!407310)))

(declare-fun res!488301 () Bool)

(assert (=> b!727519 (= res!488301 (and (is-Intermediate!7245 lt!322242) (not (undefined!8057 lt!322242)) (bvslt (x!62360 lt!322242) #b01111111111111111111111111111110) (bvsge (x!62360 lt!322242) #b00000000000000000000000000000000) (bvsge (x!62360 lt!322242) #b00000000000000000000000000000000)))))

(assert (=> b!727519 (=> (not res!488301) (not e!407310))))

(declare-fun b!727520 () Bool)

(declare-fun e!407308 () SeekEntryResult!7245)

(declare-fun e!407306 () SeekEntryResult!7245)

(assert (=> b!727520 (= e!407308 e!407306)))

(declare-fun c!79984 () Bool)

(declare-fun lt!322241 () (_ BitVec 64))

(assert (=> b!727520 (= c!79984 (or (= lt!322241 lt!322037) (= (bvadd lt!322241 lt!322241) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!99465 () Bool)

(assert (=> d!99465 e!407307))

(declare-fun c!79983 () Bool)

(assert (=> d!99465 (= c!79983 (and (is-Intermediate!7245 lt!322242) (undefined!8057 lt!322242)))))

(assert (=> d!99465 (= lt!322242 e!407308)))

(declare-fun c!79985 () Bool)

(assert (=> d!99465 (= c!79985 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!99465 (= lt!322241 (select (arr!19638 lt!322035) (toIndex!0 lt!322037 mask!3328)))))

(assert (=> d!99465 (validMask!0 mask!3328)))

(assert (=> d!99465 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322037 mask!3328) lt!322037 lt!322035 mask!3328) lt!322242)))

(declare-fun b!727521 () Bool)

(assert (=> b!727521 (and (bvsge (index!31349 lt!322242) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322242) (size!20059 lt!322035)))))

(assert (=> b!727521 (= e!407309 (= (select (arr!19638 lt!322035) (index!31349 lt!322242)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!727522 () Bool)

(assert (=> b!727522 (and (bvsge (index!31349 lt!322242) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322242) (size!20059 lt!322035)))))

(declare-fun res!488300 () Bool)

(assert (=> b!727522 (= res!488300 (= (select (arr!19638 lt!322035) (index!31349 lt!322242)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727522 (=> res!488300 e!407309)))

(declare-fun b!727523 () Bool)

(assert (=> b!727523 (= e!407308 (Intermediate!7245 true (toIndex!0 lt!322037 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727524 () Bool)

(assert (=> b!727524 (= e!407306 (Intermediate!7245 false (toIndex!0 lt!322037 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!727525 () Bool)

(assert (=> b!727525 (= e!407306 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!322037 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!322037 lt!322035 mask!3328))))

(assert (= (and d!99465 c!79985) b!727523))

(assert (= (and d!99465 (not c!79985)) b!727520))

(assert (= (and b!727520 c!79984) b!727524))

(assert (= (and b!727520 (not c!79984)) b!727525))

(assert (= (and d!99465 c!79983) b!727517))

(assert (= (and d!99465 (not c!79983)) b!727519))

(assert (= (and b!727519 res!488301) b!727518))

(assert (= (and b!727518 (not res!488302)) b!727522))

(assert (= (and b!727522 (not res!488300)) b!727521))

(declare-fun m!681487 () Bool)

(assert (=> b!727521 m!681487))

(assert (=> b!727518 m!681487))

(assert (=> d!99465 m!681153))

(declare-fun m!681489 () Bool)

(assert (=> d!99465 m!681489))

(assert (=> d!99465 m!681177))

(assert (=> b!727525 m!681153))

(declare-fun m!681491 () Bool)

(assert (=> b!727525 m!681491))

(assert (=> b!727525 m!681491))

(declare-fun m!681493 () Bool)

(assert (=> b!727525 m!681493))

(assert (=> b!727522 m!681487))

(assert (=> b!727075 d!99465))

(declare-fun d!99469 () Bool)

(declare-fun lt!322244 () (_ BitVec 32))

(declare-fun lt!322243 () (_ BitVec 32))

(assert (=> d!99469 (= lt!322244 (bvmul (bvxor lt!322243 (bvlshr lt!322243 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!99469 (= lt!322243 ((_ extract 31 0) (bvand (bvxor lt!322037 (bvlshr lt!322037 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!99469 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!488234 (let ((h!14750 ((_ extract 31 0) (bvand (bvxor lt!322037 (bvlshr lt!322037 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!62367 (bvmul (bvxor h!14750 (bvlshr h!14750 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!62367 (bvlshr x!62367 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!488234 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!488234 #b00000000000000000000000000000000))))))

(assert (=> d!99469 (= (toIndex!0 lt!322037 mask!3328) (bvand (bvxor lt!322244 (bvlshr lt!322244 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!727075 d!99469))

(declare-fun d!99471 () Bool)

(assert (=> d!99471 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!727074 d!99471))

(declare-fun d!99473 () Bool)

(declare-fun lt!322247 () (_ BitVec 32))

(assert (=> d!99473 (and (bvsge lt!322247 #b00000000000000000000000000000000) (bvslt lt!322247 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!99473 (= lt!322247 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!99473 (validMask!0 mask!3328)))

(assert (=> d!99473 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!322247)))

(declare-fun bs!20862 () Bool)

(assert (= bs!20862 d!99473))

(declare-fun m!681495 () Bool)

(assert (=> bs!20862 m!681495))

(assert (=> bs!20862 m!681177))

(assert (=> b!727063 d!99473))

(declare-fun b!727526 () Bool)

(declare-fun e!407311 () SeekEntryResult!7245)

(assert (=> b!727526 (= e!407311 (Found!7245 index!1321))))

(declare-fun b!727527 () Bool)

(declare-fun e!407312 () SeekEntryResult!7245)

(assert (=> b!727527 (= e!407312 Undefined!7245)))

(declare-fun b!727528 () Bool)

(assert (=> b!727528 (= e!407312 e!407311)))

(declare-fun c!79987 () Bool)

(declare-fun lt!322248 () (_ BitVec 64))

(assert (=> b!727528 (= c!79987 (= lt!322248 (select (arr!19638 a!3186) j!159)))))

(declare-fun b!727529 () Bool)

(declare-fun e!407313 () SeekEntryResult!7245)

(assert (=> b!727529 (= e!407313 (MissingVacant!7245 resIntermediateIndex!5))))

(declare-fun b!727531 () Bool)

(declare-fun c!79986 () Bool)

(assert (=> b!727531 (= c!79986 (= lt!322248 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727531 (= e!407311 e!407313)))

(declare-fun lt!322249 () SeekEntryResult!7245)

(declare-fun d!99475 () Bool)

(assert (=> d!99475 (and (or (is-Undefined!7245 lt!322249) (not (is-Found!7245 lt!322249)) (and (bvsge (index!31348 lt!322249) #b00000000000000000000000000000000) (bvslt (index!31348 lt!322249) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322249) (is-Found!7245 lt!322249) (not (is-MissingVacant!7245 lt!322249)) (not (= (index!31350 lt!322249) resIntermediateIndex!5)) (and (bvsge (index!31350 lt!322249) #b00000000000000000000000000000000) (bvslt (index!31350 lt!322249) (size!20059 a!3186)))) (or (is-Undefined!7245 lt!322249) (ite (is-Found!7245 lt!322249) (= (select (arr!19638 a!3186) (index!31348 lt!322249)) (select (arr!19638 a!3186) j!159)) (and (is-MissingVacant!7245 lt!322249) (= (index!31350 lt!322249) resIntermediateIndex!5) (= (select (arr!19638 a!3186) (index!31350 lt!322249)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!99475 (= lt!322249 e!407312)))

(declare-fun c!79988 () Bool)

(assert (=> d!99475 (= c!79988 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99475 (= lt!322248 (select (arr!19638 a!3186) index!1321))))

(assert (=> d!99475 (validMask!0 mask!3328)))

(assert (=> d!99475 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19638 a!3186) j!159) a!3186 mask!3328) lt!322249)))

(declare-fun b!727530 () Bool)

(assert (=> b!727530 (= e!407313 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!19638 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99475 c!79988) b!727527))

(assert (= (and d!99475 (not c!79988)) b!727528))

(assert (= (and b!727528 c!79987) b!727526))

(assert (= (and b!727528 (not c!79987)) b!727531))

(assert (= (and b!727531 c!79986) b!727529))

(assert (= (and b!727531 (not c!79986)) b!727530))

(declare-fun m!681497 () Bool)

(assert (=> d!99475 m!681497))

(declare-fun m!681499 () Bool)

(assert (=> d!99475 m!681499))

(declare-fun m!681501 () Bool)

(assert (=> d!99475 m!681501))

(assert (=> d!99475 m!681177))

(assert (=> b!727530 m!681183))

(assert (=> b!727530 m!681183))

(assert (=> b!727530 m!681143))

(declare-fun m!681503 () Bool)

(assert (=> b!727530 m!681503))

(assert (=> b!727062 d!99475))

(declare-fun b!727542 () Bool)

(declare-fun e!407323 () Bool)

(declare-fun lt!322251 () SeekEntryResult!7245)

(assert (=> b!727542 (= e!407323 (bvsge (x!62360 lt!322251) #b01111111111111111111111111111110))))

(declare-fun b!727543 () Bool)

(assert (=> b!727543 (and (bvsge (index!31349 lt!322251) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322251) (size!20059 a!3186)))))

(declare-fun res!488311 () Bool)

(assert (=> b!727543 (= res!488311 (= (select (arr!19638 a!3186) (index!31349 lt!322251)) (select (arr!19638 a!3186) j!159)))))

(declare-fun e!407325 () Bool)

(assert (=> b!727543 (=> res!488311 e!407325)))

(declare-fun e!407326 () Bool)

(assert (=> b!727543 (= e!407326 e!407325)))

(declare-fun b!727544 () Bool)

(assert (=> b!727544 (= e!407323 e!407326)))

(declare-fun res!488310 () Bool)

(assert (=> b!727544 (= res!488310 (and (is-Intermediate!7245 lt!322251) (not (undefined!8057 lt!322251)) (bvslt (x!62360 lt!322251) #b01111111111111111111111111111110) (bvsge (x!62360 lt!322251) #b00000000000000000000000000000000) (bvsge (x!62360 lt!322251) x!1131)))))

(assert (=> b!727544 (=> (not res!488310) (not e!407326))))

(declare-fun b!727545 () Bool)

(declare-fun e!407324 () SeekEntryResult!7245)

(declare-fun e!407322 () SeekEntryResult!7245)

(assert (=> b!727545 (= e!407324 e!407322)))

(declare-fun lt!322250 () (_ BitVec 64))

(declare-fun c!79992 () Bool)

(assert (=> b!727545 (= c!79992 (or (= lt!322250 (select (arr!19638 a!3186) j!159)) (= (bvadd lt!322250 lt!322250) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!99477 () Bool)

(assert (=> d!99477 e!407323))

(declare-fun c!79991 () Bool)

(assert (=> d!99477 (= c!79991 (and (is-Intermediate!7245 lt!322251) (undefined!8057 lt!322251)))))

(assert (=> d!99477 (= lt!322251 e!407324)))

(declare-fun c!79993 () Bool)

(assert (=> d!99477 (= c!79993 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!99477 (= lt!322250 (select (arr!19638 a!3186) index!1321))))

(assert (=> d!99477 (validMask!0 mask!3328)))

(assert (=> d!99477 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19638 a!3186) j!159) a!3186 mask!3328) lt!322251)))

(declare-fun b!727546 () Bool)

(assert (=> b!727546 (and (bvsge (index!31349 lt!322251) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322251) (size!20059 a!3186)))))

(assert (=> b!727546 (= e!407325 (= (select (arr!19638 a!3186) (index!31349 lt!322251)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!727547 () Bool)

(assert (=> b!727547 (and (bvsge (index!31349 lt!322251) #b00000000000000000000000000000000) (bvslt (index!31349 lt!322251) (size!20059 a!3186)))))

(declare-fun res!488309 () Bool)

(assert (=> b!727547 (= res!488309 (= (select (arr!19638 a!3186) (index!31349 lt!322251)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!727547 (=> res!488309 e!407325)))

(declare-fun b!727548 () Bool)

(assert (=> b!727548 (= e!407324 (Intermediate!7245 true index!1321 x!1131))))

(declare-fun b!727549 () Bool)

(assert (=> b!727549 (= e!407322 (Intermediate!7245 false index!1321 x!1131))))

(declare-fun b!727550 () Bool)

(assert (=> b!727550 (= e!407322 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!19638 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!99477 c!79993) b!727548))

(assert (= (and d!99477 (not c!79993)) b!727545))

(assert (= (and b!727545 c!79992) b!727549))

(assert (= (and b!727545 (not c!79992)) b!727550))

(assert (= (and d!99477 c!79991) b!727542))

(assert (= (and d!99477 (not c!79991)) b!727544))

(assert (= (and b!727544 res!488310) b!727543))

(assert (= (and b!727543 (not res!488311)) b!727547))

(assert (= (and b!727547 (not res!488309)) b!727546))

(declare-fun m!681505 () Bool)

(assert (=> b!727546 m!681505))

(assert (=> b!727543 m!681505))

(assert (=> d!99477 m!681501))

(assert (=> d!99477 m!681177))

(assert (=> b!727550 m!681183))

(assert (=> b!727550 m!681183))

(assert (=> b!727550 m!681143))

(declare-fun m!681507 () Bool)

(assert (=> b!727550 m!681507))

(assert (=> b!727547 m!681505))

(assert (=> b!727072 d!99477))

(declare-fun d!99479 () Bool)

(declare-fun res!488316 () Bool)

(declare-fun e!407331 () Bool)

(assert (=> d!99479 (=> res!488316 e!407331)))

(assert (=> d!99479 (= res!488316 (= (select (arr!19638 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!99479 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!407331)))

(declare-fun b!727555 () Bool)

(declare-fun e!407332 () Bool)

(assert (=> b!727555 (= e!407331 e!407332)))

(declare-fun res!488317 () Bool)

(assert (=> b!727555 (=> (not res!488317) (not e!407332))))

(assert (=> b!727555 (= res!488317 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20059 a!3186)))))

(declare-fun b!727556 () Bool)

(assert (=> b!727556 (= e!407332 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!99479 (not res!488316)) b!727555))

(assert (= (and b!727555 res!488317) b!727556))

(assert (=> d!99479 m!681447))

(declare-fun m!681509 () Bool)

(assert (=> b!727556 m!681509))

(assert (=> b!727061 d!99479))

(push 1)

(assert (not d!99409))

(assert (not bm!34820))

(assert (not b!727320))

(assert (not b!727498))

(assert (not b!727525))

(assert (not b!727530))

(assert (not b!727468))

(assert (not b!727393))

(assert (not bm!34817))

(assert (not bm!34806))

(assert (not b!727466))

(assert (not d!99459))

(assert (not d!99387))

(assert (not b!727497))

(assert (not b!727510))

(assert (not d!99427))

(assert (not d!99473))

(assert (not d!99465))

(assert (not b!727556))

(assert (not d!99475))

(assert (not d!99477))

(assert (not b!727274))

(assert (not b!727472))

(assert (not d!99413))

(assert (not b!727322))

(assert (not b!727500))

(assert (not b!727456))

(assert (not b!727550))

(assert (not d!99463))

(check-sat)

(pop 1)

(push 1)

(check-sat)

