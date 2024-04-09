; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64728 () Bool)

(assert start!64728)

(declare-fun b!729798 () Bool)

(declare-fun res!490293 () Bool)

(declare-fun e!408460 () Bool)

(assert (=> b!729798 (=> (not res!490293) (not e!408460))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41130 0))(
  ( (array!41131 (arr!19681 (Array (_ BitVec 32) (_ BitVec 64))) (size!20102 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41130)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729798 (= res!490293 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19681 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!408465 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!729799 () Bool)

(declare-datatypes ((SeekEntryResult!7288 0))(
  ( (MissingZero!7288 (index!31519 (_ BitVec 32))) (Found!7288 (index!31520 (_ BitVec 32))) (Intermediate!7288 (undefined!8100 Bool) (index!31521 (_ BitVec 32)) (x!62527 (_ BitVec 32))) (Undefined!7288) (MissingVacant!7288 (index!31522 (_ BitVec 32))) )
))
(declare-fun lt!323371 () SeekEntryResult!7288)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41130 (_ BitVec 32)) SeekEntryResult!7288)

(assert (=> b!729799 (= e!408465 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19681 a!3186) j!159) a!3186 mask!3328) lt!323371))))

(declare-fun b!729800 () Bool)

(declare-fun e!408464 () Bool)

(assert (=> b!729800 (= e!408460 e!408464)))

(declare-fun res!490291 () Bool)

(assert (=> b!729800 (=> (not res!490291) (not e!408464))))

(declare-fun lt!323373 () SeekEntryResult!7288)

(declare-fun lt!323367 () SeekEntryResult!7288)

(assert (=> b!729800 (= res!490291 (= lt!323373 lt!323367))))

(declare-fun lt!323374 () array!41130)

(declare-fun lt!323369 () (_ BitVec 64))

(assert (=> b!729800 (= lt!323367 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323369 lt!323374 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729800 (= lt!323373 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323369 mask!3328) lt!323369 lt!323374 mask!3328))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!729800 (= lt!323369 (select (store (arr!19681 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!729800 (= lt!323374 (array!41131 (store (arr!19681 a!3186) i!1173 k0!2102) (size!20102 a!3186)))))

(declare-fun e!408466 () Bool)

(declare-fun lt!323375 () SeekEntryResult!7288)

(declare-fun b!729801 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41130 (_ BitVec 32)) SeekEntryResult!7288)

(assert (=> b!729801 (= e!408466 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19681 a!3186) j!159) a!3186 mask!3328) lt!323375))))

(declare-fun b!729802 () Bool)

(declare-fun e!408461 () Bool)

(assert (=> b!729802 (= e!408461 e!408460)))

(declare-fun res!490287 () Bool)

(assert (=> b!729802 (=> (not res!490287) (not e!408460))))

(assert (=> b!729802 (= res!490287 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19681 a!3186) j!159) mask!3328) (select (arr!19681 a!3186) j!159) a!3186 mask!3328) lt!323371))))

(assert (=> b!729802 (= lt!323371 (Intermediate!7288 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729803 () Bool)

(declare-fun e!408467 () Bool)

(assert (=> b!729803 (= e!408467 e!408461)))

(declare-fun res!490296 () Bool)

(assert (=> b!729803 (=> (not res!490296) (not e!408461))))

(declare-fun lt!323372 () SeekEntryResult!7288)

(assert (=> b!729803 (= res!490296 (or (= lt!323372 (MissingZero!7288 i!1173)) (= lt!323372 (MissingVacant!7288 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41130 (_ BitVec 32)) SeekEntryResult!7288)

(assert (=> b!729803 (= lt!323372 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!729804 () Bool)

(declare-fun res!490292 () Bool)

(assert (=> b!729804 (=> (not res!490292) (not e!408461))))

(declare-datatypes ((List!13736 0))(
  ( (Nil!13733) (Cons!13732 (h!14792 (_ BitVec 64)) (t!20059 List!13736)) )
))
(declare-fun arrayNoDuplicates!0 (array!41130 (_ BitVec 32) List!13736) Bool)

(assert (=> b!729804 (= res!490292 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13733))))

(declare-fun b!729805 () Bool)

(declare-fun res!490301 () Bool)

(assert (=> b!729805 (=> (not res!490301) (not e!408461))))

(assert (=> b!729805 (= res!490301 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20102 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20102 a!3186))))))

(declare-fun b!729806 () Bool)

(declare-fun res!490298 () Bool)

(assert (=> b!729806 (=> (not res!490298) (not e!408460))))

(assert (=> b!729806 (= res!490298 e!408465)))

(declare-fun c!80130 () Bool)

(assert (=> b!729806 (= c!80130 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729807 () Bool)

(declare-fun e!408463 () Bool)

(assert (=> b!729807 (= e!408464 (not e!408463))))

(declare-fun res!490302 () Bool)

(assert (=> b!729807 (=> res!490302 e!408463)))

(get-info :version)

(assert (=> b!729807 (= res!490302 (or (not ((_ is Intermediate!7288) lt!323367)) (bvsge x!1131 (x!62527 lt!323367))))))

(declare-fun e!408468 () Bool)

(assert (=> b!729807 e!408468))

(declare-fun res!490294 () Bool)

(assert (=> b!729807 (=> (not res!490294) (not e!408468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41130 (_ BitVec 32)) Bool)

(assert (=> b!729807 (= res!490294 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24894 0))(
  ( (Unit!24895) )
))
(declare-fun lt!323370 () Unit!24894)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41130 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24894)

(assert (=> b!729807 (= lt!323370 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729809 () Bool)

(assert (=> b!729809 (= e!408468 e!408466)))

(declare-fun res!490299 () Bool)

(assert (=> b!729809 (=> (not res!490299) (not e!408466))))

(assert (=> b!729809 (= res!490299 (= (seekEntryOrOpen!0 (select (arr!19681 a!3186) j!159) a!3186 mask!3328) lt!323375))))

(assert (=> b!729809 (= lt!323375 (Found!7288 j!159))))

(declare-fun b!729810 () Bool)

(declare-fun res!490290 () Bool)

(assert (=> b!729810 (=> (not res!490290) (not e!408461))))

(assert (=> b!729810 (= res!490290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729811 () Bool)

(declare-fun res!490289 () Bool)

(assert (=> b!729811 (=> (not res!490289) (not e!408467))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729811 (= res!490289 (validKeyInArray!0 (select (arr!19681 a!3186) j!159)))))

(declare-fun b!729812 () Bool)

(declare-fun res!490297 () Bool)

(assert (=> b!729812 (=> (not res!490297) (not e!408467))))

(assert (=> b!729812 (= res!490297 (validKeyInArray!0 k0!2102))))

(declare-fun b!729813 () Bool)

(assert (=> b!729813 (= e!408463 (or (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!323368 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729813 (= lt!323368 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729808 () Bool)

(declare-fun res!490300 () Bool)

(assert (=> b!729808 (=> (not res!490300) (not e!408467))))

(assert (=> b!729808 (= res!490300 (and (= (size!20102 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20102 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20102 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!490288 () Bool)

(assert (=> start!64728 (=> (not res!490288) (not e!408467))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64728 (= res!490288 (validMask!0 mask!3328))))

(assert (=> start!64728 e!408467))

(assert (=> start!64728 true))

(declare-fun array_inv!15455 (array!41130) Bool)

(assert (=> start!64728 (array_inv!15455 a!3186)))

(declare-fun b!729814 () Bool)

(assert (=> b!729814 (= e!408465 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19681 a!3186) j!159) a!3186 mask!3328) (Found!7288 j!159)))))

(declare-fun b!729815 () Bool)

(declare-fun res!490295 () Bool)

(assert (=> b!729815 (=> (not res!490295) (not e!408467))))

(declare-fun arrayContainsKey!0 (array!41130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729815 (= res!490295 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64728 res!490288) b!729808))

(assert (= (and b!729808 res!490300) b!729811))

(assert (= (and b!729811 res!490289) b!729812))

(assert (= (and b!729812 res!490297) b!729815))

(assert (= (and b!729815 res!490295) b!729803))

(assert (= (and b!729803 res!490296) b!729810))

(assert (= (and b!729810 res!490290) b!729804))

(assert (= (and b!729804 res!490292) b!729805))

(assert (= (and b!729805 res!490301) b!729802))

(assert (= (and b!729802 res!490287) b!729798))

(assert (= (and b!729798 res!490293) b!729806))

(assert (= (and b!729806 c!80130) b!729799))

(assert (= (and b!729806 (not c!80130)) b!729814))

(assert (= (and b!729806 res!490298) b!729800))

(assert (= (and b!729800 res!490291) b!729807))

(assert (= (and b!729807 res!490294) b!729809))

(assert (= (and b!729809 res!490299) b!729801))

(assert (= (and b!729807 (not res!490302)) b!729813))

(declare-fun m!683485 () Bool)

(assert (=> b!729801 m!683485))

(assert (=> b!729801 m!683485))

(declare-fun m!683487 () Bool)

(assert (=> b!729801 m!683487))

(declare-fun m!683489 () Bool)

(assert (=> b!729813 m!683489))

(assert (=> b!729802 m!683485))

(assert (=> b!729802 m!683485))

(declare-fun m!683491 () Bool)

(assert (=> b!729802 m!683491))

(assert (=> b!729802 m!683491))

(assert (=> b!729802 m!683485))

(declare-fun m!683493 () Bool)

(assert (=> b!729802 m!683493))

(declare-fun m!683495 () Bool)

(assert (=> b!729800 m!683495))

(declare-fun m!683497 () Bool)

(assert (=> b!729800 m!683497))

(declare-fun m!683499 () Bool)

(assert (=> b!729800 m!683499))

(declare-fun m!683501 () Bool)

(assert (=> b!729800 m!683501))

(assert (=> b!729800 m!683497))

(declare-fun m!683503 () Bool)

(assert (=> b!729800 m!683503))

(declare-fun m!683505 () Bool)

(assert (=> b!729812 m!683505))

(declare-fun m!683507 () Bool)

(assert (=> start!64728 m!683507))

(declare-fun m!683509 () Bool)

(assert (=> start!64728 m!683509))

(declare-fun m!683511 () Bool)

(assert (=> b!729815 m!683511))

(declare-fun m!683513 () Bool)

(assert (=> b!729810 m!683513))

(assert (=> b!729809 m!683485))

(assert (=> b!729809 m!683485))

(declare-fun m!683515 () Bool)

(assert (=> b!729809 m!683515))

(assert (=> b!729799 m!683485))

(assert (=> b!729799 m!683485))

(declare-fun m!683517 () Bool)

(assert (=> b!729799 m!683517))

(assert (=> b!729814 m!683485))

(assert (=> b!729814 m!683485))

(declare-fun m!683519 () Bool)

(assert (=> b!729814 m!683519))

(declare-fun m!683521 () Bool)

(assert (=> b!729804 m!683521))

(declare-fun m!683523 () Bool)

(assert (=> b!729807 m!683523))

(declare-fun m!683525 () Bool)

(assert (=> b!729807 m!683525))

(assert (=> b!729811 m!683485))

(assert (=> b!729811 m!683485))

(declare-fun m!683527 () Bool)

(assert (=> b!729811 m!683527))

(declare-fun m!683529 () Bool)

(assert (=> b!729798 m!683529))

(declare-fun m!683531 () Bool)

(assert (=> b!729803 m!683531))

(check-sat (not b!729812) (not b!729804) (not b!729810) (not b!729801) (not b!729815) (not b!729813) (not b!729800) (not b!729809) (not b!729811) (not b!729802) (not start!64728) (not b!729814) (not b!729807) (not b!729803) (not b!729799))
(check-sat)
