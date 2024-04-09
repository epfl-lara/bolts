; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51092 () Bool)

(assert start!51092)

(declare-fun b!557887 () Bool)

(declare-fun res!349909 () Bool)

(declare-fun e!321396 () Bool)

(assert (=> b!557887 (=> (not res!349909) (not e!321396))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35100 0))(
  ( (array!35101 (arr!16851 (Array (_ BitVec 32) (_ BitVec 64))) (size!17215 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35100)

(assert (=> b!557887 (= res!349909 (and (= (size!17215 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17215 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17215 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!557888 () Bool)

(declare-fun res!349906 () Bool)

(declare-fun e!321393 () Bool)

(assert (=> b!557888 (=> (not res!349906) (not e!321393))))

(declare-datatypes ((List!10984 0))(
  ( (Nil!10981) (Cons!10980 (h!11974 (_ BitVec 64)) (t!17220 List!10984)) )
))
(declare-fun arrayNoDuplicates!0 (array!35100 (_ BitVec 32) List!10984) Bool)

(assert (=> b!557888 (= res!349906 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10981))))

(declare-fun b!557889 () Bool)

(declare-fun e!321392 () Bool)

(assert (=> b!557889 (= e!321393 e!321392)))

(declare-fun res!349907 () Bool)

(assert (=> b!557889 (=> (not res!349907) (not e!321392))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5307 0))(
  ( (MissingZero!5307 (index!23455 (_ BitVec 32))) (Found!5307 (index!23456 (_ BitVec 32))) (Intermediate!5307 (undefined!6119 Bool) (index!23457 (_ BitVec 32)) (x!52386 (_ BitVec 32))) (Undefined!5307) (MissingVacant!5307 (index!23458 (_ BitVec 32))) )
))
(declare-fun lt!253550 () SeekEntryResult!5307)

(declare-fun lt!253548 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35100 (_ BitVec 32)) SeekEntryResult!5307)

(assert (=> b!557889 (= res!349907 (= lt!253550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253548 (select (store (arr!16851 a!3118) i!1132 k!1914) j!142) (array!35101 (store (arr!16851 a!3118) i!1132 k!1914) (size!17215 a!3118)) mask!3119)))))

(declare-fun lt!253553 () (_ BitVec 32))

(assert (=> b!557889 (= lt!253550 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!253553 (select (arr!16851 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!557889 (= lt!253548 (toIndex!0 (select (store (arr!16851 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!557889 (= lt!253553 (toIndex!0 (select (arr!16851 a!3118) j!142) mask!3119))))

(declare-fun b!557890 () Bool)

(assert (=> b!557890 (= e!321392 (not true))))

(declare-fun e!321394 () Bool)

(assert (=> b!557890 e!321394))

(declare-fun res!349904 () Bool)

(assert (=> b!557890 (=> (not res!349904) (not e!321394))))

(declare-fun lt!253551 () SeekEntryResult!5307)

(assert (=> b!557890 (= res!349904 (= lt!253551 (Found!5307 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35100 (_ BitVec 32)) SeekEntryResult!5307)

(assert (=> b!557890 (= lt!253551 (seekEntryOrOpen!0 (select (arr!16851 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35100 (_ BitVec 32)) Bool)

(assert (=> b!557890 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17388 0))(
  ( (Unit!17389) )
))
(declare-fun lt!253549 () Unit!17388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35100 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17388)

(assert (=> b!557890 (= lt!253549 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!557891 () Bool)

(declare-fun res!349905 () Bool)

(assert (=> b!557891 (=> (not res!349905) (not e!321393))))

(assert (=> b!557891 (= res!349905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!557892 () Bool)

(declare-fun res!349910 () Bool)

(assert (=> b!557892 (=> (not res!349910) (not e!321396))))

(declare-fun arrayContainsKey!0 (array!35100 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!557892 (= res!349910 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!349908 () Bool)

(assert (=> start!51092 (=> (not res!349908) (not e!321396))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51092 (= res!349908 (validMask!0 mask!3119))))

(assert (=> start!51092 e!321396))

(assert (=> start!51092 true))

(declare-fun array_inv!12625 (array!35100) Bool)

(assert (=> start!51092 (array_inv!12625 a!3118)))

(declare-fun b!557893 () Bool)

(assert (=> b!557893 (= e!321396 e!321393)))

(declare-fun res!349902 () Bool)

(assert (=> b!557893 (=> (not res!349902) (not e!321393))))

(declare-fun lt!253552 () SeekEntryResult!5307)

(assert (=> b!557893 (= res!349902 (or (= lt!253552 (MissingZero!5307 i!1132)) (= lt!253552 (MissingVacant!5307 i!1132))))))

(assert (=> b!557893 (= lt!253552 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!557894 () Bool)

(declare-fun res!349900 () Bool)

(assert (=> b!557894 (=> (not res!349900) (not e!321396))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!557894 (= res!349900 (validKeyInArray!0 (select (arr!16851 a!3118) j!142)))))

(declare-fun b!557895 () Bool)

(declare-fun res!349903 () Bool)

(assert (=> b!557895 (=> (not res!349903) (not e!321396))))

(assert (=> b!557895 (= res!349903 (validKeyInArray!0 k!1914))))

(declare-fun b!557896 () Bool)

(declare-fun e!321397 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35100 (_ BitVec 32)) SeekEntryResult!5307)

(assert (=> b!557896 (= e!321397 (= lt!253551 (seekKeyOrZeroReturnVacant!0 (x!52386 lt!253550) (index!23457 lt!253550) (index!23457 lt!253550) (select (arr!16851 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!557897 () Bool)

(assert (=> b!557897 (= e!321394 e!321397)))

(declare-fun res!349901 () Bool)

(assert (=> b!557897 (=> res!349901 e!321397)))

(assert (=> b!557897 (= res!349901 (or (undefined!6119 lt!253550) (not (is-Intermediate!5307 lt!253550)) (= (select (arr!16851 a!3118) (index!23457 lt!253550)) (select (arr!16851 a!3118) j!142)) (= (select (arr!16851 a!3118) (index!23457 lt!253550)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!51092 res!349908) b!557887))

(assert (= (and b!557887 res!349909) b!557894))

(assert (= (and b!557894 res!349900) b!557895))

(assert (= (and b!557895 res!349903) b!557892))

(assert (= (and b!557892 res!349910) b!557893))

(assert (= (and b!557893 res!349902) b!557891))

(assert (= (and b!557891 res!349905) b!557888))

(assert (= (and b!557888 res!349906) b!557889))

(assert (= (and b!557889 res!349907) b!557890))

(assert (= (and b!557890 res!349904) b!557897))

(assert (= (and b!557897 (not res!349901)) b!557896))

(declare-fun m!535831 () Bool)

(assert (=> b!557897 m!535831))

(declare-fun m!535833 () Bool)

(assert (=> b!557897 m!535833))

(declare-fun m!535835 () Bool)

(assert (=> b!557892 m!535835))

(declare-fun m!535837 () Bool)

(assert (=> b!557893 m!535837))

(declare-fun m!535839 () Bool)

(assert (=> b!557888 m!535839))

(declare-fun m!535841 () Bool)

(assert (=> start!51092 m!535841))

(declare-fun m!535843 () Bool)

(assert (=> start!51092 m!535843))

(declare-fun m!535845 () Bool)

(assert (=> b!557895 m!535845))

(assert (=> b!557889 m!535833))

(declare-fun m!535847 () Bool)

(assert (=> b!557889 m!535847))

(declare-fun m!535849 () Bool)

(assert (=> b!557889 m!535849))

(declare-fun m!535851 () Bool)

(assert (=> b!557889 m!535851))

(assert (=> b!557889 m!535833))

(assert (=> b!557889 m!535849))

(declare-fun m!535853 () Bool)

(assert (=> b!557889 m!535853))

(assert (=> b!557889 m!535833))

(declare-fun m!535855 () Bool)

(assert (=> b!557889 m!535855))

(assert (=> b!557889 m!535849))

(declare-fun m!535857 () Bool)

(assert (=> b!557889 m!535857))

(assert (=> b!557890 m!535833))

(assert (=> b!557890 m!535833))

(declare-fun m!535859 () Bool)

(assert (=> b!557890 m!535859))

(declare-fun m!535861 () Bool)

(assert (=> b!557890 m!535861))

(declare-fun m!535863 () Bool)

(assert (=> b!557890 m!535863))

(declare-fun m!535865 () Bool)

(assert (=> b!557891 m!535865))

(assert (=> b!557896 m!535833))

(assert (=> b!557896 m!535833))

(declare-fun m!535867 () Bool)

(assert (=> b!557896 m!535867))

(assert (=> b!557894 m!535833))

(assert (=> b!557894 m!535833))

(declare-fun m!535869 () Bool)

(assert (=> b!557894 m!535869))

(push 1)

