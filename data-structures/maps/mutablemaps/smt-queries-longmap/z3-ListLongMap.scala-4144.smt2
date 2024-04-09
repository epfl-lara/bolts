; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56516 () Bool)

(assert start!56516)

(declare-fun b!625955 () Bool)

(declare-fun res!403985 () Bool)

(declare-fun e!358678 () Bool)

(assert (=> b!625955 (=> (not res!403985) (not e!358678))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37814 0))(
  ( (array!37815 (arr!18145 (Array (_ BitVec 32) (_ BitVec 64))) (size!18509 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37814)

(assert (=> b!625955 (= res!403985 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18145 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18145 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625956 () Bool)

(declare-fun res!403986 () Bool)

(declare-fun e!358676 () Bool)

(assert (=> b!625956 (=> (not res!403986) (not e!358676))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!625956 (= res!403986 (and (= (size!18509 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18509 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18509 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625957 () Bool)

(declare-fun res!403979 () Bool)

(assert (=> b!625957 (=> (not res!403979) (not e!358678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37814 (_ BitVec 32)) Bool)

(assert (=> b!625957 (= res!403979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!625958 () Bool)

(assert (=> b!625958 (= e!358676 e!358678)))

(declare-fun res!403987 () Bool)

(assert (=> b!625958 (=> (not res!403987) (not e!358678))))

(declare-datatypes ((SeekEntryResult!6592 0))(
  ( (MissingZero!6592 (index!28651 (_ BitVec 32))) (Found!6592 (index!28652 (_ BitVec 32))) (Intermediate!6592 (undefined!7404 Bool) (index!28653 (_ BitVec 32)) (x!57426 (_ BitVec 32))) (Undefined!6592) (MissingVacant!6592 (index!28654 (_ BitVec 32))) )
))
(declare-fun lt!289950 () SeekEntryResult!6592)

(assert (=> b!625958 (= res!403987 (or (= lt!289950 (MissingZero!6592 i!1108)) (= lt!289950 (MissingVacant!6592 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37814 (_ BitVec 32)) SeekEntryResult!6592)

(assert (=> b!625958 (= lt!289950 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!403980 () Bool)

(assert (=> start!56516 (=> (not res!403980) (not e!358676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56516 (= res!403980 (validMask!0 mask!3053))))

(assert (=> start!56516 e!358676))

(assert (=> start!56516 true))

(declare-fun array_inv!13919 (array!37814) Bool)

(assert (=> start!56516 (array_inv!13919 a!2986)))

(declare-fun b!625959 () Bool)

(declare-fun res!403982 () Bool)

(assert (=> b!625959 (=> (not res!403982) (not e!358676))))

(declare-fun arrayContainsKey!0 (array!37814 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625959 (= res!403982 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625960 () Bool)

(declare-fun res!403984 () Bool)

(assert (=> b!625960 (=> (not res!403984) (not e!358678))))

(declare-datatypes ((List!12239 0))(
  ( (Nil!12236) (Cons!12235 (h!13280 (_ BitVec 64)) (t!18475 List!12239)) )
))
(declare-fun arrayNoDuplicates!0 (array!37814 (_ BitVec 32) List!12239) Bool)

(assert (=> b!625960 (= res!403984 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12236))))

(declare-fun b!625961 () Bool)

(declare-fun res!403981 () Bool)

(assert (=> b!625961 (=> (not res!403981) (not e!358676))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625961 (= res!403981 (validKeyInArray!0 k0!1786))))

(declare-fun b!625962 () Bool)

(assert (=> b!625962 (= e!358678 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18145 a!2986) index!984) (select (arr!18145 a!2986) j!136))) (bvsge index!984 (size!18509 a!2986))))))

(declare-fun b!625963 () Bool)

(declare-fun res!403988 () Bool)

(assert (=> b!625963 (=> (not res!403988) (not e!358678))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37814 (_ BitVec 32)) SeekEntryResult!6592)

(assert (=> b!625963 (= res!403988 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18145 a!2986) j!136) a!2986 mask!3053) (Found!6592 j!136)))))

(declare-fun b!625964 () Bool)

(declare-fun res!403983 () Bool)

(assert (=> b!625964 (=> (not res!403983) (not e!358676))))

(assert (=> b!625964 (= res!403983 (validKeyInArray!0 (select (arr!18145 a!2986) j!136)))))

(assert (= (and start!56516 res!403980) b!625956))

(assert (= (and b!625956 res!403986) b!625964))

(assert (= (and b!625964 res!403983) b!625961))

(assert (= (and b!625961 res!403981) b!625959))

(assert (= (and b!625959 res!403982) b!625958))

(assert (= (and b!625958 res!403987) b!625957))

(assert (= (and b!625957 res!403979) b!625960))

(assert (= (and b!625960 res!403984) b!625955))

(assert (= (and b!625955 res!403985) b!625963))

(assert (= (and b!625963 res!403988) b!625962))

(declare-fun m!601483 () Bool)

(assert (=> b!625957 m!601483))

(declare-fun m!601485 () Bool)

(assert (=> b!625964 m!601485))

(assert (=> b!625964 m!601485))

(declare-fun m!601487 () Bool)

(assert (=> b!625964 m!601487))

(declare-fun m!601489 () Bool)

(assert (=> start!56516 m!601489))

(declare-fun m!601491 () Bool)

(assert (=> start!56516 m!601491))

(declare-fun m!601493 () Bool)

(assert (=> b!625961 m!601493))

(declare-fun m!601495 () Bool)

(assert (=> b!625962 m!601495))

(assert (=> b!625962 m!601485))

(assert (=> b!625963 m!601485))

(assert (=> b!625963 m!601485))

(declare-fun m!601497 () Bool)

(assert (=> b!625963 m!601497))

(declare-fun m!601499 () Bool)

(assert (=> b!625958 m!601499))

(declare-fun m!601501 () Bool)

(assert (=> b!625955 m!601501))

(declare-fun m!601503 () Bool)

(assert (=> b!625955 m!601503))

(declare-fun m!601505 () Bool)

(assert (=> b!625955 m!601505))

(declare-fun m!601507 () Bool)

(assert (=> b!625960 m!601507))

(declare-fun m!601509 () Bool)

(assert (=> b!625959 m!601509))

(check-sat (not start!56516) (not b!625964) (not b!625963) (not b!625960) (not b!625958) (not b!625961) (not b!625957) (not b!625959))
(check-sat)
