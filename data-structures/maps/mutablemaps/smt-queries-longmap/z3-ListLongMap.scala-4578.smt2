; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63954 () Bool)

(assert start!63954)

(declare-fun b!718119 () Bool)

(declare-fun e!403209 () Bool)

(assert (=> b!718119 (= e!403209 false)))

(declare-datatypes ((array!40647 0))(
  ( (array!40648 (arr!19447 (Array (_ BitVec 32) (_ BitVec 64))) (size!19868 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40647)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!319283 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!718119 (= lt!319283 (toIndex!0 (select (arr!19447 a!3186) j!159) mask!3328))))

(declare-fun b!718121 () Bool)

(declare-fun res!480740 () Bool)

(declare-fun e!403208 () Bool)

(assert (=> b!718121 (=> (not res!480740) (not e!403208))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!718121 (= res!480740 (validKeyInArray!0 (select (arr!19447 a!3186) j!159)))))

(declare-fun b!718122 () Bool)

(declare-fun res!480742 () Bool)

(assert (=> b!718122 (=> (not res!480742) (not e!403208))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!718122 (= res!480742 (validKeyInArray!0 k0!2102))))

(declare-fun b!718123 () Bool)

(declare-fun res!480746 () Bool)

(assert (=> b!718123 (=> (not res!480746) (not e!403208))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!718123 (= res!480746 (and (= (size!19868 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19868 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19868 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!718124 () Bool)

(declare-fun res!480745 () Bool)

(assert (=> b!718124 (=> (not res!480745) (not e!403208))))

(declare-fun arrayContainsKey!0 (array!40647 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!718124 (= res!480745 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!718125 () Bool)

(declare-fun res!480747 () Bool)

(assert (=> b!718125 (=> (not res!480747) (not e!403209))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40647 (_ BitVec 32)) Bool)

(assert (=> b!718125 (= res!480747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!480741 () Bool)

(assert (=> start!63954 (=> (not res!480741) (not e!403208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!63954 (= res!480741 (validMask!0 mask!3328))))

(assert (=> start!63954 e!403208))

(assert (=> start!63954 true))

(declare-fun array_inv!15221 (array!40647) Bool)

(assert (=> start!63954 (array_inv!15221 a!3186)))

(declare-fun b!718120 () Bool)

(declare-fun res!480744 () Bool)

(assert (=> b!718120 (=> (not res!480744) (not e!403209))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!718120 (= res!480744 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19868 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19868 a!3186))))))

(declare-fun b!718126 () Bool)

(declare-fun res!480739 () Bool)

(assert (=> b!718126 (=> (not res!480739) (not e!403209))))

(declare-datatypes ((List!13502 0))(
  ( (Nil!13499) (Cons!13498 (h!14543 (_ BitVec 64)) (t!19825 List!13502)) )
))
(declare-fun arrayNoDuplicates!0 (array!40647 (_ BitVec 32) List!13502) Bool)

(assert (=> b!718126 (= res!480739 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13499))))

(declare-fun b!718127 () Bool)

(assert (=> b!718127 (= e!403208 e!403209)))

(declare-fun res!480743 () Bool)

(assert (=> b!718127 (=> (not res!480743) (not e!403209))))

(declare-datatypes ((SeekEntryResult!7054 0))(
  ( (MissingZero!7054 (index!30583 (_ BitVec 32))) (Found!7054 (index!30584 (_ BitVec 32))) (Intermediate!7054 (undefined!7866 Bool) (index!30585 (_ BitVec 32)) (x!61627 (_ BitVec 32))) (Undefined!7054) (MissingVacant!7054 (index!30586 (_ BitVec 32))) )
))
(declare-fun lt!319282 () SeekEntryResult!7054)

(assert (=> b!718127 (= res!480743 (or (= lt!319282 (MissingZero!7054 i!1173)) (= lt!319282 (MissingVacant!7054 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40647 (_ BitVec 32)) SeekEntryResult!7054)

(assert (=> b!718127 (= lt!319282 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!63954 res!480741) b!718123))

(assert (= (and b!718123 res!480746) b!718121))

(assert (= (and b!718121 res!480740) b!718122))

(assert (= (and b!718122 res!480742) b!718124))

(assert (= (and b!718124 res!480745) b!718127))

(assert (= (and b!718127 res!480743) b!718125))

(assert (= (and b!718125 res!480747) b!718126))

(assert (= (and b!718126 res!480739) b!718120))

(assert (= (and b!718120 res!480744) b!718119))

(declare-fun m!673911 () Bool)

(assert (=> b!718122 m!673911))

(declare-fun m!673913 () Bool)

(assert (=> start!63954 m!673913))

(declare-fun m!673915 () Bool)

(assert (=> start!63954 m!673915))

(declare-fun m!673917 () Bool)

(assert (=> b!718121 m!673917))

(assert (=> b!718121 m!673917))

(declare-fun m!673919 () Bool)

(assert (=> b!718121 m!673919))

(declare-fun m!673921 () Bool)

(assert (=> b!718124 m!673921))

(declare-fun m!673923 () Bool)

(assert (=> b!718127 m!673923))

(declare-fun m!673925 () Bool)

(assert (=> b!718126 m!673925))

(declare-fun m!673927 () Bool)

(assert (=> b!718125 m!673927))

(assert (=> b!718119 m!673917))

(assert (=> b!718119 m!673917))

(declare-fun m!673929 () Bool)

(assert (=> b!718119 m!673929))

(check-sat (not b!718125) (not b!718119) (not b!718121) (not b!718126) (not start!63954) (not b!718127) (not b!718124) (not b!718122))
(check-sat)
