; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53232 () Bool)

(assert start!53232)

(declare-fun b!578243 () Bool)

(declare-fun res!366212 () Bool)

(declare-fun e!332546 () Bool)

(assert (=> b!578243 (=> (not res!366212) (not e!332546))))

(declare-datatypes ((array!36087 0))(
  ( (array!36088 (arr!17314 (Array (_ BitVec 32) (_ BitVec 64))) (size!17678 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36087)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36087 (_ BitVec 32)) Bool)

(assert (=> b!578243 (= res!366212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578244 () Bool)

(assert (=> b!578244 (= e!332546 false)))

(declare-fun lt!264223 () Bool)

(declare-datatypes ((List!11408 0))(
  ( (Nil!11405) (Cons!11404 (h!12449 (_ BitVec 64)) (t!17644 List!11408)) )
))
(declare-fun arrayNoDuplicates!0 (array!36087 (_ BitVec 32) List!11408) Bool)

(assert (=> b!578244 (= lt!264223 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11405))))

(declare-fun b!578245 () Bool)

(declare-fun res!366215 () Bool)

(declare-fun e!332548 () Bool)

(assert (=> b!578245 (=> (not res!366215) (not e!332548))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36087 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578245 (= res!366215 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578246 () Bool)

(assert (=> b!578246 (= e!332548 e!332546)))

(declare-fun res!366213 () Bool)

(assert (=> b!578246 (=> (not res!366213) (not e!332546))))

(declare-datatypes ((SeekEntryResult!5761 0))(
  ( (MissingZero!5761 (index!25271 (_ BitVec 32))) (Found!5761 (index!25272 (_ BitVec 32))) (Intermediate!5761 (undefined!6573 Bool) (index!25273 (_ BitVec 32)) (x!54201 (_ BitVec 32))) (Undefined!5761) (MissingVacant!5761 (index!25274 (_ BitVec 32))) )
))
(declare-fun lt!264224 () SeekEntryResult!5761)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578246 (= res!366213 (or (= lt!264224 (MissingZero!5761 i!1108)) (= lt!264224 (MissingVacant!5761 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36087 (_ BitVec 32)) SeekEntryResult!5761)

(assert (=> b!578246 (= lt!264224 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578247 () Bool)

(declare-fun res!366209 () Bool)

(assert (=> b!578247 (=> (not res!366209) (not e!332548))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578247 (= res!366209 (and (= (size!17678 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17678 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17678 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578248 () Bool)

(declare-fun res!366211 () Bool)

(assert (=> b!578248 (=> (not res!366211) (not e!332548))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578248 (= res!366211 (validKeyInArray!0 k0!1786))))

(declare-fun b!578249 () Bool)

(declare-fun res!366214 () Bool)

(assert (=> b!578249 (=> (not res!366214) (not e!332548))))

(assert (=> b!578249 (= res!366214 (validKeyInArray!0 (select (arr!17314 a!2986) j!136)))))

(declare-fun res!366210 () Bool)

(assert (=> start!53232 (=> (not res!366210) (not e!332548))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53232 (= res!366210 (validMask!0 mask!3053))))

(assert (=> start!53232 e!332548))

(assert (=> start!53232 true))

(declare-fun array_inv!13088 (array!36087) Bool)

(assert (=> start!53232 (array_inv!13088 a!2986)))

(assert (= (and start!53232 res!366210) b!578247))

(assert (= (and b!578247 res!366209) b!578249))

(assert (= (and b!578249 res!366214) b!578248))

(assert (= (and b!578248 res!366211) b!578245))

(assert (= (and b!578245 res!366215) b!578246))

(assert (= (and b!578246 res!366213) b!578243))

(assert (= (and b!578243 res!366212) b!578244))

(declare-fun m!556981 () Bool)

(assert (=> b!578245 m!556981))

(declare-fun m!556983 () Bool)

(assert (=> b!578246 m!556983))

(declare-fun m!556985 () Bool)

(assert (=> b!578244 m!556985))

(declare-fun m!556987 () Bool)

(assert (=> start!53232 m!556987))

(declare-fun m!556989 () Bool)

(assert (=> start!53232 m!556989))

(declare-fun m!556991 () Bool)

(assert (=> b!578243 m!556991))

(declare-fun m!556993 () Bool)

(assert (=> b!578249 m!556993))

(assert (=> b!578249 m!556993))

(declare-fun m!556995 () Bool)

(assert (=> b!578249 m!556995))

(declare-fun m!556997 () Bool)

(assert (=> b!578248 m!556997))

(check-sat (not b!578245) (not b!578243) (not b!578249) (not b!578248) (not b!578244) (not start!53232) (not b!578246))
(check-sat)
