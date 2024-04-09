; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64554 () Bool)

(assert start!64554)

(declare-fun b!726627 () Bool)

(declare-fun res!487718 () Bool)

(declare-fun e!406831 () Bool)

(assert (=> b!726627 (=> (not res!487718) (not e!406831))))

(declare-datatypes ((array!41025 0))(
  ( (array!41026 (arr!19630 (Array (_ BitVec 32) (_ BitVec 64))) (size!20051 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41025)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726627 (= res!487718 (validKeyInArray!0 (select (arr!19630 a!3186) j!159)))))

(declare-fun b!726628 () Bool)

(declare-fun res!487723 () Bool)

(assert (=> b!726628 (=> (not res!487723) (not e!406831))))

(declare-fun k0!2102 () (_ BitVec 64))

(assert (=> b!726628 (= res!487723 (validKeyInArray!0 k0!2102))))

(declare-fun b!726629 () Bool)

(declare-fun res!487726 () Bool)

(assert (=> b!726629 (=> (not res!487726) (not e!406831))))

(declare-fun arrayContainsKey!0 (array!41025 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726629 (= res!487726 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726630 () Bool)

(declare-fun res!487728 () Bool)

(declare-fun e!406836 () Bool)

(assert (=> b!726630 (=> (not res!487728) (not e!406836))))

(declare-datatypes ((List!13685 0))(
  ( (Nil!13682) (Cons!13681 (h!14738 (_ BitVec 64)) (t!20008 List!13685)) )
))
(declare-fun arrayNoDuplicates!0 (array!41025 (_ BitVec 32) List!13685) Bool)

(assert (=> b!726630 (= res!487728 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13682))))

(declare-fun b!726631 () Bool)

(declare-fun e!406835 () Bool)

(declare-fun e!406834 () Bool)

(assert (=> b!726631 (= e!406835 e!406834)))

(declare-fun res!487720 () Bool)

(assert (=> b!726631 (=> (not res!487720) (not e!406834))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7237 0))(
  ( (MissingZero!7237 (index!31315 (_ BitVec 32))) (Found!7237 (index!31316 (_ BitVec 32))) (Intermediate!7237 (undefined!8049 Bool) (index!31317 (_ BitVec 32)) (x!62328 (_ BitVec 32))) (Undefined!7237) (MissingVacant!7237 (index!31318 (_ BitVec 32))) )
))
(declare-fun lt!321824 () SeekEntryResult!7237)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41025 (_ BitVec 32)) SeekEntryResult!7237)

(assert (=> b!726631 (= res!487720 (= (seekEntryOrOpen!0 (select (arr!19630 a!3186) j!159) a!3186 mask!3328) lt!321824))))

(assert (=> b!726631 (= lt!321824 (Found!7237 j!159))))

(declare-fun res!487727 () Bool)

(assert (=> start!64554 (=> (not res!487727) (not e!406831))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64554 (= res!487727 (validMask!0 mask!3328))))

(assert (=> start!64554 e!406831))

(assert (=> start!64554 true))

(declare-fun array_inv!15404 (array!41025) Bool)

(assert (=> start!64554 (array_inv!15404 a!3186)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!406837 () Bool)

(declare-fun b!726632 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41025 (_ BitVec 32)) SeekEntryResult!7237)

(assert (=> b!726632 (= e!406837 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19630 a!3186) j!159) a!3186 mask!3328) (Found!7237 j!159)))))

(declare-fun b!726633 () Bool)

(declare-fun res!487713 () Bool)

(assert (=> b!726633 (=> (not res!487713) (not e!406836))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726633 (= res!487713 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20051 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20051 a!3186))))))

(declare-fun lt!321822 () SeekEntryResult!7237)

(declare-fun b!726634 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41025 (_ BitVec 32)) SeekEntryResult!7237)

(assert (=> b!726634 (= e!406837 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19630 a!3186) j!159) a!3186 mask!3328) lt!321822))))

(declare-fun b!726635 () Bool)

(assert (=> b!726635 (= e!406831 e!406836)))

(declare-fun res!487714 () Bool)

(assert (=> b!726635 (=> (not res!487714) (not e!406836))))

(declare-fun lt!321817 () SeekEntryResult!7237)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726635 (= res!487714 (or (= lt!321817 (MissingZero!7237 i!1173)) (= lt!321817 (MissingVacant!7237 i!1173))))))

(assert (=> b!726635 (= lt!321817 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!726636 () Bool)

(declare-fun res!487725 () Bool)

(assert (=> b!726636 (=> (not res!487725) (not e!406836))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41025 (_ BitVec 32)) Bool)

(assert (=> b!726636 (= res!487725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726637 () Bool)

(assert (=> b!726637 (= e!406834 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19630 a!3186) j!159) a!3186 mask!3328) lt!321824))))

(declare-fun b!726638 () Bool)

(declare-fun e!406832 () Bool)

(assert (=> b!726638 (= e!406836 e!406832)))

(declare-fun res!487715 () Bool)

(assert (=> b!726638 (=> (not res!487715) (not e!406832))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726638 (= res!487715 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19630 a!3186) j!159) mask!3328) (select (arr!19630 a!3186) j!159) a!3186 mask!3328) lt!321822))))

(assert (=> b!726638 (= lt!321822 (Intermediate!7237 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726639 () Bool)

(declare-fun res!487721 () Bool)

(assert (=> b!726639 (=> (not res!487721) (not e!406832))))

(assert (=> b!726639 (= res!487721 e!406837)))

(declare-fun c!79830 () Bool)

(assert (=> b!726639 (= c!79830 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726640 () Bool)

(declare-fun e!406839 () Bool)

(declare-fun e!406833 () Bool)

(assert (=> b!726640 (= e!406839 (not e!406833))))

(declare-fun res!487716 () Bool)

(assert (=> b!726640 (=> res!487716 e!406833)))

(declare-fun lt!321818 () SeekEntryResult!7237)

(get-info :version)

(assert (=> b!726640 (= res!487716 (or (not ((_ is Intermediate!7237) lt!321818)) (bvsge x!1131 (x!62328 lt!321818))))))

(assert (=> b!726640 e!406835))

(declare-fun res!487724 () Bool)

(assert (=> b!726640 (=> (not res!487724) (not e!406835))))

(assert (=> b!726640 (= res!487724 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24792 0))(
  ( (Unit!24793) )
))
(declare-fun lt!321816 () Unit!24792)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41025 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24792)

(assert (=> b!726640 (= lt!321816 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726641 () Bool)

(assert (=> b!726641 (= e!406833 true)))

(declare-fun lt!321819 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726641 (= lt!321819 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!726642 () Bool)

(declare-fun res!487719 () Bool)

(assert (=> b!726642 (=> (not res!487719) (not e!406831))))

(assert (=> b!726642 (= res!487719 (and (= (size!20051 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20051 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20051 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726643 () Bool)

(declare-fun res!487722 () Bool)

(assert (=> b!726643 (=> (not res!487722) (not e!406832))))

(assert (=> b!726643 (= res!487722 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19630 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726644 () Bool)

(assert (=> b!726644 (= e!406832 e!406839)))

(declare-fun res!487717 () Bool)

(assert (=> b!726644 (=> (not res!487717) (not e!406839))))

(declare-fun lt!321821 () SeekEntryResult!7237)

(assert (=> b!726644 (= res!487717 (= lt!321821 lt!321818))))

(declare-fun lt!321823 () (_ BitVec 64))

(declare-fun lt!321820 () array!41025)

(assert (=> b!726644 (= lt!321818 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321823 lt!321820 mask!3328))))

(assert (=> b!726644 (= lt!321821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321823 mask!3328) lt!321823 lt!321820 mask!3328))))

(assert (=> b!726644 (= lt!321823 (select (store (arr!19630 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!726644 (= lt!321820 (array!41026 (store (arr!19630 a!3186) i!1173 k0!2102) (size!20051 a!3186)))))

(assert (= (and start!64554 res!487727) b!726642))

(assert (= (and b!726642 res!487719) b!726627))

(assert (= (and b!726627 res!487718) b!726628))

(assert (= (and b!726628 res!487723) b!726629))

(assert (= (and b!726629 res!487726) b!726635))

(assert (= (and b!726635 res!487714) b!726636))

(assert (= (and b!726636 res!487725) b!726630))

(assert (= (and b!726630 res!487728) b!726633))

(assert (= (and b!726633 res!487713) b!726638))

(assert (= (and b!726638 res!487715) b!726643))

(assert (= (and b!726643 res!487722) b!726639))

(assert (= (and b!726639 c!79830) b!726634))

(assert (= (and b!726639 (not c!79830)) b!726632))

(assert (= (and b!726639 res!487721) b!726644))

(assert (= (and b!726644 res!487717) b!726640))

(assert (= (and b!726640 res!487724) b!726631))

(assert (= (and b!726631 res!487720) b!726637))

(assert (= (and b!726640 (not res!487716)) b!726641))

(declare-fun m!680755 () Bool)

(assert (=> b!726627 m!680755))

(assert (=> b!726627 m!680755))

(declare-fun m!680757 () Bool)

(assert (=> b!726627 m!680757))

(declare-fun m!680759 () Bool)

(assert (=> b!726635 m!680759))

(declare-fun m!680761 () Bool)

(assert (=> b!726641 m!680761))

(declare-fun m!680763 () Bool)

(assert (=> b!726643 m!680763))

(assert (=> b!726632 m!680755))

(assert (=> b!726632 m!680755))

(declare-fun m!680765 () Bool)

(assert (=> b!726632 m!680765))

(assert (=> b!726631 m!680755))

(assert (=> b!726631 m!680755))

(declare-fun m!680767 () Bool)

(assert (=> b!726631 m!680767))

(assert (=> b!726637 m!680755))

(assert (=> b!726637 m!680755))

(declare-fun m!680769 () Bool)

(assert (=> b!726637 m!680769))

(assert (=> b!726638 m!680755))

(assert (=> b!726638 m!680755))

(declare-fun m!680771 () Bool)

(assert (=> b!726638 m!680771))

(assert (=> b!726638 m!680771))

(assert (=> b!726638 m!680755))

(declare-fun m!680773 () Bool)

(assert (=> b!726638 m!680773))

(declare-fun m!680775 () Bool)

(assert (=> start!64554 m!680775))

(declare-fun m!680777 () Bool)

(assert (=> start!64554 m!680777))

(declare-fun m!680779 () Bool)

(assert (=> b!726630 m!680779))

(declare-fun m!680781 () Bool)

(assert (=> b!726644 m!680781))

(declare-fun m!680783 () Bool)

(assert (=> b!726644 m!680783))

(declare-fun m!680785 () Bool)

(assert (=> b!726644 m!680785))

(assert (=> b!726644 m!680785))

(declare-fun m!680787 () Bool)

(assert (=> b!726644 m!680787))

(declare-fun m!680789 () Bool)

(assert (=> b!726644 m!680789))

(declare-fun m!680791 () Bool)

(assert (=> b!726628 m!680791))

(declare-fun m!680793 () Bool)

(assert (=> b!726636 m!680793))

(declare-fun m!680795 () Bool)

(assert (=> b!726629 m!680795))

(declare-fun m!680797 () Bool)

(assert (=> b!726640 m!680797))

(declare-fun m!680799 () Bool)

(assert (=> b!726640 m!680799))

(assert (=> b!726634 m!680755))

(assert (=> b!726634 m!680755))

(declare-fun m!680801 () Bool)

(assert (=> b!726634 m!680801))

(check-sat (not b!726627) (not b!726631) (not b!726636) (not start!64554) (not b!726628) (not b!726630) (not b!726638) (not b!726641) (not b!726632) (not b!726634) (not b!726637) (not b!726635) (not b!726644) (not b!726629) (not b!726640))
(check-sat)
