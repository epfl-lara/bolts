; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64544 () Bool)

(assert start!64544)

(declare-fun b!726367 () Bool)

(declare-fun res!487493 () Bool)

(declare-fun e!406707 () Bool)

(assert (=> b!726367 (=> (not res!487493) (not e!406707))))

(declare-datatypes ((array!41015 0))(
  ( (array!41016 (arr!19625 (Array (_ BitVec 32) (_ BitVec 64))) (size!20046 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41015)

(declare-datatypes ((List!13680 0))(
  ( (Nil!13677) (Cons!13676 (h!14733 (_ BitVec 64)) (t!20003 List!13680)) )
))
(declare-fun arrayNoDuplicates!0 (array!41015 (_ BitVec 32) List!13680) Bool)

(assert (=> b!726367 (= res!487493 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13677))))

(declare-fun b!726368 () Bool)

(declare-fun res!487491 () Bool)

(declare-fun e!406711 () Bool)

(assert (=> b!726368 (=> (not res!487491) (not e!406711))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726368 (= res!487491 (validKeyInArray!0 k!2102))))

(declare-fun b!726369 () Bool)

(declare-fun res!487486 () Bool)

(assert (=> b!726369 (=> (not res!487486) (not e!406711))))

(declare-fun arrayContainsKey!0 (array!41015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726369 (= res!487486 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!406709 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!726370 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7232 0))(
  ( (MissingZero!7232 (index!31295 (_ BitVec 32))) (Found!7232 (index!31296 (_ BitVec 32))) (Intermediate!7232 (undefined!8044 Bool) (index!31297 (_ BitVec 32)) (x!62307 (_ BitVec 32))) (Undefined!7232) (MissingVacant!7232 (index!31298 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41015 (_ BitVec 32)) SeekEntryResult!7232)

(assert (=> b!726370 (= e!406709 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19625 a!3186) j!159) a!3186 mask!3328) (Found!7232 j!159)))))

(declare-fun b!726371 () Bool)

(assert (=> b!726371 (= e!406711 e!406707)))

(declare-fun res!487490 () Bool)

(assert (=> b!726371 (=> (not res!487490) (not e!406707))))

(declare-fun lt!321716 () SeekEntryResult!7232)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726371 (= res!487490 (or (= lt!321716 (MissingZero!7232 i!1173)) (= lt!321716 (MissingVacant!7232 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41015 (_ BitVec 32)) SeekEntryResult!7232)

(assert (=> b!726371 (= lt!321716 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!726372 () Bool)

(declare-fun res!487497 () Bool)

(assert (=> b!726372 (=> (not res!487497) (not e!406711))))

(assert (=> b!726372 (= res!487497 (validKeyInArray!0 (select (arr!19625 a!3186) j!159)))))

(declare-fun b!726373 () Bool)

(declare-fun res!487488 () Bool)

(declare-fun e!406708 () Bool)

(assert (=> b!726373 (=> (not res!487488) (not e!406708))))

(assert (=> b!726373 (= res!487488 e!406709)))

(declare-fun c!79815 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726373 (= c!79815 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726374 () Bool)

(declare-fun res!487487 () Bool)

(assert (=> b!726374 (=> (not res!487487) (not e!406708))))

(assert (=> b!726374 (= res!487487 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19625 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726375 () Bool)

(declare-fun res!487492 () Bool)

(assert (=> b!726375 (=> (not res!487492) (not e!406707))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41015 (_ BitVec 32)) Bool)

(assert (=> b!726375 (= res!487492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726376 () Bool)

(declare-fun e!406712 () Bool)

(declare-fun e!406706 () Bool)

(assert (=> b!726376 (= e!406712 e!406706)))

(declare-fun res!487483 () Bool)

(assert (=> b!726376 (=> (not res!487483) (not e!406706))))

(declare-fun lt!321714 () SeekEntryResult!7232)

(assert (=> b!726376 (= res!487483 (= (seekEntryOrOpen!0 (select (arr!19625 a!3186) j!159) a!3186 mask!3328) lt!321714))))

(assert (=> b!726376 (= lt!321714 (Found!7232 j!159))))

(declare-fun lt!321710 () SeekEntryResult!7232)

(declare-fun b!726377 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41015 (_ BitVec 32)) SeekEntryResult!7232)

(assert (=> b!726377 (= e!406709 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19625 a!3186) j!159) a!3186 mask!3328) lt!321710))))

(declare-fun b!726378 () Bool)

(assert (=> b!726378 (= e!406706 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19625 a!3186) j!159) a!3186 mask!3328) lt!321714))))

(declare-fun res!487496 () Bool)

(assert (=> start!64544 (=> (not res!487496) (not e!406711))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64544 (= res!487496 (validMask!0 mask!3328))))

(assert (=> start!64544 e!406711))

(assert (=> start!64544 true))

(declare-fun array_inv!15399 (array!41015) Bool)

(assert (=> start!64544 (array_inv!15399 a!3186)))

(declare-fun b!726379 () Bool)

(assert (=> b!726379 (= e!406707 e!406708)))

(declare-fun res!487494 () Bool)

(assert (=> b!726379 (=> (not res!487494) (not e!406708))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726379 (= res!487494 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19625 a!3186) j!159) mask!3328) (select (arr!19625 a!3186) j!159) a!3186 mask!3328) lt!321710))))

(assert (=> b!726379 (= lt!321710 (Intermediate!7232 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726380 () Bool)

(declare-fun res!487489 () Bool)

(assert (=> b!726380 (=> (not res!487489) (not e!406707))))

(assert (=> b!726380 (= res!487489 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20046 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20046 a!3186))))))

(declare-fun b!726381 () Bool)

(declare-fun res!487484 () Bool)

(assert (=> b!726381 (=> (not res!487484) (not e!406711))))

(assert (=> b!726381 (= res!487484 (and (= (size!20046 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20046 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20046 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!406710 () Bool)

(declare-fun lt!321709 () SeekEntryResult!7232)

(declare-fun b!726382 () Bool)

(assert (=> b!726382 (= e!406710 (not (or (not (is-Intermediate!7232 lt!321709)) (bvsge x!1131 (x!62307 lt!321709)) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!726382 e!406712))

(declare-fun res!487495 () Bool)

(assert (=> b!726382 (=> (not res!487495) (not e!406712))))

(assert (=> b!726382 (= res!487495 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24782 0))(
  ( (Unit!24783) )
))
(declare-fun lt!321713 () Unit!24782)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41015 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24782)

(assert (=> b!726382 (= lt!321713 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726383 () Bool)

(assert (=> b!726383 (= e!406708 e!406710)))

(declare-fun res!487485 () Bool)

(assert (=> b!726383 (=> (not res!487485) (not e!406710))))

(declare-fun lt!321711 () SeekEntryResult!7232)

(assert (=> b!726383 (= res!487485 (= lt!321711 lt!321709))))

(declare-fun lt!321712 () (_ BitVec 64))

(declare-fun lt!321715 () array!41015)

(assert (=> b!726383 (= lt!321709 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321712 lt!321715 mask!3328))))

(assert (=> b!726383 (= lt!321711 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321712 mask!3328) lt!321712 lt!321715 mask!3328))))

(assert (=> b!726383 (= lt!321712 (select (store (arr!19625 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!726383 (= lt!321715 (array!41016 (store (arr!19625 a!3186) i!1173 k!2102) (size!20046 a!3186)))))

(assert (= (and start!64544 res!487496) b!726381))

(assert (= (and b!726381 res!487484) b!726372))

(assert (= (and b!726372 res!487497) b!726368))

(assert (= (and b!726368 res!487491) b!726369))

(assert (= (and b!726369 res!487486) b!726371))

(assert (= (and b!726371 res!487490) b!726375))

(assert (= (and b!726375 res!487492) b!726367))

(assert (= (and b!726367 res!487493) b!726380))

(assert (= (and b!726380 res!487489) b!726379))

(assert (= (and b!726379 res!487494) b!726374))

(assert (= (and b!726374 res!487487) b!726373))

(assert (= (and b!726373 c!79815) b!726377))

(assert (= (and b!726373 (not c!79815)) b!726370))

(assert (= (and b!726373 res!487488) b!726383))

(assert (= (and b!726383 res!487485) b!726382))

(assert (= (and b!726382 res!487495) b!726376))

(assert (= (and b!726376 res!487483) b!726378))

(declare-fun m!680523 () Bool)

(assert (=> b!726367 m!680523))

(declare-fun m!680525 () Bool)

(assert (=> b!726372 m!680525))

(assert (=> b!726372 m!680525))

(declare-fun m!680527 () Bool)

(assert (=> b!726372 m!680527))

(declare-fun m!680529 () Bool)

(assert (=> b!726382 m!680529))

(declare-fun m!680531 () Bool)

(assert (=> b!726382 m!680531))

(declare-fun m!680533 () Bool)

(assert (=> b!726371 m!680533))

(assert (=> b!726376 m!680525))

(assert (=> b!726376 m!680525))

(declare-fun m!680535 () Bool)

(assert (=> b!726376 m!680535))

(declare-fun m!680537 () Bool)

(assert (=> b!726375 m!680537))

(assert (=> b!726379 m!680525))

(assert (=> b!726379 m!680525))

(declare-fun m!680539 () Bool)

(assert (=> b!726379 m!680539))

(assert (=> b!726379 m!680539))

(assert (=> b!726379 m!680525))

(declare-fun m!680541 () Bool)

(assert (=> b!726379 m!680541))

(declare-fun m!680543 () Bool)

(assert (=> b!726368 m!680543))

(assert (=> b!726370 m!680525))

(assert (=> b!726370 m!680525))

(declare-fun m!680545 () Bool)

(assert (=> b!726370 m!680545))

(assert (=> b!726377 m!680525))

(assert (=> b!726377 m!680525))

(declare-fun m!680547 () Bool)

(assert (=> b!726377 m!680547))

(assert (=> b!726378 m!680525))

(assert (=> b!726378 m!680525))

(declare-fun m!680549 () Bool)

(assert (=> b!726378 m!680549))

(declare-fun m!680551 () Bool)

(assert (=> b!726383 m!680551))

(declare-fun m!680553 () Bool)

(assert (=> b!726383 m!680553))

(declare-fun m!680555 () Bool)

(assert (=> b!726383 m!680555))

(assert (=> b!726383 m!680551))

(declare-fun m!680557 () Bool)

(assert (=> b!726383 m!680557))

(declare-fun m!680559 () Bool)

(assert (=> b!726383 m!680559))

(declare-fun m!680561 () Bool)

(assert (=> start!64544 m!680561))

(declare-fun m!680563 () Bool)

(assert (=> start!64544 m!680563))

(declare-fun m!680565 () Bool)

(assert (=> b!726374 m!680565))

(declare-fun m!680567 () Bool)

(assert (=> b!726369 m!680567))

(push 1)

(assert (not b!726383))

(assert (not b!726371))

(assert (not b!726378))

(assert (not b!726369))

(assert (not start!64544))

(assert (not b!726379))

(assert (not b!726368))

(assert (not b!726377))

(assert (not b!726372))

(assert (not b!726375))

(assert (not b!726370))

(assert (not b!726382))

(assert (not b!726367))

(assert (not b!726376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

