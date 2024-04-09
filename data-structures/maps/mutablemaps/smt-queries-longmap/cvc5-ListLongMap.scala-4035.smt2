; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54924 () Bool)

(assert start!54924)

(declare-fun b!601251 () Bool)

(declare-datatypes ((array!37122 0))(
  ( (array!37123 (arr!17817 (Array (_ BitVec 32) (_ BitVec 64))) (size!18181 (_ BitVec 32))) )
))
(declare-fun lt!273777 () array!37122)

(declare-fun e!343801 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37122)

(declare-fun arrayContainsKey!0 (array!37122 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!601251 (= e!343801 (arrayContainsKey!0 lt!273777 (select (arr!17817 a!2986) j!136) index!984))))

(declare-fun b!601252 () Bool)

(declare-datatypes ((Unit!19012 0))(
  ( (Unit!19013) )
))
(declare-fun e!343795 () Unit!19012)

(declare-fun Unit!19014 () Unit!19012)

(assert (=> b!601252 (= e!343795 Unit!19014)))

(assert (=> b!601252 false))

(declare-fun b!601253 () Bool)

(declare-fun res!386184 () Bool)

(declare-fun e!343797 () Bool)

(assert (=> b!601253 (=> (not res!386184) (not e!343797))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!601253 (= res!386184 (and (= (size!18181 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18181 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18181 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!601254 () Bool)

(declare-fun res!386185 () Bool)

(declare-fun e!343798 () Bool)

(assert (=> b!601254 (=> (not res!386185) (not e!343798))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!601254 (= res!386185 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17817 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!601255 () Bool)

(declare-fun Unit!19015 () Unit!19012)

(assert (=> b!601255 (= e!343795 Unit!19015)))

(declare-fun b!601257 () Bool)

(declare-fun e!343803 () Bool)

(declare-fun e!343794 () Bool)

(assert (=> b!601257 (= e!343803 e!343794)))

(declare-fun res!386183 () Bool)

(assert (=> b!601257 (=> (not res!386183) (not e!343794))))

(declare-datatypes ((SeekEntryResult!6264 0))(
  ( (MissingZero!6264 (index!27312 (_ BitVec 32))) (Found!6264 (index!27313 (_ BitVec 32))) (Intermediate!6264 (undefined!7076 Bool) (index!27314 (_ BitVec 32)) (x!56136 (_ BitVec 32))) (Undefined!6264) (MissingVacant!6264 (index!27315 (_ BitVec 32))) )
))
(declare-fun lt!273772 () SeekEntryResult!6264)

(assert (=> b!601257 (= res!386183 (and (= lt!273772 (Found!6264 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17817 a!2986) index!984) (select (arr!17817 a!2986) j!136))) (not (= (select (arr!17817 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37122 (_ BitVec 32)) SeekEntryResult!6264)

(assert (=> b!601257 (= lt!273772 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17817 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!601258 () Bool)

(declare-fun res!386188 () Bool)

(assert (=> b!601258 (=> (not res!386188) (not e!343797))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!601258 (= res!386188 (validKeyInArray!0 (select (arr!17817 a!2986) j!136)))))

(declare-fun b!601259 () Bool)

(declare-fun res!386191 () Bool)

(assert (=> b!601259 (=> (not res!386191) (not e!343798))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37122 (_ BitVec 32)) Bool)

(assert (=> b!601259 (= res!386191 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!601260 () Bool)

(assert (=> b!601260 (= e!343797 e!343798)))

(declare-fun res!386180 () Bool)

(assert (=> b!601260 (=> (not res!386180) (not e!343798))))

(declare-fun lt!273782 () SeekEntryResult!6264)

(assert (=> b!601260 (= res!386180 (or (= lt!273782 (MissingZero!6264 i!1108)) (= lt!273782 (MissingVacant!6264 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37122 (_ BitVec 32)) SeekEntryResult!6264)

(assert (=> b!601260 (= lt!273782 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!601261 () Bool)

(declare-fun e!343800 () Bool)

(declare-fun lt!273774 () SeekEntryResult!6264)

(assert (=> b!601261 (= e!343800 (= lt!273772 lt!273774))))

(declare-fun b!601262 () Bool)

(declare-fun e!343804 () Unit!19012)

(declare-fun Unit!19016 () Unit!19012)

(assert (=> b!601262 (= e!343804 Unit!19016)))

(declare-fun b!601263 () Bool)

(declare-fun e!343793 () Bool)

(declare-fun e!343802 () Bool)

(assert (=> b!601263 (= e!343793 e!343802)))

(declare-fun res!386190 () Bool)

(assert (=> b!601263 (=> res!386190 e!343802)))

(declare-fun lt!273783 () (_ BitVec 64))

(declare-fun lt!273780 () (_ BitVec 64))

(assert (=> b!601263 (= res!386190 (or (not (= (select (arr!17817 a!2986) j!136) lt!273783)) (not (= (select (arr!17817 a!2986) j!136) lt!273780)) (bvsge j!136 index!984)))))

(declare-fun b!601264 () Bool)

(declare-fun e!343796 () Bool)

(assert (=> b!601264 (= e!343794 (not e!343796))))

(declare-fun res!386194 () Bool)

(assert (=> b!601264 (=> res!386194 e!343796)))

(declare-fun lt!273771 () SeekEntryResult!6264)

(assert (=> b!601264 (= res!386194 (not (= lt!273771 (Found!6264 index!984))))))

(declare-fun lt!273781 () Unit!19012)

(assert (=> b!601264 (= lt!273781 e!343795)))

(declare-fun c!67903 () Bool)

(assert (=> b!601264 (= c!67903 (= lt!273771 Undefined!6264))))

(assert (=> b!601264 (= lt!273771 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273783 lt!273777 mask!3053))))

(assert (=> b!601264 e!343800))

(declare-fun res!386181 () Bool)

(assert (=> b!601264 (=> (not res!386181) (not e!343800))))

(declare-fun lt!273779 () (_ BitVec 32))

(assert (=> b!601264 (= res!386181 (= lt!273774 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273779 vacantSpotIndex!68 lt!273783 lt!273777 mask!3053)))))

(assert (=> b!601264 (= lt!273774 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273779 vacantSpotIndex!68 (select (arr!17817 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!601264 (= lt!273783 (select (store (arr!17817 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273770 () Unit!19012)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37122 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19012)

(assert (=> b!601264 (= lt!273770 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273779 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!601264 (= lt!273779 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!343792 () Bool)

(declare-fun b!601265 () Bool)

(assert (=> b!601265 (= e!343792 (or (bvsge index!984 j!136) (bvslt (size!18181 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!273773 () Unit!19012)

(assert (=> b!601265 (= lt!273773 e!343804)))

(declare-fun c!67904 () Bool)

(assert (=> b!601265 (= c!67904 (bvslt j!136 index!984))))

(declare-fun b!601266 () Bool)

(assert (=> b!601266 (= e!343796 e!343792)))

(declare-fun res!386187 () Bool)

(assert (=> b!601266 (=> res!386187 e!343792)))

(assert (=> b!601266 (= res!386187 (or (not (= (select (arr!17817 a!2986) j!136) lt!273783)) (not (= (select (arr!17817 a!2986) j!136) lt!273780))))))

(assert (=> b!601266 e!343793))

(declare-fun res!386182 () Bool)

(assert (=> b!601266 (=> (not res!386182) (not e!343793))))

(assert (=> b!601266 (= res!386182 (= lt!273780 (select (arr!17817 a!2986) j!136)))))

(assert (=> b!601266 (= lt!273780 (select (store (arr!17817 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!601267 () Bool)

(assert (=> b!601267 (= e!343798 e!343803)))

(declare-fun res!386195 () Bool)

(assert (=> b!601267 (=> (not res!386195) (not e!343803))))

(assert (=> b!601267 (= res!386195 (= (select (store (arr!17817 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601267 (= lt!273777 (array!37123 (store (arr!17817 a!2986) i!1108 k!1786) (size!18181 a!2986)))))

(declare-fun res!386189 () Bool)

(assert (=> start!54924 (=> (not res!386189) (not e!343797))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54924 (= res!386189 (validMask!0 mask!3053))))

(assert (=> start!54924 e!343797))

(assert (=> start!54924 true))

(declare-fun array_inv!13591 (array!37122) Bool)

(assert (=> start!54924 (array_inv!13591 a!2986)))

(declare-fun b!601256 () Bool)

(assert (=> b!601256 (= e!343802 e!343801)))

(declare-fun res!386192 () Bool)

(assert (=> b!601256 (=> (not res!386192) (not e!343801))))

(assert (=> b!601256 (= res!386192 (arrayContainsKey!0 lt!273777 (select (arr!17817 a!2986) j!136) j!136))))

(declare-fun b!601268 () Bool)

(declare-fun res!386179 () Bool)

(assert (=> b!601268 (=> (not res!386179) (not e!343797))))

(assert (=> b!601268 (= res!386179 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!601269 () Bool)

(declare-fun res!386186 () Bool)

(assert (=> b!601269 (=> (not res!386186) (not e!343797))))

(assert (=> b!601269 (= res!386186 (validKeyInArray!0 k!1786))))

(declare-fun b!601270 () Bool)

(declare-fun Unit!19017 () Unit!19012)

(assert (=> b!601270 (= e!343804 Unit!19017)))

(declare-fun lt!273776 () Unit!19012)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37122 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19012)

(assert (=> b!601270 (= lt!273776 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273777 (select (arr!17817 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!601270 (arrayContainsKey!0 lt!273777 (select (arr!17817 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273778 () Unit!19012)

(declare-datatypes ((List!11911 0))(
  ( (Nil!11908) (Cons!11907 (h!12952 (_ BitVec 64)) (t!18147 List!11911)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37122 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11911) Unit!19012)

(assert (=> b!601270 (= lt!273778 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11908))))

(declare-fun arrayNoDuplicates!0 (array!37122 (_ BitVec 32) List!11911) Bool)

(assert (=> b!601270 (arrayNoDuplicates!0 lt!273777 #b00000000000000000000000000000000 Nil!11908)))

(declare-fun lt!273775 () Unit!19012)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37122 (_ BitVec 32) (_ BitVec 32)) Unit!19012)

(assert (=> b!601270 (= lt!273775 (lemmaNoDuplicateFromThenFromBigger!0 lt!273777 #b00000000000000000000000000000000 j!136))))

(assert (=> b!601270 (arrayNoDuplicates!0 lt!273777 j!136 Nil!11908)))

(declare-fun lt!273769 () Unit!19012)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37122 (_ BitVec 64) (_ BitVec 32) List!11911) Unit!19012)

(assert (=> b!601270 (= lt!273769 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!273777 (select (arr!17817 a!2986) j!136) j!136 Nil!11908))))

(assert (=> b!601270 false))

(declare-fun b!601271 () Bool)

(declare-fun res!386193 () Bool)

(assert (=> b!601271 (=> (not res!386193) (not e!343798))))

(assert (=> b!601271 (= res!386193 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11908))))

(assert (= (and start!54924 res!386189) b!601253))

(assert (= (and b!601253 res!386184) b!601258))

(assert (= (and b!601258 res!386188) b!601269))

(assert (= (and b!601269 res!386186) b!601268))

(assert (= (and b!601268 res!386179) b!601260))

(assert (= (and b!601260 res!386180) b!601259))

(assert (= (and b!601259 res!386191) b!601271))

(assert (= (and b!601271 res!386193) b!601254))

(assert (= (and b!601254 res!386185) b!601267))

(assert (= (and b!601267 res!386195) b!601257))

(assert (= (and b!601257 res!386183) b!601264))

(assert (= (and b!601264 res!386181) b!601261))

(assert (= (and b!601264 c!67903) b!601252))

(assert (= (and b!601264 (not c!67903)) b!601255))

(assert (= (and b!601264 (not res!386194)) b!601266))

(assert (= (and b!601266 res!386182) b!601263))

(assert (= (and b!601263 (not res!386190)) b!601256))

(assert (= (and b!601256 res!386192) b!601251))

(assert (= (and b!601266 (not res!386187)) b!601265))

(assert (= (and b!601265 c!67904) b!601270))

(assert (= (and b!601265 (not c!67904)) b!601262))

(declare-fun m!578487 () Bool)

(assert (=> b!601256 m!578487))

(assert (=> b!601256 m!578487))

(declare-fun m!578489 () Bool)

(assert (=> b!601256 m!578489))

(declare-fun m!578491 () Bool)

(assert (=> b!601269 m!578491))

(declare-fun m!578493 () Bool)

(assert (=> b!601260 m!578493))

(assert (=> b!601263 m!578487))

(declare-fun m!578495 () Bool)

(assert (=> b!601264 m!578495))

(assert (=> b!601264 m!578487))

(declare-fun m!578497 () Bool)

(assert (=> b!601264 m!578497))

(assert (=> b!601264 m!578487))

(declare-fun m!578499 () Bool)

(assert (=> b!601264 m!578499))

(declare-fun m!578501 () Bool)

(assert (=> b!601264 m!578501))

(declare-fun m!578503 () Bool)

(assert (=> b!601264 m!578503))

(declare-fun m!578505 () Bool)

(assert (=> b!601264 m!578505))

(declare-fun m!578507 () Bool)

(assert (=> b!601264 m!578507))

(declare-fun m!578509 () Bool)

(assert (=> b!601271 m!578509))

(declare-fun m!578511 () Bool)

(assert (=> start!54924 m!578511))

(declare-fun m!578513 () Bool)

(assert (=> start!54924 m!578513))

(assert (=> b!601267 m!578497))

(declare-fun m!578515 () Bool)

(assert (=> b!601267 m!578515))

(assert (=> b!601258 m!578487))

(assert (=> b!601258 m!578487))

(declare-fun m!578517 () Bool)

(assert (=> b!601258 m!578517))

(declare-fun m!578519 () Bool)

(assert (=> b!601259 m!578519))

(declare-fun m!578521 () Bool)

(assert (=> b!601257 m!578521))

(assert (=> b!601257 m!578487))

(assert (=> b!601257 m!578487))

(declare-fun m!578523 () Bool)

(assert (=> b!601257 m!578523))

(assert (=> b!601251 m!578487))

(assert (=> b!601251 m!578487))

(declare-fun m!578525 () Bool)

(assert (=> b!601251 m!578525))

(assert (=> b!601266 m!578487))

(assert (=> b!601266 m!578497))

(declare-fun m!578527 () Bool)

(assert (=> b!601266 m!578527))

(assert (=> b!601270 m!578487))

(declare-fun m!578529 () Bool)

(assert (=> b!601270 m!578529))

(assert (=> b!601270 m!578487))

(assert (=> b!601270 m!578487))

(declare-fun m!578531 () Bool)

(assert (=> b!601270 m!578531))

(assert (=> b!601270 m!578487))

(declare-fun m!578533 () Bool)

(assert (=> b!601270 m!578533))

(declare-fun m!578535 () Bool)

(assert (=> b!601270 m!578535))

(declare-fun m!578537 () Bool)

(assert (=> b!601270 m!578537))

(declare-fun m!578539 () Bool)

(assert (=> b!601270 m!578539))

(declare-fun m!578541 () Bool)

(assert (=> b!601270 m!578541))

(declare-fun m!578543 () Bool)

(assert (=> b!601268 m!578543))

(declare-fun m!578545 () Bool)

(assert (=> b!601254 m!578545))

(push 1)

(assert (not b!601271))

(assert (not b!601257))

(assert (not b!601259))

(assert (not b!601268))

(assert (not b!601269))

(assert (not b!601258))

(assert (not b!601251))

(assert (not b!601264))

(assert (not b!601260))

(assert (not b!601270))

(assert (not start!54924))

(assert (not b!601256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!601470 () Bool)

(declare-fun e!343935 () Bool)

(declare-fun contains!2991 (List!11911 (_ BitVec 64)) Bool)

(assert (=> b!601470 (= e!343935 (contains!2991 Nil!11908 (select (arr!17817 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!601471 () Bool)

(declare-fun e!343936 () Bool)

(declare-fun e!343933 () Bool)

(assert (=> b!601471 (= e!343936 e!343933)))

(declare-fun c!67939 () Bool)

(assert (=> b!601471 (= c!67939 (validKeyInArray!0 (select (arr!17817 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!87021 () Bool)

(declare-fun res!386327 () Bool)

(declare-fun e!343934 () Bool)

(assert (=> d!87021 (=> res!386327 e!343934)))

(assert (=> d!87021 (= res!386327 (bvsge #b00000000000000000000000000000000 (size!18181 a!2986)))))

(assert (=> d!87021 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11908) e!343934)))

(declare-fun b!601472 () Bool)

(declare-fun call!32968 () Bool)

(assert (=> b!601472 (= e!343933 call!32968)))

(declare-fun b!601473 () Bool)

(assert (=> b!601473 (= e!343933 call!32968)))

(declare-fun bm!32965 () Bool)

(assert (=> bm!32965 (= call!32968 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67939 (Cons!11907 (select (arr!17817 a!2986) #b00000000000000000000000000000000) Nil!11908) Nil!11908)))))

(declare-fun b!601474 () Bool)

(assert (=> b!601474 (= e!343934 e!343936)))

(declare-fun res!386328 () Bool)

(assert (=> b!601474 (=> (not res!386328) (not e!343936))))

(assert (=> b!601474 (= res!386328 (not e!343935))))

(declare-fun res!386326 () Bool)

(assert (=> b!601474 (=> (not res!386326) (not e!343935))))

(assert (=> b!601474 (= res!386326 (validKeyInArray!0 (select (arr!17817 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!87021 (not res!386327)) b!601474))

(assert (= (and b!601474 res!386326) b!601470))

(assert (= (and b!601474 res!386328) b!601471))

(assert (= (and b!601471 c!67939) b!601473))

(assert (= (and b!601471 (not c!67939)) b!601472))

(assert (= (or b!601473 b!601472) bm!32965))

(declare-fun m!578695 () Bool)

(assert (=> b!601470 m!578695))

(assert (=> b!601470 m!578695))

(declare-fun m!578700 () Bool)

(assert (=> b!601470 m!578700))

(assert (=> b!601471 m!578695))

(assert (=> b!601471 m!578695))

(declare-fun m!578703 () Bool)

(assert (=> b!601471 m!578703))

(assert (=> bm!32965 m!578695))

(declare-fun m!578707 () Bool)

(assert (=> bm!32965 m!578707))

(assert (=> b!601474 m!578695))

(assert (=> b!601474 m!578695))

(assert (=> b!601474 m!578703))

(assert (=> b!601271 d!87021))

(declare-fun b!601545 () Bool)

(declare-fun c!67965 () Bool)

(declare-fun lt!273919 () (_ BitVec 64))

(assert (=> b!601545 (= c!67965 (= lt!273919 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!343984 () SeekEntryResult!6264)

(declare-fun e!343985 () SeekEntryResult!6264)

(assert (=> b!601545 (= e!343984 e!343985)))

(declare-fun b!601546 () Bool)

(declare-fun e!343986 () SeekEntryResult!6264)

(assert (=> b!601546 (= e!343986 e!343984)))

(declare-fun lt!273920 () SeekEntryResult!6264)

(assert (=> b!601546 (= lt!273919 (select (arr!17817 a!2986) (index!27314 lt!273920)))))

(declare-fun c!67964 () Bool)

(assert (=> b!601546 (= c!67964 (= lt!273919 k!1786))))

(declare-fun b!601547 () Bool)

(assert (=> b!601547 (= e!343985 (seekKeyOrZeroReturnVacant!0 (x!56136 lt!273920) (index!27314 lt!273920) (index!27314 lt!273920) k!1786 a!2986 mask!3053))))

(declare-fun b!601548 () Bool)

(assert (=> b!601548 (= e!343986 Undefined!6264)))

(declare-fun d!87027 () Bool)

(declare-fun lt!273921 () SeekEntryResult!6264)

(assert (=> d!87027 (and (or (is-Undefined!6264 lt!273921) (not (is-Found!6264 lt!273921)) (and (bvsge (index!27313 lt!273921) #b00000000000000000000000000000000) (bvslt (index!27313 lt!273921) (size!18181 a!2986)))) (or (is-Undefined!6264 lt!273921) (is-Found!6264 lt!273921) (not (is-MissingZero!6264 lt!273921)) (and (bvsge (index!27312 lt!273921) #b00000000000000000000000000000000) (bvslt (index!27312 lt!273921) (size!18181 a!2986)))) (or (is-Undefined!6264 lt!273921) (is-Found!6264 lt!273921) (is-MissingZero!6264 lt!273921) (not (is-MissingVacant!6264 lt!273921)) (and (bvsge (index!27315 lt!273921) #b00000000000000000000000000000000) (bvslt (index!27315 lt!273921) (size!18181 a!2986)))) (or (is-Undefined!6264 lt!273921) (ite (is-Found!6264 lt!273921) (= (select (arr!17817 a!2986) (index!27313 lt!273921)) k!1786) (ite (is-MissingZero!6264 lt!273921) (= (select (arr!17817 a!2986) (index!27312 lt!273921)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6264 lt!273921) (= (select (arr!17817 a!2986) (index!27315 lt!273921)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!87027 (= lt!273921 e!343986)))

(declare-fun c!67963 () Bool)

(assert (=> d!87027 (= c!67963 (and (is-Intermediate!6264 lt!273920) (undefined!7076 lt!273920)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37122 (_ BitVec 32)) SeekEntryResult!6264)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!87027 (= lt!273920 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!87027 (validMask!0 mask!3053)))

(assert (=> d!87027 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!273921)))

(declare-fun b!601549 () Bool)

(assert (=> b!601549 (= e!343985 (MissingZero!6264 (index!27314 lt!273920)))))

(declare-fun b!601550 () Bool)

(assert (=> b!601550 (= e!343984 (Found!6264 (index!27314 lt!273920)))))

(assert (= (and d!87027 c!67963) b!601548))

(assert (= (and d!87027 (not c!67963)) b!601546))

(assert (= (and b!601546 c!67964) b!601550))

(assert (= (and b!601546 (not c!67964)) b!601545))

(assert (= (and b!601545 c!67965) b!601549))

(assert (= (and b!601545 (not c!67965)) b!601547))

(declare-fun m!578773 () Bool)

(assert (=> b!601546 m!578773))

(declare-fun m!578775 () Bool)

(assert (=> b!601547 m!578775))

(declare-fun m!578777 () Bool)

(assert (=> d!87027 m!578777))

(declare-fun m!578779 () Bool)

(assert (=> d!87027 m!578779))

(declare-fun m!578781 () Bool)

(assert (=> d!87027 m!578781))

(assert (=> d!87027 m!578781))

(declare-fun m!578783 () Bool)

(assert (=> d!87027 m!578783))

(assert (=> d!87027 m!578511))

(declare-fun m!578785 () Bool)

(assert (=> d!87027 m!578785))

(assert (=> b!601260 d!87027))

(declare-fun d!87059 () Bool)

(declare-fun res!386360 () Bool)

(declare-fun e!343995 () Bool)

(assert (=> d!87059 (=> res!386360 e!343995)))

(assert (=> d!87059 (= res!386360 (= (select (arr!17817 lt!273777) index!984) (select (arr!17817 a!2986) j!136)))))

(assert (=> d!87059 (= (arrayContainsKey!0 lt!273777 (select (arr!17817 a!2986) j!136) index!984) e!343995)))

(declare-fun b!601560 () Bool)

(declare-fun e!343996 () Bool)

(assert (=> b!601560 (= e!343995 e!343996)))

(declare-fun res!386361 () Bool)

(assert (=> b!601560 (=> (not res!386361) (not e!343996))))

(assert (=> b!601560 (= res!386361 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18181 lt!273777)))))

(declare-fun b!601561 () Bool)

(assert (=> b!601561 (= e!343996 (arrayContainsKey!0 lt!273777 (select (arr!17817 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!87059 (not res!386360)) b!601560))

(assert (= (and b!601560 res!386361) b!601561))

(declare-fun m!578795 () Bool)

(assert (=> d!87059 m!578795))

(assert (=> b!601561 m!578487))

(declare-fun m!578797 () Bool)

(assert (=> b!601561 m!578797))

(assert (=> b!601251 d!87059))

(declare-fun d!87065 () Bool)

(assert (=> d!87065 (= (validKeyInArray!0 (select (arr!17817 a!2986) j!136)) (and (not (= (select (arr!17817 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17817 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!601258 d!87065))

(declare-fun b!601613 () Bool)

(declare-fun e!344032 () SeekEntryResult!6264)

(assert (=> b!601613 (= e!344032 (MissingVacant!6264 vacantSpotIndex!68))))

(declare-fun b!601614 () Bool)

(assert (=> b!601614 (= e!344032 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17817 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!601615 () Bool)

(declare-fun e!344030 () SeekEntryResult!6264)

(assert (=> b!601615 (= e!344030 Undefined!6264)))

(declare-fun d!87067 () Bool)

(declare-fun lt!273951 () SeekEntryResult!6264)

(assert (=> d!87067 (and (or (is-Undefined!6264 lt!273951) (not (is-Found!6264 lt!273951)) (and (bvsge (index!27313 lt!273951) #b00000000000000000000000000000000) (bvslt (index!27313 lt!273951) (size!18181 a!2986)))) (or (is-Undefined!6264 lt!273951) (is-Found!6264 lt!273951) (not (is-MissingVacant!6264 lt!273951)) (not (= (index!27315 lt!273951) vacantSpotIndex!68)) (and (bvsge (index!27315 lt!273951) #b00000000000000000000000000000000) (bvslt (index!27315 lt!273951) (size!18181 a!2986)))) (or (is-Undefined!6264 lt!273951) (ite (is-Found!6264 lt!273951) (= (select (arr!17817 a!2986) (index!27313 lt!273951)) (select (arr!17817 a!2986) j!136)) (and (is-MissingVacant!6264 lt!273951) (= (index!27315 lt!273951) vacantSpotIndex!68) (= (select (arr!17817 a!2986) (index!27315 lt!273951)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!87067 (= lt!273951 e!344030)))

(declare-fun c!67987 () Bool)

(assert (=> d!87067 (= c!67987 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!273950 () (_ BitVec 64))

(assert (=> d!87067 (= lt!273950 (select (arr!17817 a!2986) index!984))))

(assert (=> d!87067 (validMask!0 mask!3053)))

(assert (=> d!87067 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17817 a!2986) j!136) a!2986 mask!3053) lt!273951)))

(declare-fun b!601616 () Bool)

(declare-fun e!344031 () SeekEntryResult!6264)

(assert (=> b!601616 (= e!344030 e!344031)))

(declare-fun c!67986 () Bool)

(assert (=> b!601616 (= c!67986 (= lt!273950 (select (arr!17817 a!2986) j!136)))))

(declare-fun b!601617 () Bool)

(declare-fun c!67985 () Bool)

(assert (=> b!601617 (= c!67985 (= lt!273950 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!601617 (= e!344031 e!344032)))

(declare-fun b!601618 () Bool)

(assert (=> b!601618 (= e!344031 (Found!6264 index!984))))

(assert (= (and d!87067 c!67987) b!601615))

(assert (= (and d!87067 (not c!67987)) b!601616))

(assert (= (and b!601616 c!67986) b!601618))

(assert (= (and b!601616 (not c!67986)) b!601617))

(assert (= (and b!601617 c!67985) b!601613))

(assert (= (and b!601617 (not c!67985)) b!601614))

(assert (=> b!601614 m!578505))

(assert (=> b!601614 m!578505))

(assert (=> b!601614 m!578487))

(declare-fun m!578829 () Bool)

(assert (=> b!601614 m!578829))

(declare-fun m!578831 () Bool)

(assert (=> d!87067 m!578831))

(declare-fun m!578833 () Bool)

(assert (=> d!87067 m!578833))

(assert (=> d!87067 m!578521))

(assert (=> d!87067 m!578511))

(assert (=> b!601257 d!87067))

(declare-fun d!87081 () Bool)

(declare-fun res!386377 () Bool)

(declare-fun e!344036 () Bool)

(assert (=> d!87081 (=> res!386377 e!344036)))

(assert (=> d!87081 (= res!386377 (= (select (arr!17817 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!87081 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!344036)))

(declare-fun b!601625 () Bool)

(declare-fun e!344037 () Bool)

(assert (=> b!601625 (= e!344036 e!344037)))

(declare-fun res!386378 () Bool)

(assert (=> b!601625 (=> (not res!386378) (not e!344037))))

(assert (=> b!601625 (= res!386378 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18181 a!2986)))))

(declare-fun b!601626 () Bool)

(assert (=> b!601626 (= e!344037 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!87081 (not res!386377)) b!601625))

(assert (= (and b!601625 res!386378) b!601626))

(assert (=> d!87081 m!578695))

(declare-fun m!578835 () Bool)

(assert (=> b!601626 m!578835))

(assert (=> b!601268 d!87081))

(declare-fun b!601641 () Bool)

(declare-fun e!344048 () Bool)

(declare-fun call!32980 () Bool)

(assert (=> b!601641 (= e!344048 call!32980)))

(declare-fun b!601642 () Bool)

(declare-fun e!344047 () Bool)

(assert (=> b!601642 (= e!344047 call!32980)))

(declare-fun bm!32977 () Bool)

(assert (=> bm!32977 (= call!32980 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!601644 () Bool)

(declare-fun e!344049 () Bool)

(assert (=> b!601644 (= e!344049 e!344047)))

(declare-fun c!67996 () Bool)

(assert (=> b!601644 (= c!67996 (validKeyInArray!0 (select (arr!17817 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!601643 () Bool)

