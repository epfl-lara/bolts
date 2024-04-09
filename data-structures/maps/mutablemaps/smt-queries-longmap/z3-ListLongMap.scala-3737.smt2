; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51436 () Bool)

(assert start!51436)

(declare-fun b!561647 () Bool)

(declare-fun e!323662 () Bool)

(declare-fun e!323663 () Bool)

(assert (=> b!561647 (= e!323662 e!323663)))

(declare-fun res!352959 () Bool)

(assert (=> b!561647 (=> (not res!352959) (not e!323663))))

(declare-datatypes ((SeekEntryResult!5380 0))(
  ( (MissingZero!5380 (index!23747 (_ BitVec 32))) (Found!5380 (index!23748 (_ BitVec 32))) (Intermediate!5380 (undefined!6192 Bool) (index!23749 (_ BitVec 32)) (x!52678 (_ BitVec 32))) (Undefined!5380) (MissingVacant!5380 (index!23750 (_ BitVec 32))) )
))
(declare-fun lt!255758 () SeekEntryResult!5380)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561647 (= res!352959 (or (= lt!255758 (MissingZero!5380 i!1132)) (= lt!255758 (MissingVacant!5380 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35255 0))(
  ( (array!35256 (arr!16924 (Array (_ BitVec 32) (_ BitVec 64))) (size!17288 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35255)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35255 (_ BitVec 32)) SeekEntryResult!5380)

(assert (=> b!561647 (= lt!255758 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!561648 () Bool)

(declare-fun res!352957 () Bool)

(assert (=> b!561648 (=> (not res!352957) (not e!323663))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35255 (_ BitVec 32)) Bool)

(assert (=> b!561648 (= res!352957 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!352956 () Bool)

(assert (=> start!51436 (=> (not res!352956) (not e!323662))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51436 (= res!352956 (validMask!0 mask!3119))))

(assert (=> start!51436 e!323662))

(assert (=> start!51436 true))

(declare-fun array_inv!12698 (array!35255) Bool)

(assert (=> start!51436 (array_inv!12698 a!3118)))

(declare-fun b!561649 () Bool)

(declare-fun e!323667 () Bool)

(declare-fun e!323664 () Bool)

(assert (=> b!561649 (= e!323667 e!323664)))

(declare-fun res!352958 () Bool)

(assert (=> b!561649 (=> res!352958 e!323664)))

(declare-fun lt!255756 () SeekEntryResult!5380)

(get-info :version)

(assert (=> b!561649 (= res!352958 (or (undefined!6192 lt!255756) (not ((_ is Intermediate!5380) lt!255756))))))

(declare-fun b!561650 () Bool)

(declare-fun res!352952 () Bool)

(assert (=> b!561650 (=> (not res!352952) (not e!323662))))

(declare-fun arrayContainsKey!0 (array!35255 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561650 (= res!352952 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561651 () Bool)

(declare-fun res!352953 () Bool)

(assert (=> b!561651 (=> (not res!352953) (not e!323662))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561651 (= res!352953 (validKeyInArray!0 k0!1914))))

(declare-fun b!561652 () Bool)

(declare-fun e!323665 () Bool)

(assert (=> b!561652 (= e!323664 e!323665)))

(declare-fun res!352960 () Bool)

(assert (=> b!561652 (=> res!352960 e!323665)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!255750 () (_ BitVec 64))

(assert (=> b!561652 (= res!352960 (or (= lt!255750 (select (arr!16924 a!3118) j!142)) (= lt!255750 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561652 (= lt!255750 (select (arr!16924 a!3118) (index!23749 lt!255756)))))

(declare-fun b!561653 () Bool)

(declare-fun res!352949 () Bool)

(assert (=> b!561653 (=> (not res!352949) (not e!323663))))

(declare-datatypes ((List!11057 0))(
  ( (Nil!11054) (Cons!11053 (h!12056 (_ BitVec 64)) (t!17293 List!11057)) )
))
(declare-fun arrayNoDuplicates!0 (array!35255 (_ BitVec 32) List!11057) Bool)

(assert (=> b!561653 (= res!352949 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11054))))

(declare-fun b!561654 () Bool)

(declare-fun e!323666 () Bool)

(declare-fun lt!255753 () (_ BitVec 64))

(declare-fun lt!255752 () array!35255)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35255 (_ BitVec 32)) SeekEntryResult!5380)

(assert (=> b!561654 (= e!323666 (= (seekEntryOrOpen!0 lt!255753 lt!255752 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52678 lt!255756) (index!23749 lt!255756) (index!23749 lt!255756) lt!255753 lt!255752 mask!3119)))))

(declare-fun b!561655 () Bool)

(declare-fun res!352955 () Bool)

(assert (=> b!561655 (=> (not res!352955) (not e!323662))))

(assert (=> b!561655 (= res!352955 (validKeyInArray!0 (select (arr!16924 a!3118) j!142)))))

(declare-fun b!561656 () Bool)

(declare-fun e!323668 () Bool)

(assert (=> b!561656 (= e!323663 e!323668)))

(declare-fun res!352961 () Bool)

(assert (=> b!561656 (=> (not res!352961) (not e!323668))))

(declare-fun lt!255757 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35255 (_ BitVec 32)) SeekEntryResult!5380)

(assert (=> b!561656 (= res!352961 (= lt!255756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255757 lt!255753 lt!255752 mask!3119)))))

(declare-fun lt!255755 () (_ BitVec 32))

(assert (=> b!561656 (= lt!255756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255755 (select (arr!16924 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561656 (= lt!255757 (toIndex!0 lt!255753 mask!3119))))

(assert (=> b!561656 (= lt!255753 (select (store (arr!16924 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!561656 (= lt!255755 (toIndex!0 (select (arr!16924 a!3118) j!142) mask!3119))))

(assert (=> b!561656 (= lt!255752 (array!35256 (store (arr!16924 a!3118) i!1132 k0!1914) (size!17288 a!3118)))))

(declare-fun b!561657 () Bool)

(assert (=> b!561657 (= e!323665 e!323666)))

(declare-fun res!352954 () Bool)

(assert (=> b!561657 (=> (not res!352954) (not e!323666))))

(declare-fun lt!255751 () SeekEntryResult!5380)

(assert (=> b!561657 (= res!352954 (= lt!255751 (seekKeyOrZeroReturnVacant!0 (x!52678 lt!255756) (index!23749 lt!255756) (index!23749 lt!255756) (select (arr!16924 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561658 () Bool)

(assert (=> b!561658 (= e!323668 (not true))))

(assert (=> b!561658 e!323667))

(declare-fun res!352950 () Bool)

(assert (=> b!561658 (=> (not res!352950) (not e!323667))))

(assert (=> b!561658 (= res!352950 (= lt!255751 (Found!5380 j!142)))))

(assert (=> b!561658 (= lt!255751 (seekEntryOrOpen!0 (select (arr!16924 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!561658 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17534 0))(
  ( (Unit!17535) )
))
(declare-fun lt!255754 () Unit!17534)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35255 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17534)

(assert (=> b!561658 (= lt!255754 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561659 () Bool)

(declare-fun res!352951 () Bool)

(assert (=> b!561659 (=> (not res!352951) (not e!323662))))

(assert (=> b!561659 (= res!352951 (and (= (size!17288 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17288 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17288 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51436 res!352956) b!561659))

(assert (= (and b!561659 res!352951) b!561655))

(assert (= (and b!561655 res!352955) b!561651))

(assert (= (and b!561651 res!352953) b!561650))

(assert (= (and b!561650 res!352952) b!561647))

(assert (= (and b!561647 res!352959) b!561648))

(assert (= (and b!561648 res!352957) b!561653))

(assert (= (and b!561653 res!352949) b!561656))

(assert (= (and b!561656 res!352961) b!561658))

(assert (= (and b!561658 res!352950) b!561649))

(assert (= (and b!561649 (not res!352958)) b!561652))

(assert (= (and b!561652 (not res!352960)) b!561657))

(assert (= (and b!561657 res!352954) b!561654))

(declare-fun m!539631 () Bool)

(assert (=> b!561658 m!539631))

(assert (=> b!561658 m!539631))

(declare-fun m!539633 () Bool)

(assert (=> b!561658 m!539633))

(declare-fun m!539635 () Bool)

(assert (=> b!561658 m!539635))

(declare-fun m!539637 () Bool)

(assert (=> b!561658 m!539637))

(assert (=> b!561652 m!539631))

(declare-fun m!539639 () Bool)

(assert (=> b!561652 m!539639))

(declare-fun m!539641 () Bool)

(assert (=> start!51436 m!539641))

(declare-fun m!539643 () Bool)

(assert (=> start!51436 m!539643))

(declare-fun m!539645 () Bool)

(assert (=> b!561648 m!539645))

(assert (=> b!561656 m!539631))

(declare-fun m!539647 () Bool)

(assert (=> b!561656 m!539647))

(declare-fun m!539649 () Bool)

(assert (=> b!561656 m!539649))

(assert (=> b!561656 m!539631))

(declare-fun m!539651 () Bool)

(assert (=> b!561656 m!539651))

(declare-fun m!539653 () Bool)

(assert (=> b!561656 m!539653))

(declare-fun m!539655 () Bool)

(assert (=> b!561656 m!539655))

(assert (=> b!561656 m!539631))

(declare-fun m!539657 () Bool)

(assert (=> b!561656 m!539657))

(declare-fun m!539659 () Bool)

(assert (=> b!561647 m!539659))

(assert (=> b!561657 m!539631))

(assert (=> b!561657 m!539631))

(declare-fun m!539661 () Bool)

(assert (=> b!561657 m!539661))

(declare-fun m!539663 () Bool)

(assert (=> b!561654 m!539663))

(declare-fun m!539665 () Bool)

(assert (=> b!561654 m!539665))

(declare-fun m!539667 () Bool)

(assert (=> b!561650 m!539667))

(declare-fun m!539669 () Bool)

(assert (=> b!561651 m!539669))

(assert (=> b!561655 m!539631))

(assert (=> b!561655 m!539631))

(declare-fun m!539671 () Bool)

(assert (=> b!561655 m!539671))

(declare-fun m!539673 () Bool)

(assert (=> b!561653 m!539673))

(check-sat (not b!561656) (not b!561651) (not b!561648) (not b!561653) (not b!561654) (not b!561655) (not start!51436) (not b!561650) (not b!561658) (not b!561647) (not b!561657))
(check-sat)
