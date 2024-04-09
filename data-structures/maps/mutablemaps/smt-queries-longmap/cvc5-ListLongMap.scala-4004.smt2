; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54504 () Bool)

(assert start!54504)

(declare-fun b!594247 () Bool)

(declare-fun res!380385 () Bool)

(declare-fun e!339532 () Bool)

(assert (=> b!594247 (=> res!380385 e!339532)))

(declare-datatypes ((List!11818 0))(
  ( (Nil!11815) (Cons!11814 (h!12859 (_ BitVec 64)) (t!18054 List!11818)) )
))
(declare-fun contains!2922 (List!11818 (_ BitVec 64)) Bool)

(assert (=> b!594247 (= res!380385 (contains!2922 Nil!11815 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594248 () Bool)

(declare-datatypes ((Unit!18628 0))(
  ( (Unit!18629) )
))
(declare-fun e!339535 () Unit!18628)

(declare-fun Unit!18630 () Unit!18628)

(assert (=> b!594248 (= e!339535 Unit!18630)))

(declare-fun b!594249 () Bool)

(declare-fun res!380396 () Bool)

(assert (=> b!594249 (=> res!380396 e!339532)))

(assert (=> b!594249 (= res!380396 (contains!2922 Nil!11815 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594250 () Bool)

(declare-fun res!380405 () Bool)

(declare-fun e!339531 () Bool)

(assert (=> b!594250 (=> (not res!380405) (not e!339531))))

(declare-datatypes ((array!36927 0))(
  ( (array!36928 (arr!17724 (Array (_ BitVec 32) (_ BitVec 64))) (size!18088 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36927)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594250 (= res!380405 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!594251 () Bool)

(declare-fun res!380393 () Bool)

(assert (=> b!594251 (=> (not res!380393) (not e!339531))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594251 (= res!380393 (validKeyInArray!0 (select (arr!17724 a!2986) j!136)))))

(declare-fun b!594252 () Bool)

(declare-fun res!380389 () Bool)

(declare-fun e!339534 () Bool)

(assert (=> b!594252 (=> (not res!380389) (not e!339534))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!594252 (= res!380389 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17724 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594253 () Bool)

(declare-fun Unit!18631 () Unit!18628)

(assert (=> b!594253 (= e!339535 Unit!18631)))

(assert (=> b!594253 false))

(declare-fun b!594254 () Bool)

(declare-fun e!339536 () Bool)

(declare-fun lt!269812 () array!36927)

(assert (=> b!594254 (= e!339536 (arrayContainsKey!0 lt!269812 (select (arr!17724 a!2986) j!136) index!984))))

(declare-fun b!594255 () Bool)

(declare-fun e!339539 () Bool)

(declare-fun e!339540 () Bool)

(assert (=> b!594255 (= e!339539 e!339540)))

(declare-fun res!380403 () Bool)

(assert (=> b!594255 (=> res!380403 e!339540)))

(declare-fun lt!269809 () (_ BitVec 64))

(declare-fun lt!269810 () (_ BitVec 64))

(assert (=> b!594255 (= res!380403 (or (not (= (select (arr!17724 a!2986) j!136) lt!269810)) (not (= (select (arr!17724 a!2986) j!136) lt!269809)) (bvsge j!136 index!984)))))

(declare-fun b!594257 () Bool)

(declare-fun res!380401 () Bool)

(assert (=> b!594257 (=> (not res!380401) (not e!339534))))

(declare-fun arrayNoDuplicates!0 (array!36927 (_ BitVec 32) List!11818) Bool)

(assert (=> b!594257 (= res!380401 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11815))))

(declare-fun b!594258 () Bool)

(declare-fun res!380395 () Bool)

(assert (=> b!594258 (=> (not res!380395) (not e!339534))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36927 (_ BitVec 32)) Bool)

(assert (=> b!594258 (= res!380395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594259 () Bool)

(declare-fun res!380391 () Bool)

(assert (=> b!594259 (=> res!380391 e!339532)))

(declare-fun noDuplicate!238 (List!11818) Bool)

(assert (=> b!594259 (= res!380391 (not (noDuplicate!238 Nil!11815)))))

(declare-fun b!594260 () Bool)

(declare-fun e!339541 () Bool)

(declare-fun e!339533 () Bool)

(assert (=> b!594260 (= e!339541 e!339533)))

(declare-fun res!380398 () Bool)

(assert (=> b!594260 (=> (not res!380398) (not e!339533))))

(declare-datatypes ((SeekEntryResult!6171 0))(
  ( (MissingZero!6171 (index!26931 (_ BitVec 32))) (Found!6171 (index!26932 (_ BitVec 32))) (Intermediate!6171 (undefined!6983 Bool) (index!26933 (_ BitVec 32)) (x!55768 (_ BitVec 32))) (Undefined!6171) (MissingVacant!6171 (index!26934 (_ BitVec 32))) )
))
(declare-fun lt!269814 () SeekEntryResult!6171)

(assert (=> b!594260 (= res!380398 (and (= lt!269814 (Found!6171 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17724 a!2986) index!984) (select (arr!17724 a!2986) j!136))) (not (= (select (arr!17724 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36927 (_ BitVec 32)) SeekEntryResult!6171)

(assert (=> b!594260 (= lt!269814 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17724 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594261 () Bool)

(declare-fun e!339537 () Bool)

(assert (=> b!594261 (= e!339533 (not e!339537))))

(declare-fun res!380388 () Bool)

(assert (=> b!594261 (=> res!380388 e!339537)))

(declare-fun lt!269820 () SeekEntryResult!6171)

(assert (=> b!594261 (= res!380388 (not (= lt!269820 (Found!6171 index!984))))))

(declare-fun lt!269816 () Unit!18628)

(assert (=> b!594261 (= lt!269816 e!339535)))

(declare-fun c!67298 () Bool)

(assert (=> b!594261 (= c!67298 (= lt!269820 Undefined!6171))))

(assert (=> b!594261 (= lt!269820 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269810 lt!269812 mask!3053))))

(declare-fun e!339530 () Bool)

(assert (=> b!594261 e!339530))

(declare-fun res!380390 () Bool)

(assert (=> b!594261 (=> (not res!380390) (not e!339530))))

(declare-fun lt!269813 () SeekEntryResult!6171)

(declare-fun lt!269815 () (_ BitVec 32))

(assert (=> b!594261 (= res!380390 (= lt!269813 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269815 vacantSpotIndex!68 lt!269810 lt!269812 mask!3053)))))

(assert (=> b!594261 (= lt!269813 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269815 vacantSpotIndex!68 (select (arr!17724 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!594261 (= lt!269810 (select (store (arr!17724 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269819 () Unit!18628)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36927 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18628)

(assert (=> b!594261 (= lt!269819 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269815 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594261 (= lt!269815 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594262 () Bool)

(declare-fun res!380399 () Bool)

(assert (=> b!594262 (=> (not res!380399) (not e!339531))))

(assert (=> b!594262 (= res!380399 (validKeyInArray!0 k!1786))))

(declare-fun b!594263 () Bool)

(assert (=> b!594263 (= e!339534 e!339541)))

(declare-fun res!380387 () Bool)

(assert (=> b!594263 (=> (not res!380387) (not e!339541))))

(assert (=> b!594263 (= res!380387 (= (select (store (arr!17724 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594263 (= lt!269812 (array!36928 (store (arr!17724 a!2986) i!1108 k!1786) (size!18088 a!2986)))))

(declare-fun b!594264 () Bool)

(assert (=> b!594264 (= e!339530 (= lt!269814 lt!269813))))

(declare-fun b!594265 () Bool)

(assert (=> b!594265 (= e!339540 e!339536)))

(declare-fun res!380386 () Bool)

(assert (=> b!594265 (=> (not res!380386) (not e!339536))))

(assert (=> b!594265 (= res!380386 (arrayContainsKey!0 lt!269812 (select (arr!17724 a!2986) j!136) j!136))))

(declare-fun b!594266 () Bool)

(declare-fun e!339529 () Bool)

(assert (=> b!594266 (= e!339537 e!339529)))

(declare-fun res!380397 () Bool)

(assert (=> b!594266 (=> res!380397 e!339529)))

(assert (=> b!594266 (= res!380397 (or (not (= (select (arr!17724 a!2986) j!136) lt!269810)) (not (= (select (arr!17724 a!2986) j!136) lt!269809)) (bvsge j!136 index!984)))))

(assert (=> b!594266 e!339539))

(declare-fun res!380394 () Bool)

(assert (=> b!594266 (=> (not res!380394) (not e!339539))))

(assert (=> b!594266 (= res!380394 (= lt!269809 (select (arr!17724 a!2986) j!136)))))

(assert (=> b!594266 (= lt!269809 (select (store (arr!17724 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!594267 () Bool)

(assert (=> b!594267 (= e!339529 e!339532)))

(declare-fun res!380392 () Bool)

(assert (=> b!594267 (=> res!380392 e!339532)))

(assert (=> b!594267 (= res!380392 (or (bvsge (size!18088 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18088 a!2986))))))

(assert (=> b!594267 (arrayContainsKey!0 lt!269812 (select (arr!17724 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269811 () Unit!18628)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36927 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18628)

(assert (=> b!594267 (= lt!269811 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269812 (select (arr!17724 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594268 () Bool)

(declare-fun res!380404 () Bool)

(assert (=> b!594268 (=> (not res!380404) (not e!339531))))

(assert (=> b!594268 (= res!380404 (and (= (size!18088 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18088 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18088 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594269 () Bool)

(assert (=> b!594269 (= e!339532 true)))

(declare-fun lt!269818 () Bool)

(assert (=> b!594269 (= lt!269818 (contains!2922 Nil!11815 k!1786))))

(declare-fun res!380400 () Bool)

(assert (=> start!54504 (=> (not res!380400) (not e!339531))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54504 (= res!380400 (validMask!0 mask!3053))))

(assert (=> start!54504 e!339531))

(assert (=> start!54504 true))

(declare-fun array_inv!13498 (array!36927) Bool)

(assert (=> start!54504 (array_inv!13498 a!2986)))

(declare-fun b!594256 () Bool)

(assert (=> b!594256 (= e!339531 e!339534)))

(declare-fun res!380402 () Bool)

(assert (=> b!594256 (=> (not res!380402) (not e!339534))))

(declare-fun lt!269817 () SeekEntryResult!6171)

(assert (=> b!594256 (= res!380402 (or (= lt!269817 (MissingZero!6171 i!1108)) (= lt!269817 (MissingVacant!6171 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36927 (_ BitVec 32)) SeekEntryResult!6171)

(assert (=> b!594256 (= lt!269817 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!54504 res!380400) b!594268))

(assert (= (and b!594268 res!380404) b!594251))

(assert (= (and b!594251 res!380393) b!594262))

(assert (= (and b!594262 res!380399) b!594250))

(assert (= (and b!594250 res!380405) b!594256))

(assert (= (and b!594256 res!380402) b!594258))

(assert (= (and b!594258 res!380395) b!594257))

(assert (= (and b!594257 res!380401) b!594252))

(assert (= (and b!594252 res!380389) b!594263))

(assert (= (and b!594263 res!380387) b!594260))

(assert (= (and b!594260 res!380398) b!594261))

(assert (= (and b!594261 res!380390) b!594264))

(assert (= (and b!594261 c!67298) b!594253))

(assert (= (and b!594261 (not c!67298)) b!594248))

(assert (= (and b!594261 (not res!380388)) b!594266))

(assert (= (and b!594266 res!380394) b!594255))

(assert (= (and b!594255 (not res!380403)) b!594265))

(assert (= (and b!594265 res!380386) b!594254))

(assert (= (and b!594266 (not res!380397)) b!594267))

(assert (= (and b!594267 (not res!380392)) b!594259))

(assert (= (and b!594259 (not res!380391)) b!594247))

(assert (= (and b!594247 (not res!380385)) b!594249))

(assert (= (and b!594249 (not res!380396)) b!594269))

(declare-fun m!572103 () Bool)

(assert (=> b!594265 m!572103))

(assert (=> b!594265 m!572103))

(declare-fun m!572105 () Bool)

(assert (=> b!594265 m!572105))

(declare-fun m!572107 () Bool)

(assert (=> b!594269 m!572107))

(declare-fun m!572109 () Bool)

(assert (=> b!594247 m!572109))

(declare-fun m!572111 () Bool)

(assert (=> b!594257 m!572111))

(declare-fun m!572113 () Bool)

(assert (=> b!594259 m!572113))

(declare-fun m!572115 () Bool)

(assert (=> b!594260 m!572115))

(assert (=> b!594260 m!572103))

(assert (=> b!594260 m!572103))

(declare-fun m!572117 () Bool)

(assert (=> b!594260 m!572117))

(assert (=> b!594254 m!572103))

(assert (=> b!594254 m!572103))

(declare-fun m!572119 () Bool)

(assert (=> b!594254 m!572119))

(declare-fun m!572121 () Bool)

(assert (=> b!594256 m!572121))

(declare-fun m!572123 () Bool)

(assert (=> b!594250 m!572123))

(declare-fun m!572125 () Bool)

(assert (=> b!594258 m!572125))

(assert (=> b!594266 m!572103))

(declare-fun m!572127 () Bool)

(assert (=> b!594266 m!572127))

(declare-fun m!572129 () Bool)

(assert (=> b!594266 m!572129))

(assert (=> b!594255 m!572103))

(assert (=> b!594267 m!572103))

(assert (=> b!594267 m!572103))

(declare-fun m!572131 () Bool)

(assert (=> b!594267 m!572131))

(assert (=> b!594267 m!572103))

(declare-fun m!572133 () Bool)

(assert (=> b!594267 m!572133))

(declare-fun m!572135 () Bool)

(assert (=> b!594262 m!572135))

(assert (=> b!594263 m!572127))

(declare-fun m!572137 () Bool)

(assert (=> b!594263 m!572137))

(declare-fun m!572139 () Bool)

(assert (=> b!594261 m!572139))

(declare-fun m!572141 () Bool)

(assert (=> b!594261 m!572141))

(declare-fun m!572143 () Bool)

(assert (=> b!594261 m!572143))

(assert (=> b!594261 m!572103))

(declare-fun m!572145 () Bool)

(assert (=> b!594261 m!572145))

(declare-fun m!572147 () Bool)

(assert (=> b!594261 m!572147))

(assert (=> b!594261 m!572127))

(assert (=> b!594261 m!572103))

(declare-fun m!572149 () Bool)

(assert (=> b!594261 m!572149))

(declare-fun m!572151 () Bool)

(assert (=> b!594249 m!572151))

(declare-fun m!572153 () Bool)

(assert (=> b!594252 m!572153))

(assert (=> b!594251 m!572103))

(assert (=> b!594251 m!572103))

(declare-fun m!572155 () Bool)

(assert (=> b!594251 m!572155))

(declare-fun m!572157 () Bool)

(assert (=> start!54504 m!572157))

(declare-fun m!572159 () Bool)

(assert (=> start!54504 m!572159))

(push 1)

