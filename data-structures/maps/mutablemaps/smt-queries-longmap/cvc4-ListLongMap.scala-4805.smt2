; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65978 () Bool)

(assert start!65978)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7736 0))(
  ( (MissingZero!7736 (index!33311 (_ BitVec 32))) (Found!7736 (index!33312 (_ BitVec 32))) (Intermediate!7736 (undefined!8548 Bool) (index!33313 (_ BitVec 32)) (x!64224 (_ BitVec 32))) (Undefined!7736) (MissingVacant!7736 (index!33314 (_ BitVec 32))) )
))
(declare-fun lt!338733 () SeekEntryResult!7736)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!760198 () Bool)

(declare-fun e!423791 () Bool)

(assert (=> b!760198 (= e!423791 (not (or (not (is-Intermediate!7736 lt!338733)) (not (= x!1131 (x!64224 lt!338733))) (= index!1321 (index!33313 lt!338733)))))))

(declare-fun e!423792 () Bool)

(assert (=> b!760198 e!423792))

(declare-fun res!514494 () Bool)

(assert (=> b!760198 (=> (not res!514494) (not e!423792))))

(declare-datatypes ((array!42041 0))(
  ( (array!42042 (arr!20129 (Array (_ BitVec 32) (_ BitVec 64))) (size!20550 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42041)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42041 (_ BitVec 32)) Bool)

(assert (=> b!760198 (= res!514494 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26312 0))(
  ( (Unit!26313) )
))
(declare-fun lt!338731 () Unit!26312)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26312)

(assert (=> b!760198 (= lt!338731 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!760199 () Bool)

(declare-fun lt!338730 () SeekEntryResult!7736)

(declare-fun e!423790 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42041 (_ BitVec 32)) SeekEntryResult!7736)

(assert (=> b!760199 (= e!423790 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20129 a!3186) j!159) a!3186 mask!3328) lt!338730))))

(declare-fun res!514502 () Bool)

(declare-fun e!423793 () Bool)

(assert (=> start!65978 (=> (not res!514502) (not e!423793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65978 (= res!514502 (validMask!0 mask!3328))))

(assert (=> start!65978 e!423793))

(assert (=> start!65978 true))

(declare-fun array_inv!15903 (array!42041) Bool)

(assert (=> start!65978 (array_inv!15903 a!3186)))

(declare-fun b!760200 () Bool)

(declare-fun res!514493 () Bool)

(assert (=> b!760200 (=> (not res!514493) (not e!423793))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!760200 (= res!514493 (validKeyInArray!0 k!2102))))

(declare-fun b!760201 () Bool)

(declare-fun e!423789 () Bool)

(declare-fun e!423794 () Bool)

(assert (=> b!760201 (= e!423789 e!423794)))

(declare-fun res!514492 () Bool)

(assert (=> b!760201 (=> (not res!514492) (not e!423794))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760201 (= res!514492 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20129 a!3186) j!159) mask!3328) (select (arr!20129 a!3186) j!159) a!3186 mask!3328) lt!338730))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!760201 (= lt!338730 (Intermediate!7736 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!760202 () Bool)

(declare-fun res!514497 () Bool)

(assert (=> b!760202 (=> (not res!514497) (not e!423789))))

(assert (=> b!760202 (= res!514497 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20550 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20550 a!3186))))))

(declare-fun b!760203 () Bool)

(declare-fun res!514504 () Bool)

(assert (=> b!760203 (=> (not res!514504) (not e!423793))))

(declare-fun arrayContainsKey!0 (array!42041 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!760203 (= res!514504 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!760204 () Bool)

(declare-fun e!423788 () Bool)

(assert (=> b!760204 (= e!423792 e!423788)))

(declare-fun res!514506 () Bool)

(assert (=> b!760204 (=> (not res!514506) (not e!423788))))

(declare-fun lt!338729 () SeekEntryResult!7736)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42041 (_ BitVec 32)) SeekEntryResult!7736)

(assert (=> b!760204 (= res!514506 (= (seekEntryOrOpen!0 (select (arr!20129 a!3186) j!159) a!3186 mask!3328) lt!338729))))

(assert (=> b!760204 (= lt!338729 (Found!7736 j!159))))

(declare-fun b!760205 () Bool)

(declare-fun res!514498 () Bool)

(assert (=> b!760205 (=> (not res!514498) (not e!423789))))

(assert (=> b!760205 (= res!514498 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!760206 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42041 (_ BitVec 32)) SeekEntryResult!7736)

(assert (=> b!760206 (= e!423788 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20129 a!3186) j!159) a!3186 mask!3328) lt!338729))))

(declare-fun b!760207 () Bool)

(declare-fun res!514500 () Bool)

(assert (=> b!760207 (=> (not res!514500) (not e!423793))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!760207 (= res!514500 (and (= (size!20550 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20550 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20550 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!760208 () Bool)

(assert (=> b!760208 (= e!423793 e!423789)))

(declare-fun res!514503 () Bool)

(assert (=> b!760208 (=> (not res!514503) (not e!423789))))

(declare-fun lt!338735 () SeekEntryResult!7736)

(assert (=> b!760208 (= res!514503 (or (= lt!338735 (MissingZero!7736 i!1173)) (= lt!338735 (MissingVacant!7736 i!1173))))))

(assert (=> b!760208 (= lt!338735 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!760209 () Bool)

(declare-fun res!514501 () Bool)

(assert (=> b!760209 (=> (not res!514501) (not e!423794))))

(assert (=> b!760209 (= res!514501 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20129 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760210 () Bool)

(assert (=> b!760210 (= e!423794 e!423791)))

(declare-fun res!514505 () Bool)

(assert (=> b!760210 (=> (not res!514505) (not e!423791))))

(declare-fun lt!338732 () SeekEntryResult!7736)

(assert (=> b!760210 (= res!514505 (= lt!338732 lt!338733))))

(declare-fun lt!338728 () array!42041)

(declare-fun lt!338734 () (_ BitVec 64))

(assert (=> b!760210 (= lt!338733 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338734 lt!338728 mask!3328))))

(assert (=> b!760210 (= lt!338732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338734 mask!3328) lt!338734 lt!338728 mask!3328))))

(assert (=> b!760210 (= lt!338734 (select (store (arr!20129 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!760210 (= lt!338728 (array!42042 (store (arr!20129 a!3186) i!1173 k!2102) (size!20550 a!3186)))))

(declare-fun b!760211 () Bool)

(assert (=> b!760211 (= e!423790 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20129 a!3186) j!159) a!3186 mask!3328) (Found!7736 j!159)))))

(declare-fun b!760212 () Bool)

(declare-fun res!514495 () Bool)

(assert (=> b!760212 (=> (not res!514495) (not e!423789))))

(declare-datatypes ((List!14184 0))(
  ( (Nil!14181) (Cons!14180 (h!15255 (_ BitVec 64)) (t!20507 List!14184)) )
))
(declare-fun arrayNoDuplicates!0 (array!42041 (_ BitVec 32) List!14184) Bool)

(assert (=> b!760212 (= res!514495 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14181))))

(declare-fun b!760213 () Bool)

(declare-fun res!514496 () Bool)

(assert (=> b!760213 (=> (not res!514496) (not e!423793))))

(assert (=> b!760213 (= res!514496 (validKeyInArray!0 (select (arr!20129 a!3186) j!159)))))

(declare-fun b!760214 () Bool)

(declare-fun res!514499 () Bool)

(assert (=> b!760214 (=> (not res!514499) (not e!423794))))

(assert (=> b!760214 (= res!514499 e!423790)))

(declare-fun c!83235 () Bool)

(assert (=> b!760214 (= c!83235 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65978 res!514502) b!760207))

(assert (= (and b!760207 res!514500) b!760213))

(assert (= (and b!760213 res!514496) b!760200))

(assert (= (and b!760200 res!514493) b!760203))

(assert (= (and b!760203 res!514504) b!760208))

(assert (= (and b!760208 res!514503) b!760205))

(assert (= (and b!760205 res!514498) b!760212))

(assert (= (and b!760212 res!514495) b!760202))

(assert (= (and b!760202 res!514497) b!760201))

(assert (= (and b!760201 res!514492) b!760209))

(assert (= (and b!760209 res!514501) b!760214))

(assert (= (and b!760214 c!83235) b!760199))

(assert (= (and b!760214 (not c!83235)) b!760211))

(assert (= (and b!760214 res!514499) b!760210))

(assert (= (and b!760210 res!514505) b!760198))

(assert (= (and b!760198 res!514494) b!760204))

(assert (= (and b!760204 res!514506) b!760206))

(declare-fun m!707475 () Bool)

(assert (=> b!760209 m!707475))

(declare-fun m!707477 () Bool)

(assert (=> b!760198 m!707477))

(declare-fun m!707479 () Bool)

(assert (=> b!760198 m!707479))

(declare-fun m!707481 () Bool)

(assert (=> b!760211 m!707481))

(assert (=> b!760211 m!707481))

(declare-fun m!707483 () Bool)

(assert (=> b!760211 m!707483))

(assert (=> b!760201 m!707481))

(assert (=> b!760201 m!707481))

(declare-fun m!707485 () Bool)

(assert (=> b!760201 m!707485))

(assert (=> b!760201 m!707485))

(assert (=> b!760201 m!707481))

(declare-fun m!707487 () Bool)

(assert (=> b!760201 m!707487))

(declare-fun m!707489 () Bool)

(assert (=> b!760210 m!707489))

(declare-fun m!707491 () Bool)

(assert (=> b!760210 m!707491))

(declare-fun m!707493 () Bool)

(assert (=> b!760210 m!707493))

(declare-fun m!707495 () Bool)

(assert (=> b!760210 m!707495))

(assert (=> b!760210 m!707489))

(declare-fun m!707497 () Bool)

(assert (=> b!760210 m!707497))

(declare-fun m!707499 () Bool)

(assert (=> b!760200 m!707499))

(assert (=> b!760204 m!707481))

(assert (=> b!760204 m!707481))

(declare-fun m!707501 () Bool)

(assert (=> b!760204 m!707501))

(declare-fun m!707503 () Bool)

(assert (=> b!760203 m!707503))

(declare-fun m!707505 () Bool)

(assert (=> b!760212 m!707505))

(assert (=> b!760206 m!707481))

(assert (=> b!760206 m!707481))

(declare-fun m!707507 () Bool)

(assert (=> b!760206 m!707507))

(assert (=> b!760213 m!707481))

(assert (=> b!760213 m!707481))

(declare-fun m!707509 () Bool)

(assert (=> b!760213 m!707509))

(declare-fun m!707511 () Bool)

(assert (=> b!760208 m!707511))

(declare-fun m!707513 () Bool)

(assert (=> b!760205 m!707513))

(assert (=> b!760199 m!707481))

(assert (=> b!760199 m!707481))

(declare-fun m!707515 () Bool)

(assert (=> b!760199 m!707515))

(declare-fun m!707517 () Bool)

(assert (=> start!65978 m!707517))

(declare-fun m!707519 () Bool)

(assert (=> start!65978 m!707519))

(push 1)

(assert (not b!760213))

(assert (not b!760212))

(assert (not b!760199))

(assert (not b!760211))

(assert (not b!760208))

(assert (not b!760205))

(assert (not b!760201))

(assert (not start!65978))

(assert (not b!760198))

(assert (not b!760204))

(assert (not b!760206))

(assert (not b!760200))

(assert (not b!760210))

(assert (not b!760203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!423855 () SeekEntryResult!7736)

(declare-fun b!760311 () Bool)

(assert (=> b!760311 (= e!423855 (Intermediate!7736 false (toIndex!0 (select (arr!20129 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!100435 () Bool)

(declare-fun e!423852 () Bool)

(assert (=> d!100435 e!423852))

(declare-fun c!83274 () Bool)

(declare-fun lt!338781 () SeekEntryResult!7736)

(assert (=> d!100435 (= c!83274 (and (is-Intermediate!7736 lt!338781) (undefined!8548 lt!338781)))))

(declare-fun e!423853 () SeekEntryResult!7736)

(assert (=> d!100435 (= lt!338781 e!423853)))

(declare-fun c!83272 () Bool)

(assert (=> d!100435 (= c!83272 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!338780 () (_ BitVec 64))

(assert (=> d!100435 (= lt!338780 (select (arr!20129 a!3186) (toIndex!0 (select (arr!20129 a!3186) j!159) mask!3328)))))

(assert (=> d!100435 (validMask!0 mask!3328)))

(assert (=> d!100435 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20129 a!3186) j!159) mask!3328) (select (arr!20129 a!3186) j!159) a!3186 mask!3328) lt!338781)))

(declare-fun b!760312 () Bool)

(assert (=> b!760312 (and (bvsge (index!33313 lt!338781) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338781) (size!20550 a!3186)))))

(declare-fun res!514533 () Bool)

(assert (=> b!760312 (= res!514533 (= (select (arr!20129 a!3186) (index!33313 lt!338781)) (select (arr!20129 a!3186) j!159)))))

(declare-fun e!423854 () Bool)

(assert (=> b!760312 (=> res!514533 e!423854)))

(declare-fun e!423856 () Bool)

(assert (=> b!760312 (= e!423856 e!423854)))

(declare-fun b!760313 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!760313 (= e!423855 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20129 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20129 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760314 () Bool)

(assert (=> b!760314 (= e!423853 (Intermediate!7736 true (toIndex!0 (select (arr!20129 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760315 () Bool)

(assert (=> b!760315 (= e!423852 e!423856)))

(declare-fun res!514532 () Bool)

(assert (=> b!760315 (= res!514532 (and (is-Intermediate!7736 lt!338781) (not (undefined!8548 lt!338781)) (bvslt (x!64224 lt!338781) #b01111111111111111111111111111110) (bvsge (x!64224 lt!338781) #b00000000000000000000000000000000) (bvsge (x!64224 lt!338781) #b00000000000000000000000000000000)))))

(assert (=> b!760315 (=> (not res!514532) (not e!423856))))

(declare-fun b!760316 () Bool)

(assert (=> b!760316 (and (bvsge (index!33313 lt!338781) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338781) (size!20550 a!3186)))))

(assert (=> b!760316 (= e!423854 (= (select (arr!20129 a!3186) (index!33313 lt!338781)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760317 () Bool)

(assert (=> b!760317 (= e!423852 (bvsge (x!64224 lt!338781) #b01111111111111111111111111111110))))

(declare-fun b!760318 () Bool)

(assert (=> b!760318 (= e!423853 e!423855)))

(declare-fun c!83273 () Bool)

(assert (=> b!760318 (= c!83273 (or (= lt!338780 (select (arr!20129 a!3186) j!159)) (= (bvadd lt!338780 lt!338780) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760319 () Bool)

(assert (=> b!760319 (and (bvsge (index!33313 lt!338781) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338781) (size!20550 a!3186)))))

(declare-fun res!514531 () Bool)

(assert (=> b!760319 (= res!514531 (= (select (arr!20129 a!3186) (index!33313 lt!338781)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760319 (=> res!514531 e!423854)))

(assert (= (and d!100435 c!83272) b!760314))

(assert (= (and d!100435 (not c!83272)) b!760318))

(assert (= (and b!760318 c!83273) b!760311))

(assert (= (and b!760318 (not c!83273)) b!760313))

(assert (= (and d!100435 c!83274) b!760317))

(assert (= (and d!100435 (not c!83274)) b!760315))

(assert (= (and b!760315 res!514532) b!760312))

(assert (= (and b!760312 (not res!514533)) b!760319))

(assert (= (and b!760319 (not res!514531)) b!760316))

(assert (=> d!100435 m!707485))

(declare-fun m!707559 () Bool)

(assert (=> d!100435 m!707559))

(assert (=> d!100435 m!707517))

(declare-fun m!707561 () Bool)

(assert (=> b!760319 m!707561))

(assert (=> b!760316 m!707561))

(assert (=> b!760312 m!707561))

(assert (=> b!760313 m!707485))

(declare-fun m!707563 () Bool)

(assert (=> b!760313 m!707563))

(assert (=> b!760313 m!707563))

(assert (=> b!760313 m!707481))

(declare-fun m!707565 () Bool)

(assert (=> b!760313 m!707565))

(assert (=> b!760201 d!100435))

(declare-fun d!100441 () Bool)

(declare-fun lt!338789 () (_ BitVec 32))

(declare-fun lt!338788 () (_ BitVec 32))

(assert (=> d!100441 (= lt!338789 (bvmul (bvxor lt!338788 (bvlshr lt!338788 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100441 (= lt!338788 ((_ extract 31 0) (bvand (bvxor (select (arr!20129 a!3186) j!159) (bvlshr (select (arr!20129 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100441 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514534 (let ((h!15256 ((_ extract 31 0) (bvand (bvxor (select (arr!20129 a!3186) j!159) (bvlshr (select (arr!20129 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64228 (bvmul (bvxor h!15256 (bvlshr h!15256 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64228 (bvlshr x!64228 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514534 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514534 #b00000000000000000000000000000000))))))

(assert (=> d!100441 (= (toIndex!0 (select (arr!20129 a!3186) j!159) mask!3328) (bvand (bvxor lt!338789 (bvlshr lt!338789 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760201 d!100441))

(declare-fun b!760357 () Bool)

(declare-fun e!423880 () Bool)

(declare-fun e!423883 () Bool)

(assert (=> b!760357 (= e!423880 e!423883)))

(declare-fun c!83286 () Bool)

(assert (=> b!760357 (= c!83286 (validKeyInArray!0 (select (arr!20129 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!760358 () Bool)

(declare-fun e!423882 () Bool)

(assert (=> b!760358 (= e!423882 e!423880)))

(declare-fun res!514551 () Bool)

(assert (=> b!760358 (=> (not res!514551) (not e!423880))))

(declare-fun e!423881 () Bool)

(assert (=> b!760358 (= res!514551 (not e!423881))))

(declare-fun res!514553 () Bool)

(assert (=> b!760358 (=> (not res!514553) (not e!423881))))

(assert (=> b!760358 (= res!514553 (validKeyInArray!0 (select (arr!20129 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!760359 () Bool)

(declare-fun call!34941 () Bool)

(assert (=> b!760359 (= e!423883 call!34941)))

(declare-fun d!100445 () Bool)

(declare-fun res!514552 () Bool)

(assert (=> d!100445 (=> res!514552 e!423882)))

(assert (=> d!100445 (= res!514552 (bvsge #b00000000000000000000000000000000 (size!20550 a!3186)))))

(assert (=> d!100445 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14181) e!423882)))

(declare-fun b!760360 () Bool)

(assert (=> b!760360 (= e!423883 call!34941)))

(declare-fun bm!34938 () Bool)

(assert (=> bm!34938 (= call!34941 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!83286 (Cons!14180 (select (arr!20129 a!3186) #b00000000000000000000000000000000) Nil!14181) Nil!14181)))))

(declare-fun b!760361 () Bool)

(declare-fun contains!4066 (List!14184 (_ BitVec 64)) Bool)

(assert (=> b!760361 (= e!423881 (contains!4066 Nil!14181 (select (arr!20129 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!100445 (not res!514552)) b!760358))

(assert (= (and b!760358 res!514553) b!760361))

(assert (= (and b!760358 res!514551) b!760357))

(assert (= (and b!760357 c!83286) b!760359))

(assert (= (and b!760357 (not c!83286)) b!760360))

(assert (= (or b!760359 b!760360) bm!34938))

(declare-fun m!707575 () Bool)

(assert (=> b!760357 m!707575))

(assert (=> b!760357 m!707575))

(declare-fun m!707577 () Bool)

(assert (=> b!760357 m!707577))

(assert (=> b!760358 m!707575))

(assert (=> b!760358 m!707575))

(assert (=> b!760358 m!707577))

(assert (=> bm!34938 m!707575))

(declare-fun m!707579 () Bool)

(assert (=> bm!34938 m!707579))

(assert (=> b!760361 m!707575))

(assert (=> b!760361 m!707575))

(declare-fun m!707581 () Bool)

(assert (=> b!760361 m!707581))

(assert (=> b!760212 d!100445))

(declare-fun b!760435 () Bool)

(declare-fun e!423925 () SeekEntryResult!7736)

(assert (=> b!760435 (= e!423925 Undefined!7736)))

(declare-fun b!760436 () Bool)

(declare-fun c!83317 () Bool)

(declare-fun lt!338830 () (_ BitVec 64))

(assert (=> b!760436 (= c!83317 (= lt!338830 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423927 () SeekEntryResult!7736)

(declare-fun e!423926 () SeekEntryResult!7736)

(assert (=> b!760436 (= e!423927 e!423926)))

(declare-fun b!760437 () Bool)

(assert (=> b!760437 (= e!423926 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20129 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760438 () Bool)

(assert (=> b!760438 (= e!423926 (MissingVacant!7736 resIntermediateIndex!5))))

(declare-fun d!100449 () Bool)

(declare-fun lt!338829 () SeekEntryResult!7736)

(assert (=> d!100449 (and (or (is-Undefined!7736 lt!338829) (not (is-Found!7736 lt!338829)) (and (bvsge (index!33312 lt!338829) #b00000000000000000000000000000000) (bvslt (index!33312 lt!338829) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338829) (is-Found!7736 lt!338829) (not (is-MissingVacant!7736 lt!338829)) (not (= (index!33314 lt!338829) resIntermediateIndex!5)) (and (bvsge (index!33314 lt!338829) #b00000000000000000000000000000000) (bvslt (index!33314 lt!338829) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338829) (ite (is-Found!7736 lt!338829) (= (select (arr!20129 a!3186) (index!33312 lt!338829)) (select (arr!20129 a!3186) j!159)) (and (is-MissingVacant!7736 lt!338829) (= (index!33314 lt!338829) resIntermediateIndex!5) (= (select (arr!20129 a!3186) (index!33314 lt!338829)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100449 (= lt!338829 e!423925)))

(declare-fun c!83318 () Bool)

(assert (=> d!100449 (= c!83318 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!100449 (= lt!338830 (select (arr!20129 a!3186) index!1321))))

(assert (=> d!100449 (validMask!0 mask!3328)))

(assert (=> d!100449 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20129 a!3186) j!159) a!3186 mask!3328) lt!338829)))

(declare-fun b!760439 () Bool)

(assert (=> b!760439 (= e!423927 (Found!7736 index!1321))))

(declare-fun b!760440 () Bool)

(assert (=> b!760440 (= e!423925 e!423927)))

(declare-fun c!83316 () Bool)

(assert (=> b!760440 (= c!83316 (= lt!338830 (select (arr!20129 a!3186) j!159)))))

(assert (= (and d!100449 c!83318) b!760435))

(assert (= (and d!100449 (not c!83318)) b!760440))

(assert (= (and b!760440 c!83316) b!760439))

(assert (= (and b!760440 (not c!83316)) b!760436))

(assert (= (and b!760436 c!83317) b!760438))

(assert (= (and b!760436 (not c!83317)) b!760437))

(declare-fun m!707629 () Bool)

(assert (=> b!760437 m!707629))

(assert (=> b!760437 m!707629))

(assert (=> b!760437 m!707481))

(declare-fun m!707631 () Bool)

(assert (=> b!760437 m!707631))

(declare-fun m!707633 () Bool)

(assert (=> d!100449 m!707633))

(declare-fun m!707635 () Bool)

(assert (=> d!100449 m!707635))

(declare-fun m!707637 () Bool)

(assert (=> d!100449 m!707637))

(assert (=> d!100449 m!707517))

(assert (=> b!760211 d!100449))

(declare-fun d!100465 () Bool)

(assert (=> d!100465 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760200 d!100465))

(declare-fun b!760458 () Bool)

(declare-fun e!423941 () SeekEntryResult!7736)

(assert (=> b!760458 (= e!423941 (Intermediate!7736 false index!1321 x!1131))))

(declare-fun d!100469 () Bool)

(declare-fun e!423938 () Bool)

(assert (=> d!100469 e!423938))

(declare-fun c!83328 () Bool)

(declare-fun lt!338838 () SeekEntryResult!7736)

(assert (=> d!100469 (= c!83328 (and (is-Intermediate!7736 lt!338838) (undefined!8548 lt!338838)))))

(declare-fun e!423939 () SeekEntryResult!7736)

(assert (=> d!100469 (= lt!338838 e!423939)))

(declare-fun c!83326 () Bool)

(assert (=> d!100469 (= c!83326 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!338837 () (_ BitVec 64))

(assert (=> d!100469 (= lt!338837 (select (arr!20129 a!3186) index!1321))))

(assert (=> d!100469 (validMask!0 mask!3328)))

(assert (=> d!100469 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20129 a!3186) j!159) a!3186 mask!3328) lt!338838)))

(declare-fun b!760459 () Bool)

(assert (=> b!760459 (and (bvsge (index!33313 lt!338838) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338838) (size!20550 a!3186)))))

(declare-fun res!514575 () Bool)

(assert (=> b!760459 (= res!514575 (= (select (arr!20129 a!3186) (index!33313 lt!338838)) (select (arr!20129 a!3186) j!159)))))

(declare-fun e!423940 () Bool)

(assert (=> b!760459 (=> res!514575 e!423940)))

(declare-fun e!423942 () Bool)

(assert (=> b!760459 (= e!423942 e!423940)))

(declare-fun b!760460 () Bool)

(assert (=> b!760460 (= e!423941 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20129 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760461 () Bool)

(assert (=> b!760461 (= e!423939 (Intermediate!7736 true index!1321 x!1131))))

(declare-fun b!760462 () Bool)

(assert (=> b!760462 (= e!423938 e!423942)))

(declare-fun res!514574 () Bool)

(assert (=> b!760462 (= res!514574 (and (is-Intermediate!7736 lt!338838) (not (undefined!8548 lt!338838)) (bvslt (x!64224 lt!338838) #b01111111111111111111111111111110) (bvsge (x!64224 lt!338838) #b00000000000000000000000000000000) (bvsge (x!64224 lt!338838) x!1131)))))

(assert (=> b!760462 (=> (not res!514574) (not e!423942))))

(declare-fun b!760463 () Bool)

(assert (=> b!760463 (and (bvsge (index!33313 lt!338838) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338838) (size!20550 a!3186)))))

(assert (=> b!760463 (= e!423940 (= (select (arr!20129 a!3186) (index!33313 lt!338838)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760464 () Bool)

(assert (=> b!760464 (= e!423938 (bvsge (x!64224 lt!338838) #b01111111111111111111111111111110))))

(declare-fun b!760465 () Bool)

(assert (=> b!760465 (= e!423939 e!423941)))

(declare-fun c!83327 () Bool)

(assert (=> b!760465 (= c!83327 (or (= lt!338837 (select (arr!20129 a!3186) j!159)) (= (bvadd lt!338837 lt!338837) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760466 () Bool)

(assert (=> b!760466 (and (bvsge (index!33313 lt!338838) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338838) (size!20550 a!3186)))))

(declare-fun res!514573 () Bool)

(assert (=> b!760466 (= res!514573 (= (select (arr!20129 a!3186) (index!33313 lt!338838)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760466 (=> res!514573 e!423940)))

(assert (= (and d!100469 c!83326) b!760461))

(assert (= (and d!100469 (not c!83326)) b!760465))

(assert (= (and b!760465 c!83327) b!760458))

(assert (= (and b!760465 (not c!83327)) b!760460))

(assert (= (and d!100469 c!83328) b!760464))

(assert (= (and d!100469 (not c!83328)) b!760462))

(assert (= (and b!760462 res!514574) b!760459))

(assert (= (and b!760459 (not res!514575)) b!760466))

(assert (= (and b!760466 (not res!514573)) b!760463))

(assert (=> d!100469 m!707637))

(assert (=> d!100469 m!707517))

(declare-fun m!707671 () Bool)

(assert (=> b!760466 m!707671))

(assert (=> b!760463 m!707671))

(assert (=> b!760459 m!707671))

(assert (=> b!760460 m!707629))

(assert (=> b!760460 m!707629))

(assert (=> b!760460 m!707481))

(declare-fun m!707673 () Bool)

(assert (=> b!760460 m!707673))

(assert (=> b!760199 d!100469))

(declare-fun b!760476 () Bool)

(declare-fun e!423951 () SeekEntryResult!7736)

(assert (=> b!760476 (= e!423951 (Intermediate!7736 false index!1321 x!1131))))

(declare-fun d!100475 () Bool)

(declare-fun e!423948 () Bool)

(assert (=> d!100475 e!423948))

(declare-fun c!83334 () Bool)

(declare-fun lt!338842 () SeekEntryResult!7736)

(assert (=> d!100475 (= c!83334 (and (is-Intermediate!7736 lt!338842) (undefined!8548 lt!338842)))))

(declare-fun e!423949 () SeekEntryResult!7736)

(assert (=> d!100475 (= lt!338842 e!423949)))

(declare-fun c!83332 () Bool)

(assert (=> d!100475 (= c!83332 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!338841 () (_ BitVec 64))

(assert (=> d!100475 (= lt!338841 (select (arr!20129 lt!338728) index!1321))))

(assert (=> d!100475 (validMask!0 mask!3328)))

(assert (=> d!100475 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338734 lt!338728 mask!3328) lt!338842)))

(declare-fun b!760477 () Bool)

(assert (=> b!760477 (and (bvsge (index!33313 lt!338842) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338842) (size!20550 lt!338728)))))

(declare-fun res!514581 () Bool)

(assert (=> b!760477 (= res!514581 (= (select (arr!20129 lt!338728) (index!33313 lt!338842)) lt!338734))))

(declare-fun e!423950 () Bool)

(assert (=> b!760477 (=> res!514581 e!423950)))

(declare-fun e!423952 () Bool)

(assert (=> b!760477 (= e!423952 e!423950)))

(declare-fun b!760478 () Bool)

(assert (=> b!760478 (= e!423951 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!338734 lt!338728 mask!3328))))

(declare-fun b!760479 () Bool)

(assert (=> b!760479 (= e!423949 (Intermediate!7736 true index!1321 x!1131))))

(declare-fun b!760480 () Bool)

(assert (=> b!760480 (= e!423948 e!423952)))

(declare-fun res!514580 () Bool)

(assert (=> b!760480 (= res!514580 (and (is-Intermediate!7736 lt!338842) (not (undefined!8548 lt!338842)) (bvslt (x!64224 lt!338842) #b01111111111111111111111111111110) (bvsge (x!64224 lt!338842) #b00000000000000000000000000000000) (bvsge (x!64224 lt!338842) x!1131)))))

(assert (=> b!760480 (=> (not res!514580) (not e!423952))))

(declare-fun b!760481 () Bool)

(assert (=> b!760481 (and (bvsge (index!33313 lt!338842) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338842) (size!20550 lt!338728)))))

(assert (=> b!760481 (= e!423950 (= (select (arr!20129 lt!338728) (index!33313 lt!338842)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760482 () Bool)

(assert (=> b!760482 (= e!423948 (bvsge (x!64224 lt!338842) #b01111111111111111111111111111110))))

(declare-fun b!760483 () Bool)

(assert (=> b!760483 (= e!423949 e!423951)))

(declare-fun c!83333 () Bool)

(assert (=> b!760483 (= c!83333 (or (= lt!338841 lt!338734) (= (bvadd lt!338841 lt!338841) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760484 () Bool)

(assert (=> b!760484 (and (bvsge (index!33313 lt!338842) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338842) (size!20550 lt!338728)))))

(declare-fun res!514579 () Bool)

(assert (=> b!760484 (= res!514579 (= (select (arr!20129 lt!338728) (index!33313 lt!338842)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760484 (=> res!514579 e!423950)))

(assert (= (and d!100475 c!83332) b!760479))

(assert (= (and d!100475 (not c!83332)) b!760483))

(assert (= (and b!760483 c!83333) b!760476))

(assert (= (and b!760483 (not c!83333)) b!760478))

(assert (= (and d!100475 c!83334) b!760482))

(assert (= (and d!100475 (not c!83334)) b!760480))

(assert (= (and b!760480 res!514580) b!760477))

(assert (= (and b!760477 (not res!514581)) b!760484))

(assert (= (and b!760484 (not res!514579)) b!760481))

(declare-fun m!707679 () Bool)

(assert (=> d!100475 m!707679))

(assert (=> d!100475 m!707517))

(declare-fun m!707681 () Bool)

(assert (=> b!760484 m!707681))

(assert (=> b!760481 m!707681))

(assert (=> b!760477 m!707681))

(assert (=> b!760478 m!707629))

(assert (=> b!760478 m!707629))

(declare-fun m!707683 () Bool)

(assert (=> b!760478 m!707683))

(assert (=> b!760210 d!100475))

(declare-fun b!760485 () Bool)

(declare-fun e!423956 () SeekEntryResult!7736)

(assert (=> b!760485 (= e!423956 (Intermediate!7736 false (toIndex!0 lt!338734 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!100479 () Bool)

(declare-fun e!423953 () Bool)

(assert (=> d!100479 e!423953))

(declare-fun c!83337 () Bool)

(declare-fun lt!338844 () SeekEntryResult!7736)

(assert (=> d!100479 (= c!83337 (and (is-Intermediate!7736 lt!338844) (undefined!8548 lt!338844)))))

(declare-fun e!423954 () SeekEntryResult!7736)

(assert (=> d!100479 (= lt!338844 e!423954)))

(declare-fun c!83335 () Bool)

(assert (=> d!100479 (= c!83335 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!338843 () (_ BitVec 64))

(assert (=> d!100479 (= lt!338843 (select (arr!20129 lt!338728) (toIndex!0 lt!338734 mask!3328)))))

(assert (=> d!100479 (validMask!0 mask!3328)))

(assert (=> d!100479 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338734 mask!3328) lt!338734 lt!338728 mask!3328) lt!338844)))

(declare-fun b!760486 () Bool)

(assert (=> b!760486 (and (bvsge (index!33313 lt!338844) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338844) (size!20550 lt!338728)))))

(declare-fun res!514584 () Bool)

(assert (=> b!760486 (= res!514584 (= (select (arr!20129 lt!338728) (index!33313 lt!338844)) lt!338734))))

(declare-fun e!423955 () Bool)

(assert (=> b!760486 (=> res!514584 e!423955)))

(declare-fun e!423957 () Bool)

(assert (=> b!760486 (= e!423957 e!423955)))

(declare-fun b!760487 () Bool)

(assert (=> b!760487 (= e!423956 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!338734 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!338734 lt!338728 mask!3328))))

(declare-fun b!760488 () Bool)

(assert (=> b!760488 (= e!423954 (Intermediate!7736 true (toIndex!0 lt!338734 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!760489 () Bool)

(assert (=> b!760489 (= e!423953 e!423957)))

(declare-fun res!514583 () Bool)

(assert (=> b!760489 (= res!514583 (and (is-Intermediate!7736 lt!338844) (not (undefined!8548 lt!338844)) (bvslt (x!64224 lt!338844) #b01111111111111111111111111111110) (bvsge (x!64224 lt!338844) #b00000000000000000000000000000000) (bvsge (x!64224 lt!338844) #b00000000000000000000000000000000)))))

(assert (=> b!760489 (=> (not res!514583) (not e!423957))))

(declare-fun b!760490 () Bool)

(assert (=> b!760490 (and (bvsge (index!33313 lt!338844) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338844) (size!20550 lt!338728)))))

(assert (=> b!760490 (= e!423955 (= (select (arr!20129 lt!338728) (index!33313 lt!338844)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!760491 () Bool)

(assert (=> b!760491 (= e!423953 (bvsge (x!64224 lt!338844) #b01111111111111111111111111111110))))

(declare-fun b!760492 () Bool)

(assert (=> b!760492 (= e!423954 e!423956)))

(declare-fun c!83336 () Bool)

(assert (=> b!760492 (= c!83336 (or (= lt!338843 lt!338734) (= (bvadd lt!338843 lt!338843) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!760493 () Bool)

(assert (=> b!760493 (and (bvsge (index!33313 lt!338844) #b00000000000000000000000000000000) (bvslt (index!33313 lt!338844) (size!20550 lt!338728)))))

(declare-fun res!514582 () Bool)

(assert (=> b!760493 (= res!514582 (= (select (arr!20129 lt!338728) (index!33313 lt!338844)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!760493 (=> res!514582 e!423955)))

(assert (= (and d!100479 c!83335) b!760488))

(assert (= (and d!100479 (not c!83335)) b!760492))

(assert (= (and b!760492 c!83336) b!760485))

(assert (= (and b!760492 (not c!83336)) b!760487))

(assert (= (and d!100479 c!83337) b!760491))

(assert (= (and d!100479 (not c!83337)) b!760489))

(assert (= (and b!760489 res!514583) b!760486))

(assert (= (and b!760486 (not res!514584)) b!760493))

(assert (= (and b!760493 (not res!514582)) b!760490))

(assert (=> d!100479 m!707489))

(declare-fun m!707685 () Bool)

(assert (=> d!100479 m!707685))

(assert (=> d!100479 m!707517))

(declare-fun m!707687 () Bool)

(assert (=> b!760493 m!707687))

(assert (=> b!760490 m!707687))

(assert (=> b!760486 m!707687))

(assert (=> b!760487 m!707489))

(declare-fun m!707689 () Bool)

(assert (=> b!760487 m!707689))

(assert (=> b!760487 m!707689))

(declare-fun m!707691 () Bool)

(assert (=> b!760487 m!707691))

(assert (=> b!760210 d!100479))

(declare-fun d!100481 () Bool)

(declare-fun lt!338846 () (_ BitVec 32))

(declare-fun lt!338845 () (_ BitVec 32))

(assert (=> d!100481 (= lt!338846 (bvmul (bvxor lt!338845 (bvlshr lt!338845 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!100481 (= lt!338845 ((_ extract 31 0) (bvand (bvxor lt!338734 (bvlshr lt!338734 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!100481 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!514534 (let ((h!15256 ((_ extract 31 0) (bvand (bvxor lt!338734 (bvlshr lt!338734 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64228 (bvmul (bvxor h!15256 (bvlshr h!15256 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64228 (bvlshr x!64228 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!514534 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!514534 #b00000000000000000000000000000000))))))

(assert (=> d!100481 (= (toIndex!0 lt!338734 mask!3328) (bvand (bvxor lt!338846 (bvlshr lt!338846 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!760210 d!100481))

(declare-fun b!760534 () Bool)

(declare-fun e!423982 () SeekEntryResult!7736)

(declare-fun e!423984 () SeekEntryResult!7736)

(assert (=> b!760534 (= e!423982 e!423984)))

(declare-fun lt!338863 () (_ BitVec 64))

(declare-fun lt!338864 () SeekEntryResult!7736)

(assert (=> b!760534 (= lt!338863 (select (arr!20129 a!3186) (index!33313 lt!338864)))))

(declare-fun c!83356 () Bool)

(assert (=> b!760534 (= c!83356 (= lt!338863 (select (arr!20129 a!3186) j!159)))))

(declare-fun b!760535 () Bool)

(assert (=> b!760535 (= e!423982 Undefined!7736)))

(declare-fun b!760536 () Bool)

(declare-fun c!83354 () Bool)

(assert (=> b!760536 (= c!83354 (= lt!338863 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423983 () SeekEntryResult!7736)

(assert (=> b!760536 (= e!423984 e!423983)))

(declare-fun b!760537 () Bool)

(assert (=> b!760537 (= e!423984 (Found!7736 (index!33313 lt!338864)))))

(declare-fun b!760538 () Bool)

(assert (=> b!760538 (= e!423983 (MissingZero!7736 (index!33313 lt!338864)))))

(declare-fun d!100483 () Bool)

(declare-fun lt!338862 () SeekEntryResult!7736)

(assert (=> d!100483 (and (or (is-Undefined!7736 lt!338862) (not (is-Found!7736 lt!338862)) (and (bvsge (index!33312 lt!338862) #b00000000000000000000000000000000) (bvslt (index!33312 lt!338862) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338862) (is-Found!7736 lt!338862) (not (is-MissingZero!7736 lt!338862)) (and (bvsge (index!33311 lt!338862) #b00000000000000000000000000000000) (bvslt (index!33311 lt!338862) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338862) (is-Found!7736 lt!338862) (is-MissingZero!7736 lt!338862) (not (is-MissingVacant!7736 lt!338862)) (and (bvsge (index!33314 lt!338862) #b00000000000000000000000000000000) (bvslt (index!33314 lt!338862) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338862) (ite (is-Found!7736 lt!338862) (= (select (arr!20129 a!3186) (index!33312 lt!338862)) (select (arr!20129 a!3186) j!159)) (ite (is-MissingZero!7736 lt!338862) (= (select (arr!20129 a!3186) (index!33311 lt!338862)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7736 lt!338862) (= (select (arr!20129 a!3186) (index!33314 lt!338862)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100483 (= lt!338862 e!423982)))

(declare-fun c!83355 () Bool)

(assert (=> d!100483 (= c!83355 (and (is-Intermediate!7736 lt!338864) (undefined!8548 lt!338864)))))

(assert (=> d!100483 (= lt!338864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20129 a!3186) j!159) mask!3328) (select (arr!20129 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!100483 (validMask!0 mask!3328)))

(assert (=> d!100483 (= (seekEntryOrOpen!0 (select (arr!20129 a!3186) j!159) a!3186 mask!3328) lt!338862)))

(declare-fun b!760539 () Bool)

(assert (=> b!760539 (= e!423983 (seekKeyOrZeroReturnVacant!0 (x!64224 lt!338864) (index!33313 lt!338864) (index!33313 lt!338864) (select (arr!20129 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!100483 c!83355) b!760535))

(assert (= (and d!100483 (not c!83355)) b!760534))

(assert (= (and b!760534 c!83356) b!760537))

(assert (= (and b!760534 (not c!83356)) b!760536))

(assert (= (and b!760536 c!83354) b!760538))

(assert (= (and b!760536 (not c!83354)) b!760539))

(declare-fun m!707711 () Bool)

(assert (=> b!760534 m!707711))

(assert (=> d!100483 m!707517))

(declare-fun m!707713 () Bool)

(assert (=> d!100483 m!707713))

(declare-fun m!707715 () Bool)

(assert (=> d!100483 m!707715))

(declare-fun m!707717 () Bool)

(assert (=> d!100483 m!707717))

(assert (=> d!100483 m!707481))

(assert (=> d!100483 m!707485))

(assert (=> d!100483 m!707485))

(assert (=> d!100483 m!707481))

(assert (=> d!100483 m!707487))

(assert (=> b!760539 m!707481))

(declare-fun m!707719 () Bool)

(assert (=> b!760539 m!707719))

(assert (=> b!760204 d!100483))

(declare-fun d!100495 () Bool)

(declare-fun res!514597 () Bool)

(declare-fun e!423989 () Bool)

(assert (=> d!100495 (=> res!514597 e!423989)))

(assert (=> d!100495 (= res!514597 (= (select (arr!20129 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!100495 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!423989)))

(declare-fun b!760544 () Bool)

(declare-fun e!423990 () Bool)

(assert (=> b!760544 (= e!423989 e!423990)))

(declare-fun res!514598 () Bool)

(assert (=> b!760544 (=> (not res!514598) (not e!423990))))

(assert (=> b!760544 (= res!514598 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20550 a!3186)))))

(declare-fun b!760545 () Bool)

(assert (=> b!760545 (= e!423990 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!100495 (not res!514597)) b!760544))

(assert (= (and b!760544 res!514598) b!760545))

(assert (=> d!100495 m!707575))

(declare-fun m!707721 () Bool)

(assert (=> b!760545 m!707721))

(assert (=> b!760203 d!100495))

(declare-fun d!100499 () Bool)

(assert (=> d!100499 (= (validKeyInArray!0 (select (arr!20129 a!3186) j!159)) (and (not (= (select (arr!20129 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20129 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!760213 d!100499))

(declare-fun b!760546 () Bool)

(declare-fun e!423991 () SeekEntryResult!7736)

(assert (=> b!760546 (= e!423991 Undefined!7736)))

(declare-fun b!760547 () Bool)

(declare-fun c!83358 () Bool)

(declare-fun lt!338866 () (_ BitVec 64))

(assert (=> b!760547 (= c!83358 (= lt!338866 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!423993 () SeekEntryResult!7736)

(declare-fun e!423992 () SeekEntryResult!7736)

(assert (=> b!760547 (= e!423993 e!423992)))

(declare-fun b!760548 () Bool)

(assert (=> b!760548 (= e!423992 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20129 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!760549 () Bool)

(assert (=> b!760549 (= e!423992 (MissingVacant!7736 resIntermediateIndex!5))))

(declare-fun lt!338865 () SeekEntryResult!7736)

(declare-fun d!100503 () Bool)

(assert (=> d!100503 (and (or (is-Undefined!7736 lt!338865) (not (is-Found!7736 lt!338865)) (and (bvsge (index!33312 lt!338865) #b00000000000000000000000000000000) (bvslt (index!33312 lt!338865) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338865) (is-Found!7736 lt!338865) (not (is-MissingVacant!7736 lt!338865)) (not (= (index!33314 lt!338865) resIntermediateIndex!5)) (and (bvsge (index!33314 lt!338865) #b00000000000000000000000000000000) (bvslt (index!33314 lt!338865) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338865) (ite (is-Found!7736 lt!338865) (= (select (arr!20129 a!3186) (index!33312 lt!338865)) (select (arr!20129 a!3186) j!159)) (and (is-MissingVacant!7736 lt!338865) (= (index!33314 lt!338865) resIntermediateIndex!5) (= (select (arr!20129 a!3186) (index!33314 lt!338865)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!100503 (= lt!338865 e!423991)))

(declare-fun c!83359 () Bool)

(assert (=> d!100503 (= c!83359 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!100503 (= lt!338866 (select (arr!20129 a!3186) resIntermediateIndex!5))))

(assert (=> d!100503 (validMask!0 mask!3328)))

(assert (=> d!100503 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20129 a!3186) j!159) a!3186 mask!3328) lt!338865)))

(declare-fun b!760550 () Bool)

(assert (=> b!760550 (= e!423993 (Found!7736 resIntermediateIndex!5))))

(declare-fun b!760551 () Bool)

(assert (=> b!760551 (= e!423991 e!423993)))

(declare-fun c!83357 () Bool)

(assert (=> b!760551 (= c!83357 (= lt!338866 (select (arr!20129 a!3186) j!159)))))

(assert (= (and d!100503 c!83359) b!760546))

(assert (= (and d!100503 (not c!83359)) b!760551))

(assert (= (and b!760551 c!83357) b!760550))

(assert (= (and b!760551 (not c!83357)) b!760547))

(assert (= (and b!760547 c!83358) b!760549))

(assert (= (and b!760547 (not c!83358)) b!760548))

(declare-fun m!707723 () Bool)

(assert (=> b!760548 m!707723))

(assert (=> b!760548 m!707723))

(assert (=> b!760548 m!707481))

(declare-fun m!707725 () Bool)

(assert (=> b!760548 m!707725))

(declare-fun m!707727 () Bool)

(assert (=> d!100503 m!707727))

(declare-fun m!707729 () Bool)

(assert (=> d!100503 m!707729))

(assert (=> d!100503 m!707475))

(assert (=> d!100503 m!707517))

(assert (=> b!760206 d!100503))

(declare-fun b!760581 () Bool)

(declare-fun e!424018 () Bool)

(declare-fun call!34951 () Bool)

(assert (=> b!760581 (= e!424018 call!34951)))

(declare-fun bm!34948 () Bool)

(assert (=> bm!34948 (= call!34951 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!760583 () Bool)

(declare-fun e!424019 () Bool)

(assert (=> b!760583 (= e!424019 call!34951)))

(declare-fun b!760584 () Bool)

(assert (=> b!760584 (= e!424018 e!424019)))

(declare-fun lt!338873 () (_ BitVec 64))

(assert (=> b!760584 (= lt!338873 (select (arr!20129 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!338875 () Unit!26312)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42041 (_ BitVec 64) (_ BitVec 32)) Unit!26312)

(assert (=> b!760584 (= lt!338875 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338873 #b00000000000000000000000000000000))))

(assert (=> b!760584 (arrayContainsKey!0 a!3186 lt!338873 #b00000000000000000000000000000000)))

(declare-fun lt!338874 () Unit!26312)

(assert (=> b!760584 (= lt!338874 lt!338875)))

(declare-fun res!514619 () Bool)

(assert (=> b!760584 (= res!514619 (= (seekEntryOrOpen!0 (select (arr!20129 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7736 #b00000000000000000000000000000000)))))

(assert (=> b!760584 (=> (not res!514619) (not e!424019))))

(declare-fun b!760582 () Bool)

(declare-fun e!424020 () Bool)

(assert (=> b!760582 (= e!424020 e!424018)))

(declare-fun c!83365 () Bool)

(assert (=> b!760582 (= c!83365 (validKeyInArray!0 (select (arr!20129 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!100505 () Bool)

(declare-fun res!514618 () Bool)

(assert (=> d!100505 (=> res!514618 e!424020)))

(assert (=> d!100505 (= res!514618 (bvsge #b00000000000000000000000000000000 (size!20550 a!3186)))))

(assert (=> d!100505 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!424020)))

(assert (= (and d!100505 (not res!514618)) b!760582))

(assert (= (and b!760582 c!83365) b!760584))

(assert (= (and b!760582 (not c!83365)) b!760581))

(assert (= (and b!760584 res!514619) b!760583))

(assert (= (or b!760583 b!760581) bm!34948))

(declare-fun m!707737 () Bool)

(assert (=> bm!34948 m!707737))

(assert (=> b!760584 m!707575))

(declare-fun m!707739 () Bool)

(assert (=> b!760584 m!707739))

(declare-fun m!707741 () Bool)

(assert (=> b!760584 m!707741))

(assert (=> b!760584 m!707575))

(declare-fun m!707743 () Bool)

(assert (=> b!760584 m!707743))

(assert (=> b!760582 m!707575))

(assert (=> b!760582 m!707575))

(assert (=> b!760582 m!707577))

(assert (=> b!760205 d!100505))

(declare-fun d!100511 () Bool)

(assert (=> d!100511 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!65978 d!100511))

(declare-fun d!100529 () Bool)

(assert (=> d!100529 (= (array_inv!15903 a!3186) (bvsge (size!20550 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!65978 d!100529))

(declare-fun b!760622 () Bool)

(declare-fun e!424042 () Bool)

(declare-fun call!34953 () Bool)

(assert (=> b!760622 (= e!424042 call!34953)))

(declare-fun bm!34950 () Bool)

(assert (=> bm!34950 (= call!34953 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!760624 () Bool)

(declare-fun e!424043 () Bool)

(assert (=> b!760624 (= e!424043 call!34953)))

(declare-fun b!760625 () Bool)

(assert (=> b!760625 (= e!424042 e!424043)))

(declare-fun lt!338892 () (_ BitVec 64))

(assert (=> b!760625 (= lt!338892 (select (arr!20129 a!3186) j!159))))

(declare-fun lt!338894 () Unit!26312)

(assert (=> b!760625 (= lt!338894 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!338892 j!159))))

(assert (=> b!760625 (arrayContainsKey!0 a!3186 lt!338892 #b00000000000000000000000000000000)))

(declare-fun lt!338893 () Unit!26312)

(assert (=> b!760625 (= lt!338893 lt!338894)))

(declare-fun res!514632 () Bool)

(assert (=> b!760625 (= res!514632 (= (seekEntryOrOpen!0 (select (arr!20129 a!3186) j!159) a!3186 mask!3328) (Found!7736 j!159)))))

(assert (=> b!760625 (=> (not res!514632) (not e!424043))))

(declare-fun b!760623 () Bool)

(declare-fun e!424044 () Bool)

(assert (=> b!760623 (= e!424044 e!424042)))

(declare-fun c!83379 () Bool)

(assert (=> b!760623 (= c!83379 (validKeyInArray!0 (select (arr!20129 a!3186) j!159)))))

(declare-fun d!100531 () Bool)

(declare-fun res!514631 () Bool)

(assert (=> d!100531 (=> res!514631 e!424044)))

(assert (=> d!100531 (= res!514631 (bvsge j!159 (size!20550 a!3186)))))

(assert (=> d!100531 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!424044)))

(assert (= (and d!100531 (not res!514631)) b!760623))

(assert (= (and b!760623 c!83379) b!760625))

(assert (= (and b!760623 (not c!83379)) b!760622))

(assert (= (and b!760625 res!514632) b!760624))

(assert (= (or b!760624 b!760622) bm!34950))

(declare-fun m!707781 () Bool)

(assert (=> bm!34950 m!707781))

(assert (=> b!760625 m!707481))

(declare-fun m!707783 () Bool)

(assert (=> b!760625 m!707783))

(declare-fun m!707785 () Bool)

(assert (=> b!760625 m!707785))

(assert (=> b!760625 m!707481))

(assert (=> b!760625 m!707501))

(assert (=> b!760623 m!707481))

(assert (=> b!760623 m!707481))

(assert (=> b!760623 m!707509))

(assert (=> b!760198 d!100531))

(declare-fun d!100533 () Bool)

(assert (=> d!100533 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!338897 () Unit!26312)

(declare-fun choose!38 (array!42041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26312)

(assert (=> d!100533 (= lt!338897 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!100533 (validMask!0 mask!3328)))

(assert (=> d!100533 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!338897)))

(declare-fun bs!21382 () Bool)

(assert (= bs!21382 d!100533))

(assert (=> bs!21382 m!707477))

(declare-fun m!707787 () Bool)

(assert (=> bs!21382 m!707787))

(assert (=> bs!21382 m!707517))

(assert (=> b!760198 d!100533))

(declare-fun b!760626 () Bool)

(declare-fun e!424045 () SeekEntryResult!7736)

(declare-fun e!424047 () SeekEntryResult!7736)

(assert (=> b!760626 (= e!424045 e!424047)))

(declare-fun lt!338899 () (_ BitVec 64))

(declare-fun lt!338900 () SeekEntryResult!7736)

(assert (=> b!760626 (= lt!338899 (select (arr!20129 a!3186) (index!33313 lt!338900)))))

(declare-fun c!83382 () Bool)

(assert (=> b!760626 (= c!83382 (= lt!338899 k!2102))))

(declare-fun b!760627 () Bool)

(assert (=> b!760627 (= e!424045 Undefined!7736)))

(declare-fun b!760628 () Bool)

(declare-fun c!83380 () Bool)

(assert (=> b!760628 (= c!83380 (= lt!338899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!424046 () SeekEntryResult!7736)

(assert (=> b!760628 (= e!424047 e!424046)))

(declare-fun b!760629 () Bool)

(assert (=> b!760629 (= e!424047 (Found!7736 (index!33313 lt!338900)))))

(declare-fun b!760630 () Bool)

(assert (=> b!760630 (= e!424046 (MissingZero!7736 (index!33313 lt!338900)))))

(declare-fun d!100535 () Bool)

(declare-fun lt!338898 () SeekEntryResult!7736)

(assert (=> d!100535 (and (or (is-Undefined!7736 lt!338898) (not (is-Found!7736 lt!338898)) (and (bvsge (index!33312 lt!338898) #b00000000000000000000000000000000) (bvslt (index!33312 lt!338898) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338898) (is-Found!7736 lt!338898) (not (is-MissingZero!7736 lt!338898)) (and (bvsge (index!33311 lt!338898) #b00000000000000000000000000000000) (bvslt (index!33311 lt!338898) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338898) (is-Found!7736 lt!338898) (is-MissingZero!7736 lt!338898) (not (is-MissingVacant!7736 lt!338898)) (and (bvsge (index!33314 lt!338898) #b00000000000000000000000000000000) (bvslt (index!33314 lt!338898) (size!20550 a!3186)))) (or (is-Undefined!7736 lt!338898) (ite (is-Found!7736 lt!338898) (= (select (arr!20129 a!3186) (index!33312 lt!338898)) k!2102) (ite (is-MissingZero!7736 lt!338898) (= (select (arr!20129 a!3186) (index!33311 lt!338898)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7736 lt!338898) (= (select (arr!20129 a!3186) (index!33314 lt!338898)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!100535 (= lt!338898 e!424045)))

(declare-fun c!83381 () Bool)

(assert (=> d!100535 (= c!83381 (and (is-Intermediate!7736 lt!338900) (undefined!8548 lt!338900)))))

(assert (=> d!100535 (= lt!338900 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!100535 (validMask!0 mask!3328)))

(assert (=> d!100535 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!338898)))

(declare-fun b!760631 () Bool)

(assert (=> b!760631 (= e!424046 (seekKeyOrZeroReturnVacant!0 (x!64224 lt!338900) (index!33313 lt!338900) (index!33313 lt!338900) k!2102 a!3186 mask!3328))))

(assert (= (and d!100535 c!83381) b!760627))

(assert (= (and d!100535 (not c!83381)) b!760626))

(assert (= (and b!760626 c!83382) b!760629))

(assert (= (and b!760626 (not c!83382)) b!760628))

(assert (= (and b!760628 c!83380) b!760630))

(assert (= (and b!760628 (not c!83380)) b!760631))

(declare-fun m!707789 () Bool)

(assert (=> b!760626 m!707789))

(assert (=> d!100535 m!707517))

(declare-fun m!707791 () Bool)

(assert (=> d!100535 m!707791))

(declare-fun m!707793 () Bool)

(assert (=> d!100535 m!707793))

(declare-fun m!707795 () Bool)

(assert (=> d!100535 m!707795))

(declare-fun m!707797 () Bool)

(assert (=> d!100535 m!707797))

(assert (=> d!100535 m!707797))

(declare-fun m!707799 () Bool)

(assert (=> d!100535 m!707799))

(declare-fun m!707801 () Bool)

(assert (=> b!760631 m!707801))

(assert (=> b!760208 d!100535))

(push 1)

(assert (not b!760437))

(assert (not b!760539))

(assert (not b!760313))

(assert (not d!100503))

(assert (not b!760584))

(assert (not b!760478))

(assert (not b!760548))

(assert (not b!760487))

(assert (not d!100533))

(assert (not d!100449))

(assert (not d!100435))

(assert (not d!100483))

(assert (not b!760361))

(assert (not b!760582))

(assert (not b!760625))

(assert (not d!100479))

(assert (not b!760357))

(assert (not b!760460))

(assert (not bm!34938))

(assert (not b!760631))

(assert (not b!760623))

(assert (not bm!34948))

(assert (not b!760545))

(assert (not d!100535))

(assert (not b!760358))

(assert (not d!100469))

(assert (not d!100475))

(assert (not bm!34950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

