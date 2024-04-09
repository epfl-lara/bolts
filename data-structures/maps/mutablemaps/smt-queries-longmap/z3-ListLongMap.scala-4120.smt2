; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56228 () Bool)

(assert start!56228)

(declare-fun b!623204 () Bool)

(declare-fun e!357479 () Bool)

(declare-datatypes ((SeekEntryResult!6520 0))(
  ( (MissingZero!6520 (index!28363 (_ BitVec 32))) (Found!6520 (index!28364 (_ BitVec 32))) (Intermediate!6520 (undefined!7332 Bool) (index!28365 (_ BitVec 32)) (x!57153 (_ BitVec 32))) (Undefined!6520) (MissingVacant!6520 (index!28366 (_ BitVec 32))) )
))
(declare-fun lt!289171 () SeekEntryResult!6520)

(declare-fun lt!289172 () SeekEntryResult!6520)

(assert (=> b!623204 (= e!357479 (= lt!289171 lt!289172))))

(declare-fun b!623205 () Bool)

(declare-datatypes ((Unit!21020 0))(
  ( (Unit!21021) )
))
(declare-fun e!357469 () Unit!21020)

(declare-fun Unit!21022 () Unit!21020)

(assert (=> b!623205 (= e!357469 Unit!21022)))

(declare-fun b!623206 () Bool)

(declare-fun e!357481 () Unit!21020)

(declare-fun Unit!21023 () Unit!21020)

(assert (=> b!623206 (= e!357481 Unit!21023)))

(assert (=> b!623206 false))

(declare-fun b!623207 () Bool)

(declare-fun e!357474 () Bool)

(declare-fun e!357468 () Bool)

(assert (=> b!623207 (= e!357474 e!357468)))

(declare-fun res!401753 () Bool)

(assert (=> b!623207 (=> (not res!401753) (not e!357468))))

(declare-fun lt!289164 () SeekEntryResult!6520)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623207 (= res!401753 (or (= lt!289164 (MissingZero!6520 i!1108)) (= lt!289164 (MissingVacant!6520 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-datatypes ((array!37661 0))(
  ( (array!37662 (arr!18073 (Array (_ BitVec 32) (_ BitVec 64))) (size!18437 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37661)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37661 (_ BitVec 32)) SeekEntryResult!6520)

(assert (=> b!623207 (= lt!289164 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!623208 () Bool)

(declare-fun e!357478 () Unit!21020)

(declare-fun Unit!21024 () Unit!21020)

(assert (=> b!623208 (= e!357478 Unit!21024)))

(declare-fun res!401750 () Bool)

(assert (=> start!56228 (=> (not res!401750) (not e!357474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56228 (= res!401750 (validMask!0 mask!3053))))

(assert (=> start!56228 e!357474))

(assert (=> start!56228 true))

(declare-fun array_inv!13847 (array!37661) Bool)

(assert (=> start!56228 (array_inv!13847 a!2986)))

(declare-fun b!623209 () Bool)

(assert (=> b!623209 false))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!289169 () Unit!21020)

(declare-fun lt!289174 () array!37661)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((List!12167 0))(
  ( (Nil!12164) (Cons!12163 (h!13208 (_ BitVec 64)) (t!18403 List!12167)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37661 (_ BitVec 64) (_ BitVec 32) List!12167) Unit!21020)

(assert (=> b!623209 (= lt!289169 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!289174 (select (arr!18073 a!2986) j!136) index!984 Nil!12164))))

(declare-fun arrayNoDuplicates!0 (array!37661 (_ BitVec 32) List!12167) Bool)

(assert (=> b!623209 (arrayNoDuplicates!0 lt!289174 index!984 Nil!12164)))

(declare-fun lt!289166 () Unit!21020)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37661 (_ BitVec 32) (_ BitVec 32)) Unit!21020)

(assert (=> b!623209 (= lt!289166 (lemmaNoDuplicateFromThenFromBigger!0 lt!289174 #b00000000000000000000000000000000 index!984))))

(assert (=> b!623209 (arrayNoDuplicates!0 lt!289174 #b00000000000000000000000000000000 Nil!12164)))

(declare-fun lt!289168 () Unit!21020)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37661 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12167) Unit!21020)

(assert (=> b!623209 (= lt!289168 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12164))))

(declare-fun arrayContainsKey!0 (array!37661 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623209 (arrayContainsKey!0 lt!289174 (select (arr!18073 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!289167 () Unit!21020)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37661 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21020)

(assert (=> b!623209 (= lt!289167 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!289174 (select (arr!18073 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!357472 () Bool)

(assert (=> b!623209 e!357472))

(declare-fun res!401762 () Bool)

(assert (=> b!623209 (=> (not res!401762) (not e!357472))))

(assert (=> b!623209 (= res!401762 (arrayContainsKey!0 lt!289174 (select (arr!18073 a!2986) j!136) j!136))))

(declare-fun e!357473 () Unit!21020)

(declare-fun Unit!21025 () Unit!21020)

(assert (=> b!623209 (= e!357473 Unit!21025)))

(declare-fun b!623210 () Bool)

(declare-fun e!357475 () Bool)

(declare-fun e!357470 () Bool)

(assert (=> b!623210 (= e!357475 (not e!357470))))

(declare-fun res!401757 () Bool)

(assert (=> b!623210 (=> res!401757 e!357470)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!289158 () SeekEntryResult!6520)

(assert (=> b!623210 (= res!401757 (or (= lt!289158 (MissingVacant!6520 vacantSpotIndex!68)) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!289163 () Unit!21020)

(assert (=> b!623210 (= lt!289163 e!357478)))

(declare-fun c!71097 () Bool)

(assert (=> b!623210 (= c!71097 (= lt!289158 (Found!6520 index!984)))))

(declare-fun lt!289165 () Unit!21020)

(assert (=> b!623210 (= lt!289165 e!357481)))

(declare-fun c!71099 () Bool)

(assert (=> b!623210 (= c!71099 (= lt!289158 Undefined!6520))))

(declare-fun lt!289162 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37661 (_ BitVec 32)) SeekEntryResult!6520)

(assert (=> b!623210 (= lt!289158 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!289162 lt!289174 mask!3053))))

(assert (=> b!623210 e!357479))

(declare-fun res!401756 () Bool)

(assert (=> b!623210 (=> (not res!401756) (not e!357479))))

(declare-fun lt!289157 () (_ BitVec 32))

(assert (=> b!623210 (= res!401756 (= lt!289172 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289157 vacantSpotIndex!68 lt!289162 lt!289174 mask!3053)))))

(assert (=> b!623210 (= lt!289172 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!289157 vacantSpotIndex!68 (select (arr!18073 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!623210 (= lt!289162 (select (store (arr!18073 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!289175 () Unit!21020)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37661 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21020)

(assert (=> b!623210 (= lt!289175 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!289157 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!623210 (= lt!289157 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!357476 () Bool)

(declare-fun b!623211 () Bool)

(assert (=> b!623211 (= e!357476 (arrayContainsKey!0 lt!289174 (select (arr!18073 a!2986) j!136) index!984))))

(declare-fun b!623212 () Bool)

(declare-fun res!401758 () Bool)

(assert (=> b!623212 (= res!401758 (arrayContainsKey!0 lt!289174 (select (arr!18073 a!2986) j!136) j!136))))

(assert (=> b!623212 (=> (not res!401758) (not e!357476))))

(declare-fun e!357477 () Bool)

(assert (=> b!623212 (= e!357477 e!357476)))

(declare-fun b!623213 () Bool)

(declare-fun res!401746 () Bool)

(assert (=> b!623213 (=> (not res!401746) (not e!357474))))

(assert (=> b!623213 (= res!401746 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623214 () Bool)

(declare-fun Unit!21026 () Unit!21020)

(assert (=> b!623214 (= e!357481 Unit!21026)))

(declare-fun b!623215 () Bool)

(declare-fun res!401761 () Bool)

(assert (=> b!623215 (= res!401761 (bvsge j!136 index!984))))

(assert (=> b!623215 (=> res!401761 e!357477)))

(declare-fun e!357471 () Bool)

(assert (=> b!623215 (= e!357471 e!357477)))

(declare-fun b!623216 () Bool)

(declare-fun res!401754 () Bool)

(assert (=> b!623216 (=> (not res!401754) (not e!357474))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623216 (= res!401754 (validKeyInArray!0 k0!1786))))

(declare-fun b!623217 () Bool)

(assert (=> b!623217 false))

(declare-fun lt!289170 () Unit!21020)

(assert (=> b!623217 (= lt!289170 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!289174 (select (arr!18073 a!2986) j!136) j!136 Nil!12164))))

(assert (=> b!623217 (arrayNoDuplicates!0 lt!289174 j!136 Nil!12164)))

(declare-fun lt!289160 () Unit!21020)

(assert (=> b!623217 (= lt!289160 (lemmaNoDuplicateFromThenFromBigger!0 lt!289174 #b00000000000000000000000000000000 j!136))))

(assert (=> b!623217 (arrayNoDuplicates!0 lt!289174 #b00000000000000000000000000000000 Nil!12164)))

(declare-fun lt!289176 () Unit!21020)

(assert (=> b!623217 (= lt!289176 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12164))))

(assert (=> b!623217 (arrayContainsKey!0 lt!289174 (select (arr!18073 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!289173 () Unit!21020)

(assert (=> b!623217 (= lt!289173 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!289174 (select (arr!18073 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!21027 () Unit!21020)

(assert (=> b!623217 (= e!357469 Unit!21027)))

(declare-fun b!623218 () Bool)

(declare-fun res!401755 () Bool)

(assert (=> b!623218 (=> (not res!401755) (not e!357474))))

(assert (=> b!623218 (= res!401755 (validKeyInArray!0 (select (arr!18073 a!2986) j!136)))))

(declare-fun b!623219 () Bool)

(assert (=> b!623219 (= e!357472 (arrayContainsKey!0 lt!289174 (select (arr!18073 a!2986) j!136) index!984))))

(declare-fun b!623220 () Bool)

(declare-fun res!401752 () Bool)

(assert (=> b!623220 (=> (not res!401752) (not e!357468))))

(assert (=> b!623220 (= res!401752 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18073 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!623221 () Bool)

(declare-fun res!401749 () Bool)

(assert (=> b!623221 (=> (not res!401749) (not e!357468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37661 (_ BitVec 32)) Bool)

(assert (=> b!623221 (= res!401749 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623222 () Bool)

(declare-fun res!401748 () Bool)

(assert (=> b!623222 (=> (not res!401748) (not e!357474))))

(assert (=> b!623222 (= res!401748 (and (= (size!18437 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18437 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18437 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623223 () Bool)

(declare-fun e!357480 () Bool)

(assert (=> b!623223 (= e!357468 e!357480)))

(declare-fun res!401751 () Bool)

(assert (=> b!623223 (=> (not res!401751) (not e!357480))))

(assert (=> b!623223 (= res!401751 (= (select (store (arr!18073 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!623223 (= lt!289174 (array!37662 (store (arr!18073 a!2986) i!1108 k0!1786) (size!18437 a!2986)))))

(declare-fun b!623224 () Bool)

(assert (=> b!623224 (= e!357470 (validKeyInArray!0 lt!289162))))

(declare-fun b!623225 () Bool)

(declare-fun res!401759 () Bool)

(assert (=> b!623225 (=> (not res!401759) (not e!357468))))

(assert (=> b!623225 (= res!401759 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12164))))

(declare-fun b!623226 () Bool)

(declare-fun Unit!21028 () Unit!21020)

(assert (=> b!623226 (= e!357473 Unit!21028)))

(declare-fun b!623227 () Bool)

(declare-fun Unit!21029 () Unit!21020)

(assert (=> b!623227 (= e!357478 Unit!21029)))

(declare-fun res!401760 () Bool)

(assert (=> b!623227 (= res!401760 (= (select (store (arr!18073 a!2986) i!1108 k0!1786) index!984) (select (arr!18073 a!2986) j!136)))))

(assert (=> b!623227 (=> (not res!401760) (not e!357471))))

(assert (=> b!623227 e!357471))

(declare-fun c!71096 () Bool)

(assert (=> b!623227 (= c!71096 (bvslt j!136 index!984))))

(declare-fun lt!289161 () Unit!21020)

(assert (=> b!623227 (= lt!289161 e!357469)))

(declare-fun c!71098 () Bool)

(assert (=> b!623227 (= c!71098 (bvslt index!984 j!136))))

(declare-fun lt!289159 () Unit!21020)

(assert (=> b!623227 (= lt!289159 e!357473)))

(assert (=> b!623227 false))

(declare-fun b!623228 () Bool)

(assert (=> b!623228 (= e!357480 e!357475)))

(declare-fun res!401747 () Bool)

(assert (=> b!623228 (=> (not res!401747) (not e!357475))))

(assert (=> b!623228 (= res!401747 (and (= lt!289171 (Found!6520 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18073 a!2986) index!984) (select (arr!18073 a!2986) j!136))) (not (= (select (arr!18073 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!623228 (= lt!289171 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18073 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!56228 res!401750) b!623222))

(assert (= (and b!623222 res!401748) b!623218))

(assert (= (and b!623218 res!401755) b!623216))

(assert (= (and b!623216 res!401754) b!623213))

(assert (= (and b!623213 res!401746) b!623207))

(assert (= (and b!623207 res!401753) b!623221))

(assert (= (and b!623221 res!401749) b!623225))

(assert (= (and b!623225 res!401759) b!623220))

(assert (= (and b!623220 res!401752) b!623223))

(assert (= (and b!623223 res!401751) b!623228))

(assert (= (and b!623228 res!401747) b!623210))

(assert (= (and b!623210 res!401756) b!623204))

(assert (= (and b!623210 c!71099) b!623206))

(assert (= (and b!623210 (not c!71099)) b!623214))

(assert (= (and b!623210 c!71097) b!623227))

(assert (= (and b!623210 (not c!71097)) b!623208))

(assert (= (and b!623227 res!401760) b!623215))

(assert (= (and b!623215 (not res!401761)) b!623212))

(assert (= (and b!623212 res!401758) b!623211))

(assert (= (and b!623227 c!71096) b!623217))

(assert (= (and b!623227 (not c!71096)) b!623205))

(assert (= (and b!623227 c!71098) b!623209))

(assert (= (and b!623227 (not c!71098)) b!623226))

(assert (= (and b!623209 res!401762) b!623219))

(assert (= (and b!623210 (not res!401757)) b!623224))

(declare-fun m!599091 () Bool)

(assert (=> b!623228 m!599091))

(declare-fun m!599093 () Bool)

(assert (=> b!623228 m!599093))

(assert (=> b!623228 m!599093))

(declare-fun m!599095 () Bool)

(assert (=> b!623228 m!599095))

(declare-fun m!599097 () Bool)

(assert (=> b!623224 m!599097))

(assert (=> b!623212 m!599093))

(assert (=> b!623212 m!599093))

(declare-fun m!599099 () Bool)

(assert (=> b!623212 m!599099))

(declare-fun m!599101 () Bool)

(assert (=> b!623221 m!599101))

(declare-fun m!599103 () Bool)

(assert (=> b!623209 m!599103))

(assert (=> b!623209 m!599093))

(declare-fun m!599105 () Bool)

(assert (=> b!623209 m!599105))

(assert (=> b!623209 m!599093))

(declare-fun m!599107 () Bool)

(assert (=> b!623209 m!599107))

(assert (=> b!623209 m!599093))

(declare-fun m!599109 () Bool)

(assert (=> b!623209 m!599109))

(assert (=> b!623209 m!599093))

(declare-fun m!599111 () Bool)

(assert (=> b!623209 m!599111))

(assert (=> b!623209 m!599093))

(assert (=> b!623209 m!599099))

(declare-fun m!599113 () Bool)

(assert (=> b!623209 m!599113))

(declare-fun m!599115 () Bool)

(assert (=> b!623209 m!599115))

(declare-fun m!599117 () Bool)

(assert (=> b!623207 m!599117))

(declare-fun m!599119 () Bool)

(assert (=> b!623213 m!599119))

(assert (=> b!623218 m!599093))

(assert (=> b!623218 m!599093))

(declare-fun m!599121 () Bool)

(assert (=> b!623218 m!599121))

(declare-fun m!599123 () Bool)

(assert (=> b!623210 m!599123))

(declare-fun m!599125 () Bool)

(assert (=> b!623210 m!599125))

(declare-fun m!599127 () Bool)

(assert (=> b!623210 m!599127))

(assert (=> b!623210 m!599093))

(declare-fun m!599129 () Bool)

(assert (=> b!623210 m!599129))

(assert (=> b!623210 m!599093))

(declare-fun m!599131 () Bool)

(assert (=> b!623210 m!599131))

(declare-fun m!599133 () Bool)

(assert (=> b!623210 m!599133))

(declare-fun m!599135 () Bool)

(assert (=> b!623210 m!599135))

(declare-fun m!599137 () Bool)

(assert (=> b!623220 m!599137))

(assert (=> b!623227 m!599129))

(declare-fun m!599139 () Bool)

(assert (=> b!623227 m!599139))

(assert (=> b!623227 m!599093))

(assert (=> b!623223 m!599129))

(declare-fun m!599141 () Bool)

(assert (=> b!623223 m!599141))

(declare-fun m!599143 () Bool)

(assert (=> b!623216 m!599143))

(declare-fun m!599145 () Bool)

(assert (=> b!623217 m!599145))

(assert (=> b!623217 m!599093))

(declare-fun m!599147 () Bool)

(assert (=> b!623217 m!599147))

(assert (=> b!623217 m!599093))

(declare-fun m!599149 () Bool)

(assert (=> b!623217 m!599149))

(assert (=> b!623217 m!599093))

(declare-fun m!599151 () Bool)

(assert (=> b!623217 m!599151))

(assert (=> b!623217 m!599093))

(declare-fun m!599153 () Bool)

(assert (=> b!623217 m!599153))

(assert (=> b!623217 m!599113))

(assert (=> b!623217 m!599115))

(declare-fun m!599155 () Bool)

(assert (=> b!623225 m!599155))

(declare-fun m!599157 () Bool)

(assert (=> start!56228 m!599157))

(declare-fun m!599159 () Bool)

(assert (=> start!56228 m!599159))

(assert (=> b!623211 m!599093))

(assert (=> b!623211 m!599093))

(declare-fun m!599161 () Bool)

(assert (=> b!623211 m!599161))

(assert (=> b!623219 m!599093))

(assert (=> b!623219 m!599093))

(assert (=> b!623219 m!599161))

(check-sat (not b!623225) (not b!623212) (not b!623213) (not b!623210) (not start!56228) (not b!623207) (not b!623209) (not b!623211) (not b!623228) (not b!623217) (not b!623218) (not b!623219) (not b!623224) (not b!623216) (not b!623221))
(check-sat)
