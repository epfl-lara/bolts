; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57032 () Bool)

(assert start!57032)

(declare-fun b!631177 () Bool)

(declare-fun e!360868 () Bool)

(declare-fun e!360871 () Bool)

(assert (=> b!631177 (= e!360868 e!360871)))

(declare-fun res!408263 () Bool)

(assert (=> b!631177 (=> (not res!408263) (not e!360871))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6712 0))(
  ( (MissingZero!6712 (index!29137 (_ BitVec 32))) (Found!6712 (index!29138 (_ BitVec 32))) (Intermediate!6712 (undefined!7524 Bool) (index!29139 (_ BitVec 32)) (x!57899 (_ BitVec 32))) (Undefined!6712) (MissingVacant!6712 (index!29140 (_ BitVec 32))) )
))
(declare-fun lt!291669 () SeekEntryResult!6712)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38069 0))(
  ( (array!38070 (arr!18265 (Array (_ BitVec 32) (_ BitVec 64))) (size!18629 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38069)

(assert (=> b!631177 (= res!408263 (and (= lt!291669 (Found!6712 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18265 a!2986) index!984) (select (arr!18265 a!2986) j!136))) (not (= (select (arr!18265 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38069 (_ BitVec 32)) SeekEntryResult!6712)

(assert (=> b!631177 (= lt!291669 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18265 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631178 () Bool)

(declare-datatypes ((Unit!21206 0))(
  ( (Unit!21207) )
))
(declare-fun e!360869 () Unit!21206)

(declare-fun Unit!21208 () Unit!21206)

(assert (=> b!631178 (= e!360869 Unit!21208)))

(assert (=> b!631178 false))

(declare-fun res!408257 () Bool)

(declare-fun e!360866 () Bool)

(assert (=> start!57032 (=> (not res!408257) (not e!360866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57032 (= res!408257 (validMask!0 mask!3053))))

(assert (=> start!57032 e!360866))

(assert (=> start!57032 true))

(declare-fun array_inv!14039 (array!38069) Bool)

(assert (=> start!57032 (array_inv!14039 a!2986)))

(declare-fun b!631179 () Bool)

(declare-fun res!408264 () Bool)

(declare-fun e!360865 () Bool)

(assert (=> b!631179 (=> (not res!408264) (not e!360865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38069 (_ BitVec 32)) Bool)

(assert (=> b!631179 (= res!408264 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!631180 () Bool)

(assert (=> b!631180 (= e!360865 e!360868)))

(declare-fun res!408256 () Bool)

(assert (=> b!631180 (=> (not res!408256) (not e!360868))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!631180 (= res!408256 (= (select (store (arr!18265 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!291666 () array!38069)

(assert (=> b!631180 (= lt!291666 (array!38070 (store (arr!18265 a!2986) i!1108 k0!1786) (size!18629 a!2986)))))

(declare-fun b!631181 () Bool)

(declare-fun res!408262 () Bool)

(assert (=> b!631181 (=> (not res!408262) (not e!360866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631181 (= res!408262 (validKeyInArray!0 (select (arr!18265 a!2986) j!136)))))

(declare-fun b!631182 () Bool)

(declare-fun res!408260 () Bool)

(assert (=> b!631182 (=> (not res!408260) (not e!360865))))

(declare-datatypes ((List!12359 0))(
  ( (Nil!12356) (Cons!12355 (h!13400 (_ BitVec 64)) (t!18595 List!12359)) )
))
(declare-fun arrayNoDuplicates!0 (array!38069 (_ BitVec 32) List!12359) Bool)

(assert (=> b!631182 (= res!408260 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12356))))

(declare-fun b!631183 () Bool)

(declare-fun res!408259 () Bool)

(assert (=> b!631183 (=> (not res!408259) (not e!360866))))

(assert (=> b!631183 (= res!408259 (validKeyInArray!0 k0!1786))))

(declare-fun b!631184 () Bool)

(declare-fun res!408266 () Bool)

(assert (=> b!631184 (=> (not res!408266) (not e!360865))))

(assert (=> b!631184 (= res!408266 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18265 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!291668 () SeekEntryResult!6712)

(declare-fun b!631185 () Bool)

(assert (=> b!631185 (= e!360871 (not (or (not (= lt!291668 (Found!6712 index!984))) (= (select (store (arr!18265 a!2986) i!1108 k0!1786) index!984) (select (arr!18265 a!2986) j!136)))))))

(declare-fun lt!291671 () Unit!21206)

(assert (=> b!631185 (= lt!291671 e!360869)))

(declare-fun c!71828 () Bool)

(assert (=> b!631185 (= c!71828 (= lt!291668 Undefined!6712))))

(declare-fun lt!291664 () (_ BitVec 64))

(assert (=> b!631185 (= lt!291668 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291664 lt!291666 mask!3053))))

(declare-fun e!360870 () Bool)

(assert (=> b!631185 e!360870))

(declare-fun res!408265 () Bool)

(assert (=> b!631185 (=> (not res!408265) (not e!360870))))

(declare-fun lt!291672 () SeekEntryResult!6712)

(declare-fun lt!291665 () (_ BitVec 32))

(assert (=> b!631185 (= res!408265 (= lt!291672 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291665 vacantSpotIndex!68 lt!291664 lt!291666 mask!3053)))))

(assert (=> b!631185 (= lt!291672 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291665 vacantSpotIndex!68 (select (arr!18265 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!631185 (= lt!291664 (select (store (arr!18265 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!291670 () Unit!21206)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38069 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21206)

(assert (=> b!631185 (= lt!291670 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291665 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631185 (= lt!291665 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631186 () Bool)

(assert (=> b!631186 (= e!360870 (= lt!291669 lt!291672))))

(declare-fun b!631187 () Bool)

(declare-fun Unit!21209 () Unit!21206)

(assert (=> b!631187 (= e!360869 Unit!21209)))

(declare-fun b!631188 () Bool)

(declare-fun res!408258 () Bool)

(assert (=> b!631188 (=> (not res!408258) (not e!360866))))

(declare-fun arrayContainsKey!0 (array!38069 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631188 (= res!408258 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631189 () Bool)

(assert (=> b!631189 (= e!360866 e!360865)))

(declare-fun res!408255 () Bool)

(assert (=> b!631189 (=> (not res!408255) (not e!360865))))

(declare-fun lt!291667 () SeekEntryResult!6712)

(assert (=> b!631189 (= res!408255 (or (= lt!291667 (MissingZero!6712 i!1108)) (= lt!291667 (MissingVacant!6712 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38069 (_ BitVec 32)) SeekEntryResult!6712)

(assert (=> b!631189 (= lt!291667 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!631190 () Bool)

(declare-fun res!408261 () Bool)

(assert (=> b!631190 (=> (not res!408261) (not e!360866))))

(assert (=> b!631190 (= res!408261 (and (= (size!18629 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18629 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18629 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!57032 res!408257) b!631190))

(assert (= (and b!631190 res!408261) b!631181))

(assert (= (and b!631181 res!408262) b!631183))

(assert (= (and b!631183 res!408259) b!631188))

(assert (= (and b!631188 res!408258) b!631189))

(assert (= (and b!631189 res!408255) b!631179))

(assert (= (and b!631179 res!408264) b!631182))

(assert (= (and b!631182 res!408260) b!631184))

(assert (= (and b!631184 res!408266) b!631180))

(assert (= (and b!631180 res!408256) b!631177))

(assert (= (and b!631177 res!408263) b!631185))

(assert (= (and b!631185 res!408265) b!631186))

(assert (= (and b!631185 c!71828) b!631178))

(assert (= (and b!631185 (not c!71828)) b!631187))

(declare-fun m!606171 () Bool)

(assert (=> b!631179 m!606171))

(declare-fun m!606173 () Bool)

(assert (=> b!631185 m!606173))

(declare-fun m!606175 () Bool)

(assert (=> b!631185 m!606175))

(declare-fun m!606177 () Bool)

(assert (=> b!631185 m!606177))

(declare-fun m!606179 () Bool)

(assert (=> b!631185 m!606179))

(declare-fun m!606181 () Bool)

(assert (=> b!631185 m!606181))

(assert (=> b!631185 m!606177))

(declare-fun m!606183 () Bool)

(assert (=> b!631185 m!606183))

(declare-fun m!606185 () Bool)

(assert (=> b!631185 m!606185))

(declare-fun m!606187 () Bool)

(assert (=> b!631185 m!606187))

(declare-fun m!606189 () Bool)

(assert (=> b!631185 m!606189))

(declare-fun m!606191 () Bool)

(assert (=> b!631183 m!606191))

(assert (=> b!631181 m!606177))

(assert (=> b!631181 m!606177))

(declare-fun m!606193 () Bool)

(assert (=> b!631181 m!606193))

(declare-fun m!606195 () Bool)

(assert (=> b!631189 m!606195))

(declare-fun m!606197 () Bool)

(assert (=> b!631177 m!606197))

(assert (=> b!631177 m!606177))

(assert (=> b!631177 m!606177))

(declare-fun m!606199 () Bool)

(assert (=> b!631177 m!606199))

(assert (=> b!631180 m!606179))

(declare-fun m!606201 () Bool)

(assert (=> b!631180 m!606201))

(declare-fun m!606203 () Bool)

(assert (=> b!631182 m!606203))

(declare-fun m!606205 () Bool)

(assert (=> b!631184 m!606205))

(declare-fun m!606207 () Bool)

(assert (=> b!631188 m!606207))

(declare-fun m!606209 () Bool)

(assert (=> start!57032 m!606209))

(declare-fun m!606211 () Bool)

(assert (=> start!57032 m!606211))

(check-sat (not b!631188) (not b!631179) (not b!631189) (not b!631181) (not b!631183) (not start!57032) (not b!631182) (not b!631185) (not b!631177))
(check-sat)
(get-model)

(declare-fun b!631243 () Bool)

(declare-fun e!360902 () Bool)

(declare-fun call!33323 () Bool)

(assert (=> b!631243 (= e!360902 call!33323)))

(declare-fun b!631244 () Bool)

(assert (=> b!631244 (= e!360902 call!33323)))

(declare-fun b!631245 () Bool)

(declare-fun e!360901 () Bool)

(declare-fun contains!3093 (List!12359 (_ BitVec 64)) Bool)

(assert (=> b!631245 (= e!360901 (contains!3093 Nil!12356 (select (arr!18265 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!631246 () Bool)

(declare-fun e!360904 () Bool)

(declare-fun e!360903 () Bool)

(assert (=> b!631246 (= e!360904 e!360903)))

(declare-fun res!408311 () Bool)

(assert (=> b!631246 (=> (not res!408311) (not e!360903))))

(assert (=> b!631246 (= res!408311 (not e!360901))))

(declare-fun res!408310 () Bool)

(assert (=> b!631246 (=> (not res!408310) (not e!360901))))

(assert (=> b!631246 (= res!408310 (validKeyInArray!0 (select (arr!18265 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!631247 () Bool)

(assert (=> b!631247 (= e!360903 e!360902)))

(declare-fun c!71834 () Bool)

(assert (=> b!631247 (= c!71834 (validKeyInArray!0 (select (arr!18265 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33320 () Bool)

(assert (=> bm!33320 (= call!33323 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!71834 (Cons!12355 (select (arr!18265 a!2986) #b00000000000000000000000000000000) Nil!12356) Nil!12356)))))

(declare-fun d!89185 () Bool)

(declare-fun res!408309 () Bool)

(assert (=> d!89185 (=> res!408309 e!360904)))

(assert (=> d!89185 (= res!408309 (bvsge #b00000000000000000000000000000000 (size!18629 a!2986)))))

(assert (=> d!89185 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12356) e!360904)))

(assert (= (and d!89185 (not res!408309)) b!631246))

(assert (= (and b!631246 res!408310) b!631245))

(assert (= (and b!631246 res!408311) b!631247))

(assert (= (and b!631247 c!71834) b!631244))

(assert (= (and b!631247 (not c!71834)) b!631243))

(assert (= (or b!631244 b!631243) bm!33320))

(declare-fun m!606255 () Bool)

(assert (=> b!631245 m!606255))

(assert (=> b!631245 m!606255))

(declare-fun m!606257 () Bool)

(assert (=> b!631245 m!606257))

(assert (=> b!631246 m!606255))

(assert (=> b!631246 m!606255))

(declare-fun m!606259 () Bool)

(assert (=> b!631246 m!606259))

(assert (=> b!631247 m!606255))

(assert (=> b!631247 m!606255))

(assert (=> b!631247 m!606259))

(assert (=> bm!33320 m!606255))

(declare-fun m!606261 () Bool)

(assert (=> bm!33320 m!606261))

(assert (=> b!631182 d!89185))

(declare-fun d!89187 () Bool)

(declare-fun res!408316 () Bool)

(declare-fun e!360909 () Bool)

(assert (=> d!89187 (=> res!408316 e!360909)))

(assert (=> d!89187 (= res!408316 (= (select (arr!18265 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!89187 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!360909)))

(declare-fun b!631252 () Bool)

(declare-fun e!360910 () Bool)

(assert (=> b!631252 (= e!360909 e!360910)))

(declare-fun res!408317 () Bool)

(assert (=> b!631252 (=> (not res!408317) (not e!360910))))

(assert (=> b!631252 (= res!408317 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18629 a!2986)))))

(declare-fun b!631253 () Bool)

(assert (=> b!631253 (= e!360910 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89187 (not res!408316)) b!631252))

(assert (= (and b!631252 res!408317) b!631253))

(assert (=> d!89187 m!606255))

(declare-fun m!606263 () Bool)

(assert (=> b!631253 m!606263))

(assert (=> b!631188 d!89187))

(declare-fun b!631266 () Bool)

(declare-fun e!360918 () SeekEntryResult!6712)

(assert (=> b!631266 (= e!360918 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18265 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631267 () Bool)

(declare-fun e!360917 () SeekEntryResult!6712)

(assert (=> b!631267 (= e!360917 (Found!6712 index!984))))

(declare-fun b!631268 () Bool)

(declare-fun e!360919 () SeekEntryResult!6712)

(assert (=> b!631268 (= e!360919 Undefined!6712)))

(declare-fun b!631269 () Bool)

(declare-fun c!71841 () Bool)

(declare-fun lt!291704 () (_ BitVec 64))

(assert (=> b!631269 (= c!71841 (= lt!291704 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631269 (= e!360917 e!360918)))

(declare-fun b!631270 () Bool)

(assert (=> b!631270 (= e!360919 e!360917)))

(declare-fun c!71843 () Bool)

(assert (=> b!631270 (= c!71843 (= lt!291704 (select (arr!18265 a!2986) j!136)))))

(declare-fun lt!291705 () SeekEntryResult!6712)

(declare-fun d!89189 () Bool)

(get-info :version)

(assert (=> d!89189 (and (or ((_ is Undefined!6712) lt!291705) (not ((_ is Found!6712) lt!291705)) (and (bvsge (index!29138 lt!291705) #b00000000000000000000000000000000) (bvslt (index!29138 lt!291705) (size!18629 a!2986)))) (or ((_ is Undefined!6712) lt!291705) ((_ is Found!6712) lt!291705) (not ((_ is MissingVacant!6712) lt!291705)) (not (= (index!29140 lt!291705) vacantSpotIndex!68)) (and (bvsge (index!29140 lt!291705) #b00000000000000000000000000000000) (bvslt (index!29140 lt!291705) (size!18629 a!2986)))) (or ((_ is Undefined!6712) lt!291705) (ite ((_ is Found!6712) lt!291705) (= (select (arr!18265 a!2986) (index!29138 lt!291705)) (select (arr!18265 a!2986) j!136)) (and ((_ is MissingVacant!6712) lt!291705) (= (index!29140 lt!291705) vacantSpotIndex!68) (= (select (arr!18265 a!2986) (index!29140 lt!291705)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89189 (= lt!291705 e!360919)))

(declare-fun c!71842 () Bool)

(assert (=> d!89189 (= c!71842 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89189 (= lt!291704 (select (arr!18265 a!2986) index!984))))

(assert (=> d!89189 (validMask!0 mask!3053)))

(assert (=> d!89189 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18265 a!2986) j!136) a!2986 mask!3053) lt!291705)))

(declare-fun b!631271 () Bool)

(assert (=> b!631271 (= e!360918 (MissingVacant!6712 vacantSpotIndex!68))))

(assert (= (and d!89189 c!71842) b!631268))

(assert (= (and d!89189 (not c!71842)) b!631270))

(assert (= (and b!631270 c!71843) b!631267))

(assert (= (and b!631270 (not c!71843)) b!631269))

(assert (= (and b!631269 c!71841) b!631271))

(assert (= (and b!631269 (not c!71841)) b!631266))

(assert (=> b!631266 m!606173))

(assert (=> b!631266 m!606173))

(assert (=> b!631266 m!606177))

(declare-fun m!606265 () Bool)

(assert (=> b!631266 m!606265))

(declare-fun m!606267 () Bool)

(assert (=> d!89189 m!606267))

(declare-fun m!606269 () Bool)

(assert (=> d!89189 m!606269))

(assert (=> d!89189 m!606197))

(assert (=> d!89189 m!606209))

(assert (=> b!631177 d!89189))

(declare-fun d!89191 () Bool)

(assert (=> d!89191 (= (validKeyInArray!0 (select (arr!18265 a!2986) j!136)) (and (not (= (select (arr!18265 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18265 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!631181 d!89191))

(declare-fun b!631280 () Bool)

(declare-fun e!360926 () Bool)

(declare-fun e!360927 () Bool)

(assert (=> b!631280 (= e!360926 e!360927)))

(declare-fun lt!291712 () (_ BitVec 64))

(assert (=> b!631280 (= lt!291712 (select (arr!18265 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!291713 () Unit!21206)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38069 (_ BitVec 64) (_ BitVec 32)) Unit!21206)

(assert (=> b!631280 (= lt!291713 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!291712 #b00000000000000000000000000000000))))

(assert (=> b!631280 (arrayContainsKey!0 a!2986 lt!291712 #b00000000000000000000000000000000)))

(declare-fun lt!291714 () Unit!21206)

(assert (=> b!631280 (= lt!291714 lt!291713)))

(declare-fun res!408322 () Bool)

(assert (=> b!631280 (= res!408322 (= (seekEntryOrOpen!0 (select (arr!18265 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6712 #b00000000000000000000000000000000)))))

(assert (=> b!631280 (=> (not res!408322) (not e!360927))))

(declare-fun b!631281 () Bool)

(declare-fun e!360928 () Bool)

(assert (=> b!631281 (= e!360928 e!360926)))

(declare-fun c!71846 () Bool)

(assert (=> b!631281 (= c!71846 (validKeyInArray!0 (select (arr!18265 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!631282 () Bool)

(declare-fun call!33326 () Bool)

(assert (=> b!631282 (= e!360927 call!33326)))

(declare-fun b!631283 () Bool)

(assert (=> b!631283 (= e!360926 call!33326)))

(declare-fun bm!33323 () Bool)

(assert (=> bm!33323 (= call!33326 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!89193 () Bool)

(declare-fun res!408323 () Bool)

(assert (=> d!89193 (=> res!408323 e!360928)))

(assert (=> d!89193 (= res!408323 (bvsge #b00000000000000000000000000000000 (size!18629 a!2986)))))

(assert (=> d!89193 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!360928)))

(assert (= (and d!89193 (not res!408323)) b!631281))

(assert (= (and b!631281 c!71846) b!631280))

(assert (= (and b!631281 (not c!71846)) b!631283))

(assert (= (and b!631280 res!408322) b!631282))

(assert (= (or b!631282 b!631283) bm!33323))

(assert (=> b!631280 m!606255))

(declare-fun m!606271 () Bool)

(assert (=> b!631280 m!606271))

(declare-fun m!606273 () Bool)

(assert (=> b!631280 m!606273))

(assert (=> b!631280 m!606255))

(declare-fun m!606275 () Bool)

(assert (=> b!631280 m!606275))

(assert (=> b!631281 m!606255))

(assert (=> b!631281 m!606255))

(assert (=> b!631281 m!606259))

(declare-fun m!606277 () Bool)

(assert (=> bm!33323 m!606277))

(assert (=> b!631179 d!89193))

(declare-fun b!631284 () Bool)

(declare-fun e!360930 () SeekEntryResult!6712)

(assert (=> b!631284 (= e!360930 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!291664 lt!291666 mask!3053))))

(declare-fun b!631285 () Bool)

(declare-fun e!360929 () SeekEntryResult!6712)

(assert (=> b!631285 (= e!360929 (Found!6712 index!984))))

(declare-fun b!631286 () Bool)

(declare-fun e!360931 () SeekEntryResult!6712)

(assert (=> b!631286 (= e!360931 Undefined!6712)))

(declare-fun b!631287 () Bool)

(declare-fun c!71847 () Bool)

(declare-fun lt!291715 () (_ BitVec 64))

(assert (=> b!631287 (= c!71847 (= lt!291715 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631287 (= e!360929 e!360930)))

(declare-fun b!631288 () Bool)

(assert (=> b!631288 (= e!360931 e!360929)))

(declare-fun c!71849 () Bool)

(assert (=> b!631288 (= c!71849 (= lt!291715 lt!291664))))

(declare-fun d!89197 () Bool)

(declare-fun lt!291716 () SeekEntryResult!6712)

(assert (=> d!89197 (and (or ((_ is Undefined!6712) lt!291716) (not ((_ is Found!6712) lt!291716)) (and (bvsge (index!29138 lt!291716) #b00000000000000000000000000000000) (bvslt (index!29138 lt!291716) (size!18629 lt!291666)))) (or ((_ is Undefined!6712) lt!291716) ((_ is Found!6712) lt!291716) (not ((_ is MissingVacant!6712) lt!291716)) (not (= (index!29140 lt!291716) vacantSpotIndex!68)) (and (bvsge (index!29140 lt!291716) #b00000000000000000000000000000000) (bvslt (index!29140 lt!291716) (size!18629 lt!291666)))) (or ((_ is Undefined!6712) lt!291716) (ite ((_ is Found!6712) lt!291716) (= (select (arr!18265 lt!291666) (index!29138 lt!291716)) lt!291664) (and ((_ is MissingVacant!6712) lt!291716) (= (index!29140 lt!291716) vacantSpotIndex!68) (= (select (arr!18265 lt!291666) (index!29140 lt!291716)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89197 (= lt!291716 e!360931)))

(declare-fun c!71848 () Bool)

(assert (=> d!89197 (= c!71848 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89197 (= lt!291715 (select (arr!18265 lt!291666) index!984))))

(assert (=> d!89197 (validMask!0 mask!3053)))

(assert (=> d!89197 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291664 lt!291666 mask!3053) lt!291716)))

(declare-fun b!631289 () Bool)

(assert (=> b!631289 (= e!360930 (MissingVacant!6712 vacantSpotIndex!68))))

(assert (= (and d!89197 c!71848) b!631286))

(assert (= (and d!89197 (not c!71848)) b!631288))

(assert (= (and b!631288 c!71849) b!631285))

(assert (= (and b!631288 (not c!71849)) b!631287))

(assert (= (and b!631287 c!71847) b!631289))

(assert (= (and b!631287 (not c!71847)) b!631284))

(assert (=> b!631284 m!606173))

(assert (=> b!631284 m!606173))

(declare-fun m!606279 () Bool)

(assert (=> b!631284 m!606279))

(declare-fun m!606281 () Bool)

(assert (=> d!89197 m!606281))

(declare-fun m!606283 () Bool)

(assert (=> d!89197 m!606283))

(declare-fun m!606285 () Bool)

(assert (=> d!89197 m!606285))

(assert (=> d!89197 m!606209))

(assert (=> b!631185 d!89197))

(declare-fun e!360933 () SeekEntryResult!6712)

(declare-fun b!631290 () Bool)

(assert (=> b!631290 (= e!360933 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!291665 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!291664 lt!291666 mask!3053))))

(declare-fun b!631291 () Bool)

(declare-fun e!360932 () SeekEntryResult!6712)

(assert (=> b!631291 (= e!360932 (Found!6712 lt!291665))))

(declare-fun b!631292 () Bool)

(declare-fun e!360934 () SeekEntryResult!6712)

(assert (=> b!631292 (= e!360934 Undefined!6712)))

(declare-fun b!631293 () Bool)

(declare-fun c!71850 () Bool)

(declare-fun lt!291717 () (_ BitVec 64))

(assert (=> b!631293 (= c!71850 (= lt!291717 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631293 (= e!360932 e!360933)))

(declare-fun b!631294 () Bool)

(assert (=> b!631294 (= e!360934 e!360932)))

(declare-fun c!71852 () Bool)

(assert (=> b!631294 (= c!71852 (= lt!291717 lt!291664))))

(declare-fun lt!291718 () SeekEntryResult!6712)

(declare-fun d!89199 () Bool)

(assert (=> d!89199 (and (or ((_ is Undefined!6712) lt!291718) (not ((_ is Found!6712) lt!291718)) (and (bvsge (index!29138 lt!291718) #b00000000000000000000000000000000) (bvslt (index!29138 lt!291718) (size!18629 lt!291666)))) (or ((_ is Undefined!6712) lt!291718) ((_ is Found!6712) lt!291718) (not ((_ is MissingVacant!6712) lt!291718)) (not (= (index!29140 lt!291718) vacantSpotIndex!68)) (and (bvsge (index!29140 lt!291718) #b00000000000000000000000000000000) (bvslt (index!29140 lt!291718) (size!18629 lt!291666)))) (or ((_ is Undefined!6712) lt!291718) (ite ((_ is Found!6712) lt!291718) (= (select (arr!18265 lt!291666) (index!29138 lt!291718)) lt!291664) (and ((_ is MissingVacant!6712) lt!291718) (= (index!29140 lt!291718) vacantSpotIndex!68) (= (select (arr!18265 lt!291666) (index!29140 lt!291718)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89199 (= lt!291718 e!360934)))

(declare-fun c!71851 () Bool)

(assert (=> d!89199 (= c!71851 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89199 (= lt!291717 (select (arr!18265 lt!291666) lt!291665))))

(assert (=> d!89199 (validMask!0 mask!3053)))

(assert (=> d!89199 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291665 vacantSpotIndex!68 lt!291664 lt!291666 mask!3053) lt!291718)))

(declare-fun b!631295 () Bool)

(assert (=> b!631295 (= e!360933 (MissingVacant!6712 vacantSpotIndex!68))))

(assert (= (and d!89199 c!71851) b!631292))

(assert (= (and d!89199 (not c!71851)) b!631294))

(assert (= (and b!631294 c!71852) b!631291))

(assert (= (and b!631294 (not c!71852)) b!631293))

(assert (= (and b!631293 c!71850) b!631295))

(assert (= (and b!631293 (not c!71850)) b!631290))

(declare-fun m!606287 () Bool)

(assert (=> b!631290 m!606287))

(assert (=> b!631290 m!606287))

(declare-fun m!606289 () Bool)

(assert (=> b!631290 m!606289))

(declare-fun m!606291 () Bool)

(assert (=> d!89199 m!606291))

(declare-fun m!606293 () Bool)

(assert (=> d!89199 m!606293))

(declare-fun m!606295 () Bool)

(assert (=> d!89199 m!606295))

(assert (=> d!89199 m!606209))

(assert (=> b!631185 d!89199))

(declare-fun d!89201 () Bool)

(declare-fun lt!291721 () (_ BitVec 32))

(assert (=> d!89201 (and (bvsge lt!291721 #b00000000000000000000000000000000) (bvslt lt!291721 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89201 (= lt!291721 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!89201 (validMask!0 mask!3053)))

(assert (=> d!89201 (= (nextIndex!0 index!984 x!910 mask!3053) lt!291721)))

(declare-fun bs!19022 () Bool)

(assert (= bs!19022 d!89201))

(declare-fun m!606297 () Bool)

(assert (=> bs!19022 m!606297))

(assert (=> bs!19022 m!606209))

(assert (=> b!631185 d!89201))

(declare-fun d!89205 () Bool)

(declare-fun e!360949 () Bool)

(assert (=> d!89205 e!360949))

(declare-fun res!408332 () Bool)

(assert (=> d!89205 (=> (not res!408332) (not e!360949))))

(assert (=> d!89205 (= res!408332 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18629 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18629 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18629 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18629 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18629 a!2986))))))

(declare-fun lt!291730 () Unit!21206)

(declare-fun choose!9 (array!38069 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21206)

(assert (=> d!89205 (= lt!291730 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291665 vacantSpotIndex!68 mask!3053))))

(assert (=> d!89205 (validMask!0 mask!3053)))

(assert (=> d!89205 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291665 vacantSpotIndex!68 mask!3053) lt!291730)))

(declare-fun b!631316 () Bool)

(assert (=> b!631316 (= e!360949 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291665 vacantSpotIndex!68 (select (arr!18265 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291665 vacantSpotIndex!68 (select (store (arr!18265 a!2986) i!1108 k0!1786) j!136) (array!38070 (store (arr!18265 a!2986) i!1108 k0!1786) (size!18629 a!2986)) mask!3053)))))

(assert (= (and d!89205 res!408332) b!631316))

(declare-fun m!606303 () Bool)

(assert (=> d!89205 m!606303))

(assert (=> d!89205 m!606209))

(assert (=> b!631316 m!606179))

(assert (=> b!631316 m!606175))

(declare-fun m!606305 () Bool)

(assert (=> b!631316 m!606305))

(assert (=> b!631316 m!606177))

(assert (=> b!631316 m!606183))

(assert (=> b!631316 m!606177))

(assert (=> b!631316 m!606175))

(assert (=> b!631185 d!89205))

(declare-fun e!360951 () SeekEntryResult!6712)

(declare-fun b!631317 () Bool)

(assert (=> b!631317 (= e!360951 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!291665 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!18265 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631318 () Bool)

(declare-fun e!360950 () SeekEntryResult!6712)

(assert (=> b!631318 (= e!360950 (Found!6712 lt!291665))))

(declare-fun b!631319 () Bool)

(declare-fun e!360952 () SeekEntryResult!6712)

(assert (=> b!631319 (= e!360952 Undefined!6712)))

(declare-fun b!631320 () Bool)

(declare-fun c!71859 () Bool)

(declare-fun lt!291731 () (_ BitVec 64))

(assert (=> b!631320 (= c!71859 (= lt!291731 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631320 (= e!360950 e!360951)))

(declare-fun b!631321 () Bool)

(assert (=> b!631321 (= e!360952 e!360950)))

(declare-fun c!71861 () Bool)

(assert (=> b!631321 (= c!71861 (= lt!291731 (select (arr!18265 a!2986) j!136)))))

(declare-fun d!89209 () Bool)

(declare-fun lt!291732 () SeekEntryResult!6712)

(assert (=> d!89209 (and (or ((_ is Undefined!6712) lt!291732) (not ((_ is Found!6712) lt!291732)) (and (bvsge (index!29138 lt!291732) #b00000000000000000000000000000000) (bvslt (index!29138 lt!291732) (size!18629 a!2986)))) (or ((_ is Undefined!6712) lt!291732) ((_ is Found!6712) lt!291732) (not ((_ is MissingVacant!6712) lt!291732)) (not (= (index!29140 lt!291732) vacantSpotIndex!68)) (and (bvsge (index!29140 lt!291732) #b00000000000000000000000000000000) (bvslt (index!29140 lt!291732) (size!18629 a!2986)))) (or ((_ is Undefined!6712) lt!291732) (ite ((_ is Found!6712) lt!291732) (= (select (arr!18265 a!2986) (index!29138 lt!291732)) (select (arr!18265 a!2986) j!136)) (and ((_ is MissingVacant!6712) lt!291732) (= (index!29140 lt!291732) vacantSpotIndex!68) (= (select (arr!18265 a!2986) (index!29140 lt!291732)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89209 (= lt!291732 e!360952)))

(declare-fun c!71860 () Bool)

(assert (=> d!89209 (= c!71860 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!89209 (= lt!291731 (select (arr!18265 a!2986) lt!291665))))

(assert (=> d!89209 (validMask!0 mask!3053)))

(assert (=> d!89209 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291665 vacantSpotIndex!68 (select (arr!18265 a!2986) j!136) a!2986 mask!3053) lt!291732)))

(declare-fun b!631322 () Bool)

(assert (=> b!631322 (= e!360951 (MissingVacant!6712 vacantSpotIndex!68))))

(assert (= (and d!89209 c!71860) b!631319))

(assert (= (and d!89209 (not c!71860)) b!631321))

(assert (= (and b!631321 c!71861) b!631318))

(assert (= (and b!631321 (not c!71861)) b!631320))

(assert (= (and b!631320 c!71859) b!631322))

(assert (= (and b!631320 (not c!71859)) b!631317))

(assert (=> b!631317 m!606287))

(assert (=> b!631317 m!606287))

(assert (=> b!631317 m!606177))

(declare-fun m!606307 () Bool)

(assert (=> b!631317 m!606307))

(declare-fun m!606309 () Bool)

(assert (=> d!89209 m!606309))

(declare-fun m!606311 () Bool)

(assert (=> d!89209 m!606311))

(declare-fun m!606313 () Bool)

(assert (=> d!89209 m!606313))

(assert (=> d!89209 m!606209))

(assert (=> b!631185 d!89209))

(declare-fun d!89211 () Bool)

(assert (=> d!89211 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!631183 d!89211))

(declare-fun b!631371 () Bool)

(declare-fun c!71886 () Bool)

(declare-fun lt!291757 () (_ BitVec 64))

(assert (=> b!631371 (= c!71886 (= lt!291757 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!360979 () SeekEntryResult!6712)

(declare-fun e!360977 () SeekEntryResult!6712)

(assert (=> b!631371 (= e!360979 e!360977)))

(declare-fun d!89213 () Bool)

(declare-fun lt!291755 () SeekEntryResult!6712)

(assert (=> d!89213 (and (or ((_ is Undefined!6712) lt!291755) (not ((_ is Found!6712) lt!291755)) (and (bvsge (index!29138 lt!291755) #b00000000000000000000000000000000) (bvslt (index!29138 lt!291755) (size!18629 a!2986)))) (or ((_ is Undefined!6712) lt!291755) ((_ is Found!6712) lt!291755) (not ((_ is MissingZero!6712) lt!291755)) (and (bvsge (index!29137 lt!291755) #b00000000000000000000000000000000) (bvslt (index!29137 lt!291755) (size!18629 a!2986)))) (or ((_ is Undefined!6712) lt!291755) ((_ is Found!6712) lt!291755) ((_ is MissingZero!6712) lt!291755) (not ((_ is MissingVacant!6712) lt!291755)) (and (bvsge (index!29140 lt!291755) #b00000000000000000000000000000000) (bvslt (index!29140 lt!291755) (size!18629 a!2986)))) (or ((_ is Undefined!6712) lt!291755) (ite ((_ is Found!6712) lt!291755) (= (select (arr!18265 a!2986) (index!29138 lt!291755)) k0!1786) (ite ((_ is MissingZero!6712) lt!291755) (= (select (arr!18265 a!2986) (index!29137 lt!291755)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6712) lt!291755) (= (select (arr!18265 a!2986) (index!29140 lt!291755)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!360978 () SeekEntryResult!6712)

(assert (=> d!89213 (= lt!291755 e!360978)))

(declare-fun c!71888 () Bool)

(declare-fun lt!291756 () SeekEntryResult!6712)

(assert (=> d!89213 (= c!71888 (and ((_ is Intermediate!6712) lt!291756) (undefined!7524 lt!291756)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38069 (_ BitVec 32)) SeekEntryResult!6712)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!89213 (= lt!291756 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!89213 (validMask!0 mask!3053)))

(assert (=> d!89213 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!291755)))

(declare-fun b!631372 () Bool)

(assert (=> b!631372 (= e!360978 e!360979)))

(assert (=> b!631372 (= lt!291757 (select (arr!18265 a!2986) (index!29139 lt!291756)))))

(declare-fun c!71887 () Bool)

(assert (=> b!631372 (= c!71887 (= lt!291757 k0!1786))))

(declare-fun b!631373 () Bool)

(assert (=> b!631373 (= e!360978 Undefined!6712)))

(declare-fun b!631374 () Bool)

(assert (=> b!631374 (= e!360977 (MissingZero!6712 (index!29139 lt!291756)))))

(declare-fun b!631375 () Bool)

(assert (=> b!631375 (= e!360977 (seekKeyOrZeroReturnVacant!0 (x!57899 lt!291756) (index!29139 lt!291756) (index!29139 lt!291756) k0!1786 a!2986 mask!3053))))

(declare-fun b!631376 () Bool)

(assert (=> b!631376 (= e!360979 (Found!6712 (index!29139 lt!291756)))))

(assert (= (and d!89213 c!71888) b!631373))

(assert (= (and d!89213 (not c!71888)) b!631372))

(assert (= (and b!631372 c!71887) b!631376))

(assert (= (and b!631372 (not c!71887)) b!631371))

(assert (= (and b!631371 c!71886) b!631374))

(assert (= (and b!631371 (not c!71886)) b!631375))

(declare-fun m!606343 () Bool)

(assert (=> d!89213 m!606343))

(declare-fun m!606345 () Bool)

(assert (=> d!89213 m!606345))

(declare-fun m!606347 () Bool)

(assert (=> d!89213 m!606347))

(declare-fun m!606349 () Bool)

(assert (=> d!89213 m!606349))

(assert (=> d!89213 m!606349))

(declare-fun m!606351 () Bool)

(assert (=> d!89213 m!606351))

(assert (=> d!89213 m!606209))

(declare-fun m!606353 () Bool)

(assert (=> b!631372 m!606353))

(declare-fun m!606355 () Bool)

(assert (=> b!631375 m!606355))

(assert (=> b!631189 d!89213))

(declare-fun d!89225 () Bool)

(assert (=> d!89225 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57032 d!89225))

(declare-fun d!89231 () Bool)

(assert (=> d!89231 (= (array_inv!14039 a!2986) (bvsge (size!18629 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57032 d!89231))

(check-sat (not b!631253) (not b!631281) (not b!631317) (not d!89213) (not b!631284) (not b!631290) (not d!89197) (not b!631316) (not b!631246) (not d!89209) (not d!89199) (not b!631247) (not b!631280) (not bm!33320) (not b!631245) (not d!89205) (not d!89189) (not bm!33323) (not d!89201) (not b!631266) (not b!631375))
(check-sat)
