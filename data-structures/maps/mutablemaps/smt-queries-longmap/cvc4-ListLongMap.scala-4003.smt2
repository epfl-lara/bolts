; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54424 () Bool)

(assert start!54424)

(declare-fun b!593849 () Bool)

(declare-fun e!339263 () Bool)

(declare-datatypes ((List!11817 0))(
  ( (Nil!11814) (Cons!11813 (h!12858 (_ BitVec 64)) (t!18053 List!11817)) )
))
(declare-fun contains!2921 (List!11817 (_ BitVec 64)) Bool)

(assert (=> b!593849 (= e!339263 (not (contains!2921 Nil!11814 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!593850 () Bool)

(declare-datatypes ((array!36922 0))(
  ( (array!36923 (arr!17723 (Array (_ BitVec 32) (_ BitVec 64))) (size!18087 (_ BitVec 32))) )
))
(declare-fun lt!269654 () array!36922)

(declare-fun e!339267 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!36922)

(declare-fun arrayContainsKey!0 (array!36922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!593850 (= e!339267 (arrayContainsKey!0 lt!269654 (select (arr!17723 a!2986) j!136) index!984))))

(declare-fun b!593851 () Bool)

(declare-fun res!380203 () Bool)

(declare-fun e!339264 () Bool)

(assert (=> b!593851 (=> (not res!380203) (not e!339264))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!593851 (= res!380203 (and (= (size!18087 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18087 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18087 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!593852 () Bool)

(declare-fun e!339260 () Bool)

(assert (=> b!593852 (= e!339264 e!339260)))

(declare-fun res!380210 () Bool)

(assert (=> b!593852 (=> (not res!380210) (not e!339260))))

(declare-datatypes ((SeekEntryResult!6170 0))(
  ( (MissingZero!6170 (index!26924 (_ BitVec 32))) (Found!6170 (index!26925 (_ BitVec 32))) (Intermediate!6170 (undefined!6982 Bool) (index!26926 (_ BitVec 32)) (x!55750 (_ BitVec 32))) (Undefined!6170) (MissingVacant!6170 (index!26927 (_ BitVec 32))) )
))
(declare-fun lt!269649 () SeekEntryResult!6170)

(assert (=> b!593852 (= res!380210 (or (= lt!269649 (MissingZero!6170 i!1108)) (= lt!269649 (MissingVacant!6170 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36922 (_ BitVec 32)) SeekEntryResult!6170)

(assert (=> b!593852 (= lt!269649 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!593853 () Bool)

(declare-fun e!339266 () Bool)

(declare-fun e!339269 () Bool)

(assert (=> b!593853 (= e!339266 (not e!339269))))

(declare-fun res!380195 () Bool)

(assert (=> b!593853 (=> res!380195 e!339269)))

(declare-fun lt!269648 () SeekEntryResult!6170)

(assert (=> b!593853 (= res!380195 (not (= lt!269648 (Found!6170 index!984))))))

(declare-datatypes ((Unit!18624 0))(
  ( (Unit!18625) )
))
(declare-fun lt!269645 () Unit!18624)

(declare-fun e!339261 () Unit!18624)

(assert (=> b!593853 (= lt!269645 e!339261)))

(declare-fun c!67196 () Bool)

(assert (=> b!593853 (= c!67196 (= lt!269648 Undefined!6170))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!269655 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36922 (_ BitVec 32)) SeekEntryResult!6170)

(assert (=> b!593853 (= lt!269648 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269655 lt!269654 mask!3053))))

(declare-fun e!339270 () Bool)

(assert (=> b!593853 e!339270))

(declare-fun res!380191 () Bool)

(assert (=> b!593853 (=> (not res!380191) (not e!339270))))

(declare-fun lt!269647 () SeekEntryResult!6170)

(declare-fun lt!269653 () (_ BitVec 32))

(assert (=> b!593853 (= res!380191 (= lt!269647 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269653 vacantSpotIndex!68 lt!269655 lt!269654 mask!3053)))))

(assert (=> b!593853 (= lt!269647 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269653 vacantSpotIndex!68 (select (arr!17723 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!593853 (= lt!269655 (select (store (arr!17723 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!269652 () Unit!18624)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36922 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18624)

(assert (=> b!593853 (= lt!269652 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269653 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!593853 (= lt!269653 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!593854 () Bool)

(declare-fun res!380193 () Bool)

(assert (=> b!593854 (=> (not res!380193) (not e!339264))))

(assert (=> b!593854 (= res!380193 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!593855 () Bool)

(declare-fun e!339259 () Bool)

(assert (=> b!593855 (= e!339259 e!339266)))

(declare-fun res!380207 () Bool)

(assert (=> b!593855 (=> (not res!380207) (not e!339266))))

(declare-fun lt!269651 () SeekEntryResult!6170)

(assert (=> b!593855 (= res!380207 (and (= lt!269651 (Found!6170 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17723 a!2986) index!984) (select (arr!17723 a!2986) j!136))) (not (= (select (arr!17723 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!593855 (= lt!269651 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17723 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!593856 () Bool)

(declare-fun res!380209 () Bool)

(declare-fun e!339268 () Bool)

(assert (=> b!593856 (=> res!380209 e!339268)))

(declare-fun noDuplicate!237 (List!11817) Bool)

(assert (=> b!593856 (= res!380209 (not (noDuplicate!237 Nil!11814)))))

(declare-fun b!593857 () Bool)

(declare-fun res!380196 () Bool)

(assert (=> b!593857 (=> (not res!380196) (not e!339264))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!593857 (= res!380196 (validKeyInArray!0 (select (arr!17723 a!2986) j!136)))))

(declare-fun b!593858 () Bool)

(declare-fun e!339265 () Bool)

(declare-fun e!339258 () Bool)

(assert (=> b!593858 (= e!339265 e!339258)))

(declare-fun res!380192 () Bool)

(assert (=> b!593858 (=> res!380192 e!339258)))

(declare-fun lt!269646 () (_ BitVec 64))

(assert (=> b!593858 (= res!380192 (or (not (= (select (arr!17723 a!2986) j!136) lt!269655)) (not (= (select (arr!17723 a!2986) j!136) lt!269646)) (bvsge j!136 index!984)))))

(declare-fun b!593859 () Bool)

(declare-fun res!380200 () Bool)

(assert (=> b!593859 (=> (not res!380200) (not e!339260))))

(declare-fun arrayNoDuplicates!0 (array!36922 (_ BitVec 32) List!11817) Bool)

(assert (=> b!593859 (= res!380200 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11814))))

(declare-fun b!593860 () Bool)

(assert (=> b!593860 (= e!339258 e!339267)))

(declare-fun res!380205 () Bool)

(assert (=> b!593860 (=> (not res!380205) (not e!339267))))

(assert (=> b!593860 (= res!380205 (arrayContainsKey!0 lt!269654 (select (arr!17723 a!2986) j!136) j!136))))

(declare-fun b!593861 () Bool)

(assert (=> b!593861 (= e!339268 e!339263)))

(declare-fun res!380194 () Bool)

(assert (=> b!593861 (=> (not res!380194) (not e!339263))))

(assert (=> b!593861 (= res!380194 (not (contains!2921 Nil!11814 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593862 () Bool)

(declare-fun Unit!18626 () Unit!18624)

(assert (=> b!593862 (= e!339261 Unit!18626)))

(declare-fun b!593863 () Bool)

(declare-fun Unit!18627 () Unit!18624)

(assert (=> b!593863 (= e!339261 Unit!18627)))

(assert (=> b!593863 false))

(declare-fun res!380198 () Bool)

(assert (=> start!54424 (=> (not res!380198) (not e!339264))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54424 (= res!380198 (validMask!0 mask!3053))))

(assert (=> start!54424 e!339264))

(assert (=> start!54424 true))

(declare-fun array_inv!13497 (array!36922) Bool)

(assert (=> start!54424 (array_inv!13497 a!2986)))

(declare-fun b!593864 () Bool)

(declare-fun res!380202 () Bool)

(assert (=> b!593864 (=> (not res!380202) (not e!339260))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36922 (_ BitVec 32)) Bool)

(assert (=> b!593864 (= res!380202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!593865 () Bool)

(assert (=> b!593865 (= e!339260 e!339259)))

(declare-fun res!380201 () Bool)

(assert (=> b!593865 (=> (not res!380201) (not e!339259))))

(assert (=> b!593865 (= res!380201 (= (select (store (arr!17723 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593865 (= lt!269654 (array!36923 (store (arr!17723 a!2986) i!1108 k!1786) (size!18087 a!2986)))))

(declare-fun b!593866 () Bool)

(declare-fun res!380208 () Bool)

(assert (=> b!593866 (=> (not res!380208) (not e!339260))))

(assert (=> b!593866 (= res!380208 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17723 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!593867 () Bool)

(declare-fun res!380204 () Bool)

(assert (=> b!593867 (=> (not res!380204) (not e!339264))))

(assert (=> b!593867 (= res!380204 (validKeyInArray!0 k!1786))))

(declare-fun b!593868 () Bool)

(assert (=> b!593868 (= e!339270 (= lt!269651 lt!269647))))

(declare-fun b!593869 () Bool)

(declare-fun e!339262 () Bool)

(assert (=> b!593869 (= e!339262 e!339268)))

(declare-fun res!380206 () Bool)

(assert (=> b!593869 (=> res!380206 e!339268)))

(assert (=> b!593869 (= res!380206 (or (bvsgt #b00000000000000000000000000000000 (size!18087 a!2986)) (bvsge (size!18087 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!593869 (arrayContainsKey!0 lt!269654 (select (arr!17723 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269650 () Unit!18624)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36922 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18624)

(assert (=> b!593869 (= lt!269650 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269654 (select (arr!17723 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!593870 () Bool)

(assert (=> b!593870 (= e!339269 e!339262)))

(declare-fun res!380199 () Bool)

(assert (=> b!593870 (=> res!380199 e!339262)))

(assert (=> b!593870 (= res!380199 (or (not (= (select (arr!17723 a!2986) j!136) lt!269655)) (not (= (select (arr!17723 a!2986) j!136) lt!269646)) (bvsge j!136 index!984)))))

(assert (=> b!593870 e!339265))

(declare-fun res!380197 () Bool)

(assert (=> b!593870 (=> (not res!380197) (not e!339265))))

(assert (=> b!593870 (= res!380197 (= lt!269646 (select (arr!17723 a!2986) j!136)))))

(assert (=> b!593870 (= lt!269646 (select (store (arr!17723 a!2986) i!1108 k!1786) index!984))))

(assert (= (and start!54424 res!380198) b!593851))

(assert (= (and b!593851 res!380203) b!593857))

(assert (= (and b!593857 res!380196) b!593867))

(assert (= (and b!593867 res!380204) b!593854))

(assert (= (and b!593854 res!380193) b!593852))

(assert (= (and b!593852 res!380210) b!593864))

(assert (= (and b!593864 res!380202) b!593859))

(assert (= (and b!593859 res!380200) b!593866))

(assert (= (and b!593866 res!380208) b!593865))

(assert (= (and b!593865 res!380201) b!593855))

(assert (= (and b!593855 res!380207) b!593853))

(assert (= (and b!593853 res!380191) b!593868))

(assert (= (and b!593853 c!67196) b!593863))

(assert (= (and b!593853 (not c!67196)) b!593862))

(assert (= (and b!593853 (not res!380195)) b!593870))

(assert (= (and b!593870 res!380197) b!593858))

(assert (= (and b!593858 (not res!380192)) b!593860))

(assert (= (and b!593860 res!380205) b!593850))

(assert (= (and b!593870 (not res!380199)) b!593869))

(assert (= (and b!593869 (not res!380206)) b!593856))

(assert (= (and b!593856 (not res!380209)) b!593861))

(assert (= (and b!593861 res!380194) b!593849))

(declare-fun m!571759 () Bool)

(assert (=> b!593865 m!571759))

(declare-fun m!571761 () Bool)

(assert (=> b!593865 m!571761))

(declare-fun m!571763 () Bool)

(assert (=> start!54424 m!571763))

(declare-fun m!571765 () Bool)

(assert (=> start!54424 m!571765))

(declare-fun m!571767 () Bool)

(assert (=> b!593857 m!571767))

(assert (=> b!593857 m!571767))

(declare-fun m!571769 () Bool)

(assert (=> b!593857 m!571769))

(declare-fun m!571771 () Bool)

(assert (=> b!593854 m!571771))

(assert (=> b!593869 m!571767))

(assert (=> b!593869 m!571767))

(declare-fun m!571773 () Bool)

(assert (=> b!593869 m!571773))

(assert (=> b!593869 m!571767))

(declare-fun m!571775 () Bool)

(assert (=> b!593869 m!571775))

(declare-fun m!571777 () Bool)

(assert (=> b!593852 m!571777))

(declare-fun m!571779 () Bool)

(assert (=> b!593864 m!571779))

(declare-fun m!571781 () Bool)

(assert (=> b!593867 m!571781))

(declare-fun m!571783 () Bool)

(assert (=> b!593861 m!571783))

(assert (=> b!593860 m!571767))

(assert (=> b!593860 m!571767))

(declare-fun m!571785 () Bool)

(assert (=> b!593860 m!571785))

(declare-fun m!571787 () Bool)

(assert (=> b!593853 m!571787))

(declare-fun m!571789 () Bool)

(assert (=> b!593853 m!571789))

(assert (=> b!593853 m!571767))

(assert (=> b!593853 m!571759))

(declare-fun m!571791 () Bool)

(assert (=> b!593853 m!571791))

(declare-fun m!571793 () Bool)

(assert (=> b!593853 m!571793))

(assert (=> b!593853 m!571767))

(declare-fun m!571795 () Bool)

(assert (=> b!593853 m!571795))

(declare-fun m!571797 () Bool)

(assert (=> b!593853 m!571797))

(declare-fun m!571799 () Bool)

(assert (=> b!593866 m!571799))

(declare-fun m!571801 () Bool)

(assert (=> b!593859 m!571801))

(assert (=> b!593870 m!571767))

(assert (=> b!593870 m!571759))

(declare-fun m!571803 () Bool)

(assert (=> b!593870 m!571803))

(declare-fun m!571805 () Bool)

(assert (=> b!593849 m!571805))

(assert (=> b!593858 m!571767))

(assert (=> b!593850 m!571767))

(assert (=> b!593850 m!571767))

(declare-fun m!571807 () Bool)

(assert (=> b!593850 m!571807))

(declare-fun m!571809 () Bool)

(assert (=> b!593856 m!571809))

(declare-fun m!571811 () Bool)

(assert (=> b!593855 m!571811))

(assert (=> b!593855 m!571767))

(assert (=> b!593855 m!571767))

(declare-fun m!571813 () Bool)

(assert (=> b!593855 m!571813))

(push 1)

(assert (not b!593859))

(assert (not b!593864))

(assert (not b!593855))

(assert (not b!593852))

(assert (not b!593867))

(assert (not b!593856))

(assert (not b!593869))

(assert (not b!593860))

(assert (not start!54424))

(assert (not b!593857))

(assert (not b!593850))

(assert (not b!593854))

(assert (not b!593853))

(assert (not b!593849))

(assert (not b!593861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!86439 () Bool)

(assert (=> d!86439 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!54424 d!86439))

(declare-fun d!86451 () Bool)

(assert (=> d!86451 (= (array_inv!13497 a!2986) (bvsge (size!18087 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!54424 d!86451))

(declare-fun d!86453 () Bool)

(declare-fun res!380251 () Bool)

(declare-fun e!339317 () Bool)

(assert (=> d!86453 (=> res!380251 e!339317)))

(assert (=> d!86453 (= res!380251 (= (select (arr!17723 lt!269654) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17723 a!2986) j!136)))))

(assert (=> d!86453 (= (arrayContainsKey!0 lt!269654 (select (arr!17723 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!339317)))

(declare-fun b!593921 () Bool)

(declare-fun e!339318 () Bool)

(assert (=> b!593921 (= e!339317 e!339318)))

(declare-fun res!380252 () Bool)

(assert (=> b!593921 (=> (not res!380252) (not e!339318))))

(assert (=> b!593921 (= res!380252 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18087 lt!269654)))))

(declare-fun b!593922 () Bool)

(assert (=> b!593922 (= e!339318 (arrayContainsKey!0 lt!269654 (select (arr!17723 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!86453 (not res!380251)) b!593921))

(assert (= (and b!593921 res!380252) b!593922))

(declare-fun m!571853 () Bool)

(assert (=> d!86453 m!571853))

(assert (=> b!593922 m!571767))

(declare-fun m!571855 () Bool)

(assert (=> b!593922 m!571855))

(assert (=> b!593869 d!86453))

(declare-fun d!86455 () Bool)

(assert (=> d!86455 (arrayContainsKey!0 lt!269654 (select (arr!17723 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!269683 () Unit!18624)

(declare-fun choose!114 (array!36922 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18624)

(assert (=> d!86455 (= lt!269683 (choose!114 lt!269654 (select (arr!17723 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!86455 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!86455 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!269654 (select (arr!17723 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!269683)))

(declare-fun bs!18315 () Bool)

(assert (= bs!18315 d!86455))

(assert (=> bs!18315 m!571767))

(assert (=> bs!18315 m!571773))

(assert (=> bs!18315 m!571767))

(declare-fun m!571857 () Bool)

(assert (=> bs!18315 m!571857))

(assert (=> b!593869 d!86455))

(declare-fun d!86457 () Bool)

(assert (=> d!86457 (= (validKeyInArray!0 (select (arr!17723 a!2986) j!136)) (and (not (= (select (arr!17723 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17723 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!593857 d!86457))

(declare-fun d!86461 () Bool)

(declare-fun res!380263 () Bool)

(declare-fun e!339330 () Bool)

(assert (=> d!86461 (=> res!380263 e!339330)))

(assert (=> d!86461 (= res!380263 (is-Nil!11814 Nil!11814))))

(assert (=> d!86461 (= (noDuplicate!237 Nil!11814) e!339330)))

(declare-fun b!593935 () Bool)

(declare-fun e!339331 () Bool)

(assert (=> b!593935 (= e!339330 e!339331)))

(declare-fun res!380264 () Bool)

(assert (=> b!593935 (=> (not res!380264) (not e!339331))))

(assert (=> b!593935 (= res!380264 (not (contains!2921 (t!18053 Nil!11814) (h!12858 Nil!11814))))))

(declare-fun b!593936 () Bool)

(assert (=> b!593936 (= e!339331 (noDuplicate!237 (t!18053 Nil!11814)))))

(assert (= (and d!86461 (not res!380263)) b!593935))

(assert (= (and b!593935 res!380264) b!593936))

(declare-fun m!571871 () Bool)

(assert (=> b!593935 m!571871))

(declare-fun m!571873 () Bool)

(assert (=> b!593936 m!571873))

(assert (=> b!593856 d!86461))

(declare-fun d!86465 () Bool)

(assert (=> d!86465 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!593867 d!86465))

(declare-fun e!339362 () SeekEntryResult!6170)

(declare-fun b!593980 () Bool)

(assert (=> b!593980 (= e!339362 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17723 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!86467 () Bool)

(declare-fun lt!269695 () SeekEntryResult!6170)

(assert (=> d!86467 (and (or (is-Undefined!6170 lt!269695) (not (is-Found!6170 lt!269695)) (and (bvsge (index!26925 lt!269695) #b00000000000000000000000000000000) (bvslt (index!26925 lt!269695) (size!18087 a!2986)))) (or (is-Undefined!6170 lt!269695) (is-Found!6170 lt!269695) (not (is-MissingVacant!6170 lt!269695)) (not (= (index!26927 lt!269695) vacantSpotIndex!68)) (and (bvsge (index!26927 lt!269695) #b00000000000000000000000000000000) (bvslt (index!26927 lt!269695) (size!18087 a!2986)))) (or (is-Undefined!6170 lt!269695) (ite (is-Found!6170 lt!269695) (= (select (arr!17723 a!2986) (index!26925 lt!269695)) (select (arr!17723 a!2986) j!136)) (and (is-MissingVacant!6170 lt!269695) (= (index!26927 lt!269695) vacantSpotIndex!68) (= (select (arr!17723 a!2986) (index!26927 lt!269695)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!339361 () SeekEntryResult!6170)

(assert (=> d!86467 (= lt!269695 e!339361)))

(declare-fun c!67219 () Bool)

(assert (=> d!86467 (= c!67219 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!269694 () (_ BitVec 64))

(assert (=> d!86467 (= lt!269694 (select (arr!17723 a!2986) index!984))))

(assert (=> d!86467 (validMask!0 mask!3053)))

(assert (=> d!86467 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17723 a!2986) j!136) a!2986 mask!3053) lt!269695)))

(declare-fun b!593981 () Bool)

(declare-fun e!339360 () SeekEntryResult!6170)

(assert (=> b!593981 (= e!339360 (Found!6170 index!984))))

(declare-fun b!593982 () Bool)

(declare-fun c!67220 () Bool)

(assert (=> b!593982 (= c!67220 (= lt!269694 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!593982 (= e!339360 e!339362)))

(declare-fun b!593983 () Bool)

(assert (=> b!593983 (= e!339361 e!339360)))

(declare-fun c!67218 () Bool)

(assert (=> b!593983 (= c!67218 (= lt!269694 (select (arr!17723 a!2986) j!136)))))

(declare-fun b!593984 () Bool)

(assert (=> b!593984 (= e!339361 Undefined!6170)))

(declare-fun b!593985 () Bool)

(assert (=> b!593985 (= e!339362 (MissingVacant!6170 vacantSpotIndex!68))))

(assert (= (and d!86467 c!67219) b!593984))

(assert (= (and d!86467 (not c!67219)) b!593983))

(assert (= (and b!593983 c!67218) b!593981))

(assert (= (and b!593983 (not c!67218)) b!593982))

(assert (= (and b!593982 c!67220) b!593985))

(assert (= (and b!593982 (not c!67220)) b!593980))

(assert (=> b!593980 m!571787))

(assert (=> b!593980 m!571787))

(assert (=> b!593980 m!571767))

(declare-fun m!571889 () Bool)

(assert (=> b!593980 m!571889))

(declare-fun m!571893 () Bool)

(assert (=> d!86467 m!571893))

(declare-fun m!571895 () Bool)

(assert (=> d!86467 m!571895))

(assert (=> d!86467 m!571811))

(assert (=> d!86467 m!571763))

(assert (=> b!593855 d!86467))

(declare-fun d!86479 () Bool)

(declare-fun res!380278 () Bool)

(declare-fun e!339366 () Bool)

(assert (=> d!86479 (=> res!380278 e!339366)))

(assert (=> d!86479 (= res!380278 (= (select (arr!17723 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!86479 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!339366)))

(declare-fun b!593992 () Bool)

(declare-fun e!339367 () Bool)

(assert (=> b!593992 (= e!339366 e!339367)))

(declare-fun res!380279 () Bool)

(assert (=> b!593992 (=> (not res!380279) (not e!339367))))

(assert (=> b!593992 (= res!380279 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18087 a!2986)))))

(declare-fun b!593993 () Bool)

(assert (=> b!593993 (= e!339367 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!86479 (not res!380278)) b!593992))

(assert (= (and b!593992 res!380279) b!593993))

(declare-fun m!571899 () Bool)

(assert (=> d!86479 m!571899))

(declare-fun m!571903 () Bool)

(assert (=> b!593993 m!571903))

(assert (=> b!593854 d!86479))

(declare-fun b!594005 () Bool)

(declare-fun e!339376 () Bool)

(declare-fun e!339377 () Bool)

(assert (=> b!594005 (= e!339376 e!339377)))

(declare-fun lt!269704 () (_ BitVec 64))

(assert (=> b!594005 (= lt!269704 (select (arr!17723 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!269706 () Unit!18624)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!36922 (_ BitVec 64) (_ BitVec 32)) Unit!18624)

(assert (=> b!594005 (= lt!269706 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!269704 #b00000000000000000000000000000000))))

(assert (=> b!594005 (arrayContainsKey!0 a!2986 lt!269704 #b00000000000000000000000000000000)))

(declare-fun lt!269705 () Unit!18624)

(assert (=> b!594005 (= lt!269705 lt!269706)))

(declare-fun res!380287 () Bool)

(assert (=> b!594005 (= res!380287 (= (seekEntryOrOpen!0 (select (arr!17723 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6170 #b00000000000000000000000000000000)))))

(assert (=> b!594005 (=> (not res!380287) (not e!339377))))

(declare-fun b!594006 () Bool)

(declare-fun call!32891 () Bool)

(assert (=> b!594006 (= e!339377 call!32891)))

(declare-fun bm!32888 () Bool)

(assert (=> bm!32888 (= call!32891 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!594007 () Bool)

(assert (=> b!594007 (= e!339376 call!32891)))

(declare-fun d!86483 () Bool)

(declare-fun res!380286 () Bool)

(declare-fun e!339378 () Bool)

(assert (=> d!86483 (=> res!380286 e!339378)))

(assert (=> d!86483 (= res!380286 (bvsge #b00000000000000000000000000000000 (size!18087 a!2986)))))

(assert (=> d!86483 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!339378)))

(declare-fun b!594004 () Bool)

(assert (=> b!594004 (= e!339378 e!339376)))

(declare-fun c!67226 () Bool)

(assert (=> b!594004 (= c!67226 (validKeyInArray!0 (select (arr!17723 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!86483 (not res!380286)) b!594004))

(assert (= (and b!594004 c!67226) b!594005))

(assert (= (and b!594004 (not c!67226)) b!594007))

(assert (= (and b!594005 res!380287) b!594006))

(assert (= (or b!594006 b!594007) bm!32888))

(assert (=> b!594005 m!571899))

(declare-fun m!571907 () Bool)

(assert (=> b!594005 m!571907))

(declare-fun m!571909 () Bool)

(assert (=> b!594005 m!571909))

(assert (=> b!594005 m!571899))

(declare-fun m!571911 () Bool)

(assert (=> b!594005 m!571911))

(declare-fun m!571913 () Bool)

(assert (=> bm!32888 m!571913))

(assert (=> b!594004 m!571899))

(assert (=> b!594004 m!571899))

(declare-fun m!571915 () Bool)

(assert (=> b!594004 m!571915))

(assert (=> b!593864 d!86483))

(declare-fun e!339381 () SeekEntryResult!6170)

(declare-fun b!594008 () Bool)

(assert (=> b!594008 (= e!339381 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269653 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!269655 lt!269654 mask!3053))))

(declare-fun lt!269708 () SeekEntryResult!6170)

(declare-fun d!86489 () Bool)

(assert (=> d!86489 (and (or (is-Undefined!6170 lt!269708) (not (is-Found!6170 lt!269708)) (and (bvsge (index!26925 lt!269708) #b00000000000000000000000000000000) (bvslt (index!26925 lt!269708) (size!18087 lt!269654)))) (or (is-Undefined!6170 lt!269708) (is-Found!6170 lt!269708) (not (is-MissingVacant!6170 lt!269708)) (not (= (index!26927 lt!269708) vacantSpotIndex!68)) (and (bvsge (index!26927 lt!269708) #b00000000000000000000000000000000) (bvslt (index!26927 lt!269708) (size!18087 lt!269654)))) (or (is-Undefined!6170 lt!269708) (ite (is-Found!6170 lt!269708) (= (select (arr!17723 lt!269654) (index!26925 lt!269708)) lt!269655) (and (is-MissingVacant!6170 lt!269708) (= (index!26927 lt!269708) vacantSpotIndex!68) (= (select (arr!17723 lt!269654) (index!26927 lt!269708)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!339380 () SeekEntryResult!6170)

(assert (=> d!86489 (= lt!269708 e!339380)))

(declare-fun c!67228 () Bool)

(assert (=> d!86489 (= c!67228 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!269707 () (_ BitVec 64))

(assert (=> d!86489 (= lt!269707 (select (arr!17723 lt!269654) lt!269653))))

(assert (=> d!86489 (validMask!0 mask!3053)))

(assert (=> d!86489 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269653 vacantSpotIndex!68 lt!269655 lt!269654 mask!3053) lt!269708)))

(declare-fun b!594009 () Bool)

(declare-fun e!339379 () SeekEntryResult!6170)

(assert (=> b!594009 (= e!339379 (Found!6170 lt!269653))))

(declare-fun b!594010 () Bool)

(declare-fun c!67229 () Bool)

(assert (=> b!594010 (= c!67229 (= lt!269707 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594010 (= e!339379 e!339381)))

(declare-fun b!594011 () Bool)

(assert (=> b!594011 (= e!339380 e!339379)))

(declare-fun c!67227 () Bool)

(assert (=> b!594011 (= c!67227 (= lt!269707 lt!269655))))

(declare-fun b!594012 () Bool)

(assert (=> b!594012 (= e!339380 Undefined!6170)))

(declare-fun b!594013 () Bool)

(assert (=> b!594013 (= e!339381 (MissingVacant!6170 vacantSpotIndex!68))))

(assert (= (and d!86489 c!67228) b!594012))

(assert (= (and d!86489 (not c!67228)) b!594011))

(assert (= (and b!594011 c!67227) b!594009))

(assert (= (and b!594011 (not c!67227)) b!594010))

(assert (= (and b!594010 c!67229) b!594013))

(assert (= (and b!594010 (not c!67229)) b!594008))

(declare-fun m!571921 () Bool)

(assert (=> b!594008 m!571921))

(assert (=> b!594008 m!571921))

(declare-fun m!571923 () Bool)

(assert (=> b!594008 m!571923))

(declare-fun m!571925 () Bool)

(assert (=> d!86489 m!571925))

(declare-fun m!571927 () Bool)

(assert (=> d!86489 m!571927))

(declare-fun m!571929 () Bool)

(assert (=> d!86489 m!571929))

(assert (=> d!86489 m!571763))

(assert (=> b!593853 d!86489))

(declare-fun b!594018 () Bool)

(declare-fun e!339388 () SeekEntryResult!6170)

(assert (=> b!594018 (= e!339388 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!269653 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17723 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!86495 () Bool)

(declare-fun lt!269711 () SeekEntryResult!6170)

(assert (=> d!86495 (and (or (is-Undefined!6170 lt!269711) (not (is-Found!6170 lt!269711)) (and (bvsge (index!26925 lt!269711) #b00000000000000000000000000000000) (bvslt (index!26925 lt!269711) (size!18087 a!2986)))) (or (is-Undefined!6170 lt!269711) (is-Found!6170 lt!269711) (not (is-MissingVacant!6170 lt!269711)) (not (= (index!26927 lt!269711) vacantSpotIndex!68)) (and (bvsge (index!26927 lt!269711) #b00000000000000000000000000000000) (bvslt (index!26927 lt!269711) (size!18087 a!2986)))) (or (is-Undefined!6170 lt!269711) (ite (is-Found!6170 lt!269711) (= (select (arr!17723 a!2986) (index!26925 lt!269711)) (select (arr!17723 a!2986) j!136)) (and (is-MissingVacant!6170 lt!269711) (= (index!26927 lt!269711) vacantSpotIndex!68) (= (select (arr!17723 a!2986) (index!26927 lt!269711)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!339387 () SeekEntryResult!6170)

(assert (=> d!86495 (= lt!269711 e!339387)))

(declare-fun c!67231 () Bool)

(assert (=> d!86495 (= c!67231 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!269710 () (_ BitVec 64))

(assert (=> d!86495 (= lt!269710 (select (arr!17723 a!2986) lt!269653))))

(assert (=> d!86495 (validMask!0 mask!3053)))

(assert (=> d!86495 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269653 vacantSpotIndex!68 (select (arr!17723 a!2986) j!136) a!2986 mask!3053) lt!269711)))

(declare-fun b!594019 () Bool)

(declare-fun e!339386 () SeekEntryResult!6170)

(assert (=> b!594019 (= e!339386 (Found!6170 lt!269653))))

(declare-fun b!594020 () Bool)

(declare-fun c!67232 () Bool)

(assert (=> b!594020 (= c!67232 (= lt!269710 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594020 (= e!339386 e!339388)))

(declare-fun b!594021 () Bool)

(assert (=> b!594021 (= e!339387 e!339386)))

(declare-fun c!67230 () Bool)

(assert (=> b!594021 (= c!67230 (= lt!269710 (select (arr!17723 a!2986) j!136)))))

(declare-fun b!594022 () Bool)

(assert (=> b!594022 (= e!339387 Undefined!6170)))

(declare-fun b!594023 () Bool)

(assert (=> b!594023 (= e!339388 (MissingVacant!6170 vacantSpotIndex!68))))

(assert (= (and d!86495 c!67231) b!594022))

(assert (= (and d!86495 (not c!67231)) b!594021))

(assert (= (and b!594021 c!67230) b!594019))

(assert (= (and b!594021 (not c!67230)) b!594020))

(assert (= (and b!594020 c!67232) b!594023))

(assert (= (and b!594020 (not c!67232)) b!594018))

(assert (=> b!594018 m!571921))

(assert (=> b!594018 m!571921))

(assert (=> b!594018 m!571767))

(declare-fun m!571933 () Bool)

(assert (=> b!594018 m!571933))

(declare-fun m!571935 () Bool)

(assert (=> d!86495 m!571935))

(declare-fun m!571937 () Bool)

(assert (=> d!86495 m!571937))

(declare-fun m!571939 () Bool)

(assert (=> d!86495 m!571939))

(assert (=> d!86495 m!571763))

(assert (=> b!593853 d!86495))

(declare-fun d!86501 () Bool)

(declare-fun lt!269716 () (_ BitVec 32))

(assert (=> d!86501 (and (bvsge lt!269716 #b00000000000000000000000000000000) (bvslt lt!269716 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!86501 (= lt!269716 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!86501 (validMask!0 mask!3053)))

(assert (=> d!86501 (= (nextIndex!0 index!984 x!910 mask!3053) lt!269716)))

(declare-fun bs!18316 () Bool)

(assert (= bs!18316 d!86501))

(declare-fun m!571947 () Bool)

(assert (=> bs!18316 m!571947))

(assert (=> bs!18316 m!571763))

(assert (=> b!593853 d!86501))

(declare-fun e!339394 () SeekEntryResult!6170)

(declare-fun b!594030 () Bool)

(assert (=> b!594030 (= e!339394 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!269655 lt!269654 mask!3053))))

(declare-fun d!86505 () Bool)

(declare-fun lt!269718 () SeekEntryResult!6170)

(assert (=> d!86505 (and (or (is-Undefined!6170 lt!269718) (not (is-Found!6170 lt!269718)) (and (bvsge (index!26925 lt!269718) #b00000000000000000000000000000000) (bvslt (index!26925 lt!269718) (size!18087 lt!269654)))) (or (is-Undefined!6170 lt!269718) (is-Found!6170 lt!269718) (not (is-MissingVacant!6170 lt!269718)) (not (= (index!26927 lt!269718) vacantSpotIndex!68)) (and (bvsge (index!26927 lt!269718) #b00000000000000000000000000000000) (bvslt (index!26927 lt!269718) (size!18087 lt!269654)))) (or (is-Undefined!6170 lt!269718) (ite (is-Found!6170 lt!269718) (= (select (arr!17723 lt!269654) (index!26925 lt!269718)) lt!269655) (and (is-MissingVacant!6170 lt!269718) (= (index!26927 lt!269718) vacantSpotIndex!68) (= (select (arr!17723 lt!269654) (index!26927 lt!269718)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!339393 () SeekEntryResult!6170)

(assert (=> d!86505 (= lt!269718 e!339393)))

(declare-fun c!67237 () Bool)

(assert (=> d!86505 (= c!67237 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!269717 () (_ BitVec 64))

(assert (=> d!86505 (= lt!269717 (select (arr!17723 lt!269654) index!984))))

(assert (=> d!86505 (validMask!0 mask!3053)))

(assert (=> d!86505 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!269655 lt!269654 mask!3053) lt!269718)))

(declare-fun b!594031 () Bool)

(declare-fun e!339392 () SeekEntryResult!6170)

(assert (=> b!594031 (= e!339392 (Found!6170 index!984))))

(declare-fun b!594032 () Bool)

(declare-fun c!67238 () Bool)

(assert (=> b!594032 (= c!67238 (= lt!269717 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594032 (= e!339392 e!339394)))

(declare-fun b!594033 () Bool)

(assert (=> b!594033 (= e!339393 e!339392)))

(declare-fun c!67236 () Bool)

(assert (=> b!594033 (= c!67236 (= lt!269717 lt!269655))))

(declare-fun b!594034 () Bool)

(assert (=> b!594034 (= e!339393 Undefined!6170)))

(declare-fun b!594035 () Bool)

(assert (=> b!594035 (= e!339394 (MissingVacant!6170 vacantSpotIndex!68))))

(assert (= (and d!86505 c!67237) b!594034))

(assert (= (and d!86505 (not c!67237)) b!594033))

(assert (= (and b!594033 c!67236) b!594031))

(assert (= (and b!594033 (not c!67236)) b!594032))

(assert (= (and b!594032 c!67238) b!594035))

(assert (= (and b!594032 (not c!67238)) b!594030))

(assert (=> b!594030 m!571787))

(assert (=> b!594030 m!571787))

(declare-fun m!571949 () Bool)

(assert (=> b!594030 m!571949))

(declare-fun m!571951 () Bool)

(assert (=> d!86505 m!571951))

(declare-fun m!571953 () Bool)

(assert (=> d!86505 m!571953))

(declare-fun m!571955 () Bool)

(assert (=> d!86505 m!571955))

(assert (=> d!86505 m!571763))

(assert (=> b!593853 d!86505))

(declare-fun d!86507 () Bool)

(declare-fun e!339406 () Bool)

(assert (=> d!86507 e!339406))

(declare-fun res!380297 () Bool)

(assert (=> d!86507 (=> (not res!380297) (not e!339406))))

(assert (=> d!86507 (= res!380297 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18087 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18087 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18087 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18087 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18087 a!2986))))))

(declare-fun lt!269733 () Unit!18624)

(declare-fun choose!9 (array!36922 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18624)

(assert (=> d!86507 (= lt!269733 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269653 vacantSpotIndex!68 mask!3053))))

(assert (=> d!86507 (validMask!0 mask!3053)))

(assert (=> d!86507 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!269653 vacantSpotIndex!68 mask!3053) lt!269733)))

(declare-fun b!594053 () Bool)

(assert (=> b!594053 (= e!339406 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269653 vacantSpotIndex!68 (select (arr!17723 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!269653 vacantSpotIndex!68 (select (store (arr!17723 a!2986) i!1108 k!1786) j!136) (array!36923 (store (arr!17723 a!2986) i!1108 k!1786) (size!18087 a!2986)) mask!3053)))))

(assert (= (and d!86507 res!380297) b!594053))

(declare-fun m!571963 () Bool)

(assert (=> d!86507 m!571963))

(assert (=> d!86507 m!571763))

(assert (=> b!594053 m!571789))

(declare-fun m!571965 () Bool)

(assert (=> b!594053 m!571965))

(assert (=> b!594053 m!571767))

(assert (=> b!594053 m!571795))

(assert (=> b!594053 m!571767))

(assert (=> b!594053 m!571789))

(assert (=> b!594053 m!571759))

(assert (=> b!593853 d!86507))

(declare-fun e!339439 () SeekEntryResult!6170)

(declare-fun b!594103 () Bool)

(declare-fun lt!269748 () SeekEntryResult!6170)

(assert (=> b!594103 (= e!339439 (seekKeyOrZeroReturnVacant!0 (x!55750 lt!269748) (index!26926 lt!269748) (index!26926 lt!269748) k!1786 a!2986 mask!3053))))

(declare-fun b!594104 () Bool)

(declare-fun e!339440 () SeekEntryResult!6170)

(assert (=> b!594104 (= e!339440 (Found!6170 (index!26926 lt!269748)))))

(declare-fun b!594105 () Bool)

(declare-fun c!67263 () Bool)

(declare-fun lt!269749 () (_ BitVec 64))

(assert (=> b!594105 (= c!67263 (= lt!269749 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594105 (= e!339440 e!339439)))

(declare-fun b!594106 () Bool)

(declare-fun e!339438 () SeekEntryResult!6170)

(assert (=> b!594106 (= e!339438 e!339440)))

(assert (=> b!594106 (= lt!269749 (select (arr!17723 a!2986) (index!26926 lt!269748)))))

(declare-fun c!67265 () Bool)

(assert (=> b!594106 (= c!67265 (= lt!269749 k!1786))))

(declare-fun b!594107 () Bool)

(assert (=> b!594107 (= e!339438 Undefined!6170)))

(declare-fun d!86513 () Bool)

(declare-fun lt!269750 () SeekEntryResult!6170)

(assert (=> d!86513 (and (or (is-Undefined!6170 lt!269750) (not (is-Found!6170 lt!269750)) (and (bvsge (index!26925 lt!269750) #b00000000000000000000000000000000) (bvslt (index!26925 lt!269750) (size!18087 a!2986)))) (or (is-Undefined!6170 lt!269750) (is-Found!6170 lt!269750) (not (is-MissingZero!6170 lt!269750)) (and (bvsge (index!26924 lt!269750) #b00000000000000000000000000000000) (bvslt (index!26924 lt!269750) (size!18087 a!2986)))) (or (is-Undefined!6170 lt!269750) (is-Found!6170 lt!269750) (is-MissingZero!6170 lt!269750) (not (is-MissingVacant!6170 lt!269750)) (and (bvsge (index!26927 lt!269750) #b00000000000000000000000000000000) (bvslt (index!26927 lt!269750) (size!18087 a!2986)))) (or (is-Undefined!6170 lt!269750) (ite (is-Found!6170 lt!269750) (= (select (arr!17723 a!2986) (index!26925 lt!269750)) k!1786) (ite (is-MissingZero!6170 lt!269750) (= (select (arr!17723 a!2986) (index!26924 lt!269750)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6170 lt!269750) (= (select (arr!17723 a!2986) (index!26927 lt!269750)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!86513 (= lt!269750 e!339438)))

(declare-fun c!67264 () Bool)

(assert (=> d!86513 (= c!67264 (and (is-Intermediate!6170 lt!269748) (undefined!6982 lt!269748)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36922 (_ BitVec 32)) SeekEntryResult!6170)

