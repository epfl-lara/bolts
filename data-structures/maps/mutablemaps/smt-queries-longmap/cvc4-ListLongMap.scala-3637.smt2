; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50220 () Bool)

(assert start!50220)

(declare-fun res!342584 () Bool)

(declare-fun e!317249 () Bool)

(assert (=> start!50220 (=> (not res!342584) (not e!317249))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50220 (= res!342584 (validMask!0 mask!3119))))

(assert (=> start!50220 e!317249))

(assert (=> start!50220 true))

(declare-datatypes ((array!34627 0))(
  ( (array!34628 (arr!16625 (Array (_ BitVec 32) (_ BitVec 64))) (size!16989 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34627)

(declare-fun array_inv!12399 (array!34627) Bool)

(assert (=> start!50220 (array_inv!12399 a!3118)))

(declare-fun b!549286 () Bool)

(declare-fun e!317250 () Bool)

(assert (=> b!549286 (= e!317250 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5081 0))(
  ( (MissingZero!5081 (index!22551 (_ BitVec 32))) (Found!5081 (index!22552 (_ BitVec 32))) (Intermediate!5081 (undefined!5893 Bool) (index!22553 (_ BitVec 32)) (x!51510 (_ BitVec 32))) (Undefined!5081) (MissingVacant!5081 (index!22554 (_ BitVec 32))) )
))
(declare-fun lt!250118 () SeekEntryResult!5081)

(declare-fun lt!250121 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34627 (_ BitVec 32)) SeekEntryResult!5081)

(assert (=> b!549286 (= lt!250118 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250121 (select (store (arr!16625 a!3118) i!1132 k!1914) j!142) (array!34628 (store (arr!16625 a!3118) i!1132 k!1914) (size!16989 a!3118)) mask!3119))))

(declare-fun lt!250120 () (_ BitVec 32))

(declare-fun lt!250119 () SeekEntryResult!5081)

(assert (=> b!549286 (= lt!250119 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250120 (select (arr!16625 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549286 (= lt!250121 (toIndex!0 (select (store (arr!16625 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549286 (= lt!250120 (toIndex!0 (select (arr!16625 a!3118) j!142) mask!3119))))

(declare-fun b!549287 () Bool)

(declare-fun res!342585 () Bool)

(assert (=> b!549287 (=> (not res!342585) (not e!317250))))

(declare-datatypes ((List!10758 0))(
  ( (Nil!10755) (Cons!10754 (h!11727 (_ BitVec 64)) (t!16994 List!10758)) )
))
(declare-fun arrayNoDuplicates!0 (array!34627 (_ BitVec 32) List!10758) Bool)

(assert (=> b!549287 (= res!342585 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10755))))

(declare-fun b!549288 () Bool)

(declare-fun res!342587 () Bool)

(assert (=> b!549288 (=> (not res!342587) (not e!317249))))

(assert (=> b!549288 (= res!342587 (and (= (size!16989 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16989 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16989 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549289 () Bool)

(assert (=> b!549289 (= e!317249 e!317250)))

(declare-fun res!342582 () Bool)

(assert (=> b!549289 (=> (not res!342582) (not e!317250))))

(declare-fun lt!250117 () SeekEntryResult!5081)

(assert (=> b!549289 (= res!342582 (or (= lt!250117 (MissingZero!5081 i!1132)) (= lt!250117 (MissingVacant!5081 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34627 (_ BitVec 32)) SeekEntryResult!5081)

(assert (=> b!549289 (= lt!250117 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549290 () Bool)

(declare-fun res!342581 () Bool)

(assert (=> b!549290 (=> (not res!342581) (not e!317249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549290 (= res!342581 (validKeyInArray!0 (select (arr!16625 a!3118) j!142)))))

(declare-fun b!549291 () Bool)

(declare-fun res!342580 () Bool)

(assert (=> b!549291 (=> (not res!342580) (not e!317249))))

(assert (=> b!549291 (= res!342580 (validKeyInArray!0 k!1914))))

(declare-fun b!549292 () Bool)

(declare-fun res!342586 () Bool)

(assert (=> b!549292 (=> (not res!342586) (not e!317249))))

(declare-fun arrayContainsKey!0 (array!34627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549292 (= res!342586 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549293 () Bool)

(declare-fun res!342583 () Bool)

(assert (=> b!549293 (=> (not res!342583) (not e!317250))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34627 (_ BitVec 32)) Bool)

(assert (=> b!549293 (= res!342583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50220 res!342584) b!549288))

(assert (= (and b!549288 res!342587) b!549290))

(assert (= (and b!549290 res!342581) b!549291))

(assert (= (and b!549291 res!342580) b!549292))

(assert (= (and b!549292 res!342586) b!549289))

(assert (= (and b!549289 res!342582) b!549293))

(assert (= (and b!549293 res!342583) b!549287))

(assert (= (and b!549287 res!342585) b!549286))

(declare-fun m!526183 () Bool)

(assert (=> b!549289 m!526183))

(declare-fun m!526185 () Bool)

(assert (=> b!549287 m!526185))

(declare-fun m!526187 () Bool)

(assert (=> b!549291 m!526187))

(declare-fun m!526189 () Bool)

(assert (=> start!50220 m!526189))

(declare-fun m!526191 () Bool)

(assert (=> start!50220 m!526191))

(declare-fun m!526193 () Bool)

(assert (=> b!549292 m!526193))

(declare-fun m!526195 () Bool)

(assert (=> b!549293 m!526195))

(declare-fun m!526197 () Bool)

(assert (=> b!549286 m!526197))

(declare-fun m!526199 () Bool)

(assert (=> b!549286 m!526199))

(declare-fun m!526201 () Bool)

(assert (=> b!549286 m!526201))

(declare-fun m!526203 () Bool)

(assert (=> b!549286 m!526203))

(assert (=> b!549286 m!526197))

(assert (=> b!549286 m!526201))

(assert (=> b!549286 m!526201))

(declare-fun m!526205 () Bool)

(assert (=> b!549286 m!526205))

(declare-fun m!526207 () Bool)

(assert (=> b!549286 m!526207))

(assert (=> b!549286 m!526197))

(declare-fun m!526209 () Bool)

(assert (=> b!549286 m!526209))

(assert (=> b!549290 m!526197))

(assert (=> b!549290 m!526197))

(declare-fun m!526211 () Bool)

(assert (=> b!549290 m!526211))

(push 1)

