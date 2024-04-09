; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53220 () Bool)

(assert start!53220)

(declare-fun b!578117 () Bool)

(declare-fun res!366085 () Bool)

(declare-fun e!332492 () Bool)

(assert (=> b!578117 (=> (not res!366085) (not e!332492))))

(declare-datatypes ((array!36075 0))(
  ( (array!36076 (arr!17308 (Array (_ BitVec 32) (_ BitVec 64))) (size!17672 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36075)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36075 (_ BitVec 32)) Bool)

(assert (=> b!578117 (= res!366085 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578118 () Bool)

(declare-fun res!366084 () Bool)

(declare-fun e!332493 () Bool)

(assert (=> b!578118 (=> (not res!366084) (not e!332493))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578118 (= res!366084 (and (= (size!17672 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17672 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17672 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366088 () Bool)

(assert (=> start!53220 (=> (not res!366088) (not e!332493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53220 (= res!366088 (validMask!0 mask!3053))))

(assert (=> start!53220 e!332493))

(assert (=> start!53220 true))

(declare-fun array_inv!13082 (array!36075) Bool)

(assert (=> start!53220 (array_inv!13082 a!2986)))

(declare-fun b!578119 () Bool)

(declare-fun res!366087 () Bool)

(assert (=> b!578119 (=> (not res!366087) (not e!332493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578119 (= res!366087 (validKeyInArray!0 (select (arr!17308 a!2986) j!136)))))

(declare-fun b!578120 () Bool)

(declare-fun res!366083 () Bool)

(assert (=> b!578120 (=> (not res!366083) (not e!332493))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!578120 (= res!366083 (validKeyInArray!0 k0!1786))))

(declare-fun b!578121 () Bool)

(declare-fun res!366089 () Bool)

(assert (=> b!578121 (=> (not res!366089) (not e!332493))))

(declare-fun arrayContainsKey!0 (array!36075 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578121 (= res!366089 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578122 () Bool)

(assert (=> b!578122 (= e!332493 e!332492)))

(declare-fun res!366086 () Bool)

(assert (=> b!578122 (=> (not res!366086) (not e!332492))))

(declare-datatypes ((SeekEntryResult!5755 0))(
  ( (MissingZero!5755 (index!25247 (_ BitVec 32))) (Found!5755 (index!25248 (_ BitVec 32))) (Intermediate!5755 (undefined!6567 Bool) (index!25249 (_ BitVec 32)) (x!54179 (_ BitVec 32))) (Undefined!5755) (MissingVacant!5755 (index!25250 (_ BitVec 32))) )
))
(declare-fun lt!264188 () SeekEntryResult!5755)

(assert (=> b!578122 (= res!366086 (or (= lt!264188 (MissingZero!5755 i!1108)) (= lt!264188 (MissingVacant!5755 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36075 (_ BitVec 32)) SeekEntryResult!5755)

(assert (=> b!578122 (= lt!264188 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578123 () Bool)

(assert (=> b!578123 (= e!332492 false)))

(declare-fun lt!264187 () Bool)

(declare-datatypes ((List!11402 0))(
  ( (Nil!11399) (Cons!11398 (h!12443 (_ BitVec 64)) (t!17638 List!11402)) )
))
(declare-fun arrayNoDuplicates!0 (array!36075 (_ BitVec 32) List!11402) Bool)

(assert (=> b!578123 (= lt!264187 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11399))))

(assert (= (and start!53220 res!366088) b!578118))

(assert (= (and b!578118 res!366084) b!578119))

(assert (= (and b!578119 res!366087) b!578120))

(assert (= (and b!578120 res!366083) b!578121))

(assert (= (and b!578121 res!366089) b!578122))

(assert (= (and b!578122 res!366086) b!578117))

(assert (= (and b!578117 res!366085) b!578123))

(declare-fun m!556873 () Bool)

(assert (=> b!578117 m!556873))

(declare-fun m!556875 () Bool)

(assert (=> b!578120 m!556875))

(declare-fun m!556877 () Bool)

(assert (=> b!578119 m!556877))

(assert (=> b!578119 m!556877))

(declare-fun m!556879 () Bool)

(assert (=> b!578119 m!556879))

(declare-fun m!556881 () Bool)

(assert (=> start!53220 m!556881))

(declare-fun m!556883 () Bool)

(assert (=> start!53220 m!556883))

(declare-fun m!556885 () Bool)

(assert (=> b!578121 m!556885))

(declare-fun m!556887 () Bool)

(assert (=> b!578123 m!556887))

(declare-fun m!556889 () Bool)

(assert (=> b!578122 m!556889))

(check-sat (not b!578121) (not b!578117) (not b!578120) (not start!53220) (not b!578119) (not b!578122) (not b!578123))
(check-sat)
