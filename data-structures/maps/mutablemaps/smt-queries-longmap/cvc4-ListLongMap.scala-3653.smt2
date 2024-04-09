; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50436 () Bool)

(assert start!50436)

(declare-fun b!551198 () Bool)

(declare-fun e!318133 () Bool)

(declare-fun e!318134 () Bool)

(assert (=> b!551198 (= e!318133 e!318134)))

(declare-fun res!344126 () Bool)

(assert (=> b!551198 (=> (not res!344126) (not e!318134))))

(declare-datatypes ((SeekEntryResult!5129 0))(
  ( (MissingZero!5129 (index!22743 (_ BitVec 32))) (Found!5129 (index!22744 (_ BitVec 32))) (Intermediate!5129 (undefined!5941 Bool) (index!22745 (_ BitVec 32)) (x!51698 (_ BitVec 32))) (Undefined!5129) (MissingVacant!5129 (index!22746 (_ BitVec 32))) )
))
(declare-fun lt!250783 () SeekEntryResult!5129)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!551198 (= res!344126 (or (= lt!250783 (MissingZero!5129 i!1132)) (= lt!250783 (MissingVacant!5129 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34729 0))(
  ( (array!34730 (arr!16673 (Array (_ BitVec 32) (_ BitVec 64))) (size!17037 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34729)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34729 (_ BitVec 32)) SeekEntryResult!5129)

(assert (=> b!551198 (= lt!250783 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!551199 () Bool)

(declare-fun res!344128 () Bool)

(assert (=> b!551199 (=> (not res!344128) (not e!318133))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!551199 (= res!344128 (validKeyInArray!0 (select (arr!16673 a!3118) j!142)))))

(declare-fun b!551200 () Bool)

(declare-fun res!344134 () Bool)

(assert (=> b!551200 (=> (not res!344134) (not e!318133))))

(declare-fun arrayContainsKey!0 (array!34729 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!551200 (= res!344134 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!551201 () Bool)

(declare-fun res!344129 () Bool)

(assert (=> b!551201 (=> (not res!344129) (not e!318134))))

(declare-datatypes ((List!10806 0))(
  ( (Nil!10803) (Cons!10802 (h!11781 (_ BitVec 64)) (t!17042 List!10806)) )
))
(declare-fun arrayNoDuplicates!0 (array!34729 (_ BitVec 32) List!10806) Bool)

(assert (=> b!551201 (= res!344129 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10803))))

(declare-fun res!344131 () Bool)

(assert (=> start!50436 (=> (not res!344131) (not e!318133))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50436 (= res!344131 (validMask!0 mask!3119))))

(assert (=> start!50436 e!318133))

(assert (=> start!50436 true))

(declare-fun array_inv!12447 (array!34729) Bool)

(assert (=> start!50436 (array_inv!12447 a!3118)))

(declare-fun b!551202 () Bool)

(declare-fun res!344132 () Bool)

(assert (=> b!551202 (=> (not res!344132) (not e!318133))))

(assert (=> b!551202 (= res!344132 (and (= (size!17037 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17037 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17037 a!3118)) (not (= i!1132 j!142))))))

(declare-fun e!318135 () Bool)

(declare-fun b!551203 () Bool)

(assert (=> b!551203 (= e!318135 (= (seekEntryOrOpen!0 (select (arr!16673 a!3118) j!142) a!3118 mask!3119) (Found!5129 j!142)))))

(declare-fun b!551204 () Bool)

(assert (=> b!551204 (= e!318134 (not true))))

(assert (=> b!551204 e!318135))

(declare-fun res!344135 () Bool)

(assert (=> b!551204 (=> (not res!344135) (not e!318135))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34729 (_ BitVec 32)) Bool)

(assert (=> b!551204 (= res!344135 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17032 0))(
  ( (Unit!17033) )
))
(declare-fun lt!250784 () Unit!17032)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34729 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17032)

(assert (=> b!551204 (= lt!250784 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!551205 () Bool)

(declare-fun res!344133 () Bool)

(assert (=> b!551205 (=> (not res!344133) (not e!318134))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34729 (_ BitVec 32)) SeekEntryResult!5129)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!551205 (= res!344133 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16673 a!3118) j!142) mask!3119) (select (arr!16673 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16673 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16673 a!3118) i!1132 k!1914) j!142) (array!34730 (store (arr!16673 a!3118) i!1132 k!1914) (size!17037 a!3118)) mask!3119)))))

(declare-fun b!551206 () Bool)

(declare-fun res!344130 () Bool)

(assert (=> b!551206 (=> (not res!344130) (not e!318133))))

(assert (=> b!551206 (= res!344130 (validKeyInArray!0 k!1914))))

(declare-fun b!551207 () Bool)

(declare-fun res!344127 () Bool)

(assert (=> b!551207 (=> (not res!344127) (not e!318134))))

(assert (=> b!551207 (= res!344127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50436 res!344131) b!551202))

(assert (= (and b!551202 res!344132) b!551199))

(assert (= (and b!551199 res!344128) b!551206))

(assert (= (and b!551206 res!344130) b!551200))

(assert (= (and b!551200 res!344134) b!551198))

(assert (= (and b!551198 res!344126) b!551207))

(assert (= (and b!551207 res!344127) b!551201))

(assert (= (and b!551201 res!344129) b!551205))

(assert (= (and b!551205 res!344133) b!551204))

(assert (= (and b!551204 res!344135) b!551203))

(declare-fun m!528211 () Bool)

(assert (=> b!551201 m!528211))

(declare-fun m!528213 () Bool)

(assert (=> b!551203 m!528213))

(assert (=> b!551203 m!528213))

(declare-fun m!528215 () Bool)

(assert (=> b!551203 m!528215))

(declare-fun m!528217 () Bool)

(assert (=> b!551206 m!528217))

(declare-fun m!528219 () Bool)

(assert (=> b!551207 m!528219))

(declare-fun m!528221 () Bool)

(assert (=> b!551200 m!528221))

(declare-fun m!528223 () Bool)

(assert (=> b!551204 m!528223))

(declare-fun m!528225 () Bool)

(assert (=> b!551204 m!528225))

(declare-fun m!528227 () Bool)

(assert (=> start!50436 m!528227))

(declare-fun m!528229 () Bool)

(assert (=> start!50436 m!528229))

(assert (=> b!551205 m!528213))

(declare-fun m!528231 () Bool)

(assert (=> b!551205 m!528231))

(assert (=> b!551205 m!528213))

(declare-fun m!528233 () Bool)

(assert (=> b!551205 m!528233))

(declare-fun m!528235 () Bool)

(assert (=> b!551205 m!528235))

(assert (=> b!551205 m!528233))

(declare-fun m!528237 () Bool)

(assert (=> b!551205 m!528237))

(assert (=> b!551205 m!528231))

(assert (=> b!551205 m!528213))

(declare-fun m!528239 () Bool)

(assert (=> b!551205 m!528239))

(declare-fun m!528241 () Bool)

(assert (=> b!551205 m!528241))

(assert (=> b!551205 m!528233))

(assert (=> b!551205 m!528235))

(declare-fun m!528243 () Bool)

(assert (=> b!551198 m!528243))

(assert (=> b!551199 m!528213))

(assert (=> b!551199 m!528213))

(declare-fun m!528245 () Bool)

(assert (=> b!551199 m!528245))

(push 1)

