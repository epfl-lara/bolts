; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65142 () Bool)

(assert start!65142)

(declare-datatypes ((array!41268 0))(
  ( (array!41269 (arr!19744 (Array (_ BitVec 32) (_ BitVec 64))) (size!20165 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41268)

(declare-fun lt!325872 () (_ BitVec 32))

(declare-fun e!411338 () Bool)

(declare-datatypes ((SeekEntryResult!7351 0))(
  ( (MissingZero!7351 (index!31771 (_ BitVec 32))) (Found!7351 (index!31772 (_ BitVec 32))) (Intermediate!7351 (undefined!8163 Bool) (index!31773 (_ BitVec 32)) (x!62806 (_ BitVec 32))) (Undefined!7351) (MissingVacant!7351 (index!31774 (_ BitVec 32))) )
))
(declare-fun lt!325861 () SeekEntryResult!7351)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!735114 () Bool)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41268 (_ BitVec 32)) SeekEntryResult!7351)

(assert (=> b!735114 (= e!411338 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325872 resIntermediateIndex!5 (select (arr!19744 a!3186) j!159) a!3186 mask!3328) lt!325861)))))

(declare-fun b!735115 () Bool)

(declare-fun res!494047 () Bool)

(declare-fun e!411334 () Bool)

(assert (=> b!735115 (=> (not res!494047) (not e!411334))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!735115 (= res!494047 (validKeyInArray!0 k0!2102))))

(declare-fun b!735116 () Bool)

(declare-fun res!494058 () Bool)

(declare-fun e!411337 () Bool)

(assert (=> b!735116 (=> (not res!494058) (not e!411337))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!735116 (= res!494058 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19744 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!735117 () Bool)

(declare-fun res!494041 () Bool)

(assert (=> b!735117 (=> (not res!494041) (not e!411334))))

(assert (=> b!735117 (= res!494041 (validKeyInArray!0 (select (arr!19744 a!3186) j!159)))))

(declare-fun b!735118 () Bool)

(declare-fun res!494053 () Bool)

(assert (=> b!735118 (=> (not res!494053) (not e!411334))))

(declare-fun arrayContainsKey!0 (array!41268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!735118 (= res!494053 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!735119 () Bool)

(declare-fun res!494049 () Bool)

(declare-fun e!411332 () Bool)

(assert (=> b!735119 (=> (not res!494049) (not e!411332))))

(declare-datatypes ((List!13799 0))(
  ( (Nil!13796) (Cons!13795 (h!14867 (_ BitVec 64)) (t!20122 List!13799)) )
))
(declare-fun arrayNoDuplicates!0 (array!41268 (_ BitVec 32) List!13799) Bool)

(assert (=> b!735119 (= res!494049 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13796))))

(declare-fun res!494042 () Bool)

(assert (=> start!65142 (=> (not res!494042) (not e!411334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65142 (= res!494042 (validMask!0 mask!3328))))

(assert (=> start!65142 e!411334))

(assert (=> start!65142 true))

(declare-fun array_inv!15518 (array!41268) Bool)

(assert (=> start!65142 (array_inv!15518 a!3186)))

(declare-fun e!411328 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!735120 () Bool)

(declare-fun lt!325862 () SeekEntryResult!7351)

(assert (=> b!735120 (= e!411328 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19744 a!3186) j!159) a!3186 mask!3328) lt!325862))))

(declare-fun b!735121 () Bool)

(declare-fun res!494044 () Bool)

(assert (=> b!735121 (=> (not res!494044) (not e!411332))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!735121 (= res!494044 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20165 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20165 a!3186))))))

(declare-fun e!411333 () Bool)

(declare-fun b!735122 () Bool)

(declare-fun lt!325873 () SeekEntryResult!7351)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41268 (_ BitVec 32)) SeekEntryResult!7351)

(assert (=> b!735122 (= e!411333 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19744 a!3186) j!159) a!3186 mask!3328) lt!325873))))

(declare-fun b!735123 () Bool)

(declare-fun e!411336 () Bool)

(declare-fun e!411329 () Bool)

(assert (=> b!735123 (= e!411336 e!411329)))

(declare-fun res!494051 () Bool)

(assert (=> b!735123 (=> res!494051 e!411329)))

(assert (=> b!735123 (= res!494051 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!325872 #b00000000000000000000000000000000) (bvsge lt!325872 (size!20165 a!3186))))))

(declare-datatypes ((Unit!25022 0))(
  ( (Unit!25023) )
))
(declare-fun lt!325867 () Unit!25022)

(declare-fun e!411330 () Unit!25022)

(assert (=> b!735123 (= lt!325867 e!411330)))

(declare-fun c!80917 () Bool)

(declare-fun lt!325863 () Bool)

(assert (=> b!735123 (= c!80917 lt!325863)))

(assert (=> b!735123 (= lt!325863 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735123 (= lt!325872 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!735124 () Bool)

(declare-fun Unit!25024 () Unit!25022)

(assert (=> b!735124 (= e!411330 Unit!25024)))

(declare-fun lt!325870 () SeekEntryResult!7351)

(assert (=> b!735124 (= lt!325870 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19744 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!735124 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325872 resIntermediateIndex!5 (select (arr!19744 a!3186) j!159) a!3186 mask!3328) lt!325861)))

(declare-fun b!735125 () Bool)

(assert (=> b!735125 (= e!411329 true)))

(declare-fun lt!325869 () (_ BitVec 64))

(declare-fun lt!325871 () array!41268)

(declare-fun lt!325864 () SeekEntryResult!7351)

(assert (=> b!735125 (= lt!325864 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325872 lt!325869 lt!325871 mask!3328))))

(declare-fun b!735126 () Bool)

(declare-fun res!494046 () Bool)

(assert (=> b!735126 (=> (not res!494046) (not e!411332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41268 (_ BitVec 32)) Bool)

(assert (=> b!735126 (= res!494046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!735127 () Bool)

(assert (=> b!735127 (= e!411338 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325872 (select (arr!19744 a!3186) j!159) a!3186 mask!3328) lt!325873)))))

(declare-fun b!735128 () Bool)

(assert (=> b!735128 (= e!411332 e!411337)))

(declare-fun res!494054 () Bool)

(assert (=> b!735128 (=> (not res!494054) (not e!411337))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!735128 (= res!494054 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19744 a!3186) j!159) mask!3328) (select (arr!19744 a!3186) j!159) a!3186 mask!3328) lt!325873))))

(assert (=> b!735128 (= lt!325873 (Intermediate!7351 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!735129 () Bool)

(declare-fun e!411335 () Bool)

(assert (=> b!735129 (= e!411335 (not e!411336))))

(declare-fun res!494045 () Bool)

(assert (=> b!735129 (=> res!494045 e!411336)))

(declare-fun lt!325866 () SeekEntryResult!7351)

(get-info :version)

(assert (=> b!735129 (= res!494045 (or (not ((_ is Intermediate!7351) lt!325866)) (bvsge x!1131 (x!62806 lt!325866))))))

(assert (=> b!735129 (= lt!325861 (Found!7351 j!159))))

(declare-fun e!411339 () Bool)

(assert (=> b!735129 e!411339))

(declare-fun res!494057 () Bool)

(assert (=> b!735129 (=> (not res!494057) (not e!411339))))

(assert (=> b!735129 (= res!494057 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!325868 () Unit!25022)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41268 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25022)

(assert (=> b!735129 (= lt!325868 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!735130 () Bool)

(declare-fun Unit!25025 () Unit!25022)

(assert (=> b!735130 (= e!411330 Unit!25025)))

(assert (=> b!735130 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!325872 (select (arr!19744 a!3186) j!159) a!3186 mask!3328) lt!325873)))

(declare-fun b!735131 () Bool)

(assert (=> b!735131 (= e!411334 e!411332)))

(declare-fun res!494048 () Bool)

(assert (=> b!735131 (=> (not res!494048) (not e!411332))))

(declare-fun lt!325865 () SeekEntryResult!7351)

(assert (=> b!735131 (= res!494048 (or (= lt!325865 (MissingZero!7351 i!1173)) (= lt!325865 (MissingVacant!7351 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41268 (_ BitVec 32)) SeekEntryResult!7351)

(assert (=> b!735131 (= lt!325865 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!735132 () Bool)

(assert (=> b!735132 (= e!411339 e!411328)))

(declare-fun res!494050 () Bool)

(assert (=> b!735132 (=> (not res!494050) (not e!411328))))

(assert (=> b!735132 (= res!494050 (= (seekEntryOrOpen!0 (select (arr!19744 a!3186) j!159) a!3186 mask!3328) lt!325862))))

(assert (=> b!735132 (= lt!325862 (Found!7351 j!159))))

(declare-fun b!735133 () Bool)

(declare-fun res!494052 () Bool)

(assert (=> b!735133 (=> (not res!494052) (not e!411337))))

(assert (=> b!735133 (= res!494052 e!411333)))

(declare-fun c!80919 () Bool)

(assert (=> b!735133 (= c!80919 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!735134 () Bool)

(assert (=> b!735134 (= e!411333 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19744 a!3186) j!159) a!3186 mask!3328) (Found!7351 j!159)))))

(declare-fun b!735135 () Bool)

(declare-fun res!494056 () Bool)

(assert (=> b!735135 (=> res!494056 e!411329)))

(assert (=> b!735135 (= res!494056 e!411338)))

(declare-fun c!80918 () Bool)

(assert (=> b!735135 (= c!80918 lt!325863)))

(declare-fun b!735136 () Bool)

(assert (=> b!735136 (= e!411337 e!411335)))

(declare-fun res!494043 () Bool)

(assert (=> b!735136 (=> (not res!494043) (not e!411335))))

(declare-fun lt!325874 () SeekEntryResult!7351)

(assert (=> b!735136 (= res!494043 (= lt!325874 lt!325866))))

(assert (=> b!735136 (= lt!325866 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!325869 lt!325871 mask!3328))))

(assert (=> b!735136 (= lt!325874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!325869 mask!3328) lt!325869 lt!325871 mask!3328))))

(assert (=> b!735136 (= lt!325869 (select (store (arr!19744 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!735136 (= lt!325871 (array!41269 (store (arr!19744 a!3186) i!1173 k0!2102) (size!20165 a!3186)))))

(declare-fun b!735137 () Bool)

(declare-fun res!494055 () Bool)

(assert (=> b!735137 (=> (not res!494055) (not e!411334))))

(assert (=> b!735137 (= res!494055 (and (= (size!20165 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20165 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20165 a!3186)) (not (= i!1173 j!159))))))

(assert (= (and start!65142 res!494042) b!735137))

(assert (= (and b!735137 res!494055) b!735117))

(assert (= (and b!735117 res!494041) b!735115))

(assert (= (and b!735115 res!494047) b!735118))

(assert (= (and b!735118 res!494053) b!735131))

(assert (= (and b!735131 res!494048) b!735126))

(assert (= (and b!735126 res!494046) b!735119))

(assert (= (and b!735119 res!494049) b!735121))

(assert (= (and b!735121 res!494044) b!735128))

(assert (= (and b!735128 res!494054) b!735116))

(assert (= (and b!735116 res!494058) b!735133))

(assert (= (and b!735133 c!80919) b!735122))

(assert (= (and b!735133 (not c!80919)) b!735134))

(assert (= (and b!735133 res!494052) b!735136))

(assert (= (and b!735136 res!494043) b!735129))

(assert (= (and b!735129 res!494057) b!735132))

(assert (= (and b!735132 res!494050) b!735120))

(assert (= (and b!735129 (not res!494045)) b!735123))

(assert (= (and b!735123 c!80917) b!735130))

(assert (= (and b!735123 (not c!80917)) b!735124))

(assert (= (and b!735123 (not res!494051)) b!735135))

(assert (= (and b!735135 c!80918) b!735127))

(assert (= (and b!735135 (not c!80918)) b!735114))

(assert (= (and b!735135 (not res!494056)) b!735125))

(declare-fun m!687643 () Bool)

(assert (=> b!735127 m!687643))

(assert (=> b!735127 m!687643))

(declare-fun m!687645 () Bool)

(assert (=> b!735127 m!687645))

(assert (=> b!735120 m!687643))

(assert (=> b!735120 m!687643))

(declare-fun m!687647 () Bool)

(assert (=> b!735120 m!687647))

(declare-fun m!687649 () Bool)

(assert (=> b!735115 m!687649))

(declare-fun m!687651 () Bool)

(assert (=> start!65142 m!687651))

(declare-fun m!687653 () Bool)

(assert (=> start!65142 m!687653))

(assert (=> b!735132 m!687643))

(assert (=> b!735132 m!687643))

(declare-fun m!687655 () Bool)

(assert (=> b!735132 m!687655))

(declare-fun m!687657 () Bool)

(assert (=> b!735131 m!687657))

(assert (=> b!735128 m!687643))

(assert (=> b!735128 m!687643))

(declare-fun m!687659 () Bool)

(assert (=> b!735128 m!687659))

(assert (=> b!735128 m!687659))

(assert (=> b!735128 m!687643))

(declare-fun m!687661 () Bool)

(assert (=> b!735128 m!687661))

(declare-fun m!687663 () Bool)

(assert (=> b!735136 m!687663))

(declare-fun m!687665 () Bool)

(assert (=> b!735136 m!687665))

(declare-fun m!687667 () Bool)

(assert (=> b!735136 m!687667))

(declare-fun m!687669 () Bool)

(assert (=> b!735136 m!687669))

(declare-fun m!687671 () Bool)

(assert (=> b!735136 m!687671))

(assert (=> b!735136 m!687665))

(declare-fun m!687673 () Bool)

(assert (=> b!735123 m!687673))

(assert (=> b!735114 m!687643))

(assert (=> b!735114 m!687643))

(declare-fun m!687675 () Bool)

(assert (=> b!735114 m!687675))

(assert (=> b!735124 m!687643))

(assert (=> b!735124 m!687643))

(declare-fun m!687677 () Bool)

(assert (=> b!735124 m!687677))

(assert (=> b!735124 m!687643))

(assert (=> b!735124 m!687675))

(declare-fun m!687679 () Bool)

(assert (=> b!735126 m!687679))

(assert (=> b!735130 m!687643))

(assert (=> b!735130 m!687643))

(assert (=> b!735130 m!687645))

(declare-fun m!687681 () Bool)

(assert (=> b!735129 m!687681))

(declare-fun m!687683 () Bool)

(assert (=> b!735129 m!687683))

(declare-fun m!687685 () Bool)

(assert (=> b!735116 m!687685))

(declare-fun m!687687 () Bool)

(assert (=> b!735119 m!687687))

(assert (=> b!735134 m!687643))

(assert (=> b!735134 m!687643))

(assert (=> b!735134 m!687677))

(assert (=> b!735117 m!687643))

(assert (=> b!735117 m!687643))

(declare-fun m!687689 () Bool)

(assert (=> b!735117 m!687689))

(declare-fun m!687691 () Bool)

(assert (=> b!735125 m!687691))

(assert (=> b!735122 m!687643))

(assert (=> b!735122 m!687643))

(declare-fun m!687693 () Bool)

(assert (=> b!735122 m!687693))

(declare-fun m!687695 () Bool)

(assert (=> b!735118 m!687695))

(check-sat (not b!735126) (not b!735132) (not b!735124) (not b!735127) (not b!735122) (not b!735131) (not b!735119) (not b!735129) (not b!735134) (not b!735118) (not b!735136) (not b!735114) (not b!735117) (not b!735120) (not start!65142) (not b!735115) (not b!735125) (not b!735128) (not b!735130) (not b!735123))
(check-sat)
