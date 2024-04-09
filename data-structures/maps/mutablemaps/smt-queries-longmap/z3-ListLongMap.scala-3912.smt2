; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53502 () Bool)

(assert start!53502)

(declare-fun b!581889 () Bool)

(declare-fun res!369863 () Bool)

(declare-fun e!333761 () Bool)

(assert (=> b!581889 (=> (not res!369863) (not e!333761))))

(declare-datatypes ((array!36357 0))(
  ( (array!36358 (arr!17449 (Array (_ BitVec 32) (_ BitVec 64))) (size!17813 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36357)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36357 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581889 (= res!369863 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581890 () Bool)

(declare-fun res!369855 () Bool)

(assert (=> b!581890 (=> (not res!369855) (not e!333761))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!581890 (= res!369855 (and (= (size!17813 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17813 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17813 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581891 () Bool)

(declare-fun e!333763 () Bool)

(assert (=> b!581891 (= e!333761 e!333763)))

(declare-fun res!369858 () Bool)

(assert (=> b!581891 (=> (not res!369858) (not e!333763))))

(declare-datatypes ((SeekEntryResult!5896 0))(
  ( (MissingZero!5896 (index!25811 (_ BitVec 32))) (Found!5896 (index!25812 (_ BitVec 32))) (Intermediate!5896 (undefined!6708 Bool) (index!25813 (_ BitVec 32)) (x!54696 (_ BitVec 32))) (Undefined!5896) (MissingVacant!5896 (index!25814 (_ BitVec 32))) )
))
(declare-fun lt!264998 () SeekEntryResult!5896)

(assert (=> b!581891 (= res!369858 (or (= lt!264998 (MissingZero!5896 i!1108)) (= lt!264998 (MissingVacant!5896 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36357 (_ BitVec 32)) SeekEntryResult!5896)

(assert (=> b!581891 (= lt!264998 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!581892 () Bool)

(declare-fun res!369862 () Bool)

(assert (=> b!581892 (=> (not res!369862) (not e!333763))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581892 (= res!369862 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17449 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17449 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!369860 () Bool)

(assert (=> start!53502 (=> (not res!369860) (not e!333761))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53502 (= res!369860 (validMask!0 mask!3053))))

(assert (=> start!53502 e!333761))

(assert (=> start!53502 true))

(declare-fun array_inv!13223 (array!36357) Bool)

(assert (=> start!53502 (array_inv!13223 a!2986)))

(declare-fun b!581893 () Bool)

(assert (=> b!581893 (= e!333763 false)))

(declare-fun lt!264997 () SeekEntryResult!5896)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36357 (_ BitVec 32)) SeekEntryResult!5896)

(assert (=> b!581893 (= lt!264997 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17449 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581894 () Bool)

(declare-fun res!369859 () Bool)

(assert (=> b!581894 (=> (not res!369859) (not e!333763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36357 (_ BitVec 32)) Bool)

(assert (=> b!581894 (= res!369859 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581895 () Bool)

(declare-fun res!369857 () Bool)

(assert (=> b!581895 (=> (not res!369857) (not e!333761))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581895 (= res!369857 (validKeyInArray!0 k0!1786))))

(declare-fun b!581896 () Bool)

(declare-fun res!369856 () Bool)

(assert (=> b!581896 (=> (not res!369856) (not e!333761))))

(assert (=> b!581896 (= res!369856 (validKeyInArray!0 (select (arr!17449 a!2986) j!136)))))

(declare-fun b!581897 () Bool)

(declare-fun res!369861 () Bool)

(assert (=> b!581897 (=> (not res!369861) (not e!333763))))

(declare-datatypes ((List!11543 0))(
  ( (Nil!11540) (Cons!11539 (h!12584 (_ BitVec 64)) (t!17779 List!11543)) )
))
(declare-fun arrayNoDuplicates!0 (array!36357 (_ BitVec 32) List!11543) Bool)

(assert (=> b!581897 (= res!369861 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11540))))

(assert (= (and start!53502 res!369860) b!581890))

(assert (= (and b!581890 res!369855) b!581896))

(assert (= (and b!581896 res!369856) b!581895))

(assert (= (and b!581895 res!369857) b!581889))

(assert (= (and b!581889 res!369863) b!581891))

(assert (= (and b!581891 res!369858) b!581894))

(assert (= (and b!581894 res!369859) b!581897))

(assert (= (and b!581897 res!369861) b!581892))

(assert (= (and b!581892 res!369862) b!581893))

(declare-fun m!560457 () Bool)

(assert (=> b!581897 m!560457))

(declare-fun m!560459 () Bool)

(assert (=> b!581892 m!560459))

(declare-fun m!560461 () Bool)

(assert (=> b!581892 m!560461))

(declare-fun m!560463 () Bool)

(assert (=> b!581892 m!560463))

(declare-fun m!560465 () Bool)

(assert (=> b!581895 m!560465))

(declare-fun m!560467 () Bool)

(assert (=> b!581891 m!560467))

(declare-fun m!560469 () Bool)

(assert (=> b!581893 m!560469))

(assert (=> b!581893 m!560469))

(declare-fun m!560471 () Bool)

(assert (=> b!581893 m!560471))

(declare-fun m!560473 () Bool)

(assert (=> start!53502 m!560473))

(declare-fun m!560475 () Bool)

(assert (=> start!53502 m!560475))

(declare-fun m!560477 () Bool)

(assert (=> b!581889 m!560477))

(assert (=> b!581896 m!560469))

(assert (=> b!581896 m!560469))

(declare-fun m!560479 () Bool)

(assert (=> b!581896 m!560479))

(declare-fun m!560481 () Bool)

(assert (=> b!581894 m!560481))

(check-sat (not b!581889) (not start!53502) (not b!581896) (not b!581891) (not b!581897) (not b!581895) (not b!581893) (not b!581894))
(check-sat)
