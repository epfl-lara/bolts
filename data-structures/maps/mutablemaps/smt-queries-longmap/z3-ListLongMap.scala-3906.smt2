; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53466 () Bool)

(assert start!53466)

(declare-fun b!581385 () Bool)

(declare-fun res!369352 () Bool)

(declare-fun e!333600 () Bool)

(assert (=> b!581385 (=> (not res!369352) (not e!333600))))

(declare-datatypes ((array!36321 0))(
  ( (array!36322 (arr!17431 (Array (_ BitVec 32) (_ BitVec 64))) (size!17795 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36321)

(declare-datatypes ((List!11525 0))(
  ( (Nil!11522) (Cons!11521 (h!12566 (_ BitVec 64)) (t!17761 List!11525)) )
))
(declare-fun arrayNoDuplicates!0 (array!36321 (_ BitVec 32) List!11525) Bool)

(assert (=> b!581385 (= res!369352 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11522))))

(declare-fun b!581386 () Bool)

(assert (=> b!581386 (= e!333600 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5878 0))(
  ( (MissingZero!5878 (index!25739 (_ BitVec 32))) (Found!5878 (index!25740 (_ BitVec 32))) (Intermediate!5878 (undefined!6690 Bool) (index!25741 (_ BitVec 32)) (x!54630 (_ BitVec 32))) (Undefined!5878) (MissingVacant!5878 (index!25742 (_ BitVec 32))) )
))
(declare-fun lt!264899 () SeekEntryResult!5878)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36321 (_ BitVec 32)) SeekEntryResult!5878)

(assert (=> b!581386 (= lt!264899 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17431 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581387 () Bool)

(declare-fun e!333601 () Bool)

(assert (=> b!581387 (= e!333601 e!333600)))

(declare-fun res!369359 () Bool)

(assert (=> b!581387 (=> (not res!369359) (not e!333600))))

(declare-fun lt!264898 () SeekEntryResult!5878)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581387 (= res!369359 (or (= lt!264898 (MissingZero!5878 i!1108)) (= lt!264898 (MissingVacant!5878 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36321 (_ BitVec 32)) SeekEntryResult!5878)

(assert (=> b!581387 (= lt!264898 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!581388 () Bool)

(declare-fun res!369358 () Bool)

(assert (=> b!581388 (=> (not res!369358) (not e!333600))))

(assert (=> b!581388 (= res!369358 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17431 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17431 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581389 () Bool)

(declare-fun res!369351 () Bool)

(assert (=> b!581389 (=> (not res!369351) (not e!333601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581389 (= res!369351 (validKeyInArray!0 k0!1786))))

(declare-fun b!581390 () Bool)

(declare-fun res!369355 () Bool)

(assert (=> b!581390 (=> (not res!369355) (not e!333600))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36321 (_ BitVec 32)) Bool)

(assert (=> b!581390 (= res!369355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581391 () Bool)

(declare-fun res!369353 () Bool)

(assert (=> b!581391 (=> (not res!369353) (not e!333601))))

(assert (=> b!581391 (= res!369353 (validKeyInArray!0 (select (arr!17431 a!2986) j!136)))))

(declare-fun b!581392 () Bool)

(declare-fun res!369354 () Bool)

(assert (=> b!581392 (=> (not res!369354) (not e!333601))))

(assert (=> b!581392 (= res!369354 (and (= (size!17795 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17795 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17795 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581393 () Bool)

(declare-fun res!369357 () Bool)

(assert (=> b!581393 (=> (not res!369357) (not e!333601))))

(declare-fun arrayContainsKey!0 (array!36321 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581393 (= res!369357 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!369356 () Bool)

(assert (=> start!53466 (=> (not res!369356) (not e!333601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53466 (= res!369356 (validMask!0 mask!3053))))

(assert (=> start!53466 e!333601))

(assert (=> start!53466 true))

(declare-fun array_inv!13205 (array!36321) Bool)

(assert (=> start!53466 (array_inv!13205 a!2986)))

(assert (= (and start!53466 res!369356) b!581392))

(assert (= (and b!581392 res!369354) b!581391))

(assert (= (and b!581391 res!369353) b!581389))

(assert (= (and b!581389 res!369351) b!581393))

(assert (= (and b!581393 res!369357) b!581387))

(assert (= (and b!581387 res!369359) b!581390))

(assert (= (and b!581390 res!369355) b!581385))

(assert (= (and b!581385 res!369352) b!581388))

(assert (= (and b!581388 res!369358) b!581386))

(declare-fun m!559971 () Bool)

(assert (=> b!581391 m!559971))

(assert (=> b!581391 m!559971))

(declare-fun m!559973 () Bool)

(assert (=> b!581391 m!559973))

(declare-fun m!559975 () Bool)

(assert (=> b!581387 m!559975))

(declare-fun m!559977 () Bool)

(assert (=> start!53466 m!559977))

(declare-fun m!559979 () Bool)

(assert (=> start!53466 m!559979))

(assert (=> b!581386 m!559971))

(assert (=> b!581386 m!559971))

(declare-fun m!559981 () Bool)

(assert (=> b!581386 m!559981))

(declare-fun m!559983 () Bool)

(assert (=> b!581385 m!559983))

(declare-fun m!559985 () Bool)

(assert (=> b!581390 m!559985))

(declare-fun m!559987 () Bool)

(assert (=> b!581389 m!559987))

(declare-fun m!559989 () Bool)

(assert (=> b!581388 m!559989))

(declare-fun m!559991 () Bool)

(assert (=> b!581388 m!559991))

(declare-fun m!559993 () Bool)

(assert (=> b!581388 m!559993))

(declare-fun m!559995 () Bool)

(assert (=> b!581393 m!559995))

(check-sat (not b!581386) (not b!581390) (not start!53466) (not b!581391) (not b!581389) (not b!581387) (not b!581385) (not b!581393))
(check-sat)
