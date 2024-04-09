; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!68002 () Bool)

(assert start!68002)

(declare-fun b!790772 () Bool)

(declare-fun res!535755 () Bool)

(declare-fun e!439536 () Bool)

(assert (=> b!790772 (=> (not res!535755) (not e!439536))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42871 0))(
  ( (array!42872 (arr!20517 (Array (_ BitVec 32) (_ BitVec 64))) (size!20938 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42871)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!790772 (= res!535755 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20517 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!790773 () Bool)

(declare-fun res!535748 () Bool)

(declare-fun e!439533 () Bool)

(assert (=> b!790773 (=> (not res!535748) (not e!439533))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!790773 (= res!535748 (validKeyInArray!0 k!2102))))

(declare-fun b!790774 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!8124 0))(
  ( (MissingZero!8124 (index!34863 (_ BitVec 32))) (Found!8124 (index!34864 (_ BitVec 32))) (Intermediate!8124 (undefined!8936 Bool) (index!34865 (_ BitVec 32)) (x!65835 (_ BitVec 32))) (Undefined!8124) (MissingVacant!8124 (index!34866 (_ BitVec 32))) )
))
(declare-fun lt!353030 () SeekEntryResult!8124)

(declare-fun e!439538 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42871 (_ BitVec 32)) SeekEntryResult!8124)

(assert (=> b!790774 (= e!439538 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20517 a!3186) j!159) a!3186 mask!3328) lt!353030))))

(declare-fun b!790775 () Bool)

(declare-fun res!535751 () Bool)

(declare-fun e!439537 () Bool)

(assert (=> b!790775 (=> (not res!535751) (not e!439537))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!790775 (= res!535751 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20938 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20938 a!3186))))))

(declare-fun b!790776 () Bool)

(declare-fun res!535759 () Bool)

(assert (=> b!790776 (=> (not res!535759) (not e!439537))))

(declare-datatypes ((List!14572 0))(
  ( (Nil!14569) (Cons!14568 (h!15697 (_ BitVec 64)) (t!20895 List!14572)) )
))
(declare-fun arrayNoDuplicates!0 (array!42871 (_ BitVec 32) List!14572) Bool)

(assert (=> b!790776 (= res!535759 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14569))))

(declare-fun b!790777 () Bool)

(assert (=> b!790777 (= e!439537 e!439536)))

(declare-fun res!535753 () Bool)

(assert (=> b!790777 (=> (not res!535753) (not e!439536))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!790777 (= res!535753 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20517 a!3186) j!159) mask!3328) (select (arr!20517 a!3186) j!159) a!3186 mask!3328) lt!353030))))

(assert (=> b!790777 (= lt!353030 (Intermediate!8124 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!790778 () Bool)

(declare-fun res!535746 () Bool)

(assert (=> b!790778 (=> (not res!535746) (not e!439536))))

(assert (=> b!790778 (= res!535746 e!439538)))

(declare-fun c!87924 () Bool)

(assert (=> b!790778 (= c!87924 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!535749 () Bool)

(assert (=> start!68002 (=> (not res!535749) (not e!439533))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!68002 (= res!535749 (validMask!0 mask!3328))))

(assert (=> start!68002 e!439533))

(assert (=> start!68002 true))

(declare-fun array_inv!16291 (array!42871) Bool)

(assert (=> start!68002 (array_inv!16291 a!3186)))

(declare-fun b!790779 () Bool)

(assert (=> b!790779 (= e!439533 e!439537)))

(declare-fun res!535757 () Bool)

(assert (=> b!790779 (=> (not res!535757) (not e!439537))))

(declare-fun lt!353032 () SeekEntryResult!8124)

(assert (=> b!790779 (= res!535757 (or (= lt!353032 (MissingZero!8124 i!1173)) (= lt!353032 (MissingVacant!8124 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42871 (_ BitVec 32)) SeekEntryResult!8124)

(assert (=> b!790779 (= lt!353032 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!790780 () Bool)

(declare-fun res!535747 () Bool)

(assert (=> b!790780 (=> (not res!535747) (not e!439533))))

(declare-fun arrayContainsKey!0 (array!42871 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!790780 (= res!535747 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!790781 () Bool)

(declare-fun res!535745 () Bool)

(assert (=> b!790781 (=> (not res!535745) (not e!439537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42871 (_ BitVec 32)) Bool)

(assert (=> b!790781 (= res!535745 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!790782 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42871 (_ BitVec 32)) SeekEntryResult!8124)

(assert (=> b!790782 (= e!439538 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20517 a!3186) j!159) a!3186 mask!3328) (Found!8124 j!159)))))

(declare-fun b!790783 () Bool)

(declare-fun res!535752 () Bool)

(assert (=> b!790783 (=> (not res!535752) (not e!439533))))

(assert (=> b!790783 (= res!535752 (and (= (size!20938 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20938 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20938 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!790784 () Bool)

(declare-fun e!439539 () Bool)

(declare-fun lt!353029 () SeekEntryResult!8124)

(assert (=> b!790784 (= e!439539 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20517 a!3186) j!159) a!3186 mask!3328) lt!353029))))

(declare-fun b!790785 () Bool)

(declare-fun e!439534 () Bool)

(assert (=> b!790785 (= e!439534 e!439539)))

(declare-fun res!535754 () Bool)

(assert (=> b!790785 (=> (not res!535754) (not e!439539))))

(assert (=> b!790785 (= res!535754 (= (seekEntryOrOpen!0 (select (arr!20517 a!3186) j!159) a!3186 mask!3328) lt!353029))))

(assert (=> b!790785 (= lt!353029 (Found!8124 j!159))))

(declare-fun b!790786 () Bool)

(declare-fun e!439540 () Bool)

(assert (=> b!790786 (= e!439536 e!439540)))

(declare-fun res!535750 () Bool)

(assert (=> b!790786 (=> (not res!535750) (not e!439540))))

(declare-fun lt!353027 () array!42871)

(declare-fun lt!353031 () (_ BitVec 64))

(assert (=> b!790786 (= res!535750 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!353031 mask!3328) lt!353031 lt!353027 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!353031 lt!353027 mask!3328)))))

(assert (=> b!790786 (= lt!353031 (select (store (arr!20517 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!790786 (= lt!353027 (array!42872 (store (arr!20517 a!3186) i!1173 k!2102) (size!20938 a!3186)))))

(declare-fun b!790787 () Bool)

(declare-fun res!535758 () Bool)

(assert (=> b!790787 (=> (not res!535758) (not e!439533))))

(assert (=> b!790787 (= res!535758 (validKeyInArray!0 (select (arr!20517 a!3186) j!159)))))

(declare-fun b!790788 () Bool)

(assert (=> b!790788 (= e!439540 (not true))))

(assert (=> b!790788 e!439534))

(declare-fun res!535756 () Bool)

(assert (=> b!790788 (=> (not res!535756) (not e!439534))))

(assert (=> b!790788 (= res!535756 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!27400 0))(
  ( (Unit!27401) )
))
(declare-fun lt!353028 () Unit!27400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42871 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27400)

(assert (=> b!790788 (= lt!353028 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!68002 res!535749) b!790783))

(assert (= (and b!790783 res!535752) b!790787))

(assert (= (and b!790787 res!535758) b!790773))

(assert (= (and b!790773 res!535748) b!790780))

(assert (= (and b!790780 res!535747) b!790779))

(assert (= (and b!790779 res!535757) b!790781))

(assert (= (and b!790781 res!535745) b!790776))

(assert (= (and b!790776 res!535759) b!790775))

(assert (= (and b!790775 res!535751) b!790777))

(assert (= (and b!790777 res!535753) b!790772))

(assert (= (and b!790772 res!535755) b!790778))

(assert (= (and b!790778 c!87924) b!790774))

(assert (= (and b!790778 (not c!87924)) b!790782))

(assert (= (and b!790778 res!535746) b!790786))

(assert (= (and b!790786 res!535750) b!790788))

(assert (= (and b!790788 res!535756) b!790785))

(assert (= (and b!790785 res!535754) b!790784))

(declare-fun m!731641 () Bool)

(assert (=> b!790777 m!731641))

(assert (=> b!790777 m!731641))

(declare-fun m!731643 () Bool)

(assert (=> b!790777 m!731643))

(assert (=> b!790777 m!731643))

(assert (=> b!790777 m!731641))

(declare-fun m!731645 () Bool)

(assert (=> b!790777 m!731645))

(declare-fun m!731647 () Bool)

(assert (=> b!790773 m!731647))

(assert (=> b!790782 m!731641))

(assert (=> b!790782 m!731641))

(declare-fun m!731649 () Bool)

(assert (=> b!790782 m!731649))

(declare-fun m!731651 () Bool)

(assert (=> b!790786 m!731651))

(declare-fun m!731653 () Bool)

(assert (=> b!790786 m!731653))

(declare-fun m!731655 () Bool)

(assert (=> b!790786 m!731655))

(declare-fun m!731657 () Bool)

(assert (=> b!790786 m!731657))

(assert (=> b!790786 m!731657))

(declare-fun m!731659 () Bool)

(assert (=> b!790786 m!731659))

(declare-fun m!731661 () Bool)

(assert (=> b!790780 m!731661))

(declare-fun m!731663 () Bool)

(assert (=> b!790776 m!731663))

(declare-fun m!731665 () Bool)

(assert (=> b!790788 m!731665))

(declare-fun m!731667 () Bool)

(assert (=> b!790788 m!731667))

(assert (=> b!790787 m!731641))

(assert (=> b!790787 m!731641))

(declare-fun m!731669 () Bool)

(assert (=> b!790787 m!731669))

(assert (=> b!790784 m!731641))

(assert (=> b!790784 m!731641))

(declare-fun m!731671 () Bool)

(assert (=> b!790784 m!731671))

(declare-fun m!731673 () Bool)

(assert (=> b!790772 m!731673))

(assert (=> b!790785 m!731641))

(assert (=> b!790785 m!731641))

(declare-fun m!731675 () Bool)

(assert (=> b!790785 m!731675))

(assert (=> b!790774 m!731641))

(assert (=> b!790774 m!731641))

(declare-fun m!731677 () Bool)

(assert (=> b!790774 m!731677))

(declare-fun m!731679 () Bool)

(assert (=> b!790779 m!731679))

(declare-fun m!731681 () Bool)

(assert (=> start!68002 m!731681))

(declare-fun m!731683 () Bool)

(assert (=> start!68002 m!731683))

(declare-fun m!731685 () Bool)

(assert (=> b!790781 m!731685))

(push 1)

