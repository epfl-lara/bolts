; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51442 () Bool)

(assert start!51442)

(declare-fun b!561764 () Bool)

(declare-fun e!323735 () Bool)

(assert (=> b!561764 (= e!323735 (not true))))

(declare-fun e!323736 () Bool)

(assert (=> b!561764 e!323736))

(declare-fun res!353066 () Bool)

(assert (=> b!561764 (=> (not res!353066) (not e!323736))))

(declare-datatypes ((SeekEntryResult!5383 0))(
  ( (MissingZero!5383 (index!23759 (_ BitVec 32))) (Found!5383 (index!23760 (_ BitVec 32))) (Intermediate!5383 (undefined!6195 Bool) (index!23761 (_ BitVec 32)) (x!52689 (_ BitVec 32))) (Undefined!5383) (MissingVacant!5383 (index!23762 (_ BitVec 32))) )
))
(declare-fun lt!255839 () SeekEntryResult!5383)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!561764 (= res!353066 (= lt!255839 (Found!5383 j!142)))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35261 0))(
  ( (array!35262 (arr!16927 (Array (_ BitVec 32) (_ BitVec 64))) (size!17291 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35261)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35261 (_ BitVec 32)) SeekEntryResult!5383)

(assert (=> b!561764 (= lt!255839 (seekEntryOrOpen!0 (select (arr!16927 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35261 (_ BitVec 32)) Bool)

(assert (=> b!561764 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17540 0))(
  ( (Unit!17541) )
))
(declare-fun lt!255838 () Unit!17540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35261 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17540)

(assert (=> b!561764 (= lt!255838 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561765 () Bool)

(declare-fun res!353072 () Bool)

(declare-fun e!323738 () Bool)

(assert (=> b!561765 (=> (not res!353072) (not e!323738))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561765 (= res!353072 (and (= (size!17291 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17291 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17291 a!3118)) (not (= i!1132 j!142))))))

(declare-fun lt!255836 () array!35261)

(declare-fun e!323739 () Bool)

(declare-fun lt!255832 () SeekEntryResult!5383)

(declare-fun b!561766 () Bool)

(declare-fun lt!255837 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35261 (_ BitVec 32)) SeekEntryResult!5383)

(assert (=> b!561766 (= e!323739 (= (seekEntryOrOpen!0 lt!255837 lt!255836 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52689 lt!255832) (index!23761 lt!255832) (index!23761 lt!255832) lt!255837 lt!255836 mask!3119)))))

(declare-fun b!561767 () Bool)

(declare-fun res!353068 () Bool)

(declare-fun e!323734 () Bool)

(assert (=> b!561767 (=> (not res!353068) (not e!323734))))

(declare-datatypes ((List!11060 0))(
  ( (Nil!11057) (Cons!11056 (h!12059 (_ BitVec 64)) (t!17296 List!11060)) )
))
(declare-fun arrayNoDuplicates!0 (array!35261 (_ BitVec 32) List!11060) Bool)

(assert (=> b!561767 (= res!353068 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11057))))

(declare-fun b!561768 () Bool)

(assert (=> b!561768 (= e!323738 e!323734)))

(declare-fun res!353077 () Bool)

(assert (=> b!561768 (=> (not res!353077) (not e!323734))))

(declare-fun lt!255831 () SeekEntryResult!5383)

(assert (=> b!561768 (= res!353077 (or (= lt!255831 (MissingZero!5383 i!1132)) (= lt!255831 (MissingVacant!5383 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!561768 (= lt!255831 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!561769 () Bool)

(declare-fun res!353070 () Bool)

(assert (=> b!561769 (=> (not res!353070) (not e!323734))))

(assert (=> b!561769 (= res!353070 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!353069 () Bool)

(assert (=> start!51442 (=> (not res!353069) (not e!323738))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51442 (= res!353069 (validMask!0 mask!3119))))

(assert (=> start!51442 e!323738))

(assert (=> start!51442 true))

(declare-fun array_inv!12701 (array!35261) Bool)

(assert (=> start!51442 (array_inv!12701 a!3118)))

(declare-fun b!561770 () Bool)

(declare-fun res!353074 () Bool)

(assert (=> b!561770 (=> (not res!353074) (not e!323738))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561770 (= res!353074 (validKeyInArray!0 (select (arr!16927 a!3118) j!142)))))

(declare-fun b!561771 () Bool)

(declare-fun res!353073 () Bool)

(assert (=> b!561771 (=> (not res!353073) (not e!323738))))

(assert (=> b!561771 (= res!353073 (validKeyInArray!0 k0!1914))))

(declare-fun b!561772 () Bool)

(declare-fun e!323737 () Bool)

(declare-fun e!323740 () Bool)

(assert (=> b!561772 (= e!323737 e!323740)))

(declare-fun res!353071 () Bool)

(assert (=> b!561772 (=> res!353071 e!323740)))

(declare-fun lt!255833 () (_ BitVec 64))

(assert (=> b!561772 (= res!353071 (or (= lt!255833 (select (arr!16927 a!3118) j!142)) (= lt!255833 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561772 (= lt!255833 (select (arr!16927 a!3118) (index!23761 lt!255832)))))

(declare-fun b!561773 () Bool)

(declare-fun res!353075 () Bool)

(assert (=> b!561773 (=> (not res!353075) (not e!323738))))

(declare-fun arrayContainsKey!0 (array!35261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561773 (= res!353075 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561774 () Bool)

(assert (=> b!561774 (= e!323734 e!323735)))

(declare-fun res!353078 () Bool)

(assert (=> b!561774 (=> (not res!353078) (not e!323735))))

(declare-fun lt!255834 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35261 (_ BitVec 32)) SeekEntryResult!5383)

(assert (=> b!561774 (= res!353078 (= lt!255832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255834 lt!255837 lt!255836 mask!3119)))))

(declare-fun lt!255835 () (_ BitVec 32))

(assert (=> b!561774 (= lt!255832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255835 (select (arr!16927 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561774 (= lt!255834 (toIndex!0 lt!255837 mask!3119))))

(assert (=> b!561774 (= lt!255837 (select (store (arr!16927 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!561774 (= lt!255835 (toIndex!0 (select (arr!16927 a!3118) j!142) mask!3119))))

(assert (=> b!561774 (= lt!255836 (array!35262 (store (arr!16927 a!3118) i!1132 k0!1914) (size!17291 a!3118)))))

(declare-fun b!561775 () Bool)

(assert (=> b!561775 (= e!323740 e!323739)))

(declare-fun res!353067 () Bool)

(assert (=> b!561775 (=> (not res!353067) (not e!323739))))

(assert (=> b!561775 (= res!353067 (= lt!255839 (seekKeyOrZeroReturnVacant!0 (x!52689 lt!255832) (index!23761 lt!255832) (index!23761 lt!255832) (select (arr!16927 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561776 () Bool)

(assert (=> b!561776 (= e!323736 e!323737)))

(declare-fun res!353076 () Bool)

(assert (=> b!561776 (=> res!353076 e!323737)))

(get-info :version)

(assert (=> b!561776 (= res!353076 (or (undefined!6195 lt!255832) (not ((_ is Intermediate!5383) lt!255832))))))

(assert (= (and start!51442 res!353069) b!561765))

(assert (= (and b!561765 res!353072) b!561770))

(assert (= (and b!561770 res!353074) b!561771))

(assert (= (and b!561771 res!353073) b!561773))

(assert (= (and b!561773 res!353075) b!561768))

(assert (= (and b!561768 res!353077) b!561769))

(assert (= (and b!561769 res!353070) b!561767))

(assert (= (and b!561767 res!353068) b!561774))

(assert (= (and b!561774 res!353078) b!561764))

(assert (= (and b!561764 res!353066) b!561776))

(assert (= (and b!561776 (not res!353076)) b!561772))

(assert (= (and b!561772 (not res!353071)) b!561775))

(assert (= (and b!561775 res!353067) b!561766))

(declare-fun m!539763 () Bool)

(assert (=> b!561771 m!539763))

(declare-fun m!539765 () Bool)

(assert (=> start!51442 m!539765))

(declare-fun m!539767 () Bool)

(assert (=> start!51442 m!539767))

(declare-fun m!539769 () Bool)

(assert (=> b!561772 m!539769))

(declare-fun m!539771 () Bool)

(assert (=> b!561772 m!539771))

(assert (=> b!561770 m!539769))

(assert (=> b!561770 m!539769))

(declare-fun m!539773 () Bool)

(assert (=> b!561770 m!539773))

(declare-fun m!539775 () Bool)

(assert (=> b!561773 m!539775))

(assert (=> b!561775 m!539769))

(assert (=> b!561775 m!539769))

(declare-fun m!539777 () Bool)

(assert (=> b!561775 m!539777))

(assert (=> b!561764 m!539769))

(assert (=> b!561764 m!539769))

(declare-fun m!539779 () Bool)

(assert (=> b!561764 m!539779))

(declare-fun m!539781 () Bool)

(assert (=> b!561764 m!539781))

(declare-fun m!539783 () Bool)

(assert (=> b!561764 m!539783))

(declare-fun m!539785 () Bool)

(assert (=> b!561766 m!539785))

(declare-fun m!539787 () Bool)

(assert (=> b!561766 m!539787))

(declare-fun m!539789 () Bool)

(assert (=> b!561767 m!539789))

(declare-fun m!539791 () Bool)

(assert (=> b!561768 m!539791))

(assert (=> b!561774 m!539769))

(declare-fun m!539793 () Bool)

(assert (=> b!561774 m!539793))

(declare-fun m!539795 () Bool)

(assert (=> b!561774 m!539795))

(assert (=> b!561774 m!539769))

(declare-fun m!539797 () Bool)

(assert (=> b!561774 m!539797))

(assert (=> b!561774 m!539769))

(declare-fun m!539799 () Bool)

(assert (=> b!561774 m!539799))

(declare-fun m!539801 () Bool)

(assert (=> b!561774 m!539801))

(declare-fun m!539803 () Bool)

(assert (=> b!561774 m!539803))

(declare-fun m!539805 () Bool)

(assert (=> b!561769 m!539805))

(check-sat (not b!561768) (not start!51442) (not b!561766) (not b!561771) (not b!561767) (not b!561764) (not b!561773) (not b!561770) (not b!561774) (not b!561769) (not b!561775))
(check-sat)
