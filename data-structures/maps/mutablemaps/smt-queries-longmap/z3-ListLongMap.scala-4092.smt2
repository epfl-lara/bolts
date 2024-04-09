; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56060 () Bool)

(assert start!56060)

(declare-fun b!617039 () Bool)

(declare-fun res!397602 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!617039 (= res!397602 (bvsge j!136 index!984))))

(declare-fun e!353836 () Bool)

(assert (=> b!617039 (=> res!397602 e!353836)))

(declare-fun e!353823 () Bool)

(assert (=> b!617039 (= e!353823 e!353836)))

(declare-fun b!617040 () Bool)

(declare-fun e!353825 () Bool)

(declare-fun e!353835 () Bool)

(assert (=> b!617040 (= e!353825 e!353835)))

(declare-fun res!397611 () Bool)

(assert (=> b!617040 (=> (not res!397611) (not e!353835))))

(declare-datatypes ((SeekEntryResult!6436 0))(
  ( (MissingZero!6436 (index!28027 (_ BitVec 32))) (Found!6436 (index!28028 (_ BitVec 32))) (Intermediate!6436 (undefined!7248 Bool) (index!28029 (_ BitVec 32)) (x!56845 (_ BitVec 32))) (Undefined!6436) (MissingVacant!6436 (index!28030 (_ BitVec 32))) )
))
(declare-fun lt!284117 () SeekEntryResult!6436)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!617040 (= res!397611 (or (= lt!284117 (MissingZero!6436 i!1108)) (= lt!284117 (MissingVacant!6436 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37493 0))(
  ( (array!37494 (arr!17989 (Array (_ BitVec 32) (_ BitVec 64))) (size!18353 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37493)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37493 (_ BitVec 32)) SeekEntryResult!6436)

(assert (=> b!617040 (= lt!284117 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!617041 () Bool)

(declare-fun e!353831 () Bool)

(assert (=> b!617041 (= e!353835 e!353831)))

(declare-fun res!397608 () Bool)

(assert (=> b!617041 (=> (not res!397608) (not e!353831))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!617041 (= res!397608 (= (select (store (arr!17989 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!284129 () array!37493)

(assert (=> b!617041 (= lt!284129 (array!37494 (store (arr!17989 a!2986) i!1108 k0!1786) (size!18353 a!2986)))))

(declare-fun b!617042 () Bool)

(declare-fun e!353827 () Bool)

(assert (=> b!617042 (= e!353827 true)))

(assert (=> b!617042 (= (select (store (arr!17989 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun e!353822 () Bool)

(declare-fun b!617043 () Bool)

(declare-fun arrayContainsKey!0 (array!37493 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617043 (= e!353822 (arrayContainsKey!0 lt!284129 (select (arr!17989 a!2986) j!136) index!984))))

(declare-fun b!617044 () Bool)

(declare-datatypes ((Unit!20180 0))(
  ( (Unit!20181) )
))
(declare-fun e!353826 () Unit!20180)

(declare-fun Unit!20182 () Unit!20180)

(assert (=> b!617044 (= e!353826 Unit!20182)))

(declare-fun b!617045 () Bool)

(declare-fun res!397598 () Bool)

(assert (=> b!617045 (=> (not res!397598) (not e!353825))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617045 (= res!397598 (validKeyInArray!0 k0!1786))))

(declare-fun b!617046 () Bool)

(assert (=> b!617046 false))

(declare-fun lt!284136 () Unit!20180)

(declare-datatypes ((List!12083 0))(
  ( (Nil!12080) (Cons!12079 (h!13124 (_ BitVec 64)) (t!18319 List!12083)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37493 (_ BitVec 64) (_ BitVec 32) List!12083) Unit!20180)

(assert (=> b!617046 (= lt!284136 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284129 (select (arr!17989 a!2986) j!136) index!984 Nil!12080))))

(declare-fun arrayNoDuplicates!0 (array!37493 (_ BitVec 32) List!12083) Bool)

(assert (=> b!617046 (arrayNoDuplicates!0 lt!284129 index!984 Nil!12080)))

(declare-fun lt!284125 () Unit!20180)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37493 (_ BitVec 32) (_ BitVec 32)) Unit!20180)

(assert (=> b!617046 (= lt!284125 (lemmaNoDuplicateFromThenFromBigger!0 lt!284129 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617046 (arrayNoDuplicates!0 lt!284129 #b00000000000000000000000000000000 Nil!12080)))

(declare-fun lt!284122 () Unit!20180)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37493 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12083) Unit!20180)

(assert (=> b!617046 (= lt!284122 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12080))))

(assert (=> b!617046 (arrayContainsKey!0 lt!284129 (select (arr!17989 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284132 () Unit!20180)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37493 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20180)

(assert (=> b!617046 (= lt!284132 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284129 (select (arr!17989 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!353830 () Bool)

(assert (=> b!617046 e!353830))

(declare-fun res!397604 () Bool)

(assert (=> b!617046 (=> (not res!397604) (not e!353830))))

(assert (=> b!617046 (= res!397604 (arrayContainsKey!0 lt!284129 (select (arr!17989 a!2986) j!136) j!136))))

(declare-fun e!353824 () Unit!20180)

(declare-fun Unit!20183 () Unit!20180)

(assert (=> b!617046 (= e!353824 Unit!20183)))

(declare-fun b!617048 () Bool)

(assert (=> b!617048 (= e!353830 (arrayContainsKey!0 lt!284129 (select (arr!17989 a!2986) j!136) index!984))))

(declare-fun b!617049 () Bool)

(declare-fun res!397597 () Bool)

(assert (=> b!617049 (=> (not res!397597) (not e!353835))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!617049 (= res!397597 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17989 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617050 () Bool)

(declare-fun res!397603 () Bool)

(assert (=> b!617050 (=> (not res!397603) (not e!353825))))

(assert (=> b!617050 (= res!397603 (and (= (size!18353 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18353 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18353 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!617051 () Bool)

(declare-fun e!353828 () Unit!20180)

(declare-fun Unit!20184 () Unit!20180)

(assert (=> b!617051 (= e!353828 Unit!20184)))

(declare-fun b!617052 () Bool)

(declare-fun res!397613 () Bool)

(assert (=> b!617052 (=> (not res!397613) (not e!353825))))

(assert (=> b!617052 (= res!397613 (validKeyInArray!0 (select (arr!17989 a!2986) j!136)))))

(declare-fun b!617053 () Bool)

(declare-fun res!397605 () Bool)

(assert (=> b!617053 (=> (not res!397605) (not e!353825))))

(assert (=> b!617053 (= res!397605 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617054 () Bool)

(declare-fun res!397600 () Bool)

(assert (=> b!617054 (=> (not res!397600) (not e!353835))))

(assert (=> b!617054 (= res!397600 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12080))))

(declare-fun b!617055 () Bool)

(declare-fun Unit!20185 () Unit!20180)

(assert (=> b!617055 (= e!353824 Unit!20185)))

(declare-fun b!617056 () Bool)

(declare-fun Unit!20186 () Unit!20180)

(assert (=> b!617056 (= e!353828 Unit!20186)))

(assert (=> b!617056 false))

(declare-fun b!617057 () Bool)

(assert (=> b!617057 false))

(declare-fun lt!284127 () Unit!20180)

(assert (=> b!617057 (= lt!284127 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284129 (select (arr!17989 a!2986) j!136) j!136 Nil!12080))))

(assert (=> b!617057 (arrayNoDuplicates!0 lt!284129 j!136 Nil!12080)))

(declare-fun lt!284131 () Unit!20180)

(assert (=> b!617057 (= lt!284131 (lemmaNoDuplicateFromThenFromBigger!0 lt!284129 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617057 (arrayNoDuplicates!0 lt!284129 #b00000000000000000000000000000000 Nil!12080)))

(declare-fun lt!284118 () Unit!20180)

(assert (=> b!617057 (= lt!284118 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12080))))

(assert (=> b!617057 (arrayContainsKey!0 lt!284129 (select (arr!17989 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284121 () Unit!20180)

(assert (=> b!617057 (= lt!284121 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284129 (select (arr!17989 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!353829 () Unit!20180)

(declare-fun Unit!20187 () Unit!20180)

(assert (=> b!617057 (= e!353829 Unit!20187)))

(declare-fun b!617058 () Bool)

(declare-fun e!353834 () Bool)

(assert (=> b!617058 (= e!353834 (not e!353827))))

(declare-fun res!397606 () Bool)

(assert (=> b!617058 (=> res!397606 e!353827)))

(declare-fun lt!284134 () SeekEntryResult!6436)

(assert (=> b!617058 (= res!397606 (not (= lt!284134 (MissingVacant!6436 vacantSpotIndex!68))))))

(declare-fun lt!284126 () Unit!20180)

(assert (=> b!617058 (= lt!284126 e!353826)))

(declare-fun c!70088 () Bool)

(assert (=> b!617058 (= c!70088 (= lt!284134 (Found!6436 index!984)))))

(declare-fun lt!284120 () Unit!20180)

(assert (=> b!617058 (= lt!284120 e!353828)))

(declare-fun c!70091 () Bool)

(assert (=> b!617058 (= c!70091 (= lt!284134 Undefined!6436))))

(declare-fun lt!284130 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37493 (_ BitVec 32)) SeekEntryResult!6436)

(assert (=> b!617058 (= lt!284134 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284130 lt!284129 mask!3053))))

(declare-fun e!353833 () Bool)

(assert (=> b!617058 e!353833))

(declare-fun res!397599 () Bool)

(assert (=> b!617058 (=> (not res!397599) (not e!353833))))

(declare-fun lt!284123 () (_ BitVec 32))

(declare-fun lt!284119 () SeekEntryResult!6436)

(assert (=> b!617058 (= res!397599 (= lt!284119 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284123 vacantSpotIndex!68 lt!284130 lt!284129 mask!3053)))))

(assert (=> b!617058 (= lt!284119 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284123 vacantSpotIndex!68 (select (arr!17989 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!617058 (= lt!284130 (select (store (arr!17989 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!284128 () Unit!20180)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37493 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20180)

(assert (=> b!617058 (= lt!284128 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284123 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617058 (= lt!284123 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617059 () Bool)

(assert (=> b!617059 (= e!353831 e!353834)))

(declare-fun res!397607 () Bool)

(assert (=> b!617059 (=> (not res!397607) (not e!353834))))

(declare-fun lt!284135 () SeekEntryResult!6436)

(assert (=> b!617059 (= res!397607 (and (= lt!284135 (Found!6436 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17989 a!2986) index!984) (select (arr!17989 a!2986) j!136))) (not (= (select (arr!17989 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!617059 (= lt!284135 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17989 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!397609 () Bool)

(assert (=> start!56060 (=> (not res!397609) (not e!353825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56060 (= res!397609 (validMask!0 mask!3053))))

(assert (=> start!56060 e!353825))

(assert (=> start!56060 true))

(declare-fun array_inv!13763 (array!37493) Bool)

(assert (=> start!56060 (array_inv!13763 a!2986)))

(declare-fun b!617047 () Bool)

(declare-fun Unit!20188 () Unit!20180)

(assert (=> b!617047 (= e!353826 Unit!20188)))

(declare-fun res!397612 () Bool)

(assert (=> b!617047 (= res!397612 (= (select (store (arr!17989 a!2986) i!1108 k0!1786) index!984) (select (arr!17989 a!2986) j!136)))))

(assert (=> b!617047 (=> (not res!397612) (not e!353823))))

(assert (=> b!617047 e!353823))

(declare-fun c!70089 () Bool)

(assert (=> b!617047 (= c!70089 (bvslt j!136 index!984))))

(declare-fun lt!284124 () Unit!20180)

(assert (=> b!617047 (= lt!284124 e!353829)))

(declare-fun c!70090 () Bool)

(assert (=> b!617047 (= c!70090 (bvslt index!984 j!136))))

(declare-fun lt!284133 () Unit!20180)

(assert (=> b!617047 (= lt!284133 e!353824)))

(assert (=> b!617047 false))

(declare-fun b!617060 () Bool)

(declare-fun res!397601 () Bool)

(assert (=> b!617060 (= res!397601 (arrayContainsKey!0 lt!284129 (select (arr!17989 a!2986) j!136) j!136))))

(assert (=> b!617060 (=> (not res!397601) (not e!353822))))

(assert (=> b!617060 (= e!353836 e!353822)))

(declare-fun b!617061 () Bool)

(declare-fun res!397610 () Bool)

(assert (=> b!617061 (=> (not res!397610) (not e!353835))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37493 (_ BitVec 32)) Bool)

(assert (=> b!617061 (= res!397610 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617062 () Bool)

(assert (=> b!617062 (= e!353833 (= lt!284135 lt!284119))))

(declare-fun b!617063 () Bool)

(declare-fun Unit!20189 () Unit!20180)

(assert (=> b!617063 (= e!353829 Unit!20189)))

(assert (= (and start!56060 res!397609) b!617050))

(assert (= (and b!617050 res!397603) b!617052))

(assert (= (and b!617052 res!397613) b!617045))

(assert (= (and b!617045 res!397598) b!617053))

(assert (= (and b!617053 res!397605) b!617040))

(assert (= (and b!617040 res!397611) b!617061))

(assert (= (and b!617061 res!397610) b!617054))

(assert (= (and b!617054 res!397600) b!617049))

(assert (= (and b!617049 res!397597) b!617041))

(assert (= (and b!617041 res!397608) b!617059))

(assert (= (and b!617059 res!397607) b!617058))

(assert (= (and b!617058 res!397599) b!617062))

(assert (= (and b!617058 c!70091) b!617056))

(assert (= (and b!617058 (not c!70091)) b!617051))

(assert (= (and b!617058 c!70088) b!617047))

(assert (= (and b!617058 (not c!70088)) b!617044))

(assert (= (and b!617047 res!397612) b!617039))

(assert (= (and b!617039 (not res!397602)) b!617060))

(assert (= (and b!617060 res!397601) b!617043))

(assert (= (and b!617047 c!70089) b!617057))

(assert (= (and b!617047 (not c!70089)) b!617063))

(assert (= (and b!617047 c!70090) b!617046))

(assert (= (and b!617047 (not c!70090)) b!617055))

(assert (= (and b!617046 res!397604) b!617048))

(assert (= (and b!617058 (not res!397606)) b!617042))

(declare-fun m!593209 () Bool)

(assert (=> b!617043 m!593209))

(assert (=> b!617043 m!593209))

(declare-fun m!593211 () Bool)

(assert (=> b!617043 m!593211))

(assert (=> b!617052 m!593209))

(assert (=> b!617052 m!593209))

(declare-fun m!593213 () Bool)

(assert (=> b!617052 m!593213))

(declare-fun m!593215 () Bool)

(assert (=> b!617059 m!593215))

(assert (=> b!617059 m!593209))

(assert (=> b!617059 m!593209))

(declare-fun m!593217 () Bool)

(assert (=> b!617059 m!593217))

(declare-fun m!593219 () Bool)

(assert (=> b!617042 m!593219))

(declare-fun m!593221 () Bool)

(assert (=> b!617042 m!593221))

(declare-fun m!593223 () Bool)

(assert (=> b!617049 m!593223))

(assert (=> b!617048 m!593209))

(assert (=> b!617048 m!593209))

(assert (=> b!617048 m!593211))

(declare-fun m!593225 () Bool)

(assert (=> b!617046 m!593225))

(assert (=> b!617046 m!593209))

(declare-fun m!593227 () Bool)

(assert (=> b!617046 m!593227))

(assert (=> b!617046 m!593209))

(declare-fun m!593229 () Bool)

(assert (=> b!617046 m!593229))

(assert (=> b!617046 m!593209))

(declare-fun m!593231 () Bool)

(assert (=> b!617046 m!593231))

(declare-fun m!593233 () Bool)

(assert (=> b!617046 m!593233))

(assert (=> b!617046 m!593209))

(declare-fun m!593235 () Bool)

(assert (=> b!617046 m!593235))

(assert (=> b!617046 m!593209))

(declare-fun m!593237 () Bool)

(assert (=> b!617046 m!593237))

(declare-fun m!593239 () Bool)

(assert (=> b!617046 m!593239))

(declare-fun m!593241 () Bool)

(assert (=> b!617057 m!593241))

(assert (=> b!617057 m!593209))

(declare-fun m!593243 () Bool)

(assert (=> b!617057 m!593243))

(assert (=> b!617057 m!593209))

(assert (=> b!617057 m!593227))

(assert (=> b!617057 m!593209))

(declare-fun m!593245 () Bool)

(assert (=> b!617057 m!593245))

(declare-fun m!593247 () Bool)

(assert (=> b!617057 m!593247))

(assert (=> b!617057 m!593209))

(declare-fun m!593249 () Bool)

(assert (=> b!617057 m!593249))

(assert (=> b!617057 m!593239))

(declare-fun m!593251 () Bool)

(assert (=> b!617045 m!593251))

(declare-fun m!593253 () Bool)

(assert (=> start!56060 m!593253))

(declare-fun m!593255 () Bool)

(assert (=> start!56060 m!593255))

(declare-fun m!593257 () Bool)

(assert (=> b!617061 m!593257))

(assert (=> b!617060 m!593209))

(assert (=> b!617060 m!593209))

(assert (=> b!617060 m!593237))

(declare-fun m!593259 () Bool)

(assert (=> b!617054 m!593259))

(assert (=> b!617041 m!593219))

(declare-fun m!593261 () Bool)

(assert (=> b!617041 m!593261))

(assert (=> b!617058 m!593209))

(declare-fun m!593263 () Bool)

(assert (=> b!617058 m!593263))

(declare-fun m!593265 () Bool)

(assert (=> b!617058 m!593265))

(declare-fun m!593267 () Bool)

(assert (=> b!617058 m!593267))

(assert (=> b!617058 m!593209))

(assert (=> b!617058 m!593219))

(declare-fun m!593269 () Bool)

(assert (=> b!617058 m!593269))

(declare-fun m!593271 () Bool)

(assert (=> b!617058 m!593271))

(declare-fun m!593273 () Bool)

(assert (=> b!617058 m!593273))

(assert (=> b!617047 m!593219))

(assert (=> b!617047 m!593221))

(assert (=> b!617047 m!593209))

(declare-fun m!593275 () Bool)

(assert (=> b!617040 m!593275))

(declare-fun m!593277 () Bool)

(assert (=> b!617053 m!593277))

(check-sat (not b!617040) (not b!617048) (not b!617043) (not b!617058) (not b!617059) (not b!617046) (not b!617060) (not b!617052) (not b!617054) (not start!56060) (not b!617045) (not b!617057) (not b!617053) (not b!617061))
(check-sat)
