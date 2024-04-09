; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53286 () Bool)

(assert start!53286)

(declare-fun b!578937 () Bool)

(declare-fun res!366907 () Bool)

(declare-fun e!332789 () Bool)

(assert (=> b!578937 (=> (not res!366907) (not e!332789))))

(declare-datatypes ((array!36141 0))(
  ( (array!36142 (arr!17341 (Array (_ BitVec 32) (_ BitVec 64))) (size!17705 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36141)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36141 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!578937 (= res!366907 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!578938 () Bool)

(declare-fun res!366906 () Bool)

(assert (=> b!578938 (=> (not res!366906) (not e!332789))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!578938 (= res!366906 (validKeyInArray!0 k0!1786))))

(declare-fun b!578939 () Bool)

(declare-fun e!332791 () Bool)

(assert (=> b!578939 (= e!332789 e!332791)))

(declare-fun res!366910 () Bool)

(assert (=> b!578939 (=> (not res!366910) (not e!332791))))

(declare-datatypes ((SeekEntryResult!5788 0))(
  ( (MissingZero!5788 (index!25379 (_ BitVec 32))) (Found!5788 (index!25380 (_ BitVec 32))) (Intermediate!5788 (undefined!6600 Bool) (index!25381 (_ BitVec 32)) (x!54300 (_ BitVec 32))) (Undefined!5788) (MissingVacant!5788 (index!25382 (_ BitVec 32))) )
))
(declare-fun lt!264376 () SeekEntryResult!5788)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!578939 (= res!366910 (or (= lt!264376 (MissingZero!5788 i!1108)) (= lt!264376 (MissingVacant!5788 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36141 (_ BitVec 32)) SeekEntryResult!5788)

(assert (=> b!578939 (= lt!264376 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!578940 () Bool)

(declare-fun res!366904 () Bool)

(assert (=> b!578940 (=> (not res!366904) (not e!332791))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!578940 (= res!366904 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17341 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17341 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!578941 () Bool)

(declare-fun res!366905 () Bool)

(assert (=> b!578941 (=> (not res!366905) (not e!332789))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!578941 (= res!366905 (and (= (size!17705 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17705 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17705 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!578942 () Bool)

(declare-fun res!366903 () Bool)

(assert (=> b!578942 (=> (not res!366903) (not e!332791))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36141 (_ BitVec 32)) Bool)

(assert (=> b!578942 (= res!366903 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!578943 () Bool)

(declare-fun res!366911 () Bool)

(assert (=> b!578943 (=> (not res!366911) (not e!332791))))

(declare-datatypes ((List!11435 0))(
  ( (Nil!11432) (Cons!11431 (h!12476 (_ BitVec 64)) (t!17671 List!11435)) )
))
(declare-fun arrayNoDuplicates!0 (array!36141 (_ BitVec 32) List!11435) Bool)

(assert (=> b!578943 (= res!366911 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11432))))

(declare-fun b!578944 () Bool)

(assert (=> b!578944 (= e!332791 false)))

(declare-fun lt!264377 () SeekEntryResult!5788)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36141 (_ BitVec 32)) SeekEntryResult!5788)

(assert (=> b!578944 (= lt!264377 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17341 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!366908 () Bool)

(assert (=> start!53286 (=> (not res!366908) (not e!332789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53286 (= res!366908 (validMask!0 mask!3053))))

(assert (=> start!53286 e!332789))

(assert (=> start!53286 true))

(declare-fun array_inv!13115 (array!36141) Bool)

(assert (=> start!53286 (array_inv!13115 a!2986)))

(declare-fun b!578945 () Bool)

(declare-fun res!366909 () Bool)

(assert (=> b!578945 (=> (not res!366909) (not e!332789))))

(assert (=> b!578945 (= res!366909 (validKeyInArray!0 (select (arr!17341 a!2986) j!136)))))

(assert (= (and start!53286 res!366908) b!578941))

(assert (= (and b!578941 res!366905) b!578945))

(assert (= (and b!578945 res!366909) b!578938))

(assert (= (and b!578938 res!366906) b!578937))

(assert (= (and b!578937 res!366907) b!578939))

(assert (= (and b!578939 res!366910) b!578942))

(assert (= (and b!578942 res!366903) b!578943))

(assert (= (and b!578943 res!366911) b!578940))

(assert (= (and b!578940 res!366904) b!578944))

(declare-fun m!557619 () Bool)

(assert (=> b!578937 m!557619))

(declare-fun m!557621 () Bool)

(assert (=> b!578942 m!557621))

(declare-fun m!557623 () Bool)

(assert (=> b!578939 m!557623))

(declare-fun m!557625 () Bool)

(assert (=> b!578940 m!557625))

(declare-fun m!557627 () Bool)

(assert (=> b!578940 m!557627))

(declare-fun m!557629 () Bool)

(assert (=> b!578940 m!557629))

(declare-fun m!557631 () Bool)

(assert (=> start!53286 m!557631))

(declare-fun m!557633 () Bool)

(assert (=> start!53286 m!557633))

(declare-fun m!557635 () Bool)

(assert (=> b!578943 m!557635))

(declare-fun m!557637 () Bool)

(assert (=> b!578945 m!557637))

(assert (=> b!578945 m!557637))

(declare-fun m!557639 () Bool)

(assert (=> b!578945 m!557639))

(declare-fun m!557641 () Bool)

(assert (=> b!578938 m!557641))

(assert (=> b!578944 m!557637))

(assert (=> b!578944 m!557637))

(declare-fun m!557643 () Bool)

(assert (=> b!578944 m!557643))

(check-sat (not b!578944) (not b!578937) (not b!578943) (not b!578939) (not b!578945) (not b!578938) (not start!53286) (not b!578942))
(check-sat)
