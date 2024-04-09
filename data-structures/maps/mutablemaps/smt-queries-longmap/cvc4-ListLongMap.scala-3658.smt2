; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50526 () Bool)

(assert start!50526)

(declare-fun res!344684 () Bool)

(declare-fun e!318500 () Bool)

(assert (=> start!50526 (=> (not res!344684) (not e!318500))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50526 (= res!344684 (validMask!0 mask!3119))))

(assert (=> start!50526 e!318500))

(assert (=> start!50526 true))

(declare-datatypes ((array!34762 0))(
  ( (array!34763 (arr!16688 (Array (_ BitVec 32) (_ BitVec 64))) (size!17052 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34762)

(declare-fun array_inv!12462 (array!34762) Bool)

(assert (=> start!50526 (array_inv!12462 a!3118)))

(declare-fun b!551939 () Bool)

(declare-fun res!344688 () Bool)

(assert (=> b!551939 (=> (not res!344688) (not e!318500))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!551939 (= res!344688 (and (= (size!17052 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17052 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17052 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551940 () Bool)

(declare-fun e!318501 () Bool)

(assert (=> b!551940 (= e!318501 (not true))))

(declare-fun e!318502 () Bool)

(assert (=> b!551940 e!318502))

(declare-fun res!344686 () Bool)

(assert (=> b!551940 (=> (not res!344686) (not e!318502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34762 (_ BitVec 32)) Bool)

(assert (=> b!551940 (= res!344686 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17062 0))(
  ( (Unit!17063) )
))
(declare-fun lt!251002 () Unit!17062)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34762 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17062)

(assert (=> b!551940 (= lt!251002 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551941 () Bool)

(declare-fun res!344691 () Bool)

(assert (=> b!551941 (=> (not res!344691) (not e!318501))))

(assert (=> b!551941 (= res!344691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551942 () Bool)

(declare-datatypes ((SeekEntryResult!5144 0))(
  ( (MissingZero!5144 (index!22803 (_ BitVec 32))) (Found!5144 (index!22804 (_ BitVec 32))) (Intermediate!5144 (undefined!5956 Bool) (index!22805 (_ BitVec 32)) (x!51759 (_ BitVec 32))) (Undefined!5144) (MissingVacant!5144 (index!22806 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34762 (_ BitVec 32)) SeekEntryResult!5144)

(assert (=> b!551942 (= e!318502 (= (seekEntryOrOpen!0 (select (arr!16688 a!3118) j!142) a!3118 mask!3119) (Found!5144 j!142)))))

(declare-fun b!551943 () Bool)

(assert (=> b!551943 (= e!318500 e!318501)))

(declare-fun res!344687 () Bool)

(assert (=> b!551943 (=> (not res!344687) (not e!318501))))

(declare-fun lt!251003 () SeekEntryResult!5144)

(assert (=> b!551943 (= res!344687 (or (= lt!251003 (MissingZero!5144 i!1132)) (= lt!251003 (MissingVacant!5144 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!551943 (= lt!251003 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551944 () Bool)

(declare-fun res!344685 () Bool)

(assert (=> b!551944 (=> (not res!344685) (not e!318501))))

(declare-datatypes ((List!10821 0))(
  ( (Nil!10818) (Cons!10817 (h!11799 (_ BitVec 64)) (t!17057 List!10821)) )
))
(declare-fun arrayNoDuplicates!0 (array!34762 (_ BitVec 32) List!10821) Bool)

(assert (=> b!551944 (= res!344685 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10818))))

(declare-fun b!551945 () Bool)

(declare-fun res!344689 () Bool)

(assert (=> b!551945 (=> (not res!344689) (not e!318500))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551945 (= res!344689 (validKeyInArray!0 (select (arr!16688 a!3118) j!142)))))

(declare-fun b!551946 () Bool)

(declare-fun res!344690 () Bool)

(assert (=> b!551946 (=> (not res!344690) (not e!318500))))

(assert (=> b!551946 (= res!344690 (validKeyInArray!0 k!1914))))

(declare-fun b!551947 () Bool)

(declare-fun res!344692 () Bool)

(assert (=> b!551947 (=> (not res!344692) (not e!318501))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34762 (_ BitVec 32)) SeekEntryResult!5144)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551947 (= res!344692 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16688 a!3118) j!142) mask!3119) (select (arr!16688 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16688 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16688 a!3118) i!1132 k!1914) j!142) (array!34763 (store (arr!16688 a!3118) i!1132 k!1914) (size!17052 a!3118)) mask!3119)))))

(declare-fun b!551948 () Bool)

(declare-fun res!344693 () Bool)

(assert (=> b!551948 (=> (not res!344693) (not e!318500))))

(declare-fun arrayContainsKey!0 (array!34762 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551948 (= res!344693 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50526 res!344684) b!551939))

(assert (= (and b!551939 res!344688) b!551945))

(assert (= (and b!551945 res!344689) b!551946))

(assert (= (and b!551946 res!344690) b!551948))

(assert (= (and b!551948 res!344693) b!551943))

(assert (= (and b!551943 res!344687) b!551941))

(assert (= (and b!551941 res!344691) b!551944))

(assert (= (and b!551944 res!344685) b!551947))

(assert (= (and b!551947 res!344692) b!551940))

(assert (= (and b!551940 res!344686) b!551942))

(declare-fun m!528949 () Bool)

(assert (=> b!551944 m!528949))

(declare-fun m!528951 () Bool)

(assert (=> b!551941 m!528951))

(declare-fun m!528953 () Bool)

(assert (=> b!551945 m!528953))

(assert (=> b!551945 m!528953))

(declare-fun m!528955 () Bool)

(assert (=> b!551945 m!528955))

(declare-fun m!528957 () Bool)

(assert (=> b!551940 m!528957))

(declare-fun m!528959 () Bool)

(assert (=> b!551940 m!528959))

(declare-fun m!528961 () Bool)

(assert (=> b!551948 m!528961))

(assert (=> b!551947 m!528953))

(declare-fun m!528963 () Bool)

(assert (=> b!551947 m!528963))

(assert (=> b!551947 m!528953))

(declare-fun m!528965 () Bool)

(assert (=> b!551947 m!528965))

(declare-fun m!528967 () Bool)

(assert (=> b!551947 m!528967))

(assert (=> b!551947 m!528965))

(declare-fun m!528969 () Bool)

(assert (=> b!551947 m!528969))

(assert (=> b!551947 m!528963))

(assert (=> b!551947 m!528953))

(declare-fun m!528971 () Bool)

(assert (=> b!551947 m!528971))

(declare-fun m!528973 () Bool)

(assert (=> b!551947 m!528973))

(assert (=> b!551947 m!528965))

(assert (=> b!551947 m!528967))

(declare-fun m!528975 () Bool)

(assert (=> b!551946 m!528975))

(assert (=> b!551942 m!528953))

(assert (=> b!551942 m!528953))

(declare-fun m!528977 () Bool)

(assert (=> b!551942 m!528977))

(declare-fun m!528979 () Bool)

(assert (=> start!50526 m!528979))

(declare-fun m!528981 () Bool)

(assert (=> start!50526 m!528981))

(declare-fun m!528983 () Bool)

(assert (=> b!551943 m!528983))

(push 1)

