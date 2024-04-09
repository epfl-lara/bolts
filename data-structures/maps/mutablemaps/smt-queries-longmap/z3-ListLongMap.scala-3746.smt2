; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51490 () Bool)

(assert start!51490)

(declare-fun b!562659 () Bool)

(declare-fun e!324270 () Bool)

(declare-fun e!324274 () Bool)

(assert (=> b!562659 (= e!324270 e!324274)))

(declare-fun res!353968 () Bool)

(assert (=> b!562659 (=> (not res!353968) (not e!324274))))

(declare-datatypes ((SeekEntryResult!5407 0))(
  ( (MissingZero!5407 (index!23855 (_ BitVec 32))) (Found!5407 (index!23856 (_ BitVec 32))) (Intermediate!5407 (undefined!6219 Bool) (index!23857 (_ BitVec 32)) (x!52777 (_ BitVec 32))) (Undefined!5407) (MissingVacant!5407 (index!23858 (_ BitVec 32))) )
))
(declare-fun lt!256691 () SeekEntryResult!5407)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562659 (= res!353968 (or (= lt!256691 (MissingZero!5407 i!1132)) (= lt!256691 (MissingVacant!5407 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35309 0))(
  ( (array!35310 (arr!16951 (Array (_ BitVec 32) (_ BitVec 64))) (size!17315 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35309)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35309 (_ BitVec 32)) SeekEntryResult!5407)

(assert (=> b!562659 (= lt!256691 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!562660 () Bool)

(declare-fun res!353967 () Bool)

(assert (=> b!562660 (=> (not res!353967) (not e!324270))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!562660 (= res!353967 (and (= (size!17315 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17315 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17315 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562661 () Bool)

(declare-fun e!324273 () Bool)

(declare-fun e!324271 () Bool)

(assert (=> b!562661 (= e!324273 e!324271)))

(declare-fun res!353964 () Bool)

(assert (=> b!562661 (=> res!353964 e!324271)))

(declare-fun lt!256697 () SeekEntryResult!5407)

(declare-fun lt!256687 () SeekEntryResult!5407)

(declare-fun lt!256686 () (_ BitVec 64))

(declare-fun lt!256688 () SeekEntryResult!5407)

(assert (=> b!562661 (= res!353964 (or (bvslt (index!23857 lt!256697) #b00000000000000000000000000000000) (bvsge (index!23857 lt!256697) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52777 lt!256697) #b01111111111111111111111111111110) (bvslt (x!52777 lt!256697) #b00000000000000000000000000000000) (not (= lt!256686 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16951 a!3118) i!1132 k0!1914) (index!23857 lt!256697)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256688 lt!256687))))))

(declare-fun lt!256696 () SeekEntryResult!5407)

(declare-fun lt!256685 () SeekEntryResult!5407)

(assert (=> b!562661 (= lt!256696 lt!256685)))

(declare-fun lt!256694 () (_ BitVec 64))

(declare-fun lt!256695 () array!35309)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35309 (_ BitVec 32)) SeekEntryResult!5407)

(assert (=> b!562661 (= lt!256685 (seekKeyOrZeroReturnVacant!0 (x!52777 lt!256697) (index!23857 lt!256697) (index!23857 lt!256697) lt!256694 lt!256695 mask!3119))))

(assert (=> b!562661 (= lt!256696 (seekEntryOrOpen!0 lt!256694 lt!256695 mask!3119))))

(declare-fun lt!256692 () SeekEntryResult!5407)

(assert (=> b!562661 (= lt!256692 lt!256688)))

(assert (=> b!562661 (= lt!256688 (seekKeyOrZeroReturnVacant!0 (x!52777 lt!256697) (index!23857 lt!256697) (index!23857 lt!256697) (select (arr!16951 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562662 () Bool)

(declare-fun e!324268 () Bool)

(assert (=> b!562662 (= e!324274 e!324268)))

(declare-fun res!353969 () Bool)

(assert (=> b!562662 (=> (not res!353969) (not e!324268))))

(declare-fun lt!256684 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35309 (_ BitVec 32)) SeekEntryResult!5407)

(assert (=> b!562662 (= res!353969 (= lt!256697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256684 lt!256694 lt!256695 mask!3119)))))

(declare-fun lt!256693 () (_ BitVec 32))

(assert (=> b!562662 (= lt!256697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256693 (select (arr!16951 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562662 (= lt!256684 (toIndex!0 lt!256694 mask!3119))))

(assert (=> b!562662 (= lt!256694 (select (store (arr!16951 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562662 (= lt!256693 (toIndex!0 (select (arr!16951 a!3118) j!142) mask!3119))))

(assert (=> b!562662 (= lt!256695 (array!35310 (store (arr!16951 a!3118) i!1132 k0!1914) (size!17315 a!3118)))))

(declare-fun b!562664 () Bool)

(assert (=> b!562664 (= e!324271 true)))

(assert (=> b!562664 (= lt!256688 lt!256685)))

(declare-datatypes ((Unit!17588 0))(
  ( (Unit!17589) )
))
(declare-fun lt!256689 () Unit!17588)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35309 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17588)

(assert (=> b!562664 (= lt!256689 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!52777 lt!256697) (index!23857 lt!256697) (index!23857 lt!256697) mask!3119))))

(declare-fun b!562665 () Bool)

(declare-fun e!324272 () Bool)

(assert (=> b!562665 (= e!324268 (not e!324272))))

(declare-fun res!353972 () Bool)

(assert (=> b!562665 (=> res!353972 e!324272)))

(get-info :version)

(assert (=> b!562665 (= res!353972 (or (undefined!6219 lt!256697) (not ((_ is Intermediate!5407) lt!256697))))))

(assert (=> b!562665 (= lt!256692 lt!256687)))

(assert (=> b!562665 (= lt!256687 (Found!5407 j!142))))

(assert (=> b!562665 (= lt!256692 (seekEntryOrOpen!0 (select (arr!16951 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35309 (_ BitVec 32)) Bool)

(assert (=> b!562665 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256690 () Unit!17588)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17588)

(assert (=> b!562665 (= lt!256690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562666 () Bool)

(declare-fun res!353966 () Bool)

(assert (=> b!562666 (=> (not res!353966) (not e!324270))))

(declare-fun arrayContainsKey!0 (array!35309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562666 (= res!353966 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562667 () Bool)

(declare-fun res!353965 () Bool)

(assert (=> b!562667 (=> (not res!353965) (not e!324274))))

(declare-datatypes ((List!11084 0))(
  ( (Nil!11081) (Cons!11080 (h!12083 (_ BitVec 64)) (t!17320 List!11084)) )
))
(declare-fun arrayNoDuplicates!0 (array!35309 (_ BitVec 32) List!11084) Bool)

(assert (=> b!562667 (= res!353965 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11081))))

(declare-fun b!562668 () Bool)

(assert (=> b!562668 (= e!324272 e!324273)))

(declare-fun res!353962 () Bool)

(assert (=> b!562668 (=> res!353962 e!324273)))

(assert (=> b!562668 (= res!353962 (or (= lt!256686 (select (arr!16951 a!3118) j!142)) (= lt!256686 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562668 (= lt!256686 (select (arr!16951 a!3118) (index!23857 lt!256697)))))

(declare-fun b!562663 () Bool)

(declare-fun res!353971 () Bool)

(assert (=> b!562663 (=> (not res!353971) (not e!324274))))

(assert (=> b!562663 (= res!353971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!353961 () Bool)

(assert (=> start!51490 (=> (not res!353961) (not e!324270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51490 (= res!353961 (validMask!0 mask!3119))))

(assert (=> start!51490 e!324270))

(assert (=> start!51490 true))

(declare-fun array_inv!12725 (array!35309) Bool)

(assert (=> start!51490 (array_inv!12725 a!3118)))

(declare-fun b!562669 () Bool)

(declare-fun res!353970 () Bool)

(assert (=> b!562669 (=> (not res!353970) (not e!324270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562669 (= res!353970 (validKeyInArray!0 k0!1914))))

(declare-fun b!562670 () Bool)

(declare-fun res!353963 () Bool)

(assert (=> b!562670 (=> (not res!353963) (not e!324270))))

(assert (=> b!562670 (= res!353963 (validKeyInArray!0 (select (arr!16951 a!3118) j!142)))))

(assert (= (and start!51490 res!353961) b!562660))

(assert (= (and b!562660 res!353967) b!562670))

(assert (= (and b!562670 res!353963) b!562669))

(assert (= (and b!562669 res!353970) b!562666))

(assert (= (and b!562666 res!353966) b!562659))

(assert (= (and b!562659 res!353968) b!562663))

(assert (= (and b!562663 res!353971) b!562667))

(assert (= (and b!562667 res!353965) b!562662))

(assert (= (and b!562662 res!353969) b!562665))

(assert (= (and b!562665 (not res!353972)) b!562668))

(assert (= (and b!562668 (not res!353962)) b!562661))

(assert (= (and b!562661 (not res!353964)) b!562664))

(declare-fun m!540871 () Bool)

(assert (=> b!562662 m!540871))

(declare-fun m!540873 () Bool)

(assert (=> b!562662 m!540873))

(assert (=> b!562662 m!540871))

(declare-fun m!540875 () Bool)

(assert (=> b!562662 m!540875))

(assert (=> b!562662 m!540871))

(declare-fun m!540877 () Bool)

(assert (=> b!562662 m!540877))

(declare-fun m!540879 () Bool)

(assert (=> b!562662 m!540879))

(declare-fun m!540881 () Bool)

(assert (=> b!562662 m!540881))

(declare-fun m!540883 () Bool)

(assert (=> b!562662 m!540883))

(declare-fun m!540885 () Bool)

(assert (=> start!51490 m!540885))

(declare-fun m!540887 () Bool)

(assert (=> start!51490 m!540887))

(declare-fun m!540889 () Bool)

(assert (=> b!562667 m!540889))

(declare-fun m!540891 () Bool)

(assert (=> b!562663 m!540891))

(declare-fun m!540893 () Bool)

(assert (=> b!562661 m!540893))

(assert (=> b!562661 m!540881))

(declare-fun m!540895 () Bool)

(assert (=> b!562661 m!540895))

(assert (=> b!562661 m!540871))

(declare-fun m!540897 () Bool)

(assert (=> b!562661 m!540897))

(declare-fun m!540899 () Bool)

(assert (=> b!562661 m!540899))

(assert (=> b!562661 m!540871))

(declare-fun m!540901 () Bool)

(assert (=> b!562659 m!540901))

(assert (=> b!562665 m!540871))

(assert (=> b!562665 m!540871))

(declare-fun m!540903 () Bool)

(assert (=> b!562665 m!540903))

(declare-fun m!540905 () Bool)

(assert (=> b!562665 m!540905))

(declare-fun m!540907 () Bool)

(assert (=> b!562665 m!540907))

(declare-fun m!540909 () Bool)

(assert (=> b!562669 m!540909))

(declare-fun m!540911 () Bool)

(assert (=> b!562666 m!540911))

(assert (=> b!562670 m!540871))

(assert (=> b!562670 m!540871))

(declare-fun m!540913 () Bool)

(assert (=> b!562670 m!540913))

(declare-fun m!540915 () Bool)

(assert (=> b!562664 m!540915))

(assert (=> b!562668 m!540871))

(declare-fun m!540917 () Bool)

(assert (=> b!562668 m!540917))

(check-sat (not b!562664) (not start!51490) (not b!562667) (not b!562659) (not b!562666) (not b!562669) (not b!562662) (not b!562661) (not b!562663) (not b!562665) (not b!562670))
(check-sat)
