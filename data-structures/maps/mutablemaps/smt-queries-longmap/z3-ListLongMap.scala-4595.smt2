; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64104 () Bool)

(assert start!64104)

(declare-fun b!719690 () Bool)

(declare-fun res!482232 () Bool)

(declare-fun e!403775 () Bool)

(assert (=> b!719690 (=> (not res!482232) (not e!403775))))

(declare-datatypes ((array!40752 0))(
  ( (array!40753 (arr!19498 (Array (_ BitVec 32) (_ BitVec 64))) (size!19919 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40752)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40752 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!719690 (= res!482232 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!719691 () Bool)

(declare-fun e!403774 () Bool)

(assert (=> b!719691 (= e!403775 e!403774)))

(declare-fun res!482229 () Bool)

(assert (=> b!719691 (=> (not res!482229) (not e!403774))))

(declare-datatypes ((SeekEntryResult!7105 0))(
  ( (MissingZero!7105 (index!30787 (_ BitVec 32))) (Found!7105 (index!30788 (_ BitVec 32))) (Intermediate!7105 (undefined!7917 Bool) (index!30789 (_ BitVec 32)) (x!61817 (_ BitVec 32))) (Undefined!7105) (MissingVacant!7105 (index!30790 (_ BitVec 32))) )
))
(declare-fun lt!319619 () SeekEntryResult!7105)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!719691 (= res!482229 (or (= lt!319619 (MissingZero!7105 i!1173)) (= lt!319619 (MissingVacant!7105 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40752 (_ BitVec 32)) SeekEntryResult!7105)

(assert (=> b!719691 (= lt!319619 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!719692 () Bool)

(assert (=> b!719692 (= e!403774 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19498 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsgt x!1131 resIntermediateX!5) (bvsge mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun b!719693 () Bool)

(declare-fun res!482231 () Bool)

(assert (=> b!719693 (=> (not res!482231) (not e!403775))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!719693 (= res!482231 (and (= (size!19919 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!19919 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!19919 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!719694 () Bool)

(declare-fun res!482226 () Bool)

(assert (=> b!719694 (=> (not res!482226) (not e!403774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40752 (_ BitVec 32)) Bool)

(assert (=> b!719694 (= res!482226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!719695 () Bool)

(declare-fun res!482224 () Bool)

(assert (=> b!719695 (=> (not res!482224) (not e!403774))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40752 (_ BitVec 32)) SeekEntryResult!7105)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!719695 (= res!482224 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19498 a!3186) j!159) mask!3328) (select (arr!19498 a!3186) j!159) a!3186 mask!3328) (Intermediate!7105 false resIntermediateIndex!5 resIntermediateX!5)))))

(declare-fun b!719696 () Bool)

(declare-fun res!482228 () Bool)

(assert (=> b!719696 (=> (not res!482228) (not e!403774))))

(declare-datatypes ((List!13553 0))(
  ( (Nil!13550) (Cons!13549 (h!14597 (_ BitVec 64)) (t!19876 List!13553)) )
))
(declare-fun arrayNoDuplicates!0 (array!40752 (_ BitVec 32) List!13553) Bool)

(assert (=> b!719696 (= res!482228 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13550))))

(declare-fun res!482230 () Bool)

(assert (=> start!64104 (=> (not res!482230) (not e!403775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64104 (= res!482230 (validMask!0 mask!3328))))

(assert (=> start!64104 e!403775))

(assert (=> start!64104 true))

(declare-fun array_inv!15272 (array!40752) Bool)

(assert (=> start!64104 (array_inv!15272 a!3186)))

(declare-fun b!719697 () Bool)

(declare-fun res!482223 () Bool)

(assert (=> b!719697 (=> (not res!482223) (not e!403774))))

(assert (=> b!719697 (= res!482223 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!19919 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!19919 a!3186))))))

(declare-fun b!719698 () Bool)

(declare-fun res!482225 () Bool)

(assert (=> b!719698 (=> (not res!482225) (not e!403775))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!719698 (= res!482225 (validKeyInArray!0 (select (arr!19498 a!3186) j!159)))))

(declare-fun b!719699 () Bool)

(declare-fun res!482227 () Bool)

(assert (=> b!719699 (=> (not res!482227) (not e!403775))))

(assert (=> b!719699 (= res!482227 (validKeyInArray!0 k0!2102))))

(assert (= (and start!64104 res!482230) b!719693))

(assert (= (and b!719693 res!482231) b!719698))

(assert (= (and b!719698 res!482225) b!719699))

(assert (= (and b!719699 res!482227) b!719690))

(assert (= (and b!719690 res!482232) b!719691))

(assert (= (and b!719691 res!482229) b!719694))

(assert (= (and b!719694 res!482226) b!719696))

(assert (= (and b!719696 res!482228) b!719697))

(assert (= (and b!719697 res!482223) b!719695))

(assert (= (and b!719695 res!482224) b!719692))

(declare-fun m!675121 () Bool)

(assert (=> b!719691 m!675121))

(declare-fun m!675123 () Bool)

(assert (=> b!719698 m!675123))

(assert (=> b!719698 m!675123))

(declare-fun m!675125 () Bool)

(assert (=> b!719698 m!675125))

(declare-fun m!675127 () Bool)

(assert (=> b!719692 m!675127))

(declare-fun m!675129 () Bool)

(assert (=> start!64104 m!675129))

(declare-fun m!675131 () Bool)

(assert (=> start!64104 m!675131))

(declare-fun m!675133 () Bool)

(assert (=> b!719694 m!675133))

(assert (=> b!719695 m!675123))

(assert (=> b!719695 m!675123))

(declare-fun m!675135 () Bool)

(assert (=> b!719695 m!675135))

(assert (=> b!719695 m!675135))

(assert (=> b!719695 m!675123))

(declare-fun m!675137 () Bool)

(assert (=> b!719695 m!675137))

(declare-fun m!675139 () Bool)

(assert (=> b!719696 m!675139))

(declare-fun m!675141 () Bool)

(assert (=> b!719690 m!675141))

(declare-fun m!675143 () Bool)

(assert (=> b!719699 m!675143))

(check-sat (not start!64104) (not b!719691) (not b!719694) (not b!719690) (not b!719699) (not b!719698) (not b!719696) (not b!719695))
(check-sat)
