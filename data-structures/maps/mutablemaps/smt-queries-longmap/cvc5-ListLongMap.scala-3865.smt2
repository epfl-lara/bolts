; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53218 () Bool)

(assert start!53218)

(declare-fun b!578096 () Bool)

(declare-fun res!366066 () Bool)

(declare-fun e!332485 () Bool)

(assert (=> b!578096 (=> (not res!366066) (not e!332485))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578096 (= res!366066 (validKeyInArray!0 k!1786))))

(declare-fun b!578097 () Bool)

(declare-fun res!366068 () Bool)

(declare-fun e!332483 () Bool)

(assert (=> b!578097 (=> (not res!366068) (not e!332483))))

(declare-datatypes ((array!36073 0))(
  ( (array!36074 (arr!17307 (Array (_ BitVec 32) (_ BitVec 64))) (size!17671 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36073)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36073 (_ BitVec 32)) Bool)

(assert (=> b!578097 (= res!366068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578098 () Bool)

(declare-fun res!366065 () Bool)

(assert (=> b!578098 (=> (not res!366065) (not e!332485))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578098 (= res!366065 (validKeyInArray!0 (select (arr!17307 a!2986) j!136)))))

(declare-fun b!578099 () Bool)

(declare-fun res!366063 () Bool)

(assert (=> b!578099 (=> (not res!366063) (not e!332485))))

(declare-fun arrayContainsKey!0 (array!36073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578099 (= res!366063 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578100 () Bool)

(assert (=> b!578100 (= e!332485 e!332483)))

(declare-fun res!366064 () Bool)

(assert (=> b!578100 (=> (not res!366064) (not e!332483))))

(declare-datatypes ((SeekEntryResult!5754 0))(
  ( (MissingZero!5754 (index!25243 (_ BitVec 32))) (Found!5754 (index!25244 (_ BitVec 32))) (Intermediate!5754 (undefined!6566 Bool) (index!25245 (_ BitVec 32)) (x!54178 (_ BitVec 32))) (Undefined!5754) (MissingVacant!5754 (index!25246 (_ BitVec 32))) )
))
(declare-fun lt!264181 () SeekEntryResult!5754)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578100 (= res!366064 (or (= lt!264181 (MissingZero!5754 i!1108)) (= lt!264181 (MissingVacant!5754 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36073 (_ BitVec 32)) SeekEntryResult!5754)

(assert (=> b!578100 (= lt!264181 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!578101 () Bool)

(assert (=> b!578101 (= e!332483 false)))

(declare-fun lt!264182 () Bool)

(declare-datatypes ((List!11401 0))(
  ( (Nil!11398) (Cons!11397 (h!12442 (_ BitVec 64)) (t!17637 List!11401)) )
))
(declare-fun arrayNoDuplicates!0 (array!36073 (_ BitVec 32) List!11401) Bool)

(assert (=> b!578101 (= lt!264182 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11398))))

(declare-fun res!366067 () Bool)

(assert (=> start!53218 (=> (not res!366067) (not e!332485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53218 (= res!366067 (validMask!0 mask!3053))))

(assert (=> start!53218 e!332485))

(assert (=> start!53218 true))

(declare-fun array_inv!13081 (array!36073) Bool)

(assert (=> start!53218 (array_inv!13081 a!2986)))

(declare-fun b!578102 () Bool)

(declare-fun res!366062 () Bool)

(assert (=> b!578102 (=> (not res!366062) (not e!332485))))

(assert (=> b!578102 (= res!366062 (and (= (size!17671 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17671 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17671 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53218 res!366067) b!578102))

(assert (= (and b!578102 res!366062) b!578098))

(assert (= (and b!578098 res!366065) b!578096))

(assert (= (and b!578096 res!366066) b!578099))

(assert (= (and b!578099 res!366063) b!578100))

(assert (= (and b!578100 res!366064) b!578097))

(assert (= (and b!578097 res!366068) b!578101))

(declare-fun m!556855 () Bool)

(assert (=> b!578098 m!556855))

(assert (=> b!578098 m!556855))

(declare-fun m!556857 () Bool)

(assert (=> b!578098 m!556857))

(declare-fun m!556859 () Bool)

(assert (=> b!578097 m!556859))

(declare-fun m!556861 () Bool)

(assert (=> b!578100 m!556861))

(declare-fun m!556863 () Bool)

(assert (=> start!53218 m!556863))

(declare-fun m!556865 () Bool)

(assert (=> start!53218 m!556865))

(declare-fun m!556867 () Bool)

(assert (=> b!578099 m!556867))

(declare-fun m!556869 () Bool)

(assert (=> b!578096 m!556869))

(declare-fun m!556871 () Bool)

(assert (=> b!578101 m!556871))

(push 1)

