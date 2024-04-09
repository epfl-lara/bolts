; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51494 () Bool)

(assert start!51494)

(declare-fun b!562731 () Bool)

(declare-fun res!354042 () Bool)

(declare-fun e!324311 () Bool)

(assert (=> b!562731 (=> (not res!354042) (not e!324311))))

(declare-datatypes ((array!35313 0))(
  ( (array!35314 (arr!16953 (Array (_ BitVec 32) (_ BitVec 64))) (size!17317 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35313)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35313 (_ BitVec 32)) Bool)

(assert (=> b!562731 (= res!354042 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562732 () Bool)

(declare-fun e!324312 () Bool)

(declare-fun e!324310 () Bool)

(assert (=> b!562732 (= e!324312 e!324310)))

(declare-fun res!354034 () Bool)

(assert (=> b!562732 (=> res!354034 e!324310)))

(declare-fun lt!256777 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5409 0))(
  ( (MissingZero!5409 (index!23863 (_ BitVec 32))) (Found!5409 (index!23864 (_ BitVec 32))) (Intermediate!5409 (undefined!6221 Bool) (index!23865 (_ BitVec 32)) (x!52787 (_ BitVec 32))) (Undefined!5409) (MissingVacant!5409 (index!23866 (_ BitVec 32))) )
))
(declare-fun lt!256771 () SeekEntryResult!5409)

(declare-fun lt!256772 () SeekEntryResult!5409)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!256769 () SeekEntryResult!5409)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562732 (= res!354034 (or (bvslt (index!23865 lt!256772) #b00000000000000000000000000000000) (bvsge (index!23865 lt!256772) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52787 lt!256772) #b01111111111111111111111111111110) (bvslt (x!52787 lt!256772) #b00000000000000000000000000000000) (not (= lt!256777 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16953 a!3118) i!1132 k!1914) (index!23865 lt!256772)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256771 lt!256769))))))

(declare-fun lt!256776 () SeekEntryResult!5409)

(declare-fun lt!256768 () SeekEntryResult!5409)

(assert (=> b!562732 (= lt!256776 lt!256768)))

(declare-fun lt!256770 () (_ BitVec 64))

(declare-fun lt!256780 () array!35313)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35313 (_ BitVec 32)) SeekEntryResult!5409)

(assert (=> b!562732 (= lt!256768 (seekKeyOrZeroReturnVacant!0 (x!52787 lt!256772) (index!23865 lt!256772) (index!23865 lt!256772) lt!256770 lt!256780 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35313 (_ BitVec 32)) SeekEntryResult!5409)

(assert (=> b!562732 (= lt!256776 (seekEntryOrOpen!0 lt!256770 lt!256780 mask!3119))))

(declare-fun lt!256774 () SeekEntryResult!5409)

(assert (=> b!562732 (= lt!256774 lt!256771)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!562732 (= lt!256771 (seekKeyOrZeroReturnVacant!0 (x!52787 lt!256772) (index!23865 lt!256772) (index!23865 lt!256772) (select (arr!16953 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562733 () Bool)

(declare-fun e!324316 () Bool)

(assert (=> b!562733 (= e!324316 e!324312)))

(declare-fun res!354041 () Bool)

(assert (=> b!562733 (=> res!354041 e!324312)))

(assert (=> b!562733 (= res!354041 (or (= lt!256777 (select (arr!16953 a!3118) j!142)) (= lt!256777 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562733 (= lt!256777 (select (arr!16953 a!3118) (index!23865 lt!256772)))))

(declare-fun b!562734 () Bool)

(declare-fun res!354043 () Bool)

(declare-fun e!324313 () Bool)

(assert (=> b!562734 (=> (not res!354043) (not e!324313))))

(assert (=> b!562734 (= res!354043 (and (= (size!17317 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17317 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17317 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562735 () Bool)

(declare-fun res!354037 () Bool)

(assert (=> b!562735 (=> (not res!354037) (not e!324311))))

(declare-datatypes ((List!11086 0))(
  ( (Nil!11083) (Cons!11082 (h!12085 (_ BitVec 64)) (t!17322 List!11086)) )
))
(declare-fun arrayNoDuplicates!0 (array!35313 (_ BitVec 32) List!11086) Bool)

(assert (=> b!562735 (= res!354037 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11083))))

(declare-fun b!562736 () Bool)

(assert (=> b!562736 (= e!324313 e!324311)))

(declare-fun res!354033 () Bool)

(assert (=> b!562736 (=> (not res!354033) (not e!324311))))

(declare-fun lt!256781 () SeekEntryResult!5409)

(assert (=> b!562736 (= res!354033 (or (= lt!256781 (MissingZero!5409 i!1132)) (= lt!256781 (MissingVacant!5409 i!1132))))))

(assert (=> b!562736 (= lt!256781 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562737 () Bool)

(declare-fun res!354039 () Bool)

(assert (=> b!562737 (=> (not res!354039) (not e!324313))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562737 (= res!354039 (validKeyInArray!0 k!1914))))

(declare-fun b!562738 () Bool)

(declare-fun res!354036 () Bool)

(assert (=> b!562738 (=> (not res!354036) (not e!324313))))

(assert (=> b!562738 (= res!354036 (validKeyInArray!0 (select (arr!16953 a!3118) j!142)))))

(declare-fun b!562739 () Bool)

(declare-fun e!324314 () Bool)

(assert (=> b!562739 (= e!324314 (not e!324316))))

(declare-fun res!354040 () Bool)

(assert (=> b!562739 (=> res!354040 e!324316)))

(assert (=> b!562739 (= res!354040 (or (undefined!6221 lt!256772) (not (is-Intermediate!5409 lt!256772))))))

(assert (=> b!562739 (= lt!256774 lt!256769)))

(assert (=> b!562739 (= lt!256769 (Found!5409 j!142))))

(assert (=> b!562739 (= lt!256774 (seekEntryOrOpen!0 (select (arr!16953 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562739 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17592 0))(
  ( (Unit!17593) )
))
(declare-fun lt!256773 () Unit!17592)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17592)

(assert (=> b!562739 (= lt!256773 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562740 () Bool)

(declare-fun res!354038 () Bool)

(assert (=> b!562740 (=> (not res!354038) (not e!324313))))

(declare-fun arrayContainsKey!0 (array!35313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562740 (= res!354038 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!354035 () Bool)

(assert (=> start!51494 (=> (not res!354035) (not e!324313))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51494 (= res!354035 (validMask!0 mask!3119))))

(assert (=> start!51494 e!324313))

(assert (=> start!51494 true))

(declare-fun array_inv!12727 (array!35313) Bool)

(assert (=> start!51494 (array_inv!12727 a!3118)))

(declare-fun b!562741 () Bool)

(assert (=> b!562741 (= e!324311 e!324314)))

(declare-fun res!354044 () Bool)

(assert (=> b!562741 (=> (not res!354044) (not e!324314))))

(declare-fun lt!256775 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35313 (_ BitVec 32)) SeekEntryResult!5409)

(assert (=> b!562741 (= res!354044 (= lt!256772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256775 lt!256770 lt!256780 mask!3119)))))

(declare-fun lt!256778 () (_ BitVec 32))

(assert (=> b!562741 (= lt!256772 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256778 (select (arr!16953 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562741 (= lt!256775 (toIndex!0 lt!256770 mask!3119))))

(assert (=> b!562741 (= lt!256770 (select (store (arr!16953 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562741 (= lt!256778 (toIndex!0 (select (arr!16953 a!3118) j!142) mask!3119))))

(assert (=> b!562741 (= lt!256780 (array!35314 (store (arr!16953 a!3118) i!1132 k!1914) (size!17317 a!3118)))))

(declare-fun b!562742 () Bool)

(assert (=> b!562742 (= e!324310 (bvsge mask!3119 #b00000000000000000000000000000000))))

(assert (=> b!562742 (= lt!256771 lt!256768)))

(declare-fun lt!256779 () Unit!17592)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35313 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17592)

(assert (=> b!562742 (= lt!256779 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52787 lt!256772) (index!23865 lt!256772) (index!23865 lt!256772) mask!3119))))

(assert (= (and start!51494 res!354035) b!562734))

(assert (= (and b!562734 res!354043) b!562738))

(assert (= (and b!562738 res!354036) b!562737))

(assert (= (and b!562737 res!354039) b!562740))

(assert (= (and b!562740 res!354038) b!562736))

(assert (= (and b!562736 res!354033) b!562731))

(assert (= (and b!562731 res!354042) b!562735))

(assert (= (and b!562735 res!354037) b!562741))

(assert (= (and b!562741 res!354044) b!562739))

(assert (= (and b!562739 (not res!354040)) b!562733))

(assert (= (and b!562733 (not res!354041)) b!562732))

(assert (= (and b!562732 (not res!354034)) b!562742))

(declare-fun m!540967 () Bool)

(assert (=> b!562735 m!540967))

(declare-fun m!540969 () Bool)

(assert (=> start!51494 m!540969))

(declare-fun m!540971 () Bool)

(assert (=> start!51494 m!540971))

(declare-fun m!540973 () Bool)

(assert (=> b!562740 m!540973))

(declare-fun m!540975 () Bool)

(assert (=> b!562739 m!540975))

(assert (=> b!562739 m!540975))

(declare-fun m!540977 () Bool)

(assert (=> b!562739 m!540977))

(declare-fun m!540979 () Bool)

(assert (=> b!562739 m!540979))

(declare-fun m!540981 () Bool)

(assert (=> b!562739 m!540981))

(declare-fun m!540983 () Bool)

(assert (=> b!562736 m!540983))

(assert (=> b!562741 m!540975))

(declare-fun m!540985 () Bool)

(assert (=> b!562741 m!540985))

(assert (=> b!562741 m!540975))

(declare-fun m!540987 () Bool)

(assert (=> b!562741 m!540987))

(declare-fun m!540989 () Bool)

(assert (=> b!562741 m!540989))

(assert (=> b!562741 m!540975))

(declare-fun m!540991 () Bool)

(assert (=> b!562741 m!540991))

(declare-fun m!540993 () Bool)

(assert (=> b!562741 m!540993))

(declare-fun m!540995 () Bool)

(assert (=> b!562741 m!540995))

(assert (=> b!562733 m!540975))

(declare-fun m!540997 () Bool)

(assert (=> b!562733 m!540997))

(assert (=> b!562738 m!540975))

(assert (=> b!562738 m!540975))

(declare-fun m!540999 () Bool)

(assert (=> b!562738 m!540999))

(declare-fun m!541001 () Bool)

(assert (=> b!562731 m!541001))

(declare-fun m!541003 () Bool)

(assert (=> b!562742 m!541003))

(assert (=> b!562732 m!540975))

(declare-fun m!541005 () Bool)

(assert (=> b!562732 m!541005))

(assert (=> b!562732 m!540975))

(declare-fun m!541007 () Bool)

(assert (=> b!562732 m!541007))

(declare-fun m!541009 () Bool)

(assert (=> b!562732 m!541009))

(declare-fun m!541011 () Bool)

(assert (=> b!562732 m!541011))

(assert (=> b!562732 m!540993))

(declare-fun m!541013 () Bool)

(assert (=> b!562737 m!541013))

(push 1)

