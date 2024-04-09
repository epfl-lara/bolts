; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55606 () Bool)

(assert start!55606)

(declare-fun b!609168 () Bool)

(declare-fun e!348884 () Bool)

(declare-fun e!348890 () Bool)

(assert (=> b!609168 (= e!348884 e!348890)))

(declare-fun res!391886 () Bool)

(assert (=> b!609168 (=> res!391886 e!348890)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!278514 () (_ BitVec 64))

(declare-fun lt!278513 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!37300 0))(
  ( (array!37301 (arr!17897 (Array (_ BitVec 32) (_ BitVec 64))) (size!18261 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37300)

(assert (=> b!609168 (= res!391886 (or (not (= (select (arr!17897 a!2986) j!136) lt!278513)) (not (= (select (arr!17897 a!2986) j!136) lt!278514)) (bvsge j!136 index!984)))))

(declare-fun res!391883 () Bool)

(declare-fun e!348892 () Bool)

(assert (=> start!55606 (=> (not res!391883) (not e!348892))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55606 (= res!391883 (validMask!0 mask!3053))))

(assert (=> start!55606 e!348892))

(assert (=> start!55606 true))

(declare-fun array_inv!13671 (array!37300) Bool)

(assert (=> start!55606 (array_inv!13671 a!2986)))

(declare-fun b!609169 () Bool)

(declare-fun res!391878 () Bool)

(declare-fun e!348896 () Bool)

(assert (=> b!609169 (=> (not res!391878) (not e!348896))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!609169 (= res!391878 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17897 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!609170 () Bool)

(declare-fun e!348887 () Bool)

(assert (=> b!609170 (= e!348887 true)))

(declare-fun lt!278512 () Bool)

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((List!11991 0))(
  ( (Nil!11988) (Cons!11987 (h!13032 (_ BitVec 64)) (t!18227 List!11991)) )
))
(declare-fun contains!3037 (List!11991 (_ BitVec 64)) Bool)

(assert (=> b!609170 (= lt!278512 (contains!3037 Nil!11988 k!1786))))

(declare-fun b!609171 () Bool)

(declare-fun e!348894 () Bool)

(declare-datatypes ((SeekEntryResult!6344 0))(
  ( (MissingZero!6344 (index!27650 (_ BitVec 32))) (Found!6344 (index!27651 (_ BitVec 32))) (Intermediate!6344 (undefined!7156 Bool) (index!27652 (_ BitVec 32)) (x!56478 (_ BitVec 32))) (Undefined!6344) (MissingVacant!6344 (index!27653 (_ BitVec 32))) )
))
(declare-fun lt!278505 () SeekEntryResult!6344)

(declare-fun lt!278510 () SeekEntryResult!6344)

(assert (=> b!609171 (= e!348894 (= lt!278505 lt!278510))))

(declare-fun b!609172 () Bool)

(declare-fun res!391898 () Bool)

(assert (=> b!609172 (=> (not res!391898) (not e!348896))))

(declare-fun arrayNoDuplicates!0 (array!37300 (_ BitVec 32) List!11991) Bool)

(assert (=> b!609172 (= res!391898 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11988))))

(declare-fun b!609173 () Bool)

(declare-fun res!391881 () Bool)

(assert (=> b!609173 (=> res!391881 e!348887)))

(declare-fun noDuplicate!339 (List!11991) Bool)

(assert (=> b!609173 (= res!391881 (not (noDuplicate!339 Nil!11988)))))

(declare-fun b!609174 () Bool)

(declare-fun e!348888 () Bool)

(declare-fun e!348885 () Bool)

(assert (=> b!609174 (= e!348888 (not e!348885))))

(declare-fun res!391888 () Bool)

(assert (=> b!609174 (=> res!391888 e!348885)))

(declare-fun lt!278502 () SeekEntryResult!6344)

(assert (=> b!609174 (= res!391888 (not (= lt!278502 (Found!6344 index!984))))))

(declare-datatypes ((Unit!19492 0))(
  ( (Unit!19493) )
))
(declare-fun lt!278500 () Unit!19492)

(declare-fun e!348893 () Unit!19492)

(assert (=> b!609174 (= lt!278500 e!348893)))

(declare-fun c!69014 () Bool)

(assert (=> b!609174 (= c!69014 (= lt!278502 Undefined!6344))))

(declare-fun lt!278508 () array!37300)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37300 (_ BitVec 32)) SeekEntryResult!6344)

(assert (=> b!609174 (= lt!278502 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!278513 lt!278508 mask!3053))))

(assert (=> b!609174 e!348894))

(declare-fun res!391880 () Bool)

(assert (=> b!609174 (=> (not res!391880) (not e!348894))))

(declare-fun lt!278498 () (_ BitVec 32))

(assert (=> b!609174 (= res!391880 (= lt!278510 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278498 vacantSpotIndex!68 lt!278513 lt!278508 mask!3053)))))

(assert (=> b!609174 (= lt!278510 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!278498 vacantSpotIndex!68 (select (arr!17897 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!609174 (= lt!278513 (select (store (arr!17897 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!278503 () Unit!19492)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37300 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19492)

(assert (=> b!609174 (= lt!278503 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!278498 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!609174 (= lt!278498 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!609175 () Bool)

(declare-fun res!391895 () Bool)

(assert (=> b!609175 (=> res!391895 e!348887)))

(assert (=> b!609175 (= res!391895 (contains!3037 Nil!11988 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609176 () Bool)

(declare-fun res!391887 () Bool)

(assert (=> b!609176 (=> (not res!391887) (not e!348896))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37300 (_ BitVec 32)) Bool)

(assert (=> b!609176 (= res!391887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!609177 () Bool)

(declare-fun e!348891 () Bool)

(assert (=> b!609177 (= e!348896 e!348891)))

(declare-fun res!391885 () Bool)

(assert (=> b!609177 (=> (not res!391885) (not e!348891))))

(assert (=> b!609177 (= res!391885 (= (select (store (arr!17897 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!609177 (= lt!278508 (array!37301 (store (arr!17897 a!2986) i!1108 k!1786) (size!18261 a!2986)))))

(declare-fun b!609178 () Bool)

(declare-fun e!348895 () Bool)

(assert (=> b!609178 (= e!348895 e!348887)))

(declare-fun res!391879 () Bool)

(assert (=> b!609178 (=> res!391879 e!348887)))

(assert (=> b!609178 (= res!391879 (or (bvsge (size!18261 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18261 a!2986))))))

(declare-fun arrayContainsKey!0 (array!37300 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!609178 (arrayContainsKey!0 lt!278508 (select (arr!17897 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!278509 () Unit!19492)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37300 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19492)

(assert (=> b!609178 (= lt!278509 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278508 (select (arr!17897 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!348898 () Bool)

(assert (=> b!609178 e!348898))

(declare-fun res!391884 () Bool)

(assert (=> b!609178 (=> (not res!391884) (not e!348898))))

(assert (=> b!609178 (= res!391884 (arrayContainsKey!0 lt!278508 (select (arr!17897 a!2986) j!136) j!136))))

(declare-fun b!609179 () Bool)

(declare-fun res!391889 () Bool)

(assert (=> b!609179 (=> (not res!391889) (not e!348892))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!609179 (= res!391889 (validKeyInArray!0 (select (arr!17897 a!2986) j!136)))))

(declare-fun b!609180 () Bool)

(declare-fun res!391882 () Bool)

(assert (=> b!609180 (=> (not res!391882) (not e!348892))))

(assert (=> b!609180 (= res!391882 (and (= (size!18261 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18261 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18261 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!609181 () Bool)

(assert (=> b!609181 (= e!348898 (arrayContainsKey!0 lt!278508 (select (arr!17897 a!2986) j!136) index!984))))

(declare-fun b!609182 () Bool)

(declare-fun Unit!19494 () Unit!19492)

(assert (=> b!609182 (= e!348893 Unit!19494)))

(declare-fun b!609183 () Bool)

(declare-fun res!391894 () Bool)

(assert (=> b!609183 (=> res!391894 e!348887)))

(assert (=> b!609183 (= res!391894 (contains!3037 Nil!11988 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!609184 () Bool)

(assert (=> b!609184 (= e!348892 e!348896)))

(declare-fun res!391877 () Bool)

(assert (=> b!609184 (=> (not res!391877) (not e!348896))))

(declare-fun lt!278507 () SeekEntryResult!6344)

(assert (=> b!609184 (= res!391877 (or (= lt!278507 (MissingZero!6344 i!1108)) (= lt!278507 (MissingVacant!6344 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37300 (_ BitVec 32)) SeekEntryResult!6344)

(assert (=> b!609184 (= lt!278507 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!609185 () Bool)

(declare-fun e!348886 () Unit!19492)

(declare-fun Unit!19495 () Unit!19492)

(assert (=> b!609185 (= e!348886 Unit!19495)))

(declare-fun lt!278511 () Unit!19492)

(assert (=> b!609185 (= lt!278511 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!278508 (select (arr!17897 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!609185 (arrayContainsKey!0 lt!278508 (select (arr!17897 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!278499 () Unit!19492)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37300 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11991) Unit!19492)

(assert (=> b!609185 (= lt!278499 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11988))))

(assert (=> b!609185 (arrayNoDuplicates!0 lt!278508 #b00000000000000000000000000000000 Nil!11988)))

(declare-fun lt!278504 () Unit!19492)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37300 (_ BitVec 32) (_ BitVec 32)) Unit!19492)

(assert (=> b!609185 (= lt!278504 (lemmaNoDuplicateFromThenFromBigger!0 lt!278508 #b00000000000000000000000000000000 j!136))))

(assert (=> b!609185 (arrayNoDuplicates!0 lt!278508 j!136 Nil!11988)))

(declare-fun lt!278501 () Unit!19492)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37300 (_ BitVec 64) (_ BitVec 32) List!11991) Unit!19492)

(assert (=> b!609185 (= lt!278501 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!278508 (select (arr!17897 a!2986) j!136) j!136 Nil!11988))))

(assert (=> b!609185 false))

(declare-fun b!609186 () Bool)

(assert (=> b!609186 (= e!348891 e!348888)))

(declare-fun res!391890 () Bool)

(assert (=> b!609186 (=> (not res!391890) (not e!348888))))

(assert (=> b!609186 (= res!391890 (and (= lt!278505 (Found!6344 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17897 a!2986) index!984) (select (arr!17897 a!2986) j!136))) (not (= (select (arr!17897 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!609186 (= lt!278505 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17897 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!609187 () Bool)

(declare-fun e!348897 () Bool)

(assert (=> b!609187 (= e!348890 e!348897)))

(declare-fun res!391896 () Bool)

(assert (=> b!609187 (=> (not res!391896) (not e!348897))))

(assert (=> b!609187 (= res!391896 (arrayContainsKey!0 lt!278508 (select (arr!17897 a!2986) j!136) j!136))))

(declare-fun b!609188 () Bool)

(declare-fun e!348889 () Bool)

(assert (=> b!609188 (= e!348885 e!348889)))

(declare-fun res!391891 () Bool)

(assert (=> b!609188 (=> res!391891 e!348889)))

(assert (=> b!609188 (= res!391891 (or (not (= (select (arr!17897 a!2986) j!136) lt!278513)) (not (= (select (arr!17897 a!2986) j!136) lt!278514))))))

(assert (=> b!609188 e!348884))

(declare-fun res!391892 () Bool)

(assert (=> b!609188 (=> (not res!391892) (not e!348884))))

(assert (=> b!609188 (= res!391892 (= lt!278514 (select (arr!17897 a!2986) j!136)))))

(assert (=> b!609188 (= lt!278514 (select (store (arr!17897 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!609189 () Bool)

(declare-fun res!391876 () Bool)

(assert (=> b!609189 (=> (not res!391876) (not e!348892))))

(assert (=> b!609189 (= res!391876 (validKeyInArray!0 k!1786))))

(declare-fun b!609190 () Bool)

(declare-fun Unit!19496 () Unit!19492)

(assert (=> b!609190 (= e!348886 Unit!19496)))

(declare-fun b!609191 () Bool)

(declare-fun Unit!19497 () Unit!19492)

(assert (=> b!609191 (= e!348893 Unit!19497)))

(assert (=> b!609191 false))

(declare-fun b!609192 () Bool)

(declare-fun res!391893 () Bool)

(assert (=> b!609192 (=> (not res!391893) (not e!348892))))

(assert (=> b!609192 (= res!391893 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!609193 () Bool)

(assert (=> b!609193 (= e!348889 e!348895)))

(declare-fun res!391897 () Bool)

(assert (=> b!609193 (=> res!391897 e!348895)))

(assert (=> b!609193 (= res!391897 (bvsge index!984 j!136))))

(declare-fun lt!278506 () Unit!19492)

(assert (=> b!609193 (= lt!278506 e!348886)))

(declare-fun c!69013 () Bool)

(assert (=> b!609193 (= c!69013 (bvslt j!136 index!984))))

(declare-fun b!609194 () Bool)

(assert (=> b!609194 (= e!348897 (arrayContainsKey!0 lt!278508 (select (arr!17897 a!2986) j!136) index!984))))

(assert (= (and start!55606 res!391883) b!609180))

(assert (= (and b!609180 res!391882) b!609179))

(assert (= (and b!609179 res!391889) b!609189))

(assert (= (and b!609189 res!391876) b!609192))

(assert (= (and b!609192 res!391893) b!609184))

(assert (= (and b!609184 res!391877) b!609176))

(assert (= (and b!609176 res!391887) b!609172))

(assert (= (and b!609172 res!391898) b!609169))

(assert (= (and b!609169 res!391878) b!609177))

(assert (= (and b!609177 res!391885) b!609186))

(assert (= (and b!609186 res!391890) b!609174))

(assert (= (and b!609174 res!391880) b!609171))

(assert (= (and b!609174 c!69014) b!609191))

(assert (= (and b!609174 (not c!69014)) b!609182))

(assert (= (and b!609174 (not res!391888)) b!609188))

(assert (= (and b!609188 res!391892) b!609168))

(assert (= (and b!609168 (not res!391886)) b!609187))

(assert (= (and b!609187 res!391896) b!609194))

(assert (= (and b!609188 (not res!391891)) b!609193))

(assert (= (and b!609193 c!69013) b!609185))

(assert (= (and b!609193 (not c!69013)) b!609190))

(assert (= (and b!609193 (not res!391897)) b!609178))

(assert (= (and b!609178 res!391884) b!609181))

(assert (= (and b!609178 (not res!391879)) b!609173))

(assert (= (and b!609173 (not res!391881)) b!609183))

(assert (= (and b!609183 (not res!391894)) b!609175))

(assert (= (and b!609175 (not res!391895)) b!609170))

(declare-fun m!585741 () Bool)

(assert (=> start!55606 m!585741))

(declare-fun m!585743 () Bool)

(assert (=> start!55606 m!585743))

(declare-fun m!585745 () Bool)

(assert (=> b!609175 m!585745))

(declare-fun m!585747 () Bool)

(assert (=> b!609185 m!585747))

(declare-fun m!585749 () Bool)

(assert (=> b!609185 m!585749))

(assert (=> b!609185 m!585747))

(assert (=> b!609185 m!585747))

(declare-fun m!585751 () Bool)

(assert (=> b!609185 m!585751))

(declare-fun m!585753 () Bool)

(assert (=> b!609185 m!585753))

(declare-fun m!585755 () Bool)

(assert (=> b!609185 m!585755))

(assert (=> b!609185 m!585747))

(declare-fun m!585757 () Bool)

(assert (=> b!609185 m!585757))

(declare-fun m!585759 () Bool)

(assert (=> b!609185 m!585759))

(declare-fun m!585761 () Bool)

(assert (=> b!609185 m!585761))

(declare-fun m!585763 () Bool)

(assert (=> b!609177 m!585763))

(declare-fun m!585765 () Bool)

(assert (=> b!609177 m!585765))

(declare-fun m!585767 () Bool)

(assert (=> b!609173 m!585767))

(declare-fun m!585769 () Bool)

(assert (=> b!609176 m!585769))

(assert (=> b!609187 m!585747))

(assert (=> b!609187 m!585747))

(declare-fun m!585771 () Bool)

(assert (=> b!609187 m!585771))

(assert (=> b!609178 m!585747))

(assert (=> b!609178 m!585747))

(declare-fun m!585773 () Bool)

(assert (=> b!609178 m!585773))

(assert (=> b!609178 m!585747))

(declare-fun m!585775 () Bool)

(assert (=> b!609178 m!585775))

(assert (=> b!609178 m!585747))

(assert (=> b!609178 m!585771))

(declare-fun m!585777 () Bool)

(assert (=> b!609183 m!585777))

(assert (=> b!609168 m!585747))

(declare-fun m!585779 () Bool)

(assert (=> b!609186 m!585779))

(assert (=> b!609186 m!585747))

(assert (=> b!609186 m!585747))

(declare-fun m!585781 () Bool)

(assert (=> b!609186 m!585781))

(assert (=> b!609194 m!585747))

(assert (=> b!609194 m!585747))

(declare-fun m!585783 () Bool)

(assert (=> b!609194 m!585783))

(declare-fun m!585785 () Bool)

(assert (=> b!609170 m!585785))

(declare-fun m!585787 () Bool)

(assert (=> b!609189 m!585787))

(declare-fun m!585789 () Bool)

(assert (=> b!609174 m!585789))

(declare-fun m!585791 () Bool)

(assert (=> b!609174 m!585791))

(assert (=> b!609174 m!585747))

(declare-fun m!585793 () Bool)

(assert (=> b!609174 m!585793))

(assert (=> b!609174 m!585763))

(declare-fun m!585795 () Bool)

(assert (=> b!609174 m!585795))

(assert (=> b!609174 m!585747))

(declare-fun m!585797 () Bool)

(assert (=> b!609174 m!585797))

(declare-fun m!585799 () Bool)

(assert (=> b!609174 m!585799))

(declare-fun m!585801 () Bool)

(assert (=> b!609172 m!585801))

(declare-fun m!585803 () Bool)

(assert (=> b!609169 m!585803))

(declare-fun m!585805 () Bool)

(assert (=> b!609192 m!585805))

(assert (=> b!609181 m!585747))

(assert (=> b!609181 m!585747))

(assert (=> b!609181 m!585783))

(declare-fun m!585807 () Bool)

(assert (=> b!609184 m!585807))

(assert (=> b!609188 m!585747))

(assert (=> b!609188 m!585763))

(declare-fun m!585809 () Bool)

(assert (=> b!609188 m!585809))

(assert (=> b!609179 m!585747))

(assert (=> b!609179 m!585747))

(declare-fun m!585811 () Bool)

(assert (=> b!609179 m!585811))

(push 1)

