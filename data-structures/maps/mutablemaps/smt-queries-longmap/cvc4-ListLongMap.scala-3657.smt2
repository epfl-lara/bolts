; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50520 () Bool)

(assert start!50520)

(declare-fun res!344594 () Bool)

(declare-fun e!318464 () Bool)

(assert (=> start!50520 (=> (not res!344594) (not e!318464))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50520 (= res!344594 (validMask!0 mask!3119))))

(assert (=> start!50520 e!318464))

(assert (=> start!50520 true))

(declare-datatypes ((array!34756 0))(
  ( (array!34757 (arr!16685 (Array (_ BitVec 32) (_ BitVec 64))) (size!17049 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34756)

(declare-fun array_inv!12459 (array!34756) Bool)

(assert (=> start!50520 (array_inv!12459 a!3118)))

(declare-fun b!551849 () Bool)

(declare-fun res!344595 () Bool)

(declare-fun e!318465 () Bool)

(assert (=> b!551849 (=> (not res!344595) (not e!318465))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34756 (_ BitVec 32)) Bool)

(assert (=> b!551849 (= res!344595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551850 () Bool)

(assert (=> b!551850 (= e!318465 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!318463 () Bool)

(assert (=> b!551850 e!318463))

(declare-fun res!344602 () Bool)

(assert (=> b!551850 (=> (not res!344602) (not e!318463))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!551850 (= res!344602 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17056 0))(
  ( (Unit!17057) )
))
(declare-fun lt!250984 () Unit!17056)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34756 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17056)

(assert (=> b!551850 (= lt!250984 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551851 () Bool)

(assert (=> b!551851 (= e!318464 e!318465)))

(declare-fun res!344603 () Bool)

(assert (=> b!551851 (=> (not res!344603) (not e!318465))))

(declare-datatypes ((SeekEntryResult!5141 0))(
  ( (MissingZero!5141 (index!22791 (_ BitVec 32))) (Found!5141 (index!22792 (_ BitVec 32))) (Intermediate!5141 (undefined!5953 Bool) (index!22793 (_ BitVec 32)) (x!51748 (_ BitVec 32))) (Undefined!5141) (MissingVacant!5141 (index!22794 (_ BitVec 32))) )
))
(declare-fun lt!250985 () SeekEntryResult!5141)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!551851 (= res!344603 (or (= lt!250985 (MissingZero!5141 i!1132)) (= lt!250985 (MissingVacant!5141 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34756 (_ BitVec 32)) SeekEntryResult!5141)

(assert (=> b!551851 (= lt!250985 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551852 () Bool)

(declare-fun res!344597 () Bool)

(assert (=> b!551852 (=> (not res!344597) (not e!318464))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551852 (= res!344597 (validKeyInArray!0 k!1914))))

(declare-fun b!551853 () Bool)

(declare-fun res!344598 () Bool)

(assert (=> b!551853 (=> (not res!344598) (not e!318464))))

(assert (=> b!551853 (= res!344598 (and (= (size!17049 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17049 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17049 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551854 () Bool)

(declare-fun res!344596 () Bool)

(assert (=> b!551854 (=> (not res!344596) (not e!318465))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34756 (_ BitVec 32)) SeekEntryResult!5141)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551854 (= res!344596 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16685 a!3118) j!142) mask!3119) (select (arr!16685 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16685 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16685 a!3118) i!1132 k!1914) j!142) (array!34757 (store (arr!16685 a!3118) i!1132 k!1914) (size!17049 a!3118)) mask!3119)))))

(declare-fun b!551855 () Bool)

(declare-fun res!344599 () Bool)

(assert (=> b!551855 (=> (not res!344599) (not e!318464))))

(assert (=> b!551855 (= res!344599 (validKeyInArray!0 (select (arr!16685 a!3118) j!142)))))

(declare-fun b!551856 () Bool)

(assert (=> b!551856 (= e!318463 (= (seekEntryOrOpen!0 (select (arr!16685 a!3118) j!142) a!3118 mask!3119) (Found!5141 j!142)))))

(declare-fun b!551857 () Bool)

(declare-fun res!344601 () Bool)

(assert (=> b!551857 (=> (not res!344601) (not e!318464))))

(declare-fun arrayContainsKey!0 (array!34756 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551857 (= res!344601 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551858 () Bool)

(declare-fun res!344600 () Bool)

(assert (=> b!551858 (=> (not res!344600) (not e!318465))))

(declare-datatypes ((List!10818 0))(
  ( (Nil!10815) (Cons!10814 (h!11796 (_ BitVec 64)) (t!17054 List!10818)) )
))
(declare-fun arrayNoDuplicates!0 (array!34756 (_ BitVec 32) List!10818) Bool)

(assert (=> b!551858 (= res!344600 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10815))))

(assert (= (and start!50520 res!344594) b!551853))

(assert (= (and b!551853 res!344598) b!551855))

(assert (= (and b!551855 res!344599) b!551852))

(assert (= (and b!551852 res!344597) b!551857))

(assert (= (and b!551857 res!344601) b!551851))

(assert (= (and b!551851 res!344603) b!551849))

(assert (= (and b!551849 res!344595) b!551858))

(assert (= (and b!551858 res!344600) b!551854))

(assert (= (and b!551854 res!344596) b!551850))

(assert (= (and b!551850 res!344602) b!551856))

(declare-fun m!528841 () Bool)

(assert (=> b!551858 m!528841))

(declare-fun m!528843 () Bool)

(assert (=> b!551856 m!528843))

(assert (=> b!551856 m!528843))

(declare-fun m!528845 () Bool)

(assert (=> b!551856 m!528845))

(assert (=> b!551855 m!528843))

(assert (=> b!551855 m!528843))

(declare-fun m!528847 () Bool)

(assert (=> b!551855 m!528847))

(declare-fun m!528849 () Bool)

(assert (=> b!551849 m!528849))

(declare-fun m!528851 () Bool)

(assert (=> b!551852 m!528851))

(declare-fun m!528853 () Bool)

(assert (=> start!50520 m!528853))

(declare-fun m!528855 () Bool)

(assert (=> start!50520 m!528855))

(declare-fun m!528857 () Bool)

(assert (=> b!551857 m!528857))

(declare-fun m!528859 () Bool)

(assert (=> b!551851 m!528859))

(declare-fun m!528861 () Bool)

(assert (=> b!551850 m!528861))

(declare-fun m!528863 () Bool)

(assert (=> b!551850 m!528863))

(assert (=> b!551854 m!528843))

(declare-fun m!528865 () Bool)

(assert (=> b!551854 m!528865))

(assert (=> b!551854 m!528843))

(declare-fun m!528867 () Bool)

(assert (=> b!551854 m!528867))

(declare-fun m!528869 () Bool)

(assert (=> b!551854 m!528869))

(assert (=> b!551854 m!528867))

(declare-fun m!528871 () Bool)

(assert (=> b!551854 m!528871))

(assert (=> b!551854 m!528865))

(assert (=> b!551854 m!528843))

(declare-fun m!528873 () Bool)

(assert (=> b!551854 m!528873))

(declare-fun m!528875 () Bool)

(assert (=> b!551854 m!528875))

(assert (=> b!551854 m!528867))

(assert (=> b!551854 m!528869))

(push 1)

(assert (not b!551854))

(assert (not b!551851))

