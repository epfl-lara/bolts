; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66682 () Bool)

(assert start!66682)

(declare-fun b!768064 () Bool)

(declare-fun res!519654 () Bool)

(declare-fun e!427732 () Bool)

(assert (=> b!768064 (=> (not res!519654) (not e!427732))))

(declare-fun e!427727 () Bool)

(assert (=> b!768064 (= res!519654 e!427727)))

(declare-fun c!84600 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!768064 (= c!84600 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!768065 () Bool)

(declare-fun res!519658 () Bool)

(declare-fun e!427730 () Bool)

(assert (=> b!768065 (=> res!519658 e!427730)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42276 0))(
  ( (array!42277 (arr!20236 (Array (_ BitVec 32) (_ BitVec 64))) (size!20657 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42276)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7843 0))(
  ( (MissingZero!7843 (index!33739 (_ BitVec 32))) (Found!7843 (index!33740 (_ BitVec 32))) (Intermediate!7843 (undefined!8655 Bool) (index!33741 (_ BitVec 32)) (x!64690 (_ BitVec 32))) (Undefined!7843) (MissingVacant!7843 (index!33742 (_ BitVec 32))) )
))
(declare-fun lt!341709 () SeekEntryResult!7843)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42276 (_ BitVec 32)) SeekEntryResult!7843)

(assert (=> b!768065 (= res!519658 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341709))))

(declare-fun b!768066 () Bool)

(declare-fun e!427724 () Bool)

(assert (=> b!768066 (= e!427724 e!427732)))

(declare-fun res!519663 () Bool)

(assert (=> b!768066 (=> (not res!519663) (not e!427732))))

(declare-fun lt!341712 () SeekEntryResult!7843)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42276 (_ BitVec 32)) SeekEntryResult!7843)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768066 (= res!519663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341712))))

(assert (=> b!768066 (= lt!341712 (Intermediate!7843 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!768067 () Bool)

(assert (=> b!768067 (= e!427727 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341712))))

(declare-fun b!768068 () Bool)

(declare-fun res!519660 () Bool)

(declare-fun e!427729 () Bool)

(assert (=> b!768068 (=> (not res!519660) (not e!427729))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!768068 (= res!519660 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!768070 () Bool)

(declare-fun res!519665 () Bool)

(assert (=> b!768070 (=> (not res!519665) (not e!427729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!768070 (= res!519665 (validKeyInArray!0 k0!2102))))

(declare-fun b!768071 () Bool)

(declare-fun res!519649 () Bool)

(assert (=> b!768071 (=> (not res!519649) (not e!427732))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!768071 (= res!519649 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20236 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!768072 () Bool)

(declare-fun res!519664 () Bool)

(assert (=> b!768072 (=> (not res!519664) (not e!427729))))

(assert (=> b!768072 (= res!519664 (and (= (size!20657 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20657 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20657 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!768073 () Bool)

(assert (=> b!768073 (= e!427727 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) (Found!7843 j!159)))))

(declare-fun b!768074 () Bool)

(declare-fun res!519653 () Bool)

(assert (=> b!768074 (=> (not res!519653) (not e!427724))))

(assert (=> b!768074 (= res!519653 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20657 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20657 a!3186))))))

(declare-fun b!768075 () Bool)

(declare-fun e!427731 () Bool)

(assert (=> b!768075 (= e!427731 e!427730)))

(declare-fun res!519652 () Bool)

(assert (=> b!768075 (=> res!519652 e!427730)))

(assert (=> b!768075 (= res!519652 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!341710 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!768075 (= lt!341710 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!768076 () Bool)

(assert (=> b!768076 (= e!427730 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341710 resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341709))))

(declare-fun b!768077 () Bool)

(declare-fun e!427725 () Bool)

(declare-fun e!427726 () Bool)

(assert (=> b!768077 (= e!427725 e!427726)))

(declare-fun res!519661 () Bool)

(assert (=> b!768077 (=> (not res!519661) (not e!427726))))

(declare-fun lt!341713 () SeekEntryResult!7843)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42276 (_ BitVec 32)) SeekEntryResult!7843)

(assert (=> b!768077 (= res!519661 (= (seekEntryOrOpen!0 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341713))))

(assert (=> b!768077 (= lt!341713 (Found!7843 j!159))))

(declare-fun b!768069 () Bool)

(assert (=> b!768069 (= e!427729 e!427724)))

(declare-fun res!519659 () Bool)

(assert (=> b!768069 (=> (not res!519659) (not e!427724))))

(declare-fun lt!341716 () SeekEntryResult!7843)

(assert (=> b!768069 (= res!519659 (or (= lt!341716 (MissingZero!7843 i!1173)) (= lt!341716 (MissingVacant!7843 i!1173))))))

(assert (=> b!768069 (= lt!341716 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun res!519656 () Bool)

(assert (=> start!66682 (=> (not res!519656) (not e!427729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66682 (= res!519656 (validMask!0 mask!3328))))

(assert (=> start!66682 e!427729))

(assert (=> start!66682 true))

(declare-fun array_inv!16010 (array!42276) Bool)

(assert (=> start!66682 (array_inv!16010 a!3186)))

(declare-fun b!768078 () Bool)

(declare-fun e!427728 () Bool)

(assert (=> b!768078 (= e!427728 (not e!427731))))

(declare-fun res!519657 () Bool)

(assert (=> b!768078 (=> res!519657 e!427731)))

(declare-fun lt!341711 () SeekEntryResult!7843)

(get-info :version)

(assert (=> b!768078 (= res!519657 (or (not ((_ is Intermediate!7843) lt!341711)) (bvsge x!1131 (x!64690 lt!341711))))))

(assert (=> b!768078 (= lt!341709 (Found!7843 j!159))))

(assert (=> b!768078 e!427725))

(declare-fun res!519651 () Bool)

(assert (=> b!768078 (=> (not res!519651) (not e!427725))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42276 (_ BitVec 32)) Bool)

(assert (=> b!768078 (= res!519651 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26412 0))(
  ( (Unit!26413) )
))
(declare-fun lt!341708 () Unit!26412)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42276 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26412)

(assert (=> b!768078 (= lt!341708 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!768079 () Bool)

(declare-fun res!519655 () Bool)

(assert (=> b!768079 (=> (not res!519655) (not e!427724))))

(declare-datatypes ((List!14291 0))(
  ( (Nil!14288) (Cons!14287 (h!15383 (_ BitVec 64)) (t!20614 List!14291)) )
))
(declare-fun arrayNoDuplicates!0 (array!42276 (_ BitVec 32) List!14291) Bool)

(assert (=> b!768079 (= res!519655 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14288))))

(declare-fun b!768080 () Bool)

(assert (=> b!768080 (= e!427726 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341713))))

(declare-fun b!768081 () Bool)

(assert (=> b!768081 (= e!427732 e!427728)))

(declare-fun res!519662 () Bool)

(assert (=> b!768081 (=> (not res!519662) (not e!427728))))

(declare-fun lt!341707 () SeekEntryResult!7843)

(assert (=> b!768081 (= res!519662 (= lt!341707 lt!341711))))

(declare-fun lt!341715 () (_ BitVec 64))

(declare-fun lt!341714 () array!42276)

(assert (=> b!768081 (= lt!341711 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341715 lt!341714 mask!3328))))

(assert (=> b!768081 (= lt!341707 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341715 mask!3328) lt!341715 lt!341714 mask!3328))))

(assert (=> b!768081 (= lt!341715 (select (store (arr!20236 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!768081 (= lt!341714 (array!42277 (store (arr!20236 a!3186) i!1173 k0!2102) (size!20657 a!3186)))))

(declare-fun b!768082 () Bool)

(declare-fun res!519650 () Bool)

(assert (=> b!768082 (=> (not res!519650) (not e!427724))))

(assert (=> b!768082 (= res!519650 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!768083 () Bool)

(declare-fun res!519666 () Bool)

(assert (=> b!768083 (=> (not res!519666) (not e!427729))))

(assert (=> b!768083 (= res!519666 (validKeyInArray!0 (select (arr!20236 a!3186) j!159)))))

(assert (= (and start!66682 res!519656) b!768072))

(assert (= (and b!768072 res!519664) b!768083))

(assert (= (and b!768083 res!519666) b!768070))

(assert (= (and b!768070 res!519665) b!768068))

(assert (= (and b!768068 res!519660) b!768069))

(assert (= (and b!768069 res!519659) b!768082))

(assert (= (and b!768082 res!519650) b!768079))

(assert (= (and b!768079 res!519655) b!768074))

(assert (= (and b!768074 res!519653) b!768066))

(assert (= (and b!768066 res!519663) b!768071))

(assert (= (and b!768071 res!519649) b!768064))

(assert (= (and b!768064 c!84600) b!768067))

(assert (= (and b!768064 (not c!84600)) b!768073))

(assert (= (and b!768064 res!519654) b!768081))

(assert (= (and b!768081 res!519662) b!768078))

(assert (= (and b!768078 res!519651) b!768077))

(assert (= (and b!768077 res!519661) b!768080))

(assert (= (and b!768078 (not res!519657)) b!768075))

(assert (= (and b!768075 (not res!519652)) b!768065))

(assert (= (and b!768065 (not res!519658)) b!768076))

(declare-fun m!713737 () Bool)

(assert (=> b!768065 m!713737))

(assert (=> b!768065 m!713737))

(declare-fun m!713739 () Bool)

(assert (=> b!768065 m!713739))

(declare-fun m!713741 () Bool)

(assert (=> b!768069 m!713741))

(declare-fun m!713743 () Bool)

(assert (=> b!768070 m!713743))

(assert (=> b!768080 m!713737))

(assert (=> b!768080 m!713737))

(declare-fun m!713745 () Bool)

(assert (=> b!768080 m!713745))

(declare-fun m!713747 () Bool)

(assert (=> b!768081 m!713747))

(declare-fun m!713749 () Bool)

(assert (=> b!768081 m!713749))

(assert (=> b!768081 m!713747))

(declare-fun m!713751 () Bool)

(assert (=> b!768081 m!713751))

(declare-fun m!713753 () Bool)

(assert (=> b!768081 m!713753))

(declare-fun m!713755 () Bool)

(assert (=> b!768081 m!713755))

(declare-fun m!713757 () Bool)

(assert (=> start!66682 m!713757))

(declare-fun m!713759 () Bool)

(assert (=> start!66682 m!713759))

(assert (=> b!768073 m!713737))

(assert (=> b!768073 m!713737))

(assert (=> b!768073 m!713739))

(assert (=> b!768083 m!713737))

(assert (=> b!768083 m!713737))

(declare-fun m!713761 () Bool)

(assert (=> b!768083 m!713761))

(declare-fun m!713763 () Bool)

(assert (=> b!768082 m!713763))

(assert (=> b!768067 m!713737))

(assert (=> b!768067 m!713737))

(declare-fun m!713765 () Bool)

(assert (=> b!768067 m!713765))

(assert (=> b!768077 m!713737))

(assert (=> b!768077 m!713737))

(declare-fun m!713767 () Bool)

(assert (=> b!768077 m!713767))

(declare-fun m!713769 () Bool)

(assert (=> b!768075 m!713769))

(declare-fun m!713771 () Bool)

(assert (=> b!768068 m!713771))

(declare-fun m!713773 () Bool)

(assert (=> b!768071 m!713773))

(assert (=> b!768076 m!713737))

(assert (=> b!768076 m!713737))

(declare-fun m!713775 () Bool)

(assert (=> b!768076 m!713775))

(declare-fun m!713777 () Bool)

(assert (=> b!768078 m!713777))

(declare-fun m!713779 () Bool)

(assert (=> b!768078 m!713779))

(declare-fun m!713781 () Bool)

(assert (=> b!768079 m!713781))

(assert (=> b!768066 m!713737))

(assert (=> b!768066 m!713737))

(declare-fun m!713783 () Bool)

(assert (=> b!768066 m!713783))

(assert (=> b!768066 m!713783))

(assert (=> b!768066 m!713737))

(declare-fun m!713785 () Bool)

(assert (=> b!768066 m!713785))

(check-sat (not b!768079) (not b!768070) (not b!768075) (not b!768066) (not b!768076) (not b!768069) (not b!768083) (not b!768082) (not b!768078) (not start!66682) (not b!768077) (not b!768081) (not b!768068) (not b!768065) (not b!768067) (not b!768080) (not b!768073))
(check-sat)
(get-model)

(declare-fun b!768152 () Bool)

(declare-fun e!427770 () Bool)

(declare-fun e!427771 () Bool)

(assert (=> b!768152 (= e!427770 e!427771)))

(declare-fun lt!341754 () (_ BitVec 64))

(assert (=> b!768152 (= lt!341754 (select (arr!20236 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!341753 () Unit!26412)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42276 (_ BitVec 64) (_ BitVec 32)) Unit!26412)

(assert (=> b!768152 (= lt!341753 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341754 #b00000000000000000000000000000000))))

(assert (=> b!768152 (arrayContainsKey!0 a!3186 lt!341754 #b00000000000000000000000000000000)))

(declare-fun lt!341755 () Unit!26412)

(assert (=> b!768152 (= lt!341755 lt!341753)))

(declare-fun res!519725 () Bool)

(assert (=> b!768152 (= res!519725 (= (seekEntryOrOpen!0 (select (arr!20236 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7843 #b00000000000000000000000000000000)))))

(assert (=> b!768152 (=> (not res!519725) (not e!427771))))

(declare-fun b!768153 () Bool)

(declare-fun e!427772 () Bool)

(assert (=> b!768153 (= e!427772 e!427770)))

(declare-fun c!84606 () Bool)

(assert (=> b!768153 (= c!84606 (validKeyInArray!0 (select (arr!20236 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35085 () Bool)

(declare-fun call!35088 () Bool)

(assert (=> bm!35085 (= call!35088 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!101393 () Bool)

(declare-fun res!519726 () Bool)

(assert (=> d!101393 (=> res!519726 e!427772)))

(assert (=> d!101393 (= res!519726 (bvsge #b00000000000000000000000000000000 (size!20657 a!3186)))))

(assert (=> d!101393 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!427772)))

(declare-fun b!768154 () Bool)

(assert (=> b!768154 (= e!427771 call!35088)))

(declare-fun b!768155 () Bool)

(assert (=> b!768155 (= e!427770 call!35088)))

(assert (= (and d!101393 (not res!519726)) b!768153))

(assert (= (and b!768153 c!84606) b!768152))

(assert (= (and b!768153 (not c!84606)) b!768155))

(assert (= (and b!768152 res!519725) b!768154))

(assert (= (or b!768154 b!768155) bm!35085))

(declare-fun m!713837 () Bool)

(assert (=> b!768152 m!713837))

(declare-fun m!713839 () Bool)

(assert (=> b!768152 m!713839))

(declare-fun m!713841 () Bool)

(assert (=> b!768152 m!713841))

(assert (=> b!768152 m!713837))

(declare-fun m!713843 () Bool)

(assert (=> b!768152 m!713843))

(assert (=> b!768153 m!713837))

(assert (=> b!768153 m!713837))

(declare-fun m!713845 () Bool)

(assert (=> b!768153 m!713845))

(declare-fun m!713847 () Bool)

(assert (=> bm!35085 m!713847))

(assert (=> b!768082 d!101393))

(declare-fun b!768174 () Bool)

(declare-fun lt!341760 () SeekEntryResult!7843)

(assert (=> b!768174 (and (bvsge (index!33741 lt!341760) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341760) (size!20657 lt!341714)))))

(declare-fun e!427787 () Bool)

(assert (=> b!768174 (= e!427787 (= (select (arr!20236 lt!341714) (index!33741 lt!341760)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768175 () Bool)

(declare-fun e!427783 () SeekEntryResult!7843)

(assert (=> b!768175 (= e!427783 (Intermediate!7843 true index!1321 x!1131))))

(declare-fun b!768176 () Bool)

(declare-fun e!427784 () Bool)

(assert (=> b!768176 (= e!427784 (bvsge (x!64690 lt!341760) #b01111111111111111111111111111110))))

(declare-fun b!768177 () Bool)

(declare-fun e!427785 () SeekEntryResult!7843)

(assert (=> b!768177 (= e!427785 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!341715 lt!341714 mask!3328))))

(declare-fun b!768178 () Bool)

(assert (=> b!768178 (and (bvsge (index!33741 lt!341760) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341760) (size!20657 lt!341714)))))

(declare-fun res!519733 () Bool)

(assert (=> b!768178 (= res!519733 (= (select (arr!20236 lt!341714) (index!33741 lt!341760)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768178 (=> res!519733 e!427787)))

(declare-fun b!768179 () Bool)

(declare-fun e!427786 () Bool)

(assert (=> b!768179 (= e!427784 e!427786)))

(declare-fun res!519734 () Bool)

(assert (=> b!768179 (= res!519734 (and ((_ is Intermediate!7843) lt!341760) (not (undefined!8655 lt!341760)) (bvslt (x!64690 lt!341760) #b01111111111111111111111111111110) (bvsge (x!64690 lt!341760) #b00000000000000000000000000000000) (bvsge (x!64690 lt!341760) x!1131)))))

(assert (=> b!768179 (=> (not res!519734) (not e!427786))))

(declare-fun b!768180 () Bool)

(assert (=> b!768180 (= e!427785 (Intermediate!7843 false index!1321 x!1131))))

(declare-fun b!768181 () Bool)

(assert (=> b!768181 (and (bvsge (index!33741 lt!341760) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341760) (size!20657 lt!341714)))))

(declare-fun res!519735 () Bool)

(assert (=> b!768181 (= res!519735 (= (select (arr!20236 lt!341714) (index!33741 lt!341760)) lt!341715))))

(assert (=> b!768181 (=> res!519735 e!427787)))

(assert (=> b!768181 (= e!427786 e!427787)))

(declare-fun d!101395 () Bool)

(assert (=> d!101395 e!427784))

(declare-fun c!84613 () Bool)

(assert (=> d!101395 (= c!84613 (and ((_ is Intermediate!7843) lt!341760) (undefined!8655 lt!341760)))))

(assert (=> d!101395 (= lt!341760 e!427783)))

(declare-fun c!84615 () Bool)

(assert (=> d!101395 (= c!84615 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341761 () (_ BitVec 64))

(assert (=> d!101395 (= lt!341761 (select (arr!20236 lt!341714) index!1321))))

(assert (=> d!101395 (validMask!0 mask!3328)))

(assert (=> d!101395 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341715 lt!341714 mask!3328) lt!341760)))

(declare-fun b!768182 () Bool)

(assert (=> b!768182 (= e!427783 e!427785)))

(declare-fun c!84614 () Bool)

(assert (=> b!768182 (= c!84614 (or (= lt!341761 lt!341715) (= (bvadd lt!341761 lt!341761) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101395 c!84615) b!768175))

(assert (= (and d!101395 (not c!84615)) b!768182))

(assert (= (and b!768182 c!84614) b!768180))

(assert (= (and b!768182 (not c!84614)) b!768177))

(assert (= (and d!101395 c!84613) b!768176))

(assert (= (and d!101395 (not c!84613)) b!768179))

(assert (= (and b!768179 res!519734) b!768181))

(assert (= (and b!768181 (not res!519735)) b!768178))

(assert (= (and b!768178 (not res!519733)) b!768174))

(declare-fun m!713849 () Bool)

(assert (=> b!768178 m!713849))

(declare-fun m!713851 () Bool)

(assert (=> d!101395 m!713851))

(assert (=> d!101395 m!713757))

(assert (=> b!768177 m!713769))

(assert (=> b!768177 m!713769))

(declare-fun m!713853 () Bool)

(assert (=> b!768177 m!713853))

(assert (=> b!768181 m!713849))

(assert (=> b!768174 m!713849))

(assert (=> b!768081 d!101395))

(declare-fun b!768183 () Bool)

(declare-fun lt!341762 () SeekEntryResult!7843)

(assert (=> b!768183 (and (bvsge (index!33741 lt!341762) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341762) (size!20657 lt!341714)))))

(declare-fun e!427792 () Bool)

(assert (=> b!768183 (= e!427792 (= (select (arr!20236 lt!341714) (index!33741 lt!341762)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768184 () Bool)

(declare-fun e!427788 () SeekEntryResult!7843)

(assert (=> b!768184 (= e!427788 (Intermediate!7843 true (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768185 () Bool)

(declare-fun e!427789 () Bool)

(assert (=> b!768185 (= e!427789 (bvsge (x!64690 lt!341762) #b01111111111111111111111111111110))))

(declare-fun b!768186 () Bool)

(declare-fun e!427790 () SeekEntryResult!7843)

(assert (=> b!768186 (= e!427790 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!341715 lt!341714 mask!3328))))

(declare-fun b!768187 () Bool)

(assert (=> b!768187 (and (bvsge (index!33741 lt!341762) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341762) (size!20657 lt!341714)))))

(declare-fun res!519736 () Bool)

(assert (=> b!768187 (= res!519736 (= (select (arr!20236 lt!341714) (index!33741 lt!341762)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768187 (=> res!519736 e!427792)))

(declare-fun b!768188 () Bool)

(declare-fun e!427791 () Bool)

(assert (=> b!768188 (= e!427789 e!427791)))

(declare-fun res!519737 () Bool)

(assert (=> b!768188 (= res!519737 (and ((_ is Intermediate!7843) lt!341762) (not (undefined!8655 lt!341762)) (bvslt (x!64690 lt!341762) #b01111111111111111111111111111110) (bvsge (x!64690 lt!341762) #b00000000000000000000000000000000) (bvsge (x!64690 lt!341762) #b00000000000000000000000000000000)))))

(assert (=> b!768188 (=> (not res!519737) (not e!427791))))

(declare-fun b!768189 () Bool)

(assert (=> b!768189 (= e!427790 (Intermediate!7843 false (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768190 () Bool)

(assert (=> b!768190 (and (bvsge (index!33741 lt!341762) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341762) (size!20657 lt!341714)))))

(declare-fun res!519738 () Bool)

(assert (=> b!768190 (= res!519738 (= (select (arr!20236 lt!341714) (index!33741 lt!341762)) lt!341715))))

(assert (=> b!768190 (=> res!519738 e!427792)))

(assert (=> b!768190 (= e!427791 e!427792)))

(declare-fun d!101397 () Bool)

(assert (=> d!101397 e!427789))

(declare-fun c!84616 () Bool)

(assert (=> d!101397 (= c!84616 (and ((_ is Intermediate!7843) lt!341762) (undefined!8655 lt!341762)))))

(assert (=> d!101397 (= lt!341762 e!427788)))

(declare-fun c!84618 () Bool)

(assert (=> d!101397 (= c!84618 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341763 () (_ BitVec 64))

(assert (=> d!101397 (= lt!341763 (select (arr!20236 lt!341714) (toIndex!0 lt!341715 mask!3328)))))

(assert (=> d!101397 (validMask!0 mask!3328)))

(assert (=> d!101397 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341715 mask!3328) lt!341715 lt!341714 mask!3328) lt!341762)))

(declare-fun b!768191 () Bool)

(assert (=> b!768191 (= e!427788 e!427790)))

(declare-fun c!84617 () Bool)

(assert (=> b!768191 (= c!84617 (or (= lt!341763 lt!341715) (= (bvadd lt!341763 lt!341763) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101397 c!84618) b!768184))

(assert (= (and d!101397 (not c!84618)) b!768191))

(assert (= (and b!768191 c!84617) b!768189))

(assert (= (and b!768191 (not c!84617)) b!768186))

(assert (= (and d!101397 c!84616) b!768185))

(assert (= (and d!101397 (not c!84616)) b!768188))

(assert (= (and b!768188 res!519737) b!768190))

(assert (= (and b!768190 (not res!519738)) b!768187))

(assert (= (and b!768187 (not res!519736)) b!768183))

(declare-fun m!713855 () Bool)

(assert (=> b!768187 m!713855))

(assert (=> d!101397 m!713747))

(declare-fun m!713857 () Bool)

(assert (=> d!101397 m!713857))

(assert (=> d!101397 m!713757))

(assert (=> b!768186 m!713747))

(declare-fun m!713859 () Bool)

(assert (=> b!768186 m!713859))

(assert (=> b!768186 m!713859))

(declare-fun m!713861 () Bool)

(assert (=> b!768186 m!713861))

(assert (=> b!768190 m!713855))

(assert (=> b!768183 m!713855))

(assert (=> b!768081 d!101397))

(declare-fun d!101399 () Bool)

(declare-fun lt!341769 () (_ BitVec 32))

(declare-fun lt!341768 () (_ BitVec 32))

(assert (=> d!101399 (= lt!341769 (bvmul (bvxor lt!341768 (bvlshr lt!341768 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101399 (= lt!341768 ((_ extract 31 0) (bvand (bvxor lt!341715 (bvlshr lt!341715 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101399 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519739 (let ((h!15385 ((_ extract 31 0) (bvand (bvxor lt!341715 (bvlshr lt!341715 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64693 (bvmul (bvxor h!15385 (bvlshr h!15385 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64693 (bvlshr x!64693 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519739 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519739 #b00000000000000000000000000000000))))))

(assert (=> d!101399 (= (toIndex!0 lt!341715 mask!3328) (bvand (bvxor lt!341769 (bvlshr lt!341769 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!768081 d!101399))

(declare-fun d!101401 () Bool)

(assert (=> d!101401 (= (validKeyInArray!0 (select (arr!20236 a!3186) j!159)) (and (not (= (select (arr!20236 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20236 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!768083 d!101401))

(declare-fun d!101403 () Bool)

(declare-fun lt!341775 () SeekEntryResult!7843)

(assert (=> d!101403 (and (or ((_ is Undefined!7843) lt!341775) (not ((_ is Found!7843) lt!341775)) (and (bvsge (index!33740 lt!341775) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341775) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341775) ((_ is Found!7843) lt!341775) (not ((_ is MissingVacant!7843) lt!341775)) (not (= (index!33742 lt!341775) resIntermediateIndex!5)) (and (bvsge (index!33742 lt!341775) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341775) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341775) (ite ((_ is Found!7843) lt!341775) (= (select (arr!20236 a!3186) (index!33740 lt!341775)) (select (arr!20236 a!3186) j!159)) (and ((_ is MissingVacant!7843) lt!341775) (= (index!33742 lt!341775) resIntermediateIndex!5) (= (select (arr!20236 a!3186) (index!33742 lt!341775)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!427799 () SeekEntryResult!7843)

(assert (=> d!101403 (= lt!341775 e!427799)))

(declare-fun c!84626 () Bool)

(assert (=> d!101403 (= c!84626 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341774 () (_ BitVec 64))

(assert (=> d!101403 (= lt!341774 (select (arr!20236 a!3186) index!1321))))

(assert (=> d!101403 (validMask!0 mask!3328)))

(assert (=> d!101403 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341775)))

(declare-fun b!768204 () Bool)

(declare-fun e!427801 () SeekEntryResult!7843)

(assert (=> b!768204 (= e!427801 (Found!7843 index!1321))))

(declare-fun e!427800 () SeekEntryResult!7843)

(declare-fun b!768205 () Bool)

(assert (=> b!768205 (= e!427800 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768206 () Bool)

(assert (=> b!768206 (= e!427799 Undefined!7843)))

(declare-fun b!768207 () Bool)

(declare-fun c!84625 () Bool)

(assert (=> b!768207 (= c!84625 (= lt!341774 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768207 (= e!427801 e!427800)))

(declare-fun b!768208 () Bool)

(assert (=> b!768208 (= e!427800 (MissingVacant!7843 resIntermediateIndex!5))))

(declare-fun b!768209 () Bool)

(assert (=> b!768209 (= e!427799 e!427801)))

(declare-fun c!84627 () Bool)

(assert (=> b!768209 (= c!84627 (= lt!341774 (select (arr!20236 a!3186) j!159)))))

(assert (= (and d!101403 c!84626) b!768206))

(assert (= (and d!101403 (not c!84626)) b!768209))

(assert (= (and b!768209 c!84627) b!768204))

(assert (= (and b!768209 (not c!84627)) b!768207))

(assert (= (and b!768207 c!84625) b!768208))

(assert (= (and b!768207 (not c!84625)) b!768205))

(declare-fun m!713863 () Bool)

(assert (=> d!101403 m!713863))

(declare-fun m!713865 () Bool)

(assert (=> d!101403 m!713865))

(declare-fun m!713867 () Bool)

(assert (=> d!101403 m!713867))

(assert (=> d!101403 m!713757))

(assert (=> b!768205 m!713769))

(assert (=> b!768205 m!713769))

(assert (=> b!768205 m!713737))

(declare-fun m!713869 () Bool)

(assert (=> b!768205 m!713869))

(assert (=> b!768073 d!101403))

(declare-fun d!101405 () Bool)

(declare-fun lt!341778 () (_ BitVec 32))

(assert (=> d!101405 (and (bvsge lt!341778 #b00000000000000000000000000000000) (bvslt lt!341778 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101405 (= lt!341778 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101405 (validMask!0 mask!3328)))

(assert (=> d!101405 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!341778)))

(declare-fun bs!21525 () Bool)

(assert (= bs!21525 d!101405))

(declare-fun m!713871 () Bool)

(assert (=> bs!21525 m!713871))

(assert (=> bs!21525 m!713757))

(assert (=> b!768075 d!101405))

(declare-fun b!768210 () Bool)

(declare-fun lt!341779 () SeekEntryResult!7843)

(assert (=> b!768210 (and (bvsge (index!33741 lt!341779) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341779) (size!20657 a!3186)))))

(declare-fun e!427806 () Bool)

(assert (=> b!768210 (= e!427806 (= (select (arr!20236 a!3186) (index!33741 lt!341779)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427802 () SeekEntryResult!7843)

(declare-fun b!768211 () Bool)

(assert (=> b!768211 (= e!427802 (Intermediate!7843 true (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768212 () Bool)

(declare-fun e!427803 () Bool)

(assert (=> b!768212 (= e!427803 (bvsge (x!64690 lt!341779) #b01111111111111111111111111111110))))

(declare-fun e!427804 () SeekEntryResult!7843)

(declare-fun b!768213 () Bool)

(assert (=> b!768213 (= e!427804 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768214 () Bool)

(assert (=> b!768214 (and (bvsge (index!33741 lt!341779) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341779) (size!20657 a!3186)))))

(declare-fun res!519740 () Bool)

(assert (=> b!768214 (= res!519740 (= (select (arr!20236 a!3186) (index!33741 lt!341779)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768214 (=> res!519740 e!427806)))

(declare-fun b!768215 () Bool)

(declare-fun e!427805 () Bool)

(assert (=> b!768215 (= e!427803 e!427805)))

(declare-fun res!519741 () Bool)

(assert (=> b!768215 (= res!519741 (and ((_ is Intermediate!7843) lt!341779) (not (undefined!8655 lt!341779)) (bvslt (x!64690 lt!341779) #b01111111111111111111111111111110) (bvsge (x!64690 lt!341779) #b00000000000000000000000000000000) (bvsge (x!64690 lt!341779) #b00000000000000000000000000000000)))))

(assert (=> b!768215 (=> (not res!519741) (not e!427805))))

(declare-fun b!768216 () Bool)

(assert (=> b!768216 (= e!427804 (Intermediate!7843 false (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768217 () Bool)

(assert (=> b!768217 (and (bvsge (index!33741 lt!341779) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341779) (size!20657 a!3186)))))

(declare-fun res!519742 () Bool)

(assert (=> b!768217 (= res!519742 (= (select (arr!20236 a!3186) (index!33741 lt!341779)) (select (arr!20236 a!3186) j!159)))))

(assert (=> b!768217 (=> res!519742 e!427806)))

(assert (=> b!768217 (= e!427805 e!427806)))

(declare-fun d!101407 () Bool)

(assert (=> d!101407 e!427803))

(declare-fun c!84628 () Bool)

(assert (=> d!101407 (= c!84628 (and ((_ is Intermediate!7843) lt!341779) (undefined!8655 lt!341779)))))

(assert (=> d!101407 (= lt!341779 e!427802)))

(declare-fun c!84630 () Bool)

(assert (=> d!101407 (= c!84630 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341780 () (_ BitVec 64))

(assert (=> d!101407 (= lt!341780 (select (arr!20236 a!3186) (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328)))))

(assert (=> d!101407 (validMask!0 mask!3328)))

(assert (=> d!101407 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341779)))

(declare-fun b!768218 () Bool)

(assert (=> b!768218 (= e!427802 e!427804)))

(declare-fun c!84629 () Bool)

(assert (=> b!768218 (= c!84629 (or (= lt!341780 (select (arr!20236 a!3186) j!159)) (= (bvadd lt!341780 lt!341780) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101407 c!84630) b!768211))

(assert (= (and d!101407 (not c!84630)) b!768218))

(assert (= (and b!768218 c!84629) b!768216))

(assert (= (and b!768218 (not c!84629)) b!768213))

(assert (= (and d!101407 c!84628) b!768212))

(assert (= (and d!101407 (not c!84628)) b!768215))

(assert (= (and b!768215 res!519741) b!768217))

(assert (= (and b!768217 (not res!519742)) b!768214))

(assert (= (and b!768214 (not res!519740)) b!768210))

(declare-fun m!713873 () Bool)

(assert (=> b!768214 m!713873))

(assert (=> d!101407 m!713783))

(declare-fun m!713875 () Bool)

(assert (=> d!101407 m!713875))

(assert (=> d!101407 m!713757))

(assert (=> b!768213 m!713783))

(declare-fun m!713877 () Bool)

(assert (=> b!768213 m!713877))

(assert (=> b!768213 m!713877))

(assert (=> b!768213 m!713737))

(declare-fun m!713879 () Bool)

(assert (=> b!768213 m!713879))

(assert (=> b!768217 m!713873))

(assert (=> b!768210 m!713873))

(assert (=> b!768066 d!101407))

(declare-fun d!101409 () Bool)

(declare-fun lt!341782 () (_ BitVec 32))

(declare-fun lt!341781 () (_ BitVec 32))

(assert (=> d!101409 (= lt!341782 (bvmul (bvxor lt!341781 (bvlshr lt!341781 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101409 (= lt!341781 ((_ extract 31 0) (bvand (bvxor (select (arr!20236 a!3186) j!159) (bvlshr (select (arr!20236 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101409 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519739 (let ((h!15385 ((_ extract 31 0) (bvand (bvxor (select (arr!20236 a!3186) j!159) (bvlshr (select (arr!20236 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64693 (bvmul (bvxor h!15385 (bvlshr h!15385 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64693 (bvlshr x!64693 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519739 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519739 #b00000000000000000000000000000000))))))

(assert (=> d!101409 (= (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) (bvand (bvxor lt!341782 (bvlshr lt!341782 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!768066 d!101409))

(declare-fun lt!341784 () SeekEntryResult!7843)

(declare-fun d!101411 () Bool)

(assert (=> d!101411 (and (or ((_ is Undefined!7843) lt!341784) (not ((_ is Found!7843) lt!341784)) (and (bvsge (index!33740 lt!341784) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341784) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341784) ((_ is Found!7843) lt!341784) (not ((_ is MissingVacant!7843) lt!341784)) (not (= (index!33742 lt!341784) resIntermediateIndex!5)) (and (bvsge (index!33742 lt!341784) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341784) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341784) (ite ((_ is Found!7843) lt!341784) (= (select (arr!20236 a!3186) (index!33740 lt!341784)) (select (arr!20236 a!3186) j!159)) (and ((_ is MissingVacant!7843) lt!341784) (= (index!33742 lt!341784) resIntermediateIndex!5) (= (select (arr!20236 a!3186) (index!33742 lt!341784)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!427807 () SeekEntryResult!7843)

(assert (=> d!101411 (= lt!341784 e!427807)))

(declare-fun c!84632 () Bool)

(assert (=> d!101411 (= c!84632 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!341783 () (_ BitVec 64))

(assert (=> d!101411 (= lt!341783 (select (arr!20236 a!3186) lt!341710))))

(assert (=> d!101411 (validMask!0 mask!3328)))

(assert (=> d!101411 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341710 resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341784)))

(declare-fun b!768219 () Bool)

(declare-fun e!427809 () SeekEntryResult!7843)

(assert (=> b!768219 (= e!427809 (Found!7843 lt!341710))))

(declare-fun b!768220 () Bool)

(declare-fun e!427808 () SeekEntryResult!7843)

(assert (=> b!768220 (= e!427808 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!341710 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768221 () Bool)

(assert (=> b!768221 (= e!427807 Undefined!7843)))

(declare-fun b!768222 () Bool)

(declare-fun c!84631 () Bool)

(assert (=> b!768222 (= c!84631 (= lt!341783 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768222 (= e!427809 e!427808)))

(declare-fun b!768223 () Bool)

(assert (=> b!768223 (= e!427808 (MissingVacant!7843 resIntermediateIndex!5))))

(declare-fun b!768224 () Bool)

(assert (=> b!768224 (= e!427807 e!427809)))

(declare-fun c!84633 () Bool)

(assert (=> b!768224 (= c!84633 (= lt!341783 (select (arr!20236 a!3186) j!159)))))

(assert (= (and d!101411 c!84632) b!768221))

(assert (= (and d!101411 (not c!84632)) b!768224))

(assert (= (and b!768224 c!84633) b!768219))

(assert (= (and b!768224 (not c!84633)) b!768222))

(assert (= (and b!768222 c!84631) b!768223))

(assert (= (and b!768222 (not c!84631)) b!768220))

(declare-fun m!713881 () Bool)

(assert (=> d!101411 m!713881))

(declare-fun m!713883 () Bool)

(assert (=> d!101411 m!713883))

(declare-fun m!713885 () Bool)

(assert (=> d!101411 m!713885))

(assert (=> d!101411 m!713757))

(declare-fun m!713887 () Bool)

(assert (=> b!768220 m!713887))

(assert (=> b!768220 m!713887))

(assert (=> b!768220 m!713737))

(declare-fun m!713889 () Bool)

(assert (=> b!768220 m!713889))

(assert (=> b!768076 d!101411))

(assert (=> b!768065 d!101403))

(declare-fun d!101413 () Bool)

(assert (=> d!101413 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66682 d!101413))

(declare-fun d!101417 () Bool)

(assert (=> d!101417 (= (array_inv!16010 a!3186) (bvsge (size!20657 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66682 d!101417))

(declare-fun b!768225 () Bool)

(declare-fun e!427810 () Bool)

(declare-fun e!427811 () Bool)

(assert (=> b!768225 (= e!427810 e!427811)))

(declare-fun lt!341786 () (_ BitVec 64))

(assert (=> b!768225 (= lt!341786 (select (arr!20236 a!3186) j!159))))

(declare-fun lt!341785 () Unit!26412)

(assert (=> b!768225 (= lt!341785 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341786 j!159))))

(assert (=> b!768225 (arrayContainsKey!0 a!3186 lt!341786 #b00000000000000000000000000000000)))

(declare-fun lt!341787 () Unit!26412)

(assert (=> b!768225 (= lt!341787 lt!341785)))

(declare-fun res!519743 () Bool)

(assert (=> b!768225 (= res!519743 (= (seekEntryOrOpen!0 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) (Found!7843 j!159)))))

(assert (=> b!768225 (=> (not res!519743) (not e!427811))))

(declare-fun b!768226 () Bool)

(declare-fun e!427812 () Bool)

(assert (=> b!768226 (= e!427812 e!427810)))

(declare-fun c!84634 () Bool)

(assert (=> b!768226 (= c!84634 (validKeyInArray!0 (select (arr!20236 a!3186) j!159)))))

(declare-fun bm!35086 () Bool)

(declare-fun call!35089 () Bool)

(assert (=> bm!35086 (= call!35089 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!101419 () Bool)

(declare-fun res!519744 () Bool)

(assert (=> d!101419 (=> res!519744 e!427812)))

(assert (=> d!101419 (= res!519744 (bvsge j!159 (size!20657 a!3186)))))

(assert (=> d!101419 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!427812)))

(declare-fun b!768227 () Bool)

(assert (=> b!768227 (= e!427811 call!35089)))

(declare-fun b!768228 () Bool)

(assert (=> b!768228 (= e!427810 call!35089)))

(assert (= (and d!101419 (not res!519744)) b!768226))

(assert (= (and b!768226 c!84634) b!768225))

(assert (= (and b!768226 (not c!84634)) b!768228))

(assert (= (and b!768225 res!519743) b!768227))

(assert (= (or b!768227 b!768228) bm!35086))

(assert (=> b!768225 m!713737))

(declare-fun m!713891 () Bool)

(assert (=> b!768225 m!713891))

(declare-fun m!713893 () Bool)

(assert (=> b!768225 m!713893))

(assert (=> b!768225 m!713737))

(assert (=> b!768225 m!713767))

(assert (=> b!768226 m!713737))

(assert (=> b!768226 m!713737))

(assert (=> b!768226 m!713761))

(declare-fun m!713895 () Bool)

(assert (=> bm!35086 m!713895))

(assert (=> b!768078 d!101419))

(declare-fun d!101421 () Bool)

(assert (=> d!101421 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!341790 () Unit!26412)

(declare-fun choose!38 (array!42276 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26412)

(assert (=> d!101421 (= lt!341790 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101421 (validMask!0 mask!3328)))

(assert (=> d!101421 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!341790)))

(declare-fun bs!21526 () Bool)

(assert (= bs!21526 d!101421))

(assert (=> bs!21526 m!713777))

(declare-fun m!713897 () Bool)

(assert (=> bs!21526 m!713897))

(assert (=> bs!21526 m!713757))

(assert (=> b!768078 d!101421))

(declare-fun b!768229 () Bool)

(declare-fun lt!341791 () SeekEntryResult!7843)

(assert (=> b!768229 (and (bvsge (index!33741 lt!341791) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341791) (size!20657 a!3186)))))

(declare-fun e!427817 () Bool)

(assert (=> b!768229 (= e!427817 (= (select (arr!20236 a!3186) (index!33741 lt!341791)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768230 () Bool)

(declare-fun e!427813 () SeekEntryResult!7843)

(assert (=> b!768230 (= e!427813 (Intermediate!7843 true index!1321 x!1131))))

(declare-fun b!768231 () Bool)

(declare-fun e!427814 () Bool)

(assert (=> b!768231 (= e!427814 (bvsge (x!64690 lt!341791) #b01111111111111111111111111111110))))

(declare-fun b!768232 () Bool)

(declare-fun e!427815 () SeekEntryResult!7843)

(assert (=> b!768232 (= e!427815 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768233 () Bool)

(assert (=> b!768233 (and (bvsge (index!33741 lt!341791) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341791) (size!20657 a!3186)))))

(declare-fun res!519745 () Bool)

(assert (=> b!768233 (= res!519745 (= (select (arr!20236 a!3186) (index!33741 lt!341791)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768233 (=> res!519745 e!427817)))

(declare-fun b!768234 () Bool)

(declare-fun e!427816 () Bool)

(assert (=> b!768234 (= e!427814 e!427816)))

(declare-fun res!519746 () Bool)

(assert (=> b!768234 (= res!519746 (and ((_ is Intermediate!7843) lt!341791) (not (undefined!8655 lt!341791)) (bvslt (x!64690 lt!341791) #b01111111111111111111111111111110) (bvsge (x!64690 lt!341791) #b00000000000000000000000000000000) (bvsge (x!64690 lt!341791) x!1131)))))

(assert (=> b!768234 (=> (not res!519746) (not e!427816))))

(declare-fun b!768235 () Bool)

(assert (=> b!768235 (= e!427815 (Intermediate!7843 false index!1321 x!1131))))

(declare-fun b!768236 () Bool)

(assert (=> b!768236 (and (bvsge (index!33741 lt!341791) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341791) (size!20657 a!3186)))))

(declare-fun res!519747 () Bool)

(assert (=> b!768236 (= res!519747 (= (select (arr!20236 a!3186) (index!33741 lt!341791)) (select (arr!20236 a!3186) j!159)))))

(assert (=> b!768236 (=> res!519747 e!427817)))

(assert (=> b!768236 (= e!427816 e!427817)))

(declare-fun d!101423 () Bool)

(assert (=> d!101423 e!427814))

(declare-fun c!84635 () Bool)

(assert (=> d!101423 (= c!84635 (and ((_ is Intermediate!7843) lt!341791) (undefined!8655 lt!341791)))))

(assert (=> d!101423 (= lt!341791 e!427813)))

(declare-fun c!84637 () Bool)

(assert (=> d!101423 (= c!84637 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341792 () (_ BitVec 64))

(assert (=> d!101423 (= lt!341792 (select (arr!20236 a!3186) index!1321))))

(assert (=> d!101423 (validMask!0 mask!3328)))

(assert (=> d!101423 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341791)))

(declare-fun b!768237 () Bool)

(assert (=> b!768237 (= e!427813 e!427815)))

(declare-fun c!84636 () Bool)

(assert (=> b!768237 (= c!84636 (or (= lt!341792 (select (arr!20236 a!3186) j!159)) (= (bvadd lt!341792 lt!341792) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101423 c!84637) b!768230))

(assert (= (and d!101423 (not c!84637)) b!768237))

(assert (= (and b!768237 c!84636) b!768235))

(assert (= (and b!768237 (not c!84636)) b!768232))

(assert (= (and d!101423 c!84635) b!768231))

(assert (= (and d!101423 (not c!84635)) b!768234))

(assert (= (and b!768234 res!519746) b!768236))

(assert (= (and b!768236 (not res!519747)) b!768233))

(assert (= (and b!768233 (not res!519745)) b!768229))

(declare-fun m!713899 () Bool)

(assert (=> b!768233 m!713899))

(assert (=> d!101423 m!713867))

(assert (=> d!101423 m!713757))

(assert (=> b!768232 m!713769))

(assert (=> b!768232 m!713769))

(assert (=> b!768232 m!713737))

(declare-fun m!713901 () Bool)

(assert (=> b!768232 m!713901))

(assert (=> b!768236 m!713899))

(assert (=> b!768229 m!713899))

(assert (=> b!768067 d!101423))

(declare-fun b!768288 () Bool)

(declare-fun e!427847 () SeekEntryResult!7843)

(declare-fun lt!341820 () SeekEntryResult!7843)

(assert (=> b!768288 (= e!427847 (MissingZero!7843 (index!33741 lt!341820)))))

(declare-fun d!101425 () Bool)

(declare-fun lt!341819 () SeekEntryResult!7843)

(assert (=> d!101425 (and (or ((_ is Undefined!7843) lt!341819) (not ((_ is Found!7843) lt!341819)) (and (bvsge (index!33740 lt!341819) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341819) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341819) ((_ is Found!7843) lt!341819) (not ((_ is MissingZero!7843) lt!341819)) (and (bvsge (index!33739 lt!341819) #b00000000000000000000000000000000) (bvslt (index!33739 lt!341819) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341819) ((_ is Found!7843) lt!341819) ((_ is MissingZero!7843) lt!341819) (not ((_ is MissingVacant!7843) lt!341819)) (and (bvsge (index!33742 lt!341819) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341819) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341819) (ite ((_ is Found!7843) lt!341819) (= (select (arr!20236 a!3186) (index!33740 lt!341819)) (select (arr!20236 a!3186) j!159)) (ite ((_ is MissingZero!7843) lt!341819) (= (select (arr!20236 a!3186) (index!33739 lt!341819)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7843) lt!341819) (= (select (arr!20236 a!3186) (index!33742 lt!341819)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!427846 () SeekEntryResult!7843)

(assert (=> d!101425 (= lt!341819 e!427846)))

(declare-fun c!84661 () Bool)

(assert (=> d!101425 (= c!84661 (and ((_ is Intermediate!7843) lt!341820) (undefined!8655 lt!341820)))))

(assert (=> d!101425 (= lt!341820 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101425 (validMask!0 mask!3328)))

(assert (=> d!101425 (= (seekEntryOrOpen!0 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341819)))

(declare-fun b!768289 () Bool)

(assert (=> b!768289 (= e!427846 Undefined!7843)))

(declare-fun b!768290 () Bool)

(declare-fun e!427848 () SeekEntryResult!7843)

(assert (=> b!768290 (= e!427848 (Found!7843 (index!33741 lt!341820)))))

(declare-fun b!768291 () Bool)

(declare-fun c!84662 () Bool)

(declare-fun lt!341818 () (_ BitVec 64))

(assert (=> b!768291 (= c!84662 (= lt!341818 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768291 (= e!427848 e!427847)))

(declare-fun b!768292 () Bool)

(assert (=> b!768292 (= e!427847 (seekKeyOrZeroReturnVacant!0 (x!64690 lt!341820) (index!33741 lt!341820) (index!33741 lt!341820) (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768293 () Bool)

(assert (=> b!768293 (= e!427846 e!427848)))

(assert (=> b!768293 (= lt!341818 (select (arr!20236 a!3186) (index!33741 lt!341820)))))

(declare-fun c!84660 () Bool)

(assert (=> b!768293 (= c!84660 (= lt!341818 (select (arr!20236 a!3186) j!159)))))

(assert (= (and d!101425 c!84661) b!768289))

(assert (= (and d!101425 (not c!84661)) b!768293))

(assert (= (and b!768293 c!84660) b!768290))

(assert (= (and b!768293 (not c!84660)) b!768291))

(assert (= (and b!768291 c!84662) b!768288))

(assert (= (and b!768291 (not c!84662)) b!768292))

(declare-fun m!713925 () Bool)

(assert (=> d!101425 m!713925))

(declare-fun m!713927 () Bool)

(assert (=> d!101425 m!713927))

(assert (=> d!101425 m!713737))

(assert (=> d!101425 m!713783))

(declare-fun m!713929 () Bool)

(assert (=> d!101425 m!713929))

(assert (=> d!101425 m!713757))

(assert (=> d!101425 m!713783))

(assert (=> d!101425 m!713737))

(assert (=> d!101425 m!713785))

(assert (=> b!768292 m!713737))

(declare-fun m!713931 () Bool)

(assert (=> b!768292 m!713931))

(declare-fun m!713933 () Bool)

(assert (=> b!768293 m!713933))

(assert (=> b!768077 d!101425))

(declare-fun d!101433 () Bool)

(declare-fun res!519769 () Bool)

(declare-fun e!427869 () Bool)

(assert (=> d!101433 (=> res!519769 e!427869)))

(assert (=> d!101433 (= res!519769 (bvsge #b00000000000000000000000000000000 (size!20657 a!3186)))))

(assert (=> d!101433 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14288) e!427869)))

(declare-fun b!768323 () Bool)

(declare-fun e!427871 () Bool)

(declare-fun contains!4086 (List!14291 (_ BitVec 64)) Bool)

(assert (=> b!768323 (= e!427871 (contains!4086 Nil!14288 (select (arr!20236 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!768324 () Bool)

(declare-fun e!427868 () Bool)

(assert (=> b!768324 (= e!427869 e!427868)))

(declare-fun res!519770 () Bool)

(assert (=> b!768324 (=> (not res!519770) (not e!427868))))

(assert (=> b!768324 (= res!519770 (not e!427871))))

(declare-fun res!519771 () Bool)

(assert (=> b!768324 (=> (not res!519771) (not e!427871))))

(assert (=> b!768324 (= res!519771 (validKeyInArray!0 (select (arr!20236 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!768325 () Bool)

(declare-fun e!427870 () Bool)

(declare-fun call!35095 () Bool)

(assert (=> b!768325 (= e!427870 call!35095)))

(declare-fun b!768326 () Bool)

(assert (=> b!768326 (= e!427868 e!427870)))

(declare-fun c!84670 () Bool)

(assert (=> b!768326 (= c!84670 (validKeyInArray!0 (select (arr!20236 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35092 () Bool)

(assert (=> bm!35092 (= call!35095 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84670 (Cons!14287 (select (arr!20236 a!3186) #b00000000000000000000000000000000) Nil!14288) Nil!14288)))))

(declare-fun b!768327 () Bool)

(assert (=> b!768327 (= e!427870 call!35095)))

(assert (= (and d!101433 (not res!519769)) b!768324))

(assert (= (and b!768324 res!519771) b!768323))

(assert (= (and b!768324 res!519770) b!768326))

(assert (= (and b!768326 c!84670) b!768327))

(assert (= (and b!768326 (not c!84670)) b!768325))

(assert (= (or b!768327 b!768325) bm!35092))

(assert (=> b!768323 m!713837))

(assert (=> b!768323 m!713837))

(declare-fun m!713941 () Bool)

(assert (=> b!768323 m!713941))

(assert (=> b!768324 m!713837))

(assert (=> b!768324 m!713837))

(assert (=> b!768324 m!713845))

(assert (=> b!768326 m!713837))

(assert (=> b!768326 m!713837))

(assert (=> b!768326 m!713845))

(assert (=> bm!35092 m!713837))

(declare-fun m!713943 () Bool)

(assert (=> bm!35092 m!713943))

(assert (=> b!768079 d!101433))

(declare-fun d!101437 () Bool)

(declare-fun res!519776 () Bool)

(declare-fun e!427882 () Bool)

(assert (=> d!101437 (=> res!519776 e!427882)))

(assert (=> d!101437 (= res!519776 (= (select (arr!20236 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!101437 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!427882)))

(declare-fun b!768344 () Bool)

(declare-fun e!427883 () Bool)

(assert (=> b!768344 (= e!427882 e!427883)))

(declare-fun res!519777 () Bool)

(assert (=> b!768344 (=> (not res!519777) (not e!427883))))

(assert (=> b!768344 (= res!519777 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20657 a!3186)))))

(declare-fun b!768345 () Bool)

(assert (=> b!768345 (= e!427883 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101437 (not res!519776)) b!768344))

(assert (= (and b!768344 res!519777) b!768345))

(assert (=> d!101437 m!713837))

(declare-fun m!713945 () Bool)

(assert (=> b!768345 m!713945))

(assert (=> b!768068 d!101437))

(declare-fun d!101439 () Bool)

(assert (=> d!101439 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!768070 d!101439))

(declare-fun lt!341828 () SeekEntryResult!7843)

(declare-fun d!101441 () Bool)

(assert (=> d!101441 (and (or ((_ is Undefined!7843) lt!341828) (not ((_ is Found!7843) lt!341828)) (and (bvsge (index!33740 lt!341828) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341828) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341828) ((_ is Found!7843) lt!341828) (not ((_ is MissingVacant!7843) lt!341828)) (not (= (index!33742 lt!341828) resIntermediateIndex!5)) (and (bvsge (index!33742 lt!341828) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341828) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341828) (ite ((_ is Found!7843) lt!341828) (= (select (arr!20236 a!3186) (index!33740 lt!341828)) (select (arr!20236 a!3186) j!159)) (and ((_ is MissingVacant!7843) lt!341828) (= (index!33742 lt!341828) resIntermediateIndex!5) (= (select (arr!20236 a!3186) (index!33742 lt!341828)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!427884 () SeekEntryResult!7843)

(assert (=> d!101441 (= lt!341828 e!427884)))

(declare-fun c!84678 () Bool)

(assert (=> d!101441 (= c!84678 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!341827 () (_ BitVec 64))

(assert (=> d!101441 (= lt!341827 (select (arr!20236 a!3186) resIntermediateIndex!5))))

(assert (=> d!101441 (validMask!0 mask!3328)))

(assert (=> d!101441 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341828)))

(declare-fun b!768346 () Bool)

(declare-fun e!427886 () SeekEntryResult!7843)

(assert (=> b!768346 (= e!427886 (Found!7843 resIntermediateIndex!5))))

(declare-fun b!768347 () Bool)

(declare-fun e!427885 () SeekEntryResult!7843)

(assert (=> b!768347 (= e!427885 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768348 () Bool)

(assert (=> b!768348 (= e!427884 Undefined!7843)))

(declare-fun b!768349 () Bool)

(declare-fun c!84677 () Bool)

(assert (=> b!768349 (= c!84677 (= lt!341827 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768349 (= e!427886 e!427885)))

(declare-fun b!768350 () Bool)

(assert (=> b!768350 (= e!427885 (MissingVacant!7843 resIntermediateIndex!5))))

(declare-fun b!768351 () Bool)

(assert (=> b!768351 (= e!427884 e!427886)))

(declare-fun c!84679 () Bool)

(assert (=> b!768351 (= c!84679 (= lt!341827 (select (arr!20236 a!3186) j!159)))))

(assert (= (and d!101441 c!84678) b!768348))

(assert (= (and d!101441 (not c!84678)) b!768351))

(assert (= (and b!768351 c!84679) b!768346))

(assert (= (and b!768351 (not c!84679)) b!768349))

(assert (= (and b!768349 c!84677) b!768350))

(assert (= (and b!768349 (not c!84677)) b!768347))

(declare-fun m!713947 () Bool)

(assert (=> d!101441 m!713947))

(declare-fun m!713949 () Bool)

(assert (=> d!101441 m!713949))

(assert (=> d!101441 m!713773))

(assert (=> d!101441 m!713757))

(declare-fun m!713951 () Bool)

(assert (=> b!768347 m!713951))

(assert (=> b!768347 m!713951))

(assert (=> b!768347 m!713737))

(declare-fun m!713953 () Bool)

(assert (=> b!768347 m!713953))

(assert (=> b!768080 d!101441))

(declare-fun b!768352 () Bool)

(declare-fun e!427888 () SeekEntryResult!7843)

(declare-fun lt!341831 () SeekEntryResult!7843)

(assert (=> b!768352 (= e!427888 (MissingZero!7843 (index!33741 lt!341831)))))

(declare-fun d!101443 () Bool)

(declare-fun lt!341830 () SeekEntryResult!7843)

(assert (=> d!101443 (and (or ((_ is Undefined!7843) lt!341830) (not ((_ is Found!7843) lt!341830)) (and (bvsge (index!33740 lt!341830) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341830) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341830) ((_ is Found!7843) lt!341830) (not ((_ is MissingZero!7843) lt!341830)) (and (bvsge (index!33739 lt!341830) #b00000000000000000000000000000000) (bvslt (index!33739 lt!341830) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341830) ((_ is Found!7843) lt!341830) ((_ is MissingZero!7843) lt!341830) (not ((_ is MissingVacant!7843) lt!341830)) (and (bvsge (index!33742 lt!341830) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341830) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341830) (ite ((_ is Found!7843) lt!341830) (= (select (arr!20236 a!3186) (index!33740 lt!341830)) k0!2102) (ite ((_ is MissingZero!7843) lt!341830) (= (select (arr!20236 a!3186) (index!33739 lt!341830)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7843) lt!341830) (= (select (arr!20236 a!3186) (index!33742 lt!341830)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!427887 () SeekEntryResult!7843)

(assert (=> d!101443 (= lt!341830 e!427887)))

(declare-fun c!84681 () Bool)

(assert (=> d!101443 (= c!84681 (and ((_ is Intermediate!7843) lt!341831) (undefined!8655 lt!341831)))))

(assert (=> d!101443 (= lt!341831 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!101443 (validMask!0 mask!3328)))

(assert (=> d!101443 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!341830)))

(declare-fun b!768353 () Bool)

(assert (=> b!768353 (= e!427887 Undefined!7843)))

(declare-fun b!768354 () Bool)

(declare-fun e!427889 () SeekEntryResult!7843)

(assert (=> b!768354 (= e!427889 (Found!7843 (index!33741 lt!341831)))))

(declare-fun b!768355 () Bool)

(declare-fun c!84682 () Bool)

(declare-fun lt!341829 () (_ BitVec 64))

(assert (=> b!768355 (= c!84682 (= lt!341829 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768355 (= e!427889 e!427888)))

(declare-fun b!768356 () Bool)

(assert (=> b!768356 (= e!427888 (seekKeyOrZeroReturnVacant!0 (x!64690 lt!341831) (index!33741 lt!341831) (index!33741 lt!341831) k0!2102 a!3186 mask!3328))))

(declare-fun b!768357 () Bool)

(assert (=> b!768357 (= e!427887 e!427889)))

(assert (=> b!768357 (= lt!341829 (select (arr!20236 a!3186) (index!33741 lt!341831)))))

(declare-fun c!84680 () Bool)

(assert (=> b!768357 (= c!84680 (= lt!341829 k0!2102))))

(assert (= (and d!101443 c!84681) b!768353))

(assert (= (and d!101443 (not c!84681)) b!768357))

(assert (= (and b!768357 c!84680) b!768354))

(assert (= (and b!768357 (not c!84680)) b!768355))

(assert (= (and b!768355 c!84682) b!768352))

(assert (= (and b!768355 (not c!84682)) b!768356))

(declare-fun m!713955 () Bool)

(assert (=> d!101443 m!713955))

(declare-fun m!713957 () Bool)

(assert (=> d!101443 m!713957))

(declare-fun m!713959 () Bool)

(assert (=> d!101443 m!713959))

(declare-fun m!713961 () Bool)

(assert (=> d!101443 m!713961))

(assert (=> d!101443 m!713757))

(assert (=> d!101443 m!713959))

(declare-fun m!713963 () Bool)

(assert (=> d!101443 m!713963))

(declare-fun m!713965 () Bool)

(assert (=> b!768356 m!713965))

(declare-fun m!713967 () Bool)

(assert (=> b!768357 m!713967))

(assert (=> b!768069 d!101443))

(check-sat (not b!768186) (not b!768347) (not b!768152) (not b!768220) (not d!101443) (not b!768153) (not d!101403) (not b!768232) (not b!768323) (not d!101397) (not b!768205) (not d!101425) (not b!768226) (not d!101421) (not b!768326) (not bm!35092) (not d!101423) (not b!768292) (not bm!35085) (not d!101411) (not b!768345) (not d!101395) (not b!768225) (not d!101441) (not b!768213) (not bm!35086) (not d!101405) (not b!768324) (not b!768356) (not d!101407) (not b!768177))
(check-sat)
(get-model)

(assert (=> d!101425 d!101407))

(assert (=> d!101425 d!101409))

(assert (=> d!101425 d!101413))

(assert (=> d!101423 d!101413))

(assert (=> d!101395 d!101413))

(assert (=> d!101441 d!101413))

(declare-fun lt!341928 () SeekEntryResult!7843)

(declare-fun d!101519 () Bool)

(assert (=> d!101519 (and (or ((_ is Undefined!7843) lt!341928) (not ((_ is Found!7843) lt!341928)) (and (bvsge (index!33740 lt!341928) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341928) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341928) ((_ is Found!7843) lt!341928) (not ((_ is MissingVacant!7843) lt!341928)) (not (= (index!33742 lt!341928) (index!33741 lt!341820))) (and (bvsge (index!33742 lt!341928) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341928) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341928) (ite ((_ is Found!7843) lt!341928) (= (select (arr!20236 a!3186) (index!33740 lt!341928)) (select (arr!20236 a!3186) j!159)) (and ((_ is MissingVacant!7843) lt!341928) (= (index!33742 lt!341928) (index!33741 lt!341820)) (= (select (arr!20236 a!3186) (index!33742 lt!341928)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!428025 () SeekEntryResult!7843)

(assert (=> d!101519 (= lt!341928 e!428025)))

(declare-fun c!84761 () Bool)

(assert (=> d!101519 (= c!84761 (bvsge (x!64690 lt!341820) #b01111111111111111111111111111110))))

(declare-fun lt!341927 () (_ BitVec 64))

(assert (=> d!101519 (= lt!341927 (select (arr!20236 a!3186) (index!33741 lt!341820)))))

(assert (=> d!101519 (validMask!0 mask!3328)))

(assert (=> d!101519 (= (seekKeyOrZeroReturnVacant!0 (x!64690 lt!341820) (index!33741 lt!341820) (index!33741 lt!341820) (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341928)))

(declare-fun b!768579 () Bool)

(declare-fun e!428027 () SeekEntryResult!7843)

(assert (=> b!768579 (= e!428027 (Found!7843 (index!33741 lt!341820)))))

(declare-fun b!768580 () Bool)

(declare-fun e!428026 () SeekEntryResult!7843)

(assert (=> b!768580 (= e!428026 (seekKeyOrZeroReturnVacant!0 (bvadd (x!64690 lt!341820) #b00000000000000000000000000000001) (nextIndex!0 (index!33741 lt!341820) (x!64690 lt!341820) mask!3328) (index!33741 lt!341820) (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768581 () Bool)

(assert (=> b!768581 (= e!428025 Undefined!7843)))

(declare-fun b!768582 () Bool)

(declare-fun c!84760 () Bool)

(assert (=> b!768582 (= c!84760 (= lt!341927 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768582 (= e!428027 e!428026)))

(declare-fun b!768583 () Bool)

(assert (=> b!768583 (= e!428026 (MissingVacant!7843 (index!33741 lt!341820)))))

(declare-fun b!768584 () Bool)

(assert (=> b!768584 (= e!428025 e!428027)))

(declare-fun c!84762 () Bool)

(assert (=> b!768584 (= c!84762 (= lt!341927 (select (arr!20236 a!3186) j!159)))))

(assert (= (and d!101519 c!84761) b!768581))

(assert (= (and d!101519 (not c!84761)) b!768584))

(assert (= (and b!768584 c!84762) b!768579))

(assert (= (and b!768584 (not c!84762)) b!768582))

(assert (= (and b!768582 c!84760) b!768583))

(assert (= (and b!768582 (not c!84760)) b!768580))

(declare-fun m!714149 () Bool)

(assert (=> d!101519 m!714149))

(declare-fun m!714151 () Bool)

(assert (=> d!101519 m!714151))

(assert (=> d!101519 m!713933))

(assert (=> d!101519 m!713757))

(declare-fun m!714153 () Bool)

(assert (=> b!768580 m!714153))

(assert (=> b!768580 m!714153))

(assert (=> b!768580 m!713737))

(declare-fun m!714155 () Bool)

(assert (=> b!768580 m!714155))

(assert (=> b!768292 d!101519))

(declare-fun d!101521 () Bool)

(assert (=> d!101521 (arrayContainsKey!0 a!3186 lt!341754 #b00000000000000000000000000000000)))

(declare-fun lt!341931 () Unit!26412)

(declare-fun choose!13 (array!42276 (_ BitVec 64) (_ BitVec 32)) Unit!26412)

(assert (=> d!101521 (= lt!341931 (choose!13 a!3186 lt!341754 #b00000000000000000000000000000000))))

(assert (=> d!101521 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!101521 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341754 #b00000000000000000000000000000000) lt!341931)))

(declare-fun bs!21531 () Bool)

(assert (= bs!21531 d!101521))

(assert (=> bs!21531 m!713841))

(declare-fun m!714157 () Bool)

(assert (=> bs!21531 m!714157))

(assert (=> b!768152 d!101521))

(declare-fun d!101523 () Bool)

(declare-fun res!519847 () Bool)

(declare-fun e!428028 () Bool)

(assert (=> d!101523 (=> res!519847 e!428028)))

(assert (=> d!101523 (= res!519847 (= (select (arr!20236 a!3186) #b00000000000000000000000000000000) lt!341754))))

(assert (=> d!101523 (= (arrayContainsKey!0 a!3186 lt!341754 #b00000000000000000000000000000000) e!428028)))

(declare-fun b!768585 () Bool)

(declare-fun e!428029 () Bool)

(assert (=> b!768585 (= e!428028 e!428029)))

(declare-fun res!519848 () Bool)

(assert (=> b!768585 (=> (not res!519848) (not e!428029))))

(assert (=> b!768585 (= res!519848 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20657 a!3186)))))

(declare-fun b!768586 () Bool)

(assert (=> b!768586 (= e!428029 (arrayContainsKey!0 a!3186 lt!341754 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101523 (not res!519847)) b!768585))

(assert (= (and b!768585 res!519848) b!768586))

(assert (=> d!101523 m!713837))

(declare-fun m!714159 () Bool)

(assert (=> b!768586 m!714159))

(assert (=> b!768152 d!101523))

(declare-fun b!768587 () Bool)

(declare-fun e!428031 () SeekEntryResult!7843)

(declare-fun lt!341934 () SeekEntryResult!7843)

(assert (=> b!768587 (= e!428031 (MissingZero!7843 (index!33741 lt!341934)))))

(declare-fun d!101525 () Bool)

(declare-fun lt!341933 () SeekEntryResult!7843)

(assert (=> d!101525 (and (or ((_ is Undefined!7843) lt!341933) (not ((_ is Found!7843) lt!341933)) (and (bvsge (index!33740 lt!341933) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341933) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341933) ((_ is Found!7843) lt!341933) (not ((_ is MissingZero!7843) lt!341933)) (and (bvsge (index!33739 lt!341933) #b00000000000000000000000000000000) (bvslt (index!33739 lt!341933) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341933) ((_ is Found!7843) lt!341933) ((_ is MissingZero!7843) lt!341933) (not ((_ is MissingVacant!7843) lt!341933)) (and (bvsge (index!33742 lt!341933) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341933) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341933) (ite ((_ is Found!7843) lt!341933) (= (select (arr!20236 a!3186) (index!33740 lt!341933)) (select (arr!20236 a!3186) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!7843) lt!341933) (= (select (arr!20236 a!3186) (index!33739 lt!341933)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7843) lt!341933) (= (select (arr!20236 a!3186) (index!33742 lt!341933)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!428030 () SeekEntryResult!7843)

(assert (=> d!101525 (= lt!341933 e!428030)))

(declare-fun c!84764 () Bool)

(assert (=> d!101525 (= c!84764 (and ((_ is Intermediate!7843) lt!341934) (undefined!8655 lt!341934)))))

(assert (=> d!101525 (= lt!341934 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20236 a!3186) #b00000000000000000000000000000000) mask!3328) (select (arr!20236 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328))))

(assert (=> d!101525 (validMask!0 mask!3328)))

(assert (=> d!101525 (= (seekEntryOrOpen!0 (select (arr!20236 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) lt!341933)))

(declare-fun b!768588 () Bool)

(assert (=> b!768588 (= e!428030 Undefined!7843)))

(declare-fun b!768589 () Bool)

(declare-fun e!428032 () SeekEntryResult!7843)

(assert (=> b!768589 (= e!428032 (Found!7843 (index!33741 lt!341934)))))

(declare-fun b!768590 () Bool)

(declare-fun c!84765 () Bool)

(declare-fun lt!341932 () (_ BitVec 64))

(assert (=> b!768590 (= c!84765 (= lt!341932 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768590 (= e!428032 e!428031)))

(declare-fun b!768591 () Bool)

(assert (=> b!768591 (= e!428031 (seekKeyOrZeroReturnVacant!0 (x!64690 lt!341934) (index!33741 lt!341934) (index!33741 lt!341934) (select (arr!20236 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328))))

(declare-fun b!768592 () Bool)

(assert (=> b!768592 (= e!428030 e!428032)))

(assert (=> b!768592 (= lt!341932 (select (arr!20236 a!3186) (index!33741 lt!341934)))))

(declare-fun c!84763 () Bool)

(assert (=> b!768592 (= c!84763 (= lt!341932 (select (arr!20236 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101525 c!84764) b!768588))

(assert (= (and d!101525 (not c!84764)) b!768592))

(assert (= (and b!768592 c!84763) b!768589))

(assert (= (and b!768592 (not c!84763)) b!768590))

(assert (= (and b!768590 c!84765) b!768587))

(assert (= (and b!768590 (not c!84765)) b!768591))

(declare-fun m!714161 () Bool)

(assert (=> d!101525 m!714161))

(declare-fun m!714163 () Bool)

(assert (=> d!101525 m!714163))

(assert (=> d!101525 m!713837))

(declare-fun m!714165 () Bool)

(assert (=> d!101525 m!714165))

(declare-fun m!714167 () Bool)

(assert (=> d!101525 m!714167))

(assert (=> d!101525 m!713757))

(assert (=> d!101525 m!714165))

(assert (=> d!101525 m!713837))

(declare-fun m!714169 () Bool)

(assert (=> d!101525 m!714169))

(assert (=> b!768591 m!713837))

(declare-fun m!714171 () Bool)

(assert (=> b!768591 m!714171))

(declare-fun m!714173 () Bool)

(assert (=> b!768592 m!714173))

(assert (=> b!768152 d!101525))

(declare-fun d!101527 () Bool)

(declare-fun res!519851 () (_ BitVec 32))

(assert (=> d!101527 (and (bvsge res!519851 #b00000000000000000000000000000000) (bvslt res!519851 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(assert (=> d!101527 true))

(assert (=> d!101527 (= (choose!52 index!1321 x!1131 mask!3328) res!519851)))

(assert (=> d!101405 d!101527))

(assert (=> d!101405 d!101413))

(declare-fun b!768593 () Bool)

(declare-fun lt!341935 () SeekEntryResult!7843)

(assert (=> b!768593 (and (bvsge (index!33741 lt!341935) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341935) (size!20657 a!3186)))))

(declare-fun e!428037 () Bool)

(assert (=> b!768593 (= e!428037 (= (select (arr!20236 a!3186) (index!33741 lt!341935)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768594 () Bool)

(declare-fun e!428033 () SeekEntryResult!7843)

(assert (=> b!768594 (= e!428033 (Intermediate!7843 true (toIndex!0 k0!2102 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768595 () Bool)

(declare-fun e!428034 () Bool)

(assert (=> b!768595 (= e!428034 (bvsge (x!64690 lt!341935) #b01111111111111111111111111111110))))

(declare-fun b!768596 () Bool)

(declare-fun e!428035 () SeekEntryResult!7843)

(assert (=> b!768596 (= e!428035 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!2102 mask!3328) #b00000000000000000000000000000000 mask!3328) k0!2102 a!3186 mask!3328))))

(declare-fun b!768597 () Bool)

(assert (=> b!768597 (and (bvsge (index!33741 lt!341935) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341935) (size!20657 a!3186)))))

(declare-fun res!519852 () Bool)

(assert (=> b!768597 (= res!519852 (= (select (arr!20236 a!3186) (index!33741 lt!341935)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768597 (=> res!519852 e!428037)))

(declare-fun b!768598 () Bool)

(declare-fun e!428036 () Bool)

(assert (=> b!768598 (= e!428034 e!428036)))

(declare-fun res!519853 () Bool)

(assert (=> b!768598 (= res!519853 (and ((_ is Intermediate!7843) lt!341935) (not (undefined!8655 lt!341935)) (bvslt (x!64690 lt!341935) #b01111111111111111111111111111110) (bvsge (x!64690 lt!341935) #b00000000000000000000000000000000) (bvsge (x!64690 lt!341935) #b00000000000000000000000000000000)))))

(assert (=> b!768598 (=> (not res!519853) (not e!428036))))

(declare-fun b!768599 () Bool)

(assert (=> b!768599 (= e!428035 (Intermediate!7843 false (toIndex!0 k0!2102 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!768600 () Bool)

(assert (=> b!768600 (and (bvsge (index!33741 lt!341935) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341935) (size!20657 a!3186)))))

(declare-fun res!519854 () Bool)

(assert (=> b!768600 (= res!519854 (= (select (arr!20236 a!3186) (index!33741 lt!341935)) k0!2102))))

(assert (=> b!768600 (=> res!519854 e!428037)))

(assert (=> b!768600 (= e!428036 e!428037)))

(declare-fun d!101529 () Bool)

(assert (=> d!101529 e!428034))

(declare-fun c!84766 () Bool)

(assert (=> d!101529 (= c!84766 (and ((_ is Intermediate!7843) lt!341935) (undefined!8655 lt!341935)))))

(assert (=> d!101529 (= lt!341935 e!428033)))

(declare-fun c!84768 () Bool)

(assert (=> d!101529 (= c!84768 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341936 () (_ BitVec 64))

(assert (=> d!101529 (= lt!341936 (select (arr!20236 a!3186) (toIndex!0 k0!2102 mask!3328)))))

(assert (=> d!101529 (validMask!0 mask!3328)))

(assert (=> d!101529 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328) lt!341935)))

(declare-fun b!768601 () Bool)

(assert (=> b!768601 (= e!428033 e!428035)))

(declare-fun c!84767 () Bool)

(assert (=> b!768601 (= c!84767 (or (= lt!341936 k0!2102) (= (bvadd lt!341936 lt!341936) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101529 c!84768) b!768594))

(assert (= (and d!101529 (not c!84768)) b!768601))

(assert (= (and b!768601 c!84767) b!768599))

(assert (= (and b!768601 (not c!84767)) b!768596))

(assert (= (and d!101529 c!84766) b!768595))

(assert (= (and d!101529 (not c!84766)) b!768598))

(assert (= (and b!768598 res!519853) b!768600))

(assert (= (and b!768600 (not res!519854)) b!768597))

(assert (= (and b!768597 (not res!519852)) b!768593))

(declare-fun m!714175 () Bool)

(assert (=> b!768597 m!714175))

(assert (=> d!101529 m!713959))

(declare-fun m!714177 () Bool)

(assert (=> d!101529 m!714177))

(assert (=> d!101529 m!713757))

(assert (=> b!768596 m!713959))

(declare-fun m!714179 () Bool)

(assert (=> b!768596 m!714179))

(assert (=> b!768596 m!714179))

(declare-fun m!714181 () Bool)

(assert (=> b!768596 m!714181))

(assert (=> b!768600 m!714175))

(assert (=> b!768593 m!714175))

(assert (=> d!101443 d!101529))

(declare-fun d!101531 () Bool)

(declare-fun lt!341938 () (_ BitVec 32))

(declare-fun lt!341937 () (_ BitVec 32))

(assert (=> d!101531 (= lt!341938 (bvmul (bvxor lt!341937 (bvlshr lt!341937 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101531 (= lt!341937 ((_ extract 31 0) (bvand (bvxor k0!2102 (bvlshr k0!2102 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101531 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519739 (let ((h!15385 ((_ extract 31 0) (bvand (bvxor k0!2102 (bvlshr k0!2102 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64693 (bvmul (bvxor h!15385 (bvlshr h!15385 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64693 (bvlshr x!64693 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519739 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519739 #b00000000000000000000000000000000))))))

(assert (=> d!101531 (= (toIndex!0 k0!2102 mask!3328) (bvand (bvxor lt!341938 (bvlshr lt!341938 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> d!101443 d!101531))

(assert (=> d!101443 d!101413))

(assert (=> d!101403 d!101413))

(declare-fun b!768602 () Bool)

(declare-fun lt!341939 () SeekEntryResult!7843)

(assert (=> b!768602 (and (bvsge (index!33741 lt!341939) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341939) (size!20657 lt!341714)))))

(declare-fun e!428042 () Bool)

(assert (=> b!768602 (= e!428042 (= (select (arr!20236 lt!341714) (index!33741 lt!341939)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!428038 () SeekEntryResult!7843)

(declare-fun b!768603 () Bool)

(assert (=> b!768603 (= e!428038 (Intermediate!7843 true (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001)))))

(declare-fun b!768604 () Bool)

(declare-fun e!428039 () Bool)

(assert (=> b!768604 (= e!428039 (bvsge (x!64690 lt!341939) #b01111111111111111111111111111110))))

(declare-fun b!768605 () Bool)

(declare-fun e!428040 () SeekEntryResult!7843)

(assert (=> b!768605 (= e!428040 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001) mask!3328) lt!341715 lt!341714 mask!3328))))

(declare-fun b!768606 () Bool)

(assert (=> b!768606 (and (bvsge (index!33741 lt!341939) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341939) (size!20657 lt!341714)))))

(declare-fun res!519855 () Bool)

(assert (=> b!768606 (= res!519855 (= (select (arr!20236 lt!341714) (index!33741 lt!341939)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768606 (=> res!519855 e!428042)))

(declare-fun b!768607 () Bool)

(declare-fun e!428041 () Bool)

(assert (=> b!768607 (= e!428039 e!428041)))

(declare-fun res!519856 () Bool)

(assert (=> b!768607 (= res!519856 (and ((_ is Intermediate!7843) lt!341939) (not (undefined!8655 lt!341939)) (bvslt (x!64690 lt!341939) #b01111111111111111111111111111110) (bvsge (x!64690 lt!341939) #b00000000000000000000000000000000) (bvsge (x!64690 lt!341939) (bvadd x!1131 #b00000000000000000000000000000001))))))

(assert (=> b!768607 (=> (not res!519856) (not e!428041))))

(declare-fun b!768608 () Bool)

(assert (=> b!768608 (= e!428040 (Intermediate!7843 false (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001)))))

(declare-fun b!768609 () Bool)

(assert (=> b!768609 (and (bvsge (index!33741 lt!341939) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341939) (size!20657 lt!341714)))))

(declare-fun res!519857 () Bool)

(assert (=> b!768609 (= res!519857 (= (select (arr!20236 lt!341714) (index!33741 lt!341939)) lt!341715))))

(assert (=> b!768609 (=> res!519857 e!428042)))

(assert (=> b!768609 (= e!428041 e!428042)))

(declare-fun d!101533 () Bool)

(assert (=> d!101533 e!428039))

(declare-fun c!84769 () Bool)

(assert (=> d!101533 (= c!84769 (and ((_ is Intermediate!7843) lt!341939) (undefined!8655 lt!341939)))))

(assert (=> d!101533 (= lt!341939 e!428038)))

(declare-fun c!84771 () Bool)

(assert (=> d!101533 (= c!84771 (bvsge (bvadd x!1131 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!341940 () (_ BitVec 64))

(assert (=> d!101533 (= lt!341940 (select (arr!20236 lt!341714) (nextIndex!0 index!1321 x!1131 mask!3328)))))

(assert (=> d!101533 (validMask!0 mask!3328)))

(assert (=> d!101533 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!341715 lt!341714 mask!3328) lt!341939)))

(declare-fun b!768610 () Bool)

(assert (=> b!768610 (= e!428038 e!428040)))

(declare-fun c!84770 () Bool)

(assert (=> b!768610 (= c!84770 (or (= lt!341940 lt!341715) (= (bvadd lt!341940 lt!341940) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101533 c!84771) b!768603))

(assert (= (and d!101533 (not c!84771)) b!768610))

(assert (= (and b!768610 c!84770) b!768608))

(assert (= (and b!768610 (not c!84770)) b!768605))

(assert (= (and d!101533 c!84769) b!768604))

(assert (= (and d!101533 (not c!84769)) b!768607))

(assert (= (and b!768607 res!519856) b!768609))

(assert (= (and b!768609 (not res!519857)) b!768606))

(assert (= (and b!768606 (not res!519855)) b!768602))

(declare-fun m!714183 () Bool)

(assert (=> b!768606 m!714183))

(assert (=> d!101533 m!713769))

(declare-fun m!714185 () Bool)

(assert (=> d!101533 m!714185))

(assert (=> d!101533 m!713757))

(assert (=> b!768605 m!713769))

(declare-fun m!714187 () Bool)

(assert (=> b!768605 m!714187))

(assert (=> b!768605 m!714187))

(declare-fun m!714189 () Bool)

(assert (=> b!768605 m!714189))

(assert (=> b!768609 m!714183))

(assert (=> b!768602 m!714183))

(assert (=> b!768177 d!101533))

(assert (=> b!768177 d!101405))

(declare-fun d!101535 () Bool)

(assert (=> d!101535 (= (validKeyInArray!0 (select (arr!20236 a!3186) #b00000000000000000000000000000000)) (and (not (= (select (arr!20236 a!3186) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20236 a!3186) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!768153 d!101535))

(declare-fun b!768611 () Bool)

(declare-fun e!428043 () Bool)

(declare-fun e!428044 () Bool)

(assert (=> b!768611 (= e!428043 e!428044)))

(declare-fun lt!341942 () (_ BitVec 64))

(assert (=> b!768611 (= lt!341942 (select (arr!20236 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!341941 () Unit!26412)

(assert (=> b!768611 (= lt!341941 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341942 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!768611 (arrayContainsKey!0 a!3186 lt!341942 #b00000000000000000000000000000000)))

(declare-fun lt!341943 () Unit!26412)

(assert (=> b!768611 (= lt!341943 lt!341941)))

(declare-fun res!519858 () Bool)

(assert (=> b!768611 (= res!519858 (= (seekEntryOrOpen!0 (select (arr!20236 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) a!3186 mask!3328) (Found!7843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!768611 (=> (not res!519858) (not e!428044))))

(declare-fun b!768612 () Bool)

(declare-fun e!428045 () Bool)

(assert (=> b!768612 (= e!428045 e!428043)))

(declare-fun c!84772 () Bool)

(assert (=> b!768612 (= c!84772 (validKeyInArray!0 (select (arr!20236 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!35104 () Bool)

(declare-fun call!35107 () Bool)

(assert (=> bm!35104 (= call!35107 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!101537 () Bool)

(declare-fun res!519859 () Bool)

(assert (=> d!101537 (=> res!519859 e!428045)))

(assert (=> d!101537 (= res!519859 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20657 a!3186)))))

(assert (=> d!101537 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328) e!428045)))

(declare-fun b!768613 () Bool)

(assert (=> b!768613 (= e!428044 call!35107)))

(declare-fun b!768614 () Bool)

(assert (=> b!768614 (= e!428043 call!35107)))

(assert (= (and d!101537 (not res!519859)) b!768612))

(assert (= (and b!768612 c!84772) b!768611))

(assert (= (and b!768612 (not c!84772)) b!768614))

(assert (= (and b!768611 res!519858) b!768613))

(assert (= (or b!768613 b!768614) bm!35104))

(declare-fun m!714191 () Bool)

(assert (=> b!768611 m!714191))

(declare-fun m!714193 () Bool)

(assert (=> b!768611 m!714193))

(declare-fun m!714195 () Bool)

(assert (=> b!768611 m!714195))

(assert (=> b!768611 m!714191))

(declare-fun m!714197 () Bool)

(assert (=> b!768611 m!714197))

(assert (=> b!768612 m!714191))

(assert (=> b!768612 m!714191))

(declare-fun m!714199 () Bool)

(assert (=> b!768612 m!714199))

(declare-fun m!714201 () Bool)

(assert (=> bm!35104 m!714201))

(assert (=> bm!35085 d!101537))

(assert (=> d!101421 d!101419))

(declare-fun d!101539 () Bool)

(assert (=> d!101539 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(assert (=> d!101539 true))

(declare-fun _$72!113 () Unit!26412)

(assert (=> d!101539 (= (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) _$72!113)))

(declare-fun bs!21532 () Bool)

(assert (= bs!21532 d!101539))

(assert (=> bs!21532 m!713777))

(assert (=> d!101421 d!101539))

(assert (=> d!101421 d!101413))

(declare-fun lt!341945 () SeekEntryResult!7843)

(declare-fun d!101541 () Bool)

(assert (=> d!101541 (and (or ((_ is Undefined!7843) lt!341945) (not ((_ is Found!7843) lt!341945)) (and (bvsge (index!33740 lt!341945) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341945) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341945) ((_ is Found!7843) lt!341945) (not ((_ is MissingVacant!7843) lt!341945)) (not (= (index!33742 lt!341945) resIntermediateIndex!5)) (and (bvsge (index!33742 lt!341945) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341945) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341945) (ite ((_ is Found!7843) lt!341945) (= (select (arr!20236 a!3186) (index!33740 lt!341945)) (select (arr!20236 a!3186) j!159)) (and ((_ is MissingVacant!7843) lt!341945) (= (index!33742 lt!341945) resIntermediateIndex!5) (= (select (arr!20236 a!3186) (index!33742 lt!341945)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!428046 () SeekEntryResult!7843)

(assert (=> d!101541 (= lt!341945 e!428046)))

(declare-fun c!84774 () Bool)

(assert (=> d!101541 (= c!84774 (bvsge (bvadd x!1131 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!341944 () (_ BitVec 64))

(assert (=> d!101541 (= lt!341944 (select (arr!20236 a!3186) (nextIndex!0 index!1321 x!1131 mask!3328)))))

(assert (=> d!101541 (validMask!0 mask!3328)))

(assert (=> d!101541 (= (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341945)))

(declare-fun b!768615 () Bool)

(declare-fun e!428048 () SeekEntryResult!7843)

(assert (=> b!768615 (= e!428048 (Found!7843 (nextIndex!0 index!1321 x!1131 mask!3328)))))

(declare-fun b!768616 () Bool)

(declare-fun e!428047 () SeekEntryResult!7843)

(assert (=> b!768616 (= e!428047 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001) mask!3328) resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768617 () Bool)

(assert (=> b!768617 (= e!428046 Undefined!7843)))

(declare-fun b!768618 () Bool)

(declare-fun c!84773 () Bool)

(assert (=> b!768618 (= c!84773 (= lt!341944 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768618 (= e!428048 e!428047)))

(declare-fun b!768619 () Bool)

(assert (=> b!768619 (= e!428047 (MissingVacant!7843 resIntermediateIndex!5))))

(declare-fun b!768620 () Bool)

(assert (=> b!768620 (= e!428046 e!428048)))

(declare-fun c!84775 () Bool)

(assert (=> b!768620 (= c!84775 (= lt!341944 (select (arr!20236 a!3186) j!159)))))

(assert (= (and d!101541 c!84774) b!768617))

(assert (= (and d!101541 (not c!84774)) b!768620))

(assert (= (and b!768620 c!84775) b!768615))

(assert (= (and b!768620 (not c!84775)) b!768618))

(assert (= (and b!768618 c!84773) b!768619))

(assert (= (and b!768618 (not c!84773)) b!768616))

(declare-fun m!714203 () Bool)

(assert (=> d!101541 m!714203))

(declare-fun m!714205 () Bool)

(assert (=> d!101541 m!714205))

(assert (=> d!101541 m!713769))

(declare-fun m!714207 () Bool)

(assert (=> d!101541 m!714207))

(assert (=> d!101541 m!713757))

(assert (=> b!768616 m!713769))

(assert (=> b!768616 m!714187))

(assert (=> b!768616 m!714187))

(assert (=> b!768616 m!713737))

(declare-fun m!714209 () Bool)

(assert (=> b!768616 m!714209))

(assert (=> b!768205 d!101541))

(assert (=> b!768205 d!101405))

(assert (=> d!101411 d!101413))

(assert (=> b!768324 d!101535))

(declare-fun b!768621 () Bool)

(declare-fun lt!341946 () SeekEntryResult!7843)

(assert (=> b!768621 (and (bvsge (index!33741 lt!341946) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341946) (size!20657 a!3186)))))

(declare-fun e!428053 () Bool)

(assert (=> b!768621 (= e!428053 (= (select (arr!20236 a!3186) (index!33741 lt!341946)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768622 () Bool)

(declare-fun e!428049 () SeekEntryResult!7843)

(assert (=> b!768622 (= e!428049 (Intermediate!7843 true (nextIndex!0 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!768623 () Bool)

(declare-fun e!428050 () Bool)

(assert (=> b!768623 (= e!428050 (bvsge (x!64690 lt!341946) #b01111111111111111111111111111110))))

(declare-fun b!768624 () Bool)

(declare-fun e!428051 () SeekEntryResult!7843)

(assert (=> b!768624 (= e!428051 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3328) (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768625 () Bool)

(assert (=> b!768625 (and (bvsge (index!33741 lt!341946) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341946) (size!20657 a!3186)))))

(declare-fun res!519860 () Bool)

(assert (=> b!768625 (= res!519860 (= (select (arr!20236 a!3186) (index!33741 lt!341946)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768625 (=> res!519860 e!428053)))

(declare-fun b!768626 () Bool)

(declare-fun e!428052 () Bool)

(assert (=> b!768626 (= e!428050 e!428052)))

(declare-fun res!519861 () Bool)

(assert (=> b!768626 (= res!519861 (and ((_ is Intermediate!7843) lt!341946) (not (undefined!8655 lt!341946)) (bvslt (x!64690 lt!341946) #b01111111111111111111111111111110) (bvsge (x!64690 lt!341946) #b00000000000000000000000000000000) (bvsge (x!64690 lt!341946) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!768626 (=> (not res!519861) (not e!428052))))

(declare-fun b!768627 () Bool)

(assert (=> b!768627 (= e!428051 (Intermediate!7843 false (nextIndex!0 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!768628 () Bool)

(assert (=> b!768628 (and (bvsge (index!33741 lt!341946) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341946) (size!20657 a!3186)))))

(declare-fun res!519862 () Bool)

(assert (=> b!768628 (= res!519862 (= (select (arr!20236 a!3186) (index!33741 lt!341946)) (select (arr!20236 a!3186) j!159)))))

(assert (=> b!768628 (=> res!519862 e!428053)))

(assert (=> b!768628 (= e!428052 e!428053)))

(declare-fun d!101543 () Bool)

(assert (=> d!101543 e!428050))

(declare-fun c!84776 () Bool)

(assert (=> d!101543 (= c!84776 (and ((_ is Intermediate!7843) lt!341946) (undefined!8655 lt!341946)))))

(assert (=> d!101543 (= lt!341946 e!428049)))

(declare-fun c!84778 () Bool)

(assert (=> d!101543 (= c!84778 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!341947 () (_ BitVec 64))

(assert (=> d!101543 (= lt!341947 (select (arr!20236 a!3186) (nextIndex!0 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328)))))

(assert (=> d!101543 (validMask!0 mask!3328)))

(assert (=> d!101543 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341946)))

(declare-fun b!768629 () Bool)

(assert (=> b!768629 (= e!428049 e!428051)))

(declare-fun c!84777 () Bool)

(assert (=> b!768629 (= c!84777 (or (= lt!341947 (select (arr!20236 a!3186) j!159)) (= (bvadd lt!341947 lt!341947) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101543 c!84778) b!768622))

(assert (= (and d!101543 (not c!84778)) b!768629))

(assert (= (and b!768629 c!84777) b!768627))

(assert (= (and b!768629 (not c!84777)) b!768624))

(assert (= (and d!101543 c!84776) b!768623))

(assert (= (and d!101543 (not c!84776)) b!768626))

(assert (= (and b!768626 res!519861) b!768628))

(assert (= (and b!768628 (not res!519862)) b!768625))

(assert (= (and b!768625 (not res!519860)) b!768621))

(declare-fun m!714211 () Bool)

(assert (=> b!768625 m!714211))

(assert (=> d!101543 m!713877))

(declare-fun m!714213 () Bool)

(assert (=> d!101543 m!714213))

(assert (=> d!101543 m!713757))

(assert (=> b!768624 m!713877))

(declare-fun m!714215 () Bool)

(assert (=> b!768624 m!714215))

(assert (=> b!768624 m!714215))

(assert (=> b!768624 m!713737))

(declare-fun m!714217 () Bool)

(assert (=> b!768624 m!714217))

(assert (=> b!768628 m!714211))

(assert (=> b!768621 m!714211))

(assert (=> b!768213 d!101543))

(declare-fun d!101545 () Bool)

(declare-fun lt!341948 () (_ BitVec 32))

(assert (=> d!101545 (and (bvsge lt!341948 #b00000000000000000000000000000000) (bvslt lt!341948 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(assert (=> d!101545 (= lt!341948 (choose!52 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328))))

(assert (=> d!101545 (validMask!0 mask!3328)))

(assert (=> d!101545 (= (nextIndex!0 (toIndex!0 (select (arr!20236 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) lt!341948)))

(declare-fun bs!21533 () Bool)

(assert (= bs!21533 d!101545))

(assert (=> bs!21533 m!713783))

(declare-fun m!714219 () Bool)

(assert (=> bs!21533 m!714219))

(assert (=> bs!21533 m!713757))

(assert (=> b!768213 d!101545))

(declare-fun d!101547 () Bool)

(declare-fun lt!341951 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!383 (List!14291) (InoxSet (_ BitVec 64)))

(assert (=> d!101547 (= lt!341951 (select (content!383 Nil!14288) (select (arr!20236 a!3186) #b00000000000000000000000000000000)))))

(declare-fun e!428059 () Bool)

(assert (=> d!101547 (= lt!341951 e!428059)))

(declare-fun res!519868 () Bool)

(assert (=> d!101547 (=> (not res!519868) (not e!428059))))

(assert (=> d!101547 (= res!519868 ((_ is Cons!14287) Nil!14288))))

(assert (=> d!101547 (= (contains!4086 Nil!14288 (select (arr!20236 a!3186) #b00000000000000000000000000000000)) lt!341951)))

(declare-fun b!768634 () Bool)

(declare-fun e!428058 () Bool)

(assert (=> b!768634 (= e!428059 e!428058)))

(declare-fun res!519867 () Bool)

(assert (=> b!768634 (=> res!519867 e!428058)))

(assert (=> b!768634 (= res!519867 (= (h!15383 Nil!14288) (select (arr!20236 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!768635 () Bool)

(assert (=> b!768635 (= e!428058 (contains!4086 (t!20614 Nil!14288) (select (arr!20236 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!101547 res!519868) b!768634))

(assert (= (and b!768634 (not res!519867)) b!768635))

(declare-fun m!714221 () Bool)

(assert (=> d!101547 m!714221))

(assert (=> d!101547 m!713837))

(declare-fun m!714223 () Bool)

(assert (=> d!101547 m!714223))

(assert (=> b!768635 m!713837))

(declare-fun m!714225 () Bool)

(assert (=> b!768635 m!714225))

(assert (=> b!768323 d!101547))

(declare-fun b!768636 () Bool)

(declare-fun lt!341952 () SeekEntryResult!7843)

(assert (=> b!768636 (and (bvsge (index!33741 lt!341952) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341952) (size!20657 lt!341714)))))

(declare-fun e!428064 () Bool)

(assert (=> b!768636 (= e!428064 (= (select (arr!20236 lt!341714) (index!33741 lt!341952)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!768637 () Bool)

(declare-fun e!428060 () SeekEntryResult!7843)

(assert (=> b!768637 (= e!428060 (Intermediate!7843 true (nextIndex!0 (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!768638 () Bool)

(declare-fun e!428061 () Bool)

(assert (=> b!768638 (= e!428061 (bvsge (x!64690 lt!341952) #b01111111111111111111111111111110))))

(declare-fun b!768639 () Bool)

(declare-fun e!428062 () SeekEntryResult!7843)

(assert (=> b!768639 (= e!428062 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) mask!3328) lt!341715 lt!341714 mask!3328))))

(declare-fun b!768640 () Bool)

(assert (=> b!768640 (and (bvsge (index!33741 lt!341952) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341952) (size!20657 lt!341714)))))

(declare-fun res!519869 () Bool)

(assert (=> b!768640 (= res!519869 (= (select (arr!20236 lt!341714) (index!33741 lt!341952)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768640 (=> res!519869 e!428064)))

(declare-fun b!768641 () Bool)

(declare-fun e!428063 () Bool)

(assert (=> b!768641 (= e!428061 e!428063)))

(declare-fun res!519870 () Bool)

(assert (=> b!768641 (= res!519870 (and ((_ is Intermediate!7843) lt!341952) (not (undefined!8655 lt!341952)) (bvslt (x!64690 lt!341952) #b01111111111111111111111111111110) (bvsge (x!64690 lt!341952) #b00000000000000000000000000000000) (bvsge (x!64690 lt!341952) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!768641 (=> (not res!519870) (not e!428063))))

(declare-fun b!768642 () Bool)

(assert (=> b!768642 (= e!428062 (Intermediate!7843 false (nextIndex!0 (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000 mask!3328) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun b!768643 () Bool)

(assert (=> b!768643 (and (bvsge (index!33741 lt!341952) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341952) (size!20657 lt!341714)))))

(declare-fun res!519871 () Bool)

(assert (=> b!768643 (= res!519871 (= (select (arr!20236 lt!341714) (index!33741 lt!341952)) lt!341715))))

(assert (=> b!768643 (=> res!519871 e!428064)))

(assert (=> b!768643 (= e!428063 e!428064)))

(declare-fun d!101549 () Bool)

(assert (=> d!101549 e!428061))

(declare-fun c!84779 () Bool)

(assert (=> d!101549 (= c!84779 (and ((_ is Intermediate!7843) lt!341952) (undefined!8655 lt!341952)))))

(assert (=> d!101549 (= lt!341952 e!428060)))

(declare-fun c!84781 () Bool)

(assert (=> d!101549 (= c!84781 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!341953 () (_ BitVec 64))

(assert (=> d!101549 (= lt!341953 (select (arr!20236 lt!341714) (nextIndex!0 (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000 mask!3328)))))

(assert (=> d!101549 (validMask!0 mask!3328)))

(assert (=> d!101549 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!341715 lt!341714 mask!3328) lt!341952)))

(declare-fun b!768644 () Bool)

(assert (=> b!768644 (= e!428060 e!428062)))

(declare-fun c!84780 () Bool)

(assert (=> b!768644 (= c!84780 (or (= lt!341953 lt!341715) (= (bvadd lt!341953 lt!341953) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101549 c!84781) b!768637))

(assert (= (and d!101549 (not c!84781)) b!768644))

(assert (= (and b!768644 c!84780) b!768642))

(assert (= (and b!768644 (not c!84780)) b!768639))

(assert (= (and d!101549 c!84779) b!768638))

(assert (= (and d!101549 (not c!84779)) b!768641))

(assert (= (and b!768641 res!519870) b!768643))

(assert (= (and b!768643 (not res!519871)) b!768640))

(assert (= (and b!768640 (not res!519869)) b!768636))

(declare-fun m!714227 () Bool)

(assert (=> b!768640 m!714227))

(assert (=> d!101549 m!713859))

(declare-fun m!714229 () Bool)

(assert (=> d!101549 m!714229))

(assert (=> d!101549 m!713757))

(assert (=> b!768639 m!713859))

(declare-fun m!714231 () Bool)

(assert (=> b!768639 m!714231))

(assert (=> b!768639 m!714231))

(declare-fun m!714233 () Bool)

(assert (=> b!768639 m!714233))

(assert (=> b!768643 m!714227))

(assert (=> b!768636 m!714227))

(assert (=> b!768186 d!101549))

(declare-fun d!101551 () Bool)

(declare-fun lt!341954 () (_ BitVec 32))

(assert (=> d!101551 (and (bvsge lt!341954 #b00000000000000000000000000000000) (bvslt lt!341954 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(assert (=> d!101551 (= lt!341954 (choose!52 (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000 mask!3328))))

(assert (=> d!101551 (validMask!0 mask!3328)))

(assert (=> d!101551 (= (nextIndex!0 (toIndex!0 lt!341715 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!341954)))

(declare-fun bs!21534 () Bool)

(assert (= bs!21534 d!101551))

(assert (=> bs!21534 m!713747))

(declare-fun m!714235 () Bool)

(assert (=> bs!21534 m!714235))

(assert (=> bs!21534 m!713757))

(assert (=> b!768186 d!101551))

(declare-fun d!101553 () Bool)

(declare-fun lt!341956 () SeekEntryResult!7843)

(assert (=> d!101553 (and (or ((_ is Undefined!7843) lt!341956) (not ((_ is Found!7843) lt!341956)) (and (bvsge (index!33740 lt!341956) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341956) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341956) ((_ is Found!7843) lt!341956) (not ((_ is MissingVacant!7843) lt!341956)) (not (= (index!33742 lt!341956) resIntermediateIndex!5)) (and (bvsge (index!33742 lt!341956) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341956) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341956) (ite ((_ is Found!7843) lt!341956) (= (select (arr!20236 a!3186) (index!33740 lt!341956)) (select (arr!20236 a!3186) j!159)) (and ((_ is MissingVacant!7843) lt!341956) (= (index!33742 lt!341956) resIntermediateIndex!5) (= (select (arr!20236 a!3186) (index!33742 lt!341956)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!428065 () SeekEntryResult!7843)

(assert (=> d!101553 (= lt!341956 e!428065)))

(declare-fun c!84783 () Bool)

(assert (=> d!101553 (= c!84783 (bvsge (bvadd resIntermediateX!5 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!341955 () (_ BitVec 64))

(assert (=> d!101553 (= lt!341955 (select (arr!20236 a!3186) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328)))))

(assert (=> d!101553 (validMask!0 mask!3328)))

(assert (=> d!101553 (= (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341956)))

(declare-fun e!428067 () SeekEntryResult!7843)

(declare-fun b!768645 () Bool)

(assert (=> b!768645 (= e!428067 (Found!7843 (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328)))))

(declare-fun b!768646 () Bool)

(declare-fun e!428066 () SeekEntryResult!7843)

(assert (=> b!768646 (= e!428066 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) (bvadd resIntermediateX!5 #b00000000000000000000000000000001) mask!3328) resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768647 () Bool)

(assert (=> b!768647 (= e!428065 Undefined!7843)))

(declare-fun b!768648 () Bool)

(declare-fun c!84782 () Bool)

(assert (=> b!768648 (= c!84782 (= lt!341955 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768648 (= e!428067 e!428066)))

(declare-fun b!768649 () Bool)

(assert (=> b!768649 (= e!428066 (MissingVacant!7843 resIntermediateIndex!5))))

(declare-fun b!768650 () Bool)

(assert (=> b!768650 (= e!428065 e!428067)))

(declare-fun c!84784 () Bool)

(assert (=> b!768650 (= c!84784 (= lt!341955 (select (arr!20236 a!3186) j!159)))))

(assert (= (and d!101553 c!84783) b!768647))

(assert (= (and d!101553 (not c!84783)) b!768650))

(assert (= (and b!768650 c!84784) b!768645))

(assert (= (and b!768650 (not c!84784)) b!768648))

(assert (= (and b!768648 c!84782) b!768649))

(assert (= (and b!768648 (not c!84782)) b!768646))

(declare-fun m!714237 () Bool)

(assert (=> d!101553 m!714237))

(declare-fun m!714239 () Bool)

(assert (=> d!101553 m!714239))

(assert (=> d!101553 m!713951))

(declare-fun m!714241 () Bool)

(assert (=> d!101553 m!714241))

(assert (=> d!101553 m!713757))

(assert (=> b!768646 m!713951))

(declare-fun m!714243 () Bool)

(assert (=> b!768646 m!714243))

(assert (=> b!768646 m!714243))

(assert (=> b!768646 m!713737))

(declare-fun m!714245 () Bool)

(assert (=> b!768646 m!714245))

(assert (=> b!768347 d!101553))

(declare-fun d!101555 () Bool)

(declare-fun lt!341957 () (_ BitVec 32))

(assert (=> d!101555 (and (bvsge lt!341957 #b00000000000000000000000000000000) (bvslt lt!341957 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(assert (=> d!101555 (= lt!341957 (choose!52 resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(assert (=> d!101555 (validMask!0 mask!3328)))

(assert (=> d!101555 (= (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) lt!341957)))

(declare-fun bs!21535 () Bool)

(assert (= bs!21535 d!101555))

(declare-fun m!714247 () Bool)

(assert (=> bs!21535 m!714247))

(assert (=> bs!21535 m!713757))

(assert (=> b!768347 d!101555))

(declare-fun d!101557 () Bool)

(declare-fun res!519872 () Bool)

(declare-fun e!428069 () Bool)

(assert (=> d!101557 (=> res!519872 e!428069)))

(assert (=> d!101557 (= res!519872 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20657 a!3186)))))

(assert (=> d!101557 (= (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84670 (Cons!14287 (select (arr!20236 a!3186) #b00000000000000000000000000000000) Nil!14288) Nil!14288)) e!428069)))

(declare-fun b!768651 () Bool)

(declare-fun e!428071 () Bool)

(assert (=> b!768651 (= e!428071 (contains!4086 (ite c!84670 (Cons!14287 (select (arr!20236 a!3186) #b00000000000000000000000000000000) Nil!14288) Nil!14288) (select (arr!20236 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!768652 () Bool)

(declare-fun e!428068 () Bool)

(assert (=> b!768652 (= e!428069 e!428068)))

(declare-fun res!519873 () Bool)

(assert (=> b!768652 (=> (not res!519873) (not e!428068))))

(assert (=> b!768652 (= res!519873 (not e!428071))))

(declare-fun res!519874 () Bool)

(assert (=> b!768652 (=> (not res!519874) (not e!428071))))

(assert (=> b!768652 (= res!519874 (validKeyInArray!0 (select (arr!20236 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!768653 () Bool)

(declare-fun e!428070 () Bool)

(declare-fun call!35108 () Bool)

(assert (=> b!768653 (= e!428070 call!35108)))

(declare-fun b!768654 () Bool)

(assert (=> b!768654 (= e!428068 e!428070)))

(declare-fun c!84785 () Bool)

(assert (=> b!768654 (= c!84785 (validKeyInArray!0 (select (arr!20236 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!35105 () Bool)

(assert (=> bm!35105 (= call!35108 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!84785 (Cons!14287 (select (arr!20236 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!84670 (Cons!14287 (select (arr!20236 a!3186) #b00000000000000000000000000000000) Nil!14288) Nil!14288)) (ite c!84670 (Cons!14287 (select (arr!20236 a!3186) #b00000000000000000000000000000000) Nil!14288) Nil!14288))))))

(declare-fun b!768655 () Bool)

(assert (=> b!768655 (= e!428070 call!35108)))

(assert (= (and d!101557 (not res!519872)) b!768652))

(assert (= (and b!768652 res!519874) b!768651))

(assert (= (and b!768652 res!519873) b!768654))

(assert (= (and b!768654 c!84785) b!768655))

(assert (= (and b!768654 (not c!84785)) b!768653))

(assert (= (or b!768655 b!768653) bm!35105))

(assert (=> b!768651 m!714191))

(assert (=> b!768651 m!714191))

(declare-fun m!714249 () Bool)

(assert (=> b!768651 m!714249))

(assert (=> b!768652 m!714191))

(assert (=> b!768652 m!714191))

(assert (=> b!768652 m!714199))

(assert (=> b!768654 m!714191))

(assert (=> b!768654 m!714191))

(assert (=> b!768654 m!714199))

(assert (=> bm!35105 m!714191))

(declare-fun m!714251 () Bool)

(assert (=> bm!35105 m!714251))

(assert (=> bm!35092 d!101557))

(assert (=> b!768326 d!101535))

(assert (=> d!101397 d!101413))

(assert (=> d!101407 d!101413))

(declare-fun b!768656 () Bool)

(declare-fun lt!341958 () SeekEntryResult!7843)

(assert (=> b!768656 (and (bvsge (index!33741 lt!341958) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341958) (size!20657 a!3186)))))

(declare-fun e!428076 () Bool)

(assert (=> b!768656 (= e!428076 (= (select (arr!20236 a!3186) (index!33741 lt!341958)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!428072 () SeekEntryResult!7843)

(declare-fun b!768657 () Bool)

(assert (=> b!768657 (= e!428072 (Intermediate!7843 true (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001)))))

(declare-fun b!768658 () Bool)

(declare-fun e!428073 () Bool)

(assert (=> b!768658 (= e!428073 (bvsge (x!64690 lt!341958) #b01111111111111111111111111111110))))

(declare-fun b!768659 () Bool)

(declare-fun e!428074 () SeekEntryResult!7843)

(assert (=> b!768659 (= e!428074 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001) mask!3328) (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768660 () Bool)

(assert (=> b!768660 (and (bvsge (index!33741 lt!341958) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341958) (size!20657 a!3186)))))

(declare-fun res!519875 () Bool)

(assert (=> b!768660 (= res!519875 (= (select (arr!20236 a!3186) (index!33741 lt!341958)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768660 (=> res!519875 e!428076)))

(declare-fun b!768661 () Bool)

(declare-fun e!428075 () Bool)

(assert (=> b!768661 (= e!428073 e!428075)))

(declare-fun res!519876 () Bool)

(assert (=> b!768661 (= res!519876 (and ((_ is Intermediate!7843) lt!341958) (not (undefined!8655 lt!341958)) (bvslt (x!64690 lt!341958) #b01111111111111111111111111111110) (bvsge (x!64690 lt!341958) #b00000000000000000000000000000000) (bvsge (x!64690 lt!341958) (bvadd x!1131 #b00000000000000000000000000000001))))))

(assert (=> b!768661 (=> (not res!519876) (not e!428075))))

(declare-fun b!768662 () Bool)

(assert (=> b!768662 (= e!428074 (Intermediate!7843 false (nextIndex!0 index!1321 x!1131 mask!3328) (bvadd x!1131 #b00000000000000000000000000000001)))))

(declare-fun b!768663 () Bool)

(assert (=> b!768663 (and (bvsge (index!33741 lt!341958) #b00000000000000000000000000000000) (bvslt (index!33741 lt!341958) (size!20657 a!3186)))))

(declare-fun res!519877 () Bool)

(assert (=> b!768663 (= res!519877 (= (select (arr!20236 a!3186) (index!33741 lt!341958)) (select (arr!20236 a!3186) j!159)))))

(assert (=> b!768663 (=> res!519877 e!428076)))

(assert (=> b!768663 (= e!428075 e!428076)))

(declare-fun d!101559 () Bool)

(assert (=> d!101559 e!428073))

(declare-fun c!84786 () Bool)

(assert (=> d!101559 (= c!84786 (and ((_ is Intermediate!7843) lt!341958) (undefined!8655 lt!341958)))))

(assert (=> d!101559 (= lt!341958 e!428072)))

(declare-fun c!84788 () Bool)

(assert (=> d!101559 (= c!84788 (bvsge (bvadd x!1131 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!341959 () (_ BitVec 64))

(assert (=> d!101559 (= lt!341959 (select (arr!20236 a!3186) (nextIndex!0 index!1321 x!1131 mask!3328)))))

(assert (=> d!101559 (validMask!0 mask!3328)))

(assert (=> d!101559 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341958)))

(declare-fun b!768664 () Bool)

(assert (=> b!768664 (= e!428072 e!428074)))

(declare-fun c!84787 () Bool)

(assert (=> b!768664 (= c!84787 (or (= lt!341959 (select (arr!20236 a!3186) j!159)) (= (bvadd lt!341959 lt!341959) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101559 c!84788) b!768657))

(assert (= (and d!101559 (not c!84788)) b!768664))

(assert (= (and b!768664 c!84787) b!768662))

(assert (= (and b!768664 (not c!84787)) b!768659))

(assert (= (and d!101559 c!84786) b!768658))

(assert (= (and d!101559 (not c!84786)) b!768661))

(assert (= (and b!768661 res!519876) b!768663))

(assert (= (and b!768663 (not res!519877)) b!768660))

(assert (= (and b!768660 (not res!519875)) b!768656))

(declare-fun m!714253 () Bool)

(assert (=> b!768660 m!714253))

(assert (=> d!101559 m!713769))

(assert (=> d!101559 m!714207))

(assert (=> d!101559 m!713757))

(assert (=> b!768659 m!713769))

(assert (=> b!768659 m!714187))

(assert (=> b!768659 m!714187))

(assert (=> b!768659 m!713737))

(declare-fun m!714255 () Bool)

(assert (=> b!768659 m!714255))

(assert (=> b!768663 m!714253))

(assert (=> b!768656 m!714253))

(assert (=> b!768232 d!101559))

(assert (=> b!768232 d!101405))

(declare-fun d!101561 () Bool)

(declare-fun res!519878 () Bool)

(declare-fun e!428077 () Bool)

(assert (=> d!101561 (=> res!519878 e!428077)))

(assert (=> d!101561 (= res!519878 (= (select (arr!20236 a!3186) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!2102))))

(assert (=> d!101561 (= (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!428077)))

(declare-fun b!768665 () Bool)

(declare-fun e!428078 () Bool)

(assert (=> b!768665 (= e!428077 e!428078)))

(declare-fun res!519879 () Bool)

(assert (=> b!768665 (=> (not res!519879) (not e!428078))))

(assert (=> b!768665 (= res!519879 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!20657 a!3186)))))

(declare-fun b!768666 () Bool)

(assert (=> b!768666 (= e!428078 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!101561 (not res!519878)) b!768665))

(assert (= (and b!768665 res!519879) b!768666))

(assert (=> d!101561 m!714191))

(declare-fun m!714257 () Bool)

(assert (=> b!768666 m!714257))

(assert (=> b!768345 d!101561))

(declare-fun d!101563 () Bool)

(assert (=> d!101563 (arrayContainsKey!0 a!3186 lt!341786 #b00000000000000000000000000000000)))

(declare-fun lt!341960 () Unit!26412)

(assert (=> d!101563 (= lt!341960 (choose!13 a!3186 lt!341786 j!159))))

(assert (=> d!101563 (bvsge j!159 #b00000000000000000000000000000000)))

(assert (=> d!101563 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341786 j!159) lt!341960)))

(declare-fun bs!21536 () Bool)

(assert (= bs!21536 d!101563))

(assert (=> bs!21536 m!713893))

(declare-fun m!714259 () Bool)

(assert (=> bs!21536 m!714259))

(assert (=> b!768225 d!101563))

(declare-fun d!101565 () Bool)

(declare-fun res!519880 () Bool)

(declare-fun e!428079 () Bool)

(assert (=> d!101565 (=> res!519880 e!428079)))

(assert (=> d!101565 (= res!519880 (= (select (arr!20236 a!3186) #b00000000000000000000000000000000) lt!341786))))

(assert (=> d!101565 (= (arrayContainsKey!0 a!3186 lt!341786 #b00000000000000000000000000000000) e!428079)))

(declare-fun b!768667 () Bool)

(declare-fun e!428080 () Bool)

(assert (=> b!768667 (= e!428079 e!428080)))

(declare-fun res!519881 () Bool)

(assert (=> b!768667 (=> (not res!519881) (not e!428080))))

(assert (=> b!768667 (= res!519881 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20657 a!3186)))))

(declare-fun b!768668 () Bool)

(assert (=> b!768668 (= e!428080 (arrayContainsKey!0 a!3186 lt!341786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101565 (not res!519880)) b!768667))

(assert (= (and b!768667 res!519881) b!768668))

(assert (=> d!101565 m!713837))

(declare-fun m!714261 () Bool)

(assert (=> b!768668 m!714261))

(assert (=> b!768225 d!101565))

(assert (=> b!768225 d!101425))

(declare-fun lt!341962 () SeekEntryResult!7843)

(declare-fun d!101567 () Bool)

(assert (=> d!101567 (and (or ((_ is Undefined!7843) lt!341962) (not ((_ is Found!7843) lt!341962)) (and (bvsge (index!33740 lt!341962) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341962) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341962) ((_ is Found!7843) lt!341962) (not ((_ is MissingVacant!7843) lt!341962)) (not (= (index!33742 lt!341962) resIntermediateIndex!5)) (and (bvsge (index!33742 lt!341962) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341962) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341962) (ite ((_ is Found!7843) lt!341962) (= (select (arr!20236 a!3186) (index!33740 lt!341962)) (select (arr!20236 a!3186) j!159)) (and ((_ is MissingVacant!7843) lt!341962) (= (index!33742 lt!341962) resIntermediateIndex!5) (= (select (arr!20236 a!3186) (index!33742 lt!341962)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!428081 () SeekEntryResult!7843)

(assert (=> d!101567 (= lt!341962 e!428081)))

(declare-fun c!84790 () Bool)

(assert (=> d!101567 (= c!84790 (bvsge (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) #b01111111111111111111111111111110))))

(declare-fun lt!341961 () (_ BitVec 64))

(assert (=> d!101567 (= lt!341961 (select (arr!20236 a!3186) (nextIndex!0 lt!341710 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328)))))

(assert (=> d!101567 (validMask!0 mask!3328)))

(assert (=> d!101567 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!341710 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328) lt!341962)))

(declare-fun b!768669 () Bool)

(declare-fun e!428083 () SeekEntryResult!7843)

(assert (=> b!768669 (= e!428083 (Found!7843 (nextIndex!0 lt!341710 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328)))))

(declare-fun e!428082 () SeekEntryResult!7843)

(declare-fun b!768670 () Bool)

(assert (=> b!768670 (= e!428082 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (nextIndex!0 (nextIndex!0 lt!341710 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) mask!3328) resIntermediateIndex!5 (select (arr!20236 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!768671 () Bool)

(assert (=> b!768671 (= e!428081 Undefined!7843)))

(declare-fun b!768672 () Bool)

(declare-fun c!84789 () Bool)

(assert (=> b!768672 (= c!84789 (= lt!341961 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768672 (= e!428083 e!428082)))

(declare-fun b!768673 () Bool)

(assert (=> b!768673 (= e!428082 (MissingVacant!7843 resIntermediateIndex!5))))

(declare-fun b!768674 () Bool)

(assert (=> b!768674 (= e!428081 e!428083)))

(declare-fun c!84791 () Bool)

(assert (=> b!768674 (= c!84791 (= lt!341961 (select (arr!20236 a!3186) j!159)))))

(assert (= (and d!101567 c!84790) b!768671))

(assert (= (and d!101567 (not c!84790)) b!768674))

(assert (= (and b!768674 c!84791) b!768669))

(assert (= (and b!768674 (not c!84791)) b!768672))

(assert (= (and b!768672 c!84789) b!768673))

(assert (= (and b!768672 (not c!84789)) b!768670))

(declare-fun m!714263 () Bool)

(assert (=> d!101567 m!714263))

(declare-fun m!714265 () Bool)

(assert (=> d!101567 m!714265))

(assert (=> d!101567 m!713887))

(declare-fun m!714267 () Bool)

(assert (=> d!101567 m!714267))

(assert (=> d!101567 m!713757))

(assert (=> b!768670 m!713887))

(declare-fun m!714269 () Bool)

(assert (=> b!768670 m!714269))

(assert (=> b!768670 m!714269))

(assert (=> b!768670 m!713737))

(declare-fun m!714271 () Bool)

(assert (=> b!768670 m!714271))

(assert (=> b!768220 d!101567))

(declare-fun d!101569 () Bool)

(declare-fun lt!341963 () (_ BitVec 32))

(assert (=> d!101569 (and (bvsge lt!341963 #b00000000000000000000000000000000) (bvslt lt!341963 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(assert (=> d!101569 (= lt!341963 (choose!52 lt!341710 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328))))

(assert (=> d!101569 (validMask!0 mask!3328)))

(assert (=> d!101569 (= (nextIndex!0 lt!341710 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) lt!341963)))

(declare-fun bs!21537 () Bool)

(assert (= bs!21537 d!101569))

(declare-fun m!714273 () Bool)

(assert (=> bs!21537 m!714273))

(assert (=> bs!21537 m!713757))

(assert (=> b!768220 d!101569))

(declare-fun b!768675 () Bool)

(declare-fun e!428084 () Bool)

(declare-fun e!428085 () Bool)

(assert (=> b!768675 (= e!428084 e!428085)))

(declare-fun lt!341965 () (_ BitVec 64))

(assert (=> b!768675 (= lt!341965 (select (arr!20236 a!3186) (bvadd j!159 #b00000000000000000000000000000001)))))

(declare-fun lt!341964 () Unit!26412)

(assert (=> b!768675 (= lt!341964 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341965 (bvadd j!159 #b00000000000000000000000000000001)))))

(assert (=> b!768675 (arrayContainsKey!0 a!3186 lt!341965 #b00000000000000000000000000000000)))

(declare-fun lt!341966 () Unit!26412)

(assert (=> b!768675 (= lt!341966 lt!341964)))

(declare-fun res!519882 () Bool)

(assert (=> b!768675 (= res!519882 (= (seekEntryOrOpen!0 (select (arr!20236 a!3186) (bvadd j!159 #b00000000000000000000000000000001)) a!3186 mask!3328) (Found!7843 (bvadd j!159 #b00000000000000000000000000000001))))))

(assert (=> b!768675 (=> (not res!519882) (not e!428085))))

(declare-fun b!768676 () Bool)

(declare-fun e!428086 () Bool)

(assert (=> b!768676 (= e!428086 e!428084)))

(declare-fun c!84792 () Bool)

(assert (=> b!768676 (= c!84792 (validKeyInArray!0 (select (arr!20236 a!3186) (bvadd j!159 #b00000000000000000000000000000001))))))

(declare-fun bm!35106 () Bool)

(declare-fun call!35109 () Bool)

(assert (=> bm!35106 (= call!35109 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!101571 () Bool)

(declare-fun res!519883 () Bool)

(assert (=> d!101571 (=> res!519883 e!428086)))

(assert (=> d!101571 (= res!519883 (bvsge (bvadd j!159 #b00000000000000000000000000000001) (size!20657 a!3186)))))

(assert (=> d!101571 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328) e!428086)))

(declare-fun b!768677 () Bool)

(assert (=> b!768677 (= e!428085 call!35109)))

(declare-fun b!768678 () Bool)

(assert (=> b!768678 (= e!428084 call!35109)))

(assert (= (and d!101571 (not res!519883)) b!768676))

(assert (= (and b!768676 c!84792) b!768675))

(assert (= (and b!768676 (not c!84792)) b!768678))

(assert (= (and b!768675 res!519882) b!768677))

(assert (= (or b!768677 b!768678) bm!35106))

(declare-fun m!714275 () Bool)

(assert (=> b!768675 m!714275))

(declare-fun m!714277 () Bool)

(assert (=> b!768675 m!714277))

(declare-fun m!714279 () Bool)

(assert (=> b!768675 m!714279))

(assert (=> b!768675 m!714275))

(declare-fun m!714281 () Bool)

(assert (=> b!768675 m!714281))

(assert (=> b!768676 m!714275))

(assert (=> b!768676 m!714275))

(declare-fun m!714283 () Bool)

(assert (=> b!768676 m!714283))

(declare-fun m!714285 () Bool)

(assert (=> bm!35106 m!714285))

(assert (=> bm!35086 d!101571))

(assert (=> b!768226 d!101401))

(declare-fun d!101573 () Bool)

(declare-fun lt!341968 () SeekEntryResult!7843)

(assert (=> d!101573 (and (or ((_ is Undefined!7843) lt!341968) (not ((_ is Found!7843) lt!341968)) (and (bvsge (index!33740 lt!341968) #b00000000000000000000000000000000) (bvslt (index!33740 lt!341968) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341968) ((_ is Found!7843) lt!341968) (not ((_ is MissingVacant!7843) lt!341968)) (not (= (index!33742 lt!341968) (index!33741 lt!341831))) (and (bvsge (index!33742 lt!341968) #b00000000000000000000000000000000) (bvslt (index!33742 lt!341968) (size!20657 a!3186)))) (or ((_ is Undefined!7843) lt!341968) (ite ((_ is Found!7843) lt!341968) (= (select (arr!20236 a!3186) (index!33740 lt!341968)) k0!2102) (and ((_ is MissingVacant!7843) lt!341968) (= (index!33742 lt!341968) (index!33741 lt!341831)) (= (select (arr!20236 a!3186) (index!33742 lt!341968)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!428087 () SeekEntryResult!7843)

(assert (=> d!101573 (= lt!341968 e!428087)))

(declare-fun c!84794 () Bool)

(assert (=> d!101573 (= c!84794 (bvsge (x!64690 lt!341831) #b01111111111111111111111111111110))))

(declare-fun lt!341967 () (_ BitVec 64))

(assert (=> d!101573 (= lt!341967 (select (arr!20236 a!3186) (index!33741 lt!341831)))))

(assert (=> d!101573 (validMask!0 mask!3328)))

(assert (=> d!101573 (= (seekKeyOrZeroReturnVacant!0 (x!64690 lt!341831) (index!33741 lt!341831) (index!33741 lt!341831) k0!2102 a!3186 mask!3328) lt!341968)))

(declare-fun b!768679 () Bool)

(declare-fun e!428089 () SeekEntryResult!7843)

(assert (=> b!768679 (= e!428089 (Found!7843 (index!33741 lt!341831)))))

(declare-fun e!428088 () SeekEntryResult!7843)

(declare-fun b!768680 () Bool)

(assert (=> b!768680 (= e!428088 (seekKeyOrZeroReturnVacant!0 (bvadd (x!64690 lt!341831) #b00000000000000000000000000000001) (nextIndex!0 (index!33741 lt!341831) (x!64690 lt!341831) mask!3328) (index!33741 lt!341831) k0!2102 a!3186 mask!3328))))

(declare-fun b!768681 () Bool)

(assert (=> b!768681 (= e!428087 Undefined!7843)))

(declare-fun b!768682 () Bool)

(declare-fun c!84793 () Bool)

(assert (=> b!768682 (= c!84793 (= lt!341967 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!768682 (= e!428089 e!428088)))

(declare-fun b!768683 () Bool)

(assert (=> b!768683 (= e!428088 (MissingVacant!7843 (index!33741 lt!341831)))))

(declare-fun b!768684 () Bool)

(assert (=> b!768684 (= e!428087 e!428089)))

(declare-fun c!84795 () Bool)

(assert (=> b!768684 (= c!84795 (= lt!341967 k0!2102))))

(assert (= (and d!101573 c!84794) b!768681))

(assert (= (and d!101573 (not c!84794)) b!768684))

(assert (= (and b!768684 c!84795) b!768679))

(assert (= (and b!768684 (not c!84795)) b!768682))

(assert (= (and b!768682 c!84793) b!768683))

(assert (= (and b!768682 (not c!84793)) b!768680))

(declare-fun m!714287 () Bool)

(assert (=> d!101573 m!714287))

(declare-fun m!714289 () Bool)

(assert (=> d!101573 m!714289))

(assert (=> d!101573 m!713967))

(assert (=> d!101573 m!713757))

(declare-fun m!714291 () Bool)

(assert (=> b!768680 m!714291))

(assert (=> b!768680 m!714291))

(declare-fun m!714293 () Bool)

(assert (=> b!768680 m!714293))

(assert (=> b!768356 d!101573))

(check-sat (not b!768580) (not b!768586) (not b!768670) (not d!101521) (not b!768654) (not bm!35106) (not b!768675) (not d!101529) (not b!768651) (not d!101567) (not b!768659) (not d!101555) (not b!768646) (not b!768611) (not d!101545) (not b!768639) (not d!101541) (not b!768624) (not b!768666) (not b!768616) (not b!768635) (not b!768591) (not d!101553) (not b!768676) (not b!768652) (not d!101533) (not d!101539) (not d!101563) (not bm!35105) (not d!101573) (not d!101559) (not b!768596) (not d!101551) (not b!768605) (not d!101519) (not b!768680) (not b!768668) (not d!101547) (not d!101543) (not bm!35104) (not d!101549) (not d!101525) (not d!101569) (not b!768612))
(check-sat)
