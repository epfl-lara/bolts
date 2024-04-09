; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50226 () Bool)

(assert start!50226)

(declare-fun b!549358 () Bool)

(declare-fun e!317277 () Bool)

(assert (=> b!549358 (= e!317277 false)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5084 0))(
  ( (MissingZero!5084 (index!22563 (_ BitVec 32))) (Found!5084 (index!22564 (_ BitVec 32))) (Intermediate!5084 (undefined!5896 Bool) (index!22565 (_ BitVec 32)) (x!51521 (_ BitVec 32))) (Undefined!5084) (MissingVacant!5084 (index!22566 (_ BitVec 32))) )
))
(declare-fun lt!250163 () SeekEntryResult!5084)

(declare-fun lt!250165 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34633 0))(
  ( (array!34634 (arr!16628 (Array (_ BitVec 32) (_ BitVec 64))) (size!16992 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34633)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34633 (_ BitVec 32)) SeekEntryResult!5084)

(assert (=> b!549358 (= lt!250163 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250165 (select (store (arr!16628 a!3118) i!1132 k!1914) j!142) (array!34634 (store (arr!16628 a!3118) i!1132 k!1914) (size!16992 a!3118)) mask!3119))))

(declare-fun lt!250164 () SeekEntryResult!5084)

(declare-fun lt!250162 () (_ BitVec 32))

(assert (=> b!549358 (= lt!250164 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250162 (select (arr!16628 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549358 (= lt!250165 (toIndex!0 (select (store (arr!16628 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!549358 (= lt!250162 (toIndex!0 (select (arr!16628 a!3118) j!142) mask!3119))))

(declare-fun b!549359 () Bool)

(declare-fun res!342653 () Bool)

(declare-fun e!317278 () Bool)

(assert (=> b!549359 (=> (not res!342653) (not e!317278))))

(declare-fun arrayContainsKey!0 (array!34633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549359 (= res!342653 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!342652 () Bool)

(assert (=> start!50226 (=> (not res!342652) (not e!317278))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50226 (= res!342652 (validMask!0 mask!3119))))

(assert (=> start!50226 e!317278))

(assert (=> start!50226 true))

(declare-fun array_inv!12402 (array!34633) Bool)

(assert (=> start!50226 (array_inv!12402 a!3118)))

(declare-fun b!549360 () Bool)

(declare-fun res!342654 () Bool)

(assert (=> b!549360 (=> (not res!342654) (not e!317277))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34633 (_ BitVec 32)) Bool)

(assert (=> b!549360 (= res!342654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549361 () Bool)

(declare-fun res!342655 () Bool)

(assert (=> b!549361 (=> (not res!342655) (not e!317278))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549361 (= res!342655 (validKeyInArray!0 k!1914))))

(declare-fun b!549362 () Bool)

(declare-fun res!342656 () Bool)

(assert (=> b!549362 (=> (not res!342656) (not e!317277))))

(declare-datatypes ((List!10761 0))(
  ( (Nil!10758) (Cons!10757 (h!11730 (_ BitVec 64)) (t!16997 List!10761)) )
))
(declare-fun arrayNoDuplicates!0 (array!34633 (_ BitVec 32) List!10761) Bool)

(assert (=> b!549362 (= res!342656 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10758))))

(declare-fun b!549363 () Bool)

(declare-fun res!342658 () Bool)

(assert (=> b!549363 (=> (not res!342658) (not e!317278))))

(assert (=> b!549363 (= res!342658 (validKeyInArray!0 (select (arr!16628 a!3118) j!142)))))

(declare-fun b!549364 () Bool)

(declare-fun res!342659 () Bool)

(assert (=> b!549364 (=> (not res!342659) (not e!317278))))

(assert (=> b!549364 (= res!342659 (and (= (size!16992 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16992 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16992 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549365 () Bool)

(assert (=> b!549365 (= e!317278 e!317277)))

(declare-fun res!342657 () Bool)

(assert (=> b!549365 (=> (not res!342657) (not e!317277))))

(declare-fun lt!250166 () SeekEntryResult!5084)

(assert (=> b!549365 (= res!342657 (or (= lt!250166 (MissingZero!5084 i!1132)) (= lt!250166 (MissingVacant!5084 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34633 (_ BitVec 32)) SeekEntryResult!5084)

(assert (=> b!549365 (= lt!250166 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!50226 res!342652) b!549364))

(assert (= (and b!549364 res!342659) b!549363))

(assert (= (and b!549363 res!342658) b!549361))

(assert (= (and b!549361 res!342655) b!549359))

(assert (= (and b!549359 res!342653) b!549365))

(assert (= (and b!549365 res!342657) b!549360))

(assert (= (and b!549360 res!342654) b!549362))

(assert (= (and b!549362 res!342656) b!549358))

(declare-fun m!526273 () Bool)

(assert (=> start!50226 m!526273))

(declare-fun m!526275 () Bool)

(assert (=> start!50226 m!526275))

(declare-fun m!526277 () Bool)

(assert (=> b!549359 m!526277))

(declare-fun m!526279 () Bool)

(assert (=> b!549358 m!526279))

(declare-fun m!526281 () Bool)

(assert (=> b!549358 m!526281))

(assert (=> b!549358 m!526279))

(declare-fun m!526283 () Bool)

(assert (=> b!549358 m!526283))

(assert (=> b!549358 m!526283))

(declare-fun m!526285 () Bool)

(assert (=> b!549358 m!526285))

(assert (=> b!549358 m!526283))

(declare-fun m!526287 () Bool)

(assert (=> b!549358 m!526287))

(declare-fun m!526289 () Bool)

(assert (=> b!549358 m!526289))

(assert (=> b!549358 m!526279))

(declare-fun m!526291 () Bool)

(assert (=> b!549358 m!526291))

(declare-fun m!526293 () Bool)

(assert (=> b!549362 m!526293))

(declare-fun m!526295 () Bool)

(assert (=> b!549361 m!526295))

(declare-fun m!526297 () Bool)

(assert (=> b!549360 m!526297))

(declare-fun m!526299 () Bool)

(assert (=> b!549365 m!526299))

(assert (=> b!549363 m!526279))

(assert (=> b!549363 m!526279))

(declare-fun m!526301 () Bool)

(assert (=> b!549363 m!526301))

(push 1)

(assert (not b!549363))

