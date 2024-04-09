; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53952 () Bool)

(assert start!53952)

(declare-fun b!588466 () Bool)

(declare-fun e!336023 () Bool)

(assert (=> b!588466 (= e!336023 (not true))))

(declare-datatypes ((Unit!18308 0))(
  ( (Unit!18309) )
))
(declare-fun lt!266860 () Unit!18308)

(declare-fun e!336026 () Unit!18308)

(assert (=> b!588466 (= lt!266860 e!336026)))

(declare-fun c!66479 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!266859 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36750 0))(
  ( (array!36751 (arr!17644 (Array (_ BitVec 32) (_ BitVec 64))) (size!18008 (_ BitVec 32))) )
))
(declare-fun lt!266861 () array!36750)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6091 0))(
  ( (MissingZero!6091 (index!26594 (_ BitVec 32))) (Found!6091 (index!26595 (_ BitVec 32))) (Intermediate!6091 (undefined!6903 Bool) (index!26596 (_ BitVec 32)) (x!55420 (_ BitVec 32))) (Undefined!6091) (MissingVacant!6091 (index!26597 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36750 (_ BitVec 32)) SeekEntryResult!6091)

(assert (=> b!588466 (= c!66479 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!266859 lt!266861 mask!3053) Undefined!6091))))

(declare-fun e!336025 () Bool)

(assert (=> b!588466 e!336025))

(declare-fun res!376244 () Bool)

(assert (=> b!588466 (=> (not res!376244) (not e!336025))))

(declare-fun lt!266857 () (_ BitVec 32))

(declare-fun lt!266863 () SeekEntryResult!6091)

(assert (=> b!588466 (= res!376244 (= lt!266863 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266857 vacantSpotIndex!68 lt!266859 lt!266861 mask!3053)))))

(declare-fun a!2986 () array!36750)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!588466 (= lt!266863 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266857 vacantSpotIndex!68 (select (arr!17644 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!588466 (= lt!266859 (select (store (arr!17644 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!266864 () Unit!18308)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36750 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18308)

(assert (=> b!588466 (= lt!266864 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266857 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588466 (= lt!266857 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588467 () Bool)

(declare-fun res!376248 () Bool)

(declare-fun e!336024 () Bool)

(assert (=> b!588467 (=> (not res!376248) (not e!336024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588467 (= res!376248 (validKeyInArray!0 (select (arr!17644 a!2986) j!136)))))

(declare-fun b!588468 () Bool)

(declare-fun e!336028 () Bool)

(assert (=> b!588468 (= e!336024 e!336028)))

(declare-fun res!376252 () Bool)

(assert (=> b!588468 (=> (not res!376252) (not e!336028))))

(declare-fun lt!266858 () SeekEntryResult!6091)

(assert (=> b!588468 (= res!376252 (or (= lt!266858 (MissingZero!6091 i!1108)) (= lt!266858 (MissingVacant!6091 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36750 (_ BitVec 32)) SeekEntryResult!6091)

(assert (=> b!588468 (= lt!266858 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!588469 () Bool)

(declare-fun res!376251 () Bool)

(assert (=> b!588469 (=> (not res!376251) (not e!336028))))

(assert (=> b!588469 (= res!376251 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17644 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588470 () Bool)

(declare-fun lt!266862 () SeekEntryResult!6091)

(assert (=> b!588470 (= e!336025 (= lt!266862 lt!266863))))

(declare-fun res!376250 () Bool)

(assert (=> start!53952 (=> (not res!376250) (not e!336024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53952 (= res!376250 (validMask!0 mask!3053))))

(assert (=> start!53952 e!336024))

(assert (=> start!53952 true))

(declare-fun array_inv!13418 (array!36750) Bool)

(assert (=> start!53952 (array_inv!13418 a!2986)))

(declare-fun b!588471 () Bool)

(declare-fun Unit!18310 () Unit!18308)

(assert (=> b!588471 (= e!336026 Unit!18310)))

(declare-fun b!588472 () Bool)

(declare-fun res!376242 () Bool)

(assert (=> b!588472 (=> (not res!376242) (not e!336024))))

(declare-fun arrayContainsKey!0 (array!36750 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588472 (= res!376242 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588473 () Bool)

(declare-fun res!376247 () Bool)

(assert (=> b!588473 (=> (not res!376247) (not e!336028))))

(declare-datatypes ((List!11738 0))(
  ( (Nil!11735) (Cons!11734 (h!12779 (_ BitVec 64)) (t!17974 List!11738)) )
))
(declare-fun arrayNoDuplicates!0 (array!36750 (_ BitVec 32) List!11738) Bool)

(assert (=> b!588473 (= res!376247 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11735))))

(declare-fun b!588474 () Bool)

(declare-fun res!376249 () Bool)

(assert (=> b!588474 (=> (not res!376249) (not e!336028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36750 (_ BitVec 32)) Bool)

(assert (=> b!588474 (= res!376249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588475 () Bool)

(declare-fun e!336027 () Bool)

(assert (=> b!588475 (= e!336028 e!336027)))

(declare-fun res!376246 () Bool)

(assert (=> b!588475 (=> (not res!376246) (not e!336027))))

(assert (=> b!588475 (= res!376246 (= (select (store (arr!17644 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!588475 (= lt!266861 (array!36751 (store (arr!17644 a!2986) i!1108 k0!1786) (size!18008 a!2986)))))

(declare-fun b!588476 () Bool)

(declare-fun res!376243 () Bool)

(assert (=> b!588476 (=> (not res!376243) (not e!336024))))

(assert (=> b!588476 (= res!376243 (validKeyInArray!0 k0!1786))))

(declare-fun b!588477 () Bool)

(declare-fun res!376245 () Bool)

(assert (=> b!588477 (=> (not res!376245) (not e!336024))))

(assert (=> b!588477 (= res!376245 (and (= (size!18008 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18008 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18008 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588478 () Bool)

(declare-fun Unit!18311 () Unit!18308)

(assert (=> b!588478 (= e!336026 Unit!18311)))

(assert (=> b!588478 false))

(declare-fun b!588479 () Bool)

(assert (=> b!588479 (= e!336027 e!336023)))

(declare-fun res!376253 () Bool)

(assert (=> b!588479 (=> (not res!376253) (not e!336023))))

(assert (=> b!588479 (= res!376253 (and (= lt!266862 (Found!6091 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17644 a!2986) index!984) (select (arr!17644 a!2986) j!136))) (not (= (select (arr!17644 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588479 (= lt!266862 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17644 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53952 res!376250) b!588477))

(assert (= (and b!588477 res!376245) b!588467))

(assert (= (and b!588467 res!376248) b!588476))

(assert (= (and b!588476 res!376243) b!588472))

(assert (= (and b!588472 res!376242) b!588468))

(assert (= (and b!588468 res!376252) b!588474))

(assert (= (and b!588474 res!376249) b!588473))

(assert (= (and b!588473 res!376247) b!588469))

(assert (= (and b!588469 res!376251) b!588475))

(assert (= (and b!588475 res!376246) b!588479))

(assert (= (and b!588479 res!376253) b!588466))

(assert (= (and b!588466 res!376244) b!588470))

(assert (= (and b!588466 c!66479) b!588478))

(assert (= (and b!588466 (not c!66479)) b!588471))

(declare-fun m!567083 () Bool)

(assert (=> b!588467 m!567083))

(assert (=> b!588467 m!567083))

(declare-fun m!567085 () Bool)

(assert (=> b!588467 m!567085))

(declare-fun m!567087 () Bool)

(assert (=> b!588472 m!567087))

(declare-fun m!567089 () Bool)

(assert (=> b!588468 m!567089))

(declare-fun m!567091 () Bool)

(assert (=> b!588479 m!567091))

(assert (=> b!588479 m!567083))

(assert (=> b!588479 m!567083))

(declare-fun m!567093 () Bool)

(assert (=> b!588479 m!567093))

(declare-fun m!567095 () Bool)

(assert (=> b!588466 m!567095))

(assert (=> b!588466 m!567083))

(declare-fun m!567097 () Bool)

(assert (=> b!588466 m!567097))

(declare-fun m!567099 () Bool)

(assert (=> b!588466 m!567099))

(declare-fun m!567101 () Bool)

(assert (=> b!588466 m!567101))

(declare-fun m!567103 () Bool)

(assert (=> b!588466 m!567103))

(declare-fun m!567105 () Bool)

(assert (=> b!588466 m!567105))

(assert (=> b!588466 m!567083))

(declare-fun m!567107 () Bool)

(assert (=> b!588466 m!567107))

(declare-fun m!567109 () Bool)

(assert (=> b!588473 m!567109))

(declare-fun m!567111 () Bool)

(assert (=> b!588476 m!567111))

(assert (=> b!588475 m!567099))

(declare-fun m!567113 () Bool)

(assert (=> b!588475 m!567113))

(declare-fun m!567115 () Bool)

(assert (=> start!53952 m!567115))

(declare-fun m!567117 () Bool)

(assert (=> start!53952 m!567117))

(declare-fun m!567119 () Bool)

(assert (=> b!588474 m!567119))

(declare-fun m!567121 () Bool)

(assert (=> b!588469 m!567121))

(check-sat (not b!588466) (not b!588474) (not b!588468) (not b!588467) (not start!53952) (not b!588479) (not b!588476) (not b!588472) (not b!588473))
(check-sat)
