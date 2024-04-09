; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63742 () Bool)

(assert start!63742)

(declare-fun b!717070 () Bool)

(declare-fun res!479998 () Bool)

(declare-fun e!402624 () Bool)

(assert (=> b!717070 (=> (not res!479998) (not e!402624))))

(declare-datatypes ((array!40591 0))(
  ( (array!40592 (arr!19425 (Array (_ BitVec 32) (_ BitVec 64))) (size!19846 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40591)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!717070 (= res!479998 (and (= (size!19846 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19846 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19846 a!3186)) (not (= i!1173 j!159))))))

(declare-datatypes ((SeekEntryResult!7032 0))(
  ( (MissingZero!7032 (index!30495 (_ BitVec 32))) (Found!7032 (index!30496 (_ BitVec 32))) (Intermediate!7032 (undefined!7844 Bool) (index!30497 (_ BitVec 32)) (x!61549 (_ BitVec 32))) (Undefined!7032) (MissingVacant!7032 (index!30498 (_ BitVec 32))) )
))
(declare-fun lt!318983 () SeekEntryResult!7032)

(declare-fun b!717071 () Bool)

(assert (=> b!717071 (= e!402624 (and (or (= lt!318983 (MissingZero!7032 i!1173)) (= lt!318983 (MissingVacant!7032 i!1173))) (bvsgt #b00000000000000000000000000000000 (size!19846 a!3186))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40591 (_ BitVec 32)) SeekEntryResult!7032)

(assert (=> b!717071 (= lt!318983 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!480000 () Bool)

(assert (=> start!63742 (=> (not res!480000) (not e!402624))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63742 (= res!480000 (validMask!0 mask!3328))))

(assert (=> start!63742 e!402624))

(declare-fun array_inv!15199 (array!40591) Bool)

(assert (=> start!63742 (array_inv!15199 a!3186)))

(assert (=> start!63742 true))

(declare-fun b!717072 () Bool)

(declare-fun res!479997 () Bool)

(assert (=> b!717072 (=> (not res!479997) (not e!402624))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717072 (= res!479997 (validKeyInArray!0 (select (arr!19425 a!3186) j!159)))))

(declare-fun b!717073 () Bool)

(declare-fun res!479999 () Bool)

(assert (=> b!717073 (=> (not res!479999) (not e!402624))))

(assert (=> b!717073 (= res!479999 (validKeyInArray!0 k!2102))))

(declare-fun b!717074 () Bool)

(declare-fun res!479996 () Bool)

(assert (=> b!717074 (=> (not res!479996) (not e!402624))))

(declare-fun arrayContainsKey!0 (array!40591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717074 (= res!479996 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!63742 res!480000) b!717070))

(assert (= (and b!717070 res!479998) b!717072))

(assert (= (and b!717072 res!479997) b!717073))

(assert (= (and b!717073 res!479999) b!717074))

(assert (= (and b!717074 res!479996) b!717071))

(declare-fun m!673137 () Bool)

(assert (=> b!717071 m!673137))

(declare-fun m!673139 () Bool)

(assert (=> b!717073 m!673139))

(declare-fun m!673141 () Bool)

(assert (=> start!63742 m!673141))

(declare-fun m!673143 () Bool)

(assert (=> start!63742 m!673143))

(declare-fun m!673145 () Bool)

(assert (=> b!717072 m!673145))

(assert (=> b!717072 m!673145))

(declare-fun m!673147 () Bool)

(assert (=> b!717072 m!673147))

(declare-fun m!673149 () Bool)

(assert (=> b!717074 m!673149))

(push 1)

(assert (not b!717071))

(assert (not b!717072))

