; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56306 () Bool)

(assert start!56306)

(declare-fun b!624001 () Bool)

(declare-fun res!402336 () Bool)

(declare-fun e!357876 () Bool)

(assert (=> b!624001 (=> (not res!402336) (not e!357876))))

(declare-datatypes ((array!37694 0))(
  ( (array!37695 (arr!18088 (Array (_ BitVec 32) (_ BitVec 64))) (size!18452 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37694)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!624001 (= res!402336 (validKeyInArray!0 (select (arr!18088 a!2986) j!136)))))

(declare-fun b!624002 () Bool)

(declare-fun res!402331 () Bool)

(assert (=> b!624002 (=> (not res!402331) (not e!357876))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!624002 (= res!402331 (validKeyInArray!0 k0!1786))))

(declare-fun b!624003 () Bool)

(declare-fun res!402332 () Bool)

(assert (=> b!624003 (=> (not res!402332) (not e!357876))))

(declare-fun arrayContainsKey!0 (array!37694 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!624003 (= res!402332 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun b!624004 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun e!357875 () Bool)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!624004 (= e!357875 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge vacantSpotIndex!68 (size!18452 a!2986))))))

(declare-fun b!624005 () Bool)

(declare-fun res!402338 () Bool)

(assert (=> b!624005 (=> (not res!402338) (not e!357875))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37694 (_ BitVec 32)) Bool)

(assert (=> b!624005 (= res!402338 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!624006 () Bool)

(declare-fun res!402335 () Bool)

(assert (=> b!624006 (=> (not res!402335) (not e!357876))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!624006 (= res!402335 (and (= (size!18452 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18452 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18452 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!624007 () Bool)

(declare-fun res!402333 () Bool)

(assert (=> b!624007 (=> (not res!402333) (not e!357875))))

(declare-datatypes ((List!12182 0))(
  ( (Nil!12179) (Cons!12178 (h!13223 (_ BitVec 64)) (t!18418 List!12182)) )
))
(declare-fun arrayNoDuplicates!0 (array!37694 (_ BitVec 32) List!12182) Bool)

(assert (=> b!624007 (= res!402333 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12179))))

(declare-fun res!402334 () Bool)

(assert (=> start!56306 (=> (not res!402334) (not e!357876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56306 (= res!402334 (validMask!0 mask!3053))))

(assert (=> start!56306 e!357876))

(assert (=> start!56306 true))

(declare-fun array_inv!13862 (array!37694) Bool)

(assert (=> start!56306 (array_inv!13862 a!2986)))

(declare-fun b!624008 () Bool)

(assert (=> b!624008 (= e!357876 e!357875)))

(declare-fun res!402337 () Bool)

(assert (=> b!624008 (=> (not res!402337) (not e!357875))))

(declare-datatypes ((SeekEntryResult!6535 0))(
  ( (MissingZero!6535 (index!28423 (_ BitVec 32))) (Found!6535 (index!28424 (_ BitVec 32))) (Intermediate!6535 (undefined!7347 Bool) (index!28425 (_ BitVec 32)) (x!57211 (_ BitVec 32))) (Undefined!6535) (MissingVacant!6535 (index!28426 (_ BitVec 32))) )
))
(declare-fun lt!289494 () SeekEntryResult!6535)

(assert (=> b!624008 (= res!402337 (or (= lt!289494 (MissingZero!6535 i!1108)) (= lt!289494 (MissingVacant!6535 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37694 (_ BitVec 32)) SeekEntryResult!6535)

(assert (=> b!624008 (= lt!289494 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!56306 res!402334) b!624006))

(assert (= (and b!624006 res!402335) b!624001))

(assert (= (and b!624001 res!402336) b!624002))

(assert (= (and b!624002 res!402331) b!624003))

(assert (= (and b!624003 res!402332) b!624008))

(assert (= (and b!624008 res!402337) b!624005))

(assert (= (and b!624005 res!402338) b!624007))

(assert (= (and b!624007 res!402333) b!624004))

(declare-fun m!599793 () Bool)

(assert (=> b!624005 m!599793))

(declare-fun m!599795 () Bool)

(assert (=> b!624002 m!599795))

(declare-fun m!599797 () Bool)

(assert (=> b!624007 m!599797))

(declare-fun m!599799 () Bool)

(assert (=> b!624008 m!599799))

(declare-fun m!599801 () Bool)

(assert (=> b!624003 m!599801))

(declare-fun m!599803 () Bool)

(assert (=> start!56306 m!599803))

(declare-fun m!599805 () Bool)

(assert (=> start!56306 m!599805))

(declare-fun m!599807 () Bool)

(assert (=> b!624001 m!599807))

(assert (=> b!624001 m!599807))

(declare-fun m!599809 () Bool)

(assert (=> b!624001 m!599809))

(check-sat (not b!624007) (not b!624008) (not b!624001) (not b!624003) (not start!56306) (not b!624002) (not b!624005))
(check-sat)
