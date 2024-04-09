; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50212 () Bool)

(assert start!50212)

(declare-fun b!549186 () Bool)

(declare-fun e!317210 () Bool)

(declare-fun e!317211 () Bool)

(assert (=> b!549186 (= e!317210 e!317211)))

(declare-fun res!342481 () Bool)

(assert (=> b!549186 (=> (not res!342481) (not e!317211))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!250070 () (_ BitVec 32))

(assert (=> b!549186 (= res!342481 (and (bvsge mask!3119 #b00000000000000000000000000000000) (bvsge lt!250070 #b00000000000000000000000000000000) (bvslt lt!250070 (bvadd #b00000000000000000000000000000001 mask!3119))))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34619 0))(
  ( (array!34620 (arr!16621 (Array (_ BitVec 32) (_ BitVec 64))) (size!16985 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34619)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549186 (= lt!250070 (toIndex!0 (select (store (arr!16621 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(declare-fun b!549187 () Bool)

(declare-fun res!342488 () Bool)

(assert (=> b!549187 (=> (not res!342488) (not e!317210))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34619 (_ BitVec 32)) Bool)

(assert (=> b!549187 (= res!342488 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549189 () Bool)

(declare-fun res!342484 () Bool)

(declare-fun e!317212 () Bool)

(assert (=> b!549189 (=> (not res!342484) (not e!317212))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549189 (= res!342484 (validKeyInArray!0 k0!1914))))

(declare-fun b!549190 () Bool)

(declare-fun res!342483 () Bool)

(assert (=> b!549190 (=> (not res!342483) (not e!317212))))

(assert (=> b!549190 (= res!342483 (and (= (size!16985 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16985 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16985 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549191 () Bool)

(declare-fun res!342486 () Bool)

(assert (=> b!549191 (=> (not res!342486) (not e!317210))))

(declare-datatypes ((List!10754 0))(
  ( (Nil!10751) (Cons!10750 (h!11723 (_ BitVec 64)) (t!16990 List!10754)) )
))
(declare-fun arrayNoDuplicates!0 (array!34619 (_ BitVec 32) List!10754) Bool)

(assert (=> b!549191 (= res!342486 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10751))))

(declare-fun b!549192 () Bool)

(declare-fun res!342487 () Bool)

(assert (=> b!549192 (=> (not res!342487) (not e!317212))))

(assert (=> b!549192 (= res!342487 (validKeyInArray!0 (select (arr!16621 a!3118) j!142)))))

(declare-fun b!549193 () Bool)

(assert (=> b!549193 (= e!317212 e!317210)))

(declare-fun res!342482 () Bool)

(assert (=> b!549193 (=> (not res!342482) (not e!317210))))

(declare-datatypes ((SeekEntryResult!5077 0))(
  ( (MissingZero!5077 (index!22535 (_ BitVec 32))) (Found!5077 (index!22536 (_ BitVec 32))) (Intermediate!5077 (undefined!5889 Bool) (index!22537 (_ BitVec 32)) (x!51498 (_ BitVec 32))) (Undefined!5077) (MissingVacant!5077 (index!22538 (_ BitVec 32))) )
))
(declare-fun lt!250069 () SeekEntryResult!5077)

(assert (=> b!549193 (= res!342482 (or (= lt!250069 (MissingZero!5077 i!1132)) (= lt!250069 (MissingVacant!5077 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34619 (_ BitVec 32)) SeekEntryResult!5077)

(assert (=> b!549193 (= lt!250069 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549194 () Bool)

(declare-fun res!342485 () Bool)

(assert (=> b!549194 (=> (not res!342485) (not e!317212))))

(declare-fun arrayContainsKey!0 (array!34619 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549194 (= res!342485 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549188 () Bool)

(assert (=> b!549188 (= e!317211 (not (validKeyInArray!0 (select (store (arr!16621 a!3118) i!1132 k0!1914) j!142))))))

(declare-fun res!342480 () Bool)

(assert (=> start!50212 (=> (not res!342480) (not e!317212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50212 (= res!342480 (validMask!0 mask!3119))))

(assert (=> start!50212 e!317212))

(assert (=> start!50212 true))

(declare-fun array_inv!12395 (array!34619) Bool)

(assert (=> start!50212 (array_inv!12395 a!3118)))

(assert (= (and start!50212 res!342480) b!549190))

(assert (= (and b!549190 res!342483) b!549192))

(assert (= (and b!549192 res!342487) b!549189))

(assert (= (and b!549189 res!342484) b!549194))

(assert (= (and b!549194 res!342485) b!549193))

(assert (= (and b!549193 res!342482) b!549187))

(assert (= (and b!549187 res!342488) b!549191))

(assert (= (and b!549191 res!342486) b!549186))

(assert (= (and b!549186 res!342481) b!549188))

(declare-fun m!526071 () Bool)

(assert (=> start!50212 m!526071))

(declare-fun m!526073 () Bool)

(assert (=> start!50212 m!526073))

(declare-fun m!526075 () Bool)

(assert (=> b!549191 m!526075))

(declare-fun m!526077 () Bool)

(assert (=> b!549189 m!526077))

(declare-fun m!526079 () Bool)

(assert (=> b!549187 m!526079))

(declare-fun m!526081 () Bool)

(assert (=> b!549193 m!526081))

(declare-fun m!526083 () Bool)

(assert (=> b!549194 m!526083))

(declare-fun m!526085 () Bool)

(assert (=> b!549188 m!526085))

(declare-fun m!526087 () Bool)

(assert (=> b!549188 m!526087))

(assert (=> b!549188 m!526087))

(declare-fun m!526089 () Bool)

(assert (=> b!549188 m!526089))

(assert (=> b!549186 m!526085))

(assert (=> b!549186 m!526087))

(assert (=> b!549186 m!526087))

(declare-fun m!526091 () Bool)

(assert (=> b!549186 m!526091))

(declare-fun m!526093 () Bool)

(assert (=> b!549192 m!526093))

(assert (=> b!549192 m!526093))

(declare-fun m!526095 () Bool)

(assert (=> b!549192 m!526095))

(check-sat (not b!549193) (not b!549192) (not start!50212) (not b!549189) (not b!549194) (not b!549188) (not b!549186) (not b!549191) (not b!549187))
(check-sat)
