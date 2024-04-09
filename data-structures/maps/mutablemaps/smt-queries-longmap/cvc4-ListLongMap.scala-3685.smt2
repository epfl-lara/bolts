; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50748 () Bool)

(assert start!50748)

(declare-fun b!554652 () Bool)

(declare-fun res!347222 () Bool)

(declare-fun e!319768 () Bool)

(assert (=> b!554652 (=> (not res!347222) (not e!319768))))

(declare-datatypes ((array!34927 0))(
  ( (array!34928 (arr!16769 (Array (_ BitVec 32) (_ BitVec 64))) (size!17133 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34927)

(declare-datatypes ((List!10902 0))(
  ( (Nil!10899) (Cons!10898 (h!11883 (_ BitVec 64)) (t!17138 List!10902)) )
))
(declare-fun arrayNoDuplicates!0 (array!34927 (_ BitVec 32) List!10902) Bool)

(assert (=> b!554652 (= res!347222 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10899))))

(declare-fun b!554653 () Bool)

(declare-fun res!347218 () Bool)

(declare-fun e!319765 () Bool)

(assert (=> b!554653 (=> (not res!347218) (not e!319765))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554653 (= res!347218 (validKeyInArray!0 k!1914))))

(declare-fun b!554654 () Bool)

(declare-fun e!319767 () Bool)

(assert (=> b!554654 (= e!319768 e!319767)))

(declare-fun res!347217 () Bool)

(assert (=> b!554654 (=> (not res!347217) (not e!319767))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5225 0))(
  ( (MissingZero!5225 (index!23127 (_ BitVec 32))) (Found!5225 (index!23128 (_ BitVec 32))) (Intermediate!5225 (undefined!6037 Bool) (index!23129 (_ BitVec 32)) (x!52062 (_ BitVec 32))) (Undefined!5225) (MissingVacant!5225 (index!23130 (_ BitVec 32))) )
))
(declare-fun lt!251983 () SeekEntryResult!5225)

(declare-fun lt!251982 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34927 (_ BitVec 32)) SeekEntryResult!5225)

(assert (=> b!554654 (= res!347217 (= lt!251983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251982 (select (store (arr!16769 a!3118) i!1132 k!1914) j!142) (array!34928 (store (arr!16769 a!3118) i!1132 k!1914) (size!17133 a!3118)) mask!3119)))))

(declare-fun lt!251984 () (_ BitVec 32))

(assert (=> b!554654 (= lt!251983 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251984 (select (arr!16769 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554654 (= lt!251982 (toIndex!0 (select (store (arr!16769 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554654 (= lt!251984 (toIndex!0 (select (arr!16769 a!3118) j!142) mask!3119))))

(declare-fun res!347214 () Bool)

(assert (=> start!50748 (=> (not res!347214) (not e!319765))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50748 (= res!347214 (validMask!0 mask!3119))))

(assert (=> start!50748 e!319765))

(assert (=> start!50748 true))

(declare-fun array_inv!12543 (array!34927) Bool)

(assert (=> start!50748 (array_inv!12543 a!3118)))

(declare-fun b!554655 () Bool)

(declare-fun res!347215 () Bool)

(assert (=> b!554655 (=> (not res!347215) (not e!319765))))

(assert (=> b!554655 (= res!347215 (and (= (size!17133 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17133 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17133 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554656 () Bool)

(declare-fun res!347220 () Bool)

(assert (=> b!554656 (=> (not res!347220) (not e!319768))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34927 (_ BitVec 32)) Bool)

(assert (=> b!554656 (= res!347220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554657 () Bool)

(declare-fun res!347219 () Bool)

(assert (=> b!554657 (=> (not res!347219) (not e!319765))))

(declare-fun arrayContainsKey!0 (array!34927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554657 (= res!347219 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554658 () Bool)

(assert (=> b!554658 (= e!319767 (not (or (undefined!6037 lt!251983) (not (is-Intermediate!5225 lt!251983)) (= (select (arr!16769 a!3118) (index!23129 lt!251983)) (select (arr!16769 a!3118) j!142)) (not (= (select (arr!16769 a!3118) (index!23129 lt!251983)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!17133 a!3118)))))))

(declare-fun lt!251986 () SeekEntryResult!5225)

(assert (=> b!554658 (and (= lt!251986 (Found!5225 j!142)) (or (undefined!6037 lt!251983) (not (is-Intermediate!5225 lt!251983)) (= (select (arr!16769 a!3118) (index!23129 lt!251983)) (select (arr!16769 a!3118) j!142)) (not (= (select (arr!16769 a!3118) (index!23129 lt!251983)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!251986 (MissingZero!5225 (index!23129 lt!251983)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34927 (_ BitVec 32)) SeekEntryResult!5225)

(assert (=> b!554658 (= lt!251986 (seekEntryOrOpen!0 (select (arr!16769 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554658 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17224 0))(
  ( (Unit!17225) )
))
(declare-fun lt!251985 () Unit!17224)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34927 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17224)

(assert (=> b!554658 (= lt!251985 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554659 () Bool)

(declare-fun res!347216 () Bool)

(assert (=> b!554659 (=> (not res!347216) (not e!319765))))

(assert (=> b!554659 (= res!347216 (validKeyInArray!0 (select (arr!16769 a!3118) j!142)))))

(declare-fun b!554660 () Bool)

(assert (=> b!554660 (= e!319765 e!319768)))

(declare-fun res!347221 () Bool)

(assert (=> b!554660 (=> (not res!347221) (not e!319768))))

(declare-fun lt!251987 () SeekEntryResult!5225)

(assert (=> b!554660 (= res!347221 (or (= lt!251987 (MissingZero!5225 i!1132)) (= lt!251987 (MissingVacant!5225 i!1132))))))

(assert (=> b!554660 (= lt!251987 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50748 res!347214) b!554655))

(assert (= (and b!554655 res!347215) b!554659))

(assert (= (and b!554659 res!347216) b!554653))

(assert (= (and b!554653 res!347218) b!554657))

(assert (= (and b!554657 res!347219) b!554660))

(assert (= (and b!554660 res!347221) b!554656))

(assert (= (and b!554656 res!347220) b!554652))

(assert (= (and b!554652 res!347222) b!554654))

(assert (= (and b!554654 res!347217) b!554658))

(declare-fun m!532133 () Bool)

(assert (=> b!554657 m!532133))

(declare-fun m!532135 () Bool)

(assert (=> b!554656 m!532135))

(declare-fun m!532137 () Bool)

(assert (=> b!554654 m!532137))

(declare-fun m!532139 () Bool)

(assert (=> b!554654 m!532139))

(assert (=> b!554654 m!532137))

(assert (=> b!554654 m!532137))

(declare-fun m!532141 () Bool)

(assert (=> b!554654 m!532141))

(declare-fun m!532143 () Bool)

(assert (=> b!554654 m!532143))

(assert (=> b!554654 m!532143))

(declare-fun m!532145 () Bool)

(assert (=> b!554654 m!532145))

(declare-fun m!532147 () Bool)

(assert (=> b!554654 m!532147))

(assert (=> b!554654 m!532143))

(declare-fun m!532149 () Bool)

(assert (=> b!554654 m!532149))

(declare-fun m!532151 () Bool)

(assert (=> b!554652 m!532151))

(declare-fun m!532153 () Bool)

(assert (=> b!554660 m!532153))

(declare-fun m!532155 () Bool)

(assert (=> start!50748 m!532155))

(declare-fun m!532157 () Bool)

(assert (=> start!50748 m!532157))

(declare-fun m!532159 () Bool)

(assert (=> b!554658 m!532159))

(assert (=> b!554658 m!532137))

(declare-fun m!532161 () Bool)

(assert (=> b!554658 m!532161))

(declare-fun m!532163 () Bool)

(assert (=> b!554658 m!532163))

(assert (=> b!554658 m!532137))

(declare-fun m!532165 () Bool)

(assert (=> b!554658 m!532165))

(declare-fun m!532167 () Bool)

(assert (=> b!554653 m!532167))

(assert (=> b!554659 m!532137))

(assert (=> b!554659 m!532137))

(declare-fun m!532169 () Bool)

(assert (=> b!554659 m!532169))

(push 1)

(assert (not b!554652))

(assert (not start!50748))

(assert (not b!554660))

(assert (not b!554656))

(assert (not b!554657))

(assert (not b!554653))

(assert (not b!554654))

(assert (not b!554659))

(assert (not b!554658))

(check-sat)

