; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53526 () Bool)

(assert start!53526)

(declare-fun b!582213 () Bool)

(declare-fun res!370183 () Bool)

(declare-fun e!333870 () Bool)

(assert (=> b!582213 (=> (not res!370183) (not e!333870))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36381 0))(
  ( (array!36382 (arr!17461 (Array (_ BitVec 32) (_ BitVec 64))) (size!17825 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36381)

(assert (=> b!582213 (= res!370183 (and (= (size!17825 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17825 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17825 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582214 () Bool)

(declare-fun res!370182 () Bool)

(assert (=> b!582214 (=> (not res!370182) (not e!333870))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582214 (= res!370182 (validKeyInArray!0 k0!1786))))

(declare-fun res!370184 () Bool)

(assert (=> start!53526 (=> (not res!370184) (not e!333870))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53526 (= res!370184 (validMask!0 mask!3053))))

(assert (=> start!53526 e!333870))

(assert (=> start!53526 true))

(declare-fun array_inv!13235 (array!36381) Bool)

(assert (=> start!53526 (array_inv!13235 a!2986)))

(declare-fun b!582215 () Bool)

(declare-fun e!333869 () Bool)

(assert (=> b!582215 (= e!333869 false)))

(declare-datatypes ((SeekEntryResult!5908 0))(
  ( (MissingZero!5908 (index!25859 (_ BitVec 32))) (Found!5908 (index!25860 (_ BitVec 32))) (Intermediate!5908 (undefined!6720 Bool) (index!25861 (_ BitVec 32)) (x!54740 (_ BitVec 32))) (Undefined!5908) (MissingVacant!5908 (index!25862 (_ BitVec 32))) )
))
(declare-fun lt!265069 () SeekEntryResult!5908)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36381 (_ BitVec 32)) SeekEntryResult!5908)

(assert (=> b!582215 (= lt!265069 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17461 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582216 () Bool)

(declare-fun res!370180 () Bool)

(assert (=> b!582216 (=> (not res!370180) (not e!333870))))

(declare-fun arrayContainsKey!0 (array!36381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582216 (= res!370180 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582217 () Bool)

(declare-fun res!370179 () Bool)

(assert (=> b!582217 (=> (not res!370179) (not e!333869))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36381 (_ BitVec 32)) Bool)

(assert (=> b!582217 (= res!370179 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582218 () Bool)

(declare-fun res!370185 () Bool)

(assert (=> b!582218 (=> (not res!370185) (not e!333869))))

(assert (=> b!582218 (= res!370185 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17461 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17461 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582219 () Bool)

(assert (=> b!582219 (= e!333870 e!333869)))

(declare-fun res!370181 () Bool)

(assert (=> b!582219 (=> (not res!370181) (not e!333869))))

(declare-fun lt!265070 () SeekEntryResult!5908)

(assert (=> b!582219 (= res!370181 (or (= lt!265070 (MissingZero!5908 i!1108)) (= lt!265070 (MissingVacant!5908 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36381 (_ BitVec 32)) SeekEntryResult!5908)

(assert (=> b!582219 (= lt!265070 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582220 () Bool)

(declare-fun res!370186 () Bool)

(assert (=> b!582220 (=> (not res!370186) (not e!333869))))

(declare-datatypes ((List!11555 0))(
  ( (Nil!11552) (Cons!11551 (h!12596 (_ BitVec 64)) (t!17791 List!11555)) )
))
(declare-fun arrayNoDuplicates!0 (array!36381 (_ BitVec 32) List!11555) Bool)

(assert (=> b!582220 (= res!370186 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11552))))

(declare-fun b!582221 () Bool)

(declare-fun res!370187 () Bool)

(assert (=> b!582221 (=> (not res!370187) (not e!333870))))

(assert (=> b!582221 (= res!370187 (validKeyInArray!0 (select (arr!17461 a!2986) j!136)))))

(assert (= (and start!53526 res!370184) b!582213))

(assert (= (and b!582213 res!370183) b!582221))

(assert (= (and b!582221 res!370187) b!582214))

(assert (= (and b!582214 res!370182) b!582216))

(assert (= (and b!582216 res!370180) b!582219))

(assert (= (and b!582219 res!370181) b!582217))

(assert (= (and b!582217 res!370179) b!582220))

(assert (= (and b!582220 res!370186) b!582218))

(assert (= (and b!582218 res!370185) b!582215))

(declare-fun m!560769 () Bool)

(assert (=> b!582217 m!560769))

(declare-fun m!560771 () Bool)

(assert (=> b!582220 m!560771))

(declare-fun m!560773 () Bool)

(assert (=> start!53526 m!560773))

(declare-fun m!560775 () Bool)

(assert (=> start!53526 m!560775))

(declare-fun m!560777 () Bool)

(assert (=> b!582218 m!560777))

(declare-fun m!560779 () Bool)

(assert (=> b!582218 m!560779))

(declare-fun m!560781 () Bool)

(assert (=> b!582218 m!560781))

(declare-fun m!560783 () Bool)

(assert (=> b!582216 m!560783))

(declare-fun m!560785 () Bool)

(assert (=> b!582221 m!560785))

(assert (=> b!582221 m!560785))

(declare-fun m!560787 () Bool)

(assert (=> b!582221 m!560787))

(assert (=> b!582215 m!560785))

(assert (=> b!582215 m!560785))

(declare-fun m!560789 () Bool)

(assert (=> b!582215 m!560789))

(declare-fun m!560791 () Bool)

(assert (=> b!582214 m!560791))

(declare-fun m!560793 () Bool)

(assert (=> b!582219 m!560793))

(check-sat (not b!582220) (not start!53526) (not b!582216) (not b!582215) (not b!582219) (not b!582221) (not b!582214) (not b!582217))
(check-sat)
