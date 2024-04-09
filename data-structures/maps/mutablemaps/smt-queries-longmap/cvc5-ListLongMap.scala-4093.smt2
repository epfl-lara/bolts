; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56064 () Bool)

(assert start!56064)

(declare-fun b!617189 () Bool)

(declare-fun res!397713 () Bool)

(declare-fun e!353913 () Bool)

(assert (=> b!617189 (=> (not res!397713) (not e!353913))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37497 0))(
  ( (array!37498 (arr!17991 (Array (_ BitVec 32) (_ BitVec 64))) (size!18355 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37497)

(assert (=> b!617189 (= res!397713 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17991 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!617190 () Bool)

(declare-fun res!397710 () Bool)

(declare-fun e!353920 () Bool)

(assert (=> b!617190 (=> (not res!397710) (not e!353920))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!617190 (= res!397710 (and (= (size!18355 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18355 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18355 a!2986)) (not (= i!1108 j!136))))))

(declare-fun lt!284253 () array!37497)

(declare-fun e!353923 () Bool)

(declare-fun b!617191 () Bool)

(declare-fun arrayContainsKey!0 (array!37497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!617191 (= e!353923 (arrayContainsKey!0 lt!284253 (select (arr!17991 a!2986) j!136) index!984))))

(declare-fun e!353918 () Bool)

(declare-fun b!617192 () Bool)

(assert (=> b!617192 (= e!353918 (arrayContainsKey!0 lt!284253 (select (arr!17991 a!2986) j!136) index!984))))

(declare-fun b!617193 () Bool)

(declare-fun e!353922 () Bool)

(declare-fun e!353919 () Bool)

(assert (=> b!617193 (= e!353922 (not e!353919))))

(declare-fun res!397702 () Bool)

(assert (=> b!617193 (=> res!397702 e!353919)))

(declare-datatypes ((SeekEntryResult!6438 0))(
  ( (MissingZero!6438 (index!28035 (_ BitVec 32))) (Found!6438 (index!28036 (_ BitVec 32))) (Intermediate!6438 (undefined!7250 Bool) (index!28037 (_ BitVec 32)) (x!56855 (_ BitVec 32))) (Undefined!6438) (MissingVacant!6438 (index!28038 (_ BitVec 32))) )
))
(declare-fun lt!284255 () SeekEntryResult!6438)

(assert (=> b!617193 (= res!397702 (not (= lt!284255 (MissingVacant!6438 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!20200 0))(
  ( (Unit!20201) )
))
(declare-fun lt!284238 () Unit!20200)

(declare-fun e!353915 () Unit!20200)

(assert (=> b!617193 (= lt!284238 e!353915)))

(declare-fun c!70114 () Bool)

(assert (=> b!617193 (= c!70114 (= lt!284255 (Found!6438 index!984)))))

(declare-fun lt!284245 () Unit!20200)

(declare-fun e!353914 () Unit!20200)

(assert (=> b!617193 (= lt!284245 e!353914)))

(declare-fun c!70112 () Bool)

(assert (=> b!617193 (= c!70112 (= lt!284255 Undefined!6438))))

(declare-fun lt!284256 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37497 (_ BitVec 32)) SeekEntryResult!6438)

(assert (=> b!617193 (= lt!284255 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!284256 lt!284253 mask!3053))))

(declare-fun e!353917 () Bool)

(assert (=> b!617193 e!353917))

(declare-fun res!397704 () Bool)

(assert (=> b!617193 (=> (not res!397704) (not e!353917))))

(declare-fun lt!284250 () SeekEntryResult!6438)

(declare-fun lt!284254 () (_ BitVec 32))

(assert (=> b!617193 (= res!397704 (= lt!284250 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284254 vacantSpotIndex!68 lt!284256 lt!284253 mask!3053)))))

(assert (=> b!617193 (= lt!284250 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!284254 vacantSpotIndex!68 (select (arr!17991 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!617193 (= lt!284256 (select (store (arr!17991 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!284251 () Unit!20200)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37497 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20200)

(assert (=> b!617193 (= lt!284251 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!284254 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!617193 (= lt!284254 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!617194 () Bool)

(assert (=> b!617194 false))

(declare-fun lt!284252 () Unit!20200)

(declare-datatypes ((List!12085 0))(
  ( (Nil!12082) (Cons!12081 (h!13126 (_ BitVec 64)) (t!18321 List!12085)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37497 (_ BitVec 64) (_ BitVec 32) List!12085) Unit!20200)

(assert (=> b!617194 (= lt!284252 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284253 (select (arr!17991 a!2986) j!136) j!136 Nil!12082))))

(declare-fun arrayNoDuplicates!0 (array!37497 (_ BitVec 32) List!12085) Bool)

(assert (=> b!617194 (arrayNoDuplicates!0 lt!284253 j!136 Nil!12082)))

(declare-fun lt!284241 () Unit!20200)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37497 (_ BitVec 32) (_ BitVec 32)) Unit!20200)

(assert (=> b!617194 (= lt!284241 (lemmaNoDuplicateFromThenFromBigger!0 lt!284253 #b00000000000000000000000000000000 j!136))))

(assert (=> b!617194 (arrayNoDuplicates!0 lt!284253 #b00000000000000000000000000000000 Nil!12082)))

(declare-fun lt!284246 () Unit!20200)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37497 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12085) Unit!20200)

(assert (=> b!617194 (= lt!284246 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12082))))

(assert (=> b!617194 (arrayContainsKey!0 lt!284253 (select (arr!17991 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!284237 () Unit!20200)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37497 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20200)

(assert (=> b!617194 (= lt!284237 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284253 (select (arr!17991 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun e!353912 () Unit!20200)

(declare-fun Unit!20202 () Unit!20200)

(assert (=> b!617194 (= e!353912 Unit!20202)))

(declare-fun b!617195 () Bool)

(declare-fun e!353921 () Bool)

(assert (=> b!617195 (= e!353921 e!353922)))

(declare-fun res!397703 () Bool)

(assert (=> b!617195 (=> (not res!397703) (not e!353922))))

(declare-fun lt!284244 () SeekEntryResult!6438)

(assert (=> b!617195 (= res!397703 (and (= lt!284244 (Found!6438 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17991 a!2986) index!984) (select (arr!17991 a!2986) j!136))) (not (= (select (arr!17991 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!617195 (= lt!284244 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17991 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!617196 () Bool)

(declare-fun e!353916 () Unit!20200)

(declare-fun Unit!20203 () Unit!20200)

(assert (=> b!617196 (= e!353916 Unit!20203)))

(declare-fun res!397712 () Bool)

(assert (=> start!56064 (=> (not res!397712) (not e!353920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56064 (= res!397712 (validMask!0 mask!3053))))

(assert (=> start!56064 e!353920))

(assert (=> start!56064 true))

(declare-fun array_inv!13765 (array!37497) Bool)

(assert (=> start!56064 (array_inv!13765 a!2986)))

(declare-fun b!617197 () Bool)

(declare-fun Unit!20204 () Unit!20200)

(assert (=> b!617197 (= e!353915 Unit!20204)))

(declare-fun res!397701 () Bool)

(assert (=> b!617197 (= res!397701 (= (select (store (arr!17991 a!2986) i!1108 k!1786) index!984) (select (arr!17991 a!2986) j!136)))))

(declare-fun e!353926 () Bool)

(assert (=> b!617197 (=> (not res!397701) (not e!353926))))

(assert (=> b!617197 e!353926))

(declare-fun c!70115 () Bool)

(assert (=> b!617197 (= c!70115 (bvslt j!136 index!984))))

(declare-fun lt!284247 () Unit!20200)

(assert (=> b!617197 (= lt!284247 e!353912)))

(declare-fun c!70113 () Bool)

(assert (=> b!617197 (= c!70113 (bvslt index!984 j!136))))

(declare-fun lt!284248 () Unit!20200)

(assert (=> b!617197 (= lt!284248 e!353916)))

(assert (=> b!617197 false))

(declare-fun b!617198 () Bool)

(declare-fun res!397706 () Bool)

(assert (=> b!617198 (=> (not res!397706) (not e!353920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!617198 (= res!397706 (validKeyInArray!0 k!1786))))

(declare-fun b!617199 () Bool)

(assert (=> b!617199 (= e!353913 e!353921)))

(declare-fun res!397700 () Bool)

(assert (=> b!617199 (=> (not res!397700) (not e!353921))))

(assert (=> b!617199 (= res!397700 (= (select (store (arr!17991 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!617199 (= lt!284253 (array!37498 (store (arr!17991 a!2986) i!1108 k!1786) (size!18355 a!2986)))))

(declare-fun b!617200 () Bool)

(assert (=> b!617200 (= e!353920 e!353913)))

(declare-fun res!397709 () Bool)

(assert (=> b!617200 (=> (not res!397709) (not e!353913))))

(declare-fun lt!284243 () SeekEntryResult!6438)

(assert (=> b!617200 (= res!397709 (or (= lt!284243 (MissingZero!6438 i!1108)) (= lt!284243 (MissingVacant!6438 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37497 (_ BitVec 32)) SeekEntryResult!6438)

(assert (=> b!617200 (= lt!284243 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!617201 () Bool)

(declare-fun Unit!20205 () Unit!20200)

(assert (=> b!617201 (= e!353914 Unit!20205)))

(assert (=> b!617201 false))

(declare-fun b!617202 () Bool)

(declare-fun res!397705 () Bool)

(assert (=> b!617202 (=> (not res!397705) (not e!353913))))

(assert (=> b!617202 (= res!397705 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12082))))

(declare-fun b!617203 () Bool)

(declare-fun res!397708 () Bool)

(assert (=> b!617203 (=> (not res!397708) (not e!353920))))

(assert (=> b!617203 (= res!397708 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!617204 () Bool)

(declare-fun res!397714 () Bool)

(assert (=> b!617204 (= res!397714 (bvsge j!136 index!984))))

(declare-fun e!353925 () Bool)

(assert (=> b!617204 (=> res!397714 e!353925)))

(assert (=> b!617204 (= e!353926 e!353925)))

(declare-fun b!617205 () Bool)

(declare-fun Unit!20206 () Unit!20200)

(assert (=> b!617205 (= e!353915 Unit!20206)))

(declare-fun b!617206 () Bool)

(declare-fun res!397707 () Bool)

(assert (=> b!617206 (=> (not res!397707) (not e!353920))))

(assert (=> b!617206 (= res!397707 (validKeyInArray!0 (select (arr!17991 a!2986) j!136)))))

(declare-fun b!617207 () Bool)

(assert (=> b!617207 (= e!353917 (= lt!284244 lt!284250))))

(declare-fun res!397715 () Bool)

(declare-fun b!617208 () Bool)

(assert (=> b!617208 (= res!397715 (arrayContainsKey!0 lt!284253 (select (arr!17991 a!2986) j!136) j!136))))

(assert (=> b!617208 (=> (not res!397715) (not e!353918))))

(assert (=> b!617208 (= e!353925 e!353918)))

(declare-fun b!617209 () Bool)

(declare-fun Unit!20207 () Unit!20200)

(assert (=> b!617209 (= e!353912 Unit!20207)))

(declare-fun b!617210 () Bool)

(declare-fun res!397711 () Bool)

(assert (=> b!617210 (=> (not res!397711) (not e!353913))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37497 (_ BitVec 32)) Bool)

(assert (=> b!617210 (= res!397711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!617211 () Bool)

(assert (=> b!617211 false))

(declare-fun lt!284242 () Unit!20200)

(assert (=> b!617211 (= lt!284242 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!284253 (select (arr!17991 a!2986) j!136) index!984 Nil!12082))))

(assert (=> b!617211 (arrayNoDuplicates!0 lt!284253 index!984 Nil!12082)))

(declare-fun lt!284239 () Unit!20200)

(assert (=> b!617211 (= lt!284239 (lemmaNoDuplicateFromThenFromBigger!0 lt!284253 #b00000000000000000000000000000000 index!984))))

(assert (=> b!617211 (arrayNoDuplicates!0 lt!284253 #b00000000000000000000000000000000 Nil!12082)))

(declare-fun lt!284240 () Unit!20200)

(assert (=> b!617211 (= lt!284240 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12082))))

(assert (=> b!617211 (arrayContainsKey!0 lt!284253 (select (arr!17991 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!284249 () Unit!20200)

(assert (=> b!617211 (= lt!284249 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!284253 (select (arr!17991 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!617211 e!353923))

(declare-fun res!397699 () Bool)

(assert (=> b!617211 (=> (not res!397699) (not e!353923))))

(assert (=> b!617211 (= res!397699 (arrayContainsKey!0 lt!284253 (select (arr!17991 a!2986) j!136) j!136))))

(declare-fun Unit!20208 () Unit!20200)

(assert (=> b!617211 (= e!353916 Unit!20208)))

(declare-fun b!617212 () Bool)

(declare-fun Unit!20209 () Unit!20200)

(assert (=> b!617212 (= e!353914 Unit!20209)))

(declare-fun b!617213 () Bool)

(assert (=> b!617213 (= e!353919 true)))

(assert (=> b!617213 (= (select (store (arr!17991 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (= (and start!56064 res!397712) b!617190))

(assert (= (and b!617190 res!397710) b!617206))

(assert (= (and b!617206 res!397707) b!617198))

(assert (= (and b!617198 res!397706) b!617203))

(assert (= (and b!617203 res!397708) b!617200))

(assert (= (and b!617200 res!397709) b!617210))

(assert (= (and b!617210 res!397711) b!617202))

(assert (= (and b!617202 res!397705) b!617189))

(assert (= (and b!617189 res!397713) b!617199))

(assert (= (and b!617199 res!397700) b!617195))

(assert (= (and b!617195 res!397703) b!617193))

(assert (= (and b!617193 res!397704) b!617207))

(assert (= (and b!617193 c!70112) b!617201))

(assert (= (and b!617193 (not c!70112)) b!617212))

(assert (= (and b!617193 c!70114) b!617197))

(assert (= (and b!617193 (not c!70114)) b!617205))

(assert (= (and b!617197 res!397701) b!617204))

(assert (= (and b!617204 (not res!397714)) b!617208))

(assert (= (and b!617208 res!397715) b!617192))

(assert (= (and b!617197 c!70115) b!617194))

(assert (= (and b!617197 (not c!70115)) b!617209))

(assert (= (and b!617197 c!70113) b!617211))

(assert (= (and b!617197 (not c!70113)) b!617196))

(assert (= (and b!617211 res!397699) b!617191))

(assert (= (and b!617193 (not res!397702)) b!617213))

(declare-fun m!593349 () Bool)

(assert (=> b!617197 m!593349))

(declare-fun m!593351 () Bool)

(assert (=> b!617197 m!593351))

(declare-fun m!593353 () Bool)

(assert (=> b!617197 m!593353))

(assert (=> b!617208 m!593353))

(assert (=> b!617208 m!593353))

(declare-fun m!593355 () Bool)

(assert (=> b!617208 m!593355))

(declare-fun m!593357 () Bool)

(assert (=> b!617198 m!593357))

(declare-fun m!593359 () Bool)

(assert (=> b!617189 m!593359))

(assert (=> b!617206 m!593353))

(assert (=> b!617206 m!593353))

(declare-fun m!593361 () Bool)

(assert (=> b!617206 m!593361))

(assert (=> b!617194 m!593353))

(declare-fun m!593363 () Bool)

(assert (=> b!617194 m!593363))

(declare-fun m!593365 () Bool)

(assert (=> b!617194 m!593365))

(assert (=> b!617194 m!593353))

(declare-fun m!593367 () Bool)

(assert (=> b!617194 m!593367))

(assert (=> b!617194 m!593353))

(declare-fun m!593369 () Bool)

(assert (=> b!617194 m!593369))

(declare-fun m!593371 () Bool)

(assert (=> b!617194 m!593371))

(assert (=> b!617194 m!593353))

(declare-fun m!593373 () Bool)

(assert (=> b!617194 m!593373))

(declare-fun m!593375 () Bool)

(assert (=> b!617194 m!593375))

(assert (=> b!617199 m!593349))

(declare-fun m!593377 () Bool)

(assert (=> b!617199 m!593377))

(assert (=> b!617213 m!593349))

(assert (=> b!617213 m!593351))

(declare-fun m!593379 () Bool)

(assert (=> b!617203 m!593379))

(declare-fun m!593381 () Bool)

(assert (=> b!617193 m!593381))

(declare-fun m!593383 () Bool)

(assert (=> b!617193 m!593383))

(assert (=> b!617193 m!593353))

(assert (=> b!617193 m!593349))

(declare-fun m!593385 () Bool)

(assert (=> b!617193 m!593385))

(declare-fun m!593387 () Bool)

(assert (=> b!617193 m!593387))

(assert (=> b!617193 m!593353))

(declare-fun m!593389 () Bool)

(assert (=> b!617193 m!593389))

(declare-fun m!593391 () Bool)

(assert (=> b!617193 m!593391))

(declare-fun m!593393 () Bool)

(assert (=> b!617202 m!593393))

(assert (=> b!617192 m!593353))

(assert (=> b!617192 m!593353))

(declare-fun m!593395 () Bool)

(assert (=> b!617192 m!593395))

(assert (=> b!617191 m!593353))

(assert (=> b!617191 m!593353))

(assert (=> b!617191 m!593395))

(declare-fun m!593397 () Bool)

(assert (=> start!56064 m!593397))

(declare-fun m!593399 () Bool)

(assert (=> start!56064 m!593399))

(declare-fun m!593401 () Bool)

(assert (=> b!617210 m!593401))

(declare-fun m!593403 () Bool)

(assert (=> b!617200 m!593403))

(declare-fun m!593405 () Bool)

(assert (=> b!617195 m!593405))

(assert (=> b!617195 m!593353))

(assert (=> b!617195 m!593353))

(declare-fun m!593407 () Bool)

(assert (=> b!617195 m!593407))

(assert (=> b!617211 m!593353))

(declare-fun m!593409 () Bool)

(assert (=> b!617211 m!593409))

(assert (=> b!617211 m!593363))

(declare-fun m!593411 () Bool)

(assert (=> b!617211 m!593411))

(assert (=> b!617211 m!593353))

(assert (=> b!617211 m!593355))

(assert (=> b!617211 m!593353))

(declare-fun m!593413 () Bool)

(assert (=> b!617211 m!593413))

(assert (=> b!617211 m!593353))

(declare-fun m!593415 () Bool)

(assert (=> b!617211 m!593415))

(assert (=> b!617211 m!593353))

(declare-fun m!593417 () Bool)

(assert (=> b!617211 m!593417))

(assert (=> b!617211 m!593375))

(push 1)

