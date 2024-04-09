; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63956 () Bool)

(assert start!63956)

(declare-fun b!718146 () Bool)

(declare-fun res!480769 () Bool)

(declare-fun e!403216 () Bool)

(assert (=> b!718146 (=> (not res!480769) (not e!403216))))

(declare-datatypes ((array!40649 0))(
  ( (array!40650 (arr!19448 (Array (_ BitVec 32) (_ BitVec 64))) (size!19869 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40649)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40649 (_ BitVec 32)) Bool)

(assert (=> b!718146 (= res!480769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718147 () Bool)

(declare-fun res!480770 () Bool)

(declare-fun e!403218 () Bool)

(assert (=> b!718147 (=> (not res!480770) (not e!403218))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718147 (= res!480770 (validKeyInArray!0 (select (arr!19448 a!3186) j!159)))))

(declare-fun b!718148 () Bool)

(declare-fun res!480772 () Bool)

(assert (=> b!718148 (=> (not res!480772) (not e!403218))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!718148 (= res!480772 (validKeyInArray!0 k!2102))))

(declare-fun b!718149 () Bool)

(declare-fun res!480771 () Bool)

(assert (=> b!718149 (=> (not res!480771) (not e!403216))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718149 (= res!480771 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19869 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19869 a!3186))))))

(declare-fun b!718150 () Bool)

(assert (=> b!718150 (= e!403216 false)))

(declare-fun lt!319288 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718150 (= lt!319288 (toIndex!0 (select (arr!19448 a!3186) j!159) mask!3328))))

(declare-fun b!718151 () Bool)

(declare-fun res!480767 () Bool)

(assert (=> b!718151 (=> (not res!480767) (not e!403218))))

(declare-fun arrayContainsKey!0 (array!40649 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718151 (= res!480767 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!480773 () Bool)

(assert (=> start!63956 (=> (not res!480773) (not e!403218))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63956 (= res!480773 (validMask!0 mask!3328))))

(assert (=> start!63956 e!403218))

(assert (=> start!63956 true))

(declare-fun array_inv!15222 (array!40649) Bool)

(assert (=> start!63956 (array_inv!15222 a!3186)))

(declare-fun b!718152 () Bool)

(declare-fun res!480774 () Bool)

(assert (=> b!718152 (=> (not res!480774) (not e!403216))))

(declare-datatypes ((List!13503 0))(
  ( (Nil!13500) (Cons!13499 (h!14544 (_ BitVec 64)) (t!19826 List!13503)) )
))
(declare-fun arrayNoDuplicates!0 (array!40649 (_ BitVec 32) List!13503) Bool)

(assert (=> b!718152 (= res!480774 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13500))))

(declare-fun b!718153 () Bool)

(assert (=> b!718153 (= e!403218 e!403216)))

(declare-fun res!480766 () Bool)

(assert (=> b!718153 (=> (not res!480766) (not e!403216))))

(declare-datatypes ((SeekEntryResult!7055 0))(
  ( (MissingZero!7055 (index!30587 (_ BitVec 32))) (Found!7055 (index!30588 (_ BitVec 32))) (Intermediate!7055 (undefined!7867 Bool) (index!30589 (_ BitVec 32)) (x!61628 (_ BitVec 32))) (Undefined!7055) (MissingVacant!7055 (index!30590 (_ BitVec 32))) )
))
(declare-fun lt!319289 () SeekEntryResult!7055)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718153 (= res!480766 (or (= lt!319289 (MissingZero!7055 i!1173)) (= lt!319289 (MissingVacant!7055 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40649 (_ BitVec 32)) SeekEntryResult!7055)

(assert (=> b!718153 (= lt!319289 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718154 () Bool)

(declare-fun res!480768 () Bool)

(assert (=> b!718154 (=> (not res!480768) (not e!403218))))

(assert (=> b!718154 (= res!480768 (and (= (size!19869 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19869 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19869 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!63956 res!480773) b!718154))

(assert (= (and b!718154 res!480768) b!718147))

(assert (= (and b!718147 res!480770) b!718148))

(assert (= (and b!718148 res!480772) b!718151))

(assert (= (and b!718151 res!480767) b!718153))

(assert (= (and b!718153 res!480766) b!718146))

(assert (= (and b!718146 res!480769) b!718152))

(assert (= (and b!718152 res!480774) b!718149))

(assert (= (and b!718149 res!480771) b!718150))

(declare-fun m!673931 () Bool)

(assert (=> b!718148 m!673931))

(declare-fun m!673933 () Bool)

(assert (=> b!718152 m!673933))

(declare-fun m!673935 () Bool)

(assert (=> b!718151 m!673935))

(declare-fun m!673937 () Bool)

(assert (=> b!718150 m!673937))

(assert (=> b!718150 m!673937))

(declare-fun m!673939 () Bool)

(assert (=> b!718150 m!673939))

(declare-fun m!673941 () Bool)

(assert (=> start!63956 m!673941))

(declare-fun m!673943 () Bool)

(assert (=> start!63956 m!673943))

(assert (=> b!718147 m!673937))

(assert (=> b!718147 m!673937))

(declare-fun m!673945 () Bool)

(assert (=> b!718147 m!673945))

(declare-fun m!673947 () Bool)

(assert (=> b!718153 m!673947))

(declare-fun m!673949 () Bool)

(assert (=> b!718146 m!673949))

(push 1)

(assert (not b!718146))

(assert (not b!718148))

(assert (not b!718152))

(assert (not start!63956))

(assert (not b!718153))

(assert (not b!718147))

(assert (not b!718151))

(assert (not b!718150))

(check-sat)

