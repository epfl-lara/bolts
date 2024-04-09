; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55710 () Bool)

(assert start!55710)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun e!349578 () Bool)

(declare-fun b!610233 () Bool)

(declare-datatypes ((array!37323 0))(
  ( (array!37324 (arr!17907 (Array (_ BitVec 32) (_ BitVec 64))) (size!18271 (_ BitVec 32))) )
))
(declare-fun lt!279161 () array!37323)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37323)

(declare-fun arrayContainsKey!0 (array!37323 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!610233 (= e!349578 (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) index!984))))

(declare-fun b!610234 () Bool)

(declare-fun res!392627 () Bool)

(declare-fun e!349575 () Bool)

(assert (=> b!610234 (=> (not res!392627) (not e!349575))))

(declare-datatypes ((List!12001 0))(
  ( (Nil!11998) (Cons!11997 (h!13042 (_ BitVec 64)) (t!18237 List!12001)) )
))
(declare-fun arrayNoDuplicates!0 (array!37323 (_ BitVec 32) List!12001) Bool)

(assert (=> b!610234 (= res!392627 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11998))))

(declare-fun b!610235 () Bool)

(declare-fun e!349584 () Bool)

(declare-fun e!349579 () Bool)

(assert (=> b!610235 (= e!349584 e!349579)))

(declare-fun res!392624 () Bool)

(assert (=> b!610235 (=> res!392624 e!349579)))

(declare-fun lt!279169 () (_ BitVec 64))

(declare-fun lt!279160 () (_ BitVec 64))

(assert (=> b!610235 (= res!392624 (or (not (= (select (arr!17907 a!2986) j!136) lt!279160)) (not (= (select (arr!17907 a!2986) j!136) lt!279169)) (bvsge j!136 index!984)))))

(declare-fun b!610236 () Bool)

(declare-fun e!349576 () Bool)

(declare-datatypes ((SeekEntryResult!6354 0))(
  ( (MissingZero!6354 (index!27693 (_ BitVec 32))) (Found!6354 (index!27694 (_ BitVec 32))) (Intermediate!6354 (undefined!7166 Bool) (index!27695 (_ BitVec 32)) (x!56529 (_ BitVec 32))) (Undefined!6354) (MissingVacant!6354 (index!27696 (_ BitVec 32))) )
))
(declare-fun lt!279167 () SeekEntryResult!6354)

(declare-fun lt!279170 () SeekEntryResult!6354)

(assert (=> b!610236 (= e!349576 (= lt!279167 lt!279170))))

(declare-fun b!610237 () Bool)

(declare-fun e!349583 () Bool)

(declare-fun e!349585 () Bool)

(assert (=> b!610237 (= e!349583 e!349585)))

(declare-fun res!392613 () Bool)

(assert (=> b!610237 (=> res!392613 e!349585)))

(assert (=> b!610237 (= res!392613 (or (bvsgt #b00000000000000000000000000000000 (size!18271 a!2986)) (bvsge (size!18271 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!610237 (arrayNoDuplicates!0 lt!279161 #b00000000000000000000000000000000 Nil!11998)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((Unit!19552 0))(
  ( (Unit!19553) )
))
(declare-fun lt!279166 () Unit!19552)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37323 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12001) Unit!19552)

(assert (=> b!610237 (= lt!279166 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11998))))

(assert (=> b!610237 (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279165 () Unit!19552)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37323 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19552)

(assert (=> b!610237 (= lt!279165 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279161 (select (arr!17907 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!349573 () Bool)

(assert (=> b!610237 e!349573))

(declare-fun res!392614 () Bool)

(assert (=> b!610237 (=> (not res!392614) (not e!349573))))

(assert (=> b!610237 (= res!392614 (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) j!136))))

(declare-fun b!610238 () Bool)

(declare-fun e!349581 () Unit!19552)

(declare-fun Unit!19554 () Unit!19552)

(assert (=> b!610238 (= e!349581 Unit!19554)))

(declare-fun lt!279163 () Unit!19552)

(assert (=> b!610238 (= lt!279163 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279161 (select (arr!17907 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!610238 (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279159 () Unit!19552)

(assert (=> b!610238 (= lt!279159 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11998))))

(assert (=> b!610238 (arrayNoDuplicates!0 lt!279161 #b00000000000000000000000000000000 Nil!11998)))

(declare-fun lt!279155 () Unit!19552)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37323 (_ BitVec 32) (_ BitVec 32)) Unit!19552)

(assert (=> b!610238 (= lt!279155 (lemmaNoDuplicateFromThenFromBigger!0 lt!279161 #b00000000000000000000000000000000 j!136))))

(assert (=> b!610238 (arrayNoDuplicates!0 lt!279161 j!136 Nil!11998)))

(declare-fun lt!279168 () Unit!19552)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37323 (_ BitVec 64) (_ BitVec 32) List!12001) Unit!19552)

(assert (=> b!610238 (= lt!279168 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279161 (select (arr!17907 a!2986) j!136) j!136 Nil!11998))))

(assert (=> b!610238 false))

(declare-fun b!610239 () Bool)

(declare-fun e!349587 () Unit!19552)

(declare-fun Unit!19555 () Unit!19552)

(assert (=> b!610239 (= e!349587 Unit!19555)))

(declare-fun b!610240 () Bool)

(declare-fun res!392618 () Bool)

(assert (=> b!610240 (=> (not res!392618) (not e!349575))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!610240 (= res!392618 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17907 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610241 () Bool)

(declare-fun e!349577 () Bool)

(assert (=> b!610241 (= e!349577 e!349583)))

(declare-fun res!392612 () Bool)

(assert (=> b!610241 (=> res!392612 e!349583)))

(assert (=> b!610241 (= res!392612 (bvsge index!984 j!136))))

(declare-fun lt!279171 () Unit!19552)

(assert (=> b!610241 (= lt!279171 e!349581)))

(declare-fun c!69179 () Bool)

(assert (=> b!610241 (= c!69179 (bvslt j!136 index!984))))

(declare-fun b!610242 () Bool)

(declare-fun e!349588 () Bool)

(assert (=> b!610242 (= e!349575 e!349588)))

(declare-fun res!392628 () Bool)

(assert (=> b!610242 (=> (not res!392628) (not e!349588))))

(assert (=> b!610242 (= res!392628 (= (select (store (arr!17907 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!610242 (= lt!279161 (array!37324 (store (arr!17907 a!2986) i!1108 k!1786) (size!18271 a!2986)))))

(declare-fun b!610243 () Bool)

(declare-fun noDuplicate!343 (List!12001) Bool)

(assert (=> b!610243 (= e!349585 (noDuplicate!343 Nil!11998))))

(declare-fun b!610245 () Bool)

(declare-fun res!392616 () Bool)

(declare-fun e!349574 () Bool)

(assert (=> b!610245 (=> (not res!392616) (not e!349574))))

(assert (=> b!610245 (= res!392616 (and (= (size!18271 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18271 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18271 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!610246 () Bool)

(declare-fun res!392619 () Bool)

(assert (=> b!610246 (=> (not res!392619) (not e!349574))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!610246 (= res!392619 (validKeyInArray!0 (select (arr!17907 a!2986) j!136)))))

(declare-fun b!610247 () Bool)

(declare-fun e!349582 () Bool)

(declare-fun e!349586 () Bool)

(assert (=> b!610247 (= e!349582 (not e!349586))))

(declare-fun res!392626 () Bool)

(assert (=> b!610247 (=> res!392626 e!349586)))

(declare-fun lt!279164 () SeekEntryResult!6354)

(assert (=> b!610247 (= res!392626 (not (= lt!279164 (Found!6354 index!984))))))

(declare-fun lt!279157 () Unit!19552)

(assert (=> b!610247 (= lt!279157 e!349587)))

(declare-fun c!69178 () Bool)

(assert (=> b!610247 (= c!69178 (= lt!279164 Undefined!6354))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37323 (_ BitVec 32)) SeekEntryResult!6354)

(assert (=> b!610247 (= lt!279164 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279160 lt!279161 mask!3053))))

(assert (=> b!610247 e!349576))

(declare-fun res!392621 () Bool)

(assert (=> b!610247 (=> (not res!392621) (not e!349576))))

(declare-fun lt!279158 () (_ BitVec 32))

(assert (=> b!610247 (= res!392621 (= lt!279170 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279158 vacantSpotIndex!68 lt!279160 lt!279161 mask!3053)))))

(assert (=> b!610247 (= lt!279170 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279158 vacantSpotIndex!68 (select (arr!17907 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!610247 (= lt!279160 (select (store (arr!17907 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!279162 () Unit!19552)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19552)

(assert (=> b!610247 (= lt!279162 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279158 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!610247 (= lt!279158 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!610248 () Bool)

(assert (=> b!610248 (= e!349586 e!349577)))

(declare-fun res!392620 () Bool)

(assert (=> b!610248 (=> res!392620 e!349577)))

(assert (=> b!610248 (= res!392620 (or (not (= (select (arr!17907 a!2986) j!136) lt!279160)) (not (= (select (arr!17907 a!2986) j!136) lt!279169))))))

(assert (=> b!610248 e!349584))

(declare-fun res!392615 () Bool)

(assert (=> b!610248 (=> (not res!392615) (not e!349584))))

(assert (=> b!610248 (= res!392615 (= lt!279169 (select (arr!17907 a!2986) j!136)))))

(assert (=> b!610248 (= lt!279169 (select (store (arr!17907 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!392630 () Bool)

(assert (=> start!55710 (=> (not res!392630) (not e!349574))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55710 (= res!392630 (validMask!0 mask!3053))))

(assert (=> start!55710 e!349574))

(assert (=> start!55710 true))

(declare-fun array_inv!13681 (array!37323) Bool)

(assert (=> start!55710 (array_inv!13681 a!2986)))

(declare-fun b!610244 () Bool)

(assert (=> b!610244 (= e!349579 e!349578)))

(declare-fun res!392625 () Bool)

(assert (=> b!610244 (=> (not res!392625) (not e!349578))))

(assert (=> b!610244 (= res!392625 (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) j!136))))

(declare-fun b!610249 () Bool)

(declare-fun res!392629 () Bool)

(assert (=> b!610249 (=> (not res!392629) (not e!349574))))

(assert (=> b!610249 (= res!392629 (validKeyInArray!0 k!1786))))

(declare-fun b!610250 () Bool)

(declare-fun res!392611 () Bool)

(assert (=> b!610250 (=> (not res!392611) (not e!349575))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37323 (_ BitVec 32)) Bool)

(assert (=> b!610250 (= res!392611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!610251 () Bool)

(declare-fun Unit!19556 () Unit!19552)

(assert (=> b!610251 (= e!349587 Unit!19556)))

(assert (=> b!610251 false))

(declare-fun b!610252 () Bool)

(declare-fun Unit!19557 () Unit!19552)

(assert (=> b!610252 (= e!349581 Unit!19557)))

(declare-fun b!610253 () Bool)

(assert (=> b!610253 (= e!349574 e!349575)))

(declare-fun res!392623 () Bool)

(assert (=> b!610253 (=> (not res!392623) (not e!349575))))

(declare-fun lt!279156 () SeekEntryResult!6354)

(assert (=> b!610253 (= res!392623 (or (= lt!279156 (MissingZero!6354 i!1108)) (= lt!279156 (MissingVacant!6354 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37323 (_ BitVec 32)) SeekEntryResult!6354)

(assert (=> b!610253 (= lt!279156 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!610254 () Bool)

(assert (=> b!610254 (= e!349588 e!349582)))

(declare-fun res!392622 () Bool)

(assert (=> b!610254 (=> (not res!392622) (not e!349582))))

(assert (=> b!610254 (= res!392622 (and (= lt!279167 (Found!6354 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17907 a!2986) index!984) (select (arr!17907 a!2986) j!136))) (not (= (select (arr!17907 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!610254 (= lt!279167 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17907 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610255 () Bool)

(assert (=> b!610255 (= e!349573 (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) index!984))))

(declare-fun b!610256 () Bool)

(declare-fun res!392617 () Bool)

(assert (=> b!610256 (=> (not res!392617) (not e!349574))))

(assert (=> b!610256 (= res!392617 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!55710 res!392630) b!610245))

(assert (= (and b!610245 res!392616) b!610246))

(assert (= (and b!610246 res!392619) b!610249))

(assert (= (and b!610249 res!392629) b!610256))

(assert (= (and b!610256 res!392617) b!610253))

(assert (= (and b!610253 res!392623) b!610250))

(assert (= (and b!610250 res!392611) b!610234))

(assert (= (and b!610234 res!392627) b!610240))

(assert (= (and b!610240 res!392618) b!610242))

(assert (= (and b!610242 res!392628) b!610254))

(assert (= (and b!610254 res!392622) b!610247))

(assert (= (and b!610247 res!392621) b!610236))

(assert (= (and b!610247 c!69178) b!610251))

(assert (= (and b!610247 (not c!69178)) b!610239))

(assert (= (and b!610247 (not res!392626)) b!610248))

(assert (= (and b!610248 res!392615) b!610235))

(assert (= (and b!610235 (not res!392624)) b!610244))

(assert (= (and b!610244 res!392625) b!610233))

(assert (= (and b!610248 (not res!392620)) b!610241))

(assert (= (and b!610241 c!69179) b!610238))

(assert (= (and b!610241 (not c!69179)) b!610252))

(assert (= (and b!610241 (not res!392612)) b!610237))

(assert (= (and b!610237 res!392614) b!610255))

(assert (= (and b!610237 (not res!392613)) b!610243))

(declare-fun m!586743 () Bool)

(assert (=> b!610243 m!586743))

(declare-fun m!586745 () Bool)

(assert (=> b!610234 m!586745))

(declare-fun m!586747 () Bool)

(assert (=> b!610242 m!586747))

(declare-fun m!586749 () Bool)

(assert (=> b!610242 m!586749))

(declare-fun m!586751 () Bool)

(assert (=> b!610249 m!586751))

(declare-fun m!586753 () Bool)

(assert (=> start!55710 m!586753))

(declare-fun m!586755 () Bool)

(assert (=> start!55710 m!586755))

(declare-fun m!586757 () Bool)

(assert (=> b!610246 m!586757))

(assert (=> b!610246 m!586757))

(declare-fun m!586759 () Bool)

(assert (=> b!610246 m!586759))

(assert (=> b!610233 m!586757))

(assert (=> b!610233 m!586757))

(declare-fun m!586761 () Bool)

(assert (=> b!610233 m!586761))

(assert (=> b!610247 m!586757))

(declare-fun m!586763 () Bool)

(assert (=> b!610247 m!586763))

(declare-fun m!586765 () Bool)

(assert (=> b!610247 m!586765))

(declare-fun m!586767 () Bool)

(assert (=> b!610247 m!586767))

(assert (=> b!610247 m!586757))

(declare-fun m!586769 () Bool)

(assert (=> b!610247 m!586769))

(declare-fun m!586771 () Bool)

(assert (=> b!610247 m!586771))

(declare-fun m!586773 () Bool)

(assert (=> b!610247 m!586773))

(assert (=> b!610247 m!586747))

(assert (=> b!610238 m!586757))

(assert (=> b!610238 m!586757))

(declare-fun m!586775 () Bool)

(assert (=> b!610238 m!586775))

(declare-fun m!586777 () Bool)

(assert (=> b!610238 m!586777))

(declare-fun m!586779 () Bool)

(assert (=> b!610238 m!586779))

(assert (=> b!610238 m!586757))

(declare-fun m!586781 () Bool)

(assert (=> b!610238 m!586781))

(declare-fun m!586783 () Bool)

(assert (=> b!610238 m!586783))

(declare-fun m!586785 () Bool)

(assert (=> b!610238 m!586785))

(assert (=> b!610238 m!586757))

(declare-fun m!586787 () Bool)

(assert (=> b!610238 m!586787))

(assert (=> b!610235 m!586757))

(declare-fun m!586789 () Bool)

(assert (=> b!610256 m!586789))

(declare-fun m!586791 () Bool)

(assert (=> b!610253 m!586791))

(assert (=> b!610244 m!586757))

(assert (=> b!610244 m!586757))

(declare-fun m!586793 () Bool)

(assert (=> b!610244 m!586793))

(assert (=> b!610248 m!586757))

(assert (=> b!610248 m!586747))

(declare-fun m!586795 () Bool)

(assert (=> b!610248 m!586795))

(declare-fun m!586797 () Bool)

(assert (=> b!610250 m!586797))

(declare-fun m!586799 () Bool)

(assert (=> b!610254 m!586799))

(assert (=> b!610254 m!586757))

(assert (=> b!610254 m!586757))

(declare-fun m!586801 () Bool)

(assert (=> b!610254 m!586801))

(assert (=> b!610237 m!586757))

(assert (=> b!610237 m!586757))

(assert (=> b!610237 m!586793))

(assert (=> b!610237 m!586785))

(assert (=> b!610237 m!586757))

(declare-fun m!586803 () Bool)

(assert (=> b!610237 m!586803))

(assert (=> b!610237 m!586757))

(declare-fun m!586805 () Bool)

(assert (=> b!610237 m!586805))

(assert (=> b!610237 m!586783))

(declare-fun m!586807 () Bool)

(assert (=> b!610240 m!586807))

(assert (=> b!610255 m!586757))

(assert (=> b!610255 m!586757))

(assert (=> b!610255 m!586761))

(push 1)

(assert (not b!610234))

(assert (not b!610247))

(assert (not b!610255))

(assert (not b!610243))

(assert (not b!610256))

(assert (not b!610233))

(assert (not b!610237))

(assert (not b!610254))

(assert (not b!610253))

(assert (not b!610249))

(assert (not start!55710))

(assert (not b!610246))

(assert (not b!610238))

(assert (not b!610250))

(assert (not b!610244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88139 () Bool)

(declare-fun e!349735 () Bool)

(assert (=> d!88139 e!349735))

(declare-fun res!392788 () Bool)

(assert (=> d!88139 (=> (not res!392788) (not e!349735))))

(assert (=> d!88139 (= res!392788 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18271 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18271 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18271 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18271 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18271 a!2986))))))

(declare-fun lt!279300 () Unit!19552)

(declare-fun choose!9 (array!37323 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19552)

(assert (=> d!88139 (= lt!279300 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279158 vacantSpotIndex!68 mask!3053))))

(assert (=> d!88139 (validMask!0 mask!3053)))

(assert (=> d!88139 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279158 vacantSpotIndex!68 mask!3053) lt!279300)))

(declare-fun b!610464 () Bool)

(assert (=> b!610464 (= e!349735 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279158 vacantSpotIndex!68 (select (arr!17907 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279158 vacantSpotIndex!68 (select (store (arr!17907 a!2986) i!1108 k!1786) j!136) (array!37324 (store (arr!17907 a!2986) i!1108 k!1786) (size!18271 a!2986)) mask!3053)))))

(assert (= (and d!88139 res!392788) b!610464))

(declare-fun m!586999 () Bool)

(assert (=> d!88139 m!586999))

(assert (=> d!88139 m!586753))

(assert (=> b!610464 m!586767))

(declare-fun m!587001 () Bool)

(assert (=> b!610464 m!587001))

(assert (=> b!610464 m!586757))

(assert (=> b!610464 m!586767))

(assert (=> b!610464 m!586757))

(assert (=> b!610464 m!586763))

(assert (=> b!610464 m!586747))

(assert (=> b!610247 d!88139))

(declare-fun b!610537 () Bool)

(declare-fun e!349774 () SeekEntryResult!6354)

(assert (=> b!610537 (= e!349774 (MissingVacant!6354 vacantSpotIndex!68))))

(declare-fun d!88151 () Bool)

(declare-fun lt!279328 () SeekEntryResult!6354)

(assert (=> d!88151 (and (or (is-Undefined!6354 lt!279328) (not (is-Found!6354 lt!279328)) (and (bvsge (index!27694 lt!279328) #b00000000000000000000000000000000) (bvslt (index!27694 lt!279328) (size!18271 lt!279161)))) (or (is-Undefined!6354 lt!279328) (is-Found!6354 lt!279328) (not (is-MissingVacant!6354 lt!279328)) (not (= (index!27696 lt!279328) vacantSpotIndex!68)) (and (bvsge (index!27696 lt!279328) #b00000000000000000000000000000000) (bvslt (index!27696 lt!279328) (size!18271 lt!279161)))) (or (is-Undefined!6354 lt!279328) (ite (is-Found!6354 lt!279328) (= (select (arr!17907 lt!279161) (index!27694 lt!279328)) lt!279160) (and (is-MissingVacant!6354 lt!279328) (= (index!27696 lt!279328) vacantSpotIndex!68) (= (select (arr!17907 lt!279161) (index!27696 lt!279328)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!349772 () SeekEntryResult!6354)

(assert (=> d!88151 (= lt!279328 e!349772)))

(declare-fun c!69243 () Bool)

(assert (=> d!88151 (= c!69243 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!279329 () (_ BitVec 64))

(assert (=> d!88151 (= lt!279329 (select (arr!17907 lt!279161) index!984))))

(assert (=> d!88151 (validMask!0 mask!3053)))

(assert (=> d!88151 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279160 lt!279161 mask!3053) lt!279328)))

(declare-fun b!610538 () Bool)

(assert (=> b!610538 (= e!349772 Undefined!6354)))

(declare-fun b!610539 () Bool)

(declare-fun c!69241 () Bool)

(assert (=> b!610539 (= c!69241 (= lt!279329 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349773 () SeekEntryResult!6354)

(assert (=> b!610539 (= e!349773 e!349774)))

(declare-fun b!610540 () Bool)

(assert (=> b!610540 (= e!349774 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!279160 lt!279161 mask!3053))))

(declare-fun b!610541 () Bool)

(assert (=> b!610541 (= e!349773 (Found!6354 index!984))))

(declare-fun b!610542 () Bool)

(assert (=> b!610542 (= e!349772 e!349773)))

(declare-fun c!69242 () Bool)

(assert (=> b!610542 (= c!69242 (= lt!279329 lt!279160))))

(assert (= (and d!88151 c!69243) b!610538))

(assert (= (and d!88151 (not c!69243)) b!610542))

(assert (= (and b!610542 c!69242) b!610541))

(assert (= (and b!610542 (not c!69242)) b!610539))

(assert (= (and b!610539 c!69241) b!610537))

(assert (= (and b!610539 (not c!69241)) b!610540))

(declare-fun m!587055 () Bool)

(assert (=> d!88151 m!587055))

(declare-fun m!587057 () Bool)

(assert (=> d!88151 m!587057))

(declare-fun m!587059 () Bool)

(assert (=> d!88151 m!587059))

(assert (=> d!88151 m!586753))

(assert (=> b!610540 m!586765))

(assert (=> b!610540 m!586765))

(declare-fun m!587061 () Bool)

(assert (=> b!610540 m!587061))

(assert (=> b!610247 d!88151))

(declare-fun b!610543 () Bool)

(declare-fun e!349777 () SeekEntryResult!6354)

(assert (=> b!610543 (= e!349777 (MissingVacant!6354 vacantSpotIndex!68))))

(declare-fun d!88167 () Bool)

(declare-fun lt!279330 () SeekEntryResult!6354)

(assert (=> d!88167 (and (or (is-Undefined!6354 lt!279330) (not (is-Found!6354 lt!279330)) (and (bvsge (index!27694 lt!279330) #b00000000000000000000000000000000) (bvslt (index!27694 lt!279330) (size!18271 lt!279161)))) (or (is-Undefined!6354 lt!279330) (is-Found!6354 lt!279330) (not (is-MissingVacant!6354 lt!279330)) (not (= (index!27696 lt!279330) vacantSpotIndex!68)) (and (bvsge (index!27696 lt!279330) #b00000000000000000000000000000000) (bvslt (index!27696 lt!279330) (size!18271 lt!279161)))) (or (is-Undefined!6354 lt!279330) (ite (is-Found!6354 lt!279330) (= (select (arr!17907 lt!279161) (index!27694 lt!279330)) lt!279160) (and (is-MissingVacant!6354 lt!279330) (= (index!27696 lt!279330) vacantSpotIndex!68) (= (select (arr!17907 lt!279161) (index!27696 lt!279330)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!349775 () SeekEntryResult!6354)

(assert (=> d!88167 (= lt!279330 e!349775)))

(declare-fun c!69246 () Bool)

(assert (=> d!88167 (= c!69246 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!279331 () (_ BitVec 64))

(assert (=> d!88167 (= lt!279331 (select (arr!17907 lt!279161) lt!279158))))

(assert (=> d!88167 (validMask!0 mask!3053)))

(assert (=> d!88167 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279158 vacantSpotIndex!68 lt!279160 lt!279161 mask!3053) lt!279330)))

(declare-fun b!610544 () Bool)

(assert (=> b!610544 (= e!349775 Undefined!6354)))

(declare-fun b!610545 () Bool)

(declare-fun c!69244 () Bool)

(assert (=> b!610545 (= c!69244 (= lt!279331 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349776 () SeekEntryResult!6354)

(assert (=> b!610545 (= e!349776 e!349777)))

(declare-fun b!610546 () Bool)

(assert (=> b!610546 (= e!349777 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279158 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!279160 lt!279161 mask!3053))))

(declare-fun b!610547 () Bool)

(assert (=> b!610547 (= e!349776 (Found!6354 lt!279158))))

(declare-fun b!610548 () Bool)

(assert (=> b!610548 (= e!349775 e!349776)))

(declare-fun c!69245 () Bool)

(assert (=> b!610548 (= c!69245 (= lt!279331 lt!279160))))

(assert (= (and d!88167 c!69246) b!610544))

(assert (= (and d!88167 (not c!69246)) b!610548))

(assert (= (and b!610548 c!69245) b!610547))

(assert (= (and b!610548 (not c!69245)) b!610545))

(assert (= (and b!610545 c!69244) b!610543))

(assert (= (and b!610545 (not c!69244)) b!610546))

(declare-fun m!587063 () Bool)

(assert (=> d!88167 m!587063))

(declare-fun m!587065 () Bool)

(assert (=> d!88167 m!587065))

(declare-fun m!587067 () Bool)

(assert (=> d!88167 m!587067))

(assert (=> d!88167 m!586753))

(declare-fun m!587069 () Bool)

(assert (=> b!610546 m!587069))

(assert (=> b!610546 m!587069))

(declare-fun m!587071 () Bool)

(assert (=> b!610546 m!587071))

(assert (=> b!610247 d!88167))

(declare-fun d!88169 () Bool)

(declare-fun lt!279334 () (_ BitVec 32))

(assert (=> d!88169 (and (bvsge lt!279334 #b00000000000000000000000000000000) (bvslt lt!279334 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88169 (= lt!279334 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88169 (validMask!0 mask!3053)))

(assert (=> d!88169 (= (nextIndex!0 index!984 x!910 mask!3053) lt!279334)))

(declare-fun bs!18628 () Bool)

(assert (= bs!18628 d!88169))

(declare-fun m!587073 () Bool)

(assert (=> bs!18628 m!587073))

(assert (=> bs!18628 m!586753))

(assert (=> b!610247 d!88169))

(declare-fun b!610549 () Bool)

(declare-fun e!349780 () SeekEntryResult!6354)

(assert (=> b!610549 (= e!349780 (MissingVacant!6354 vacantSpotIndex!68))))

(declare-fun lt!279335 () SeekEntryResult!6354)

(declare-fun d!88171 () Bool)

(assert (=> d!88171 (and (or (is-Undefined!6354 lt!279335) (not (is-Found!6354 lt!279335)) (and (bvsge (index!27694 lt!279335) #b00000000000000000000000000000000) (bvslt (index!27694 lt!279335) (size!18271 a!2986)))) (or (is-Undefined!6354 lt!279335) (is-Found!6354 lt!279335) (not (is-MissingVacant!6354 lt!279335)) (not (= (index!27696 lt!279335) vacantSpotIndex!68)) (and (bvsge (index!27696 lt!279335) #b00000000000000000000000000000000) (bvslt (index!27696 lt!279335) (size!18271 a!2986)))) (or (is-Undefined!6354 lt!279335) (ite (is-Found!6354 lt!279335) (= (select (arr!17907 a!2986) (index!27694 lt!279335)) (select (arr!17907 a!2986) j!136)) (and (is-MissingVacant!6354 lt!279335) (= (index!27696 lt!279335) vacantSpotIndex!68) (= (select (arr!17907 a!2986) (index!27696 lt!279335)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!349778 () SeekEntryResult!6354)

(assert (=> d!88171 (= lt!279335 e!349778)))

(declare-fun c!69249 () Bool)

(assert (=> d!88171 (= c!69249 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!279336 () (_ BitVec 64))

(assert (=> d!88171 (= lt!279336 (select (arr!17907 a!2986) lt!279158))))

(assert (=> d!88171 (validMask!0 mask!3053)))

(assert (=> d!88171 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279158 vacantSpotIndex!68 (select (arr!17907 a!2986) j!136) a!2986 mask!3053) lt!279335)))

(declare-fun b!610550 () Bool)

(assert (=> b!610550 (= e!349778 Undefined!6354)))

(declare-fun b!610551 () Bool)

(declare-fun c!69247 () Bool)

(assert (=> b!610551 (= c!69247 (= lt!279336 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349779 () SeekEntryResult!6354)

(assert (=> b!610551 (= e!349779 e!349780)))

(declare-fun b!610552 () Bool)

(assert (=> b!610552 (= e!349780 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279158 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17907 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610553 () Bool)

(assert (=> b!610553 (= e!349779 (Found!6354 lt!279158))))

(declare-fun b!610554 () Bool)

(assert (=> b!610554 (= e!349778 e!349779)))

(declare-fun c!69248 () Bool)

(assert (=> b!610554 (= c!69248 (= lt!279336 (select (arr!17907 a!2986) j!136)))))

(assert (= (and d!88171 c!69249) b!610550))

(assert (= (and d!88171 (not c!69249)) b!610554))

(assert (= (and b!610554 c!69248) b!610553))

(assert (= (and b!610554 (not c!69248)) b!610551))

(assert (= (and b!610551 c!69247) b!610549))

(assert (= (and b!610551 (not c!69247)) b!610552))

(declare-fun m!587075 () Bool)

(assert (=> d!88171 m!587075))

(declare-fun m!587077 () Bool)

(assert (=> d!88171 m!587077))

(declare-fun m!587079 () Bool)

(assert (=> d!88171 m!587079))

(assert (=> d!88171 m!586753))

(assert (=> b!610552 m!587069))

(assert (=> b!610552 m!587069))

(assert (=> b!610552 m!586757))

(declare-fun m!587081 () Bool)

(assert (=> b!610552 m!587081))

(assert (=> b!610247 d!88171))

(declare-fun d!88173 () Bool)

(assert (=> d!88173 (= (validKeyInArray!0 (select (arr!17907 a!2986) j!136)) (and (not (= (select (arr!17907 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17907 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610246 d!88173))

(declare-fun d!88175 () Bool)

(declare-fun res!392796 () Bool)

(declare-fun e!349788 () Bool)

(assert (=> d!88175 (=> res!392796 e!349788)))

(assert (=> d!88175 (= res!392796 (= (select (arr!17907 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88175 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!349788)))

(declare-fun b!610562 () Bool)

(declare-fun e!349789 () Bool)

(assert (=> b!610562 (= e!349788 e!349789)))

(declare-fun res!392797 () Bool)

(assert (=> b!610562 (=> (not res!392797) (not e!349789))))

(assert (=> b!610562 (= res!392797 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18271 a!2986)))))

(declare-fun b!610563 () Bool)

(assert (=> b!610563 (= e!349789 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88175 (not res!392796)) b!610562))

(assert (= (and b!610562 res!392797) b!610563))

(declare-fun m!587087 () Bool)

(assert (=> d!88175 m!587087))

(declare-fun m!587089 () Bool)

(assert (=> b!610563 m!587089))

(assert (=> b!610256 d!88175))

(declare-fun b!610602 () Bool)

(declare-fun e!349823 () Bool)

(declare-fun e!349824 () Bool)

(assert (=> b!610602 (= e!349823 e!349824)))

(declare-fun res!392824 () Bool)

(assert (=> b!610602 (=> (not res!392824) (not e!349824))))

(declare-fun e!349821 () Bool)

(assert (=> b!610602 (= res!392824 (not e!349821))))

(declare-fun res!392822 () Bool)

(assert (=> b!610602 (=> (not res!392822) (not e!349821))))

(assert (=> b!610602 (= res!392822 (validKeyInArray!0 (select (arr!17907 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!610603 () Bool)

(declare-fun contains!3045 (List!12001 (_ BitVec 64)) Bool)

(assert (=> b!610603 (= e!349821 (contains!3045 Nil!11998 (select (arr!17907 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!610604 () Bool)

(declare-fun e!349822 () Bool)

(assert (=> b!610604 (= e!349824 e!349822)))

(declare-fun c!69257 () Bool)

(assert (=> b!610604 (= c!69257 (validKeyInArray!0 (select (arr!17907 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!610605 () Bool)

(declare-fun call!33140 () Bool)

(assert (=> b!610605 (= e!349822 call!33140)))

(declare-fun bm!33137 () Bool)

(assert (=> bm!33137 (= call!33140 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69257 (Cons!11997 (select (arr!17907 a!2986) #b00000000000000000000000000000000) Nil!11998) Nil!11998)))))

(declare-fun b!610606 () Bool)

(assert (=> b!610606 (= e!349822 call!33140)))

(declare-fun d!88179 () Bool)

(declare-fun res!392823 () Bool)

(assert (=> d!88179 (=> res!392823 e!349823)))

(assert (=> d!88179 (= res!392823 (bvsge #b00000000000000000000000000000000 (size!18271 a!2986)))))

(assert (=> d!88179 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11998) e!349823)))

(assert (= (and d!88179 (not res!392823)) b!610602))

(assert (= (and b!610602 res!392822) b!610603))

(assert (= (and b!610602 res!392824) b!610604))

(assert (= (and b!610604 c!69257) b!610606))

(assert (= (and b!610604 (not c!69257)) b!610605))

(assert (= (or b!610606 b!610605) bm!33137))

(assert (=> b!610602 m!587087))

(assert (=> b!610602 m!587087))

(declare-fun m!587117 () Bool)

(assert (=> b!610602 m!587117))

(assert (=> b!610603 m!587087))

(assert (=> b!610603 m!587087))

(declare-fun m!587119 () Bool)

(assert (=> b!610603 m!587119))

(assert (=> b!610604 m!587087))

(assert (=> b!610604 m!587087))

(assert (=> b!610604 m!587117))

(assert (=> bm!33137 m!587087))

(declare-fun m!587121 () Bool)

(assert (=> bm!33137 m!587121))

(assert (=> b!610234 d!88179))

(declare-fun d!88189 () Bool)

(declare-fun res!392825 () Bool)

(declare-fun e!349825 () Bool)

(assert (=> d!88189 (=> res!392825 e!349825)))

(assert (=> d!88189 (= res!392825 (= (select (arr!17907 lt!279161) index!984) (select (arr!17907 a!2986) j!136)))))

(assert (=> d!88189 (= (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) index!984) e!349825)))

(declare-fun b!610607 () Bool)

(declare-fun e!349826 () Bool)

(assert (=> b!610607 (= e!349825 e!349826)))

(declare-fun res!392826 () Bool)

(assert (=> b!610607 (=> (not res!392826) (not e!349826))))

(assert (=> b!610607 (= res!392826 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18271 lt!279161)))))

(declare-fun b!610608 () Bool)

(assert (=> b!610608 (= e!349826 (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88189 (not res!392825)) b!610607))

(assert (= (and b!610607 res!392826) b!610608))

(assert (=> d!88189 m!587059))

(assert (=> b!610608 m!586757))

(declare-fun m!587123 () Bool)

(assert (=> b!610608 m!587123))

(assert (=> b!610255 d!88189))

(declare-fun d!88191 () Bool)

(declare-fun res!392827 () Bool)

(declare-fun e!349827 () Bool)

(assert (=> d!88191 (=> res!392827 e!349827)))

(assert (=> d!88191 (= res!392827 (= (select (arr!17907 lt!279161) j!136) (select (arr!17907 a!2986) j!136)))))

(assert (=> d!88191 (= (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) j!136) e!349827)))

(declare-fun b!610609 () Bool)

(declare-fun e!349828 () Bool)

(assert (=> b!610609 (= e!349827 e!349828)))

(declare-fun res!392828 () Bool)

(assert (=> b!610609 (=> (not res!392828) (not e!349828))))

(assert (=> b!610609 (= res!392828 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18271 lt!279161)))))

(declare-fun b!610610 () Bool)

(assert (=> b!610610 (= e!349828 (arrayContainsKey!0 lt!279161 (select (arr!17907 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88191 (not res!392827)) b!610609))

(assert (= (and b!610609 res!392828) b!610610))

(declare-fun m!587125 () Bool)

(assert (=> d!88191 m!587125))

(assert (=> b!610610 m!586757))

(declare-fun m!587127 () Bool)

(assert (=> b!610610 m!587127))

(assert (=> b!610244 d!88191))

(assert (=> b!610233 d!88189))

(declare-fun b!610611 () Bool)

(declare-fun e!349831 () SeekEntryResult!6354)

(assert (=> b!610611 (= e!349831 (MissingVacant!6354 vacantSpotIndex!68))))

(declare-fun lt!279343 () SeekEntryResult!6354)

(declare-fun d!88193 () Bool)

(assert (=> d!88193 (and (or (is-Undefined!6354 lt!279343) (not (is-Found!6354 lt!279343)) (and (bvsge (index!27694 lt!279343) #b00000000000000000000000000000000) (bvslt (index!27694 lt!279343) (size!18271 a!2986)))) (or (is-Undefined!6354 lt!279343) (is-Found!6354 lt!279343) (not (is-MissingVacant!6354 lt!279343)) (not (= (index!27696 lt!279343) vacantSpotIndex!68)) (and (bvsge (index!27696 lt!279343) #b00000000000000000000000000000000) (bvslt (index!27696 lt!279343) (size!18271 a!2986)))) (or (is-Undefined!6354 lt!279343) (ite (is-Found!6354 lt!279343) (= (select (arr!17907 a!2986) (index!27694 lt!279343)) (select (arr!17907 a!2986) j!136)) (and (is-MissingVacant!6354 lt!279343) (= (index!27696 lt!279343) vacantSpotIndex!68) (= (select (arr!17907 a!2986) (index!27696 lt!279343)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!349829 () SeekEntryResult!6354)

(assert (=> d!88193 (= lt!279343 e!349829)))

(declare-fun c!69260 () Bool)

(assert (=> d!88193 (= c!69260 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!279344 () (_ BitVec 64))

(assert (=> d!88193 (= lt!279344 (select (arr!17907 a!2986) index!984))))

(assert (=> d!88193 (validMask!0 mask!3053)))

(assert (=> d!88193 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17907 a!2986) j!136) a!2986 mask!3053) lt!279343)))

(declare-fun b!610612 () Bool)

(assert (=> b!610612 (= e!349829 Undefined!6354)))

(declare-fun b!610613 () Bool)

(declare-fun c!69258 () Bool)

(assert (=> b!610613 (= c!69258 (= lt!279344 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349830 () SeekEntryResult!6354)

(assert (=> b!610613 (= e!349830 e!349831)))

(declare-fun b!610614 () Bool)

(assert (=> b!610614 (= e!349831 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17907 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610615 () Bool)

(assert (=> b!610615 (= e!349830 (Found!6354 index!984))))

(declare-fun b!610616 () Bool)

(assert (=> b!610616 (= e!349829 e!349830)))

(declare-fun c!69259 () Bool)

(assert (=> b!610616 (= c!69259 (= lt!279344 (select (arr!17907 a!2986) j!136)))))

(assert (= (and d!88193 c!69260) b!610612))

(assert (= (and d!88193 (not c!69260)) b!610616))

(assert (= (and b!610616 c!69259) b!610615))

(assert (= (and b!610616 (not c!69259)) b!610613))

(assert (= (and b!610613 c!69258) b!610611))

(assert (= (and b!610613 (not c!69258)) b!610614))

(declare-fun m!587129 () Bool)

(assert (=> d!88193 m!587129))

(declare-fun m!587131 () Bool)

(assert (=> d!88193 m!587131))

(assert (=> d!88193 m!586799))

(assert (=> d!88193 m!586753))

(assert (=> b!610614 m!586765))

(assert (=> b!610614 m!586765))

(assert (=> b!610614 m!586757))

(declare-fun m!587133 () Bool)

(assert (=> b!610614 m!587133))

(assert (=> b!610254 d!88193))

(declare-fun d!88195 () Bool)

(declare-fun res!392839 () Bool)

(declare-fun e!349844 () Bool)

(assert (=> d!88195 (=> res!392839 e!349844)))

(assert (=> d!88195 (= res!392839 (is-Nil!11998 Nil!11998))))

(assert (=> d!88195 (= (noDuplicate!343 Nil!11998) e!349844)))

(declare-fun b!610631 () Bool)

(declare-fun e!349845 () Bool)

(assert (=> b!610631 (= e!349844 e!349845)))

(declare-fun res!392840 () Bool)

(assert (=> b!610631 (=> (not res!392840) (not e!349845))))

(assert (=> b!610631 (= res!392840 (not (contains!3045 (t!18237 Nil!11998) (h!13042 Nil!11998))))))

(declare-fun b!610632 () Bool)

(assert (=> b!610632 (= e!349845 (noDuplicate!343 (t!18237 Nil!11998)))))

(assert (= (and d!88195 (not res!392839)) b!610631))

(assert (= (and b!610631 res!392840) b!610632))

(declare-fun m!587141 () Bool)

(assert (=> b!610631 m!587141))

(declare-fun m!587143 () Bool)

(assert (=> b!610632 m!587143))

(assert (=> b!610243 d!88195))

(declare-fun d!88201 () Bool)

(assert (=> d!88201 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!55710 d!88201))

(declare-fun d!88221 () Bool)

(assert (=> d!88221 (= (array_inv!13681 a!2986) (bvsge (size!18271 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!55710 d!88221))

(declare-fun b!610694 () Bool)

(declare-fun lt!279388 () SeekEntryResult!6354)

(declare-fun e!349892 () SeekEntryResult!6354)

(assert (=> b!610694 (= e!349892 (seekKeyOrZeroReturnVacant!0 (x!56529 lt!279388) (index!27695 lt!279388) (index!27695 lt!279388) k!1786 a!2986 mask!3053))))

(declare-fun b!610695 () Bool)

(declare-fun c!69279 () Bool)

(declare-fun lt!279387 () (_ BitVec 64))

(assert (=> b!610695 (= c!69279 (= lt!279387 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349893 () SeekEntryResult!6354)

(assert (=> b!610695 (= e!349893 e!349892)))

(declare-fun b!610696 () Bool)

(declare-fun e!349891 () SeekEntryResult!6354)

(assert (=> b!610696 (= e!349891 e!349893)))

(assert (=> b!610696 (= lt!279387 (select (arr!17907 a!2986) (index!27695 lt!279388)))))

(declare-fun c!69280 () Bool)

(assert (=> b!610696 (= c!69280 (= lt!279387 k!1786))))

(declare-fun b!610697 () Bool)

(assert (=> b!610697 (= e!349893 (Found!6354 (index!27695 lt!279388)))))

(declare-fun d!88223 () Bool)

(declare-fun lt!279389 () SeekEntryResult!6354)

(assert (=> d!88223 (and (or (is-Undefined!6354 lt!279389) (not (is-Found!6354 lt!279389)) (and (bvsge (index!27694 lt!279389) #b00000000000000000000000000000000) (bvslt (index!27694 lt!279389) (size!18271 a!2986)))) (or (is-Undefined!6354 lt!279389) (is-Found!6354 lt!279389) (not (is-MissingZero!6354 lt!279389)) (and (bvsge (index!27693 lt!279389) #b00000000000000000000000000000000) (bvslt (index!27693 lt!279389) (size!18271 a!2986)))) (or (is-Undefined!6354 lt!279389) (is-Found!6354 lt!279389) (is-MissingZero!6354 lt!279389) (not (is-MissingVacant!6354 lt!279389)) (and (bvsge (index!27696 lt!279389) #b00000000000000000000000000000000) (bvslt (index!27696 lt!279389) (size!18271 a!2986)))) (or (is-Undefined!6354 lt!279389) (ite (is-Found!6354 lt!279389) (= (select (arr!17907 a!2986) (index!27694 lt!279389)) k!1786) (ite (is-MissingZero!6354 lt!279389) (= (select (arr!17907 a!2986) (index!27693 lt!279389)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6354 lt!279389) (= (select (arr!17907 a!2986) (index!27696 lt!279389)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!88223 (= lt!279389 e!349891)))

(declare-fun c!69281 () Bool)

(assert (=> d!88223 (= c!69281 (and (is-Intermediate!6354 lt!279388) (undefined!7166 lt!279388)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37323 (_ BitVec 32)) SeekEntryResult!6354)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88223 (= lt!279388 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88223 (validMask!0 mask!3053)))

(assert (=> d!88223 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!279389)))

(declare-fun b!610698 () Bool)

(assert (=> b!610698 (= e!349892 (MissingZero!6354 (index!27695 lt!279388)))))

(declare-fun b!610699 () Bool)

(assert (=> b!610699 (= e!349891 Undefined!6354)))

(assert (= (and d!88223 c!69281) b!610699))

(assert (= (and d!88223 (not c!69281)) b!610696))

(assert (= (and b!610696 c!69280) b!610697))

(assert (= (and b!610696 (not c!69280)) b!610695))

(assert (= (and b!610695 c!69279) b!610698))

(assert (= (and b!610695 (not c!69279)) b!610694))

(declare-fun m!587209 () Bool)

(assert (=> b!610694 m!587209))

(declare-fun m!587211 () Bool)

(assert (=> b!610696 m!587211))

(declare-fun m!587213 () Bool)

(assert (=> d!88223 m!587213))

(declare-fun m!587215 () Bool)

(assert (=> d!88223 m!587215))

(declare-fun m!587217 () Bool)

(assert (=> d!88223 m!587217))

(declare-fun m!587219 () Bool)

(assert (=> d!88223 m!587219))

(assert (=> d!88223 m!586753))

(declare-fun m!587221 () Bool)

(assert (=> d!88223 m!587221))

(assert (=> d!88223 m!587213))

(assert (=> b!610253 d!88223))

(declare-fun bm!33146 () Bool)

(declare-fun call!33149 () Bool)

(assert (=> bm!33146 (= call!33149 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!610720 () Bool)

(declare-fun e!349906 () Bool)

(assert (=> b!610720 (= e!349906 call!33149)))

(declare-fun b!610721 () Bool)

(declare-fun e!349907 () Bool)

(declare-fun e!349908 () Bool)

(assert (=> b!610721 (= e!349907 e!349908)))

(declare-fun c!69290 () Bool)

(assert (=> b!610721 (= c!69290 (validKeyInArray!0 (select (arr!17907 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!610722 () Bool)

(assert (=> b!610722 (= e!349908 e!349906)))

(declare-fun lt!279403 () (_ BitVec 64))

(assert (=> b!610722 (= lt!279403 (select (arr!17907 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!279402 () Unit!19552)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37323 (_ BitVec 64) (_ BitVec 32)) Unit!19552)

(assert (=> b!610722 (= lt!279402 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!279403 #b00000000000000000000000000000000))))

(assert (=> b!610722 (arrayContainsKey!0 a!2986 lt!279403 #b00000000000000000000000000000000)))

(declare-fun lt!279404 () Unit!19552)

(assert (=> b!610722 (= lt!279404 lt!279402)))

(declare-fun res!392874 () Bool)

(assert (=> b!610722 (= res!392874 (= (seekEntryOrOpen!0 (select (arr!17907 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6354 #b00000000000000000000000000000000)))))

(assert (=> b!610722 (=> (not res!392874) (not e!349906))))

(declare-fun d!88245 () Bool)

(declare-fun res!392875 () Bool)

(assert (=> d!88245 (=> res!392875 e!349907)))

(assert (=> d!88245 (= res!392875 (bvsge #b00000000000000000000000000000000 (size!18271 a!2986)))))

(assert (=> d!88245 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!349907)))

(declare-fun b!610723 () Bool)

(assert (=> b!610723 (= e!349908 call!33149)))

(assert (= (and d!88245 (not res!392875)) b!610721))

(assert (= (and b!610721 c!69290) b!610722))

(assert (= (and b!610721 (not c!69290)) b!610723))

(assert (= (and b!610722 res!392874) b!610720))

(assert (= (or b!610720 b!610723) bm!33146))

(declare-fun m!587223 () Bool)

(assert (=> bm!33146 m!587223))

(assert (=> b!610721 m!587087))

(assert (=> b!610721 m!587087))

(assert (=> b!610721 m!587117))

(assert (=> b!610722 m!587087))

(declare-fun m!587225 () Bool)

(assert (=> b!610722 m!587225))

(declare-fun m!587227 () Bool)

(assert (=> b!610722 m!587227))

(assert (=> b!610722 m!587087))

(declare-fun m!587229 () Bool)

(assert (=> b!610722 m!587229))

(assert (=> b!610250 d!88245))

(declare-fun d!88247 () Bool)

(assert (=> d!88247 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610249 d!88247))

(declare-fun b!610724 () Bool)

(declare-fun e!349911 () Bool)

(declare-fun e!349912 () Bool)

(assert (=> b!610724 (= e!349911 e!349912)))

(declare-fun res!392878 () Bool)

(assert (=> b!610724 (=> (not res!392878) (not e!349912))))

(declare-fun e!349909 () Bool)

(assert (=> b!610724 (= res!392878 (not e!349909))))

(declare-fun res!392876 () Bool)

