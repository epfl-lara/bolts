; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50208 () Bool)

(assert start!50208)

(declare-fun b!549133 () Bool)

(declare-fun e!317188 () Bool)

(declare-fun e!317186 () Bool)

(assert (=> b!549133 (= e!317188 e!317186)))

(declare-fun res!342433 () Bool)

(assert (=> b!549133 (=> (not res!342433) (not e!317186))))

(declare-datatypes ((SeekEntryResult!5075 0))(
  ( (MissingZero!5075 (index!22527 (_ BitVec 32))) (Found!5075 (index!22528 (_ BitVec 32))) (Intermediate!5075 (undefined!5887 Bool) (index!22529 (_ BitVec 32)) (x!51488 (_ BitVec 32))) (Undefined!5075) (MissingVacant!5075 (index!22530 (_ BitVec 32))) )
))
(declare-fun lt!250058 () SeekEntryResult!5075)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549133 (= res!342433 (or (= lt!250058 (MissingZero!5075 i!1132)) (= lt!250058 (MissingVacant!5075 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!34615 0))(
  ( (array!34616 (arr!16619 (Array (_ BitVec 32) (_ BitVec 64))) (size!16983 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34615)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34615 (_ BitVec 32)) SeekEntryResult!5075)

(assert (=> b!549133 (= lt!250058 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549134 () Bool)

(declare-fun res!342427 () Bool)

(assert (=> b!549134 (=> (not res!342427) (not e!317188))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549134 (= res!342427 (validKeyInArray!0 k!1914))))

(declare-fun b!549135 () Bool)

(declare-fun res!342434 () Bool)

(assert (=> b!549135 (=> (not res!342434) (not e!317186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34615 (_ BitVec 32)) Bool)

(assert (=> b!549135 (= res!342434 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549136 () Bool)

(declare-fun res!342428 () Bool)

(assert (=> b!549136 (=> (not res!342428) (not e!317188))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549136 (= res!342428 (validKeyInArray!0 (select (arr!16619 a!3118) j!142)))))

(declare-fun res!342431 () Bool)

(assert (=> start!50208 (=> (not res!342431) (not e!317188))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50208 (= res!342431 (validMask!0 mask!3119))))

(assert (=> start!50208 e!317188))

(assert (=> start!50208 true))

(declare-fun array_inv!12393 (array!34615) Bool)

(assert (=> start!50208 (array_inv!12393 a!3118)))

(declare-fun b!549137 () Bool)

(declare-fun res!342430 () Bool)

(assert (=> b!549137 (=> (not res!342430) (not e!317188))))

(assert (=> b!549137 (= res!342430 (and (= (size!16983 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16983 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16983 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549138 () Bool)

(assert (=> b!549138 (= e!317186 false)))

(declare-fun lt!250057 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549138 (= lt!250057 (toIndex!0 (select (store (arr!16619 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!549139 () Bool)

(declare-fun res!342432 () Bool)

(assert (=> b!549139 (=> (not res!342432) (not e!317186))))

(declare-datatypes ((List!10752 0))(
  ( (Nil!10749) (Cons!10748 (h!11721 (_ BitVec 64)) (t!16988 List!10752)) )
))
(declare-fun arrayNoDuplicates!0 (array!34615 (_ BitVec 32) List!10752) Bool)

(assert (=> b!549139 (= res!342432 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10749))))

(declare-fun b!549140 () Bool)

(declare-fun res!342429 () Bool)

(assert (=> b!549140 (=> (not res!342429) (not e!317188))))

(declare-fun arrayContainsKey!0 (array!34615 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549140 (= res!342429 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50208 res!342431) b!549137))

(assert (= (and b!549137 res!342430) b!549136))

(assert (= (and b!549136 res!342428) b!549134))

(assert (= (and b!549134 res!342427) b!549140))

(assert (= (and b!549140 res!342429) b!549133))

(assert (= (and b!549133 res!342433) b!549135))

(assert (= (and b!549135 res!342434) b!549139))

(assert (= (and b!549139 res!342432) b!549138))

(declare-fun m!526021 () Bool)

(assert (=> b!549140 m!526021))

(declare-fun m!526023 () Bool)

(assert (=> b!549134 m!526023))

(declare-fun m!526025 () Bool)

(assert (=> b!549135 m!526025))

(declare-fun m!526027 () Bool)

(assert (=> b!549133 m!526027))

(declare-fun m!526029 () Bool)

(assert (=> b!549138 m!526029))

(declare-fun m!526031 () Bool)

(assert (=> b!549138 m!526031))

(assert (=> b!549138 m!526031))

(declare-fun m!526033 () Bool)

(assert (=> b!549138 m!526033))

(declare-fun m!526035 () Bool)

(assert (=> start!50208 m!526035))

(declare-fun m!526037 () Bool)

(assert (=> start!50208 m!526037))

(declare-fun m!526039 () Bool)

(assert (=> b!549136 m!526039))

(assert (=> b!549136 m!526039))

(declare-fun m!526041 () Bool)

(assert (=> b!549136 m!526041))

(declare-fun m!526043 () Bool)

(assert (=> b!549139 m!526043))

(push 1)

(assert (not b!549133))

(assert (not b!549139))

(assert (not b!549135))

(assert (not b!549138))

(assert (not b!549136))

(assert (not b!549140))

(assert (not start!50208))

(assert (not b!549134))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

