; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67200 () Bool)

(assert start!67200)

(declare-fun b!776813 () Bool)

(declare-fun res!525725 () Bool)

(declare-fun e!432269 () Bool)

(assert (=> b!776813 (=> (not res!525725) (not e!432269))))

(declare-datatypes ((array!42510 0))(
  ( (array!42511 (arr!20347 (Array (_ BitVec 32) (_ BitVec 64))) (size!20768 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42510)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!776813 (= res!525725 (and (= (size!20768 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20768 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20768 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776814 () Bool)

(declare-fun e!432265 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7954 0))(
  ( (MissingZero!7954 (index!34183 (_ BitVec 32))) (Found!7954 (index!34184 (_ BitVec 32))) (Intermediate!7954 (undefined!8766 Bool) (index!34185 (_ BitVec 32)) (x!65146 (_ BitVec 32))) (Undefined!7954) (MissingVacant!7954 (index!34186 (_ BitVec 32))) )
))
(declare-fun lt!346132 () SeekEntryResult!7954)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42510 (_ BitVec 32)) SeekEntryResult!7954)

(assert (=> b!776814 (= e!432265 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) lt!346132))))

(declare-fun b!776815 () Bool)

(declare-fun res!525742 () Bool)

(assert (=> b!776815 (=> (not res!525742) (not e!432269))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42510 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776815 (= res!525742 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776816 () Bool)

(declare-fun e!432264 () Bool)

(declare-fun e!432271 () Bool)

(assert (=> b!776816 (= e!432264 (not e!432271))))

(declare-fun res!525731 () Bool)

(assert (=> b!776816 (=> res!525731 e!432271)))

(declare-fun lt!346130 () SeekEntryResult!7954)

(get-info :version)

(assert (=> b!776816 (= res!525731 (or (not ((_ is Intermediate!7954) lt!346130)) (bvslt x!1131 (x!65146 lt!346130)) (not (= x!1131 (x!65146 lt!346130))) (not (= index!1321 (index!34185 lt!346130)))))))

(declare-fun e!432270 () Bool)

(assert (=> b!776816 e!432270))

(declare-fun res!525726 () Bool)

(assert (=> b!776816 (=> (not res!525726) (not e!432270))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42510 (_ BitVec 32)) Bool)

(assert (=> b!776816 (= res!525726 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26802 0))(
  ( (Unit!26803) )
))
(declare-fun lt!346128 () Unit!26802)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26802)

(assert (=> b!776816 (= lt!346128 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!776817 () Bool)

(declare-fun res!525727 () Bool)

(declare-fun e!432266 () Bool)

(assert (=> b!776817 (=> (not res!525727) (not e!432266))))

(declare-datatypes ((List!14402 0))(
  ( (Nil!14399) (Cons!14398 (h!15506 (_ BitVec 64)) (t!20725 List!14402)) )
))
(declare-fun arrayNoDuplicates!0 (array!42510 (_ BitVec 32) List!14402) Bool)

(assert (=> b!776817 (= res!525727 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14399))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!776818 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42510 (_ BitVec 32)) SeekEntryResult!7954)

(assert (=> b!776818 (= e!432265 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) (Found!7954 j!159)))))

(declare-fun b!776819 () Bool)

(assert (=> b!776819 (= e!432269 e!432266)))

(declare-fun res!525730 () Bool)

(assert (=> b!776819 (=> (not res!525730) (not e!432266))))

(declare-fun lt!346133 () SeekEntryResult!7954)

(assert (=> b!776819 (= res!525730 (or (= lt!346133 (MissingZero!7954 i!1173)) (= lt!346133 (MissingVacant!7954 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42510 (_ BitVec 32)) SeekEntryResult!7954)

(assert (=> b!776819 (= lt!346133 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!776820 () Bool)

(declare-fun res!525741 () Bool)

(assert (=> b!776820 (=> res!525741 e!432271)))

(declare-fun lt!346131 () (_ BitVec 64))

(assert (=> b!776820 (= res!525741 (or (not (= (select (store (arr!20347 a!3186) i!1173 k0!2102) index!1321) lt!346131)) (undefined!8766 lt!346130)))))

(declare-fun b!776822 () Bool)

(declare-fun res!525734 () Bool)

(assert (=> b!776822 (=> (not res!525734) (not e!432269))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776822 (= res!525734 (validKeyInArray!0 k0!2102))))

(declare-fun b!776823 () Bool)

(declare-fun res!525735 () Bool)

(declare-fun e!432268 () Bool)

(assert (=> b!776823 (=> (not res!525735) (not e!432268))))

(assert (=> b!776823 (= res!525735 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20347 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776824 () Bool)

(assert (=> b!776824 (= e!432266 e!432268)))

(declare-fun res!525738 () Bool)

(assert (=> b!776824 (=> (not res!525738) (not e!432268))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776824 (= res!525738 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20347 a!3186) j!159) mask!3328) (select (arr!20347 a!3186) j!159) a!3186 mask!3328) lt!346132))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776824 (= lt!346132 (Intermediate!7954 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun lt!346134 () SeekEntryResult!7954)

(declare-fun e!432267 () Bool)

(declare-fun b!776825 () Bool)

(assert (=> b!776825 (= e!432267 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) lt!346134))))

(declare-fun b!776826 () Bool)

(declare-fun res!525729 () Bool)

(assert (=> b!776826 (=> (not res!525729) (not e!432266))))

(assert (=> b!776826 (= res!525729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776827 () Bool)

(assert (=> b!776827 (= e!432270 e!432267)))

(declare-fun res!525733 () Bool)

(assert (=> b!776827 (=> (not res!525733) (not e!432267))))

(assert (=> b!776827 (= res!525733 (= (seekEntryOrOpen!0 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) lt!346134))))

(assert (=> b!776827 (= lt!346134 (Found!7954 j!159))))

(declare-fun lt!346135 () array!42510)

(declare-fun b!776828 () Bool)

(assert (=> b!776828 (= e!432271 (= (seekEntryOrOpen!0 lt!346131 lt!346135 mask!3328) (Found!7954 index!1321)))))

(declare-fun b!776829 () Bool)

(declare-fun res!525739 () Bool)

(assert (=> b!776829 (=> (not res!525739) (not e!432268))))

(assert (=> b!776829 (= res!525739 e!432265)))

(declare-fun c!85944 () Bool)

(assert (=> b!776829 (= c!85944 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776830 () Bool)

(declare-fun res!525737 () Bool)

(assert (=> b!776830 (=> res!525737 e!432271)))

(assert (=> b!776830 (= res!525737 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) (Found!7954 j!159))))))

(declare-fun b!776831 () Bool)

(declare-fun res!525740 () Bool)

(assert (=> b!776831 (=> (not res!525740) (not e!432266))))

(assert (=> b!776831 (= res!525740 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20768 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20768 a!3186))))))

(declare-fun b!776832 () Bool)

(declare-fun res!525732 () Bool)

(assert (=> b!776832 (=> (not res!525732) (not e!432269))))

(assert (=> b!776832 (= res!525732 (validKeyInArray!0 (select (arr!20347 a!3186) j!159)))))

(declare-fun b!776821 () Bool)

(assert (=> b!776821 (= e!432268 e!432264)))

(declare-fun res!525736 () Bool)

(assert (=> b!776821 (=> (not res!525736) (not e!432264))))

(declare-fun lt!346129 () SeekEntryResult!7954)

(assert (=> b!776821 (= res!525736 (= lt!346129 lt!346130))))

(assert (=> b!776821 (= lt!346130 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346131 lt!346135 mask!3328))))

(assert (=> b!776821 (= lt!346129 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346131 mask!3328) lt!346131 lt!346135 mask!3328))))

(assert (=> b!776821 (= lt!346131 (select (store (arr!20347 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!776821 (= lt!346135 (array!42511 (store (arr!20347 a!3186) i!1173 k0!2102) (size!20768 a!3186)))))

(declare-fun res!525728 () Bool)

(assert (=> start!67200 (=> (not res!525728) (not e!432269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67200 (= res!525728 (validMask!0 mask!3328))))

(assert (=> start!67200 e!432269))

(assert (=> start!67200 true))

(declare-fun array_inv!16121 (array!42510) Bool)

(assert (=> start!67200 (array_inv!16121 a!3186)))

(assert (= (and start!67200 res!525728) b!776813))

(assert (= (and b!776813 res!525725) b!776832))

(assert (= (and b!776832 res!525732) b!776822))

(assert (= (and b!776822 res!525734) b!776815))

(assert (= (and b!776815 res!525742) b!776819))

(assert (= (and b!776819 res!525730) b!776826))

(assert (= (and b!776826 res!525729) b!776817))

(assert (= (and b!776817 res!525727) b!776831))

(assert (= (and b!776831 res!525740) b!776824))

(assert (= (and b!776824 res!525738) b!776823))

(assert (= (and b!776823 res!525735) b!776829))

(assert (= (and b!776829 c!85944) b!776814))

(assert (= (and b!776829 (not c!85944)) b!776818))

(assert (= (and b!776829 res!525739) b!776821))

(assert (= (and b!776821 res!525736) b!776816))

(assert (= (and b!776816 res!525726) b!776827))

(assert (= (and b!776827 res!525733) b!776825))

(assert (= (and b!776816 (not res!525731)) b!776830))

(assert (= (and b!776830 (not res!525737)) b!776820))

(assert (= (and b!776820 (not res!525741)) b!776828))

(declare-fun m!720891 () Bool)

(assert (=> b!776815 m!720891))

(declare-fun m!720893 () Bool)

(assert (=> b!776824 m!720893))

(assert (=> b!776824 m!720893))

(declare-fun m!720895 () Bool)

(assert (=> b!776824 m!720895))

(assert (=> b!776824 m!720895))

(assert (=> b!776824 m!720893))

(declare-fun m!720897 () Bool)

(assert (=> b!776824 m!720897))

(assert (=> b!776814 m!720893))

(assert (=> b!776814 m!720893))

(declare-fun m!720899 () Bool)

(assert (=> b!776814 m!720899))

(assert (=> b!776830 m!720893))

(assert (=> b!776830 m!720893))

(declare-fun m!720901 () Bool)

(assert (=> b!776830 m!720901))

(declare-fun m!720903 () Bool)

(assert (=> b!776819 m!720903))

(assert (=> b!776827 m!720893))

(assert (=> b!776827 m!720893))

(declare-fun m!720905 () Bool)

(assert (=> b!776827 m!720905))

(declare-fun m!720907 () Bool)

(assert (=> start!67200 m!720907))

(declare-fun m!720909 () Bool)

(assert (=> start!67200 m!720909))

(declare-fun m!720911 () Bool)

(assert (=> b!776822 m!720911))

(declare-fun m!720913 () Bool)

(assert (=> b!776820 m!720913))

(declare-fun m!720915 () Bool)

(assert (=> b!776820 m!720915))

(assert (=> b!776818 m!720893))

(assert (=> b!776818 m!720893))

(assert (=> b!776818 m!720901))

(declare-fun m!720917 () Bool)

(assert (=> b!776823 m!720917))

(assert (=> b!776832 m!720893))

(assert (=> b!776832 m!720893))

(declare-fun m!720919 () Bool)

(assert (=> b!776832 m!720919))

(declare-fun m!720921 () Bool)

(assert (=> b!776821 m!720921))

(declare-fun m!720923 () Bool)

(assert (=> b!776821 m!720923))

(declare-fun m!720925 () Bool)

(assert (=> b!776821 m!720925))

(assert (=> b!776821 m!720923))

(assert (=> b!776821 m!720913))

(declare-fun m!720927 () Bool)

(assert (=> b!776821 m!720927))

(declare-fun m!720929 () Bool)

(assert (=> b!776826 m!720929))

(declare-fun m!720931 () Bool)

(assert (=> b!776816 m!720931))

(declare-fun m!720933 () Bool)

(assert (=> b!776816 m!720933))

(assert (=> b!776825 m!720893))

(assert (=> b!776825 m!720893))

(declare-fun m!720935 () Bool)

(assert (=> b!776825 m!720935))

(declare-fun m!720937 () Bool)

(assert (=> b!776828 m!720937))

(declare-fun m!720939 () Bool)

(assert (=> b!776817 m!720939))

(check-sat (not start!67200) (not b!776817) (not b!776821) (not b!776814) (not b!776816) (not b!776825) (not b!776828) (not b!776832) (not b!776822) (not b!776818) (not b!776826) (not b!776827) (not b!776830) (not b!776815) (not b!776824) (not b!776819))
(check-sat)
(get-model)

(declare-fun d!102051 () Bool)

(assert (=> d!102051 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67200 d!102051))

(declare-fun d!102053 () Bool)

(assert (=> d!102053 (= (array_inv!16121 a!3186) (bvsge (size!20768 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67200 d!102053))

(declare-fun b!776911 () Bool)

(declare-fun e!432310 () Bool)

(declare-fun e!432313 () Bool)

(assert (=> b!776911 (= e!432310 e!432313)))

(declare-fun res!525804 () Bool)

(declare-fun lt!346164 () SeekEntryResult!7954)

(assert (=> b!776911 (= res!525804 (and ((_ is Intermediate!7954) lt!346164) (not (undefined!8766 lt!346164)) (bvslt (x!65146 lt!346164) #b01111111111111111111111111111110) (bvsge (x!65146 lt!346164) #b00000000000000000000000000000000) (bvsge (x!65146 lt!346164) x!1131)))))

(assert (=> b!776911 (=> (not res!525804) (not e!432313))))

(declare-fun b!776912 () Bool)

(assert (=> b!776912 (= e!432310 (bvsge (x!65146 lt!346164) #b01111111111111111111111111111110))))

(declare-fun b!776913 () Bool)

(declare-fun e!432309 () SeekEntryResult!7954)

(assert (=> b!776913 (= e!432309 (Intermediate!7954 true index!1321 x!1131))))

(declare-fun b!776914 () Bool)

(assert (=> b!776914 (and (bvsge (index!34185 lt!346164) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346164) (size!20768 a!3186)))))

(declare-fun res!525805 () Bool)

(assert (=> b!776914 (= res!525805 (= (select (arr!20347 a!3186) (index!34185 lt!346164)) (select (arr!20347 a!3186) j!159)))))

(declare-fun e!432311 () Bool)

(assert (=> b!776914 (=> res!525805 e!432311)))

(assert (=> b!776914 (= e!432313 e!432311)))

(declare-fun b!776915 () Bool)

(declare-fun e!432312 () SeekEntryResult!7954)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776915 (= e!432312 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20347 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776916 () Bool)

(assert (=> b!776916 (= e!432309 e!432312)))

(declare-fun c!85956 () Bool)

(declare-fun lt!346165 () (_ BitVec 64))

(assert (=> b!776916 (= c!85956 (or (= lt!346165 (select (arr!20347 a!3186) j!159)) (= (bvadd lt!346165 lt!346165) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776917 () Bool)

(assert (=> b!776917 (= e!432312 (Intermediate!7954 false index!1321 x!1131))))

(declare-fun d!102055 () Bool)

(assert (=> d!102055 e!432310))

(declare-fun c!85954 () Bool)

(assert (=> d!102055 (= c!85954 (and ((_ is Intermediate!7954) lt!346164) (undefined!8766 lt!346164)))))

(assert (=> d!102055 (= lt!346164 e!432309)))

(declare-fun c!85955 () Bool)

(assert (=> d!102055 (= c!85955 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102055 (= lt!346165 (select (arr!20347 a!3186) index!1321))))

(assert (=> d!102055 (validMask!0 mask!3328)))

(assert (=> d!102055 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) lt!346164)))

(declare-fun b!776918 () Bool)

(assert (=> b!776918 (and (bvsge (index!34185 lt!346164) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346164) (size!20768 a!3186)))))

(declare-fun res!525803 () Bool)

(assert (=> b!776918 (= res!525803 (= (select (arr!20347 a!3186) (index!34185 lt!346164)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!776918 (=> res!525803 e!432311)))

(declare-fun b!776919 () Bool)

(assert (=> b!776919 (and (bvsge (index!34185 lt!346164) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346164) (size!20768 a!3186)))))

(assert (=> b!776919 (= e!432311 (= (select (arr!20347 a!3186) (index!34185 lt!346164)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!102055 c!85955) b!776913))

(assert (= (and d!102055 (not c!85955)) b!776916))

(assert (= (and b!776916 c!85956) b!776917))

(assert (= (and b!776916 (not c!85956)) b!776915))

(assert (= (and d!102055 c!85954) b!776912))

(assert (= (and d!102055 (not c!85954)) b!776911))

(assert (= (and b!776911 res!525804) b!776914))

(assert (= (and b!776914 (not res!525805)) b!776918))

(assert (= (and b!776918 (not res!525803)) b!776919))

(declare-fun m!720991 () Bool)

(assert (=> b!776914 m!720991))

(assert (=> b!776919 m!720991))

(declare-fun m!720993 () Bool)

(assert (=> d!102055 m!720993))

(assert (=> d!102055 m!720907))

(declare-fun m!720995 () Bool)

(assert (=> b!776915 m!720995))

(assert (=> b!776915 m!720995))

(assert (=> b!776915 m!720893))

(declare-fun m!720997 () Bool)

(assert (=> b!776915 m!720997))

(assert (=> b!776918 m!720991))

(assert (=> b!776814 d!102055))

(declare-fun b!776920 () Bool)

(declare-fun e!432315 () Bool)

(declare-fun e!432318 () Bool)

(assert (=> b!776920 (= e!432315 e!432318)))

(declare-fun res!525807 () Bool)

(declare-fun lt!346166 () SeekEntryResult!7954)

(assert (=> b!776920 (= res!525807 (and ((_ is Intermediate!7954) lt!346166) (not (undefined!8766 lt!346166)) (bvslt (x!65146 lt!346166) #b01111111111111111111111111111110) (bvsge (x!65146 lt!346166) #b00000000000000000000000000000000) (bvsge (x!65146 lt!346166) #b00000000000000000000000000000000)))))

(assert (=> b!776920 (=> (not res!525807) (not e!432318))))

(declare-fun b!776921 () Bool)

(assert (=> b!776921 (= e!432315 (bvsge (x!65146 lt!346166) #b01111111111111111111111111111110))))

(declare-fun e!432314 () SeekEntryResult!7954)

(declare-fun b!776922 () Bool)

(assert (=> b!776922 (= e!432314 (Intermediate!7954 true (toIndex!0 (select (arr!20347 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!776923 () Bool)

(assert (=> b!776923 (and (bvsge (index!34185 lt!346166) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346166) (size!20768 a!3186)))))

(declare-fun res!525808 () Bool)

(assert (=> b!776923 (= res!525808 (= (select (arr!20347 a!3186) (index!34185 lt!346166)) (select (arr!20347 a!3186) j!159)))))

(declare-fun e!432316 () Bool)

(assert (=> b!776923 (=> res!525808 e!432316)))

(assert (=> b!776923 (= e!432318 e!432316)))

(declare-fun e!432317 () SeekEntryResult!7954)

(declare-fun b!776924 () Bool)

(assert (=> b!776924 (= e!432317 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20347 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20347 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776925 () Bool)

(assert (=> b!776925 (= e!432314 e!432317)))

(declare-fun c!85959 () Bool)

(declare-fun lt!346167 () (_ BitVec 64))

(assert (=> b!776925 (= c!85959 (or (= lt!346167 (select (arr!20347 a!3186) j!159)) (= (bvadd lt!346167 lt!346167) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776926 () Bool)

(assert (=> b!776926 (= e!432317 (Intermediate!7954 false (toIndex!0 (select (arr!20347 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102057 () Bool)

(assert (=> d!102057 e!432315))

(declare-fun c!85957 () Bool)

(assert (=> d!102057 (= c!85957 (and ((_ is Intermediate!7954) lt!346166) (undefined!8766 lt!346166)))))

(assert (=> d!102057 (= lt!346166 e!432314)))

(declare-fun c!85958 () Bool)

(assert (=> d!102057 (= c!85958 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102057 (= lt!346167 (select (arr!20347 a!3186) (toIndex!0 (select (arr!20347 a!3186) j!159) mask!3328)))))

(assert (=> d!102057 (validMask!0 mask!3328)))

(assert (=> d!102057 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20347 a!3186) j!159) mask!3328) (select (arr!20347 a!3186) j!159) a!3186 mask!3328) lt!346166)))

(declare-fun b!776927 () Bool)

(assert (=> b!776927 (and (bvsge (index!34185 lt!346166) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346166) (size!20768 a!3186)))))

(declare-fun res!525806 () Bool)

(assert (=> b!776927 (= res!525806 (= (select (arr!20347 a!3186) (index!34185 lt!346166)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!776927 (=> res!525806 e!432316)))

(declare-fun b!776928 () Bool)

(assert (=> b!776928 (and (bvsge (index!34185 lt!346166) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346166) (size!20768 a!3186)))))

(assert (=> b!776928 (= e!432316 (= (select (arr!20347 a!3186) (index!34185 lt!346166)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!102057 c!85958) b!776922))

(assert (= (and d!102057 (not c!85958)) b!776925))

(assert (= (and b!776925 c!85959) b!776926))

(assert (= (and b!776925 (not c!85959)) b!776924))

(assert (= (and d!102057 c!85957) b!776921))

(assert (= (and d!102057 (not c!85957)) b!776920))

(assert (= (and b!776920 res!525807) b!776923))

(assert (= (and b!776923 (not res!525808)) b!776927))

(assert (= (and b!776927 (not res!525806)) b!776928))

(declare-fun m!720999 () Bool)

(assert (=> b!776923 m!720999))

(assert (=> b!776928 m!720999))

(assert (=> d!102057 m!720895))

(declare-fun m!721001 () Bool)

(assert (=> d!102057 m!721001))

(assert (=> d!102057 m!720907))

(assert (=> b!776924 m!720895))

(declare-fun m!721003 () Bool)

(assert (=> b!776924 m!721003))

(assert (=> b!776924 m!721003))

(assert (=> b!776924 m!720893))

(declare-fun m!721005 () Bool)

(assert (=> b!776924 m!721005))

(assert (=> b!776927 m!720999))

(assert (=> b!776824 d!102057))

(declare-fun d!102059 () Bool)

(declare-fun lt!346173 () (_ BitVec 32))

(declare-fun lt!346172 () (_ BitVec 32))

(assert (=> d!102059 (= lt!346173 (bvmul (bvxor lt!346172 (bvlshr lt!346172 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102059 (= lt!346172 ((_ extract 31 0) (bvand (bvxor (select (arr!20347 a!3186) j!159) (bvlshr (select (arr!20347 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102059 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!525809 (let ((h!15508 ((_ extract 31 0) (bvand (bvxor (select (arr!20347 a!3186) j!159) (bvlshr (select (arr!20347 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65149 (bvmul (bvxor h!15508 (bvlshr h!15508 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65149 (bvlshr x!65149 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!525809 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!525809 #b00000000000000000000000000000000))))))

(assert (=> d!102059 (= (toIndex!0 (select (arr!20347 a!3186) j!159) mask!3328) (bvand (bvxor lt!346173 (bvlshr lt!346173 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!776824 d!102059))

(declare-fun d!102061 () Bool)

(assert (=> d!102061 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!776822 d!102061))

(declare-fun d!102063 () Bool)

(assert (=> d!102063 (= (validKeyInArray!0 (select (arr!20347 a!3186) j!159)) (and (not (= (select (arr!20347 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20347 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!776832 d!102063))

(declare-fun b!776929 () Bool)

(declare-fun e!432320 () Bool)

(declare-fun e!432323 () Bool)

(assert (=> b!776929 (= e!432320 e!432323)))

(declare-fun res!525811 () Bool)

(declare-fun lt!346174 () SeekEntryResult!7954)

(assert (=> b!776929 (= res!525811 (and ((_ is Intermediate!7954) lt!346174) (not (undefined!8766 lt!346174)) (bvslt (x!65146 lt!346174) #b01111111111111111111111111111110) (bvsge (x!65146 lt!346174) #b00000000000000000000000000000000) (bvsge (x!65146 lt!346174) x!1131)))))

(assert (=> b!776929 (=> (not res!525811) (not e!432323))))

(declare-fun b!776930 () Bool)

(assert (=> b!776930 (= e!432320 (bvsge (x!65146 lt!346174) #b01111111111111111111111111111110))))

(declare-fun b!776931 () Bool)

(declare-fun e!432319 () SeekEntryResult!7954)

(assert (=> b!776931 (= e!432319 (Intermediate!7954 true index!1321 x!1131))))

(declare-fun b!776932 () Bool)

(assert (=> b!776932 (and (bvsge (index!34185 lt!346174) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346174) (size!20768 lt!346135)))))

(declare-fun res!525812 () Bool)

(assert (=> b!776932 (= res!525812 (= (select (arr!20347 lt!346135) (index!34185 lt!346174)) lt!346131))))

(declare-fun e!432321 () Bool)

(assert (=> b!776932 (=> res!525812 e!432321)))

(assert (=> b!776932 (= e!432323 e!432321)))

(declare-fun b!776933 () Bool)

(declare-fun e!432322 () SeekEntryResult!7954)

(assert (=> b!776933 (= e!432322 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!346131 lt!346135 mask!3328))))

(declare-fun b!776934 () Bool)

(assert (=> b!776934 (= e!432319 e!432322)))

(declare-fun c!85962 () Bool)

(declare-fun lt!346175 () (_ BitVec 64))

(assert (=> b!776934 (= c!85962 (or (= lt!346175 lt!346131) (= (bvadd lt!346175 lt!346175) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776935 () Bool)

(assert (=> b!776935 (= e!432322 (Intermediate!7954 false index!1321 x!1131))))

(declare-fun d!102065 () Bool)

(assert (=> d!102065 e!432320))

(declare-fun c!85960 () Bool)

(assert (=> d!102065 (= c!85960 (and ((_ is Intermediate!7954) lt!346174) (undefined!8766 lt!346174)))))

(assert (=> d!102065 (= lt!346174 e!432319)))

(declare-fun c!85961 () Bool)

(assert (=> d!102065 (= c!85961 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102065 (= lt!346175 (select (arr!20347 lt!346135) index!1321))))

(assert (=> d!102065 (validMask!0 mask!3328)))

(assert (=> d!102065 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346131 lt!346135 mask!3328) lt!346174)))

(declare-fun b!776936 () Bool)

(assert (=> b!776936 (and (bvsge (index!34185 lt!346174) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346174) (size!20768 lt!346135)))))

(declare-fun res!525810 () Bool)

(assert (=> b!776936 (= res!525810 (= (select (arr!20347 lt!346135) (index!34185 lt!346174)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!776936 (=> res!525810 e!432321)))

(declare-fun b!776937 () Bool)

(assert (=> b!776937 (and (bvsge (index!34185 lt!346174) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346174) (size!20768 lt!346135)))))

(assert (=> b!776937 (= e!432321 (= (select (arr!20347 lt!346135) (index!34185 lt!346174)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!102065 c!85961) b!776931))

(assert (= (and d!102065 (not c!85961)) b!776934))

(assert (= (and b!776934 c!85962) b!776935))

(assert (= (and b!776934 (not c!85962)) b!776933))

(assert (= (and d!102065 c!85960) b!776930))

(assert (= (and d!102065 (not c!85960)) b!776929))

(assert (= (and b!776929 res!525811) b!776932))

(assert (= (and b!776932 (not res!525812)) b!776936))

(assert (= (and b!776936 (not res!525810)) b!776937))

(declare-fun m!721007 () Bool)

(assert (=> b!776932 m!721007))

(assert (=> b!776937 m!721007))

(declare-fun m!721009 () Bool)

(assert (=> d!102065 m!721009))

(assert (=> d!102065 m!720907))

(assert (=> b!776933 m!720995))

(assert (=> b!776933 m!720995))

(declare-fun m!721011 () Bool)

(assert (=> b!776933 m!721011))

(assert (=> b!776936 m!721007))

(assert (=> b!776821 d!102065))

(declare-fun b!776938 () Bool)

(declare-fun e!432325 () Bool)

(declare-fun e!432328 () Bool)

(assert (=> b!776938 (= e!432325 e!432328)))

(declare-fun res!525814 () Bool)

(declare-fun lt!346176 () SeekEntryResult!7954)

(assert (=> b!776938 (= res!525814 (and ((_ is Intermediate!7954) lt!346176) (not (undefined!8766 lt!346176)) (bvslt (x!65146 lt!346176) #b01111111111111111111111111111110) (bvsge (x!65146 lt!346176) #b00000000000000000000000000000000) (bvsge (x!65146 lt!346176) #b00000000000000000000000000000000)))))

(assert (=> b!776938 (=> (not res!525814) (not e!432328))))

(declare-fun b!776939 () Bool)

(assert (=> b!776939 (= e!432325 (bvsge (x!65146 lt!346176) #b01111111111111111111111111111110))))

(declare-fun b!776940 () Bool)

(declare-fun e!432324 () SeekEntryResult!7954)

(assert (=> b!776940 (= e!432324 (Intermediate!7954 true (toIndex!0 lt!346131 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!776941 () Bool)

(assert (=> b!776941 (and (bvsge (index!34185 lt!346176) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346176) (size!20768 lt!346135)))))

(declare-fun res!525815 () Bool)

(assert (=> b!776941 (= res!525815 (= (select (arr!20347 lt!346135) (index!34185 lt!346176)) lt!346131))))

(declare-fun e!432326 () Bool)

(assert (=> b!776941 (=> res!525815 e!432326)))

(assert (=> b!776941 (= e!432328 e!432326)))

(declare-fun b!776942 () Bool)

(declare-fun e!432327 () SeekEntryResult!7954)

(assert (=> b!776942 (= e!432327 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!346131 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!346131 lt!346135 mask!3328))))

(declare-fun b!776943 () Bool)

(assert (=> b!776943 (= e!432324 e!432327)))

(declare-fun c!85965 () Bool)

(declare-fun lt!346177 () (_ BitVec 64))

(assert (=> b!776943 (= c!85965 (or (= lt!346177 lt!346131) (= (bvadd lt!346177 lt!346177) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776944 () Bool)

(assert (=> b!776944 (= e!432327 (Intermediate!7954 false (toIndex!0 lt!346131 mask!3328) #b00000000000000000000000000000000))))

(declare-fun d!102067 () Bool)

(assert (=> d!102067 e!432325))

(declare-fun c!85963 () Bool)

(assert (=> d!102067 (= c!85963 (and ((_ is Intermediate!7954) lt!346176) (undefined!8766 lt!346176)))))

(assert (=> d!102067 (= lt!346176 e!432324)))

(declare-fun c!85964 () Bool)

(assert (=> d!102067 (= c!85964 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!102067 (= lt!346177 (select (arr!20347 lt!346135) (toIndex!0 lt!346131 mask!3328)))))

(assert (=> d!102067 (validMask!0 mask!3328)))

(assert (=> d!102067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346131 mask!3328) lt!346131 lt!346135 mask!3328) lt!346176)))

(declare-fun b!776945 () Bool)

(assert (=> b!776945 (and (bvsge (index!34185 lt!346176) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346176) (size!20768 lt!346135)))))

(declare-fun res!525813 () Bool)

(assert (=> b!776945 (= res!525813 (= (select (arr!20347 lt!346135) (index!34185 lt!346176)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!776945 (=> res!525813 e!432326)))

(declare-fun b!776946 () Bool)

(assert (=> b!776946 (and (bvsge (index!34185 lt!346176) #b00000000000000000000000000000000) (bvslt (index!34185 lt!346176) (size!20768 lt!346135)))))

(assert (=> b!776946 (= e!432326 (= (select (arr!20347 lt!346135) (index!34185 lt!346176)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!102067 c!85964) b!776940))

(assert (= (and d!102067 (not c!85964)) b!776943))

(assert (= (and b!776943 c!85965) b!776944))

(assert (= (and b!776943 (not c!85965)) b!776942))

(assert (= (and d!102067 c!85963) b!776939))

(assert (= (and d!102067 (not c!85963)) b!776938))

(assert (= (and b!776938 res!525814) b!776941))

(assert (= (and b!776941 (not res!525815)) b!776945))

(assert (= (and b!776945 (not res!525813)) b!776946))

(declare-fun m!721013 () Bool)

(assert (=> b!776941 m!721013))

(assert (=> b!776946 m!721013))

(assert (=> d!102067 m!720923))

(declare-fun m!721015 () Bool)

(assert (=> d!102067 m!721015))

(assert (=> d!102067 m!720907))

(assert (=> b!776942 m!720923))

(declare-fun m!721017 () Bool)

(assert (=> b!776942 m!721017))

(assert (=> b!776942 m!721017))

(declare-fun m!721019 () Bool)

(assert (=> b!776942 m!721019))

(assert (=> b!776945 m!721013))

(assert (=> b!776821 d!102067))

(declare-fun d!102071 () Bool)

(declare-fun lt!346179 () (_ BitVec 32))

(declare-fun lt!346178 () (_ BitVec 32))

(assert (=> d!102071 (= lt!346179 (bvmul (bvxor lt!346178 (bvlshr lt!346178 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102071 (= lt!346178 ((_ extract 31 0) (bvand (bvxor lt!346131 (bvlshr lt!346131 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102071 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!525809 (let ((h!15508 ((_ extract 31 0) (bvand (bvxor lt!346131 (bvlshr lt!346131 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65149 (bvmul (bvxor h!15508 (bvlshr h!15508 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65149 (bvlshr x!65149 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!525809 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!525809 #b00000000000000000000000000000000))))))

(assert (=> d!102071 (= (toIndex!0 lt!346131 mask!3328) (bvand (bvxor lt!346179 (bvlshr lt!346179 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!776821 d!102071))

(declare-fun b!776971 () Bool)

(declare-fun e!432343 () SeekEntryResult!7954)

(declare-fun e!432341 () SeekEntryResult!7954)

(assert (=> b!776971 (= e!432343 e!432341)))

(declare-fun c!85979 () Bool)

(declare-fun lt!346188 () (_ BitVec 64))

(assert (=> b!776971 (= c!85979 (= lt!346188 (select (arr!20347 a!3186) j!159)))))

(declare-fun lt!346189 () SeekEntryResult!7954)

(declare-fun d!102073 () Bool)

(assert (=> d!102073 (and (or ((_ is Undefined!7954) lt!346189) (not ((_ is Found!7954) lt!346189)) (and (bvsge (index!34184 lt!346189) #b00000000000000000000000000000000) (bvslt (index!34184 lt!346189) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346189) ((_ is Found!7954) lt!346189) (not ((_ is MissingVacant!7954) lt!346189)) (not (= (index!34186 lt!346189) resIntermediateIndex!5)) (and (bvsge (index!34186 lt!346189) #b00000000000000000000000000000000) (bvslt (index!34186 lt!346189) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346189) (ite ((_ is Found!7954) lt!346189) (= (select (arr!20347 a!3186) (index!34184 lt!346189)) (select (arr!20347 a!3186) j!159)) (and ((_ is MissingVacant!7954) lt!346189) (= (index!34186 lt!346189) resIntermediateIndex!5) (= (select (arr!20347 a!3186) (index!34186 lt!346189)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102073 (= lt!346189 e!432343)))

(declare-fun c!85978 () Bool)

(assert (=> d!102073 (= c!85978 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!102073 (= lt!346188 (select (arr!20347 a!3186) index!1321))))

(assert (=> d!102073 (validMask!0 mask!3328)))

(assert (=> d!102073 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) lt!346189)))

(declare-fun b!776972 () Bool)

(assert (=> b!776972 (= e!432343 Undefined!7954)))

(declare-fun b!776973 () Bool)

(declare-fun e!432342 () SeekEntryResult!7954)

(assert (=> b!776973 (= e!432342 (MissingVacant!7954 resIntermediateIndex!5))))

(declare-fun b!776974 () Bool)

(assert (=> b!776974 (= e!432342 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20347 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776975 () Bool)

(assert (=> b!776975 (= e!432341 (Found!7954 index!1321))))

(declare-fun b!776976 () Bool)

(declare-fun c!85980 () Bool)

(assert (=> b!776976 (= c!85980 (= lt!346188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!776976 (= e!432341 e!432342)))

(assert (= (and d!102073 c!85978) b!776972))

(assert (= (and d!102073 (not c!85978)) b!776971))

(assert (= (and b!776971 c!85979) b!776975))

(assert (= (and b!776971 (not c!85979)) b!776976))

(assert (= (and b!776976 c!85980) b!776973))

(assert (= (and b!776976 (not c!85980)) b!776974))

(declare-fun m!721021 () Bool)

(assert (=> d!102073 m!721021))

(declare-fun m!721023 () Bool)

(assert (=> d!102073 m!721023))

(assert (=> d!102073 m!720993))

(assert (=> d!102073 m!720907))

(assert (=> b!776974 m!720995))

(assert (=> b!776974 m!720995))

(assert (=> b!776974 m!720893))

(declare-fun m!721025 () Bool)

(assert (=> b!776974 m!721025))

(assert (=> b!776818 d!102073))

(declare-fun b!777013 () Bool)

(declare-fun e!432362 () SeekEntryResult!7954)

(declare-fun e!432364 () SeekEntryResult!7954)

(assert (=> b!777013 (= e!432362 e!432364)))

(declare-fun lt!346205 () (_ BitVec 64))

(declare-fun lt!346206 () SeekEntryResult!7954)

(assert (=> b!777013 (= lt!346205 (select (arr!20347 lt!346135) (index!34185 lt!346206)))))

(declare-fun c!85999 () Bool)

(assert (=> b!777013 (= c!85999 (= lt!346205 lt!346131))))

(declare-fun b!777014 () Bool)

(declare-fun c!86001 () Bool)

(assert (=> b!777014 (= c!86001 (= lt!346205 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432363 () SeekEntryResult!7954)

(assert (=> b!777014 (= e!432364 e!432363)))

(declare-fun b!777015 () Bool)

(assert (=> b!777015 (= e!432363 (seekKeyOrZeroReturnVacant!0 (x!65146 lt!346206) (index!34185 lt!346206) (index!34185 lt!346206) lt!346131 lt!346135 mask!3328))))

(declare-fun d!102077 () Bool)

(declare-fun lt!346204 () SeekEntryResult!7954)

(assert (=> d!102077 (and (or ((_ is Undefined!7954) lt!346204) (not ((_ is Found!7954) lt!346204)) (and (bvsge (index!34184 lt!346204) #b00000000000000000000000000000000) (bvslt (index!34184 lt!346204) (size!20768 lt!346135)))) (or ((_ is Undefined!7954) lt!346204) ((_ is Found!7954) lt!346204) (not ((_ is MissingZero!7954) lt!346204)) (and (bvsge (index!34183 lt!346204) #b00000000000000000000000000000000) (bvslt (index!34183 lt!346204) (size!20768 lt!346135)))) (or ((_ is Undefined!7954) lt!346204) ((_ is Found!7954) lt!346204) ((_ is MissingZero!7954) lt!346204) (not ((_ is MissingVacant!7954) lt!346204)) (and (bvsge (index!34186 lt!346204) #b00000000000000000000000000000000) (bvslt (index!34186 lt!346204) (size!20768 lt!346135)))) (or ((_ is Undefined!7954) lt!346204) (ite ((_ is Found!7954) lt!346204) (= (select (arr!20347 lt!346135) (index!34184 lt!346204)) lt!346131) (ite ((_ is MissingZero!7954) lt!346204) (= (select (arr!20347 lt!346135) (index!34183 lt!346204)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7954) lt!346204) (= (select (arr!20347 lt!346135) (index!34186 lt!346204)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102077 (= lt!346204 e!432362)))

(declare-fun c!86000 () Bool)

(assert (=> d!102077 (= c!86000 (and ((_ is Intermediate!7954) lt!346206) (undefined!8766 lt!346206)))))

(assert (=> d!102077 (= lt!346206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346131 mask!3328) lt!346131 lt!346135 mask!3328))))

(assert (=> d!102077 (validMask!0 mask!3328)))

(assert (=> d!102077 (= (seekEntryOrOpen!0 lt!346131 lt!346135 mask!3328) lt!346204)))

(declare-fun b!777016 () Bool)

(assert (=> b!777016 (= e!432362 Undefined!7954)))

(declare-fun b!777017 () Bool)

(assert (=> b!777017 (= e!432363 (MissingZero!7954 (index!34185 lt!346206)))))

(declare-fun b!777018 () Bool)

(assert (=> b!777018 (= e!432364 (Found!7954 (index!34185 lt!346206)))))

(assert (= (and d!102077 c!86000) b!777016))

(assert (= (and d!102077 (not c!86000)) b!777013))

(assert (= (and b!777013 c!85999) b!777018))

(assert (= (and b!777013 (not c!85999)) b!777014))

(assert (= (and b!777014 c!86001) b!777017))

(assert (= (and b!777014 (not c!86001)) b!777015))

(declare-fun m!721043 () Bool)

(assert (=> b!777013 m!721043))

(declare-fun m!721045 () Bool)

(assert (=> b!777015 m!721045))

(declare-fun m!721047 () Bool)

(assert (=> d!102077 m!721047))

(declare-fun m!721049 () Bool)

(assert (=> d!102077 m!721049))

(assert (=> d!102077 m!720923))

(declare-fun m!721051 () Bool)

(assert (=> d!102077 m!721051))

(assert (=> d!102077 m!720923))

(assert (=> d!102077 m!720925))

(assert (=> d!102077 m!720907))

(assert (=> b!776828 d!102077))

(declare-fun b!777047 () Bool)

(declare-fun e!432384 () Bool)

(declare-fun e!432383 () Bool)

(assert (=> b!777047 (= e!432384 e!432383)))

(declare-fun res!525828 () Bool)

(assert (=> b!777047 (=> (not res!525828) (not e!432383))))

(declare-fun e!432386 () Bool)

(assert (=> b!777047 (= res!525828 (not e!432386))))

(declare-fun res!525829 () Bool)

(assert (=> b!777047 (=> (not res!525829) (not e!432386))))

(assert (=> b!777047 (= res!525829 (validKeyInArray!0 (select (arr!20347 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35172 () Bool)

(declare-fun call!35175 () Bool)

(declare-fun c!86010 () Bool)

(assert (=> bm!35172 (= call!35175 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86010 (Cons!14398 (select (arr!20347 a!3186) #b00000000000000000000000000000000) Nil!14399) Nil!14399)))))

(declare-fun b!777048 () Bool)

(declare-fun e!432385 () Bool)

(assert (=> b!777048 (= e!432383 e!432385)))

(assert (=> b!777048 (= c!86010 (validKeyInArray!0 (select (arr!20347 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!102091 () Bool)

(declare-fun res!525830 () Bool)

(assert (=> d!102091 (=> res!525830 e!432384)))

(assert (=> d!102091 (= res!525830 (bvsge #b00000000000000000000000000000000 (size!20768 a!3186)))))

(assert (=> d!102091 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14399) e!432384)))

(declare-fun b!777049 () Bool)

(declare-fun contains!4098 (List!14402 (_ BitVec 64)) Bool)

(assert (=> b!777049 (= e!432386 (contains!4098 Nil!14399 (select (arr!20347 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!777050 () Bool)

(assert (=> b!777050 (= e!432385 call!35175)))

(declare-fun b!777051 () Bool)

(assert (=> b!777051 (= e!432385 call!35175)))

(assert (= (and d!102091 (not res!525830)) b!777047))

(assert (= (and b!777047 res!525829) b!777049))

(assert (= (and b!777047 res!525828) b!777048))

(assert (= (and b!777048 c!86010) b!777050))

(assert (= (and b!777048 (not c!86010)) b!777051))

(assert (= (or b!777050 b!777051) bm!35172))

(declare-fun m!721053 () Bool)

(assert (=> b!777047 m!721053))

(assert (=> b!777047 m!721053))

(declare-fun m!721055 () Bool)

(assert (=> b!777047 m!721055))

(assert (=> bm!35172 m!721053))

(declare-fun m!721057 () Bool)

(assert (=> bm!35172 m!721057))

(assert (=> b!777048 m!721053))

(assert (=> b!777048 m!721053))

(assert (=> b!777048 m!721055))

(assert (=> b!777049 m!721053))

(assert (=> b!777049 m!721053))

(declare-fun m!721059 () Bool)

(assert (=> b!777049 m!721059))

(assert (=> b!776817 d!102091))

(assert (=> b!776830 d!102073))

(declare-fun b!777052 () Bool)

(declare-fun e!432387 () SeekEntryResult!7954)

(declare-fun e!432389 () SeekEntryResult!7954)

(assert (=> b!777052 (= e!432387 e!432389)))

(declare-fun lt!346212 () (_ BitVec 64))

(declare-fun lt!346213 () SeekEntryResult!7954)

(assert (=> b!777052 (= lt!346212 (select (arr!20347 a!3186) (index!34185 lt!346213)))))

(declare-fun c!86011 () Bool)

(assert (=> b!777052 (= c!86011 (= lt!346212 k0!2102))))

(declare-fun b!777053 () Bool)

(declare-fun c!86013 () Bool)

(assert (=> b!777053 (= c!86013 (= lt!346212 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432388 () SeekEntryResult!7954)

(assert (=> b!777053 (= e!432389 e!432388)))

(declare-fun b!777054 () Bool)

(assert (=> b!777054 (= e!432388 (seekKeyOrZeroReturnVacant!0 (x!65146 lt!346213) (index!34185 lt!346213) (index!34185 lt!346213) k0!2102 a!3186 mask!3328))))

(declare-fun d!102093 () Bool)

(declare-fun lt!346211 () SeekEntryResult!7954)

(assert (=> d!102093 (and (or ((_ is Undefined!7954) lt!346211) (not ((_ is Found!7954) lt!346211)) (and (bvsge (index!34184 lt!346211) #b00000000000000000000000000000000) (bvslt (index!34184 lt!346211) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346211) ((_ is Found!7954) lt!346211) (not ((_ is MissingZero!7954) lt!346211)) (and (bvsge (index!34183 lt!346211) #b00000000000000000000000000000000) (bvslt (index!34183 lt!346211) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346211) ((_ is Found!7954) lt!346211) ((_ is MissingZero!7954) lt!346211) (not ((_ is MissingVacant!7954) lt!346211)) (and (bvsge (index!34186 lt!346211) #b00000000000000000000000000000000) (bvslt (index!34186 lt!346211) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346211) (ite ((_ is Found!7954) lt!346211) (= (select (arr!20347 a!3186) (index!34184 lt!346211)) k0!2102) (ite ((_ is MissingZero!7954) lt!346211) (= (select (arr!20347 a!3186) (index!34183 lt!346211)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7954) lt!346211) (= (select (arr!20347 a!3186) (index!34186 lt!346211)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102093 (= lt!346211 e!432387)))

(declare-fun c!86012 () Bool)

(assert (=> d!102093 (= c!86012 (and ((_ is Intermediate!7954) lt!346213) (undefined!8766 lt!346213)))))

(assert (=> d!102093 (= lt!346213 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!102093 (validMask!0 mask!3328)))

(assert (=> d!102093 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!346211)))

(declare-fun b!777055 () Bool)

(assert (=> b!777055 (= e!432387 Undefined!7954)))

(declare-fun b!777056 () Bool)

(assert (=> b!777056 (= e!432388 (MissingZero!7954 (index!34185 lt!346213)))))

(declare-fun b!777057 () Bool)

(assert (=> b!777057 (= e!432389 (Found!7954 (index!34185 lt!346213)))))

(assert (= (and d!102093 c!86012) b!777055))

(assert (= (and d!102093 (not c!86012)) b!777052))

(assert (= (and b!777052 c!86011) b!777057))

(assert (= (and b!777052 (not c!86011)) b!777053))

(assert (= (and b!777053 c!86013) b!777056))

(assert (= (and b!777053 (not c!86013)) b!777054))

(declare-fun m!721061 () Bool)

(assert (=> b!777052 m!721061))

(declare-fun m!721063 () Bool)

(assert (=> b!777054 m!721063))

(declare-fun m!721065 () Bool)

(assert (=> d!102093 m!721065))

(declare-fun m!721067 () Bool)

(assert (=> d!102093 m!721067))

(declare-fun m!721069 () Bool)

(assert (=> d!102093 m!721069))

(declare-fun m!721071 () Bool)

(assert (=> d!102093 m!721071))

(assert (=> d!102093 m!721069))

(declare-fun m!721073 () Bool)

(assert (=> d!102093 m!721073))

(assert (=> d!102093 m!720907))

(assert (=> b!776819 d!102093))

(declare-fun bm!35175 () Bool)

(declare-fun call!35178 () Bool)

(assert (=> bm!35175 (= call!35178 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!777087 () Bool)

(declare-fun e!432409 () Bool)

(declare-fun e!432408 () Bool)

(assert (=> b!777087 (= e!432409 e!432408)))

(declare-fun c!86025 () Bool)

(assert (=> b!777087 (= c!86025 (validKeyInArray!0 (select (arr!20347 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!777088 () Bool)

(declare-fun e!432407 () Bool)

(assert (=> b!777088 (= e!432407 call!35178)))

(declare-fun b!777089 () Bool)

(assert (=> b!777089 (= e!432408 e!432407)))

(declare-fun lt!346234 () (_ BitVec 64))

(assert (=> b!777089 (= lt!346234 (select (arr!20347 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!346236 () Unit!26802)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42510 (_ BitVec 64) (_ BitVec 32)) Unit!26802)

(assert (=> b!777089 (= lt!346236 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346234 #b00000000000000000000000000000000))))

(assert (=> b!777089 (arrayContainsKey!0 a!3186 lt!346234 #b00000000000000000000000000000000)))

(declare-fun lt!346235 () Unit!26802)

(assert (=> b!777089 (= lt!346235 lt!346236)))

(declare-fun res!525839 () Bool)

(assert (=> b!777089 (= res!525839 (= (seekEntryOrOpen!0 (select (arr!20347 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7954 #b00000000000000000000000000000000)))))

(assert (=> b!777089 (=> (not res!525839) (not e!432407))))

(declare-fun b!777090 () Bool)

(assert (=> b!777090 (= e!432408 call!35178)))

(declare-fun d!102095 () Bool)

(declare-fun res!525840 () Bool)

(assert (=> d!102095 (=> res!525840 e!432409)))

(assert (=> d!102095 (= res!525840 (bvsge #b00000000000000000000000000000000 (size!20768 a!3186)))))

(assert (=> d!102095 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!432409)))

(assert (= (and d!102095 (not res!525840)) b!777087))

(assert (= (and b!777087 c!86025) b!777089))

(assert (= (and b!777087 (not c!86025)) b!777090))

(assert (= (and b!777089 res!525839) b!777088))

(assert (= (or b!777088 b!777090) bm!35175))

(declare-fun m!721083 () Bool)

(assert (=> bm!35175 m!721083))

(assert (=> b!777087 m!721053))

(assert (=> b!777087 m!721053))

(assert (=> b!777087 m!721055))

(assert (=> b!777089 m!721053))

(declare-fun m!721085 () Bool)

(assert (=> b!777089 m!721085))

(declare-fun m!721087 () Bool)

(assert (=> b!777089 m!721087))

(assert (=> b!777089 m!721053))

(declare-fun m!721089 () Bool)

(assert (=> b!777089 m!721089))

(assert (=> b!776826 d!102095))

(declare-fun d!102101 () Bool)

(declare-fun res!525857 () Bool)

(declare-fun e!432433 () Bool)

(assert (=> d!102101 (=> res!525857 e!432433)))

(assert (=> d!102101 (= res!525857 (= (select (arr!20347 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!102101 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!432433)))

(declare-fun b!777125 () Bool)

(declare-fun e!432434 () Bool)

(assert (=> b!777125 (= e!432433 e!432434)))

(declare-fun res!525858 () Bool)

(assert (=> b!777125 (=> (not res!525858) (not e!432434))))

(assert (=> b!777125 (= res!525858 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20768 a!3186)))))

(declare-fun b!777126 () Bool)

(assert (=> b!777126 (= e!432434 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102101 (not res!525857)) b!777125))

(assert (= (and b!777125 res!525858) b!777126))

(assert (=> d!102101 m!721053))

(declare-fun m!721113 () Bool)

(assert (=> b!777126 m!721113))

(assert (=> b!776815 d!102101))

(declare-fun b!777127 () Bool)

(declare-fun e!432437 () SeekEntryResult!7954)

(declare-fun e!432435 () SeekEntryResult!7954)

(assert (=> b!777127 (= e!432437 e!432435)))

(declare-fun c!86036 () Bool)

(declare-fun lt!346244 () (_ BitVec 64))

(assert (=> b!777127 (= c!86036 (= lt!346244 (select (arr!20347 a!3186) j!159)))))

(declare-fun d!102109 () Bool)

(declare-fun lt!346245 () SeekEntryResult!7954)

(assert (=> d!102109 (and (or ((_ is Undefined!7954) lt!346245) (not ((_ is Found!7954) lt!346245)) (and (bvsge (index!34184 lt!346245) #b00000000000000000000000000000000) (bvslt (index!34184 lt!346245) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346245) ((_ is Found!7954) lt!346245) (not ((_ is MissingVacant!7954) lt!346245)) (not (= (index!34186 lt!346245) resIntermediateIndex!5)) (and (bvsge (index!34186 lt!346245) #b00000000000000000000000000000000) (bvslt (index!34186 lt!346245) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346245) (ite ((_ is Found!7954) lt!346245) (= (select (arr!20347 a!3186) (index!34184 lt!346245)) (select (arr!20347 a!3186) j!159)) (and ((_ is MissingVacant!7954) lt!346245) (= (index!34186 lt!346245) resIntermediateIndex!5) (= (select (arr!20347 a!3186) (index!34186 lt!346245)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!102109 (= lt!346245 e!432437)))

(declare-fun c!86035 () Bool)

(assert (=> d!102109 (= c!86035 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!102109 (= lt!346244 (select (arr!20347 a!3186) resIntermediateIndex!5))))

(assert (=> d!102109 (validMask!0 mask!3328)))

(assert (=> d!102109 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) lt!346245)))

(declare-fun b!777128 () Bool)

(assert (=> b!777128 (= e!432437 Undefined!7954)))

(declare-fun b!777129 () Bool)

(declare-fun e!432436 () SeekEntryResult!7954)

(assert (=> b!777129 (= e!432436 (MissingVacant!7954 resIntermediateIndex!5))))

(declare-fun b!777130 () Bool)

(assert (=> b!777130 (= e!432436 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20347 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!777131 () Bool)

(assert (=> b!777131 (= e!432435 (Found!7954 resIntermediateIndex!5))))

(declare-fun b!777132 () Bool)

(declare-fun c!86037 () Bool)

(assert (=> b!777132 (= c!86037 (= lt!346244 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!777132 (= e!432435 e!432436)))

(assert (= (and d!102109 c!86035) b!777128))

(assert (= (and d!102109 (not c!86035)) b!777127))

(assert (= (and b!777127 c!86036) b!777131))

(assert (= (and b!777127 (not c!86036)) b!777132))

(assert (= (and b!777132 c!86037) b!777129))

(assert (= (and b!777132 (not c!86037)) b!777130))

(declare-fun m!721123 () Bool)

(assert (=> d!102109 m!721123))

(declare-fun m!721125 () Bool)

(assert (=> d!102109 m!721125))

(assert (=> d!102109 m!720917))

(assert (=> d!102109 m!720907))

(declare-fun m!721127 () Bool)

(assert (=> b!777130 m!721127))

(assert (=> b!777130 m!721127))

(assert (=> b!777130 m!720893))

(declare-fun m!721129 () Bool)

(assert (=> b!777130 m!721129))

(assert (=> b!776825 d!102109))

(declare-fun b!777133 () Bool)

(declare-fun e!432438 () SeekEntryResult!7954)

(declare-fun e!432440 () SeekEntryResult!7954)

(assert (=> b!777133 (= e!432438 e!432440)))

(declare-fun lt!346249 () (_ BitVec 64))

(declare-fun lt!346250 () SeekEntryResult!7954)

(assert (=> b!777133 (= lt!346249 (select (arr!20347 a!3186) (index!34185 lt!346250)))))

(declare-fun c!86038 () Bool)

(assert (=> b!777133 (= c!86038 (= lt!346249 (select (arr!20347 a!3186) j!159)))))

(declare-fun b!777134 () Bool)

(declare-fun c!86040 () Bool)

(assert (=> b!777134 (= c!86040 (= lt!346249 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432439 () SeekEntryResult!7954)

(assert (=> b!777134 (= e!432440 e!432439)))

(declare-fun b!777135 () Bool)

(assert (=> b!777135 (= e!432439 (seekKeyOrZeroReturnVacant!0 (x!65146 lt!346250) (index!34185 lt!346250) (index!34185 lt!346250) (select (arr!20347 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!102115 () Bool)

(declare-fun lt!346248 () SeekEntryResult!7954)

(assert (=> d!102115 (and (or ((_ is Undefined!7954) lt!346248) (not ((_ is Found!7954) lt!346248)) (and (bvsge (index!34184 lt!346248) #b00000000000000000000000000000000) (bvslt (index!34184 lt!346248) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346248) ((_ is Found!7954) lt!346248) (not ((_ is MissingZero!7954) lt!346248)) (and (bvsge (index!34183 lt!346248) #b00000000000000000000000000000000) (bvslt (index!34183 lt!346248) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346248) ((_ is Found!7954) lt!346248) ((_ is MissingZero!7954) lt!346248) (not ((_ is MissingVacant!7954) lt!346248)) (and (bvsge (index!34186 lt!346248) #b00000000000000000000000000000000) (bvslt (index!34186 lt!346248) (size!20768 a!3186)))) (or ((_ is Undefined!7954) lt!346248) (ite ((_ is Found!7954) lt!346248) (= (select (arr!20347 a!3186) (index!34184 lt!346248)) (select (arr!20347 a!3186) j!159)) (ite ((_ is MissingZero!7954) lt!346248) (= (select (arr!20347 a!3186) (index!34183 lt!346248)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7954) lt!346248) (= (select (arr!20347 a!3186) (index!34186 lt!346248)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!102115 (= lt!346248 e!432438)))

(declare-fun c!86039 () Bool)

(assert (=> d!102115 (= c!86039 (and ((_ is Intermediate!7954) lt!346250) (undefined!8766 lt!346250)))))

(assert (=> d!102115 (= lt!346250 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20347 a!3186) j!159) mask!3328) (select (arr!20347 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102115 (validMask!0 mask!3328)))

(assert (=> d!102115 (= (seekEntryOrOpen!0 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) lt!346248)))

(declare-fun b!777136 () Bool)

(assert (=> b!777136 (= e!432438 Undefined!7954)))

(declare-fun b!777137 () Bool)

(assert (=> b!777137 (= e!432439 (MissingZero!7954 (index!34185 lt!346250)))))

(declare-fun b!777138 () Bool)

(assert (=> b!777138 (= e!432440 (Found!7954 (index!34185 lt!346250)))))

(assert (= (and d!102115 c!86039) b!777136))

(assert (= (and d!102115 (not c!86039)) b!777133))

(assert (= (and b!777133 c!86038) b!777138))

(assert (= (and b!777133 (not c!86038)) b!777134))

(assert (= (and b!777134 c!86040) b!777137))

(assert (= (and b!777134 (not c!86040)) b!777135))

(declare-fun m!721131 () Bool)

(assert (=> b!777133 m!721131))

(assert (=> b!777135 m!720893))

(declare-fun m!721133 () Bool)

(assert (=> b!777135 m!721133))

(declare-fun m!721135 () Bool)

(assert (=> d!102115 m!721135))

(declare-fun m!721137 () Bool)

(assert (=> d!102115 m!721137))

(assert (=> d!102115 m!720893))

(assert (=> d!102115 m!720895))

(declare-fun m!721139 () Bool)

(assert (=> d!102115 m!721139))

(assert (=> d!102115 m!720895))

(assert (=> d!102115 m!720893))

(assert (=> d!102115 m!720897))

(assert (=> d!102115 m!720907))

(assert (=> b!776827 d!102115))

(declare-fun bm!35176 () Bool)

(declare-fun call!35179 () Bool)

(assert (=> bm!35176 (= call!35179 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!777145 () Bool)

(declare-fun e!432446 () Bool)

(declare-fun e!432445 () Bool)

(assert (=> b!777145 (= e!432446 e!432445)))

(declare-fun c!86044 () Bool)

(assert (=> b!777145 (= c!86044 (validKeyInArray!0 (select (arr!20347 a!3186) j!159)))))

(declare-fun b!777146 () Bool)

(declare-fun e!432444 () Bool)

(assert (=> b!777146 (= e!432444 call!35179)))

(declare-fun b!777147 () Bool)

(assert (=> b!777147 (= e!432445 e!432444)))

(declare-fun lt!346253 () (_ BitVec 64))

(assert (=> b!777147 (= lt!346253 (select (arr!20347 a!3186) j!159))))

(declare-fun lt!346255 () Unit!26802)

(assert (=> b!777147 (= lt!346255 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346253 j!159))))

(assert (=> b!777147 (arrayContainsKey!0 a!3186 lt!346253 #b00000000000000000000000000000000)))

(declare-fun lt!346254 () Unit!26802)

(assert (=> b!777147 (= lt!346254 lt!346255)))

(declare-fun res!525859 () Bool)

(assert (=> b!777147 (= res!525859 (= (seekEntryOrOpen!0 (select (arr!20347 a!3186) j!159) a!3186 mask!3328) (Found!7954 j!159)))))

(assert (=> b!777147 (=> (not res!525859) (not e!432444))))

(declare-fun b!777148 () Bool)

(assert (=> b!777148 (= e!432445 call!35179)))

(declare-fun d!102119 () Bool)

(declare-fun res!525860 () Bool)

(assert (=> d!102119 (=> res!525860 e!432446)))

(assert (=> d!102119 (= res!525860 (bvsge j!159 (size!20768 a!3186)))))

(assert (=> d!102119 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!432446)))

(assert (= (and d!102119 (not res!525860)) b!777145))

(assert (= (and b!777145 c!86044) b!777147))

(assert (= (and b!777145 (not c!86044)) b!777148))

(assert (= (and b!777147 res!525859) b!777146))

(assert (= (or b!777146 b!777148) bm!35176))

(declare-fun m!721141 () Bool)

(assert (=> bm!35176 m!721141))

(assert (=> b!777145 m!720893))

(assert (=> b!777145 m!720893))

(assert (=> b!777145 m!720919))

(assert (=> b!777147 m!720893))

(declare-fun m!721145 () Bool)

(assert (=> b!777147 m!721145))

(declare-fun m!721147 () Bool)

(assert (=> b!777147 m!721147))

(assert (=> b!777147 m!720893))

(assert (=> b!777147 m!720905))

(assert (=> b!776816 d!102119))

(declare-fun d!102121 () Bool)

(assert (=> d!102121 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!346258 () Unit!26802)

(declare-fun choose!38 (array!42510 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26802)

(assert (=> d!102121 (= lt!346258 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102121 (validMask!0 mask!3328)))

(assert (=> d!102121 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!346258)))

(declare-fun bs!21667 () Bool)

(assert (= bs!21667 d!102121))

(assert (=> bs!21667 m!720931))

(declare-fun m!721155 () Bool)

(assert (=> bs!21667 m!721155))

(assert (=> bs!21667 m!720907))

(assert (=> b!776816 d!102121))

(check-sat (not b!777048) (not bm!35172) (not d!102067) (not b!776933) (not d!102109) (not b!777135) (not b!777147) (not d!102077) (not d!102121) (not b!777089) (not b!777126) (not d!102093) (not b!776942) (not b!777015) (not d!102055) (not b!776974) (not bm!35175) (not d!102073) (not b!777145) (not d!102115) (not bm!35176) (not b!777130) (not b!776924) (not b!777087) (not b!776915) (not b!777049) (not d!102057) (not d!102065) (not b!777047) (not b!777054))
(check-sat)
