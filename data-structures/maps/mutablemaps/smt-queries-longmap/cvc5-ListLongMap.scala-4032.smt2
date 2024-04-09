; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54906 () Bool)

(assert start!54906)

(declare-fun b!600677 () Bool)

(declare-datatypes ((Unit!18964 0))(
  ( (Unit!18965) )
))
(declare-fun e!343453 () Unit!18964)

(declare-fun Unit!18966 () Unit!18964)

(assert (=> b!600677 (= e!343453 Unit!18966)))

(assert (=> b!600677 false))

(declare-fun b!600678 () Bool)

(declare-fun e!343441 () Bool)

(declare-fun e!343446 () Bool)

(assert (=> b!600678 (= e!343441 e!343446)))

(declare-fun res!385702 () Bool)

(assert (=> b!600678 (=> (not res!385702) (not e!343446))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37104 0))(
  ( (array!37105 (arr!17808 (Array (_ BitVec 32) (_ BitVec 64))) (size!18172 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37104)

(assert (=> b!600678 (= res!385702 (= (select (store (arr!17808 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!273372 () array!37104)

(assert (=> b!600678 (= lt!273372 (array!37105 (store (arr!17808 a!2986) i!1108 k!1786) (size!18172 a!2986)))))

(declare-fun b!600679 () Bool)

(declare-fun e!343444 () Bool)

(declare-fun e!343447 () Bool)

(assert (=> b!600679 (= e!343444 e!343447)))

(declare-fun res!385713 () Bool)

(assert (=> b!600679 (=> res!385713 e!343447)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!273376 () (_ BitVec 64))

(declare-fun lt!273377 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!600679 (= res!385713 (or (not (= (select (arr!17808 a!2986) j!136) lt!273377)) (not (= (select (arr!17808 a!2986) j!136) lt!273376)) (bvsge j!136 index!984)))))

(declare-fun e!343451 () Bool)

(assert (=> b!600679 e!343451))

(declare-fun res!385700 () Bool)

(assert (=> b!600679 (=> (not res!385700) (not e!343451))))

(assert (=> b!600679 (= res!385700 (= lt!273376 (select (arr!17808 a!2986) j!136)))))

(assert (=> b!600679 (= lt!273376 (select (store (arr!17808 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!600680 () Bool)

(declare-fun res!385709 () Bool)

(assert (=> b!600680 (=> (not res!385709) (not e!343441))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!600680 (= res!385709 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17808 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!600681 () Bool)

(declare-fun e!343445 () Bool)

(assert (=> b!600681 (= e!343445 (not e!343444))))

(declare-fun res!385711 () Bool)

(assert (=> b!600681 (=> res!385711 e!343444)))

(declare-datatypes ((SeekEntryResult!6255 0))(
  ( (MissingZero!6255 (index!27276 (_ BitVec 32))) (Found!6255 (index!27277 (_ BitVec 32))) (Intermediate!6255 (undefined!7067 Bool) (index!27278 (_ BitVec 32)) (x!56103 (_ BitVec 32))) (Undefined!6255) (MissingVacant!6255 (index!27279 (_ BitVec 32))) )
))
(declare-fun lt!273382 () SeekEntryResult!6255)

(assert (=> b!600681 (= res!385711 (not (= lt!273382 (Found!6255 index!984))))))

(declare-fun lt!273381 () Unit!18964)

(assert (=> b!600681 (= lt!273381 e!343453)))

(declare-fun c!67856 () Bool)

(assert (=> b!600681 (= c!67856 (= lt!273382 Undefined!6255))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37104 (_ BitVec 32)) SeekEntryResult!6255)

(assert (=> b!600681 (= lt!273382 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!273377 lt!273372 mask!3053))))

(declare-fun e!343442 () Bool)

(assert (=> b!600681 e!343442))

(declare-fun res!385706 () Bool)

(assert (=> b!600681 (=> (not res!385706) (not e!343442))))

(declare-fun lt!273374 () SeekEntryResult!6255)

(declare-fun lt!273375 () (_ BitVec 32))

(assert (=> b!600681 (= res!385706 (= lt!273374 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273375 vacantSpotIndex!68 lt!273377 lt!273372 mask!3053)))))

(assert (=> b!600681 (= lt!273374 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!273375 vacantSpotIndex!68 (select (arr!17808 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!600681 (= lt!273377 (select (store (arr!17808 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!273379 () Unit!18964)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37104 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18964)

(assert (=> b!600681 (= lt!273379 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!273375 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!600681 (= lt!273375 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!600682 () Bool)

(declare-fun e!343448 () Bool)

(assert (=> b!600682 (= e!343451 e!343448)))

(declare-fun res!385707 () Bool)

(assert (=> b!600682 (=> res!385707 e!343448)))

(assert (=> b!600682 (= res!385707 (or (not (= (select (arr!17808 a!2986) j!136) lt!273377)) (not (= (select (arr!17808 a!2986) j!136) lt!273376)) (bvsge j!136 index!984)))))

(declare-fun b!600684 () Bool)

(declare-fun res!385708 () Bool)

(assert (=> b!600684 (=> (not res!385708) (not e!343441))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37104 (_ BitVec 32)) Bool)

(assert (=> b!600684 (= res!385708 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!600685 () Bool)

(declare-fun Unit!18967 () Unit!18964)

(assert (=> b!600685 (= e!343453 Unit!18967)))

(declare-fun b!600686 () Bool)

(declare-fun res!385703 () Bool)

(declare-fun e!343443 () Bool)

(assert (=> b!600686 (=> res!385703 e!343443)))

(declare-datatypes ((List!11902 0))(
  ( (Nil!11899) (Cons!11898 (h!12943 (_ BitVec 64)) (t!18138 List!11902)) )
))
(declare-fun contains!2987 (List!11902 (_ BitVec 64)) Bool)

(assert (=> b!600686 (= res!385703 (contains!2987 Nil!11899 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600687 () Bool)

(assert (=> b!600687 (= e!343443 true)))

(declare-fun lt!273371 () Bool)

(assert (=> b!600687 (= lt!273371 (contains!2987 Nil!11899 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!600688 () Bool)

(declare-fun res!385704 () Bool)

(declare-fun e!343452 () Bool)

(assert (=> b!600688 (=> (not res!385704) (not e!343452))))

(assert (=> b!600688 (= res!385704 (and (= (size!18172 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18172 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18172 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!385717 () Bool)

(assert (=> start!54906 (=> (not res!385717) (not e!343452))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54906 (= res!385717 (validMask!0 mask!3053))))

(assert (=> start!54906 e!343452))

(assert (=> start!54906 true))

(declare-fun array_inv!13582 (array!37104) Bool)

(assert (=> start!54906 (array_inv!13582 a!2986)))

(declare-fun b!600683 () Bool)

(declare-fun e!343449 () Bool)

(declare-fun arrayContainsKey!0 (array!37104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!600683 (= e!343449 (arrayContainsKey!0 lt!273372 (select (arr!17808 a!2986) j!136) index!984))))

(declare-fun b!600689 () Bool)

(declare-fun res!385715 () Bool)

(assert (=> b!600689 (=> (not res!385715) (not e!343441))))

(declare-fun arrayNoDuplicates!0 (array!37104 (_ BitVec 32) List!11902) Bool)

(assert (=> b!600689 (= res!385715 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11899))))

(declare-fun b!600690 () Bool)

(assert (=> b!600690 (= e!343452 e!343441)))

(declare-fun res!385705 () Bool)

(assert (=> b!600690 (=> (not res!385705) (not e!343441))))

(declare-fun lt!273373 () SeekEntryResult!6255)

(assert (=> b!600690 (= res!385705 (or (= lt!273373 (MissingZero!6255 i!1108)) (= lt!273373 (MissingVacant!6255 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37104 (_ BitVec 32)) SeekEntryResult!6255)

(assert (=> b!600690 (= lt!273373 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!600691 () Bool)

(declare-fun res!385716 () Bool)

(assert (=> b!600691 (=> (not res!385716) (not e!343452))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!600691 (= res!385716 (validKeyInArray!0 k!1786))))

(declare-fun b!600692 () Bool)

(declare-fun lt!273383 () SeekEntryResult!6255)

(assert (=> b!600692 (= e!343442 (= lt!273383 lt!273374))))

(declare-fun b!600693 () Bool)

(declare-fun res!385712 () Bool)

(assert (=> b!600693 (=> res!385712 e!343443)))

(declare-fun noDuplicate!301 (List!11902) Bool)

(assert (=> b!600693 (= res!385712 (not (noDuplicate!301 Nil!11899)))))

(declare-fun b!600694 () Bool)

(declare-fun res!385701 () Bool)

(assert (=> b!600694 (=> (not res!385701) (not e!343452))))

(assert (=> b!600694 (= res!385701 (validKeyInArray!0 (select (arr!17808 a!2986) j!136)))))

(declare-fun b!600695 () Bool)

(assert (=> b!600695 (= e!343448 e!343449)))

(declare-fun res!385699 () Bool)

(assert (=> b!600695 (=> (not res!385699) (not e!343449))))

(assert (=> b!600695 (= res!385699 (arrayContainsKey!0 lt!273372 (select (arr!17808 a!2986) j!136) j!136))))

(declare-fun b!600696 () Bool)

(declare-fun res!385714 () Bool)

(assert (=> b!600696 (=> (not res!385714) (not e!343452))))

(assert (=> b!600696 (= res!385714 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!600697 () Bool)

(assert (=> b!600697 (= e!343447 e!343443)))

(declare-fun res!385718 () Bool)

(assert (=> b!600697 (=> res!385718 e!343443)))

(assert (=> b!600697 (= res!385718 (or (bvsge (size!18172 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18172 a!2986))))))

(assert (=> b!600697 (arrayNoDuplicates!0 lt!273372 j!136 Nil!11899)))

(declare-fun lt!273380 () Unit!18964)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37104 (_ BitVec 32) (_ BitVec 32)) Unit!18964)

(assert (=> b!600697 (= lt!273380 (lemmaNoDuplicateFromThenFromBigger!0 lt!273372 #b00000000000000000000000000000000 j!136))))

(assert (=> b!600697 (arrayNoDuplicates!0 lt!273372 #b00000000000000000000000000000000 Nil!11899)))

(declare-fun lt!273384 () Unit!18964)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37104 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11902) Unit!18964)

(assert (=> b!600697 (= lt!273384 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11899))))

(assert (=> b!600697 (arrayContainsKey!0 lt!273372 (select (arr!17808 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!273378 () Unit!18964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37104 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18964)

(assert (=> b!600697 (= lt!273378 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!273372 (select (arr!17808 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!600698 () Bool)

(assert (=> b!600698 (= e!343446 e!343445)))

(declare-fun res!385710 () Bool)

(assert (=> b!600698 (=> (not res!385710) (not e!343445))))

(assert (=> b!600698 (= res!385710 (and (= lt!273383 (Found!6255 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17808 a!2986) index!984) (select (arr!17808 a!2986) j!136))) (not (= (select (arr!17808 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!600698 (= lt!273383 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17808 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54906 res!385717) b!600688))

(assert (= (and b!600688 res!385704) b!600694))

(assert (= (and b!600694 res!385701) b!600691))

(assert (= (and b!600691 res!385716) b!600696))

(assert (= (and b!600696 res!385714) b!600690))

(assert (= (and b!600690 res!385705) b!600684))

(assert (= (and b!600684 res!385708) b!600689))

(assert (= (and b!600689 res!385715) b!600680))

(assert (= (and b!600680 res!385709) b!600678))

(assert (= (and b!600678 res!385702) b!600698))

(assert (= (and b!600698 res!385710) b!600681))

(assert (= (and b!600681 res!385706) b!600692))

(assert (= (and b!600681 c!67856) b!600677))

(assert (= (and b!600681 (not c!67856)) b!600685))

(assert (= (and b!600681 (not res!385711)) b!600679))

(assert (= (and b!600679 res!385700) b!600682))

(assert (= (and b!600682 (not res!385707)) b!600695))

(assert (= (and b!600695 res!385699) b!600683))

(assert (= (and b!600679 (not res!385713)) b!600697))

(assert (= (and b!600697 (not res!385718)) b!600693))

(assert (= (and b!600693 (not res!385712)) b!600686))

(assert (= (and b!600686 (not res!385703)) b!600687))

(declare-fun m!577935 () Bool)

(assert (=> b!600697 m!577935))

(declare-fun m!577937 () Bool)

(assert (=> b!600697 m!577937))

(assert (=> b!600697 m!577935))

(declare-fun m!577939 () Bool)

(assert (=> b!600697 m!577939))

(declare-fun m!577941 () Bool)

(assert (=> b!600697 m!577941))

(assert (=> b!600697 m!577935))

(declare-fun m!577943 () Bool)

(assert (=> b!600697 m!577943))

(declare-fun m!577945 () Bool)

(assert (=> b!600697 m!577945))

(declare-fun m!577947 () Bool)

(assert (=> b!600697 m!577947))

(assert (=> b!600683 m!577935))

(assert (=> b!600683 m!577935))

(declare-fun m!577949 () Bool)

(assert (=> b!600683 m!577949))

(declare-fun m!577951 () Bool)

(assert (=> b!600678 m!577951))

(declare-fun m!577953 () Bool)

(assert (=> b!600678 m!577953))

(declare-fun m!577955 () Bool)

(assert (=> b!600690 m!577955))

(declare-fun m!577957 () Bool)

(assert (=> start!54906 m!577957))

(declare-fun m!577959 () Bool)

(assert (=> start!54906 m!577959))

(assert (=> b!600682 m!577935))

(declare-fun m!577961 () Bool)

(assert (=> b!600686 m!577961))

(declare-fun m!577963 () Bool)

(assert (=> b!600696 m!577963))

(assert (=> b!600679 m!577935))

(assert (=> b!600679 m!577951))

(declare-fun m!577965 () Bool)

(assert (=> b!600679 m!577965))

(declare-fun m!577967 () Bool)

(assert (=> b!600691 m!577967))

(declare-fun m!577969 () Bool)

(assert (=> b!600680 m!577969))

(declare-fun m!577971 () Bool)

(assert (=> b!600689 m!577971))

(assert (=> b!600695 m!577935))

(assert (=> b!600695 m!577935))

(declare-fun m!577973 () Bool)

(assert (=> b!600695 m!577973))

(declare-fun m!577975 () Bool)

(assert (=> b!600681 m!577975))

(declare-fun m!577977 () Bool)

(assert (=> b!600681 m!577977))

(assert (=> b!600681 m!577935))

(declare-fun m!577979 () Bool)

(assert (=> b!600681 m!577979))

(assert (=> b!600681 m!577935))

(assert (=> b!600681 m!577951))

(declare-fun m!577981 () Bool)

(assert (=> b!600681 m!577981))

(declare-fun m!577983 () Bool)

(assert (=> b!600681 m!577983))

(declare-fun m!577985 () Bool)

(assert (=> b!600681 m!577985))

(declare-fun m!577987 () Bool)

(assert (=> b!600693 m!577987))

(declare-fun m!577989 () Bool)

(assert (=> b!600687 m!577989))

(declare-fun m!577991 () Bool)

(assert (=> b!600698 m!577991))

(assert (=> b!600698 m!577935))

(assert (=> b!600698 m!577935))

(declare-fun m!577993 () Bool)

(assert (=> b!600698 m!577993))

(declare-fun m!577995 () Bool)

(assert (=> b!600684 m!577995))

(assert (=> b!600694 m!577935))

(assert (=> b!600694 m!577935))

(declare-fun m!577997 () Bool)

(assert (=> b!600694 m!577997))

(push 1)

