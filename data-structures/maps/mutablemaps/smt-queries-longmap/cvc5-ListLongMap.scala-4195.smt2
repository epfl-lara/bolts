; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57276 () Bool)

(assert start!57276)

(declare-fun b!633537 () Bool)

(declare-fun res!409839 () Bool)

(declare-fun e!362266 () Bool)

(assert (=> b!633537 (=> (not res!409839) (not e!362266))))

(declare-datatypes ((array!38142 0))(
  ( (array!38143 (arr!18297 (Array (_ BitVec 32) (_ BitVec 64))) (size!18661 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38142)

(declare-datatypes ((List!12391 0))(
  ( (Nil!12388) (Cons!12387 (h!13432 (_ BitVec 64)) (t!18627 List!12391)) )
))
(declare-fun arrayNoDuplicates!0 (array!38142 (_ BitVec 32) List!12391) Bool)

(assert (=> b!633537 (= res!409839 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12388))))

(declare-fun b!633539 () Bool)

(declare-fun e!362261 () Bool)

(declare-fun lt!292886 () array!38142)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38142 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633539 (= e!362261 (arrayContainsKey!0 lt!292886 (select (arr!18297 a!2986) j!136) index!984))))

(declare-fun b!633540 () Bool)

(declare-fun res!409831 () Bool)

(declare-fun e!362260 () Bool)

(assert (=> b!633540 (=> (not res!409831) (not e!362260))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!633540 (= res!409831 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633541 () Bool)

(declare-fun e!362265 () Bool)

(assert (=> b!633541 (= e!362266 e!362265)))

(declare-fun res!409838 () Bool)

(assert (=> b!633541 (=> (not res!409838) (not e!362265))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!633541 (= res!409838 (= (select (store (arr!18297 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633541 (= lt!292886 (array!38143 (store (arr!18297 a!2986) i!1108 k!1786) (size!18661 a!2986)))))

(declare-fun b!633542 () Bool)

(declare-fun res!409844 () Bool)

(assert (=> b!633542 (=> (not res!409844) (not e!362266))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!633542 (= res!409844 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18297 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633543 () Bool)

(declare-fun e!362256 () Bool)

(assert (=> b!633543 (= e!362256 e!362261)))

(declare-fun res!409843 () Bool)

(assert (=> b!633543 (=> (not res!409843) (not e!362261))))

(assert (=> b!633543 (= res!409843 (arrayContainsKey!0 lt!292886 (select (arr!18297 a!2986) j!136) j!136))))

(declare-fun b!633544 () Bool)

(declare-datatypes ((Unit!21334 0))(
  ( (Unit!21335) )
))
(declare-fun e!362264 () Unit!21334)

(declare-fun Unit!21336 () Unit!21334)

(assert (=> b!633544 (= e!362264 Unit!21336)))

(declare-fun b!633545 () Bool)

(declare-fun res!409841 () Bool)

(assert (=> b!633545 (=> (not res!409841) (not e!362260))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633545 (= res!409841 (validKeyInArray!0 (select (arr!18297 a!2986) j!136)))))

(declare-fun b!633546 () Bool)

(assert (=> b!633546 (= e!362260 e!362266)))

(declare-fun res!409835 () Bool)

(assert (=> b!633546 (=> (not res!409835) (not e!362266))))

(declare-datatypes ((SeekEntryResult!6744 0))(
  ( (MissingZero!6744 (index!29274 (_ BitVec 32))) (Found!6744 (index!29275 (_ BitVec 32))) (Intermediate!6744 (undefined!7556 Bool) (index!29276 (_ BitVec 32)) (x!58046 (_ BitVec 32))) (Undefined!6744) (MissingVacant!6744 (index!29277 (_ BitVec 32))) )
))
(declare-fun lt!292888 () SeekEntryResult!6744)

(assert (=> b!633546 (= res!409835 (or (= lt!292888 (MissingZero!6744 i!1108)) (= lt!292888 (MissingVacant!6744 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38142 (_ BitVec 32)) SeekEntryResult!6744)

(assert (=> b!633546 (= lt!292888 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633547 () Bool)

(declare-fun res!409842 () Bool)

(assert (=> b!633547 (=> (not res!409842) (not e!362266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38142 (_ BitVec 32)) Bool)

(assert (=> b!633547 (= res!409842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!633538 () Bool)

(declare-fun e!362258 () Bool)

(assert (=> b!633538 (= e!362265 e!362258)))

(declare-fun res!409830 () Bool)

(assert (=> b!633538 (=> (not res!409830) (not e!362258))))

(declare-fun lt!292887 () SeekEntryResult!6744)

(assert (=> b!633538 (= res!409830 (and (= lt!292887 (Found!6744 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18297 a!2986) index!984) (select (arr!18297 a!2986) j!136))) (not (= (select (arr!18297 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38142 (_ BitVec 32)) SeekEntryResult!6744)

(assert (=> b!633538 (= lt!292887 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18297 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!409833 () Bool)

(assert (=> start!57276 (=> (not res!409833) (not e!362260))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57276 (= res!409833 (validMask!0 mask!3053))))

(assert (=> start!57276 e!362260))

(assert (=> start!57276 true))

(declare-fun array_inv!14071 (array!38142) Bool)

(assert (=> start!57276 (array_inv!14071 a!2986)))

(declare-fun b!633548 () Bool)

(declare-fun res!409832 () Bool)

(assert (=> b!633548 (=> (not res!409832) (not e!362260))))

(assert (=> b!633548 (= res!409832 (and (= (size!18661 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18661 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18661 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633549 () Bool)

(declare-fun e!362262 () Bool)

(declare-fun lt!292885 () SeekEntryResult!6744)

(assert (=> b!633549 (= e!362262 (= lt!292887 lt!292885))))

(declare-fun b!633550 () Bool)

(declare-fun res!409837 () Bool)

(assert (=> b!633550 (=> (not res!409837) (not e!362260))))

(assert (=> b!633550 (= res!409837 (validKeyInArray!0 k!1786))))

(declare-fun b!633551 () Bool)

(declare-fun Unit!21337 () Unit!21334)

(assert (=> b!633551 (= e!362264 Unit!21337)))

(assert (=> b!633551 false))

(declare-fun b!633552 () Bool)

(declare-fun e!362257 () Bool)

(assert (=> b!633552 (= e!362258 (not e!362257))))

(declare-fun res!409829 () Bool)

(assert (=> b!633552 (=> res!409829 e!362257)))

(declare-fun lt!292884 () SeekEntryResult!6744)

(assert (=> b!633552 (= res!409829 (not (= lt!292884 (Found!6744 index!984))))))

(declare-fun lt!292881 () Unit!21334)

(assert (=> b!633552 (= lt!292881 e!362264)))

(declare-fun c!72221 () Bool)

(assert (=> b!633552 (= c!72221 (= lt!292884 Undefined!6744))))

(declare-fun lt!292882 () (_ BitVec 64))

(assert (=> b!633552 (= lt!292884 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292882 lt!292886 mask!3053))))

(assert (=> b!633552 e!362262))

(declare-fun res!409836 () Bool)

(assert (=> b!633552 (=> (not res!409836) (not e!362262))))

(declare-fun lt!292889 () (_ BitVec 32))

(assert (=> b!633552 (= res!409836 (= lt!292885 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292889 vacantSpotIndex!68 lt!292882 lt!292886 mask!3053)))))

(assert (=> b!633552 (= lt!292885 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292889 vacantSpotIndex!68 (select (arr!18297 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633552 (= lt!292882 (select (store (arr!18297 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292890 () Unit!21334)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38142 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21334)

(assert (=> b!633552 (= lt!292890 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292889 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633552 (= lt!292889 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun lt!292883 () (_ BitVec 64))

(declare-fun b!633553 () Bool)

(assert (=> b!633553 (= e!362257 (or (not (= (select (arr!18297 a!2986) j!136) lt!292882)) (not (= (select (arr!18297 a!2986) j!136) lt!292883)) (bvsge j!136 index!984) (bvsge index!984 (size!18661 a!2986)) (bvsge (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000)))))

(declare-fun e!362259 () Bool)

(assert (=> b!633553 e!362259))

(declare-fun res!409834 () Bool)

(assert (=> b!633553 (=> (not res!409834) (not e!362259))))

(assert (=> b!633553 (= res!409834 (= lt!292883 (select (arr!18297 a!2986) j!136)))))

(assert (=> b!633553 (= lt!292883 (select (store (arr!18297 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633554 () Bool)

(assert (=> b!633554 (= e!362259 e!362256)))

(declare-fun res!409840 () Bool)

(assert (=> b!633554 (=> res!409840 e!362256)))

(assert (=> b!633554 (= res!409840 (or (not (= (select (arr!18297 a!2986) j!136) lt!292882)) (not (= (select (arr!18297 a!2986) j!136) lt!292883)) (bvsge j!136 index!984)))))

(assert (= (and start!57276 res!409833) b!633548))

(assert (= (and b!633548 res!409832) b!633545))

(assert (= (and b!633545 res!409841) b!633550))

(assert (= (and b!633550 res!409837) b!633540))

(assert (= (and b!633540 res!409831) b!633546))

(assert (= (and b!633546 res!409835) b!633547))

(assert (= (and b!633547 res!409842) b!633537))

(assert (= (and b!633537 res!409839) b!633542))

(assert (= (and b!633542 res!409844) b!633541))

(assert (= (and b!633541 res!409838) b!633538))

(assert (= (and b!633538 res!409830) b!633552))

(assert (= (and b!633552 res!409836) b!633549))

(assert (= (and b!633552 c!72221) b!633551))

(assert (= (and b!633552 (not c!72221)) b!633544))

(assert (= (and b!633552 (not res!409829)) b!633553))

(assert (= (and b!633553 res!409834) b!633554))

(assert (= (and b!633554 (not res!409840)) b!633543))

(assert (= (and b!633543 res!409843) b!633539))

(declare-fun m!608217 () Bool)

(assert (=> b!633545 m!608217))

(assert (=> b!633545 m!608217))

(declare-fun m!608219 () Bool)

(assert (=> b!633545 m!608219))

(assert (=> b!633543 m!608217))

(assert (=> b!633543 m!608217))

(declare-fun m!608221 () Bool)

(assert (=> b!633543 m!608221))

(assert (=> b!633539 m!608217))

(assert (=> b!633539 m!608217))

(declare-fun m!608223 () Bool)

(assert (=> b!633539 m!608223))

(declare-fun m!608225 () Bool)

(assert (=> b!633550 m!608225))

(assert (=> b!633554 m!608217))

(declare-fun m!608227 () Bool)

(assert (=> b!633542 m!608227))

(declare-fun m!608229 () Bool)

(assert (=> b!633547 m!608229))

(declare-fun m!608231 () Bool)

(assert (=> b!633546 m!608231))

(declare-fun m!608233 () Bool)

(assert (=> start!57276 m!608233))

(declare-fun m!608235 () Bool)

(assert (=> start!57276 m!608235))

(assert (=> b!633553 m!608217))

(declare-fun m!608237 () Bool)

(assert (=> b!633553 m!608237))

(declare-fun m!608239 () Bool)

(assert (=> b!633553 m!608239))

(declare-fun m!608241 () Bool)

(assert (=> b!633537 m!608241))

(declare-fun m!608243 () Bool)

(assert (=> b!633540 m!608243))

(declare-fun m!608245 () Bool)

(assert (=> b!633538 m!608245))

(assert (=> b!633538 m!608217))

(assert (=> b!633538 m!608217))

(declare-fun m!608247 () Bool)

(assert (=> b!633538 m!608247))

(declare-fun m!608249 () Bool)

(assert (=> b!633552 m!608249))

(declare-fun m!608251 () Bool)

(assert (=> b!633552 m!608251))

(assert (=> b!633552 m!608217))

(assert (=> b!633552 m!608217))

(declare-fun m!608253 () Bool)

(assert (=> b!633552 m!608253))

(declare-fun m!608255 () Bool)

(assert (=> b!633552 m!608255))

(declare-fun m!608257 () Bool)

(assert (=> b!633552 m!608257))

(declare-fun m!608259 () Bool)

(assert (=> b!633552 m!608259))

(assert (=> b!633552 m!608237))

(assert (=> b!633541 m!608237))

(declare-fun m!608261 () Bool)

(assert (=> b!633541 m!608261))

(push 1)

