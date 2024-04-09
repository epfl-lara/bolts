; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50630 () Bool)

(assert start!50630)

(declare-fun b!552899 () Bool)

(declare-fun e!318985 () Bool)

(assert (=> b!552899 (= e!318985 (not true))))

(declare-fun e!318987 () Bool)

(assert (=> b!552899 e!318987))

(declare-fun res!345465 () Bool)

(assert (=> b!552899 (=> (not res!345465) (not e!318987))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34809 0))(
  ( (array!34810 (arr!16710 (Array (_ BitVec 32) (_ BitVec 64))) (size!17074 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34809)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34809 (_ BitVec 32)) Bool)

(assert (=> b!552899 (= res!345465 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17106 0))(
  ( (Unit!17107) )
))
(declare-fun lt!251326 () Unit!17106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17106)

(assert (=> b!552899 (= lt!251326 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552900 () Bool)

(declare-fun res!345463 () Bool)

(declare-fun e!318988 () Bool)

(assert (=> b!552900 (=> (not res!345463) (not e!318988))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34809 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552900 (= res!345463 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552901 () Bool)

(declare-fun res!345469 () Bool)

(assert (=> b!552901 (=> (not res!345469) (not e!318988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552901 (= res!345469 (validKeyInArray!0 k!1914))))

(declare-fun b!552903 () Bool)

(declare-fun res!345464 () Bool)

(assert (=> b!552903 (=> (not res!345464) (not e!318988))))

(assert (=> b!552903 (= res!345464 (validKeyInArray!0 (select (arr!16710 a!3118) j!142)))))

(declare-fun b!552904 () Bool)

(assert (=> b!552904 (= e!318988 e!318985)))

(declare-fun res!345462 () Bool)

(assert (=> b!552904 (=> (not res!345462) (not e!318985))))

(declare-datatypes ((SeekEntryResult!5166 0))(
  ( (MissingZero!5166 (index!22891 (_ BitVec 32))) (Found!5166 (index!22892 (_ BitVec 32))) (Intermediate!5166 (undefined!5978 Bool) (index!22893 (_ BitVec 32)) (x!51851 (_ BitVec 32))) (Undefined!5166) (MissingVacant!5166 (index!22894 (_ BitVec 32))) )
))
(declare-fun lt!251327 () SeekEntryResult!5166)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552904 (= res!345462 (or (= lt!251327 (MissingZero!5166 i!1132)) (= lt!251327 (MissingVacant!5166 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34809 (_ BitVec 32)) SeekEntryResult!5166)

(assert (=> b!552904 (= lt!251327 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552905 () Bool)

(declare-fun res!345467 () Bool)

(assert (=> b!552905 (=> (not res!345467) (not e!318985))))

(declare-datatypes ((List!10843 0))(
  ( (Nil!10840) (Cons!10839 (h!11824 (_ BitVec 64)) (t!17079 List!10843)) )
))
(declare-fun arrayNoDuplicates!0 (array!34809 (_ BitVec 32) List!10843) Bool)

(assert (=> b!552905 (= res!345467 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10840))))

(declare-fun b!552906 () Bool)

(declare-fun res!345466 () Bool)

(assert (=> b!552906 (=> (not res!345466) (not e!318985))))

(assert (=> b!552906 (= res!345466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552907 () Bool)

(assert (=> b!552907 (= e!318987 (= (seekEntryOrOpen!0 (select (arr!16710 a!3118) j!142) a!3118 mask!3119) (Found!5166 j!142)))))

(declare-fun b!552908 () Bool)

(declare-fun res!345468 () Bool)

(assert (=> b!552908 (=> (not res!345468) (not e!318985))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34809 (_ BitVec 32)) SeekEntryResult!5166)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552908 (= res!345468 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16710 a!3118) j!142) mask!3119) (select (arr!16710 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16710 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16710 a!3118) i!1132 k!1914) j!142) (array!34810 (store (arr!16710 a!3118) i!1132 k!1914) (size!17074 a!3118)) mask!3119)))))

(declare-fun res!345461 () Bool)

(assert (=> start!50630 (=> (not res!345461) (not e!318988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50630 (= res!345461 (validMask!0 mask!3119))))

(assert (=> start!50630 e!318988))

(assert (=> start!50630 true))

(declare-fun array_inv!12484 (array!34809) Bool)

(assert (=> start!50630 (array_inv!12484 a!3118)))

(declare-fun b!552902 () Bool)

(declare-fun res!345470 () Bool)

(assert (=> b!552902 (=> (not res!345470) (not e!318988))))

(assert (=> b!552902 (= res!345470 (and (= (size!17074 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17074 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17074 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50630 res!345461) b!552902))

(assert (= (and b!552902 res!345470) b!552903))

(assert (= (and b!552903 res!345464) b!552901))

(assert (= (and b!552901 res!345469) b!552900))

(assert (= (and b!552900 res!345463) b!552904))

(assert (= (and b!552904 res!345462) b!552906))

(assert (= (and b!552906 res!345466) b!552905))

(assert (= (and b!552905 res!345467) b!552908))

(assert (= (and b!552908 res!345468) b!552899))

(assert (= (and b!552899 res!345465) b!552907))

(declare-fun m!529951 () Bool)

(assert (=> b!552905 m!529951))

(declare-fun m!529953 () Bool)

(assert (=> b!552906 m!529953))

(declare-fun m!529955 () Bool)

(assert (=> b!552901 m!529955))

(declare-fun m!529957 () Bool)

(assert (=> b!552908 m!529957))

(declare-fun m!529959 () Bool)

(assert (=> b!552908 m!529959))

(assert (=> b!552908 m!529957))

(declare-fun m!529961 () Bool)

(assert (=> b!552908 m!529961))

(declare-fun m!529963 () Bool)

(assert (=> b!552908 m!529963))

(assert (=> b!552908 m!529961))

(declare-fun m!529965 () Bool)

(assert (=> b!552908 m!529965))

(assert (=> b!552908 m!529959))

(assert (=> b!552908 m!529957))

(declare-fun m!529967 () Bool)

(assert (=> b!552908 m!529967))

(declare-fun m!529969 () Bool)

(assert (=> b!552908 m!529969))

(assert (=> b!552908 m!529961))

(assert (=> b!552908 m!529963))

(declare-fun m!529971 () Bool)

(assert (=> b!552899 m!529971))

(declare-fun m!529973 () Bool)

(assert (=> b!552899 m!529973))

(declare-fun m!529975 () Bool)

(assert (=> b!552904 m!529975))

(declare-fun m!529977 () Bool)

(assert (=> b!552900 m!529977))

(assert (=> b!552907 m!529957))

(assert (=> b!552907 m!529957))

(declare-fun m!529979 () Bool)

(assert (=> b!552907 m!529979))

(assert (=> b!552903 m!529957))

(assert (=> b!552903 m!529957))

(declare-fun m!529981 () Bool)

(assert (=> b!552903 m!529981))

(declare-fun m!529983 () Bool)

(assert (=> start!50630 m!529983))

(declare-fun m!529985 () Bool)

(assert (=> start!50630 m!529985))

(push 1)

