; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59118 () Bool)

(assert start!59118)

(declare-fun b!651937 () Bool)

(declare-fun e!374180 () Bool)

(declare-fun e!374176 () Bool)

(assert (=> b!651937 (= e!374180 e!374176)))

(declare-fun res!422849 () Bool)

(assert (=> b!651937 (=> (not res!422849) (not e!374176))))

(declare-datatypes ((SeekEntryResult!6933 0))(
  ( (MissingZero!6933 (index!30084 (_ BitVec 32))) (Found!6933 (index!30085 (_ BitVec 32))) (Intermediate!6933 (undefined!7745 Bool) (index!30086 (_ BitVec 32)) (x!58901 (_ BitVec 32))) (Undefined!6933) (MissingVacant!6933 (index!30087 (_ BitVec 32))) )
))
(declare-fun lt!303335 () SeekEntryResult!6933)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!651937 (= res!422849 (or (= lt!303335 (MissingZero!6933 i!1108)) (= lt!303335 (MissingVacant!6933 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!38574 0))(
  ( (array!38575 (arr!18486 (Array (_ BitVec 32) (_ BitVec 64))) (size!18850 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38574)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38574 (_ BitVec 32)) SeekEntryResult!6933)

(assert (=> b!651937 (= lt!303335 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!651938 () Bool)

(declare-fun res!422838 () Bool)

(assert (=> b!651938 (=> (not res!422838) (not e!374176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38574 (_ BitVec 32)) Bool)

(assert (=> b!651938 (= res!422838 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!303334 () array!38574)

(declare-fun b!651939 () Bool)

(declare-fun e!374177 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38574 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!651939 (= e!374177 (arrayContainsKey!0 lt!303334 (select (arr!18486 a!2986) j!136) index!984))))

(declare-fun res!422845 () Bool)

(assert (=> start!59118 (=> (not res!422845) (not e!374180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59118 (= res!422845 (validMask!0 mask!3053))))

(assert (=> start!59118 e!374180))

(assert (=> start!59118 true))

(declare-fun array_inv!14260 (array!38574) Bool)

(assert (=> start!59118 (array_inv!14260 a!2986)))

(declare-fun b!651940 () Bool)

(declare-fun res!422832 () Bool)

(assert (=> b!651940 (=> (not res!422832) (not e!374180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!651940 (= res!422832 (validKeyInArray!0 (select (arr!18486 a!2986) j!136)))))

(declare-fun b!651941 () Bool)

(declare-fun e!374175 () Bool)

(assert (=> b!651941 (= e!374175 (or (bvsge (size!18850 a!2986) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 index!984) (size!18850 a!2986))))))

(declare-datatypes ((List!12580 0))(
  ( (Nil!12577) (Cons!12576 (h!13621 (_ BitVec 64)) (t!18816 List!12580)) )
))
(declare-fun arrayNoDuplicates!0 (array!38574 (_ BitVec 32) List!12580) Bool)

(assert (=> b!651941 (arrayNoDuplicates!0 lt!303334 index!984 Nil!12577)))

(declare-datatypes ((Unit!22270 0))(
  ( (Unit!22271) )
))
(declare-fun lt!303327 () Unit!22270)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38574 (_ BitVec 32) (_ BitVec 32)) Unit!22270)

(assert (=> b!651941 (= lt!303327 (lemmaNoDuplicateFromThenFromBigger!0 lt!303334 #b00000000000000000000000000000000 index!984))))

(assert (=> b!651941 (arrayNoDuplicates!0 lt!303334 #b00000000000000000000000000000000 Nil!12577)))

(declare-fun lt!303342 () Unit!22270)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38574 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12580) Unit!22270)

(assert (=> b!651941 (= lt!303342 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12577))))

(assert (=> b!651941 (arrayContainsKey!0 lt!303334 (select (arr!18486 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303339 () Unit!22270)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38574 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22270)

(assert (=> b!651941 (= lt!303339 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303334 (select (arr!18486 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!651941 e!374177))

(declare-fun res!422836 () Bool)

(assert (=> b!651941 (=> (not res!422836) (not e!374177))))

(assert (=> b!651941 (= res!422836 (arrayContainsKey!0 lt!303334 (select (arr!18486 a!2986) j!136) j!136))))

(declare-fun e!374174 () Bool)

(declare-fun b!651942 () Bool)

(assert (=> b!651942 (= e!374174 (arrayContainsKey!0 lt!303334 (select (arr!18486 a!2986) j!136) index!984))))

(declare-fun b!651943 () Bool)

(declare-fun e!374182 () Unit!22270)

(declare-fun Unit!22272 () Unit!22270)

(assert (=> b!651943 (= e!374182 Unit!22272)))

(declare-fun b!651944 () Bool)

(declare-fun e!374178 () Bool)

(declare-fun lt!303332 () SeekEntryResult!6933)

(declare-fun lt!303341 () SeekEntryResult!6933)

(assert (=> b!651944 (= e!374178 (= lt!303332 lt!303341))))

(declare-fun b!651945 () Bool)

(declare-fun e!374171 () Bool)

(declare-fun e!374173 () Bool)

(assert (=> b!651945 (= e!374171 (not e!374173))))

(declare-fun res!422837 () Bool)

(assert (=> b!651945 (=> res!422837 e!374173)))

(declare-fun lt!303340 () SeekEntryResult!6933)

(assert (=> b!651945 (= res!422837 (not (= lt!303340 (Found!6933 index!984))))))

(declare-fun lt!303337 () Unit!22270)

(declare-fun e!374170 () Unit!22270)

(assert (=> b!651945 (= lt!303337 e!374170)))

(declare-fun c!74921 () Bool)

(assert (=> b!651945 (= c!74921 (= lt!303340 Undefined!6933))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!303333 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38574 (_ BitVec 32)) SeekEntryResult!6933)

(assert (=> b!651945 (= lt!303340 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303333 lt!303334 mask!3053))))

(assert (=> b!651945 e!374178))

(declare-fun res!422841 () Bool)

(assert (=> b!651945 (=> (not res!422841) (not e!374178))))

(declare-fun lt!303338 () (_ BitVec 32))

(assert (=> b!651945 (= res!422841 (= lt!303341 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303338 vacantSpotIndex!68 lt!303333 lt!303334 mask!3053)))))

(assert (=> b!651945 (= lt!303341 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303338 vacantSpotIndex!68 (select (arr!18486 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!651945 (= lt!303333 (select (store (arr!18486 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303331 () Unit!22270)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38574 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22270)

(assert (=> b!651945 (= lt!303331 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303338 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!651945 (= lt!303338 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!651946 () Bool)

(declare-fun e!374172 () Bool)

(assert (=> b!651946 (= e!374172 e!374175)))

(declare-fun res!422846 () Bool)

(assert (=> b!651946 (=> res!422846 e!374175)))

(assert (=> b!651946 (= res!422846 (bvsge index!984 j!136))))

(declare-fun lt!303336 () Unit!22270)

(assert (=> b!651946 (= lt!303336 e!374182)))

(declare-fun c!74920 () Bool)

(assert (=> b!651946 (= c!74920 (bvslt j!136 index!984))))

(declare-fun b!651947 () Bool)

(declare-fun Unit!22273 () Unit!22270)

(assert (=> b!651947 (= e!374182 Unit!22273)))

(declare-fun lt!303325 () Unit!22270)

(assert (=> b!651947 (= lt!303325 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303334 (select (arr!18486 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!651947 (arrayContainsKey!0 lt!303334 (select (arr!18486 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303330 () Unit!22270)

(assert (=> b!651947 (= lt!303330 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12577))))

(assert (=> b!651947 (arrayNoDuplicates!0 lt!303334 #b00000000000000000000000000000000 Nil!12577)))

(declare-fun lt!303329 () Unit!22270)

(assert (=> b!651947 (= lt!303329 (lemmaNoDuplicateFromThenFromBigger!0 lt!303334 #b00000000000000000000000000000000 j!136))))

(assert (=> b!651947 (arrayNoDuplicates!0 lt!303334 j!136 Nil!12577)))

(declare-fun lt!303326 () Unit!22270)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38574 (_ BitVec 64) (_ BitVec 32) List!12580) Unit!22270)

(assert (=> b!651947 (= lt!303326 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303334 (select (arr!18486 a!2986) j!136) j!136 Nil!12577))))

(assert (=> b!651947 false))

(declare-fun b!651948 () Bool)

(declare-fun e!374181 () Bool)

(declare-fun e!374179 () Bool)

(assert (=> b!651948 (= e!374181 e!374179)))

(declare-fun res!422848 () Bool)

(assert (=> b!651948 (=> res!422848 e!374179)))

(declare-fun lt!303328 () (_ BitVec 64))

(assert (=> b!651948 (= res!422848 (or (not (= (select (arr!18486 a!2986) j!136) lt!303333)) (not (= (select (arr!18486 a!2986) j!136) lt!303328)) (bvsge j!136 index!984)))))

(declare-fun b!651949 () Bool)

(declare-fun res!422844 () Bool)

(assert (=> b!651949 (=> (not res!422844) (not e!374176))))

(assert (=> b!651949 (= res!422844 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18486 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!651950 () Bool)

(declare-fun e!374169 () Bool)

(assert (=> b!651950 (= e!374176 e!374169)))

(declare-fun res!422831 () Bool)

(assert (=> b!651950 (=> (not res!422831) (not e!374169))))

(assert (=> b!651950 (= res!422831 (= (select (store (arr!18486 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651950 (= lt!303334 (array!38575 (store (arr!18486 a!2986) i!1108 k!1786) (size!18850 a!2986)))))

(declare-fun b!651951 () Bool)

(declare-fun res!422840 () Bool)

(assert (=> b!651951 (=> (not res!422840) (not e!374180))))

(assert (=> b!651951 (= res!422840 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!651952 () Bool)

(declare-fun Unit!22274 () Unit!22270)

(assert (=> b!651952 (= e!374170 Unit!22274)))

(declare-fun b!651953 () Bool)

(assert (=> b!651953 (= e!374179 e!374174)))

(declare-fun res!422839 () Bool)

(assert (=> b!651953 (=> (not res!422839) (not e!374174))))

(assert (=> b!651953 (= res!422839 (arrayContainsKey!0 lt!303334 (select (arr!18486 a!2986) j!136) j!136))))

(declare-fun b!651954 () Bool)

(declare-fun res!422843 () Bool)

(assert (=> b!651954 (=> (not res!422843) (not e!374176))))

(assert (=> b!651954 (= res!422843 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12577))))

(declare-fun b!651955 () Bool)

(declare-fun res!422834 () Bool)

(assert (=> b!651955 (=> (not res!422834) (not e!374180))))

(assert (=> b!651955 (= res!422834 (validKeyInArray!0 k!1786))))

(declare-fun b!651956 () Bool)

(declare-fun Unit!22275 () Unit!22270)

(assert (=> b!651956 (= e!374170 Unit!22275)))

(assert (=> b!651956 false))

(declare-fun b!651957 () Bool)

(declare-fun res!422835 () Bool)

(assert (=> b!651957 (=> (not res!422835) (not e!374180))))

(assert (=> b!651957 (= res!422835 (and (= (size!18850 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18850 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18850 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!651958 () Bool)

(assert (=> b!651958 (= e!374173 e!374172)))

(declare-fun res!422847 () Bool)

(assert (=> b!651958 (=> res!422847 e!374172)))

(assert (=> b!651958 (= res!422847 (or (not (= (select (arr!18486 a!2986) j!136) lt!303333)) (not (= (select (arr!18486 a!2986) j!136) lt!303328))))))

(assert (=> b!651958 e!374181))

(declare-fun res!422842 () Bool)

(assert (=> b!651958 (=> (not res!422842) (not e!374181))))

(assert (=> b!651958 (= res!422842 (= lt!303328 (select (arr!18486 a!2986) j!136)))))

(assert (=> b!651958 (= lt!303328 (select (store (arr!18486 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!651959 () Bool)

(assert (=> b!651959 (= e!374169 e!374171)))

(declare-fun res!422833 () Bool)

(assert (=> b!651959 (=> (not res!422833) (not e!374171))))

(assert (=> b!651959 (= res!422833 (and (= lt!303332 (Found!6933 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18486 a!2986) index!984) (select (arr!18486 a!2986) j!136))) (not (= (select (arr!18486 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!651959 (= lt!303332 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18486 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!59118 res!422845) b!651957))

(assert (= (and b!651957 res!422835) b!651940))

(assert (= (and b!651940 res!422832) b!651955))

(assert (= (and b!651955 res!422834) b!651951))

(assert (= (and b!651951 res!422840) b!651937))

(assert (= (and b!651937 res!422849) b!651938))

(assert (= (and b!651938 res!422838) b!651954))

(assert (= (and b!651954 res!422843) b!651949))

(assert (= (and b!651949 res!422844) b!651950))

(assert (= (and b!651950 res!422831) b!651959))

(assert (= (and b!651959 res!422833) b!651945))

(assert (= (and b!651945 res!422841) b!651944))

(assert (= (and b!651945 c!74921) b!651956))

(assert (= (and b!651945 (not c!74921)) b!651952))

(assert (= (and b!651945 (not res!422837)) b!651958))

(assert (= (and b!651958 res!422842) b!651948))

(assert (= (and b!651948 (not res!422848)) b!651953))

(assert (= (and b!651953 res!422839) b!651942))

(assert (= (and b!651958 (not res!422847)) b!651946))

(assert (= (and b!651946 c!74920) b!651947))

(assert (= (and b!651946 (not c!74920)) b!651943))

(assert (= (and b!651946 (not res!422846)) b!651941))

(assert (= (and b!651941 res!422836) b!651939))

(declare-fun m!625155 () Bool)

(assert (=> b!651949 m!625155))

(declare-fun m!625157 () Bool)

(assert (=> b!651958 m!625157))

(declare-fun m!625159 () Bool)

(assert (=> b!651958 m!625159))

(declare-fun m!625161 () Bool)

(assert (=> b!651958 m!625161))

(declare-fun m!625163 () Bool)

(assert (=> b!651954 m!625163))

(assert (=> b!651953 m!625157))

(assert (=> b!651953 m!625157))

(declare-fun m!625165 () Bool)

(assert (=> b!651953 m!625165))

(assert (=> b!651950 m!625159))

(declare-fun m!625167 () Bool)

(assert (=> b!651950 m!625167))

(assert (=> b!651940 m!625157))

(assert (=> b!651940 m!625157))

(declare-fun m!625169 () Bool)

(assert (=> b!651940 m!625169))

(declare-fun m!625171 () Bool)

(assert (=> b!651959 m!625171))

(assert (=> b!651959 m!625157))

(assert (=> b!651959 m!625157))

(declare-fun m!625173 () Bool)

(assert (=> b!651959 m!625173))

(assert (=> b!651942 m!625157))

(assert (=> b!651942 m!625157))

(declare-fun m!625175 () Bool)

(assert (=> b!651942 m!625175))

(assert (=> b!651948 m!625157))

(declare-fun m!625177 () Bool)

(assert (=> b!651945 m!625177))

(declare-fun m!625179 () Bool)

(assert (=> b!651945 m!625179))

(declare-fun m!625181 () Bool)

(assert (=> b!651945 m!625181))

(assert (=> b!651945 m!625157))

(assert (=> b!651945 m!625159))

(assert (=> b!651945 m!625157))

(declare-fun m!625183 () Bool)

(assert (=> b!651945 m!625183))

(declare-fun m!625185 () Bool)

(assert (=> b!651945 m!625185))

(declare-fun m!625187 () Bool)

(assert (=> b!651945 m!625187))

(declare-fun m!625189 () Bool)

(assert (=> b!651951 m!625189))

(assert (=> b!651939 m!625157))

(assert (=> b!651939 m!625157))

(assert (=> b!651939 m!625175))

(declare-fun m!625191 () Bool)

(assert (=> start!59118 m!625191))

(declare-fun m!625193 () Bool)

(assert (=> start!59118 m!625193))

(declare-fun m!625195 () Bool)

(assert (=> b!651941 m!625195))

(declare-fun m!625197 () Bool)

(assert (=> b!651941 m!625197))

(assert (=> b!651941 m!625157))

(declare-fun m!625199 () Bool)

(assert (=> b!651941 m!625199))

(assert (=> b!651941 m!625157))

(assert (=> b!651941 m!625157))

(assert (=> b!651941 m!625165))

(assert (=> b!651941 m!625157))

(declare-fun m!625201 () Bool)

(assert (=> b!651941 m!625201))

(declare-fun m!625203 () Bool)

(assert (=> b!651941 m!625203))

(declare-fun m!625205 () Bool)

(assert (=> b!651941 m!625205))

(declare-fun m!625207 () Bool)

(assert (=> b!651955 m!625207))

(assert (=> b!651947 m!625157))

(declare-fun m!625209 () Bool)

(assert (=> b!651947 m!625209))

(assert (=> b!651947 m!625157))

(declare-fun m!625211 () Bool)

(assert (=> b!651947 m!625211))

(assert (=> b!651947 m!625157))

(declare-fun m!625213 () Bool)

(assert (=> b!651947 m!625213))

(assert (=> b!651947 m!625157))

(declare-fun m!625215 () Bool)

(assert (=> b!651947 m!625215))

(assert (=> b!651947 m!625205))

(declare-fun m!625217 () Bool)

(assert (=> b!651947 m!625217))

(assert (=> b!651947 m!625195))

(declare-fun m!625219 () Bool)

(assert (=> b!651937 m!625219))

(declare-fun m!625221 () Bool)

(assert (=> b!651938 m!625221))

(push 1)

(assert (not b!651945))

(assert (not b!651954))

(assert (not b!651941))

(assert (not b!651938))

(assert (not b!651942))

(assert (not b!651937))

(assert (not b!651947))

(assert (not b!651955))

(assert (not b!651953))

(assert (not b!651959))

(assert (not b!651939))

(assert (not start!59118))

(assert (not b!651940))

(assert (not b!651951))

(check-sat)

(pop 1)

(push 1)

(check-sat)

