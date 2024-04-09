; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50766 () Bool)

(assert start!50766)

(declare-fun b!554895 () Bool)

(declare-fun res!347460 () Bool)

(declare-fun e!319876 () Bool)

(assert (=> b!554895 (=> (not res!347460) (not e!319876))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554895 (= res!347460 (validKeyInArray!0 k!1914))))

(declare-fun b!554896 () Bool)

(declare-fun res!347458 () Bool)

(assert (=> b!554896 (=> (not res!347458) (not e!319876))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34945 0))(
  ( (array!34946 (arr!16778 (Array (_ BitVec 32) (_ BitVec 64))) (size!17142 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34945)

(assert (=> b!554896 (= res!347458 (and (= (size!17142 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17142 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17142 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554897 () Bool)

(declare-fun e!319874 () Bool)

(assert (=> b!554897 (= e!319874 (not true))))

(declare-datatypes ((SeekEntryResult!5234 0))(
  ( (MissingZero!5234 (index!23163 (_ BitVec 32))) (Found!5234 (index!23164 (_ BitVec 32))) (Intermediate!5234 (undefined!6046 Bool) (index!23165 (_ BitVec 32)) (x!52095 (_ BitVec 32))) (Undefined!5234) (MissingVacant!5234 (index!23166 (_ BitVec 32))) )
))
(declare-fun lt!252144 () SeekEntryResult!5234)

(declare-fun lt!252148 () SeekEntryResult!5234)

(assert (=> b!554897 (and (= lt!252144 (Found!5234 j!142)) (or (undefined!6046 lt!252148) (not (is-Intermediate!5234 lt!252148)) (= (select (arr!16778 a!3118) (index!23165 lt!252148)) (select (arr!16778 a!3118) j!142)) (not (= (select (arr!16778 a!3118) (index!23165 lt!252148)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252144 (MissingZero!5234 (index!23165 lt!252148)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34945 (_ BitVec 32)) SeekEntryResult!5234)

(assert (=> b!554897 (= lt!252144 (seekEntryOrOpen!0 (select (arr!16778 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34945 (_ BitVec 32)) Bool)

(assert (=> b!554897 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17242 0))(
  ( (Unit!17243) )
))
(declare-fun lt!252145 () Unit!17242)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34945 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17242)

(assert (=> b!554897 (= lt!252145 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554898 () Bool)

(declare-fun e!319875 () Bool)

(assert (=> b!554898 (= e!319875 e!319874)))

(declare-fun res!347457 () Bool)

(assert (=> b!554898 (=> (not res!347457) (not e!319874))))

(declare-fun lt!252146 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34945 (_ BitVec 32)) SeekEntryResult!5234)

(assert (=> b!554898 (= res!347457 (= lt!252148 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252146 (select (store (arr!16778 a!3118) i!1132 k!1914) j!142) (array!34946 (store (arr!16778 a!3118) i!1132 k!1914) (size!17142 a!3118)) mask!3119)))))

(declare-fun lt!252149 () (_ BitVec 32))

(assert (=> b!554898 (= lt!252148 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252149 (select (arr!16778 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554898 (= lt!252146 (toIndex!0 (select (store (arr!16778 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554898 (= lt!252149 (toIndex!0 (select (arr!16778 a!3118) j!142) mask!3119))))

(declare-fun res!347463 () Bool)

(assert (=> start!50766 (=> (not res!347463) (not e!319876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50766 (= res!347463 (validMask!0 mask!3119))))

(assert (=> start!50766 e!319876))

(assert (=> start!50766 true))

(declare-fun array_inv!12552 (array!34945) Bool)

(assert (=> start!50766 (array_inv!12552 a!3118)))

(declare-fun b!554899 () Bool)

(declare-fun res!347465 () Bool)

(assert (=> b!554899 (=> (not res!347465) (not e!319876))))

(declare-fun arrayContainsKey!0 (array!34945 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554899 (= res!347465 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554900 () Bool)

(assert (=> b!554900 (= e!319876 e!319875)))

(declare-fun res!347459 () Bool)

(assert (=> b!554900 (=> (not res!347459) (not e!319875))))

(declare-fun lt!252147 () SeekEntryResult!5234)

(assert (=> b!554900 (= res!347459 (or (= lt!252147 (MissingZero!5234 i!1132)) (= lt!252147 (MissingVacant!5234 i!1132))))))

(assert (=> b!554900 (= lt!252147 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554901 () Bool)

(declare-fun res!347461 () Bool)

(assert (=> b!554901 (=> (not res!347461) (not e!319875))))

(declare-datatypes ((List!10911 0))(
  ( (Nil!10908) (Cons!10907 (h!11892 (_ BitVec 64)) (t!17147 List!10911)) )
))
(declare-fun arrayNoDuplicates!0 (array!34945 (_ BitVec 32) List!10911) Bool)

(assert (=> b!554901 (= res!347461 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10908))))

(declare-fun b!554902 () Bool)

(declare-fun res!347462 () Bool)

(assert (=> b!554902 (=> (not res!347462) (not e!319876))))

(assert (=> b!554902 (= res!347462 (validKeyInArray!0 (select (arr!16778 a!3118) j!142)))))

(declare-fun b!554903 () Bool)

(declare-fun res!347464 () Bool)

(assert (=> b!554903 (=> (not res!347464) (not e!319875))))

(assert (=> b!554903 (= res!347464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50766 res!347463) b!554896))

(assert (= (and b!554896 res!347458) b!554902))

(assert (= (and b!554902 res!347462) b!554895))

(assert (= (and b!554895 res!347460) b!554899))

(assert (= (and b!554899 res!347465) b!554900))

(assert (= (and b!554900 res!347459) b!554903))

(assert (= (and b!554903 res!347464) b!554901))

(assert (= (and b!554901 res!347461) b!554898))

(assert (= (and b!554898 res!347457) b!554897))

(declare-fun m!532475 () Bool)

(assert (=> b!554900 m!532475))

(declare-fun m!532477 () Bool)

(assert (=> b!554898 m!532477))

(declare-fun m!532479 () Bool)

(assert (=> b!554898 m!532479))

(assert (=> b!554898 m!532477))

(declare-fun m!532481 () Bool)

(assert (=> b!554898 m!532481))

(assert (=> b!554898 m!532477))

(declare-fun m!532483 () Bool)

(assert (=> b!554898 m!532483))

(declare-fun m!532485 () Bool)

(assert (=> b!554898 m!532485))

(assert (=> b!554898 m!532481))

(declare-fun m!532487 () Bool)

(assert (=> b!554898 m!532487))

(assert (=> b!554898 m!532481))

(declare-fun m!532489 () Bool)

(assert (=> b!554898 m!532489))

(assert (=> b!554902 m!532477))

(assert (=> b!554902 m!532477))

(declare-fun m!532491 () Bool)

(assert (=> b!554902 m!532491))

(declare-fun m!532493 () Bool)

(assert (=> b!554901 m!532493))

(declare-fun m!532495 () Bool)

(assert (=> b!554903 m!532495))

(declare-fun m!532497 () Bool)

(assert (=> b!554895 m!532497))

(assert (=> b!554897 m!532477))

(declare-fun m!532499 () Bool)

(assert (=> b!554897 m!532499))

(declare-fun m!532501 () Bool)

(assert (=> b!554897 m!532501))

(declare-fun m!532503 () Bool)

(assert (=> b!554897 m!532503))

(assert (=> b!554897 m!532477))

(declare-fun m!532505 () Bool)

(assert (=> b!554897 m!532505))

(declare-fun m!532507 () Bool)

(assert (=> b!554899 m!532507))

(declare-fun m!532509 () Bool)

(assert (=> start!50766 m!532509))

(declare-fun m!532511 () Bool)

(assert (=> start!50766 m!532511))

(push 1)

