; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50272 () Bool)

(assert start!50272)

(declare-fun res!343256 () Bool)

(declare-fun e!317489 () Bool)

(assert (=> start!50272 (=> (not res!343256) (not e!317489))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50272 (= res!343256 (validMask!0 mask!3119))))

(assert (=> start!50272 e!317489))

(assert (=> start!50272 true))

(declare-datatypes ((array!34679 0))(
  ( (array!34680 (arr!16651 (Array (_ BitVec 32) (_ BitVec 64))) (size!17015 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34679)

(declare-fun array_inv!12425 (array!34679) Bool)

(assert (=> start!50272 (array_inv!12425 a!3118)))

(declare-fun b!549956 () Bool)

(declare-fun res!343255 () Bool)

(declare-fun e!317490 () Bool)

(assert (=> b!549956 (=> (not res!343255) (not e!317490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34679 (_ BitVec 32)) Bool)

(assert (=> b!549956 (= res!343255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549957 () Bool)

(assert (=> b!549957 (= e!317490 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(declare-fun e!317488 () Bool)

(assert (=> b!549957 e!317488))

(declare-fun res!343258 () Bool)

(assert (=> b!549957 (=> (not res!343258) (not e!317488))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549957 (= res!343258 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!16988 0))(
  ( (Unit!16989) )
))
(declare-fun lt!250384 () Unit!16988)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34679 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16988)

(assert (=> b!549957 (= lt!250384 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549958 () Bool)

(declare-fun res!343257 () Bool)

(assert (=> b!549958 (=> (not res!343257) (not e!317489))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549958 (= res!343257 (validKeyInArray!0 k0!1914))))

(declare-fun b!549959 () Bool)

(declare-datatypes ((SeekEntryResult!5107 0))(
  ( (MissingZero!5107 (index!22655 (_ BitVec 32))) (Found!5107 (index!22656 (_ BitVec 32))) (Intermediate!5107 (undefined!5919 Bool) (index!22657 (_ BitVec 32)) (x!51608 (_ BitVec 32))) (Undefined!5107) (MissingVacant!5107 (index!22658 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34679 (_ BitVec 32)) SeekEntryResult!5107)

(assert (=> b!549959 (= e!317488 (= (seekEntryOrOpen!0 (select (arr!16651 a!3118) j!142) a!3118 mask!3119) (Found!5107 j!142)))))

(declare-fun b!549960 () Bool)

(declare-fun res!343253 () Bool)

(assert (=> b!549960 (=> (not res!343253) (not e!317489))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549960 (= res!343253 (and (= (size!17015 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17015 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17015 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549961 () Bool)

(declare-fun res!343250 () Bool)

(assert (=> b!549961 (=> (not res!343250) (not e!317489))))

(assert (=> b!549961 (= res!343250 (validKeyInArray!0 (select (arr!16651 a!3118) j!142)))))

(declare-fun b!549962 () Bool)

(declare-fun res!343252 () Bool)

(assert (=> b!549962 (=> (not res!343252) (not e!317490))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34679 (_ BitVec 32)) SeekEntryResult!5107)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549962 (= res!343252 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16651 a!3118) j!142) mask!3119) (select (arr!16651 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16651 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16651 a!3118) i!1132 k0!1914) j!142) (array!34680 (store (arr!16651 a!3118) i!1132 k0!1914) (size!17015 a!3118)) mask!3119)))))

(declare-fun b!549963 () Bool)

(declare-fun res!343254 () Bool)

(assert (=> b!549963 (=> (not res!343254) (not e!317490))))

(declare-datatypes ((List!10784 0))(
  ( (Nil!10781) (Cons!10780 (h!11753 (_ BitVec 64)) (t!17020 List!10784)) )
))
(declare-fun arrayNoDuplicates!0 (array!34679 (_ BitVec 32) List!10784) Bool)

(assert (=> b!549963 (= res!343254 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10781))))

(declare-fun b!549964 () Bool)

(assert (=> b!549964 (= e!317489 e!317490)))

(declare-fun res!343259 () Bool)

(assert (=> b!549964 (=> (not res!343259) (not e!317490))))

(declare-fun lt!250385 () SeekEntryResult!5107)

(assert (=> b!549964 (= res!343259 (or (= lt!250385 (MissingZero!5107 i!1132)) (= lt!250385 (MissingVacant!5107 i!1132))))))

(assert (=> b!549964 (= lt!250385 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549965 () Bool)

(declare-fun res!343251 () Bool)

(assert (=> b!549965 (=> (not res!343251) (not e!317489))))

(declare-fun arrayContainsKey!0 (array!34679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549965 (= res!343251 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50272 res!343256) b!549960))

(assert (= (and b!549960 res!343253) b!549961))

(assert (= (and b!549961 res!343250) b!549958))

(assert (= (and b!549958 res!343257) b!549965))

(assert (= (and b!549965 res!343251) b!549964))

(assert (= (and b!549964 res!343259) b!549956))

(assert (= (and b!549956 res!343255) b!549963))

(assert (= (and b!549963 res!343254) b!549962))

(assert (= (and b!549962 res!343252) b!549957))

(assert (= (and b!549957 res!343258) b!549959))

(declare-fun m!527017 () Bool)

(assert (=> b!549964 m!527017))

(declare-fun m!527019 () Bool)

(assert (=> b!549957 m!527019))

(declare-fun m!527021 () Bool)

(assert (=> b!549957 m!527021))

(declare-fun m!527023 () Bool)

(assert (=> b!549959 m!527023))

(assert (=> b!549959 m!527023))

(declare-fun m!527025 () Bool)

(assert (=> b!549959 m!527025))

(assert (=> b!549962 m!527023))

(declare-fun m!527027 () Bool)

(assert (=> b!549962 m!527027))

(assert (=> b!549962 m!527023))

(declare-fun m!527029 () Bool)

(assert (=> b!549962 m!527029))

(declare-fun m!527031 () Bool)

(assert (=> b!549962 m!527031))

(assert (=> b!549962 m!527029))

(declare-fun m!527033 () Bool)

(assert (=> b!549962 m!527033))

(assert (=> b!549962 m!527027))

(assert (=> b!549962 m!527023))

(declare-fun m!527035 () Bool)

(assert (=> b!549962 m!527035))

(declare-fun m!527037 () Bool)

(assert (=> b!549962 m!527037))

(assert (=> b!549962 m!527029))

(assert (=> b!549962 m!527031))

(declare-fun m!527039 () Bool)

(assert (=> start!50272 m!527039))

(declare-fun m!527041 () Bool)

(assert (=> start!50272 m!527041))

(declare-fun m!527043 () Bool)

(assert (=> b!549958 m!527043))

(declare-fun m!527045 () Bool)

(assert (=> b!549965 m!527045))

(declare-fun m!527047 () Bool)

(assert (=> b!549963 m!527047))

(declare-fun m!527049 () Bool)

(assert (=> b!549956 m!527049))

(assert (=> b!549961 m!527023))

(assert (=> b!549961 m!527023))

(declare-fun m!527051 () Bool)

(assert (=> b!549961 m!527051))

(check-sat (not b!549961) (not b!549958) (not b!549964) (not b!549962) (not b!549965) (not b!549956) (not b!549959) (not b!549957) (not b!549963) (not start!50272))
(check-sat)
