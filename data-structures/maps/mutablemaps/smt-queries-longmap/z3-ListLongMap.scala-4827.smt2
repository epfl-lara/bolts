; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66322 () Bool)

(assert start!66322)

(declare-fun b!764148 () Bool)

(declare-fun res!517170 () Bool)

(declare-fun e!425633 () Bool)

(assert (=> b!764148 (=> (not res!517170) (not e!425633))))

(declare-datatypes ((array!42180 0))(
  ( (array!42181 (arr!20194 (Array (_ BitVec 32) (_ BitVec 64))) (size!20615 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42180)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42180 (_ BitVec 32)) Bool)

(assert (=> b!764148 (= res!517170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!764149 () Bool)

(declare-fun res!517168 () Bool)

(declare-fun e!425629 () Bool)

(assert (=> b!764149 (=> (not res!517168) (not e!425629))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!764149 (= res!517168 (validKeyInArray!0 k0!2102))))

(declare-fun b!764150 () Bool)

(declare-fun e!425628 () Bool)

(assert (=> b!764150 (= e!425633 e!425628)))

(declare-fun res!517178 () Bool)

(assert (=> b!764150 (=> (not res!517178) (not e!425628))))

(declare-datatypes ((SeekEntryResult!7801 0))(
  ( (MissingZero!7801 (index!33571 (_ BitVec 32))) (Found!7801 (index!33572 (_ BitVec 32))) (Intermediate!7801 (undefined!8613 Bool) (index!33573 (_ BitVec 32)) (x!64494 (_ BitVec 32))) (Undefined!7801) (MissingVacant!7801 (index!33574 (_ BitVec 32))) )
))
(declare-fun lt!340066 () SeekEntryResult!7801)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42180 (_ BitVec 32)) SeekEntryResult!7801)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!764150 (= res!517178 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20194 a!3186) j!159) mask!3328) (select (arr!20194 a!3186) j!159) a!3186 mask!3328) lt!340066))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!764150 (= lt!340066 (Intermediate!7801 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!764151 () Bool)

(declare-fun e!425631 () Bool)

(assert (=> b!764151 (= e!425631 (not true))))

(assert (=> b!764151 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26328 0))(
  ( (Unit!26329) )
))
(declare-fun lt!340064 () Unit!26328)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42180 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26328)

(assert (=> b!764151 (= lt!340064 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!764152 () Bool)

(declare-fun res!517173 () Bool)

(assert (=> b!764152 (=> (not res!517173) (not e!425628))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!764152 (= res!517173 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20194 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!764153 () Bool)

(declare-fun res!517175 () Bool)

(assert (=> b!764153 (=> (not res!517175) (not e!425633))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!764153 (= res!517175 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20615 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20615 a!3186))))))

(declare-fun e!425630 () Bool)

(declare-fun b!764154 () Bool)

(assert (=> b!764154 (= e!425630 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20194 a!3186) j!159) a!3186 mask!3328) lt!340066))))

(declare-fun b!764155 () Bool)

(declare-fun res!517179 () Bool)

(assert (=> b!764155 (=> (not res!517179) (not e!425633))))

(declare-datatypes ((List!14249 0))(
  ( (Nil!14246) (Cons!14245 (h!15329 (_ BitVec 64)) (t!20572 List!14249)) )
))
(declare-fun arrayNoDuplicates!0 (array!42180 (_ BitVec 32) List!14249) Bool)

(assert (=> b!764155 (= res!517179 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14246))))

(declare-fun b!764156 () Bool)

(declare-fun res!517167 () Bool)

(assert (=> b!764156 (=> (not res!517167) (not e!425629))))

(declare-fun arrayContainsKey!0 (array!42180 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!764156 (= res!517167 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!764157 () Bool)

(declare-fun res!517177 () Bool)

(assert (=> b!764157 (=> (not res!517177) (not e!425629))))

(assert (=> b!764157 (= res!517177 (and (= (size!20615 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20615 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20615 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!517176 () Bool)

(assert (=> start!66322 (=> (not res!517176) (not e!425629))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66322 (= res!517176 (validMask!0 mask!3328))))

(assert (=> start!66322 e!425629))

(assert (=> start!66322 true))

(declare-fun array_inv!15968 (array!42180) Bool)

(assert (=> start!66322 (array_inv!15968 a!3186)))

(declare-fun b!764158 () Bool)

(declare-fun res!517171 () Bool)

(assert (=> b!764158 (=> (not res!517171) (not e!425628))))

(assert (=> b!764158 (= res!517171 e!425630)))

(declare-fun c!83877 () Bool)

(assert (=> b!764158 (= c!83877 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!764159 () Bool)

(assert (=> b!764159 (= e!425628 e!425631)))

(declare-fun res!517172 () Bool)

(assert (=> b!764159 (=> (not res!517172) (not e!425631))))

(declare-fun lt!340062 () (_ BitVec 64))

(declare-fun lt!340063 () array!42180)

(assert (=> b!764159 (= res!517172 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340062 mask!3328) lt!340062 lt!340063 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340062 lt!340063 mask!3328)))))

(assert (=> b!764159 (= lt!340062 (select (store (arr!20194 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!764159 (= lt!340063 (array!42181 (store (arr!20194 a!3186) i!1173 k0!2102) (size!20615 a!3186)))))

(declare-fun b!764160 () Bool)

(declare-fun res!517169 () Bool)

(assert (=> b!764160 (=> (not res!517169) (not e!425629))))

(assert (=> b!764160 (= res!517169 (validKeyInArray!0 (select (arr!20194 a!3186) j!159)))))

(declare-fun b!764161 () Bool)

(assert (=> b!764161 (= e!425629 e!425633)))

(declare-fun res!517174 () Bool)

(assert (=> b!764161 (=> (not res!517174) (not e!425633))))

(declare-fun lt!340065 () SeekEntryResult!7801)

(assert (=> b!764161 (= res!517174 (or (= lt!340065 (MissingZero!7801 i!1173)) (= lt!340065 (MissingVacant!7801 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42180 (_ BitVec 32)) SeekEntryResult!7801)

(assert (=> b!764161 (= lt!340065 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!764162 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42180 (_ BitVec 32)) SeekEntryResult!7801)

(assert (=> b!764162 (= e!425630 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20194 a!3186) j!159) a!3186 mask!3328) (Found!7801 j!159)))))

(assert (= (and start!66322 res!517176) b!764157))

(assert (= (and b!764157 res!517177) b!764160))

(assert (= (and b!764160 res!517169) b!764149))

(assert (= (and b!764149 res!517168) b!764156))

(assert (= (and b!764156 res!517167) b!764161))

(assert (= (and b!764161 res!517174) b!764148))

(assert (= (and b!764148 res!517170) b!764155))

(assert (= (and b!764155 res!517179) b!764153))

(assert (= (and b!764153 res!517175) b!764150))

(assert (= (and b!764150 res!517178) b!764152))

(assert (= (and b!764152 res!517173) b!764158))

(assert (= (and b!764158 c!83877) b!764154))

(assert (= (and b!764158 (not c!83877)) b!764162))

(assert (= (and b!764158 res!517171) b!764159))

(assert (= (and b!764159 res!517172) b!764151))

(declare-fun m!710609 () Bool)

(assert (=> b!764149 m!710609))

(declare-fun m!710611 () Bool)

(assert (=> start!66322 m!710611))

(declare-fun m!710613 () Bool)

(assert (=> start!66322 m!710613))

(declare-fun m!710615 () Bool)

(assert (=> b!764150 m!710615))

(assert (=> b!764150 m!710615))

(declare-fun m!710617 () Bool)

(assert (=> b!764150 m!710617))

(assert (=> b!764150 m!710617))

(assert (=> b!764150 m!710615))

(declare-fun m!710619 () Bool)

(assert (=> b!764150 m!710619))

(declare-fun m!710621 () Bool)

(assert (=> b!764151 m!710621))

(declare-fun m!710623 () Bool)

(assert (=> b!764151 m!710623))

(declare-fun m!710625 () Bool)

(assert (=> b!764161 m!710625))

(declare-fun m!710627 () Bool)

(assert (=> b!764155 m!710627))

(declare-fun m!710629 () Bool)

(assert (=> b!764148 m!710629))

(assert (=> b!764162 m!710615))

(assert (=> b!764162 m!710615))

(declare-fun m!710631 () Bool)

(assert (=> b!764162 m!710631))

(assert (=> b!764154 m!710615))

(assert (=> b!764154 m!710615))

(declare-fun m!710633 () Bool)

(assert (=> b!764154 m!710633))

(assert (=> b!764160 m!710615))

(assert (=> b!764160 m!710615))

(declare-fun m!710635 () Bool)

(assert (=> b!764160 m!710635))

(declare-fun m!710637 () Bool)

(assert (=> b!764156 m!710637))

(declare-fun m!710639 () Bool)

(assert (=> b!764152 m!710639))

(declare-fun m!710641 () Bool)

(assert (=> b!764159 m!710641))

(declare-fun m!710643 () Bool)

(assert (=> b!764159 m!710643))

(declare-fun m!710645 () Bool)

(assert (=> b!764159 m!710645))

(declare-fun m!710647 () Bool)

(assert (=> b!764159 m!710647))

(declare-fun m!710649 () Bool)

(assert (=> b!764159 m!710649))

(assert (=> b!764159 m!710643))

(check-sat (not b!764148) (not b!764159) (not b!764161) (not b!764156) (not b!764155) (not b!764150) (not b!764149) (not start!66322) (not b!764154) (not b!764162) (not b!764160) (not b!764151))
(check-sat)
