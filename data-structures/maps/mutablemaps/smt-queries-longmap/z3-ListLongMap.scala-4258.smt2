; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59120 () Bool)

(assert start!59120)

(declare-fun b!652006 () Bool)

(declare-fun res!422890 () Bool)

(declare-fun e!374222 () Bool)

(assert (=> b!652006 (=> (not res!422890) (not e!374222))))

(declare-datatypes ((array!38576 0))(
  ( (array!38577 (arr!18487 (Array (_ BitVec 32) (_ BitVec 64))) (size!18851 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38576)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38576 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!652006 (= res!422890 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!422906 () Bool)

(assert (=> start!59120 (=> (not res!422906) (not e!374222))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59120 (= res!422906 (validMask!0 mask!3053))))

(assert (=> start!59120 e!374222))

(assert (=> start!59120 true))

(declare-fun array_inv!14261 (array!38576) Bool)

(assert (=> start!59120 (array_inv!14261 a!2986)))

(declare-fun b!652007 () Bool)

(declare-fun e!374220 () Bool)

(declare-datatypes ((SeekEntryResult!6934 0))(
  ( (MissingZero!6934 (index!30088 (_ BitVec 32))) (Found!6934 (index!30089 (_ BitVec 32))) (Intermediate!6934 (undefined!7746 Bool) (index!30090 (_ BitVec 32)) (x!58902 (_ BitVec 32))) (Undefined!6934) (MissingVacant!6934 (index!30091 (_ BitVec 32))) )
))
(declare-fun lt!303395 () SeekEntryResult!6934)

(declare-fun lt!303379 () SeekEntryResult!6934)

(assert (=> b!652007 (= e!374220 (= lt!303395 lt!303379))))

(declare-fun b!652008 () Bool)

(declare-fun e!374226 () Bool)

(declare-fun e!374214 () Bool)

(assert (=> b!652008 (= e!374226 e!374214)))

(declare-fun res!422895 () Bool)

(assert (=> b!652008 (=> res!422895 e!374214)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!652008 (= res!422895 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!22276 0))(
  ( (Unit!22277) )
))
(declare-fun lt!303385 () Unit!22276)

(declare-fun e!374221 () Unit!22276)

(assert (=> b!652008 (= lt!303385 e!374221)))

(declare-fun c!74926 () Bool)

(assert (=> b!652008 (= c!74926 (bvslt j!136 index!984))))

(declare-fun b!652009 () Bool)

(declare-fun e!374219 () Bool)

(declare-fun e!374227 () Bool)

(assert (=> b!652009 (= e!374219 (not e!374227))))

(declare-fun res!422898 () Bool)

(assert (=> b!652009 (=> res!422898 e!374227)))

(declare-fun lt!303382 () SeekEntryResult!6934)

(assert (=> b!652009 (= res!422898 (not (= lt!303382 (Found!6934 index!984))))))

(declare-fun lt!303389 () Unit!22276)

(declare-fun e!374224 () Unit!22276)

(assert (=> b!652009 (= lt!303389 e!374224)))

(declare-fun c!74927 () Bool)

(assert (=> b!652009 (= c!74927 (= lt!303382 Undefined!6934))))

(declare-fun lt!303384 () (_ BitVec 64))

(declare-fun lt!303391 () array!38576)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38576 (_ BitVec 32)) SeekEntryResult!6934)

(assert (=> b!652009 (= lt!303382 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303384 lt!303391 mask!3053))))

(assert (=> b!652009 e!374220))

(declare-fun res!422897 () Bool)

(assert (=> b!652009 (=> (not res!422897) (not e!374220))))

(declare-fun lt!303393 () (_ BitVec 32))

(assert (=> b!652009 (= res!422897 (= lt!303379 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303393 vacantSpotIndex!68 lt!303384 lt!303391 mask!3053)))))

(assert (=> b!652009 (= lt!303379 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303393 vacantSpotIndex!68 (select (arr!18487 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!652009 (= lt!303384 (select (store (arr!18487 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!303387 () Unit!22276)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38576 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22276)

(assert (=> b!652009 (= lt!303387 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303393 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!652009 (= lt!303393 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!652010 () Bool)

(declare-fun e!374216 () Bool)

(assert (=> b!652010 (= e!374222 e!374216)))

(declare-fun res!422904 () Bool)

(assert (=> b!652010 (=> (not res!422904) (not e!374216))))

(declare-fun lt!303388 () SeekEntryResult!6934)

(assert (=> b!652010 (= res!422904 (or (= lt!303388 (MissingZero!6934 i!1108)) (= lt!303388 (MissingVacant!6934 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38576 (_ BitVec 32)) SeekEntryResult!6934)

(assert (=> b!652010 (= lt!303388 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!652011 () Bool)

(declare-fun e!374213 () Bool)

(declare-fun e!374217 () Bool)

(assert (=> b!652011 (= e!374213 e!374217)))

(declare-fun res!422892 () Bool)

(assert (=> b!652011 (=> res!422892 e!374217)))

(declare-fun lt!303396 () (_ BitVec 64))

(assert (=> b!652011 (= res!422892 (or (not (= (select (arr!18487 a!2986) j!136) lt!303384)) (not (= (select (arr!18487 a!2986) j!136) lt!303396)) (bvsge j!136 index!984)))))

(declare-fun b!652012 () Bool)

(declare-fun res!422903 () Bool)

(assert (=> b!652012 (=> (not res!422903) (not e!374222))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!652012 (= res!422903 (validKeyInArray!0 (select (arr!18487 a!2986) j!136)))))

(declare-fun b!652013 () Bool)

(declare-fun Unit!22278 () Unit!22276)

(assert (=> b!652013 (= e!374224 Unit!22278)))

(declare-fun b!652014 () Bool)

(assert (=> b!652014 (= e!374214 (or (bvsge (size!18851 a!2986) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 index!984) (size!18851 a!2986))))))

(declare-datatypes ((List!12581 0))(
  ( (Nil!12578) (Cons!12577 (h!13622 (_ BitVec 64)) (t!18817 List!12581)) )
))
(declare-fun arrayNoDuplicates!0 (array!38576 (_ BitVec 32) List!12581) Bool)

(assert (=> b!652014 (arrayNoDuplicates!0 lt!303391 index!984 Nil!12578)))

(declare-fun lt!303386 () Unit!22276)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38576 (_ BitVec 32) (_ BitVec 32)) Unit!22276)

(assert (=> b!652014 (= lt!303386 (lemmaNoDuplicateFromThenFromBigger!0 lt!303391 #b00000000000000000000000000000000 index!984))))

(assert (=> b!652014 (arrayNoDuplicates!0 lt!303391 #b00000000000000000000000000000000 Nil!12578)))

(declare-fun lt!303394 () Unit!22276)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38576 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12581) Unit!22276)

(assert (=> b!652014 (= lt!303394 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12578))))

(assert (=> b!652014 (arrayContainsKey!0 lt!303391 (select (arr!18487 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303390 () Unit!22276)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38576 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22276)

(assert (=> b!652014 (= lt!303390 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303391 (select (arr!18487 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!374218 () Bool)

(assert (=> b!652014 e!374218))

(declare-fun res!422900 () Bool)

(assert (=> b!652014 (=> (not res!422900) (not e!374218))))

(assert (=> b!652014 (= res!422900 (arrayContainsKey!0 lt!303391 (select (arr!18487 a!2986) j!136) j!136))))

(declare-fun b!652015 () Bool)

(assert (=> b!652015 (= e!374218 (arrayContainsKey!0 lt!303391 (select (arr!18487 a!2986) j!136) index!984))))

(declare-fun b!652016 () Bool)

(assert (=> b!652016 (= e!374227 e!374226)))

(declare-fun res!422896 () Bool)

(assert (=> b!652016 (=> res!422896 e!374226)))

(assert (=> b!652016 (= res!422896 (or (not (= (select (arr!18487 a!2986) j!136) lt!303384)) (not (= (select (arr!18487 a!2986) j!136) lt!303396))))))

(assert (=> b!652016 e!374213))

(declare-fun res!422901 () Bool)

(assert (=> b!652016 (=> (not res!422901) (not e!374213))))

(assert (=> b!652016 (= res!422901 (= lt!303396 (select (arr!18487 a!2986) j!136)))))

(assert (=> b!652016 (= lt!303396 (select (store (arr!18487 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!652017 () Bool)

(declare-fun e!374225 () Bool)

(assert (=> b!652017 (= e!374216 e!374225)))

(declare-fun res!422902 () Bool)

(assert (=> b!652017 (=> (not res!422902) (not e!374225))))

(assert (=> b!652017 (= res!422902 (= (select (store (arr!18487 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652017 (= lt!303391 (array!38577 (store (arr!18487 a!2986) i!1108 k0!1786) (size!18851 a!2986)))))

(declare-fun b!652018 () Bool)

(declare-fun res!422893 () Bool)

(assert (=> b!652018 (=> (not res!422893) (not e!374216))))

(assert (=> b!652018 (= res!422893 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12578))))

(declare-fun b!652019 () Bool)

(declare-fun res!422905 () Bool)

(assert (=> b!652019 (=> (not res!422905) (not e!374222))))

(assert (=> b!652019 (= res!422905 (validKeyInArray!0 k0!1786))))

(declare-fun b!652020 () Bool)

(assert (=> b!652020 (= e!374225 e!374219)))

(declare-fun res!422894 () Bool)

(assert (=> b!652020 (=> (not res!422894) (not e!374219))))

(assert (=> b!652020 (= res!422894 (and (= lt!303395 (Found!6934 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18487 a!2986) index!984) (select (arr!18487 a!2986) j!136))) (not (= (select (arr!18487 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!652020 (= lt!303395 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18487 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652021 () Bool)

(declare-fun e!374223 () Bool)

(assert (=> b!652021 (= e!374217 e!374223)))

(declare-fun res!422889 () Bool)

(assert (=> b!652021 (=> (not res!422889) (not e!374223))))

(assert (=> b!652021 (= res!422889 (arrayContainsKey!0 lt!303391 (select (arr!18487 a!2986) j!136) j!136))))

(declare-fun b!652022 () Bool)

(declare-fun Unit!22279 () Unit!22276)

(assert (=> b!652022 (= e!374224 Unit!22279)))

(assert (=> b!652022 false))

(declare-fun b!652023 () Bool)

(declare-fun res!422899 () Bool)

(assert (=> b!652023 (=> (not res!422899) (not e!374216))))

(assert (=> b!652023 (= res!422899 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18487 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652024 () Bool)

(declare-fun res!422888 () Bool)

(assert (=> b!652024 (=> (not res!422888) (not e!374216))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38576 (_ BitVec 32)) Bool)

(assert (=> b!652024 (= res!422888 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!652025 () Bool)

(declare-fun Unit!22280 () Unit!22276)

(assert (=> b!652025 (= e!374221 Unit!22280)))

(declare-fun b!652026 () Bool)

(declare-fun res!422891 () Bool)

(assert (=> b!652026 (=> (not res!422891) (not e!374222))))

(assert (=> b!652026 (= res!422891 (and (= (size!18851 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18851 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18851 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!652027 () Bool)

(assert (=> b!652027 (= e!374223 (arrayContainsKey!0 lt!303391 (select (arr!18487 a!2986) j!136) index!984))))

(declare-fun b!652028 () Bool)

(declare-fun Unit!22281 () Unit!22276)

(assert (=> b!652028 (= e!374221 Unit!22281)))

(declare-fun lt!303380 () Unit!22276)

(assert (=> b!652028 (= lt!303380 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303391 (select (arr!18487 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!652028 (arrayContainsKey!0 lt!303391 (select (arr!18487 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303381 () Unit!22276)

(assert (=> b!652028 (= lt!303381 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12578))))

(assert (=> b!652028 (arrayNoDuplicates!0 lt!303391 #b00000000000000000000000000000000 Nil!12578)))

(declare-fun lt!303392 () Unit!22276)

(assert (=> b!652028 (= lt!303392 (lemmaNoDuplicateFromThenFromBigger!0 lt!303391 #b00000000000000000000000000000000 j!136))))

(assert (=> b!652028 (arrayNoDuplicates!0 lt!303391 j!136 Nil!12578)))

(declare-fun lt!303383 () Unit!22276)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38576 (_ BitVec 64) (_ BitVec 32) List!12581) Unit!22276)

(assert (=> b!652028 (= lt!303383 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303391 (select (arr!18487 a!2986) j!136) j!136 Nil!12578))))

(assert (=> b!652028 false))

(assert (= (and start!59120 res!422906) b!652026))

(assert (= (and b!652026 res!422891) b!652012))

(assert (= (and b!652012 res!422903) b!652019))

(assert (= (and b!652019 res!422905) b!652006))

(assert (= (and b!652006 res!422890) b!652010))

(assert (= (and b!652010 res!422904) b!652024))

(assert (= (and b!652024 res!422888) b!652018))

(assert (= (and b!652018 res!422893) b!652023))

(assert (= (and b!652023 res!422899) b!652017))

(assert (= (and b!652017 res!422902) b!652020))

(assert (= (and b!652020 res!422894) b!652009))

(assert (= (and b!652009 res!422897) b!652007))

(assert (= (and b!652009 c!74927) b!652022))

(assert (= (and b!652009 (not c!74927)) b!652013))

(assert (= (and b!652009 (not res!422898)) b!652016))

(assert (= (and b!652016 res!422901) b!652011))

(assert (= (and b!652011 (not res!422892)) b!652021))

(assert (= (and b!652021 res!422889) b!652027))

(assert (= (and b!652016 (not res!422896)) b!652008))

(assert (= (and b!652008 c!74926) b!652028))

(assert (= (and b!652008 (not c!74926)) b!652025))

(assert (= (and b!652008 (not res!422895)) b!652014))

(assert (= (and b!652014 res!422900) b!652015))

(declare-fun m!625223 () Bool)

(assert (=> b!652018 m!625223))

(declare-fun m!625225 () Bool)

(assert (=> b!652020 m!625225))

(declare-fun m!625227 () Bool)

(assert (=> b!652020 m!625227))

(assert (=> b!652020 m!625227))

(declare-fun m!625229 () Bool)

(assert (=> b!652020 m!625229))

(assert (=> b!652028 m!625227))

(declare-fun m!625231 () Bool)

(assert (=> b!652028 m!625231))

(assert (=> b!652028 m!625227))

(declare-fun m!625233 () Bool)

(assert (=> b!652028 m!625233))

(declare-fun m!625235 () Bool)

(assert (=> b!652028 m!625235))

(assert (=> b!652028 m!625227))

(assert (=> b!652028 m!625227))

(declare-fun m!625237 () Bool)

(assert (=> b!652028 m!625237))

(declare-fun m!625239 () Bool)

(assert (=> b!652028 m!625239))

(declare-fun m!625241 () Bool)

(assert (=> b!652028 m!625241))

(declare-fun m!625243 () Bool)

(assert (=> b!652028 m!625243))

(declare-fun m!625245 () Bool)

(assert (=> b!652023 m!625245))

(declare-fun m!625247 () Bool)

(assert (=> b!652006 m!625247))

(declare-fun m!625249 () Bool)

(assert (=> start!59120 m!625249))

(declare-fun m!625251 () Bool)

(assert (=> start!59120 m!625251))

(declare-fun m!625253 () Bool)

(assert (=> b!652010 m!625253))

(assert (=> b!652021 m!625227))

(assert (=> b!652021 m!625227))

(declare-fun m!625255 () Bool)

(assert (=> b!652021 m!625255))

(declare-fun m!625257 () Bool)

(assert (=> b!652024 m!625257))

(declare-fun m!625259 () Bool)

(assert (=> b!652019 m!625259))

(assert (=> b!652014 m!625227))

(declare-fun m!625261 () Bool)

(assert (=> b!652014 m!625261))

(assert (=> b!652014 m!625235))

(assert (=> b!652014 m!625227))

(assert (=> b!652014 m!625227))

(declare-fun m!625263 () Bool)

(assert (=> b!652014 m!625263))

(assert (=> b!652014 m!625227))

(assert (=> b!652014 m!625255))

(assert (=> b!652014 m!625243))

(declare-fun m!625265 () Bool)

(assert (=> b!652014 m!625265))

(declare-fun m!625267 () Bool)

(assert (=> b!652014 m!625267))

(assert (=> b!652027 m!625227))

(assert (=> b!652027 m!625227))

(declare-fun m!625269 () Bool)

(assert (=> b!652027 m!625269))

(assert (=> b!652011 m!625227))

(assert (=> b!652016 m!625227))

(declare-fun m!625271 () Bool)

(assert (=> b!652016 m!625271))

(declare-fun m!625273 () Bool)

(assert (=> b!652016 m!625273))

(assert (=> b!652017 m!625271))

(declare-fun m!625275 () Bool)

(assert (=> b!652017 m!625275))

(assert (=> b!652012 m!625227))

(assert (=> b!652012 m!625227))

(declare-fun m!625277 () Bool)

(assert (=> b!652012 m!625277))

(assert (=> b!652015 m!625227))

(assert (=> b!652015 m!625227))

(assert (=> b!652015 m!625269))

(declare-fun m!625279 () Bool)

(assert (=> b!652009 m!625279))

(declare-fun m!625281 () Bool)

(assert (=> b!652009 m!625281))

(assert (=> b!652009 m!625227))

(assert (=> b!652009 m!625271))

(declare-fun m!625283 () Bool)

(assert (=> b!652009 m!625283))

(declare-fun m!625285 () Bool)

(assert (=> b!652009 m!625285))

(declare-fun m!625287 () Bool)

(assert (=> b!652009 m!625287))

(assert (=> b!652009 m!625227))

(declare-fun m!625289 () Bool)

(assert (=> b!652009 m!625289))

(check-sat (not b!652021) (not b!652019) (not b!652020) (not b!652027) (not b!652010) (not b!652015) (not start!59120) (not b!652009) (not b!652014) (not b!652018) (not b!652028) (not b!652006) (not b!652012) (not b!652024))
(check-sat)
