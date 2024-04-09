; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64680 () Bool)

(assert start!64680)

(declare-fun b!728502 () Bool)

(declare-fun e!407816 () Bool)

(assert (=> b!728502 (= e!407816 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!322719 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728502 (= lt!322719 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!728503 () Bool)

(declare-fun res!489136 () Bool)

(declare-fun e!407817 () Bool)

(assert (=> b!728503 (=> (not res!489136) (not e!407817))))

(declare-datatypes ((array!41082 0))(
  ( (array!41083 (arr!19657 (Array (_ BitVec 32) (_ BitVec 64))) (size!20078 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41082)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!728503 (= res!489136 (and (= (size!20078 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20078 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20078 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728504 () Bool)

(declare-fun res!489149 () Bool)

(declare-fun e!407820 () Bool)

(assert (=> b!728504 (=> (not res!489149) (not e!407820))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!728504 (= res!489149 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20078 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20078 a!3186))))))

(declare-fun b!728505 () Bool)

(declare-fun res!489135 () Bool)

(assert (=> b!728505 (=> (not res!489135) (not e!407820))))

(declare-datatypes ((List!13712 0))(
  ( (Nil!13709) (Cons!13708 (h!14768 (_ BitVec 64)) (t!20035 List!13712)) )
))
(declare-fun arrayNoDuplicates!0 (array!41082 (_ BitVec 32) List!13712) Bool)

(assert (=> b!728505 (= res!489135 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13709))))

(declare-fun b!728506 () Bool)

(declare-fun e!407813 () Bool)

(declare-datatypes ((SeekEntryResult!7264 0))(
  ( (MissingZero!7264 (index!31423 (_ BitVec 32))) (Found!7264 (index!31424 (_ BitVec 32))) (Intermediate!7264 (undefined!8076 Bool) (index!31425 (_ BitVec 32)) (x!62439 (_ BitVec 32))) (Undefined!7264) (MissingVacant!7264 (index!31426 (_ BitVec 32))) )
))
(declare-fun lt!322726 () SeekEntryResult!7264)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41082 (_ BitVec 32)) SeekEntryResult!7264)

(assert (=> b!728506 (= e!407813 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19657 a!3186) j!159) a!3186 mask!3328) lt!322726))))

(declare-fun b!728507 () Bool)

(declare-fun res!489145 () Bool)

(assert (=> b!728507 (=> (not res!489145) (not e!407817))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728507 (= res!489145 (validKeyInArray!0 k0!2102))))

(declare-fun b!728508 () Bool)

(declare-fun res!489147 () Bool)

(assert (=> b!728508 (=> (not res!489147) (not e!407817))))

(declare-fun arrayContainsKey!0 (array!41082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728508 (= res!489147 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728509 () Bool)

(declare-fun e!407819 () Bool)

(declare-fun e!407812 () Bool)

(assert (=> b!728509 (= e!407819 e!407812)))

(declare-fun res!489146 () Bool)

(assert (=> b!728509 (=> (not res!489146) (not e!407812))))

(declare-fun lt!322721 () SeekEntryResult!7264)

(declare-fun lt!322724 () SeekEntryResult!7264)

(assert (=> b!728509 (= res!489146 (= lt!322721 lt!322724))))

(declare-fun lt!322722 () (_ BitVec 64))

(declare-fun lt!322725 () array!41082)

(assert (=> b!728509 (= lt!322724 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322722 lt!322725 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728509 (= lt!322721 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322722 mask!3328) lt!322722 lt!322725 mask!3328))))

(assert (=> b!728509 (= lt!322722 (select (store (arr!19657 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!728509 (= lt!322725 (array!41083 (store (arr!19657 a!3186) i!1173 k0!2102) (size!20078 a!3186)))))

(declare-fun b!728510 () Bool)

(declare-fun lt!322720 () SeekEntryResult!7264)

(declare-fun e!407814 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41082 (_ BitVec 32)) SeekEntryResult!7264)

(assert (=> b!728510 (= e!407814 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19657 a!3186) j!159) a!3186 mask!3328) lt!322720))))

(declare-fun b!728511 () Bool)

(declare-fun res!489141 () Bool)

(assert (=> b!728511 (=> (not res!489141) (not e!407820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41082 (_ BitVec 32)) Bool)

(assert (=> b!728511 (= res!489141 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!489148 () Bool)

(assert (=> start!64680 (=> (not res!489148) (not e!407817))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64680 (= res!489148 (validMask!0 mask!3328))))

(assert (=> start!64680 e!407817))

(assert (=> start!64680 true))

(declare-fun array_inv!15431 (array!41082) Bool)

(assert (=> start!64680 (array_inv!15431 a!3186)))

(declare-fun b!728512 () Bool)

(assert (=> b!728512 (= e!407812 (not e!407816))))

(declare-fun res!489143 () Bool)

(assert (=> b!728512 (=> res!489143 e!407816)))

(get-info :version)

(assert (=> b!728512 (= res!489143 (or (not ((_ is Intermediate!7264) lt!322724)) (bvsge x!1131 (x!62439 lt!322724))))))

(declare-fun e!407815 () Bool)

(assert (=> b!728512 e!407815))

(declare-fun res!489137 () Bool)

(assert (=> b!728512 (=> (not res!489137) (not e!407815))))

(assert (=> b!728512 (= res!489137 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24846 0))(
  ( (Unit!24847) )
))
(declare-fun lt!322723 () Unit!24846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41082 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24846)

(assert (=> b!728512 (= lt!322723 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728513 () Bool)

(assert (=> b!728513 (= e!407815 e!407814)))

(declare-fun res!489142 () Bool)

(assert (=> b!728513 (=> (not res!489142) (not e!407814))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41082 (_ BitVec 32)) SeekEntryResult!7264)

(assert (=> b!728513 (= res!489142 (= (seekEntryOrOpen!0 (select (arr!19657 a!3186) j!159) a!3186 mask!3328) lt!322720))))

(assert (=> b!728513 (= lt!322720 (Found!7264 j!159))))

(declare-fun b!728514 () Bool)

(assert (=> b!728514 (= e!407813 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19657 a!3186) j!159) a!3186 mask!3328) (Found!7264 j!159)))))

(declare-fun b!728515 () Bool)

(assert (=> b!728515 (= e!407817 e!407820)))

(declare-fun res!489144 () Bool)

(assert (=> b!728515 (=> (not res!489144) (not e!407820))))

(declare-fun lt!322727 () SeekEntryResult!7264)

(assert (=> b!728515 (= res!489144 (or (= lt!322727 (MissingZero!7264 i!1173)) (= lt!322727 (MissingVacant!7264 i!1173))))))

(assert (=> b!728515 (= lt!322727 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!728516 () Bool)

(declare-fun res!489150 () Bool)

(assert (=> b!728516 (=> (not res!489150) (not e!407819))))

(assert (=> b!728516 (= res!489150 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19657 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728517 () Bool)

(assert (=> b!728517 (= e!407820 e!407819)))

(declare-fun res!489140 () Bool)

(assert (=> b!728517 (=> (not res!489140) (not e!407819))))

(assert (=> b!728517 (= res!489140 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19657 a!3186) j!159) mask!3328) (select (arr!19657 a!3186) j!159) a!3186 mask!3328) lt!322726))))

(assert (=> b!728517 (= lt!322726 (Intermediate!7264 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728518 () Bool)

(declare-fun res!489139 () Bool)

(assert (=> b!728518 (=> (not res!489139) (not e!407819))))

(assert (=> b!728518 (= res!489139 e!407813)))

(declare-fun c!80058 () Bool)

(assert (=> b!728518 (= c!80058 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728519 () Bool)

(declare-fun res!489138 () Bool)

(assert (=> b!728519 (=> (not res!489138) (not e!407817))))

(assert (=> b!728519 (= res!489138 (validKeyInArray!0 (select (arr!19657 a!3186) j!159)))))

(assert (= (and start!64680 res!489148) b!728503))

(assert (= (and b!728503 res!489136) b!728519))

(assert (= (and b!728519 res!489138) b!728507))

(assert (= (and b!728507 res!489145) b!728508))

(assert (= (and b!728508 res!489147) b!728515))

(assert (= (and b!728515 res!489144) b!728511))

(assert (= (and b!728511 res!489141) b!728505))

(assert (= (and b!728505 res!489135) b!728504))

(assert (= (and b!728504 res!489149) b!728517))

(assert (= (and b!728517 res!489140) b!728516))

(assert (= (and b!728516 res!489150) b!728518))

(assert (= (and b!728518 c!80058) b!728506))

(assert (= (and b!728518 (not c!80058)) b!728514))

(assert (= (and b!728518 res!489139) b!728509))

(assert (= (and b!728509 res!489146) b!728512))

(assert (= (and b!728512 res!489137) b!728513))

(assert (= (and b!728513 res!489142) b!728510))

(assert (= (and b!728512 (not res!489143)) b!728502))

(declare-fun m!682333 () Bool)

(assert (=> b!728517 m!682333))

(assert (=> b!728517 m!682333))

(declare-fun m!682335 () Bool)

(assert (=> b!728517 m!682335))

(assert (=> b!728517 m!682335))

(assert (=> b!728517 m!682333))

(declare-fun m!682337 () Bool)

(assert (=> b!728517 m!682337))

(assert (=> b!728506 m!682333))

(assert (=> b!728506 m!682333))

(declare-fun m!682339 () Bool)

(assert (=> b!728506 m!682339))

(declare-fun m!682341 () Bool)

(assert (=> b!728516 m!682341))

(assert (=> b!728519 m!682333))

(assert (=> b!728519 m!682333))

(declare-fun m!682343 () Bool)

(assert (=> b!728519 m!682343))

(assert (=> b!728510 m!682333))

(assert (=> b!728510 m!682333))

(declare-fun m!682345 () Bool)

(assert (=> b!728510 m!682345))

(declare-fun m!682347 () Bool)

(assert (=> b!728511 m!682347))

(declare-fun m!682349 () Bool)

(assert (=> b!728509 m!682349))

(declare-fun m!682351 () Bool)

(assert (=> b!728509 m!682351))

(declare-fun m!682353 () Bool)

(assert (=> b!728509 m!682353))

(declare-fun m!682355 () Bool)

(assert (=> b!728509 m!682355))

(assert (=> b!728509 m!682349))

(declare-fun m!682357 () Bool)

(assert (=> b!728509 m!682357))

(assert (=> b!728514 m!682333))

(assert (=> b!728514 m!682333))

(declare-fun m!682359 () Bool)

(assert (=> b!728514 m!682359))

(declare-fun m!682361 () Bool)

(assert (=> start!64680 m!682361))

(declare-fun m!682363 () Bool)

(assert (=> start!64680 m!682363))

(declare-fun m!682365 () Bool)

(assert (=> b!728502 m!682365))

(declare-fun m!682367 () Bool)

(assert (=> b!728512 m!682367))

(declare-fun m!682369 () Bool)

(assert (=> b!728512 m!682369))

(declare-fun m!682371 () Bool)

(assert (=> b!728507 m!682371))

(declare-fun m!682373 () Bool)

(assert (=> b!728505 m!682373))

(assert (=> b!728513 m!682333))

(assert (=> b!728513 m!682333))

(declare-fun m!682375 () Bool)

(assert (=> b!728513 m!682375))

(declare-fun m!682377 () Bool)

(assert (=> b!728515 m!682377))

(declare-fun m!682379 () Bool)

(assert (=> b!728508 m!682379))

(check-sat (not b!728512) (not b!728505) (not b!728502) (not b!728511) (not b!728513) (not b!728507) (not b!728519) (not b!728510) (not b!728517) (not b!728515) (not b!728514) (not b!728508) (not start!64680) (not b!728506) (not b!728509))
(check-sat)
