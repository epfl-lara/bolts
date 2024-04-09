; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54072 () Bool)

(assert start!54072)

(declare-fun b!590236 () Bool)

(declare-fun res!377637 () Bool)

(declare-fun e!336981 () Bool)

(assert (=> b!590236 (=> (not res!377637) (not e!336981))))

(declare-datatypes ((array!36822 0))(
  ( (array!36823 (arr!17679 (Array (_ BitVec 32) (_ BitVec 64))) (size!18043 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36822)

(declare-datatypes ((List!11773 0))(
  ( (Nil!11770) (Cons!11769 (h!12814 (_ BitVec 64)) (t!18009 List!11773)) )
))
(declare-fun arrayNoDuplicates!0 (array!36822 (_ BitVec 32) List!11773) Bool)

(assert (=> b!590236 (= res!377637 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11770))))

(declare-fun b!590237 () Bool)

(declare-fun res!377639 () Bool)

(assert (=> b!590237 (=> (not res!377639) (not e!336981))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36822 (_ BitVec 32)) Bool)

(assert (=> b!590237 (= res!377639 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590238 () Bool)

(declare-fun res!377646 () Bool)

(declare-fun e!336974 () Bool)

(assert (=> b!590238 (=> (not res!377646) (not e!336974))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!590238 (= res!377646 (and (= (size!18043 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18043 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18043 a!2986)) (not (= i!1108 j!136))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun e!336977 () Bool)

(declare-fun lt!267826 () (_ BitVec 64))

(declare-fun b!590239 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590239 (= e!336977 (or (not (= (select (arr!17679 a!2986) j!136) lt!267826)) (not (= (select (arr!17679 a!2986) j!136) (select (store (arr!17679 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984) (bvslt index!984 (size!18043 a!2986))))))

(declare-fun e!336976 () Bool)

(assert (=> b!590239 e!336976))

(declare-fun res!377636 () Bool)

(assert (=> b!590239 (=> (not res!377636) (not e!336976))))

(assert (=> b!590239 (= res!377636 (= (select (store (arr!17679 a!2986) i!1108 k!1786) index!984) (select (arr!17679 a!2986) j!136)))))

(declare-fun b!590240 () Bool)

(declare-fun e!336978 () Bool)

(assert (=> b!590240 (= e!336976 e!336978)))

(declare-fun res!377641 () Bool)

(assert (=> b!590240 (=> res!377641 e!336978)))

(assert (=> b!590240 (= res!377641 (or (not (= (select (arr!17679 a!2986) j!136) lt!267826)) (not (= (select (arr!17679 a!2986) j!136) (select (store (arr!17679 a!2986) i!1108 k!1786) index!984))) (bvsge j!136 index!984)))))

(declare-fun b!590241 () Bool)

(declare-fun e!336982 () Bool)

(declare-fun e!336975 () Bool)

(assert (=> b!590241 (= e!336982 e!336975)))

(declare-fun res!377644 () Bool)

(assert (=> b!590241 (=> (not res!377644) (not e!336975))))

(declare-datatypes ((SeekEntryResult!6126 0))(
  ( (MissingZero!6126 (index!26736 (_ BitVec 32))) (Found!6126 (index!26737 (_ BitVec 32))) (Intermediate!6126 (undefined!6938 Bool) (index!26738 (_ BitVec 32)) (x!55558 (_ BitVec 32))) (Undefined!6126) (MissingVacant!6126 (index!26739 (_ BitVec 32))) )
))
(declare-fun lt!267820 () SeekEntryResult!6126)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!590241 (= res!377644 (and (= lt!267820 (Found!6126 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17679 a!2986) index!984) (select (arr!17679 a!2986) j!136))) (not (= (select (arr!17679 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36822 (_ BitVec 32)) SeekEntryResult!6126)

(assert (=> b!590241 (= lt!267820 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17679 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590242 () Bool)

(assert (=> b!590242 (= e!336975 (not e!336977))))

(declare-fun res!377635 () Bool)

(assert (=> b!590242 (=> res!377635 e!336977)))

(declare-fun lt!267823 () SeekEntryResult!6126)

(assert (=> b!590242 (= res!377635 (not (= lt!267823 (Found!6126 index!984))))))

(declare-datatypes ((Unit!18448 0))(
  ( (Unit!18449) )
))
(declare-fun lt!267824 () Unit!18448)

(declare-fun e!336979 () Unit!18448)

(assert (=> b!590242 (= lt!267824 e!336979)))

(declare-fun c!66668 () Bool)

(assert (=> b!590242 (= c!66668 (= lt!267823 Undefined!6126))))

(declare-fun lt!267827 () array!36822)

(assert (=> b!590242 (= lt!267823 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267826 lt!267827 mask!3053))))

(declare-fun e!336973 () Bool)

(assert (=> b!590242 e!336973))

(declare-fun res!377645 () Bool)

(assert (=> b!590242 (=> (not res!377645) (not e!336973))))

(declare-fun lt!267821 () SeekEntryResult!6126)

(declare-fun lt!267822 () (_ BitVec 32))

(assert (=> b!590242 (= res!377645 (= lt!267821 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267822 vacantSpotIndex!68 lt!267826 lt!267827 mask!3053)))))

(assert (=> b!590242 (= lt!267821 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267822 vacantSpotIndex!68 (select (arr!17679 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!590242 (= lt!267826 (select (store (arr!17679 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!267825 () Unit!18448)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36822 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18448)

(assert (=> b!590242 (= lt!267825 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267822 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590242 (= lt!267822 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590243 () Bool)

(declare-fun Unit!18450 () Unit!18448)

(assert (=> b!590243 (= e!336979 Unit!18450)))

(declare-fun b!590244 () Bool)

(declare-fun arrayContainsKey!0 (array!36822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590244 (= e!336978 (arrayContainsKey!0 lt!267827 (select (arr!17679 a!2986) j!136) j!136))))

(declare-fun res!377647 () Bool)

(assert (=> start!54072 (=> (not res!377647) (not e!336974))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54072 (= res!377647 (validMask!0 mask!3053))))

(assert (=> start!54072 e!336974))

(assert (=> start!54072 true))

(declare-fun array_inv!13453 (array!36822) Bool)

(assert (=> start!54072 (array_inv!13453 a!2986)))

(declare-fun b!590245 () Bool)

(assert (=> b!590245 (= e!336981 e!336982)))

(declare-fun res!377638 () Bool)

(assert (=> b!590245 (=> (not res!377638) (not e!336982))))

(assert (=> b!590245 (= res!377638 (= (select (store (arr!17679 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590245 (= lt!267827 (array!36823 (store (arr!17679 a!2986) i!1108 k!1786) (size!18043 a!2986)))))

(declare-fun b!590246 () Bool)

(assert (=> b!590246 (= e!336973 (= lt!267820 lt!267821))))

(declare-fun b!590247 () Bool)

(declare-fun res!377643 () Bool)

(assert (=> b!590247 (=> (not res!377643) (not e!336974))))

(assert (=> b!590247 (= res!377643 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590248 () Bool)

(declare-fun res!377642 () Bool)

(assert (=> b!590248 (=> (not res!377642) (not e!336981))))

(assert (=> b!590248 (= res!377642 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17679 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590249 () Bool)

(declare-fun res!377640 () Bool)

(assert (=> b!590249 (=> (not res!377640) (not e!336974))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590249 (= res!377640 (validKeyInArray!0 (select (arr!17679 a!2986) j!136)))))

(declare-fun b!590250 () Bool)

(assert (=> b!590250 (= e!336974 e!336981)))

(declare-fun res!377634 () Bool)

(assert (=> b!590250 (=> (not res!377634) (not e!336981))))

(declare-fun lt!267828 () SeekEntryResult!6126)

(assert (=> b!590250 (= res!377634 (or (= lt!267828 (MissingZero!6126 i!1108)) (= lt!267828 (MissingVacant!6126 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36822 (_ BitVec 32)) SeekEntryResult!6126)

(assert (=> b!590250 (= lt!267828 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!590251 () Bool)

(declare-fun Unit!18451 () Unit!18448)

(assert (=> b!590251 (= e!336979 Unit!18451)))

(assert (=> b!590251 false))

(declare-fun b!590252 () Bool)

(declare-fun res!377648 () Bool)

(assert (=> b!590252 (=> (not res!377648) (not e!336974))))

(assert (=> b!590252 (= res!377648 (validKeyInArray!0 k!1786))))

(assert (= (and start!54072 res!377647) b!590238))

(assert (= (and b!590238 res!377646) b!590249))

(assert (= (and b!590249 res!377640) b!590252))

(assert (= (and b!590252 res!377648) b!590247))

(assert (= (and b!590247 res!377643) b!590250))

(assert (= (and b!590250 res!377634) b!590237))

(assert (= (and b!590237 res!377639) b!590236))

(assert (= (and b!590236 res!377637) b!590248))

(assert (= (and b!590248 res!377642) b!590245))

(assert (= (and b!590245 res!377638) b!590241))

(assert (= (and b!590241 res!377644) b!590242))

(assert (= (and b!590242 res!377645) b!590246))

(assert (= (and b!590242 c!66668) b!590251))

(assert (= (and b!590242 (not c!66668)) b!590243))

(assert (= (and b!590242 (not res!377635)) b!590239))

(assert (= (and b!590239 res!377636) b!590240))

(assert (= (and b!590240 (not res!377641)) b!590244))

(declare-fun m!568677 () Bool)

(assert (=> b!590240 m!568677))

(declare-fun m!568679 () Bool)

(assert (=> b!590240 m!568679))

(declare-fun m!568681 () Bool)

(assert (=> b!590240 m!568681))

(assert (=> b!590249 m!568677))

(assert (=> b!590249 m!568677))

(declare-fun m!568683 () Bool)

(assert (=> b!590249 m!568683))

(declare-fun m!568685 () Bool)

(assert (=> b!590252 m!568685))

(declare-fun m!568687 () Bool)

(assert (=> b!590248 m!568687))

(declare-fun m!568689 () Bool)

(assert (=> b!590247 m!568689))

(assert (=> b!590245 m!568679))

(declare-fun m!568691 () Bool)

(assert (=> b!590245 m!568691))

(declare-fun m!568693 () Bool)

(assert (=> b!590250 m!568693))

(declare-fun m!568695 () Bool)

(assert (=> b!590242 m!568695))

(declare-fun m!568697 () Bool)

(assert (=> b!590242 m!568697))

(assert (=> b!590242 m!568677))

(assert (=> b!590242 m!568679))

(declare-fun m!568699 () Bool)

(assert (=> b!590242 m!568699))

(declare-fun m!568701 () Bool)

(assert (=> b!590242 m!568701))

(assert (=> b!590242 m!568677))

(declare-fun m!568703 () Bool)

(assert (=> b!590242 m!568703))

(declare-fun m!568705 () Bool)

(assert (=> b!590242 m!568705))

(declare-fun m!568707 () Bool)

(assert (=> b!590241 m!568707))

(assert (=> b!590241 m!568677))

(assert (=> b!590241 m!568677))

(declare-fun m!568709 () Bool)

(assert (=> b!590241 m!568709))

(declare-fun m!568711 () Bool)

(assert (=> b!590237 m!568711))

(declare-fun m!568713 () Bool)

(assert (=> b!590236 m!568713))

(declare-fun m!568715 () Bool)

(assert (=> start!54072 m!568715))

(declare-fun m!568717 () Bool)

(assert (=> start!54072 m!568717))

(assert (=> b!590244 m!568677))

(assert (=> b!590244 m!568677))

(declare-fun m!568719 () Bool)

(assert (=> b!590244 m!568719))

(assert (=> b!590239 m!568677))

(assert (=> b!590239 m!568679))

(assert (=> b!590239 m!568681))

(push 1)

(assert (not b!590252))

(assert (not b!590236))

(assert (not start!54072))

(assert (not b!590247))

(assert (not b!590241))

(assert (not b!590250))

(assert (not b!590242))

(assert (not b!590244))

(assert (not b!590237))

(assert (not b!590249))

(check-sat)

(pop 1)

(push 1)

(check-sat)

