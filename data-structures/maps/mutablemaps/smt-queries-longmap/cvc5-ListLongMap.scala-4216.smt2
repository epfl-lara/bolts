; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57828 () Bool)

(assert start!57828)

(declare-fun b!639200 () Bool)

(declare-fun res!413925 () Bool)

(declare-fun e!365839 () Bool)

(assert (=> b!639200 (=> (not res!413925) (not e!365839))))

(declare-datatypes ((array!38286 0))(
  ( (array!38287 (arr!18360 (Array (_ BitVec 32) (_ BitVec 64))) (size!18724 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38286)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38286 (_ BitVec 32)) Bool)

(assert (=> b!639200 (= res!413925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!639201 () Bool)

(declare-fun res!413927 () Bool)

(declare-fun e!365829 () Bool)

(assert (=> b!639201 (=> (not res!413927) (not e!365829))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38286 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!639201 (= res!413927 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!639202 () Bool)

(declare-fun e!365834 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!639202 (= e!365834 (or (bvsge (size!18724 a!2986) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!18724 a!2986)) (bvsle j!136 (size!18724 a!2986))))))

(declare-fun lt!295739 () array!38286)

(declare-datatypes ((List!12454 0))(
  ( (Nil!12451) (Cons!12450 (h!13495 (_ BitVec 64)) (t!18690 List!12454)) )
))
(declare-fun arrayNoDuplicates!0 (array!38286 (_ BitVec 32) List!12454) Bool)

(assert (=> b!639202 (arrayNoDuplicates!0 lt!295739 #b00000000000000000000000000000000 Nil!12451)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((Unit!21586 0))(
  ( (Unit!21587) )
))
(declare-fun lt!295749 () Unit!21586)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38286 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12454) Unit!21586)

(assert (=> b!639202 (= lt!295749 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12451))))

(assert (=> b!639202 (arrayContainsKey!0 lt!295739 (select (arr!18360 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295746 () Unit!21586)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38286 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21586)

(assert (=> b!639202 (= lt!295746 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295739 (select (arr!18360 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!639203 () Bool)

(declare-fun e!365836 () Bool)

(declare-fun e!365832 () Bool)

(assert (=> b!639203 (= e!365836 e!365832)))

(declare-fun res!413922 () Bool)

(assert (=> b!639203 (=> (not res!413922) (not e!365832))))

(assert (=> b!639203 (= res!413922 (arrayContainsKey!0 lt!295739 (select (arr!18360 a!2986) j!136) j!136))))

(declare-fun b!639204 () Bool)

(declare-fun e!365828 () Bool)

(assert (=> b!639204 (= e!365839 e!365828)))

(declare-fun res!413936 () Bool)

(assert (=> b!639204 (=> (not res!413936) (not e!365828))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!639204 (= res!413936 (= (select (store (arr!18360 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!639204 (= lt!295739 (array!38287 (store (arr!18360 a!2986) i!1108 k!1786) (size!18724 a!2986)))))

(declare-fun b!639206 () Bool)

(declare-fun e!365831 () Bool)

(assert (=> b!639206 (= e!365831 e!365834)))

(declare-fun res!413930 () Bool)

(assert (=> b!639206 (=> res!413930 e!365834)))

(declare-fun lt!295744 () (_ BitVec 64))

(declare-fun lt!295738 () (_ BitVec 64))

(assert (=> b!639206 (= res!413930 (or (not (= (select (arr!18360 a!2986) j!136) lt!295738)) (not (= (select (arr!18360 a!2986) j!136) lt!295744)) (bvsge j!136 index!984)))))

(declare-fun e!365837 () Bool)

(assert (=> b!639206 e!365837))

(declare-fun res!413935 () Bool)

(assert (=> b!639206 (=> (not res!413935) (not e!365837))))

(assert (=> b!639206 (= res!413935 (= lt!295744 (select (arr!18360 a!2986) j!136)))))

(assert (=> b!639206 (= lt!295744 (select (store (arr!18360 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!639207 () Bool)

(declare-fun res!413933 () Bool)

(assert (=> b!639207 (=> (not res!413933) (not e!365839))))

(assert (=> b!639207 (= res!413933 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12451))))

(declare-fun b!639208 () Bool)

(declare-fun e!365838 () Bool)

(assert (=> b!639208 (= e!365838 (not e!365831))))

(declare-fun res!413928 () Bool)

(assert (=> b!639208 (=> res!413928 e!365831)))

(declare-datatypes ((SeekEntryResult!6807 0))(
  ( (MissingZero!6807 (index!29544 (_ BitVec 32))) (Found!6807 (index!29545 (_ BitVec 32))) (Intermediate!6807 (undefined!7619 Bool) (index!29546 (_ BitVec 32)) (x!58331 (_ BitVec 32))) (Undefined!6807) (MissingVacant!6807 (index!29547 (_ BitVec 32))) )
))
(declare-fun lt!295747 () SeekEntryResult!6807)

(assert (=> b!639208 (= res!413928 (not (= lt!295747 (Found!6807 index!984))))))

(declare-fun lt!295743 () Unit!21586)

(declare-fun e!365833 () Unit!21586)

(assert (=> b!639208 (= lt!295743 e!365833)))

(declare-fun c!73007 () Bool)

(assert (=> b!639208 (= c!73007 (= lt!295747 Undefined!6807))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38286 (_ BitVec 32)) SeekEntryResult!6807)

(assert (=> b!639208 (= lt!295747 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295738 lt!295739 mask!3053))))

(declare-fun e!365830 () Bool)

(assert (=> b!639208 e!365830))

(declare-fun res!413924 () Bool)

(assert (=> b!639208 (=> (not res!413924) (not e!365830))))

(declare-fun lt!295740 () (_ BitVec 32))

(declare-fun lt!295745 () SeekEntryResult!6807)

(assert (=> b!639208 (= res!413924 (= lt!295745 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295740 vacantSpotIndex!68 lt!295738 lt!295739 mask!3053)))))

(assert (=> b!639208 (= lt!295745 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295740 vacantSpotIndex!68 (select (arr!18360 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!639208 (= lt!295738 (select (store (arr!18360 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!295741 () Unit!21586)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38286 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21586)

(assert (=> b!639208 (= lt!295741 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295740 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!639208 (= lt!295740 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!639209 () Bool)

(assert (=> b!639209 (= e!365832 (arrayContainsKey!0 lt!295739 (select (arr!18360 a!2986) j!136) index!984))))

(declare-fun b!639210 () Bool)

(declare-fun res!413926 () Bool)

(assert (=> b!639210 (=> (not res!413926) (not e!365829))))

(assert (=> b!639210 (= res!413926 (and (= (size!18724 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18724 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18724 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!639211 () Bool)

(declare-fun res!413920 () Bool)

(assert (=> b!639211 (=> (not res!413920) (not e!365839))))

(assert (=> b!639211 (= res!413920 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18360 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!639212 () Bool)

(declare-fun Unit!21588 () Unit!21586)

(assert (=> b!639212 (= e!365833 Unit!21588)))

(declare-fun res!413929 () Bool)

(assert (=> start!57828 (=> (not res!413929) (not e!365829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57828 (= res!413929 (validMask!0 mask!3053))))

(assert (=> start!57828 e!365829))

(assert (=> start!57828 true))

(declare-fun array_inv!14134 (array!38286) Bool)

(assert (=> start!57828 (array_inv!14134 a!2986)))

(declare-fun b!639205 () Bool)

(declare-fun lt!295742 () SeekEntryResult!6807)

(assert (=> b!639205 (= e!365830 (= lt!295742 lt!295745))))

(declare-fun b!639213 () Bool)

(declare-fun res!413934 () Bool)

(assert (=> b!639213 (=> (not res!413934) (not e!365829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!639213 (= res!413934 (validKeyInArray!0 (select (arr!18360 a!2986) j!136)))))

(declare-fun b!639214 () Bool)

(declare-fun Unit!21589 () Unit!21586)

(assert (=> b!639214 (= e!365833 Unit!21589)))

(assert (=> b!639214 false))

(declare-fun b!639215 () Bool)

(declare-fun res!413921 () Bool)

(assert (=> b!639215 (=> (not res!413921) (not e!365829))))

(assert (=> b!639215 (= res!413921 (validKeyInArray!0 k!1786))))

(declare-fun b!639216 () Bool)

(assert (=> b!639216 (= e!365828 e!365838)))

(declare-fun res!413923 () Bool)

(assert (=> b!639216 (=> (not res!413923) (not e!365838))))

(assert (=> b!639216 (= res!413923 (and (= lt!295742 (Found!6807 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18360 a!2986) index!984) (select (arr!18360 a!2986) j!136))) (not (= (select (arr!18360 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!639216 (= lt!295742 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18360 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!639217 () Bool)

(assert (=> b!639217 (= e!365829 e!365839)))

(declare-fun res!413931 () Bool)

(assert (=> b!639217 (=> (not res!413931) (not e!365839))))

(declare-fun lt!295748 () SeekEntryResult!6807)

(assert (=> b!639217 (= res!413931 (or (= lt!295748 (MissingZero!6807 i!1108)) (= lt!295748 (MissingVacant!6807 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38286 (_ BitVec 32)) SeekEntryResult!6807)

(assert (=> b!639217 (= lt!295748 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!639218 () Bool)

(assert (=> b!639218 (= e!365837 e!365836)))

(declare-fun res!413932 () Bool)

(assert (=> b!639218 (=> res!413932 e!365836)))

(assert (=> b!639218 (= res!413932 (or (not (= (select (arr!18360 a!2986) j!136) lt!295738)) (not (= (select (arr!18360 a!2986) j!136) lt!295744)) (bvsge j!136 index!984)))))

(assert (= (and start!57828 res!413929) b!639210))

(assert (= (and b!639210 res!413926) b!639213))

(assert (= (and b!639213 res!413934) b!639215))

(assert (= (and b!639215 res!413921) b!639201))

(assert (= (and b!639201 res!413927) b!639217))

(assert (= (and b!639217 res!413931) b!639200))

(assert (= (and b!639200 res!413925) b!639207))

(assert (= (and b!639207 res!413933) b!639211))

(assert (= (and b!639211 res!413920) b!639204))

(assert (= (and b!639204 res!413936) b!639216))

(assert (= (and b!639216 res!413923) b!639208))

(assert (= (and b!639208 res!413924) b!639205))

(assert (= (and b!639208 c!73007) b!639214))

(assert (= (and b!639208 (not c!73007)) b!639212))

(assert (= (and b!639208 (not res!413928)) b!639206))

(assert (= (and b!639206 res!413935) b!639218))

(assert (= (and b!639218 (not res!413932)) b!639203))

(assert (= (and b!639203 res!413922) b!639209))

(assert (= (and b!639206 (not res!413930)) b!639202))

(declare-fun m!613137 () Bool)

(assert (=> b!639211 m!613137))

(declare-fun m!613139 () Bool)

(assert (=> b!639213 m!613139))

(assert (=> b!639213 m!613139))

(declare-fun m!613141 () Bool)

(assert (=> b!639213 m!613141))

(declare-fun m!613143 () Bool)

(assert (=> start!57828 m!613143))

(declare-fun m!613145 () Bool)

(assert (=> start!57828 m!613145))

(declare-fun m!613147 () Bool)

(assert (=> b!639216 m!613147))

(assert (=> b!639216 m!613139))

(assert (=> b!639216 m!613139))

(declare-fun m!613149 () Bool)

(assert (=> b!639216 m!613149))

(assert (=> b!639218 m!613139))

(assert (=> b!639209 m!613139))

(assert (=> b!639209 m!613139))

(declare-fun m!613151 () Bool)

(assert (=> b!639209 m!613151))

(declare-fun m!613153 () Bool)

(assert (=> b!639200 m!613153))

(declare-fun m!613155 () Bool)

(assert (=> b!639215 m!613155))

(assert (=> b!639206 m!613139))

(declare-fun m!613157 () Bool)

(assert (=> b!639206 m!613157))

(declare-fun m!613159 () Bool)

(assert (=> b!639206 m!613159))

(declare-fun m!613161 () Bool)

(assert (=> b!639217 m!613161))

(declare-fun m!613163 () Bool)

(assert (=> b!639208 m!613163))

(declare-fun m!613165 () Bool)

(assert (=> b!639208 m!613165))

(assert (=> b!639208 m!613139))

(declare-fun m!613167 () Bool)

(assert (=> b!639208 m!613167))

(assert (=> b!639208 m!613157))

(declare-fun m!613169 () Bool)

(assert (=> b!639208 m!613169))

(assert (=> b!639208 m!613139))

(declare-fun m!613171 () Bool)

(assert (=> b!639208 m!613171))

(declare-fun m!613173 () Bool)

(assert (=> b!639208 m!613173))

(declare-fun m!613175 () Bool)

(assert (=> b!639207 m!613175))

(assert (=> b!639203 m!613139))

(assert (=> b!639203 m!613139))

(declare-fun m!613177 () Bool)

(assert (=> b!639203 m!613177))

(assert (=> b!639204 m!613157))

(declare-fun m!613179 () Bool)

(assert (=> b!639204 m!613179))

(assert (=> b!639202 m!613139))

(assert (=> b!639202 m!613139))

(declare-fun m!613181 () Bool)

(assert (=> b!639202 m!613181))

(declare-fun m!613183 () Bool)

(assert (=> b!639202 m!613183))

(assert (=> b!639202 m!613139))

(declare-fun m!613185 () Bool)

(assert (=> b!639202 m!613185))

(declare-fun m!613187 () Bool)

(assert (=> b!639202 m!613187))

(declare-fun m!613189 () Bool)

(assert (=> b!639201 m!613189))

(push 1)

(assert (not b!639202))

(assert (not b!639203))

(assert (not b!639216))

(assert (not b!639217))

(assert (not b!639215))

(assert (not b!639208))

(assert (not b!639201))

(assert (not b!639209))

(assert (not b!639213))

(assert (not start!57828))

(assert (not b!639200))

(assert (not b!639207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

