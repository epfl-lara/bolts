; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54828 () Bool)

(assert start!54828)

(declare-fun b!598232 () Bool)

(declare-fun e!341973 () Bool)

(declare-fun e!341967 () Bool)

(assert (=> b!598232 (= e!341973 (not e!341967))))

(declare-fun res!383494 () Bool)

(assert (=> b!598232 (=> res!383494 e!341967)))

(declare-datatypes ((SeekEntryResult!6216 0))(
  ( (MissingZero!6216 (index!27120 (_ BitVec 32))) (Found!6216 (index!27121 (_ BitVec 32))) (Intermediate!6216 (undefined!7028 Bool) (index!27122 (_ BitVec 32)) (x!55960 (_ BitVec 32))) (Undefined!6216) (MissingVacant!6216 (index!27123 (_ BitVec 32))) )
))
(declare-fun lt!271828 () SeekEntryResult!6216)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!598232 (= res!383494 (not (= lt!271828 (Found!6216 index!984))))))

(declare-datatypes ((Unit!18808 0))(
  ( (Unit!18809) )
))
(declare-fun lt!271825 () Unit!18808)

(declare-fun e!341969 () Unit!18808)

(assert (=> b!598232 (= lt!271825 e!341969)))

(declare-fun c!67739 () Bool)

(assert (=> b!598232 (= c!67739 (= lt!271828 Undefined!6216))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun lt!271822 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!37026 0))(
  ( (array!37027 (arr!17769 (Array (_ BitVec 32) (_ BitVec 64))) (size!18133 (_ BitVec 32))) )
))
(declare-fun lt!271827 () array!37026)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37026 (_ BitVec 32)) SeekEntryResult!6216)

(assert (=> b!598232 (= lt!271828 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!271822 lt!271827 mask!3053))))

(declare-fun e!341964 () Bool)

(assert (=> b!598232 e!341964))

(declare-fun res!383490 () Bool)

(assert (=> b!598232 (=> (not res!383490) (not e!341964))))

(declare-fun lt!271830 () (_ BitVec 32))

(declare-fun lt!271826 () SeekEntryResult!6216)

(assert (=> b!598232 (= res!383490 (= lt!271826 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271830 vacantSpotIndex!68 lt!271822 lt!271827 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37026)

(assert (=> b!598232 (= lt!271826 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!271830 vacantSpotIndex!68 (select (arr!17769 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!598232 (= lt!271822 (select (store (arr!17769 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!271824 () Unit!18808)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37026 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18808)

(assert (=> b!598232 (= lt!271824 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!271830 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598232 (= lt!271830 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598233 () Bool)

(declare-fun e!341970 () Bool)

(assert (=> b!598233 (= e!341967 e!341970)))

(declare-fun res!383503 () Bool)

(assert (=> b!598233 (=> res!383503 e!341970)))

(declare-fun lt!271821 () (_ BitVec 64))

(assert (=> b!598233 (= res!383503 (or (not (= (select (arr!17769 a!2986) j!136) lt!271822)) (not (= (select (arr!17769 a!2986) j!136) lt!271821)) (bvsge j!136 index!984)))))

(declare-fun e!341965 () Bool)

(assert (=> b!598233 e!341965))

(declare-fun res!383500 () Bool)

(assert (=> b!598233 (=> (not res!383500) (not e!341965))))

(assert (=> b!598233 (= res!383500 (= lt!271821 (select (arr!17769 a!2986) j!136)))))

(assert (=> b!598233 (= lt!271821 (select (store (arr!17769 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!598234 () Bool)

(declare-fun e!341966 () Bool)

(declare-fun e!341972 () Bool)

(assert (=> b!598234 (= e!341966 e!341972)))

(declare-fun res!383499 () Bool)

(assert (=> b!598234 (=> (not res!383499) (not e!341972))))

(declare-fun lt!271829 () SeekEntryResult!6216)

(assert (=> b!598234 (= res!383499 (or (= lt!271829 (MissingZero!6216 i!1108)) (= lt!271829 (MissingVacant!6216 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37026 (_ BitVec 32)) SeekEntryResult!6216)

(assert (=> b!598234 (= lt!271829 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!598235 () Bool)

(declare-fun res!383488 () Bool)

(assert (=> b!598235 (=> (not res!383488) (not e!341972))))

(declare-datatypes ((List!11863 0))(
  ( (Nil!11860) (Cons!11859 (h!12904 (_ BitVec 64)) (t!18099 List!11863)) )
))
(declare-fun arrayNoDuplicates!0 (array!37026 (_ BitVec 32) List!11863) Bool)

(assert (=> b!598235 (= res!383488 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11860))))

(declare-fun b!598236 () Bool)

(declare-fun e!341968 () Bool)

(assert (=> b!598236 (= e!341972 e!341968)))

(declare-fun res!383493 () Bool)

(assert (=> b!598236 (=> (not res!383493) (not e!341968))))

(assert (=> b!598236 (= res!383493 (= (select (store (arr!17769 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598236 (= lt!271827 (array!37027 (store (arr!17769 a!2986) i!1108 k!1786) (size!18133 a!2986)))))

(declare-fun b!598237 () Bool)

(declare-fun res!383492 () Bool)

(assert (=> b!598237 (=> (not res!383492) (not e!341966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598237 (= res!383492 (validKeyInArray!0 (select (arr!17769 a!2986) j!136)))))

(declare-fun res!383501 () Bool)

(assert (=> start!54828 (=> (not res!383501) (not e!341966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54828 (= res!383501 (validMask!0 mask!3053))))

(assert (=> start!54828 e!341966))

(assert (=> start!54828 true))

(declare-fun array_inv!13543 (array!37026) Bool)

(assert (=> start!54828 (array_inv!13543 a!2986)))

(declare-fun b!598238 () Bool)

(declare-fun Unit!18810 () Unit!18808)

(assert (=> b!598238 (= e!341969 Unit!18810)))

(assert (=> b!598238 false))

(declare-fun b!598239 () Bool)

(declare-fun lt!271820 () SeekEntryResult!6216)

(assert (=> b!598239 (= e!341964 (= lt!271820 lt!271826))))

(declare-fun b!598240 () Bool)

(declare-fun res!383496 () Bool)

(assert (=> b!598240 (=> (not res!383496) (not e!341972))))

(assert (=> b!598240 (= res!383496 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17769 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598241 () Bool)

(declare-fun res!383502 () Bool)

(assert (=> b!598241 (=> (not res!383502) (not e!341966))))

(declare-fun arrayContainsKey!0 (array!37026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598241 (= res!383502 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598242 () Bool)

(declare-fun Unit!18811 () Unit!18808)

(assert (=> b!598242 (= e!341969 Unit!18811)))

(declare-fun b!598243 () Bool)

(declare-fun e!341963 () Bool)

(assert (=> b!598243 (= e!341963 (arrayContainsKey!0 lt!271827 (select (arr!17769 a!2986) j!136) index!984))))

(declare-fun b!598244 () Bool)

(declare-fun res!383495 () Bool)

(assert (=> b!598244 (=> (not res!383495) (not e!341972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37026 (_ BitVec 32)) Bool)

(assert (=> b!598244 (= res!383495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598245 () Bool)

(declare-fun e!341974 () Bool)

(assert (=> b!598245 (= e!341974 e!341963)))

(declare-fun res!383504 () Bool)

(assert (=> b!598245 (=> (not res!383504) (not e!341963))))

(assert (=> b!598245 (= res!383504 (arrayContainsKey!0 lt!271827 (select (arr!17769 a!2986) j!136) j!136))))

(declare-fun b!598246 () Bool)

(assert (=> b!598246 (= e!341965 e!341974)))

(declare-fun res!383497 () Bool)

(assert (=> b!598246 (=> res!383497 e!341974)))

(assert (=> b!598246 (= res!383497 (or (not (= (select (arr!17769 a!2986) j!136) lt!271822)) (not (= (select (arr!17769 a!2986) j!136) lt!271821)) (bvsge j!136 index!984)))))

(declare-fun b!598247 () Bool)

(declare-fun res!383498 () Bool)

(assert (=> b!598247 (=> (not res!383498) (not e!341966))))

(assert (=> b!598247 (= res!383498 (and (= (size!18133 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18133 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18133 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598248 () Bool)

(assert (=> b!598248 (= e!341970 true)))

(assert (=> b!598248 (arrayNoDuplicates!0 lt!271827 #b00000000000000000000000000000000 Nil!11860)))

(declare-fun lt!271823 () Unit!18808)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37026 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11863) Unit!18808)

(assert (=> b!598248 (= lt!271823 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11860))))

(assert (=> b!598248 (arrayContainsKey!0 lt!271827 (select (arr!17769 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!271819 () Unit!18808)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37026 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18808)

(assert (=> b!598248 (= lt!271819 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!271827 (select (arr!17769 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598249 () Bool)

(declare-fun res!383489 () Bool)

(assert (=> b!598249 (=> (not res!383489) (not e!341966))))

(assert (=> b!598249 (= res!383489 (validKeyInArray!0 k!1786))))

(declare-fun b!598250 () Bool)

(assert (=> b!598250 (= e!341968 e!341973)))

(declare-fun res!383491 () Bool)

(assert (=> b!598250 (=> (not res!383491) (not e!341973))))

(assert (=> b!598250 (= res!383491 (and (= lt!271820 (Found!6216 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17769 a!2986) index!984) (select (arr!17769 a!2986) j!136))) (not (= (select (arr!17769 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!598250 (= lt!271820 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17769 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54828 res!383501) b!598247))

(assert (= (and b!598247 res!383498) b!598237))

(assert (= (and b!598237 res!383492) b!598249))

(assert (= (and b!598249 res!383489) b!598241))

(assert (= (and b!598241 res!383502) b!598234))

(assert (= (and b!598234 res!383499) b!598244))

(assert (= (and b!598244 res!383495) b!598235))

(assert (= (and b!598235 res!383488) b!598240))

(assert (= (and b!598240 res!383496) b!598236))

(assert (= (and b!598236 res!383493) b!598250))

(assert (= (and b!598250 res!383491) b!598232))

(assert (= (and b!598232 res!383490) b!598239))

(assert (= (and b!598232 c!67739) b!598238))

(assert (= (and b!598232 (not c!67739)) b!598242))

(assert (= (and b!598232 (not res!383494)) b!598233))

(assert (= (and b!598233 res!383500) b!598246))

(assert (= (and b!598246 (not res!383497)) b!598245))

(assert (= (and b!598245 res!383504) b!598243))

(assert (= (and b!598233 (not res!383503)) b!598248))

(declare-fun m!575589 () Bool)

(assert (=> b!598233 m!575589))

(declare-fun m!575591 () Bool)

(assert (=> b!598233 m!575591))

(declare-fun m!575593 () Bool)

(assert (=> b!598233 m!575593))

(declare-fun m!575595 () Bool)

(assert (=> b!598234 m!575595))

(assert (=> b!598245 m!575589))

(assert (=> b!598245 m!575589))

(declare-fun m!575597 () Bool)

(assert (=> b!598245 m!575597))

(declare-fun m!575599 () Bool)

(assert (=> b!598235 m!575599))

(declare-fun m!575601 () Bool)

(assert (=> start!54828 m!575601))

(declare-fun m!575603 () Bool)

(assert (=> start!54828 m!575603))

(assert (=> b!598243 m!575589))

(assert (=> b!598243 m!575589))

(declare-fun m!575605 () Bool)

(assert (=> b!598243 m!575605))

(assert (=> b!598236 m!575591))

(declare-fun m!575607 () Bool)

(assert (=> b!598236 m!575607))

(declare-fun m!575609 () Bool)

(assert (=> b!598232 m!575609))

(declare-fun m!575611 () Bool)

(assert (=> b!598232 m!575611))

(assert (=> b!598232 m!575591))

(assert (=> b!598232 m!575589))

(declare-fun m!575613 () Bool)

(assert (=> b!598232 m!575613))

(declare-fun m!575615 () Bool)

(assert (=> b!598232 m!575615))

(declare-fun m!575617 () Bool)

(assert (=> b!598232 m!575617))

(assert (=> b!598232 m!575589))

(declare-fun m!575619 () Bool)

(assert (=> b!598232 m!575619))

(assert (=> b!598246 m!575589))

(declare-fun m!575621 () Bool)

(assert (=> b!598244 m!575621))

(declare-fun m!575623 () Bool)

(assert (=> b!598241 m!575623))

(declare-fun m!575625 () Bool)

(assert (=> b!598250 m!575625))

(assert (=> b!598250 m!575589))

(assert (=> b!598250 m!575589))

(declare-fun m!575627 () Bool)

(assert (=> b!598250 m!575627))

(assert (=> b!598248 m!575589))

(declare-fun m!575629 () Bool)

(assert (=> b!598248 m!575629))

(assert (=> b!598248 m!575589))

(declare-fun m!575631 () Bool)

(assert (=> b!598248 m!575631))

(declare-fun m!575633 () Bool)

(assert (=> b!598248 m!575633))

(assert (=> b!598248 m!575589))

(declare-fun m!575635 () Bool)

(assert (=> b!598248 m!575635))

(declare-fun m!575637 () Bool)

(assert (=> b!598240 m!575637))

(declare-fun m!575639 () Bool)

(assert (=> b!598249 m!575639))

(assert (=> b!598237 m!575589))

(assert (=> b!598237 m!575589))

(declare-fun m!575641 () Bool)

(assert (=> b!598237 m!575641))

(push 1)

