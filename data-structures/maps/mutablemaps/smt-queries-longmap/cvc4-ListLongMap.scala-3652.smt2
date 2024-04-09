; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50430 () Bool)

(assert start!50430)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!318100 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!551108 () Bool)

(declare-datatypes ((array!34723 0))(
  ( (array!34724 (arr!16670 (Array (_ BitVec 32) (_ BitVec 64))) (size!17034 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34723)

(declare-datatypes ((SeekEntryResult!5126 0))(
  ( (MissingZero!5126 (index!22731 (_ BitVec 32))) (Found!5126 (index!22732 (_ BitVec 32))) (Intermediate!5126 (undefined!5938 Bool) (index!22733 (_ BitVec 32)) (x!51687 (_ BitVec 32))) (Undefined!5126) (MissingVacant!5126 (index!22734 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34723 (_ BitVec 32)) SeekEntryResult!5126)

(assert (=> b!551108 (= e!318100 (= (seekEntryOrOpen!0 (select (arr!16670 a!3118) j!142) a!3118 mask!3119) (Found!5126 j!142)))))

(declare-fun b!551109 () Bool)

(declare-fun res!344037 () Bool)

(declare-fun e!318098 () Bool)

(assert (=> b!551109 (=> (not res!344037) (not e!318098))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34723 (_ BitVec 32)) SeekEntryResult!5126)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551109 (= res!344037 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16670 a!3118) j!142) mask!3119) (select (arr!16670 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16670 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16670 a!3118) i!1132 k!1914) j!142) (array!34724 (store (arr!16670 a!3118) i!1132 k!1914) (size!17034 a!3118)) mask!3119)))))

(declare-fun b!551110 () Bool)

(declare-fun res!344041 () Bool)

(declare-fun e!318099 () Bool)

(assert (=> b!551110 (=> (not res!344041) (not e!318099))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551110 (= res!344041 (validKeyInArray!0 k!1914))))

(declare-fun res!344040 () Bool)

(assert (=> start!50430 (=> (not res!344040) (not e!318099))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50430 (= res!344040 (validMask!0 mask!3119))))

(assert (=> start!50430 e!318099))

(assert (=> start!50430 true))

(declare-fun array_inv!12444 (array!34723) Bool)

(assert (=> start!50430 (array_inv!12444 a!3118)))

(declare-fun b!551111 () Bool)

(assert (=> b!551111 (= e!318098 (not true))))

(assert (=> b!551111 e!318100))

(declare-fun res!344043 () Bool)

(assert (=> b!551111 (=> (not res!344043) (not e!318100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34723 (_ BitVec 32)) Bool)

(assert (=> b!551111 (= res!344043 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17026 0))(
  ( (Unit!17027) )
))
(declare-fun lt!250765 () Unit!17026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34723 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17026)

(assert (=> b!551111 (= lt!250765 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551112 () Bool)

(assert (=> b!551112 (= e!318099 e!318098)))

(declare-fun res!344045 () Bool)

(assert (=> b!551112 (=> (not res!344045) (not e!318098))))

(declare-fun lt!250766 () SeekEntryResult!5126)

(assert (=> b!551112 (= res!344045 (or (= lt!250766 (MissingZero!5126 i!1132)) (= lt!250766 (MissingVacant!5126 i!1132))))))

(assert (=> b!551112 (= lt!250766 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551113 () Bool)

(declare-fun res!344039 () Bool)

(assert (=> b!551113 (=> (not res!344039) (not e!318099))))

(declare-fun arrayContainsKey!0 (array!34723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551113 (= res!344039 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551114 () Bool)

(declare-fun res!344042 () Bool)

(assert (=> b!551114 (=> (not res!344042) (not e!318099))))

(assert (=> b!551114 (= res!344042 (validKeyInArray!0 (select (arr!16670 a!3118) j!142)))))

(declare-fun b!551115 () Bool)

(declare-fun res!344036 () Bool)

(assert (=> b!551115 (=> (not res!344036) (not e!318098))))

(assert (=> b!551115 (= res!344036 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551116 () Bool)

(declare-fun res!344044 () Bool)

(assert (=> b!551116 (=> (not res!344044) (not e!318098))))

(declare-datatypes ((List!10803 0))(
  ( (Nil!10800) (Cons!10799 (h!11778 (_ BitVec 64)) (t!17039 List!10803)) )
))
(declare-fun arrayNoDuplicates!0 (array!34723 (_ BitVec 32) List!10803) Bool)

(assert (=> b!551116 (= res!344044 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10800))))

(declare-fun b!551117 () Bool)

(declare-fun res!344038 () Bool)

(assert (=> b!551117 (=> (not res!344038) (not e!318099))))

(assert (=> b!551117 (= res!344038 (and (= (size!17034 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17034 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17034 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!50430 res!344040) b!551117))

(assert (= (and b!551117 res!344038) b!551114))

(assert (= (and b!551114 res!344042) b!551110))

(assert (= (and b!551110 res!344041) b!551113))

(assert (= (and b!551113 res!344039) b!551112))

(assert (= (and b!551112 res!344045) b!551115))

(assert (= (and b!551115 res!344036) b!551116))

(assert (= (and b!551116 res!344044) b!551109))

(assert (= (and b!551109 res!344037) b!551111))

(assert (= (and b!551111 res!344043) b!551108))

(declare-fun m!528103 () Bool)

(assert (=> b!551109 m!528103))

(declare-fun m!528105 () Bool)

(assert (=> b!551109 m!528105))

(assert (=> b!551109 m!528103))

(declare-fun m!528107 () Bool)

(assert (=> b!551109 m!528107))

(declare-fun m!528109 () Bool)

(assert (=> b!551109 m!528109))

(assert (=> b!551109 m!528107))

(declare-fun m!528111 () Bool)

(assert (=> b!551109 m!528111))

(assert (=> b!551109 m!528105))

(assert (=> b!551109 m!528103))

(declare-fun m!528113 () Bool)

(assert (=> b!551109 m!528113))

(declare-fun m!528115 () Bool)

(assert (=> b!551109 m!528115))

(assert (=> b!551109 m!528107))

(assert (=> b!551109 m!528109))

(declare-fun m!528117 () Bool)

(assert (=> b!551112 m!528117))

(declare-fun m!528119 () Bool)

(assert (=> b!551116 m!528119))

(declare-fun m!528121 () Bool)

(assert (=> start!50430 m!528121))

(declare-fun m!528123 () Bool)

(assert (=> start!50430 m!528123))

(declare-fun m!528125 () Bool)

(assert (=> b!551115 m!528125))

(assert (=> b!551108 m!528103))

(assert (=> b!551108 m!528103))

(declare-fun m!528127 () Bool)

(assert (=> b!551108 m!528127))

(declare-fun m!528129 () Bool)

(assert (=> b!551110 m!528129))

(assert (=> b!551114 m!528103))

(assert (=> b!551114 m!528103))

(declare-fun m!528131 () Bool)

(assert (=> b!551114 m!528131))

(declare-fun m!528133 () Bool)

(assert (=> b!551111 m!528133))

(declare-fun m!528135 () Bool)

(assert (=> b!551111 m!528135))

(declare-fun m!528137 () Bool)

(assert (=> b!551113 m!528137))

(push 1)

