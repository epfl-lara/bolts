; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57270 () Bool)

(assert start!57270)

(declare-fun b!633375 () Bool)

(declare-fun e!362164 () Bool)

(declare-fun e!362163 () Bool)

(assert (=> b!633375 (= e!362164 e!362163)))

(declare-fun res!409692 () Bool)

(assert (=> b!633375 (=> res!409692 e!362163)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!292795 () (_ BitVec 64))

(declare-fun lt!292799 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38136 0))(
  ( (array!38137 (arr!18294 (Array (_ BitVec 32) (_ BitVec 64))) (size!18658 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38136)

(assert (=> b!633375 (= res!409692 (or (not (= (select (arr!18294 a!2986) j!136) lt!292799)) (not (= (select (arr!18294 a!2986) j!136) lt!292795)) (bvsge j!136 index!984)))))

(declare-fun b!633376 () Bool)

(declare-fun res!409685 () Bool)

(declare-fun e!362167 () Bool)

(assert (=> b!633376 (=> (not res!409685) (not e!362167))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!633376 (= res!409685 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18294 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!633377 () Bool)

(declare-fun e!362162 () Bool)

(assert (=> b!633377 (= e!362162 e!362167)))

(declare-fun res!409689 () Bool)

(assert (=> b!633377 (=> (not res!409689) (not e!362167))))

(declare-datatypes ((SeekEntryResult!6741 0))(
  ( (MissingZero!6741 (index!29262 (_ BitVec 32))) (Found!6741 (index!29263 (_ BitVec 32))) (Intermediate!6741 (undefined!7553 Bool) (index!29264 (_ BitVec 32)) (x!58035 (_ BitVec 32))) (Undefined!6741) (MissingVacant!6741 (index!29265 (_ BitVec 32))) )
))
(declare-fun lt!292798 () SeekEntryResult!6741)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!633377 (= res!409689 (or (= lt!292798 (MissingZero!6741 i!1108)) (= lt!292798 (MissingVacant!6741 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38136 (_ BitVec 32)) SeekEntryResult!6741)

(assert (=> b!633377 (= lt!292798 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!633378 () Bool)

(declare-fun e!362160 () Bool)

(assert (=> b!633378 (= e!362167 e!362160)))

(declare-fun res!409699 () Bool)

(assert (=> b!633378 (=> (not res!409699) (not e!362160))))

(assert (=> b!633378 (= res!409699 (= (select (store (arr!18294 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!292791 () array!38136)

(assert (=> b!633378 (= lt!292791 (array!38137 (store (arr!18294 a!2986) i!1108 k!1786) (size!18658 a!2986)))))

(declare-fun b!633379 () Bool)

(declare-fun e!362157 () Bool)

(declare-fun e!362158 () Bool)

(assert (=> b!633379 (= e!362157 (not e!362158))))

(declare-fun res!409694 () Bool)

(assert (=> b!633379 (=> res!409694 e!362158)))

(declare-fun lt!292794 () SeekEntryResult!6741)

(assert (=> b!633379 (= res!409694 (not (= lt!292794 (Found!6741 index!984))))))

(declare-datatypes ((Unit!21322 0))(
  ( (Unit!21323) )
))
(declare-fun lt!292792 () Unit!21322)

(declare-fun e!362161 () Unit!21322)

(assert (=> b!633379 (= lt!292792 e!362161)))

(declare-fun c!72212 () Bool)

(assert (=> b!633379 (= c!72212 (= lt!292794 Undefined!6741))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38136 (_ BitVec 32)) SeekEntryResult!6741)

(assert (=> b!633379 (= lt!292794 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292799 lt!292791 mask!3053))))

(declare-fun e!362165 () Bool)

(assert (=> b!633379 e!362165))

(declare-fun res!409693 () Bool)

(assert (=> b!633379 (=> (not res!409693) (not e!362165))))

(declare-fun lt!292796 () SeekEntryResult!6741)

(declare-fun lt!292797 () (_ BitVec 32))

(assert (=> b!633379 (= res!409693 (= lt!292796 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292797 vacantSpotIndex!68 lt!292799 lt!292791 mask!3053)))))

(assert (=> b!633379 (= lt!292796 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292797 vacantSpotIndex!68 (select (arr!18294 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!633379 (= lt!292799 (select (store (arr!18294 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292793 () Unit!21322)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38136 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21322)

(assert (=> b!633379 (= lt!292793 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292797 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!633379 (= lt!292797 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!633380 () Bool)

(declare-fun res!409695 () Bool)

(assert (=> b!633380 (=> (not res!409695) (not e!362167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38136 (_ BitVec 32)) Bool)

(assert (=> b!633380 (= res!409695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!409688 () Bool)

(assert (=> start!57270 (=> (not res!409688) (not e!362162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57270 (= res!409688 (validMask!0 mask!3053))))

(assert (=> start!57270 e!362162))

(assert (=> start!57270 true))

(declare-fun array_inv!14068 (array!38136) Bool)

(assert (=> start!57270 (array_inv!14068 a!2986)))

(declare-fun e!362166 () Bool)

(declare-fun b!633381 () Bool)

(declare-fun arrayContainsKey!0 (array!38136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!633381 (= e!362166 (arrayContainsKey!0 lt!292791 (select (arr!18294 a!2986) j!136) index!984))))

(declare-fun b!633382 () Bool)

(assert (=> b!633382 (= e!362163 e!362166)))

(declare-fun res!409700 () Bool)

(assert (=> b!633382 (=> (not res!409700) (not e!362166))))

(assert (=> b!633382 (= res!409700 (arrayContainsKey!0 lt!292791 (select (arr!18294 a!2986) j!136) j!136))))

(declare-fun b!633383 () Bool)

(declare-fun res!409687 () Bool)

(assert (=> b!633383 (=> (not res!409687) (not e!362162))))

(assert (=> b!633383 (= res!409687 (and (= (size!18658 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18658 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18658 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!633384 () Bool)

(declare-fun Unit!21324 () Unit!21322)

(assert (=> b!633384 (= e!362161 Unit!21324)))

(declare-fun b!633385 () Bool)

(assert (=> b!633385 (= e!362160 e!362157)))

(declare-fun res!409686 () Bool)

(assert (=> b!633385 (=> (not res!409686) (not e!362157))))

(declare-fun lt!292800 () SeekEntryResult!6741)

(assert (=> b!633385 (= res!409686 (and (= lt!292800 (Found!6741 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18294 a!2986) index!984) (select (arr!18294 a!2986) j!136))) (not (= (select (arr!18294 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!633385 (= lt!292800 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18294 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633386 () Bool)

(assert (=> b!633386 (= e!362165 (= lt!292800 lt!292796))))

(declare-fun b!633387 () Bool)

(declare-fun res!409698 () Bool)

(assert (=> b!633387 (=> (not res!409698) (not e!362162))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!633387 (= res!409698 (validKeyInArray!0 k!1786))))

(declare-fun b!633388 () Bool)

(declare-fun res!409691 () Bool)

(assert (=> b!633388 (=> (not res!409691) (not e!362162))))

(assert (=> b!633388 (= res!409691 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!633389 () Bool)

(declare-fun Unit!21325 () Unit!21322)

(assert (=> b!633389 (= e!362161 Unit!21325)))

(assert (=> b!633389 false))

(declare-fun b!633390 () Bool)

(assert (=> b!633390 (= e!362158 (or (not (= (select (arr!18294 a!2986) j!136) lt!292799)) (not (= (select (arr!18294 a!2986) j!136) lt!292795)) (bvsge j!136 index!984) (bvslt index!984 (size!18658 a!2986))))))

(assert (=> b!633390 e!362164))

(declare-fun res!409696 () Bool)

(assert (=> b!633390 (=> (not res!409696) (not e!362164))))

(assert (=> b!633390 (= res!409696 (= lt!292795 (select (arr!18294 a!2986) j!136)))))

(assert (=> b!633390 (= lt!292795 (select (store (arr!18294 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!633391 () Bool)

(declare-fun res!409690 () Bool)

(assert (=> b!633391 (=> (not res!409690) (not e!362167))))

(declare-datatypes ((List!12388 0))(
  ( (Nil!12385) (Cons!12384 (h!13429 (_ BitVec 64)) (t!18624 List!12388)) )
))
(declare-fun arrayNoDuplicates!0 (array!38136 (_ BitVec 32) List!12388) Bool)

(assert (=> b!633391 (= res!409690 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12385))))

(declare-fun b!633392 () Bool)

(declare-fun res!409697 () Bool)

(assert (=> b!633392 (=> (not res!409697) (not e!362162))))

(assert (=> b!633392 (= res!409697 (validKeyInArray!0 (select (arr!18294 a!2986) j!136)))))

(assert (= (and start!57270 res!409688) b!633383))

(assert (= (and b!633383 res!409687) b!633392))

(assert (= (and b!633392 res!409697) b!633387))

(assert (= (and b!633387 res!409698) b!633388))

(assert (= (and b!633388 res!409691) b!633377))

(assert (= (and b!633377 res!409689) b!633380))

(assert (= (and b!633380 res!409695) b!633391))

(assert (= (and b!633391 res!409690) b!633376))

(assert (= (and b!633376 res!409685) b!633378))

(assert (= (and b!633378 res!409699) b!633385))

(assert (= (and b!633385 res!409686) b!633379))

(assert (= (and b!633379 res!409693) b!633386))

(assert (= (and b!633379 c!72212) b!633389))

(assert (= (and b!633379 (not c!72212)) b!633384))

(assert (= (and b!633379 (not res!409694)) b!633390))

(assert (= (and b!633390 res!409696) b!633375))

(assert (= (and b!633375 (not res!409692)) b!633382))

(assert (= (and b!633382 res!409700) b!633381))

(declare-fun m!608079 () Bool)

(assert (=> b!633381 m!608079))

(assert (=> b!633381 m!608079))

(declare-fun m!608081 () Bool)

(assert (=> b!633381 m!608081))

(declare-fun m!608083 () Bool)

(assert (=> start!57270 m!608083))

(declare-fun m!608085 () Bool)

(assert (=> start!57270 m!608085))

(declare-fun m!608087 () Bool)

(assert (=> b!633378 m!608087))

(declare-fun m!608089 () Bool)

(assert (=> b!633378 m!608089))

(assert (=> b!633375 m!608079))

(assert (=> b!633392 m!608079))

(assert (=> b!633392 m!608079))

(declare-fun m!608091 () Bool)

(assert (=> b!633392 m!608091))

(declare-fun m!608093 () Bool)

(assert (=> b!633388 m!608093))

(declare-fun m!608095 () Bool)

(assert (=> b!633379 m!608095))

(declare-fun m!608097 () Bool)

(assert (=> b!633379 m!608097))

(assert (=> b!633379 m!608079))

(assert (=> b!633379 m!608087))

(declare-fun m!608099 () Bool)

(assert (=> b!633379 m!608099))

(assert (=> b!633379 m!608079))

(declare-fun m!608101 () Bool)

(assert (=> b!633379 m!608101))

(declare-fun m!608103 () Bool)

(assert (=> b!633379 m!608103))

(declare-fun m!608105 () Bool)

(assert (=> b!633379 m!608105))

(assert (=> b!633390 m!608079))

(assert (=> b!633390 m!608087))

(declare-fun m!608107 () Bool)

(assert (=> b!633390 m!608107))

(declare-fun m!608109 () Bool)

(assert (=> b!633385 m!608109))

(assert (=> b!633385 m!608079))

(assert (=> b!633385 m!608079))

(declare-fun m!608111 () Bool)

(assert (=> b!633385 m!608111))

(assert (=> b!633382 m!608079))

(assert (=> b!633382 m!608079))

(declare-fun m!608113 () Bool)

(assert (=> b!633382 m!608113))

(declare-fun m!608115 () Bool)

(assert (=> b!633391 m!608115))

(declare-fun m!608117 () Bool)

(assert (=> b!633387 m!608117))

(declare-fun m!608119 () Bool)

(assert (=> b!633377 m!608119))

(declare-fun m!608121 () Bool)

(assert (=> b!633376 m!608121))

(declare-fun m!608123 () Bool)

(assert (=> b!633380 m!608123))

(push 1)

(assert (not b!633387))

(assert (not b!633392))

(assert (not start!57270))

(assert (not b!633379))

(assert (not b!633377))

(assert (not b!633388))

(assert (not b!633391))

(assert (not b!633385))

(assert (not b!633381))

(assert (not b!633380))

(assert (not b!633382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

