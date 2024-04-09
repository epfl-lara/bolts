; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64396 () Bool)

(assert start!64396)

(declare-fun b!723911 () Bool)

(declare-fun res!485552 () Bool)

(declare-fun e!405516 () Bool)

(assert (=> b!723911 (=> (not res!485552) (not e!405516))))

(declare-datatypes ((array!40930 0))(
  ( (array!40931 (arr!19584 (Array (_ BitVec 32) (_ BitVec 64))) (size!20005 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40930)

(declare-datatypes ((List!13639 0))(
  ( (Nil!13636) (Cons!13635 (h!14689 (_ BitVec 64)) (t!19962 List!13639)) )
))
(declare-fun arrayNoDuplicates!0 (array!40930 (_ BitVec 32) List!13639) Bool)

(assert (=> b!723911 (= res!485552 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13636))))

(declare-fun res!485555 () Bool)

(declare-fun e!405514 () Bool)

(assert (=> start!64396 (=> (not res!485555) (not e!405514))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64396 (= res!485555 (validMask!0 mask!3328))))

(assert (=> start!64396 e!405514))

(assert (=> start!64396 true))

(declare-fun array_inv!15358 (array!40930) Bool)

(assert (=> start!64396 (array_inv!15358 a!3186)))

(declare-fun b!723912 () Bool)

(declare-fun res!485549 () Bool)

(declare-fun e!405513 () Bool)

(assert (=> b!723912 (=> (not res!485549) (not e!405513))))

(declare-fun e!405517 () Bool)

(assert (=> b!723912 (= res!485549 e!405517)))

(declare-fun c!79554 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723912 (= c!79554 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723913 () Bool)

(declare-fun res!485550 () Bool)

(assert (=> b!723913 (=> (not res!485550) (not e!405514))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723913 (= res!485550 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723914 () Bool)

(declare-fun res!485551 () Bool)

(assert (=> b!723914 (=> (not res!485551) (not e!405514))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!723914 (= res!485551 (and (= (size!20005 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20005 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20005 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!723915 () Bool)

(declare-fun res!485546 () Bool)

(assert (=> b!723915 (=> (not res!485546) (not e!405514))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723915 (= res!485546 (validKeyInArray!0 (select (arr!19584 a!3186) j!159)))))

(declare-fun b!723916 () Bool)

(declare-fun e!405518 () Bool)

(assert (=> b!723916 (= e!405513 e!405518)))

(declare-fun res!485553 () Bool)

(assert (=> b!723916 (=> (not res!485553) (not e!405518))))

(declare-fun lt!320824 () array!40930)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!320821 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!7191 0))(
  ( (MissingZero!7191 (index!31131 (_ BitVec 32))) (Found!7191 (index!31132 (_ BitVec 32))) (Intermediate!7191 (undefined!8003 Bool) (index!31133 (_ BitVec 32)) (x!62153 (_ BitVec 32))) (Undefined!7191) (MissingVacant!7191 (index!31134 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40930 (_ BitVec 32)) SeekEntryResult!7191)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723916 (= res!485553 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320821 mask!3328) lt!320821 lt!320824 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320821 lt!320824 mask!3328)))))

(assert (=> b!723916 (= lt!320821 (select (store (arr!19584 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723916 (= lt!320824 (array!40931 (store (arr!19584 a!3186) i!1173 k!2102) (size!20005 a!3186)))))

(declare-fun b!723917 () Bool)

(declare-fun res!485554 () Bool)

(assert (=> b!723917 (=> (not res!485554) (not e!405516))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!723917 (= res!485554 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20005 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20005 a!3186))))))

(declare-fun b!723918 () Bool)

(declare-fun res!485558 () Bool)

(assert (=> b!723918 (=> (not res!485558) (not e!405514))))

(assert (=> b!723918 (= res!485558 (validKeyInArray!0 k!2102))))

(declare-fun b!723919 () Bool)

(declare-fun res!485548 () Bool)

(assert (=> b!723919 (=> (not res!485548) (not e!405513))))

(assert (=> b!723919 (= res!485548 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19584 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723920 () Bool)

(declare-fun res!485556 () Bool)

(assert (=> b!723920 (=> (not res!485556) (not e!405516))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40930 (_ BitVec 32)) Bool)

(assert (=> b!723920 (= res!485556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!723921 () Bool)

(declare-fun e!405519 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40930 (_ BitVec 32)) SeekEntryResult!7191)

(assert (=> b!723921 (= e!405519 (= (seekEntryOrOpen!0 (select (arr!19584 a!3186) j!159) a!3186 mask!3328) (Found!7191 j!159)))))

(declare-fun b!723922 () Bool)

(assert (=> b!723922 (= e!405518 (not (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328)))))))

(assert (=> b!723922 e!405519))

(declare-fun res!485547 () Bool)

(assert (=> b!723922 (=> (not res!485547) (not e!405519))))

(assert (=> b!723922 (= res!485547 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24700 0))(
  ( (Unit!24701) )
))
(declare-fun lt!320823 () Unit!24700)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40930 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24700)

(assert (=> b!723922 (= lt!320823 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723923 () Bool)

(declare-fun lt!320825 () SeekEntryResult!7191)

(assert (=> b!723923 (= e!405517 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19584 a!3186) j!159) a!3186 mask!3328) lt!320825))))

(declare-fun b!723924 () Bool)

(assert (=> b!723924 (= e!405514 e!405516)))

(declare-fun res!485557 () Bool)

(assert (=> b!723924 (=> (not res!485557) (not e!405516))))

(declare-fun lt!320822 () SeekEntryResult!7191)

(assert (=> b!723924 (= res!485557 (or (= lt!320822 (MissingZero!7191 i!1173)) (= lt!320822 (MissingVacant!7191 i!1173))))))

(assert (=> b!723924 (= lt!320822 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723925 () Bool)

(assert (=> b!723925 (= e!405516 e!405513)))

(declare-fun res!485559 () Bool)

(assert (=> b!723925 (=> (not res!485559) (not e!405513))))

(assert (=> b!723925 (= res!485559 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19584 a!3186) j!159) mask!3328) (select (arr!19584 a!3186) j!159) a!3186 mask!3328) lt!320825))))

(assert (=> b!723925 (= lt!320825 (Intermediate!7191 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723926 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40930 (_ BitVec 32)) SeekEntryResult!7191)

(assert (=> b!723926 (= e!405517 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19584 a!3186) j!159) a!3186 mask!3328) (Found!7191 j!159)))))

(assert (= (and start!64396 res!485555) b!723914))

(assert (= (and b!723914 res!485551) b!723915))

(assert (= (and b!723915 res!485546) b!723918))

(assert (= (and b!723918 res!485558) b!723913))

(assert (= (and b!723913 res!485550) b!723924))

(assert (= (and b!723924 res!485557) b!723920))

(assert (= (and b!723920 res!485556) b!723911))

(assert (= (and b!723911 res!485552) b!723917))

(assert (= (and b!723917 res!485554) b!723925))

(assert (= (and b!723925 res!485559) b!723919))

(assert (= (and b!723919 res!485548) b!723912))

(assert (= (and b!723912 c!79554) b!723923))

(assert (= (and b!723912 (not c!79554)) b!723926))

(assert (= (and b!723912 res!485549) b!723916))

(assert (= (and b!723916 res!485553) b!723922))

(assert (= (and b!723922 res!485547) b!723921))

(declare-fun m!678403 () Bool)

(assert (=> b!723918 m!678403))

(declare-fun m!678405 () Bool)

(assert (=> b!723926 m!678405))

(assert (=> b!723926 m!678405))

(declare-fun m!678407 () Bool)

(assert (=> b!723926 m!678407))

(declare-fun m!678409 () Bool)

(assert (=> b!723924 m!678409))

(declare-fun m!678411 () Bool)

(assert (=> b!723920 m!678411))

(declare-fun m!678413 () Bool)

(assert (=> b!723922 m!678413))

(declare-fun m!678415 () Bool)

(assert (=> b!723922 m!678415))

(assert (=> b!723915 m!678405))

(assert (=> b!723915 m!678405))

(declare-fun m!678417 () Bool)

(assert (=> b!723915 m!678417))

(declare-fun m!678419 () Bool)

(assert (=> b!723911 m!678419))

(declare-fun m!678421 () Bool)

(assert (=> b!723916 m!678421))

(declare-fun m!678423 () Bool)

(assert (=> b!723916 m!678423))

(declare-fun m!678425 () Bool)

(assert (=> b!723916 m!678425))

(declare-fun m!678427 () Bool)

(assert (=> b!723916 m!678427))

(declare-fun m!678429 () Bool)

(assert (=> b!723916 m!678429))

(assert (=> b!723916 m!678421))

(declare-fun m!678431 () Bool)

(assert (=> b!723913 m!678431))

(assert (=> b!723921 m!678405))

(assert (=> b!723921 m!678405))

(declare-fun m!678433 () Bool)

(assert (=> b!723921 m!678433))

(assert (=> b!723925 m!678405))

(assert (=> b!723925 m!678405))

(declare-fun m!678435 () Bool)

(assert (=> b!723925 m!678435))

(assert (=> b!723925 m!678435))

(assert (=> b!723925 m!678405))

(declare-fun m!678437 () Bool)

(assert (=> b!723925 m!678437))

(assert (=> b!723923 m!678405))

(assert (=> b!723923 m!678405))

(declare-fun m!678439 () Bool)

(assert (=> b!723923 m!678439))

(declare-fun m!678441 () Bool)

(assert (=> b!723919 m!678441))

(declare-fun m!678443 () Bool)

(assert (=> start!64396 m!678443))

(declare-fun m!678445 () Bool)

(assert (=> start!64396 m!678445))

(push 1)

(assert (not b!723918))

(assert (not b!723916))

(assert (not start!64396))

(assert (not b!723921))

(assert (not b!723922))

(assert (not b!723923))

(assert (not b!723911))

(assert (not b!723924))

(assert (not b!723915))

(assert (not b!723925))

(assert (not b!723913))

(assert (not b!723926))

(assert (not b!723920))

(check-sat)

(pop 1)

(push 1)

(check-sat)

