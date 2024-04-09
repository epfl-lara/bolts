; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66600 () Bool)

(assert start!66600)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42263 0))(
  ( (array!42264 (arr!20231 (Array (_ BitVec 32) (_ BitVec 64))) (size!20652 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42263)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7838 0))(
  ( (MissingZero!7838 (index!33719 (_ BitVec 32))) (Found!7838 (index!33720 (_ BitVec 32))) (Intermediate!7838 (undefined!8650 Bool) (index!33721 (_ BitVec 32)) (x!64657 (_ BitVec 32))) (Undefined!7838) (MissingVacant!7838 (index!33722 (_ BitVec 32))) )
))
(declare-fun lt!341382 () SeekEntryResult!7838)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!767338 () Bool)

(declare-fun e!427320 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42263 (_ BitVec 32)) SeekEntryResult!7838)

(assert (=> b!767338 (= e!427320 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341382))))

(declare-fun res!519273 () Bool)

(declare-fun e!427316 () Bool)

(assert (=> start!66600 (=> (not res!519273) (not e!427316))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66600 (= res!519273 (validMask!0 mask!3328))))

(assert (=> start!66600 e!427316))

(assert (=> start!66600 true))

(declare-fun array_inv!16005 (array!42263) Bool)

(assert (=> start!66600 (array_inv!16005 a!3186)))

(declare-fun b!767339 () Bool)

(declare-fun e!427313 () Bool)

(declare-fun e!427317 () Bool)

(assert (=> b!767339 (= e!427313 (not e!427317))))

(declare-fun res!519276 () Bool)

(assert (=> b!767339 (=> res!519276 e!427317)))

(declare-fun lt!341381 () SeekEntryResult!7838)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!767339 (= res!519276 (or (not (is-Intermediate!7838 lt!341381)) (bvsge x!1131 (x!64657 lt!341381))))))

(declare-fun lt!341385 () SeekEntryResult!7838)

(assert (=> b!767339 (= lt!341385 (Found!7838 j!159))))

(declare-fun e!427322 () Bool)

(assert (=> b!767339 e!427322))

(declare-fun res!519275 () Bool)

(assert (=> b!767339 (=> (not res!519275) (not e!427322))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42263 (_ BitVec 32)) Bool)

(assert (=> b!767339 (= res!519275 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26402 0))(
  ( (Unit!26403) )
))
(declare-fun lt!341380 () Unit!26402)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42263 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26402)

(assert (=> b!767339 (= lt!341380 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!767340 () Bool)

(declare-fun res!519268 () Bool)

(declare-fun e!427321 () Bool)

(assert (=> b!767340 (=> (not res!519268) (not e!427321))))

(declare-datatypes ((List!14286 0))(
  ( (Nil!14283) (Cons!14282 (h!15375 (_ BitVec 64)) (t!20609 List!14286)) )
))
(declare-fun arrayNoDuplicates!0 (array!42263 (_ BitVec 32) List!14286) Bool)

(assert (=> b!767340 (= res!519268 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14283))))

(declare-fun b!767341 () Bool)

(declare-fun res!519278 () Bool)

(assert (=> b!767341 (=> (not res!519278) (not e!427321))))

(assert (=> b!767341 (= res!519278 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!767342 () Bool)

(declare-fun e!427318 () Bool)

(assert (=> b!767342 (= e!427321 e!427318)))

(declare-fun res!519262 () Bool)

(assert (=> b!767342 (=> (not res!519262) (not e!427318))))

(declare-fun lt!341377 () SeekEntryResult!7838)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42263 (_ BitVec 32)) SeekEntryResult!7838)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767342 (= res!519262 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20231 a!3186) j!159) mask!3328) (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341377))))

(assert (=> b!767342 (= lt!341377 (Intermediate!7838 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!767343 () Bool)

(declare-fun res!519272 () Bool)

(assert (=> b!767343 (=> (not res!519272) (not e!427316))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!767343 (= res!519272 (validKeyInArray!0 (select (arr!20231 a!3186) j!159)))))

(declare-fun b!767344 () Bool)

(declare-fun res!519277 () Bool)

(assert (=> b!767344 (=> (not res!519277) (not e!427318))))

(declare-fun e!427314 () Bool)

(assert (=> b!767344 (= res!519277 e!427314)))

(declare-fun c!84429 () Bool)

(assert (=> b!767344 (= c!84429 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!767345 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!767345 (= e!427314 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) (Found!7838 j!159)))))

(declare-fun b!767346 () Bool)

(assert (=> b!767346 (= e!427314 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341377))))

(declare-fun b!767347 () Bool)

(assert (=> b!767347 (= e!427316 e!427321)))

(declare-fun res!519263 () Bool)

(assert (=> b!767347 (=> (not res!519263) (not e!427321))))

(declare-fun lt!341386 () SeekEntryResult!7838)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!767347 (= res!519263 (or (= lt!341386 (MissingZero!7838 i!1173)) (= lt!341386 (MissingVacant!7838 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42263 (_ BitVec 32)) SeekEntryResult!7838)

(assert (=> b!767347 (= lt!341386 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!767348 () Bool)

(declare-fun res!519270 () Bool)

(assert (=> b!767348 (=> (not res!519270) (not e!427316))))

(declare-fun arrayContainsKey!0 (array!42263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!767348 (= res!519270 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!767349 () Bool)

(declare-fun res!519265 () Bool)

(assert (=> b!767349 (=> (not res!519265) (not e!427321))))

(assert (=> b!767349 (= res!519265 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20652 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20652 a!3186))))))

(declare-fun b!767350 () Bool)

(declare-fun res!519279 () Bool)

(assert (=> b!767350 (=> (not res!519279) (not e!427316))))

(assert (=> b!767350 (= res!519279 (and (= (size!20652 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20652 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20652 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!767351 () Bool)

(declare-fun res!519266 () Bool)

(assert (=> b!767351 (=> (not res!519266) (not e!427318))))

(assert (=> b!767351 (= res!519266 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20231 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767352 () Bool)

(declare-fun e!427315 () Bool)

(assert (=> b!767352 (= e!427317 e!427315)))

(declare-fun res!519264 () Bool)

(assert (=> b!767352 (=> res!519264 e!427315)))

(assert (=> b!767352 (= res!519264 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!341379 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767352 (= lt!341379 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!767353 () Bool)

(declare-fun res!519269 () Bool)

(assert (=> b!767353 (=> (not res!519269) (not e!427316))))

(assert (=> b!767353 (= res!519269 (validKeyInArray!0 k!2102))))

(declare-fun b!767354 () Bool)

(assert (=> b!767354 (= e!427322 e!427320)))

(declare-fun res!519274 () Bool)

(assert (=> b!767354 (=> (not res!519274) (not e!427320))))

(assert (=> b!767354 (= res!519274 (= (seekEntryOrOpen!0 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341382))))

(assert (=> b!767354 (= lt!341382 (Found!7838 j!159))))

(declare-fun b!767355 () Bool)

(assert (=> b!767355 (= e!427315 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341379 resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341385))))

(declare-fun b!767356 () Bool)

(declare-fun res!519271 () Bool)

(assert (=> b!767356 (=> res!519271 e!427315)))

(assert (=> b!767356 (= res!519271 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341385)))))

(declare-fun b!767357 () Bool)

(assert (=> b!767357 (= e!427318 e!427313)))

(declare-fun res!519267 () Bool)

(assert (=> b!767357 (=> (not res!519267) (not e!427313))))

(declare-fun lt!341384 () SeekEntryResult!7838)

(assert (=> b!767357 (= res!519267 (= lt!341384 lt!341381))))

(declare-fun lt!341378 () (_ BitVec 64))

(declare-fun lt!341383 () array!42263)

(assert (=> b!767357 (= lt!341381 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341378 lt!341383 mask!3328))))

(assert (=> b!767357 (= lt!341384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341378 mask!3328) lt!341378 lt!341383 mask!3328))))

(assert (=> b!767357 (= lt!341378 (select (store (arr!20231 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!767357 (= lt!341383 (array!42264 (store (arr!20231 a!3186) i!1173 k!2102) (size!20652 a!3186)))))

(assert (= (and start!66600 res!519273) b!767350))

(assert (= (and b!767350 res!519279) b!767343))

(assert (= (and b!767343 res!519272) b!767353))

(assert (= (and b!767353 res!519269) b!767348))

(assert (= (and b!767348 res!519270) b!767347))

(assert (= (and b!767347 res!519263) b!767341))

(assert (= (and b!767341 res!519278) b!767340))

(assert (= (and b!767340 res!519268) b!767349))

(assert (= (and b!767349 res!519265) b!767342))

(assert (= (and b!767342 res!519262) b!767351))

(assert (= (and b!767351 res!519266) b!767344))

(assert (= (and b!767344 c!84429) b!767346))

(assert (= (and b!767344 (not c!84429)) b!767345))

(assert (= (and b!767344 res!519277) b!767357))

(assert (= (and b!767357 res!519267) b!767339))

(assert (= (and b!767339 res!519275) b!767354))

(assert (= (and b!767354 res!519274) b!767338))

(assert (= (and b!767339 (not res!519276)) b!767352))

(assert (= (and b!767352 (not res!519264)) b!767356))

(assert (= (and b!767356 (not res!519271)) b!767355))

(declare-fun m!713181 () Bool)

(assert (=> b!767343 m!713181))

(assert (=> b!767343 m!713181))

(declare-fun m!713183 () Bool)

(assert (=> b!767343 m!713183))

(declare-fun m!713185 () Bool)

(assert (=> b!767352 m!713185))

(declare-fun m!713187 () Bool)

(assert (=> b!767340 m!713187))

(assert (=> b!767345 m!713181))

(assert (=> b!767345 m!713181))

(declare-fun m!713189 () Bool)

(assert (=> b!767345 m!713189))

(declare-fun m!713191 () Bool)

(assert (=> b!767357 m!713191))

(declare-fun m!713193 () Bool)

(assert (=> b!767357 m!713193))

(declare-fun m!713195 () Bool)

(assert (=> b!767357 m!713195))

(declare-fun m!713197 () Bool)

(assert (=> b!767357 m!713197))

(declare-fun m!713199 () Bool)

(assert (=> b!767357 m!713199))

(assert (=> b!767357 m!713195))

(assert (=> b!767356 m!713181))

(assert (=> b!767356 m!713181))

(assert (=> b!767356 m!713189))

(declare-fun m!713201 () Bool)

(assert (=> b!767339 m!713201))

(declare-fun m!713203 () Bool)

(assert (=> b!767339 m!713203))

(assert (=> b!767354 m!713181))

(assert (=> b!767354 m!713181))

(declare-fun m!713205 () Bool)

(assert (=> b!767354 m!713205))

(declare-fun m!713207 () Bool)

(assert (=> b!767347 m!713207))

(assert (=> b!767346 m!713181))

(assert (=> b!767346 m!713181))

(declare-fun m!713209 () Bool)

(assert (=> b!767346 m!713209))

(declare-fun m!713211 () Bool)

(assert (=> b!767351 m!713211))

(declare-fun m!713213 () Bool)

(assert (=> start!66600 m!713213))

(declare-fun m!713215 () Bool)

(assert (=> start!66600 m!713215))

(assert (=> b!767342 m!713181))

(assert (=> b!767342 m!713181))

(declare-fun m!713217 () Bool)

(assert (=> b!767342 m!713217))

(assert (=> b!767342 m!713217))

(assert (=> b!767342 m!713181))

(declare-fun m!713219 () Bool)

(assert (=> b!767342 m!713219))

(assert (=> b!767355 m!713181))

(assert (=> b!767355 m!713181))

(declare-fun m!713221 () Bool)

(assert (=> b!767355 m!713221))

(declare-fun m!713223 () Bool)

(assert (=> b!767348 m!713223))

(declare-fun m!713225 () Bool)

(assert (=> b!767353 m!713225))

(assert (=> b!767338 m!713181))

(assert (=> b!767338 m!713181))

(declare-fun m!713227 () Bool)

(assert (=> b!767338 m!713227))

(declare-fun m!713229 () Bool)

(assert (=> b!767341 m!713229))

(push 1)

(assert (not b!767341))

(assert (not b!767355))

(assert (not b!767347))

(assert (not b!767345))

(assert (not start!66600))

(assert (not b!767356))

(assert (not b!767346))

(assert (not b!767340))

(assert (not b!767352))

(assert (not b!767353))

(assert (not b!767354))

(assert (not b!767338))

(assert (not b!767357))

(assert (not b!767339))

(assert (not b!767348))

(assert (not b!767343))

(assert (not b!767342))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!767431 () Bool)

(declare-fun e!427376 () Bool)

(declare-fun call!35073 () Bool)

(assert (=> b!767431 (= e!427376 call!35073)))

(declare-fun d!101277 () Bool)

(declare-fun res!519309 () Bool)

(declare-fun e!427375 () Bool)

(assert (=> d!101277 (=> res!519309 e!427375)))

(assert (=> d!101277 (= res!519309 (bvsge #b00000000000000000000000000000000 (size!20652 a!3186)))))

(assert (=> d!101277 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14283) e!427375)))

(declare-fun b!767432 () Bool)

(declare-fun e!427373 () Bool)

(declare-fun contains!4084 (List!14286 (_ BitVec 64)) Bool)

(assert (=> b!767432 (= e!427373 (contains!4084 Nil!14283 (select (arr!20231 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!767433 () Bool)

(assert (=> b!767433 (= e!427376 call!35073)))

(declare-fun bm!35070 () Bool)

(declare-fun c!84453 () Bool)

(assert (=> bm!35070 (= call!35073 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84453 (Cons!14282 (select (arr!20231 a!3186) #b00000000000000000000000000000000) Nil!14283) Nil!14283)))))

(declare-fun b!767434 () Bool)

(declare-fun e!427374 () Bool)

(assert (=> b!767434 (= e!427374 e!427376)))

(assert (=> b!767434 (= c!84453 (validKeyInArray!0 (select (arr!20231 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!767435 () Bool)

(assert (=> b!767435 (= e!427375 e!427374)))

(declare-fun res!519308 () Bool)

(assert (=> b!767435 (=> (not res!519308) (not e!427374))))

(assert (=> b!767435 (= res!519308 (not e!427373))))

(declare-fun res!519307 () Bool)

(assert (=> b!767435 (=> (not res!519307) (not e!427373))))

(assert (=> b!767435 (= res!519307 (validKeyInArray!0 (select (arr!20231 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101277 (not res!519309)) b!767435))

(assert (= (and b!767435 res!519307) b!767432))

(assert (= (and b!767435 res!519308) b!767434))

(assert (= (and b!767434 c!84453) b!767433))

(assert (= (and b!767434 (not c!84453)) b!767431))

(assert (= (or b!767433 b!767431) bm!35070))

(declare-fun m!713277 () Bool)

(assert (=> b!767432 m!713277))

(assert (=> b!767432 m!713277))

(declare-fun m!713279 () Bool)

(assert (=> b!767432 m!713279))

(assert (=> bm!35070 m!713277))

(declare-fun m!713281 () Bool)

(assert (=> bm!35070 m!713281))

(assert (=> b!767434 m!713277))

(assert (=> b!767434 m!713277))

(declare-fun m!713283 () Bool)

(assert (=> b!767434 m!713283))

(assert (=> b!767435 m!713277))

(assert (=> b!767435 m!713277))

(assert (=> b!767435 m!713283))

(assert (=> b!767340 d!101277))

(declare-fun bm!35073 () Bool)

(declare-fun call!35076 () Bool)

(assert (=> bm!35073 (= call!35076 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!767456 () Bool)

(declare-fun e!427391 () Bool)

(declare-fun e!427390 () Bool)

(assert (=> b!767456 (= e!427391 e!427390)))

(declare-fun lt!341425 () (_ BitVec 64))

(assert (=> b!767456 (= lt!341425 (select (arr!20231 a!3186) j!159))))

(declare-fun lt!341426 () Unit!26402)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42263 (_ BitVec 64) (_ BitVec 32)) Unit!26402)

(assert (=> b!767456 (= lt!341426 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341425 j!159))))

(assert (=> b!767456 (arrayContainsKey!0 a!3186 lt!341425 #b00000000000000000000000000000000)))

(declare-fun lt!341424 () Unit!26402)

(assert (=> b!767456 (= lt!341424 lt!341426)))

(declare-fun res!519314 () Bool)

(assert (=> b!767456 (= res!519314 (= (seekEntryOrOpen!0 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) (Found!7838 j!159)))))

(assert (=> b!767456 (=> (not res!519314) (not e!427390))))

(declare-fun d!101287 () Bool)

(declare-fun res!519315 () Bool)

(declare-fun e!427389 () Bool)

(assert (=> d!101287 (=> res!519315 e!427389)))

(assert (=> d!101287 (= res!519315 (bvsge j!159 (size!20652 a!3186)))))

(assert (=> d!101287 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!427389)))

(declare-fun b!767457 () Bool)

(assert (=> b!767457 (= e!427391 call!35076)))

(declare-fun b!767458 () Bool)

(assert (=> b!767458 (= e!427390 call!35076)))

(declare-fun b!767459 () Bool)

(assert (=> b!767459 (= e!427389 e!427391)))

(declare-fun c!84462 () Bool)

(assert (=> b!767459 (= c!84462 (validKeyInArray!0 (select (arr!20231 a!3186) j!159)))))

(assert (= (and d!101287 (not res!519315)) b!767459))

(assert (= (and b!767459 c!84462) b!767456))

(assert (= (and b!767459 (not c!84462)) b!767457))

(assert (= (and b!767456 res!519314) b!767458))

(assert (= (or b!767458 b!767457) bm!35073))

(declare-fun m!713285 () Bool)

(assert (=> bm!35073 m!713285))

(assert (=> b!767456 m!713181))

(declare-fun m!713287 () Bool)

(assert (=> b!767456 m!713287))

(declare-fun m!713289 () Bool)

(assert (=> b!767456 m!713289))

(assert (=> b!767456 m!713181))

(assert (=> b!767456 m!713205))

(assert (=> b!767459 m!713181))

(assert (=> b!767459 m!713181))

(assert (=> b!767459 m!713183))

(assert (=> b!767339 d!101287))

(declare-fun d!101295 () Bool)

(assert (=> d!101295 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!341432 () Unit!26402)

(declare-fun choose!38 (array!42263 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26402)

(assert (=> d!101295 (= lt!341432 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101295 (validMask!0 mask!3328)))

(assert (=> d!101295 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!341432)))

(declare-fun bs!21515 () Bool)

(assert (= bs!21515 d!101295))

(assert (=> bs!21515 m!713201))

(declare-fun m!713301 () Bool)

(assert (=> bs!21515 m!713301))

(assert (=> bs!21515 m!713213))

(assert (=> b!767339 d!101295))

(declare-fun d!101301 () Bool)

(assert (=> d!101301 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66600 d!101301))

(declare-fun d!101303 () Bool)

(assert (=> d!101303 (= (array_inv!16005 a!3186) (bvsge (size!20652 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66600 d!101303))

(declare-fun d!101305 () Bool)

(assert (=> d!101305 (= (validKeyInArray!0 (select (arr!20231 a!3186) j!159)) (and (not (= (select (arr!20231 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20231 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!767343 d!101305))

(declare-fun b!767556 () Bool)

(declare-fun e!427443 () SeekEntryResult!7838)

(declare-fun e!427445 () SeekEntryResult!7838)

(assert (=> b!767556 (= e!427443 e!427445)))

(declare-fun lt!341461 () (_ BitVec 64))

(declare-fun lt!341463 () SeekEntryResult!7838)

(assert (=> b!767556 (= lt!341461 (select (arr!20231 a!3186) (index!33721 lt!341463)))))

(declare-fun c!84503 () Bool)

(assert (=> b!767556 (= c!84503 (= lt!341461 (select (arr!20231 a!3186) j!159)))))

(declare-fun b!767557 () Bool)

(declare-fun e!427444 () SeekEntryResult!7838)

(assert (=> b!767557 (= e!427444 (MissingZero!7838 (index!33721 lt!341463)))))

(declare-fun b!767558 () Bool)

(assert (=> b!767558 (= e!427444 (seekKeyOrZeroReturnVacant!0 (x!64657 lt!341463) (index!33721 lt!341463) (index!33721 lt!341463) (select (arr!20231 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767559 () Bool)

(declare-fun c!84502 () Bool)

(assert (=> b!767559 (= c!84502 (= lt!341461 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767559 (= e!427445 e!427444)))

(declare-fun b!767560 () Bool)

(assert (=> b!767560 (= e!427445 (Found!7838 (index!33721 lt!341463)))))

(declare-fun b!767561 () Bool)

(assert (=> b!767561 (= e!427443 Undefined!7838)))

(declare-fun d!101307 () Bool)

(declare-fun lt!341462 () SeekEntryResult!7838)

(assert (=> d!101307 (and (or (is-Undefined!7838 lt!341462) (not (is-Found!7838 lt!341462)) (and (bvsge (index!33720 lt!341462) #b00000000000000000000000000000000) (bvslt (index!33720 lt!341462) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341462) (is-Found!7838 lt!341462) (not (is-MissingZero!7838 lt!341462)) (and (bvsge (index!33719 lt!341462) #b00000000000000000000000000000000) (bvslt (index!33719 lt!341462) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341462) (is-Found!7838 lt!341462) (is-MissingZero!7838 lt!341462) (not (is-MissingVacant!7838 lt!341462)) (and (bvsge (index!33722 lt!341462) #b00000000000000000000000000000000) (bvslt (index!33722 lt!341462) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341462) (ite (is-Found!7838 lt!341462) (= (select (arr!20231 a!3186) (index!33720 lt!341462)) (select (arr!20231 a!3186) j!159)) (ite (is-MissingZero!7838 lt!341462) (= (select (arr!20231 a!3186) (index!33719 lt!341462)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7838 lt!341462) (= (select (arr!20231 a!3186) (index!33722 lt!341462)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101307 (= lt!341462 e!427443)))

(declare-fun c!84504 () Bool)

(assert (=> d!101307 (= c!84504 (and (is-Intermediate!7838 lt!341463) (undefined!8650 lt!341463)))))

(assert (=> d!101307 (= lt!341463 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20231 a!3186) j!159) mask!3328) (select (arr!20231 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101307 (validMask!0 mask!3328)))

(assert (=> d!101307 (= (seekEntryOrOpen!0 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341462)))

(assert (= (and d!101307 c!84504) b!767561))

(assert (= (and d!101307 (not c!84504)) b!767556))

(assert (= (and b!767556 c!84503) b!767560))

(assert (= (and b!767556 (not c!84503)) b!767559))

(assert (= (and b!767559 c!84502) b!767557))

(assert (= (and b!767559 (not c!84502)) b!767558))

(declare-fun m!713313 () Bool)

(assert (=> b!767556 m!713313))

(assert (=> b!767558 m!713181))

(declare-fun m!713315 () Bool)

(assert (=> b!767558 m!713315))

(assert (=> d!101307 m!713213))

(assert (=> d!101307 m!713181))

(assert (=> d!101307 m!713217))

(declare-fun m!713317 () Bool)

(assert (=> d!101307 m!713317))

(declare-fun m!713319 () Bool)

(assert (=> d!101307 m!713319))

(assert (=> d!101307 m!713217))

(assert (=> d!101307 m!713181))

(assert (=> d!101307 m!713219))

(declare-fun m!713321 () Bool)

(assert (=> d!101307 m!713321))

(assert (=> b!767354 d!101307))

(declare-fun d!101313 () Bool)

(assert (=> d!101313 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!767353 d!101313))

(declare-fun b!767656 () Bool)

(declare-fun e!427504 () SeekEntryResult!7838)

(assert (=> b!767656 (= e!427504 (Intermediate!7838 true (toIndex!0 (select (arr!20231 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767657 () Bool)

(declare-fun lt!341502 () SeekEntryResult!7838)

(assert (=> b!767657 (and (bvsge (index!33721 lt!341502) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341502) (size!20652 a!3186)))))

(declare-fun res!519367 () Bool)

(assert (=> b!767657 (= res!519367 (= (select (arr!20231 a!3186) (index!33721 lt!341502)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427505 () Bool)

(assert (=> b!767657 (=> res!519367 e!427505)))

(declare-fun b!767658 () Bool)

(assert (=> b!767658 (and (bvsge (index!33721 lt!341502) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341502) (size!20652 a!3186)))))

(assert (=> b!767658 (= e!427505 (= (select (arr!20231 a!3186) (index!33721 lt!341502)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767659 () Bool)

(declare-fun e!427507 () SeekEntryResult!7838)

(assert (=> b!767659 (= e!427507 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20231 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20231 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767660 () Bool)

(assert (=> b!767660 (and (bvsge (index!33721 lt!341502) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341502) (size!20652 a!3186)))))

(declare-fun res!519368 () Bool)

(assert (=> b!767660 (= res!519368 (= (select (arr!20231 a!3186) (index!33721 lt!341502)) (select (arr!20231 a!3186) j!159)))))

(assert (=> b!767660 (=> res!519368 e!427505)))

(declare-fun e!427506 () Bool)

(assert (=> b!767660 (= e!427506 e!427505)))

(declare-fun b!767661 () Bool)

(declare-fun e!427508 () Bool)

(assert (=> b!767661 (= e!427508 e!427506)))

(declare-fun res!519369 () Bool)

(assert (=> b!767661 (= res!519369 (and (is-Intermediate!7838 lt!341502) (not (undefined!8650 lt!341502)) (bvslt (x!64657 lt!341502) #b01111111111111111111111111111110) (bvsge (x!64657 lt!341502) #b00000000000000000000000000000000) (bvsge (x!64657 lt!341502) #b00000000000000000000000000000000)))))

(assert (=> b!767661 (=> (not res!519369) (not e!427506))))

(declare-fun b!767662 () Bool)

(assert (=> b!767662 (= e!427507 (Intermediate!7838 false (toIndex!0 (select (arr!20231 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767663 () Bool)

(assert (=> b!767663 (= e!427504 e!427507)))

(declare-fun c!84537 () Bool)

(declare-fun lt!341503 () (_ BitVec 64))

(assert (=> b!767663 (= c!84537 (or (= lt!341503 (select (arr!20231 a!3186) j!159)) (= (bvadd lt!341503 lt!341503) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767664 () Bool)

(assert (=> b!767664 (= e!427508 (bvsge (x!64657 lt!341502) #b01111111111111111111111111111110))))

(declare-fun d!101315 () Bool)

(assert (=> d!101315 e!427508))

(declare-fun c!84538 () Bool)

(assert (=> d!101315 (= c!84538 (and (is-Intermediate!7838 lt!341502) (undefined!8650 lt!341502)))))

(assert (=> d!101315 (= lt!341502 e!427504)))

(declare-fun c!84536 () Bool)

(assert (=> d!101315 (= c!84536 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101315 (= lt!341503 (select (arr!20231 a!3186) (toIndex!0 (select (arr!20231 a!3186) j!159) mask!3328)))))

(assert (=> d!101315 (validMask!0 mask!3328)))

(assert (=> d!101315 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20231 a!3186) j!159) mask!3328) (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341502)))

(assert (= (and d!101315 c!84536) b!767656))

(assert (= (and d!101315 (not c!84536)) b!767663))

(assert (= (and b!767663 c!84537) b!767662))

(assert (= (and b!767663 (not c!84537)) b!767659))

(assert (= (and d!101315 c!84538) b!767664))

(assert (= (and d!101315 (not c!84538)) b!767661))

(assert (= (and b!767661 res!519369) b!767660))

(assert (= (and b!767660 (not res!519368)) b!767657))

(assert (= (and b!767657 (not res!519367)) b!767658))

(assert (=> d!101315 m!713217))

(declare-fun m!713399 () Bool)

(assert (=> d!101315 m!713399))

(assert (=> d!101315 m!713213))

(declare-fun m!713401 () Bool)

(assert (=> b!767660 m!713401))

(assert (=> b!767658 m!713401))

(assert (=> b!767657 m!713401))

(assert (=> b!767659 m!713217))

(declare-fun m!713403 () Bool)

(assert (=> b!767659 m!713403))

(assert (=> b!767659 m!713403))

(assert (=> b!767659 m!713181))

(declare-fun m!713405 () Bool)

(assert (=> b!767659 m!713405))

(assert (=> b!767342 d!101315))

(declare-fun d!101337 () Bool)

(declare-fun lt!341509 () (_ BitVec 32))

(declare-fun lt!341508 () (_ BitVec 32))

(assert (=> d!101337 (= lt!341509 (bvmul (bvxor lt!341508 (bvlshr lt!341508 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101337 (= lt!341508 ((_ extract 31 0) (bvand (bvxor (select (arr!20231 a!3186) j!159) (bvlshr (select (arr!20231 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101337 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519370 (let ((h!15377 ((_ extract 31 0) (bvand (bvxor (select (arr!20231 a!3186) j!159) (bvlshr (select (arr!20231 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64665 (bvmul (bvxor h!15377 (bvlshr h!15377 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64665 (bvlshr x!64665 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519370 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519370 #b00000000000000000000000000000000))))))

(assert (=> d!101337 (= (toIndex!0 (select (arr!20231 a!3186) j!159) mask!3328) (bvand (bvxor lt!341509 (bvlshr lt!341509 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!767342 d!101337))

(declare-fun bm!35081 () Bool)

(declare-fun call!35084 () Bool)

(assert (=> bm!35081 (= call!35084 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!767665 () Bool)

(declare-fun e!427511 () Bool)

(declare-fun e!427510 () Bool)

(assert (=> b!767665 (= e!427511 e!427510)))

(declare-fun lt!341511 () (_ BitVec 64))

(assert (=> b!767665 (= lt!341511 (select (arr!20231 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!341512 () Unit!26402)

(assert (=> b!767665 (= lt!341512 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341511 #b00000000000000000000000000000000))))

(assert (=> b!767665 (arrayContainsKey!0 a!3186 lt!341511 #b00000000000000000000000000000000)))

(declare-fun lt!341510 () Unit!26402)

(assert (=> b!767665 (= lt!341510 lt!341512)))

(declare-fun res!519371 () Bool)

(assert (=> b!767665 (= res!519371 (= (seekEntryOrOpen!0 (select (arr!20231 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7838 #b00000000000000000000000000000000)))))

(assert (=> b!767665 (=> (not res!519371) (not e!427510))))

(declare-fun d!101339 () Bool)

(declare-fun res!519372 () Bool)

(declare-fun e!427509 () Bool)

(assert (=> d!101339 (=> res!519372 e!427509)))

(assert (=> d!101339 (= res!519372 (bvsge #b00000000000000000000000000000000 (size!20652 a!3186)))))

(assert (=> d!101339 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!427509)))

(declare-fun b!767666 () Bool)

(assert (=> b!767666 (= e!427511 call!35084)))

(declare-fun b!767667 () Bool)

(assert (=> b!767667 (= e!427510 call!35084)))

(declare-fun b!767668 () Bool)

(assert (=> b!767668 (= e!427509 e!427511)))

(declare-fun c!84539 () Bool)

(assert (=> b!767668 (= c!84539 (validKeyInArray!0 (select (arr!20231 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101339 (not res!519372)) b!767668))

(assert (= (and b!767668 c!84539) b!767665))

(assert (= (and b!767668 (not c!84539)) b!767666))

(assert (= (and b!767665 res!519371) b!767667))

(assert (= (or b!767667 b!767666) bm!35081))

(declare-fun m!713407 () Bool)

(assert (=> bm!35081 m!713407))

(assert (=> b!767665 m!713277))

(declare-fun m!713409 () Bool)

(assert (=> b!767665 m!713409))

(declare-fun m!713411 () Bool)

(assert (=> b!767665 m!713411))

(assert (=> b!767665 m!713277))

(declare-fun m!713413 () Bool)

(assert (=> b!767665 m!713413))

(assert (=> b!767668 m!713277))

(assert (=> b!767668 m!713277))

(assert (=> b!767668 m!713283))

(assert (=> b!767341 d!101339))

(declare-fun d!101341 () Bool)

(declare-fun lt!341515 () (_ BitVec 32))

(assert (=> d!101341 (and (bvsge lt!341515 #b00000000000000000000000000000000) (bvslt lt!341515 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101341 (= lt!341515 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101341 (validMask!0 mask!3328)))

(assert (=> d!101341 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!341515)))

(declare-fun bs!21516 () Bool)

(assert (= bs!21516 d!101341))

(declare-fun m!713415 () Bool)

(assert (=> bs!21516 m!713415))

(assert (=> bs!21516 m!713213))

(assert (=> b!767352 d!101341))

(declare-fun b!767669 () Bool)

(declare-fun e!427512 () SeekEntryResult!7838)

(assert (=> b!767669 (= e!427512 (Intermediate!7838 true index!1321 x!1131))))

(declare-fun b!767670 () Bool)

(declare-fun lt!341516 () SeekEntryResult!7838)

(assert (=> b!767670 (and (bvsge (index!33721 lt!341516) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341516) (size!20652 a!3186)))))

(declare-fun res!519373 () Bool)

(assert (=> b!767670 (= res!519373 (= (select (arr!20231 a!3186) (index!33721 lt!341516)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427513 () Bool)

(assert (=> b!767670 (=> res!519373 e!427513)))

(declare-fun b!767671 () Bool)

(assert (=> b!767671 (and (bvsge (index!33721 lt!341516) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341516) (size!20652 a!3186)))))

(assert (=> b!767671 (= e!427513 (= (select (arr!20231 a!3186) (index!33721 lt!341516)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767672 () Bool)

(declare-fun e!427515 () SeekEntryResult!7838)

(assert (=> b!767672 (= e!427515 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20231 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767673 () Bool)

(assert (=> b!767673 (and (bvsge (index!33721 lt!341516) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341516) (size!20652 a!3186)))))

(declare-fun res!519374 () Bool)

(assert (=> b!767673 (= res!519374 (= (select (arr!20231 a!3186) (index!33721 lt!341516)) (select (arr!20231 a!3186) j!159)))))

(assert (=> b!767673 (=> res!519374 e!427513)))

(declare-fun e!427514 () Bool)

(assert (=> b!767673 (= e!427514 e!427513)))

(declare-fun b!767674 () Bool)

(declare-fun e!427516 () Bool)

(assert (=> b!767674 (= e!427516 e!427514)))

(declare-fun res!519375 () Bool)

(assert (=> b!767674 (= res!519375 (and (is-Intermediate!7838 lt!341516) (not (undefined!8650 lt!341516)) (bvslt (x!64657 lt!341516) #b01111111111111111111111111111110) (bvsge (x!64657 lt!341516) #b00000000000000000000000000000000) (bvsge (x!64657 lt!341516) x!1131)))))

(assert (=> b!767674 (=> (not res!519375) (not e!427514))))

(declare-fun b!767675 () Bool)

(assert (=> b!767675 (= e!427515 (Intermediate!7838 false index!1321 x!1131))))

(declare-fun b!767676 () Bool)

(assert (=> b!767676 (= e!427512 e!427515)))

(declare-fun lt!341517 () (_ BitVec 64))

(declare-fun c!84541 () Bool)

(assert (=> b!767676 (= c!84541 (or (= lt!341517 (select (arr!20231 a!3186) j!159)) (= (bvadd lt!341517 lt!341517) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767677 () Bool)

(assert (=> b!767677 (= e!427516 (bvsge (x!64657 lt!341516) #b01111111111111111111111111111110))))

(declare-fun d!101343 () Bool)

(assert (=> d!101343 e!427516))

(declare-fun c!84542 () Bool)

(assert (=> d!101343 (= c!84542 (and (is-Intermediate!7838 lt!341516) (undefined!8650 lt!341516)))))

(assert (=> d!101343 (= lt!341516 e!427512)))

(declare-fun c!84540 () Bool)

(assert (=> d!101343 (= c!84540 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101343 (= lt!341517 (select (arr!20231 a!3186) index!1321))))

(assert (=> d!101343 (validMask!0 mask!3328)))

(assert (=> d!101343 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341516)))

(assert (= (and d!101343 c!84540) b!767669))

(assert (= (and d!101343 (not c!84540)) b!767676))

(assert (= (and b!767676 c!84541) b!767675))

(assert (= (and b!767676 (not c!84541)) b!767672))

(assert (= (and d!101343 c!84542) b!767677))

(assert (= (and d!101343 (not c!84542)) b!767674))

(assert (= (and b!767674 res!519375) b!767673))

(assert (= (and b!767673 (not res!519374)) b!767670))

(assert (= (and b!767670 (not res!519373)) b!767671))

(declare-fun m!713417 () Bool)

(assert (=> d!101343 m!713417))

(assert (=> d!101343 m!713213))

(declare-fun m!713419 () Bool)

(assert (=> b!767673 m!713419))

(assert (=> b!767671 m!713419))

(assert (=> b!767670 m!713419))

(assert (=> b!767672 m!713185))

(assert (=> b!767672 m!713185))

(assert (=> b!767672 m!713181))

(declare-fun m!713421 () Bool)

(assert (=> b!767672 m!713421))

(assert (=> b!767346 d!101343))

(declare-fun b!767717 () Bool)

(declare-fun e!427537 () SeekEntryResult!7838)

(assert (=> b!767717 (= e!427537 Undefined!7838)))

(declare-fun b!767718 () Bool)

(declare-fun c!84562 () Bool)

(declare-fun lt!341537 () (_ BitVec 64))

(assert (=> b!767718 (= c!84562 (= lt!341537 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427539 () SeekEntryResult!7838)

(declare-fun e!427538 () SeekEntryResult!7838)

(assert (=> b!767718 (= e!427539 e!427538)))

(declare-fun b!767719 () Bool)

(assert (=> b!767719 (= e!427539 (Found!7838 index!1321))))

(declare-fun b!767720 () Bool)

(assert (=> b!767720 (= e!427538 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767721 () Bool)

(assert (=> b!767721 (= e!427537 e!427539)))

(declare-fun c!84563 () Bool)

(assert (=> b!767721 (= c!84563 (= lt!341537 (select (arr!20231 a!3186) j!159)))))

(declare-fun b!767722 () Bool)

(assert (=> b!767722 (= e!427538 (MissingVacant!7838 resIntermediateIndex!5))))

(declare-fun lt!341538 () SeekEntryResult!7838)

(declare-fun d!101349 () Bool)

(assert (=> d!101349 (and (or (is-Undefined!7838 lt!341538) (not (is-Found!7838 lt!341538)) (and (bvsge (index!33720 lt!341538) #b00000000000000000000000000000000) (bvslt (index!33720 lt!341538) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341538) (is-Found!7838 lt!341538) (not (is-MissingVacant!7838 lt!341538)) (not (= (index!33722 lt!341538) resIntermediateIndex!5)) (and (bvsge (index!33722 lt!341538) #b00000000000000000000000000000000) (bvslt (index!33722 lt!341538) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341538) (ite (is-Found!7838 lt!341538) (= (select (arr!20231 a!3186) (index!33720 lt!341538)) (select (arr!20231 a!3186) j!159)) (and (is-MissingVacant!7838 lt!341538) (= (index!33722 lt!341538) resIntermediateIndex!5) (= (select (arr!20231 a!3186) (index!33722 lt!341538)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101349 (= lt!341538 e!427537)))

(declare-fun c!84561 () Bool)

(assert (=> d!101349 (= c!84561 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101349 (= lt!341537 (select (arr!20231 a!3186) index!1321))))

(assert (=> d!101349 (validMask!0 mask!3328)))

(assert (=> d!101349 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341538)))

(assert (= (and d!101349 c!84561) b!767717))

(assert (= (and d!101349 (not c!84561)) b!767721))

(assert (= (and b!767721 c!84563) b!767719))

(assert (= (and b!767721 (not c!84563)) b!767718))

(assert (= (and b!767718 c!84562) b!767722))

(assert (= (and b!767718 (not c!84562)) b!767720))

(assert (=> b!767720 m!713185))

(assert (=> b!767720 m!713185))

(assert (=> b!767720 m!713181))

(declare-fun m!713463 () Bool)

(assert (=> b!767720 m!713463))

(declare-fun m!713465 () Bool)

(assert (=> d!101349 m!713465))

(declare-fun m!713467 () Bool)

(assert (=> d!101349 m!713467))

(assert (=> d!101349 m!713417))

(assert (=> d!101349 m!713213))

(assert (=> b!767345 d!101349))

(assert (=> b!767356 d!101349))

(declare-fun b!767723 () Bool)

(declare-fun e!427540 () SeekEntryResult!7838)

(assert (=> b!767723 (= e!427540 Undefined!7838)))

(declare-fun b!767724 () Bool)

(declare-fun c!84565 () Bool)

(declare-fun lt!341539 () (_ BitVec 64))

(assert (=> b!767724 (= c!84565 (= lt!341539 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427542 () SeekEntryResult!7838)

(declare-fun e!427541 () SeekEntryResult!7838)

(assert (=> b!767724 (= e!427542 e!427541)))

(declare-fun b!767725 () Bool)

(assert (=> b!767725 (= e!427542 (Found!7838 lt!341379))))

(declare-fun b!767726 () Bool)

(assert (=> b!767726 (= e!427541 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!341379 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767727 () Bool)

(assert (=> b!767727 (= e!427540 e!427542)))

(declare-fun c!84566 () Bool)

(assert (=> b!767727 (= c!84566 (= lt!341539 (select (arr!20231 a!3186) j!159)))))

(declare-fun b!767728 () Bool)

(assert (=> b!767728 (= e!427541 (MissingVacant!7838 resIntermediateIndex!5))))

(declare-fun d!101361 () Bool)

(declare-fun lt!341540 () SeekEntryResult!7838)

(assert (=> d!101361 (and (or (is-Undefined!7838 lt!341540) (not (is-Found!7838 lt!341540)) (and (bvsge (index!33720 lt!341540) #b00000000000000000000000000000000) (bvslt (index!33720 lt!341540) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341540) (is-Found!7838 lt!341540) (not (is-MissingVacant!7838 lt!341540)) (not (= (index!33722 lt!341540) resIntermediateIndex!5)) (and (bvsge (index!33722 lt!341540) #b00000000000000000000000000000000) (bvslt (index!33722 lt!341540) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341540) (ite (is-Found!7838 lt!341540) (= (select (arr!20231 a!3186) (index!33720 lt!341540)) (select (arr!20231 a!3186) j!159)) (and (is-MissingVacant!7838 lt!341540) (= (index!33722 lt!341540) resIntermediateIndex!5) (= (select (arr!20231 a!3186) (index!33722 lt!341540)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101361 (= lt!341540 e!427540)))

(declare-fun c!84564 () Bool)

(assert (=> d!101361 (= c!84564 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101361 (= lt!341539 (select (arr!20231 a!3186) lt!341379))))

(assert (=> d!101361 (validMask!0 mask!3328)))

(assert (=> d!101361 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341379 resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341540)))

(assert (= (and d!101361 c!84564) b!767723))

(assert (= (and d!101361 (not c!84564)) b!767727))

(assert (= (and b!767727 c!84566) b!767725))

(assert (= (and b!767727 (not c!84566)) b!767724))

(assert (= (and b!767724 c!84565) b!767728))

(assert (= (and b!767724 (not c!84565)) b!767726))

(declare-fun m!713469 () Bool)

(assert (=> b!767726 m!713469))

(assert (=> b!767726 m!713469))

(assert (=> b!767726 m!713181))

(declare-fun m!713471 () Bool)

(assert (=> b!767726 m!713471))

(declare-fun m!713473 () Bool)

(assert (=> d!101361 m!713473))

(declare-fun m!713475 () Bool)

(assert (=> d!101361 m!713475))

(declare-fun m!713477 () Bool)

(assert (=> d!101361 m!713477))

(assert (=> d!101361 m!713213))

(assert (=> b!767355 d!101361))

(declare-fun b!767729 () Bool)

(declare-fun e!427543 () SeekEntryResult!7838)

(assert (=> b!767729 (= e!427543 Undefined!7838)))

(declare-fun b!767730 () Bool)

(declare-fun c!84568 () Bool)

(declare-fun lt!341541 () (_ BitVec 64))

(assert (=> b!767730 (= c!84568 (= lt!341541 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427545 () SeekEntryResult!7838)

(declare-fun e!427544 () SeekEntryResult!7838)

(assert (=> b!767730 (= e!427545 e!427544)))

(declare-fun b!767731 () Bool)

(assert (=> b!767731 (= e!427545 (Found!7838 resIntermediateIndex!5))))

(declare-fun b!767732 () Bool)

(assert (=> b!767732 (= e!427544 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767733 () Bool)

(assert (=> b!767733 (= e!427543 e!427545)))

(declare-fun c!84569 () Bool)

(assert (=> b!767733 (= c!84569 (= lt!341541 (select (arr!20231 a!3186) j!159)))))

(declare-fun b!767734 () Bool)

(assert (=> b!767734 (= e!427544 (MissingVacant!7838 resIntermediateIndex!5))))

(declare-fun lt!341542 () SeekEntryResult!7838)

(declare-fun d!101363 () Bool)

(assert (=> d!101363 (and (or (is-Undefined!7838 lt!341542) (not (is-Found!7838 lt!341542)) (and (bvsge (index!33720 lt!341542) #b00000000000000000000000000000000) (bvslt (index!33720 lt!341542) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341542) (is-Found!7838 lt!341542) (not (is-MissingVacant!7838 lt!341542)) (not (= (index!33722 lt!341542) resIntermediateIndex!5)) (and (bvsge (index!33722 lt!341542) #b00000000000000000000000000000000) (bvslt (index!33722 lt!341542) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341542) (ite (is-Found!7838 lt!341542) (= (select (arr!20231 a!3186) (index!33720 lt!341542)) (select (arr!20231 a!3186) j!159)) (and (is-MissingVacant!7838 lt!341542) (= (index!33722 lt!341542) resIntermediateIndex!5) (= (select (arr!20231 a!3186) (index!33722 lt!341542)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101363 (= lt!341542 e!427543)))

(declare-fun c!84567 () Bool)

(assert (=> d!101363 (= c!84567 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101363 (= lt!341541 (select (arr!20231 a!3186) resIntermediateIndex!5))))

(assert (=> d!101363 (validMask!0 mask!3328)))

(assert (=> d!101363 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20231 a!3186) j!159) a!3186 mask!3328) lt!341542)))

(assert (= (and d!101363 c!84567) b!767729))

(assert (= (and d!101363 (not c!84567)) b!767733))

(assert (= (and b!767733 c!84569) b!767731))

(assert (= (and b!767733 (not c!84569)) b!767730))

(assert (= (and b!767730 c!84568) b!767734))

(assert (= (and b!767730 (not c!84568)) b!767732))

(declare-fun m!713479 () Bool)

(assert (=> b!767732 m!713479))

(assert (=> b!767732 m!713479))

(assert (=> b!767732 m!713181))

(declare-fun m!713481 () Bool)

(assert (=> b!767732 m!713481))

(declare-fun m!713483 () Bool)

(assert (=> d!101363 m!713483))

(declare-fun m!713485 () Bool)

(assert (=> d!101363 m!713485))

(assert (=> d!101363 m!713211))

(assert (=> d!101363 m!713213))

(assert (=> b!767338 d!101363))

(declare-fun d!101365 () Bool)

(declare-fun res!519387 () Bool)

(declare-fun e!427555 () Bool)

(assert (=> d!101365 (=> res!519387 e!427555)))

(assert (=> d!101365 (= res!519387 (= (select (arr!20231 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101365 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!427555)))

(declare-fun b!767748 () Bool)

(declare-fun e!427556 () Bool)

(assert (=> b!767748 (= e!427555 e!427556)))

(declare-fun res!519388 () Bool)

(assert (=> b!767748 (=> (not res!519388) (not e!427556))))

(assert (=> b!767748 (= res!519388 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20652 a!3186)))))

(declare-fun b!767749 () Bool)

(assert (=> b!767749 (= e!427556 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101365 (not res!519387)) b!767748))

(assert (= (and b!767748 res!519388) b!767749))

(assert (=> d!101365 m!713277))

(declare-fun m!713489 () Bool)

(assert (=> b!767749 m!713489))

(assert (=> b!767348 d!101365))

(declare-fun b!767750 () Bool)

(declare-fun e!427557 () SeekEntryResult!7838)

(declare-fun e!427559 () SeekEntryResult!7838)

(assert (=> b!767750 (= e!427557 e!427559)))

(declare-fun lt!341548 () (_ BitVec 64))

(declare-fun lt!341550 () SeekEntryResult!7838)

(assert (=> b!767750 (= lt!341548 (select (arr!20231 a!3186) (index!33721 lt!341550)))))

(declare-fun c!84574 () Bool)

(assert (=> b!767750 (= c!84574 (= lt!341548 k!2102))))

(declare-fun b!767751 () Bool)

(declare-fun e!427558 () SeekEntryResult!7838)

(assert (=> b!767751 (= e!427558 (MissingZero!7838 (index!33721 lt!341550)))))

(declare-fun b!767752 () Bool)

(assert (=> b!767752 (= e!427558 (seekKeyOrZeroReturnVacant!0 (x!64657 lt!341550) (index!33721 lt!341550) (index!33721 lt!341550) k!2102 a!3186 mask!3328))))

(declare-fun b!767753 () Bool)

(declare-fun c!84573 () Bool)

(assert (=> b!767753 (= c!84573 (= lt!341548 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767753 (= e!427559 e!427558)))

(declare-fun b!767754 () Bool)

(assert (=> b!767754 (= e!427559 (Found!7838 (index!33721 lt!341550)))))

(declare-fun b!767755 () Bool)

(assert (=> b!767755 (= e!427557 Undefined!7838)))

(declare-fun d!101369 () Bool)

(declare-fun lt!341549 () SeekEntryResult!7838)

(assert (=> d!101369 (and (or (is-Undefined!7838 lt!341549) (not (is-Found!7838 lt!341549)) (and (bvsge (index!33720 lt!341549) #b00000000000000000000000000000000) (bvslt (index!33720 lt!341549) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341549) (is-Found!7838 lt!341549) (not (is-MissingZero!7838 lt!341549)) (and (bvsge (index!33719 lt!341549) #b00000000000000000000000000000000) (bvslt (index!33719 lt!341549) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341549) (is-Found!7838 lt!341549) (is-MissingZero!7838 lt!341549) (not (is-MissingVacant!7838 lt!341549)) (and (bvsge (index!33722 lt!341549) #b00000000000000000000000000000000) (bvslt (index!33722 lt!341549) (size!20652 a!3186)))) (or (is-Undefined!7838 lt!341549) (ite (is-Found!7838 lt!341549) (= (select (arr!20231 a!3186) (index!33720 lt!341549)) k!2102) (ite (is-MissingZero!7838 lt!341549) (= (select (arr!20231 a!3186) (index!33719 lt!341549)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7838 lt!341549) (= (select (arr!20231 a!3186) (index!33722 lt!341549)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101369 (= lt!341549 e!427557)))

(declare-fun c!84575 () Bool)

(assert (=> d!101369 (= c!84575 (and (is-Intermediate!7838 lt!341550) (undefined!8650 lt!341550)))))

(assert (=> d!101369 (= lt!341550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101369 (validMask!0 mask!3328)))

(assert (=> d!101369 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!341549)))

(assert (= (and d!101369 c!84575) b!767755))

(assert (= (and d!101369 (not c!84575)) b!767750))

(assert (= (and b!767750 c!84574) b!767754))

(assert (= (and b!767750 (not c!84574)) b!767753))

(assert (= (and b!767753 c!84573) b!767751))

(assert (= (and b!767753 (not c!84573)) b!767752))

(declare-fun m!713497 () Bool)

(assert (=> b!767750 m!713497))

(declare-fun m!713499 () Bool)

(assert (=> b!767752 m!713499))

(assert (=> d!101369 m!713213))

(declare-fun m!713501 () Bool)

(assert (=> d!101369 m!713501))

(declare-fun m!713503 () Bool)

(assert (=> d!101369 m!713503))

(declare-fun m!713505 () Bool)

(assert (=> d!101369 m!713505))

(assert (=> d!101369 m!713501))

(declare-fun m!713507 () Bool)

(assert (=> d!101369 m!713507))

(declare-fun m!713509 () Bool)

(assert (=> d!101369 m!713509))

(assert (=> b!767347 d!101369))

(declare-fun b!767765 () Bool)

(declare-fun e!427565 () SeekEntryResult!7838)

(assert (=> b!767765 (= e!427565 (Intermediate!7838 true index!1321 x!1131))))

(declare-fun b!767766 () Bool)

(declare-fun lt!341553 () SeekEntryResult!7838)

(assert (=> b!767766 (and (bvsge (index!33721 lt!341553) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341553) (size!20652 lt!341383)))))

(declare-fun res!519392 () Bool)

(assert (=> b!767766 (= res!519392 (= (select (arr!20231 lt!341383) (index!33721 lt!341553)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427566 () Bool)

(assert (=> b!767766 (=> res!519392 e!427566)))

(declare-fun b!767767 () Bool)

(assert (=> b!767767 (and (bvsge (index!33721 lt!341553) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341553) (size!20652 lt!341383)))))

(assert (=> b!767767 (= e!427566 (= (select (arr!20231 lt!341383) (index!33721 lt!341553)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427568 () SeekEntryResult!7838)

(declare-fun b!767768 () Bool)

(assert (=> b!767768 (= e!427568 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!341378 lt!341383 mask!3328))))

(declare-fun b!767769 () Bool)

(assert (=> b!767769 (and (bvsge (index!33721 lt!341553) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341553) (size!20652 lt!341383)))))

(declare-fun res!519393 () Bool)

(assert (=> b!767769 (= res!519393 (= (select (arr!20231 lt!341383) (index!33721 lt!341553)) lt!341378))))

(assert (=> b!767769 (=> res!519393 e!427566)))

(declare-fun e!427567 () Bool)

(assert (=> b!767769 (= e!427567 e!427566)))

(declare-fun b!767770 () Bool)

(declare-fun e!427569 () Bool)

(assert (=> b!767770 (= e!427569 e!427567)))

(declare-fun res!519394 () Bool)

(assert (=> b!767770 (= res!519394 (and (is-Intermediate!7838 lt!341553) (not (undefined!8650 lt!341553)) (bvslt (x!64657 lt!341553) #b01111111111111111111111111111110) (bvsge (x!64657 lt!341553) #b00000000000000000000000000000000) (bvsge (x!64657 lt!341553) x!1131)))))

(assert (=> b!767770 (=> (not res!519394) (not e!427567))))

(declare-fun b!767771 () Bool)

(assert (=> b!767771 (= e!427568 (Intermediate!7838 false index!1321 x!1131))))

(declare-fun b!767772 () Bool)

(assert (=> b!767772 (= e!427565 e!427568)))

(declare-fun c!84580 () Bool)

(declare-fun lt!341554 () (_ BitVec 64))

(assert (=> b!767772 (= c!84580 (or (= lt!341554 lt!341378) (= (bvadd lt!341554 lt!341554) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767773 () Bool)

(assert (=> b!767773 (= e!427569 (bvsge (x!64657 lt!341553) #b01111111111111111111111111111110))))

(declare-fun d!101373 () Bool)

(assert (=> d!101373 e!427569))

(declare-fun c!84581 () Bool)

(assert (=> d!101373 (= c!84581 (and (is-Intermediate!7838 lt!341553) (undefined!8650 lt!341553)))))

(assert (=> d!101373 (= lt!341553 e!427565)))

(declare-fun c!84579 () Bool)

(assert (=> d!101373 (= c!84579 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101373 (= lt!341554 (select (arr!20231 lt!341383) index!1321))))

(assert (=> d!101373 (validMask!0 mask!3328)))

(assert (=> d!101373 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341378 lt!341383 mask!3328) lt!341553)))

(assert (= (and d!101373 c!84579) b!767765))

(assert (= (and d!101373 (not c!84579)) b!767772))

(assert (= (and b!767772 c!84580) b!767771))

(assert (= (and b!767772 (not c!84580)) b!767768))

(assert (= (and d!101373 c!84581) b!767773))

(assert (= (and d!101373 (not c!84581)) b!767770))

(assert (= (and b!767770 res!519394) b!767769))

(assert (= (and b!767769 (not res!519393)) b!767766))

(assert (= (and b!767766 (not res!519392)) b!767767))

(declare-fun m!713511 () Bool)

(assert (=> d!101373 m!713511))

(assert (=> d!101373 m!713213))

(declare-fun m!713513 () Bool)

(assert (=> b!767769 m!713513))

(assert (=> b!767767 m!713513))

(assert (=> b!767766 m!713513))

(assert (=> b!767768 m!713185))

(assert (=> b!767768 m!713185))

(declare-fun m!713515 () Bool)

(assert (=> b!767768 m!713515))

(assert (=> b!767357 d!101373))

(declare-fun b!767774 () Bool)

(declare-fun e!427570 () SeekEntryResult!7838)

(assert (=> b!767774 (= e!427570 (Intermediate!7838 true (toIndex!0 lt!341378 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767775 () Bool)

(declare-fun lt!341555 () SeekEntryResult!7838)

(assert (=> b!767775 (and (bvsge (index!33721 lt!341555) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341555) (size!20652 lt!341383)))))

(declare-fun res!519395 () Bool)

(assert (=> b!767775 (= res!519395 (= (select (arr!20231 lt!341383) (index!33721 lt!341555)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427571 () Bool)

(assert (=> b!767775 (=> res!519395 e!427571)))

(declare-fun b!767776 () Bool)

(assert (=> b!767776 (and (bvsge (index!33721 lt!341555) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341555) (size!20652 lt!341383)))))

(assert (=> b!767776 (= e!427571 (= (select (arr!20231 lt!341383) (index!33721 lt!341555)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767777 () Bool)

(declare-fun e!427573 () SeekEntryResult!7838)

(assert (=> b!767777 (= e!427573 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!341378 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!341378 lt!341383 mask!3328))))

(declare-fun b!767778 () Bool)

(assert (=> b!767778 (and (bvsge (index!33721 lt!341555) #b00000000000000000000000000000000) (bvslt (index!33721 lt!341555) (size!20652 lt!341383)))))

(declare-fun res!519396 () Bool)

(assert (=> b!767778 (= res!519396 (= (select (arr!20231 lt!341383) (index!33721 lt!341555)) lt!341378))))

(assert (=> b!767778 (=> res!519396 e!427571)))

(declare-fun e!427572 () Bool)

(assert (=> b!767778 (= e!427572 e!427571)))

(declare-fun b!767779 () Bool)

(declare-fun e!427574 () Bool)

(assert (=> b!767779 (= e!427574 e!427572)))

(declare-fun res!519397 () Bool)

(assert (=> b!767779 (= res!519397 (and (is-Intermediate!7838 lt!341555) (not (undefined!8650 lt!341555)) (bvslt (x!64657 lt!341555) #b01111111111111111111111111111110) (bvsge (x!64657 lt!341555) #b00000000000000000000000000000000) (bvsge (x!64657 lt!341555) #b00000000000000000000000000000000)))))

(assert (=> b!767779 (=> (not res!519397) (not e!427572))))

(declare-fun b!767780 () Bool)

(assert (=> b!767780 (= e!427573 (Intermediate!7838 false (toIndex!0 lt!341378 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767781 () Bool)

(assert (=> b!767781 (= e!427570 e!427573)))

(declare-fun c!84583 () Bool)

(declare-fun lt!341556 () (_ BitVec 64))

(assert (=> b!767781 (= c!84583 (or (= lt!341556 lt!341378) (= (bvadd lt!341556 lt!341556) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767782 () Bool)

(assert (=> b!767782 (= e!427574 (bvsge (x!64657 lt!341555) #b01111111111111111111111111111110))))

(declare-fun d!101375 () Bool)

(assert (=> d!101375 e!427574))

(declare-fun c!84584 () Bool)

(assert (=> d!101375 (= c!84584 (and (is-Intermediate!7838 lt!341555) (undefined!8650 lt!341555)))))

(assert (=> d!101375 (= lt!341555 e!427570)))

(declare-fun c!84582 () Bool)

(assert (=> d!101375 (= c!84582 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101375 (= lt!341556 (select (arr!20231 lt!341383) (toIndex!0 lt!341378 mask!3328)))))

(assert (=> d!101375 (validMask!0 mask!3328)))

(assert (=> d!101375 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341378 mask!3328) lt!341378 lt!341383 mask!3328) lt!341555)))

(assert (= (and d!101375 c!84582) b!767774))

(assert (= (and d!101375 (not c!84582)) b!767781))

(assert (= (and b!767781 c!84583) b!767780))

(assert (= (and b!767781 (not c!84583)) b!767777))

(assert (= (and d!101375 c!84584) b!767782))

(assert (= (and d!101375 (not c!84584)) b!767779))

(assert (= (and b!767779 res!519397) b!767778))

(assert (= (and b!767778 (not res!519396)) b!767775))

(assert (= (and b!767775 (not res!519395)) b!767776))

(assert (=> d!101375 m!713195))

(declare-fun m!713525 () Bool)

(assert (=> d!101375 m!713525))

(assert (=> d!101375 m!713213))

(declare-fun m!713527 () Bool)

(assert (=> b!767778 m!713527))

(assert (=> b!767776 m!713527))

(assert (=> b!767775 m!713527))

(assert (=> b!767777 m!713195))

(declare-fun m!713529 () Bool)

(assert (=> b!767777 m!713529))

(assert (=> b!767777 m!713529))

(declare-fun m!713531 () Bool)

(assert (=> b!767777 m!713531))

(assert (=> b!767357 d!101375))

(declare-fun d!101381 () Bool)

(declare-fun lt!341563 () (_ BitVec 32))

(declare-fun lt!341562 () (_ BitVec 32))

(assert (=> d!101381 (= lt!341563 (bvmul (bvxor lt!341562 (bvlshr lt!341562 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101381 (= lt!341562 ((_ extract 31 0) (bvand (bvxor lt!341378 (bvlshr lt!341378 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101381 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519370 (let ((h!15377 ((_ extract 31 0) (bvand (bvxor lt!341378 (bvlshr lt!341378 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64665 (bvmul (bvxor h!15377 (bvlshr h!15377 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64665 (bvlshr x!64665 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519370 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519370 #b00000000000000000000000000000000))))))

(assert (=> d!101381 (= (toIndex!0 lt!341378 mask!3328) (bvand (bvxor lt!341563 (bvlshr lt!341563 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!767357 d!101381))

(push 1)

