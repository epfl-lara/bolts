; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51446 () Bool)

(assert start!51446)

(declare-fun b!561843 () Bool)

(declare-fun e!323788 () Bool)

(declare-fun e!323781 () Bool)

(assert (=> b!561843 (= e!323788 e!323781)))

(declare-fun res!353156 () Bool)

(assert (=> b!561843 (=> (not res!353156) (not e!323781))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5385 0))(
  ( (MissingZero!5385 (index!23767 (_ BitVec 32))) (Found!5385 (index!23768 (_ BitVec 32))) (Intermediate!5385 (undefined!6197 Bool) (index!23769 (_ BitVec 32)) (x!52699 (_ BitVec 32))) (Undefined!5385) (MissingVacant!5385 (index!23770 (_ BitVec 32))) )
))
(declare-fun lt!255885 () SeekEntryResult!5385)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!255887 () SeekEntryResult!5385)

(declare-datatypes ((array!35265 0))(
  ( (array!35266 (arr!16929 (Array (_ BitVec 32) (_ BitVec 64))) (size!17293 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35265)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35265 (_ BitVec 32)) SeekEntryResult!5385)

(assert (=> b!561843 (= res!353156 (= lt!255885 (seekKeyOrZeroReturnVacant!0 (x!52699 lt!255887) (index!23769 lt!255887) (index!23769 lt!255887) (select (arr!16929 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!561844 () Bool)

(declare-fun res!353150 () Bool)

(declare-fun e!323787 () Bool)

(assert (=> b!561844 (=> (not res!353150) (not e!323787))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!561844 (= res!353150 (validKeyInArray!0 (select (arr!16929 a!3118) j!142)))))

(declare-fun b!561845 () Bool)

(declare-fun e!323786 () Bool)

(declare-fun e!323782 () Bool)

(assert (=> b!561845 (= e!323786 e!323782)))

(declare-fun res!353149 () Bool)

(assert (=> b!561845 (=> (not res!353149) (not e!323782))))

(declare-fun lt!255891 () (_ BitVec 32))

(declare-fun lt!255893 () array!35265)

(declare-fun lt!255888 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35265 (_ BitVec 32)) SeekEntryResult!5385)

(assert (=> b!561845 (= res!353149 (= lt!255887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255891 lt!255888 lt!255893 mask!3119)))))

(declare-fun lt!255889 () (_ BitVec 32))

(assert (=> b!561845 (= lt!255887 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255889 (select (arr!16929 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!561845 (= lt!255891 (toIndex!0 lt!255888 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!561845 (= lt!255888 (select (store (arr!16929 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!561845 (= lt!255889 (toIndex!0 (select (arr!16929 a!3118) j!142) mask!3119))))

(assert (=> b!561845 (= lt!255893 (array!35266 (store (arr!16929 a!3118) i!1132 k!1914) (size!17293 a!3118)))))

(declare-fun b!561846 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35265 (_ BitVec 32)) SeekEntryResult!5385)

(assert (=> b!561846 (= e!323781 (= (seekEntryOrOpen!0 lt!255888 lt!255893 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52699 lt!255887) (index!23769 lt!255887) (index!23769 lt!255887) lt!255888 lt!255893 mask!3119)))))

(declare-fun b!561847 () Bool)

(assert (=> b!561847 (= e!323782 (not true))))

(declare-fun e!323783 () Bool)

(assert (=> b!561847 e!323783))

(declare-fun res!353146 () Bool)

(assert (=> b!561847 (=> (not res!353146) (not e!323783))))

(assert (=> b!561847 (= res!353146 (= lt!255885 (Found!5385 j!142)))))

(assert (=> b!561847 (= lt!255885 (seekEntryOrOpen!0 (select (arr!16929 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35265 (_ BitVec 32)) Bool)

(assert (=> b!561847 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17544 0))(
  ( (Unit!17545) )
))
(declare-fun lt!255886 () Unit!17544)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35265 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17544)

(assert (=> b!561847 (= lt!255886 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!561848 () Bool)

(assert (=> b!561848 (= e!323787 e!323786)))

(declare-fun res!353155 () Bool)

(assert (=> b!561848 (=> (not res!353155) (not e!323786))))

(declare-fun lt!255890 () SeekEntryResult!5385)

(assert (=> b!561848 (= res!353155 (or (= lt!255890 (MissingZero!5385 i!1132)) (= lt!255890 (MissingVacant!5385 i!1132))))))

(assert (=> b!561848 (= lt!255890 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!561849 () Bool)

(declare-fun res!353148 () Bool)

(assert (=> b!561849 (=> (not res!353148) (not e!323787))))

(declare-fun arrayContainsKey!0 (array!35265 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!561849 (= res!353148 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!561850 () Bool)

(declare-fun res!353144 () Bool)

(assert (=> b!561850 (=> (not res!353144) (not e!323787))))

(assert (=> b!561850 (= res!353144 (and (= (size!17293 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17293 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17293 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!353154 () Bool)

(assert (=> start!51446 (=> (not res!353154) (not e!323787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51446 (= res!353154 (validMask!0 mask!3119))))

(assert (=> start!51446 e!323787))

(assert (=> start!51446 true))

(declare-fun array_inv!12703 (array!35265) Bool)

(assert (=> start!51446 (array_inv!12703 a!3118)))

(declare-fun b!561842 () Bool)

(declare-fun e!323785 () Bool)

(assert (=> b!561842 (= e!323785 e!323788)))

(declare-fun res!353147 () Bool)

(assert (=> b!561842 (=> res!353147 e!323788)))

(declare-fun lt!255892 () (_ BitVec 64))

(assert (=> b!561842 (= res!353147 (or (= lt!255892 (select (arr!16929 a!3118) j!142)) (= lt!255892 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!561842 (= lt!255892 (select (arr!16929 a!3118) (index!23769 lt!255887)))))

(declare-fun b!561851 () Bool)

(declare-fun res!353152 () Bool)

(assert (=> b!561851 (=> (not res!353152) (not e!323786))))

(declare-datatypes ((List!11062 0))(
  ( (Nil!11059) (Cons!11058 (h!12061 (_ BitVec 64)) (t!17298 List!11062)) )
))
(declare-fun arrayNoDuplicates!0 (array!35265 (_ BitVec 32) List!11062) Bool)

(assert (=> b!561851 (= res!353152 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11059))))

(declare-fun b!561852 () Bool)

(declare-fun res!353151 () Bool)

(assert (=> b!561852 (=> (not res!353151) (not e!323787))))

(assert (=> b!561852 (= res!353151 (validKeyInArray!0 k!1914))))

(declare-fun b!561853 () Bool)

(declare-fun res!353153 () Bool)

(assert (=> b!561853 (=> (not res!353153) (not e!323786))))

(assert (=> b!561853 (= res!353153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!561854 () Bool)

(assert (=> b!561854 (= e!323783 e!323785)))

(declare-fun res!353145 () Bool)

(assert (=> b!561854 (=> res!353145 e!323785)))

(assert (=> b!561854 (= res!353145 (or (undefined!6197 lt!255887) (not (is-Intermediate!5385 lt!255887))))))

(assert (= (and start!51446 res!353154) b!561850))

(assert (= (and b!561850 res!353144) b!561844))

(assert (= (and b!561844 res!353150) b!561852))

(assert (= (and b!561852 res!353151) b!561849))

(assert (= (and b!561849 res!353148) b!561848))

(assert (= (and b!561848 res!353155) b!561853))

(assert (= (and b!561853 res!353153) b!561851))

(assert (= (and b!561851 res!353152) b!561845))

(assert (= (and b!561845 res!353149) b!561847))

(assert (= (and b!561847 res!353146) b!561854))

(assert (= (and b!561854 (not res!353145)) b!561842))

(assert (= (and b!561842 (not res!353147)) b!561843))

(assert (= (and b!561843 res!353156) b!561846))

(declare-fun m!539851 () Bool)

(assert (=> b!561848 m!539851))

(declare-fun m!539853 () Bool)

(assert (=> b!561842 m!539853))

(declare-fun m!539855 () Bool)

(assert (=> b!561842 m!539855))

(assert (=> b!561844 m!539853))

(assert (=> b!561844 m!539853))

(declare-fun m!539857 () Bool)

(assert (=> b!561844 m!539857))

(declare-fun m!539859 () Bool)

(assert (=> b!561852 m!539859))

(declare-fun m!539861 () Bool)

(assert (=> b!561849 m!539861))

(declare-fun m!539863 () Bool)

(assert (=> start!51446 m!539863))

(declare-fun m!539865 () Bool)

(assert (=> start!51446 m!539865))

(declare-fun m!539867 () Bool)

(assert (=> b!561851 m!539867))

(assert (=> b!561847 m!539853))

(assert (=> b!561847 m!539853))

(declare-fun m!539869 () Bool)

(assert (=> b!561847 m!539869))

(declare-fun m!539871 () Bool)

(assert (=> b!561847 m!539871))

(declare-fun m!539873 () Bool)

(assert (=> b!561847 m!539873))

(declare-fun m!539875 () Bool)

(assert (=> b!561846 m!539875))

(declare-fun m!539877 () Bool)

(assert (=> b!561846 m!539877))

(declare-fun m!539879 () Bool)

(assert (=> b!561853 m!539879))

(assert (=> b!561843 m!539853))

(assert (=> b!561843 m!539853))

(declare-fun m!539881 () Bool)

(assert (=> b!561843 m!539881))

(assert (=> b!561845 m!539853))

(declare-fun m!539883 () Bool)

(assert (=> b!561845 m!539883))

(assert (=> b!561845 m!539853))

(declare-fun m!539885 () Bool)

(assert (=> b!561845 m!539885))

(declare-fun m!539887 () Bool)

(assert (=> b!561845 m!539887))

(declare-fun m!539889 () Bool)

(assert (=> b!561845 m!539889))

(assert (=> b!561845 m!539853))

(declare-fun m!539891 () Bool)

(assert (=> b!561845 m!539891))

(declare-fun m!539893 () Bool)

(assert (=> b!561845 m!539893))

(push 1)

