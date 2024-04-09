; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55160 () Bool)

(assert start!55160)

(declare-fun b!604210 () Bool)

(declare-fun res!388314 () Bool)

(declare-fun e!345737 () Bool)

(assert (=> b!604210 (=> (not res!388314) (not e!345737))))

(declare-datatypes ((array!37196 0))(
  ( (array!37197 (arr!17851 (Array (_ BitVec 32) (_ BitVec 64))) (size!18215 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37196)

(declare-datatypes ((List!11945 0))(
  ( (Nil!11942) (Cons!11941 (h!12986 (_ BitVec 64)) (t!18181 List!11945)) )
))
(declare-fun arrayNoDuplicates!0 (array!37196 (_ BitVec 32) List!11945) Bool)

(assert (=> b!604210 (= res!388314 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11942))))

(declare-fun b!604211 () Bool)

(declare-fun e!345725 () Bool)

(declare-fun e!345736 () Bool)

(assert (=> b!604211 (= e!345725 e!345736)))

(declare-fun res!388320 () Bool)

(assert (=> b!604211 (=> res!388320 e!345736)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!275605 () (_ BitVec 64))

(declare-fun lt!275604 () (_ BitVec 64))

(assert (=> b!604211 (= res!388320 (or (not (= (select (arr!17851 a!2986) j!136) lt!275604)) (not (= (select (arr!17851 a!2986) j!136) lt!275605))))))

(declare-fun e!345735 () Bool)

(assert (=> b!604211 e!345735))

(declare-fun res!388322 () Bool)

(assert (=> b!604211 (=> (not res!388322) (not e!345735))))

(assert (=> b!604211 (= res!388322 (= lt!275605 (select (arr!17851 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!604211 (= lt!275605 (select (store (arr!17851 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!604212 () Bool)

(declare-datatypes ((Unit!19216 0))(
  ( (Unit!19217) )
))
(declare-fun e!345734 () Unit!19216)

(declare-fun Unit!19218 () Unit!19216)

(assert (=> b!604212 (= e!345734 Unit!19218)))

(declare-fun b!604213 () Bool)

(declare-fun e!345738 () Unit!19216)

(declare-fun Unit!19219 () Unit!19216)

(assert (=> b!604213 (= e!345738 Unit!19219)))

(assert (=> b!604213 false))

(declare-fun b!604214 () Bool)

(declare-fun e!345729 () Bool)

(declare-datatypes ((SeekEntryResult!6298 0))(
  ( (MissingZero!6298 (index!27454 (_ BitVec 32))) (Found!6298 (index!27455 (_ BitVec 32))) (Intermediate!6298 (undefined!7110 Bool) (index!27456 (_ BitVec 32)) (x!56276 (_ BitVec 32))) (Undefined!6298) (MissingVacant!6298 (index!27457 (_ BitVec 32))) )
))
(declare-fun lt!275616 () SeekEntryResult!6298)

(declare-fun lt!275608 () SeekEntryResult!6298)

(assert (=> b!604214 (= e!345729 (= lt!275616 lt!275608))))

(declare-fun lt!275615 () array!37196)

(declare-fun b!604215 () Bool)

(declare-fun e!345728 () Bool)

(declare-fun arrayContainsKey!0 (array!37196 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!604215 (= e!345728 (arrayContainsKey!0 lt!275615 (select (arr!17851 a!2986) j!136) index!984))))

(declare-fun b!604216 () Bool)

(declare-fun res!388311 () Bool)

(declare-fun e!345731 () Bool)

(assert (=> b!604216 (=> (not res!388311) (not e!345731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!604216 (= res!388311 (validKeyInArray!0 (select (arr!17851 a!2986) j!136)))))

(declare-fun b!604217 () Bool)

(declare-fun e!345732 () Bool)

(assert (=> b!604217 (= e!345732 (not e!345725))))

(declare-fun res!388318 () Bool)

(assert (=> b!604217 (=> res!388318 e!345725)))

(declare-fun lt!275614 () SeekEntryResult!6298)

(assert (=> b!604217 (= res!388318 (not (= lt!275614 (Found!6298 index!984))))))

(declare-fun lt!275603 () Unit!19216)

(assert (=> b!604217 (= lt!275603 e!345738)))

(declare-fun c!68318 () Bool)

(assert (=> b!604217 (= c!68318 (= lt!275614 Undefined!6298))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37196 (_ BitVec 32)) SeekEntryResult!6298)

(assert (=> b!604217 (= lt!275614 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275604 lt!275615 mask!3053))))

(assert (=> b!604217 e!345729))

(declare-fun res!388324 () Bool)

(assert (=> b!604217 (=> (not res!388324) (not e!345729))))

(declare-fun lt!275602 () (_ BitVec 32))

(assert (=> b!604217 (= res!388324 (= lt!275608 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275602 vacantSpotIndex!68 lt!275604 lt!275615 mask!3053)))))

(assert (=> b!604217 (= lt!275608 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275602 vacantSpotIndex!68 (select (arr!17851 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!604217 (= lt!275604 (select (store (arr!17851 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!275607 () Unit!19216)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37196 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19216)

(assert (=> b!604217 (= lt!275607 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275602 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!604217 (= lt!275602 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!604218 () Bool)

(declare-fun e!345726 () Bool)

(declare-fun e!345739 () Bool)

(assert (=> b!604218 (= e!345726 e!345739)))

(declare-fun res!388326 () Bool)

(assert (=> b!604218 (=> (not res!388326) (not e!345739))))

(assert (=> b!604218 (= res!388326 (arrayContainsKey!0 lt!275615 (select (arr!17851 a!2986) j!136) j!136))))

(declare-fun b!604219 () Bool)

(declare-fun res!388327 () Bool)

(assert (=> b!604219 (=> (not res!388327) (not e!345737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37196 (_ BitVec 32)) Bool)

(assert (=> b!604219 (= res!388327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!604220 () Bool)

(declare-fun Unit!19220 () Unit!19216)

(assert (=> b!604220 (= e!345734 Unit!19220)))

(declare-fun lt!275610 () Unit!19216)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37196 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19216)

(assert (=> b!604220 (= lt!275610 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275615 (select (arr!17851 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!604220 (arrayContainsKey!0 lt!275615 (select (arr!17851 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275609 () Unit!19216)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37196 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11945) Unit!19216)

(assert (=> b!604220 (= lt!275609 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11942))))

(assert (=> b!604220 (arrayNoDuplicates!0 lt!275615 #b00000000000000000000000000000000 Nil!11942)))

(declare-fun lt!275613 () Unit!19216)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37196 (_ BitVec 32) (_ BitVec 32)) Unit!19216)

(assert (=> b!604220 (= lt!275613 (lemmaNoDuplicateFromThenFromBigger!0 lt!275615 #b00000000000000000000000000000000 j!136))))

(assert (=> b!604220 (arrayNoDuplicates!0 lt!275615 j!136 Nil!11942)))

(declare-fun lt!275601 () Unit!19216)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37196 (_ BitVec 64) (_ BitVec 32) List!11945) Unit!19216)

(assert (=> b!604220 (= lt!275601 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275615 (select (arr!17851 a!2986) j!136) j!136 Nil!11942))))

(assert (=> b!604220 false))

(declare-fun res!388313 () Bool)

(assert (=> start!55160 (=> (not res!388313) (not e!345731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55160 (= res!388313 (validMask!0 mask!3053))))

(assert (=> start!55160 e!345731))

(assert (=> start!55160 true))

(declare-fun array_inv!13625 (array!37196) Bool)

(assert (=> start!55160 (array_inv!13625 a!2986)))

(declare-fun b!604221 () Bool)

(declare-fun e!345727 () Bool)

(assert (=> b!604221 (= e!345727 (or (bvslt (bvadd #b00000000000000000000000000000001 index!984) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 index!984) (size!18215 a!2986))))))

(assert (=> b!604221 (arrayContainsKey!0 lt!275615 (select (arr!17851 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!275611 () Unit!19216)

(assert (=> b!604221 (= lt!275611 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275615 (select (arr!17851 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!604221 e!345728))

(declare-fun res!388312 () Bool)

(assert (=> b!604221 (=> (not res!388312) (not e!345728))))

(assert (=> b!604221 (= res!388312 (arrayContainsKey!0 lt!275615 (select (arr!17851 a!2986) j!136) j!136))))

(declare-fun b!604222 () Bool)

(declare-fun res!388319 () Bool)

(assert (=> b!604222 (=> (not res!388319) (not e!345731))))

(assert (=> b!604222 (= res!388319 (and (= (size!18215 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18215 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18215 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!604223 () Bool)

(assert (=> b!604223 (= e!345736 e!345727)))

(declare-fun res!388325 () Bool)

(assert (=> b!604223 (=> res!388325 e!345727)))

(assert (=> b!604223 (= res!388325 (bvsge index!984 j!136))))

(declare-fun lt!275606 () Unit!19216)

(assert (=> b!604223 (= lt!275606 e!345734)))

(declare-fun c!68317 () Bool)

(assert (=> b!604223 (= c!68317 (bvslt j!136 index!984))))

(declare-fun b!604224 () Bool)

(declare-fun res!388321 () Bool)

(assert (=> b!604224 (=> (not res!388321) (not e!345731))))

(assert (=> b!604224 (= res!388321 (validKeyInArray!0 k0!1786))))

(declare-fun b!604225 () Bool)

(assert (=> b!604225 (= e!345735 e!345726)))

(declare-fun res!388317 () Bool)

(assert (=> b!604225 (=> res!388317 e!345726)))

(assert (=> b!604225 (= res!388317 (or (not (= (select (arr!17851 a!2986) j!136) lt!275604)) (not (= (select (arr!17851 a!2986) j!136) lt!275605)) (bvsge j!136 index!984)))))

(declare-fun b!604226 () Bool)

(declare-fun res!388316 () Bool)

(assert (=> b!604226 (=> (not res!388316) (not e!345737))))

(assert (=> b!604226 (= res!388316 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17851 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!604227 () Bool)

(assert (=> b!604227 (= e!345739 (arrayContainsKey!0 lt!275615 (select (arr!17851 a!2986) j!136) index!984))))

(declare-fun b!604228 () Bool)

(declare-fun e!345733 () Bool)

(assert (=> b!604228 (= e!345737 e!345733)))

(declare-fun res!388310 () Bool)

(assert (=> b!604228 (=> (not res!388310) (not e!345733))))

(assert (=> b!604228 (= res!388310 (= (select (store (arr!17851 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!604228 (= lt!275615 (array!37197 (store (arr!17851 a!2986) i!1108 k0!1786) (size!18215 a!2986)))))

(declare-fun b!604229 () Bool)

(declare-fun res!388315 () Bool)

(assert (=> b!604229 (=> (not res!388315) (not e!345731))))

(assert (=> b!604229 (= res!388315 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!604230 () Bool)

(declare-fun Unit!19221 () Unit!19216)

(assert (=> b!604230 (= e!345738 Unit!19221)))

(declare-fun b!604231 () Bool)

(assert (=> b!604231 (= e!345733 e!345732)))

(declare-fun res!388323 () Bool)

(assert (=> b!604231 (=> (not res!388323) (not e!345732))))

(assert (=> b!604231 (= res!388323 (and (= lt!275616 (Found!6298 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17851 a!2986) index!984) (select (arr!17851 a!2986) j!136))) (not (= (select (arr!17851 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!604231 (= lt!275616 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17851 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!604232 () Bool)

(assert (=> b!604232 (= e!345731 e!345737)))

(declare-fun res!388328 () Bool)

(assert (=> b!604232 (=> (not res!388328) (not e!345737))))

(declare-fun lt!275612 () SeekEntryResult!6298)

(assert (=> b!604232 (= res!388328 (or (= lt!275612 (MissingZero!6298 i!1108)) (= lt!275612 (MissingVacant!6298 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37196 (_ BitVec 32)) SeekEntryResult!6298)

(assert (=> b!604232 (= lt!275612 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!55160 res!388313) b!604222))

(assert (= (and b!604222 res!388319) b!604216))

(assert (= (and b!604216 res!388311) b!604224))

(assert (= (and b!604224 res!388321) b!604229))

(assert (= (and b!604229 res!388315) b!604232))

(assert (= (and b!604232 res!388328) b!604219))

(assert (= (and b!604219 res!388327) b!604210))

(assert (= (and b!604210 res!388314) b!604226))

(assert (= (and b!604226 res!388316) b!604228))

(assert (= (and b!604228 res!388310) b!604231))

(assert (= (and b!604231 res!388323) b!604217))

(assert (= (and b!604217 res!388324) b!604214))

(assert (= (and b!604217 c!68318) b!604213))

(assert (= (and b!604217 (not c!68318)) b!604230))

(assert (= (and b!604217 (not res!388318)) b!604211))

(assert (= (and b!604211 res!388322) b!604225))

(assert (= (and b!604225 (not res!388317)) b!604218))

(assert (= (and b!604218 res!388326) b!604227))

(assert (= (and b!604211 (not res!388320)) b!604223))

(assert (= (and b!604223 c!68317) b!604220))

(assert (= (and b!604223 (not c!68317)) b!604212))

(assert (= (and b!604223 (not res!388325)) b!604221))

(assert (= (and b!604221 res!388312) b!604215))

(declare-fun m!581167 () Bool)

(assert (=> b!604226 m!581167))

(declare-fun m!581169 () Bool)

(assert (=> b!604224 m!581169))

(declare-fun m!581171 () Bool)

(assert (=> b!604228 m!581171))

(declare-fun m!581173 () Bool)

(assert (=> b!604228 m!581173))

(declare-fun m!581175 () Bool)

(assert (=> b!604229 m!581175))

(declare-fun m!581177 () Bool)

(assert (=> b!604211 m!581177))

(assert (=> b!604211 m!581171))

(declare-fun m!581179 () Bool)

(assert (=> b!604211 m!581179))

(assert (=> b!604225 m!581177))

(declare-fun m!581181 () Bool)

(assert (=> b!604232 m!581181))

(declare-fun m!581183 () Bool)

(assert (=> b!604217 m!581183))

(declare-fun m!581185 () Bool)

(assert (=> b!604217 m!581185))

(assert (=> b!604217 m!581177))

(assert (=> b!604217 m!581171))

(assert (=> b!604217 m!581177))

(declare-fun m!581187 () Bool)

(assert (=> b!604217 m!581187))

(declare-fun m!581189 () Bool)

(assert (=> b!604217 m!581189))

(declare-fun m!581191 () Bool)

(assert (=> b!604217 m!581191))

(declare-fun m!581193 () Bool)

(assert (=> b!604217 m!581193))

(declare-fun m!581195 () Bool)

(assert (=> start!55160 m!581195))

(declare-fun m!581197 () Bool)

(assert (=> start!55160 m!581197))

(declare-fun m!581199 () Bool)

(assert (=> b!604220 m!581199))

(assert (=> b!604220 m!581177))

(assert (=> b!604220 m!581177))

(declare-fun m!581201 () Bool)

(assert (=> b!604220 m!581201))

(declare-fun m!581203 () Bool)

(assert (=> b!604220 m!581203))

(declare-fun m!581205 () Bool)

(assert (=> b!604220 m!581205))

(assert (=> b!604220 m!581177))

(declare-fun m!581207 () Bool)

(assert (=> b!604220 m!581207))

(assert (=> b!604220 m!581177))

(declare-fun m!581209 () Bool)

(assert (=> b!604220 m!581209))

(declare-fun m!581211 () Bool)

(assert (=> b!604220 m!581211))

(assert (=> b!604218 m!581177))

(assert (=> b!604218 m!581177))

(declare-fun m!581213 () Bool)

(assert (=> b!604218 m!581213))

(declare-fun m!581215 () Bool)

(assert (=> b!604231 m!581215))

(assert (=> b!604231 m!581177))

(assert (=> b!604231 m!581177))

(declare-fun m!581217 () Bool)

(assert (=> b!604231 m!581217))

(assert (=> b!604227 m!581177))

(assert (=> b!604227 m!581177))

(declare-fun m!581219 () Bool)

(assert (=> b!604227 m!581219))

(assert (=> b!604221 m!581177))

(assert (=> b!604221 m!581177))

(declare-fun m!581221 () Bool)

(assert (=> b!604221 m!581221))

(assert (=> b!604221 m!581177))

(declare-fun m!581223 () Bool)

(assert (=> b!604221 m!581223))

(assert (=> b!604221 m!581177))

(assert (=> b!604221 m!581213))

(assert (=> b!604215 m!581177))

(assert (=> b!604215 m!581177))

(assert (=> b!604215 m!581219))

(assert (=> b!604216 m!581177))

(assert (=> b!604216 m!581177))

(declare-fun m!581225 () Bool)

(assert (=> b!604216 m!581225))

(declare-fun m!581227 () Bool)

(assert (=> b!604219 m!581227))

(declare-fun m!581229 () Bool)

(assert (=> b!604210 m!581229))

(check-sat (not b!604224) (not start!55160) (not b!604215) (not b!604227) (not b!604218) (not b!604229) (not b!604210) (not b!604220) (not b!604216) (not b!604219) (not b!604231) (not b!604232) (not b!604217) (not b!604221))
(check-sat)
