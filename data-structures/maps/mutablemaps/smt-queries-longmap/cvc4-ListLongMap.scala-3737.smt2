; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51438 () Bool)

(assert start!51438)

(declare-fun b!561686 () Bool)

(declare-fun res!352997 () Bool)

(declare-fun e!323685 () Bool)

(assert (=> b!561686 (=> (not res!352997) (not e!323685))))

(declare-datatypes ((array!35257 0))(
  ( (array!35258 (arr!16925 (Array (_ BitVec 32) (_ BitVec 64))) (size!17289 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35257)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561686 (= res!352997 (validKeyInArray!0 (select (arr!16925 a!3118) j!142)))))

(declare-fun b!561687 () Bool)

(declare-fun res!352994 () Bool)

(assert (=> b!561687 (=> (not res!352994) (not e!323685))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35257 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561687 (= res!352994 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561688 () Bool)

(declare-fun e!323690 () Bool)

(declare-fun e!323687 () Bool)

(assert (=> b!561688 (= e!323690 e!323687)))

(declare-fun res!353000 () Bool)

(assert (=> b!561688 (=> (not res!353000) (not e!323687))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!255777 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5381 0))(
  ( (MissingZero!5381 (index!23751 (_ BitVec 32))) (Found!5381 (index!23752 (_ BitVec 32))) (Intermediate!5381 (undefined!6193 Bool) (index!23753 (_ BitVec 32)) (x!52679 (_ BitVec 32))) (Undefined!5381) (MissingVacant!5381 (index!23754 (_ BitVec 32))) )
))
(declare-fun lt!255778 () SeekEntryResult!5381)

(declare-fun lt!255782 () array!35257)

(declare-fun lt!255779 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35257 (_ BitVec 32)) SeekEntryResult!5381)

(assert (=> b!561688 (= res!353000 (= lt!255778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255777 lt!255779 lt!255782 mask!3119)))))

(declare-fun lt!255783 () (_ BitVec 32))

(assert (=> b!561688 (= lt!255778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255783 (select (arr!16925 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561688 (= lt!255777 (toIndex!0 lt!255779 mask!3119))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561688 (= lt!255779 (select (store (arr!16925 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561688 (= lt!255783 (toIndex!0 (select (arr!16925 a!3118) j!142) mask!3119))))

(assert (=> b!561688 (= lt!255782 (array!35258 (store (arr!16925 a!3118) i!1132 k!1914) (size!17289 a!3118)))))

(declare-fun b!561689 () Bool)

(assert (=> b!561689 (= e!323687 (not true))))

(declare-fun e!323692 () Bool)

(assert (=> b!561689 e!323692))

(declare-fun res!352991 () Bool)

(assert (=> b!561689 (=> (not res!352991) (not e!323692))))

(declare-fun lt!255781 () SeekEntryResult!5381)

(assert (=> b!561689 (= res!352991 (= lt!255781 (Found!5381 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35257 (_ BitVec 32)) SeekEntryResult!5381)

(assert (=> b!561689 (= lt!255781 (seekEntryOrOpen!0 (select (arr!16925 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35257 (_ BitVec 32)) Bool)

(assert (=> b!561689 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17536 0))(
  ( (Unit!17537) )
))
(declare-fun lt!255784 () Unit!17536)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35257 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17536)

(assert (=> b!561689 (= lt!255784 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561690 () Bool)

(declare-fun e!323688 () Bool)

(declare-fun e!323686 () Bool)

(assert (=> b!561690 (= e!323688 e!323686)))

(declare-fun res!352998 () Bool)

(assert (=> b!561690 (=> (not res!352998) (not e!323686))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35257 (_ BitVec 32)) SeekEntryResult!5381)

(assert (=> b!561690 (= res!352998 (= lt!255781 (seekKeyOrZeroReturnVacant!0 (x!52679 lt!255778) (index!23753 lt!255778) (index!23753 lt!255778) (select (arr!16925 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561691 () Bool)

(declare-fun res!352992 () Bool)

(assert (=> b!561691 (=> (not res!352992) (not e!323685))))

(assert (=> b!561691 (= res!352992 (and (= (size!17289 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17289 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17289 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!561693 () Bool)

(declare-fun res!352988 () Bool)

(assert (=> b!561693 (=> (not res!352988) (not e!323690))))

(assert (=> b!561693 (= res!352988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561694 () Bool)

(declare-fun res!352999 () Bool)

(assert (=> b!561694 (=> (not res!352999) (not e!323685))))

(assert (=> b!561694 (= res!352999 (validKeyInArray!0 k!1914))))

(declare-fun b!561695 () Bool)

(declare-fun e!323689 () Bool)

(assert (=> b!561695 (= e!323689 e!323688)))

(declare-fun res!352993 () Bool)

(assert (=> b!561695 (=> res!352993 e!323688)))

(declare-fun lt!255785 () (_ BitVec 64))

(assert (=> b!561695 (= res!352993 (or (= lt!255785 (select (arr!16925 a!3118) j!142)) (= lt!255785 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561695 (= lt!255785 (select (arr!16925 a!3118) (index!23753 lt!255778)))))

(declare-fun b!561696 () Bool)

(declare-fun res!352990 () Bool)

(assert (=> b!561696 (=> (not res!352990) (not e!323690))))

(declare-datatypes ((List!11058 0))(
  ( (Nil!11055) (Cons!11054 (h!12057 (_ BitVec 64)) (t!17294 List!11058)) )
))
(declare-fun arrayNoDuplicates!0 (array!35257 (_ BitVec 32) List!11058) Bool)

(assert (=> b!561696 (= res!352990 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11055))))

(declare-fun b!561697 () Bool)

(assert (=> b!561697 (= e!323685 e!323690)))

(declare-fun res!352996 () Bool)

(assert (=> b!561697 (=> (not res!352996) (not e!323690))))

(declare-fun lt!255780 () SeekEntryResult!5381)

(assert (=> b!561697 (= res!352996 (or (= lt!255780 (MissingZero!5381 i!1132)) (= lt!255780 (MissingVacant!5381 i!1132))))))

(assert (=> b!561697 (= lt!255780 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561698 () Bool)

(assert (=> b!561698 (= e!323686 (= (seekEntryOrOpen!0 lt!255779 lt!255782 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52679 lt!255778) (index!23753 lt!255778) (index!23753 lt!255778) lt!255779 lt!255782 mask!3119)))))

(declare-fun res!352989 () Bool)

(assert (=> start!51438 (=> (not res!352989) (not e!323685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51438 (= res!352989 (validMask!0 mask!3119))))

(assert (=> start!51438 e!323685))

(assert (=> start!51438 true))

(declare-fun array_inv!12699 (array!35257) Bool)

(assert (=> start!51438 (array_inv!12699 a!3118)))

(declare-fun b!561692 () Bool)

(assert (=> b!561692 (= e!323692 e!323689)))

(declare-fun res!352995 () Bool)

(assert (=> b!561692 (=> res!352995 e!323689)))

(assert (=> b!561692 (= res!352995 (or (undefined!6193 lt!255778) (not (is-Intermediate!5381 lt!255778))))))

(assert (= (and start!51438 res!352989) b!561691))

(assert (= (and b!561691 res!352992) b!561686))

(assert (= (and b!561686 res!352997) b!561694))

(assert (= (and b!561694 res!352999) b!561687))

(assert (= (and b!561687 res!352994) b!561697))

(assert (= (and b!561697 res!352996) b!561693))

(assert (= (and b!561693 res!352988) b!561696))

(assert (= (and b!561696 res!352990) b!561688))

(assert (= (and b!561688 res!353000) b!561689))

(assert (= (and b!561689 res!352991) b!561692))

(assert (= (and b!561692 (not res!352995)) b!561695))

(assert (= (and b!561695 (not res!352993)) b!561690))

(assert (= (and b!561690 res!352998) b!561698))

(declare-fun m!539675 () Bool)

(assert (=> b!561688 m!539675))

(declare-fun m!539677 () Bool)

(assert (=> b!561688 m!539677))

(declare-fun m!539679 () Bool)

(assert (=> b!561688 m!539679))

(declare-fun m!539681 () Bool)

(assert (=> b!561688 m!539681))

(assert (=> b!561688 m!539677))

(declare-fun m!539683 () Bool)

(assert (=> b!561688 m!539683))

(assert (=> b!561688 m!539677))

(declare-fun m!539685 () Bool)

(assert (=> b!561688 m!539685))

(declare-fun m!539687 () Bool)

(assert (=> b!561688 m!539687))

(declare-fun m!539689 () Bool)

(assert (=> b!561693 m!539689))

(declare-fun m!539691 () Bool)

(assert (=> start!51438 m!539691))

(declare-fun m!539693 () Bool)

(assert (=> start!51438 m!539693))

(declare-fun m!539695 () Bool)

(assert (=> b!561694 m!539695))

(assert (=> b!561690 m!539677))

(assert (=> b!561690 m!539677))

(declare-fun m!539697 () Bool)

(assert (=> b!561690 m!539697))

(declare-fun m!539699 () Bool)

(assert (=> b!561697 m!539699))

(declare-fun m!539701 () Bool)

(assert (=> b!561696 m!539701))

(declare-fun m!539703 () Bool)

(assert (=> b!561698 m!539703))

(declare-fun m!539705 () Bool)

(assert (=> b!561698 m!539705))

(declare-fun m!539707 () Bool)

(assert (=> b!561687 m!539707))

(assert (=> b!561689 m!539677))

(assert (=> b!561689 m!539677))

(declare-fun m!539709 () Bool)

(assert (=> b!561689 m!539709))

(declare-fun m!539711 () Bool)

(assert (=> b!561689 m!539711))

(declare-fun m!539713 () Bool)

(assert (=> b!561689 m!539713))

(assert (=> b!561686 m!539677))

(assert (=> b!561686 m!539677))

(declare-fun m!539715 () Bool)

(assert (=> b!561686 m!539715))

(assert (=> b!561695 m!539677))

(declare-fun m!539717 () Bool)

(assert (=> b!561695 m!539717))

(push 1)

