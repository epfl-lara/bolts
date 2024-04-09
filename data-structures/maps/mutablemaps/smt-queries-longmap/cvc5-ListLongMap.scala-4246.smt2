; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58878 () Bool)

(assert start!58878)

(declare-fun b!648672 () Bool)

(declare-fun e!372069 () Bool)

(declare-fun e!372061 () Bool)

(assert (=> b!648672 (= e!372069 e!372061)))

(declare-fun res!420442 () Bool)

(assert (=> b!648672 (=> res!420442 e!372061)))

(declare-datatypes ((array!38496 0))(
  ( (array!38497 (arr!18450 (Array (_ BitVec 32) (_ BitVec 64))) (size!18814 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38496)

(assert (=> b!648672 (= res!420442 (or (bvsge (size!18814 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18814 a!2986))))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!301169 () array!38496)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38496 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!648672 (arrayContainsKey!0 lt!301169 (select (arr!18450 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-datatypes ((Unit!22054 0))(
  ( (Unit!22055) )
))
(declare-fun lt!301164 () Unit!22054)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38496 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22054)

(assert (=> b!648672 (= lt!301164 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301169 (select (arr!18450 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!372057 () Bool)

(assert (=> b!648672 e!372057))

(declare-fun res!420430 () Bool)

(assert (=> b!648672 (=> (not res!420430) (not e!372057))))

(assert (=> b!648672 (= res!420430 (arrayContainsKey!0 lt!301169 (select (arr!18450 a!2986) j!136) j!136))))

(declare-fun res!420435 () Bool)

(declare-fun e!372060 () Bool)

(assert (=> start!58878 (=> (not res!420435) (not e!372060))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58878 (= res!420435 (validMask!0 mask!3053))))

(assert (=> start!58878 e!372060))

(assert (=> start!58878 true))

(declare-fun array_inv!14224 (array!38496) Bool)

(assert (=> start!58878 (array_inv!14224 a!2986)))

(declare-fun b!648673 () Bool)

(declare-fun res!420446 () Bool)

(assert (=> b!648673 (=> res!420446 e!372061)))

(declare-datatypes ((List!12544 0))(
  ( (Nil!12541) (Cons!12540 (h!13585 (_ BitVec 64)) (t!18780 List!12544)) )
))
(declare-fun noDuplicate!427 (List!12544) Bool)

(assert (=> b!648673 (= res!420446 (not (noDuplicate!427 Nil!12541)))))

(declare-fun b!648674 () Bool)

(declare-fun res!420427 () Bool)

(assert (=> b!648674 (=> (not res!420427) (not e!372060))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!648674 (= res!420427 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!648675 () Bool)

(declare-fun e!372065 () Bool)

(declare-fun e!372063 () Bool)

(assert (=> b!648675 (= e!372065 e!372063)))

(declare-fun res!420433 () Bool)

(assert (=> b!648675 (=> (not res!420433) (not e!372063))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6897 0))(
  ( (MissingZero!6897 (index!29934 (_ BitVec 32))) (Found!6897 (index!29935 (_ BitVec 32))) (Intermediate!6897 (undefined!7709 Bool) (index!29936 (_ BitVec 32)) (x!58751 (_ BitVec 32))) (Undefined!6897) (MissingVacant!6897 (index!29937 (_ BitVec 32))) )
))
(declare-fun lt!301166 () SeekEntryResult!6897)

(assert (=> b!648675 (= res!420433 (and (= lt!301166 (Found!6897 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18450 a!2986) index!984) (select (arr!18450 a!2986) j!136))) (not (= (select (arr!18450 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38496 (_ BitVec 32)) SeekEntryResult!6897)

(assert (=> b!648675 (= lt!301166 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18450 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!648676 () Bool)

(declare-fun res!420436 () Bool)

(assert (=> b!648676 (=> res!420436 e!372061)))

(declare-fun contains!3167 (List!12544 (_ BitVec 64)) Bool)

(assert (=> b!648676 (= res!420436 (contains!3167 Nil!12541 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648677 () Bool)

(declare-fun e!372062 () Bool)

(assert (=> b!648677 (= e!372062 e!372069)))

(declare-fun res!420439 () Bool)

(assert (=> b!648677 (=> res!420439 e!372069)))

(assert (=> b!648677 (= res!420439 (bvsge index!984 j!136))))

(declare-fun lt!301179 () Unit!22054)

(declare-fun e!372066 () Unit!22054)

(assert (=> b!648677 (= lt!301179 e!372066)))

(declare-fun c!74492 () Bool)

(assert (=> b!648677 (= c!74492 (bvslt j!136 index!984))))

(declare-fun b!648678 () Bool)

(declare-fun e!372059 () Bool)

(assert (=> b!648678 (= e!372060 e!372059)))

(declare-fun res!420440 () Bool)

(assert (=> b!648678 (=> (not res!420440) (not e!372059))))

(declare-fun lt!301178 () SeekEntryResult!6897)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!648678 (= res!420440 (or (= lt!301178 (MissingZero!6897 i!1108)) (= lt!301178 (MissingVacant!6897 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38496 (_ BitVec 32)) SeekEntryResult!6897)

(assert (=> b!648678 (= lt!301178 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!648679 () Bool)

(declare-fun e!372056 () Bool)

(declare-fun e!372055 () Bool)

(assert (=> b!648679 (= e!372056 e!372055)))

(declare-fun res!420443 () Bool)

(assert (=> b!648679 (=> res!420443 e!372055)))

(declare-fun lt!301173 () (_ BitVec 64))

(declare-fun lt!301171 () (_ BitVec 64))

(assert (=> b!648679 (= res!420443 (or (not (= (select (arr!18450 a!2986) j!136) lt!301173)) (not (= (select (arr!18450 a!2986) j!136) lt!301171)) (bvsge j!136 index!984)))))

(declare-fun b!648680 () Bool)

(declare-fun e!372070 () Unit!22054)

(declare-fun Unit!22056 () Unit!22054)

(assert (=> b!648680 (= e!372070 Unit!22056)))

(declare-fun b!648681 () Bool)

(assert (=> b!648681 (= e!372059 e!372065)))

(declare-fun res!420437 () Bool)

(assert (=> b!648681 (=> (not res!420437) (not e!372065))))

(assert (=> b!648681 (= res!420437 (= (select (store (arr!18450 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!648681 (= lt!301169 (array!38497 (store (arr!18450 a!2986) i!1108 k!1786) (size!18814 a!2986)))))

(declare-fun b!648682 () Bool)

(declare-fun e!372068 () Bool)

(assert (=> b!648682 (= e!372068 e!372062)))

(declare-fun res!420441 () Bool)

(assert (=> b!648682 (=> res!420441 e!372062)))

(assert (=> b!648682 (= res!420441 (or (not (= (select (arr!18450 a!2986) j!136) lt!301173)) (not (= (select (arr!18450 a!2986) j!136) lt!301171))))))

(assert (=> b!648682 e!372056))

(declare-fun res!420434 () Bool)

(assert (=> b!648682 (=> (not res!420434) (not e!372056))))

(assert (=> b!648682 (= res!420434 (= lt!301171 (select (arr!18450 a!2986) j!136)))))

(assert (=> b!648682 (= lt!301171 (select (store (arr!18450 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!648683 () Bool)

(declare-fun res!420425 () Bool)

(assert (=> b!648683 (=> (not res!420425) (not e!372059))))

(assert (=> b!648683 (= res!420425 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18450 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!648684 () Bool)

(declare-fun e!372067 () Bool)

(assert (=> b!648684 (= e!372055 e!372067)))

(declare-fun res!420432 () Bool)

(assert (=> b!648684 (=> (not res!420432) (not e!372067))))

(assert (=> b!648684 (= res!420432 (arrayContainsKey!0 lt!301169 (select (arr!18450 a!2986) j!136) j!136))))

(declare-fun b!648685 () Bool)

(declare-fun Unit!22057 () Unit!22054)

(assert (=> b!648685 (= e!372070 Unit!22057)))

(assert (=> b!648685 false))

(declare-fun b!648686 () Bool)

(assert (=> b!648686 (= e!372067 (arrayContainsKey!0 lt!301169 (select (arr!18450 a!2986) j!136) index!984))))

(declare-fun b!648687 () Bool)

(declare-fun Unit!22058 () Unit!22054)

(assert (=> b!648687 (= e!372066 Unit!22058)))

(declare-fun b!648688 () Bool)

(declare-fun res!420445 () Bool)

(assert (=> b!648688 (=> (not res!420445) (not e!372059))))

(declare-fun arrayNoDuplicates!0 (array!38496 (_ BitVec 32) List!12544) Bool)

(assert (=> b!648688 (= res!420445 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12541))))

(declare-fun b!648689 () Bool)

(assert (=> b!648689 (= e!372057 (arrayContainsKey!0 lt!301169 (select (arr!18450 a!2986) j!136) index!984))))

(declare-fun b!648690 () Bool)

(assert (=> b!648690 (= e!372063 (not e!372068))))

(declare-fun res!420429 () Bool)

(assert (=> b!648690 (=> res!420429 e!372068)))

(declare-fun lt!301165 () SeekEntryResult!6897)

(assert (=> b!648690 (= res!420429 (not (= lt!301165 (Found!6897 index!984))))))

(declare-fun lt!301167 () Unit!22054)

(assert (=> b!648690 (= lt!301167 e!372070)))

(declare-fun c!74491 () Bool)

(assert (=> b!648690 (= c!74491 (= lt!301165 Undefined!6897))))

(assert (=> b!648690 (= lt!301165 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!301173 lt!301169 mask!3053))))

(declare-fun e!372064 () Bool)

(assert (=> b!648690 e!372064))

(declare-fun res!420444 () Bool)

(assert (=> b!648690 (=> (not res!420444) (not e!372064))))

(declare-fun lt!301172 () SeekEntryResult!6897)

(declare-fun lt!301168 () (_ BitVec 32))

(assert (=> b!648690 (= res!420444 (= lt!301172 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301168 vacantSpotIndex!68 lt!301173 lt!301169 mask!3053)))))

(assert (=> b!648690 (= lt!301172 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!301168 vacantSpotIndex!68 (select (arr!18450 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!648690 (= lt!301173 (select (store (arr!18450 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!301176 () Unit!22054)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38496 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22054)

(assert (=> b!648690 (= lt!301176 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!301168 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!648690 (= lt!301168 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!648691 () Bool)

(declare-fun Unit!22059 () Unit!22054)

(assert (=> b!648691 (= e!372066 Unit!22059)))

(declare-fun lt!301163 () Unit!22054)

(assert (=> b!648691 (= lt!301163 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!301169 (select (arr!18450 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!648691 (arrayContainsKey!0 lt!301169 (select (arr!18450 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!301174 () Unit!22054)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38496 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12544) Unit!22054)

(assert (=> b!648691 (= lt!301174 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12541))))

(assert (=> b!648691 (arrayNoDuplicates!0 lt!301169 #b00000000000000000000000000000000 Nil!12541)))

(declare-fun lt!301177 () Unit!22054)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38496 (_ BitVec 32) (_ BitVec 32)) Unit!22054)

(assert (=> b!648691 (= lt!301177 (lemmaNoDuplicateFromThenFromBigger!0 lt!301169 #b00000000000000000000000000000000 j!136))))

(assert (=> b!648691 (arrayNoDuplicates!0 lt!301169 j!136 Nil!12541)))

(declare-fun lt!301175 () Unit!22054)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38496 (_ BitVec 64) (_ BitVec 32) List!12544) Unit!22054)

(assert (=> b!648691 (= lt!301175 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!301169 (select (arr!18450 a!2986) j!136) j!136 Nil!12541))))

(assert (=> b!648691 false))

(declare-fun b!648692 () Bool)

(declare-fun res!420428 () Bool)

(assert (=> b!648692 (=> (not res!420428) (not e!372059))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38496 (_ BitVec 32)) Bool)

(assert (=> b!648692 (= res!420428 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!648693 () Bool)

(declare-fun res!420424 () Bool)

(assert (=> b!648693 (=> (not res!420424) (not e!372060))))

(assert (=> b!648693 (= res!420424 (and (= (size!18814 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18814 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18814 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!648694 () Bool)

(declare-fun res!420438 () Bool)

(assert (=> b!648694 (=> res!420438 e!372061)))

(assert (=> b!648694 (= res!420438 (contains!3167 Nil!12541 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!648695 () Bool)

(declare-fun res!420431 () Bool)

(assert (=> b!648695 (=> (not res!420431) (not e!372060))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!648695 (= res!420431 (validKeyInArray!0 k!1786))))

(declare-fun b!648696 () Bool)

(assert (=> b!648696 (= e!372061 true)))

(declare-fun lt!301170 () Bool)

(assert (=> b!648696 (= lt!301170 (contains!3167 Nil!12541 k!1786))))

(declare-fun b!648697 () Bool)

(assert (=> b!648697 (= e!372064 (= lt!301166 lt!301172))))

(declare-fun b!648698 () Bool)

(declare-fun res!420426 () Bool)

(assert (=> b!648698 (=> (not res!420426) (not e!372060))))

(assert (=> b!648698 (= res!420426 (validKeyInArray!0 (select (arr!18450 a!2986) j!136)))))

(assert (= (and start!58878 res!420435) b!648693))

(assert (= (and b!648693 res!420424) b!648698))

(assert (= (and b!648698 res!420426) b!648695))

(assert (= (and b!648695 res!420431) b!648674))

(assert (= (and b!648674 res!420427) b!648678))

(assert (= (and b!648678 res!420440) b!648692))

(assert (= (and b!648692 res!420428) b!648688))

(assert (= (and b!648688 res!420445) b!648683))

(assert (= (and b!648683 res!420425) b!648681))

(assert (= (and b!648681 res!420437) b!648675))

(assert (= (and b!648675 res!420433) b!648690))

(assert (= (and b!648690 res!420444) b!648697))

(assert (= (and b!648690 c!74491) b!648685))

(assert (= (and b!648690 (not c!74491)) b!648680))

(assert (= (and b!648690 (not res!420429)) b!648682))

(assert (= (and b!648682 res!420434) b!648679))

(assert (= (and b!648679 (not res!420443)) b!648684))

(assert (= (and b!648684 res!420432) b!648686))

(assert (= (and b!648682 (not res!420441)) b!648677))

(assert (= (and b!648677 c!74492) b!648691))

(assert (= (and b!648677 (not c!74492)) b!648687))

(assert (= (and b!648677 (not res!420439)) b!648672))

(assert (= (and b!648672 res!420430) b!648689))

(assert (= (and b!648672 (not res!420442)) b!648673))

(assert (= (and b!648673 (not res!420446)) b!648676))

(assert (= (and b!648676 (not res!420436)) b!648694))

(assert (= (and b!648694 (not res!420438)) b!648696))

(declare-fun m!622059 () Bool)

(assert (=> b!648696 m!622059))

(declare-fun m!622061 () Bool)

(assert (=> b!648686 m!622061))

(assert (=> b!648686 m!622061))

(declare-fun m!622063 () Bool)

(assert (=> b!648686 m!622063))

(assert (=> b!648682 m!622061))

(declare-fun m!622065 () Bool)

(assert (=> b!648682 m!622065))

(declare-fun m!622067 () Bool)

(assert (=> b!648682 m!622067))

(declare-fun m!622069 () Bool)

(assert (=> b!648673 m!622069))

(declare-fun m!622071 () Bool)

(assert (=> b!648674 m!622071))

(declare-fun m!622073 () Bool)

(assert (=> b!648676 m!622073))

(declare-fun m!622075 () Bool)

(assert (=> b!648678 m!622075))

(assert (=> b!648681 m!622065))

(declare-fun m!622077 () Bool)

(assert (=> b!648681 m!622077))

(declare-fun m!622079 () Bool)

(assert (=> b!648694 m!622079))

(declare-fun m!622081 () Bool)

(assert (=> start!58878 m!622081))

(declare-fun m!622083 () Bool)

(assert (=> start!58878 m!622083))

(assert (=> b!648689 m!622061))

(assert (=> b!648689 m!622061))

(assert (=> b!648689 m!622063))

(declare-fun m!622085 () Bool)

(assert (=> b!648688 m!622085))

(declare-fun m!622087 () Bool)

(assert (=> b!648683 m!622087))

(declare-fun m!622089 () Bool)

(assert (=> b!648690 m!622089))

(declare-fun m!622091 () Bool)

(assert (=> b!648690 m!622091))

(assert (=> b!648690 m!622061))

(assert (=> b!648690 m!622065))

(assert (=> b!648690 m!622061))

(declare-fun m!622093 () Bool)

(assert (=> b!648690 m!622093))

(declare-fun m!622095 () Bool)

(assert (=> b!648690 m!622095))

(declare-fun m!622097 () Bool)

(assert (=> b!648690 m!622097))

(declare-fun m!622099 () Bool)

(assert (=> b!648690 m!622099))

(declare-fun m!622101 () Bool)

(assert (=> b!648675 m!622101))

(assert (=> b!648675 m!622061))

(assert (=> b!648675 m!622061))

(declare-fun m!622103 () Bool)

(assert (=> b!648675 m!622103))

(assert (=> b!648691 m!622061))

(declare-fun m!622105 () Bool)

(assert (=> b!648691 m!622105))

(assert (=> b!648691 m!622061))

(declare-fun m!622107 () Bool)

(assert (=> b!648691 m!622107))

(declare-fun m!622109 () Bool)

(assert (=> b!648691 m!622109))

(assert (=> b!648691 m!622061))

(declare-fun m!622111 () Bool)

(assert (=> b!648691 m!622111))

(declare-fun m!622113 () Bool)

(assert (=> b!648691 m!622113))

(declare-fun m!622115 () Bool)

(assert (=> b!648691 m!622115))

(assert (=> b!648691 m!622061))

(declare-fun m!622117 () Bool)

(assert (=> b!648691 m!622117))

(assert (=> b!648684 m!622061))

(assert (=> b!648684 m!622061))

(declare-fun m!622119 () Bool)

(assert (=> b!648684 m!622119))

(assert (=> b!648698 m!622061))

(assert (=> b!648698 m!622061))

(declare-fun m!622121 () Bool)

(assert (=> b!648698 m!622121))

(declare-fun m!622123 () Bool)

(assert (=> b!648695 m!622123))

(declare-fun m!622125 () Bool)

(assert (=> b!648692 m!622125))

(assert (=> b!648679 m!622061))

(assert (=> b!648672 m!622061))

(assert (=> b!648672 m!622061))

(declare-fun m!622127 () Bool)

(assert (=> b!648672 m!622127))

(assert (=> b!648672 m!622061))

(declare-fun m!622129 () Bool)

(assert (=> b!648672 m!622129))

(assert (=> b!648672 m!622061))

(assert (=> b!648672 m!622119))

(push 1)

