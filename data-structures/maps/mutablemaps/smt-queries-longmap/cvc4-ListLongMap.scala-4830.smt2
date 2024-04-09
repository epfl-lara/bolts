; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66408 () Bool)

(assert start!66408)

(declare-fun res!517706 () Bool)

(declare-fun e!426068 () Bool)

(assert (=> start!66408 (=> (not res!517706) (not e!426068))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66408 (= res!517706 (validMask!0 mask!3328))))

(assert (=> start!66408 e!426068))

(assert (=> start!66408 true))

(declare-datatypes ((array!42203 0))(
  ( (array!42204 (arr!20204 (Array (_ BitVec 32) (_ BitVec 64))) (size!20625 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42203)

(declare-fun array_inv!15978 (array!42203) Bool)

(assert (=> start!66408 (array_inv!15978 a!3186)))

(declare-fun b!765014 () Bool)

(declare-fun res!517703 () Bool)

(assert (=> b!765014 (=> (not res!517703) (not e!426068))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765014 (= res!517703 (validKeyInArray!0 k!2102))))

(declare-fun b!765015 () Bool)

(declare-fun res!517704 () Bool)

(declare-fun e!426074 () Bool)

(assert (=> b!765015 (=> (not res!517704) (not e!426074))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765015 (= res!517704 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20625 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20625 a!3186))))))

(declare-fun b!765016 () Bool)

(declare-fun res!517707 () Bool)

(assert (=> b!765016 (=> (not res!517707) (not e!426074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42203 (_ BitVec 32)) Bool)

(assert (=> b!765016 (= res!517707 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765017 () Bool)

(declare-fun res!517710 () Bool)

(declare-fun e!426071 () Bool)

(assert (=> b!765017 (=> (not res!517710) (not e!426071))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!765017 (= res!517710 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20204 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765018 () Bool)

(declare-fun res!517709 () Bool)

(assert (=> b!765018 (=> (not res!517709) (not e!426074))))

(declare-datatypes ((List!14259 0))(
  ( (Nil!14256) (Cons!14255 (h!15342 (_ BitVec 64)) (t!20582 List!14259)) )
))
(declare-fun arrayNoDuplicates!0 (array!42203 (_ BitVec 32) List!14259) Bool)

(assert (=> b!765018 (= res!517709 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14256))))

(declare-fun b!765019 () Bool)

(declare-fun res!517700 () Bool)

(assert (=> b!765019 (=> (not res!517700) (not e!426068))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!765019 (= res!517700 (and (= (size!20625 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20625 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20625 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!426072 () Bool)

(declare-fun b!765020 () Bool)

(declare-datatypes ((SeekEntryResult!7811 0))(
  ( (MissingZero!7811 (index!33611 (_ BitVec 32))) (Found!7811 (index!33612 (_ BitVec 32))) (Intermediate!7811 (undefined!8623 Bool) (index!33613 (_ BitVec 32)) (x!64537 (_ BitVec 32))) (Undefined!7811) (MissingVacant!7811 (index!33614 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42203 (_ BitVec 32)) SeekEntryResult!7811)

(assert (=> b!765020 (= e!426072 (not (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20204 a!3186) j!159) a!3186 mask!3328) (Found!7811 j!159))))))

(declare-fun e!426073 () Bool)

(assert (=> b!765020 e!426073))

(declare-fun res!517711 () Bool)

(assert (=> b!765020 (=> (not res!517711) (not e!426073))))

(assert (=> b!765020 (= res!517711 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26348 0))(
  ( (Unit!26349) )
))
(declare-fun lt!340372 () Unit!26348)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42203 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26348)

(assert (=> b!765020 (= lt!340372 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765021 () Bool)

(declare-fun res!517705 () Bool)

(assert (=> b!765021 (=> (not res!517705) (not e!426068))))

(assert (=> b!765021 (= res!517705 (validKeyInArray!0 (select (arr!20204 a!3186) j!159)))))

(declare-fun b!765022 () Bool)

(declare-fun res!517713 () Bool)

(assert (=> b!765022 (=> (not res!517713) (not e!426068))))

(declare-fun arrayContainsKey!0 (array!42203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765022 (= res!517713 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765023 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42203 (_ BitVec 32)) SeekEntryResult!7811)

(assert (=> b!765023 (= e!426073 (= (seekEntryOrOpen!0 (select (arr!20204 a!3186) j!159) a!3186 mask!3328) (Found!7811 j!159)))))

(declare-fun b!765024 () Bool)

(declare-fun res!517701 () Bool)

(assert (=> b!765024 (=> (not res!517701) (not e!426071))))

(declare-fun e!426069 () Bool)

(assert (=> b!765024 (= res!517701 e!426069)))

(declare-fun c!84045 () Bool)

(assert (=> b!765024 (= c!84045 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!340374 () SeekEntryResult!7811)

(declare-fun b!765025 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42203 (_ BitVec 32)) SeekEntryResult!7811)

(assert (=> b!765025 (= e!426069 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20204 a!3186) j!159) a!3186 mask!3328) lt!340374))))

(declare-fun b!765026 () Bool)

(assert (=> b!765026 (= e!426074 e!426071)))

(declare-fun res!517702 () Bool)

(assert (=> b!765026 (=> (not res!517702) (not e!426071))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765026 (= res!517702 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20204 a!3186) j!159) mask!3328) (select (arr!20204 a!3186) j!159) a!3186 mask!3328) lt!340374))))

(assert (=> b!765026 (= lt!340374 (Intermediate!7811 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765027 () Bool)

(assert (=> b!765027 (= e!426069 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20204 a!3186) j!159) a!3186 mask!3328) (Found!7811 j!159)))))

(declare-fun b!765028 () Bool)

(assert (=> b!765028 (= e!426071 e!426072)))

(declare-fun res!517712 () Bool)

(assert (=> b!765028 (=> (not res!517712) (not e!426072))))

(declare-fun lt!340373 () array!42203)

(declare-fun lt!340375 () (_ BitVec 64))

(assert (=> b!765028 (= res!517712 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340375 mask!3328) lt!340375 lt!340373 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340375 lt!340373 mask!3328)))))

(assert (=> b!765028 (= lt!340375 (select (store (arr!20204 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!765028 (= lt!340373 (array!42204 (store (arr!20204 a!3186) i!1173 k!2102) (size!20625 a!3186)))))

(declare-fun b!765029 () Bool)

(assert (=> b!765029 (= e!426068 e!426074)))

(declare-fun res!517708 () Bool)

(assert (=> b!765029 (=> (not res!517708) (not e!426074))))

(declare-fun lt!340371 () SeekEntryResult!7811)

(assert (=> b!765029 (= res!517708 (or (= lt!340371 (MissingZero!7811 i!1173)) (= lt!340371 (MissingVacant!7811 i!1173))))))

(assert (=> b!765029 (= lt!340371 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!66408 res!517706) b!765019))

(assert (= (and b!765019 res!517700) b!765021))

(assert (= (and b!765021 res!517705) b!765014))

(assert (= (and b!765014 res!517703) b!765022))

(assert (= (and b!765022 res!517713) b!765029))

(assert (= (and b!765029 res!517708) b!765016))

(assert (= (and b!765016 res!517707) b!765018))

(assert (= (and b!765018 res!517709) b!765015))

(assert (= (and b!765015 res!517704) b!765026))

(assert (= (and b!765026 res!517702) b!765017))

(assert (= (and b!765017 res!517710) b!765024))

(assert (= (and b!765024 c!84045) b!765025))

(assert (= (and b!765024 (not c!84045)) b!765027))

(assert (= (and b!765024 res!517701) b!765028))

(assert (= (and b!765028 res!517712) b!765020))

(assert (= (and b!765020 res!517711) b!765023))

(declare-fun m!711307 () Bool)

(assert (=> b!765023 m!711307))

(assert (=> b!765023 m!711307))

(declare-fun m!711309 () Bool)

(assert (=> b!765023 m!711309))

(declare-fun m!711311 () Bool)

(assert (=> b!765022 m!711311))

(declare-fun m!711313 () Bool)

(assert (=> b!765017 m!711313))

(assert (=> b!765027 m!711307))

(assert (=> b!765027 m!711307))

(declare-fun m!711315 () Bool)

(assert (=> b!765027 m!711315))

(assert (=> b!765021 m!711307))

(assert (=> b!765021 m!711307))

(declare-fun m!711317 () Bool)

(assert (=> b!765021 m!711317))

(assert (=> b!765026 m!711307))

(assert (=> b!765026 m!711307))

(declare-fun m!711319 () Bool)

(assert (=> b!765026 m!711319))

(assert (=> b!765026 m!711319))

(assert (=> b!765026 m!711307))

(declare-fun m!711321 () Bool)

(assert (=> b!765026 m!711321))

(declare-fun m!711323 () Bool)

(assert (=> b!765018 m!711323))

(declare-fun m!711325 () Bool)

(assert (=> start!66408 m!711325))

(declare-fun m!711327 () Bool)

(assert (=> start!66408 m!711327))

(declare-fun m!711329 () Bool)

(assert (=> b!765016 m!711329))

(declare-fun m!711331 () Bool)

(assert (=> b!765029 m!711331))

(declare-fun m!711333 () Bool)

(assert (=> b!765028 m!711333))

(declare-fun m!711335 () Bool)

(assert (=> b!765028 m!711335))

(declare-fun m!711337 () Bool)

(assert (=> b!765028 m!711337))

(assert (=> b!765028 m!711333))

(declare-fun m!711339 () Bool)

(assert (=> b!765028 m!711339))

(declare-fun m!711341 () Bool)

(assert (=> b!765028 m!711341))

(assert (=> b!765025 m!711307))

(assert (=> b!765025 m!711307))

(declare-fun m!711343 () Bool)

(assert (=> b!765025 m!711343))

(declare-fun m!711345 () Bool)

(assert (=> b!765014 m!711345))

(assert (=> b!765020 m!711307))

(assert (=> b!765020 m!711307))

(declare-fun m!711347 () Bool)

(assert (=> b!765020 m!711347))

(declare-fun m!711349 () Bool)

(assert (=> b!765020 m!711349))

(declare-fun m!711351 () Bool)

(assert (=> b!765020 m!711351))

(push 1)

(assert (not start!66408))

(assert (not b!765021))

(assert (not b!765026))

(assert (not b!765028))

(assert (not b!765020))

(assert (not b!765027))

(assert (not b!765018))

(assert (not b!765016))

(assert (not b!765029))

(assert (not b!765014))

(assert (not b!765025))

(assert (not b!765022))

(assert (not b!765023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!765138 () Bool)

(declare-fun e!426136 () SeekEntryResult!7811)

(declare-fun lt!340416 () SeekEntryResult!7811)

(assert (=> b!765138 (= e!426136 (MissingZero!7811 (index!33613 lt!340416)))))

(declare-fun b!765139 () Bool)

(declare-fun c!84088 () Bool)

(declare-fun lt!340417 () (_ BitVec 64))

(assert (=> b!765139 (= c!84088 (= lt!340417 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426137 () SeekEntryResult!7811)

(assert (=> b!765139 (= e!426137 e!426136)))

(declare-fun b!765140 () Bool)

(declare-fun e!426138 () SeekEntryResult!7811)

(assert (=> b!765140 (= e!426138 e!426137)))

(assert (=> b!765140 (= lt!340417 (select (arr!20204 a!3186) (index!33613 lt!340416)))))

(declare-fun c!84089 () Bool)

(assert (=> b!765140 (= c!84089 (= lt!340417 (select (arr!20204 a!3186) j!159)))))

(declare-fun b!765141 () Bool)

(assert (=> b!765141 (= e!426138 Undefined!7811)))

(declare-fun d!101015 () Bool)

(declare-fun lt!340418 () SeekEntryResult!7811)

(assert (=> d!101015 (and (or (is-Undefined!7811 lt!340418) (not (is-Found!7811 lt!340418)) (and (bvsge (index!33612 lt!340418) #b00000000000000000000000000000000) (bvslt (index!33612 lt!340418) (size!20625 a!3186)))) (or (is-Undefined!7811 lt!340418) (is-Found!7811 lt!340418) (not (is-MissingZero!7811 lt!340418)) (and (bvsge (index!33611 lt!340418) #b00000000000000000000000000000000) (bvslt (index!33611 lt!340418) (size!20625 a!3186)))) (or (is-Undefined!7811 lt!340418) (is-Found!7811 lt!340418) (is-MissingZero!7811 lt!340418) (not (is-MissingVacant!7811 lt!340418)) (and (bvsge (index!33614 lt!340418) #b00000000000000000000000000000000) (bvslt (index!33614 lt!340418) (size!20625 a!3186)))) (or (is-Undefined!7811 lt!340418) (ite (is-Found!7811 lt!340418) (= (select (arr!20204 a!3186) (index!33612 lt!340418)) (select (arr!20204 a!3186) j!159)) (ite (is-MissingZero!7811 lt!340418) (= (select (arr!20204 a!3186) (index!33611 lt!340418)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7811 lt!340418) (= (select (arr!20204 a!3186) (index!33614 lt!340418)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101015 (= lt!340418 e!426138)))

(declare-fun c!84090 () Bool)

(assert (=> d!101015 (= c!84090 (and (is-Intermediate!7811 lt!340416) (undefined!8623 lt!340416)))))

(assert (=> d!101015 (= lt!340416 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20204 a!3186) j!159) mask!3328) (select (arr!20204 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101015 (validMask!0 mask!3328)))

(assert (=> d!101015 (= (seekEntryOrOpen!0 (select (arr!20204 a!3186) j!159) a!3186 mask!3328) lt!340418)))

(declare-fun b!765142 () Bool)

(assert (=> b!765142 (= e!426136 (seekKeyOrZeroReturnVacant!0 (x!64537 lt!340416) (index!33613 lt!340416) (index!33613 lt!340416) (select (arr!20204 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!765143 () Bool)

(assert (=> b!765143 (= e!426137 (Found!7811 (index!33613 lt!340416)))))

(assert (= (and d!101015 c!84090) b!765141))

(assert (= (and d!101015 (not c!84090)) b!765140))

(assert (= (and b!765140 c!84089) b!765143))

(assert (= (and b!765140 (not c!84089)) b!765139))

(assert (= (and b!765139 c!84088) b!765138))

(assert (= (and b!765139 (not c!84088)) b!765142))

(declare-fun m!711393 () Bool)

(assert (=> b!765140 m!711393))

(assert (=> d!101015 m!711307))

(assert (=> d!101015 m!711319))

(declare-fun m!711395 () Bool)

(assert (=> d!101015 m!711395))

(assert (=> d!101015 m!711319))

(assert (=> d!101015 m!711307))

(assert (=> d!101015 m!711321))

(assert (=> d!101015 m!711325))

(declare-fun m!711397 () Bool)

(assert (=> d!101015 m!711397))

(declare-fun m!711399 () Bool)

(assert (=> d!101015 m!711399))

(assert (=> b!765142 m!711307))

(declare-fun m!711401 () Bool)

(assert (=> b!765142 m!711401))

(assert (=> b!765023 d!101015))

(declare-fun d!101023 () Bool)

(assert (=> d!101023 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!765014 d!101023))

(declare-fun b!765213 () Bool)

(declare-fun lt!340447 () SeekEntryResult!7811)

(assert (=> b!765213 (and (bvsge (index!33613 lt!340447) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340447) (size!20625 a!3186)))))

(declare-fun res!517756 () Bool)

(assert (=> b!765213 (= res!517756 (= (select (arr!20204 a!3186) (index!33613 lt!340447)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426182 () Bool)

(assert (=> b!765213 (=> res!517756 e!426182)))

(declare-fun e!426178 () SeekEntryResult!7811)

(declare-fun b!765214 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765214 (= e!426178 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20204 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!765215 () Bool)

(assert (=> b!765215 (and (bvsge (index!33613 lt!340447) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340447) (size!20625 a!3186)))))

(assert (=> b!765215 (= e!426182 (= (select (arr!20204 a!3186) (index!33613 lt!340447)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!765216 () Bool)

(declare-fun e!426180 () SeekEntryResult!7811)

(assert (=> b!765216 (= e!426180 e!426178)))

(declare-fun lt!340446 () (_ BitVec 64))

(declare-fun c!84118 () Bool)

(assert (=> b!765216 (= c!84118 (or (= lt!340446 (select (arr!20204 a!3186) j!159)) (= (bvadd lt!340446 lt!340446) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!101025 () Bool)

(declare-fun e!426181 () Bool)

(assert (=> d!101025 e!426181))

(declare-fun c!84120 () Bool)

(assert (=> d!101025 (= c!84120 (and (is-Intermediate!7811 lt!340447) (undefined!8623 lt!340447)))))

(assert (=> d!101025 (= lt!340447 e!426180)))

(declare-fun c!84119 () Bool)

(assert (=> d!101025 (= c!84119 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101025 (= lt!340446 (select (arr!20204 a!3186) index!1321))))

(assert (=> d!101025 (validMask!0 mask!3328)))

(assert (=> d!101025 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20204 a!3186) j!159) a!3186 mask!3328) lt!340447)))

(declare-fun b!765217 () Bool)

(declare-fun e!426179 () Bool)

(assert (=> b!765217 (= e!426181 e!426179)))

(declare-fun res!517754 () Bool)

(assert (=> b!765217 (= res!517754 (and (is-Intermediate!7811 lt!340447) (not (undefined!8623 lt!340447)) (bvslt (x!64537 lt!340447) #b01111111111111111111111111111110) (bvsge (x!64537 lt!340447) #b00000000000000000000000000000000) (bvsge (x!64537 lt!340447) x!1131)))))

(assert (=> b!765217 (=> (not res!517754) (not e!426179))))

(declare-fun b!765218 () Bool)

(assert (=> b!765218 (= e!426180 (Intermediate!7811 true index!1321 x!1131))))

(declare-fun b!765219 () Bool)

(assert (=> b!765219 (and (bvsge (index!33613 lt!340447) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340447) (size!20625 a!3186)))))

(declare-fun res!517755 () Bool)

(assert (=> b!765219 (= res!517755 (= (select (arr!20204 a!3186) (index!33613 lt!340447)) (select (arr!20204 a!3186) j!159)))))

(assert (=> b!765219 (=> res!517755 e!426182)))

(assert (=> b!765219 (= e!426179 e!426182)))

(declare-fun b!765220 () Bool)

(assert (=> b!765220 (= e!426181 (bvsge (x!64537 lt!340447) #b01111111111111111111111111111110))))

(declare-fun b!765221 () Bool)

(assert (=> b!765221 (= e!426178 (Intermediate!7811 false index!1321 x!1131))))

(assert (= (and d!101025 c!84119) b!765218))

(assert (= (and d!101025 (not c!84119)) b!765216))

(assert (= (and b!765216 c!84118) b!765221))

(assert (= (and b!765216 (not c!84118)) b!765214))

(assert (= (and d!101025 c!84120) b!765220))

(assert (= (and d!101025 (not c!84120)) b!765217))

(assert (= (and b!765217 res!517754) b!765219))

(assert (= (and b!765219 (not res!517755)) b!765213))

(assert (= (and b!765213 (not res!517756)) b!765215))

(declare-fun m!711453 () Bool)

(assert (=> b!765219 m!711453))

(declare-fun m!711455 () Bool)

(assert (=> b!765214 m!711455))

(assert (=> b!765214 m!711455))

(assert (=> b!765214 m!711307))

(declare-fun m!711457 () Bool)

(assert (=> b!765214 m!711457))

(assert (=> b!765215 m!711453))

(declare-fun m!711459 () Bool)

(assert (=> d!101025 m!711459))

(assert (=> d!101025 m!711325))

(assert (=> b!765213 m!711453))

(assert (=> b!765025 d!101025))

(declare-fun b!765222 () Bool)

(declare-fun lt!340449 () SeekEntryResult!7811)

(assert (=> b!765222 (and (bvsge (index!33613 lt!340449) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340449) (size!20625 a!3186)))))

(declare-fun res!517759 () Bool)

(assert (=> b!765222 (= res!517759 (= (select (arr!20204 a!3186) (index!33613 lt!340449)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426187 () Bool)

(assert (=> b!765222 (=> res!517759 e!426187)))

(declare-fun b!765223 () Bool)

(declare-fun e!426183 () SeekEntryResult!7811)

(assert (=> b!765223 (= e!426183 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20204 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20204 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!765224 () Bool)

(assert (=> b!765224 (and (bvsge (index!33613 lt!340449) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340449) (size!20625 a!3186)))))

(assert (=> b!765224 (= e!426187 (= (select (arr!20204 a!3186) (index!33613 lt!340449)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!765225 () Bool)

(declare-fun e!426185 () SeekEntryResult!7811)

(assert (=> b!765225 (= e!426185 e!426183)))

(declare-fun c!84121 () Bool)

(declare-fun lt!340448 () (_ BitVec 64))

(assert (=> b!765225 (= c!84121 (or (= lt!340448 (select (arr!20204 a!3186) j!159)) (= (bvadd lt!340448 lt!340448) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!101041 () Bool)

(declare-fun e!426186 () Bool)

(assert (=> d!101041 e!426186))

(declare-fun c!84123 () Bool)

(assert (=> d!101041 (= c!84123 (and (is-Intermediate!7811 lt!340449) (undefined!8623 lt!340449)))))

(assert (=> d!101041 (= lt!340449 e!426185)))

(declare-fun c!84122 () Bool)

(assert (=> d!101041 (= c!84122 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101041 (= lt!340448 (select (arr!20204 a!3186) (toIndex!0 (select (arr!20204 a!3186) j!159) mask!3328)))))

(assert (=> d!101041 (validMask!0 mask!3328)))

(assert (=> d!101041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20204 a!3186) j!159) mask!3328) (select (arr!20204 a!3186) j!159) a!3186 mask!3328) lt!340449)))

(declare-fun b!765226 () Bool)

(declare-fun e!426184 () Bool)

(assert (=> b!765226 (= e!426186 e!426184)))

(declare-fun res!517757 () Bool)

(assert (=> b!765226 (= res!517757 (and (is-Intermediate!7811 lt!340449) (not (undefined!8623 lt!340449)) (bvslt (x!64537 lt!340449) #b01111111111111111111111111111110) (bvsge (x!64537 lt!340449) #b00000000000000000000000000000000) (bvsge (x!64537 lt!340449) #b00000000000000000000000000000000)))))

(assert (=> b!765226 (=> (not res!517757) (not e!426184))))

(declare-fun b!765227 () Bool)

(assert (=> b!765227 (= e!426185 (Intermediate!7811 true (toIndex!0 (select (arr!20204 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!765228 () Bool)

(assert (=> b!765228 (and (bvsge (index!33613 lt!340449) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340449) (size!20625 a!3186)))))

(declare-fun res!517758 () Bool)

(assert (=> b!765228 (= res!517758 (= (select (arr!20204 a!3186) (index!33613 lt!340449)) (select (arr!20204 a!3186) j!159)))))

(assert (=> b!765228 (=> res!517758 e!426187)))

(assert (=> b!765228 (= e!426184 e!426187)))

(declare-fun b!765229 () Bool)

(assert (=> b!765229 (= e!426186 (bvsge (x!64537 lt!340449) #b01111111111111111111111111111110))))

(declare-fun b!765230 () Bool)

(assert (=> b!765230 (= e!426183 (Intermediate!7811 false (toIndex!0 (select (arr!20204 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!101041 c!84122) b!765227))

(assert (= (and d!101041 (not c!84122)) b!765225))

(assert (= (and b!765225 c!84121) b!765230))

(assert (= (and b!765225 (not c!84121)) b!765223))

(assert (= (and d!101041 c!84123) b!765229))

(assert (= (and d!101041 (not c!84123)) b!765226))

(assert (= (and b!765226 res!517757) b!765228))

(assert (= (and b!765228 (not res!517758)) b!765222))

(assert (= (and b!765222 (not res!517759)) b!765224))

(declare-fun m!711461 () Bool)

(assert (=> b!765228 m!711461))

(assert (=> b!765223 m!711319))

(declare-fun m!711463 () Bool)

(assert (=> b!765223 m!711463))

(assert (=> b!765223 m!711463))

(assert (=> b!765223 m!711307))

(declare-fun m!711465 () Bool)

(assert (=> b!765223 m!711465))

(assert (=> b!765224 m!711461))

(assert (=> d!101041 m!711319))

(declare-fun m!711467 () Bool)

(assert (=> d!101041 m!711467))

(assert (=> d!101041 m!711325))

(assert (=> b!765222 m!711461))

(assert (=> b!765026 d!101041))

(declare-fun d!101045 () Bool)

(declare-fun lt!340461 () (_ BitVec 32))

(declare-fun lt!340460 () (_ BitVec 32))

(assert (=> d!101045 (= lt!340461 (bvmul (bvxor lt!340460 (bvlshr lt!340460 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101045 (= lt!340460 ((_ extract 31 0) (bvand (bvxor (select (arr!20204 a!3186) j!159) (bvlshr (select (arr!20204 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101045 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517760 (let ((h!15344 ((_ extract 31 0) (bvand (bvxor (select (arr!20204 a!3186) j!159) (bvlshr (select (arr!20204 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64543 (bvmul (bvxor h!15344 (bvlshr h!15344 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64543 (bvlshr x!64543 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517760 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517760 #b00000000000000000000000000000000))))))

(assert (=> d!101045 (= (toIndex!0 (select (arr!20204 a!3186) j!159) mask!3328) (bvand (bvxor lt!340461 (bvlshr lt!340461 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!765026 d!101045))

(declare-fun b!765287 () Bool)

(declare-fun e!426226 () Bool)

(declare-fun e!426225 () Bool)

(assert (=> b!765287 (= e!426226 e!426225)))

(declare-fun c!84141 () Bool)

(assert (=> b!765287 (= c!84141 (validKeyInArray!0 (select (arr!20204 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35031 () Bool)

(declare-fun call!35034 () Bool)

(assert (=> bm!35031 (= call!35034 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!101051 () Bool)

(declare-fun res!517784 () Bool)

(assert (=> d!101051 (=> res!517784 e!426226)))

(assert (=> d!101051 (= res!517784 (bvsge #b00000000000000000000000000000000 (size!20625 a!3186)))))

(assert (=> d!101051 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!426226)))

(declare-fun b!765288 () Bool)

(assert (=> b!765288 (= e!426225 call!35034)))

(declare-fun b!765289 () Bool)

(declare-fun e!426227 () Bool)

(assert (=> b!765289 (= e!426227 call!35034)))

(declare-fun b!765290 () Bool)

(assert (=> b!765290 (= e!426225 e!426227)))

(declare-fun lt!340481 () (_ BitVec 64))

(assert (=> b!765290 (= lt!340481 (select (arr!20204 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!340482 () Unit!26348)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42203 (_ BitVec 64) (_ BitVec 32)) Unit!26348)

(assert (=> b!765290 (= lt!340482 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!340481 #b00000000000000000000000000000000))))

(assert (=> b!765290 (arrayContainsKey!0 a!3186 lt!340481 #b00000000000000000000000000000000)))

(declare-fun lt!340483 () Unit!26348)

(assert (=> b!765290 (= lt!340483 lt!340482)))

(declare-fun res!517783 () Bool)

(assert (=> b!765290 (= res!517783 (= (seekEntryOrOpen!0 (select (arr!20204 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7811 #b00000000000000000000000000000000)))))

(assert (=> b!765290 (=> (not res!517783) (not e!426227))))

(assert (= (and d!101051 (not res!517784)) b!765287))

(assert (= (and b!765287 c!84141) b!765290))

(assert (= (and b!765287 (not c!84141)) b!765288))

(assert (= (and b!765290 res!517783) b!765289))

(assert (= (or b!765289 b!765288) bm!35031))

(declare-fun m!711497 () Bool)

(assert (=> b!765287 m!711497))

(assert (=> b!765287 m!711497))

(declare-fun m!711499 () Bool)

(assert (=> b!765287 m!711499))

(declare-fun m!711501 () Bool)

(assert (=> bm!35031 m!711501))

(assert (=> b!765290 m!711497))

(declare-fun m!711503 () Bool)

(assert (=> b!765290 m!711503))

(declare-fun m!711505 () Bool)

(assert (=> b!765290 m!711505))

(assert (=> b!765290 m!711497))

(declare-fun m!711507 () Bool)

(assert (=> b!765290 m!711507))

(assert (=> b!765016 d!101051))

(declare-fun b!765371 () Bool)

(declare-fun e!426276 () SeekEntryResult!7811)

(declare-fun e!426278 () SeekEntryResult!7811)

(assert (=> b!765371 (= e!426276 e!426278)))

(declare-fun c!84171 () Bool)

(declare-fun lt!340518 () (_ BitVec 64))

(assert (=> b!765371 (= c!84171 (= lt!340518 (select (arr!20204 a!3186) j!159)))))

(declare-fun b!765372 () Bool)

(assert (=> b!765372 (= e!426278 (Found!7811 index!1321))))

(declare-fun e!426277 () SeekEntryResult!7811)

(declare-fun b!765373 () Bool)

(assert (=> b!765373 (= e!426277 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20204 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101063 () Bool)

(declare-fun lt!340519 () SeekEntryResult!7811)

(assert (=> d!101063 (and (or (is-Undefined!7811 lt!340519) (not (is-Found!7811 lt!340519)) (and (bvsge (index!33612 lt!340519) #b00000000000000000000000000000000) (bvslt (index!33612 lt!340519) (size!20625 a!3186)))) (or (is-Undefined!7811 lt!340519) (is-Found!7811 lt!340519) (not (is-MissingVacant!7811 lt!340519)) (not (= (index!33614 lt!340519) resIntermediateIndex!5)) (and (bvsge (index!33614 lt!340519) #b00000000000000000000000000000000) (bvslt (index!33614 lt!340519) (size!20625 a!3186)))) (or (is-Undefined!7811 lt!340519) (ite (is-Found!7811 lt!340519) (= (select (arr!20204 a!3186) (index!33612 lt!340519)) (select (arr!20204 a!3186) j!159)) (and (is-MissingVacant!7811 lt!340519) (= (index!33614 lt!340519) resIntermediateIndex!5) (= (select (arr!20204 a!3186) (index!33614 lt!340519)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101063 (= lt!340519 e!426276)))

(declare-fun c!84173 () Bool)

(assert (=> d!101063 (= c!84173 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101063 (= lt!340518 (select (arr!20204 a!3186) index!1321))))

(assert (=> d!101063 (validMask!0 mask!3328)))

(assert (=> d!101063 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20204 a!3186) j!159) a!3186 mask!3328) lt!340519)))

(declare-fun b!765374 () Bool)

(declare-fun c!84172 () Bool)

(assert (=> b!765374 (= c!84172 (= lt!340518 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!765374 (= e!426278 e!426277)))

(declare-fun b!765375 () Bool)

(assert (=> b!765375 (= e!426277 (MissingVacant!7811 resIntermediateIndex!5))))

(declare-fun b!765376 () Bool)

(assert (=> b!765376 (= e!426276 Undefined!7811)))

(assert (= (and d!101063 c!84173) b!765376))

(assert (= (and d!101063 (not c!84173)) b!765371))

(assert (= (and b!765371 c!84171) b!765372))

(assert (= (and b!765371 (not c!84171)) b!765374))

(assert (= (and b!765374 c!84172) b!765375))

(assert (= (and b!765374 (not c!84172)) b!765373))

(assert (=> b!765373 m!711455))

(assert (=> b!765373 m!711455))

(assert (=> b!765373 m!711307))

(declare-fun m!711569 () Bool)

(assert (=> b!765373 m!711569))

(declare-fun m!711571 () Bool)

(assert (=> d!101063 m!711571))

(declare-fun m!711573 () Bool)

(assert (=> d!101063 m!711573))

(assert (=> d!101063 m!711459))

(assert (=> d!101063 m!711325))

(assert (=> b!765027 d!101063))

(declare-fun d!101091 () Bool)

(assert (=> d!101091 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66408 d!101091))

(declare-fun d!101097 () Bool)

(assert (=> d!101097 (= (array_inv!15978 a!3186) (bvsge (size!20625 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66408 d!101097))

(declare-fun b!765392 () Bool)

(declare-fun lt!340525 () SeekEntryResult!7811)

(assert (=> b!765392 (and (bvsge (index!33613 lt!340525) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340525) (size!20625 lt!340373)))))

(declare-fun res!517819 () Bool)

(assert (=> b!765392 (= res!517819 (= (select (arr!20204 lt!340373) (index!33613 lt!340525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426294 () Bool)

(assert (=> b!765392 (=> res!517819 e!426294)))

(declare-fun b!765393 () Bool)

(declare-fun e!426290 () SeekEntryResult!7811)

(assert (=> b!765393 (= e!426290 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!340375 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!340375 lt!340373 mask!3328))))

(declare-fun b!765394 () Bool)

(assert (=> b!765394 (and (bvsge (index!33613 lt!340525) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340525) (size!20625 lt!340373)))))

(assert (=> b!765394 (= e!426294 (= (select (arr!20204 lt!340373) (index!33613 lt!340525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!765395 () Bool)

(declare-fun e!426292 () SeekEntryResult!7811)

(assert (=> b!765395 (= e!426292 e!426290)))

(declare-fun c!84177 () Bool)

(declare-fun lt!340524 () (_ BitVec 64))

(assert (=> b!765395 (= c!84177 (or (= lt!340524 lt!340375) (= (bvadd lt!340524 lt!340524) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!101099 () Bool)

(declare-fun e!426293 () Bool)

(assert (=> d!101099 e!426293))

(declare-fun c!84179 () Bool)

(assert (=> d!101099 (= c!84179 (and (is-Intermediate!7811 lt!340525) (undefined!8623 lt!340525)))))

(assert (=> d!101099 (= lt!340525 e!426292)))

(declare-fun c!84178 () Bool)

(assert (=> d!101099 (= c!84178 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101099 (= lt!340524 (select (arr!20204 lt!340373) (toIndex!0 lt!340375 mask!3328)))))

(assert (=> d!101099 (validMask!0 mask!3328)))

(assert (=> d!101099 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340375 mask!3328) lt!340375 lt!340373 mask!3328) lt!340525)))

(declare-fun b!765396 () Bool)

(declare-fun e!426291 () Bool)

(assert (=> b!765396 (= e!426293 e!426291)))

(declare-fun res!517817 () Bool)

(assert (=> b!765396 (= res!517817 (and (is-Intermediate!7811 lt!340525) (not (undefined!8623 lt!340525)) (bvslt (x!64537 lt!340525) #b01111111111111111111111111111110) (bvsge (x!64537 lt!340525) #b00000000000000000000000000000000) (bvsge (x!64537 lt!340525) #b00000000000000000000000000000000)))))

(assert (=> b!765396 (=> (not res!517817) (not e!426291))))

(declare-fun b!765397 () Bool)

(assert (=> b!765397 (= e!426292 (Intermediate!7811 true (toIndex!0 lt!340375 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!765398 () Bool)

(assert (=> b!765398 (and (bvsge (index!33613 lt!340525) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340525) (size!20625 lt!340373)))))

(declare-fun res!517818 () Bool)

(assert (=> b!765398 (= res!517818 (= (select (arr!20204 lt!340373) (index!33613 lt!340525)) lt!340375))))

(assert (=> b!765398 (=> res!517818 e!426294)))

(assert (=> b!765398 (= e!426291 e!426294)))

(declare-fun b!765399 () Bool)

(assert (=> b!765399 (= e!426293 (bvsge (x!64537 lt!340525) #b01111111111111111111111111111110))))

(declare-fun b!765400 () Bool)

(assert (=> b!765400 (= e!426290 (Intermediate!7811 false (toIndex!0 lt!340375 mask!3328) #b00000000000000000000000000000000))))

(assert (= (and d!101099 c!84178) b!765397))

(assert (= (and d!101099 (not c!84178)) b!765395))

(assert (= (and b!765395 c!84177) b!765400))

(assert (= (and b!765395 (not c!84177)) b!765393))

(assert (= (and d!101099 c!84179) b!765399))

(assert (= (and d!101099 (not c!84179)) b!765396))

(assert (= (and b!765396 res!517817) b!765398))

(assert (= (and b!765398 (not res!517818)) b!765392))

(assert (= (and b!765392 (not res!517819)) b!765394))

(declare-fun m!711585 () Bool)

(assert (=> b!765398 m!711585))

(assert (=> b!765393 m!711333))

(declare-fun m!711587 () Bool)

(assert (=> b!765393 m!711587))

(assert (=> b!765393 m!711587))

(declare-fun m!711589 () Bool)

(assert (=> b!765393 m!711589))

(assert (=> b!765394 m!711585))

(assert (=> d!101099 m!711333))

(declare-fun m!711591 () Bool)

(assert (=> d!101099 m!711591))

(assert (=> d!101099 m!711325))

(assert (=> b!765392 m!711585))

(assert (=> b!765028 d!101099))

(declare-fun d!101101 () Bool)

(declare-fun lt!340527 () (_ BitVec 32))

(declare-fun lt!340526 () (_ BitVec 32))

(assert (=> d!101101 (= lt!340527 (bvmul (bvxor lt!340526 (bvlshr lt!340526 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101101 (= lt!340526 ((_ extract 31 0) (bvand (bvxor lt!340375 (bvlshr lt!340375 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101101 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!517760 (let ((h!15344 ((_ extract 31 0) (bvand (bvxor lt!340375 (bvlshr lt!340375 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64543 (bvmul (bvxor h!15344 (bvlshr h!15344 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64543 (bvlshr x!64543 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!517760 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!517760 #b00000000000000000000000000000000))))))

(assert (=> d!101101 (= (toIndex!0 lt!340375 mask!3328) (bvand (bvxor lt!340527 (bvlshr lt!340527 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!765028 d!101101))

(declare-fun b!765401 () Bool)

(declare-fun lt!340529 () SeekEntryResult!7811)

(assert (=> b!765401 (and (bvsge (index!33613 lt!340529) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340529) (size!20625 lt!340373)))))

(declare-fun res!517822 () Bool)

(assert (=> b!765401 (= res!517822 (= (select (arr!20204 lt!340373) (index!33613 lt!340529)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426299 () Bool)

(assert (=> b!765401 (=> res!517822 e!426299)))

(declare-fun e!426295 () SeekEntryResult!7811)

(declare-fun b!765402 () Bool)

(assert (=> b!765402 (= e!426295 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!340375 lt!340373 mask!3328))))

(declare-fun b!765403 () Bool)

(assert (=> b!765403 (and (bvsge (index!33613 lt!340529) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340529) (size!20625 lt!340373)))))

(assert (=> b!765403 (= e!426299 (= (select (arr!20204 lt!340373) (index!33613 lt!340529)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!765404 () Bool)

(declare-fun e!426297 () SeekEntryResult!7811)

(assert (=> b!765404 (= e!426297 e!426295)))

(declare-fun c!84180 () Bool)

(declare-fun lt!340528 () (_ BitVec 64))

(assert (=> b!765404 (= c!84180 (or (= lt!340528 lt!340375) (= (bvadd lt!340528 lt!340528) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!101103 () Bool)

(declare-fun e!426298 () Bool)

(assert (=> d!101103 e!426298))

(declare-fun c!84182 () Bool)

(assert (=> d!101103 (= c!84182 (and (is-Intermediate!7811 lt!340529) (undefined!8623 lt!340529)))))

(assert (=> d!101103 (= lt!340529 e!426297)))

(declare-fun c!84181 () Bool)

(assert (=> d!101103 (= c!84181 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101103 (= lt!340528 (select (arr!20204 lt!340373) index!1321))))

(assert (=> d!101103 (validMask!0 mask!3328)))

(assert (=> d!101103 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340375 lt!340373 mask!3328) lt!340529)))

(declare-fun b!765405 () Bool)

(declare-fun e!426296 () Bool)

(assert (=> b!765405 (= e!426298 e!426296)))

(declare-fun res!517820 () Bool)

(assert (=> b!765405 (= res!517820 (and (is-Intermediate!7811 lt!340529) (not (undefined!8623 lt!340529)) (bvslt (x!64537 lt!340529) #b01111111111111111111111111111110) (bvsge (x!64537 lt!340529) #b00000000000000000000000000000000) (bvsge (x!64537 lt!340529) x!1131)))))

(assert (=> b!765405 (=> (not res!517820) (not e!426296))))

(declare-fun b!765406 () Bool)

(assert (=> b!765406 (= e!426297 (Intermediate!7811 true index!1321 x!1131))))

(declare-fun b!765407 () Bool)

(assert (=> b!765407 (and (bvsge (index!33613 lt!340529) #b00000000000000000000000000000000) (bvslt (index!33613 lt!340529) (size!20625 lt!340373)))))

(declare-fun res!517821 () Bool)

(assert (=> b!765407 (= res!517821 (= (select (arr!20204 lt!340373) (index!33613 lt!340529)) lt!340375))))

(assert (=> b!765407 (=> res!517821 e!426299)))

(assert (=> b!765407 (= e!426296 e!426299)))

(declare-fun b!765408 () Bool)

(assert (=> b!765408 (= e!426298 (bvsge (x!64537 lt!340529) #b01111111111111111111111111111110))))

(declare-fun b!765409 () Bool)

(assert (=> b!765409 (= e!426295 (Intermediate!7811 false index!1321 x!1131))))

(assert (= (and d!101103 c!84181) b!765406))

(assert (= (and d!101103 (not c!84181)) b!765404))

(assert (= (and b!765404 c!84180) b!765409))

(assert (= (and b!765404 (not c!84180)) b!765402))

(assert (= (and d!101103 c!84182) b!765408))

(assert (= (and d!101103 (not c!84182)) b!765405))

(assert (= (and b!765405 res!517820) b!765407))

(assert (= (and b!765407 (not res!517821)) b!765401))

(assert (= (and b!765401 (not res!517822)) b!765403))

(declare-fun m!711593 () Bool)

(assert (=> b!765407 m!711593))

(assert (=> b!765402 m!711455))

(assert (=> b!765402 m!711455))

(declare-fun m!711595 () Bool)

(assert (=> b!765402 m!711595))

(assert (=> b!765403 m!711593))

(declare-fun m!711597 () Bool)

(assert (=> d!101103 m!711597))

(assert (=> d!101103 m!711325))

(assert (=> b!765401 m!711593))

(assert (=> b!765028 d!101103))

(declare-fun b!765420 () Bool)

(declare-fun e!426309 () Bool)

(declare-fun call!35042 () Bool)

(assert (=> b!765420 (= e!426309 call!35042)))

(declare-fun b!765421 () Bool)

(declare-fun e!426308 () Bool)

(declare-fun contains!4079 (List!14259 (_ BitVec 64)) Bool)

(assert (=> b!765421 (= e!426308 (contains!4079 Nil!14256 (select (arr!20204 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!765422 () Bool)

(declare-fun e!426311 () Bool)

(assert (=> b!765422 (= e!426311 e!426309)))

(declare-fun c!84185 () Bool)

(assert (=> b!765422 (= c!84185 (validKeyInArray!0 (select (arr!20204 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101105 () Bool)

(declare-fun res!517831 () Bool)

(declare-fun e!426310 () Bool)

(assert (=> d!101105 (=> res!517831 e!426310)))

(assert (=> d!101105 (= res!517831 (bvsge #b00000000000000000000000000000000 (size!20625 a!3186)))))

(assert (=> d!101105 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14256) e!426310)))

(declare-fun b!765423 () Bool)

(assert (=> b!765423 (= e!426309 call!35042)))

(declare-fun bm!35039 () Bool)

(assert (=> bm!35039 (= call!35042 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84185 (Cons!14255 (select (arr!20204 a!3186) #b00000000000000000000000000000000) Nil!14256) Nil!14256)))))

(declare-fun b!765424 () Bool)

(assert (=> b!765424 (= e!426310 e!426311)))

(declare-fun res!517829 () Bool)

(assert (=> b!765424 (=> (not res!517829) (not e!426311))))

(assert (=> b!765424 (= res!517829 (not e!426308))))

(declare-fun res!517830 () Bool)

(assert (=> b!765424 (=> (not res!517830) (not e!426308))))

(assert (=> b!765424 (= res!517830 (validKeyInArray!0 (select (arr!20204 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101105 (not res!517831)) b!765424))

(assert (= (and b!765424 res!517830) b!765421))

(assert (= (and b!765424 res!517829) b!765422))

(assert (= (and b!765422 c!84185) b!765423))

(assert (= (and b!765422 (not c!84185)) b!765420))

(assert (= (or b!765423 b!765420) bm!35039))

(assert (=> b!765421 m!711497))

(assert (=> b!765421 m!711497))

(declare-fun m!711599 () Bool)

(assert (=> b!765421 m!711599))

(assert (=> b!765422 m!711497))

(assert (=> b!765422 m!711497))

(assert (=> b!765422 m!711499))

(assert (=> bm!35039 m!711497))

(declare-fun m!711601 () Bool)

(assert (=> bm!35039 m!711601))

(assert (=> b!765424 m!711497))

(assert (=> b!765424 m!711497))

(assert (=> b!765424 m!711499))

(assert (=> b!765018 d!101105))

(declare-fun b!765425 () Bool)

(declare-fun e!426312 () SeekEntryResult!7811)

(declare-fun lt!340530 () SeekEntryResult!7811)

(assert (=> b!765425 (= e!426312 (MissingZero!7811 (index!33613 lt!340530)))))

(declare-fun b!765426 () Bool)

(declare-fun c!84186 () Bool)

(declare-fun lt!340531 () (_ BitVec 64))

(assert (=> b!765426 (= c!84186 (= lt!340531 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!426313 () SeekEntryResult!7811)

(assert (=> b!765426 (= e!426313 e!426312)))

(declare-fun b!765427 () Bool)

(declare-fun e!426314 () SeekEntryResult!7811)

(assert (=> b!765427 (= e!426314 e!426313)))

(assert (=> b!765427 (= lt!340531 (select (arr!20204 a!3186) (index!33613 lt!340530)))))

(declare-fun c!84187 () Bool)

(assert (=> b!765427 (= c!84187 (= lt!340531 k!2102))))

(declare-fun b!765428 () Bool)

(assert (=> b!765428 (= e!426314 Undefined!7811)))

(declare-fun d!101107 () Bool)

(declare-fun lt!340532 () SeekEntryResult!7811)

(assert (=> d!101107 (and (or (is-Undefined!7811 lt!340532) (not (is-Found!7811 lt!340532)) (and (bvsge (index!33612 lt!340532) #b00000000000000000000000000000000) (bvslt (index!33612 lt!340532) (size!20625 a!3186)))) (or (is-Undefined!7811 lt!340532) (is-Found!7811 lt!340532) (not (is-MissingZero!7811 lt!340532)) (and (bvsge (index!33611 lt!340532) #b00000000000000000000000000000000) (bvslt (index!33611 lt!340532) (size!20625 a!3186)))) (or (is-Undefined!7811 lt!340532) (is-Found!7811 lt!340532) (is-MissingZero!7811 lt!340532) (not (is-MissingVacant!7811 lt!340532)) (and (bvsge (index!33614 lt!340532) #b00000000000000000000000000000000) (bvslt (index!33614 lt!340532) (size!20625 a!3186)))) (or (is-Undefined!7811 lt!340532) (ite (is-Found!7811 lt!340532) (= (select (arr!20204 a!3186) (index!33612 lt!340532)) k!2102) (ite (is-MissingZero!7811 lt!340532) (= (select (arr!20204 a!3186) (index!33611 lt!340532)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7811 lt!340532) (= (select (arr!20204 a!3186) (index!33614 lt!340532)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101107 (= lt!340532 e!426314)))

(declare-fun c!84188 () Bool)

(assert (=> d!101107 (= c!84188 (and (is-Intermediate!7811 lt!340530) (undefined!8623 lt!340530)))))

