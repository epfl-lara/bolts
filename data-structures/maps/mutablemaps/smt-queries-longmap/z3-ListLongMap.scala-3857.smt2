; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53046 () Bool)

(assert start!53046)

(declare-fun res!365378 () Bool)

(declare-fun e!331995 () Bool)

(assert (=> start!53046 (=> (not res!365378) (not e!331995))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53046 (= res!365378 (validMask!0 mask!3053))))

(assert (=> start!53046 e!331995))

(assert (=> start!53046 true))

(declare-datatypes ((array!36018 0))(
  ( (array!36019 (arr!17284 (Array (_ BitVec 32) (_ BitVec 64))) (size!17648 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36018)

(declare-fun array_inv!13058 (array!36018) Bool)

(assert (=> start!53046 (array_inv!13058 a!2986)))

(declare-fun b!577192 () Bool)

(declare-fun res!365377 () Bool)

(assert (=> b!577192 (=> (not res!365377) (not e!331995))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!577192 (= res!365377 (validKeyInArray!0 k0!1786))))

(declare-fun b!577193 () Bool)

(declare-fun res!365375 () Bool)

(assert (=> b!577193 (=> (not res!365375) (not e!331995))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!577193 (= res!365375 (and (= (size!17648 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17648 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17648 a!2986)) (not (= i!1108 j!136))))))

(declare-datatypes ((SeekEntryResult!5731 0))(
  ( (MissingZero!5731 (index!25151 (_ BitVec 32))) (Found!5731 (index!25152 (_ BitVec 32))) (Intermediate!5731 (undefined!6543 Bool) (index!25153 (_ BitVec 32)) (x!54091 (_ BitVec 32))) (Undefined!5731) (MissingVacant!5731 (index!25154 (_ BitVec 32))) )
))
(declare-fun lt!263918 () SeekEntryResult!5731)

(declare-fun b!577194 () Bool)

(assert (=> b!577194 (= e!331995 (and (or (= lt!263918 (MissingZero!5731 i!1108)) (= lt!263918 (MissingVacant!5731 i!1108))) (bvsgt #b00000000000000000000000000000000 (size!17648 a!2986))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36018 (_ BitVec 32)) SeekEntryResult!5731)

(assert (=> b!577194 (= lt!263918 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!577195 () Bool)

(declare-fun res!365374 () Bool)

(assert (=> b!577195 (=> (not res!365374) (not e!331995))))

(assert (=> b!577195 (= res!365374 (validKeyInArray!0 (select (arr!17284 a!2986) j!136)))))

(declare-fun b!577196 () Bool)

(declare-fun res!365376 () Bool)

(assert (=> b!577196 (=> (not res!365376) (not e!331995))))

(declare-fun arrayContainsKey!0 (array!36018 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!577196 (= res!365376 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53046 res!365378) b!577193))

(assert (= (and b!577193 res!365375) b!577195))

(assert (= (and b!577195 res!365374) b!577192))

(assert (= (and b!577192 res!365377) b!577196))

(assert (= (and b!577196 res!365376) b!577194))

(declare-fun m!556125 () Bool)

(assert (=> b!577194 m!556125))

(declare-fun m!556127 () Bool)

(assert (=> b!577196 m!556127))

(declare-fun m!556129 () Bool)

(assert (=> b!577195 m!556129))

(assert (=> b!577195 m!556129))

(declare-fun m!556131 () Bool)

(assert (=> b!577195 m!556131))

(declare-fun m!556133 () Bool)

(assert (=> b!577192 m!556133))

(declare-fun m!556135 () Bool)

(assert (=> start!53046 m!556135))

(declare-fun m!556137 () Bool)

(assert (=> start!53046 m!556137))

(check-sat (not b!577195) (not b!577196) (not b!577194) (not start!53046) (not b!577192))
(check-sat)
