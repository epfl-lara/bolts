; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53454 () Bool)

(assert start!53454)

(declare-fun b!581223 () Bool)

(declare-fun res!369196 () Bool)

(declare-fun e!333545 () Bool)

(assert (=> b!581223 (=> (not res!369196) (not e!333545))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36309 0))(
  ( (array!36310 (arr!17425 (Array (_ BitVec 32) (_ BitVec 64))) (size!17789 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36309)

(assert (=> b!581223 (= res!369196 (and (= (size!17789 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17789 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17789 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581224 () Bool)

(declare-fun res!369197 () Bool)

(assert (=> b!581224 (=> (not res!369197) (not e!333545))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581224 (= res!369197 (validKeyInArray!0 k0!1786))))

(declare-fun b!581225 () Bool)

(declare-fun res!369189 () Bool)

(declare-fun e!333546 () Bool)

(assert (=> b!581225 (=> (not res!369189) (not e!333546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36309 (_ BitVec 32)) Bool)

(assert (=> b!581225 (= res!369189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581226 () Bool)

(assert (=> b!581226 (= e!333545 e!333546)))

(declare-fun res!369194 () Bool)

(assert (=> b!581226 (=> (not res!369194) (not e!333546))))

(declare-datatypes ((SeekEntryResult!5872 0))(
  ( (MissingZero!5872 (index!25715 (_ BitVec 32))) (Found!5872 (index!25716 (_ BitVec 32))) (Intermediate!5872 (undefined!6684 Bool) (index!25717 (_ BitVec 32)) (x!54608 (_ BitVec 32))) (Undefined!5872) (MissingVacant!5872 (index!25718 (_ BitVec 32))) )
))
(declare-fun lt!264863 () SeekEntryResult!5872)

(assert (=> b!581226 (= res!369194 (or (= lt!264863 (MissingZero!5872 i!1108)) (= lt!264863 (MissingVacant!5872 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36309 (_ BitVec 32)) SeekEntryResult!5872)

(assert (=> b!581226 (= lt!264863 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!581227 () Bool)

(declare-fun res!369193 () Bool)

(assert (=> b!581227 (=> (not res!369193) (not e!333545))))

(declare-fun arrayContainsKey!0 (array!36309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581227 (= res!369193 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581228 () Bool)

(declare-fun res!369191 () Bool)

(assert (=> b!581228 (=> (not res!369191) (not e!333545))))

(assert (=> b!581228 (= res!369191 (validKeyInArray!0 (select (arr!17425 a!2986) j!136)))))

(declare-fun b!581229 () Bool)

(assert (=> b!581229 (= e!333546 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!264862 () SeekEntryResult!5872)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36309 (_ BitVec 32)) SeekEntryResult!5872)

(assert (=> b!581229 (= lt!264862 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17425 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581230 () Bool)

(declare-fun res!369195 () Bool)

(assert (=> b!581230 (=> (not res!369195) (not e!333546))))

(assert (=> b!581230 (= res!369195 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17425 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17425 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581231 () Bool)

(declare-fun res!369190 () Bool)

(assert (=> b!581231 (=> (not res!369190) (not e!333546))))

(declare-datatypes ((List!11519 0))(
  ( (Nil!11516) (Cons!11515 (h!12560 (_ BitVec 64)) (t!17755 List!11519)) )
))
(declare-fun arrayNoDuplicates!0 (array!36309 (_ BitVec 32) List!11519) Bool)

(assert (=> b!581231 (= res!369190 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11516))))

(declare-fun res!369192 () Bool)

(assert (=> start!53454 (=> (not res!369192) (not e!333545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53454 (= res!369192 (validMask!0 mask!3053))))

(assert (=> start!53454 e!333545))

(assert (=> start!53454 true))

(declare-fun array_inv!13199 (array!36309) Bool)

(assert (=> start!53454 (array_inv!13199 a!2986)))

(assert (= (and start!53454 res!369192) b!581223))

(assert (= (and b!581223 res!369196) b!581228))

(assert (= (and b!581228 res!369191) b!581224))

(assert (= (and b!581224 res!369197) b!581227))

(assert (= (and b!581227 res!369193) b!581226))

(assert (= (and b!581226 res!369194) b!581225))

(assert (= (and b!581225 res!369189) b!581231))

(assert (= (and b!581231 res!369190) b!581230))

(assert (= (and b!581230 res!369195) b!581229))

(declare-fun m!559815 () Bool)

(assert (=> b!581228 m!559815))

(assert (=> b!581228 m!559815))

(declare-fun m!559817 () Bool)

(assert (=> b!581228 m!559817))

(declare-fun m!559819 () Bool)

(assert (=> b!581225 m!559819))

(assert (=> b!581229 m!559815))

(assert (=> b!581229 m!559815))

(declare-fun m!559821 () Bool)

(assert (=> b!581229 m!559821))

(declare-fun m!559823 () Bool)

(assert (=> b!581227 m!559823))

(declare-fun m!559825 () Bool)

(assert (=> b!581226 m!559825))

(declare-fun m!559827 () Bool)

(assert (=> b!581231 m!559827))

(declare-fun m!559829 () Bool)

(assert (=> start!53454 m!559829))

(declare-fun m!559831 () Bool)

(assert (=> start!53454 m!559831))

(declare-fun m!559833 () Bool)

(assert (=> b!581230 m!559833))

(declare-fun m!559835 () Bool)

(assert (=> b!581230 m!559835))

(declare-fun m!559837 () Bool)

(assert (=> b!581230 m!559837))

(declare-fun m!559839 () Bool)

(assert (=> b!581224 m!559839))

(check-sat (not b!581226) (not b!581231) (not b!581228) (not b!581229) (not start!53454) (not b!581227) (not b!581225) (not b!581224))
(check-sat)
