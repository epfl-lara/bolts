; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54918 () Bool)

(assert start!54918)

(declare-fun b!601062 () Bool)

(declare-fun e!343680 () Bool)

(declare-fun e!343687 () Bool)

(assert (=> b!601062 (= e!343680 e!343687)))

(declare-fun res!386032 () Bool)

(assert (=> b!601062 (=> res!386032 e!343687)))

(declare-fun lt!273648 () (_ BitVec 64))

(declare-fun lt!273640 () (_ BitVec 64))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37116 0))(
  ( (array!37117 (arr!17814 (Array (_ BitVec 32) (_ BitVec 64))) (size!18178 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37116)

(assert (=> b!601062 (= res!386032 (or (not (= (select (arr!17814 a!2986) j!136) lt!273648)) (not (= (select (arr!17814 a!2986) j!136) lt!273640)) (bvsge j!136 index!984)))))

(declare-fun b!601063 () Bool)

(declare-datatypes ((Unit!18994 0))(
  ( (Unit!18995) )
))
(declare-fun e!343677 () Unit!18994)

(declare-fun Unit!18996 () Unit!18994)

(assert (=> b!601063 (= e!343677 Unit!18996)))

(assert (=> b!601063 false))

(declare-fun b!601064 () Bool)

(declare-fun e!343676 () Bool)

(declare-fun e!343675 () Bool)

(assert (=> b!601064 (= e!343676 e!343675)))

(declare-fun res!386042 () Bool)

(assert (=> b!601064 (=> (not res!386042) (not e!343675))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6261 0))(
  ( (MissingZero!6261 (index!27300 (_ BitVec 32))) (Found!6261 (index!27301 (_ BitVec 32))) (Intermediate!6261 (undefined!7073 Bool) (index!27302 (_ BitVec 32)) (x!56125 (_ BitVec 32))) (Undefined!6261) (MissingVacant!6261 (index!27303 (_ BitVec 32))) )
))
(declare-fun lt!273641 () SeekEntryResult!6261)

(assert (=> b!601064 (= res!386042 (and (= lt!273641 (Found!6261 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17814 a!2986) index!984) (select (arr!17814 a!2986) j!136))) (not (= (select (arr!17814 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37116 (_ BitVec 32)) SeekEntryResult!6261)

(assert (=> b!601064 (= lt!273641 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17814 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!386037 () Bool)

(declare-fun e!343685 () Bool)

(assert (=> start!54918 (=> (not res!386037) (not e!343685))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54918 (= res!386037 (validMask!0 mask!3053))))

(assert (=> start!54918 e!343685))

(assert (=> start!54918 true))

(declare-fun array_inv!13588 (array!37116) Bool)

(assert (=> start!54918 (array_inv!13588 a!2986)))

(declare-fun lt!273646 () array!37116)

(declare-fun e!343683 () Bool)

(declare-fun b!601065 () Bool)

(declare-fun arrayContainsKey!0 (array!37116 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601065 (= e!343683 (arrayContainsKey!0 lt!273646 (select (arr!17814 a!2986) j!136) index!984))))

(declare-fun b!601066 () Bool)

(declare-fun e!343682 () Bool)

(assert (=> b!601066 (= e!343682 e!343676)))

(declare-fun res!386026 () Bool)

(assert (=> b!601066 (=> (not res!386026) (not e!343676))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!601066 (= res!386026 (= (select (store (arr!17814 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601066 (= lt!273646 (array!37117 (store (arr!17814 a!2986) i!1108 k!1786) (size!18178 a!2986)))))

(declare-fun b!601067 () Bool)

(declare-fun res!386030 () Bool)

(assert (=> b!601067 (=> (not res!386030) (not e!343685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601067 (= res!386030 (validKeyInArray!0 k!1786))))

(declare-fun b!601068 () Bool)

(declare-fun e!343684 () Unit!18994)

(declare-fun Unit!18997 () Unit!18994)

(assert (=> b!601068 (= e!343684 Unit!18997)))

(declare-fun lt!273634 () Unit!18994)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37116 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18994)

(assert (=> b!601068 (= lt!273634 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273646 (select (arr!17814 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!601068 (arrayContainsKey!0 lt!273646 (select (arr!17814 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273645 () Unit!18994)

(declare-datatypes ((List!11908 0))(
  ( (Nil!11905) (Cons!11904 (h!12949 (_ BitVec 64)) (t!18144 List!11908)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37116 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11908) Unit!18994)

(assert (=> b!601068 (= lt!273645 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11905))))

(declare-fun arrayNoDuplicates!0 (array!37116 (_ BitVec 32) List!11908) Bool)

(assert (=> b!601068 (arrayNoDuplicates!0 lt!273646 #b00000000000000000000000000000000 Nil!11905)))

(declare-fun lt!273639 () Unit!18994)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37116 (_ BitVec 32) (_ BitVec 32)) Unit!18994)

(assert (=> b!601068 (= lt!273639 (lemmaNoDuplicateFromThenFromBigger!0 lt!273646 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601068 (arrayNoDuplicates!0 lt!273646 j!136 Nil!11905)))

(declare-fun lt!273647 () Unit!18994)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37116 (_ BitVec 64) (_ BitVec 32) List!11908) Unit!18994)

(assert (=> b!601068 (= lt!273647 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!273646 (select (arr!17814 a!2986) j!136) j!136 Nil!11905))))

(assert (=> b!601068 false))

(declare-fun b!601069 () Bool)

(declare-fun Unit!18998 () Unit!18994)

(assert (=> b!601069 (= e!343684 Unit!18998)))

(declare-fun b!601070 () Bool)

(assert (=> b!601070 (= e!343687 e!343683)))

(declare-fun res!386029 () Bool)

(assert (=> b!601070 (=> (not res!386029) (not e!343683))))

(assert (=> b!601070 (= res!386029 (arrayContainsKey!0 lt!273646 (select (arr!17814 a!2986) j!136) j!136))))

(declare-fun b!601071 () Bool)

(declare-fun e!343679 () Bool)

(declare-fun e!343678 () Bool)

(assert (=> b!601071 (= e!343679 e!343678)))

(declare-fun res!386040 () Bool)

(assert (=> b!601071 (=> res!386040 e!343678)))

(assert (=> b!601071 (= res!386040 (or (not (= (select (arr!17814 a!2986) j!136) lt!273648)) (not (= (select (arr!17814 a!2986) j!136) lt!273640))))))

(assert (=> b!601071 e!343680))

(declare-fun res!386031 () Bool)

(assert (=> b!601071 (=> (not res!386031) (not e!343680))))

(assert (=> b!601071 (= res!386031 (= lt!273640 (select (arr!17814 a!2986) j!136)))))

(assert (=> b!601071 (= lt!273640 (select (store (arr!17814 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!601072 () Bool)

(declare-fun res!386034 () Bool)

(assert (=> b!601072 (=> (not res!386034) (not e!343682))))

(assert (=> b!601072 (= res!386034 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17814 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601073 () Bool)

(declare-fun res!386041 () Bool)

(assert (=> b!601073 (=> (not res!386041) (not e!343682))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37116 (_ BitVec 32)) Bool)

(assert (=> b!601073 (= res!386041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!601074 () Bool)

(assert (=> b!601074 (= e!343685 e!343682)))

(declare-fun res!386027 () Bool)

(assert (=> b!601074 (=> (not res!386027) (not e!343682))))

(declare-fun lt!273636 () SeekEntryResult!6261)

(assert (=> b!601074 (= res!386027 (or (= lt!273636 (MissingZero!6261 i!1108)) (= lt!273636 (MissingVacant!6261 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37116 (_ BitVec 32)) SeekEntryResult!6261)

(assert (=> b!601074 (= lt!273636 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!601075 () Bool)

(declare-fun res!386033 () Bool)

(assert (=> b!601075 (=> (not res!386033) (not e!343685))))

(assert (=> b!601075 (= res!386033 (and (= (size!18178 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18178 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18178 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!601076 () Bool)

(declare-fun res!386036 () Bool)

(assert (=> b!601076 (=> (not res!386036) (not e!343685))))

(assert (=> b!601076 (= res!386036 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!601077 () Bool)

(declare-fun res!386035 () Bool)

(assert (=> b!601077 (=> (not res!386035) (not e!343685))))

(assert (=> b!601077 (= res!386035 (validKeyInArray!0 (select (arr!17814 a!2986) j!136)))))

(declare-fun b!601078 () Bool)

(assert (=> b!601078 (= e!343675 (not e!343679))))

(declare-fun res!386038 () Bool)

(assert (=> b!601078 (=> res!386038 e!343679)))

(declare-fun lt!273638 () SeekEntryResult!6261)

(assert (=> b!601078 (= res!386038 (not (= lt!273638 (Found!6261 index!984))))))

(declare-fun lt!273635 () Unit!18994)

(assert (=> b!601078 (= lt!273635 e!343677)))

(declare-fun c!67886 () Bool)

(assert (=> b!601078 (= c!67886 (= lt!273638 Undefined!6261))))

(assert (=> b!601078 (= lt!273638 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273648 lt!273646 mask!3053))))

(declare-fun e!343681 () Bool)

(assert (=> b!601078 e!343681))

(declare-fun res!386039 () Bool)

(assert (=> b!601078 (=> (not res!386039) (not e!343681))))

(declare-fun lt!273643 () (_ BitVec 32))

(declare-fun lt!273644 () SeekEntryResult!6261)

(assert (=> b!601078 (= res!386039 (= lt!273644 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273643 vacantSpotIndex!68 lt!273648 lt!273646 mask!3053)))))

(assert (=> b!601078 (= lt!273644 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273643 vacantSpotIndex!68 (select (arr!17814 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!601078 (= lt!273648 (select (store (arr!17814 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273637 () Unit!18994)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37116 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18994)

(assert (=> b!601078 (= lt!273637 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273643 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601078 (= lt!273643 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!601079 () Bool)

(declare-fun Unit!18999 () Unit!18994)

(assert (=> b!601079 (= e!343677 Unit!18999)))

(declare-fun b!601080 () Bool)

(assert (=> b!601080 (= e!343678 true)))

(declare-fun lt!273642 () Unit!18994)

(assert (=> b!601080 (= lt!273642 e!343684)))

(declare-fun c!67885 () Bool)

(assert (=> b!601080 (= c!67885 (bvslt j!136 index!984))))

(declare-fun b!601081 () Bool)

(assert (=> b!601081 (= e!343681 (= lt!273641 lt!273644))))

(declare-fun b!601082 () Bool)

(declare-fun res!386028 () Bool)

(assert (=> b!601082 (=> (not res!386028) (not e!343682))))

(assert (=> b!601082 (= res!386028 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11905))))

(assert (= (and start!54918 res!386037) b!601075))

(assert (= (and b!601075 res!386033) b!601077))

(assert (= (and b!601077 res!386035) b!601067))

(assert (= (and b!601067 res!386030) b!601076))

(assert (= (and b!601076 res!386036) b!601074))

(assert (= (and b!601074 res!386027) b!601073))

(assert (= (and b!601073 res!386041) b!601082))

(assert (= (and b!601082 res!386028) b!601072))

(assert (= (and b!601072 res!386034) b!601066))

(assert (= (and b!601066 res!386026) b!601064))

(assert (= (and b!601064 res!386042) b!601078))

(assert (= (and b!601078 res!386039) b!601081))

(assert (= (and b!601078 c!67886) b!601063))

(assert (= (and b!601078 (not c!67886)) b!601079))

(assert (= (and b!601078 (not res!386038)) b!601071))

(assert (= (and b!601071 res!386031) b!601062))

(assert (= (and b!601062 (not res!386032)) b!601070))

(assert (= (and b!601070 res!386029) b!601065))

(assert (= (and b!601071 (not res!386040)) b!601080))

(assert (= (and b!601080 c!67885) b!601068))

(assert (= (and b!601080 (not c!67885)) b!601069))

(declare-fun m!578307 () Bool)

(assert (=> b!601070 m!578307))

(assert (=> b!601070 m!578307))

(declare-fun m!578309 () Bool)

(assert (=> b!601070 m!578309))

(declare-fun m!578311 () Bool)

(assert (=> b!601072 m!578311))

(declare-fun m!578313 () Bool)

(assert (=> b!601076 m!578313))

(assert (=> b!601068 m!578307))

(declare-fun m!578315 () Bool)

(assert (=> b!601068 m!578315))

(assert (=> b!601068 m!578307))

(declare-fun m!578317 () Bool)

(assert (=> b!601068 m!578317))

(assert (=> b!601068 m!578307))

(declare-fun m!578319 () Bool)

(assert (=> b!601068 m!578319))

(declare-fun m!578321 () Bool)

(assert (=> b!601068 m!578321))

(declare-fun m!578323 () Bool)

(assert (=> b!601068 m!578323))

(declare-fun m!578325 () Bool)

(assert (=> b!601068 m!578325))

(assert (=> b!601068 m!578307))

(declare-fun m!578327 () Bool)

(assert (=> b!601068 m!578327))

(declare-fun m!578329 () Bool)

(assert (=> b!601067 m!578329))

(declare-fun m!578331 () Bool)

(assert (=> b!601073 m!578331))

(declare-fun m!578333 () Bool)

(assert (=> b!601078 m!578333))

(assert (=> b!601078 m!578307))

(declare-fun m!578335 () Bool)

(assert (=> b!601078 m!578335))

(declare-fun m!578337 () Bool)

(assert (=> b!601078 m!578337))

(declare-fun m!578339 () Bool)

(assert (=> b!601078 m!578339))

(declare-fun m!578341 () Bool)

(assert (=> b!601078 m!578341))

(declare-fun m!578343 () Bool)

(assert (=> b!601078 m!578343))

(assert (=> b!601078 m!578307))

(declare-fun m!578345 () Bool)

(assert (=> b!601078 m!578345))

(assert (=> b!601065 m!578307))

(assert (=> b!601065 m!578307))

(declare-fun m!578347 () Bool)

(assert (=> b!601065 m!578347))

(declare-fun m!578349 () Bool)

(assert (=> b!601082 m!578349))

(assert (=> b!601077 m!578307))

(assert (=> b!601077 m!578307))

(declare-fun m!578351 () Bool)

(assert (=> b!601077 m!578351))

(assert (=> b!601066 m!578335))

(declare-fun m!578353 () Bool)

(assert (=> b!601066 m!578353))

(declare-fun m!578355 () Bool)

(assert (=> b!601064 m!578355))

(assert (=> b!601064 m!578307))

(assert (=> b!601064 m!578307))

(declare-fun m!578357 () Bool)

(assert (=> b!601064 m!578357))

(declare-fun m!578359 () Bool)

(assert (=> start!54918 m!578359))

(declare-fun m!578361 () Bool)

(assert (=> start!54918 m!578361))

(declare-fun m!578363 () Bool)

(assert (=> b!601074 m!578363))

(assert (=> b!601071 m!578307))

(assert (=> b!601071 m!578335))

(declare-fun m!578365 () Bool)

(assert (=> b!601071 m!578365))

(assert (=> b!601062 m!578307))

(push 1)

