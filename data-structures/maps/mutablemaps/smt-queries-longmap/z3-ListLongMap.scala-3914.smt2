; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53514 () Bool)

(assert start!53514)

(declare-fun b!582051 () Bool)

(declare-fun res!370022 () Bool)

(declare-fun e!333816 () Bool)

(assert (=> b!582051 (=> (not res!370022) (not e!333816))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582051 (= res!370022 (validKeyInArray!0 k0!1786))))

(declare-fun b!582052 () Bool)

(declare-fun e!333815 () Bool)

(assert (=> b!582052 (= e!333816 e!333815)))

(declare-fun res!370024 () Bool)

(assert (=> b!582052 (=> (not res!370024) (not e!333815))))

(declare-datatypes ((SeekEntryResult!5902 0))(
  ( (MissingZero!5902 (index!25835 (_ BitVec 32))) (Found!5902 (index!25836 (_ BitVec 32))) (Intermediate!5902 (undefined!6714 Bool) (index!25837 (_ BitVec 32)) (x!54718 (_ BitVec 32))) (Undefined!5902) (MissingVacant!5902 (index!25838 (_ BitVec 32))) )
))
(declare-fun lt!265034 () SeekEntryResult!5902)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582052 (= res!370024 (or (= lt!265034 (MissingZero!5902 i!1108)) (= lt!265034 (MissingVacant!5902 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36369 0))(
  ( (array!36370 (arr!17455 (Array (_ BitVec 32) (_ BitVec 64))) (size!17819 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36369)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36369 (_ BitVec 32)) SeekEntryResult!5902)

(assert (=> b!582052 (= lt!265034 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582054 () Bool)

(declare-fun res!370017 () Bool)

(assert (=> b!582054 (=> (not res!370017) (not e!333815))))

(declare-datatypes ((List!11549 0))(
  ( (Nil!11546) (Cons!11545 (h!12590 (_ BitVec 64)) (t!17785 List!11549)) )
))
(declare-fun arrayNoDuplicates!0 (array!36369 (_ BitVec 32) List!11549) Bool)

(assert (=> b!582054 (= res!370017 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11546))))

(declare-fun b!582055 () Bool)

(declare-fun res!370018 () Bool)

(assert (=> b!582055 (=> (not res!370018) (not e!333816))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!582055 (= res!370018 (and (= (size!17819 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17819 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17819 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582056 () Bool)

(declare-fun res!370021 () Bool)

(assert (=> b!582056 (=> (not res!370021) (not e!333815))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582056 (= res!370021 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17455 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17455 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582057 () Bool)

(assert (=> b!582057 (= e!333815 false)))

(declare-fun lt!265033 () SeekEntryResult!5902)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36369 (_ BitVec 32)) SeekEntryResult!5902)

(assert (=> b!582057 (= lt!265033 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17455 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582058 () Bool)

(declare-fun res!370020 () Bool)

(assert (=> b!582058 (=> (not res!370020) (not e!333816))))

(declare-fun arrayContainsKey!0 (array!36369 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582058 (= res!370020 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582059 () Bool)

(declare-fun res!370019 () Bool)

(assert (=> b!582059 (=> (not res!370019) (not e!333815))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36369 (_ BitVec 32)) Bool)

(assert (=> b!582059 (= res!370019 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!370025 () Bool)

(assert (=> start!53514 (=> (not res!370025) (not e!333816))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53514 (= res!370025 (validMask!0 mask!3053))))

(assert (=> start!53514 e!333816))

(assert (=> start!53514 true))

(declare-fun array_inv!13229 (array!36369) Bool)

(assert (=> start!53514 (array_inv!13229 a!2986)))

(declare-fun b!582053 () Bool)

(declare-fun res!370023 () Bool)

(assert (=> b!582053 (=> (not res!370023) (not e!333816))))

(assert (=> b!582053 (= res!370023 (validKeyInArray!0 (select (arr!17455 a!2986) j!136)))))

(assert (= (and start!53514 res!370025) b!582055))

(assert (= (and b!582055 res!370018) b!582053))

(assert (= (and b!582053 res!370023) b!582051))

(assert (= (and b!582051 res!370022) b!582058))

(assert (= (and b!582058 res!370020) b!582052))

(assert (= (and b!582052 res!370024) b!582059))

(assert (= (and b!582059 res!370019) b!582054))

(assert (= (and b!582054 res!370017) b!582056))

(assert (= (and b!582056 res!370021) b!582057))

(declare-fun m!560613 () Bool)

(assert (=> b!582052 m!560613))

(declare-fun m!560615 () Bool)

(assert (=> b!582054 m!560615))

(declare-fun m!560617 () Bool)

(assert (=> b!582059 m!560617))

(declare-fun m!560619 () Bool)

(assert (=> b!582058 m!560619))

(declare-fun m!560621 () Bool)

(assert (=> b!582051 m!560621))

(declare-fun m!560623 () Bool)

(assert (=> b!582057 m!560623))

(assert (=> b!582057 m!560623))

(declare-fun m!560625 () Bool)

(assert (=> b!582057 m!560625))

(declare-fun m!560627 () Bool)

(assert (=> start!53514 m!560627))

(declare-fun m!560629 () Bool)

(assert (=> start!53514 m!560629))

(declare-fun m!560631 () Bool)

(assert (=> b!582056 m!560631))

(declare-fun m!560633 () Bool)

(assert (=> b!582056 m!560633))

(declare-fun m!560635 () Bool)

(assert (=> b!582056 m!560635))

(assert (=> b!582053 m!560623))

(assert (=> b!582053 m!560623))

(declare-fun m!560637 () Bool)

(assert (=> b!582053 m!560637))

(check-sat (not b!582053) (not b!582052) (not b!582059) (not b!582057) (not b!582054) (not b!582058) (not start!53514) (not b!582051))
(check-sat)
