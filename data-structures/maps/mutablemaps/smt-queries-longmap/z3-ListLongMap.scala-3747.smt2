; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51496 () Bool)

(assert start!51496)

(declare-fun b!562767 () Bool)

(declare-fun e!324335 () Bool)

(declare-fun e!324332 () Bool)

(assert (=> b!562767 (= e!324335 e!324332)))

(declare-fun res!354069 () Bool)

(assert (=> b!562767 (=> (not res!354069) (not e!324332))))

(declare-datatypes ((SeekEntryResult!5410 0))(
  ( (MissingZero!5410 (index!23867 (_ BitVec 32))) (Found!5410 (index!23868 (_ BitVec 32))) (Intermediate!5410 (undefined!6222 Bool) (index!23869 (_ BitVec 32)) (x!52788 (_ BitVec 32))) (Undefined!5410) (MissingVacant!5410 (index!23870 (_ BitVec 32))) )
))
(declare-fun lt!256817 () SeekEntryResult!5410)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562767 (= res!354069 (or (= lt!256817 (MissingZero!5410 i!1132)) (= lt!256817 (MissingVacant!5410 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35315 0))(
  ( (array!35316 (arr!16954 (Array (_ BitVec 32) (_ BitVec 64))) (size!17318 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35315)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35315 (_ BitVec 32)) SeekEntryResult!5410)

(assert (=> b!562767 (= lt!256817 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!562768 () Bool)

(declare-fun e!324331 () Bool)

(declare-fun e!324333 () Bool)

(assert (=> b!562768 (= e!324331 e!324333)))

(declare-fun res!354074 () Bool)

(assert (=> b!562768 (=> res!354074 e!324333)))

(declare-fun lt!256816 () (_ BitVec 64))

(declare-fun lt!256822 () SeekEntryResult!5410)

(declare-fun lt!256813 () SeekEntryResult!5410)

(declare-fun lt!256821 () SeekEntryResult!5410)

(assert (=> b!562768 (= res!354074 (or (bvslt (index!23869 lt!256821) #b00000000000000000000000000000000) (bvsge (index!23869 lt!256821) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52788 lt!256821) #b01111111111111111111111111111110) (bvslt (x!52788 lt!256821) #b00000000000000000000000000000000) (not (= lt!256816 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16954 a!3118) i!1132 k0!1914) (index!23869 lt!256821)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256822 lt!256813))))))

(declare-fun lt!256820 () SeekEntryResult!5410)

(declare-fun lt!256823 () SeekEntryResult!5410)

(assert (=> b!562768 (= lt!256820 lt!256823)))

(declare-fun lt!256815 () (_ BitVec 64))

(declare-fun lt!256818 () array!35315)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35315 (_ BitVec 32)) SeekEntryResult!5410)

(assert (=> b!562768 (= lt!256823 (seekKeyOrZeroReturnVacant!0 (x!52788 lt!256821) (index!23869 lt!256821) (index!23869 lt!256821) lt!256815 lt!256818 mask!3119))))

(assert (=> b!562768 (= lt!256820 (seekEntryOrOpen!0 lt!256815 lt!256818 mask!3119))))

(declare-fun lt!256811 () SeekEntryResult!5410)

(assert (=> b!562768 (= lt!256811 lt!256822)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!562768 (= lt!256822 (seekKeyOrZeroReturnVacant!0 (x!52788 lt!256821) (index!23869 lt!256821) (index!23869 lt!256821) (select (arr!16954 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562769 () Bool)

(assert (=> b!562769 (= e!324333 (bvsge mask!3119 #b00000000000000000000000000000000))))

(assert (=> b!562769 (= lt!256822 lt!256823)))

(declare-datatypes ((Unit!17594 0))(
  ( (Unit!17595) )
))
(declare-fun lt!256819 () Unit!17594)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35315 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17594)

(assert (=> b!562769 (= lt!256819 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k0!1914 j!142 (x!52788 lt!256821) (index!23869 lt!256821) (index!23869 lt!256821) mask!3119))))

(declare-fun b!562771 () Bool)

(declare-fun e!324336 () Bool)

(assert (=> b!562771 (= e!324332 e!324336)))

(declare-fun res!354079 () Bool)

(assert (=> b!562771 (=> (not res!354079) (not e!324336))))

(declare-fun lt!256812 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35315 (_ BitVec 32)) SeekEntryResult!5410)

(assert (=> b!562771 (= res!354079 (= lt!256821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256812 lt!256815 lt!256818 mask!3119)))))

(declare-fun lt!256810 () (_ BitVec 32))

(assert (=> b!562771 (= lt!256821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256810 (select (arr!16954 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562771 (= lt!256812 (toIndex!0 lt!256815 mask!3119))))

(assert (=> b!562771 (= lt!256815 (select (store (arr!16954 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!562771 (= lt!256810 (toIndex!0 (select (arr!16954 a!3118) j!142) mask!3119))))

(assert (=> b!562771 (= lt!256818 (array!35316 (store (arr!16954 a!3118) i!1132 k0!1914) (size!17318 a!3118)))))

(declare-fun b!562772 () Bool)

(declare-fun res!354073 () Bool)

(assert (=> b!562772 (=> (not res!354073) (not e!324335))))

(assert (=> b!562772 (= res!354073 (and (= (size!17318 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17318 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17318 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562773 () Bool)

(declare-fun res!354078 () Bool)

(assert (=> b!562773 (=> (not res!354078) (not e!324332))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35315 (_ BitVec 32)) Bool)

(assert (=> b!562773 (= res!354078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562774 () Bool)

(declare-fun e!324337 () Bool)

(assert (=> b!562774 (= e!324337 e!324331)))

(declare-fun res!354072 () Bool)

(assert (=> b!562774 (=> res!354072 e!324331)))

(assert (=> b!562774 (= res!354072 (or (= lt!256816 (select (arr!16954 a!3118) j!142)) (= lt!256816 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562774 (= lt!256816 (select (arr!16954 a!3118) (index!23869 lt!256821)))))

(declare-fun b!562775 () Bool)

(declare-fun res!354080 () Bool)

(assert (=> b!562775 (=> (not res!354080) (not e!324335))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562775 (= res!354080 (validKeyInArray!0 (select (arr!16954 a!3118) j!142)))))

(declare-fun b!562776 () Bool)

(declare-fun res!354070 () Bool)

(assert (=> b!562776 (=> (not res!354070) (not e!324335))))

(declare-fun arrayContainsKey!0 (array!35315 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562776 (= res!354070 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562777 () Bool)

(declare-fun res!354077 () Bool)

(assert (=> b!562777 (=> (not res!354077) (not e!324335))))

(assert (=> b!562777 (= res!354077 (validKeyInArray!0 k0!1914))))

(declare-fun b!562778 () Bool)

(declare-fun res!354076 () Bool)

(assert (=> b!562778 (=> (not res!354076) (not e!324332))))

(declare-datatypes ((List!11087 0))(
  ( (Nil!11084) (Cons!11083 (h!12086 (_ BitVec 64)) (t!17323 List!11087)) )
))
(declare-fun arrayNoDuplicates!0 (array!35315 (_ BitVec 32) List!11087) Bool)

(assert (=> b!562778 (= res!354076 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11084))))

(declare-fun res!354075 () Bool)

(assert (=> start!51496 (=> (not res!354075) (not e!324335))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51496 (= res!354075 (validMask!0 mask!3119))))

(assert (=> start!51496 e!324335))

(assert (=> start!51496 true))

(declare-fun array_inv!12728 (array!35315) Bool)

(assert (=> start!51496 (array_inv!12728 a!3118)))

(declare-fun b!562770 () Bool)

(assert (=> b!562770 (= e!324336 (not e!324337))))

(declare-fun res!354071 () Bool)

(assert (=> b!562770 (=> res!354071 e!324337)))

(get-info :version)

(assert (=> b!562770 (= res!354071 (or (undefined!6222 lt!256821) (not ((_ is Intermediate!5410) lt!256821))))))

(assert (=> b!562770 (= lt!256811 lt!256813)))

(assert (=> b!562770 (= lt!256813 (Found!5410 j!142))))

(assert (=> b!562770 (= lt!256811 (seekEntryOrOpen!0 (select (arr!16954 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562770 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-fun lt!256814 () Unit!17594)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35315 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17594)

(assert (=> b!562770 (= lt!256814 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51496 res!354075) b!562772))

(assert (= (and b!562772 res!354073) b!562775))

(assert (= (and b!562775 res!354080) b!562777))

(assert (= (and b!562777 res!354077) b!562776))

(assert (= (and b!562776 res!354070) b!562767))

(assert (= (and b!562767 res!354069) b!562773))

(assert (= (and b!562773 res!354078) b!562778))

(assert (= (and b!562778 res!354076) b!562771))

(assert (= (and b!562771 res!354079) b!562770))

(assert (= (and b!562770 (not res!354071)) b!562774))

(assert (= (and b!562774 (not res!354072)) b!562768))

(assert (= (and b!562768 (not res!354074)) b!562769))

(declare-fun m!541015 () Bool)

(assert (=> b!562767 m!541015))

(declare-fun m!541017 () Bool)

(assert (=> b!562771 m!541017))

(declare-fun m!541019 () Bool)

(assert (=> b!562771 m!541019))

(assert (=> b!562771 m!541019))

(declare-fun m!541021 () Bool)

(assert (=> b!562771 m!541021))

(declare-fun m!541023 () Bool)

(assert (=> b!562771 m!541023))

(declare-fun m!541025 () Bool)

(assert (=> b!562771 m!541025))

(assert (=> b!562771 m!541019))

(declare-fun m!541027 () Bool)

(assert (=> b!562771 m!541027))

(declare-fun m!541029 () Bool)

(assert (=> b!562771 m!541029))

(declare-fun m!541031 () Bool)

(assert (=> b!562773 m!541031))

(declare-fun m!541033 () Bool)

(assert (=> b!562777 m!541033))

(declare-fun m!541035 () Bool)

(assert (=> start!51496 m!541035))

(declare-fun m!541037 () Bool)

(assert (=> start!51496 m!541037))

(declare-fun m!541039 () Bool)

(assert (=> b!562769 m!541039))

(assert (=> b!562775 m!541019))

(assert (=> b!562775 m!541019))

(declare-fun m!541041 () Bool)

(assert (=> b!562775 m!541041))

(declare-fun m!541043 () Bool)

(assert (=> b!562776 m!541043))

(assert (=> b!562770 m!541019))

(assert (=> b!562770 m!541019))

(declare-fun m!541045 () Bool)

(assert (=> b!562770 m!541045))

(declare-fun m!541047 () Bool)

(assert (=> b!562770 m!541047))

(declare-fun m!541049 () Bool)

(assert (=> b!562770 m!541049))

(assert (=> b!562774 m!541019))

(declare-fun m!541051 () Bool)

(assert (=> b!562774 m!541051))

(declare-fun m!541053 () Bool)

(assert (=> b!562778 m!541053))

(declare-fun m!541055 () Bool)

(assert (=> b!562768 m!541055))

(assert (=> b!562768 m!541019))

(declare-fun m!541057 () Bool)

(assert (=> b!562768 m!541057))

(assert (=> b!562768 m!541019))

(declare-fun m!541059 () Bool)

(assert (=> b!562768 m!541059))

(assert (=> b!562768 m!541025))

(declare-fun m!541061 () Bool)

(assert (=> b!562768 m!541061))

(check-sat (not b!562767) (not b!562771) (not b!562775) (not b!562778) (not start!51496) (not b!562770) (not b!562777) (not b!562768) (not b!562773) (not b!562769) (not b!562776))
(check-sat)
