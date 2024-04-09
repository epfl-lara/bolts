; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64334 () Bool)

(assert start!64334)

(declare-fun b!722515 () Bool)

(declare-fun res!484346 () Bool)

(declare-fun e!404957 () Bool)

(assert (=> b!722515 (=> (not res!484346) (not e!404957))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!722515 (= res!484346 (validKeyInArray!0 k!2102))))

(declare-fun b!722516 () Bool)

(declare-fun e!404955 () Bool)

(declare-fun e!404954 () Bool)

(assert (=> b!722516 (= e!404955 e!404954)))

(declare-fun res!484341 () Bool)

(assert (=> b!722516 (=> (not res!484341) (not e!404954))))

(declare-datatypes ((array!40868 0))(
  ( (array!40869 (arr!19553 (Array (_ BitVec 32) (_ BitVec 64))) (size!19974 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40868)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7160 0))(
  ( (MissingZero!7160 (index!31007 (_ BitVec 32))) (Found!7160 (index!31008 (_ BitVec 32))) (Intermediate!7160 (undefined!7972 Bool) (index!31009 (_ BitVec 32)) (x!62034 (_ BitVec 32))) (Undefined!7160) (MissingVacant!7160 (index!31010 (_ BitVec 32))) )
))
(declare-fun lt!320333 () SeekEntryResult!7160)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40868 (_ BitVec 32)) SeekEntryResult!7160)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!722516 (= res!484341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19553 a!3186) j!159) mask!3328) (select (arr!19553 a!3186) j!159) a!3186 mask!3328) lt!320333))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!722516 (= lt!320333 (Intermediate!7160 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!722517 () Bool)

(declare-fun res!484336 () Bool)

(assert (=> b!722517 (=> (not res!484336) (not e!404957))))

(declare-fun arrayContainsKey!0 (array!40868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!722517 (= res!484336 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!722518 () Bool)

(declare-fun res!484342 () Bool)

(assert (=> b!722518 (=> (not res!484342) (not e!404957))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!722518 (= res!484342 (and (= (size!19974 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19974 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19974 a!3186)) (not (= i!1173 j!159))))))

(declare-fun e!404956 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!722520 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!722520 (= e!404956 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19553 a!3186) j!159) a!3186 mask!3328) lt!320333))))

(declare-fun b!722521 () Bool)

(declare-fun res!484344 () Bool)

(assert (=> b!722521 (=> (not res!484344) (not e!404957))))

(assert (=> b!722521 (= res!484344 (validKeyInArray!0 (select (arr!19553 a!3186) j!159)))))

(declare-fun b!722522 () Bool)

(assert (=> b!722522 (= e!404954 false)))

(declare-fun lt!320332 () array!40868)

(declare-fun lt!320331 () (_ BitVec 64))

(declare-fun lt!320330 () SeekEntryResult!7160)

(assert (=> b!722522 (= lt!320330 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320331 lt!320332 mask!3328))))

(declare-fun lt!320329 () SeekEntryResult!7160)

(assert (=> b!722522 (= lt!320329 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320331 mask!3328) lt!320331 lt!320332 mask!3328))))

(assert (=> b!722522 (= lt!320331 (select (store (arr!19553 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!722522 (= lt!320332 (array!40869 (store (arr!19553 a!3186) i!1173 k!2102) (size!19974 a!3186)))))

(declare-fun b!722523 () Bool)

(declare-fun res!484345 () Bool)

(assert (=> b!722523 (=> (not res!484345) (not e!404954))))

(assert (=> b!722523 (= res!484345 e!404956)))

(declare-fun c!79461 () Bool)

(assert (=> b!722523 (= c!79461 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!722524 () Bool)

(assert (=> b!722524 (= e!404957 e!404955)))

(declare-fun res!484339 () Bool)

(assert (=> b!722524 (=> (not res!484339) (not e!404955))))

(declare-fun lt!320328 () SeekEntryResult!7160)

(assert (=> b!722524 (= res!484339 (or (= lt!320328 (MissingZero!7160 i!1173)) (= lt!320328 (MissingVacant!7160 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40868 (_ BitVec 32)) SeekEntryResult!7160)

(assert (=> b!722524 (= lt!320328 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!722525 () Bool)

(declare-fun res!484338 () Bool)

(assert (=> b!722525 (=> (not res!484338) (not e!404954))))

(assert (=> b!722525 (= res!484338 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19553 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!722526 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40868 (_ BitVec 32)) SeekEntryResult!7160)

(assert (=> b!722526 (= e!404956 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19553 a!3186) j!159) a!3186 mask!3328) (Found!7160 j!159)))))

(declare-fun b!722519 () Bool)

(declare-fun res!484337 () Bool)

(assert (=> b!722519 (=> (not res!484337) (not e!404955))))

(assert (=> b!722519 (= res!484337 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19974 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19974 a!3186))))))

(declare-fun res!484340 () Bool)

(assert (=> start!64334 (=> (not res!484340) (not e!404957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64334 (= res!484340 (validMask!0 mask!3328))))

(assert (=> start!64334 e!404957))

(assert (=> start!64334 true))

(declare-fun array_inv!15327 (array!40868) Bool)

(assert (=> start!64334 (array_inv!15327 a!3186)))

(declare-fun b!722527 () Bool)

(declare-fun res!484343 () Bool)

(assert (=> b!722527 (=> (not res!484343) (not e!404955))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40868 (_ BitVec 32)) Bool)

(assert (=> b!722527 (= res!484343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!722528 () Bool)

(declare-fun res!484347 () Bool)

(assert (=> b!722528 (=> (not res!484347) (not e!404955))))

(declare-datatypes ((List!13608 0))(
  ( (Nil!13605) (Cons!13604 (h!14658 (_ BitVec 64)) (t!19931 List!13608)) )
))
(declare-fun arrayNoDuplicates!0 (array!40868 (_ BitVec 32) List!13608) Bool)

(assert (=> b!722528 (= res!484347 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13605))))

(assert (= (and start!64334 res!484340) b!722518))

(assert (= (and b!722518 res!484342) b!722521))

(assert (= (and b!722521 res!484344) b!722515))

(assert (= (and b!722515 res!484346) b!722517))

(assert (= (and b!722517 res!484336) b!722524))

(assert (= (and b!722524 res!484339) b!722527))

(assert (= (and b!722527 res!484343) b!722528))

(assert (= (and b!722528 res!484347) b!722519))

(assert (= (and b!722519 res!484337) b!722516))

(assert (= (and b!722516 res!484341) b!722525))

(assert (= (and b!722525 res!484338) b!722523))

(assert (= (and b!722523 c!79461) b!722520))

(assert (= (and b!722523 (not c!79461)) b!722526))

(assert (= (and b!722523 res!484345) b!722522))

(declare-fun m!677123 () Bool)

(assert (=> b!722515 m!677123))

(declare-fun m!677125 () Bool)

(assert (=> start!64334 m!677125))

(declare-fun m!677127 () Bool)

(assert (=> start!64334 m!677127))

(declare-fun m!677129 () Bool)

(assert (=> b!722521 m!677129))

(assert (=> b!722521 m!677129))

(declare-fun m!677131 () Bool)

(assert (=> b!722521 m!677131))

(assert (=> b!722526 m!677129))

(assert (=> b!722526 m!677129))

(declare-fun m!677133 () Bool)

(assert (=> b!722526 m!677133))

(assert (=> b!722516 m!677129))

(assert (=> b!722516 m!677129))

(declare-fun m!677135 () Bool)

(assert (=> b!722516 m!677135))

(assert (=> b!722516 m!677135))

(assert (=> b!722516 m!677129))

(declare-fun m!677137 () Bool)

(assert (=> b!722516 m!677137))

(declare-fun m!677139 () Bool)

(assert (=> b!722525 m!677139))

(declare-fun m!677141 () Bool)

(assert (=> b!722527 m!677141))

(declare-fun m!677143 () Bool)

(assert (=> b!722524 m!677143))

(declare-fun m!677145 () Bool)

(assert (=> b!722528 m!677145))

(assert (=> b!722520 m!677129))

(assert (=> b!722520 m!677129))

(declare-fun m!677147 () Bool)

(assert (=> b!722520 m!677147))

(declare-fun m!677149 () Bool)

(assert (=> b!722522 m!677149))

(declare-fun m!677151 () Bool)

(assert (=> b!722522 m!677151))

(assert (=> b!722522 m!677149))

(declare-fun m!677153 () Bool)

(assert (=> b!722522 m!677153))

(declare-fun m!677155 () Bool)

(assert (=> b!722522 m!677155))

(declare-fun m!677157 () Bool)

(assert (=> b!722522 m!677157))

(declare-fun m!677159 () Bool)

(assert (=> b!722517 m!677159))

(push 1)

(assert (not b!722522))

