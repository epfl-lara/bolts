; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50210 () Bool)

(assert start!50210)

(declare-fun res!342457 () Bool)

(declare-fun e!317197 () Bool)

(assert (=> start!50210 (=> (not res!342457) (not e!317197))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50210 (= res!342457 (validMask!0 mask!3119))))

(assert (=> start!50210 e!317197))

(assert (=> start!50210 true))

(declare-datatypes ((array!34617 0))(
  ( (array!34618 (arr!16620 (Array (_ BitVec 32) (_ BitVec 64))) (size!16984 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34617)

(declare-fun array_inv!12394 (array!34617) Bool)

(assert (=> start!50210 (array_inv!12394 a!3118)))

(declare-fun b!549159 () Bool)

(declare-fun res!342455 () Bool)

(assert (=> b!549159 (=> (not res!342455) (not e!317197))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34617 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549159 (= res!342455 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!549160 () Bool)

(declare-fun e!317199 () Bool)

(assert (=> b!549160 (= e!317197 e!317199)))

(declare-fun res!342454 () Bool)

(assert (=> b!549160 (=> (not res!342454) (not e!317199))))

(declare-datatypes ((SeekEntryResult!5076 0))(
  ( (MissingZero!5076 (index!22531 (_ BitVec 32))) (Found!5076 (index!22532 (_ BitVec 32))) (Intermediate!5076 (undefined!5888 Bool) (index!22533 (_ BitVec 32)) (x!51497 (_ BitVec 32))) (Undefined!5076) (MissingVacant!5076 (index!22534 (_ BitVec 32))) )
))
(declare-fun lt!250063 () SeekEntryResult!5076)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549160 (= res!342454 (or (= lt!250063 (MissingZero!5076 i!1132)) (= lt!250063 (MissingVacant!5076 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34617 (_ BitVec 32)) SeekEntryResult!5076)

(assert (=> b!549160 (= lt!250063 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549161 () Bool)

(declare-fun res!342453 () Bool)

(assert (=> b!549161 (=> (not res!342453) (not e!317199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34617 (_ BitVec 32)) Bool)

(assert (=> b!549161 (= res!342453 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549162 () Bool)

(declare-fun res!342459 () Bool)

(assert (=> b!549162 (=> (not res!342459) (not e!317199))))

(declare-datatypes ((List!10753 0))(
  ( (Nil!10750) (Cons!10749 (h!11722 (_ BitVec 64)) (t!16989 List!10753)) )
))
(declare-fun arrayNoDuplicates!0 (array!34617 (_ BitVec 32) List!10753) Bool)

(assert (=> b!549162 (= res!342459 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10750))))

(declare-fun e!317198 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!549163 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549163 (= e!317198 (not (validKeyInArray!0 (select (store (arr!16620 a!3118) i!1132 k!1914) j!142))))))

(declare-fun b!549164 () Bool)

(declare-fun res!342461 () Bool)

(assert (=> b!549164 (=> (not res!342461) (not e!317197))))

(assert (=> b!549164 (= res!342461 (validKeyInArray!0 (select (arr!16620 a!3118) j!142)))))

(declare-fun b!549165 () Bool)

(assert (=> b!549165 (= e!317199 e!317198)))

(declare-fun res!342456 () Bool)

(assert (=> b!549165 (=> (not res!342456) (not e!317198))))

(declare-fun lt!250064 () (_ BitVec 32))

(assert (=> b!549165 (= res!342456 (and (bvsge mask!3119 #b00000000000000000000000000000000) (bvsge lt!250064 #b00000000000000000000000000000000) (bvslt lt!250064 (bvadd #b00000000000000000000000000000001 mask!3119))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549165 (= lt!250064 (toIndex!0 (select (store (arr!16620 a!3118) i!1132 k!1914) j!142) mask!3119))))

(declare-fun b!549166 () Bool)

(declare-fun res!342458 () Bool)

(assert (=> b!549166 (=> (not res!342458) (not e!317197))))

(assert (=> b!549166 (= res!342458 (and (= (size!16984 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16984 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16984 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549167 () Bool)

(declare-fun res!342460 () Bool)

(assert (=> b!549167 (=> (not res!342460) (not e!317197))))

(assert (=> b!549167 (= res!342460 (validKeyInArray!0 k!1914))))

(assert (= (and start!50210 res!342457) b!549166))

(assert (= (and b!549166 res!342458) b!549164))

(assert (= (and b!549164 res!342461) b!549167))

(assert (= (and b!549167 res!342460) b!549159))

(assert (= (and b!549159 res!342455) b!549160))

(assert (= (and b!549160 res!342454) b!549161))

(assert (= (and b!549161 res!342453) b!549162))

(assert (= (and b!549162 res!342459) b!549165))

(assert (= (and b!549165 res!342456) b!549163))

(declare-fun m!526045 () Bool)

(assert (=> b!549165 m!526045))

(declare-fun m!526047 () Bool)

(assert (=> b!549165 m!526047))

(assert (=> b!549165 m!526047))

(declare-fun m!526049 () Bool)

(assert (=> b!549165 m!526049))

(assert (=> b!549163 m!526045))

(assert (=> b!549163 m!526047))

(assert (=> b!549163 m!526047))

(declare-fun m!526051 () Bool)

(assert (=> b!549163 m!526051))

(declare-fun m!526053 () Bool)

(assert (=> b!549162 m!526053))

(declare-fun m!526055 () Bool)

(assert (=> start!50210 m!526055))

(declare-fun m!526057 () Bool)

(assert (=> start!50210 m!526057))

(declare-fun m!526059 () Bool)

(assert (=> b!549160 m!526059))

(declare-fun m!526061 () Bool)

(assert (=> b!549159 m!526061))

(declare-fun m!526063 () Bool)

(assert (=> b!549167 m!526063))

(declare-fun m!526065 () Bool)

(assert (=> b!549164 m!526065))

(assert (=> b!549164 m!526065))

(declare-fun m!526067 () Bool)

(assert (=> b!549164 m!526067))

(declare-fun m!526069 () Bool)

(assert (=> b!549161 m!526069))

(push 1)

