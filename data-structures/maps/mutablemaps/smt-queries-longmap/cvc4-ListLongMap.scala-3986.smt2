; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54008 () Bool)

(assert start!54008)

(declare-fun b!589669 () Bool)

(declare-datatypes ((Unit!18420 0))(
  ( (Unit!18421) )
))
(declare-fun e!336637 () Unit!18420)

(declare-fun Unit!18422 () Unit!18420)

(assert (=> b!589669 (= e!336637 Unit!18422)))

(declare-fun b!589670 () Bool)

(declare-fun res!377285 () Bool)

(declare-fun e!336636 () Bool)

(assert (=> b!589670 (=> (not res!377285) (not e!336636))))

(declare-datatypes ((array!36806 0))(
  ( (array!36807 (arr!17672 (Array (_ BitVec 32) (_ BitVec 64))) (size!18036 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36806)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36806 (_ BitVec 32)) Bool)

(assert (=> b!589670 (= res!377285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!589671 () Bool)

(declare-fun res!377278 () Bool)

(declare-fun e!336639 () Bool)

(assert (=> b!589671 (=> (not res!377278) (not e!336639))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!589671 (= res!377278 (validKeyInArray!0 (select (arr!17672 a!2986) j!136)))))

(declare-fun b!589672 () Bool)

(declare-fun res!377276 () Bool)

(assert (=> b!589672 (=> (not res!377276) (not e!336639))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!589672 (= res!377276 (validKeyInArray!0 k!1786))))

(declare-fun b!589673 () Bool)

(declare-fun res!377280 () Bool)

(assert (=> b!589673 (=> (not res!377280) (not e!336636))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!589673 (= res!377280 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17672 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!589674 () Bool)

(declare-fun res!377279 () Bool)

(assert (=> b!589674 (=> (not res!377279) (not e!336639))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!589674 (= res!377279 (and (= (size!18036 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18036 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18036 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!589675 () Bool)

(assert (=> b!589675 (= e!336639 e!336636)))

(declare-fun res!377282 () Bool)

(assert (=> b!589675 (=> (not res!377282) (not e!336636))))

(declare-datatypes ((SeekEntryResult!6119 0))(
  ( (MissingZero!6119 (index!26706 (_ BitVec 32))) (Found!6119 (index!26707 (_ BitVec 32))) (Intermediate!6119 (undefined!6931 Bool) (index!26708 (_ BitVec 32)) (x!55520 (_ BitVec 32))) (Undefined!6119) (MissingVacant!6119 (index!26709 (_ BitVec 32))) )
))
(declare-fun lt!267550 () SeekEntryResult!6119)

(assert (=> b!589675 (= res!377282 (or (= lt!267550 (MissingZero!6119 i!1108)) (= lt!267550 (MissingVacant!6119 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36806 (_ BitVec 32)) SeekEntryResult!6119)

(assert (=> b!589675 (= lt!267550 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!589676 () Bool)

(declare-fun e!336641 () Bool)

(assert (=> b!589676 (= e!336641 true)))

(assert (=> b!589676 (= (select (store (arr!17672 a!2986) i!1108 k!1786) index!984) (select (arr!17672 a!2986) j!136))))

(declare-fun res!377283 () Bool)

(assert (=> start!54008 (=> (not res!377283) (not e!336639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54008 (= res!377283 (validMask!0 mask!3053))))

(assert (=> start!54008 e!336639))

(assert (=> start!54008 true))

(declare-fun array_inv!13446 (array!36806) Bool)

(assert (=> start!54008 (array_inv!13446 a!2986)))

(declare-fun b!589668 () Bool)

(declare-fun e!336640 () Bool)

(assert (=> b!589668 (= e!336640 (not e!336641))))

(declare-fun res!377288 () Bool)

(assert (=> b!589668 (=> res!377288 e!336641)))

(declare-fun lt!267551 () SeekEntryResult!6119)

(assert (=> b!589668 (= res!377288 (not (= lt!267551 (Found!6119 index!984))))))

(declare-fun lt!267552 () Unit!18420)

(assert (=> b!589668 (= lt!267552 e!336637)))

(declare-fun c!66563 () Bool)

(assert (=> b!589668 (= c!66563 (= lt!267551 Undefined!6119))))

(declare-fun lt!267546 () (_ BitVec 64))

(declare-fun lt!267549 () array!36806)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36806 (_ BitVec 32)) SeekEntryResult!6119)

(assert (=> b!589668 (= lt!267551 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267546 lt!267549 mask!3053))))

(declare-fun e!336642 () Bool)

(assert (=> b!589668 e!336642))

(declare-fun res!377277 () Bool)

(assert (=> b!589668 (=> (not res!377277) (not e!336642))))

(declare-fun lt!267548 () (_ BitVec 32))

(declare-fun lt!267554 () SeekEntryResult!6119)

(assert (=> b!589668 (= res!377277 (= lt!267554 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267548 vacantSpotIndex!68 lt!267546 lt!267549 mask!3053)))))

(assert (=> b!589668 (= lt!267554 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267548 vacantSpotIndex!68 (select (arr!17672 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!589668 (= lt!267546 (select (store (arr!17672 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267553 () Unit!18420)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36806 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18420)

(assert (=> b!589668 (= lt!267553 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267548 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!589668 (= lt!267548 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!589677 () Bool)

(declare-fun res!377284 () Bool)

(assert (=> b!589677 (=> (not res!377284) (not e!336636))))

(declare-datatypes ((List!11766 0))(
  ( (Nil!11763) (Cons!11762 (h!12807 (_ BitVec 64)) (t!18002 List!11766)) )
))
(declare-fun arrayNoDuplicates!0 (array!36806 (_ BitVec 32) List!11766) Bool)

(assert (=> b!589677 (= res!377284 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11763))))

(declare-fun b!589678 () Bool)

(declare-fun e!336643 () Bool)

(assert (=> b!589678 (= e!336636 e!336643)))

(declare-fun res!377287 () Bool)

(assert (=> b!589678 (=> (not res!377287) (not e!336643))))

(assert (=> b!589678 (= res!377287 (= (select (store (arr!17672 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!589678 (= lt!267549 (array!36807 (store (arr!17672 a!2986) i!1108 k!1786) (size!18036 a!2986)))))

(declare-fun b!589679 () Bool)

(assert (=> b!589679 (= e!336643 e!336640)))

(declare-fun res!377281 () Bool)

(assert (=> b!589679 (=> (not res!377281) (not e!336640))))

(declare-fun lt!267547 () SeekEntryResult!6119)

(assert (=> b!589679 (= res!377281 (and (= lt!267547 (Found!6119 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17672 a!2986) index!984) (select (arr!17672 a!2986) j!136))) (not (= (select (arr!17672 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!589679 (= lt!267547 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17672 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!589680 () Bool)

(declare-fun Unit!18423 () Unit!18420)

(assert (=> b!589680 (= e!336637 Unit!18423)))

(assert (=> b!589680 false))

(declare-fun b!589681 () Bool)

(assert (=> b!589681 (= e!336642 (= lt!267547 lt!267554))))

(declare-fun b!589682 () Bool)

(declare-fun res!377286 () Bool)

(assert (=> b!589682 (=> (not res!377286) (not e!336639))))

(declare-fun arrayContainsKey!0 (array!36806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!589682 (= res!377286 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!54008 res!377283) b!589674))

(assert (= (and b!589674 res!377279) b!589671))

(assert (= (and b!589671 res!377278) b!589672))

(assert (= (and b!589672 res!377276) b!589682))

(assert (= (and b!589682 res!377286) b!589675))

(assert (= (and b!589675 res!377282) b!589670))

(assert (= (and b!589670 res!377285) b!589677))

(assert (= (and b!589677 res!377284) b!589673))

(assert (= (and b!589673 res!377280) b!589678))

(assert (= (and b!589678 res!377287) b!589679))

(assert (= (and b!589679 res!377281) b!589668))

(assert (= (and b!589668 res!377277) b!589681))

(assert (= (and b!589668 c!66563) b!589680))

(assert (= (and b!589668 (not c!66563)) b!589669))

(assert (= (and b!589668 (not res!377288)) b!589676))

(declare-fun m!568219 () Bool)

(assert (=> b!589676 m!568219))

(declare-fun m!568221 () Bool)

(assert (=> b!589676 m!568221))

(declare-fun m!568223 () Bool)

(assert (=> b!589676 m!568223))

(assert (=> b!589671 m!568223))

(assert (=> b!589671 m!568223))

(declare-fun m!568225 () Bool)

(assert (=> b!589671 m!568225))

(declare-fun m!568227 () Bool)

(assert (=> b!589677 m!568227))

(declare-fun m!568229 () Bool)

(assert (=> start!54008 m!568229))

(declare-fun m!568231 () Bool)

(assert (=> start!54008 m!568231))

(declare-fun m!568233 () Bool)

(assert (=> b!589672 m!568233))

(declare-fun m!568235 () Bool)

(assert (=> b!589682 m!568235))

(declare-fun m!568237 () Bool)

(assert (=> b!589675 m!568237))

(declare-fun m!568239 () Bool)

(assert (=> b!589670 m!568239))

(declare-fun m!568241 () Bool)

(assert (=> b!589679 m!568241))

(assert (=> b!589679 m!568223))

(assert (=> b!589679 m!568223))

(declare-fun m!568243 () Bool)

(assert (=> b!589679 m!568243))

(declare-fun m!568245 () Bool)

(assert (=> b!589673 m!568245))

(declare-fun m!568247 () Bool)

(assert (=> b!589668 m!568247))

(declare-fun m!568249 () Bool)

(assert (=> b!589668 m!568249))

(assert (=> b!589668 m!568223))

(declare-fun m!568251 () Bool)

(assert (=> b!589668 m!568251))

(assert (=> b!589668 m!568223))

(assert (=> b!589668 m!568219))

(declare-fun m!568253 () Bool)

(assert (=> b!589668 m!568253))

(declare-fun m!568255 () Bool)

(assert (=> b!589668 m!568255))

(declare-fun m!568257 () Bool)

(assert (=> b!589668 m!568257))

(assert (=> b!589678 m!568219))

(declare-fun m!568259 () Bool)

(assert (=> b!589678 m!568259))

(push 1)

