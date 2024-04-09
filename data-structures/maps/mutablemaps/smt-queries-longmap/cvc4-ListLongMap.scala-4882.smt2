; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67292 () Bool)

(assert start!67292)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42539 0))(
  ( (array!42540 (arr!20360 (Array (_ BitVec 32) (_ BitVec 64))) (size!20781 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42539)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7967 0))(
  ( (MissingZero!7967 (index!34235 (_ BitVec 32))) (Found!7967 (index!34236 (_ BitVec 32))) (Intermediate!7967 (undefined!8779 Bool) (index!34237 (_ BitVec 32)) (x!65200 (_ BitVec 32))) (Undefined!7967) (MissingVacant!7967 (index!34238 (_ BitVec 32))) )
))
(declare-fun lt!346663 () SeekEntryResult!7967)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!432878 () Bool)

(declare-fun b!778028 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42539 (_ BitVec 32)) SeekEntryResult!7967)

(assert (=> b!778028 (= e!432878 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20360 a!3186) j!159) a!3186 mask!3328) lt!346663))))

(declare-fun b!778029 () Bool)

(declare-fun res!526564 () Bool)

(declare-fun e!432882 () Bool)

(assert (=> b!778029 (=> (not res!526564) (not e!432882))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!778029 (= res!526564 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20360 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778030 () Bool)

(declare-fun res!526566 () Bool)

(declare-fun e!432881 () Bool)

(assert (=> b!778030 (=> (not res!526566) (not e!432881))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42539 (_ BitVec 32)) Bool)

(assert (=> b!778030 (= res!526566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!778031 () Bool)

(declare-fun e!432880 () Bool)

(assert (=> b!778031 (= e!432880 e!432878)))

(declare-fun res!526555 () Bool)

(assert (=> b!778031 (=> (not res!526555) (not e!432878))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42539 (_ BitVec 32)) SeekEntryResult!7967)

(assert (=> b!778031 (= res!526555 (= (seekEntryOrOpen!0 (select (arr!20360 a!3186) j!159) a!3186 mask!3328) lt!346663))))

(assert (=> b!778031 (= lt!346663 (Found!7967 j!159))))

(declare-fun b!778032 () Bool)

(declare-fun res!526568 () Bool)

(declare-fun e!432875 () Bool)

(assert (=> b!778032 (=> (not res!526568) (not e!432875))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!778032 (= res!526568 (validKeyInArray!0 (select (arr!20360 a!3186) j!159)))))

(declare-fun b!778033 () Bool)

(declare-fun res!526556 () Bool)

(declare-fun e!432876 () Bool)

(assert (=> b!778033 (=> res!526556 e!432876)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!346657 () (_ BitVec 64))

(declare-fun lt!346664 () SeekEntryResult!7967)

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!778033 (= res!526556 (or (not (= (select (store (arr!20360 a!3186) i!1173 k!2102) index!1321) lt!346657)) (undefined!8779 lt!346664)))))

(declare-fun b!778034 () Bool)

(declare-fun res!526558 () Bool)

(assert (=> b!778034 (=> (not res!526558) (not e!432881))))

(declare-datatypes ((List!14415 0))(
  ( (Nil!14412) (Cons!14411 (h!15522 (_ BitVec 64)) (t!20738 List!14415)) )
))
(declare-fun arrayNoDuplicates!0 (array!42539 (_ BitVec 32) List!14415) Bool)

(assert (=> b!778034 (= res!526558 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14412))))

(declare-fun b!778035 () Bool)

(declare-fun e!432879 () Bool)

(assert (=> b!778035 (= e!432882 e!432879)))

(declare-fun res!526553 () Bool)

(assert (=> b!778035 (=> (not res!526553) (not e!432879))))

(declare-fun lt!346661 () SeekEntryResult!7967)

(assert (=> b!778035 (= res!526553 (= lt!346661 lt!346664))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!346666 () array!42539)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42539 (_ BitVec 32)) SeekEntryResult!7967)

(assert (=> b!778035 (= lt!346664 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346657 lt!346666 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778035 (= lt!346661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346657 mask!3328) lt!346657 lt!346666 mask!3328))))

(assert (=> b!778035 (= lt!346657 (select (store (arr!20360 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!778035 (= lt!346666 (array!42540 (store (arr!20360 a!3186) i!1173 k!2102) (size!20781 a!3186)))))

(declare-fun lt!346662 () SeekEntryResult!7967)

(declare-fun e!432883 () Bool)

(declare-fun b!778037 () Bool)

(assert (=> b!778037 (= e!432883 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20360 a!3186) j!159) a!3186 mask!3328) lt!346662))))

(declare-fun b!778038 () Bool)

(declare-fun res!526557 () Bool)

(assert (=> b!778038 (=> (not res!526557) (not e!432875))))

(declare-fun arrayContainsKey!0 (array!42539 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!778038 (= res!526557 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!778039 () Bool)

(assert (=> b!778039 (= e!432875 e!432881)))

(declare-fun res!526560 () Bool)

(assert (=> b!778039 (=> (not res!526560) (not e!432881))))

(declare-fun lt!346659 () SeekEntryResult!7967)

(assert (=> b!778039 (= res!526560 (or (= lt!346659 (MissingZero!7967 i!1173)) (= lt!346659 (MissingVacant!7967 i!1173))))))

(assert (=> b!778039 (= lt!346659 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!346660 () SeekEntryResult!7967)

(declare-fun b!778040 () Bool)

(declare-fun lt!346658 () SeekEntryResult!7967)

(assert (=> b!778040 (= e!432876 (or (not (= lt!346660 (Found!7967 index!1321))) (= lt!346660 lt!346658)))))

(assert (=> b!778040 (= lt!346660 (seekEntryOrOpen!0 lt!346657 lt!346666 mask!3328))))

(declare-fun b!778041 () Bool)

(declare-fun res!526559 () Bool)

(assert (=> b!778041 (=> (not res!526559) (not e!432882))))

(assert (=> b!778041 (= res!526559 e!432883)))

(declare-fun c!86139 () Bool)

(assert (=> b!778041 (= c!86139 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!778042 () Bool)

(declare-fun res!526563 () Bool)

(assert (=> b!778042 (=> (not res!526563) (not e!432875))))

(assert (=> b!778042 (= res!526563 (and (= (size!20781 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20781 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20781 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!778043 () Bool)

(assert (=> b!778043 (= e!432881 e!432882)))

(declare-fun res!526569 () Bool)

(assert (=> b!778043 (=> (not res!526569) (not e!432882))))

(assert (=> b!778043 (= res!526569 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20360 a!3186) j!159) mask!3328) (select (arr!20360 a!3186) j!159) a!3186 mask!3328) lt!346662))))

(assert (=> b!778043 (= lt!346662 (Intermediate!7967 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun res!526567 () Bool)

(assert (=> start!67292 (=> (not res!526567) (not e!432875))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67292 (= res!526567 (validMask!0 mask!3328))))

(assert (=> start!67292 e!432875))

(assert (=> start!67292 true))

(declare-fun array_inv!16134 (array!42539) Bool)

(assert (=> start!67292 (array_inv!16134 a!3186)))

(declare-fun b!778036 () Bool)

(declare-fun res!526562 () Bool)

(assert (=> b!778036 (=> res!526562 e!432876)))

(assert (=> b!778036 (= res!526562 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20360 a!3186) j!159) a!3186 mask!3328) lt!346658)))))

(declare-fun b!778044 () Bool)

(assert (=> b!778044 (= e!432879 (not e!432876))))

(declare-fun res!526554 () Bool)

(assert (=> b!778044 (=> res!526554 e!432876)))

(assert (=> b!778044 (= res!526554 (or (not (is-Intermediate!7967 lt!346664)) (bvslt x!1131 (x!65200 lt!346664)) (not (= x!1131 (x!65200 lt!346664))) (not (= index!1321 (index!34237 lt!346664)))))))

(assert (=> b!778044 (= lt!346658 (Found!7967 j!159))))

(assert (=> b!778044 e!432880))

(declare-fun res!526570 () Bool)

(assert (=> b!778044 (=> (not res!526570) (not e!432880))))

(assert (=> b!778044 (= res!526570 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26828 0))(
  ( (Unit!26829) )
))
(declare-fun lt!346665 () Unit!26828)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26828)

(assert (=> b!778044 (= lt!346665 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!778045 () Bool)

(assert (=> b!778045 (= e!432883 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20360 a!3186) j!159) a!3186 mask!3328) (Found!7967 j!159)))))

(declare-fun b!778046 () Bool)

(declare-fun res!526565 () Bool)

(assert (=> b!778046 (=> (not res!526565) (not e!432881))))

(assert (=> b!778046 (= res!526565 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20781 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20781 a!3186))))))

(declare-fun b!778047 () Bool)

(declare-fun res!526561 () Bool)

(assert (=> b!778047 (=> (not res!526561) (not e!432875))))

(assert (=> b!778047 (= res!526561 (validKeyInArray!0 k!2102))))

(assert (= (and start!67292 res!526567) b!778042))

(assert (= (and b!778042 res!526563) b!778032))

(assert (= (and b!778032 res!526568) b!778047))

(assert (= (and b!778047 res!526561) b!778038))

(assert (= (and b!778038 res!526557) b!778039))

(assert (= (and b!778039 res!526560) b!778030))

(assert (= (and b!778030 res!526566) b!778034))

(assert (= (and b!778034 res!526558) b!778046))

(assert (= (and b!778046 res!526565) b!778043))

(assert (= (and b!778043 res!526569) b!778029))

(assert (= (and b!778029 res!526564) b!778041))

(assert (= (and b!778041 c!86139) b!778037))

(assert (= (and b!778041 (not c!86139)) b!778045))

(assert (= (and b!778041 res!526559) b!778035))

(assert (= (and b!778035 res!526553) b!778044))

(assert (= (and b!778044 res!526570) b!778031))

(assert (= (and b!778031 res!526555) b!778028))

(assert (= (and b!778044 (not res!526554)) b!778036))

(assert (= (and b!778036 (not res!526562)) b!778033))

(assert (= (and b!778033 (not res!526556)) b!778040))

(declare-fun m!721853 () Bool)

(assert (=> b!778039 m!721853))

(declare-fun m!721855 () Bool)

(assert (=> b!778043 m!721855))

(assert (=> b!778043 m!721855))

(declare-fun m!721857 () Bool)

(assert (=> b!778043 m!721857))

(assert (=> b!778043 m!721857))

(assert (=> b!778043 m!721855))

(declare-fun m!721859 () Bool)

(assert (=> b!778043 m!721859))

(declare-fun m!721861 () Bool)

(assert (=> b!778033 m!721861))

(declare-fun m!721863 () Bool)

(assert (=> b!778033 m!721863))

(declare-fun m!721865 () Bool)

(assert (=> start!67292 m!721865))

(declare-fun m!721867 () Bool)

(assert (=> start!67292 m!721867))

(declare-fun m!721869 () Bool)

(assert (=> b!778030 m!721869))

(assert (=> b!778032 m!721855))

(assert (=> b!778032 m!721855))

(declare-fun m!721871 () Bool)

(assert (=> b!778032 m!721871))

(declare-fun m!721873 () Bool)

(assert (=> b!778029 m!721873))

(declare-fun m!721875 () Bool)

(assert (=> b!778035 m!721875))

(declare-fun m!721877 () Bool)

(assert (=> b!778035 m!721877))

(assert (=> b!778035 m!721861))

(declare-fun m!721879 () Bool)

(assert (=> b!778035 m!721879))

(assert (=> b!778035 m!721877))

(declare-fun m!721881 () Bool)

(assert (=> b!778035 m!721881))

(assert (=> b!778031 m!721855))

(assert (=> b!778031 m!721855))

(declare-fun m!721883 () Bool)

(assert (=> b!778031 m!721883))

(declare-fun m!721885 () Bool)

(assert (=> b!778044 m!721885))

(declare-fun m!721887 () Bool)

(assert (=> b!778044 m!721887))

(declare-fun m!721889 () Bool)

(assert (=> b!778047 m!721889))

(assert (=> b!778037 m!721855))

(assert (=> b!778037 m!721855))

(declare-fun m!721891 () Bool)

(assert (=> b!778037 m!721891))

(declare-fun m!721893 () Bool)

(assert (=> b!778040 m!721893))

(assert (=> b!778036 m!721855))

(assert (=> b!778036 m!721855))

(declare-fun m!721895 () Bool)

(assert (=> b!778036 m!721895))

(declare-fun m!721897 () Bool)

(assert (=> b!778034 m!721897))

(declare-fun m!721899 () Bool)

(assert (=> b!778038 m!721899))

(assert (=> b!778045 m!721855))

(assert (=> b!778045 m!721855))

(assert (=> b!778045 m!721895))

(assert (=> b!778028 m!721855))

(assert (=> b!778028 m!721855))

(declare-fun m!721901 () Bool)

(assert (=> b!778028 m!721901))

(push 1)

(assert (not b!778043))

(assert (not b!778045))

(assert (not b!778040))

(assert (not b!778034))

(assert (not b!778036))

(assert (not b!778028))

(assert (not b!778030))

(assert (not b!778031))

(assert (not b!778038))

(assert (not b!778047))

(assert (not b!778032))

(assert (not start!67292))

(assert (not b!778037))

(assert (not b!778035))

(assert (not b!778044))

(assert (not b!778039))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!102185 () Bool)

(assert (=> d!102185 (= (validKeyInArray!0 (select (arr!20360 a!3186) j!159)) (and (not (= (select (arr!20360 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20360 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!778032 d!102185))

(declare-fun d!102187 () Bool)

(assert (=> d!102187 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!67292 d!102187))

(declare-fun d!102191 () Bool)

(assert (=> d!102191 (= (array_inv!16134 a!3186) (bvsge (size!20781 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!67292 d!102191))

(declare-fun e!432964 () SeekEntryResult!7967)

(declare-fun b!778178 () Bool)

(assert (=> b!778178 (= e!432964 (Intermediate!7967 true (toIndex!0 (select (arr!20360 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun e!432962 () SeekEntryResult!7967)

(declare-fun b!778180 () Bool)

(assert (=> b!778180 (= e!432962 (Intermediate!7967 false (toIndex!0 (select (arr!20360 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!778181 () Bool)

(declare-fun e!432963 () Bool)

(declare-fun lt!346715 () SeekEntryResult!7967)

(assert (=> b!778181 (= e!432963 (bvsge (x!65200 lt!346715) #b01111111111111111111111111111110))))

(declare-fun b!778182 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!778182 (= e!432962 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20360 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20360 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778179 () Bool)

(assert (=> b!778179 (and (bvsge (index!34237 lt!346715) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346715) (size!20781 a!3186)))))

(declare-fun res!526618 () Bool)

(assert (=> b!778179 (= res!526618 (= (select (arr!20360 a!3186) (index!34237 lt!346715)) (select (arr!20360 a!3186) j!159)))))

(declare-fun e!432965 () Bool)

(assert (=> b!778179 (=> res!526618 e!432965)))

(declare-fun e!432966 () Bool)

(assert (=> b!778179 (= e!432966 e!432965)))

(declare-fun d!102193 () Bool)

(assert (=> d!102193 e!432963))

(declare-fun c!86185 () Bool)

(assert (=> d!102193 (= c!86185 (and (is-Intermediate!7967 lt!346715) (undefined!8779 lt!346715)))))

(assert (=> d!102193 (= lt!346715 e!432964)))

(declare-fun c!86184 () Bool)

(assert (=> d!102193 (= c!86184 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!346716 () (_ BitVec 64))

(assert (=> d!102193 (= lt!346716 (select (arr!20360 a!3186) (toIndex!0 (select (arr!20360 a!3186) j!159) mask!3328)))))

(assert (=> d!102193 (validMask!0 mask!3328)))

(assert (=> d!102193 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20360 a!3186) j!159) mask!3328) (select (arr!20360 a!3186) j!159) a!3186 mask!3328) lt!346715)))

(declare-fun b!778183 () Bool)

(assert (=> b!778183 (= e!432964 e!432962)))

(declare-fun c!86183 () Bool)

(assert (=> b!778183 (= c!86183 (or (= lt!346716 (select (arr!20360 a!3186) j!159)) (= (bvadd lt!346716 lt!346716) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778184 () Bool)

(assert (=> b!778184 (and (bvsge (index!34237 lt!346715) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346715) (size!20781 a!3186)))))

(assert (=> b!778184 (= e!432965 (= (select (arr!20360 a!3186) (index!34237 lt!346715)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778185 () Bool)

(assert (=> b!778185 (and (bvsge (index!34237 lt!346715) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346715) (size!20781 a!3186)))))

(declare-fun res!526617 () Bool)

(assert (=> b!778185 (= res!526617 (= (select (arr!20360 a!3186) (index!34237 lt!346715)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778185 (=> res!526617 e!432965)))

(declare-fun b!778186 () Bool)

(assert (=> b!778186 (= e!432963 e!432966)))

(declare-fun res!526616 () Bool)

(assert (=> b!778186 (= res!526616 (and (is-Intermediate!7967 lt!346715) (not (undefined!8779 lt!346715)) (bvslt (x!65200 lt!346715) #b01111111111111111111111111111110) (bvsge (x!65200 lt!346715) #b00000000000000000000000000000000) (bvsge (x!65200 lt!346715) #b00000000000000000000000000000000)))))

(assert (=> b!778186 (=> (not res!526616) (not e!432966))))

(assert (= (and d!102193 c!86184) b!778178))

(assert (= (and d!102193 (not c!86184)) b!778183))

(assert (= (and b!778183 c!86183) b!778180))

(assert (= (and b!778183 (not c!86183)) b!778182))

(assert (= (and d!102193 c!86185) b!778181))

(assert (= (and d!102193 (not c!86185)) b!778186))

(assert (= (and b!778186 res!526616) b!778179))

(assert (= (and b!778179 (not res!526618)) b!778185))

(assert (= (and b!778185 (not res!526617)) b!778184))

(assert (=> b!778182 m!721857))

(declare-fun m!721959 () Bool)

(assert (=> b!778182 m!721959))

(assert (=> b!778182 m!721959))

(assert (=> b!778182 m!721855))

(declare-fun m!721961 () Bool)

(assert (=> b!778182 m!721961))

(declare-fun m!721963 () Bool)

(assert (=> b!778184 m!721963))

(assert (=> b!778179 m!721963))

(assert (=> b!778185 m!721963))

(assert (=> d!102193 m!721857))

(declare-fun m!721965 () Bool)

(assert (=> d!102193 m!721965))

(assert (=> d!102193 m!721865))

(assert (=> b!778043 d!102193))

(declare-fun d!102209 () Bool)

(declare-fun lt!346724 () (_ BitVec 32))

(declare-fun lt!346723 () (_ BitVec 32))

(assert (=> d!102209 (= lt!346724 (bvmul (bvxor lt!346723 (bvlshr lt!346723 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102209 (= lt!346723 ((_ extract 31 0) (bvand (bvxor (select (arr!20360 a!3186) j!159) (bvlshr (select (arr!20360 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102209 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!526622 (let ((h!15524 ((_ extract 31 0) (bvand (bvxor (select (arr!20360 a!3186) j!159) (bvlshr (select (arr!20360 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65205 (bvmul (bvxor h!15524 (bvlshr h!15524 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65205 (bvlshr x!65205 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!526622 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!526622 #b00000000000000000000000000000000))))))

(assert (=> d!102209 (= (toIndex!0 (select (arr!20360 a!3186) j!159) mask!3328) (bvand (bvxor lt!346724 (bvlshr lt!346724 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!778043 d!102209))

(declare-fun b!778238 () Bool)

(declare-fun c!86210 () Bool)

(declare-fun lt!346741 () (_ BitVec 64))

(assert (=> b!778238 (= c!86210 (= lt!346741 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!432994 () SeekEntryResult!7967)

(declare-fun e!432995 () SeekEntryResult!7967)

(assert (=> b!778238 (= e!432994 e!432995)))

(declare-fun d!102215 () Bool)

(declare-fun lt!346742 () SeekEntryResult!7967)

(assert (=> d!102215 (and (or (is-Undefined!7967 lt!346742) (not (is-Found!7967 lt!346742)) (and (bvsge (index!34236 lt!346742) #b00000000000000000000000000000000) (bvslt (index!34236 lt!346742) (size!20781 a!3186)))) (or (is-Undefined!7967 lt!346742) (is-Found!7967 lt!346742) (not (is-MissingZero!7967 lt!346742)) (and (bvsge (index!34235 lt!346742) #b00000000000000000000000000000000) (bvslt (index!34235 lt!346742) (size!20781 a!3186)))) (or (is-Undefined!7967 lt!346742) (is-Found!7967 lt!346742) (is-MissingZero!7967 lt!346742) (not (is-MissingVacant!7967 lt!346742)) (and (bvsge (index!34238 lt!346742) #b00000000000000000000000000000000) (bvslt (index!34238 lt!346742) (size!20781 a!3186)))) (or (is-Undefined!7967 lt!346742) (ite (is-Found!7967 lt!346742) (= (select (arr!20360 a!3186) (index!34236 lt!346742)) (select (arr!20360 a!3186) j!159)) (ite (is-MissingZero!7967 lt!346742) (= (select (arr!20360 a!3186) (index!34235 lt!346742)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7967 lt!346742) (= (select (arr!20360 a!3186) (index!34238 lt!346742)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!432993 () SeekEntryResult!7967)

(assert (=> d!102215 (= lt!346742 e!432993)))

(declare-fun c!86211 () Bool)

(declare-fun lt!346743 () SeekEntryResult!7967)

(assert (=> d!102215 (= c!86211 (and (is-Intermediate!7967 lt!346743) (undefined!8779 lt!346743)))))

(assert (=> d!102215 (= lt!346743 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20360 a!3186) j!159) mask!3328) (select (arr!20360 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!102215 (validMask!0 mask!3328)))

(assert (=> d!102215 (= (seekEntryOrOpen!0 (select (arr!20360 a!3186) j!159) a!3186 mask!3328) lt!346742)))

(declare-fun b!778239 () Bool)

(assert (=> b!778239 (= e!432995 (MissingZero!7967 (index!34237 lt!346743)))))

(declare-fun b!778240 () Bool)

(assert (=> b!778240 (= e!432993 Undefined!7967)))

(declare-fun b!778241 () Bool)

(assert (=> b!778241 (= e!432994 (Found!7967 (index!34237 lt!346743)))))

(declare-fun b!778242 () Bool)

(assert (=> b!778242 (= e!432993 e!432994)))

(assert (=> b!778242 (= lt!346741 (select (arr!20360 a!3186) (index!34237 lt!346743)))))

(declare-fun c!86212 () Bool)

(assert (=> b!778242 (= c!86212 (= lt!346741 (select (arr!20360 a!3186) j!159)))))

(declare-fun b!778243 () Bool)

(assert (=> b!778243 (= e!432995 (seekKeyOrZeroReturnVacant!0 (x!65200 lt!346743) (index!34237 lt!346743) (index!34237 lt!346743) (select (arr!20360 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!102215 c!86211) b!778240))

(assert (= (and d!102215 (not c!86211)) b!778242))

(assert (= (and b!778242 c!86212) b!778241))

(assert (= (and b!778242 (not c!86212)) b!778238))

(assert (= (and b!778238 c!86210) b!778239))

(assert (= (and b!778238 (not c!86210)) b!778243))

(declare-fun m!721981 () Bool)

(assert (=> d!102215 m!721981))

(assert (=> d!102215 m!721855))

(assert (=> d!102215 m!721857))

(declare-fun m!721983 () Bool)

(assert (=> d!102215 m!721983))

(assert (=> d!102215 m!721865))

(assert (=> d!102215 m!721857))

(assert (=> d!102215 m!721855))

(assert (=> d!102215 m!721859))

(declare-fun m!721985 () Bool)

(assert (=> d!102215 m!721985))

(declare-fun m!721987 () Bool)

(assert (=> b!778242 m!721987))

(assert (=> b!778243 m!721855))

(declare-fun m!721989 () Bool)

(assert (=> b!778243 m!721989))

(assert (=> b!778031 d!102215))

(declare-fun b!778244 () Bool)

(declare-fun e!432998 () SeekEntryResult!7967)

(assert (=> b!778244 (= e!432998 (Intermediate!7967 true index!1321 x!1131))))

(declare-fun b!778246 () Bool)

(declare-fun e!432996 () SeekEntryResult!7967)

(assert (=> b!778246 (= e!432996 (Intermediate!7967 false index!1321 x!1131))))

(declare-fun b!778247 () Bool)

(declare-fun e!432997 () Bool)

(declare-fun lt!346744 () SeekEntryResult!7967)

(assert (=> b!778247 (= e!432997 (bvsge (x!65200 lt!346744) #b01111111111111111111111111111110))))

(declare-fun b!778248 () Bool)

(assert (=> b!778248 (= e!432996 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!346657 lt!346666 mask!3328))))

(declare-fun b!778245 () Bool)

(assert (=> b!778245 (and (bvsge (index!34237 lt!346744) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346744) (size!20781 lt!346666)))))

(declare-fun res!526625 () Bool)

(assert (=> b!778245 (= res!526625 (= (select (arr!20360 lt!346666) (index!34237 lt!346744)) lt!346657))))

(declare-fun e!432999 () Bool)

(assert (=> b!778245 (=> res!526625 e!432999)))

(declare-fun e!433000 () Bool)

(assert (=> b!778245 (= e!433000 e!432999)))

(declare-fun d!102223 () Bool)

(assert (=> d!102223 e!432997))

(declare-fun c!86215 () Bool)

(assert (=> d!102223 (= c!86215 (and (is-Intermediate!7967 lt!346744) (undefined!8779 lt!346744)))))

(assert (=> d!102223 (= lt!346744 e!432998)))

(declare-fun c!86214 () Bool)

(assert (=> d!102223 (= c!86214 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!346745 () (_ BitVec 64))

(assert (=> d!102223 (= lt!346745 (select (arr!20360 lt!346666) index!1321))))

(assert (=> d!102223 (validMask!0 mask!3328)))

(assert (=> d!102223 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346657 lt!346666 mask!3328) lt!346744)))

(declare-fun b!778249 () Bool)

(assert (=> b!778249 (= e!432998 e!432996)))

(declare-fun c!86213 () Bool)

(assert (=> b!778249 (= c!86213 (or (= lt!346745 lt!346657) (= (bvadd lt!346745 lt!346745) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778250 () Bool)

(assert (=> b!778250 (and (bvsge (index!34237 lt!346744) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346744) (size!20781 lt!346666)))))

(assert (=> b!778250 (= e!432999 (= (select (arr!20360 lt!346666) (index!34237 lt!346744)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778251 () Bool)

(assert (=> b!778251 (and (bvsge (index!34237 lt!346744) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346744) (size!20781 lt!346666)))))

(declare-fun res!526624 () Bool)

(assert (=> b!778251 (= res!526624 (= (select (arr!20360 lt!346666) (index!34237 lt!346744)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778251 (=> res!526624 e!432999)))

(declare-fun b!778252 () Bool)

(assert (=> b!778252 (= e!432997 e!433000)))

(declare-fun res!526623 () Bool)

(assert (=> b!778252 (= res!526623 (and (is-Intermediate!7967 lt!346744) (not (undefined!8779 lt!346744)) (bvslt (x!65200 lt!346744) #b01111111111111111111111111111110) (bvsge (x!65200 lt!346744) #b00000000000000000000000000000000) (bvsge (x!65200 lt!346744) x!1131)))))

(assert (=> b!778252 (=> (not res!526623) (not e!433000))))

(assert (= (and d!102223 c!86214) b!778244))

(assert (= (and d!102223 (not c!86214)) b!778249))

(assert (= (and b!778249 c!86213) b!778246))

(assert (= (and b!778249 (not c!86213)) b!778248))

(assert (= (and d!102223 c!86215) b!778247))

(assert (= (and d!102223 (not c!86215)) b!778252))

(assert (= (and b!778252 res!526623) b!778245))

(assert (= (and b!778245 (not res!526625)) b!778251))

(assert (= (and b!778251 (not res!526624)) b!778250))

(declare-fun m!721991 () Bool)

(assert (=> b!778248 m!721991))

(assert (=> b!778248 m!721991))

(declare-fun m!721993 () Bool)

(assert (=> b!778248 m!721993))

(declare-fun m!721995 () Bool)

(assert (=> b!778250 m!721995))

(assert (=> b!778245 m!721995))

(assert (=> b!778251 m!721995))

(declare-fun m!721997 () Bool)

(assert (=> d!102223 m!721997))

(assert (=> d!102223 m!721865))

(assert (=> b!778035 d!102223))

(declare-fun b!778265 () Bool)

(declare-fun e!433009 () SeekEntryResult!7967)

(assert (=> b!778265 (= e!433009 (Intermediate!7967 true (toIndex!0 lt!346657 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!778267 () Bool)

(declare-fun e!433007 () SeekEntryResult!7967)

(assert (=> b!778267 (= e!433007 (Intermediate!7967 false (toIndex!0 lt!346657 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!778268 () Bool)

(declare-fun e!433008 () Bool)

(declare-fun lt!346752 () SeekEntryResult!7967)

(assert (=> b!778268 (= e!433008 (bvsge (x!65200 lt!346752) #b01111111111111111111111111111110))))

(declare-fun b!778269 () Bool)

(assert (=> b!778269 (= e!433007 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!346657 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!346657 lt!346666 mask!3328))))

(declare-fun b!778266 () Bool)

(assert (=> b!778266 (and (bvsge (index!34237 lt!346752) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346752) (size!20781 lt!346666)))))

(declare-fun res!526628 () Bool)

(assert (=> b!778266 (= res!526628 (= (select (arr!20360 lt!346666) (index!34237 lt!346752)) lt!346657))))

(declare-fun e!433010 () Bool)

(assert (=> b!778266 (=> res!526628 e!433010)))

(declare-fun e!433011 () Bool)

(assert (=> b!778266 (= e!433011 e!433010)))

(declare-fun d!102225 () Bool)

(assert (=> d!102225 e!433008))

(declare-fun c!86224 () Bool)

(assert (=> d!102225 (= c!86224 (and (is-Intermediate!7967 lt!346752) (undefined!8779 lt!346752)))))

(assert (=> d!102225 (= lt!346752 e!433009)))

(declare-fun c!86223 () Bool)

(assert (=> d!102225 (= c!86223 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!346753 () (_ BitVec 64))

(assert (=> d!102225 (= lt!346753 (select (arr!20360 lt!346666) (toIndex!0 lt!346657 mask!3328)))))

(assert (=> d!102225 (validMask!0 mask!3328)))

(assert (=> d!102225 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346657 mask!3328) lt!346657 lt!346666 mask!3328) lt!346752)))

(declare-fun b!778270 () Bool)

(assert (=> b!778270 (= e!433009 e!433007)))

(declare-fun c!86222 () Bool)

(assert (=> b!778270 (= c!86222 (or (= lt!346753 lt!346657) (= (bvadd lt!346753 lt!346753) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778271 () Bool)

(assert (=> b!778271 (and (bvsge (index!34237 lt!346752) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346752) (size!20781 lt!346666)))))

(assert (=> b!778271 (= e!433010 (= (select (arr!20360 lt!346666) (index!34237 lt!346752)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778272 () Bool)

(assert (=> b!778272 (and (bvsge (index!34237 lt!346752) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346752) (size!20781 lt!346666)))))

(declare-fun res!526627 () Bool)

(assert (=> b!778272 (= res!526627 (= (select (arr!20360 lt!346666) (index!34237 lt!346752)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778272 (=> res!526627 e!433010)))

(declare-fun b!778273 () Bool)

(assert (=> b!778273 (= e!433008 e!433011)))

(declare-fun res!526626 () Bool)

(assert (=> b!778273 (= res!526626 (and (is-Intermediate!7967 lt!346752) (not (undefined!8779 lt!346752)) (bvslt (x!65200 lt!346752) #b01111111111111111111111111111110) (bvsge (x!65200 lt!346752) #b00000000000000000000000000000000) (bvsge (x!65200 lt!346752) #b00000000000000000000000000000000)))))

(assert (=> b!778273 (=> (not res!526626) (not e!433011))))

(assert (= (and d!102225 c!86223) b!778265))

(assert (= (and d!102225 (not c!86223)) b!778270))

(assert (= (and b!778270 c!86222) b!778267))

(assert (= (and b!778270 (not c!86222)) b!778269))

(assert (= (and d!102225 c!86224) b!778268))

(assert (= (and d!102225 (not c!86224)) b!778273))

(assert (= (and b!778273 res!526626) b!778266))

(assert (= (and b!778266 (not res!526628)) b!778272))

(assert (= (and b!778272 (not res!526627)) b!778271))

(assert (=> b!778269 m!721877))

(declare-fun m!721999 () Bool)

(assert (=> b!778269 m!721999))

(assert (=> b!778269 m!721999))

(declare-fun m!722001 () Bool)

(assert (=> b!778269 m!722001))

(declare-fun m!722003 () Bool)

(assert (=> b!778271 m!722003))

(assert (=> b!778266 m!722003))

(assert (=> b!778272 m!722003))

(assert (=> d!102225 m!721877))

(declare-fun m!722005 () Bool)

(assert (=> d!102225 m!722005))

(assert (=> d!102225 m!721865))

(assert (=> b!778035 d!102225))

(declare-fun d!102227 () Bool)

(declare-fun lt!346755 () (_ BitVec 32))

(declare-fun lt!346754 () (_ BitVec 32))

(assert (=> d!102227 (= lt!346755 (bvmul (bvxor lt!346754 (bvlshr lt!346754 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!102227 (= lt!346754 ((_ extract 31 0) (bvand (bvxor lt!346657 (bvlshr lt!346657 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!102227 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!526622 (let ((h!15524 ((_ extract 31 0) (bvand (bvxor lt!346657 (bvlshr lt!346657 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!65205 (bvmul (bvxor h!15524 (bvlshr h!15524 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!65205 (bvlshr x!65205 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!526622 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!526622 #b00000000000000000000000000000000))))))

(assert (=> d!102227 (= (toIndex!0 lt!346657 mask!3328) (bvand (bvxor lt!346755 (bvlshr lt!346755 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!778035 d!102227))

(declare-fun b!778311 () Bool)

(declare-fun e!433039 () Bool)

(declare-fun call!35203 () Bool)

(assert (=> b!778311 (= e!433039 call!35203)))

(declare-fun d!102229 () Bool)

(declare-fun res!526647 () Bool)

(declare-fun e!433040 () Bool)

(assert (=> d!102229 (=> res!526647 e!433040)))

(assert (=> d!102229 (= res!526647 (bvsge #b00000000000000000000000000000000 (size!20781 a!3186)))))

(assert (=> d!102229 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14412) e!433040)))

(declare-fun bm!35200 () Bool)

(declare-fun c!86236 () Bool)

(assert (=> bm!35200 (= call!35203 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!86236 (Cons!14411 (select (arr!20360 a!3186) #b00000000000000000000000000000000) Nil!14412) Nil!14412)))))

(declare-fun b!778312 () Bool)

(declare-fun e!433037 () Bool)

(assert (=> b!778312 (= e!433037 e!433039)))

(assert (=> b!778312 (= c!86236 (validKeyInArray!0 (select (arr!20360 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!778313 () Bool)

(declare-fun e!433038 () Bool)

(declare-fun contains!4101 (List!14415 (_ BitVec 64)) Bool)

(assert (=> b!778313 (= e!433038 (contains!4101 Nil!14412 (select (arr!20360 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!778314 () Bool)

(assert (=> b!778314 (= e!433039 call!35203)))

(declare-fun b!778315 () Bool)

(assert (=> b!778315 (= e!433040 e!433037)))

(declare-fun res!526646 () Bool)

(assert (=> b!778315 (=> (not res!526646) (not e!433037))))

(assert (=> b!778315 (= res!526646 (not e!433038))))

(declare-fun res!526645 () Bool)

(assert (=> b!778315 (=> (not res!526645) (not e!433038))))

(assert (=> b!778315 (= res!526645 (validKeyInArray!0 (select (arr!20360 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102229 (not res!526647)) b!778315))

(assert (= (and b!778315 res!526645) b!778313))

(assert (= (and b!778315 res!526646) b!778312))

(assert (= (and b!778312 c!86236) b!778311))

(assert (= (and b!778312 (not c!86236)) b!778314))

(assert (= (or b!778311 b!778314) bm!35200))

(declare-fun m!722035 () Bool)

(assert (=> bm!35200 m!722035))

(declare-fun m!722037 () Bool)

(assert (=> bm!35200 m!722037))

(assert (=> b!778312 m!722035))

(assert (=> b!778312 m!722035))

(declare-fun m!722039 () Bool)

(assert (=> b!778312 m!722039))

(assert (=> b!778313 m!722035))

(assert (=> b!778313 m!722035))

(declare-fun m!722041 () Bool)

(assert (=> b!778313 m!722041))

(assert (=> b!778315 m!722035))

(assert (=> b!778315 m!722035))

(assert (=> b!778315 m!722039))

(assert (=> b!778034 d!102229))

(declare-fun lt!346802 () SeekEntryResult!7967)

(declare-fun d!102241 () Bool)

(assert (=> d!102241 (and (or (is-Undefined!7967 lt!346802) (not (is-Found!7967 lt!346802)) (and (bvsge (index!34236 lt!346802) #b00000000000000000000000000000000) (bvslt (index!34236 lt!346802) (size!20781 a!3186)))) (or (is-Undefined!7967 lt!346802) (is-Found!7967 lt!346802) (not (is-MissingVacant!7967 lt!346802)) (not (= (index!34238 lt!346802) resIntermediateIndex!5)) (and (bvsge (index!34238 lt!346802) #b00000000000000000000000000000000) (bvslt (index!34238 lt!346802) (size!20781 a!3186)))) (or (is-Undefined!7967 lt!346802) (ite (is-Found!7967 lt!346802) (= (select (arr!20360 a!3186) (index!34236 lt!346802)) (select (arr!20360 a!3186) j!159)) (and (is-MissingVacant!7967 lt!346802) (= (index!34238 lt!346802) resIntermediateIndex!5) (= (select (arr!20360 a!3186) (index!34238 lt!346802)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!433089 () SeekEntryResult!7967)

(assert (=> d!102241 (= lt!346802 e!433089)))

(declare-fun c!86270 () Bool)

(assert (=> d!102241 (= c!86270 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!346803 () (_ BitVec 64))

(assert (=> d!102241 (= lt!346803 (select (arr!20360 a!3186) index!1321))))

(assert (=> d!102241 (validMask!0 mask!3328)))

(assert (=> d!102241 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20360 a!3186) j!159) a!3186 mask!3328) lt!346802)))

(declare-fun b!778399 () Bool)

(declare-fun e!433091 () SeekEntryResult!7967)

(assert (=> b!778399 (= e!433089 e!433091)))

(declare-fun c!86269 () Bool)

(assert (=> b!778399 (= c!86269 (= lt!346803 (select (arr!20360 a!3186) j!159)))))

(declare-fun b!778400 () Bool)

(assert (=> b!778400 (= e!433091 (Found!7967 index!1321))))

(declare-fun b!778401 () Bool)

(declare-fun c!86271 () Bool)

(assert (=> b!778401 (= c!86271 (= lt!346803 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433090 () SeekEntryResult!7967)

(assert (=> b!778401 (= e!433091 e!433090)))

(declare-fun b!778402 () Bool)

(assert (=> b!778402 (= e!433089 Undefined!7967)))

(declare-fun b!778403 () Bool)

(assert (=> b!778403 (= e!433090 (MissingVacant!7967 resIntermediateIndex!5))))

(declare-fun b!778404 () Bool)

(assert (=> b!778404 (= e!433090 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20360 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!102241 c!86270) b!778402))

(assert (= (and d!102241 (not c!86270)) b!778399))

(assert (= (and b!778399 c!86269) b!778400))

(assert (= (and b!778399 (not c!86269)) b!778401))

(assert (= (and b!778401 c!86271) b!778403))

(assert (= (and b!778401 (not c!86271)) b!778404))

(declare-fun m!722121 () Bool)

(assert (=> d!102241 m!722121))

(declare-fun m!722123 () Bool)

(assert (=> d!102241 m!722123))

(declare-fun m!722125 () Bool)

(assert (=> d!102241 m!722125))

(assert (=> d!102241 m!721865))

(assert (=> b!778404 m!721991))

(assert (=> b!778404 m!721991))

(assert (=> b!778404 m!721855))

(declare-fun m!722127 () Bool)

(assert (=> b!778404 m!722127))

(assert (=> b!778045 d!102241))

(declare-fun d!102271 () Bool)

(declare-fun res!526681 () Bool)

(declare-fun e!433115 () Bool)

(assert (=> d!102271 (=> res!526681 e!433115)))

(assert (=> d!102271 (= res!526681 (bvsge j!159 (size!20781 a!3186)))))

(assert (=> d!102271 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!433115)))

(declare-fun bm!35207 () Bool)

(declare-fun call!35210 () Bool)

(assert (=> bm!35207 (= call!35210 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!778437 () Bool)

(declare-fun e!433116 () Bool)

(assert (=> b!778437 (= e!433116 call!35210)))

(declare-fun b!778438 () Bool)

(declare-fun e!433117 () Bool)

(assert (=> b!778438 (= e!433117 call!35210)))

(declare-fun b!778439 () Bool)

(assert (=> b!778439 (= e!433116 e!433117)))

(declare-fun lt!346823 () (_ BitVec 64))

(assert (=> b!778439 (= lt!346823 (select (arr!20360 a!3186) j!159))))

(declare-fun lt!346824 () Unit!26828)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42539 (_ BitVec 64) (_ BitVec 32)) Unit!26828)

(assert (=> b!778439 (= lt!346824 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346823 j!159))))

(assert (=> b!778439 (arrayContainsKey!0 a!3186 lt!346823 #b00000000000000000000000000000000)))

(declare-fun lt!346822 () Unit!26828)

(assert (=> b!778439 (= lt!346822 lt!346824)))

(declare-fun res!526682 () Bool)

(assert (=> b!778439 (= res!526682 (= (seekEntryOrOpen!0 (select (arr!20360 a!3186) j!159) a!3186 mask!3328) (Found!7967 j!159)))))

(assert (=> b!778439 (=> (not res!526682) (not e!433117))))

(declare-fun b!778440 () Bool)

(assert (=> b!778440 (= e!433115 e!433116)))

(declare-fun c!86281 () Bool)

(assert (=> b!778440 (= c!86281 (validKeyInArray!0 (select (arr!20360 a!3186) j!159)))))

(assert (= (and d!102271 (not res!526681)) b!778440))

(assert (= (and b!778440 c!86281) b!778439))

(assert (= (and b!778440 (not c!86281)) b!778437))

(assert (= (and b!778439 res!526682) b!778438))

(assert (= (or b!778438 b!778437) bm!35207))

(declare-fun m!722157 () Bool)

(assert (=> bm!35207 m!722157))

(assert (=> b!778439 m!721855))

(declare-fun m!722159 () Bool)

(assert (=> b!778439 m!722159))

(declare-fun m!722161 () Bool)

(assert (=> b!778439 m!722161))

(assert (=> b!778439 m!721855))

(assert (=> b!778439 m!721883))

(assert (=> b!778440 m!721855))

(assert (=> b!778440 m!721855))

(assert (=> b!778440 m!721871))

(assert (=> b!778044 d!102271))

(declare-fun d!102281 () Bool)

(assert (=> d!102281 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!346827 () Unit!26828)

(declare-fun choose!38 (array!42539 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26828)

(assert (=> d!102281 (= lt!346827 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!102281 (validMask!0 mask!3328)))

(assert (=> d!102281 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!346827)))

(declare-fun bs!21684 () Bool)

(assert (= bs!21684 d!102281))

(assert (=> bs!21684 m!721885))

(declare-fun m!722167 () Bool)

(assert (=> bs!21684 m!722167))

(assert (=> bs!21684 m!721865))

(assert (=> b!778044 d!102281))

(declare-fun d!102285 () Bool)

(declare-fun res!526690 () Bool)

(declare-fun e!433126 () Bool)

(assert (=> d!102285 (=> res!526690 e!433126)))

(assert (=> d!102285 (= res!526690 (= (select (arr!20360 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!102285 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!433126)))

(declare-fun b!778450 () Bool)

(declare-fun e!433127 () Bool)

(assert (=> b!778450 (= e!433126 e!433127)))

(declare-fun res!526691 () Bool)

(assert (=> b!778450 (=> (not res!526691) (not e!433127))))

(assert (=> b!778450 (= res!526691 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20781 a!3186)))))

(declare-fun b!778451 () Bool)

(assert (=> b!778451 (= e!433127 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!102285 (not res!526690)) b!778450))

(assert (= (and b!778450 res!526691) b!778451))

(assert (=> d!102285 m!722035))

(declare-fun m!722169 () Bool)

(assert (=> b!778451 m!722169))

(assert (=> b!778038 d!102285))

(declare-fun b!778452 () Bool)

(declare-fun e!433130 () SeekEntryResult!7967)

(assert (=> b!778452 (= e!433130 (Intermediate!7967 true index!1321 x!1131))))

(declare-fun b!778454 () Bool)

(declare-fun e!433128 () SeekEntryResult!7967)

(assert (=> b!778454 (= e!433128 (Intermediate!7967 false index!1321 x!1131))))

(declare-fun b!778455 () Bool)

(declare-fun e!433129 () Bool)

(declare-fun lt!346828 () SeekEntryResult!7967)

(assert (=> b!778455 (= e!433129 (bvsge (x!65200 lt!346828) #b01111111111111111111111111111110))))

(declare-fun b!778456 () Bool)

(assert (=> b!778456 (= e!433128 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20360 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!778453 () Bool)

(assert (=> b!778453 (and (bvsge (index!34237 lt!346828) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346828) (size!20781 a!3186)))))

(declare-fun res!526694 () Bool)

(assert (=> b!778453 (= res!526694 (= (select (arr!20360 a!3186) (index!34237 lt!346828)) (select (arr!20360 a!3186) j!159)))))

(declare-fun e!433131 () Bool)

(assert (=> b!778453 (=> res!526694 e!433131)))

(declare-fun e!433132 () Bool)

(assert (=> b!778453 (= e!433132 e!433131)))

(declare-fun d!102287 () Bool)

(assert (=> d!102287 e!433129))

(declare-fun c!86285 () Bool)

(assert (=> d!102287 (= c!86285 (and (is-Intermediate!7967 lt!346828) (undefined!8779 lt!346828)))))

(assert (=> d!102287 (= lt!346828 e!433130)))

(declare-fun c!86284 () Bool)

(assert (=> d!102287 (= c!86284 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!346829 () (_ BitVec 64))

(assert (=> d!102287 (= lt!346829 (select (arr!20360 a!3186) index!1321))))

(assert (=> d!102287 (validMask!0 mask!3328)))

(assert (=> d!102287 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20360 a!3186) j!159) a!3186 mask!3328) lt!346828)))

(declare-fun b!778457 () Bool)

(assert (=> b!778457 (= e!433130 e!433128)))

(declare-fun c!86283 () Bool)

(assert (=> b!778457 (= c!86283 (or (= lt!346829 (select (arr!20360 a!3186) j!159)) (= (bvadd lt!346829 lt!346829) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!778458 () Bool)

(assert (=> b!778458 (and (bvsge (index!34237 lt!346828) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346828) (size!20781 a!3186)))))

(assert (=> b!778458 (= e!433131 (= (select (arr!20360 a!3186) (index!34237 lt!346828)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!778459 () Bool)

(assert (=> b!778459 (and (bvsge (index!34237 lt!346828) #b00000000000000000000000000000000) (bvslt (index!34237 lt!346828) (size!20781 a!3186)))))

(declare-fun res!526693 () Bool)

(assert (=> b!778459 (= res!526693 (= (select (arr!20360 a!3186) (index!34237 lt!346828)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!778459 (=> res!526693 e!433131)))

(declare-fun b!778460 () Bool)

(assert (=> b!778460 (= e!433129 e!433132)))

(declare-fun res!526692 () Bool)

(assert (=> b!778460 (= res!526692 (and (is-Intermediate!7967 lt!346828) (not (undefined!8779 lt!346828)) (bvslt (x!65200 lt!346828) #b01111111111111111111111111111110) (bvsge (x!65200 lt!346828) #b00000000000000000000000000000000) (bvsge (x!65200 lt!346828) x!1131)))))

(assert (=> b!778460 (=> (not res!526692) (not e!433132))))

(assert (= (and d!102287 c!86284) b!778452))

(assert (= (and d!102287 (not c!86284)) b!778457))

(assert (= (and b!778457 c!86283) b!778454))

(assert (= (and b!778457 (not c!86283)) b!778456))

(assert (= (and d!102287 c!86285) b!778455))

(assert (= (and d!102287 (not c!86285)) b!778460))

(assert (= (and b!778460 res!526692) b!778453))

(assert (= (and b!778453 (not res!526694)) b!778459))

(assert (= (and b!778459 (not res!526693)) b!778458))

(assert (=> b!778456 m!721991))

(assert (=> b!778456 m!721991))

(assert (=> b!778456 m!721855))

(declare-fun m!722171 () Bool)

(assert (=> b!778456 m!722171))

(declare-fun m!722173 () Bool)

(assert (=> b!778458 m!722173))

(assert (=> b!778453 m!722173))

(assert (=> b!778459 m!722173))

(assert (=> d!102287 m!722125))

(assert (=> d!102287 m!721865))

(assert (=> b!778037 d!102287))

(assert (=> b!778036 d!102241))

(declare-fun d!102289 () Bool)

(assert (=> d!102289 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!778047 d!102289))

(declare-fun d!102291 () Bool)

(declare-fun res!526695 () Bool)

(declare-fun e!433133 () Bool)

(assert (=> d!102291 (=> res!526695 e!433133)))

(assert (=> d!102291 (= res!526695 (bvsge #b00000000000000000000000000000000 (size!20781 a!3186)))))

(assert (=> d!102291 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!433133)))

(declare-fun bm!35211 () Bool)

(declare-fun call!35214 () Bool)

(assert (=> bm!35211 (= call!35214 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!778461 () Bool)

(declare-fun e!433134 () Bool)

(assert (=> b!778461 (= e!433134 call!35214)))

(declare-fun b!778462 () Bool)

(declare-fun e!433135 () Bool)

(assert (=> b!778462 (= e!433135 call!35214)))

(declare-fun b!778463 () Bool)

(assert (=> b!778463 (= e!433134 e!433135)))

(declare-fun lt!346831 () (_ BitVec 64))

(assert (=> b!778463 (= lt!346831 (select (arr!20360 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!346832 () Unit!26828)

(assert (=> b!778463 (= lt!346832 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!346831 #b00000000000000000000000000000000))))

(assert (=> b!778463 (arrayContainsKey!0 a!3186 lt!346831 #b00000000000000000000000000000000)))

(declare-fun lt!346830 () Unit!26828)

(assert (=> b!778463 (= lt!346830 lt!346832)))

(declare-fun res!526696 () Bool)

(assert (=> b!778463 (= res!526696 (= (seekEntryOrOpen!0 (select (arr!20360 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7967 #b00000000000000000000000000000000)))))

(assert (=> b!778463 (=> (not res!526696) (not e!433135))))

(declare-fun b!778464 () Bool)

(assert (=> b!778464 (= e!433133 e!433134)))

(declare-fun c!86286 () Bool)

(assert (=> b!778464 (= c!86286 (validKeyInArray!0 (select (arr!20360 a!3186) #b00000000000000000000000000000000)))))

(assert (= (and d!102291 (not res!526695)) b!778464))

(assert (= (and b!778464 c!86286) b!778463))

(assert (= (and b!778464 (not c!86286)) b!778461))

(assert (= (and b!778463 res!526696) b!778462))

(assert (= (or b!778462 b!778461) bm!35211))

(declare-fun m!722175 () Bool)

(assert (=> bm!35211 m!722175))

(assert (=> b!778463 m!722035))

(declare-fun m!722177 () Bool)

(assert (=> b!778463 m!722177))

(declare-fun m!722179 () Bool)

(assert (=> b!778463 m!722179))

(assert (=> b!778463 m!722035))

(declare-fun m!722181 () Bool)

(assert (=> b!778463 m!722181))

(assert (=> b!778464 m!722035))

(assert (=> b!778464 m!722035))

(assert (=> b!778464 m!722039))

(assert (=> b!778030 d!102291))

(declare-fun b!778465 () Bool)

(declare-fun c!86287 () Bool)

(declare-fun lt!346833 () (_ BitVec 64))

(assert (=> b!778465 (= c!86287 (= lt!346833 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!433137 () SeekEntryResult!7967)

(declare-fun e!433138 () SeekEntryResult!7967)

(assert (=> b!778465 (= e!433137 e!433138)))

(declare-fun d!102293 () Bool)

(declare-fun lt!346834 () SeekEntryResult!7967)

(assert (=> d!102293 (and (or (is-Undefined!7967 lt!346834) (not (is-Found!7967 lt!346834)) (and (bvsge (index!34236 lt!346834) #b00000000000000000000000000000000) (bvslt (index!34236 lt!346834) (size!20781 lt!346666)))) (or (is-Undefined!7967 lt!346834) (is-Found!7967 lt!346834) (not (is-MissingZero!7967 lt!346834)) (and (bvsge (index!34235 lt!346834) #b00000000000000000000000000000000) (bvslt (index!34235 lt!346834) (size!20781 lt!346666)))) (or (is-Undefined!7967 lt!346834) (is-Found!7967 lt!346834) (is-MissingZero!7967 lt!346834) (not (is-MissingVacant!7967 lt!346834)) (and (bvsge (index!34238 lt!346834) #b00000000000000000000000000000000) (bvslt (index!34238 lt!346834) (size!20781 lt!346666)))) (or (is-Undefined!7967 lt!346834) (ite (is-Found!7967 lt!346834) (= (select (arr!20360 lt!346666) (index!34236 lt!346834)) lt!346657) (ite (is-MissingZero!7967 lt!346834) (= (select (arr!20360 lt!346666) (index!34235 lt!346834)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7967 lt!346834) (= (select (arr!20360 lt!346666) (index!34238 lt!346834)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!433136 () SeekEntryResult!7967)

(assert (=> d!102293 (= lt!346834 e!433136)))

(declare-fun c!86288 () Bool)

(declare-fun lt!346835 () SeekEntryResult!7967)

(assert (=> d!102293 (= c!86288 (and (is-Intermediate!7967 lt!346835) (undefined!8779 lt!346835)))))

(assert (=> d!102293 (= lt!346835 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346657 mask!3328) lt!346657 lt!346666 mask!3328))))

(assert (=> d!102293 (validMask!0 mask!3328)))

(assert (=> d!102293 (= (seekEntryOrOpen!0 lt!346657 lt!346666 mask!3328) lt!346834)))

(declare-fun b!778466 () Bool)

(assert (=> b!778466 (= e!433138 (MissingZero!7967 (index!34237 lt!346835)))))

(declare-fun b!778467 () Bool)

(assert (=> b!778467 (= e!433136 Undefined!7967)))

(declare-fun b!778468 () Bool)

(assert (=> b!778468 (= e!433137 (Found!7967 (index!34237 lt!346835)))))

(declare-fun b!778469 () Bool)

(assert (=> b!778469 (= e!433136 e!433137)))

(assert (=> b!778469 (= lt!346833 (select (arr!20360 lt!346666) (index!34237 lt!346835)))))

(declare-fun c!86289 () Bool)

(assert (=> b!778469 (= c!86289 (= lt!346833 lt!346657))))

(declare-fun b!778470 () Bool)

