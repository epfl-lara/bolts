; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63750 () Bool)

(assert start!63750)

(declare-fun res!480069 () Bool)

(declare-fun e!402654 () Bool)

(assert (=> start!63750 (=> (not res!480069) (not e!402654))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63750 (= res!480069 (validMask!0 mask!3328))))

(assert (=> start!63750 e!402654))

(declare-datatypes ((array!40599 0))(
  ( (array!40600 (arr!19429 (Array (_ BitVec 32) (_ BitVec 64))) (size!19850 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40599)

(declare-fun array_inv!15203 (array!40599) Bool)

(assert (=> start!63750 (array_inv!15203 a!3186)))

(assert (=> start!63750 true))

(declare-fun b!717140 () Bool)

(declare-fun res!480072 () Bool)

(assert (=> b!717140 (=> (not res!480072) (not e!402654))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!717140 (= res!480072 (validKeyInArray!0 k0!2102))))

(declare-fun b!717141 () Bool)

(declare-fun res!480071 () Bool)

(declare-fun e!402652 () Bool)

(assert (=> b!717141 (=> (not res!480071) (not e!402652))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40599 (_ BitVec 32)) Bool)

(assert (=> b!717141 (= res!480071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!717142 () Bool)

(declare-fun res!480066 () Bool)

(assert (=> b!717142 (=> (not res!480066) (not e!402654))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!717142 (= res!480066 (validKeyInArray!0 (select (arr!19429 a!3186) j!159)))))

(declare-fun b!717143 () Bool)

(declare-fun res!480067 () Bool)

(assert (=> b!717143 (=> (not res!480067) (not e!402654))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!717143 (= res!480067 (and (= (size!19850 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19850 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19850 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!717144 () Bool)

(assert (=> b!717144 (= e!402652 (bvsgt #b00000000000000000000000000000000 (size!19850 a!3186)))))

(declare-fun b!717145 () Bool)

(declare-fun res!480068 () Bool)

(assert (=> b!717145 (=> (not res!480068) (not e!402654))))

(declare-fun arrayContainsKey!0 (array!40599 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!717145 (= res!480068 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!717146 () Bool)

(assert (=> b!717146 (= e!402654 e!402652)))

(declare-fun res!480070 () Bool)

(assert (=> b!717146 (=> (not res!480070) (not e!402652))))

(declare-datatypes ((SeekEntryResult!7036 0))(
  ( (MissingZero!7036 (index!30511 (_ BitVec 32))) (Found!7036 (index!30512 (_ BitVec 32))) (Intermediate!7036 (undefined!7848 Bool) (index!30513 (_ BitVec 32)) (x!61561 (_ BitVec 32))) (Undefined!7036) (MissingVacant!7036 (index!30514 (_ BitVec 32))) )
))
(declare-fun lt!318995 () SeekEntryResult!7036)

(assert (=> b!717146 (= res!480070 (or (= lt!318995 (MissingZero!7036 i!1173)) (= lt!318995 (MissingVacant!7036 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40599 (_ BitVec 32)) SeekEntryResult!7036)

(assert (=> b!717146 (= lt!318995 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!63750 res!480069) b!717143))

(assert (= (and b!717143 res!480067) b!717142))

(assert (= (and b!717142 res!480066) b!717140))

(assert (= (and b!717140 res!480072) b!717145))

(assert (= (and b!717145 res!480068) b!717146))

(assert (= (and b!717146 res!480070) b!717141))

(assert (= (and b!717141 res!480071) b!717144))

(declare-fun m!673195 () Bool)

(assert (=> b!717142 m!673195))

(assert (=> b!717142 m!673195))

(declare-fun m!673197 () Bool)

(assert (=> b!717142 m!673197))

(declare-fun m!673199 () Bool)

(assert (=> b!717141 m!673199))

(declare-fun m!673201 () Bool)

(assert (=> start!63750 m!673201))

(declare-fun m!673203 () Bool)

(assert (=> start!63750 m!673203))

(declare-fun m!673205 () Bool)

(assert (=> b!717146 m!673205))

(declare-fun m!673207 () Bool)

(assert (=> b!717145 m!673207))

(declare-fun m!673209 () Bool)

(assert (=> b!717140 m!673209))

(check-sat (not start!63750) (not b!717141) (not b!717142) (not b!717145) (not b!717140) (not b!717146))
(check-sat)
