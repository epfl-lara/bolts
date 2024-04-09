; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50434 () Bool)

(assert start!50434)

(declare-fun b!551168 () Bool)

(declare-fun res!344099 () Bool)

(declare-fun e!318123 () Bool)

(assert (=> b!551168 (=> (not res!344099) (not e!318123))))

(declare-datatypes ((array!34727 0))(
  ( (array!34728 (arr!16672 (Array (_ BitVec 32) (_ BitVec 64))) (size!17036 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34727)

(declare-datatypes ((List!10805 0))(
  ( (Nil!10802) (Cons!10801 (h!11780 (_ BitVec 64)) (t!17041 List!10805)) )
))
(declare-fun arrayNoDuplicates!0 (array!34727 (_ BitVec 32) List!10805) Bool)

(assert (=> b!551168 (= res!344099 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10802))))

(declare-fun b!551169 () Bool)

(declare-fun res!344098 () Bool)

(assert (=> b!551169 (=> (not res!344098) (not e!318123))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5128 0))(
  ( (MissingZero!5128 (index!22739 (_ BitVec 32))) (Found!5128 (index!22740 (_ BitVec 32))) (Intermediate!5128 (undefined!5940 Bool) (index!22741 (_ BitVec 32)) (x!51697 (_ BitVec 32))) (Undefined!5128) (MissingVacant!5128 (index!22742 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34727 (_ BitVec 32)) SeekEntryResult!5128)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551169 (= res!344098 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16672 a!3118) j!142) mask!3119) (select (arr!16672 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16672 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16672 a!3118) i!1132 k0!1914) j!142) (array!34728 (store (arr!16672 a!3118) i!1132 k0!1914) (size!17036 a!3118)) mask!3119)))))

(declare-fun b!551170 () Bool)

(declare-fun res!344104 () Bool)

(assert (=> b!551170 (=> (not res!344104) (not e!318123))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34727 (_ BitVec 32)) Bool)

(assert (=> b!551170 (= res!344104 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!344096 () Bool)

(declare-fun e!318124 () Bool)

(assert (=> start!50434 (=> (not res!344096) (not e!318124))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50434 (= res!344096 (validMask!0 mask!3119))))

(assert (=> start!50434 e!318124))

(assert (=> start!50434 true))

(declare-fun array_inv!12446 (array!34727) Bool)

(assert (=> start!50434 (array_inv!12446 a!3118)))

(declare-fun b!551171 () Bool)

(declare-fun res!344100 () Bool)

(assert (=> b!551171 (=> (not res!344100) (not e!318124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551171 (= res!344100 (validKeyInArray!0 k0!1914))))

(declare-fun b!551172 () Bool)

(assert (=> b!551172 (= e!318123 (not true))))

(declare-fun e!318121 () Bool)

(assert (=> b!551172 e!318121))

(declare-fun res!344105 () Bool)

(assert (=> b!551172 (=> (not res!344105) (not e!318121))))

(assert (=> b!551172 (= res!344105 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17030 0))(
  ( (Unit!17031) )
))
(declare-fun lt!250778 () Unit!17030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34727 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17030)

(assert (=> b!551172 (= lt!250778 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551173 () Bool)

(declare-fun res!344101 () Bool)

(assert (=> b!551173 (=> (not res!344101) (not e!318124))))

(assert (=> b!551173 (= res!344101 (validKeyInArray!0 (select (arr!16672 a!3118) j!142)))))

(declare-fun b!551174 () Bool)

(declare-fun res!344103 () Bool)

(assert (=> b!551174 (=> (not res!344103) (not e!318124))))

(assert (=> b!551174 (= res!344103 (and (= (size!17036 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17036 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17036 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!551175 () Bool)

(assert (=> b!551175 (= e!318124 e!318123)))

(declare-fun res!344097 () Bool)

(assert (=> b!551175 (=> (not res!344097) (not e!318123))))

(declare-fun lt!250777 () SeekEntryResult!5128)

(assert (=> b!551175 (= res!344097 (or (= lt!250777 (MissingZero!5128 i!1132)) (= lt!250777 (MissingVacant!5128 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34727 (_ BitVec 32)) SeekEntryResult!5128)

(assert (=> b!551175 (= lt!250777 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!551176 () Bool)

(declare-fun res!344102 () Bool)

(assert (=> b!551176 (=> (not res!344102) (not e!318124))))

(declare-fun arrayContainsKey!0 (array!34727 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551176 (= res!344102 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551177 () Bool)

(assert (=> b!551177 (= e!318121 (= (seekEntryOrOpen!0 (select (arr!16672 a!3118) j!142) a!3118 mask!3119) (Found!5128 j!142)))))

(assert (= (and start!50434 res!344096) b!551174))

(assert (= (and b!551174 res!344103) b!551173))

(assert (= (and b!551173 res!344101) b!551171))

(assert (= (and b!551171 res!344100) b!551176))

(assert (= (and b!551176 res!344102) b!551175))

(assert (= (and b!551175 res!344097) b!551170))

(assert (= (and b!551170 res!344104) b!551168))

(assert (= (and b!551168 res!344099) b!551169))

(assert (= (and b!551169 res!344098) b!551172))

(assert (= (and b!551172 res!344105) b!551177))

(declare-fun m!528175 () Bool)

(assert (=> b!551170 m!528175))

(declare-fun m!528177 () Bool)

(assert (=> start!50434 m!528177))

(declare-fun m!528179 () Bool)

(assert (=> start!50434 m!528179))

(declare-fun m!528181 () Bool)

(assert (=> b!551177 m!528181))

(assert (=> b!551177 m!528181))

(declare-fun m!528183 () Bool)

(assert (=> b!551177 m!528183))

(declare-fun m!528185 () Bool)

(assert (=> b!551171 m!528185))

(declare-fun m!528187 () Bool)

(assert (=> b!551176 m!528187))

(declare-fun m!528189 () Bool)

(assert (=> b!551175 m!528189))

(assert (=> b!551173 m!528181))

(assert (=> b!551173 m!528181))

(declare-fun m!528191 () Bool)

(assert (=> b!551173 m!528191))

(declare-fun m!528193 () Bool)

(assert (=> b!551168 m!528193))

(assert (=> b!551169 m!528181))

(declare-fun m!528195 () Bool)

(assert (=> b!551169 m!528195))

(assert (=> b!551169 m!528181))

(declare-fun m!528197 () Bool)

(assert (=> b!551169 m!528197))

(declare-fun m!528199 () Bool)

(assert (=> b!551169 m!528199))

(assert (=> b!551169 m!528197))

(declare-fun m!528201 () Bool)

(assert (=> b!551169 m!528201))

(assert (=> b!551169 m!528195))

(assert (=> b!551169 m!528181))

(declare-fun m!528203 () Bool)

(assert (=> b!551169 m!528203))

(declare-fun m!528205 () Bool)

(assert (=> b!551169 m!528205))

(assert (=> b!551169 m!528197))

(assert (=> b!551169 m!528199))

(declare-fun m!528207 () Bool)

(assert (=> b!551172 m!528207))

(declare-fun m!528209 () Bool)

(assert (=> b!551172 m!528209))

(check-sat (not b!551177) (not b!551172) (not b!551175) (not b!551168) (not b!551170) (not b!551173) (not start!50434) (not b!551176) (not b!551171) (not b!551169))
(check-sat)
