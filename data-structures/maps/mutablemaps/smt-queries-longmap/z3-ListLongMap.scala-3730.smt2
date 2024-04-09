; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51394 () Bool)

(assert start!51394)

(declare-fun b!560828 () Bool)

(declare-fun res!352130 () Bool)

(declare-fun e!323162 () Bool)

(assert (=> b!560828 (=> (not res!352130) (not e!323162))))

(declare-datatypes ((array!35213 0))(
  ( (array!35214 (arr!16903 (Array (_ BitVec 32) (_ BitVec 64))) (size!17267 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35213)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560828 (= res!352130 (validKeyInArray!0 (select (arr!16903 a!3118) j!142)))))

(declare-fun b!560829 () Bool)

(declare-fun e!323159 () Bool)

(declare-fun e!323160 () Bool)

(assert (=> b!560829 (= e!323159 e!323160)))

(declare-fun res!352131 () Bool)

(assert (=> b!560829 (=> (not res!352131) (not e!323160))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5359 0))(
  ( (MissingZero!5359 (index!23663 (_ BitVec 32))) (Found!5359 (index!23664 (_ BitVec 32))) (Intermediate!5359 (undefined!6171 Bool) (index!23665 (_ BitVec 32)) (x!52601 (_ BitVec 32))) (Undefined!5359) (MissingVacant!5359 (index!23666 (_ BitVec 32))) )
))
(declare-fun lt!255188 () SeekEntryResult!5359)

(declare-fun lt!255186 () SeekEntryResult!5359)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35213 (_ BitVec 32)) SeekEntryResult!5359)

(assert (=> b!560829 (= res!352131 (= lt!255186 (seekKeyOrZeroReturnVacant!0 (x!52601 lt!255188) (index!23665 lt!255188) (index!23665 lt!255188) (select (arr!16903 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560831 () Bool)

(declare-fun e!323158 () Bool)

(declare-fun e!323161 () Bool)

(assert (=> b!560831 (= e!323158 e!323161)))

(declare-fun res!352141 () Bool)

(assert (=> b!560831 (=> (not res!352141) (not e!323161))))

(declare-fun lt!255184 () (_ BitVec 64))

(declare-fun lt!255185 () (_ BitVec 32))

(declare-fun lt!255191 () array!35213)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35213 (_ BitVec 32)) SeekEntryResult!5359)

(assert (=> b!560831 (= res!352141 (= lt!255188 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255185 lt!255184 lt!255191 mask!3119)))))

(declare-fun lt!255183 () (_ BitVec 32))

(assert (=> b!560831 (= lt!255188 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255183 (select (arr!16903 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560831 (= lt!255185 (toIndex!0 lt!255184 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560831 (= lt!255184 (select (store (arr!16903 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!560831 (= lt!255183 (toIndex!0 (select (arr!16903 a!3118) j!142) mask!3119))))

(assert (=> b!560831 (= lt!255191 (array!35214 (store (arr!16903 a!3118) i!1132 k0!1914) (size!17267 a!3118)))))

(declare-fun b!560832 () Bool)

(declare-fun res!352140 () Bool)

(assert (=> b!560832 (=> (not res!352140) (not e!323158))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35213 (_ BitVec 32)) Bool)

(assert (=> b!560832 (= res!352140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560833 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35213 (_ BitVec 32)) SeekEntryResult!5359)

(assert (=> b!560833 (= e!323160 (= (seekEntryOrOpen!0 lt!255184 lt!255191 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52601 lt!255188) (index!23665 lt!255188) (index!23665 lt!255188) lt!255184 lt!255191 mask!3119)))))

(declare-fun b!560834 () Bool)

(declare-fun res!352135 () Bool)

(assert (=> b!560834 (=> (not res!352135) (not e!323162))))

(assert (=> b!560834 (= res!352135 (validKeyInArray!0 k0!1914))))

(declare-fun b!560835 () Bool)

(declare-fun e!323164 () Bool)

(declare-fun e!323163 () Bool)

(assert (=> b!560835 (= e!323164 e!323163)))

(declare-fun res!352137 () Bool)

(assert (=> b!560835 (=> res!352137 e!323163)))

(get-info :version)

(assert (=> b!560835 (= res!352137 (or (undefined!6171 lt!255188) (not ((_ is Intermediate!5359) lt!255188))))))

(declare-fun b!560836 () Bool)

(assert (=> b!560836 (= e!323163 e!323159)))

(declare-fun res!352134 () Bool)

(assert (=> b!560836 (=> res!352134 e!323159)))

(declare-fun lt!255189 () (_ BitVec 64))

(assert (=> b!560836 (= res!352134 (or (= lt!255189 (select (arr!16903 a!3118) j!142)) (= lt!255189 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560836 (= lt!255189 (select (arr!16903 a!3118) (index!23665 lt!255188)))))

(declare-fun res!352142 () Bool)

(assert (=> start!51394 (=> (not res!352142) (not e!323162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51394 (= res!352142 (validMask!0 mask!3119))))

(assert (=> start!51394 e!323162))

(assert (=> start!51394 true))

(declare-fun array_inv!12677 (array!35213) Bool)

(assert (=> start!51394 (array_inv!12677 a!3118)))

(declare-fun b!560830 () Bool)

(declare-fun res!352133 () Bool)

(assert (=> b!560830 (=> (not res!352133) (not e!323162))))

(assert (=> b!560830 (= res!352133 (and (= (size!17267 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17267 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17267 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560837 () Bool)

(assert (=> b!560837 (= e!323161 (not true))))

(assert (=> b!560837 e!323164))

(declare-fun res!352136 () Bool)

(assert (=> b!560837 (=> (not res!352136) (not e!323164))))

(assert (=> b!560837 (= res!352136 (= lt!255186 (Found!5359 j!142)))))

(assert (=> b!560837 (= lt!255186 (seekEntryOrOpen!0 (select (arr!16903 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560837 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17492 0))(
  ( (Unit!17493) )
))
(declare-fun lt!255190 () Unit!17492)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35213 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17492)

(assert (=> b!560837 (= lt!255190 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560838 () Bool)

(declare-fun res!352132 () Bool)

(assert (=> b!560838 (=> (not res!352132) (not e!323158))))

(declare-datatypes ((List!11036 0))(
  ( (Nil!11033) (Cons!11032 (h!12035 (_ BitVec 64)) (t!17272 List!11036)) )
))
(declare-fun arrayNoDuplicates!0 (array!35213 (_ BitVec 32) List!11036) Bool)

(assert (=> b!560838 (= res!352132 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11033))))

(declare-fun b!560839 () Bool)

(assert (=> b!560839 (= e!323162 e!323158)))

(declare-fun res!352139 () Bool)

(assert (=> b!560839 (=> (not res!352139) (not e!323158))))

(declare-fun lt!255187 () SeekEntryResult!5359)

(assert (=> b!560839 (= res!352139 (or (= lt!255187 (MissingZero!5359 i!1132)) (= lt!255187 (MissingVacant!5359 i!1132))))))

(assert (=> b!560839 (= lt!255187 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!560840 () Bool)

(declare-fun res!352138 () Bool)

(assert (=> b!560840 (=> (not res!352138) (not e!323162))))

(declare-fun arrayContainsKey!0 (array!35213 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560840 (= res!352138 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!51394 res!352142) b!560830))

(assert (= (and b!560830 res!352133) b!560828))

(assert (= (and b!560828 res!352130) b!560834))

(assert (= (and b!560834 res!352135) b!560840))

(assert (= (and b!560840 res!352138) b!560839))

(assert (= (and b!560839 res!352139) b!560832))

(assert (= (and b!560832 res!352140) b!560838))

(assert (= (and b!560838 res!352132) b!560831))

(assert (= (and b!560831 res!352141) b!560837))

(assert (= (and b!560837 res!352136) b!560835))

(assert (= (and b!560835 (not res!352137)) b!560836))

(assert (= (and b!560836 (not res!352134)) b!560829))

(assert (= (and b!560829 res!352131) b!560833))

(declare-fun m!538707 () Bool)

(assert (=> b!560839 m!538707))

(declare-fun m!538709 () Bool)

(assert (=> b!560836 m!538709))

(declare-fun m!538711 () Bool)

(assert (=> b!560836 m!538711))

(assert (=> b!560837 m!538709))

(assert (=> b!560837 m!538709))

(declare-fun m!538713 () Bool)

(assert (=> b!560837 m!538713))

(declare-fun m!538715 () Bool)

(assert (=> b!560837 m!538715))

(declare-fun m!538717 () Bool)

(assert (=> b!560837 m!538717))

(assert (=> b!560829 m!538709))

(assert (=> b!560829 m!538709))

(declare-fun m!538719 () Bool)

(assert (=> b!560829 m!538719))

(declare-fun m!538721 () Bool)

(assert (=> start!51394 m!538721))

(declare-fun m!538723 () Bool)

(assert (=> start!51394 m!538723))

(declare-fun m!538725 () Bool)

(assert (=> b!560832 m!538725))

(assert (=> b!560828 m!538709))

(assert (=> b!560828 m!538709))

(declare-fun m!538727 () Bool)

(assert (=> b!560828 m!538727))

(declare-fun m!538729 () Bool)

(assert (=> b!560834 m!538729))

(declare-fun m!538731 () Bool)

(assert (=> b!560838 m!538731))

(declare-fun m!538733 () Bool)

(assert (=> b!560840 m!538733))

(declare-fun m!538735 () Bool)

(assert (=> b!560831 m!538735))

(assert (=> b!560831 m!538709))

(declare-fun m!538737 () Bool)

(assert (=> b!560831 m!538737))

(assert (=> b!560831 m!538709))

(assert (=> b!560831 m!538709))

(declare-fun m!538739 () Bool)

(assert (=> b!560831 m!538739))

(declare-fun m!538741 () Bool)

(assert (=> b!560831 m!538741))

(declare-fun m!538743 () Bool)

(assert (=> b!560831 m!538743))

(declare-fun m!538745 () Bool)

(assert (=> b!560831 m!538745))

(declare-fun m!538747 () Bool)

(assert (=> b!560833 m!538747))

(declare-fun m!538749 () Bool)

(assert (=> b!560833 m!538749))

(check-sat (not b!560837) (not b!560833) (not start!51394) (not b!560839) (not b!560834) (not b!560831) (not b!560832) (not b!560828) (not b!560840) (not b!560838) (not b!560829))
(check-sat)
