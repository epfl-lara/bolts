; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55930 () Bool)

(assert start!55930)

(declare-fun b!612166 () Bool)

(declare-fun e!350885 () Bool)

(declare-fun e!350887 () Bool)

(assert (=> b!612166 (= e!350885 e!350887)))

(declare-fun res!393921 () Bool)

(assert (=> b!612166 (=> (not res!393921) (not e!350887))))

(declare-datatypes ((SeekEntryResult!6371 0))(
  ( (MissingZero!6371 (index!27767 (_ BitVec 32))) (Found!6371 (index!27768 (_ BitVec 32))) (Intermediate!6371 (undefined!7183 Bool) (index!27769 (_ BitVec 32)) (x!56604 (_ BitVec 32))) (Undefined!6371) (MissingVacant!6371 (index!27770 (_ BitVec 32))) )
))
(declare-fun lt!280335 () SeekEntryResult!6371)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!612166 (= res!393921 (or (= lt!280335 (MissingZero!6371 i!1108)) (= lt!280335 (MissingVacant!6371 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37363 0))(
  ( (array!37364 (arr!17924 (Array (_ BitVec 32) (_ BitVec 64))) (size!18288 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37363)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37363 (_ BitVec 32)) SeekEntryResult!6371)

(assert (=> b!612166 (= lt!280335 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!612167 () Bool)

(declare-fun res!393933 () Bool)

(assert (=> b!612167 (=> (not res!393933) (not e!350885))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!612167 (= res!393933 (and (= (size!18288 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18288 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18288 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!612168 () Bool)

(declare-datatypes ((Unit!19654 0))(
  ( (Unit!19655) )
))
(declare-fun e!350891 () Unit!19654)

(declare-fun Unit!19656 () Unit!19654)

(assert (=> b!612168 (= e!350891 Unit!19656)))

(declare-fun lt!280342 () array!37363)

(declare-fun lt!280328 () Unit!19654)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37363 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19654)

(assert (=> b!612168 (= lt!280328 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280342 (select (arr!17924 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37363 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!612168 (arrayContainsKey!0 lt!280342 (select (arr!17924 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280331 () Unit!19654)

(declare-datatypes ((List!12018 0))(
  ( (Nil!12015) (Cons!12014 (h!13059 (_ BitVec 64)) (t!18254 List!12018)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37363 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12018) Unit!19654)

(assert (=> b!612168 (= lt!280331 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12015))))

(declare-fun arrayNoDuplicates!0 (array!37363 (_ BitVec 32) List!12018) Bool)

(assert (=> b!612168 (arrayNoDuplicates!0 lt!280342 #b00000000000000000000000000000000 Nil!12015)))

(declare-fun lt!280329 () Unit!19654)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37363 (_ BitVec 32) (_ BitVec 32)) Unit!19654)

(assert (=> b!612168 (= lt!280329 (lemmaNoDuplicateFromThenFromBigger!0 lt!280342 #b00000000000000000000000000000000 j!136))))

(assert (=> b!612168 (arrayNoDuplicates!0 lt!280342 j!136 Nil!12015)))

(declare-fun lt!280344 () Unit!19654)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37363 (_ BitVec 64) (_ BitVec 32) List!12018) Unit!19654)

(assert (=> b!612168 (= lt!280344 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280342 (select (arr!17924 a!2986) j!136) j!136 Nil!12015))))

(assert (=> b!612168 false))

(declare-fun b!612169 () Bool)

(declare-fun e!350892 () Bool)

(declare-fun e!350884 () Bool)

(assert (=> b!612169 (= e!350892 e!350884)))

(declare-fun res!393927 () Bool)

(assert (=> b!612169 (=> res!393927 e!350884)))

(declare-fun lt!280336 () (_ BitVec 64))

(declare-fun lt!280337 () (_ BitVec 64))

(assert (=> b!612169 (= res!393927 (or (not (= (select (arr!17924 a!2986) j!136) lt!280337)) (not (= (select (arr!17924 a!2986) j!136) lt!280336))))))

(declare-fun e!350889 () Bool)

(assert (=> b!612169 e!350889))

(declare-fun res!393923 () Bool)

(assert (=> b!612169 (=> (not res!393923) (not e!350889))))

(assert (=> b!612169 (= res!393923 (= lt!280336 (select (arr!17924 a!2986) j!136)))))

(assert (=> b!612169 (= lt!280336 (select (store (arr!17924 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!612170 () Bool)

(declare-fun res!393929 () Bool)

(assert (=> b!612170 (=> (not res!393929) (not e!350885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!612170 (= res!393929 (validKeyInArray!0 k!1786))))

(declare-fun e!350890 () Bool)

(declare-fun b!612171 () Bool)

(assert (=> b!612171 (= e!350890 (arrayContainsKey!0 lt!280342 (select (arr!17924 a!2986) j!136) index!984))))

(declare-fun b!612172 () Bool)

(declare-fun res!393930 () Bool)

(assert (=> b!612172 (=> (not res!393930) (not e!350887))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!612172 (= res!393930 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17924 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!612173 () Bool)

(declare-fun res!393936 () Bool)

(assert (=> b!612173 (=> (not res!393936) (not e!350887))))

(assert (=> b!612173 (= res!393936 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12015))))

(declare-fun b!612174 () Bool)

(declare-fun e!350882 () Unit!19654)

(declare-fun Unit!19657 () Unit!19654)

(assert (=> b!612174 (= e!350882 Unit!19657)))

(assert (=> b!612174 false))

(declare-fun b!612176 () Bool)

(declare-fun e!350883 () Bool)

(declare-fun e!350880 () Bool)

(assert (=> b!612176 (= e!350883 e!350880)))

(declare-fun res!393924 () Bool)

(assert (=> b!612176 (=> (not res!393924) (not e!350880))))

(declare-fun lt!280340 () SeekEntryResult!6371)

(assert (=> b!612176 (= res!393924 (and (= lt!280340 (Found!6371 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17924 a!2986) index!984) (select (arr!17924 a!2986) j!136))) (not (= (select (arr!17924 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37363 (_ BitVec 32)) SeekEntryResult!6371)

(assert (=> b!612176 (= lt!280340 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17924 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!612177 () Bool)

(declare-fun e!350886 () Bool)

(assert (=> b!612177 (= e!350886 true)))

(assert (=> b!612177 (arrayNoDuplicates!0 lt!280342 #b00000000000000000000000000000000 Nil!12015)))

(declare-fun lt!280333 () Unit!19654)

(assert (=> b!612177 (= lt!280333 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12015))))

(assert (=> b!612177 (arrayContainsKey!0 lt!280342 (select (arr!17924 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280341 () Unit!19654)

(assert (=> b!612177 (= lt!280341 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280342 (select (arr!17924 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!350888 () Bool)

(assert (=> b!612177 e!350888))

(declare-fun res!393928 () Bool)

(assert (=> b!612177 (=> (not res!393928) (not e!350888))))

(assert (=> b!612177 (= res!393928 (arrayContainsKey!0 lt!280342 (select (arr!17924 a!2986) j!136) j!136))))

(declare-fun b!612178 () Bool)

(declare-fun res!393938 () Bool)

(assert (=> b!612178 (=> (not res!393938) (not e!350887))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37363 (_ BitVec 32)) Bool)

(assert (=> b!612178 (= res!393938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!612179 () Bool)

(assert (=> b!612179 (= e!350888 (arrayContainsKey!0 lt!280342 (select (arr!17924 a!2986) j!136) index!984))))

(declare-fun b!612180 () Bool)

(assert (=> b!612180 (= e!350884 e!350886)))

(declare-fun res!393920 () Bool)

(assert (=> b!612180 (=> res!393920 e!350886)))

(assert (=> b!612180 (= res!393920 (bvsge index!984 j!136))))

(declare-fun lt!280343 () Unit!19654)

(assert (=> b!612180 (= lt!280343 e!350891)))

(declare-fun c!69490 () Bool)

(assert (=> b!612180 (= c!69490 (bvslt j!136 index!984))))

(declare-fun b!612181 () Bool)

(declare-fun e!350879 () Bool)

(declare-fun lt!280334 () SeekEntryResult!6371)

(assert (=> b!612181 (= e!350879 (= lt!280340 lt!280334))))

(declare-fun b!612182 () Bool)

(declare-fun Unit!19658 () Unit!19654)

(assert (=> b!612182 (= e!350882 Unit!19658)))

(declare-fun b!612183 () Bool)

(assert (=> b!612183 (= e!350880 (not e!350892))))

(declare-fun res!393922 () Bool)

(assert (=> b!612183 (=> res!393922 e!350892)))

(declare-fun lt!280330 () SeekEntryResult!6371)

(assert (=> b!612183 (= res!393922 (not (= lt!280330 (Found!6371 index!984))))))

(declare-fun lt!280339 () Unit!19654)

(assert (=> b!612183 (= lt!280339 e!350882)))

(declare-fun c!69491 () Bool)

(assert (=> b!612183 (= c!69491 (= lt!280330 Undefined!6371))))

(assert (=> b!612183 (= lt!280330 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280337 lt!280342 mask!3053))))

(assert (=> b!612183 e!350879))

(declare-fun res!393934 () Bool)

(assert (=> b!612183 (=> (not res!393934) (not e!350879))))

(declare-fun lt!280332 () (_ BitVec 32))

(assert (=> b!612183 (= res!393934 (= lt!280334 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280332 vacantSpotIndex!68 lt!280337 lt!280342 mask!3053)))))

(assert (=> b!612183 (= lt!280334 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280332 vacantSpotIndex!68 (select (arr!17924 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!612183 (= lt!280337 (select (store (arr!17924 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!280338 () Unit!19654)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37363 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19654)

(assert (=> b!612183 (= lt!280338 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280332 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!612183 (= lt!280332 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!612184 () Bool)

(declare-fun res!393926 () Bool)

(assert (=> b!612184 (=> (not res!393926) (not e!350885))))

(assert (=> b!612184 (= res!393926 (validKeyInArray!0 (select (arr!17924 a!2986) j!136)))))

(declare-fun b!612185 () Bool)

(declare-fun res!393937 () Bool)

(assert (=> b!612185 (=> (not res!393937) (not e!350885))))

(assert (=> b!612185 (= res!393937 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!612186 () Bool)

(declare-fun e!350893 () Bool)

(assert (=> b!612186 (= e!350893 e!350890)))

(declare-fun res!393925 () Bool)

(assert (=> b!612186 (=> (not res!393925) (not e!350890))))

(assert (=> b!612186 (= res!393925 (arrayContainsKey!0 lt!280342 (select (arr!17924 a!2986) j!136) j!136))))

(declare-fun b!612187 () Bool)

(declare-fun Unit!19659 () Unit!19654)

(assert (=> b!612187 (= e!350891 Unit!19659)))

(declare-fun b!612188 () Bool)

(assert (=> b!612188 (= e!350887 e!350883)))

(declare-fun res!393931 () Bool)

(assert (=> b!612188 (=> (not res!393931) (not e!350883))))

(assert (=> b!612188 (= res!393931 (= (select (store (arr!17924 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!612188 (= lt!280342 (array!37364 (store (arr!17924 a!2986) i!1108 k!1786) (size!18288 a!2986)))))

(declare-fun b!612175 () Bool)

(assert (=> b!612175 (= e!350889 e!350893)))

(declare-fun res!393935 () Bool)

(assert (=> b!612175 (=> res!393935 e!350893)))

(assert (=> b!612175 (= res!393935 (or (not (= (select (arr!17924 a!2986) j!136) lt!280337)) (not (= (select (arr!17924 a!2986) j!136) lt!280336)) (bvsge j!136 index!984)))))

(declare-fun res!393932 () Bool)

(assert (=> start!55930 (=> (not res!393932) (not e!350885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55930 (= res!393932 (validMask!0 mask!3053))))

(assert (=> start!55930 e!350885))

(assert (=> start!55930 true))

(declare-fun array_inv!13698 (array!37363) Bool)

(assert (=> start!55930 (array_inv!13698 a!2986)))

(assert (= (and start!55930 res!393932) b!612167))

(assert (= (and b!612167 res!393933) b!612184))

(assert (= (and b!612184 res!393926) b!612170))

(assert (= (and b!612170 res!393929) b!612185))

(assert (= (and b!612185 res!393937) b!612166))

(assert (= (and b!612166 res!393921) b!612178))

(assert (= (and b!612178 res!393938) b!612173))

(assert (= (and b!612173 res!393936) b!612172))

(assert (= (and b!612172 res!393930) b!612188))

(assert (= (and b!612188 res!393931) b!612176))

(assert (= (and b!612176 res!393924) b!612183))

(assert (= (and b!612183 res!393934) b!612181))

(assert (= (and b!612183 c!69491) b!612174))

(assert (= (and b!612183 (not c!69491)) b!612182))

(assert (= (and b!612183 (not res!393922)) b!612169))

(assert (= (and b!612169 res!393923) b!612175))

(assert (= (and b!612175 (not res!393935)) b!612186))

(assert (= (and b!612186 res!393925) b!612171))

(assert (= (and b!612169 (not res!393927)) b!612180))

(assert (= (and b!612180 c!69490) b!612168))

(assert (= (and b!612180 (not c!69490)) b!612187))

(assert (= (and b!612180 (not res!393920)) b!612177))

(assert (= (and b!612177 res!393928) b!612179))

(declare-fun m!588569 () Bool)

(assert (=> b!612176 m!588569))

(declare-fun m!588571 () Bool)

(assert (=> b!612176 m!588571))

(assert (=> b!612176 m!588571))

(declare-fun m!588573 () Bool)

(assert (=> b!612176 m!588573))

(declare-fun m!588575 () Bool)

(assert (=> b!612166 m!588575))

(declare-fun m!588577 () Bool)

(assert (=> b!612170 m!588577))

(assert (=> b!612186 m!588571))

(assert (=> b!612186 m!588571))

(declare-fun m!588579 () Bool)

(assert (=> b!612186 m!588579))

(declare-fun m!588581 () Bool)

(assert (=> b!612178 m!588581))

(declare-fun m!588583 () Bool)

(assert (=> b!612185 m!588583))

(declare-fun m!588585 () Bool)

(assert (=> b!612188 m!588585))

(declare-fun m!588587 () Bool)

(assert (=> b!612188 m!588587))

(declare-fun m!588589 () Bool)

(assert (=> b!612173 m!588589))

(declare-fun m!588591 () Bool)

(assert (=> start!55930 m!588591))

(declare-fun m!588593 () Bool)

(assert (=> start!55930 m!588593))

(assert (=> b!612171 m!588571))

(assert (=> b!612171 m!588571))

(declare-fun m!588595 () Bool)

(assert (=> b!612171 m!588595))

(declare-fun m!588597 () Bool)

(assert (=> b!612172 m!588597))

(assert (=> b!612177 m!588571))

(declare-fun m!588599 () Bool)

(assert (=> b!612177 m!588599))

(assert (=> b!612177 m!588571))

(assert (=> b!612177 m!588571))

(declare-fun m!588601 () Bool)

(assert (=> b!612177 m!588601))

(declare-fun m!588603 () Bool)

(assert (=> b!612177 m!588603))

(assert (=> b!612177 m!588571))

(assert (=> b!612177 m!588579))

(declare-fun m!588605 () Bool)

(assert (=> b!612177 m!588605))

(declare-fun m!588607 () Bool)

(assert (=> b!612183 m!588607))

(declare-fun m!588609 () Bool)

(assert (=> b!612183 m!588609))

(declare-fun m!588611 () Bool)

(assert (=> b!612183 m!588611))

(assert (=> b!612183 m!588585))

(declare-fun m!588613 () Bool)

(assert (=> b!612183 m!588613))

(declare-fun m!588615 () Bool)

(assert (=> b!612183 m!588615))

(assert (=> b!612183 m!588571))

(assert (=> b!612183 m!588571))

(declare-fun m!588617 () Bool)

(assert (=> b!612183 m!588617))

(assert (=> b!612168 m!588571))

(declare-fun m!588619 () Bool)

(assert (=> b!612168 m!588619))

(assert (=> b!612168 m!588571))

(assert (=> b!612168 m!588571))

(declare-fun m!588621 () Bool)

(assert (=> b!612168 m!588621))

(assert (=> b!612168 m!588603))

(declare-fun m!588623 () Bool)

(assert (=> b!612168 m!588623))

(assert (=> b!612168 m!588605))

(declare-fun m!588625 () Bool)

(assert (=> b!612168 m!588625))

(assert (=> b!612168 m!588571))

(declare-fun m!588627 () Bool)

(assert (=> b!612168 m!588627))

(assert (=> b!612184 m!588571))

(assert (=> b!612184 m!588571))

(declare-fun m!588629 () Bool)

(assert (=> b!612184 m!588629))

(assert (=> b!612179 m!588571))

(assert (=> b!612179 m!588571))

(assert (=> b!612179 m!588595))

(assert (=> b!612169 m!588571))

(assert (=> b!612169 m!588585))

(declare-fun m!588631 () Bool)

(assert (=> b!612169 m!588631))

(assert (=> b!612175 m!588571))

(push 1)

