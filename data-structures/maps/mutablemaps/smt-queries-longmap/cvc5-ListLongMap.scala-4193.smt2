; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57264 () Bool)

(assert start!57264)

(declare-fun b!633213 () Bool)

(declare-datatypes ((Unit!21310 0))(
  ( (Unit!21311) )
))
(declare-fun e!362059 () Unit!21310)

(declare-fun Unit!21312 () Unit!21310)

(assert (=> b!633213 (= e!362059 Unit!21312)))

(assert (=> b!633213 false))

(declare-fun b!633214 () Bool)

(declare-fun e!362066 () Bool)

(declare-fun e!362060 () Bool)

(assert (=> b!633214 (= e!362066 e!362060)))

(declare-fun res!409549 () Bool)

(assert (=> b!633214 (=> res!409549 e!362060)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!292708 () (_ BitVec 64))

(declare-fun lt!292702 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38130 0))(
  ( (array!38131 (arr!18291 (Array (_ BitVec 32) (_ BitVec 64))) (size!18655 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38130)

(assert (=> b!633214 (= res!409549 (or (not (= (select (arr!18291 a!2986) j!136) lt!292702)) (not (= (select (arr!18291 a!2986) j!136) lt!292708)) (bvsge j!136 index!984)))))

(declare-fun b!633215 () Bool)

(declare-fun Unit!21313 () Unit!21310)

(assert (=> b!633215 (= e!362059 Unit!21313)))

(declare-fun res!409542 () Bool)

(declare-fun e!362058 () Bool)

(assert (=> start!57264 (=> (not res!409542) (not e!362058))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57264 (= res!409542 (validMask!0 mask!3053))))

(assert (=> start!57264 e!362058))

(assert (=> start!57264 true))

(declare-fun array_inv!14065 (array!38130) Bool)

(assert (=> start!57264 (array_inv!14065 a!2986)))

(declare-fun e!362063 () Bool)

(declare-fun lt!292709 () array!38130)

(declare-fun b!633216 () Bool)

(declare-fun arrayContainsKey!0 (array!38130 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633216 (= e!362063 (arrayContainsKey!0 lt!292709 (select (arr!18291 a!2986) j!136) index!984))))

(declare-fun b!633217 () Bool)

(assert (=> b!633217 (= e!362060 e!362063)))

(declare-fun res!409554 () Bool)

(assert (=> b!633217 (=> (not res!409554) (not e!362063))))

(assert (=> b!633217 (= res!409554 (arrayContainsKey!0 lt!292709 (select (arr!18291 a!2986) j!136) j!136))))

(declare-fun b!633218 () Bool)

(declare-fun res!409556 () Bool)

(assert (=> b!633218 (=> (not res!409556) (not e!362058))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633218 (= res!409556 (validKeyInArray!0 k!1786))))

(declare-fun b!633219 () Bool)

(declare-fun e!362065 () Bool)

(declare-datatypes ((SeekEntryResult!6738 0))(
  ( (MissingZero!6738 (index!29250 (_ BitVec 32))) (Found!6738 (index!29251 (_ BitVec 32))) (Intermediate!6738 (undefined!7550 Bool) (index!29252 (_ BitVec 32)) (x!58024 (_ BitVec 32))) (Undefined!6738) (MissingVacant!6738 (index!29253 (_ BitVec 32))) )
))
(declare-fun lt!292701 () SeekEntryResult!6738)

(declare-fun lt!292706 () SeekEntryResult!6738)

(assert (=> b!633219 (= e!362065 (= lt!292701 lt!292706))))

(declare-fun b!633220 () Bool)

(declare-fun e!362064 () Bool)

(declare-fun e!362068 () Bool)

(assert (=> b!633220 (= e!362064 e!362068)))

(declare-fun res!409553 () Bool)

(assert (=> b!633220 (=> (not res!409553) (not e!362068))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!633220 (= res!409553 (and (= lt!292701 (Found!6738 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18291 a!2986) index!984) (select (arr!18291 a!2986) j!136))) (not (= (select (arr!18291 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38130 (_ BitVec 32)) SeekEntryResult!6738)

(assert (=> b!633220 (= lt!292701 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18291 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633221 () Bool)

(declare-fun e!362067 () Bool)

(assert (=> b!633221 (= e!362067 true)))

(assert (=> b!633221 e!362066))

(declare-fun res!409544 () Bool)

(assert (=> b!633221 (=> (not res!409544) (not e!362066))))

(assert (=> b!633221 (= res!409544 (= lt!292708 (select (arr!18291 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!633221 (= lt!292708 (select (store (arr!18291 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633222 () Bool)

(declare-fun res!409541 () Bool)

(declare-fun e!362062 () Bool)

(assert (=> b!633222 (=> (not res!409541) (not e!362062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38130 (_ BitVec 32)) Bool)

(assert (=> b!633222 (= res!409541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633223 () Bool)

(declare-fun res!409545 () Bool)

(assert (=> b!633223 (=> (not res!409545) (not e!362062))))

(assert (=> b!633223 (= res!409545 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18291 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633224 () Bool)

(assert (=> b!633224 (= e!362058 e!362062)))

(declare-fun res!409551 () Bool)

(assert (=> b!633224 (=> (not res!409551) (not e!362062))))

(declare-fun lt!292710 () SeekEntryResult!6738)

(assert (=> b!633224 (= res!409551 (or (= lt!292710 (MissingZero!6738 i!1108)) (= lt!292710 (MissingVacant!6738 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38130 (_ BitVec 32)) SeekEntryResult!6738)

(assert (=> b!633224 (= lt!292710 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633225 () Bool)

(declare-fun res!409552 () Bool)

(assert (=> b!633225 (=> (not res!409552) (not e!362058))))

(assert (=> b!633225 (= res!409552 (validKeyInArray!0 (select (arr!18291 a!2986) j!136)))))

(declare-fun b!633226 () Bool)

(assert (=> b!633226 (= e!362062 e!362064)))

(declare-fun res!409550 () Bool)

(assert (=> b!633226 (=> (not res!409550) (not e!362064))))

(assert (=> b!633226 (= res!409550 (= (select (store (arr!18291 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633226 (= lt!292709 (array!38131 (store (arr!18291 a!2986) i!1108 k!1786) (size!18655 a!2986)))))

(declare-fun b!633227 () Bool)

(declare-fun res!409548 () Bool)

(assert (=> b!633227 (=> (not res!409548) (not e!362062))))

(declare-datatypes ((List!12385 0))(
  ( (Nil!12382) (Cons!12381 (h!13426 (_ BitVec 64)) (t!18621 List!12385)) )
))
(declare-fun arrayNoDuplicates!0 (array!38130 (_ BitVec 32) List!12385) Bool)

(assert (=> b!633227 (= res!409548 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12382))))

(declare-fun b!633228 () Bool)

(declare-fun res!409543 () Bool)

(assert (=> b!633228 (=> (not res!409543) (not e!362058))))

(assert (=> b!633228 (= res!409543 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633229 () Bool)

(declare-fun res!409555 () Bool)

(assert (=> b!633229 (=> (not res!409555) (not e!362058))))

(assert (=> b!633229 (= res!409555 (and (= (size!18655 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18655 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18655 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633230 () Bool)

(assert (=> b!633230 (= e!362068 (not e!362067))))

(declare-fun res!409546 () Bool)

(assert (=> b!633230 (=> res!409546 e!362067)))

(declare-fun lt!292707 () SeekEntryResult!6738)

(assert (=> b!633230 (= res!409546 (not (= lt!292707 (Found!6738 index!984))))))

(declare-fun lt!292705 () Unit!21310)

(assert (=> b!633230 (= lt!292705 e!362059)))

(declare-fun c!72203 () Bool)

(assert (=> b!633230 (= c!72203 (= lt!292707 Undefined!6738))))

(assert (=> b!633230 (= lt!292707 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292702 lt!292709 mask!3053))))

(assert (=> b!633230 e!362065))

(declare-fun res!409547 () Bool)

(assert (=> b!633230 (=> (not res!409547) (not e!362065))))

(declare-fun lt!292704 () (_ BitVec 32))

(assert (=> b!633230 (= res!409547 (= lt!292706 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292704 vacantSpotIndex!68 lt!292702 lt!292709 mask!3053)))))

(assert (=> b!633230 (= lt!292706 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292704 vacantSpotIndex!68 (select (arr!18291 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633230 (= lt!292702 (select (store (arr!18291 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292703 () Unit!21310)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38130 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21310)

(assert (=> b!633230 (= lt!292703 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292704 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633230 (= lt!292704 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!57264 res!409542) b!633229))

(assert (= (and b!633229 res!409555) b!633225))

(assert (= (and b!633225 res!409552) b!633218))

(assert (= (and b!633218 res!409556) b!633228))

(assert (= (and b!633228 res!409543) b!633224))

(assert (= (and b!633224 res!409551) b!633222))

(assert (= (and b!633222 res!409541) b!633227))

(assert (= (and b!633227 res!409548) b!633223))

(assert (= (and b!633223 res!409545) b!633226))

(assert (= (and b!633226 res!409550) b!633220))

(assert (= (and b!633220 res!409553) b!633230))

(assert (= (and b!633230 res!409547) b!633219))

(assert (= (and b!633230 c!72203) b!633213))

(assert (= (and b!633230 (not c!72203)) b!633215))

(assert (= (and b!633230 (not res!409546)) b!633221))

(assert (= (and b!633221 res!409544) b!633214))

(assert (= (and b!633214 (not res!409549)) b!633217))

(assert (= (and b!633217 res!409554) b!633216))

(declare-fun m!607941 () Bool)

(assert (=> b!633216 m!607941))

(assert (=> b!633216 m!607941))

(declare-fun m!607943 () Bool)

(assert (=> b!633216 m!607943))

(declare-fun m!607945 () Bool)

(assert (=> b!633223 m!607945))

(declare-fun m!607947 () Bool)

(assert (=> b!633228 m!607947))

(declare-fun m!607949 () Bool)

(assert (=> b!633230 m!607949))

(declare-fun m!607951 () Bool)

(assert (=> b!633230 m!607951))

(declare-fun m!607953 () Bool)

(assert (=> b!633230 m!607953))

(declare-fun m!607955 () Bool)

(assert (=> b!633230 m!607955))

(declare-fun m!607957 () Bool)

(assert (=> b!633230 m!607957))

(assert (=> b!633230 m!607941))

(assert (=> b!633230 m!607941))

(declare-fun m!607959 () Bool)

(assert (=> b!633230 m!607959))

(declare-fun m!607961 () Bool)

(assert (=> b!633230 m!607961))

(assert (=> b!633217 m!607941))

(assert (=> b!633217 m!607941))

(declare-fun m!607963 () Bool)

(assert (=> b!633217 m!607963))

(declare-fun m!607965 () Bool)

(assert (=> b!633227 m!607965))

(declare-fun m!607967 () Bool)

(assert (=> start!57264 m!607967))

(declare-fun m!607969 () Bool)

(assert (=> start!57264 m!607969))

(declare-fun m!607971 () Bool)

(assert (=> b!633220 m!607971))

(assert (=> b!633220 m!607941))

(assert (=> b!633220 m!607941))

(declare-fun m!607973 () Bool)

(assert (=> b!633220 m!607973))

(declare-fun m!607975 () Bool)

(assert (=> b!633224 m!607975))

(assert (=> b!633221 m!607941))

(assert (=> b!633221 m!607953))

(declare-fun m!607977 () Bool)

(assert (=> b!633221 m!607977))

(declare-fun m!607979 () Bool)

(assert (=> b!633218 m!607979))

(assert (=> b!633226 m!607953))

(declare-fun m!607981 () Bool)

(assert (=> b!633226 m!607981))

(assert (=> b!633225 m!607941))

(assert (=> b!633225 m!607941))

(declare-fun m!607983 () Bool)

(assert (=> b!633225 m!607983))

(declare-fun m!607985 () Bool)

(assert (=> b!633222 m!607985))

(assert (=> b!633214 m!607941))

(push 1)

