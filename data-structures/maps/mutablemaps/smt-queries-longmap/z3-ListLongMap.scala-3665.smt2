; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50626 () Bool)

(assert start!50626)

(declare-fun b!552839 () Bool)

(declare-fun e!318962 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34805 0))(
  ( (array!34806 (arr!16708 (Array (_ BitVec 32) (_ BitVec 64))) (size!17072 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34805)

(declare-datatypes ((SeekEntryResult!5164 0))(
  ( (MissingZero!5164 (index!22883 (_ BitVec 32))) (Found!5164 (index!22884 (_ BitVec 32))) (Intermediate!5164 (undefined!5976 Bool) (index!22885 (_ BitVec 32)) (x!51841 (_ BitVec 32))) (Undefined!5164) (MissingVacant!5164 (index!22886 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34805 (_ BitVec 32)) SeekEntryResult!5164)

(assert (=> b!552839 (= e!318962 (= (seekEntryOrOpen!0 (select (arr!16708 a!3118) j!142) a!3118 mask!3119) (Found!5164 j!142)))))

(declare-fun b!552840 () Bool)

(declare-fun res!345407 () Bool)

(declare-fun e!318963 () Bool)

(assert (=> b!552840 (=> (not res!345407) (not e!318963))))

(declare-datatypes ((List!10841 0))(
  ( (Nil!10838) (Cons!10837 (h!11822 (_ BitVec 64)) (t!17077 List!10841)) )
))
(declare-fun arrayNoDuplicates!0 (array!34805 (_ BitVec 32) List!10841) Bool)

(assert (=> b!552840 (= res!345407 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10838))))

(declare-fun b!552841 () Bool)

(declare-fun res!345408 () Bool)

(assert (=> b!552841 (=> (not res!345408) (not e!318963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34805 (_ BitVec 32)) Bool)

(assert (=> b!552841 (= res!345408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552842 () Bool)

(declare-fun res!345404 () Bool)

(declare-fun e!318964 () Bool)

(assert (=> b!552842 (=> (not res!345404) (not e!318964))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552842 (= res!345404 (validKeyInArray!0 k0!1914))))

(declare-fun b!552843 () Bool)

(declare-fun res!345402 () Bool)

(assert (=> b!552843 (=> (not res!345402) (not e!318964))))

(assert (=> b!552843 (= res!345402 (validKeyInArray!0 (select (arr!16708 a!3118) j!142)))))

(declare-fun b!552844 () Bool)

(assert (=> b!552844 (= e!318964 e!318963)))

(declare-fun res!345401 () Bool)

(assert (=> b!552844 (=> (not res!345401) (not e!318963))))

(declare-fun lt!251314 () SeekEntryResult!5164)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552844 (= res!345401 (or (= lt!251314 (MissingZero!5164 i!1132)) (= lt!251314 (MissingVacant!5164 i!1132))))))

(assert (=> b!552844 (= lt!251314 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!552845 () Bool)

(assert (=> b!552845 (= e!318963 (not true))))

(assert (=> b!552845 e!318962))

(declare-fun res!345405 () Bool)

(assert (=> b!552845 (=> (not res!345405) (not e!318962))))

(assert (=> b!552845 (= res!345405 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17102 0))(
  ( (Unit!17103) )
))
(declare-fun lt!251315 () Unit!17102)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34805 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17102)

(assert (=> b!552845 (= lt!251315 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552846 () Bool)

(declare-fun res!345409 () Bool)

(assert (=> b!552846 (=> (not res!345409) (not e!318964))))

(assert (=> b!552846 (= res!345409 (and (= (size!17072 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17072 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17072 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!345406 () Bool)

(assert (=> start!50626 (=> (not res!345406) (not e!318964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50626 (= res!345406 (validMask!0 mask!3119))))

(assert (=> start!50626 e!318964))

(assert (=> start!50626 true))

(declare-fun array_inv!12482 (array!34805) Bool)

(assert (=> start!50626 (array_inv!12482 a!3118)))

(declare-fun b!552847 () Bool)

(declare-fun res!345403 () Bool)

(assert (=> b!552847 (=> (not res!345403) (not e!318964))))

(declare-fun arrayContainsKey!0 (array!34805 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552847 (= res!345403 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552848 () Bool)

(declare-fun res!345410 () Bool)

(assert (=> b!552848 (=> (not res!345410) (not e!318963))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34805 (_ BitVec 32)) SeekEntryResult!5164)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552848 (= res!345410 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16708 a!3118) j!142) mask!3119) (select (arr!16708 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16708 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16708 a!3118) i!1132 k0!1914) j!142) (array!34806 (store (arr!16708 a!3118) i!1132 k0!1914) (size!17072 a!3118)) mask!3119)))))

(assert (= (and start!50626 res!345406) b!552846))

(assert (= (and b!552846 res!345409) b!552843))

(assert (= (and b!552843 res!345402) b!552842))

(assert (= (and b!552842 res!345404) b!552847))

(assert (= (and b!552847 res!345403) b!552844))

(assert (= (and b!552844 res!345401) b!552841))

(assert (= (and b!552841 res!345408) b!552840))

(assert (= (and b!552840 res!345407) b!552848))

(assert (= (and b!552848 res!345410) b!552845))

(assert (= (and b!552845 res!345405) b!552839))

(declare-fun m!529879 () Bool)

(assert (=> b!552840 m!529879))

(declare-fun m!529881 () Bool)

(assert (=> b!552847 m!529881))

(declare-fun m!529883 () Bool)

(assert (=> b!552843 m!529883))

(assert (=> b!552843 m!529883))

(declare-fun m!529885 () Bool)

(assert (=> b!552843 m!529885))

(assert (=> b!552839 m!529883))

(assert (=> b!552839 m!529883))

(declare-fun m!529887 () Bool)

(assert (=> b!552839 m!529887))

(declare-fun m!529889 () Bool)

(assert (=> b!552841 m!529889))

(declare-fun m!529891 () Bool)

(assert (=> b!552844 m!529891))

(declare-fun m!529893 () Bool)

(assert (=> start!50626 m!529893))

(declare-fun m!529895 () Bool)

(assert (=> start!50626 m!529895))

(assert (=> b!552848 m!529883))

(declare-fun m!529897 () Bool)

(assert (=> b!552848 m!529897))

(assert (=> b!552848 m!529883))

(declare-fun m!529899 () Bool)

(assert (=> b!552848 m!529899))

(declare-fun m!529901 () Bool)

(assert (=> b!552848 m!529901))

(assert (=> b!552848 m!529899))

(declare-fun m!529903 () Bool)

(assert (=> b!552848 m!529903))

(assert (=> b!552848 m!529897))

(assert (=> b!552848 m!529883))

(declare-fun m!529905 () Bool)

(assert (=> b!552848 m!529905))

(declare-fun m!529907 () Bool)

(assert (=> b!552848 m!529907))

(assert (=> b!552848 m!529899))

(assert (=> b!552848 m!529901))

(declare-fun m!529909 () Bool)

(assert (=> b!552842 m!529909))

(declare-fun m!529911 () Bool)

(assert (=> b!552845 m!529911))

(declare-fun m!529913 () Bool)

(assert (=> b!552845 m!529913))

(check-sat (not b!552844) (not b!552845) (not b!552840) (not b!552843) (not b!552842) (not b!552839) (not b!552848) (not start!50626) (not b!552841) (not b!552847))
(check-sat)
