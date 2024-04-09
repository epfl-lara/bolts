; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50696 () Bool)

(assert start!50696)

(declare-fun b!553900 () Bool)

(declare-fun res!346462 () Bool)

(declare-fun e!319434 () Bool)

(assert (=> b!553900 (=> (not res!346462) (not e!319434))))

(declare-datatypes ((array!34875 0))(
  ( (array!34876 (arr!16743 (Array (_ BitVec 32) (_ BitVec 64))) (size!17107 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34875)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553900 (= res!346462 (validKeyInArray!0 (select (arr!16743 a!3118) j!142)))))

(declare-fun b!553901 () Bool)

(declare-fun res!346466 () Bool)

(assert (=> b!553901 (=> (not res!346466) (not e!319434))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553901 (= res!346466 (and (= (size!17107 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17107 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17107 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553902 () Bool)

(declare-fun res!346469 () Bool)

(declare-fun e!319430 () Bool)

(assert (=> b!553902 (=> (not res!346469) (not e!319430))))

(declare-datatypes ((List!10876 0))(
  ( (Nil!10873) (Cons!10872 (h!11857 (_ BitVec 64)) (t!17112 List!10876)) )
))
(declare-fun arrayNoDuplicates!0 (array!34875 (_ BitVec 32) List!10876) Bool)

(assert (=> b!553902 (= res!346469 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10873))))

(declare-fun res!346463 () Bool)

(assert (=> start!50696 (=> (not res!346463) (not e!319434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50696 (= res!346463 (validMask!0 mask!3119))))

(assert (=> start!50696 e!319434))

(assert (=> start!50696 true))

(declare-fun array_inv!12517 (array!34875) Bool)

(assert (=> start!50696 (array_inv!12517 a!3118)))

(declare-fun b!553903 () Bool)

(assert (=> b!553903 (= e!319434 e!319430)))

(declare-fun res!346471 () Bool)

(assert (=> b!553903 (=> (not res!346471) (not e!319430))))

(declare-datatypes ((SeekEntryResult!5199 0))(
  ( (MissingZero!5199 (index!23023 (_ BitVec 32))) (Found!5199 (index!23024 (_ BitVec 32))) (Intermediate!5199 (undefined!6011 Bool) (index!23025 (_ BitVec 32)) (x!51972 (_ BitVec 32))) (Undefined!5199) (MissingVacant!5199 (index!23026 (_ BitVec 32))) )
))
(declare-fun lt!251641 () SeekEntryResult!5199)

(assert (=> b!553903 (= res!346471 (or (= lt!251641 (MissingZero!5199 i!1132)) (= lt!251641 (MissingVacant!5199 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34875 (_ BitVec 32)) SeekEntryResult!5199)

(assert (=> b!553903 (= lt!251641 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553904 () Bool)

(declare-fun res!346468 () Bool)

(assert (=> b!553904 (=> (not res!346468) (not e!319430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34875 (_ BitVec 32)) Bool)

(assert (=> b!553904 (= res!346468 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553905 () Bool)

(declare-fun e!319435 () Bool)

(assert (=> b!553905 (= e!319430 e!319435)))

(declare-fun res!346464 () Bool)

(assert (=> b!553905 (=> (not res!346464) (not e!319435))))

(declare-fun lt!251639 () (_ BitVec 32))

(declare-fun lt!251642 () SeekEntryResult!5199)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34875 (_ BitVec 32)) SeekEntryResult!5199)

(assert (=> b!553905 (= res!346464 (= lt!251642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251639 (select (store (arr!16743 a!3118) i!1132 k!1914) j!142) (array!34876 (store (arr!16743 a!3118) i!1132 k!1914) (size!17107 a!3118)) mask!3119)))))

(declare-fun lt!251640 () (_ BitVec 32))

(assert (=> b!553905 (= lt!251642 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251640 (select (arr!16743 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553905 (= lt!251639 (toIndex!0 (select (store (arr!16743 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!553905 (= lt!251640 (toIndex!0 (select (arr!16743 a!3118) j!142) mask!3119))))

(declare-fun b!553906 () Bool)

(declare-fun res!346470 () Bool)

(assert (=> b!553906 (=> (not res!346470) (not e!319434))))

(assert (=> b!553906 (= res!346470 (validKeyInArray!0 k!1914))))

(declare-fun b!553907 () Bool)

(declare-fun e!319432 () Bool)

(assert (=> b!553907 (= e!319432 (validKeyInArray!0 (select (store (arr!16743 a!3118) i!1132 k!1914) j!142)))))

(declare-fun b!553908 () Bool)

(declare-fun res!346465 () Bool)

(assert (=> b!553908 (=> (not res!346465) (not e!319434))))

(declare-fun arrayContainsKey!0 (array!34875 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553908 (= res!346465 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun e!319431 () Bool)

(declare-fun b!553909 () Bool)

(assert (=> b!553909 (= e!319431 (= (seekEntryOrOpen!0 (select (arr!16743 a!3118) j!142) a!3118 mask!3119) (Found!5199 j!142)))))

(declare-fun b!553910 () Bool)

(assert (=> b!553910 (= e!319435 (not e!319432))))

(declare-fun res!346472 () Bool)

(assert (=> b!553910 (=> res!346472 e!319432)))

(assert (=> b!553910 (= res!346472 (or (not (is-Intermediate!5199 lt!251642)) (undefined!6011 lt!251642) (not (= (select (arr!16743 a!3118) (index!23025 lt!251642)) (select (arr!16743 a!3118) j!142))) (bvslt mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!553910 e!319431))

(declare-fun res!346467 () Bool)

(assert (=> b!553910 (=> (not res!346467) (not e!319431))))

(assert (=> b!553910 (= res!346467 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17172 0))(
  ( (Unit!17173) )
))
(declare-fun lt!251638 () Unit!17172)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34875 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17172)

(assert (=> b!553910 (= lt!251638 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50696 res!346463) b!553901))

(assert (= (and b!553901 res!346466) b!553900))

(assert (= (and b!553900 res!346462) b!553906))

(assert (= (and b!553906 res!346470) b!553908))

(assert (= (and b!553908 res!346465) b!553903))

(assert (= (and b!553903 res!346471) b!553904))

(assert (= (and b!553904 res!346468) b!553902))

(assert (= (and b!553902 res!346469) b!553905))

(assert (= (and b!553905 res!346464) b!553910))

(assert (= (and b!553910 res!346467) b!553909))

(assert (= (and b!553910 (not res!346472)) b!553907))

(declare-fun m!531157 () Bool)

(assert (=> b!553903 m!531157))

(declare-fun m!531159 () Bool)

(assert (=> b!553909 m!531159))

(assert (=> b!553909 m!531159))

(declare-fun m!531161 () Bool)

(assert (=> b!553909 m!531161))

(declare-fun m!531163 () Bool)

(assert (=> b!553906 m!531163))

(declare-fun m!531165 () Bool)

(assert (=> b!553910 m!531165))

(assert (=> b!553910 m!531159))

(declare-fun m!531167 () Bool)

(assert (=> b!553910 m!531167))

(declare-fun m!531169 () Bool)

(assert (=> b!553910 m!531169))

(declare-fun m!531171 () Bool)

(assert (=> start!50696 m!531171))

(declare-fun m!531173 () Bool)

(assert (=> start!50696 m!531173))

(declare-fun m!531175 () Bool)

(assert (=> b!553904 m!531175))

(declare-fun m!531177 () Bool)

(assert (=> b!553902 m!531177))

(declare-fun m!531179 () Bool)

(assert (=> b!553908 m!531179))

(declare-fun m!531181 () Bool)

(assert (=> b!553907 m!531181))

(declare-fun m!531183 () Bool)

(assert (=> b!553907 m!531183))

(assert (=> b!553907 m!531183))

(declare-fun m!531185 () Bool)

(assert (=> b!553907 m!531185))

(assert (=> b!553900 m!531159))

(assert (=> b!553900 m!531159))

(declare-fun m!531187 () Bool)

(assert (=> b!553900 m!531187))

(assert (=> b!553905 m!531159))

(declare-fun m!531189 () Bool)

(assert (=> b!553905 m!531189))

(assert (=> b!553905 m!531159))

(assert (=> b!553905 m!531183))

(assert (=> b!553905 m!531181))

(assert (=> b!553905 m!531159))

(declare-fun m!531191 () Bool)

(assert (=> b!553905 m!531191))

(assert (=> b!553905 m!531183))

(declare-fun m!531193 () Bool)

(assert (=> b!553905 m!531193))

(assert (=> b!553905 m!531183))

(declare-fun m!531195 () Bool)

(assert (=> b!553905 m!531195))

(push 1)

