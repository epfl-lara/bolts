; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53946 () Bool)

(assert start!53946)

(declare-fun b!588348 () Bool)

(declare-fun e!335964 () Bool)

(declare-fun e!335968 () Bool)

(assert (=> b!588348 (= e!335964 e!335968)))

(declare-fun res!376136 () Bool)

(assert (=> b!588348 (=> (not res!376136) (not e!335968))))

(declare-datatypes ((SeekEntryResult!6088 0))(
  ( (MissingZero!6088 (index!26582 (_ BitVec 32))) (Found!6088 (index!26583 (_ BitVec 32))) (Intermediate!6088 (undefined!6900 Bool) (index!26584 (_ BitVec 32)) (x!55409 (_ BitVec 32))) (Undefined!6088) (MissingVacant!6088 (index!26585 (_ BitVec 32))) )
))
(declare-fun lt!266797 () SeekEntryResult!6088)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!588348 (= res!376136 (or (= lt!266797 (MissingZero!6088 i!1108)) (= lt!266797 (MissingVacant!6088 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!36744 0))(
  ( (array!36745 (arr!17641 (Array (_ BitVec 32) (_ BitVec 64))) (size!18005 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36744)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36744 (_ BitVec 32)) SeekEntryResult!6088)

(assert (=> b!588348 (= lt!266797 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!588349 () Bool)

(declare-fun res!376139 () Bool)

(assert (=> b!588349 (=> (not res!376139) (not e!335968))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36744 (_ BitVec 32)) Bool)

(assert (=> b!588349 (= res!376139 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!588350 () Bool)

(declare-fun e!335965 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588350 (= e!335965 (validKeyInArray!0 (select (store (arr!17641 a!2986) i!1108 k0!1786) j!136)))))

(declare-fun b!588351 () Bool)

(declare-fun e!335967 () Bool)

(assert (=> b!588351 (= e!335967 (not e!335965))))

(declare-fun res!376135 () Bool)

(assert (=> b!588351 (=> res!376135 e!335965)))

(assert (=> b!588351 (= res!376135 (bvslt mask!3053 #b00000000000000000000000000000000))))

(declare-fun e!335966 () Bool)

(assert (=> b!588351 e!335966))

(declare-fun res!376143 () Bool)

(assert (=> b!588351 (=> (not res!376143) (not e!335966))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266798 () SeekEntryResult!6088)

(declare-fun lt!266800 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36744 (_ BitVec 32)) SeekEntryResult!6088)

(assert (=> b!588351 (= res!376143 (= lt!266798 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266800 vacantSpotIndex!68 (select (store (arr!17641 a!2986) i!1108 k0!1786) j!136) (array!36745 (store (arr!17641 a!2986) i!1108 k0!1786) (size!18005 a!2986)) mask!3053)))))

(assert (=> b!588351 (= lt!266798 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266800 vacantSpotIndex!68 (select (arr!17641 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18300 0))(
  ( (Unit!18301) )
))
(declare-fun lt!266799 () Unit!18300)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36744 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18300)

(assert (=> b!588351 (= lt!266799 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266800 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588351 (= lt!266800 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!376138 () Bool)

(assert (=> start!53946 (=> (not res!376138) (not e!335964))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53946 (= res!376138 (validMask!0 mask!3053))))

(assert (=> start!53946 e!335964))

(assert (=> start!53946 true))

(declare-fun array_inv!13415 (array!36744) Bool)

(assert (=> start!53946 (array_inv!13415 a!2986)))

(declare-fun b!588352 () Bool)

(declare-fun lt!266801 () SeekEntryResult!6088)

(assert (=> b!588352 (= e!335966 (= lt!266801 lt!266798))))

(declare-fun b!588353 () Bool)

(declare-fun res!376134 () Bool)

(assert (=> b!588353 (=> (not res!376134) (not e!335964))))

(assert (=> b!588353 (= res!376134 (validKeyInArray!0 k0!1786))))

(declare-fun b!588354 () Bool)

(declare-fun res!376141 () Bool)

(assert (=> b!588354 (=> (not res!376141) (not e!335964))))

(declare-fun arrayContainsKey!0 (array!36744 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588354 (= res!376141 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588355 () Bool)

(declare-fun res!376145 () Bool)

(assert (=> b!588355 (=> (not res!376145) (not e!335968))))

(assert (=> b!588355 (= res!376145 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17641 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17641 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588356 () Bool)

(declare-fun res!376142 () Bool)

(assert (=> b!588356 (=> (not res!376142) (not e!335968))))

(declare-datatypes ((List!11735 0))(
  ( (Nil!11732) (Cons!11731 (h!12776 (_ BitVec 64)) (t!17971 List!11735)) )
))
(declare-fun arrayNoDuplicates!0 (array!36744 (_ BitVec 32) List!11735) Bool)

(assert (=> b!588356 (= res!376142 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11732))))

(declare-fun b!588357 () Bool)

(assert (=> b!588357 (= e!335968 e!335967)))

(declare-fun res!376137 () Bool)

(assert (=> b!588357 (=> (not res!376137) (not e!335967))))

(assert (=> b!588357 (= res!376137 (and (= lt!266801 (Found!6088 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17641 a!2986) index!984) (select (arr!17641 a!2986) j!136))) (not (= (select (arr!17641 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588357 (= lt!266801 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17641 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588358 () Bool)

(declare-fun res!376144 () Bool)

(assert (=> b!588358 (=> (not res!376144) (not e!335964))))

(assert (=> b!588358 (= res!376144 (validKeyInArray!0 (select (arr!17641 a!2986) j!136)))))

(declare-fun b!588359 () Bool)

(declare-fun res!376140 () Bool)

(assert (=> b!588359 (=> (not res!376140) (not e!335964))))

(assert (=> b!588359 (= res!376140 (and (= (size!18005 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18005 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18005 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53946 res!376138) b!588359))

(assert (= (and b!588359 res!376140) b!588358))

(assert (= (and b!588358 res!376144) b!588353))

(assert (= (and b!588353 res!376134) b!588354))

(assert (= (and b!588354 res!376141) b!588348))

(assert (= (and b!588348 res!376136) b!588349))

(assert (= (and b!588349 res!376139) b!588356))

(assert (= (and b!588356 res!376142) b!588355))

(assert (= (and b!588355 res!376145) b!588357))

(assert (= (and b!588357 res!376137) b!588351))

(assert (= (and b!588351 res!376143) b!588352))

(assert (= (and b!588351 (not res!376135)) b!588350))

(declare-fun m!566963 () Bool)

(assert (=> b!588358 m!566963))

(assert (=> b!588358 m!566963))

(declare-fun m!566965 () Bool)

(assert (=> b!588358 m!566965))

(declare-fun m!566967 () Bool)

(assert (=> b!588350 m!566967))

(declare-fun m!566969 () Bool)

(assert (=> b!588350 m!566969))

(assert (=> b!588350 m!566969))

(declare-fun m!566971 () Bool)

(assert (=> b!588350 m!566971))

(declare-fun m!566973 () Bool)

(assert (=> b!588348 m!566973))

(declare-fun m!566975 () Bool)

(assert (=> b!588351 m!566975))

(assert (=> b!588351 m!566969))

(assert (=> b!588351 m!566963))

(assert (=> b!588351 m!566967))

(assert (=> b!588351 m!566963))

(declare-fun m!566977 () Bool)

(assert (=> b!588351 m!566977))

(declare-fun m!566979 () Bool)

(assert (=> b!588351 m!566979))

(assert (=> b!588351 m!566969))

(declare-fun m!566981 () Bool)

(assert (=> b!588351 m!566981))

(declare-fun m!566983 () Bool)

(assert (=> b!588356 m!566983))

(declare-fun m!566985 () Bool)

(assert (=> b!588349 m!566985))

(declare-fun m!566987 () Bool)

(assert (=> b!588357 m!566987))

(assert (=> b!588357 m!566963))

(assert (=> b!588357 m!566963))

(declare-fun m!566989 () Bool)

(assert (=> b!588357 m!566989))

(declare-fun m!566991 () Bool)

(assert (=> b!588355 m!566991))

(assert (=> b!588355 m!566967))

(declare-fun m!566993 () Bool)

(assert (=> b!588355 m!566993))

(declare-fun m!566995 () Bool)

(assert (=> start!53946 m!566995))

(declare-fun m!566997 () Bool)

(assert (=> start!53946 m!566997))

(declare-fun m!566999 () Bool)

(assert (=> b!588353 m!566999))

(declare-fun m!567001 () Bool)

(assert (=> b!588354 m!567001))

(check-sat (not b!588349) (not b!588353) (not b!588351) (not start!53946) (not b!588348) (not b!588350) (not b!588358) (not b!588356) (not b!588357) (not b!588354))
(check-sat)
