; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!67194 () Bool)

(assert start!67194)

(declare-fun b!776641 () Bool)

(declare-fun e!432183 () Bool)

(declare-fun e!432184 () Bool)

(assert (=> b!776641 (= e!432183 e!432184)))

(declare-fun res!525581 () Bool)

(assert (=> b!776641 (=> (not res!525581) (not e!432184))))

(declare-datatypes ((SeekEntryResult!7951 0))(
  ( (MissingZero!7951 (index!34171 (_ BitVec 32))) (Found!7951 (index!34172 (_ BitVec 32))) (Intermediate!7951 (undefined!8763 Bool) (index!34173 (_ BitVec 32)) (x!65135 (_ BitVec 32))) (Undefined!7951) (MissingVacant!7951 (index!34174 (_ BitVec 32))) )
))
(declare-fun lt!346056 () SeekEntryResult!7951)

(declare-fun lt!346057 () SeekEntryResult!7951)

(assert (=> b!776641 (= res!525581 (= lt!346056 lt!346057))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!346060 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!42504 0))(
  ( (array!42505 (arr!20344 (Array (_ BitVec 32) (_ BitVec 64))) (size!20765 (_ BitVec 32))) )
))
(declare-fun lt!346052 () array!42504)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42504 (_ BitVec 32)) SeekEntryResult!7951)

(assert (=> b!776641 (= lt!346057 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!346060 lt!346052 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!776641 (= lt!346056 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!346060 mask!3328) lt!346060 lt!346052 mask!3328))))

(declare-fun a!3186 () array!42504)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!776641 (= lt!346060 (select (store (arr!20344 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!776641 (= lt!346052 (array!42505 (store (arr!20344 a!3186) i!1173 k0!2102) (size!20765 a!3186)))))

(declare-fun b!776642 () Bool)

(declare-fun res!525573 () Bool)

(assert (=> b!776642 (=> (not res!525573) (not e!432183))))

(declare-fun e!432189 () Bool)

(assert (=> b!776642 (= res!525573 e!432189)))

(declare-fun c!85935 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!776642 (= c!85935 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!776644 () Bool)

(declare-fun res!525577 () Bool)

(declare-fun e!432190 () Bool)

(assert (=> b!776644 (=> (not res!525577) (not e!432190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!776644 (= res!525577 (validKeyInArray!0 k0!2102))))

(declare-fun b!776645 () Bool)

(declare-fun e!432187 () Bool)

(assert (=> b!776645 (= e!432187 true)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun lt!346058 () SeekEntryResult!7951)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42504 (_ BitVec 32)) SeekEntryResult!7951)

(assert (=> b!776645 (= lt!346058 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20344 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!776646 () Bool)

(declare-fun res!525582 () Bool)

(assert (=> b!776646 (=> (not res!525582) (not e!432190))))

(assert (=> b!776646 (= res!525582 (and (= (size!20765 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20765 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20765 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!776647 () Bool)

(declare-fun e!432182 () Bool)

(assert (=> b!776647 (= e!432182 e!432183)))

(declare-fun res!525578 () Bool)

(assert (=> b!776647 (=> (not res!525578) (not e!432183))))

(declare-fun lt!346054 () SeekEntryResult!7951)

(assert (=> b!776647 (= res!525578 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20344 a!3186) j!159) mask!3328) (select (arr!20344 a!3186) j!159) a!3186 mask!3328) lt!346054))))

(assert (=> b!776647 (= lt!346054 (Intermediate!7951 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!776648 () Bool)

(assert (=> b!776648 (= e!432189 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20344 a!3186) j!159) a!3186 mask!3328) (Found!7951 j!159)))))

(declare-fun b!776649 () Bool)

(declare-fun res!525580 () Bool)

(assert (=> b!776649 (=> (not res!525580) (not e!432183))))

(assert (=> b!776649 (= res!525580 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20344 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!776650 () Bool)

(declare-fun res!525584 () Bool)

(assert (=> b!776650 (=> (not res!525584) (not e!432182))))

(assert (=> b!776650 (= res!525584 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20765 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20765 a!3186))))))

(declare-fun b!776651 () Bool)

(assert (=> b!776651 (= e!432189 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20344 a!3186) j!159) a!3186 mask!3328) lt!346054))))

(declare-fun b!776652 () Bool)

(declare-fun res!525585 () Bool)

(assert (=> b!776652 (=> (not res!525585) (not e!432182))))

(declare-datatypes ((List!14399 0))(
  ( (Nil!14396) (Cons!14395 (h!15503 (_ BitVec 64)) (t!20722 List!14399)) )
))
(declare-fun arrayNoDuplicates!0 (array!42504 (_ BitVec 32) List!14399) Bool)

(assert (=> b!776652 (= res!525585 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14396))))

(declare-fun b!776653 () Bool)

(declare-fun res!525572 () Bool)

(assert (=> b!776653 (=> (not res!525572) (not e!432190))))

(declare-fun arrayContainsKey!0 (array!42504 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!776653 (= res!525572 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!776654 () Bool)

(declare-fun res!525576 () Bool)

(assert (=> b!776654 (=> (not res!525576) (not e!432182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42504 (_ BitVec 32)) Bool)

(assert (=> b!776654 (= res!525576 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!776655 () Bool)

(declare-fun res!525586 () Bool)

(assert (=> b!776655 (=> (not res!525586) (not e!432190))))

(assert (=> b!776655 (= res!525586 (validKeyInArray!0 (select (arr!20344 a!3186) j!159)))))

(declare-fun b!776656 () Bool)

(declare-fun e!432188 () Bool)

(declare-fun e!432186 () Bool)

(assert (=> b!776656 (= e!432188 e!432186)))

(declare-fun res!525571 () Bool)

(assert (=> b!776656 (=> (not res!525571) (not e!432186))))

(declare-fun lt!346053 () SeekEntryResult!7951)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42504 (_ BitVec 32)) SeekEntryResult!7951)

(assert (=> b!776656 (= res!525571 (= (seekEntryOrOpen!0 (select (arr!20344 a!3186) j!159) a!3186 mask!3328) lt!346053))))

(assert (=> b!776656 (= lt!346053 (Found!7951 j!159))))

(declare-fun res!525579 () Bool)

(assert (=> start!67194 (=> (not res!525579) (not e!432190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67194 (= res!525579 (validMask!0 mask!3328))))

(assert (=> start!67194 e!432190))

(assert (=> start!67194 true))

(declare-fun array_inv!16118 (array!42504) Bool)

(assert (=> start!67194 (array_inv!16118 a!3186)))

(declare-fun b!776643 () Bool)

(assert (=> b!776643 (= e!432186 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20344 a!3186) j!159) a!3186 mask!3328) lt!346053))))

(declare-fun b!776657 () Bool)

(assert (=> b!776657 (= e!432190 e!432182)))

(declare-fun res!525583 () Bool)

(assert (=> b!776657 (=> (not res!525583) (not e!432182))))

(declare-fun lt!346055 () SeekEntryResult!7951)

(assert (=> b!776657 (= res!525583 (or (= lt!346055 (MissingZero!7951 i!1173)) (= lt!346055 (MissingVacant!7951 i!1173))))))

(assert (=> b!776657 (= lt!346055 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!776658 () Bool)

(assert (=> b!776658 (= e!432184 (not e!432187))))

(declare-fun res!525574 () Bool)

(assert (=> b!776658 (=> res!525574 e!432187)))

(get-info :version)

(assert (=> b!776658 (= res!525574 (or (not ((_ is Intermediate!7951) lt!346057)) (bvslt x!1131 (x!65135 lt!346057)) (not (= x!1131 (x!65135 lt!346057))) (not (= index!1321 (index!34173 lt!346057)))))))

(assert (=> b!776658 e!432188))

(declare-fun res!525575 () Bool)

(assert (=> b!776658 (=> (not res!525575) (not e!432188))))

(assert (=> b!776658 (= res!525575 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26796 0))(
  ( (Unit!26797) )
))
(declare-fun lt!346059 () Unit!26796)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42504 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26796)

(assert (=> b!776658 (= lt!346059 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!67194 res!525579) b!776646))

(assert (= (and b!776646 res!525582) b!776655))

(assert (= (and b!776655 res!525586) b!776644))

(assert (= (and b!776644 res!525577) b!776653))

(assert (= (and b!776653 res!525572) b!776657))

(assert (= (and b!776657 res!525583) b!776654))

(assert (= (and b!776654 res!525576) b!776652))

(assert (= (and b!776652 res!525585) b!776650))

(assert (= (and b!776650 res!525584) b!776647))

(assert (= (and b!776647 res!525578) b!776649))

(assert (= (and b!776649 res!525580) b!776642))

(assert (= (and b!776642 c!85935) b!776651))

(assert (= (and b!776642 (not c!85935)) b!776648))

(assert (= (and b!776642 res!525573) b!776641))

(assert (= (and b!776641 res!525581) b!776658))

(assert (= (and b!776658 res!525575) b!776656))

(assert (= (and b!776656 res!525571) b!776643))

(assert (= (and b!776658 (not res!525574)) b!776645))

(declare-fun m!720749 () Bool)

(assert (=> b!776655 m!720749))

(assert (=> b!776655 m!720749))

(declare-fun m!720751 () Bool)

(assert (=> b!776655 m!720751))

(assert (=> b!776645 m!720749))

(assert (=> b!776645 m!720749))

(declare-fun m!720753 () Bool)

(assert (=> b!776645 m!720753))

(declare-fun m!720755 () Bool)

(assert (=> start!67194 m!720755))

(declare-fun m!720757 () Bool)

(assert (=> start!67194 m!720757))

(assert (=> b!776648 m!720749))

(assert (=> b!776648 m!720749))

(assert (=> b!776648 m!720753))

(assert (=> b!776651 m!720749))

(assert (=> b!776651 m!720749))

(declare-fun m!720759 () Bool)

(assert (=> b!776651 m!720759))

(declare-fun m!720761 () Bool)

(assert (=> b!776657 m!720761))

(declare-fun m!720763 () Bool)

(assert (=> b!776641 m!720763))

(declare-fun m!720765 () Bool)

(assert (=> b!776641 m!720765))

(declare-fun m!720767 () Bool)

(assert (=> b!776641 m!720767))

(assert (=> b!776641 m!720763))

(declare-fun m!720769 () Bool)

(assert (=> b!776641 m!720769))

(declare-fun m!720771 () Bool)

(assert (=> b!776641 m!720771))

(declare-fun m!720773 () Bool)

(assert (=> b!776658 m!720773))

(declare-fun m!720775 () Bool)

(assert (=> b!776658 m!720775))

(assert (=> b!776647 m!720749))

(assert (=> b!776647 m!720749))

(declare-fun m!720777 () Bool)

(assert (=> b!776647 m!720777))

(assert (=> b!776647 m!720777))

(assert (=> b!776647 m!720749))

(declare-fun m!720779 () Bool)

(assert (=> b!776647 m!720779))

(assert (=> b!776656 m!720749))

(assert (=> b!776656 m!720749))

(declare-fun m!720781 () Bool)

(assert (=> b!776656 m!720781))

(declare-fun m!720783 () Bool)

(assert (=> b!776654 m!720783))

(declare-fun m!720785 () Bool)

(assert (=> b!776653 m!720785))

(declare-fun m!720787 () Bool)

(assert (=> b!776649 m!720787))

(assert (=> b!776643 m!720749))

(assert (=> b!776643 m!720749))

(declare-fun m!720789 () Bool)

(assert (=> b!776643 m!720789))

(declare-fun m!720791 () Bool)

(assert (=> b!776652 m!720791))

(declare-fun m!720793 () Bool)

(assert (=> b!776644 m!720793))

(check-sat (not b!776645) (not b!776654) (not b!776651) (not b!776643) (not b!776657) (not b!776648) (not b!776652) (not b!776647) (not b!776656) (not b!776644) (not start!67194) (not b!776653) (not b!776655) (not b!776641) (not b!776658))
(check-sat)
