; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54656 () Bool)

(assert start!54656)

(declare-fun b!597232 () Bool)

(declare-fun e!341290 () Bool)

(declare-fun e!341291 () Bool)

(assert (=> b!597232 (= e!341290 e!341291)))

(declare-fun res!382934 () Bool)

(assert (=> b!597232 (=> res!382934 e!341291)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!271377 () (_ BitVec 64))

(declare-fun lt!271381 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37010 0))(
  ( (array!37011 (arr!17764 (Array (_ BitVec 32) (_ BitVec 64))) (size!18128 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37010)

(assert (=> b!597232 (= res!382934 (or (not (= (select (arr!17764 a!2986) j!136) lt!271381)) (not (= (select (arr!17764 a!2986) j!136) lt!271377)) (bvsge j!136 index!984)))))

(declare-fun b!597233 () Bool)

(declare-fun e!341285 () Bool)

(declare-datatypes ((SeekEntryResult!6211 0))(
  ( (MissingZero!6211 (index!27094 (_ BitVec 32))) (Found!6211 (index!27095 (_ BitVec 32))) (Intermediate!6211 (undefined!7023 Bool) (index!27096 (_ BitVec 32)) (x!55921 (_ BitVec 32))) (Undefined!6211) (MissingVacant!6211 (index!27097 (_ BitVec 32))) )
))
(declare-fun lt!271385 () SeekEntryResult!6211)

(declare-fun lt!271386 () SeekEntryResult!6211)

(assert (=> b!597233 (= e!341285 (= lt!271385 lt!271386))))

(declare-fun b!597234 () Bool)

(declare-fun e!341287 () Bool)

(declare-fun e!341288 () Bool)

(assert (=> b!597234 (= e!341287 e!341288)))

(declare-fun res!382937 () Bool)

(assert (=> b!597234 (=> res!382937 e!341288)))

(assert (=> b!597234 (= res!382937 (or (not (= (select (arr!17764 a!2986) j!136) lt!271381)) (not (= (select (arr!17764 a!2986) j!136) lt!271377)) (bvsge j!136 index!984)))))

(assert (=> b!597234 e!341290))

(declare-fun res!382932 () Bool)

(assert (=> b!597234 (=> (not res!382932) (not e!341290))))

(assert (=> b!597234 (= res!382932 (= lt!271377 (select (arr!17764 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!597234 (= lt!271377 (select (store (arr!17764 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!597235 () Bool)

(declare-fun res!382930 () Bool)

(declare-fun e!341284 () Bool)

(assert (=> b!597235 (=> (not res!382930) (not e!341284))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!597235 (= res!382930 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17764 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!597237 () Bool)

(declare-fun e!341282 () Bool)

(assert (=> b!597237 (= e!341288 e!341282)))

(declare-fun res!382931 () Bool)

(assert (=> b!597237 (=> res!382931 e!341282)))

(assert (=> b!597237 (= res!382931 (or (bvsgt #b00000000000000000000000000000000 (size!18128 a!2986)) (bvsge (size!18128 a!2986) #b01111111111111111111111111111111)))))

(declare-fun lt!271380 () array!37010)

(declare-datatypes ((List!11858 0))(
  ( (Nil!11855) (Cons!11854 (h!12899 (_ BitVec 64)) (t!18094 List!11858)) )
))
(declare-fun arrayNoDuplicates!0 (array!37010 (_ BitVec 32) List!11858) Bool)

(assert (=> b!597237 (arrayNoDuplicates!0 lt!271380 #b00000000000000000000000000000000 Nil!11855)))

(declare-datatypes ((Unit!18788 0))(
  ( (Unit!18789) )
))
(declare-fun lt!271384 () Unit!18788)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37010 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11858) Unit!18788)

(assert (=> b!597237 (= lt!271384 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11855))))

(declare-fun arrayContainsKey!0 (array!37010 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!597237 (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271376 () Unit!18788)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37010 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18788)

(assert (=> b!597237 (= lt!271376 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271380 (select (arr!17764 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!597238 () Bool)

(declare-fun e!341289 () Unit!18788)

(declare-fun Unit!18790 () Unit!18788)

(assert (=> b!597238 (= e!341289 Unit!18790)))

(assert (=> b!597238 false))

(declare-fun b!597239 () Bool)

(declare-fun res!382935 () Bool)

(declare-fun e!341292 () Bool)

(assert (=> b!597239 (=> (not res!382935) (not e!341292))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!597239 (= res!382935 (validKeyInArray!0 k0!1786))))

(declare-fun b!597240 () Bool)

(declare-fun res!382942 () Bool)

(assert (=> b!597240 (=> (not res!382942) (not e!341292))))

(assert (=> b!597240 (= res!382942 (and (= (size!18128 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18128 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18128 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!597241 () Bool)

(assert (=> b!597241 (= e!341292 e!341284)))

(declare-fun res!382933 () Bool)

(assert (=> b!597241 (=> (not res!382933) (not e!341284))))

(declare-fun lt!271378 () SeekEntryResult!6211)

(assert (=> b!597241 (= res!382933 (or (= lt!271378 (MissingZero!6211 i!1108)) (= lt!271378 (MissingVacant!6211 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37010 (_ BitVec 32)) SeekEntryResult!6211)

(assert (=> b!597241 (= lt!271378 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!597242 () Bool)

(declare-fun noDuplicate!272 (List!11858) Bool)

(assert (=> b!597242 (= e!341282 (noDuplicate!272 Nil!11855))))

(declare-fun b!597243 () Bool)

(declare-fun e!341286 () Bool)

(declare-fun e!341281 () Bool)

(assert (=> b!597243 (= e!341286 e!341281)))

(declare-fun res!382927 () Bool)

(assert (=> b!597243 (=> (not res!382927) (not e!341281))))

(assert (=> b!597243 (= res!382927 (and (= lt!271385 (Found!6211 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17764 a!2986) index!984) (select (arr!17764 a!2986) j!136))) (not (= (select (arr!17764 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37010 (_ BitVec 32)) SeekEntryResult!6211)

(assert (=> b!597243 (= lt!271385 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17764 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597244 () Bool)

(declare-fun res!382929 () Bool)

(assert (=> b!597244 (=> (not res!382929) (not e!341292))))

(assert (=> b!597244 (= res!382929 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!382938 () Bool)

(assert (=> start!54656 (=> (not res!382938) (not e!341292))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54656 (= res!382938 (validMask!0 mask!3053))))

(assert (=> start!54656 e!341292))

(assert (=> start!54656 true))

(declare-fun array_inv!13538 (array!37010) Bool)

(assert (=> start!54656 (array_inv!13538 a!2986)))

(declare-fun b!597236 () Bool)

(assert (=> b!597236 (= e!341281 (not e!341287))))

(declare-fun res!382940 () Bool)

(assert (=> b!597236 (=> res!382940 e!341287)))

(declare-fun lt!271383 () SeekEntryResult!6211)

(assert (=> b!597236 (= res!382940 (not (= lt!271383 (Found!6211 index!984))))))

(declare-fun lt!271379 () Unit!18788)

(assert (=> b!597236 (= lt!271379 e!341289)))

(declare-fun c!67520 () Bool)

(assert (=> b!597236 (= c!67520 (= lt!271383 Undefined!6211))))

(assert (=> b!597236 (= lt!271383 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271381 lt!271380 mask!3053))))

(assert (=> b!597236 e!341285))

(declare-fun res!382943 () Bool)

(assert (=> b!597236 (=> (not res!382943) (not e!341285))))

(declare-fun lt!271382 () (_ BitVec 32))

(assert (=> b!597236 (= res!382943 (= lt!271386 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271382 vacantSpotIndex!68 lt!271381 lt!271380 mask!3053)))))

(assert (=> b!597236 (= lt!271386 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271382 vacantSpotIndex!68 (select (arr!17764 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!597236 (= lt!271381 (select (store (arr!17764 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!271375 () Unit!18788)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37010 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18788)

(assert (=> b!597236 (= lt!271375 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271382 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!597236 (= lt!271382 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!597245 () Bool)

(declare-fun res!382939 () Bool)

(assert (=> b!597245 (=> (not res!382939) (not e!341292))))

(assert (=> b!597245 (= res!382939 (validKeyInArray!0 (select (arr!17764 a!2986) j!136)))))

(declare-fun b!597246 () Bool)

(declare-fun e!341283 () Bool)

(assert (=> b!597246 (= e!341291 e!341283)))

(declare-fun res!382936 () Bool)

(assert (=> b!597246 (=> (not res!382936) (not e!341283))))

(assert (=> b!597246 (= res!382936 (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) j!136))))

(declare-fun b!597247 () Bool)

(assert (=> b!597247 (= e!341284 e!341286)))

(declare-fun res!382926 () Bool)

(assert (=> b!597247 (=> (not res!382926) (not e!341286))))

(assert (=> b!597247 (= res!382926 (= (select (store (arr!17764 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!597247 (= lt!271380 (array!37011 (store (arr!17764 a!2986) i!1108 k0!1786) (size!18128 a!2986)))))

(declare-fun b!597248 () Bool)

(declare-fun res!382941 () Bool)

(assert (=> b!597248 (=> (not res!382941) (not e!341284))))

(assert (=> b!597248 (= res!382941 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11855))))

(declare-fun b!597249 () Bool)

(declare-fun Unit!18791 () Unit!18788)

(assert (=> b!597249 (= e!341289 Unit!18791)))

(declare-fun b!597250 () Bool)

(assert (=> b!597250 (= e!341283 (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) index!984))))

(declare-fun b!597251 () Bool)

(declare-fun res!382928 () Bool)

(assert (=> b!597251 (=> (not res!382928) (not e!341284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37010 (_ BitVec 32)) Bool)

(assert (=> b!597251 (= res!382928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!54656 res!382938) b!597240))

(assert (= (and b!597240 res!382942) b!597245))

(assert (= (and b!597245 res!382939) b!597239))

(assert (= (and b!597239 res!382935) b!597244))

(assert (= (and b!597244 res!382929) b!597241))

(assert (= (and b!597241 res!382933) b!597251))

(assert (= (and b!597251 res!382928) b!597248))

(assert (= (and b!597248 res!382941) b!597235))

(assert (= (and b!597235 res!382930) b!597247))

(assert (= (and b!597247 res!382926) b!597243))

(assert (= (and b!597243 res!382927) b!597236))

(assert (= (and b!597236 res!382943) b!597233))

(assert (= (and b!597236 c!67520) b!597238))

(assert (= (and b!597236 (not c!67520)) b!597249))

(assert (= (and b!597236 (not res!382940)) b!597234))

(assert (= (and b!597234 res!382932) b!597232))

(assert (= (and b!597232 (not res!382934)) b!597246))

(assert (= (and b!597246 res!382936) b!597250))

(assert (= (and b!597234 (not res!382937)) b!597237))

(assert (= (and b!597237 (not res!382931)) b!597242))

(declare-fun m!574679 () Bool)

(assert (=> b!597244 m!574679))

(declare-fun m!574681 () Bool)

(assert (=> b!597247 m!574681))

(declare-fun m!574683 () Bool)

(assert (=> b!597247 m!574683))

(declare-fun m!574685 () Bool)

(assert (=> b!597251 m!574685))

(declare-fun m!574687 () Bool)

(assert (=> b!597232 m!574687))

(assert (=> b!597250 m!574687))

(assert (=> b!597250 m!574687))

(declare-fun m!574689 () Bool)

(assert (=> b!597250 m!574689))

(declare-fun m!574691 () Bool)

(assert (=> b!597242 m!574691))

(assert (=> b!597234 m!574687))

(assert (=> b!597234 m!574681))

(declare-fun m!574693 () Bool)

(assert (=> b!597234 m!574693))

(assert (=> b!597245 m!574687))

(assert (=> b!597245 m!574687))

(declare-fun m!574695 () Bool)

(assert (=> b!597245 m!574695))

(declare-fun m!574697 () Bool)

(assert (=> b!597235 m!574697))

(declare-fun m!574699 () Bool)

(assert (=> start!54656 m!574699))

(declare-fun m!574701 () Bool)

(assert (=> start!54656 m!574701))

(assert (=> b!597246 m!574687))

(assert (=> b!597246 m!574687))

(declare-fun m!574703 () Bool)

(assert (=> b!597246 m!574703))

(assert (=> b!597237 m!574687))

(assert (=> b!597237 m!574687))

(declare-fun m!574705 () Bool)

(assert (=> b!597237 m!574705))

(assert (=> b!597237 m!574687))

(declare-fun m!574707 () Bool)

(assert (=> b!597237 m!574707))

(declare-fun m!574709 () Bool)

(assert (=> b!597237 m!574709))

(declare-fun m!574711 () Bool)

(assert (=> b!597237 m!574711))

(declare-fun m!574713 () Bool)

(assert (=> b!597236 m!574713))

(declare-fun m!574715 () Bool)

(assert (=> b!597236 m!574715))

(assert (=> b!597236 m!574687))

(assert (=> b!597236 m!574681))

(declare-fun m!574717 () Bool)

(assert (=> b!597236 m!574717))

(assert (=> b!597236 m!574687))

(declare-fun m!574719 () Bool)

(assert (=> b!597236 m!574719))

(declare-fun m!574721 () Bool)

(assert (=> b!597236 m!574721))

(declare-fun m!574723 () Bool)

(assert (=> b!597236 m!574723))

(declare-fun m!574725 () Bool)

(assert (=> b!597248 m!574725))

(declare-fun m!574727 () Bool)

(assert (=> b!597243 m!574727))

(assert (=> b!597243 m!574687))

(assert (=> b!597243 m!574687))

(declare-fun m!574729 () Bool)

(assert (=> b!597243 m!574729))

(declare-fun m!574731 () Bool)

(assert (=> b!597239 m!574731))

(declare-fun m!574733 () Bool)

(assert (=> b!597241 m!574733))

(check-sat (not b!597244) (not b!597243) (not b!597245) (not b!597237) (not b!597242) (not b!597250) (not b!597246) (not b!597241) (not b!597248) (not b!597239) (not b!597236) (not start!54656) (not b!597251))
(check-sat)
(get-model)

(declare-fun b!597324 () Bool)

(declare-fun e!341340 () SeekEntryResult!6211)

(declare-fun e!341339 () SeekEntryResult!6211)

(assert (=> b!597324 (= e!341340 e!341339)))

(declare-fun lt!271428 () (_ BitVec 64))

(declare-fun c!67531 () Bool)

(assert (=> b!597324 (= c!67531 (= lt!271428 (select (arr!17764 a!2986) j!136)))))

(declare-fun b!597325 () Bool)

(declare-fun c!67530 () Bool)

(assert (=> b!597325 (= c!67530 (= lt!271428 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341341 () SeekEntryResult!6211)

(assert (=> b!597325 (= e!341339 e!341341)))

(declare-fun b!597326 () Bool)

(assert (=> b!597326 (= e!341341 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17764 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597327 () Bool)

(assert (=> b!597327 (= e!341339 (Found!6211 index!984))))

(declare-fun b!597328 () Bool)

(assert (=> b!597328 (= e!341340 Undefined!6211)))

(declare-fun b!597329 () Bool)

(assert (=> b!597329 (= e!341341 (MissingVacant!6211 vacantSpotIndex!68))))

(declare-fun d!86703 () Bool)

(declare-fun lt!271427 () SeekEntryResult!6211)

(get-info :version)

(assert (=> d!86703 (and (or ((_ is Undefined!6211) lt!271427) (not ((_ is Found!6211) lt!271427)) (and (bvsge (index!27095 lt!271427) #b00000000000000000000000000000000) (bvslt (index!27095 lt!271427) (size!18128 a!2986)))) (or ((_ is Undefined!6211) lt!271427) ((_ is Found!6211) lt!271427) (not ((_ is MissingVacant!6211) lt!271427)) (not (= (index!27097 lt!271427) vacantSpotIndex!68)) (and (bvsge (index!27097 lt!271427) #b00000000000000000000000000000000) (bvslt (index!27097 lt!271427) (size!18128 a!2986)))) (or ((_ is Undefined!6211) lt!271427) (ite ((_ is Found!6211) lt!271427) (= (select (arr!17764 a!2986) (index!27095 lt!271427)) (select (arr!17764 a!2986) j!136)) (and ((_ is MissingVacant!6211) lt!271427) (= (index!27097 lt!271427) vacantSpotIndex!68) (= (select (arr!17764 a!2986) (index!27097 lt!271427)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86703 (= lt!271427 e!341340)))

(declare-fun c!67532 () Bool)

(assert (=> d!86703 (= c!67532 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86703 (= lt!271428 (select (arr!17764 a!2986) index!984))))

(assert (=> d!86703 (validMask!0 mask!3053)))

(assert (=> d!86703 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17764 a!2986) j!136) a!2986 mask!3053) lt!271427)))

(assert (= (and d!86703 c!67532) b!597328))

(assert (= (and d!86703 (not c!67532)) b!597324))

(assert (= (and b!597324 c!67531) b!597327))

(assert (= (and b!597324 (not c!67531)) b!597325))

(assert (= (and b!597325 c!67530) b!597329))

(assert (= (and b!597325 (not c!67530)) b!597326))

(assert (=> b!597326 m!574721))

(assert (=> b!597326 m!574721))

(assert (=> b!597326 m!574687))

(declare-fun m!574791 () Bool)

(assert (=> b!597326 m!574791))

(declare-fun m!574793 () Bool)

(assert (=> d!86703 m!574793))

(declare-fun m!574795 () Bool)

(assert (=> d!86703 m!574795))

(assert (=> d!86703 m!574727))

(assert (=> d!86703 m!574699))

(assert (=> b!597243 d!86703))

(declare-fun d!86705 () Bool)

(declare-fun res!383002 () Bool)

(declare-fun e!341346 () Bool)

(assert (=> d!86705 (=> res!383002 e!341346)))

(assert (=> d!86705 (= res!383002 ((_ is Nil!11855) Nil!11855))))

(assert (=> d!86705 (= (noDuplicate!272 Nil!11855) e!341346)))

(declare-fun b!597334 () Bool)

(declare-fun e!341347 () Bool)

(assert (=> b!597334 (= e!341346 e!341347)))

(declare-fun res!383003 () Bool)

(assert (=> b!597334 (=> (not res!383003) (not e!341347))))

(declare-fun contains!2958 (List!11858 (_ BitVec 64)) Bool)

(assert (=> b!597334 (= res!383003 (not (contains!2958 (t!18094 Nil!11855) (h!12899 Nil!11855))))))

(declare-fun b!597335 () Bool)

(assert (=> b!597335 (= e!341347 (noDuplicate!272 (t!18094 Nil!11855)))))

(assert (= (and d!86705 (not res!383002)) b!597334))

(assert (= (and b!597334 res!383003) b!597335))

(declare-fun m!574797 () Bool)

(assert (=> b!597334 m!574797))

(declare-fun m!574799 () Bool)

(assert (=> b!597335 m!574799))

(assert (=> b!597242 d!86705))

(declare-fun b!597348 () Bool)

(declare-fun c!67540 () Bool)

(declare-fun lt!271437 () (_ BitVec 64))

(assert (=> b!597348 (= c!67540 (= lt!271437 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341355 () SeekEntryResult!6211)

(declare-fun e!341356 () SeekEntryResult!6211)

(assert (=> b!597348 (= e!341355 e!341356)))

(declare-fun b!597349 () Bool)

(declare-fun lt!271436 () SeekEntryResult!6211)

(assert (=> b!597349 (= e!341356 (MissingZero!6211 (index!27096 lt!271436)))))

(declare-fun b!597350 () Bool)

(assert (=> b!597350 (= e!341356 (seekKeyOrZeroReturnVacant!0 (x!55921 lt!271436) (index!27096 lt!271436) (index!27096 lt!271436) k0!1786 a!2986 mask!3053))))

(declare-fun b!597351 () Bool)

(declare-fun e!341354 () SeekEntryResult!6211)

(assert (=> b!597351 (= e!341354 e!341355)))

(assert (=> b!597351 (= lt!271437 (select (arr!17764 a!2986) (index!27096 lt!271436)))))

(declare-fun c!67541 () Bool)

(assert (=> b!597351 (= c!67541 (= lt!271437 k0!1786))))

(declare-fun b!597352 () Bool)

(assert (=> b!597352 (= e!341355 (Found!6211 (index!27096 lt!271436)))))

(declare-fun d!86707 () Bool)

(declare-fun lt!271435 () SeekEntryResult!6211)

(assert (=> d!86707 (and (or ((_ is Undefined!6211) lt!271435) (not ((_ is Found!6211) lt!271435)) (and (bvsge (index!27095 lt!271435) #b00000000000000000000000000000000) (bvslt (index!27095 lt!271435) (size!18128 a!2986)))) (or ((_ is Undefined!6211) lt!271435) ((_ is Found!6211) lt!271435) (not ((_ is MissingZero!6211) lt!271435)) (and (bvsge (index!27094 lt!271435) #b00000000000000000000000000000000) (bvslt (index!27094 lt!271435) (size!18128 a!2986)))) (or ((_ is Undefined!6211) lt!271435) ((_ is Found!6211) lt!271435) ((_ is MissingZero!6211) lt!271435) (not ((_ is MissingVacant!6211) lt!271435)) (and (bvsge (index!27097 lt!271435) #b00000000000000000000000000000000) (bvslt (index!27097 lt!271435) (size!18128 a!2986)))) (or ((_ is Undefined!6211) lt!271435) (ite ((_ is Found!6211) lt!271435) (= (select (arr!17764 a!2986) (index!27095 lt!271435)) k0!1786) (ite ((_ is MissingZero!6211) lt!271435) (= (select (arr!17764 a!2986) (index!27094 lt!271435)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!6211) lt!271435) (= (select (arr!17764 a!2986) (index!27097 lt!271435)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86707 (= lt!271435 e!341354)))

(declare-fun c!67539 () Bool)

(assert (=> d!86707 (= c!67539 (and ((_ is Intermediate!6211) lt!271436) (undefined!7023 lt!271436)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37010 (_ BitVec 32)) SeekEntryResult!6211)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86707 (= lt!271436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1786 mask!3053) k0!1786 a!2986 mask!3053))))

(assert (=> d!86707 (validMask!0 mask!3053)))

(assert (=> d!86707 (= (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053) lt!271435)))

(declare-fun b!597353 () Bool)

(assert (=> b!597353 (= e!341354 Undefined!6211)))

(assert (= (and d!86707 c!67539) b!597353))

(assert (= (and d!86707 (not c!67539)) b!597351))

(assert (= (and b!597351 c!67541) b!597352))

(assert (= (and b!597351 (not c!67541)) b!597348))

(assert (= (and b!597348 c!67540) b!597349))

(assert (= (and b!597348 (not c!67540)) b!597350))

(declare-fun m!574801 () Bool)

(assert (=> b!597350 m!574801))

(declare-fun m!574803 () Bool)

(assert (=> b!597351 m!574803))

(declare-fun m!574805 () Bool)

(assert (=> d!86707 m!574805))

(declare-fun m!574807 () Bool)

(assert (=> d!86707 m!574807))

(declare-fun m!574809 () Bool)

(assert (=> d!86707 m!574809))

(declare-fun m!574811 () Bool)

(assert (=> d!86707 m!574811))

(assert (=> d!86707 m!574807))

(assert (=> d!86707 m!574699))

(declare-fun m!574813 () Bool)

(assert (=> d!86707 m!574813))

(assert (=> b!597241 d!86707))

(declare-fun d!86709 () Bool)

(assert (=> d!86709 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54656 d!86709))

(declare-fun d!86713 () Bool)

(assert (=> d!86713 (= (array_inv!13538 a!2986) (bvsge (size!18128 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54656 d!86713))

(declare-fun b!597370 () Bool)

(declare-fun e!341371 () Bool)

(declare-fun call!32921 () Bool)

(assert (=> b!597370 (= e!341371 call!32921)))

(declare-fun b!597371 () Bool)

(declare-fun e!341372 () Bool)

(assert (=> b!597371 (= e!341371 e!341372)))

(declare-fun lt!271446 () (_ BitVec 64))

(assert (=> b!597371 (= lt!271446 (select (arr!17764 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!271448 () Unit!18788)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37010 (_ BitVec 64) (_ BitVec 32)) Unit!18788)

(assert (=> b!597371 (= lt!271448 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!271446 #b00000000000000000000000000000000))))

(assert (=> b!597371 (arrayContainsKey!0 a!2986 lt!271446 #b00000000000000000000000000000000)))

(declare-fun lt!271447 () Unit!18788)

(assert (=> b!597371 (= lt!271447 lt!271448)))

(declare-fun res!383016 () Bool)

(assert (=> b!597371 (= res!383016 (= (seekEntryOrOpen!0 (select (arr!17764 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6211 #b00000000000000000000000000000000)))))

(assert (=> b!597371 (=> (not res!383016) (not e!341372))))

(declare-fun d!86715 () Bool)

(declare-fun res!383017 () Bool)

(declare-fun e!341373 () Bool)

(assert (=> d!86715 (=> res!383017 e!341373)))

(assert (=> d!86715 (= res!383017 (bvsge #b00000000000000000000000000000000 (size!18128 a!2986)))))

(assert (=> d!86715 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!341373)))

(declare-fun b!597372 () Bool)

(assert (=> b!597372 (= e!341372 call!32921)))

(declare-fun b!597373 () Bool)

(assert (=> b!597373 (= e!341373 e!341371)))

(declare-fun c!67544 () Bool)

(assert (=> b!597373 (= c!67544 (validKeyInArray!0 (select (arr!17764 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32918 () Bool)

(assert (=> bm!32918 (= call!32921 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!86715 (not res!383017)) b!597373))

(assert (= (and b!597373 c!67544) b!597371))

(assert (= (and b!597373 (not c!67544)) b!597370))

(assert (= (and b!597371 res!383016) b!597372))

(assert (= (or b!597372 b!597370) bm!32918))

(declare-fun m!574819 () Bool)

(assert (=> b!597371 m!574819))

(declare-fun m!574821 () Bool)

(assert (=> b!597371 m!574821))

(declare-fun m!574823 () Bool)

(assert (=> b!597371 m!574823))

(assert (=> b!597371 m!574819))

(declare-fun m!574825 () Bool)

(assert (=> b!597371 m!574825))

(assert (=> b!597373 m!574819))

(assert (=> b!597373 m!574819))

(declare-fun m!574827 () Bool)

(assert (=> b!597373 m!574827))

(declare-fun m!574829 () Bool)

(assert (=> bm!32918 m!574829))

(assert (=> b!597251 d!86715))

(declare-fun d!86721 () Bool)

(declare-fun res!383029 () Bool)

(declare-fun e!341387 () Bool)

(assert (=> d!86721 (=> res!383029 e!341387)))

(assert (=> d!86721 (= res!383029 (= (select (arr!17764 lt!271380) index!984) (select (arr!17764 a!2986) j!136)))))

(assert (=> d!86721 (= (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) index!984) e!341387)))

(declare-fun b!597389 () Bool)

(declare-fun e!341388 () Bool)

(assert (=> b!597389 (= e!341387 e!341388)))

(declare-fun res!383030 () Bool)

(assert (=> b!597389 (=> (not res!383030) (not e!341388))))

(assert (=> b!597389 (= res!383030 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18128 lt!271380)))))

(declare-fun b!597390 () Bool)

(assert (=> b!597390 (= e!341388 (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!86721 (not res!383029)) b!597389))

(assert (= (and b!597389 res!383030) b!597390))

(declare-fun m!574835 () Bool)

(assert (=> d!86721 m!574835))

(assert (=> b!597390 m!574687))

(declare-fun m!574837 () Bool)

(assert (=> b!597390 m!574837))

(assert (=> b!597250 d!86721))

(declare-fun d!86725 () Bool)

(assert (=> d!86725 (= (validKeyInArray!0 k0!1786) (and (not (= k0!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!597239 d!86725))

(declare-fun d!86727 () Bool)

(declare-fun res!383043 () Bool)

(declare-fun e!341403 () Bool)

(assert (=> d!86727 (=> res!383043 e!341403)))

(assert (=> d!86727 (= res!383043 (bvsge #b00000000000000000000000000000000 (size!18128 a!2986)))))

(assert (=> d!86727 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11855) e!341403)))

(declare-fun b!597412 () Bool)

(declare-fun e!341408 () Bool)

(assert (=> b!597412 (= e!341408 (contains!2958 Nil!11855 (select (arr!17764 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!32924 () Bool)

(declare-fun call!32927 () Bool)

(declare-fun c!67550 () Bool)

(assert (=> bm!32924 (= call!32927 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67550 (Cons!11854 (select (arr!17764 a!2986) #b00000000000000000000000000000000) Nil!11855) Nil!11855)))))

(declare-fun b!597413 () Bool)

(declare-fun e!341405 () Bool)

(assert (=> b!597413 (= e!341403 e!341405)))

(declare-fun res!383042 () Bool)

(assert (=> b!597413 (=> (not res!383042) (not e!341405))))

(assert (=> b!597413 (= res!383042 (not e!341408))))

(declare-fun res!383044 () Bool)

(assert (=> b!597413 (=> (not res!383044) (not e!341408))))

(assert (=> b!597413 (= res!383044 (validKeyInArray!0 (select (arr!17764 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!597414 () Bool)

(declare-fun e!341407 () Bool)

(assert (=> b!597414 (= e!341407 call!32927)))

(declare-fun b!597415 () Bool)

(assert (=> b!597415 (= e!341405 e!341407)))

(assert (=> b!597415 (= c!67550 (validKeyInArray!0 (select (arr!17764 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!597416 () Bool)

(assert (=> b!597416 (= e!341407 call!32927)))

(assert (= (and d!86727 (not res!383043)) b!597413))

(assert (= (and b!597413 res!383044) b!597412))

(assert (= (and b!597413 res!383042) b!597415))

(assert (= (and b!597415 c!67550) b!597414))

(assert (= (and b!597415 (not c!67550)) b!597416))

(assert (= (or b!597414 b!597416) bm!32924))

(assert (=> b!597412 m!574819))

(assert (=> b!597412 m!574819))

(declare-fun m!574847 () Bool)

(assert (=> b!597412 m!574847))

(assert (=> bm!32924 m!574819))

(declare-fun m!574849 () Bool)

(assert (=> bm!32924 m!574849))

(assert (=> b!597413 m!574819))

(assert (=> b!597413 m!574819))

(assert (=> b!597413 m!574827))

(assert (=> b!597415 m!574819))

(assert (=> b!597415 m!574819))

(assert (=> b!597415 m!574827))

(assert (=> b!597248 d!86727))

(declare-fun d!86731 () Bool)

(declare-fun res!383048 () Bool)

(declare-fun e!341411 () Bool)

(assert (=> d!86731 (=> res!383048 e!341411)))

(assert (=> d!86731 (= res!383048 (bvsge #b00000000000000000000000000000000 (size!18128 lt!271380)))))

(assert (=> d!86731 (= (arrayNoDuplicates!0 lt!271380 #b00000000000000000000000000000000 Nil!11855) e!341411)))

(declare-fun b!597419 () Bool)

(declare-fun e!341414 () Bool)

(assert (=> b!597419 (= e!341414 (contains!2958 Nil!11855 (select (arr!17764 lt!271380) #b00000000000000000000000000000000)))))

(declare-fun bm!32927 () Bool)

(declare-fun call!32930 () Bool)

(declare-fun c!67553 () Bool)

(assert (=> bm!32927 (= call!32930 (arrayNoDuplicates!0 lt!271380 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!67553 (Cons!11854 (select (arr!17764 lt!271380) #b00000000000000000000000000000000) Nil!11855) Nil!11855)))))

(declare-fun b!597420 () Bool)

(declare-fun e!341412 () Bool)

(assert (=> b!597420 (= e!341411 e!341412)))

(declare-fun res!383047 () Bool)

(assert (=> b!597420 (=> (not res!383047) (not e!341412))))

(assert (=> b!597420 (= res!383047 (not e!341414))))

(declare-fun res!383049 () Bool)

(assert (=> b!597420 (=> (not res!383049) (not e!341414))))

(assert (=> b!597420 (= res!383049 (validKeyInArray!0 (select (arr!17764 lt!271380) #b00000000000000000000000000000000)))))

(declare-fun b!597421 () Bool)

(declare-fun e!341413 () Bool)

(assert (=> b!597421 (= e!341413 call!32930)))

(declare-fun b!597422 () Bool)

(assert (=> b!597422 (= e!341412 e!341413)))

(assert (=> b!597422 (= c!67553 (validKeyInArray!0 (select (arr!17764 lt!271380) #b00000000000000000000000000000000)))))

(declare-fun b!597423 () Bool)

(assert (=> b!597423 (= e!341413 call!32930)))

(assert (= (and d!86731 (not res!383048)) b!597420))

(assert (= (and b!597420 res!383049) b!597419))

(assert (= (and b!597420 res!383047) b!597422))

(assert (= (and b!597422 c!67553) b!597421))

(assert (= (and b!597422 (not c!67553)) b!597423))

(assert (= (or b!597421 b!597423) bm!32927))

(declare-fun m!574851 () Bool)

(assert (=> b!597419 m!574851))

(assert (=> b!597419 m!574851))

(declare-fun m!574853 () Bool)

(assert (=> b!597419 m!574853))

(assert (=> bm!32927 m!574851))

(declare-fun m!574855 () Bool)

(assert (=> bm!32927 m!574855))

(assert (=> b!597420 m!574851))

(assert (=> b!597420 m!574851))

(declare-fun m!574857 () Bool)

(assert (=> b!597420 m!574857))

(assert (=> b!597422 m!574851))

(assert (=> b!597422 m!574851))

(assert (=> b!597422 m!574857))

(assert (=> b!597237 d!86731))

(declare-fun d!86733 () Bool)

(declare-fun e!341426 () Bool)

(assert (=> d!86733 e!341426))

(declare-fun res!383054 () Bool)

(assert (=> d!86733 (=> (not res!383054) (not e!341426))))

(assert (=> d!86733 (= res!383054 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18128 a!2986))))))

(declare-fun lt!271465 () Unit!18788)

(declare-fun choose!41 (array!37010 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11858) Unit!18788)

(assert (=> d!86733 (= lt!271465 (choose!41 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11855))))

(assert (=> d!86733 (bvslt (size!18128 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!86733 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11855) lt!271465)))

(declare-fun b!597442 () Bool)

(assert (=> b!597442 (= e!341426 (arrayNoDuplicates!0 (array!37011 (store (arr!17764 a!2986) i!1108 k0!1786) (size!18128 a!2986)) #b00000000000000000000000000000000 Nil!11855))))

(assert (= (and d!86733 res!383054) b!597442))

(declare-fun m!574867 () Bool)

(assert (=> d!86733 m!574867))

(assert (=> b!597442 m!574681))

(declare-fun m!574869 () Bool)

(assert (=> b!597442 m!574869))

(assert (=> b!597237 d!86733))

(declare-fun d!86737 () Bool)

(declare-fun res!383055 () Bool)

(declare-fun e!341427 () Bool)

(assert (=> d!86737 (=> res!383055 e!341427)))

(assert (=> d!86737 (= res!383055 (= (select (arr!17764 lt!271380) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17764 a!2986) j!136)))))

(assert (=> d!86737 (= (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!341427)))

(declare-fun b!597443 () Bool)

(declare-fun e!341428 () Bool)

(assert (=> b!597443 (= e!341427 e!341428)))

(declare-fun res!383056 () Bool)

(assert (=> b!597443 (=> (not res!383056) (not e!341428))))

(assert (=> b!597443 (= res!383056 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18128 lt!271380)))))

(declare-fun b!597444 () Bool)

(assert (=> b!597444 (= e!341428 (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86737 (not res!383055)) b!597443))

(assert (= (and b!597443 res!383056) b!597444))

(declare-fun m!574871 () Bool)

(assert (=> d!86737 m!574871))

(assert (=> b!597444 m!574687))

(declare-fun m!574873 () Bool)

(assert (=> b!597444 m!574873))

(assert (=> b!597237 d!86737))

(declare-fun d!86739 () Bool)

(assert (=> d!86739 (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271472 () Unit!18788)

(declare-fun choose!114 (array!37010 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18788)

(assert (=> d!86739 (= lt!271472 (choose!114 lt!271380 (select (arr!17764 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86739 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86739 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271380 (select (arr!17764 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!271472)))

(declare-fun bs!18368 () Bool)

(assert (= bs!18368 d!86739))

(assert (=> bs!18368 m!574687))

(assert (=> bs!18368 m!574707))

(assert (=> bs!18368 m!574687))

(declare-fun m!574893 () Bool)

(assert (=> bs!18368 m!574893))

(assert (=> b!597237 d!86739))

(declare-fun b!597457 () Bool)

(declare-fun e!341436 () SeekEntryResult!6211)

(declare-fun e!341435 () SeekEntryResult!6211)

(assert (=> b!597457 (= e!341436 e!341435)))

(declare-fun c!67568 () Bool)

(declare-fun lt!271474 () (_ BitVec 64))

(assert (=> b!597457 (= c!67568 (= lt!271474 lt!271381))))

(declare-fun b!597458 () Bool)

(declare-fun c!67567 () Bool)

(assert (=> b!597458 (= c!67567 (= lt!271474 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341437 () SeekEntryResult!6211)

(assert (=> b!597458 (= e!341435 e!341437)))

(declare-fun b!597459 () Bool)

(assert (=> b!597459 (= e!341437 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!271381 lt!271380 mask!3053))))

(declare-fun b!597460 () Bool)

(assert (=> b!597460 (= e!341435 (Found!6211 index!984))))

(declare-fun b!597461 () Bool)

(assert (=> b!597461 (= e!341436 Undefined!6211)))

(declare-fun b!597462 () Bool)

(assert (=> b!597462 (= e!341437 (MissingVacant!6211 vacantSpotIndex!68))))

(declare-fun d!86745 () Bool)

(declare-fun lt!271473 () SeekEntryResult!6211)

(assert (=> d!86745 (and (or ((_ is Undefined!6211) lt!271473) (not ((_ is Found!6211) lt!271473)) (and (bvsge (index!27095 lt!271473) #b00000000000000000000000000000000) (bvslt (index!27095 lt!271473) (size!18128 lt!271380)))) (or ((_ is Undefined!6211) lt!271473) ((_ is Found!6211) lt!271473) (not ((_ is MissingVacant!6211) lt!271473)) (not (= (index!27097 lt!271473) vacantSpotIndex!68)) (and (bvsge (index!27097 lt!271473) #b00000000000000000000000000000000) (bvslt (index!27097 lt!271473) (size!18128 lt!271380)))) (or ((_ is Undefined!6211) lt!271473) (ite ((_ is Found!6211) lt!271473) (= (select (arr!17764 lt!271380) (index!27095 lt!271473)) lt!271381) (and ((_ is MissingVacant!6211) lt!271473) (= (index!27097 lt!271473) vacantSpotIndex!68) (= (select (arr!17764 lt!271380) (index!27097 lt!271473)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86745 (= lt!271473 e!341436)))

(declare-fun c!67569 () Bool)

(assert (=> d!86745 (= c!67569 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!86745 (= lt!271474 (select (arr!17764 lt!271380) index!984))))

(assert (=> d!86745 (validMask!0 mask!3053)))

(assert (=> d!86745 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271381 lt!271380 mask!3053) lt!271473)))

(assert (= (and d!86745 c!67569) b!597461))

(assert (= (and d!86745 (not c!67569)) b!597457))

(assert (= (and b!597457 c!67568) b!597460))

(assert (= (and b!597457 (not c!67568)) b!597458))

(assert (= (and b!597458 c!67567) b!597462))

(assert (= (and b!597458 (not c!67567)) b!597459))

(assert (=> b!597459 m!574721))

(assert (=> b!597459 m!574721))

(declare-fun m!574895 () Bool)

(assert (=> b!597459 m!574895))

(declare-fun m!574897 () Bool)

(assert (=> d!86745 m!574897))

(declare-fun m!574899 () Bool)

(assert (=> d!86745 m!574899))

(assert (=> d!86745 m!574835))

(assert (=> d!86745 m!574699))

(assert (=> b!597236 d!86745))

(declare-fun b!597463 () Bool)

(declare-fun e!341439 () SeekEntryResult!6211)

(declare-fun e!341438 () SeekEntryResult!6211)

(assert (=> b!597463 (= e!341439 e!341438)))

(declare-fun c!67571 () Bool)

(declare-fun lt!271476 () (_ BitVec 64))

(assert (=> b!597463 (= c!67571 (= lt!271476 lt!271381))))

(declare-fun b!597464 () Bool)

(declare-fun c!67570 () Bool)

(assert (=> b!597464 (= c!67570 (= lt!271476 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341440 () SeekEntryResult!6211)

(assert (=> b!597464 (= e!341438 e!341440)))

(declare-fun b!597465 () Bool)

(assert (=> b!597465 (= e!341440 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271382 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!271381 lt!271380 mask!3053))))

(declare-fun b!597466 () Bool)

(assert (=> b!597466 (= e!341438 (Found!6211 lt!271382))))

(declare-fun b!597467 () Bool)

(assert (=> b!597467 (= e!341439 Undefined!6211)))

(declare-fun b!597468 () Bool)

(assert (=> b!597468 (= e!341440 (MissingVacant!6211 vacantSpotIndex!68))))

(declare-fun d!86747 () Bool)

(declare-fun lt!271475 () SeekEntryResult!6211)

(assert (=> d!86747 (and (or ((_ is Undefined!6211) lt!271475) (not ((_ is Found!6211) lt!271475)) (and (bvsge (index!27095 lt!271475) #b00000000000000000000000000000000) (bvslt (index!27095 lt!271475) (size!18128 lt!271380)))) (or ((_ is Undefined!6211) lt!271475) ((_ is Found!6211) lt!271475) (not ((_ is MissingVacant!6211) lt!271475)) (not (= (index!27097 lt!271475) vacantSpotIndex!68)) (and (bvsge (index!27097 lt!271475) #b00000000000000000000000000000000) (bvslt (index!27097 lt!271475) (size!18128 lt!271380)))) (or ((_ is Undefined!6211) lt!271475) (ite ((_ is Found!6211) lt!271475) (= (select (arr!17764 lt!271380) (index!27095 lt!271475)) lt!271381) (and ((_ is MissingVacant!6211) lt!271475) (= (index!27097 lt!271475) vacantSpotIndex!68) (= (select (arr!17764 lt!271380) (index!27097 lt!271475)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86747 (= lt!271475 e!341439)))

(declare-fun c!67572 () Bool)

(assert (=> d!86747 (= c!67572 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86747 (= lt!271476 (select (arr!17764 lt!271380) lt!271382))))

(assert (=> d!86747 (validMask!0 mask!3053)))

(assert (=> d!86747 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271382 vacantSpotIndex!68 lt!271381 lt!271380 mask!3053) lt!271475)))

(assert (= (and d!86747 c!67572) b!597467))

(assert (= (and d!86747 (not c!67572)) b!597463))

(assert (= (and b!597463 c!67571) b!597466))

(assert (= (and b!597463 (not c!67571)) b!597464))

(assert (= (and b!597464 c!67570) b!597468))

(assert (= (and b!597464 (not c!67570)) b!597465))

(declare-fun m!574901 () Bool)

(assert (=> b!597465 m!574901))

(assert (=> b!597465 m!574901))

(declare-fun m!574903 () Bool)

(assert (=> b!597465 m!574903))

(declare-fun m!574905 () Bool)

(assert (=> d!86747 m!574905))

(declare-fun m!574907 () Bool)

(assert (=> d!86747 m!574907))

(declare-fun m!574909 () Bool)

(assert (=> d!86747 m!574909))

(assert (=> d!86747 m!574699))

(assert (=> b!597236 d!86747))

(declare-fun b!597469 () Bool)

(declare-fun e!341442 () SeekEntryResult!6211)

(declare-fun e!341441 () SeekEntryResult!6211)

(assert (=> b!597469 (= e!341442 e!341441)))

(declare-fun c!67574 () Bool)

(declare-fun lt!271481 () (_ BitVec 64))

(assert (=> b!597469 (= c!67574 (= lt!271481 (select (arr!17764 a!2986) j!136)))))

(declare-fun b!597470 () Bool)

(declare-fun c!67573 () Bool)

(assert (=> b!597470 (= c!67573 (= lt!271481 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!341443 () SeekEntryResult!6211)

(assert (=> b!597470 (= e!341441 e!341443)))

(declare-fun b!597471 () Bool)

(assert (=> b!597471 (= e!341443 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!271382 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17764 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!597472 () Bool)

(assert (=> b!597472 (= e!341441 (Found!6211 lt!271382))))

(declare-fun b!597473 () Bool)

(assert (=> b!597473 (= e!341442 Undefined!6211)))

(declare-fun b!597474 () Bool)

(assert (=> b!597474 (= e!341443 (MissingVacant!6211 vacantSpotIndex!68))))

(declare-fun lt!271480 () SeekEntryResult!6211)

(declare-fun d!86749 () Bool)

(assert (=> d!86749 (and (or ((_ is Undefined!6211) lt!271480) (not ((_ is Found!6211) lt!271480)) (and (bvsge (index!27095 lt!271480) #b00000000000000000000000000000000) (bvslt (index!27095 lt!271480) (size!18128 a!2986)))) (or ((_ is Undefined!6211) lt!271480) ((_ is Found!6211) lt!271480) (not ((_ is MissingVacant!6211) lt!271480)) (not (= (index!27097 lt!271480) vacantSpotIndex!68)) (and (bvsge (index!27097 lt!271480) #b00000000000000000000000000000000) (bvslt (index!27097 lt!271480) (size!18128 a!2986)))) (or ((_ is Undefined!6211) lt!271480) (ite ((_ is Found!6211) lt!271480) (= (select (arr!17764 a!2986) (index!27095 lt!271480)) (select (arr!17764 a!2986) j!136)) (and ((_ is MissingVacant!6211) lt!271480) (= (index!27097 lt!271480) vacantSpotIndex!68) (= (select (arr!17764 a!2986) (index!27097 lt!271480)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!86749 (= lt!271480 e!341442)))

(declare-fun c!67575 () Bool)

(assert (=> d!86749 (= c!67575 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!86749 (= lt!271481 (select (arr!17764 a!2986) lt!271382))))

(assert (=> d!86749 (validMask!0 mask!3053)))

(assert (=> d!86749 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271382 vacantSpotIndex!68 (select (arr!17764 a!2986) j!136) a!2986 mask!3053) lt!271480)))

(assert (= (and d!86749 c!67575) b!597473))

(assert (= (and d!86749 (not c!67575)) b!597469))

(assert (= (and b!597469 c!67574) b!597472))

(assert (= (and b!597469 (not c!67574)) b!597470))

(assert (= (and b!597470 c!67573) b!597474))

(assert (= (and b!597470 (not c!67573)) b!597471))

(assert (=> b!597471 m!574901))

(assert (=> b!597471 m!574901))

(assert (=> b!597471 m!574687))

(declare-fun m!574917 () Bool)

(assert (=> b!597471 m!574917))

(declare-fun m!574921 () Bool)

(assert (=> d!86749 m!574921))

(declare-fun m!574923 () Bool)

(assert (=> d!86749 m!574923))

(declare-fun m!574925 () Bool)

(assert (=> d!86749 m!574925))

(assert (=> d!86749 m!574699))

(assert (=> b!597236 d!86749))

(declare-fun d!86753 () Bool)

(declare-fun lt!271488 () (_ BitVec 32))

(assert (=> d!86753 (and (bvsge lt!271488 #b00000000000000000000000000000000) (bvslt lt!271488 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86753 (= lt!271488 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86753 (validMask!0 mask!3053)))

(assert (=> d!86753 (= (nextIndex!0 index!984 x!910 mask!3053) lt!271488)))

(declare-fun bs!18370 () Bool)

(assert (= bs!18370 d!86753))

(declare-fun m!574935 () Bool)

(assert (=> bs!18370 m!574935))

(assert (=> bs!18370 m!574699))

(assert (=> b!597236 d!86753))

(declare-fun d!86759 () Bool)

(declare-fun e!341467 () Bool)

(assert (=> d!86759 e!341467))

(declare-fun res!383065 () Bool)

(assert (=> d!86759 (=> (not res!383065) (not e!341467))))

(assert (=> d!86759 (= res!383065 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18128 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18128 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18128 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18128 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18128 a!2986))))))

(declare-fun lt!271497 () Unit!18788)

(declare-fun choose!9 (array!37010 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18788)

(assert (=> d!86759 (= lt!271497 (choose!9 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271382 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86759 (validMask!0 mask!3053)))

(assert (=> d!86759 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271382 vacantSpotIndex!68 mask!3053) lt!271497)))

(declare-fun b!597513 () Bool)

(assert (=> b!597513 (= e!341467 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271382 vacantSpotIndex!68 (select (arr!17764 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271382 vacantSpotIndex!68 (select (store (arr!17764 a!2986) i!1108 k0!1786) j!136) (array!37011 (store (arr!17764 a!2986) i!1108 k0!1786) (size!18128 a!2986)) mask!3053)))))

(assert (= (and d!86759 res!383065) b!597513))

(declare-fun m!574947 () Bool)

(assert (=> d!86759 m!574947))

(assert (=> d!86759 m!574699))

(assert (=> b!597513 m!574687))

(assert (=> b!597513 m!574681))

(assert (=> b!597513 m!574713))

(assert (=> b!597513 m!574687))

(assert (=> b!597513 m!574719))

(assert (=> b!597513 m!574713))

(declare-fun m!574949 () Bool)

(assert (=> b!597513 m!574949))

(assert (=> b!597236 d!86759))

(declare-fun d!86771 () Bool)

(declare-fun res!383070 () Bool)

(declare-fun e!341472 () Bool)

(assert (=> d!86771 (=> res!383070 e!341472)))

(assert (=> d!86771 (= res!383070 (= (select (arr!17764 lt!271380) j!136) (select (arr!17764 a!2986) j!136)))))

(assert (=> d!86771 (= (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) j!136) e!341472)))

(declare-fun b!597518 () Bool)

(declare-fun e!341473 () Bool)

(assert (=> b!597518 (= e!341472 e!341473)))

(declare-fun res!383071 () Bool)

(assert (=> b!597518 (=> (not res!383071) (not e!341473))))

(assert (=> b!597518 (= res!383071 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18128 lt!271380)))))

(declare-fun b!597519 () Bool)

(assert (=> b!597519 (= e!341473 (arrayContainsKey!0 lt!271380 (select (arr!17764 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86771 (not res!383070)) b!597518))

(assert (= (and b!597518 res!383071) b!597519))

(declare-fun m!574951 () Bool)

(assert (=> d!86771 m!574951))

(assert (=> b!597519 m!574687))

(declare-fun m!574953 () Bool)

(assert (=> b!597519 m!574953))

(assert (=> b!597246 d!86771))

(declare-fun d!86773 () Bool)

(assert (=> d!86773 (= (validKeyInArray!0 (select (arr!17764 a!2986) j!136)) (and (not (= (select (arr!17764 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17764 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!597245 d!86773))

(declare-fun d!86775 () Bool)

(declare-fun res!383072 () Bool)

(declare-fun e!341474 () Bool)

(assert (=> d!86775 (=> res!383072 e!341474)))

(assert (=> d!86775 (= res!383072 (= (select (arr!17764 a!2986) #b00000000000000000000000000000000) k0!1786))))

(assert (=> d!86775 (= (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000) e!341474)))

(declare-fun b!597520 () Bool)

(declare-fun e!341475 () Bool)

(assert (=> b!597520 (= e!341474 e!341475)))

(declare-fun res!383073 () Bool)

(assert (=> b!597520 (=> (not res!383073) (not e!341475))))

(assert (=> b!597520 (= res!383073 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18128 a!2986)))))

(declare-fun b!597521 () Bool)

(assert (=> b!597521 (= e!341475 (arrayContainsKey!0 a!2986 k0!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86775 (not res!383072)) b!597520))

(assert (= (and b!597520 res!383073) b!597521))

(assert (=> d!86775 m!574819))

(declare-fun m!574955 () Bool)

(assert (=> b!597521 m!574955))

(assert (=> b!597244 d!86775))

(check-sat (not d!86707) (not b!597442) (not b!597412) (not b!597350) (not d!86749) (not b!597444) (not b!597471) (not b!597390) (not b!597419) (not b!597334) (not d!86739) (not b!597420) (not b!597521) (not b!597371) (not b!597413) (not b!597415) (not b!597519) (not d!86733) (not b!597326) (not b!597465) (not d!86759) (not bm!32924) (not bm!32918) (not d!86753) (not b!597373) (not d!86703) (not bm!32927) (not d!86745) (not b!597335) (not d!86747) (not b!597513) (not b!597459) (not b!597422))
(check-sat)
