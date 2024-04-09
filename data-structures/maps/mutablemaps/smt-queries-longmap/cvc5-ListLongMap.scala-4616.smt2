; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64348 () Bool)

(assert start!64348)

(declare-fun b!722809 () Bool)

(declare-fun res!484588 () Bool)

(declare-fun e!405060 () Bool)

(assert (=> b!722809 (=> (not res!484588) (not e!405060))))

(declare-datatypes ((array!40882 0))(
  ( (array!40883 (arr!19560 (Array (_ BitVec 32) (_ BitVec 64))) (size!19981 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40882)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40882 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722809 (= res!484588 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!405063 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!722810 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7167 0))(
  ( (MissingZero!7167 (index!31035 (_ BitVec 32))) (Found!7167 (index!31036 (_ BitVec 32))) (Intermediate!7167 (undefined!7979 Bool) (index!31037 (_ BitVec 32)) (x!62065 (_ BitVec 32))) (Undefined!7167) (MissingVacant!7167 (index!31038 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40882 (_ BitVec 32)) SeekEntryResult!7167)

(assert (=> b!722810 (= e!405063 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19560 a!3186) j!159) a!3186 mask!3328) (Found!7167 j!159)))))

(declare-fun b!722812 () Bool)

(declare-fun res!484593 () Bool)

(assert (=> b!722812 (=> (not res!484593) (not e!405060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722812 (= res!484593 (validKeyInArray!0 (select (arr!19560 a!3186) j!159)))))

(declare-fun b!722813 () Bool)

(declare-fun res!484596 () Bool)

(assert (=> b!722813 (=> (not res!484596) (not e!405060))))

(assert (=> b!722813 (= res!484596 (validKeyInArray!0 k!2102))))

(declare-fun b!722814 () Bool)

(declare-fun e!405061 () Bool)

(assert (=> b!722814 (= e!405060 e!405061)))

(declare-fun res!484591 () Bool)

(assert (=> b!722814 (=> (not res!484591) (not e!405061))))

(declare-fun lt!320455 () SeekEntryResult!7167)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722814 (= res!484591 (or (= lt!320455 (MissingZero!7167 i!1173)) (= lt!320455 (MissingVacant!7167 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40882 (_ BitVec 32)) SeekEntryResult!7167)

(assert (=> b!722814 (= lt!320455 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722815 () Bool)

(declare-fun res!484599 () Bool)

(declare-fun e!405062 () Bool)

(assert (=> b!722815 (=> (not res!484599) (not e!405062))))

(assert (=> b!722815 (= res!484599 e!405063)))

(declare-fun c!79482 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722815 (= c!79482 (bvsle x!1131 resIntermediateX!5))))

(declare-fun lt!320454 () SeekEntryResult!7167)

(declare-fun b!722816 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40882 (_ BitVec 32)) SeekEntryResult!7167)

(assert (=> b!722816 (= e!405063 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19560 a!3186) j!159) a!3186 mask!3328) lt!320454))))

(declare-fun b!722817 () Bool)

(declare-fun res!484592 () Bool)

(assert (=> b!722817 (=> (not res!484592) (not e!405061))))

(assert (=> b!722817 (= res!484592 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19981 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19981 a!3186))))))

(declare-fun b!722818 () Bool)

(declare-fun res!484590 () Bool)

(assert (=> b!722818 (=> (not res!484590) (not e!405061))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40882 (_ BitVec 32)) Bool)

(assert (=> b!722818 (= res!484590 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722819 () Bool)

(declare-fun res!484594 () Bool)

(assert (=> b!722819 (=> (not res!484594) (not e!405060))))

(assert (=> b!722819 (= res!484594 (and (= (size!19981 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19981 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19981 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!722820 () Bool)

(assert (=> b!722820 (= e!405062 false)))

(declare-fun lt!320457 () (_ BitVec 64))

(declare-fun lt!320459 () SeekEntryResult!7167)

(declare-fun lt!320456 () array!40882)

(assert (=> b!722820 (= lt!320459 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320457 lt!320456 mask!3328))))

(declare-fun lt!320458 () SeekEntryResult!7167)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722820 (= lt!320458 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320457 mask!3328) lt!320457 lt!320456 mask!3328))))

(assert (=> b!722820 (= lt!320457 (select (store (arr!19560 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722820 (= lt!320456 (array!40883 (store (arr!19560 a!3186) i!1173 k!2102) (size!19981 a!3186)))))

(declare-fun b!722811 () Bool)

(assert (=> b!722811 (= e!405061 e!405062)))

(declare-fun res!484598 () Bool)

(assert (=> b!722811 (=> (not res!484598) (not e!405062))))

(assert (=> b!722811 (= res!484598 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19560 a!3186) j!159) mask!3328) (select (arr!19560 a!3186) j!159) a!3186 mask!3328) lt!320454))))

(assert (=> b!722811 (= lt!320454 (Intermediate!7167 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!484597 () Bool)

(assert (=> start!64348 (=> (not res!484597) (not e!405060))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64348 (= res!484597 (validMask!0 mask!3328))))

(assert (=> start!64348 e!405060))

(assert (=> start!64348 true))

(declare-fun array_inv!15334 (array!40882) Bool)

(assert (=> start!64348 (array_inv!15334 a!3186)))

(declare-fun b!722821 () Bool)

(declare-fun res!484589 () Bool)

(assert (=> b!722821 (=> (not res!484589) (not e!405061))))

(declare-datatypes ((List!13615 0))(
  ( (Nil!13612) (Cons!13611 (h!14665 (_ BitVec 64)) (t!19938 List!13615)) )
))
(declare-fun arrayNoDuplicates!0 (array!40882 (_ BitVec 32) List!13615) Bool)

(assert (=> b!722821 (= res!484589 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13612))))

(declare-fun b!722822 () Bool)

(declare-fun res!484595 () Bool)

(assert (=> b!722822 (=> (not res!484595) (not e!405062))))

(assert (=> b!722822 (= res!484595 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19560 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64348 res!484597) b!722819))

(assert (= (and b!722819 res!484594) b!722812))

(assert (= (and b!722812 res!484593) b!722813))

(assert (= (and b!722813 res!484596) b!722809))

(assert (= (and b!722809 res!484588) b!722814))

(assert (= (and b!722814 res!484591) b!722818))

(assert (= (and b!722818 res!484590) b!722821))

(assert (= (and b!722821 res!484589) b!722817))

(assert (= (and b!722817 res!484592) b!722811))

(assert (= (and b!722811 res!484598) b!722822))

(assert (= (and b!722822 res!484595) b!722815))

(assert (= (and b!722815 c!79482) b!722816))

(assert (= (and b!722815 (not c!79482)) b!722810))

(assert (= (and b!722815 res!484599) b!722820))

(declare-fun m!677389 () Bool)

(assert (=> b!722818 m!677389))

(declare-fun m!677391 () Bool)

(assert (=> b!722814 m!677391))

(declare-fun m!677393 () Bool)

(assert (=> b!722813 m!677393))

(declare-fun m!677395 () Bool)

(assert (=> b!722816 m!677395))

(assert (=> b!722816 m!677395))

(declare-fun m!677397 () Bool)

(assert (=> b!722816 m!677397))

(declare-fun m!677399 () Bool)

(assert (=> b!722822 m!677399))

(declare-fun m!677401 () Bool)

(assert (=> b!722820 m!677401))

(declare-fun m!677403 () Bool)

(assert (=> b!722820 m!677403))

(assert (=> b!722820 m!677403))

(declare-fun m!677405 () Bool)

(assert (=> b!722820 m!677405))

(declare-fun m!677407 () Bool)

(assert (=> b!722820 m!677407))

(declare-fun m!677409 () Bool)

(assert (=> b!722820 m!677409))

(declare-fun m!677411 () Bool)

(assert (=> b!722821 m!677411))

(declare-fun m!677413 () Bool)

(assert (=> b!722809 m!677413))

(assert (=> b!722811 m!677395))

(assert (=> b!722811 m!677395))

(declare-fun m!677415 () Bool)

(assert (=> b!722811 m!677415))

(assert (=> b!722811 m!677415))

(assert (=> b!722811 m!677395))

(declare-fun m!677417 () Bool)

(assert (=> b!722811 m!677417))

(declare-fun m!677419 () Bool)

(assert (=> start!64348 m!677419))

(declare-fun m!677421 () Bool)

(assert (=> start!64348 m!677421))

(assert (=> b!722812 m!677395))

(assert (=> b!722812 m!677395))

(declare-fun m!677423 () Bool)

(assert (=> b!722812 m!677423))

(assert (=> b!722810 m!677395))

(assert (=> b!722810 m!677395))

(declare-fun m!677425 () Bool)

(assert (=> b!722810 m!677425))

(push 1)

