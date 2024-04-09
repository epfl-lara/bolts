; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58882 () Bool)

(assert start!58882)

(declare-fun b!648834 () Bool)

(declare-fun res!420582 () Bool)

(declare-fun e!372158 () Bool)

(assert (=> b!648834 (=> res!420582 e!372158)))

(declare-datatypes ((List!12546 0))(
  ( (Nil!12543) (Cons!12542 (h!13587 (_ BitVec 64)) (t!18782 List!12546)) )
))
(declare-fun contains!3169 (List!12546 (_ BitVec 64)) Bool)

(assert (=> b!648834 (= res!420582 (contains!3169 Nil!12543 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648835 () Bool)

(declare-fun res!420580 () Bool)

(declare-fun e!372166 () Bool)

(assert (=> b!648835 (=> (not res!420580) (not e!372166))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648835 (= res!420580 (validKeyInArray!0 k!1786))))

(declare-fun b!648836 () Bool)

(assert (=> b!648836 (= e!372158 true)))

(declare-fun lt!301274 () Bool)

(assert (=> b!648836 (= lt!301274 (contains!3169 Nil!12543 k!1786))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!648837 () Bool)

(declare-datatypes ((array!38500 0))(
  ( (array!38501 (arr!18452 (Array (_ BitVec 32) (_ BitVec 64))) (size!18816 (_ BitVec 32))) )
))
(declare-fun lt!301269 () array!38500)

(declare-fun e!372155 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!38500)

(declare-fun arrayContainsKey!0 (array!38500 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648837 (= e!372155 (arrayContainsKey!0 lt!301269 (select (arr!18452 a!2986) j!136) index!984))))

(declare-fun b!648838 () Bool)

(declare-fun e!372152 () Bool)

(assert (=> b!648838 (= e!372152 e!372158)))

(declare-fun res!420568 () Bool)

(assert (=> b!648838 (=> res!420568 e!372158)))

(assert (=> b!648838 (= res!420568 (or (bvsge (size!18816 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18816 a!2986))))))

(assert (=> b!648838 (arrayContainsKey!0 lt!301269 (select (arr!18452 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-datatypes ((Unit!22066 0))(
  ( (Unit!22067) )
))
(declare-fun lt!301278 () Unit!22066)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38500 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22066)

(assert (=> b!648838 (= lt!301278 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301269 (select (arr!18452 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!648838 e!372155))

(declare-fun res!420569 () Bool)

(assert (=> b!648838 (=> (not res!420569) (not e!372155))))

(assert (=> b!648838 (= res!420569 (arrayContainsKey!0 lt!301269 (select (arr!18452 a!2986) j!136) j!136))))

(declare-fun b!648839 () Bool)

(declare-fun e!372160 () Bool)

(declare-fun e!372159 () Bool)

(assert (=> b!648839 (= e!372160 e!372159)))

(declare-fun res!420581 () Bool)

(assert (=> b!648839 (=> (not res!420581) (not e!372159))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6899 0))(
  ( (MissingZero!6899 (index!29942 (_ BitVec 32))) (Found!6899 (index!29943 (_ BitVec 32))) (Intermediate!6899 (undefined!7711 Bool) (index!29944 (_ BitVec 32)) (x!58753 (_ BitVec 32))) (Undefined!6899) (MissingVacant!6899 (index!29945 (_ BitVec 32))) )
))
(declare-fun lt!301279 () SeekEntryResult!6899)

(assert (=> b!648839 (= res!420581 (and (= lt!301279 (Found!6899 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18452 a!2986) index!984) (select (arr!18452 a!2986) j!136))) (not (= (select (arr!18452 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38500 (_ BitVec 32)) SeekEntryResult!6899)

(assert (=> b!648839 (= lt!301279 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18452 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!648840 () Bool)

(declare-fun e!372163 () Bool)

(declare-fun e!372161 () Bool)

(assert (=> b!648840 (= e!372163 e!372161)))

(declare-fun res!420574 () Bool)

(assert (=> b!648840 (=> res!420574 e!372161)))

(declare-fun lt!301272 () (_ BitVec 64))

(declare-fun lt!301277 () (_ BitVec 64))

(assert (=> b!648840 (= res!420574 (or (not (= (select (arr!18452 a!2986) j!136) lt!301277)) (not (= (select (arr!18452 a!2986) j!136) lt!301272)) (bvsge j!136 index!984)))))

(declare-fun b!648841 () Bool)

(declare-fun e!372162 () Bool)

(declare-fun lt!301265 () SeekEntryResult!6899)

(assert (=> b!648841 (= e!372162 (= lt!301279 lt!301265))))

(declare-fun b!648842 () Bool)

(declare-fun res!420564 () Bool)

(declare-fun e!372164 () Bool)

(assert (=> b!648842 (=> (not res!420564) (not e!372164))))

(declare-fun arrayNoDuplicates!0 (array!38500 (_ BitVec 32) List!12546) Bool)

(assert (=> b!648842 (= res!420564 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12543))))

(declare-fun b!648843 () Bool)

(assert (=> b!648843 (= e!372166 e!372164)))

(declare-fun res!420577 () Bool)

(assert (=> b!648843 (=> (not res!420577) (not e!372164))))

(declare-fun lt!301275 () SeekEntryResult!6899)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!648843 (= res!420577 (or (= lt!301275 (MissingZero!6899 i!1108)) (= lt!301275 (MissingVacant!6899 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38500 (_ BitVec 32)) SeekEntryResult!6899)

(assert (=> b!648843 (= lt!301275 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!648844 () Bool)

(declare-fun e!372165 () Bool)

(assert (=> b!648844 (= e!372159 (not e!372165))))

(declare-fun res!420583 () Bool)

(assert (=> b!648844 (=> res!420583 e!372165)))

(declare-fun lt!301281 () SeekEntryResult!6899)

(assert (=> b!648844 (= res!420583 (not (= lt!301281 (Found!6899 index!984))))))

(declare-fun lt!301271 () Unit!22066)

(declare-fun e!372151 () Unit!22066)

(assert (=> b!648844 (= lt!301271 e!372151)))

(declare-fun c!74503 () Bool)

(assert (=> b!648844 (= c!74503 (= lt!301281 Undefined!6899))))

(assert (=> b!648844 (= lt!301281 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301277 lt!301269 mask!3053))))

(assert (=> b!648844 e!372162))

(declare-fun res!420575 () Bool)

(assert (=> b!648844 (=> (not res!420575) (not e!372162))))

(declare-fun lt!301270 () (_ BitVec 32))

(assert (=> b!648844 (= res!420575 (= lt!301265 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301270 vacantSpotIndex!68 lt!301277 lt!301269 mask!3053)))))

(assert (=> b!648844 (= lt!301265 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301270 vacantSpotIndex!68 (select (arr!18452 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648844 (= lt!301277 (select (store (arr!18452 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301267 () Unit!22066)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38500 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22066)

(assert (=> b!648844 (= lt!301267 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301270 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648844 (= lt!301270 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!648845 () Bool)

(declare-fun res!420573 () Bool)

(assert (=> b!648845 (=> (not res!420573) (not e!372166))))

(assert (=> b!648845 (= res!420573 (and (= (size!18816 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18816 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18816 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!648846 () Bool)

(declare-fun Unit!22068 () Unit!22066)

(assert (=> b!648846 (= e!372151 Unit!22068)))

(assert (=> b!648846 false))

(declare-fun b!648847 () Bool)

(declare-fun e!372156 () Bool)

(assert (=> b!648847 (= e!372156 e!372152)))

(declare-fun res!420565 () Bool)

(assert (=> b!648847 (=> res!420565 e!372152)))

(assert (=> b!648847 (= res!420565 (bvsge index!984 j!136))))

(declare-fun lt!301268 () Unit!22066)

(declare-fun e!372157 () Unit!22066)

(assert (=> b!648847 (= lt!301268 e!372157)))

(declare-fun c!74504 () Bool)

(assert (=> b!648847 (= c!74504 (bvslt j!136 index!984))))

(declare-fun e!372154 () Bool)

(declare-fun b!648848 () Bool)

(assert (=> b!648848 (= e!372154 (arrayContainsKey!0 lt!301269 (select (arr!18452 a!2986) j!136) index!984))))

(declare-fun b!648850 () Bool)

(declare-fun Unit!22069 () Unit!22066)

(assert (=> b!648850 (= e!372151 Unit!22069)))

(declare-fun b!648851 () Bool)

(declare-fun res!420576 () Bool)

(assert (=> b!648851 (=> (not res!420576) (not e!372164))))

(assert (=> b!648851 (= res!420576 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18452 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648852 () Bool)

(declare-fun res!420572 () Bool)

(assert (=> b!648852 (=> (not res!420572) (not e!372166))))

(assert (=> b!648852 (= res!420572 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!648853 () Bool)

(declare-fun res!420584 () Bool)

(assert (=> b!648853 (=> res!420584 e!372158)))

(declare-fun noDuplicate!429 (List!12546) Bool)

(assert (=> b!648853 (= res!420584 (not (noDuplicate!429 Nil!12543)))))

(declare-fun b!648854 () Bool)

(declare-fun Unit!22070 () Unit!22066)

(assert (=> b!648854 (= e!372157 Unit!22070)))

(declare-fun b!648855 () Bool)

(declare-fun Unit!22071 () Unit!22066)

(assert (=> b!648855 (= e!372157 Unit!22071)))

(declare-fun lt!301266 () Unit!22066)

(assert (=> b!648855 (= lt!301266 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301269 (select (arr!18452 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!648855 (arrayContainsKey!0 lt!301269 (select (arr!18452 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301276 () Unit!22066)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38500 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12546) Unit!22066)

(assert (=> b!648855 (= lt!301276 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12543))))

(assert (=> b!648855 (arrayNoDuplicates!0 lt!301269 #b00000000000000000000000000000000 Nil!12543)))

(declare-fun lt!301280 () Unit!22066)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38500 (_ BitVec 32) (_ BitVec 32)) Unit!22066)

(assert (=> b!648855 (= lt!301280 (lemmaNoDuplicateFromThenFromBigger!0 lt!301269 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648855 (arrayNoDuplicates!0 lt!301269 j!136 Nil!12543)))

(declare-fun lt!301273 () Unit!22066)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38500 (_ BitVec 64) (_ BitVec 32) List!12546) Unit!22066)

(assert (=> b!648855 (= lt!301273 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301269 (select (arr!18452 a!2986) j!136) j!136 Nil!12543))))

(assert (=> b!648855 false))

(declare-fun b!648856 () Bool)

(declare-fun res!420567 () Bool)

(assert (=> b!648856 (=> (not res!420567) (not e!372166))))

(assert (=> b!648856 (= res!420567 (validKeyInArray!0 (select (arr!18452 a!2986) j!136)))))

(declare-fun b!648857 () Bool)

(assert (=> b!648857 (= e!372164 e!372160)))

(declare-fun res!420571 () Bool)

(assert (=> b!648857 (=> (not res!420571) (not e!372160))))

(assert (=> b!648857 (= res!420571 (= (select (store (arr!18452 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!648857 (= lt!301269 (array!38501 (store (arr!18452 a!2986) i!1108 k!1786) (size!18816 a!2986)))))

(declare-fun b!648858 () Bool)

(declare-fun res!420562 () Bool)

(assert (=> b!648858 (=> res!420562 e!372158)))

(assert (=> b!648858 (= res!420562 (contains!3169 Nil!12543 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648859 () Bool)

(assert (=> b!648859 (= e!372165 e!372156)))

(declare-fun res!420566 () Bool)

(assert (=> b!648859 (=> res!420566 e!372156)))

(assert (=> b!648859 (= res!420566 (or (not (= (select (arr!18452 a!2986) j!136) lt!301277)) (not (= (select (arr!18452 a!2986) j!136) lt!301272))))))

(assert (=> b!648859 e!372163))

(declare-fun res!420579 () Bool)

(assert (=> b!648859 (=> (not res!420579) (not e!372163))))

(assert (=> b!648859 (= res!420579 (= lt!301272 (select (arr!18452 a!2986) j!136)))))

(assert (=> b!648859 (= lt!301272 (select (store (arr!18452 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!648860 () Bool)

(assert (=> b!648860 (= e!372161 e!372154)))

(declare-fun res!420578 () Bool)

(assert (=> b!648860 (=> (not res!420578) (not e!372154))))

(assert (=> b!648860 (= res!420578 (arrayContainsKey!0 lt!301269 (select (arr!18452 a!2986) j!136) j!136))))

(declare-fun res!420570 () Bool)

(assert (=> start!58882 (=> (not res!420570) (not e!372166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58882 (= res!420570 (validMask!0 mask!3053))))

(assert (=> start!58882 e!372166))

(assert (=> start!58882 true))

(declare-fun array_inv!14226 (array!38500) Bool)

(assert (=> start!58882 (array_inv!14226 a!2986)))

(declare-fun b!648849 () Bool)

(declare-fun res!420563 () Bool)

(assert (=> b!648849 (=> (not res!420563) (not e!372164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38500 (_ BitVec 32)) Bool)

(assert (=> b!648849 (= res!420563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!58882 res!420570) b!648845))

(assert (= (and b!648845 res!420573) b!648856))

(assert (= (and b!648856 res!420567) b!648835))

(assert (= (and b!648835 res!420580) b!648852))

(assert (= (and b!648852 res!420572) b!648843))

(assert (= (and b!648843 res!420577) b!648849))

(assert (= (and b!648849 res!420563) b!648842))

(assert (= (and b!648842 res!420564) b!648851))

(assert (= (and b!648851 res!420576) b!648857))

(assert (= (and b!648857 res!420571) b!648839))

(assert (= (and b!648839 res!420581) b!648844))

(assert (= (and b!648844 res!420575) b!648841))

(assert (= (and b!648844 c!74503) b!648846))

(assert (= (and b!648844 (not c!74503)) b!648850))

(assert (= (and b!648844 (not res!420583)) b!648859))

(assert (= (and b!648859 res!420579) b!648840))

(assert (= (and b!648840 (not res!420574)) b!648860))

(assert (= (and b!648860 res!420578) b!648848))

(assert (= (and b!648859 (not res!420566)) b!648847))

(assert (= (and b!648847 c!74504) b!648855))

(assert (= (and b!648847 (not c!74504)) b!648854))

(assert (= (and b!648847 (not res!420565)) b!648838))

(assert (= (and b!648838 res!420569) b!648837))

(assert (= (and b!648838 (not res!420568)) b!648853))

(assert (= (and b!648853 (not res!420584)) b!648858))

(assert (= (and b!648858 (not res!420562)) b!648834))

(assert (= (and b!648834 (not res!420582)) b!648836))

(declare-fun m!622203 () Bool)

(assert (=> b!648857 m!622203))

(declare-fun m!622205 () Bool)

(assert (=> b!648857 m!622205))

(declare-fun m!622207 () Bool)

(assert (=> b!648848 m!622207))

(assert (=> b!648848 m!622207))

(declare-fun m!622209 () Bool)

(assert (=> b!648848 m!622209))

(declare-fun m!622211 () Bool)

(assert (=> b!648851 m!622211))

(declare-fun m!622213 () Bool)

(assert (=> b!648839 m!622213))

(assert (=> b!648839 m!622207))

(assert (=> b!648839 m!622207))

(declare-fun m!622215 () Bool)

(assert (=> b!648839 m!622215))

(assert (=> b!648837 m!622207))

(assert (=> b!648837 m!622207))

(assert (=> b!648837 m!622209))

(assert (=> b!648855 m!622207))

(declare-fun m!622217 () Bool)

(assert (=> b!648855 m!622217))

(declare-fun m!622219 () Bool)

(assert (=> b!648855 m!622219))

(declare-fun m!622221 () Bool)

(assert (=> b!648855 m!622221))

(assert (=> b!648855 m!622207))

(declare-fun m!622223 () Bool)

(assert (=> b!648855 m!622223))

(assert (=> b!648855 m!622207))

(declare-fun m!622225 () Bool)

(assert (=> b!648855 m!622225))

(declare-fun m!622227 () Bool)

(assert (=> b!648855 m!622227))

(assert (=> b!648855 m!622207))

(declare-fun m!622229 () Bool)

(assert (=> b!648855 m!622229))

(declare-fun m!622231 () Bool)

(assert (=> b!648852 m!622231))

(declare-fun m!622233 () Bool)

(assert (=> b!648835 m!622233))

(declare-fun m!622235 () Bool)

(assert (=> b!648858 m!622235))

(declare-fun m!622237 () Bool)

(assert (=> b!648836 m!622237))

(assert (=> b!648859 m!622207))

(assert (=> b!648859 m!622203))

(declare-fun m!622239 () Bool)

(assert (=> b!648859 m!622239))

(assert (=> b!648838 m!622207))

(assert (=> b!648838 m!622207))

(declare-fun m!622241 () Bool)

(assert (=> b!648838 m!622241))

(assert (=> b!648838 m!622207))

(declare-fun m!622243 () Bool)

(assert (=> b!648838 m!622243))

(assert (=> b!648838 m!622207))

(declare-fun m!622245 () Bool)

(assert (=> b!648838 m!622245))

(declare-fun m!622247 () Bool)

(assert (=> b!648853 m!622247))

(assert (=> b!648860 m!622207))

(assert (=> b!648860 m!622207))

(assert (=> b!648860 m!622245))

(declare-fun m!622249 () Bool)

(assert (=> b!648843 m!622249))

(declare-fun m!622251 () Bool)

(assert (=> b!648844 m!622251))

(declare-fun m!622253 () Bool)

(assert (=> b!648844 m!622253))

(declare-fun m!622255 () Bool)

(assert (=> b!648844 m!622255))

(declare-fun m!622257 () Bool)

(assert (=> b!648844 m!622257))

(assert (=> b!648844 m!622207))

(assert (=> b!648844 m!622207))

(declare-fun m!622259 () Bool)

(assert (=> b!648844 m!622259))

(declare-fun m!622261 () Bool)

(assert (=> b!648844 m!622261))

(assert (=> b!648844 m!622203))

(declare-fun m!622263 () Bool)

(assert (=> b!648849 m!622263))

(declare-fun m!622265 () Bool)

(assert (=> b!648842 m!622265))

(declare-fun m!622267 () Bool)

(assert (=> b!648834 m!622267))

(assert (=> b!648840 m!622207))

(assert (=> b!648856 m!622207))

(assert (=> b!648856 m!622207))

(declare-fun m!622269 () Bool)

(assert (=> b!648856 m!622269))

(declare-fun m!622271 () Bool)

(assert (=> start!58882 m!622271))

(declare-fun m!622273 () Bool)

(assert (=> start!58882 m!622273))

(push 1)

