; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52780 () Bool)

(assert start!52780)

(declare-fun b!574998 () Bool)

(declare-fun res!363567 () Bool)

(declare-fun e!330853 () Bool)

(assert (=> b!574998 (=> (not res!363567) (not e!330853))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!574998 (= res!363567 (validKeyInArray!0 k0!1914))))

(declare-fun b!574999 () Bool)

(declare-fun e!330850 () Bool)

(declare-fun e!330851 () Bool)

(assert (=> b!574999 (= e!330850 (not e!330851))))

(declare-fun res!363570 () Bool)

(assert (=> b!574999 (=> res!363570 e!330851)))

(declare-datatypes ((SeekEntryResult!5674 0))(
  ( (MissingZero!5674 (index!24923 (_ BitVec 32))) (Found!5674 (index!24924 (_ BitVec 32))) (Intermediate!5674 (undefined!6486 Bool) (index!24925 (_ BitVec 32)) (x!53846 (_ BitVec 32))) (Undefined!5674) (MissingVacant!5674 (index!24926 (_ BitVec 32))) )
))
(declare-fun lt!262717 () SeekEntryResult!5674)

(get-info :version)

(assert (=> b!574999 (= res!363570 (or (undefined!6486 lt!262717) (not ((_ is Intermediate!5674) lt!262717))))))

(declare-fun lt!262713 () SeekEntryResult!5674)

(declare-fun lt!262718 () SeekEntryResult!5674)

(assert (=> b!574999 (= lt!262713 lt!262718)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!574999 (= lt!262718 (Found!5674 j!142))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35879 0))(
  ( (array!35880 (arr!17218 (Array (_ BitVec 32) (_ BitVec 64))) (size!17582 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35879)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35879 (_ BitVec 32)) SeekEntryResult!5674)

(assert (=> b!574999 (= lt!262713 (seekEntryOrOpen!0 (select (arr!17218 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35879 (_ BitVec 32)) Bool)

(assert (=> b!574999 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18050 0))(
  ( (Unit!18051) )
))
(declare-fun lt!262715 () Unit!18050)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35879 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18050)

(assert (=> b!574999 (= lt!262715 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575000 () Bool)

(declare-fun res!363566 () Bool)

(assert (=> b!575000 (=> (not res!363566) (not e!330853))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!575000 (= res!363566 (and (= (size!17582 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17582 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17582 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575001 () Bool)

(declare-fun e!330852 () Bool)

(assert (=> b!575001 (= e!330852 e!330850)))

(declare-fun res!363575 () Bool)

(assert (=> b!575001 (=> (not res!363575) (not e!330850))))

(declare-fun lt!262720 () (_ BitVec 32))

(declare-fun lt!262716 () (_ BitVec 64))

(declare-fun lt!262712 () array!35879)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35879 (_ BitVec 32)) SeekEntryResult!5674)

(assert (=> b!575001 (= res!363575 (= lt!262717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262720 lt!262716 lt!262712 mask!3119)))))

(declare-fun lt!262721 () (_ BitVec 32))

(assert (=> b!575001 (= lt!262717 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!262721 (select (arr!17218 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575001 (= lt!262720 (toIndex!0 lt!262716 mask!3119))))

(assert (=> b!575001 (= lt!262716 (select (store (arr!17218 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!575001 (= lt!262721 (toIndex!0 (select (arr!17218 a!3118) j!142) mask!3119))))

(assert (=> b!575001 (= lt!262712 (array!35880 (store (arr!17218 a!3118) i!1132 k0!1914) (size!17582 a!3118)))))

(declare-fun b!575002 () Bool)

(declare-fun res!363572 () Bool)

(assert (=> b!575002 (=> (not res!363572) (not e!330852))))

(assert (=> b!575002 (= res!363572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!363569 () Bool)

(assert (=> start!52780 (=> (not res!363569) (not e!330853))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52780 (= res!363569 (validMask!0 mask!3119))))

(assert (=> start!52780 e!330853))

(assert (=> start!52780 true))

(declare-fun array_inv!12992 (array!35879) Bool)

(assert (=> start!52780 (array_inv!12992 a!3118)))

(declare-fun b!575003 () Bool)

(declare-fun res!363568 () Bool)

(assert (=> b!575003 (=> (not res!363568) (not e!330853))))

(declare-fun arrayContainsKey!0 (array!35879 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575003 (= res!363568 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575004 () Bool)

(declare-fun res!363565 () Bool)

(assert (=> b!575004 (=> (not res!363565) (not e!330852))))

(declare-datatypes ((List!11351 0))(
  ( (Nil!11348) (Cons!11347 (h!12386 (_ BitVec 64)) (t!17587 List!11351)) )
))
(declare-fun arrayNoDuplicates!0 (array!35879 (_ BitVec 32) List!11351) Bool)

(assert (=> b!575004 (= res!363565 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11348))))

(declare-fun e!330849 () Bool)

(declare-fun b!575005 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35879 (_ BitVec 32)) SeekEntryResult!5674)

(assert (=> b!575005 (= e!330849 (= (seekEntryOrOpen!0 lt!262716 lt!262712 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53846 lt!262717) (index!24925 lt!262717) (index!24925 lt!262717) lt!262716 lt!262712 mask!3119)))))

(declare-fun b!575006 () Bool)

(declare-fun e!330848 () Bool)

(assert (=> b!575006 (= e!330851 e!330848)))

(declare-fun res!363574 () Bool)

(assert (=> b!575006 (=> res!363574 e!330848)))

(declare-fun lt!262719 () (_ BitVec 64))

(assert (=> b!575006 (= res!363574 (or (= lt!262719 (select (arr!17218 a!3118) j!142)) (= lt!262719 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!575006 (= lt!262719 (select (arr!17218 a!3118) (index!24925 lt!262717)))))

(declare-fun b!575007 () Bool)

(assert (=> b!575007 (= e!330853 e!330852)))

(declare-fun res!363564 () Bool)

(assert (=> b!575007 (=> (not res!363564) (not e!330852))))

(declare-fun lt!262714 () SeekEntryResult!5674)

(assert (=> b!575007 (= res!363564 (or (= lt!262714 (MissingZero!5674 i!1132)) (= lt!262714 (MissingVacant!5674 i!1132))))))

(assert (=> b!575007 (= lt!262714 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!575008 () Bool)

(declare-fun res!363573 () Bool)

(assert (=> b!575008 (=> (not res!363573) (not e!330853))))

(assert (=> b!575008 (= res!363573 (validKeyInArray!0 (select (arr!17218 a!3118) j!142)))))

(declare-fun lt!262711 () SeekEntryResult!5674)

(declare-fun b!575009 () Bool)

(assert (=> b!575009 (= e!330848 (or (bvslt (index!24925 lt!262717) #b00000000000000000000000000000000) (bvsge (index!24925 lt!262717) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!53846 lt!262717) #b01111111111111111111111111111110) (bvslt (x!53846 lt!262717) #b00000000000000000000000000000000) (not (= lt!262719 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!17218 a!3118) i!1132 k0!1914) (index!24925 lt!262717)) #b1000000000000000000000000000000000000000000000000000000000000000)) (= lt!262711 lt!262718)))))

(assert (=> b!575009 e!330849))

(declare-fun res!363571 () Bool)

(assert (=> b!575009 (=> (not res!363571) (not e!330849))))

(assert (=> b!575009 (= res!363571 (= lt!262713 lt!262711))))

(assert (=> b!575009 (= lt!262711 (seekKeyOrZeroReturnVacant!0 (x!53846 lt!262717) (index!24925 lt!262717) (index!24925 lt!262717) (select (arr!17218 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and start!52780 res!363569) b!575000))

(assert (= (and b!575000 res!363566) b!575008))

(assert (= (and b!575008 res!363573) b!574998))

(assert (= (and b!574998 res!363567) b!575003))

(assert (= (and b!575003 res!363568) b!575007))

(assert (= (and b!575007 res!363564) b!575002))

(assert (= (and b!575002 res!363572) b!575004))

(assert (= (and b!575004 res!363565) b!575001))

(assert (= (and b!575001 res!363575) b!574999))

(assert (= (and b!574999 (not res!363570)) b!575006))

(assert (= (and b!575006 (not res!363574)) b!575009))

(assert (= (and b!575009 res!363571) b!575005))

(declare-fun m!553811 () Bool)

(assert (=> b!575005 m!553811))

(declare-fun m!553813 () Bool)

(assert (=> b!575005 m!553813))

(declare-fun m!553815 () Bool)

(assert (=> b!575002 m!553815))

(declare-fun m!553817 () Bool)

(assert (=> b!574999 m!553817))

(assert (=> b!574999 m!553817))

(declare-fun m!553819 () Bool)

(assert (=> b!574999 m!553819))

(declare-fun m!553821 () Bool)

(assert (=> b!574999 m!553821))

(declare-fun m!553823 () Bool)

(assert (=> b!574999 m!553823))

(declare-fun m!553825 () Bool)

(assert (=> start!52780 m!553825))

(declare-fun m!553827 () Bool)

(assert (=> start!52780 m!553827))

(assert (=> b!575006 m!553817))

(declare-fun m!553829 () Bool)

(assert (=> b!575006 m!553829))

(declare-fun m!553831 () Bool)

(assert (=> b!574998 m!553831))

(declare-fun m!553833 () Bool)

(assert (=> b!575004 m!553833))

(declare-fun m!553835 () Bool)

(assert (=> b!575007 m!553835))

(declare-fun m!553837 () Bool)

(assert (=> b!575009 m!553837))

(declare-fun m!553839 () Bool)

(assert (=> b!575009 m!553839))

(assert (=> b!575009 m!553817))

(assert (=> b!575009 m!553817))

(declare-fun m!553841 () Bool)

(assert (=> b!575009 m!553841))

(declare-fun m!553843 () Bool)

(assert (=> b!575003 m!553843))

(assert (=> b!575001 m!553817))

(declare-fun m!553845 () Bool)

(assert (=> b!575001 m!553845))

(assert (=> b!575001 m!553817))

(declare-fun m!553847 () Bool)

(assert (=> b!575001 m!553847))

(assert (=> b!575001 m!553817))

(declare-fun m!553849 () Bool)

(assert (=> b!575001 m!553849))

(declare-fun m!553851 () Bool)

(assert (=> b!575001 m!553851))

(declare-fun m!553853 () Bool)

(assert (=> b!575001 m!553853))

(assert (=> b!575001 m!553837))

(assert (=> b!575008 m!553817))

(assert (=> b!575008 m!553817))

(declare-fun m!553855 () Bool)

(assert (=> b!575008 m!553855))

(check-sat (not b!575008) (not b!574999) (not b!575004) (not b!575007) (not b!575009) (not b!574998) (not b!575005) (not b!575003) (not start!52780) (not b!575002) (not b!575001))
(check-sat)
