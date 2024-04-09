; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53244 () Bool)

(assert start!53244)

(declare-fun b!578369 () Bool)

(declare-fun e!332601 () Bool)

(declare-fun e!332600 () Bool)

(assert (=> b!578369 (= e!332601 e!332600)))

(declare-fun res!366336 () Bool)

(assert (=> b!578369 (=> (not res!366336) (not e!332600))))

(declare-datatypes ((SeekEntryResult!5767 0))(
  ( (MissingZero!5767 (index!25295 (_ BitVec 32))) (Found!5767 (index!25296 (_ BitVec 32))) (Intermediate!5767 (undefined!6579 Bool) (index!25297 (_ BitVec 32)) (x!54223 (_ BitVec 32))) (Undefined!5767) (MissingVacant!5767 (index!25298 (_ BitVec 32))) )
))
(declare-fun lt!264260 () SeekEntryResult!5767)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578369 (= res!366336 (or (= lt!264260 (MissingZero!5767 i!1108)) (= lt!264260 (MissingVacant!5767 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!36099 0))(
  ( (array!36100 (arr!17320 (Array (_ BitVec 32) (_ BitVec 64))) (size!17684 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36099)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36099 (_ BitVec 32)) SeekEntryResult!5767)

(assert (=> b!578369 (= lt!264260 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578370 () Bool)

(declare-fun res!366338 () Bool)

(assert (=> b!578370 (=> (not res!366338) (not e!332601))))

(declare-fun arrayContainsKey!0 (array!36099 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578370 (= res!366338 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578371 () Bool)

(declare-fun res!366339 () Bool)

(assert (=> b!578371 (=> (not res!366339) (not e!332600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36099 (_ BitVec 32)) Bool)

(assert (=> b!578371 (= res!366339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578372 () Bool)

(declare-fun res!366341 () Bool)

(assert (=> b!578372 (=> (not res!366341) (not e!332601))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578372 (= res!366341 (and (= (size!17684 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17684 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17684 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!366340 () Bool)

(assert (=> start!53244 (=> (not res!366340) (not e!332601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53244 (= res!366340 (validMask!0 mask!3053))))

(assert (=> start!53244 e!332601))

(assert (=> start!53244 true))

(declare-fun array_inv!13094 (array!36099) Bool)

(assert (=> start!53244 (array_inv!13094 a!2986)))

(declare-fun b!578373 () Bool)

(declare-fun res!366335 () Bool)

(assert (=> b!578373 (=> (not res!366335) (not e!332601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578373 (= res!366335 (validKeyInArray!0 k0!1786))))

(declare-fun b!578374 () Bool)

(assert (=> b!578374 (= e!332600 false)))

(declare-fun lt!264259 () Bool)

(declare-datatypes ((List!11414 0))(
  ( (Nil!11411) (Cons!11410 (h!12455 (_ BitVec 64)) (t!17650 List!11414)) )
))
(declare-fun arrayNoDuplicates!0 (array!36099 (_ BitVec 32) List!11414) Bool)

(assert (=> b!578374 (= lt!264259 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11411))))

(declare-fun b!578375 () Bool)

(declare-fun res!366337 () Bool)

(assert (=> b!578375 (=> (not res!366337) (not e!332601))))

(assert (=> b!578375 (= res!366337 (validKeyInArray!0 (select (arr!17320 a!2986) j!136)))))

(assert (= (and start!53244 res!366340) b!578372))

(assert (= (and b!578372 res!366341) b!578375))

(assert (= (and b!578375 res!366337) b!578373))

(assert (= (and b!578373 res!366335) b!578370))

(assert (= (and b!578370 res!366338) b!578369))

(assert (= (and b!578369 res!366336) b!578371))

(assert (= (and b!578371 res!366339) b!578374))

(declare-fun m!557089 () Bool)

(assert (=> b!578374 m!557089))

(declare-fun m!557091 () Bool)

(assert (=> b!578373 m!557091))

(declare-fun m!557093 () Bool)

(assert (=> b!578370 m!557093))

(declare-fun m!557095 () Bool)

(assert (=> b!578375 m!557095))

(assert (=> b!578375 m!557095))

(declare-fun m!557097 () Bool)

(assert (=> b!578375 m!557097))

(declare-fun m!557099 () Bool)

(assert (=> b!578369 m!557099))

(declare-fun m!557101 () Bool)

(assert (=> b!578371 m!557101))

(declare-fun m!557103 () Bool)

(assert (=> start!53244 m!557103))

(declare-fun m!557105 () Bool)

(assert (=> start!53244 m!557105))

(check-sat (not b!578373) (not b!578369) (not b!578370) (not b!578374) (not b!578375) (not start!53244) (not b!578371))
(check-sat)
