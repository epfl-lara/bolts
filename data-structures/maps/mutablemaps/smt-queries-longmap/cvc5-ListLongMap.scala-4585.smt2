; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64042 () Bool)

(assert start!64042)

(declare-fun b!718814 () Bool)

(declare-fun res!481347 () Bool)

(declare-fun e!403495 () Bool)

(assert (=> b!718814 (=> (not res!481347) (not e!403495))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718814 (= res!481347 (validKeyInArray!0 k!2102))))

(declare-fun b!718815 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!40690 0))(
  ( (array!40691 (arr!19467 (Array (_ BitVec 32) (_ BitVec 64))) (size!19888 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40690)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!403496 () Bool)

(assert (=> b!718815 (= e!403496 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19467 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsle x!1131 resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun b!718816 () Bool)

(declare-fun res!481356 () Bool)

(assert (=> b!718816 (=> (not res!481356) (not e!403495))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!718816 (= res!481356 (and (= (size!19888 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19888 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19888 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!481354 () Bool)

(assert (=> start!64042 (=> (not res!481354) (not e!403495))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64042 (= res!481354 (validMask!0 mask!3328))))

(assert (=> start!64042 e!403495))

(assert (=> start!64042 true))

(declare-fun array_inv!15241 (array!40690) Bool)

(assert (=> start!64042 (array_inv!15241 a!3186)))

(declare-fun b!718817 () Bool)

(declare-fun res!481352 () Bool)

(assert (=> b!718817 (=> (not res!481352) (not e!403496))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!718817 (= res!481352 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19888 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19888 a!3186))))))

(declare-fun b!718818 () Bool)

(declare-fun res!481348 () Bool)

(assert (=> b!718818 (=> (not res!481348) (not e!403496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40690 (_ BitVec 32)) Bool)

(assert (=> b!718818 (= res!481348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718819 () Bool)

(declare-fun res!481349 () Bool)

(assert (=> b!718819 (=> (not res!481349) (not e!403496))))

(declare-datatypes ((List!13522 0))(
  ( (Nil!13519) (Cons!13518 (h!14566 (_ BitVec 64)) (t!19845 List!13522)) )
))
(declare-fun arrayNoDuplicates!0 (array!40690 (_ BitVec 32) List!13522) Bool)

(assert (=> b!718819 (= res!481349 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13519))))

(declare-fun b!718820 () Bool)

(declare-fun res!481355 () Bool)

(assert (=> b!718820 (=> (not res!481355) (not e!403495))))

(declare-fun arrayContainsKey!0 (array!40690 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718820 (= res!481355 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718821 () Bool)

(assert (=> b!718821 (= e!403495 e!403496)))

(declare-fun res!481351 () Bool)

(assert (=> b!718821 (=> (not res!481351) (not e!403496))))

(declare-datatypes ((SeekEntryResult!7074 0))(
  ( (MissingZero!7074 (index!30663 (_ BitVec 32))) (Found!7074 (index!30664 (_ BitVec 32))) (Intermediate!7074 (undefined!7886 Bool) (index!30665 (_ BitVec 32)) (x!61706 (_ BitVec 32))) (Undefined!7074) (MissingVacant!7074 (index!30666 (_ BitVec 32))) )
))
(declare-fun lt!319472 () SeekEntryResult!7074)

(assert (=> b!718821 (= res!481351 (or (= lt!319472 (MissingZero!7074 i!1173)) (= lt!319472 (MissingVacant!7074 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40690 (_ BitVec 32)) SeekEntryResult!7074)

(assert (=> b!718821 (= lt!319472 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718822 () Bool)

(declare-fun res!481353 () Bool)

(assert (=> b!718822 (=> (not res!481353) (not e!403495))))

(assert (=> b!718822 (= res!481353 (validKeyInArray!0 (select (arr!19467 a!3186) j!159)))))

(declare-fun b!718823 () Bool)

(declare-fun res!481350 () Bool)

(assert (=> b!718823 (=> (not res!481350) (not e!403496))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40690 (_ BitVec 32)) SeekEntryResult!7074)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718823 (= res!481350 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19467 a!3186) j!159) mask!3328) (select (arr!19467 a!3186) j!159) a!3186 mask!3328) (Intermediate!7074 false resIntermediateIndex!5 resIntermediateX!5)))))

(assert (= (and start!64042 res!481354) b!718816))

(assert (= (and b!718816 res!481356) b!718822))

(assert (= (and b!718822 res!481353) b!718814))

(assert (= (and b!718814 res!481347) b!718820))

(assert (= (and b!718820 res!481355) b!718821))

(assert (= (and b!718821 res!481351) b!718818))

(assert (= (and b!718818 res!481348) b!718819))

(assert (= (and b!718819 res!481349) b!718817))

(assert (= (and b!718817 res!481352) b!718823))

(assert (= (and b!718823 res!481350) b!718815))

(declare-fun m!674413 () Bool)

(assert (=> b!718821 m!674413))

(declare-fun m!674415 () Bool)

(assert (=> b!718815 m!674415))

(declare-fun m!674417 () Bool)

(assert (=> b!718814 m!674417))

(declare-fun m!674419 () Bool)

(assert (=> b!718819 m!674419))

(declare-fun m!674421 () Bool)

(assert (=> b!718820 m!674421))

(declare-fun m!674423 () Bool)

(assert (=> start!64042 m!674423))

(declare-fun m!674425 () Bool)

(assert (=> start!64042 m!674425))

(declare-fun m!674427 () Bool)

(assert (=> b!718823 m!674427))

(assert (=> b!718823 m!674427))

(declare-fun m!674429 () Bool)

(assert (=> b!718823 m!674429))

(assert (=> b!718823 m!674429))

(assert (=> b!718823 m!674427))

(declare-fun m!674431 () Bool)

(assert (=> b!718823 m!674431))

(assert (=> b!718822 m!674427))

(assert (=> b!718822 m!674427))

(declare-fun m!674433 () Bool)

(assert (=> b!718822 m!674433))

(declare-fun m!674435 () Bool)

(assert (=> b!718818 m!674435))

(push 1)

(assert (not b!718820))

(assert (not b!718818))

(assert (not start!64042))

(assert (not b!718814))

(assert (not b!718822))

(assert (not b!718821))

(assert (not b!718823))

