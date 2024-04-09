; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55126 () Bool)

(assert start!55126)

(declare-fun b!603038 () Bool)

(declare-fun e!344965 () Bool)

(declare-fun e!344966 () Bool)

(assert (=> b!603038 (= e!344965 e!344966)))

(declare-fun res!387348 () Bool)

(assert (=> b!603038 (=> (not res!387348) (not e!344966))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6281 0))(
  ( (MissingZero!6281 (index!27386 (_ BitVec 32))) (Found!6281 (index!27387 (_ BitVec 32))) (Intermediate!6281 (undefined!7093 Bool) (index!27388 (_ BitVec 32)) (x!56211 (_ BitVec 32))) (Undefined!6281) (MissingVacant!6281 (index!27389 (_ BitVec 32))) )
))
(declare-fun lt!274835 () SeekEntryResult!6281)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37162 0))(
  ( (array!37163 (arr!17834 (Array (_ BitVec 32) (_ BitVec 64))) (size!18198 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37162)

(assert (=> b!603038 (= res!387348 (and (= lt!274835 (Found!6281 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17834 a!2986) index!984) (select (arr!17834 a!2986) j!136))) (not (= (select (arr!17834 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37162 (_ BitVec 32)) SeekEntryResult!6281)

(assert (=> b!603038 (= lt!274835 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17834 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603039 () Bool)

(declare-fun e!344968 () Bool)

(assert (=> b!603039 (= e!344968 true)))

(declare-fun e!344973 () Bool)

(assert (=> b!603039 e!344973))

(declare-fun res!387350 () Bool)

(assert (=> b!603039 (=> (not res!387350) (not e!344973))))

(declare-fun lt!274828 () array!37162)

(declare-fun arrayContainsKey!0 (array!37162 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603039 (= res!387350 (arrayContainsKey!0 lt!274828 (select (arr!17834 a!2986) j!136) j!136))))

(declare-fun b!603040 () Bool)

(declare-fun e!344963 () Bool)

(assert (=> b!603040 (= e!344966 (not e!344963))))

(declare-fun res!387352 () Bool)

(assert (=> b!603040 (=> res!387352 e!344963)))

(declare-fun lt!274822 () SeekEntryResult!6281)

(assert (=> b!603040 (= res!387352 (not (= lt!274822 (Found!6281 index!984))))))

(declare-datatypes ((Unit!19114 0))(
  ( (Unit!19115) )
))
(declare-fun lt!274826 () Unit!19114)

(declare-fun e!344962 () Unit!19114)

(assert (=> b!603040 (= lt!274826 e!344962)))

(declare-fun c!68215 () Bool)

(assert (=> b!603040 (= c!68215 (= lt!274822 Undefined!6281))))

(declare-fun lt!274824 () (_ BitVec 64))

(assert (=> b!603040 (= lt!274822 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!274824 lt!274828 mask!3053))))

(declare-fun e!344972 () Bool)

(assert (=> b!603040 e!344972))

(declare-fun res!387359 () Bool)

(assert (=> b!603040 (=> (not res!387359) (not e!344972))))

(declare-fun lt!274831 () SeekEntryResult!6281)

(declare-fun lt!274836 () (_ BitVec 32))

(assert (=> b!603040 (= res!387359 (= lt!274831 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274836 vacantSpotIndex!68 lt!274824 lt!274828 mask!3053)))))

(assert (=> b!603040 (= lt!274831 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!274836 vacantSpotIndex!68 (select (arr!17834 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!603040 (= lt!274824 (select (store (arr!17834 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!274833 () Unit!19114)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37162 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19114)

(assert (=> b!603040 (= lt!274833 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!274836 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603040 (= lt!274836 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603041 () Bool)

(declare-fun e!344960 () Bool)

(assert (=> b!603041 (= e!344963 e!344960)))

(declare-fun res!387354 () Bool)

(assert (=> b!603041 (=> res!387354 e!344960)))

(declare-fun lt!274829 () (_ BitVec 64))

(assert (=> b!603041 (= res!387354 (or (not (= (select (arr!17834 a!2986) j!136) lt!274824)) (not (= (select (arr!17834 a!2986) j!136) lt!274829))))))

(declare-fun e!344969 () Bool)

(assert (=> b!603041 e!344969))

(declare-fun res!387342 () Bool)

(assert (=> b!603041 (=> (not res!387342) (not e!344969))))

(assert (=> b!603041 (= res!387342 (= lt!274829 (select (arr!17834 a!2986) j!136)))))

(assert (=> b!603041 (= lt!274829 (select (store (arr!17834 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603042 () Bool)

(declare-fun e!344961 () Bool)

(declare-fun e!344967 () Bool)

(assert (=> b!603042 (= e!344961 e!344967)))

(declare-fun res!387347 () Bool)

(assert (=> b!603042 (=> (not res!387347) (not e!344967))))

(declare-fun lt!274832 () SeekEntryResult!6281)

(assert (=> b!603042 (= res!387347 (or (= lt!274832 (MissingZero!6281 i!1108)) (= lt!274832 (MissingVacant!6281 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37162 (_ BitVec 32)) SeekEntryResult!6281)

(assert (=> b!603042 (= lt!274832 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603043 () Bool)

(declare-fun res!387344 () Bool)

(assert (=> b!603043 (=> (not res!387344) (not e!344967))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37162 (_ BitVec 32)) Bool)

(assert (=> b!603043 (= res!387344 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603044 () Bool)

(assert (=> b!603044 (= e!344960 e!344968)))

(declare-fun res!387346 () Bool)

(assert (=> b!603044 (=> res!387346 e!344968)))

(assert (=> b!603044 (= res!387346 (bvsge index!984 j!136))))

(declare-fun lt!274834 () Unit!19114)

(declare-fun e!344971 () Unit!19114)

(assert (=> b!603044 (= lt!274834 e!344971)))

(declare-fun c!68216 () Bool)

(assert (=> b!603044 (= c!68216 (bvslt j!136 index!984))))

(declare-fun b!603045 () Bool)

(declare-fun res!387345 () Bool)

(assert (=> b!603045 (=> (not res!387345) (not e!344967))))

(assert (=> b!603045 (= res!387345 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17834 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603046 () Bool)

(declare-fun e!344970 () Bool)

(assert (=> b!603046 (= e!344970 (arrayContainsKey!0 lt!274828 (select (arr!17834 a!2986) j!136) index!984))))

(declare-fun b!603047 () Bool)

(declare-fun e!344974 () Bool)

(assert (=> b!603047 (= e!344969 e!344974)))

(declare-fun res!387356 () Bool)

(assert (=> b!603047 (=> res!387356 e!344974)))

(assert (=> b!603047 (= res!387356 (or (not (= (select (arr!17834 a!2986) j!136) lt!274824)) (not (= (select (arr!17834 a!2986) j!136) lt!274829)) (bvsge j!136 index!984)))))

(declare-fun res!387343 () Bool)

(assert (=> start!55126 (=> (not res!387343) (not e!344961))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55126 (= res!387343 (validMask!0 mask!3053))))

(assert (=> start!55126 e!344961))

(assert (=> start!55126 true))

(declare-fun array_inv!13608 (array!37162) Bool)

(assert (=> start!55126 (array_inv!13608 a!2986)))

(declare-fun b!603037 () Bool)

(declare-fun res!387353 () Bool)

(assert (=> b!603037 (=> (not res!387353) (not e!344961))))

(assert (=> b!603037 (= res!387353 (and (= (size!18198 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18198 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18198 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!603048 () Bool)

(assert (=> b!603048 (= e!344974 e!344970)))

(declare-fun res!387341 () Bool)

(assert (=> b!603048 (=> (not res!387341) (not e!344970))))

(assert (=> b!603048 (= res!387341 (arrayContainsKey!0 lt!274828 (select (arr!17834 a!2986) j!136) j!136))))

(declare-fun b!603049 () Bool)

(declare-fun Unit!19116 () Unit!19114)

(assert (=> b!603049 (= e!344962 Unit!19116)))

(declare-fun b!603050 () Bool)

(declare-fun res!387357 () Bool)

(assert (=> b!603050 (=> (not res!387357) (not e!344961))))

(assert (=> b!603050 (= res!387357 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603051 () Bool)

(declare-fun Unit!19117 () Unit!19114)

(assert (=> b!603051 (= e!344971 Unit!19117)))

(declare-fun lt!274830 () Unit!19114)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37162 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19114)

(assert (=> b!603051 (= lt!274830 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!274828 (select (arr!17834 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603051 (arrayContainsKey!0 lt!274828 (select (arr!17834 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!274823 () Unit!19114)

(declare-datatypes ((List!11928 0))(
  ( (Nil!11925) (Cons!11924 (h!12969 (_ BitVec 64)) (t!18164 List!11928)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37162 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11928) Unit!19114)

(assert (=> b!603051 (= lt!274823 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11925))))

(declare-fun arrayNoDuplicates!0 (array!37162 (_ BitVec 32) List!11928) Bool)

(assert (=> b!603051 (arrayNoDuplicates!0 lt!274828 #b00000000000000000000000000000000 Nil!11925)))

(declare-fun lt!274825 () Unit!19114)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37162 (_ BitVec 32) (_ BitVec 32)) Unit!19114)

(assert (=> b!603051 (= lt!274825 (lemmaNoDuplicateFromThenFromBigger!0 lt!274828 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603051 (arrayNoDuplicates!0 lt!274828 j!136 Nil!11925)))

(declare-fun lt!274827 () Unit!19114)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37162 (_ BitVec 64) (_ BitVec 32) List!11928) Unit!19114)

(assert (=> b!603051 (= lt!274827 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!274828 (select (arr!17834 a!2986) j!136) j!136 Nil!11925))))

(assert (=> b!603051 false))

(declare-fun b!603052 () Bool)

(declare-fun Unit!19118 () Unit!19114)

(assert (=> b!603052 (= e!344962 Unit!19118)))

(assert (=> b!603052 false))

(declare-fun b!603053 () Bool)

(assert (=> b!603053 (= e!344967 e!344965)))

(declare-fun res!387358 () Bool)

(assert (=> b!603053 (=> (not res!387358) (not e!344965))))

(assert (=> b!603053 (= res!387358 (= (select (store (arr!17834 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603053 (= lt!274828 (array!37163 (store (arr!17834 a!2986) i!1108 k!1786) (size!18198 a!2986)))))

(declare-fun b!603054 () Bool)

(declare-fun res!387349 () Bool)

(assert (=> b!603054 (=> (not res!387349) (not e!344961))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603054 (= res!387349 (validKeyInArray!0 (select (arr!17834 a!2986) j!136)))))

(declare-fun b!603055 () Bool)

(declare-fun res!387355 () Bool)

(assert (=> b!603055 (=> (not res!387355) (not e!344967))))

(assert (=> b!603055 (= res!387355 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11925))))

(declare-fun b!603056 () Bool)

(assert (=> b!603056 (= e!344973 (arrayContainsKey!0 lt!274828 (select (arr!17834 a!2986) j!136) index!984))))

(declare-fun b!603057 () Bool)

(assert (=> b!603057 (= e!344972 (= lt!274835 lt!274831))))

(declare-fun b!603058 () Bool)

(declare-fun Unit!19119 () Unit!19114)

(assert (=> b!603058 (= e!344971 Unit!19119)))

(declare-fun b!603059 () Bool)

(declare-fun res!387351 () Bool)

(assert (=> b!603059 (=> (not res!387351) (not e!344961))))

(assert (=> b!603059 (= res!387351 (validKeyInArray!0 k!1786))))

(assert (= (and start!55126 res!387343) b!603037))

(assert (= (and b!603037 res!387353) b!603054))

(assert (= (and b!603054 res!387349) b!603059))

(assert (= (and b!603059 res!387351) b!603050))

(assert (= (and b!603050 res!387357) b!603042))

(assert (= (and b!603042 res!387347) b!603043))

(assert (= (and b!603043 res!387344) b!603055))

(assert (= (and b!603055 res!387355) b!603045))

(assert (= (and b!603045 res!387345) b!603053))

(assert (= (and b!603053 res!387358) b!603038))

(assert (= (and b!603038 res!387348) b!603040))

(assert (= (and b!603040 res!387359) b!603057))

(assert (= (and b!603040 c!68215) b!603052))

(assert (= (and b!603040 (not c!68215)) b!603049))

(assert (= (and b!603040 (not res!387352)) b!603041))

(assert (= (and b!603041 res!387342) b!603047))

(assert (= (and b!603047 (not res!387356)) b!603048))

(assert (= (and b!603048 res!387341) b!603046))

(assert (= (and b!603041 (not res!387354)) b!603044))

(assert (= (and b!603044 c!68216) b!603051))

(assert (= (and b!603044 (not c!68216)) b!603058))

(assert (= (and b!603044 (not res!387346)) b!603039))

(assert (= (and b!603039 res!387350) b!603056))

(declare-fun m!580131 () Bool)

(assert (=> b!603047 m!580131))

(declare-fun m!580133 () Bool)

(assert (=> b!603059 m!580133))

(declare-fun m!580135 () Bool)

(assert (=> b!603053 m!580135))

(declare-fun m!580137 () Bool)

(assert (=> b!603053 m!580137))

(assert (=> b!603039 m!580131))

(assert (=> b!603039 m!580131))

(declare-fun m!580139 () Bool)

(assert (=> b!603039 m!580139))

(declare-fun m!580141 () Bool)

(assert (=> start!55126 m!580141))

(declare-fun m!580143 () Bool)

(assert (=> start!55126 m!580143))

(assert (=> b!603041 m!580131))

(assert (=> b!603041 m!580135))

(declare-fun m!580145 () Bool)

(assert (=> b!603041 m!580145))

(assert (=> b!603046 m!580131))

(assert (=> b!603046 m!580131))

(declare-fun m!580147 () Bool)

(assert (=> b!603046 m!580147))

(declare-fun m!580149 () Bool)

(assert (=> b!603055 m!580149))

(assert (=> b!603048 m!580131))

(assert (=> b!603048 m!580131))

(assert (=> b!603048 m!580139))

(assert (=> b!603054 m!580131))

(assert (=> b!603054 m!580131))

(declare-fun m!580151 () Bool)

(assert (=> b!603054 m!580151))

(declare-fun m!580153 () Bool)

(assert (=> b!603051 m!580153))

(assert (=> b!603051 m!580131))

(declare-fun m!580155 () Bool)

(assert (=> b!603051 m!580155))

(assert (=> b!603051 m!580131))

(declare-fun m!580157 () Bool)

(assert (=> b!603051 m!580157))

(assert (=> b!603051 m!580131))

(declare-fun m!580159 () Bool)

(assert (=> b!603051 m!580159))

(declare-fun m!580161 () Bool)

(assert (=> b!603051 m!580161))

(assert (=> b!603051 m!580131))

(declare-fun m!580163 () Bool)

(assert (=> b!603051 m!580163))

(declare-fun m!580165 () Bool)

(assert (=> b!603051 m!580165))

(declare-fun m!580167 () Bool)

(assert (=> b!603042 m!580167))

(declare-fun m!580169 () Bool)

(assert (=> b!603043 m!580169))

(declare-fun m!580171 () Bool)

(assert (=> b!603050 m!580171))

(declare-fun m!580173 () Bool)

(assert (=> b!603045 m!580173))

(assert (=> b!603056 m!580131))

(assert (=> b!603056 m!580131))

(assert (=> b!603056 m!580147))

(declare-fun m!580175 () Bool)

(assert (=> b!603038 m!580175))

(assert (=> b!603038 m!580131))

(assert (=> b!603038 m!580131))

(declare-fun m!580177 () Bool)

(assert (=> b!603038 m!580177))

(declare-fun m!580179 () Bool)

(assert (=> b!603040 m!580179))

(declare-fun m!580181 () Bool)

(assert (=> b!603040 m!580181))

(assert (=> b!603040 m!580131))

(declare-fun m!580183 () Bool)

(assert (=> b!603040 m!580183))

(assert (=> b!603040 m!580135))

(declare-fun m!580185 () Bool)

(assert (=> b!603040 m!580185))

(assert (=> b!603040 m!580131))

(declare-fun m!580187 () Bool)

(assert (=> b!603040 m!580187))

(declare-fun m!580189 () Bool)

(assert (=> b!603040 m!580189))

(push 1)

