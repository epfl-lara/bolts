; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50750 () Bool)

(assert start!50750)

(declare-fun b!554679 () Bool)

(declare-fun res!347245 () Bool)

(declare-fun e!319777 () Bool)

(assert (=> b!554679 (=> (not res!347245) (not e!319777))))

(declare-datatypes ((array!34929 0))(
  ( (array!34930 (arr!16770 (Array (_ BitVec 32) (_ BitVec 64))) (size!17134 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34929)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554679 (= res!347245 (validKeyInArray!0 (select (arr!16770 a!3118) j!142)))))

(declare-fun b!554680 () Bool)

(declare-fun res!347244 () Bool)

(assert (=> b!554680 (=> (not res!347244) (not e!319777))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!554680 (= res!347244 (validKeyInArray!0 k!1914))))

(declare-fun b!554681 () Bool)

(declare-fun res!347246 () Bool)

(declare-fun e!319780 () Bool)

(assert (=> b!554681 (=> (not res!347246) (not e!319780))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34929 (_ BitVec 32)) Bool)

(assert (=> b!554681 (= res!347246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554682 () Bool)

(assert (=> b!554682 (= e!319777 e!319780)))

(declare-fun res!347248 () Bool)

(assert (=> b!554682 (=> (not res!347248) (not e!319780))))

(declare-datatypes ((SeekEntryResult!5226 0))(
  ( (MissingZero!5226 (index!23131 (_ BitVec 32))) (Found!5226 (index!23132 (_ BitVec 32))) (Intermediate!5226 (undefined!6038 Bool) (index!23133 (_ BitVec 32)) (x!52071 (_ BitVec 32))) (Undefined!5226) (MissingVacant!5226 (index!23134 (_ BitVec 32))) )
))
(declare-fun lt!252005 () SeekEntryResult!5226)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554682 (= res!347248 (or (= lt!252005 (MissingZero!5226 i!1132)) (= lt!252005 (MissingVacant!5226 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34929 (_ BitVec 32)) SeekEntryResult!5226)

(assert (=> b!554682 (= lt!252005 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554683 () Bool)

(declare-fun res!347241 () Bool)

(assert (=> b!554683 (=> (not res!347241) (not e!319777))))

(assert (=> b!554683 (= res!347241 (and (= (size!17134 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17134 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17134 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554684 () Bool)

(declare-fun e!319778 () Bool)

(assert (=> b!554684 (= e!319780 e!319778)))

(declare-fun res!347242 () Bool)

(assert (=> b!554684 (=> (not res!347242) (not e!319778))))

(declare-fun lt!252004 () (_ BitVec 32))

(declare-fun lt!252000 () SeekEntryResult!5226)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34929 (_ BitVec 32)) SeekEntryResult!5226)

(assert (=> b!554684 (= res!347242 (= lt!252000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252004 (select (store (arr!16770 a!3118) i!1132 k!1914) j!142) (array!34930 (store (arr!16770 a!3118) i!1132 k!1914) (size!17134 a!3118)) mask!3119)))))

(declare-fun lt!252002 () (_ BitVec 32))

(assert (=> b!554684 (= lt!252000 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252002 (select (arr!16770 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554684 (= lt!252004 (toIndex!0 (select (store (arr!16770 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554684 (= lt!252002 (toIndex!0 (select (arr!16770 a!3118) j!142) mask!3119))))

(declare-fun b!554686 () Bool)

(declare-fun res!347243 () Bool)

(assert (=> b!554686 (=> (not res!347243) (not e!319777))))

(declare-fun arrayContainsKey!0 (array!34929 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554686 (= res!347243 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554687 () Bool)

(assert (=> b!554687 (= e!319778 (not true))))

(declare-fun lt!252001 () SeekEntryResult!5226)

(assert (=> b!554687 (and (= lt!252001 (Found!5226 j!142)) (or (undefined!6038 lt!252000) (not (is-Intermediate!5226 lt!252000)) (= (select (arr!16770 a!3118) (index!23133 lt!252000)) (select (arr!16770 a!3118) j!142)) (not (= (select (arr!16770 a!3118) (index!23133 lt!252000)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252001 (MissingZero!5226 (index!23133 lt!252000)))))))

(assert (=> b!554687 (= lt!252001 (seekEntryOrOpen!0 (select (arr!16770 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554687 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17226 0))(
  ( (Unit!17227) )
))
(declare-fun lt!252003 () Unit!17226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34929 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17226)

(assert (=> b!554687 (= lt!252003 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554685 () Bool)

(declare-fun res!347249 () Bool)

(assert (=> b!554685 (=> (not res!347249) (not e!319780))))

(declare-datatypes ((List!10903 0))(
  ( (Nil!10900) (Cons!10899 (h!11884 (_ BitVec 64)) (t!17139 List!10903)) )
))
(declare-fun arrayNoDuplicates!0 (array!34929 (_ BitVec 32) List!10903) Bool)

(assert (=> b!554685 (= res!347249 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10900))))

(declare-fun res!347247 () Bool)

(assert (=> start!50750 (=> (not res!347247) (not e!319777))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50750 (= res!347247 (validMask!0 mask!3119))))

(assert (=> start!50750 e!319777))

(assert (=> start!50750 true))

(declare-fun array_inv!12544 (array!34929) Bool)

(assert (=> start!50750 (array_inv!12544 a!3118)))

(assert (= (and start!50750 res!347247) b!554683))

(assert (= (and b!554683 res!347241) b!554679))

(assert (= (and b!554679 res!347245) b!554680))

(assert (= (and b!554680 res!347244) b!554686))

(assert (= (and b!554686 res!347243) b!554682))

(assert (= (and b!554682 res!347248) b!554681))

(assert (= (and b!554681 res!347246) b!554685))

(assert (= (and b!554685 res!347249) b!554684))

(assert (= (and b!554684 res!347242) b!554687))

(declare-fun m!532171 () Bool)

(assert (=> b!554679 m!532171))

(assert (=> b!554679 m!532171))

(declare-fun m!532173 () Bool)

(assert (=> b!554679 m!532173))

(declare-fun m!532175 () Bool)

(assert (=> b!554682 m!532175))

(declare-fun m!532177 () Bool)

(assert (=> b!554681 m!532177))

(declare-fun m!532179 () Bool)

(assert (=> start!50750 m!532179))

(declare-fun m!532181 () Bool)

(assert (=> start!50750 m!532181))

(assert (=> b!554684 m!532171))

(declare-fun m!532183 () Bool)

(assert (=> b!554684 m!532183))

(assert (=> b!554684 m!532171))

(declare-fun m!532185 () Bool)

(assert (=> b!554684 m!532185))

(assert (=> b!554684 m!532185))

(declare-fun m!532187 () Bool)

(assert (=> b!554684 m!532187))

(declare-fun m!532189 () Bool)

(assert (=> b!554684 m!532189))

(assert (=> b!554684 m!532171))

(declare-fun m!532191 () Bool)

(assert (=> b!554684 m!532191))

(assert (=> b!554684 m!532185))

(declare-fun m!532193 () Bool)

(assert (=> b!554684 m!532193))

(declare-fun m!532195 () Bool)

(assert (=> b!554686 m!532195))

(declare-fun m!532197 () Bool)

(assert (=> b!554685 m!532197))

(declare-fun m!532199 () Bool)

(assert (=> b!554680 m!532199))

(declare-fun m!532201 () Bool)

(assert (=> b!554687 m!532201))

(assert (=> b!554687 m!532171))

(declare-fun m!532203 () Bool)

(assert (=> b!554687 m!532203))

(declare-fun m!532205 () Bool)

(assert (=> b!554687 m!532205))

(assert (=> b!554687 m!532171))

(declare-fun m!532207 () Bool)

(assert (=> b!554687 m!532207))

(push 1)

