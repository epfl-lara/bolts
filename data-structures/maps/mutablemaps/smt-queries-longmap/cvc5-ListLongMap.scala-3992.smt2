; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54150 () Bool)

(assert start!54150)

(declare-fun b!590982 () Bool)

(declare-fun e!337437 () Bool)

(declare-datatypes ((SeekEntryResult!6135 0))(
  ( (MissingZero!6135 (index!26775 (_ BitVec 32))) (Found!6135 (index!26776 (_ BitVec 32))) (Intermediate!6135 (undefined!6947 Bool) (index!26777 (_ BitVec 32)) (x!55600 (_ BitVec 32))) (Undefined!6135) (MissingVacant!6135 (index!26778 (_ BitVec 32))) )
))
(declare-fun lt!268185 () SeekEntryResult!6135)

(declare-fun lt!268183 () SeekEntryResult!6135)

(assert (=> b!590982 (= e!337437 (= lt!268185 lt!268183))))

(declare-fun b!590983 () Bool)

(declare-fun res!378140 () Bool)

(declare-fun e!337433 () Bool)

(assert (=> b!590983 (=> (not res!378140) (not e!337433))))

(declare-datatypes ((array!36843 0))(
  ( (array!36844 (arr!17688 (Array (_ BitVec 32) (_ BitVec 64))) (size!18052 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36843)

(declare-datatypes ((List!11782 0))(
  ( (Nil!11779) (Cons!11778 (h!12823 (_ BitVec 64)) (t!18018 List!11782)) )
))
(declare-fun arrayNoDuplicates!0 (array!36843 (_ BitVec 32) List!11782) Bool)

(assert (=> b!590983 (= res!378140 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11779))))

(declare-fun b!590984 () Bool)

(declare-fun e!337435 () Bool)

(declare-fun e!337434 () Bool)

(assert (=> b!590984 (= e!337435 e!337434)))

(declare-fun res!378129 () Bool)

(assert (=> b!590984 (=> (not res!378129) (not e!337434))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!590984 (= res!378129 (and (= lt!268185 (Found!6135 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17688 a!2986) index!984) (select (arr!17688 a!2986) j!136))) (not (= (select (arr!17688 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36843 (_ BitVec 32)) SeekEntryResult!6135)

(assert (=> b!590984 (= lt!268185 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17688 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!590985 () Bool)

(declare-fun res!378128 () Bool)

(declare-fun e!337432 () Bool)

(assert (=> b!590985 (=> (not res!378128) (not e!337432))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!590985 (= res!378128 (validKeyInArray!0 (select (arr!17688 a!2986) j!136)))))

(declare-fun b!590986 () Bool)

(declare-fun e!337436 () Bool)

(assert (=> b!590986 (= e!337434 (not e!337436))))

(declare-fun res!378133 () Bool)

(assert (=> b!590986 (=> res!378133 e!337436)))

(declare-fun lt!268184 () SeekEntryResult!6135)

(assert (=> b!590986 (= res!378133 (not (= lt!268184 (Found!6135 index!984))))))

(declare-datatypes ((Unit!18484 0))(
  ( (Unit!18485) )
))
(declare-fun lt!268186 () Unit!18484)

(declare-fun e!337440 () Unit!18484)

(assert (=> b!590986 (= lt!268186 e!337440)))

(declare-fun c!66794 () Bool)

(assert (=> b!590986 (= c!66794 (= lt!268184 Undefined!6135))))

(declare-fun lt!268188 () array!36843)

(declare-fun lt!268191 () (_ BitVec 64))

(assert (=> b!590986 (= lt!268184 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!268191 lt!268188 mask!3053))))

(assert (=> b!590986 e!337437))

(declare-fun res!378136 () Bool)

(assert (=> b!590986 (=> (not res!378136) (not e!337437))))

(declare-fun lt!268189 () (_ BitVec 32))

(assert (=> b!590986 (= res!378136 (= lt!268183 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268189 vacantSpotIndex!68 lt!268191 lt!268188 mask!3053)))))

(assert (=> b!590986 (= lt!268183 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!268189 vacantSpotIndex!68 (select (arr!17688 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!590986 (= lt!268191 (select (store (arr!17688 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!268190 () Unit!18484)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36843 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18484)

(assert (=> b!590986 (= lt!268190 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!268189 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!590986 (= lt!268189 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!590987 () Bool)

(declare-fun res!378139 () Bool)

(assert (=> b!590987 (=> (not res!378139) (not e!337433))))

(assert (=> b!590987 (= res!378139 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17688 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!590988 () Bool)

(declare-fun res!378141 () Bool)

(assert (=> b!590988 (=> (not res!378141) (not e!337432))))

(declare-fun arrayContainsKey!0 (array!36843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!590988 (= res!378141 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!590989 () Bool)

(declare-fun res!378131 () Bool)

(assert (=> b!590989 (=> (not res!378131) (not e!337433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36843 (_ BitVec 32)) Bool)

(assert (=> b!590989 (= res!378131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!590990 () Bool)

(declare-fun e!337439 () Bool)

(declare-fun e!337431 () Bool)

(assert (=> b!590990 (= e!337439 e!337431)))

(declare-fun res!378130 () Bool)

(assert (=> b!590990 (=> (not res!378130) (not e!337431))))

(assert (=> b!590990 (= res!378130 (arrayContainsKey!0 lt!268188 (select (arr!17688 a!2986) j!136) j!136))))

(declare-fun b!590991 () Bool)

(declare-fun Unit!18486 () Unit!18484)

(assert (=> b!590991 (= e!337440 Unit!18486)))

(declare-fun b!590992 () Bool)

(assert (=> b!590992 (= e!337432 e!337433)))

(declare-fun res!378138 () Bool)

(assert (=> b!590992 (=> (not res!378138) (not e!337433))))

(declare-fun lt!268187 () SeekEntryResult!6135)

(assert (=> b!590992 (= res!378138 (or (= lt!268187 (MissingZero!6135 i!1108)) (= lt!268187 (MissingVacant!6135 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36843 (_ BitVec 32)) SeekEntryResult!6135)

(assert (=> b!590992 (= lt!268187 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!590993 () Bool)

(assert (=> b!590993 (= e!337431 (arrayContainsKey!0 lt!268188 (select (arr!17688 a!2986) j!136) index!984))))

(declare-fun b!590994 () Bool)

(declare-fun Unit!18487 () Unit!18484)

(assert (=> b!590994 (= e!337440 Unit!18487)))

(assert (=> b!590994 false))

(declare-fun b!590995 () Bool)

(declare-fun e!337438 () Bool)

(assert (=> b!590995 (= e!337438 e!337439)))

(declare-fun res!378142 () Bool)

(assert (=> b!590995 (=> res!378142 e!337439)))

(declare-fun lt!268182 () (_ BitVec 64))

(assert (=> b!590995 (= res!378142 (or (not (= (select (arr!17688 a!2986) j!136) lt!268191)) (not (= (select (arr!17688 a!2986) j!136) lt!268182)) (bvsge j!136 index!984)))))

(declare-fun b!590996 () Bool)

(declare-fun res!378137 () Bool)

(assert (=> b!590996 (=> (not res!378137) (not e!337432))))

(assert (=> b!590996 (= res!378137 (and (= (size!18052 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18052 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18052 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!590997 () Bool)

(assert (=> b!590997 (= e!337436 true)))

(assert (=> b!590997 e!337438))

(declare-fun res!378143 () Bool)

(assert (=> b!590997 (=> (not res!378143) (not e!337438))))

(assert (=> b!590997 (= res!378143 (= lt!268182 (select (arr!17688 a!2986) j!136)))))

(assert (=> b!590997 (= lt!268182 (select (store (arr!17688 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!590998 () Bool)

(assert (=> b!590998 (= e!337433 e!337435)))

(declare-fun res!378135 () Bool)

(assert (=> b!590998 (=> (not res!378135) (not e!337435))))

(assert (=> b!590998 (= res!378135 (= (select (store (arr!17688 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!590998 (= lt!268188 (array!36844 (store (arr!17688 a!2986) i!1108 k!1786) (size!18052 a!2986)))))

(declare-fun b!590999 () Bool)

(declare-fun res!378134 () Bool)

(assert (=> b!590999 (=> (not res!378134) (not e!337432))))

(assert (=> b!590999 (= res!378134 (validKeyInArray!0 k!1786))))

(declare-fun res!378132 () Bool)

(assert (=> start!54150 (=> (not res!378132) (not e!337432))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54150 (= res!378132 (validMask!0 mask!3053))))

(assert (=> start!54150 e!337432))

(assert (=> start!54150 true))

(declare-fun array_inv!13462 (array!36843) Bool)

(assert (=> start!54150 (array_inv!13462 a!2986)))

(assert (= (and start!54150 res!378132) b!590996))

(assert (= (and b!590996 res!378137) b!590985))

(assert (= (and b!590985 res!378128) b!590999))

(assert (= (and b!590999 res!378134) b!590988))

(assert (= (and b!590988 res!378141) b!590992))

(assert (= (and b!590992 res!378138) b!590989))

(assert (= (and b!590989 res!378131) b!590983))

(assert (= (and b!590983 res!378140) b!590987))

(assert (= (and b!590987 res!378139) b!590998))

(assert (= (and b!590998 res!378135) b!590984))

(assert (= (and b!590984 res!378129) b!590986))

(assert (= (and b!590986 res!378136) b!590982))

(assert (= (and b!590986 c!66794) b!590994))

(assert (= (and b!590986 (not c!66794)) b!590991))

(assert (= (and b!590986 (not res!378133)) b!590997))

(assert (= (and b!590997 res!378143) b!590995))

(assert (= (and b!590995 (not res!378142)) b!590990))

(assert (= (and b!590990 res!378130) b!590993))

(declare-fun m!569301 () Bool)

(assert (=> b!590990 m!569301))

(assert (=> b!590990 m!569301))

(declare-fun m!569303 () Bool)

(assert (=> b!590990 m!569303))

(assert (=> b!590985 m!569301))

(assert (=> b!590985 m!569301))

(declare-fun m!569305 () Bool)

(assert (=> b!590985 m!569305))

(declare-fun m!569307 () Bool)

(assert (=> b!590988 m!569307))

(declare-fun m!569309 () Bool)

(assert (=> b!590989 m!569309))

(assert (=> b!590995 m!569301))

(declare-fun m!569311 () Bool)

(assert (=> b!590998 m!569311))

(declare-fun m!569313 () Bool)

(assert (=> b!590998 m!569313))

(declare-fun m!569315 () Bool)

(assert (=> b!590987 m!569315))

(declare-fun m!569317 () Bool)

(assert (=> b!590983 m!569317))

(assert (=> b!590993 m!569301))

(assert (=> b!590993 m!569301))

(declare-fun m!569319 () Bool)

(assert (=> b!590993 m!569319))

(declare-fun m!569321 () Bool)

(assert (=> b!590984 m!569321))

(assert (=> b!590984 m!569301))

(assert (=> b!590984 m!569301))

(declare-fun m!569323 () Bool)

(assert (=> b!590984 m!569323))

(declare-fun m!569325 () Bool)

(assert (=> b!590992 m!569325))

(declare-fun m!569327 () Bool)

(assert (=> b!590999 m!569327))

(declare-fun m!569329 () Bool)

(assert (=> b!590986 m!569329))

(declare-fun m!569331 () Bool)

(assert (=> b!590986 m!569331))

(assert (=> b!590986 m!569301))

(declare-fun m!569333 () Bool)

(assert (=> b!590986 m!569333))

(assert (=> b!590986 m!569301))

(assert (=> b!590986 m!569311))

(declare-fun m!569335 () Bool)

(assert (=> b!590986 m!569335))

(declare-fun m!569337 () Bool)

(assert (=> b!590986 m!569337))

(declare-fun m!569339 () Bool)

(assert (=> b!590986 m!569339))

(declare-fun m!569341 () Bool)

(assert (=> start!54150 m!569341))

(declare-fun m!569343 () Bool)

(assert (=> start!54150 m!569343))

(assert (=> b!590997 m!569301))

(assert (=> b!590997 m!569311))

(declare-fun m!569345 () Bool)

(assert (=> b!590997 m!569345))

(push 1)

