; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50432 () Bool)

(assert start!50432)

(declare-fun b!551138 () Bool)

(declare-fun e!318112 () Bool)

(assert (=> b!551138 (= e!318112 (not true))))

(declare-fun e!318111 () Bool)

(assert (=> b!551138 e!318111))

(declare-fun res!344070 () Bool)

(assert (=> b!551138 (=> (not res!344070) (not e!318111))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34725 0))(
  ( (array!34726 (arr!16671 (Array (_ BitVec 32) (_ BitVec 64))) (size!17035 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34725)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34725 (_ BitVec 32)) Bool)

(assert (=> b!551138 (= res!344070 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17028 0))(
  ( (Unit!17029) )
))
(declare-fun lt!250772 () Unit!17028)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34725 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17028)

(assert (=> b!551138 (= lt!250772 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551139 () Bool)

(declare-datatypes ((SeekEntryResult!5127 0))(
  ( (MissingZero!5127 (index!22735 (_ BitVec 32))) (Found!5127 (index!22736 (_ BitVec 32))) (Intermediate!5127 (undefined!5939 Bool) (index!22737 (_ BitVec 32)) (x!51696 (_ BitVec 32))) (Undefined!5127) (MissingVacant!5127 (index!22738 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34725 (_ BitVec 32)) SeekEntryResult!5127)

(assert (=> b!551139 (= e!318111 (= (seekEntryOrOpen!0 (select (arr!16671 a!3118) j!142) a!3118 mask!3119) (Found!5127 j!142)))))

(declare-fun b!551140 () Bool)

(declare-fun res!344072 () Bool)

(declare-fun e!318110 () Bool)

(assert (=> b!551140 (=> (not res!344072) (not e!318110))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34725 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551140 (= res!344072 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551141 () Bool)

(declare-fun res!344071 () Bool)

(assert (=> b!551141 (=> (not res!344071) (not e!318112))))

(assert (=> b!551141 (= res!344071 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!551142 () Bool)

(declare-fun res!344073 () Bool)

(assert (=> b!551142 (=> (not res!344073) (not e!318112))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34725 (_ BitVec 32)) SeekEntryResult!5127)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551142 (= res!344073 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16671 a!3118) j!142) mask!3119) (select (arr!16671 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16671 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16671 a!3118) i!1132 k!1914) j!142) (array!34726 (store (arr!16671 a!3118) i!1132 k!1914) (size!17035 a!3118)) mask!3119)))))

(declare-fun b!551143 () Bool)

(assert (=> b!551143 (= e!318110 e!318112)))

(declare-fun res!344066 () Bool)

(assert (=> b!551143 (=> (not res!344066) (not e!318112))))

(declare-fun lt!250771 () SeekEntryResult!5127)

(assert (=> b!551143 (= res!344066 (or (= lt!250771 (MissingZero!5127 i!1132)) (= lt!250771 (MissingVacant!5127 i!1132))))))

(assert (=> b!551143 (= lt!250771 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!344068 () Bool)

(assert (=> start!50432 (=> (not res!344068) (not e!318110))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50432 (= res!344068 (validMask!0 mask!3119))))

(assert (=> start!50432 e!318110))

(assert (=> start!50432 true))

(declare-fun array_inv!12445 (array!34725) Bool)

(assert (=> start!50432 (array_inv!12445 a!3118)))

(declare-fun b!551144 () Bool)

(declare-fun res!344075 () Bool)

(assert (=> b!551144 (=> (not res!344075) (not e!318110))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551144 (= res!344075 (validKeyInArray!0 k!1914))))

(declare-fun b!551145 () Bool)

(declare-fun res!344069 () Bool)

(assert (=> b!551145 (=> (not res!344069) (not e!318110))))

(assert (=> b!551145 (= res!344069 (and (= (size!17035 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17035 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17035 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551146 () Bool)

(declare-fun res!344067 () Bool)

(assert (=> b!551146 (=> (not res!344067) (not e!318112))))

(declare-datatypes ((List!10804 0))(
  ( (Nil!10801) (Cons!10800 (h!11779 (_ BitVec 64)) (t!17040 List!10804)) )
))
(declare-fun arrayNoDuplicates!0 (array!34725 (_ BitVec 32) List!10804) Bool)

(assert (=> b!551146 (= res!344067 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10801))))

(declare-fun b!551147 () Bool)

(declare-fun res!344074 () Bool)

(assert (=> b!551147 (=> (not res!344074) (not e!318110))))

(assert (=> b!551147 (= res!344074 (validKeyInArray!0 (select (arr!16671 a!3118) j!142)))))

(assert (= (and start!50432 res!344068) b!551145))

(assert (= (and b!551145 res!344069) b!551147))

(assert (= (and b!551147 res!344074) b!551144))

(assert (= (and b!551144 res!344075) b!551140))

(assert (= (and b!551140 res!344072) b!551143))

(assert (= (and b!551143 res!344066) b!551141))

(assert (= (and b!551141 res!344071) b!551146))

(assert (= (and b!551146 res!344067) b!551142))

(assert (= (and b!551142 res!344073) b!551138))

(assert (= (and b!551138 res!344070) b!551139))

(declare-fun m!528139 () Bool)

(assert (=> b!551141 m!528139))

(declare-fun m!528141 () Bool)

(assert (=> b!551143 m!528141))

(declare-fun m!528143 () Bool)

(assert (=> b!551147 m!528143))

(assert (=> b!551147 m!528143))

(declare-fun m!528145 () Bool)

(assert (=> b!551147 m!528145))

(declare-fun m!528147 () Bool)

(assert (=> b!551140 m!528147))

(assert (=> b!551142 m!528143))

(declare-fun m!528149 () Bool)

(assert (=> b!551142 m!528149))

(assert (=> b!551142 m!528143))

(declare-fun m!528151 () Bool)

(assert (=> b!551142 m!528151))

(declare-fun m!528153 () Bool)

(assert (=> b!551142 m!528153))

(assert (=> b!551142 m!528151))

(declare-fun m!528155 () Bool)

(assert (=> b!551142 m!528155))

(assert (=> b!551142 m!528149))

(assert (=> b!551142 m!528143))

(declare-fun m!528157 () Bool)

(assert (=> b!551142 m!528157))

(declare-fun m!528159 () Bool)

(assert (=> b!551142 m!528159))

(assert (=> b!551142 m!528151))

(assert (=> b!551142 m!528153))

(declare-fun m!528161 () Bool)

(assert (=> start!50432 m!528161))

(declare-fun m!528163 () Bool)

(assert (=> start!50432 m!528163))

(declare-fun m!528165 () Bool)

(assert (=> b!551144 m!528165))

(declare-fun m!528167 () Bool)

(assert (=> b!551138 m!528167))

(declare-fun m!528169 () Bool)

(assert (=> b!551138 m!528169))

(declare-fun m!528171 () Bool)

(assert (=> b!551146 m!528171))

(assert (=> b!551139 m!528143))

(assert (=> b!551139 m!528143))

(declare-fun m!528173 () Bool)

(assert (=> b!551139 m!528173))

(push 1)

