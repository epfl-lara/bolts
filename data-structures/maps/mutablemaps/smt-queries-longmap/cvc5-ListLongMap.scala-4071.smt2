; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55932 () Bool)

(assert start!55932)

(declare-fun b!612235 () Bool)

(declare-fun res!393989 () Bool)

(declare-fun e!350930 () Bool)

(assert (=> b!612235 (=> (not res!393989) (not e!350930))))

(declare-datatypes ((array!37365 0))(
  ( (array!37366 (arr!17925 (Array (_ BitVec 32) (_ BitVec 64))) (size!18289 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37365)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!612235 (= res!393989 (validKeyInArray!0 (select (arr!17925 a!2986) j!136)))))

(declare-fun b!612236 () Bool)

(declare-fun e!350927 () Bool)

(assert (=> b!612236 (= e!350930 e!350927)))

(declare-fun res!393978 () Bool)

(assert (=> b!612236 (=> (not res!393978) (not e!350927))))

(declare-datatypes ((SeekEntryResult!6372 0))(
  ( (MissingZero!6372 (index!27771 (_ BitVec 32))) (Found!6372 (index!27772 (_ BitVec 32))) (Intermediate!6372 (undefined!7184 Bool) (index!27773 (_ BitVec 32)) (x!56613 (_ BitVec 32))) (Undefined!6372) (MissingVacant!6372 (index!27774 (_ BitVec 32))) )
))
(declare-fun lt!280380 () SeekEntryResult!6372)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!612236 (= res!393978 (or (= lt!280380 (MissingZero!6372 i!1108)) (= lt!280380 (MissingVacant!6372 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37365 (_ BitVec 32)) SeekEntryResult!6372)

(assert (=> b!612236 (= lt!280380 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!612237 () Bool)

(declare-fun e!350925 () Bool)

(assert (=> b!612237 (= e!350927 e!350925)))

(declare-fun res!393977 () Bool)

(assert (=> b!612237 (=> (not res!393977) (not e!350925))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!612237 (= res!393977 (= (select (store (arr!17925 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!280387 () array!37365)

(assert (=> b!612237 (= lt!280387 (array!37366 (store (arr!17925 a!2986) i!1108 k!1786) (size!18289 a!2986)))))

(declare-fun b!612238 () Bool)

(declare-fun e!350935 () Bool)

(declare-fun e!350933 () Bool)

(assert (=> b!612238 (= e!350935 e!350933)))

(declare-fun res!393981 () Bool)

(assert (=> b!612238 (=> res!393981 e!350933)))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!612238 (= res!393981 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19660 0))(
  ( (Unit!19661) )
))
(declare-fun lt!280381 () Unit!19660)

(declare-fun e!350931 () Unit!19660)

(assert (=> b!612238 (= lt!280381 e!350931)))

(declare-fun c!69497 () Bool)

(assert (=> b!612238 (= c!69497 (bvslt j!136 index!984))))

(declare-fun b!612239 () Bool)

(declare-fun Unit!19662 () Unit!19660)

(assert (=> b!612239 (= e!350931 Unit!19662)))

(declare-fun lt!280388 () Unit!19660)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37365 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19660)

(assert (=> b!612239 (= lt!280388 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280387 (select (arr!17925 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37365 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!612239 (arrayContainsKey!0 lt!280387 (select (arr!17925 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!280390 () Unit!19660)

(declare-datatypes ((List!12019 0))(
  ( (Nil!12016) (Cons!12015 (h!13060 (_ BitVec 64)) (t!18255 List!12019)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37365 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12019) Unit!19660)

(assert (=> b!612239 (= lt!280390 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12016))))

(declare-fun arrayNoDuplicates!0 (array!37365 (_ BitVec 32) List!12019) Bool)

(assert (=> b!612239 (arrayNoDuplicates!0 lt!280387 #b00000000000000000000000000000000 Nil!12016)))

(declare-fun lt!280393 () Unit!19660)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37365 (_ BitVec 32) (_ BitVec 32)) Unit!19660)

(assert (=> b!612239 (= lt!280393 (lemmaNoDuplicateFromThenFromBigger!0 lt!280387 #b00000000000000000000000000000000 j!136))))

(assert (=> b!612239 (arrayNoDuplicates!0 lt!280387 j!136 Nil!12016)))

(declare-fun lt!280391 () Unit!19660)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37365 (_ BitVec 64) (_ BitVec 32) List!12019) Unit!19660)

(assert (=> b!612239 (= lt!280391 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280387 (select (arr!17925 a!2986) j!136) j!136 Nil!12016))))

(assert (=> b!612239 false))

(declare-fun b!612240 () Bool)

(declare-fun res!393980 () Bool)

(assert (=> b!612240 (=> (not res!393980) (not e!350930))))

(assert (=> b!612240 (= res!393980 (and (= (size!18289 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18289 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18289 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!612241 () Bool)

(declare-fun e!350932 () Bool)

(declare-fun e!350929 () Bool)

(assert (=> b!612241 (= e!350932 e!350929)))

(declare-fun res!393987 () Bool)

(assert (=> b!612241 (=> (not res!393987) (not e!350929))))

(assert (=> b!612241 (= res!393987 (arrayContainsKey!0 lt!280387 (select (arr!17925 a!2986) j!136) j!136))))

(declare-fun b!612242 () Bool)

(declare-fun e!350926 () Bool)

(assert (=> b!612242 (= e!350926 e!350932)))

(declare-fun res!393979 () Bool)

(assert (=> b!612242 (=> res!393979 e!350932)))

(declare-fun lt!280384 () (_ BitVec 64))

(declare-fun lt!280394 () (_ BitVec 64))

(assert (=> b!612242 (= res!393979 (or (not (= (select (arr!17925 a!2986) j!136) lt!280394)) (not (= (select (arr!17925 a!2986) j!136) lt!280384)) (bvsge j!136 index!984)))))

(declare-fun b!612243 () Bool)

(declare-fun e!350934 () Bool)

(declare-fun lt!280389 () SeekEntryResult!6372)

(declare-fun lt!280379 () SeekEntryResult!6372)

(assert (=> b!612243 (= e!350934 (= lt!280389 lt!280379))))

(declare-fun b!612244 () Bool)

(declare-fun e!350937 () Bool)

(assert (=> b!612244 (= e!350937 e!350935)))

(declare-fun res!393991 () Bool)

(assert (=> b!612244 (=> res!393991 e!350935)))

(assert (=> b!612244 (= res!393991 (or (not (= (select (arr!17925 a!2986) j!136) lt!280394)) (not (= (select (arr!17925 a!2986) j!136) lt!280384))))))

(assert (=> b!612244 e!350926))

(declare-fun res!393984 () Bool)

(assert (=> b!612244 (=> (not res!393984) (not e!350926))))

(assert (=> b!612244 (= res!393984 (= lt!280384 (select (arr!17925 a!2986) j!136)))))

(assert (=> b!612244 (= lt!280384 (select (store (arr!17925 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!612245 () Bool)

(declare-fun res!393990 () Bool)

(assert (=> b!612245 (=> (not res!393990) (not e!350930))))

(assert (=> b!612245 (= res!393990 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!612246 () Bool)

(declare-fun res!393994 () Bool)

(assert (=> b!612246 (=> (not res!393994) (not e!350927))))

(assert (=> b!612246 (= res!393994 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12016))))

(declare-fun b!612247 () Bool)

(declare-fun res!393983 () Bool)

(assert (=> b!612247 (=> (not res!393983) (not e!350927))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!612247 (= res!393983 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17925 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!612248 () Bool)

(assert (=> b!612248 (= e!350933 true)))

(assert (=> b!612248 (arrayNoDuplicates!0 lt!280387 #b00000000000000000000000000000000 Nil!12016)))

(declare-fun lt!280385 () Unit!19660)

(assert (=> b!612248 (= lt!280385 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12016))))

(assert (=> b!612248 (arrayContainsKey!0 lt!280387 (select (arr!17925 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280395 () Unit!19660)

(assert (=> b!612248 (= lt!280395 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280387 (select (arr!17925 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!350928 () Bool)

(assert (=> b!612248 e!350928))

(declare-fun res!393993 () Bool)

(assert (=> b!612248 (=> (not res!393993) (not e!350928))))

(assert (=> b!612248 (= res!393993 (arrayContainsKey!0 lt!280387 (select (arr!17925 a!2986) j!136) j!136))))

(declare-fun res!393985 () Bool)

(assert (=> start!55932 (=> (not res!393985) (not e!350930))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55932 (= res!393985 (validMask!0 mask!3053))))

(assert (=> start!55932 e!350930))

(assert (=> start!55932 true))

(declare-fun array_inv!13699 (array!37365) Bool)

(assert (=> start!55932 (array_inv!13699 a!2986)))

(declare-fun b!612249 () Bool)

(declare-fun e!350938 () Unit!19660)

(declare-fun Unit!19663 () Unit!19660)

(assert (=> b!612249 (= e!350938 Unit!19663)))

(declare-fun b!612250 () Bool)

(declare-fun e!350936 () Bool)

(assert (=> b!612250 (= e!350936 (not e!350937))))

(declare-fun res!393982 () Bool)

(assert (=> b!612250 (=> res!393982 e!350937)))

(declare-fun lt!280383 () SeekEntryResult!6372)

(assert (=> b!612250 (= res!393982 (not (= lt!280383 (Found!6372 index!984))))))

(declare-fun lt!280382 () Unit!19660)

(assert (=> b!612250 (= lt!280382 e!350938)))

(declare-fun c!69496 () Bool)

(assert (=> b!612250 (= c!69496 (= lt!280383 Undefined!6372))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37365 (_ BitVec 32)) SeekEntryResult!6372)

(assert (=> b!612250 (= lt!280383 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280394 lt!280387 mask!3053))))

(assert (=> b!612250 e!350934))

(declare-fun res!393995 () Bool)

(assert (=> b!612250 (=> (not res!393995) (not e!350934))))

(declare-fun lt!280386 () (_ BitVec 32))

(assert (=> b!612250 (= res!393995 (= lt!280379 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280386 vacantSpotIndex!68 lt!280394 lt!280387 mask!3053)))))

(assert (=> b!612250 (= lt!280379 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280386 vacantSpotIndex!68 (select (arr!17925 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!612250 (= lt!280394 (select (store (arr!17925 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!280392 () Unit!19660)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37365 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19660)

(assert (=> b!612250 (= lt!280392 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280386 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!612250 (= lt!280386 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!612251 () Bool)

(declare-fun res!393992 () Bool)

(assert (=> b!612251 (=> (not res!393992) (not e!350930))))

(assert (=> b!612251 (= res!393992 (validKeyInArray!0 k!1786))))

(declare-fun b!612252 () Bool)

(assert (=> b!612252 (= e!350925 e!350936)))

(declare-fun res!393986 () Bool)

(assert (=> b!612252 (=> (not res!393986) (not e!350936))))

(assert (=> b!612252 (= res!393986 (and (= lt!280389 (Found!6372 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17925 a!2986) index!984) (select (arr!17925 a!2986) j!136))) (not (= (select (arr!17925 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!612252 (= lt!280389 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17925 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!612253 () Bool)

(declare-fun res!393988 () Bool)

(assert (=> b!612253 (=> (not res!393988) (not e!350927))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37365 (_ BitVec 32)) Bool)

(assert (=> b!612253 (= res!393988 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!612254 () Bool)

(assert (=> b!612254 (= e!350928 (arrayContainsKey!0 lt!280387 (select (arr!17925 a!2986) j!136) index!984))))

(declare-fun b!612255 () Bool)

(declare-fun Unit!19664 () Unit!19660)

(assert (=> b!612255 (= e!350931 Unit!19664)))

(declare-fun b!612256 () Bool)

(assert (=> b!612256 (= e!350929 (arrayContainsKey!0 lt!280387 (select (arr!17925 a!2986) j!136) index!984))))

(declare-fun b!612257 () Bool)

(declare-fun Unit!19665 () Unit!19660)

(assert (=> b!612257 (= e!350938 Unit!19665)))

(assert (=> b!612257 false))

(assert (= (and start!55932 res!393985) b!612240))

(assert (= (and b!612240 res!393980) b!612235))

(assert (= (and b!612235 res!393989) b!612251))

(assert (= (and b!612251 res!393992) b!612245))

(assert (= (and b!612245 res!393990) b!612236))

(assert (= (and b!612236 res!393978) b!612253))

(assert (= (and b!612253 res!393988) b!612246))

(assert (= (and b!612246 res!393994) b!612247))

(assert (= (and b!612247 res!393983) b!612237))

(assert (= (and b!612237 res!393977) b!612252))

(assert (= (and b!612252 res!393986) b!612250))

(assert (= (and b!612250 res!393995) b!612243))

(assert (= (and b!612250 c!69496) b!612257))

(assert (= (and b!612250 (not c!69496)) b!612249))

(assert (= (and b!612250 (not res!393982)) b!612244))

(assert (= (and b!612244 res!393984) b!612242))

(assert (= (and b!612242 (not res!393979)) b!612241))

(assert (= (and b!612241 res!393987) b!612256))

(assert (= (and b!612244 (not res!393991)) b!612238))

(assert (= (and b!612238 c!69497) b!612239))

(assert (= (and b!612238 (not c!69497)) b!612255))

(assert (= (and b!612238 (not res!393981)) b!612248))

(assert (= (and b!612248 res!393993) b!612254))

(declare-fun m!588633 () Bool)

(assert (=> b!612239 m!588633))

(declare-fun m!588635 () Bool)

(assert (=> b!612239 m!588635))

(assert (=> b!612239 m!588633))

(declare-fun m!588637 () Bool)

(assert (=> b!612239 m!588637))

(declare-fun m!588639 () Bool)

(assert (=> b!612239 m!588639))

(assert (=> b!612239 m!588633))

(declare-fun m!588641 () Bool)

(assert (=> b!612239 m!588641))

(declare-fun m!588643 () Bool)

(assert (=> b!612239 m!588643))

(assert (=> b!612239 m!588633))

(declare-fun m!588645 () Bool)

(assert (=> b!612239 m!588645))

(declare-fun m!588647 () Bool)

(assert (=> b!612239 m!588647))

(declare-fun m!588649 () Bool)

(assert (=> b!612236 m!588649))

(declare-fun m!588651 () Bool)

(assert (=> b!612250 m!588651))

(declare-fun m!588653 () Bool)

(assert (=> b!612250 m!588653))

(assert (=> b!612250 m!588633))

(declare-fun m!588655 () Bool)

(assert (=> b!612250 m!588655))

(declare-fun m!588657 () Bool)

(assert (=> b!612250 m!588657))

(declare-fun m!588659 () Bool)

(assert (=> b!612250 m!588659))

(declare-fun m!588661 () Bool)

(assert (=> b!612250 m!588661))

(assert (=> b!612250 m!588633))

(declare-fun m!588663 () Bool)

(assert (=> b!612250 m!588663))

(declare-fun m!588665 () Bool)

(assert (=> b!612251 m!588665))

(declare-fun m!588667 () Bool)

(assert (=> b!612247 m!588667))

(assert (=> b!612241 m!588633))

(assert (=> b!612241 m!588633))

(declare-fun m!588669 () Bool)

(assert (=> b!612241 m!588669))

(declare-fun m!588671 () Bool)

(assert (=> b!612246 m!588671))

(assert (=> b!612248 m!588633))

(assert (=> b!612248 m!588633))

(declare-fun m!588673 () Bool)

(assert (=> b!612248 m!588673))

(assert (=> b!612248 m!588633))

(declare-fun m!588675 () Bool)

(assert (=> b!612248 m!588675))

(assert (=> b!612248 m!588643))

(assert (=> b!612248 m!588633))

(assert (=> b!612248 m!588669))

(assert (=> b!612248 m!588647))

(assert (=> b!612244 m!588633))

(assert (=> b!612244 m!588655))

(declare-fun m!588677 () Bool)

(assert (=> b!612244 m!588677))

(assert (=> b!612254 m!588633))

(assert (=> b!612254 m!588633))

(declare-fun m!588679 () Bool)

(assert (=> b!612254 m!588679))

(declare-fun m!588681 () Bool)

(assert (=> start!55932 m!588681))

(declare-fun m!588683 () Bool)

(assert (=> start!55932 m!588683))

(assert (=> b!612256 m!588633))

(assert (=> b!612256 m!588633))

(assert (=> b!612256 m!588679))

(declare-fun m!588685 () Bool)

(assert (=> b!612252 m!588685))

(assert (=> b!612252 m!588633))

(assert (=> b!612252 m!588633))

(declare-fun m!588687 () Bool)

(assert (=> b!612252 m!588687))

(assert (=> b!612237 m!588655))

(declare-fun m!588689 () Bool)

(assert (=> b!612237 m!588689))

(declare-fun m!588691 () Bool)

(assert (=> b!612245 m!588691))

(assert (=> b!612242 m!588633))

(assert (=> b!612235 m!588633))

(assert (=> b!612235 m!588633))

(declare-fun m!588693 () Bool)

(assert (=> b!612235 m!588693))

(declare-fun m!588695 () Bool)

(assert (=> b!612253 m!588695))

(push 1)

