; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66220 () Bool)

(assert start!66220)

(declare-fun b!762147 () Bool)

(declare-fun res!515434 () Bool)

(declare-fun e!424886 () Bool)

(assert (=> b!762147 (=> (not res!515434) (not e!424886))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42078 0))(
  ( (array!42079 (arr!20143 (Array (_ BitVec 32) (_ BitVec 64))) (size!20564 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42078)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!762147 (= res!515434 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20564 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20564 a!3186))))))

(declare-fun b!762148 () Bool)

(assert (=> b!762148 (= e!424886 false)))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7750 0))(
  ( (MissingZero!7750 (index!33367 (_ BitVec 32))) (Found!7750 (index!33368 (_ BitVec 32))) (Intermediate!7750 (undefined!8562 Bool) (index!33369 (_ BitVec 32)) (x!64307 (_ BitVec 32))) (Undefined!7750) (MissingVacant!7750 (index!33370 (_ BitVec 32))) )
))
(declare-fun lt!339489 () SeekEntryResult!7750)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42078 (_ BitVec 32)) SeekEntryResult!7750)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!762148 (= lt!339489 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20143 a!3186) j!159) mask!3328) (select (arr!20143 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!762149 () Bool)

(declare-fun res!515432 () Bool)

(assert (=> b!762149 (=> (not res!515432) (not e!424886))))

(declare-datatypes ((List!14198 0))(
  ( (Nil!14195) (Cons!14194 (h!15278 (_ BitVec 64)) (t!20521 List!14198)) )
))
(declare-fun arrayNoDuplicates!0 (array!42078 (_ BitVec 32) List!14198) Bool)

(assert (=> b!762149 (= res!515432 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14195))))

(declare-fun b!762150 () Bool)

(declare-fun res!515431 () Bool)

(declare-fun e!424884 () Bool)

(assert (=> b!762150 (=> (not res!515431) (not e!424884))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!762150 (= res!515431 (and (= (size!20564 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20564 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20564 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!762151 () Bool)

(declare-fun res!515429 () Bool)

(assert (=> b!762151 (=> (not res!515429) (not e!424886))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42078 (_ BitVec 32)) Bool)

(assert (=> b!762151 (= res!515429 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!762152 () Bool)

(assert (=> b!762152 (= e!424884 e!424886)))

(declare-fun res!515435 () Bool)

(assert (=> b!762152 (=> (not res!515435) (not e!424886))))

(declare-fun lt!339490 () SeekEntryResult!7750)

(assert (=> b!762152 (= res!515435 (or (= lt!339490 (MissingZero!7750 i!1173)) (= lt!339490 (MissingVacant!7750 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42078 (_ BitVec 32)) SeekEntryResult!7750)

(assert (=> b!762152 (= lt!339490 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!762154 () Bool)

(declare-fun res!515428 () Bool)

(assert (=> b!762154 (=> (not res!515428) (not e!424884))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!762154 (= res!515428 (validKeyInArray!0 (select (arr!20143 a!3186) j!159)))))

(declare-fun b!762155 () Bool)

(declare-fun res!515433 () Bool)

(assert (=> b!762155 (=> (not res!515433) (not e!424884))))

(declare-fun arrayContainsKey!0 (array!42078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!762155 (= res!515433 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!762153 () Bool)

(declare-fun res!515436 () Bool)

(assert (=> b!762153 (=> (not res!515436) (not e!424884))))

(assert (=> b!762153 (= res!515436 (validKeyInArray!0 k0!2102))))

(declare-fun res!515430 () Bool)

(assert (=> start!66220 (=> (not res!515430) (not e!424884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66220 (= res!515430 (validMask!0 mask!3328))))

(assert (=> start!66220 e!424884))

(assert (=> start!66220 true))

(declare-fun array_inv!15917 (array!42078) Bool)

(assert (=> start!66220 (array_inv!15917 a!3186)))

(assert (= (and start!66220 res!515430) b!762150))

(assert (= (and b!762150 res!515431) b!762154))

(assert (= (and b!762154 res!515428) b!762153))

(assert (= (and b!762153 res!515436) b!762155))

(assert (= (and b!762155 res!515433) b!762152))

(assert (= (and b!762152 res!515435) b!762151))

(assert (= (and b!762151 res!515429) b!762149))

(assert (= (and b!762149 res!515432) b!762147))

(assert (= (and b!762147 res!515434) b!762148))

(declare-fun m!708999 () Bool)

(assert (=> b!762155 m!708999))

(declare-fun m!709001 () Bool)

(assert (=> b!762152 m!709001))

(declare-fun m!709003 () Bool)

(assert (=> b!762154 m!709003))

(assert (=> b!762154 m!709003))

(declare-fun m!709005 () Bool)

(assert (=> b!762154 m!709005))

(assert (=> b!762148 m!709003))

(assert (=> b!762148 m!709003))

(declare-fun m!709007 () Bool)

(assert (=> b!762148 m!709007))

(assert (=> b!762148 m!709007))

(assert (=> b!762148 m!709003))

(declare-fun m!709009 () Bool)

(assert (=> b!762148 m!709009))

(declare-fun m!709011 () Bool)

(assert (=> b!762153 m!709011))

(declare-fun m!709013 () Bool)

(assert (=> b!762151 m!709013))

(declare-fun m!709015 () Bool)

(assert (=> start!66220 m!709015))

(declare-fun m!709017 () Bool)

(assert (=> start!66220 m!709017))

(declare-fun m!709019 () Bool)

(assert (=> b!762149 m!709019))

(check-sat (not b!762149) (not start!66220) (not b!762152) (not b!762155) (not b!762154) (not b!762153) (not b!762148) (not b!762151))
(check-sat)
