; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50742 () Bool)

(assert start!50742)

(declare-fun b!554571 () Bool)

(declare-fun res!347139 () Bool)

(declare-fun e!319731 () Bool)

(assert (=> b!554571 (=> (not res!347139) (not e!319731))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554571 (= res!347139 (validKeyInArray!0 k!1914))))

(declare-fun b!554572 () Bool)

(declare-fun e!319732 () Bool)

(assert (=> b!554572 (= e!319732 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5222 0))(
  ( (MissingZero!5222 (index!23115 (_ BitVec 32))) (Found!5222 (index!23116 (_ BitVec 32))) (Intermediate!5222 (undefined!6034 Bool) (index!23117 (_ BitVec 32)) (x!52051 (_ BitVec 32))) (Undefined!5222) (MissingVacant!5222 (index!23118 (_ BitVec 32))) )
))
(declare-fun lt!251932 () SeekEntryResult!5222)

(declare-fun lt!251933 () SeekEntryResult!5222)

(declare-datatypes ((array!34921 0))(
  ( (array!34922 (arr!16766 (Array (_ BitVec 32) (_ BitVec 64))) (size!17130 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34921)

(assert (=> b!554572 (and (= lt!251932 (Found!5222 j!142)) (or (undefined!6034 lt!251933) (not (is-Intermediate!5222 lt!251933)) (= (select (arr!16766 a!3118) (index!23117 lt!251933)) (select (arr!16766 a!3118) j!142)) (not (= (select (arr!16766 a!3118) (index!23117 lt!251933)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251932 (MissingZero!5222 (index!23117 lt!251933)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34921 (_ BitVec 32)) SeekEntryResult!5222)

(assert (=> b!554572 (= lt!251932 (seekEntryOrOpen!0 (select (arr!16766 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34921 (_ BitVec 32)) Bool)

(assert (=> b!554572 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17218 0))(
  ( (Unit!17219) )
))
(declare-fun lt!251930 () Unit!17218)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34921 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17218)

(assert (=> b!554572 (= lt!251930 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554573 () Bool)

(declare-fun e!319729 () Bool)

(assert (=> b!554573 (= e!319729 e!319732)))

(declare-fun res!347136 () Bool)

(assert (=> b!554573 (=> (not res!347136) (not e!319732))))

(declare-fun lt!251928 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34921 (_ BitVec 32)) SeekEntryResult!5222)

(assert (=> b!554573 (= res!347136 (= lt!251933 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251928 (select (store (arr!16766 a!3118) i!1132 k!1914) j!142) (array!34922 (store (arr!16766 a!3118) i!1132 k!1914) (size!17130 a!3118)) mask!3119)))))

(declare-fun lt!251929 () (_ BitVec 32))

(assert (=> b!554573 (= lt!251933 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251929 (select (arr!16766 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554573 (= lt!251928 (toIndex!0 (select (store (arr!16766 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554573 (= lt!251929 (toIndex!0 (select (arr!16766 a!3118) j!142) mask!3119))))

(declare-fun b!554574 () Bool)

(declare-fun res!347133 () Bool)

(assert (=> b!554574 (=> (not res!347133) (not e!319729))))

(assert (=> b!554574 (= res!347133 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554575 () Bool)

(declare-fun res!347134 () Bool)

(assert (=> b!554575 (=> (not res!347134) (not e!319729))))

(declare-datatypes ((List!10899 0))(
  ( (Nil!10896) (Cons!10895 (h!11880 (_ BitVec 64)) (t!17135 List!10899)) )
))
(declare-fun arrayNoDuplicates!0 (array!34921 (_ BitVec 32) List!10899) Bool)

(assert (=> b!554575 (= res!347134 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10896))))

(declare-fun res!347137 () Bool)

(assert (=> start!50742 (=> (not res!347137) (not e!319731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50742 (= res!347137 (validMask!0 mask!3119))))

(assert (=> start!50742 e!319731))

(assert (=> start!50742 true))

(declare-fun array_inv!12540 (array!34921) Bool)

(assert (=> start!50742 (array_inv!12540 a!3118)))

(declare-fun b!554576 () Bool)

(assert (=> b!554576 (= e!319731 e!319729)))

(declare-fun res!347140 () Bool)

(assert (=> b!554576 (=> (not res!347140) (not e!319729))))

(declare-fun lt!251931 () SeekEntryResult!5222)

(assert (=> b!554576 (= res!347140 (or (= lt!251931 (MissingZero!5222 i!1132)) (= lt!251931 (MissingVacant!5222 i!1132))))))

(assert (=> b!554576 (= lt!251931 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554577 () Bool)

(declare-fun res!347135 () Bool)

(assert (=> b!554577 (=> (not res!347135) (not e!319731))))

(assert (=> b!554577 (= res!347135 (validKeyInArray!0 (select (arr!16766 a!3118) j!142)))))

(declare-fun b!554578 () Bool)

(declare-fun res!347138 () Bool)

(assert (=> b!554578 (=> (not res!347138) (not e!319731))))

(assert (=> b!554578 (= res!347138 (and (= (size!17130 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17130 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17130 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554579 () Bool)

(declare-fun res!347141 () Bool)

(assert (=> b!554579 (=> (not res!347141) (not e!319731))))

(declare-fun arrayContainsKey!0 (array!34921 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554579 (= res!347141 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50742 res!347137) b!554578))

(assert (= (and b!554578 res!347138) b!554577))

(assert (= (and b!554577 res!347135) b!554571))

(assert (= (and b!554571 res!347139) b!554579))

(assert (= (and b!554579 res!347141) b!554576))

(assert (= (and b!554576 res!347140) b!554574))

(assert (= (and b!554574 res!347133) b!554575))

(assert (= (and b!554575 res!347134) b!554573))

(assert (= (and b!554573 res!347136) b!554572))

(declare-fun m!532019 () Bool)

(assert (=> b!554577 m!532019))

(assert (=> b!554577 m!532019))

(declare-fun m!532021 () Bool)

(assert (=> b!554577 m!532021))

(declare-fun m!532023 () Bool)

(assert (=> b!554571 m!532023))

(assert (=> b!554573 m!532019))

(declare-fun m!532025 () Bool)

(assert (=> b!554573 m!532025))

(declare-fun m!532027 () Bool)

(assert (=> b!554573 m!532027))

(assert (=> b!554573 m!532027))

(declare-fun m!532029 () Bool)

(assert (=> b!554573 m!532029))

(declare-fun m!532031 () Bool)

(assert (=> b!554573 m!532031))

(assert (=> b!554573 m!532027))

(declare-fun m!532033 () Bool)

(assert (=> b!554573 m!532033))

(assert (=> b!554573 m!532019))

(declare-fun m!532035 () Bool)

(assert (=> b!554573 m!532035))

(assert (=> b!554573 m!532019))

(assert (=> b!554572 m!532019))

(declare-fun m!532037 () Bool)

(assert (=> b!554572 m!532037))

(declare-fun m!532039 () Bool)

(assert (=> b!554572 m!532039))

(declare-fun m!532041 () Bool)

(assert (=> b!554572 m!532041))

(assert (=> b!554572 m!532019))

(declare-fun m!532043 () Bool)

(assert (=> b!554572 m!532043))

(declare-fun m!532045 () Bool)

(assert (=> b!554575 m!532045))

(declare-fun m!532047 () Bool)

(assert (=> b!554579 m!532047))

(declare-fun m!532049 () Bool)

(assert (=> b!554574 m!532049))

(declare-fun m!532051 () Bool)

(assert (=> start!50742 m!532051))

(declare-fun m!532053 () Bool)

(assert (=> start!50742 m!532053))

(declare-fun m!532055 () Bool)

(assert (=> b!554576 m!532055))

(push 1)

(assert (not b!554575))

(assert (not b!554579))

(assert (not b!554574))

(assert (not b!554576))

(assert (not b!554577))

(assert (not start!50742))

(assert (not b!554571))

(assert (not b!554572))

(assert (not b!554573))

(check-sat)

