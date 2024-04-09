; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66484 () Bool)

(assert start!66484)

(declare-fun b!765685 () Bool)

(declare-fun e!426445 () Bool)

(declare-fun e!426444 () Bool)

(assert (=> b!765685 (= e!426445 e!426444)))

(declare-fun res!518059 () Bool)

(assert (=> b!765685 (=> (not res!518059) (not e!426444))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7816 0))(
  ( (MissingZero!7816 (index!33631 (_ BitVec 32))) (Found!7816 (index!33632 (_ BitVec 32))) (Intermediate!7816 (undefined!8628 Bool) (index!33633 (_ BitVec 32)) (x!64567 (_ BitVec 32))) (Undefined!7816) (MissingVacant!7816 (index!33634 (_ BitVec 32))) )
))
(declare-fun lt!340627 () SeekEntryResult!7816)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!42216 0))(
  ( (array!42217 (arr!20209 (Array (_ BitVec 32) (_ BitVec 64))) (size!20630 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42216)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42216 (_ BitVec 32)) SeekEntryResult!7816)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!765685 (= res!518059 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20209 a!3186) j!159) mask!3328) (select (arr!20209 a!3186) j!159) a!3186 mask!3328) lt!340627))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!765685 (= lt!340627 (Intermediate!7816 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!765686 () Bool)

(declare-fun res!518060 () Bool)

(assert (=> b!765686 (=> (not res!518060) (not e!426444))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!765686 (= res!518060 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20209 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!765687 () Bool)

(declare-fun e!426446 () Bool)

(declare-fun e!426440 () Bool)

(assert (=> b!765687 (= e!426446 e!426440)))

(declare-fun res!518057 () Bool)

(assert (=> b!765687 (=> (not res!518057) (not e!426440))))

(declare-fun lt!340625 () SeekEntryResult!7816)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42216 (_ BitVec 32)) SeekEntryResult!7816)

(assert (=> b!765687 (= res!518057 (= (seekEntryOrOpen!0 (select (arr!20209 a!3186) j!159) a!3186 mask!3328) lt!340625))))

(assert (=> b!765687 (= lt!340625 (Found!7816 j!159))))

(declare-fun b!765688 () Bool)

(declare-fun res!518050 () Bool)

(assert (=> b!765688 (=> (not res!518050) (not e!426445))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42216 (_ BitVec 32)) Bool)

(assert (=> b!765688 (= res!518050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!765689 () Bool)

(declare-fun res!518054 () Bool)

(assert (=> b!765689 (=> (not res!518054) (not e!426444))))

(declare-fun e!426442 () Bool)

(assert (=> b!765689 (= res!518054 e!426442)))

(declare-fun c!84207 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!765689 (= c!84207 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!765690 () Bool)

(declare-fun e!426439 () Bool)

(assert (=> b!765690 (= e!426439 e!426445)))

(declare-fun res!518064 () Bool)

(assert (=> b!765690 (=> (not res!518064) (not e!426445))))

(declare-fun lt!340626 () SeekEntryResult!7816)

(assert (=> b!765690 (= res!518064 (or (= lt!340626 (MissingZero!7816 i!1173)) (= lt!340626 (MissingVacant!7816 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!765690 (= lt!340626 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!518051 () Bool)

(assert (=> start!66484 (=> (not res!518051) (not e!426439))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66484 (= res!518051 (validMask!0 mask!3328))))

(assert (=> start!66484 e!426439))

(assert (=> start!66484 true))

(declare-fun array_inv!15983 (array!42216) Bool)

(assert (=> start!66484 (array_inv!15983 a!3186)))

(declare-fun b!765691 () Bool)

(declare-fun res!518061 () Bool)

(assert (=> b!765691 (=> (not res!518061) (not e!426445))))

(declare-datatypes ((List!14264 0))(
  ( (Nil!14261) (Cons!14260 (h!15350 (_ BitVec 64)) (t!20587 List!14264)) )
))
(declare-fun arrayNoDuplicates!0 (array!42216 (_ BitVec 32) List!14264) Bool)

(assert (=> b!765691 (= res!518061 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14261))))

(declare-fun b!765692 () Bool)

(declare-fun res!518055 () Bool)

(assert (=> b!765692 (=> (not res!518055) (not e!426439))))

(declare-fun arrayContainsKey!0 (array!42216 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!765692 (= res!518055 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!765693 () Bool)

(declare-fun res!518063 () Bool)

(assert (=> b!765693 (=> (not res!518063) (not e!426439))))

(assert (=> b!765693 (= res!518063 (and (= (size!20630 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20630 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20630 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!765694 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!765694 (= e!426442 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20209 a!3186) j!159) a!3186 mask!3328) lt!340627))))

(declare-fun b!765695 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42216 (_ BitVec 32)) SeekEntryResult!7816)

(assert (=> b!765695 (= e!426442 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20209 a!3186) j!159) a!3186 mask!3328) (Found!7816 j!159)))))

(declare-fun b!765696 () Bool)

(declare-fun e!426443 () Bool)

(assert (=> b!765696 (= e!426443 (not true))))

(assert (=> b!765696 e!426446))

(declare-fun res!518058 () Bool)

(assert (=> b!765696 (=> (not res!518058) (not e!426446))))

(assert (=> b!765696 (= res!518058 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26358 0))(
  ( (Unit!26359) )
))
(declare-fun lt!340630 () Unit!26358)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42216 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26358)

(assert (=> b!765696 (= lt!340630 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!765697 () Bool)

(declare-fun res!518056 () Bool)

(assert (=> b!765697 (=> (not res!518056) (not e!426439))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!765697 (= res!518056 (validKeyInArray!0 k0!2102))))

(declare-fun b!765698 () Bool)

(declare-fun res!518062 () Bool)

(assert (=> b!765698 (=> (not res!518062) (not e!426445))))

(assert (=> b!765698 (= res!518062 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20630 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20630 a!3186))))))

(declare-fun b!765699 () Bool)

(assert (=> b!765699 (= e!426440 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20209 a!3186) j!159) a!3186 mask!3328) lt!340625))))

(declare-fun b!765700 () Bool)

(assert (=> b!765700 (= e!426444 e!426443)))

(declare-fun res!518052 () Bool)

(assert (=> b!765700 (=> (not res!518052) (not e!426443))))

(declare-fun lt!340628 () (_ BitVec 64))

(declare-fun lt!340629 () array!42216)

(assert (=> b!765700 (= res!518052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!340628 mask!3328) lt!340628 lt!340629 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!340628 lt!340629 mask!3328)))))

(assert (=> b!765700 (= lt!340628 (select (store (arr!20209 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!765700 (= lt!340629 (array!42217 (store (arr!20209 a!3186) i!1173 k0!2102) (size!20630 a!3186)))))

(declare-fun b!765701 () Bool)

(declare-fun res!518053 () Bool)

(assert (=> b!765701 (=> (not res!518053) (not e!426439))))

(assert (=> b!765701 (= res!518053 (validKeyInArray!0 (select (arr!20209 a!3186) j!159)))))

(assert (= (and start!66484 res!518051) b!765693))

(assert (= (and b!765693 res!518063) b!765701))

(assert (= (and b!765701 res!518053) b!765697))

(assert (= (and b!765697 res!518056) b!765692))

(assert (= (and b!765692 res!518055) b!765690))

(assert (= (and b!765690 res!518064) b!765688))

(assert (= (and b!765688 res!518050) b!765691))

(assert (= (and b!765691 res!518061) b!765698))

(assert (= (and b!765698 res!518062) b!765685))

(assert (= (and b!765685 res!518059) b!765686))

(assert (= (and b!765686 res!518060) b!765689))

(assert (= (and b!765689 c!84207) b!765694))

(assert (= (and b!765689 (not c!84207)) b!765695))

(assert (= (and b!765689 res!518054) b!765700))

(assert (= (and b!765700 res!518052) b!765696))

(assert (= (and b!765696 res!518058) b!765687))

(assert (= (and b!765687 res!518057) b!765699))

(declare-fun m!711819 () Bool)

(assert (=> b!765695 m!711819))

(assert (=> b!765695 m!711819))

(declare-fun m!711821 () Bool)

(assert (=> b!765695 m!711821))

(declare-fun m!711823 () Bool)

(assert (=> b!765696 m!711823))

(declare-fun m!711825 () Bool)

(assert (=> b!765696 m!711825))

(declare-fun m!711827 () Bool)

(assert (=> b!765692 m!711827))

(declare-fun m!711829 () Bool)

(assert (=> b!765697 m!711829))

(declare-fun m!711831 () Bool)

(assert (=> b!765691 m!711831))

(declare-fun m!711833 () Bool)

(assert (=> start!66484 m!711833))

(declare-fun m!711835 () Bool)

(assert (=> start!66484 m!711835))

(assert (=> b!765687 m!711819))

(assert (=> b!765687 m!711819))

(declare-fun m!711837 () Bool)

(assert (=> b!765687 m!711837))

(assert (=> b!765694 m!711819))

(assert (=> b!765694 m!711819))

(declare-fun m!711839 () Bool)

(assert (=> b!765694 m!711839))

(assert (=> b!765699 m!711819))

(assert (=> b!765699 m!711819))

(declare-fun m!711841 () Bool)

(assert (=> b!765699 m!711841))

(declare-fun m!711843 () Bool)

(assert (=> b!765686 m!711843))

(assert (=> b!765685 m!711819))

(assert (=> b!765685 m!711819))

(declare-fun m!711845 () Bool)

(assert (=> b!765685 m!711845))

(assert (=> b!765685 m!711845))

(assert (=> b!765685 m!711819))

(declare-fun m!711847 () Bool)

(assert (=> b!765685 m!711847))

(assert (=> b!765701 m!711819))

(assert (=> b!765701 m!711819))

(declare-fun m!711849 () Bool)

(assert (=> b!765701 m!711849))

(declare-fun m!711851 () Bool)

(assert (=> b!765690 m!711851))

(declare-fun m!711853 () Bool)

(assert (=> b!765700 m!711853))

(declare-fun m!711855 () Bool)

(assert (=> b!765700 m!711855))

(assert (=> b!765700 m!711853))

(declare-fun m!711857 () Bool)

(assert (=> b!765700 m!711857))

(declare-fun m!711859 () Bool)

(assert (=> b!765700 m!711859))

(declare-fun m!711861 () Bool)

(assert (=> b!765700 m!711861))

(declare-fun m!711863 () Bool)

(assert (=> b!765688 m!711863))

(check-sat (not b!765697) (not b!765688) (not start!66484) (not b!765695) (not b!765687) (not b!765700) (not b!765699) (not b!765696) (not b!765690) (not b!765694) (not b!765701) (not b!765692) (not b!765691) (not b!765685))
(check-sat)
