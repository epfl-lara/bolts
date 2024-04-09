; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57128 () Bool)

(assert start!57128)

(declare-fun b!632253 () Bool)

(declare-fun res!409026 () Bool)

(declare-fun e!361469 () Bool)

(assert (=> b!632253 (=> (not res!409026) (not e!361469))))

(declare-datatypes ((array!38108 0))(
  ( (array!38109 (arr!18283 (Array (_ BitVec 32) (_ BitVec 64))) (size!18647 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38108)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632253 (= res!409026 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632254 () Bool)

(declare-datatypes ((Unit!21278 0))(
  ( (Unit!21279) )
))
(declare-fun e!361467 () Unit!21278)

(declare-fun Unit!21280 () Unit!21278)

(assert (=> b!632254 (= e!361467 Unit!21280)))

(declare-fun b!632255 () Bool)

(declare-fun Unit!21281 () Unit!21278)

(assert (=> b!632255 (= e!361467 Unit!21281)))

(assert (=> b!632255 false))

(declare-fun res!409036 () Bool)

(assert (=> start!57128 (=> (not res!409036) (not e!361469))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57128 (= res!409036 (validMask!0 mask!3053))))

(assert (=> start!57128 e!361469))

(assert (=> start!57128 true))

(declare-fun array_inv!14057 (array!38108) Bool)

(assert (=> start!57128 (array_inv!14057 a!2986)))

(declare-fun b!632256 () Bool)

(declare-fun e!361466 () Bool)

(declare-fun e!361471 () Bool)

(assert (=> b!632256 (= e!361466 (not e!361471))))

(declare-fun res!409025 () Bool)

(assert (=> b!632256 (=> res!409025 e!361471)))

(declare-datatypes ((SeekEntryResult!6730 0))(
  ( (MissingZero!6730 (index!29212 (_ BitVec 32))) (Found!6730 (index!29213 (_ BitVec 32))) (Intermediate!6730 (undefined!7542 Bool) (index!29214 (_ BitVec 32)) (x!57974 (_ BitVec 32))) (Undefined!6730) (MissingVacant!6730 (index!29215 (_ BitVec 32))) )
))
(declare-fun lt!292261 () SeekEntryResult!6730)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!632256 (= res!409025 (not (= lt!292261 (Found!6730 index!984))))))

(declare-fun lt!292266 () Unit!21278)

(assert (=> b!632256 (= lt!292266 e!361467)))

(declare-fun c!71981 () Bool)

(assert (=> b!632256 (= c!71981 (= lt!292261 Undefined!6730))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!292262 () (_ BitVec 64))

(declare-fun lt!292259 () array!38108)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38108 (_ BitVec 32)) SeekEntryResult!6730)

(assert (=> b!632256 (= lt!292261 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292262 lt!292259 mask!3053))))

(declare-fun e!361465 () Bool)

(assert (=> b!632256 e!361465))

(declare-fun res!409032 () Bool)

(assert (=> b!632256 (=> (not res!409032) (not e!361465))))

(declare-fun lt!292258 () SeekEntryResult!6730)

(declare-fun lt!292264 () (_ BitVec 32))

(assert (=> b!632256 (= res!409032 (= lt!292258 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292264 vacantSpotIndex!68 lt!292262 lt!292259 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!632256 (= lt!292258 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292264 vacantSpotIndex!68 (select (arr!18283 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!632256 (= lt!292262 (select (store (arr!18283 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!292263 () Unit!21278)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38108 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21278)

(assert (=> b!632256 (= lt!292263 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292264 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632256 (= lt!292264 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632257 () Bool)

(declare-fun res!409034 () Bool)

(declare-fun e!361468 () Bool)

(assert (=> b!632257 (=> (not res!409034) (not e!361468))))

(assert (=> b!632257 (= res!409034 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18283 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632258 () Bool)

(declare-fun res!409033 () Bool)

(assert (=> b!632258 (=> (not res!409033) (not e!361469))))

(assert (=> b!632258 (= res!409033 (and (= (size!18647 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18647 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18647 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632259 () Bool)

(declare-fun res!409035 () Bool)

(assert (=> b!632259 (=> (not res!409035) (not e!361469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632259 (= res!409035 (validKeyInArray!0 k0!1786))))

(declare-fun b!632260 () Bool)

(declare-fun res!409029 () Bool)

(assert (=> b!632260 (=> (not res!409029) (not e!361468))))

(declare-datatypes ((List!12377 0))(
  ( (Nil!12374) (Cons!12373 (h!13418 (_ BitVec 64)) (t!18613 List!12377)) )
))
(declare-fun arrayNoDuplicates!0 (array!38108 (_ BitVec 32) List!12377) Bool)

(assert (=> b!632260 (= res!409029 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12374))))

(declare-fun b!632261 () Bool)

(declare-fun lt!292260 () SeekEntryResult!6730)

(assert (=> b!632261 (= e!361465 (= lt!292260 lt!292258))))

(declare-fun b!632262 () Bool)

(declare-fun e!361470 () Bool)

(assert (=> b!632262 (= e!361468 e!361470)))

(declare-fun res!409030 () Bool)

(assert (=> b!632262 (=> (not res!409030) (not e!361470))))

(assert (=> b!632262 (= res!409030 (= (select (store (arr!18283 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632262 (= lt!292259 (array!38109 (store (arr!18283 a!2986) i!1108 k0!1786) (size!18647 a!2986)))))

(declare-fun b!632263 () Bool)

(declare-fun res!409028 () Bool)

(assert (=> b!632263 (=> (not res!409028) (not e!361468))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38108 (_ BitVec 32)) Bool)

(assert (=> b!632263 (= res!409028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632264 () Bool)

(assert (=> b!632264 (= e!361469 e!361468)))

(declare-fun res!409037 () Bool)

(assert (=> b!632264 (=> (not res!409037) (not e!361468))))

(declare-fun lt!292265 () SeekEntryResult!6730)

(assert (=> b!632264 (= res!409037 (or (= lt!292265 (MissingZero!6730 i!1108)) (= lt!292265 (MissingVacant!6730 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38108 (_ BitVec 32)) SeekEntryResult!6730)

(assert (=> b!632264 (= lt!292265 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!632265 () Bool)

(assert (=> b!632265 (= e!361470 e!361466)))

(declare-fun res!409031 () Bool)

(assert (=> b!632265 (=> (not res!409031) (not e!361466))))

(assert (=> b!632265 (= res!409031 (and (= lt!292260 (Found!6730 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18283 a!2986) index!984) (select (arr!18283 a!2986) j!136))) (not (= (select (arr!18283 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632265 (= lt!292260 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18283 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632266 () Bool)

(declare-fun res!409027 () Bool)

(assert (=> b!632266 (=> (not res!409027) (not e!361469))))

(assert (=> b!632266 (= res!409027 (validKeyInArray!0 (select (arr!18283 a!2986) j!136)))))

(declare-fun b!632267 () Bool)

(assert (=> b!632267 (= e!361471 (or (not (= (select (arr!18283 a!2986) j!136) lt!292262)) (bvslt index!984 (size!18647 a!2986))))))

(assert (=> b!632267 (= (select (store (arr!18283 a!2986) i!1108 k0!1786) index!984) (select (arr!18283 a!2986) j!136))))

(assert (= (and start!57128 res!409036) b!632258))

(assert (= (and b!632258 res!409033) b!632266))

(assert (= (and b!632266 res!409027) b!632259))

(assert (= (and b!632259 res!409035) b!632253))

(assert (= (and b!632253 res!409026) b!632264))

(assert (= (and b!632264 res!409037) b!632263))

(assert (= (and b!632263 res!409028) b!632260))

(assert (= (and b!632260 res!409029) b!632257))

(assert (= (and b!632257 res!409034) b!632262))

(assert (= (and b!632262 res!409030) b!632265))

(assert (= (and b!632265 res!409031) b!632256))

(assert (= (and b!632256 res!409032) b!632261))

(assert (= (and b!632256 c!71981) b!632255))

(assert (= (and b!632256 (not c!71981)) b!632254))

(assert (= (and b!632256 (not res!409025)) b!632267))

(declare-fun m!607137 () Bool)

(assert (=> b!632259 m!607137))

(declare-fun m!607139 () Bool)

(assert (=> b!632257 m!607139))

(declare-fun m!607141 () Bool)

(assert (=> b!632266 m!607141))

(assert (=> b!632266 m!607141))

(declare-fun m!607143 () Bool)

(assert (=> b!632266 m!607143))

(declare-fun m!607145 () Bool)

(assert (=> b!632264 m!607145))

(declare-fun m!607147 () Bool)

(assert (=> b!632262 m!607147))

(declare-fun m!607149 () Bool)

(assert (=> b!632262 m!607149))

(declare-fun m!607151 () Bool)

(assert (=> b!632263 m!607151))

(declare-fun m!607153 () Bool)

(assert (=> start!57128 m!607153))

(declare-fun m!607155 () Bool)

(assert (=> start!57128 m!607155))

(declare-fun m!607157 () Bool)

(assert (=> b!632253 m!607157))

(declare-fun m!607159 () Bool)

(assert (=> b!632256 m!607159))

(assert (=> b!632256 m!607141))

(assert (=> b!632256 m!607147))

(declare-fun m!607161 () Bool)

(assert (=> b!632256 m!607161))

(declare-fun m!607163 () Bool)

(assert (=> b!632256 m!607163))

(declare-fun m!607165 () Bool)

(assert (=> b!632256 m!607165))

(declare-fun m!607167 () Bool)

(assert (=> b!632256 m!607167))

(assert (=> b!632256 m!607141))

(declare-fun m!607169 () Bool)

(assert (=> b!632256 m!607169))

(declare-fun m!607171 () Bool)

(assert (=> b!632265 m!607171))

(assert (=> b!632265 m!607141))

(assert (=> b!632265 m!607141))

(declare-fun m!607173 () Bool)

(assert (=> b!632265 m!607173))

(assert (=> b!632267 m!607141))

(assert (=> b!632267 m!607147))

(declare-fun m!607175 () Bool)

(assert (=> b!632267 m!607175))

(declare-fun m!607177 () Bool)

(assert (=> b!632260 m!607177))

(check-sat (not b!632253) (not b!632260) (not b!632265) (not b!632263) (not start!57128) (not b!632264) (not b!632266) (not b!632259) (not b!632256))
(check-sat)
