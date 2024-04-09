; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63712 () Bool)

(assert start!63712)

(declare-fun b!716845 () Bool)

(declare-fun res!479774 () Bool)

(declare-fun e!402533 () Bool)

(assert (=> b!716845 (=> (not res!479774) (not e!402533))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!716845 (= res!479774 (validKeyInArray!0 k!2102))))

(declare-fun b!716846 () Bool)

(declare-fun res!479772 () Bool)

(assert (=> b!716846 (=> (not res!479772) (not e!402533))))

(declare-datatypes ((array!40561 0))(
  ( (array!40562 (arr!19410 (Array (_ BitVec 32) (_ BitVec 64))) (size!19831 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40561)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!716846 (= res!479772 (validKeyInArray!0 (select (arr!19410 a!3186) j!159)))))

(declare-fun b!716847 () Bool)

(declare-fun res!479775 () Bool)

(assert (=> b!716847 (=> (not res!479775) (not e!402533))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!716847 (= res!479775 (and (= (size!19831 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19831 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19831 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!479771 () Bool)

(assert (=> start!63712 (=> (not res!479771) (not e!402533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63712 (= res!479771 (validMask!0 mask!3328))))

(assert (=> start!63712 e!402533))

(declare-fun array_inv!15184 (array!40561) Bool)

(assert (=> start!63712 (array_inv!15184 a!3186)))

(assert (=> start!63712 true))

(declare-fun b!716848 () Bool)

(assert (=> b!716848 (= e!402533 false)))

(declare-datatypes ((SeekEntryResult!7017 0))(
  ( (MissingZero!7017 (index!30435 (_ BitVec 32))) (Found!7017 (index!30436 (_ BitVec 32))) (Intermediate!7017 (undefined!7829 Bool) (index!30437 (_ BitVec 32)) (x!61494 (_ BitVec 32))) (Undefined!7017) (MissingVacant!7017 (index!30438 (_ BitVec 32))) )
))
(declare-fun lt!318938 () SeekEntryResult!7017)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40561 (_ BitVec 32)) SeekEntryResult!7017)

(assert (=> b!716848 (= lt!318938 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!716849 () Bool)

(declare-fun res!479773 () Bool)

(assert (=> b!716849 (=> (not res!479773) (not e!402533))))

(declare-fun arrayContainsKey!0 (array!40561 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!716849 (= res!479773 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63712 res!479771) b!716847))

(assert (= (and b!716847 res!479775) b!716846))

(assert (= (and b!716846 res!479772) b!716845))

(assert (= (and b!716845 res!479774) b!716849))

(assert (= (and b!716849 res!479773) b!716848))

(declare-fun m!672927 () Bool)

(assert (=> b!716845 m!672927))

(declare-fun m!672929 () Bool)

(assert (=> b!716849 m!672929))

(declare-fun m!672931 () Bool)

(assert (=> b!716846 m!672931))

(assert (=> b!716846 m!672931))

(declare-fun m!672933 () Bool)

(assert (=> b!716846 m!672933))

(declare-fun m!672935 () Bool)

(assert (=> b!716848 m!672935))

(declare-fun m!672937 () Bool)

(assert (=> start!63712 m!672937))

(declare-fun m!672939 () Bool)

(assert (=> start!63712 m!672939))

(push 1)

(assert (not b!716846))

(assert (not b!716845))

(assert (not b!716848))

(assert (not b!716849))

(assert (not start!63712))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

