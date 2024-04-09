; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63902 () Bool)

(assert start!63902)

(declare-fun b!717841 () Bool)

(declare-fun res!480556 () Bool)

(declare-fun e!403055 () Bool)

(assert (=> b!717841 (=> (not res!480556) (not e!403055))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717841 (= res!480556 (validKeyInArray!0 k!2102))))

(declare-fun b!717842 () Bool)

(declare-fun res!480551 () Bool)

(assert (=> b!717842 (=> (not res!480551) (not e!403055))))

(declare-datatypes ((array!40634 0))(
  ( (array!40635 (arr!19442 (Array (_ BitVec 32) (_ BitVec 64))) (size!19863 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40634)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!717842 (= res!480551 (and (= (size!19863 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19863 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19863 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun e!403054 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!717843 () Bool)

(assert (=> b!717843 (= e!403054 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19863 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19863 a!3186)) (bvslt mask!3328 #b00000000000000000000000000000000)))))

(declare-fun res!480553 () Bool)

(assert (=> start!63902 (=> (not res!480553) (not e!403055))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63902 (= res!480553 (validMask!0 mask!3328))))

(assert (=> start!63902 e!403055))

(assert (=> start!63902 true))

(declare-fun array_inv!15216 (array!40634) Bool)

(assert (=> start!63902 (array_inv!15216 a!3186)))

(declare-fun b!717844 () Bool)

(declare-fun res!480552 () Bool)

(assert (=> b!717844 (=> (not res!480552) (not e!403054))))

(declare-datatypes ((List!13497 0))(
  ( (Nil!13494) (Cons!13493 (h!14538 (_ BitVec 64)) (t!19820 List!13497)) )
))
(declare-fun arrayNoDuplicates!0 (array!40634 (_ BitVec 32) List!13497) Bool)

(assert (=> b!717844 (= res!480552 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13494))))

(declare-fun b!717845 () Bool)

(declare-fun res!480557 () Bool)

(assert (=> b!717845 (=> (not res!480557) (not e!403055))))

(assert (=> b!717845 (= res!480557 (validKeyInArray!0 (select (arr!19442 a!3186) j!159)))))

(declare-fun b!717846 () Bool)

(assert (=> b!717846 (= e!403055 e!403054)))

(declare-fun res!480554 () Bool)

(assert (=> b!717846 (=> (not res!480554) (not e!403054))))

(declare-datatypes ((SeekEntryResult!7049 0))(
  ( (MissingZero!7049 (index!30563 (_ BitVec 32))) (Found!7049 (index!30564 (_ BitVec 32))) (Intermediate!7049 (undefined!7861 Bool) (index!30565 (_ BitVec 32)) (x!61606 (_ BitVec 32))) (Undefined!7049) (MissingVacant!7049 (index!30566 (_ BitVec 32))) )
))
(declare-fun lt!319208 () SeekEntryResult!7049)

(assert (=> b!717846 (= res!480554 (or (= lt!319208 (MissingZero!7049 i!1173)) (= lt!319208 (MissingVacant!7049 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40634 (_ BitVec 32)) SeekEntryResult!7049)

(assert (=> b!717846 (= lt!319208 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!717847 () Bool)

(declare-fun res!480558 () Bool)

(assert (=> b!717847 (=> (not res!480558) (not e!403055))))

(declare-fun arrayContainsKey!0 (array!40634 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717847 (= res!480558 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717848 () Bool)

(declare-fun res!480555 () Bool)

(assert (=> b!717848 (=> (not res!480555) (not e!403054))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40634 (_ BitVec 32)) Bool)

(assert (=> b!717848 (= res!480555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!63902 res!480553) b!717842))

(assert (= (and b!717842 res!480551) b!717845))

(assert (= (and b!717845 res!480557) b!717841))

(assert (= (and b!717841 res!480556) b!717847))

(assert (= (and b!717847 res!480558) b!717846))

(assert (= (and b!717846 res!480554) b!717848))

(assert (= (and b!717848 res!480555) b!717844))

(assert (= (and b!717844 res!480552) b!717843))

(declare-fun m!673723 () Bool)

(assert (=> b!717848 m!673723))

(declare-fun m!673725 () Bool)

(assert (=> b!717844 m!673725))

(declare-fun m!673727 () Bool)

(assert (=> b!717841 m!673727))

(declare-fun m!673729 () Bool)

(assert (=> b!717847 m!673729))

(declare-fun m!673731 () Bool)

(assert (=> start!63902 m!673731))

(declare-fun m!673733 () Bool)

(assert (=> start!63902 m!673733))

(declare-fun m!673735 () Bool)

(assert (=> b!717845 m!673735))

(assert (=> b!717845 m!673735))

(declare-fun m!673737 () Bool)

(assert (=> b!717845 m!673737))

(declare-fun m!673739 () Bool)

(assert (=> b!717846 m!673739))

(push 1)

(assert (not b!717844))

(assert (not b!717847))

(assert (not start!63902))

(assert (not b!717848))

(assert (not b!717845))

(assert (not b!717846))

(assert (not b!717841))

(check-sat)

(pop 1)

(push 1)

(check-sat)

