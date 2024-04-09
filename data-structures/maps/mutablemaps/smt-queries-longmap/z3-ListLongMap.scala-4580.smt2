; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63966 () Bool)

(assert start!63966)

(declare-fun res!480908 () Bool)

(declare-fun e!403263 () Bool)

(assert (=> start!63966 (=> (not res!480908) (not e!403263))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63966 (= res!480908 (validMask!0 mask!3328))))

(assert (=> start!63966 e!403263))

(assert (=> start!63966 true))

(declare-datatypes ((array!40659 0))(
  ( (array!40660 (arr!19453 (Array (_ BitVec 32) (_ BitVec 64))) (size!19874 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40659)

(declare-fun array_inv!15227 (array!40659) Bool)

(assert (=> start!63966 (array_inv!15227 a!3186)))

(declare-fun b!718281 () Bool)

(declare-fun res!480901 () Bool)

(assert (=> b!718281 (=> (not res!480901) (not e!403263))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718281 (= res!480901 (validKeyInArray!0 (select (arr!19453 a!3186) j!159)))))

(declare-fun b!718282 () Bool)

(declare-fun e!403261 () Bool)

(assert (=> b!718282 (= e!403263 e!403261)))

(declare-fun res!480907 () Bool)

(assert (=> b!718282 (=> (not res!480907) (not e!403261))))

(declare-datatypes ((SeekEntryResult!7060 0))(
  ( (MissingZero!7060 (index!30607 (_ BitVec 32))) (Found!7060 (index!30608 (_ BitVec 32))) (Intermediate!7060 (undefined!7872 Bool) (index!30609 (_ BitVec 32)) (x!61649 (_ BitVec 32))) (Undefined!7060) (MissingVacant!7060 (index!30610 (_ BitVec 32))) )
))
(declare-fun lt!319319 () SeekEntryResult!7060)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718282 (= res!480907 (or (= lt!319319 (MissingZero!7060 i!1173)) (= lt!319319 (MissingVacant!7060 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40659 (_ BitVec 32)) SeekEntryResult!7060)

(assert (=> b!718282 (= lt!319319 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!718283 () Bool)

(declare-fun res!480906 () Bool)

(assert (=> b!718283 (=> (not res!480906) (not e!403263))))

(assert (=> b!718283 (= res!480906 (and (= (size!19874 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19874 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19874 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718284 () Bool)

(declare-fun res!480902 () Bool)

(assert (=> b!718284 (=> (not res!480902) (not e!403263))))

(assert (=> b!718284 (= res!480902 (validKeyInArray!0 k0!2102))))

(declare-fun b!718285 () Bool)

(assert (=> b!718285 (= e!403261 false)))

(declare-fun lt!319318 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718285 (= lt!319318 (toIndex!0 (select (arr!19453 a!3186) j!159) mask!3328))))

(declare-fun b!718286 () Bool)

(declare-fun res!480905 () Bool)

(assert (=> b!718286 (=> (not res!480905) (not e!403261))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718286 (= res!480905 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19874 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19874 a!3186))))))

(declare-fun b!718287 () Bool)

(declare-fun res!480903 () Bool)

(assert (=> b!718287 (=> (not res!480903) (not e!403263))))

(declare-fun arrayContainsKey!0 (array!40659 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718287 (= res!480903 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718288 () Bool)

(declare-fun res!480909 () Bool)

(assert (=> b!718288 (=> (not res!480909) (not e!403261))))

(declare-datatypes ((List!13508 0))(
  ( (Nil!13505) (Cons!13504 (h!14549 (_ BitVec 64)) (t!19831 List!13508)) )
))
(declare-fun arrayNoDuplicates!0 (array!40659 (_ BitVec 32) List!13508) Bool)

(assert (=> b!718288 (= res!480909 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13505))))

(declare-fun b!718289 () Bool)

(declare-fun res!480904 () Bool)

(assert (=> b!718289 (=> (not res!480904) (not e!403261))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40659 (_ BitVec 32)) Bool)

(assert (=> b!718289 (= res!480904 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!63966 res!480908) b!718283))

(assert (= (and b!718283 res!480906) b!718281))

(assert (= (and b!718281 res!480901) b!718284))

(assert (= (and b!718284 res!480902) b!718287))

(assert (= (and b!718287 res!480903) b!718282))

(assert (= (and b!718282 res!480907) b!718289))

(assert (= (and b!718289 res!480904) b!718288))

(assert (= (and b!718288 res!480909) b!718286))

(assert (= (and b!718286 res!480905) b!718285))

(declare-fun m!674031 () Bool)

(assert (=> b!718282 m!674031))

(declare-fun m!674033 () Bool)

(assert (=> b!718281 m!674033))

(assert (=> b!718281 m!674033))

(declare-fun m!674035 () Bool)

(assert (=> b!718281 m!674035))

(declare-fun m!674037 () Bool)

(assert (=> b!718288 m!674037))

(declare-fun m!674039 () Bool)

(assert (=> b!718287 m!674039))

(declare-fun m!674041 () Bool)

(assert (=> start!63966 m!674041))

(declare-fun m!674043 () Bool)

(assert (=> start!63966 m!674043))

(assert (=> b!718285 m!674033))

(assert (=> b!718285 m!674033))

(declare-fun m!674045 () Bool)

(assert (=> b!718285 m!674045))

(declare-fun m!674047 () Bool)

(assert (=> b!718284 m!674047))

(declare-fun m!674049 () Bool)

(assert (=> b!718289 m!674049))

(check-sat (not b!718289) (not b!718281) (not b!718287) (not b!718284) (not b!718282) (not start!63966) (not b!718285) (not b!718288))
(check-sat)
