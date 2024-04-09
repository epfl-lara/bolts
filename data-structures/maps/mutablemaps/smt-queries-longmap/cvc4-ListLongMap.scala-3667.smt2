; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50640 () Bool)

(assert start!50640)

(declare-fun res!345613 () Bool)

(declare-fun e!319056 () Bool)

(assert (=> start!50640 (=> (not res!345613) (not e!319056))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50640 (= res!345613 (validMask!0 mask!3119))))

(assert (=> start!50640 e!319056))

(assert (=> start!50640 true))

(declare-datatypes ((array!34819 0))(
  ( (array!34820 (arr!16715 (Array (_ BitVec 32) (_ BitVec 64))) (size!17079 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34819)

(declare-fun array_inv!12489 (array!34819) Bool)

(assert (=> start!50640 (array_inv!12489 a!3118)))

(declare-fun b!553049 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun e!319054 () Bool)

(declare-datatypes ((SeekEntryResult!5171 0))(
  ( (MissingZero!5171 (index!22911 (_ BitVec 32))) (Found!5171 (index!22912 (_ BitVec 32))) (Intermediate!5171 (undefined!5983 Bool) (index!22913 (_ BitVec 32)) (x!51864 (_ BitVec 32))) (Undefined!5171) (MissingVacant!5171 (index!22914 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34819 (_ BitVec 32)) SeekEntryResult!5171)

(assert (=> b!553049 (= e!319054 (= (seekEntryOrOpen!0 (select (arr!16715 a!3118) j!142) a!3118 mask!3119) (Found!5171 j!142)))))

(declare-fun b!553050 () Bool)

(declare-fun res!345614 () Bool)

(assert (=> b!553050 (=> (not res!345614) (not e!319056))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553050 (= res!345614 (validKeyInArray!0 (select (arr!16715 a!3118) j!142)))))

(declare-fun b!553051 () Bool)

(declare-fun e!319057 () Bool)

(assert (=> b!553051 (= e!319056 e!319057)))

(declare-fun res!345615 () Bool)

(assert (=> b!553051 (=> (not res!345615) (not e!319057))))

(declare-fun lt!251381 () SeekEntryResult!5171)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!553051 (= res!345615 (or (= lt!251381 (MissingZero!5171 i!1132)) (= lt!251381 (MissingVacant!5171 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!553051 (= lt!251381 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553052 () Bool)

(declare-fun res!345612 () Bool)

(assert (=> b!553052 (=> (not res!345612) (not e!319056))))

(declare-fun arrayContainsKey!0 (array!34819 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553052 (= res!345612 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553053 () Bool)

(declare-fun res!345620 () Bool)

(assert (=> b!553053 (=> (not res!345620) (not e!319057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34819 (_ BitVec 32)) Bool)

(assert (=> b!553053 (= res!345620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553054 () Bool)

(declare-fun e!319055 () Bool)

(assert (=> b!553054 (= e!319057 e!319055)))

(declare-fun res!345619 () Bool)

(assert (=> b!553054 (=> (not res!345619) (not e!319055))))

(declare-fun lt!251383 () (_ BitVec 32))

(declare-fun lt!251382 () SeekEntryResult!5171)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34819 (_ BitVec 32)) SeekEntryResult!5171)

(assert (=> b!553054 (= res!345619 (= lt!251382 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251383 (select (store (arr!16715 a!3118) i!1132 k!1914) j!142) (array!34820 (store (arr!16715 a!3118) i!1132 k!1914) (size!17079 a!3118)) mask!3119)))))

(declare-fun lt!251384 () (_ BitVec 32))

(assert (=> b!553054 (= lt!251382 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251384 (select (arr!16715 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553054 (= lt!251383 (toIndex!0 (select (store (arr!16715 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!553054 (= lt!251384 (toIndex!0 (select (arr!16715 a!3118) j!142) mask!3119))))

(declare-fun b!553055 () Bool)

(declare-fun res!345618 () Bool)

(assert (=> b!553055 (=> (not res!345618) (not e!319057))))

(declare-datatypes ((List!10848 0))(
  ( (Nil!10845) (Cons!10844 (h!11829 (_ BitVec 64)) (t!17084 List!10848)) )
))
(declare-fun arrayNoDuplicates!0 (array!34819 (_ BitVec 32) List!10848) Bool)

(assert (=> b!553055 (= res!345618 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10845))))

(declare-fun b!553056 () Bool)

(declare-fun res!345611 () Bool)

(assert (=> b!553056 (=> (not res!345611) (not e!319056))))

(assert (=> b!553056 (= res!345611 (validKeyInArray!0 k!1914))))

(declare-fun b!553057 () Bool)

(declare-fun res!345617 () Bool)

(assert (=> b!553057 (=> (not res!345617) (not e!319056))))

(assert (=> b!553057 (= res!345617 (and (= (size!17079 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17079 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17079 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553058 () Bool)

(assert (=> b!553058 (= e!319055 (not (or (not (is-Intermediate!5171 lt!251382)) (not (undefined!5983 lt!251382)) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!553058 e!319054))

(declare-fun res!345616 () Bool)

(assert (=> b!553058 (=> (not res!345616) (not e!319054))))

(assert (=> b!553058 (= res!345616 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17116 0))(
  ( (Unit!17117) )
))
(declare-fun lt!251380 () Unit!17116)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34819 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17116)

(assert (=> b!553058 (= lt!251380 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50640 res!345613) b!553057))

(assert (= (and b!553057 res!345617) b!553050))

(assert (= (and b!553050 res!345614) b!553056))

(assert (= (and b!553056 res!345611) b!553052))

(assert (= (and b!553052 res!345612) b!553051))

(assert (= (and b!553051 res!345615) b!553053))

(assert (= (and b!553053 res!345620) b!553055))

(assert (= (and b!553055 res!345618) b!553054))

(assert (= (and b!553054 res!345619) b!553058))

(assert (= (and b!553058 res!345616) b!553049))

(declare-fun m!530131 () Bool)

(assert (=> b!553058 m!530131))

(declare-fun m!530133 () Bool)

(assert (=> b!553058 m!530133))

(declare-fun m!530135 () Bool)

(assert (=> b!553049 m!530135))

(assert (=> b!553049 m!530135))

(declare-fun m!530137 () Bool)

(assert (=> b!553049 m!530137))

(assert (=> b!553050 m!530135))

(assert (=> b!553050 m!530135))

(declare-fun m!530139 () Bool)

(assert (=> b!553050 m!530139))

(declare-fun m!530141 () Bool)

(assert (=> b!553051 m!530141))

(declare-fun m!530143 () Bool)

(assert (=> b!553053 m!530143))

(declare-fun m!530145 () Bool)

(assert (=> b!553052 m!530145))

(declare-fun m!530147 () Bool)

(assert (=> b!553056 m!530147))

(assert (=> b!553054 m!530135))

(declare-fun m!530149 () Bool)

(assert (=> b!553054 m!530149))

(assert (=> b!553054 m!530135))

(declare-fun m!530151 () Bool)

(assert (=> b!553054 m!530151))

(declare-fun m!530153 () Bool)

(assert (=> b!553054 m!530153))

(declare-fun m!530155 () Bool)

(assert (=> b!553054 m!530155))

(assert (=> b!553054 m!530153))

(declare-fun m!530157 () Bool)

(assert (=> b!553054 m!530157))

(assert (=> b!553054 m!530153))

(declare-fun m!530159 () Bool)

(assert (=> b!553054 m!530159))

(assert (=> b!553054 m!530135))

(declare-fun m!530161 () Bool)

(assert (=> start!50640 m!530161))

(declare-fun m!530163 () Bool)

(assert (=> start!50640 m!530163))

(declare-fun m!530165 () Bool)

(assert (=> b!553055 m!530165))

(push 1)

