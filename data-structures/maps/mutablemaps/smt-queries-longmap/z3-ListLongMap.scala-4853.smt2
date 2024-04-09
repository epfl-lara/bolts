; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66834 () Bool)

(assert start!66834)

(declare-fun b!770765 () Bool)

(declare-datatypes ((Unit!26552 0))(
  ( (Unit!26553) )
))
(declare-fun e!429134 () Unit!26552)

(declare-fun Unit!26554 () Unit!26552)

(assert (=> b!770765 (= e!429134 Unit!26554)))

(declare-datatypes ((array!42351 0))(
  ( (array!42352 (arr!20272 (Array (_ BitVec 32) (_ BitVec 64))) (size!20693 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42351)

(declare-datatypes ((SeekEntryResult!7879 0))(
  ( (MissingZero!7879 (index!33883 (_ BitVec 32))) (Found!7879 (index!33884 (_ BitVec 32))) (Intermediate!7879 (undefined!8691 Bool) (index!33885 (_ BitVec 32)) (x!64835 (_ BitVec 32))) (Undefined!7879) (MissingVacant!7879 (index!33886 (_ BitVec 32))) )
))
(declare-fun lt!343118 () SeekEntryResult!7879)

(declare-fun lt!343114 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42351 (_ BitVec 32)) SeekEntryResult!7879)

(assert (=> b!770765 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343114 (select (arr!20272 a!3186) j!159) a!3186 mask!3328) lt!343118)))

(declare-fun b!770766 () Bool)

(declare-fun res!521554 () Bool)

(declare-fun e!429130 () Bool)

(assert (=> b!770766 (=> (not res!521554) (not e!429130))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!770766 (= res!521554 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!770768 () Bool)

(declare-fun e!429132 () Bool)

(declare-fun e!429135 () Bool)

(assert (=> b!770768 (= e!429132 e!429135)))

(declare-fun res!521553 () Bool)

(assert (=> b!770768 (=> (not res!521553) (not e!429135))))

(declare-fun lt!343117 () SeekEntryResult!7879)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42351 (_ BitVec 32)) SeekEntryResult!7879)

(assert (=> b!770768 (= res!521553 (= (seekEntryOrOpen!0 (select (arr!20272 a!3186) j!159) a!3186 mask!3328) lt!343117))))

(assert (=> b!770768 (= lt!343117 (Found!7879 j!159))))

(declare-fun b!770769 () Bool)

(declare-fun e!429136 () Bool)

(assert (=> b!770769 (= e!429130 e!429136)))

(declare-fun res!521562 () Bool)

(assert (=> b!770769 (=> (not res!521562) (not e!429136))))

(declare-fun lt!343120 () SeekEntryResult!7879)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!770769 (= res!521562 (or (= lt!343120 (MissingZero!7879 i!1173)) (= lt!343120 (MissingVacant!7879 i!1173))))))

(assert (=> b!770769 (= lt!343120 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!770770 () Bool)

(declare-fun res!521559 () Bool)

(assert (=> b!770770 (=> (not res!521559) (not e!429130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!770770 (= res!521559 (validKeyInArray!0 (select (arr!20272 a!3186) j!159)))))

(declare-fun b!770771 () Bool)

(declare-fun res!521555 () Bool)

(assert (=> b!770771 (=> (not res!521555) (not e!429130))))

(assert (=> b!770771 (= res!521555 (and (= (size!20693 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20693 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20693 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!429131 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!770772 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42351 (_ BitVec 32)) SeekEntryResult!7879)

(assert (=> b!770772 (= e!429131 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20272 a!3186) j!159) a!3186 mask!3328) (Found!7879 j!159)))))

(declare-fun b!770773 () Bool)

(declare-fun res!521561 () Bool)

(assert (=> b!770773 (=> (not res!521561) (not e!429130))))

(assert (=> b!770773 (= res!521561 (validKeyInArray!0 k0!2102))))

(declare-fun b!770774 () Bool)

(declare-fun res!521549 () Bool)

(declare-fun e!429137 () Bool)

(assert (=> b!770774 (=> (not res!521549) (not e!429137))))

(assert (=> b!770774 (= res!521549 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20272 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!521558 () Bool)

(assert (=> start!66834 (=> (not res!521558) (not e!429130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66834 (= res!521558 (validMask!0 mask!3328))))

(assert (=> start!66834 e!429130))

(assert (=> start!66834 true))

(declare-fun array_inv!16046 (array!42351) Bool)

(assert (=> start!66834 (array_inv!16046 a!3186)))

(declare-fun b!770767 () Bool)

(declare-fun e!429138 () Bool)

(declare-fun e!429133 () Bool)

(assert (=> b!770767 (= e!429138 (not e!429133))))

(declare-fun res!521551 () Bool)

(assert (=> b!770767 (=> res!521551 e!429133)))

(declare-fun lt!343119 () SeekEntryResult!7879)

(get-info :version)

(assert (=> b!770767 (= res!521551 (or (not ((_ is Intermediate!7879) lt!343119)) (bvsge x!1131 (x!64835 lt!343119))))))

(assert (=> b!770767 e!429132))

(declare-fun res!521563 () Bool)

(assert (=> b!770767 (=> (not res!521563) (not e!429132))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42351 (_ BitVec 32)) Bool)

(assert (=> b!770767 (= res!521563 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343116 () Unit!26552)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26552)

(assert (=> b!770767 (= lt!343116 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!770775 () Bool)

(assert (=> b!770775 (= e!429135 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20272 a!3186) j!159) a!3186 mask!3328) lt!343117))))

(declare-fun b!770776 () Bool)

(declare-fun res!521552 () Bool)

(assert (=> b!770776 (=> (not res!521552) (not e!429136))))

(assert (=> b!770776 (= res!521552 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20693 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20693 a!3186))))))

(declare-fun b!770777 () Bool)

(declare-fun res!521556 () Bool)

(assert (=> b!770777 (=> (not res!521556) (not e!429136))))

(assert (=> b!770777 (= res!521556 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!770778 () Bool)

(declare-fun Unit!26555 () Unit!26552)

(assert (=> b!770778 (= e!429134 Unit!26555)))

(declare-fun lt!343115 () SeekEntryResult!7879)

(assert (=> b!770778 (= lt!343115 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20272 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!770778 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343114 resIntermediateIndex!5 (select (arr!20272 a!3186) j!159) a!3186 mask!3328) (Found!7879 j!159))))

(declare-fun b!770779 () Bool)

(assert (=> b!770779 (= e!429137 e!429138)))

(declare-fun res!521550 () Bool)

(assert (=> b!770779 (=> (not res!521550) (not e!429138))))

(declare-fun lt!343122 () SeekEntryResult!7879)

(assert (=> b!770779 (= res!521550 (= lt!343122 lt!343119))))

(declare-fun lt!343123 () (_ BitVec 64))

(declare-fun lt!343121 () array!42351)

(assert (=> b!770779 (= lt!343119 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343123 lt!343121 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770779 (= lt!343122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343123 mask!3328) lt!343123 lt!343121 mask!3328))))

(assert (=> b!770779 (= lt!343123 (select (store (arr!20272 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!770779 (= lt!343121 (array!42352 (store (arr!20272 a!3186) i!1173 k0!2102) (size!20693 a!3186)))))

(declare-fun b!770780 () Bool)

(assert (=> b!770780 (= e!429133 true)))

(declare-fun lt!343113 () Unit!26552)

(assert (=> b!770780 (= lt!343113 e!429134)))

(declare-fun c!85005 () Bool)

(assert (=> b!770780 (= c!85005 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!770780 (= lt!343114 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!770781 () Bool)

(assert (=> b!770781 (= e!429136 e!429137)))

(declare-fun res!521560 () Bool)

(assert (=> b!770781 (=> (not res!521560) (not e!429137))))

(assert (=> b!770781 (= res!521560 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20272 a!3186) j!159) mask!3328) (select (arr!20272 a!3186) j!159) a!3186 mask!3328) lt!343118))))

(assert (=> b!770781 (= lt!343118 (Intermediate!7879 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!770782 () Bool)

(declare-fun res!521557 () Bool)

(assert (=> b!770782 (=> (not res!521557) (not e!429136))))

(declare-datatypes ((List!14327 0))(
  ( (Nil!14324) (Cons!14323 (h!15422 (_ BitVec 64)) (t!20650 List!14327)) )
))
(declare-fun arrayNoDuplicates!0 (array!42351 (_ BitVec 32) List!14327) Bool)

(assert (=> b!770782 (= res!521557 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14324))))

(declare-fun b!770783 () Bool)

(declare-fun res!521548 () Bool)

(assert (=> b!770783 (=> (not res!521548) (not e!429137))))

(assert (=> b!770783 (= res!521548 e!429131)))

(declare-fun c!85004 () Bool)

(assert (=> b!770783 (= c!85004 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!770784 () Bool)

(assert (=> b!770784 (= e!429131 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20272 a!3186) j!159) a!3186 mask!3328) lt!343118))))

(assert (= (and start!66834 res!521558) b!770771))

(assert (= (and b!770771 res!521555) b!770770))

(assert (= (and b!770770 res!521559) b!770773))

(assert (= (and b!770773 res!521561) b!770766))

(assert (= (and b!770766 res!521554) b!770769))

(assert (= (and b!770769 res!521562) b!770777))

(assert (= (and b!770777 res!521556) b!770782))

(assert (= (and b!770782 res!521557) b!770776))

(assert (= (and b!770776 res!521552) b!770781))

(assert (= (and b!770781 res!521560) b!770774))

(assert (= (and b!770774 res!521549) b!770783))

(assert (= (and b!770783 c!85004) b!770784))

(assert (= (and b!770783 (not c!85004)) b!770772))

(assert (= (and b!770783 res!521548) b!770779))

(assert (= (and b!770779 res!521550) b!770767))

(assert (= (and b!770767 res!521563) b!770768))

(assert (= (and b!770768 res!521553) b!770775))

(assert (= (and b!770767 (not res!521551)) b!770780))

(assert (= (and b!770780 c!85005) b!770765))

(assert (= (and b!770780 (not c!85005)) b!770778))

(declare-fun m!716063 () Bool)

(assert (=> b!770773 m!716063))

(declare-fun m!716065 () Bool)

(assert (=> b!770774 m!716065))

(declare-fun m!716067 () Bool)

(assert (=> b!770767 m!716067))

(declare-fun m!716069 () Bool)

(assert (=> b!770767 m!716069))

(declare-fun m!716071 () Bool)

(assert (=> b!770778 m!716071))

(assert (=> b!770778 m!716071))

(declare-fun m!716073 () Bool)

(assert (=> b!770778 m!716073))

(assert (=> b!770778 m!716071))

(declare-fun m!716075 () Bool)

(assert (=> b!770778 m!716075))

(declare-fun m!716077 () Bool)

(assert (=> b!770779 m!716077))

(declare-fun m!716079 () Bool)

(assert (=> b!770779 m!716079))

(declare-fun m!716081 () Bool)

(assert (=> b!770779 m!716081))

(assert (=> b!770779 m!716079))

(declare-fun m!716083 () Bool)

(assert (=> b!770779 m!716083))

(declare-fun m!716085 () Bool)

(assert (=> b!770779 m!716085))

(assert (=> b!770775 m!716071))

(assert (=> b!770775 m!716071))

(declare-fun m!716087 () Bool)

(assert (=> b!770775 m!716087))

(declare-fun m!716089 () Bool)

(assert (=> b!770777 m!716089))

(assert (=> b!770772 m!716071))

(assert (=> b!770772 m!716071))

(assert (=> b!770772 m!716073))

(assert (=> b!770781 m!716071))

(assert (=> b!770781 m!716071))

(declare-fun m!716091 () Bool)

(assert (=> b!770781 m!716091))

(assert (=> b!770781 m!716091))

(assert (=> b!770781 m!716071))

(declare-fun m!716093 () Bool)

(assert (=> b!770781 m!716093))

(declare-fun m!716095 () Bool)

(assert (=> start!66834 m!716095))

(declare-fun m!716097 () Bool)

(assert (=> start!66834 m!716097))

(assert (=> b!770768 m!716071))

(assert (=> b!770768 m!716071))

(declare-fun m!716099 () Bool)

(assert (=> b!770768 m!716099))

(assert (=> b!770765 m!716071))

(assert (=> b!770765 m!716071))

(declare-fun m!716101 () Bool)

(assert (=> b!770765 m!716101))

(declare-fun m!716103 () Bool)

(assert (=> b!770766 m!716103))

(declare-fun m!716105 () Bool)

(assert (=> b!770780 m!716105))

(assert (=> b!770770 m!716071))

(assert (=> b!770770 m!716071))

(declare-fun m!716107 () Bool)

(assert (=> b!770770 m!716107))

(assert (=> b!770784 m!716071))

(assert (=> b!770784 m!716071))

(declare-fun m!716109 () Bool)

(assert (=> b!770784 m!716109))

(declare-fun m!716111 () Bool)

(assert (=> b!770782 m!716111))

(declare-fun m!716113 () Bool)

(assert (=> b!770769 m!716113))

(check-sat (not b!770765) (not b!770784) (not b!770782) (not b!770778) (not b!770777) (not b!770770) (not b!770769) (not b!770781) (not b!770768) (not start!66834) (not b!770766) (not b!770773) (not b!770780) (not b!770767) (not b!770775) (not b!770772) (not b!770779))
(check-sat)
