; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45452 () Bool)

(assert start!45452)

(declare-fun b!499713 () Bool)

(declare-fun res!301767 () Bool)

(declare-fun e!292818 () Bool)

(assert (=> b!499713 (=> (not res!301767) (not e!292818))))

(declare-datatypes ((array!32237 0))(
  ( (array!32238 (arr!15497 (Array (_ BitVec 32) (_ BitVec 64))) (size!15861 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32237)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32237 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499713 (= res!301767 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499714 () Bool)

(declare-fun e!292812 () Bool)

(assert (=> b!499714 (= e!292812 false)))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun e!292813 () Bool)

(declare-fun b!499715 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3971 0))(
  ( (MissingZero!3971 (index!18066 (_ BitVec 32))) (Found!3971 (index!18067 (_ BitVec 32))) (Intermediate!3971 (undefined!4783 Bool) (index!18068 (_ BitVec 32)) (x!47131 (_ BitVec 32))) (Undefined!3971) (MissingVacant!3971 (index!18069 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32237 (_ BitVec 32)) SeekEntryResult!3971)

(assert (=> b!499715 (= e!292813 (= (seekEntryOrOpen!0 (select (arr!15497 a!3235) j!176) a!3235 mask!3524) (Found!3971 j!176)))))

(declare-fun b!499716 () Bool)

(declare-fun res!301765 () Bool)

(assert (=> b!499716 (=> (not res!301765) (not e!292818))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499716 (= res!301765 (and (= (size!15861 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15861 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15861 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499717 () Bool)

(declare-fun e!292815 () Bool)

(declare-fun e!292817 () Bool)

(assert (=> b!499717 (= e!292815 (not e!292817))))

(declare-fun res!301775 () Bool)

(assert (=> b!499717 (=> res!301775 e!292817)))

(declare-fun lt!226728 () (_ BitVec 32))

(declare-fun lt!226723 () array!32237)

(declare-fun lt!226730 () (_ BitVec 64))

(declare-fun lt!226727 () SeekEntryResult!3971)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32237 (_ BitVec 32)) SeekEntryResult!3971)

(assert (=> b!499717 (= res!301775 (= lt!226727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226728 lt!226730 lt!226723 mask!3524)))))

(declare-fun lt!226726 () (_ BitVec 32))

(assert (=> b!499717 (= lt!226727 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226726 (select (arr!15497 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499717 (= lt!226728 (toIndex!0 lt!226730 mask!3524))))

(assert (=> b!499717 (= lt!226730 (select (store (arr!15497 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!499717 (= lt!226726 (toIndex!0 (select (arr!15497 a!3235) j!176) mask!3524))))

(assert (=> b!499717 (= lt!226723 (array!32238 (store (arr!15497 a!3235) i!1204 k!2280) (size!15861 a!3235)))))

(assert (=> b!499717 e!292813))

(declare-fun res!301771 () Bool)

(assert (=> b!499717 (=> (not res!301771) (not e!292813))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32237 (_ BitVec 32)) Bool)

(assert (=> b!499717 (= res!301771 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14974 0))(
  ( (Unit!14975) )
))
(declare-fun lt!226721 () Unit!14974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32237 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14974)

(assert (=> b!499717 (= lt!226721 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499718 () Bool)

(assert (=> b!499718 (= e!292818 e!292815)))

(declare-fun res!301763 () Bool)

(assert (=> b!499718 (=> (not res!301763) (not e!292815))))

(declare-fun lt!226729 () SeekEntryResult!3971)

(assert (=> b!499718 (= res!301763 (or (= lt!226729 (MissingZero!3971 i!1204)) (= lt!226729 (MissingVacant!3971 i!1204))))))

(assert (=> b!499718 (= lt!226729 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!499719 () Bool)

(declare-fun e!292819 () Bool)

(assert (=> b!499719 (= e!292817 e!292819)))

(declare-fun res!301764 () Bool)

(assert (=> b!499719 (=> res!301764 e!292819)))

(assert (=> b!499719 (= res!301764 (or (bvsgt #b00000000000000000000000000000000 (x!47131 lt!226727)) (bvsgt (x!47131 lt!226727) #b01111111111111111111111111111110) (bvslt lt!226726 #b00000000000000000000000000000000) (bvsge lt!226726 (size!15861 a!3235)) (bvslt (index!18068 lt!226727) #b00000000000000000000000000000000) (bvsge (index!18068 lt!226727) (size!15861 a!3235)) (not (= lt!226727 (Intermediate!3971 false (index!18068 lt!226727) (x!47131 lt!226727))))))))

(assert (=> b!499719 (and (or (= (select (arr!15497 a!3235) (index!18068 lt!226727)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15497 a!3235) (index!18068 lt!226727)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15497 a!3235) (index!18068 lt!226727)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15497 a!3235) (index!18068 lt!226727)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!226725 () Unit!14974)

(declare-fun e!292814 () Unit!14974)

(assert (=> b!499719 (= lt!226725 e!292814)))

(declare-fun c!59252 () Bool)

(assert (=> b!499719 (= c!59252 (= (select (arr!15497 a!3235) (index!18068 lt!226727)) (select (arr!15497 a!3235) j!176)))))

(assert (=> b!499719 (and (bvslt (x!47131 lt!226727) #b01111111111111111111111111111110) (or (= (select (arr!15497 a!3235) (index!18068 lt!226727)) (select (arr!15497 a!3235) j!176)) (= (select (arr!15497 a!3235) (index!18068 lt!226727)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15497 a!3235) (index!18068 lt!226727)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499720 () Bool)

(declare-fun res!301769 () Bool)

(assert (=> b!499720 (=> (not res!301769) (not e!292815))))

(assert (=> b!499720 (= res!301769 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499721 () Bool)

(declare-fun res!301766 () Bool)

(assert (=> b!499721 (=> (not res!301766) (not e!292818))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499721 (= res!301766 (validKeyInArray!0 (select (arr!15497 a!3235) j!176)))))

(declare-fun res!301774 () Bool)

(assert (=> start!45452 (=> (not res!301774) (not e!292818))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45452 (= res!301774 (validMask!0 mask!3524))))

(assert (=> start!45452 e!292818))

(assert (=> start!45452 true))

(declare-fun array_inv!11271 (array!32237) Bool)

(assert (=> start!45452 (array_inv!11271 a!3235)))

(declare-fun b!499722 () Bool)

(declare-fun res!301773 () Bool)

(assert (=> b!499722 (=> (not res!301773) (not e!292818))))

(assert (=> b!499722 (= res!301773 (validKeyInArray!0 k!2280))))

(declare-fun b!499723 () Bool)

(assert (=> b!499723 (= e!292819 true)))

(declare-fun lt!226722 () SeekEntryResult!3971)

(assert (=> b!499723 (= lt!226722 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226726 lt!226730 lt!226723 mask!3524))))

(declare-fun b!499724 () Bool)

(declare-fun Unit!14976 () Unit!14974)

(assert (=> b!499724 (= e!292814 Unit!14976)))

(declare-fun b!499725 () Bool)

(declare-fun res!301772 () Bool)

(assert (=> b!499725 (=> res!301772 e!292817)))

(assert (=> b!499725 (= res!301772 (or (undefined!4783 lt!226727) (not (is-Intermediate!3971 lt!226727))))))

(declare-fun b!499726 () Bool)

(declare-fun res!301770 () Bool)

(assert (=> b!499726 (=> (not res!301770) (not e!292815))))

(declare-datatypes ((List!9708 0))(
  ( (Nil!9705) (Cons!9704 (h!10578 (_ BitVec 64)) (t!15944 List!9708)) )
))
(declare-fun arrayNoDuplicates!0 (array!32237 (_ BitVec 32) List!9708) Bool)

(assert (=> b!499726 (= res!301770 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9705))))

(declare-fun b!499727 () Bool)

(declare-fun Unit!14977 () Unit!14974)

(assert (=> b!499727 (= e!292814 Unit!14977)))

(declare-fun lt!226724 () Unit!14974)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32237 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14974)

(assert (=> b!499727 (= lt!226724 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!226726 #b00000000000000000000000000000000 (index!18068 lt!226727) (x!47131 lt!226727) mask!3524))))

(declare-fun res!301768 () Bool)

(assert (=> b!499727 (= res!301768 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226726 lt!226730 lt!226723 mask!3524) (Intermediate!3971 false (index!18068 lt!226727) (x!47131 lt!226727))))))

(assert (=> b!499727 (=> (not res!301768) (not e!292812))))

(assert (=> b!499727 e!292812))

(assert (= (and start!45452 res!301774) b!499716))

(assert (= (and b!499716 res!301765) b!499721))

(assert (= (and b!499721 res!301766) b!499722))

(assert (= (and b!499722 res!301773) b!499713))

(assert (= (and b!499713 res!301767) b!499718))

(assert (= (and b!499718 res!301763) b!499720))

(assert (= (and b!499720 res!301769) b!499726))

(assert (= (and b!499726 res!301770) b!499717))

(assert (= (and b!499717 res!301771) b!499715))

(assert (= (and b!499717 (not res!301775)) b!499725))

(assert (= (and b!499725 (not res!301772)) b!499719))

(assert (= (and b!499719 c!59252) b!499727))

(assert (= (and b!499719 (not c!59252)) b!499724))

(assert (= (and b!499727 res!301768) b!499714))

(assert (= (and b!499719 (not res!301764)) b!499723))

(declare-fun m!480919 () Bool)

(assert (=> b!499717 m!480919))

(declare-fun m!480921 () Bool)

(assert (=> b!499717 m!480921))

(declare-fun m!480923 () Bool)

(assert (=> b!499717 m!480923))

(declare-fun m!480925 () Bool)

(assert (=> b!499717 m!480925))

(declare-fun m!480927 () Bool)

(assert (=> b!499717 m!480927))

(assert (=> b!499717 m!480925))

(declare-fun m!480929 () Bool)

(assert (=> b!499717 m!480929))

(assert (=> b!499717 m!480925))

(declare-fun m!480931 () Bool)

(assert (=> b!499717 m!480931))

(declare-fun m!480933 () Bool)

(assert (=> b!499717 m!480933))

(declare-fun m!480935 () Bool)

(assert (=> b!499717 m!480935))

(declare-fun m!480937 () Bool)

(assert (=> b!499718 m!480937))

(declare-fun m!480939 () Bool)

(assert (=> b!499727 m!480939))

(declare-fun m!480941 () Bool)

(assert (=> b!499727 m!480941))

(declare-fun m!480943 () Bool)

(assert (=> b!499719 m!480943))

(assert (=> b!499719 m!480925))

(declare-fun m!480945 () Bool)

(assert (=> b!499722 m!480945))

(assert (=> b!499723 m!480941))

(declare-fun m!480947 () Bool)

(assert (=> start!45452 m!480947))

(declare-fun m!480949 () Bool)

(assert (=> start!45452 m!480949))

(declare-fun m!480951 () Bool)

(assert (=> b!499726 m!480951))

(assert (=> b!499715 m!480925))

(assert (=> b!499715 m!480925))

(declare-fun m!480953 () Bool)

(assert (=> b!499715 m!480953))

(declare-fun m!480955 () Bool)

(assert (=> b!499720 m!480955))

(declare-fun m!480957 () Bool)

(assert (=> b!499713 m!480957))

(assert (=> b!499721 m!480925))

(assert (=> b!499721 m!480925))

(declare-fun m!480959 () Bool)

(assert (=> b!499721 m!480959))

(push 1)

