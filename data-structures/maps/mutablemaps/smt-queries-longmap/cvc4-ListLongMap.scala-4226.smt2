; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58144 () Bool)

(assert start!58144)

(declare-fun b!642153 () Bool)

(declare-fun e!367750 () Bool)

(assert (=> b!642153 (= e!367750 true)))

(declare-fun lt!297414 () Bool)

(declare-datatypes ((List!12486 0))(
  ( (Nil!12483) (Cons!12482 (h!13527 (_ BitVec 64)) (t!18722 List!12486)) )
))
(declare-fun contains!3140 (List!12486 (_ BitVec 64)) Bool)

(assert (=> b!642153 (= lt!297414 (contains!3140 Nil!12483 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!642154 () Bool)

(declare-fun e!367761 () Bool)

(declare-fun e!367753 () Bool)

(assert (=> b!642154 (= e!367761 e!367753)))

(declare-fun res!416058 () Bool)

(assert (=> b!642154 (=> (not res!416058) (not e!367753))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6839 0))(
  ( (MissingZero!6839 (index!29681 (_ BitVec 32))) (Found!6839 (index!29682 (_ BitVec 32))) (Intermediate!6839 (undefined!7651 Bool) (index!29683 (_ BitVec 32)) (x!58470 (_ BitVec 32))) (Undefined!6839) (MissingVacant!6839 (index!29684 (_ BitVec 32))) )
))
(declare-fun lt!297413 () SeekEntryResult!6839)

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38359 0))(
  ( (array!38360 (arr!18392 (Array (_ BitVec 32) (_ BitVec 64))) (size!18756 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38359)

(assert (=> b!642154 (= res!416058 (and (= lt!297413 (Found!6839 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18392 a!2986) index!984) (select (arr!18392 a!2986) j!136))) (not (= (select (arr!18392 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38359 (_ BitVec 32)) SeekEntryResult!6839)

(assert (=> b!642154 (= lt!297413 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18392 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!642155 () Bool)

(declare-fun e!367760 () Bool)

(declare-fun e!367759 () Bool)

(assert (=> b!642155 (= e!367760 e!367759)))

(declare-fun res!416061 () Bool)

(assert (=> b!642155 (=> (not res!416061) (not e!367759))))

(declare-fun lt!297406 () array!38359)

(declare-fun arrayContainsKey!0 (array!38359 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642155 (= res!416061 (arrayContainsKey!0 lt!297406 (select (arr!18392 a!2986) j!136) j!136))))

(declare-fun b!642156 () Bool)

(declare-fun res!416052 () Bool)

(assert (=> b!642156 (=> res!416052 e!367750)))

(declare-fun noDuplicate!411 (List!12486) Bool)

(assert (=> b!642156 (= res!416052 (not (noDuplicate!411 Nil!12483)))))

(declare-fun b!642157 () Bool)

(declare-fun res!416066 () Bool)

(declare-fun e!367751 () Bool)

(assert (=> b!642157 (=> (not res!416066) (not e!367751))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642157 (= res!416066 (validKeyInArray!0 (select (arr!18392 a!2986) j!136)))))

(declare-fun b!642158 () Bool)

(declare-fun res!416053 () Bool)

(assert (=> b!642158 (=> (not res!416053) (not e!367751))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!642158 (= res!416053 (validKeyInArray!0 k!1786))))

(declare-fun b!642159 () Bool)

(declare-fun res!416064 () Bool)

(declare-fun e!367762 () Bool)

(assert (=> b!642159 (=> (not res!416064) (not e!367762))))

(assert (=> b!642159 (= res!416064 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18392 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!642160 () Bool)

(assert (=> b!642160 (= e!367762 e!367761)))

(declare-fun res!416051 () Bool)

(assert (=> b!642160 (=> (not res!416051) (not e!367761))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!642160 (= res!416051 (= (select (store (arr!18392 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642160 (= lt!297406 (array!38360 (store (arr!18392 a!2986) i!1108 k!1786) (size!18756 a!2986)))))

(declare-fun b!642161 () Bool)

(declare-fun res!416054 () Bool)

(assert (=> b!642161 (=> (not res!416054) (not e!367762))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38359 (_ BitVec 32)) Bool)

(assert (=> b!642161 (= res!416054 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!642162 () Bool)

(declare-datatypes ((Unit!21714 0))(
  ( (Unit!21715) )
))
(declare-fun e!367758 () Unit!21714)

(declare-fun Unit!21716 () Unit!21714)

(assert (=> b!642162 (= e!367758 Unit!21716)))

(declare-fun b!642163 () Bool)

(declare-fun Unit!21717 () Unit!21714)

(assert (=> b!642163 (= e!367758 Unit!21717)))

(assert (=> b!642163 false))

(declare-fun b!642164 () Bool)

(declare-fun res!416056 () Bool)

(assert (=> b!642164 (=> (not res!416056) (not e!367762))))

(declare-fun arrayNoDuplicates!0 (array!38359 (_ BitVec 32) List!12486) Bool)

(assert (=> b!642164 (= res!416056 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12483))))

(declare-fun res!416069 () Bool)

(assert (=> start!58144 (=> (not res!416069) (not e!367751))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58144 (= res!416069 (validMask!0 mask!3053))))

(assert (=> start!58144 e!367751))

(assert (=> start!58144 true))

(declare-fun array_inv!14166 (array!38359) Bool)

(assert (=> start!58144 (array_inv!14166 a!2986)))

(declare-fun b!642152 () Bool)

(assert (=> b!642152 (= e!367751 e!367762)))

(declare-fun res!416068 () Bool)

(assert (=> b!642152 (=> (not res!416068) (not e!367762))))

(declare-fun lt!297409 () SeekEntryResult!6839)

(assert (=> b!642152 (= res!416068 (or (= lt!297409 (MissingZero!6839 i!1108)) (= lt!297409 (MissingVacant!6839 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38359 (_ BitVec 32)) SeekEntryResult!6839)

(assert (=> b!642152 (= lt!297409 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!642165 () Bool)

(declare-fun e!367754 () Bool)

(declare-fun e!367755 () Bool)

(assert (=> b!642165 (= e!367754 e!367755)))

(declare-fun res!416060 () Bool)

(assert (=> b!642165 (=> res!416060 e!367755)))

(declare-fun lt!297412 () (_ BitVec 64))

(declare-fun lt!297411 () (_ BitVec 64))

(assert (=> b!642165 (= res!416060 (or (not (= (select (arr!18392 a!2986) j!136) lt!297411)) (not (= (select (arr!18392 a!2986) j!136) lt!297412)) (bvsge j!136 index!984)))))

(declare-fun e!367757 () Bool)

(assert (=> b!642165 e!367757))

(declare-fun res!416050 () Bool)

(assert (=> b!642165 (=> (not res!416050) (not e!367757))))

(assert (=> b!642165 (= res!416050 (= lt!297412 (select (arr!18392 a!2986) j!136)))))

(assert (=> b!642165 (= lt!297412 (select (store (arr!18392 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!642166 () Bool)

(assert (=> b!642166 (= e!367759 (arrayContainsKey!0 lt!297406 (select (arr!18392 a!2986) j!136) index!984))))

(declare-fun b!642167 () Bool)

(declare-fun res!416055 () Bool)

(assert (=> b!642167 (=> (not res!416055) (not e!367751))))

(assert (=> b!642167 (= res!416055 (and (= (size!18756 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18756 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18756 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642168 () Bool)

(declare-fun res!416065 () Bool)

(assert (=> b!642168 (=> (not res!416065) (not e!367751))))

(assert (=> b!642168 (= res!416065 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!642169 () Bool)

(assert (=> b!642169 (= e!367755 e!367750)))

(declare-fun res!416062 () Bool)

(assert (=> b!642169 (=> res!416062 e!367750)))

(assert (=> b!642169 (= res!416062 (or (bvsge (size!18756 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18756 a!2986))))))

(assert (=> b!642169 (arrayNoDuplicates!0 lt!297406 j!136 Nil!12483)))

(declare-fun lt!297415 () Unit!21714)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38359 (_ BitVec 32) (_ BitVec 32)) Unit!21714)

(assert (=> b!642169 (= lt!297415 (lemmaNoDuplicateFromThenFromBigger!0 lt!297406 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642169 (arrayNoDuplicates!0 lt!297406 #b00000000000000000000000000000000 Nil!12483)))

(declare-fun lt!297407 () Unit!21714)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38359 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12486) Unit!21714)

(assert (=> b!642169 (= lt!297407 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12483))))

(assert (=> b!642169 (arrayContainsKey!0 lt!297406 (select (arr!18392 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297416 () Unit!21714)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38359 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21714)

(assert (=> b!642169 (= lt!297416 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297406 (select (arr!18392 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!642170 () Bool)

(declare-fun res!416057 () Bool)

(assert (=> b!642170 (=> res!416057 e!367750)))

(assert (=> b!642170 (= res!416057 (contains!3140 Nil!12483 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!642171 () Bool)

(assert (=> b!642171 (= e!367757 e!367760)))

(declare-fun res!416067 () Bool)

(assert (=> b!642171 (=> res!416067 e!367760)))

(assert (=> b!642171 (= res!416067 (or (not (= (select (arr!18392 a!2986) j!136) lt!297411)) (not (= (select (arr!18392 a!2986) j!136) lt!297412)) (bvsge j!136 index!984)))))

(declare-fun b!642172 () Bool)

(declare-fun e!367752 () Bool)

(declare-fun lt!297405 () SeekEntryResult!6839)

(assert (=> b!642172 (= e!367752 (= lt!297413 lt!297405))))

(declare-fun b!642173 () Bool)

(assert (=> b!642173 (= e!367753 (not e!367754))))

(declare-fun res!416059 () Bool)

(assert (=> b!642173 (=> res!416059 e!367754)))

(declare-fun lt!297410 () SeekEntryResult!6839)

(assert (=> b!642173 (= res!416059 (not (= lt!297410 (Found!6839 index!984))))))

(declare-fun lt!297408 () Unit!21714)

(assert (=> b!642173 (= lt!297408 e!367758)))

(declare-fun c!73418 () Bool)

(assert (=> b!642173 (= c!73418 (= lt!297410 Undefined!6839))))

(assert (=> b!642173 (= lt!297410 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297411 lt!297406 mask!3053))))

(assert (=> b!642173 e!367752))

(declare-fun res!416063 () Bool)

(assert (=> b!642173 (=> (not res!416063) (not e!367752))))

(declare-fun lt!297417 () (_ BitVec 32))

(assert (=> b!642173 (= res!416063 (= lt!297405 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297417 vacantSpotIndex!68 lt!297411 lt!297406 mask!3053)))))

(assert (=> b!642173 (= lt!297405 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297417 vacantSpotIndex!68 (select (arr!18392 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!642173 (= lt!297411 (select (store (arr!18392 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297404 () Unit!21714)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38359 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21714)

(assert (=> b!642173 (= lt!297404 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297417 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!642173 (= lt!297417 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!58144 res!416069) b!642167))

(assert (= (and b!642167 res!416055) b!642157))

(assert (= (and b!642157 res!416066) b!642158))

(assert (= (and b!642158 res!416053) b!642168))

(assert (= (and b!642168 res!416065) b!642152))

(assert (= (and b!642152 res!416068) b!642161))

(assert (= (and b!642161 res!416054) b!642164))

(assert (= (and b!642164 res!416056) b!642159))

(assert (= (and b!642159 res!416064) b!642160))

(assert (= (and b!642160 res!416051) b!642154))

(assert (= (and b!642154 res!416058) b!642173))

(assert (= (and b!642173 res!416063) b!642172))

(assert (= (and b!642173 c!73418) b!642163))

(assert (= (and b!642173 (not c!73418)) b!642162))

(assert (= (and b!642173 (not res!416059)) b!642165))

(assert (= (and b!642165 res!416050) b!642171))

(assert (= (and b!642171 (not res!416067)) b!642155))

(assert (= (and b!642155 res!416061) b!642166))

(assert (= (and b!642165 (not res!416060)) b!642169))

(assert (= (and b!642169 (not res!416062)) b!642156))

(assert (= (and b!642156 (not res!416052)) b!642170))

(assert (= (and b!642170 (not res!416057)) b!642153))

(declare-fun m!615995 () Bool)

(assert (=> b!642154 m!615995))

(declare-fun m!615997 () Bool)

(assert (=> b!642154 m!615997))

(assert (=> b!642154 m!615997))

(declare-fun m!615999 () Bool)

(assert (=> b!642154 m!615999))

(declare-fun m!616001 () Bool)

(assert (=> b!642160 m!616001))

(declare-fun m!616003 () Bool)

(assert (=> b!642160 m!616003))

(declare-fun m!616005 () Bool)

(assert (=> b!642164 m!616005))

(assert (=> b!642157 m!615997))

(assert (=> b!642157 m!615997))

(declare-fun m!616007 () Bool)

(assert (=> b!642157 m!616007))

(declare-fun m!616009 () Bool)

(assert (=> b!642161 m!616009))

(assert (=> b!642165 m!615997))

(assert (=> b!642165 m!616001))

(declare-fun m!616011 () Bool)

(assert (=> b!642165 m!616011))

(declare-fun m!616013 () Bool)

(assert (=> b!642158 m!616013))

(declare-fun m!616015 () Bool)

(assert (=> b!642152 m!616015))

(declare-fun m!616017 () Bool)

(assert (=> b!642153 m!616017))

(declare-fun m!616019 () Bool)

(assert (=> b!642168 m!616019))

(declare-fun m!616021 () Bool)

(assert (=> b!642156 m!616021))

(assert (=> b!642166 m!615997))

(assert (=> b!642166 m!615997))

(declare-fun m!616023 () Bool)

(assert (=> b!642166 m!616023))

(declare-fun m!616025 () Bool)

(assert (=> b!642169 m!616025))

(assert (=> b!642169 m!615997))

(assert (=> b!642169 m!615997))

(declare-fun m!616027 () Bool)

(assert (=> b!642169 m!616027))

(declare-fun m!616029 () Bool)

(assert (=> b!642169 m!616029))

(declare-fun m!616031 () Bool)

(assert (=> b!642169 m!616031))

(assert (=> b!642169 m!615997))

(declare-fun m!616033 () Bool)

(assert (=> b!642169 m!616033))

(declare-fun m!616035 () Bool)

(assert (=> b!642169 m!616035))

(declare-fun m!616037 () Bool)

(assert (=> start!58144 m!616037))

(declare-fun m!616039 () Bool)

(assert (=> start!58144 m!616039))

(declare-fun m!616041 () Bool)

(assert (=> b!642173 m!616041))

(declare-fun m!616043 () Bool)

(assert (=> b!642173 m!616043))

(assert (=> b!642173 m!615997))

(assert (=> b!642173 m!616001))

(declare-fun m!616045 () Bool)

(assert (=> b!642173 m!616045))

(declare-fun m!616047 () Bool)

(assert (=> b!642173 m!616047))

(declare-fun m!616049 () Bool)

(assert (=> b!642173 m!616049))

(assert (=> b!642173 m!615997))

(declare-fun m!616051 () Bool)

(assert (=> b!642173 m!616051))

(declare-fun m!616053 () Bool)

(assert (=> b!642170 m!616053))

(assert (=> b!642155 m!615997))

(assert (=> b!642155 m!615997))

(declare-fun m!616055 () Bool)

(assert (=> b!642155 m!616055))

(assert (=> b!642171 m!615997))

(declare-fun m!616057 () Bool)

(assert (=> b!642159 m!616057))

(push 1)

