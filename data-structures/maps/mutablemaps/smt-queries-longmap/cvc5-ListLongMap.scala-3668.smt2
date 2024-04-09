; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50642 () Bool)

(assert start!50642)

(declare-fun b!553079 () Bool)

(declare-fun res!345642 () Bool)

(declare-fun e!319069 () Bool)

(assert (=> b!553079 (=> (not res!345642) (not e!319069))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34821 0))(
  ( (array!34822 (arr!16716 (Array (_ BitVec 32) (_ BitVec 64))) (size!17080 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34821)

(declare-datatypes ((SeekEntryResult!5172 0))(
  ( (MissingZero!5172 (index!22915 (_ BitVec 32))) (Found!5172 (index!22916 (_ BitVec 32))) (Intermediate!5172 (undefined!5984 Bool) (index!22917 (_ BitVec 32)) (x!51873 (_ BitVec 32))) (Undefined!5172) (MissingVacant!5172 (index!22918 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34821 (_ BitVec 32)) SeekEntryResult!5172)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553079 (= res!345642 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16716 a!3118) j!142) mask!3119) (select (arr!16716 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16716 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16716 a!3118) i!1132 k!1914) j!142) (array!34822 (store (arr!16716 a!3118) i!1132 k!1914) (size!17080 a!3118)) mask!3119)))))

(declare-fun b!553080 () Bool)

(declare-fun res!345647 () Bool)

(assert (=> b!553080 (=> (not res!345647) (not e!319069))))

(declare-datatypes ((List!10849 0))(
  ( (Nil!10846) (Cons!10845 (h!11830 (_ BitVec 64)) (t!17085 List!10849)) )
))
(declare-fun arrayNoDuplicates!0 (array!34821 (_ BitVec 32) List!10849) Bool)

(assert (=> b!553080 (= res!345647 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10846))))

(declare-fun res!345648 () Bool)

(declare-fun e!319066 () Bool)

(assert (=> start!50642 (=> (not res!345648) (not e!319066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50642 (= res!345648 (validMask!0 mask!3119))))

(assert (=> start!50642 e!319066))

(assert (=> start!50642 true))

(declare-fun array_inv!12490 (array!34821) Bool)

(assert (=> start!50642 (array_inv!12490 a!3118)))

(declare-fun b!553081 () Bool)

(declare-fun res!345641 () Bool)

(assert (=> b!553081 (=> (not res!345641) (not e!319066))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553081 (= res!345641 (validKeyInArray!0 (select (arr!16716 a!3118) j!142)))))

(declare-fun b!553082 () Bool)

(declare-fun res!345646 () Bool)

(assert (=> b!553082 (=> (not res!345646) (not e!319066))))

(assert (=> b!553082 (= res!345646 (and (= (size!17080 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17080 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17080 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553083 () Bool)

(declare-fun res!345649 () Bool)

(assert (=> b!553083 (=> (not res!345649) (not e!319066))))

(declare-fun arrayContainsKey!0 (array!34821 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553083 (= res!345649 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553084 () Bool)

(assert (=> b!553084 (= e!319069 (not true))))

(declare-fun e!319068 () Bool)

(assert (=> b!553084 e!319068))

(declare-fun res!345645 () Bool)

(assert (=> b!553084 (=> (not res!345645) (not e!319068))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34821 (_ BitVec 32)) Bool)

(assert (=> b!553084 (= res!345645 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17118 0))(
  ( (Unit!17119) )
))
(declare-fun lt!251390 () Unit!17118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17118)

(assert (=> b!553084 (= lt!251390 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553085 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34821 (_ BitVec 32)) SeekEntryResult!5172)

(assert (=> b!553085 (= e!319068 (= (seekEntryOrOpen!0 (select (arr!16716 a!3118) j!142) a!3118 mask!3119) (Found!5172 j!142)))))

(declare-fun b!553086 () Bool)

(declare-fun res!345650 () Bool)

(assert (=> b!553086 (=> (not res!345650) (not e!319066))))

(assert (=> b!553086 (= res!345650 (validKeyInArray!0 k!1914))))

(declare-fun b!553087 () Bool)

(declare-fun res!345644 () Bool)

(assert (=> b!553087 (=> (not res!345644) (not e!319069))))

(assert (=> b!553087 (= res!345644 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553088 () Bool)

(assert (=> b!553088 (= e!319066 e!319069)))

(declare-fun res!345643 () Bool)

(assert (=> b!553088 (=> (not res!345643) (not e!319069))))

(declare-fun lt!251389 () SeekEntryResult!5172)

(assert (=> b!553088 (= res!345643 (or (= lt!251389 (MissingZero!5172 i!1132)) (= lt!251389 (MissingVacant!5172 i!1132))))))

(assert (=> b!553088 (= lt!251389 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50642 res!345648) b!553082))

(assert (= (and b!553082 res!345646) b!553081))

(assert (= (and b!553081 res!345641) b!553086))

(assert (= (and b!553086 res!345650) b!553083))

(assert (= (and b!553083 res!345649) b!553088))

(assert (= (and b!553088 res!345643) b!553087))

(assert (= (and b!553087 res!345644) b!553080))

(assert (= (and b!553080 res!345647) b!553079))

(assert (= (and b!553079 res!345642) b!553084))

(assert (= (and b!553084 res!345645) b!553085))

(declare-fun m!530167 () Bool)

(assert (=> b!553083 m!530167))

(declare-fun m!530169 () Bool)

(assert (=> b!553080 m!530169))

(declare-fun m!530171 () Bool)

(assert (=> b!553081 m!530171))

(assert (=> b!553081 m!530171))

(declare-fun m!530173 () Bool)

(assert (=> b!553081 m!530173))

(assert (=> b!553085 m!530171))

(assert (=> b!553085 m!530171))

(declare-fun m!530175 () Bool)

(assert (=> b!553085 m!530175))

(declare-fun m!530177 () Bool)

(assert (=> b!553088 m!530177))

(declare-fun m!530179 () Bool)

(assert (=> b!553084 m!530179))

(declare-fun m!530181 () Bool)

(assert (=> b!553084 m!530181))

(declare-fun m!530183 () Bool)

(assert (=> start!50642 m!530183))

(declare-fun m!530185 () Bool)

(assert (=> start!50642 m!530185))

(declare-fun m!530187 () Bool)

(assert (=> b!553086 m!530187))

(assert (=> b!553079 m!530171))

(declare-fun m!530189 () Bool)

(assert (=> b!553079 m!530189))

(assert (=> b!553079 m!530171))

(declare-fun m!530191 () Bool)

(assert (=> b!553079 m!530191))

(declare-fun m!530193 () Bool)

(assert (=> b!553079 m!530193))

(assert (=> b!553079 m!530191))

(declare-fun m!530195 () Bool)

(assert (=> b!553079 m!530195))

(assert (=> b!553079 m!530189))

(assert (=> b!553079 m!530171))

(declare-fun m!530197 () Bool)

(assert (=> b!553079 m!530197))

(declare-fun m!530199 () Bool)

(assert (=> b!553079 m!530199))

(assert (=> b!553079 m!530191))

(assert (=> b!553079 m!530193))

(declare-fun m!530201 () Bool)

(assert (=> b!553087 m!530201))

(push 1)

