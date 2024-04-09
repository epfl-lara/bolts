; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53222 () Bool)

(assert start!53222)

(declare-fun b!578138 () Bool)

(declare-fun res!366109 () Bool)

(declare-fun e!332501 () Bool)

(assert (=> b!578138 (=> (not res!366109) (not e!332501))))

(declare-datatypes ((array!36077 0))(
  ( (array!36078 (arr!17309 (Array (_ BitVec 32) (_ BitVec 64))) (size!17673 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36077)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36077 (_ BitVec 32)) Bool)

(assert (=> b!578138 (= res!366109 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578139 () Bool)

(declare-fun e!332502 () Bool)

(assert (=> b!578139 (= e!332502 e!332501)))

(declare-fun res!366110 () Bool)

(assert (=> b!578139 (=> (not res!366110) (not e!332501))))

(declare-datatypes ((SeekEntryResult!5756 0))(
  ( (MissingZero!5756 (index!25251 (_ BitVec 32))) (Found!5756 (index!25252 (_ BitVec 32))) (Intermediate!5756 (undefined!6568 Bool) (index!25253 (_ BitVec 32)) (x!54180 (_ BitVec 32))) (Undefined!5756) (MissingVacant!5756 (index!25254 (_ BitVec 32))) )
))
(declare-fun lt!264193 () SeekEntryResult!5756)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578139 (= res!366110 (or (= lt!264193 (MissingZero!5756 i!1108)) (= lt!264193 (MissingVacant!5756 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36077 (_ BitVec 32)) SeekEntryResult!5756)

(assert (=> b!578139 (= lt!264193 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578140 () Bool)

(declare-fun res!366107 () Bool)

(assert (=> b!578140 (=> (not res!366107) (not e!332502))))

(declare-fun arrayContainsKey!0 (array!36077 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578140 (= res!366107 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578141 () Bool)

(declare-fun res!366104 () Bool)

(assert (=> b!578141 (=> (not res!366104) (not e!332502))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578141 (= res!366104 (and (= (size!17673 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17673 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17673 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578142 () Bool)

(declare-fun res!366106 () Bool)

(assert (=> b!578142 (=> (not res!366106) (not e!332502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578142 (= res!366106 (validKeyInArray!0 (select (arr!17309 a!2986) j!136)))))

(declare-fun b!578143 () Bool)

(assert (=> b!578143 (= e!332501 false)))

(declare-fun lt!264194 () Bool)

(declare-datatypes ((List!11403 0))(
  ( (Nil!11400) (Cons!11399 (h!12444 (_ BitVec 64)) (t!17639 List!11403)) )
))
(declare-fun arrayNoDuplicates!0 (array!36077 (_ BitVec 32) List!11403) Bool)

(assert (=> b!578143 (= lt!264194 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11400))))

(declare-fun res!366108 () Bool)

(assert (=> start!53222 (=> (not res!366108) (not e!332502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53222 (= res!366108 (validMask!0 mask!3053))))

(assert (=> start!53222 e!332502))

(assert (=> start!53222 true))

(declare-fun array_inv!13083 (array!36077) Bool)

(assert (=> start!53222 (array_inv!13083 a!2986)))

(declare-fun b!578144 () Bool)

(declare-fun res!366105 () Bool)

(assert (=> b!578144 (=> (not res!366105) (not e!332502))))

(assert (=> b!578144 (= res!366105 (validKeyInArray!0 k!1786))))

(assert (= (and start!53222 res!366108) b!578141))

(assert (= (and b!578141 res!366104) b!578142))

(assert (= (and b!578142 res!366106) b!578144))

(assert (= (and b!578144 res!366105) b!578140))

(assert (= (and b!578140 res!366107) b!578139))

(assert (= (and b!578139 res!366110) b!578138))

(assert (= (and b!578138 res!366109) b!578143))

(declare-fun m!556891 () Bool)

(assert (=> b!578143 m!556891))

(declare-fun m!556893 () Bool)

(assert (=> b!578140 m!556893))

(declare-fun m!556895 () Bool)

(assert (=> b!578142 m!556895))

(assert (=> b!578142 m!556895))

(declare-fun m!556897 () Bool)

(assert (=> b!578142 m!556897))

(declare-fun m!556899 () Bool)

(assert (=> b!578138 m!556899))

(declare-fun m!556901 () Bool)

(assert (=> start!53222 m!556901))

(declare-fun m!556903 () Bool)

(assert (=> start!53222 m!556903))

(declare-fun m!556905 () Bool)

(assert (=> b!578144 m!556905))

(declare-fun m!556907 () Bool)

(assert (=> b!578139 m!556907))

(push 1)

