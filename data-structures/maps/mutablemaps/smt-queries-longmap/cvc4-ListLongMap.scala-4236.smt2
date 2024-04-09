; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58456 () Bool)

(assert start!58456)

(declare-fun b!645148 () Bool)

(declare-fun e!369729 () Bool)

(declare-fun e!369726 () Bool)

(assert (=> b!645148 (= e!369729 e!369726)))

(declare-fun res!418093 () Bool)

(assert (=> b!645148 (=> (not res!418093) (not e!369726))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!38428 0))(
  ( (array!38429 (arr!18422 (Array (_ BitVec 32) (_ BitVec 64))) (size!18786 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38428)

(assert (=> b!645148 (= res!418093 (= (select (store (arr!18422 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!299184 () array!38428)

(assert (=> b!645148 (= lt!299184 (array!38429 (store (arr!18422 a!2986) i!1108 k!1786) (size!18786 a!2986)))))

(declare-fun b!645149 () Bool)

(declare-fun res!418084 () Bool)

(declare-fun e!369724 () Bool)

(assert (=> b!645149 (=> (not res!418084) (not e!369724))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!645149 (= res!418084 (validKeyInArray!0 (select (arr!18422 a!2986) j!136)))))

(declare-fun b!645150 () Bool)

(declare-datatypes ((Unit!21886 0))(
  ( (Unit!21887) )
))
(declare-fun e!369725 () Unit!21886)

(declare-fun Unit!21888 () Unit!21886)

(assert (=> b!645150 (= e!369725 Unit!21888)))

(declare-fun b!645151 () Bool)

(declare-fun e!369732 () Unit!21886)

(declare-fun Unit!21889 () Unit!21886)

(assert (=> b!645151 (= e!369732 Unit!21889)))

(declare-fun lt!299197 () Unit!21886)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38428 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21886)

(assert (=> b!645151 (= lt!299197 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299184 (select (arr!18422 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun arrayContainsKey!0 (array!38428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!645151 (arrayContainsKey!0 lt!299184 (select (arr!18422 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299185 () Unit!21886)

(declare-datatypes ((List!12516 0))(
  ( (Nil!12513) (Cons!12512 (h!13557 (_ BitVec 64)) (t!18752 List!12516)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38428 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12516) Unit!21886)

(assert (=> b!645151 (= lt!299185 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12513))))

(declare-fun arrayNoDuplicates!0 (array!38428 (_ BitVec 32) List!12516) Bool)

(assert (=> b!645151 (arrayNoDuplicates!0 lt!299184 #b00000000000000000000000000000000 Nil!12513)))

(declare-fun lt!299188 () Unit!21886)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38428 (_ BitVec 32) (_ BitVec 32)) Unit!21886)

(assert (=> b!645151 (= lt!299188 (lemmaNoDuplicateFromThenFromBigger!0 lt!299184 #b00000000000000000000000000000000 j!136))))

(assert (=> b!645151 (arrayNoDuplicates!0 lt!299184 j!136 Nil!12513)))

(declare-fun lt!299187 () Unit!21886)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38428 (_ BitVec 64) (_ BitVec 32) List!12516) Unit!21886)

(assert (=> b!645151 (= lt!299187 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299184 (select (arr!18422 a!2986) j!136) j!136 Nil!12513))))

(assert (=> b!645151 false))

(declare-fun b!645152 () Bool)

(declare-fun res!418085 () Bool)

(assert (=> b!645152 (=> (not res!418085) (not e!369724))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!645152 (= res!418085 (and (= (size!18786 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18786 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18786 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!645153 () Bool)

(declare-fun res!418089 () Bool)

(assert (=> b!645153 (=> (not res!418089) (not e!369729))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38428 (_ BitVec 32)) Bool)

(assert (=> b!645153 (= res!418089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!645154 () Bool)

(declare-fun e!369731 () Bool)

(declare-fun e!369723 () Bool)

(assert (=> b!645154 (= e!369731 e!369723)))

(declare-fun res!418090 () Bool)

(assert (=> b!645154 (=> res!418090 e!369723)))

(assert (=> b!645154 (= res!418090 (bvsge index!984 j!136))))

(declare-fun lt!299199 () Unit!21886)

(assert (=> b!645154 (= lt!299199 e!369732)))

(declare-fun c!73903 () Bool)

(assert (=> b!645154 (= c!73903 (bvslt j!136 index!984))))

(declare-fun b!645155 () Bool)

(declare-fun res!418086 () Bool)

(assert (=> b!645155 (=> (not res!418086) (not e!369729))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!645155 (= res!418086 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18422 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!645156 () Bool)

(assert (=> b!645156 (= e!369724 e!369729)))

(declare-fun res!418079 () Bool)

(assert (=> b!645156 (=> (not res!418079) (not e!369729))))

(declare-datatypes ((SeekEntryResult!6869 0))(
  ( (MissingZero!6869 (index!29810 (_ BitVec 32))) (Found!6869 (index!29811 (_ BitVec 32))) (Intermediate!6869 (undefined!7681 Bool) (index!29812 (_ BitVec 32)) (x!58607 (_ BitVec 32))) (Undefined!6869) (MissingVacant!6869 (index!29813 (_ BitVec 32))) )
))
(declare-fun lt!299189 () SeekEntryResult!6869)

(assert (=> b!645156 (= res!418079 (or (= lt!299189 (MissingZero!6869 i!1108)) (= lt!299189 (MissingVacant!6869 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38428 (_ BitVec 32)) SeekEntryResult!6869)

(assert (=> b!645156 (= lt!299189 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!645157 () Bool)

(declare-fun e!369721 () Bool)

(assert (=> b!645157 (= e!369721 e!369731)))

(declare-fun res!418092 () Bool)

(assert (=> b!645157 (=> res!418092 e!369731)))

(declare-fun lt!299198 () (_ BitVec 64))

(declare-fun lt!299195 () (_ BitVec 64))

(assert (=> b!645157 (= res!418092 (or (not (= (select (arr!18422 a!2986) j!136) lt!299198)) (not (= (select (arr!18422 a!2986) j!136) lt!299195))))))

(declare-fun e!369728 () Bool)

(assert (=> b!645157 e!369728))

(declare-fun res!418094 () Bool)

(assert (=> b!645157 (=> (not res!418094) (not e!369728))))

(assert (=> b!645157 (= res!418094 (= lt!299195 (select (arr!18422 a!2986) j!136)))))

(assert (=> b!645157 (= lt!299195 (select (store (arr!18422 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!645158 () Bool)

(declare-fun e!369727 () Bool)

(assert (=> b!645158 (= e!369726 e!369727)))

(declare-fun res!418080 () Bool)

(assert (=> b!645158 (=> (not res!418080) (not e!369727))))

(declare-fun lt!299191 () SeekEntryResult!6869)

(assert (=> b!645158 (= res!418080 (and (= lt!299191 (Found!6869 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18422 a!2986) index!984) (select (arr!18422 a!2986) j!136))) (not (= (select (arr!18422 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38428 (_ BitVec 32)) SeekEntryResult!6869)

(assert (=> b!645158 (= lt!299191 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18422 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!418078 () Bool)

(assert (=> start!58456 (=> (not res!418078) (not e!369724))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58456 (= res!418078 (validMask!0 mask!3053))))

(assert (=> start!58456 e!369724))

(assert (=> start!58456 true))

(declare-fun array_inv!14196 (array!38428) Bool)

(assert (=> start!58456 (array_inv!14196 a!2986)))

(declare-fun b!645159 () Bool)

(declare-fun e!369719 () Bool)

(assert (=> b!645159 (= e!369728 e!369719)))

(declare-fun res!418088 () Bool)

(assert (=> b!645159 (=> res!418088 e!369719)))

(assert (=> b!645159 (= res!418088 (or (not (= (select (arr!18422 a!2986) j!136) lt!299198)) (not (= (select (arr!18422 a!2986) j!136) lt!299195)) (bvsge j!136 index!984)))))

(declare-fun b!645160 () Bool)

(declare-fun e!369722 () Bool)

(declare-fun lt!299192 () SeekEntryResult!6869)

(assert (=> b!645160 (= e!369722 (= lt!299191 lt!299192))))

(declare-fun b!645161 () Bool)

(declare-fun e!369733 () Bool)

(assert (=> b!645161 (= e!369719 e!369733)))

(declare-fun res!418082 () Bool)

(assert (=> b!645161 (=> (not res!418082) (not e!369733))))

(assert (=> b!645161 (= res!418082 (arrayContainsKey!0 lt!299184 (select (arr!18422 a!2986) j!136) j!136))))

(declare-fun b!645162 () Bool)

(declare-fun res!418087 () Bool)

(assert (=> b!645162 (=> (not res!418087) (not e!369729))))

(assert (=> b!645162 (= res!418087 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12513))))

(declare-fun e!369720 () Bool)

(declare-fun b!645163 () Bool)

(assert (=> b!645163 (= e!369720 (arrayContainsKey!0 lt!299184 (select (arr!18422 a!2986) j!136) index!984))))

(declare-fun b!645164 () Bool)

(declare-fun res!418091 () Bool)

(assert (=> b!645164 (=> (not res!418091) (not e!369724))))

(assert (=> b!645164 (= res!418091 (validKeyInArray!0 k!1786))))

(declare-fun b!645165 () Bool)

(declare-fun Unit!21890 () Unit!21886)

(assert (=> b!645165 (= e!369732 Unit!21890)))

(declare-fun b!645166 () Bool)

(assert (=> b!645166 (= e!369733 (arrayContainsKey!0 lt!299184 (select (arr!18422 a!2986) j!136) index!984))))

(declare-fun b!645167 () Bool)

(assert (=> b!645167 (= e!369723 true)))

(assert (=> b!645167 (arrayContainsKey!0 lt!299184 (select (arr!18422 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299186 () Unit!21886)

(assert (=> b!645167 (= lt!299186 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299184 (select (arr!18422 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!645167 e!369720))

(declare-fun res!418081 () Bool)

(assert (=> b!645167 (=> (not res!418081) (not e!369720))))

(assert (=> b!645167 (= res!418081 (arrayContainsKey!0 lt!299184 (select (arr!18422 a!2986) j!136) j!136))))

(declare-fun b!645168 () Bool)

(declare-fun Unit!21891 () Unit!21886)

(assert (=> b!645168 (= e!369725 Unit!21891)))

(assert (=> b!645168 false))

(declare-fun b!645169 () Bool)

(declare-fun res!418083 () Bool)

(assert (=> b!645169 (=> (not res!418083) (not e!369724))))

(assert (=> b!645169 (= res!418083 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!645170 () Bool)

(assert (=> b!645170 (= e!369727 (not e!369721))))

(declare-fun res!418076 () Bool)

(assert (=> b!645170 (=> res!418076 e!369721)))

(declare-fun lt!299196 () SeekEntryResult!6869)

(assert (=> b!645170 (= res!418076 (not (= lt!299196 (Found!6869 index!984))))))

(declare-fun lt!299193 () Unit!21886)

(assert (=> b!645170 (= lt!299193 e!369725)))

(declare-fun c!73904 () Bool)

(assert (=> b!645170 (= c!73904 (= lt!299196 Undefined!6869))))

(assert (=> b!645170 (= lt!299196 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299198 lt!299184 mask!3053))))

(assert (=> b!645170 e!369722))

(declare-fun res!418077 () Bool)

(assert (=> b!645170 (=> (not res!418077) (not e!369722))))

(declare-fun lt!299190 () (_ BitVec 32))

(assert (=> b!645170 (= res!418077 (= lt!299192 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299190 vacantSpotIndex!68 lt!299198 lt!299184 mask!3053)))))

(assert (=> b!645170 (= lt!299192 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299190 vacantSpotIndex!68 (select (arr!18422 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!645170 (= lt!299198 (select (store (arr!18422 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299194 () Unit!21886)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38428 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21886)

(assert (=> b!645170 (= lt!299194 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299190 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!645170 (= lt!299190 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!58456 res!418078) b!645152))

(assert (= (and b!645152 res!418085) b!645149))

(assert (= (and b!645149 res!418084) b!645164))

(assert (= (and b!645164 res!418091) b!645169))

(assert (= (and b!645169 res!418083) b!645156))

(assert (= (and b!645156 res!418079) b!645153))

(assert (= (and b!645153 res!418089) b!645162))

(assert (= (and b!645162 res!418087) b!645155))

(assert (= (and b!645155 res!418086) b!645148))

(assert (= (and b!645148 res!418093) b!645158))

(assert (= (and b!645158 res!418080) b!645170))

(assert (= (and b!645170 res!418077) b!645160))

(assert (= (and b!645170 c!73904) b!645168))

(assert (= (and b!645170 (not c!73904)) b!645150))

(assert (= (and b!645170 (not res!418076)) b!645157))

(assert (= (and b!645157 res!418094) b!645159))

(assert (= (and b!645159 (not res!418088)) b!645161))

(assert (= (and b!645161 res!418082) b!645166))

(assert (= (and b!645157 (not res!418092)) b!645154))

(assert (= (and b!645154 c!73903) b!645151))

(assert (= (and b!645154 (not c!73903)) b!645165))

(assert (= (and b!645154 (not res!418090)) b!645167))

(assert (= (and b!645167 res!418081) b!645163))

(declare-fun m!618743 () Bool)

(assert (=> start!58456 m!618743))

(declare-fun m!618745 () Bool)

(assert (=> start!58456 m!618745))

(declare-fun m!618747 () Bool)

(assert (=> b!645159 m!618747))

(declare-fun m!618749 () Bool)

(assert (=> b!645169 m!618749))

(declare-fun m!618751 () Bool)

(assert (=> b!645153 m!618751))

(declare-fun m!618753 () Bool)

(assert (=> b!645156 m!618753))

(assert (=> b!645161 m!618747))

(assert (=> b!645161 m!618747))

(declare-fun m!618755 () Bool)

(assert (=> b!645161 m!618755))

(declare-fun m!618757 () Bool)

(assert (=> b!645155 m!618757))

(declare-fun m!618759 () Bool)

(assert (=> b!645164 m!618759))

(assert (=> b!645149 m!618747))

(assert (=> b!645149 m!618747))

(declare-fun m!618761 () Bool)

(assert (=> b!645149 m!618761))

(assert (=> b!645166 m!618747))

(assert (=> b!645166 m!618747))

(declare-fun m!618763 () Bool)

(assert (=> b!645166 m!618763))

(declare-fun m!618765 () Bool)

(assert (=> b!645162 m!618765))

(assert (=> b!645163 m!618747))

(assert (=> b!645163 m!618747))

(assert (=> b!645163 m!618763))

(declare-fun m!618767 () Bool)

(assert (=> b!645148 m!618767))

(declare-fun m!618769 () Bool)

(assert (=> b!645148 m!618769))

(assert (=> b!645167 m!618747))

(assert (=> b!645167 m!618747))

(declare-fun m!618771 () Bool)

(assert (=> b!645167 m!618771))

(assert (=> b!645167 m!618747))

(declare-fun m!618773 () Bool)

(assert (=> b!645167 m!618773))

(assert (=> b!645167 m!618747))

(assert (=> b!645167 m!618755))

(declare-fun m!618775 () Bool)

(assert (=> b!645170 m!618775))

(declare-fun m!618777 () Bool)

(assert (=> b!645170 m!618777))

(declare-fun m!618779 () Bool)

(assert (=> b!645170 m!618779))

(assert (=> b!645170 m!618747))

(assert (=> b!645170 m!618767))

(assert (=> b!645170 m!618747))

(declare-fun m!618781 () Bool)

(assert (=> b!645170 m!618781))

(declare-fun m!618783 () Bool)

(assert (=> b!645170 m!618783))

(declare-fun m!618785 () Bool)

(assert (=> b!645170 m!618785))

(assert (=> b!645157 m!618747))

(assert (=> b!645157 m!618767))

(declare-fun m!618787 () Bool)

(assert (=> b!645157 m!618787))

(declare-fun m!618789 () Bool)

(assert (=> b!645158 m!618789))

(assert (=> b!645158 m!618747))

(assert (=> b!645158 m!618747))

(declare-fun m!618791 () Bool)

(assert (=> b!645158 m!618791))

(declare-fun m!618793 () Bool)

(assert (=> b!645151 m!618793))

(assert (=> b!645151 m!618747))

(declare-fun m!618795 () Bool)

(assert (=> b!645151 m!618795))

(assert (=> b!645151 m!618747))

(assert (=> b!645151 m!618747))

(declare-fun m!618797 () Bool)

(assert (=> b!645151 m!618797))

(declare-fun m!618799 () Bool)

(assert (=> b!645151 m!618799))

(declare-fun m!618801 () Bool)

(assert (=> b!645151 m!618801))

(assert (=> b!645151 m!618747))

(declare-fun m!618803 () Bool)

(assert (=> b!645151 m!618803))

(declare-fun m!618805 () Bool)

(assert (=> b!645151 m!618805))

(push 1)

