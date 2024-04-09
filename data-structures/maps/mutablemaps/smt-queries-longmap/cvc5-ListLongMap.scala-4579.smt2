; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63958 () Bool)

(assert start!63958)

(declare-fun res!480795 () Bool)

(declare-fun e!403225 () Bool)

(assert (=> start!63958 (=> (not res!480795) (not e!403225))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63958 (= res!480795 (validMask!0 mask!3328))))

(assert (=> start!63958 e!403225))

(assert (=> start!63958 true))

(declare-datatypes ((array!40651 0))(
  ( (array!40652 (arr!19449 (Array (_ BitVec 32) (_ BitVec 64))) (size!19870 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40651)

(declare-fun array_inv!15223 (array!40651) Bool)

(assert (=> start!63958 (array_inv!15223 a!3186)))

(declare-fun b!718173 () Bool)

(declare-fun res!480796 () Bool)

(declare-fun e!403227 () Bool)

(assert (=> b!718173 (=> (not res!480796) (not e!403227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40651 (_ BitVec 32)) Bool)

(assert (=> b!718173 (= res!480796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718174 () Bool)

(declare-fun res!480798 () Bool)

(assert (=> b!718174 (=> (not res!480798) (not e!403225))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40651 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718174 (= res!480798 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718175 () Bool)

(declare-fun res!480799 () Bool)

(assert (=> b!718175 (=> (not res!480799) (not e!403225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718175 (= res!480799 (validKeyInArray!0 k!2102))))

(declare-fun b!718176 () Bool)

(assert (=> b!718176 (= e!403225 e!403227)))

(declare-fun res!480801 () Bool)

(assert (=> b!718176 (=> (not res!480801) (not e!403227))))

(declare-datatypes ((SeekEntryResult!7056 0))(
  ( (MissingZero!7056 (index!30591 (_ BitVec 32))) (Found!7056 (index!30592 (_ BitVec 32))) (Intermediate!7056 (undefined!7868 Bool) (index!30593 (_ BitVec 32)) (x!61637 (_ BitVec 32))) (Undefined!7056) (MissingVacant!7056 (index!30594 (_ BitVec 32))) )
))
(declare-fun lt!319294 () SeekEntryResult!7056)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718176 (= res!480801 (or (= lt!319294 (MissingZero!7056 i!1173)) (= lt!319294 (MissingVacant!7056 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40651 (_ BitVec 32)) SeekEntryResult!7056)

(assert (=> b!718176 (= lt!319294 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!718177 () Bool)

(declare-fun res!480794 () Bool)

(assert (=> b!718177 (=> (not res!480794) (not e!403227))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!718177 (= res!480794 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19870 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19870 a!3186))))))

(declare-fun b!718178 () Bool)

(declare-fun res!480793 () Bool)

(assert (=> b!718178 (=> (not res!480793) (not e!403225))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!718178 (= res!480793 (and (= (size!19870 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19870 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19870 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718179 () Bool)

(declare-fun res!480800 () Bool)

(assert (=> b!718179 (=> (not res!480800) (not e!403227))))

(declare-datatypes ((List!13504 0))(
  ( (Nil!13501) (Cons!13500 (h!14545 (_ BitVec 64)) (t!19827 List!13504)) )
))
(declare-fun arrayNoDuplicates!0 (array!40651 (_ BitVec 32) List!13504) Bool)

(assert (=> b!718179 (= res!480800 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13501))))

(declare-fun b!718180 () Bool)

(assert (=> b!718180 (= e!403227 (bvslt mask!3328 #b00000000000000000000000000000000))))

(declare-fun lt!319295 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718180 (= lt!319295 (toIndex!0 (select (arr!19449 a!3186) j!159) mask!3328))))

(declare-fun b!718181 () Bool)

(declare-fun res!480797 () Bool)

(assert (=> b!718181 (=> (not res!480797) (not e!403225))))

(assert (=> b!718181 (= res!480797 (validKeyInArray!0 (select (arr!19449 a!3186) j!159)))))

(assert (= (and start!63958 res!480795) b!718178))

(assert (= (and b!718178 res!480793) b!718181))

(assert (= (and b!718181 res!480797) b!718175))

(assert (= (and b!718175 res!480799) b!718174))

(assert (= (and b!718174 res!480798) b!718176))

(assert (= (and b!718176 res!480801) b!718173))

(assert (= (and b!718173 res!480796) b!718179))

(assert (= (and b!718179 res!480800) b!718177))

(assert (= (and b!718177 res!480794) b!718180))

(declare-fun m!673951 () Bool)

(assert (=> b!718175 m!673951))

(declare-fun m!673953 () Bool)

(assert (=> b!718176 m!673953))

(declare-fun m!673955 () Bool)

(assert (=> b!718179 m!673955))

(declare-fun m!673957 () Bool)

(assert (=> start!63958 m!673957))

(declare-fun m!673959 () Bool)

(assert (=> start!63958 m!673959))

(declare-fun m!673961 () Bool)

(assert (=> b!718174 m!673961))

(declare-fun m!673963 () Bool)

(assert (=> b!718181 m!673963))

(assert (=> b!718181 m!673963))

(declare-fun m!673965 () Bool)

(assert (=> b!718181 m!673965))

(declare-fun m!673967 () Bool)

(assert (=> b!718173 m!673967))

(assert (=> b!718180 m!673963))

(assert (=> b!718180 m!673963))

(declare-fun m!673969 () Bool)

(assert (=> b!718180 m!673969))

(push 1)

(assert (not start!63958))

(assert (not b!718176))

(assert (not b!718181))

