; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64032 () Bool)

(assert start!64032)

(declare-fun b!718677 () Bool)

(declare-fun res!481210 () Bool)

(declare-fun e!403452 () Bool)

(assert (=> b!718677 (=> (not res!481210) (not e!403452))))

(declare-datatypes ((array!40680 0))(
  ( (array!40681 (arr!19462 (Array (_ BitVec 32) (_ BitVec 64))) (size!19883 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40680)

(declare-datatypes ((List!13517 0))(
  ( (Nil!13514) (Cons!13513 (h!14561 (_ BitVec 64)) (t!19840 List!13517)) )
))
(declare-fun arrayNoDuplicates!0 (array!40680 (_ BitVec 32) List!13517) Bool)

(assert (=> b!718677 (= res!481210 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13514))))

(declare-fun res!481211 () Bool)

(declare-fun e!403451 () Bool)

(assert (=> start!64032 (=> (not res!481211) (not e!403451))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64032 (= res!481211 (validMask!0 mask!3328))))

(assert (=> start!64032 e!403451))

(assert (=> start!64032 true))

(declare-fun array_inv!15236 (array!40680) Bool)

(assert (=> start!64032 (array_inv!15236 a!3186)))

(declare-fun b!718678 () Bool)

(declare-fun res!481215 () Bool)

(assert (=> b!718678 (=> (not res!481215) (not e!403451))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718678 (= res!481215 (validKeyInArray!0 k0!2102))))

(declare-fun b!718679 () Bool)

(assert (=> b!718679 (= e!403452 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!319445 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718679 (= lt!319445 (toIndex!0 (select (arr!19462 a!3186) j!159) mask!3328))))

(declare-fun b!718680 () Bool)

(declare-fun res!481218 () Bool)

(assert (=> b!718680 (=> (not res!481218) (not e!403451))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718680 (= res!481218 (and (= (size!19883 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19883 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19883 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718681 () Bool)

(declare-fun res!481214 () Bool)

(assert (=> b!718681 (=> (not res!481214) (not e!403452))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718681 (= res!481214 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19883 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19883 a!3186))))))

(declare-fun b!718682 () Bool)

(declare-fun res!481212 () Bool)

(assert (=> b!718682 (=> (not res!481212) (not e!403452))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40680 (_ BitVec 32)) Bool)

(assert (=> b!718682 (= res!481212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!718683 () Bool)

(declare-fun res!481216 () Bool)

(assert (=> b!718683 (=> (not res!481216) (not e!403451))))

(assert (=> b!718683 (= res!481216 (validKeyInArray!0 (select (arr!19462 a!3186) j!159)))))

(declare-fun b!718684 () Bool)

(assert (=> b!718684 (= e!403451 e!403452)))

(declare-fun res!481217 () Bool)

(assert (=> b!718684 (=> (not res!481217) (not e!403452))))

(declare-datatypes ((SeekEntryResult!7069 0))(
  ( (MissingZero!7069 (index!30643 (_ BitVec 32))) (Found!7069 (index!30644 (_ BitVec 32))) (Intermediate!7069 (undefined!7881 Bool) (index!30645 (_ BitVec 32)) (x!61685 (_ BitVec 32))) (Undefined!7069) (MissingVacant!7069 (index!30646 (_ BitVec 32))) )
))
(declare-fun lt!319444 () SeekEntryResult!7069)

(assert (=> b!718684 (= res!481217 (or (= lt!319444 (MissingZero!7069 i!1173)) (= lt!319444 (MissingVacant!7069 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40680 (_ BitVec 32)) SeekEntryResult!7069)

(assert (=> b!718684 (= lt!319444 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!718685 () Bool)

(declare-fun res!481213 () Bool)

(assert (=> b!718685 (=> (not res!481213) (not e!403451))))

(declare-fun arrayContainsKey!0 (array!40680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718685 (= res!481213 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64032 res!481211) b!718680))

(assert (= (and b!718680 res!481218) b!718683))

(assert (= (and b!718683 res!481216) b!718678))

(assert (= (and b!718678 res!481215) b!718685))

(assert (= (and b!718685 res!481213) b!718684))

(assert (= (and b!718684 res!481217) b!718682))

(assert (= (and b!718682 res!481212) b!718677))

(assert (= (and b!718677 res!481210) b!718681))

(assert (= (and b!718681 res!481214) b!718679))

(declare-fun m!674307 () Bool)

(assert (=> b!718677 m!674307))

(declare-fun m!674309 () Bool)

(assert (=> b!718684 m!674309))

(declare-fun m!674311 () Bool)

(assert (=> b!718678 m!674311))

(declare-fun m!674313 () Bool)

(assert (=> b!718683 m!674313))

(assert (=> b!718683 m!674313))

(declare-fun m!674315 () Bool)

(assert (=> b!718683 m!674315))

(assert (=> b!718679 m!674313))

(assert (=> b!718679 m!674313))

(declare-fun m!674317 () Bool)

(assert (=> b!718679 m!674317))

(declare-fun m!674319 () Bool)

(assert (=> b!718685 m!674319))

(declare-fun m!674321 () Bool)

(assert (=> b!718682 m!674321))

(declare-fun m!674323 () Bool)

(assert (=> start!64032 m!674323))

(declare-fun m!674325 () Bool)

(assert (=> start!64032 m!674325))

(check-sat (not b!718684) (not b!718682) (not b!718679) (not start!64032) (not b!718685) (not b!718678) (not b!718683) (not b!718677))
