; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55806 () Bool)

(assert start!55806)

(declare-fun b!610804 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37332 0))(
  ( (array!37333 (arr!17910 (Array (_ BitVec 32) (_ BitVec 64))) (size!18274 (_ BitVec 32))) )
))
(declare-fun lt!279467 () array!37332)

(declare-fun e!349971 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37332)

(declare-fun arrayContainsKey!0 (array!37332 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!610804 (= e!349971 (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) index!984))))

(declare-fun b!610805 () Bool)

(declare-fun res!392941 () Bool)

(declare-fun e!349978 () Bool)

(assert (=> b!610805 (=> (not res!392941) (not e!349978))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!610805 (= res!392941 (validKeyInArray!0 k!1786))))

(declare-fun b!610807 () Bool)

(declare-fun e!349965 () Bool)

(declare-fun e!349974 () Bool)

(assert (=> b!610807 (= e!349965 (not e!349974))))

(declare-fun res!392944 () Bool)

(assert (=> b!610807 (=> res!392944 e!349974)))

(declare-datatypes ((SeekEntryResult!6357 0))(
  ( (MissingZero!6357 (index!27708 (_ BitVec 32))) (Found!6357 (index!27709 (_ BitVec 32))) (Intermediate!6357 (undefined!7169 Bool) (index!27710 (_ BitVec 32)) (x!56549 (_ BitVec 32))) (Undefined!6357) (MissingVacant!6357 (index!27711 (_ BitVec 32))) )
))
(declare-fun lt!279466 () SeekEntryResult!6357)

(assert (=> b!610807 (= res!392944 (not (= lt!279466 (Found!6357 index!984))))))

(declare-datatypes ((Unit!19570 0))(
  ( (Unit!19571) )
))
(declare-fun lt!279463 () Unit!19570)

(declare-fun e!349967 () Unit!19570)

(assert (=> b!610807 (= lt!279463 e!349967)))

(declare-fun c!69301 () Bool)

(assert (=> b!610807 (= c!69301 (= lt!279466 Undefined!6357))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!279469 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37332 (_ BitVec 32)) SeekEntryResult!6357)

(assert (=> b!610807 (= lt!279466 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279469 lt!279467 mask!3053))))

(declare-fun e!349966 () Bool)

(assert (=> b!610807 e!349966))

(declare-fun res!392937 () Bool)

(assert (=> b!610807 (=> (not res!392937) (not e!349966))))

(declare-fun lt!279470 () (_ BitVec 32))

(declare-fun lt!279464 () SeekEntryResult!6357)

(assert (=> b!610807 (= res!392937 (= lt!279464 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279470 vacantSpotIndex!68 lt!279469 lt!279467 mask!3053)))))

(assert (=> b!610807 (= lt!279464 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279470 vacantSpotIndex!68 (select (arr!17910 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!610807 (= lt!279469 (select (store (arr!17910 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!279468 () Unit!19570)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37332 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19570)

(assert (=> b!610807 (= lt!279468 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279470 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!610807 (= lt!279470 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!610808 () Bool)

(declare-fun res!392954 () Bool)

(declare-fun e!349975 () Bool)

(assert (=> b!610808 (=> (not res!392954) (not e!349975))))

(declare-datatypes ((List!12004 0))(
  ( (Nil!12001) (Cons!12000 (h!13045 (_ BitVec 64)) (t!18240 List!12004)) )
))
(declare-fun arrayNoDuplicates!0 (array!37332 (_ BitVec 32) List!12004) Bool)

(assert (=> b!610808 (= res!392954 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12001))))

(declare-fun b!610809 () Bool)

(declare-fun res!392940 () Bool)

(assert (=> b!610809 (=> (not res!392940) (not e!349978))))

(assert (=> b!610809 (= res!392940 (validKeyInArray!0 (select (arr!17910 a!2986) j!136)))))

(declare-fun b!610810 () Bool)

(declare-fun res!392943 () Bool)

(assert (=> b!610810 (=> (not res!392943) (not e!349975))))

(assert (=> b!610810 (= res!392943 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17910 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610811 () Bool)

(declare-fun e!349977 () Bool)

(assert (=> b!610811 (= e!349975 e!349977)))

(declare-fun res!392936 () Bool)

(assert (=> b!610811 (=> (not res!392936) (not e!349977))))

(assert (=> b!610811 (= res!392936 (= (select (store (arr!17910 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!610811 (= lt!279467 (array!37333 (store (arr!17910 a!2986) i!1108 k!1786) (size!18274 a!2986)))))

(declare-fun b!610812 () Bool)

(declare-fun e!349976 () Bool)

(declare-fun e!349980 () Bool)

(assert (=> b!610812 (= e!349976 e!349980)))

(declare-fun res!392948 () Bool)

(assert (=> b!610812 (=> res!392948 e!349980)))

(assert (=> b!610812 (= res!392948 (or (bvsgt #b00000000000000000000000000000000 (size!18274 a!2986)) (bvsge (size!18274 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!610812 (arrayNoDuplicates!0 lt!279467 #b00000000000000000000000000000000 Nil!12001)))

(declare-fun lt!279455 () Unit!19570)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37332 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12004) Unit!19570)

(assert (=> b!610812 (= lt!279455 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12001))))

(assert (=> b!610812 (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279462 () Unit!19570)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37332 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19570)

(assert (=> b!610812 (= lt!279462 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279467 (select (arr!17910 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!610812 e!349971))

(declare-fun res!392946 () Bool)

(assert (=> b!610812 (=> (not res!392946) (not e!349971))))

(assert (=> b!610812 (= res!392946 (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) j!136))))

(declare-fun b!610813 () Bool)

(declare-fun e!349973 () Bool)

(assert (=> b!610813 (= e!349974 e!349973)))

(declare-fun res!392949 () Bool)

(assert (=> b!610813 (=> res!392949 e!349973)))

(declare-fun lt!279458 () (_ BitVec 64))

(assert (=> b!610813 (= res!392949 (or (not (= (select (arr!17910 a!2986) j!136) lt!279469)) (not (= (select (arr!17910 a!2986) j!136) lt!279458))))))

(declare-fun e!349969 () Bool)

(assert (=> b!610813 e!349969))

(declare-fun res!392955 () Bool)

(assert (=> b!610813 (=> (not res!392955) (not e!349969))))

(assert (=> b!610813 (= res!392955 (= lt!279458 (select (arr!17910 a!2986) j!136)))))

(assert (=> b!610813 (= lt!279458 (select (store (arr!17910 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!610814 () Bool)

(declare-fun e!349979 () Bool)

(assert (=> b!610814 (= e!349969 e!349979)))

(declare-fun res!392951 () Bool)

(assert (=> b!610814 (=> res!392951 e!349979)))

(assert (=> b!610814 (= res!392951 (or (not (= (select (arr!17910 a!2986) j!136) lt!279469)) (not (= (select (arr!17910 a!2986) j!136) lt!279458)) (bvsge j!136 index!984)))))

(declare-fun b!610815 () Bool)

(declare-fun res!392957 () Bool)

(assert (=> b!610815 (=> (not res!392957) (not e!349978))))

(assert (=> b!610815 (= res!392957 (and (= (size!18274 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18274 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18274 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!610816 () Bool)

(declare-fun lt!279457 () SeekEntryResult!6357)

(assert (=> b!610816 (= e!349966 (= lt!279457 lt!279464))))

(declare-fun b!610817 () Bool)

(declare-fun e!349972 () Unit!19570)

(declare-fun Unit!19572 () Unit!19570)

(assert (=> b!610817 (= e!349972 Unit!19572)))

(declare-fun b!610818 () Bool)

(declare-fun e!349981 () Bool)

(assert (=> b!610818 (= e!349979 e!349981)))

(declare-fun res!392942 () Bool)

(assert (=> b!610818 (=> (not res!392942) (not e!349981))))

(assert (=> b!610818 (= res!392942 (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) j!136))))

(declare-fun b!610819 () Bool)

(declare-fun e!349968 () Bool)

(assert (=> b!610819 (= e!349980 e!349968)))

(declare-fun res!392945 () Bool)

(assert (=> b!610819 (=> (not res!392945) (not e!349968))))

(declare-fun contains!3046 (List!12004 (_ BitVec 64)) Bool)

(assert (=> b!610819 (= res!392945 (not (contains!3046 Nil!12001 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610820 () Bool)

(declare-fun res!392939 () Bool)

(assert (=> b!610820 (=> (not res!392939) (not e!349978))))

(assert (=> b!610820 (= res!392939 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!610821 () Bool)

(declare-fun Unit!19573 () Unit!19570)

(assert (=> b!610821 (= e!349967 Unit!19573)))

(assert (=> b!610821 false))

(declare-fun b!610822 () Bool)

(declare-fun res!392947 () Bool)

(assert (=> b!610822 (=> (not res!392947) (not e!349975))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37332 (_ BitVec 32)) Bool)

(assert (=> b!610822 (= res!392947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!392950 () Bool)

(assert (=> start!55806 (=> (not res!392950) (not e!349978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55806 (= res!392950 (validMask!0 mask!3053))))

(assert (=> start!55806 e!349978))

(assert (=> start!55806 true))

(declare-fun array_inv!13684 (array!37332) Bool)

(assert (=> start!55806 (array_inv!13684 a!2986)))

(declare-fun b!610806 () Bool)

(assert (=> b!610806 (= e!349978 e!349975)))

(declare-fun res!392953 () Bool)

(assert (=> b!610806 (=> (not res!392953) (not e!349975))))

(declare-fun lt!279465 () SeekEntryResult!6357)

(assert (=> b!610806 (= res!392953 (or (= lt!279465 (MissingZero!6357 i!1108)) (= lt!279465 (MissingVacant!6357 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37332 (_ BitVec 32)) SeekEntryResult!6357)

(assert (=> b!610806 (= lt!279465 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!610823 () Bool)

(declare-fun res!392956 () Bool)

(assert (=> b!610823 (=> res!392956 e!349980)))

(declare-fun noDuplicate!346 (List!12004) Bool)

(assert (=> b!610823 (= res!392956 (not (noDuplicate!346 Nil!12001)))))

(declare-fun b!610824 () Bool)

(declare-fun Unit!19574 () Unit!19570)

(assert (=> b!610824 (= e!349972 Unit!19574)))

(declare-fun lt!279471 () Unit!19570)

(assert (=> b!610824 (= lt!279471 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279467 (select (arr!17910 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!610824 (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279456 () Unit!19570)

(assert (=> b!610824 (= lt!279456 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12001))))

(assert (=> b!610824 (arrayNoDuplicates!0 lt!279467 #b00000000000000000000000000000000 Nil!12001)))

(declare-fun lt!279461 () Unit!19570)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37332 (_ BitVec 32) (_ BitVec 32)) Unit!19570)

(assert (=> b!610824 (= lt!279461 (lemmaNoDuplicateFromThenFromBigger!0 lt!279467 #b00000000000000000000000000000000 j!136))))

(assert (=> b!610824 (arrayNoDuplicates!0 lt!279467 j!136 Nil!12001)))

(declare-fun lt!279460 () Unit!19570)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37332 (_ BitVec 64) (_ BitVec 32) List!12004) Unit!19570)

(assert (=> b!610824 (= lt!279460 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279467 (select (arr!17910 a!2986) j!136) j!136 Nil!12001))))

(assert (=> b!610824 false))

(declare-fun b!610825 () Bool)

(declare-fun Unit!19575 () Unit!19570)

(assert (=> b!610825 (= e!349967 Unit!19575)))

(declare-fun b!610826 () Bool)

(assert (=> b!610826 (= e!349968 (not (contains!3046 Nil!12001 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610827 () Bool)

(assert (=> b!610827 (= e!349977 e!349965)))

(declare-fun res!392952 () Bool)

(assert (=> b!610827 (=> (not res!392952) (not e!349965))))

(assert (=> b!610827 (= res!392952 (and (= lt!279457 (Found!6357 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17910 a!2986) index!984) (select (arr!17910 a!2986) j!136))) (not (= (select (arr!17910 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!610827 (= lt!279457 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17910 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610828 () Bool)

(assert (=> b!610828 (= e!349973 e!349976)))

(declare-fun res!392938 () Bool)

(assert (=> b!610828 (=> res!392938 e!349976)))

(assert (=> b!610828 (= res!392938 (bvsge index!984 j!136))))

(declare-fun lt!279459 () Unit!19570)

(assert (=> b!610828 (= lt!279459 e!349972)))

(declare-fun c!69302 () Bool)

(assert (=> b!610828 (= c!69302 (bvslt j!136 index!984))))

(declare-fun b!610829 () Bool)

(assert (=> b!610829 (= e!349981 (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) index!984))))

(assert (= (and start!55806 res!392950) b!610815))

(assert (= (and b!610815 res!392957) b!610809))

(assert (= (and b!610809 res!392940) b!610805))

(assert (= (and b!610805 res!392941) b!610820))

(assert (= (and b!610820 res!392939) b!610806))

(assert (= (and b!610806 res!392953) b!610822))

(assert (= (and b!610822 res!392947) b!610808))

(assert (= (and b!610808 res!392954) b!610810))

(assert (= (and b!610810 res!392943) b!610811))

(assert (= (and b!610811 res!392936) b!610827))

(assert (= (and b!610827 res!392952) b!610807))

(assert (= (and b!610807 res!392937) b!610816))

(assert (= (and b!610807 c!69301) b!610821))

(assert (= (and b!610807 (not c!69301)) b!610825))

(assert (= (and b!610807 (not res!392944)) b!610813))

(assert (= (and b!610813 res!392955) b!610814))

(assert (= (and b!610814 (not res!392951)) b!610818))

(assert (= (and b!610818 res!392942) b!610829))

(assert (= (and b!610813 (not res!392949)) b!610828))

(assert (= (and b!610828 c!69302) b!610824))

(assert (= (and b!610828 (not c!69302)) b!610817))

(assert (= (and b!610828 (not res!392938)) b!610812))

(assert (= (and b!610812 res!392946) b!610804))

(assert (= (and b!610812 (not res!392948)) b!610823))

(assert (= (and b!610823 (not res!392956)) b!610819))

(assert (= (and b!610819 res!392945) b!610826))

(declare-fun m!587283 () Bool)

(assert (=> b!610813 m!587283))

(declare-fun m!587285 () Bool)

(assert (=> b!610813 m!587285))

(declare-fun m!587287 () Bool)

(assert (=> b!610813 m!587287))

(declare-fun m!587289 () Bool)

(assert (=> b!610806 m!587289))

(assert (=> b!610818 m!587283))

(assert (=> b!610818 m!587283))

(declare-fun m!587291 () Bool)

(assert (=> b!610818 m!587291))

(declare-fun m!587293 () Bool)

(assert (=> b!610807 m!587293))

(declare-fun m!587295 () Bool)

(assert (=> b!610807 m!587295))

(declare-fun m!587297 () Bool)

(assert (=> b!610807 m!587297))

(declare-fun m!587299 () Bool)

(assert (=> b!610807 m!587299))

(assert (=> b!610807 m!587283))

(assert (=> b!610807 m!587285))

(declare-fun m!587301 () Bool)

(assert (=> b!610807 m!587301))

(assert (=> b!610807 m!587283))

(declare-fun m!587303 () Bool)

(assert (=> b!610807 m!587303))

(declare-fun m!587305 () Bool)

(assert (=> b!610820 m!587305))

(assert (=> b!610804 m!587283))

(assert (=> b!610804 m!587283))

(declare-fun m!587307 () Bool)

(assert (=> b!610804 m!587307))

(declare-fun m!587309 () Bool)

(assert (=> start!55806 m!587309))

(declare-fun m!587311 () Bool)

(assert (=> start!55806 m!587311))

(declare-fun m!587313 () Bool)

(assert (=> b!610826 m!587313))

(declare-fun m!587315 () Bool)

(assert (=> b!610810 m!587315))

(assert (=> b!610824 m!587283))

(declare-fun m!587317 () Bool)

(assert (=> b!610824 m!587317))

(assert (=> b!610824 m!587283))

(declare-fun m!587319 () Bool)

(assert (=> b!610824 m!587319))

(assert (=> b!610824 m!587283))

(declare-fun m!587321 () Bool)

(assert (=> b!610824 m!587321))

(declare-fun m!587323 () Bool)

(assert (=> b!610824 m!587323))

(declare-fun m!587325 () Bool)

(assert (=> b!610824 m!587325))

(assert (=> b!610824 m!587283))

(declare-fun m!587327 () Bool)

(assert (=> b!610824 m!587327))

(declare-fun m!587329 () Bool)

(assert (=> b!610824 m!587329))

(declare-fun m!587331 () Bool)

(assert (=> b!610819 m!587331))

(assert (=> b!610811 m!587285))

(declare-fun m!587333 () Bool)

(assert (=> b!610811 m!587333))

(declare-fun m!587335 () Bool)

(assert (=> b!610827 m!587335))

(assert (=> b!610827 m!587283))

(assert (=> b!610827 m!587283))

(declare-fun m!587337 () Bool)

(assert (=> b!610827 m!587337))

(assert (=> b!610814 m!587283))

(assert (=> b!610812 m!587283))

(assert (=> b!610812 m!587291))

(assert (=> b!610812 m!587283))

(declare-fun m!587339 () Bool)

(assert (=> b!610812 m!587339))

(assert (=> b!610812 m!587283))

(assert (=> b!610812 m!587325))

(assert (=> b!610812 m!587283))

(declare-fun m!587341 () Bool)

(assert (=> b!610812 m!587341))

(assert (=> b!610812 m!587329))

(declare-fun m!587343 () Bool)

(assert (=> b!610823 m!587343))

(assert (=> b!610809 m!587283))

(assert (=> b!610809 m!587283))

(declare-fun m!587345 () Bool)

(assert (=> b!610809 m!587345))

(declare-fun m!587347 () Bool)

(assert (=> b!610822 m!587347))

(assert (=> b!610829 m!587283))

(assert (=> b!610829 m!587283))

(assert (=> b!610829 m!587307))

(declare-fun m!587349 () Bool)

(assert (=> b!610805 m!587349))

(declare-fun m!587351 () Bool)

(assert (=> b!610808 m!587351))

(push 1)

(assert (not b!610806))

(assert (not b!610818))

(assert (not b!610807))

(assert (not b!610822))

(assert (not b!610829))

(assert (not b!610826))

(assert (not b!610819))

(assert (not b!610820))

(assert (not start!55806))

(assert (not b!610824))

(assert (not b!610809))

(assert (not b!610808))

(assert (not b!610804))

(assert (not b!610805))

(assert (not b!610812))

(assert (not b!610823))

(assert (not b!610827))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88297 () Bool)

(declare-fun lt!279601 () Bool)

(declare-fun content!241 (List!12004) (Set (_ BitVec 64)))

(assert (=> d!88297 (= lt!279601 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!241 Nil!12001)))))

(declare-fun e!350133 () Bool)

(assert (=> d!88297 (= lt!279601 e!350133)))

(declare-fun res!393125 () Bool)

(assert (=> d!88297 (=> (not res!393125) (not e!350133))))

(assert (=> d!88297 (= res!393125 (is-Cons!12000 Nil!12001))))

(assert (=> d!88297 (= (contains!3046 Nil!12001 #b0000000000000000000000000000000000000000000000000000000000000000) lt!279601)))

(declare-fun b!611047 () Bool)

(declare-fun e!350132 () Bool)

(assert (=> b!611047 (= e!350133 e!350132)))

(declare-fun res!393126 () Bool)

(assert (=> b!611047 (=> res!393126 e!350132)))

(assert (=> b!611047 (= res!393126 (= (h!13045 Nil!12001) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!611048 () Bool)

(assert (=> b!611048 (= e!350132 (contains!3046 (t!18240 Nil!12001) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!88297 res!393125) b!611047))

(assert (= (and b!611047 (not res!393126)) b!611048))

(declare-fun m!587551 () Bool)

(assert (=> d!88297 m!587551))

(declare-fun m!587553 () Bool)

(assert (=> d!88297 m!587553))

(declare-fun m!587555 () Bool)

(assert (=> b!611048 m!587555))

(assert (=> b!610819 d!88297))

(declare-fun d!88303 () Bool)

(assert (=> d!88303 (= (validKeyInArray!0 (select (arr!17910 a!2986) j!136)) (and (not (= (select (arr!17910 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17910 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610809 d!88303))

(declare-fun d!88305 () Bool)

(declare-fun res!393131 () Bool)

(declare-fun e!350144 () Bool)

(assert (=> d!88305 (=> res!393131 e!350144)))

(assert (=> d!88305 (= res!393131 (= (select (arr!17910 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!88305 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!350144)))

(declare-fun b!611065 () Bool)

(declare-fun e!350145 () Bool)

(assert (=> b!611065 (= e!350144 e!350145)))

(declare-fun res!393132 () Bool)

(assert (=> b!611065 (=> (not res!393132) (not e!350145))))

(assert (=> b!611065 (= res!393132 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18274 a!2986)))))

(declare-fun b!611066 () Bool)

(assert (=> b!611066 (= e!350145 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!88305 (not res!393131)) b!611065))

(assert (= (and b!611065 res!393132) b!611066))

(declare-fun m!587557 () Bool)

(assert (=> d!88305 m!587557))

(declare-fun m!587559 () Bool)

(assert (=> b!611066 m!587559))

(assert (=> b!610820 d!88305))

(declare-fun b!611111 () Bool)

(declare-fun e!350177 () SeekEntryResult!6357)

(assert (=> b!611111 (= e!350177 (MissingVacant!6357 vacantSpotIndex!68))))

(declare-fun b!611112 () Bool)

(declare-fun e!350175 () SeekEntryResult!6357)

(declare-fun e!350176 () SeekEntryResult!6357)

(assert (=> b!611112 (= e!350175 e!350176)))

(declare-fun c!69350 () Bool)

(declare-fun lt!279625 () (_ BitVec 64))

(assert (=> b!611112 (= c!69350 (= lt!279625 lt!279469))))

(declare-fun d!88307 () Bool)

(declare-fun lt!279626 () SeekEntryResult!6357)

(assert (=> d!88307 (and (or (is-Undefined!6357 lt!279626) (not (is-Found!6357 lt!279626)) (and (bvsge (index!27709 lt!279626) #b00000000000000000000000000000000) (bvslt (index!27709 lt!279626) (size!18274 lt!279467)))) (or (is-Undefined!6357 lt!279626) (is-Found!6357 lt!279626) (not (is-MissingVacant!6357 lt!279626)) (not (= (index!27711 lt!279626) vacantSpotIndex!68)) (and (bvsge (index!27711 lt!279626) #b00000000000000000000000000000000) (bvslt (index!27711 lt!279626) (size!18274 lt!279467)))) (or (is-Undefined!6357 lt!279626) (ite (is-Found!6357 lt!279626) (= (select (arr!17910 lt!279467) (index!27709 lt!279626)) lt!279469) (and (is-MissingVacant!6357 lt!279626) (= (index!27711 lt!279626) vacantSpotIndex!68) (= (select (arr!17910 lt!279467) (index!27711 lt!279626)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88307 (= lt!279626 e!350175)))

(declare-fun c!69349 () Bool)

(assert (=> d!88307 (= c!69349 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88307 (= lt!279625 (select (arr!17910 lt!279467) lt!279470))))

(assert (=> d!88307 (validMask!0 mask!3053)))

(assert (=> d!88307 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279470 vacantSpotIndex!68 lt!279469 lt!279467 mask!3053) lt!279626)))

(declare-fun b!611113 () Bool)

(declare-fun c!69351 () Bool)

(assert (=> b!611113 (= c!69351 (= lt!279625 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611113 (= e!350176 e!350177)))

(declare-fun b!611114 () Bool)

(assert (=> b!611114 (= e!350176 (Found!6357 lt!279470))))

(declare-fun b!611115 () Bool)

(assert (=> b!611115 (= e!350177 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279470 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!279469 lt!279467 mask!3053))))

(declare-fun b!611116 () Bool)

(assert (=> b!611116 (= e!350175 Undefined!6357)))

(assert (= (and d!88307 c!69349) b!611116))

(assert (= (and d!88307 (not c!69349)) b!611112))

(assert (= (and b!611112 c!69350) b!611114))

(assert (= (and b!611112 (not c!69350)) b!611113))

(assert (= (and b!611113 c!69351) b!611111))

(assert (= (and b!611113 (not c!69351)) b!611115))

(declare-fun m!587591 () Bool)

(assert (=> d!88307 m!587591))

(declare-fun m!587593 () Bool)

(assert (=> d!88307 m!587593))

(declare-fun m!587595 () Bool)

(assert (=> d!88307 m!587595))

(assert (=> d!88307 m!587309))

(declare-fun m!587597 () Bool)

(assert (=> b!611115 m!587597))

(assert (=> b!611115 m!587597))

(declare-fun m!587599 () Bool)

(assert (=> b!611115 m!587599))

(assert (=> b!610807 d!88307))

(declare-fun d!88321 () Bool)

(declare-fun lt!279632 () (_ BitVec 32))

(assert (=> d!88321 (and (bvsge lt!279632 #b00000000000000000000000000000000) (bvslt lt!279632 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88321 (= lt!279632 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88321 (validMask!0 mask!3053)))

(assert (=> d!88321 (= (nextIndex!0 index!984 x!910 mask!3053) lt!279632)))

(declare-fun bs!18645 () Bool)

(assert (= bs!18645 d!88321))

(declare-fun m!587611 () Bool)

(assert (=> bs!18645 m!587611))

(assert (=> bs!18645 m!587309))

(assert (=> b!610807 d!88321))

(declare-fun b!611124 () Bool)

(declare-fun e!350184 () SeekEntryResult!6357)

(assert (=> b!611124 (= e!350184 (MissingVacant!6357 vacantSpotIndex!68))))

(declare-fun b!611125 () Bool)

(declare-fun e!350182 () SeekEntryResult!6357)

(declare-fun e!350183 () SeekEntryResult!6357)

(assert (=> b!611125 (= e!350182 e!350183)))

(declare-fun c!69356 () Bool)

(declare-fun lt!279633 () (_ BitVec 64))

(assert (=> b!611125 (= c!69356 (= lt!279633 lt!279469))))

(declare-fun d!88325 () Bool)

(declare-fun lt!279634 () SeekEntryResult!6357)

(assert (=> d!88325 (and (or (is-Undefined!6357 lt!279634) (not (is-Found!6357 lt!279634)) (and (bvsge (index!27709 lt!279634) #b00000000000000000000000000000000) (bvslt (index!27709 lt!279634) (size!18274 lt!279467)))) (or (is-Undefined!6357 lt!279634) (is-Found!6357 lt!279634) (not (is-MissingVacant!6357 lt!279634)) (not (= (index!27711 lt!279634) vacantSpotIndex!68)) (and (bvsge (index!27711 lt!279634) #b00000000000000000000000000000000) (bvslt (index!27711 lt!279634) (size!18274 lt!279467)))) (or (is-Undefined!6357 lt!279634) (ite (is-Found!6357 lt!279634) (= (select (arr!17910 lt!279467) (index!27709 lt!279634)) lt!279469) (and (is-MissingVacant!6357 lt!279634) (= (index!27711 lt!279634) vacantSpotIndex!68) (= (select (arr!17910 lt!279467) (index!27711 lt!279634)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88325 (= lt!279634 e!350182)))

(declare-fun c!69355 () Bool)

(assert (=> d!88325 (= c!69355 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88325 (= lt!279633 (select (arr!17910 lt!279467) index!984))))

(assert (=> d!88325 (validMask!0 mask!3053)))

(assert (=> d!88325 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279469 lt!279467 mask!3053) lt!279634)))

(declare-fun b!611126 () Bool)

(declare-fun c!69357 () Bool)

(assert (=> b!611126 (= c!69357 (= lt!279633 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611126 (= e!350183 e!350184)))

(declare-fun b!611127 () Bool)

(assert (=> b!611127 (= e!350183 (Found!6357 index!984))))

(declare-fun b!611128 () Bool)

(assert (=> b!611128 (= e!350184 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!279469 lt!279467 mask!3053))))

(declare-fun b!611129 () Bool)

(assert (=> b!611129 (= e!350182 Undefined!6357)))

(assert (= (and d!88325 c!69355) b!611129))

(assert (= (and d!88325 (not c!69355)) b!611125))

(assert (= (and b!611125 c!69356) b!611127))

(assert (= (and b!611125 (not c!69356)) b!611126))

(assert (= (and b!611126 c!69357) b!611124))

(assert (= (and b!611126 (not c!69357)) b!611128))

(declare-fun m!587617 () Bool)

(assert (=> d!88325 m!587617))

(declare-fun m!587619 () Bool)

(assert (=> d!88325 m!587619))

(declare-fun m!587621 () Bool)

(assert (=> d!88325 m!587621))

(assert (=> d!88325 m!587309))

(assert (=> b!611128 m!587293))

(assert (=> b!611128 m!587293))

(declare-fun m!587623 () Bool)

(assert (=> b!611128 m!587623))

(assert (=> b!610807 d!88325))

(declare-fun b!611142 () Bool)

(declare-fun e!350193 () SeekEntryResult!6357)

(assert (=> b!611142 (= e!350193 (MissingVacant!6357 vacantSpotIndex!68))))

(declare-fun b!611143 () Bool)

(declare-fun e!350191 () SeekEntryResult!6357)

(declare-fun e!350192 () SeekEntryResult!6357)

(assert (=> b!611143 (= e!350191 e!350192)))

(declare-fun c!69365 () Bool)

(declare-fun lt!279639 () (_ BitVec 64))

(assert (=> b!611143 (= c!69365 (= lt!279639 (select (arr!17910 a!2986) j!136)))))

(declare-fun lt!279640 () SeekEntryResult!6357)

(declare-fun d!88329 () Bool)

(assert (=> d!88329 (and (or (is-Undefined!6357 lt!279640) (not (is-Found!6357 lt!279640)) (and (bvsge (index!27709 lt!279640) #b00000000000000000000000000000000) (bvslt (index!27709 lt!279640) (size!18274 a!2986)))) (or (is-Undefined!6357 lt!279640) (is-Found!6357 lt!279640) (not (is-MissingVacant!6357 lt!279640)) (not (= (index!27711 lt!279640) vacantSpotIndex!68)) (and (bvsge (index!27711 lt!279640) #b00000000000000000000000000000000) (bvslt (index!27711 lt!279640) (size!18274 a!2986)))) (or (is-Undefined!6357 lt!279640) (ite (is-Found!6357 lt!279640) (= (select (arr!17910 a!2986) (index!27709 lt!279640)) (select (arr!17910 a!2986) j!136)) (and (is-MissingVacant!6357 lt!279640) (= (index!27711 lt!279640) vacantSpotIndex!68) (= (select (arr!17910 a!2986) (index!27711 lt!279640)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88329 (= lt!279640 e!350191)))

(declare-fun c!69364 () Bool)

(assert (=> d!88329 (= c!69364 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88329 (= lt!279639 (select (arr!17910 a!2986) lt!279470))))

(assert (=> d!88329 (validMask!0 mask!3053)))

(assert (=> d!88329 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279470 vacantSpotIndex!68 (select (arr!17910 a!2986) j!136) a!2986 mask!3053) lt!279640)))

(declare-fun b!611144 () Bool)

(declare-fun c!69366 () Bool)

(assert (=> b!611144 (= c!69366 (= lt!279639 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611144 (= e!350192 e!350193)))

(declare-fun b!611145 () Bool)

(assert (=> b!611145 (= e!350192 (Found!6357 lt!279470))))

(declare-fun b!611146 () Bool)

(assert (=> b!611146 (= e!350193 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279470 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17910 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611147 () Bool)

(assert (=> b!611147 (= e!350191 Undefined!6357)))

(assert (= (and d!88329 c!69364) b!611147))

(assert (= (and d!88329 (not c!69364)) b!611143))

(assert (= (and b!611143 c!69365) b!611145))

(assert (= (and b!611143 (not c!69365)) b!611144))

(assert (= (and b!611144 c!69366) b!611142))

(assert (= (and b!611144 (not c!69366)) b!611146))

(declare-fun m!587625 () Bool)

(assert (=> d!88329 m!587625))

(declare-fun m!587627 () Bool)

(assert (=> d!88329 m!587627))

(declare-fun m!587629 () Bool)

(assert (=> d!88329 m!587629))

(assert (=> d!88329 m!587309))

(assert (=> b!611146 m!587597))

(assert (=> b!611146 m!587597))

(assert (=> b!611146 m!587283))

(declare-fun m!587631 () Bool)

(assert (=> b!611146 m!587631))

(assert (=> b!610807 d!88329))

(declare-fun d!88331 () Bool)

(declare-fun e!350216 () Bool)

(assert (=> d!88331 e!350216))

(declare-fun res!393164 () Bool)

(assert (=> d!88331 (=> (not res!393164) (not e!350216))))

(assert (=> d!88331 (= res!393164 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18274 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18274 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18274 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18274 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18274 a!2986))))))

(declare-fun lt!279653 () Unit!19570)

(declare-fun choose!9 (array!37332 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19570)

(assert (=> d!88331 (= lt!279653 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279470 vacantSpotIndex!68 mask!3053))))

(assert (=> d!88331 (validMask!0 mask!3053)))

(assert (=> d!88331 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279470 vacantSpotIndex!68 mask!3053) lt!279653)))

(declare-fun b!611176 () Bool)

(assert (=> b!611176 (= e!350216 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279470 vacantSpotIndex!68 (select (arr!17910 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279470 vacantSpotIndex!68 (select (store (arr!17910 a!2986) i!1108 k!1786) j!136) (array!37333 (store (arr!17910 a!2986) i!1108 k!1786) (size!18274 a!2986)) mask!3053)))))

(assert (= (and d!88331 res!393164) b!611176))

(declare-fun m!587661 () Bool)

(assert (=> d!88331 m!587661))

(assert (=> d!88331 m!587309))

(assert (=> b!611176 m!587295))

(declare-fun m!587663 () Bool)

(assert (=> b!611176 m!587663))

(assert (=> b!611176 m!587295))

(assert (=> b!611176 m!587283))

(assert (=> b!611176 m!587303))

(assert (=> b!611176 m!587283))

(assert (=> b!611176 m!587285))

(assert (=> b!610807 d!88331))

(declare-fun d!88347 () Bool)

(declare-fun res!393165 () Bool)

(declare-fun e!350217 () Bool)

(assert (=> d!88347 (=> res!393165 e!350217)))

(assert (=> d!88347 (= res!393165 (= (select (arr!17910 lt!279467) j!136) (select (arr!17910 a!2986) j!136)))))

(assert (=> d!88347 (= (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) j!136) e!350217)))

(declare-fun b!611177 () Bool)

(declare-fun e!350218 () Bool)

(assert (=> b!611177 (= e!350217 e!350218)))

(declare-fun res!393166 () Bool)

(assert (=> b!611177 (=> (not res!393166) (not e!350218))))

(assert (=> b!611177 (= res!393166 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18274 lt!279467)))))

(declare-fun b!611178 () Bool)

(assert (=> b!611178 (= e!350218 (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88347 (not res!393165)) b!611177))

(assert (= (and b!611177 res!393166) b!611178))

(declare-fun m!587665 () Bool)

(assert (=> d!88347 m!587665))

(assert (=> b!611178 m!587283))

(declare-fun m!587667 () Bool)

(assert (=> b!611178 m!587667))

(assert (=> b!610818 d!88347))

(declare-fun d!88351 () Bool)

(declare-fun res!393167 () Bool)

(declare-fun e!350219 () Bool)

(assert (=> d!88351 (=> res!393167 e!350219)))

(assert (=> d!88351 (= res!393167 (= (select (arr!17910 lt!279467) index!984) (select (arr!17910 a!2986) j!136)))))

(assert (=> d!88351 (= (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) index!984) e!350219)))

(declare-fun b!611179 () Bool)

(declare-fun e!350220 () Bool)

(assert (=> b!611179 (= e!350219 e!350220)))

(declare-fun res!393168 () Bool)

(assert (=> b!611179 (=> (not res!393168) (not e!350220))))

(assert (=> b!611179 (= res!393168 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18274 lt!279467)))))

(declare-fun b!611180 () Bool)

(assert (=> b!611180 (= e!350220 (arrayContainsKey!0 lt!279467 (select (arr!17910 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88351 (not res!393167)) b!611179))

(assert (= (and b!611179 res!393168) b!611180))

(assert (=> d!88351 m!587621))

(assert (=> b!611180 m!587283))

(declare-fun m!587669 () Bool)

(assert (=> b!611180 m!587669))

(assert (=> b!610829 d!88351))

(declare-fun b!611210 () Bool)

(declare-fun e!350247 () Bool)

(declare-fun call!33165 () Bool)

(assert (=> b!611210 (= e!350247 call!33165)))

(declare-fun b!611211 () Bool)

(declare-fun e!350248 () Bool)

(declare-fun e!350246 () Bool)

(assert (=> b!611211 (= e!350248 e!350246)))

(declare-fun res!393189 () Bool)

(assert (=> b!611211 (=> (not res!393189) (not e!350246))))

(declare-fun e!350245 () Bool)

(assert (=> b!611211 (= res!393189 (not e!350245))))

(declare-fun res!393188 () Bool)

(assert (=> b!611211 (=> (not res!393188) (not e!350245))))

(assert (=> b!611211 (= res!393188 (validKeyInArray!0 (select (arr!17910 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!611212 () Bool)

(assert (=> b!611212 (= e!350247 call!33165)))

(declare-fun b!611213 () Bool)

(assert (=> b!611213 (= e!350246 e!350247)))

(declare-fun c!69378 () Bool)

(assert (=> b!611213 (= c!69378 (validKeyInArray!0 (select (arr!17910 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!88353 () Bool)

(declare-fun res!393190 () Bool)

(assert (=> d!88353 (=> res!393190 e!350248)))

(assert (=> d!88353 (= res!393190 (bvsge #b00000000000000000000000000000000 (size!18274 a!2986)))))

(assert (=> d!88353 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12001) e!350248)))

(declare-fun bm!33162 () Bool)

(assert (=> bm!33162 (= call!33165 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69378 (Cons!12000 (select (arr!17910 a!2986) #b00000000000000000000000000000000) Nil!12001) Nil!12001)))))

(declare-fun b!611214 () Bool)

(assert (=> b!611214 (= e!350245 (contains!3046 Nil!12001 (select (arr!17910 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!88353 (not res!393190)) b!611211))

(assert (= (and b!611211 res!393188) b!611214))

(assert (= (and b!611211 res!393189) b!611213))

(assert (= (and b!611213 c!69378) b!611210))

(assert (= (and b!611213 (not c!69378)) b!611212))

(assert (= (or b!611210 b!611212) bm!33162))

(assert (=> b!611211 m!587557))

(assert (=> b!611211 m!587557))

(declare-fun m!587687 () Bool)

(assert (=> b!611211 m!587687))

(assert (=> b!611213 m!587557))

(assert (=> b!611213 m!587557))

(assert (=> b!611213 m!587687))

(assert (=> bm!33162 m!587557))

(declare-fun m!587689 () Bool)

(assert (=> bm!33162 m!587689))

(assert (=> b!611214 m!587557))

(assert (=> b!611214 m!587557))

(declare-fun m!587691 () Bool)

(assert (=> b!611214 m!587691))

(assert (=> b!610808 d!88353))

(declare-fun b!611215 () Bool)

(declare-fun e!350251 () SeekEntryResult!6357)

(assert (=> b!611215 (= e!350251 (MissingVacant!6357 vacantSpotIndex!68))))

(declare-fun b!611216 () Bool)

(declare-fun e!350249 () SeekEntryResult!6357)

(declare-fun e!350250 () SeekEntryResult!6357)

(assert (=> b!611216 (= e!350249 e!350250)))

(declare-fun c!69380 () Bool)

(declare-fun lt!279658 () (_ BitVec 64))

(assert (=> b!611216 (= c!69380 (= lt!279658 (select (arr!17910 a!2986) j!136)))))

(declare-fun lt!279659 () SeekEntryResult!6357)

(declare-fun d!88369 () Bool)

(assert (=> d!88369 (and (or (is-Undefined!6357 lt!279659) (not (is-Found!6357 lt!279659)) (and (bvsge (index!27709 lt!279659) #b00000000000000000000000000000000) (bvslt (index!27709 lt!279659) (size!18274 a!2986)))) (or (is-Undefined!6357 lt!279659) (is-Found!6357 lt!279659) (not (is-MissingVacant!6357 lt!279659)) (not (= (index!27711 lt!279659) vacantSpotIndex!68)) (and (bvsge (index!27711 lt!279659) #b00000000000000000000000000000000) (bvslt (index!27711 lt!279659) (size!18274 a!2986)))) (or (is-Undefined!6357 lt!279659) (ite (is-Found!6357 lt!279659) (= (select (arr!17910 a!2986) (index!27709 lt!279659)) (select (arr!17910 a!2986) j!136)) (and (is-MissingVacant!6357 lt!279659) (= (index!27711 lt!279659) vacantSpotIndex!68) (= (select (arr!17910 a!2986) (index!27711 lt!279659)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88369 (= lt!279659 e!350249)))

(declare-fun c!69379 () Bool)

(assert (=> d!88369 (= c!69379 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88369 (= lt!279658 (select (arr!17910 a!2986) index!984))))

(assert (=> d!88369 (validMask!0 mask!3053)))

(assert (=> d!88369 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17910 a!2986) j!136) a!2986 mask!3053) lt!279659)))

(declare-fun b!611217 () Bool)

(declare-fun c!69381 () Bool)

(assert (=> b!611217 (= c!69381 (= lt!279658 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611217 (= e!350250 e!350251)))

(declare-fun b!611218 () Bool)

(assert (=> b!611218 (= e!350250 (Found!6357 index!984))))

(declare-fun b!611219 () Bool)

(assert (=> b!611219 (= e!350251 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17910 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611220 () Bool)

(assert (=> b!611220 (= e!350249 Undefined!6357)))

(assert (= (and d!88369 c!69379) b!611220))

(assert (= (and d!88369 (not c!69379)) b!611216))

(assert (= (and b!611216 c!69380) b!611218))

(assert (= (and b!611216 (not c!69380)) b!611217))

(assert (= (and b!611217 c!69381) b!611215))

(assert (= (and b!611217 (not c!69381)) b!611219))

(declare-fun m!587693 () Bool)

(assert (=> d!88369 m!587693))

(declare-fun m!587695 () Bool)

(assert (=> d!88369 m!587695))

(assert (=> d!88369 m!587335))

(assert (=> d!88369 m!587309))

(assert (=> b!611219 m!587293))

(assert (=> b!611219 m!587293))

(assert (=> b!611219 m!587283))

(declare-fun m!587699 () Bool)

(assert (=> b!611219 m!587699))

(assert (=> b!610827 d!88369))

(declare-fun b!611270 () Bool)

(declare-fun c!69394 () Bool)

(declare-fun lt!279685 () (_ BitVec 64))

(assert (=> b!611270 (= c!69394 (= lt!279685 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!350291 () SeekEntryResult!6357)

(declare-fun e!350290 () SeekEntryResult!6357)

(assert (=> b!611270 (= e!350291 e!350290)))

(declare-fun b!611271 () Bool)

(declare-fun lt!279686 () SeekEntryResult!6357)

(assert (=> b!611271 (= e!350291 (Found!6357 (index!27710 lt!279686)))))

(declare-fun d!88371 () Bool)

(declare-fun lt!279687 () SeekEntryResult!6357)

(assert (=> d!88371 (and (or (is-Undefined!6357 lt!279687) (not (is-Found!6357 lt!279687)) (and (bvsge (index!27709 lt!279687) #b00000000000000000000000000000000) (bvslt (index!27709 lt!279687) (size!18274 a!2986)))) (or (is-Undefined!6357 lt!279687) (is-Found!6357 lt!279687) (not (is-MissingZero!6357 lt!279687)) (and (bvsge (index!27708 lt!279687) #b00000000000000000000000000000000) (bvslt (index!27708 lt!279687) (size!18274 a!2986)))) (or (is-Undefined!6357 lt!279687) (is-Found!6357 lt!279687) (is-MissingZero!6357 lt!279687) (not (is-MissingVacant!6357 lt!279687)) (and (bvsge (index!27711 lt!279687) #b00000000000000000000000000000000) (bvslt (index!27711 lt!279687) (size!18274 a!2986)))) (or (is-Undefined!6357 lt!279687) (ite (is-Found!6357 lt!279687) (= (select (arr!17910 a!2986) (index!27709 lt!279687)) k!1786) (ite (is-MissingZero!6357 lt!279687) (= (select (arr!17910 a!2986) (index!27708 lt!279687)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6357 lt!279687) (= (select (arr!17910 a!2986) (index!27711 lt!279687)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!350292 () SeekEntryResult!6357)

(assert (=> d!88371 (= lt!279687 e!350292)))

(declare-fun c!69395 () Bool)

(assert (=> d!88371 (= c!69395 (and (is-Intermediate!6357 lt!279686) (undefined!7169 lt!279686)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37332 (_ BitVec 32)) SeekEntryResult!6357)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88371 (= lt!279686 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!88371 (validMask!0 mask!3053)))

(assert (=> d!88371 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!279687)))

(declare-fun b!611272 () Bool)

(assert (=> b!611272 (= e!350292 Undefined!6357)))

(declare-fun b!611273 () Bool)

(assert (=> b!611273 (= e!350290 (seekKeyOrZeroReturnVacant!0 (x!56549 lt!279686) (index!27710 lt!279686) (index!27710 lt!279686) k!1786 a!2986 mask!3053))))

(declare-fun b!611274 () Bool)

(assert (=> b!611274 (= e!350292 e!350291)))

(assert (=> b!611274 (= lt!279685 (select (arr!17910 a!2986) (index!27710 lt!279686)))))

(declare-fun c!69393 () Bool)

(assert (=> b!611274 (= c!69393 (= lt!279685 k!1786))))

(declare-fun b!611275 () Bool)

(assert (=> b!611275 (= e!350290 (MissingZero!6357 (index!27710 lt!279686)))))

(assert (= (and d!88371 c!69395) b!611272))

(assert (= (and d!88371 (not c!69395)) b!611274))

(assert (= (and b!611274 c!69393) b!611271))

(assert (= (and b!611274 (not c!69393)) b!611270))

(assert (= (and b!611270 c!69394) b!611275))

(assert (= (and b!611270 (not c!69394)) b!611273))

(declare-fun m!587747 () Bool)

(assert (=> d!88371 m!587747))

(declare-fun m!587749 () Bool)

(assert (=> d!88371 m!587749))

(declare-fun m!587751 () Bool)

(assert (=> d!88371 m!587751))

(assert (=> d!88371 m!587309))

(assert (=> d!88371 m!587751))

(declare-fun m!587753 () Bool)

(assert (=> d!88371 m!587753))

(declare-fun m!587755 () Bool)

(assert (=> d!88371 m!587755))

(declare-fun m!587757 () Bool)

(assert (=> b!611273 m!587757))

(declare-fun m!587759 () Bool)

(assert (=> b!611274 m!587759))

(assert (=> b!610806 d!88371))

(declare-fun d!88393 () Bool)

(declare-fun lt!279688 () Bool)

(assert (=> d!88393 (= lt!279688 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!241 Nil!12001)))))

(declare-fun e!350294 () Bool)

(assert (=> d!88393 (= lt!279688 e!350294)))

(declare-fun res!393218 () Bool)

(assert (=> d!88393 (=> (not res!393218) (not e!350294))))

(assert (=> d!88393 (= res!393218 (is-Cons!12000 Nil!12001))))

(assert (=> d!88393 (= (contains!3046 Nil!12001 #b1000000000000000000000000000000000000000000000000000000000000000) lt!279688)))

(declare-fun b!611276 () Bool)

(declare-fun e!350293 () Bool)

(assert (=> b!611276 (= e!350294 e!350293)))

(declare-fun res!393219 () Bool)

(assert (=> b!611276 (=> res!393219 e!350293)))

(assert (=> b!611276 (= res!393219 (= (h!13045 Nil!12001) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!611277 () Bool)

(assert (=> b!611277 (= e!350293 (contains!3046 (t!18240 Nil!12001) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!88393 res!393218) b!611276))

(assert (= (and b!611276 (not res!393219)) b!611277))

(assert (=> d!88393 m!587551))

(declare-fun m!587761 () Bool)

(assert (=> d!88393 m!587761))

(declare-fun m!587763 () Bool)

(assert (=> b!611277 m!587763))

(assert (=> b!610826 d!88393))

(declare-fun d!88395 () Bool)

(assert (=> d!88395 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610805 d!88395))

(assert (=> b!610804 d!88351))

(declare-fun d!88397 () Bool)

(declare-fun res!393224 () Bool)

(declare-fun e!350299 () Bool)

(assert (=> d!88397 (=> res!393224 e!350299)))

(assert (=> d!88397 (= res!393224 (is-Nil!12001 Nil!12001))))

(assert (=> d!88397 (= (noDuplicate!346 Nil!12001) e!350299)))

(declare-fun b!611282 () Bool)

(declare-fun e!350300 () Bool)

(assert (=> b!611282 (= e!350299 e!350300)))

(declare-fun res!393225 () Bool)

(assert (=> b!611282 (=> (not res!393225) (not e!350300))))

(assert (=> b!611282 (= res!393225 (not (contains!3046 (t!18240 Nil!12001) (h!13045 Nil!12001))))))

(declare-fun b!611283 () Bool)

(assert (=> b!611283 (= e!350300 (noDuplicate!346 (t!18240 Nil!12001)))))

(assert (= (and d!88397 (not res!393224)) b!611282))

(assert (= (and b!611282 res!393225) b!611283))

