; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57286 () Bool)

(assert start!57286)

(declare-fun b!633807 () Bool)

(declare-fun res!410078 () Bool)

(declare-fun e!362422 () Bool)

(assert (=> b!633807 (=> (not res!410078) (not e!362422))))

(declare-datatypes ((array!38152 0))(
  ( (array!38153 (arr!18302 (Array (_ BitVec 32) (_ BitVec 64))) (size!18666 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38152)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38152 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633807 (= res!410078 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633808 () Bool)

(declare-fun e!362430 () Bool)

(assert (=> b!633808 (= e!362430 true)))

(declare-fun e!362427 () Bool)

(assert (=> b!633808 e!362427))

(declare-fun res!410084 () Bool)

(assert (=> b!633808 (=> (not res!410084) (not e!362427))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!293033 () (_ BitVec 64))

(assert (=> b!633808 (= res!410084 (= lt!293033 (select (arr!18302 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!633808 (= lt!293033 (select (store (arr!18302 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633809 () Bool)

(declare-fun res!410079 () Bool)

(assert (=> b!633809 (=> (not res!410079) (not e!362422))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!633809 (= res!410079 (and (= (size!18666 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18666 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18666 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633810 () Bool)

(declare-datatypes ((Unit!21354 0))(
  ( (Unit!21355) )
))
(declare-fun e!362431 () Unit!21354)

(declare-fun Unit!21356 () Unit!21354)

(assert (=> b!633810 (= e!362431 Unit!21356)))

(declare-fun b!633811 () Bool)

(declare-fun lt!293037 () array!38152)

(declare-fun e!362423 () Bool)

(assert (=> b!633811 (= e!362423 (arrayContainsKey!0 lt!293037 (select (arr!18302 a!2986) j!136) index!984))))

(declare-fun b!633812 () Bool)

(declare-fun res!410072 () Bool)

(assert (=> b!633812 (=> (not res!410072) (not e!362422))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633812 (= res!410072 (validKeyInArray!0 (select (arr!18302 a!2986) j!136)))))

(declare-fun b!633813 () Bool)

(declare-fun res!410077 () Bool)

(assert (=> b!633813 (=> (not res!410077) (not e!362422))))

(assert (=> b!633813 (= res!410077 (validKeyInArray!0 k!1786))))

(declare-fun b!633814 () Bool)

(declare-fun e!362421 () Bool)

(declare-fun e!362429 () Bool)

(assert (=> b!633814 (= e!362421 e!362429)))

(declare-fun res!410074 () Bool)

(assert (=> b!633814 (=> (not res!410074) (not e!362429))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!633814 (= res!410074 (= (select (store (arr!18302 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633814 (= lt!293037 (array!38153 (store (arr!18302 a!2986) i!1108 k!1786) (size!18666 a!2986)))))

(declare-fun b!633816 () Bool)

(declare-fun res!410073 () Bool)

(assert (=> b!633816 (=> (not res!410073) (not e!362421))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!633816 (= res!410073 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18302 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633817 () Bool)

(assert (=> b!633817 (= e!362422 e!362421)))

(declare-fun res!410082 () Bool)

(assert (=> b!633817 (=> (not res!410082) (not e!362421))))

(declare-datatypes ((SeekEntryResult!6749 0))(
  ( (MissingZero!6749 (index!29294 (_ BitVec 32))) (Found!6749 (index!29295 (_ BitVec 32))) (Intermediate!6749 (undefined!7561 Bool) (index!29296 (_ BitVec 32)) (x!58059 (_ BitVec 32))) (Undefined!6749) (MissingVacant!6749 (index!29297 (_ BitVec 32))) )
))
(declare-fun lt!293038 () SeekEntryResult!6749)

(assert (=> b!633817 (= res!410082 (or (= lt!293038 (MissingZero!6749 i!1108)) (= lt!293038 (MissingVacant!6749 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38152 (_ BitVec 32)) SeekEntryResult!6749)

(assert (=> b!633817 (= lt!293038 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633818 () Bool)

(declare-fun res!410071 () Bool)

(assert (=> b!633818 (=> (not res!410071) (not e!362421))))

(declare-datatypes ((List!12396 0))(
  ( (Nil!12393) (Cons!12392 (h!13437 (_ BitVec 64)) (t!18632 List!12396)) )
))
(declare-fun arrayNoDuplicates!0 (array!38152 (_ BitVec 32) List!12396) Bool)

(assert (=> b!633818 (= res!410071 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12393))))

(declare-fun b!633819 () Bool)

(declare-fun e!362425 () Bool)

(assert (=> b!633819 (= e!362427 e!362425)))

(declare-fun res!410069 () Bool)

(assert (=> b!633819 (=> res!410069 e!362425)))

(declare-fun lt!293035 () (_ BitVec 64))

(assert (=> b!633819 (= res!410069 (or (not (= (select (arr!18302 a!2986) j!136) lt!293035)) (not (= (select (arr!18302 a!2986) j!136) lt!293033)) (bvsge j!136 index!984)))))

(declare-fun b!633820 () Bool)

(declare-fun e!362424 () Bool)

(declare-fun lt!293032 () SeekEntryResult!6749)

(declare-fun lt!293034 () SeekEntryResult!6749)

(assert (=> b!633820 (= e!362424 (= lt!293032 lt!293034))))

(declare-fun b!633821 () Bool)

(declare-fun e!362426 () Bool)

(assert (=> b!633821 (= e!362429 e!362426)))

(declare-fun res!410080 () Bool)

(assert (=> b!633821 (=> (not res!410080) (not e!362426))))

(assert (=> b!633821 (= res!410080 (and (= lt!293032 (Found!6749 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18302 a!2986) index!984) (select (arr!18302 a!2986) j!136))) (not (= (select (arr!18302 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38152 (_ BitVec 32)) SeekEntryResult!6749)

(assert (=> b!633821 (= lt!293032 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18302 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633822 () Bool)

(declare-fun Unit!21357 () Unit!21354)

(assert (=> b!633822 (= e!362431 Unit!21357)))

(assert (=> b!633822 false))

(declare-fun b!633823 () Bool)

(declare-fun res!410076 () Bool)

(assert (=> b!633823 (=> (not res!410076) (not e!362421))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38152 (_ BitVec 32)) Bool)

(assert (=> b!633823 (= res!410076 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633824 () Bool)

(assert (=> b!633824 (= e!362425 e!362423)))

(declare-fun res!410083 () Bool)

(assert (=> b!633824 (=> (not res!410083) (not e!362423))))

(assert (=> b!633824 (= res!410083 (arrayContainsKey!0 lt!293037 (select (arr!18302 a!2986) j!136) j!136))))

(declare-fun b!633815 () Bool)

(assert (=> b!633815 (= e!362426 (not e!362430))))

(declare-fun res!410070 () Bool)

(assert (=> b!633815 (=> res!410070 e!362430)))

(declare-fun lt!293040 () SeekEntryResult!6749)

(assert (=> b!633815 (= res!410070 (not (= lt!293040 (Found!6749 index!984))))))

(declare-fun lt!293039 () Unit!21354)

(assert (=> b!633815 (= lt!293039 e!362431)))

(declare-fun c!72236 () Bool)

(assert (=> b!633815 (= c!72236 (= lt!293040 Undefined!6749))))

(assert (=> b!633815 (= lt!293040 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!293035 lt!293037 mask!3053))))

(assert (=> b!633815 e!362424))

(declare-fun res!410081 () Bool)

(assert (=> b!633815 (=> (not res!410081) (not e!362424))))

(declare-fun lt!293031 () (_ BitVec 32))

(assert (=> b!633815 (= res!410081 (= lt!293034 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293031 vacantSpotIndex!68 lt!293035 lt!293037 mask!3053)))))

(assert (=> b!633815 (= lt!293034 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!293031 vacantSpotIndex!68 (select (arr!18302 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633815 (= lt!293035 (select (store (arr!18302 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!293036 () Unit!21354)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38152 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21354)

(assert (=> b!633815 (= lt!293036 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!293031 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633815 (= lt!293031 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun res!410075 () Bool)

(assert (=> start!57286 (=> (not res!410075) (not e!362422))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57286 (= res!410075 (validMask!0 mask!3053))))

(assert (=> start!57286 e!362422))

(assert (=> start!57286 true))

(declare-fun array_inv!14076 (array!38152) Bool)

(assert (=> start!57286 (array_inv!14076 a!2986)))

(assert (= (and start!57286 res!410075) b!633809))

(assert (= (and b!633809 res!410079) b!633812))

(assert (= (and b!633812 res!410072) b!633813))

(assert (= (and b!633813 res!410077) b!633807))

(assert (= (and b!633807 res!410078) b!633817))

(assert (= (and b!633817 res!410082) b!633823))

(assert (= (and b!633823 res!410076) b!633818))

(assert (= (and b!633818 res!410071) b!633816))

(assert (= (and b!633816 res!410073) b!633814))

(assert (= (and b!633814 res!410074) b!633821))

(assert (= (and b!633821 res!410080) b!633815))

(assert (= (and b!633815 res!410081) b!633820))

(assert (= (and b!633815 c!72236) b!633822))

(assert (= (and b!633815 (not c!72236)) b!633810))

(assert (= (and b!633815 (not res!410070)) b!633808))

(assert (= (and b!633808 res!410084) b!633819))

(assert (= (and b!633819 (not res!410069)) b!633824))

(assert (= (and b!633824 res!410083) b!633811))

(declare-fun m!608447 () Bool)

(assert (=> b!633817 m!608447))

(declare-fun m!608449 () Bool)

(assert (=> b!633807 m!608449))

(declare-fun m!608451 () Bool)

(assert (=> start!57286 m!608451))

(declare-fun m!608453 () Bool)

(assert (=> start!57286 m!608453))

(declare-fun m!608455 () Bool)

(assert (=> b!633811 m!608455))

(assert (=> b!633811 m!608455))

(declare-fun m!608457 () Bool)

(assert (=> b!633811 m!608457))

(declare-fun m!608459 () Bool)

(assert (=> b!633816 m!608459))

(declare-fun m!608461 () Bool)

(assert (=> b!633821 m!608461))

(assert (=> b!633821 m!608455))

(assert (=> b!633821 m!608455))

(declare-fun m!608463 () Bool)

(assert (=> b!633821 m!608463))

(declare-fun m!608465 () Bool)

(assert (=> b!633823 m!608465))

(declare-fun m!608467 () Bool)

(assert (=> b!633813 m!608467))

(declare-fun m!608469 () Bool)

(assert (=> b!633814 m!608469))

(declare-fun m!608471 () Bool)

(assert (=> b!633814 m!608471))

(assert (=> b!633808 m!608455))

(assert (=> b!633808 m!608469))

(declare-fun m!608473 () Bool)

(assert (=> b!633808 m!608473))

(declare-fun m!608475 () Bool)

(assert (=> b!633818 m!608475))

(assert (=> b!633812 m!608455))

(assert (=> b!633812 m!608455))

(declare-fun m!608477 () Bool)

(assert (=> b!633812 m!608477))

(assert (=> b!633824 m!608455))

(assert (=> b!633824 m!608455))

(declare-fun m!608479 () Bool)

(assert (=> b!633824 m!608479))

(declare-fun m!608481 () Bool)

(assert (=> b!633815 m!608481))

(assert (=> b!633815 m!608455))

(declare-fun m!608483 () Bool)

(assert (=> b!633815 m!608483))

(assert (=> b!633815 m!608469))

(declare-fun m!608485 () Bool)

(assert (=> b!633815 m!608485))

(declare-fun m!608487 () Bool)

(assert (=> b!633815 m!608487))

(declare-fun m!608489 () Bool)

(assert (=> b!633815 m!608489))

(assert (=> b!633815 m!608455))

(declare-fun m!608491 () Bool)

(assert (=> b!633815 m!608491))

(assert (=> b!633819 m!608455))

(push 1)

