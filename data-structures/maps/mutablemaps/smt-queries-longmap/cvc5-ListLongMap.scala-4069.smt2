; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55920 () Bool)

(assert start!55920)

(declare-fun b!611821 () Bool)

(declare-datatypes ((Unit!19624 0))(
  ( (Unit!19625) )
))
(declare-fun e!350667 () Unit!19624)

(declare-fun Unit!19626 () Unit!19624)

(assert (=> b!611821 (= e!350667 Unit!19626)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37353 0))(
  ( (array!37354 (arr!17919 (Array (_ BitVec 32) (_ BitVec 64))) (size!18283 (_ BitVec 32))) )
))
(declare-fun lt!280086 () array!37353)

(declare-fun lt!280078 () Unit!19624)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37353)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37353 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19624)

(assert (=> b!611821 (= lt!280078 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280086 (select (arr!17919 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!37353 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!611821 (arrayContainsKey!0 lt!280086 (select (arr!17919 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!280080 () Unit!19624)

(declare-datatypes ((List!12013 0))(
  ( (Nil!12010) (Cons!12009 (h!13054 (_ BitVec 64)) (t!18249 List!12013)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37353 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12013) Unit!19624)

(assert (=> b!611821 (= lt!280080 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12010))))

(declare-fun arrayNoDuplicates!0 (array!37353 (_ BitVec 32) List!12013) Bool)

(assert (=> b!611821 (arrayNoDuplicates!0 lt!280086 #b00000000000000000000000000000000 Nil!12010)))

(declare-fun lt!280079 () Unit!19624)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37353 (_ BitVec 32) (_ BitVec 32)) Unit!19624)

(assert (=> b!611821 (= lt!280079 (lemmaNoDuplicateFromThenFromBigger!0 lt!280086 #b00000000000000000000000000000000 j!136))))

(assert (=> b!611821 (arrayNoDuplicates!0 lt!280086 j!136 Nil!12010)))

(declare-fun lt!280077 () Unit!19624)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37353 (_ BitVec 64) (_ BitVec 32) List!12013) Unit!19624)

(assert (=> b!611821 (= lt!280077 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!280086 (select (arr!17919 a!2986) j!136) j!136 Nil!12010))))

(assert (=> b!611821 false))

(declare-fun b!611822 () Bool)

(declare-fun res!393640 () Bool)

(declare-fun e!350668 () Bool)

(assert (=> b!611822 (=> (not res!393640) (not e!350668))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37353 (_ BitVec 32)) Bool)

(assert (=> b!611822 (= res!393640 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!611823 () Bool)

(declare-fun e!350665 () Unit!19624)

(declare-fun Unit!19627 () Unit!19624)

(assert (=> b!611823 (= e!350665 Unit!19627)))

(declare-fun e!350658 () Bool)

(declare-fun b!611824 () Bool)

(assert (=> b!611824 (= e!350658 (arrayContainsKey!0 lt!280086 (select (arr!17919 a!2986) j!136) index!984))))

(declare-fun b!611825 () Bool)

(declare-fun res!393644 () Bool)

(declare-fun e!350663 () Bool)

(assert (=> b!611825 (=> (not res!393644) (not e!350663))))

(assert (=> b!611825 (= res!393644 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!611826 () Bool)

(declare-fun Unit!19628 () Unit!19624)

(assert (=> b!611826 (= e!350665 Unit!19628)))

(assert (=> b!611826 false))

(declare-fun b!611827 () Bool)

(declare-fun res!393643 () Bool)

(assert (=> b!611827 (=> (not res!393643) (not e!350663))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!611827 (= res!393643 (validKeyInArray!0 k!1786))))

(declare-fun b!611828 () Bool)

(declare-fun e!350659 () Bool)

(declare-fun e!350657 () Bool)

(assert (=> b!611828 (= e!350659 e!350657)))

(declare-fun res!393651 () Bool)

(assert (=> b!611828 (=> res!393651 e!350657)))

(assert (=> b!611828 (= res!393651 (bvsge index!984 j!136))))

(declare-fun lt!280084 () Unit!19624)

(assert (=> b!611828 (= lt!280084 e!350667)))

(declare-fun c!69461 () Bool)

(assert (=> b!611828 (= c!69461 (bvslt j!136 index!984))))

(declare-fun e!350662 () Bool)

(declare-fun b!611829 () Bool)

(assert (=> b!611829 (= e!350662 (arrayContainsKey!0 lt!280086 (select (arr!17919 a!2986) j!136) index!984))))

(declare-fun b!611830 () Bool)

(declare-fun e!350655 () Bool)

(declare-fun e!350661 () Bool)

(assert (=> b!611830 (= e!350655 (not e!350661))))

(declare-fun res!393648 () Bool)

(assert (=> b!611830 (=> res!393648 e!350661)))

(declare-datatypes ((SeekEntryResult!6366 0))(
  ( (MissingZero!6366 (index!27747 (_ BitVec 32))) (Found!6366 (index!27748 (_ BitVec 32))) (Intermediate!6366 (undefined!7178 Bool) (index!27749 (_ BitVec 32)) (x!56591 (_ BitVec 32))) (Undefined!6366) (MissingVacant!6366 (index!27750 (_ BitVec 32))) )
))
(declare-fun lt!280088 () SeekEntryResult!6366)

(assert (=> b!611830 (= res!393648 (not (= lt!280088 (Found!6366 index!984))))))

(declare-fun lt!280081 () Unit!19624)

(assert (=> b!611830 (= lt!280081 e!350665)))

(declare-fun c!69460 () Bool)

(assert (=> b!611830 (= c!69460 (= lt!280088 Undefined!6366))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!280087 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37353 (_ BitVec 32)) SeekEntryResult!6366)

(assert (=> b!611830 (= lt!280088 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!280087 lt!280086 mask!3053))))

(declare-fun e!350666 () Bool)

(assert (=> b!611830 e!350666))

(declare-fun res!393653 () Bool)

(assert (=> b!611830 (=> (not res!393653) (not e!350666))))

(declare-fun lt!280083 () SeekEntryResult!6366)

(declare-fun lt!280074 () (_ BitVec 32))

(assert (=> b!611830 (= res!393653 (= lt!280083 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280074 vacantSpotIndex!68 lt!280087 lt!280086 mask!3053)))))

(assert (=> b!611830 (= lt!280083 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!280074 vacantSpotIndex!68 (select (arr!17919 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!611830 (= lt!280087 (select (store (arr!17919 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!280073 () Unit!19624)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37353 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19624)

(assert (=> b!611830 (= lt!280073 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!280074 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!611830 (= lt!280074 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!611831 () Bool)

(declare-fun res!393641 () Bool)

(assert (=> b!611831 (=> (not res!393641) (not e!350663))))

(assert (=> b!611831 (= res!393641 (and (= (size!18283 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18283 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18283 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!611832 () Bool)

(declare-fun lt!280076 () SeekEntryResult!6366)

(assert (=> b!611832 (= e!350666 (= lt!280076 lt!280083))))

(declare-fun b!611833 () Bool)

(declare-fun res!393635 () Bool)

(assert (=> b!611833 (=> (not res!393635) (not e!350668))))

(assert (=> b!611833 (= res!393635 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17919 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!611834 () Bool)

(declare-fun Unit!19629 () Unit!19624)

(assert (=> b!611834 (= e!350667 Unit!19629)))

(declare-fun b!611835 () Bool)

(declare-fun res!393639 () Bool)

(assert (=> b!611835 (=> (not res!393639) (not e!350663))))

(assert (=> b!611835 (= res!393639 (validKeyInArray!0 (select (arr!17919 a!2986) j!136)))))

(declare-fun b!611836 () Bool)

(declare-fun e!350654 () Bool)

(assert (=> b!611836 (= e!350654 e!350658)))

(declare-fun res!393652 () Bool)

(assert (=> b!611836 (=> (not res!393652) (not e!350658))))

(assert (=> b!611836 (= res!393652 (arrayContainsKey!0 lt!280086 (select (arr!17919 a!2986) j!136) j!136))))

(declare-fun b!611837 () Bool)

(declare-fun e!350664 () Bool)

(assert (=> b!611837 (= e!350664 e!350655)))

(declare-fun res!393646 () Bool)

(assert (=> b!611837 (=> (not res!393646) (not e!350655))))

(assert (=> b!611837 (= res!393646 (and (= lt!280076 (Found!6366 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17919 a!2986) index!984) (select (arr!17919 a!2986) j!136))) (not (= (select (arr!17919 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!611837 (= lt!280076 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17919 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611838 () Bool)

(assert (=> b!611838 (= e!350663 e!350668)))

(declare-fun res!393649 () Bool)

(assert (=> b!611838 (=> (not res!393649) (not e!350668))))

(declare-fun lt!280075 () SeekEntryResult!6366)

(assert (=> b!611838 (= res!393649 (or (= lt!280075 (MissingZero!6366 i!1108)) (= lt!280075 (MissingVacant!6366 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37353 (_ BitVec 32)) SeekEntryResult!6366)

(assert (=> b!611838 (= lt!280075 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!611839 () Bool)

(assert (=> b!611839 (= e!350657 true)))

(assert (=> b!611839 (arrayNoDuplicates!0 lt!280086 #b00000000000000000000000000000000 Nil!12010)))

(declare-fun lt!280085 () Unit!19624)

(assert (=> b!611839 (= lt!280085 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12010))))

(assert (=> b!611839 (arrayContainsKey!0 lt!280086 (select (arr!17919 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!280089 () Unit!19624)

(assert (=> b!611839 (= lt!280089 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!280086 (select (arr!17919 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!611839 e!350662))

(declare-fun res!393647 () Bool)

(assert (=> b!611839 (=> (not res!393647) (not e!350662))))

(assert (=> b!611839 (= res!393647 (arrayContainsKey!0 lt!280086 (select (arr!17919 a!2986) j!136) j!136))))

(declare-fun b!611840 () Bool)

(declare-fun res!393642 () Bool)

(assert (=> b!611840 (=> (not res!393642) (not e!350668))))

(assert (=> b!611840 (= res!393642 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12010))))

(declare-fun b!611841 () Bool)

(assert (=> b!611841 (= e!350661 e!350659)))

(declare-fun res!393637 () Bool)

(assert (=> b!611841 (=> res!393637 e!350659)))

(declare-fun lt!280082 () (_ BitVec 64))

(assert (=> b!611841 (= res!393637 (or (not (= (select (arr!17919 a!2986) j!136) lt!280087)) (not (= (select (arr!17919 a!2986) j!136) lt!280082))))))

(declare-fun e!350660 () Bool)

(assert (=> b!611841 e!350660))

(declare-fun res!393645 () Bool)

(assert (=> b!611841 (=> (not res!393645) (not e!350660))))

(assert (=> b!611841 (= res!393645 (= lt!280082 (select (arr!17919 a!2986) j!136)))))

(assert (=> b!611841 (= lt!280082 (select (store (arr!17919 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!611842 () Bool)

(assert (=> b!611842 (= e!350660 e!350654)))

(declare-fun res!393650 () Bool)

(assert (=> b!611842 (=> res!393650 e!350654)))

(assert (=> b!611842 (= res!393650 (or (not (= (select (arr!17919 a!2986) j!136) lt!280087)) (not (= (select (arr!17919 a!2986) j!136) lt!280082)) (bvsge j!136 index!984)))))

(declare-fun b!611843 () Bool)

(assert (=> b!611843 (= e!350668 e!350664)))

(declare-fun res!393636 () Bool)

(assert (=> b!611843 (=> (not res!393636) (not e!350664))))

(assert (=> b!611843 (= res!393636 (= (select (store (arr!17919 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611843 (= lt!280086 (array!37354 (store (arr!17919 a!2986) i!1108 k!1786) (size!18283 a!2986)))))

(declare-fun res!393638 () Bool)

(assert (=> start!55920 (=> (not res!393638) (not e!350663))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55920 (= res!393638 (validMask!0 mask!3053))))

(assert (=> start!55920 e!350663))

(assert (=> start!55920 true))

(declare-fun array_inv!13693 (array!37353) Bool)

(assert (=> start!55920 (array_inv!13693 a!2986)))

(assert (= (and start!55920 res!393638) b!611831))

(assert (= (and b!611831 res!393641) b!611835))

(assert (= (and b!611835 res!393639) b!611827))

(assert (= (and b!611827 res!393643) b!611825))

(assert (= (and b!611825 res!393644) b!611838))

(assert (= (and b!611838 res!393649) b!611822))

(assert (= (and b!611822 res!393640) b!611840))

(assert (= (and b!611840 res!393642) b!611833))

(assert (= (and b!611833 res!393635) b!611843))

(assert (= (and b!611843 res!393636) b!611837))

(assert (= (and b!611837 res!393646) b!611830))

(assert (= (and b!611830 res!393653) b!611832))

(assert (= (and b!611830 c!69460) b!611826))

(assert (= (and b!611830 (not c!69460)) b!611823))

(assert (= (and b!611830 (not res!393648)) b!611841))

(assert (= (and b!611841 res!393645) b!611842))

(assert (= (and b!611842 (not res!393650)) b!611836))

(assert (= (and b!611836 res!393652) b!611824))

(assert (= (and b!611841 (not res!393637)) b!611828))

(assert (= (and b!611828 c!69461) b!611821))

(assert (= (and b!611828 (not c!69461)) b!611834))

(assert (= (and b!611828 (not res!393651)) b!611839))

(assert (= (and b!611839 res!393647) b!611829))

(declare-fun m!588249 () Bool)

(assert (=> b!611842 m!588249))

(declare-fun m!588251 () Bool)

(assert (=> b!611833 m!588251))

(declare-fun m!588253 () Bool)

(assert (=> b!611827 m!588253))

(declare-fun m!588255 () Bool)

(assert (=> b!611840 m!588255))

(assert (=> b!611824 m!588249))

(assert (=> b!611824 m!588249))

(declare-fun m!588257 () Bool)

(assert (=> b!611824 m!588257))

(declare-fun m!588259 () Bool)

(assert (=> start!55920 m!588259))

(declare-fun m!588261 () Bool)

(assert (=> start!55920 m!588261))

(declare-fun m!588263 () Bool)

(assert (=> b!611821 m!588263))

(assert (=> b!611821 m!588249))

(declare-fun m!588265 () Bool)

(assert (=> b!611821 m!588265))

(assert (=> b!611821 m!588249))

(assert (=> b!611821 m!588249))

(declare-fun m!588267 () Bool)

(assert (=> b!611821 m!588267))

(assert (=> b!611821 m!588249))

(declare-fun m!588269 () Bool)

(assert (=> b!611821 m!588269))

(declare-fun m!588271 () Bool)

(assert (=> b!611821 m!588271))

(declare-fun m!588273 () Bool)

(assert (=> b!611821 m!588273))

(declare-fun m!588275 () Bool)

(assert (=> b!611821 m!588275))

(declare-fun m!588277 () Bool)

(assert (=> b!611822 m!588277))

(declare-fun m!588279 () Bool)

(assert (=> b!611837 m!588279))

(assert (=> b!611837 m!588249))

(assert (=> b!611837 m!588249))

(declare-fun m!588281 () Bool)

(assert (=> b!611837 m!588281))

(assert (=> b!611829 m!588249))

(assert (=> b!611829 m!588249))

(assert (=> b!611829 m!588257))

(assert (=> b!611839 m!588249))

(assert (=> b!611839 m!588249))

(declare-fun m!588283 () Bool)

(assert (=> b!611839 m!588283))

(assert (=> b!611839 m!588271))

(assert (=> b!611839 m!588249))

(declare-fun m!588285 () Bool)

(assert (=> b!611839 m!588285))

(assert (=> b!611839 m!588249))

(declare-fun m!588287 () Bool)

(assert (=> b!611839 m!588287))

(assert (=> b!611839 m!588275))

(assert (=> b!611841 m!588249))

(declare-fun m!588289 () Bool)

(assert (=> b!611841 m!588289))

(declare-fun m!588291 () Bool)

(assert (=> b!611841 m!588291))

(assert (=> b!611835 m!588249))

(assert (=> b!611835 m!588249))

(declare-fun m!588293 () Bool)

(assert (=> b!611835 m!588293))

(declare-fun m!588295 () Bool)

(assert (=> b!611825 m!588295))

(declare-fun m!588297 () Bool)

(assert (=> b!611838 m!588297))

(assert (=> b!611836 m!588249))

(assert (=> b!611836 m!588249))

(assert (=> b!611836 m!588285))

(assert (=> b!611843 m!588289))

(declare-fun m!588299 () Bool)

(assert (=> b!611843 m!588299))

(declare-fun m!588301 () Bool)

(assert (=> b!611830 m!588301))

(declare-fun m!588303 () Bool)

(assert (=> b!611830 m!588303))

(assert (=> b!611830 m!588249))

(assert (=> b!611830 m!588289))

(declare-fun m!588305 () Bool)

(assert (=> b!611830 m!588305))

(declare-fun m!588307 () Bool)

(assert (=> b!611830 m!588307))

(declare-fun m!588309 () Bool)

(assert (=> b!611830 m!588309))

(assert (=> b!611830 m!588249))

(declare-fun m!588311 () Bool)

(assert (=> b!611830 m!588311))

(push 1)

