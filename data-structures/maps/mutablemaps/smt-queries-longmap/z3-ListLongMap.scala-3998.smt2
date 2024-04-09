; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54188 () Bool)

(assert start!54188)

(declare-fun b!592022 () Bool)

(declare-fun res!379057 () Bool)

(declare-fun e!338081 () Bool)

(assert (=> b!592022 (=> (not res!379057) (not e!338081))))

(declare-datatypes ((array!36881 0))(
  ( (array!36882 (arr!17707 (Array (_ BitVec 32) (_ BitVec 64))) (size!18071 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36881)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36881 (_ BitVec 32)) Bool)

(assert (=> b!592022 (= res!379057 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!592023 () Bool)

(declare-fun e!338076 () Bool)

(assert (=> b!592023 (= e!338081 e!338076)))

(declare-fun res!379058 () Bool)

(assert (=> b!592023 (=> (not res!379058) (not e!338076))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!592023 (= res!379058 (= (select (store (arr!17707 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!268774 () array!36881)

(assert (=> b!592023 (= lt!268774 (array!36882 (store (arr!17707 a!2986) i!1108 k0!1786) (size!18071 a!2986)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!338077 () Bool)

(declare-fun b!592024 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!36881 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!592024 (= e!338077 (arrayContainsKey!0 lt!268774 (select (arr!17707 a!2986) j!136) index!984))))

(declare-fun b!592025 () Bool)

(declare-fun e!338073 () Bool)

(declare-fun e!338074 () Bool)

(assert (=> b!592025 (= e!338073 (not e!338074))))

(declare-fun res!379056 () Bool)

(assert (=> b!592025 (=> res!379056 e!338074)))

(declare-datatypes ((SeekEntryResult!6154 0))(
  ( (MissingZero!6154 (index!26851 (_ BitVec 32))) (Found!6154 (index!26852 (_ BitVec 32))) (Intermediate!6154 (undefined!6966 Bool) (index!26853 (_ BitVec 32)) (x!55667 (_ BitVec 32))) (Undefined!6154) (MissingVacant!6154 (index!26854 (_ BitVec 32))) )
))
(declare-fun lt!268770 () SeekEntryResult!6154)

(assert (=> b!592025 (= res!379056 (not (= lt!268770 (Found!6154 index!984))))))

(declare-datatypes ((Unit!18560 0))(
  ( (Unit!18561) )
))
(declare-fun lt!268773 () Unit!18560)

(declare-fun e!338079 () Unit!18560)

(assert (=> b!592025 (= lt!268773 e!338079)))

(declare-fun c!66851 () Bool)

(assert (=> b!592025 (= c!66851 (= lt!268770 Undefined!6154))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!268771 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36881 (_ BitVec 32)) SeekEntryResult!6154)

(assert (=> b!592025 (= lt!268770 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268771 lt!268774 mask!3053))))

(declare-fun e!338080 () Bool)

(assert (=> b!592025 e!338080))

(declare-fun res!379063 () Bool)

(assert (=> b!592025 (=> (not res!379063) (not e!338080))))

(declare-fun lt!268769 () (_ BitVec 32))

(declare-fun lt!268768 () SeekEntryResult!6154)

(assert (=> b!592025 (= res!379063 (= lt!268768 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268769 vacantSpotIndex!68 lt!268771 lt!268774 mask!3053)))))

(assert (=> b!592025 (= lt!268768 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268769 vacantSpotIndex!68 (select (arr!17707 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!592025 (= lt!268771 (select (store (arr!17707 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!268772 () Unit!18560)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36881 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18560)

(assert (=> b!592025 (= lt!268772 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268769 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!592025 (= lt!268769 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!592026 () Bool)

(declare-fun res!379066 () Bool)

(assert (=> b!592026 (=> (not res!379066) (not e!338081))))

(declare-datatypes ((List!11801 0))(
  ( (Nil!11798) (Cons!11797 (h!12842 (_ BitVec 64)) (t!18037 List!11801)) )
))
(declare-fun arrayNoDuplicates!0 (array!36881 (_ BitVec 32) List!11801) Bool)

(assert (=> b!592026 (= res!379066 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11798))))

(declare-fun b!592027 () Bool)

(declare-fun res!379065 () Bool)

(declare-fun e!338078 () Bool)

(assert (=> b!592027 (=> (not res!379065) (not e!338078))))

(assert (=> b!592027 (= res!379065 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!592028 () Bool)

(declare-fun Unit!18562 () Unit!18560)

(assert (=> b!592028 (= e!338079 Unit!18562)))

(assert (=> b!592028 false))

(declare-fun b!592029 () Bool)

(declare-fun res!379069 () Bool)

(assert (=> b!592029 (=> (not res!379069) (not e!338078))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!592029 (= res!379069 (validKeyInArray!0 k0!1786))))

(declare-fun b!592030 () Bool)

(declare-fun res!379064 () Bool)

(assert (=> b!592030 (=> (not res!379064) (not e!338081))))

(assert (=> b!592030 (= res!379064 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17707 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!592031 () Bool)

(declare-fun lt!268776 () SeekEntryResult!6154)

(assert (=> b!592031 (= e!338080 (= lt!268776 lt!268768))))

(declare-fun b!592032 () Bool)

(declare-fun e!338082 () Bool)

(assert (=> b!592032 (= e!338082 (or (bvslt (bvadd #b00000000000000000000000000000001 j!136) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 j!136) (size!18071 a!2986))))))

(assert (=> b!592032 (arrayContainsKey!0 lt!268774 (select (arr!17707 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!268775 () Unit!18560)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36881 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18560)

(assert (=> b!592032 (= lt!268775 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!268774 (select (arr!17707 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!592033 () Bool)

(declare-fun e!338072 () Bool)

(declare-fun e!338075 () Bool)

(assert (=> b!592033 (= e!338072 e!338075)))

(declare-fun res!379060 () Bool)

(assert (=> b!592033 (=> res!379060 e!338075)))

(declare-fun lt!268766 () (_ BitVec 64))

(assert (=> b!592033 (= res!379060 (or (not (= (select (arr!17707 a!2986) j!136) lt!268771)) (not (= (select (arr!17707 a!2986) j!136) lt!268766)) (bvsge j!136 index!984)))))

(declare-fun b!592034 () Bool)

(assert (=> b!592034 (= e!338076 e!338073)))

(declare-fun res!379070 () Bool)

(assert (=> b!592034 (=> (not res!379070) (not e!338073))))

(assert (=> b!592034 (= res!379070 (and (= lt!268776 (Found!6154 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17707 a!2986) index!984) (select (arr!17707 a!2986) j!136))) (not (= (select (arr!17707 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!592034 (= lt!268776 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17707 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!592035 () Bool)

(assert (=> b!592035 (= e!338075 e!338077)))

(declare-fun res!379061 () Bool)

(assert (=> b!592035 (=> (not res!379061) (not e!338077))))

(assert (=> b!592035 (= res!379061 (arrayContainsKey!0 lt!268774 (select (arr!17707 a!2986) j!136) j!136))))

(declare-fun res!379055 () Bool)

(assert (=> start!54188 (=> (not res!379055) (not e!338078))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54188 (= res!379055 (validMask!0 mask!3053))))

(assert (=> start!54188 e!338078))

(assert (=> start!54188 true))

(declare-fun array_inv!13481 (array!36881) Bool)

(assert (=> start!54188 (array_inv!13481 a!2986)))

(declare-fun b!592036 () Bool)

(declare-fun Unit!18563 () Unit!18560)

(assert (=> b!592036 (= e!338079 Unit!18563)))

(declare-fun b!592037 () Bool)

(declare-fun res!379059 () Bool)

(assert (=> b!592037 (=> (not res!379059) (not e!338078))))

(assert (=> b!592037 (= res!379059 (and (= (size!18071 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18071 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18071 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!592038 () Bool)

(declare-fun res!379054 () Bool)

(assert (=> b!592038 (=> (not res!379054) (not e!338078))))

(assert (=> b!592038 (= res!379054 (validKeyInArray!0 (select (arr!17707 a!2986) j!136)))))

(declare-fun b!592039 () Bool)

(assert (=> b!592039 (= e!338078 e!338081)))

(declare-fun res!379062 () Bool)

(assert (=> b!592039 (=> (not res!379062) (not e!338081))))

(declare-fun lt!268767 () SeekEntryResult!6154)

(assert (=> b!592039 (= res!379062 (or (= lt!268767 (MissingZero!6154 i!1108)) (= lt!268767 (MissingVacant!6154 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36881 (_ BitVec 32)) SeekEntryResult!6154)

(assert (=> b!592039 (= lt!268767 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!592040 () Bool)

(assert (=> b!592040 (= e!338074 e!338082)))

(declare-fun res!379067 () Bool)

(assert (=> b!592040 (=> res!379067 e!338082)))

(assert (=> b!592040 (= res!379067 (or (not (= (select (arr!17707 a!2986) j!136) lt!268771)) (not (= (select (arr!17707 a!2986) j!136) lt!268766)) (bvsge j!136 index!984)))))

(assert (=> b!592040 e!338072))

(declare-fun res!379068 () Bool)

(assert (=> b!592040 (=> (not res!379068) (not e!338072))))

(assert (=> b!592040 (= res!379068 (= lt!268766 (select (arr!17707 a!2986) j!136)))))

(assert (=> b!592040 (= lt!268766 (select (store (arr!17707 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!54188 res!379055) b!592037))

(assert (= (and b!592037 res!379059) b!592038))

(assert (= (and b!592038 res!379054) b!592029))

(assert (= (and b!592029 res!379069) b!592027))

(assert (= (and b!592027 res!379065) b!592039))

(assert (= (and b!592039 res!379062) b!592022))

(assert (= (and b!592022 res!379057) b!592026))

(assert (= (and b!592026 res!379066) b!592030))

(assert (= (and b!592030 res!379064) b!592023))

(assert (= (and b!592023 res!379058) b!592034))

(assert (= (and b!592034 res!379070) b!592025))

(assert (= (and b!592025 res!379063) b!592031))

(assert (= (and b!592025 c!66851) b!592028))

(assert (= (and b!592025 (not c!66851)) b!592036))

(assert (= (and b!592025 (not res!379056)) b!592040))

(assert (= (and b!592040 res!379068) b!592033))

(assert (= (and b!592033 (not res!379060)) b!592035))

(assert (= (and b!592035 res!379061) b!592024))

(assert (= (and b!592040 (not res!379067)) b!592032))

(declare-fun m!570191 () Bool)

(assert (=> b!592025 m!570191))

(declare-fun m!570193 () Bool)

(assert (=> b!592025 m!570193))

(declare-fun m!570195 () Bool)

(assert (=> b!592025 m!570195))

(declare-fun m!570197 () Bool)

(assert (=> b!592025 m!570197))

(declare-fun m!570199 () Bool)

(assert (=> b!592025 m!570199))

(declare-fun m!570201 () Bool)

(assert (=> b!592025 m!570201))

(assert (=> b!592025 m!570197))

(declare-fun m!570203 () Bool)

(assert (=> b!592025 m!570203))

(declare-fun m!570205 () Bool)

(assert (=> b!592025 m!570205))

(assert (=> b!592040 m!570197))

(assert (=> b!592040 m!570199))

(declare-fun m!570207 () Bool)

(assert (=> b!592040 m!570207))

(declare-fun m!570209 () Bool)

(assert (=> b!592030 m!570209))

(declare-fun m!570211 () Bool)

(assert (=> b!592026 m!570211))

(declare-fun m!570213 () Bool)

(assert (=> b!592034 m!570213))

(assert (=> b!592034 m!570197))

(assert (=> b!592034 m!570197))

(declare-fun m!570215 () Bool)

(assert (=> b!592034 m!570215))

(assert (=> b!592024 m!570197))

(assert (=> b!592024 m!570197))

(declare-fun m!570217 () Bool)

(assert (=> b!592024 m!570217))

(assert (=> b!592023 m!570199))

(declare-fun m!570219 () Bool)

(assert (=> b!592023 m!570219))

(declare-fun m!570221 () Bool)

(assert (=> b!592022 m!570221))

(assert (=> b!592033 m!570197))

(declare-fun m!570223 () Bool)

(assert (=> b!592029 m!570223))

(assert (=> b!592035 m!570197))

(assert (=> b!592035 m!570197))

(declare-fun m!570225 () Bool)

(assert (=> b!592035 m!570225))

(declare-fun m!570227 () Bool)

(assert (=> b!592039 m!570227))

(declare-fun m!570229 () Bool)

(assert (=> b!592027 m!570229))

(declare-fun m!570231 () Bool)

(assert (=> start!54188 m!570231))

(declare-fun m!570233 () Bool)

(assert (=> start!54188 m!570233))

(assert (=> b!592032 m!570197))

(assert (=> b!592032 m!570197))

(declare-fun m!570235 () Bool)

(assert (=> b!592032 m!570235))

(assert (=> b!592032 m!570197))

(declare-fun m!570237 () Bool)

(assert (=> b!592032 m!570237))

(assert (=> b!592038 m!570197))

(assert (=> b!592038 m!570197))

(declare-fun m!570239 () Bool)

(assert (=> b!592038 m!570239))

(check-sat (not b!592038) (not b!592027) (not b!592032) (not b!592026) (not b!592024) (not b!592022) (not b!592034) (not b!592039) (not b!592025) (not b!592029) (not start!54188) (not b!592035))
(check-sat)
