; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55994 () Bool)

(assert start!55994)

(declare-fun b!614622 () Bool)

(declare-datatypes ((Unit!19850 0))(
  ( (Unit!19851) )
))
(declare-fun e!352397 () Unit!19850)

(declare-fun Unit!19852 () Unit!19850)

(assert (=> b!614622 (= e!352397 Unit!19852)))

(declare-fun b!614623 () Bool)

(declare-fun e!352405 () Unit!19850)

(declare-fun Unit!19853 () Unit!19850)

(assert (=> b!614623 (= e!352405 Unit!19853)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun res!395973 () Bool)

(declare-datatypes ((array!37427 0))(
  ( (array!37428 (arr!17956 (Array (_ BitVec 32) (_ BitVec 64))) (size!18320 (_ BitVec 32))) )
))
(declare-fun lt!282141 () array!37427)

(declare-fun a!2986 () array!37427)

(declare-fun b!614624 () Bool)

(declare-fun arrayContainsKey!0 (array!37427 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!614624 (= res!395973 (arrayContainsKey!0 lt!282141 (select (arr!17956 a!2986) j!136) j!136))))

(declare-fun e!352401 () Bool)

(assert (=> b!614624 (=> (not res!395973) (not e!352401))))

(declare-fun e!352408 () Bool)

(assert (=> b!614624 (= e!352408 e!352401)))

(declare-fun b!614625 () Bool)

(declare-fun Unit!19854 () Unit!19850)

(assert (=> b!614625 (= e!352397 Unit!19854)))

(assert (=> b!614625 false))

(declare-fun b!614626 () Bool)

(declare-fun e!352398 () Unit!19850)

(declare-fun Unit!19855 () Unit!19850)

(assert (=> b!614626 (= e!352398 Unit!19855)))

(declare-fun b!614627 () Bool)

(declare-fun res!395976 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!614627 (= res!395976 (bvsge j!136 index!984))))

(assert (=> b!614627 (=> res!395976 e!352408)))

(declare-fun e!352406 () Bool)

(assert (=> b!614627 (= e!352406 e!352408)))

(declare-fun b!614628 () Bool)

(assert (=> b!614628 false))

(declare-fun lt!282147 () Unit!19850)

(declare-datatypes ((List!12050 0))(
  ( (Nil!12047) (Cons!12046 (h!13091 (_ BitVec 64)) (t!18286 List!12050)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37427 (_ BitVec 64) (_ BitVec 32) List!12050) Unit!19850)

(assert (=> b!614628 (= lt!282147 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282141 (select (arr!17956 a!2986) j!136) j!136 Nil!12047))))

(declare-fun arrayNoDuplicates!0 (array!37427 (_ BitVec 32) List!12050) Bool)

(assert (=> b!614628 (arrayNoDuplicates!0 lt!282141 j!136 Nil!12047)))

(declare-fun lt!282155 () Unit!19850)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37427 (_ BitVec 32) (_ BitVec 32)) Unit!19850)

(assert (=> b!614628 (= lt!282155 (lemmaNoDuplicateFromThenFromBigger!0 lt!282141 #b00000000000000000000000000000000 j!136))))

(assert (=> b!614628 (arrayNoDuplicates!0 lt!282141 #b00000000000000000000000000000000 Nil!12047)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!282142 () Unit!19850)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37427 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12050) Unit!19850)

(assert (=> b!614628 (= lt!282142 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12047))))

(assert (=> b!614628 (arrayContainsKey!0 lt!282141 (select (arr!17956 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282151 () Unit!19850)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37427 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19850)

(assert (=> b!614628 (= lt!282151 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282141 (select (arr!17956 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19856 () Unit!19850)

(assert (=> b!614628 (= e!352398 Unit!19856)))

(declare-fun b!614629 () Bool)

(declare-fun e!352400 () Unit!19850)

(declare-fun Unit!19857 () Unit!19850)

(assert (=> b!614629 (= e!352400 Unit!19857)))

(declare-fun b!614630 () Bool)

(declare-fun res!395982 () Bool)

(declare-fun e!352395 () Bool)

(assert (=> b!614630 (=> (not res!395982) (not e!352395))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37427 (_ BitVec 32)) Bool)

(assert (=> b!614630 (= res!395982 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!614631 () Bool)

(declare-fun e!352404 () Bool)

(assert (=> b!614631 (= e!352404 (not true))))

(declare-fun lt!282138 () Unit!19850)

(assert (=> b!614631 (= lt!282138 e!352405)))

(declare-fun c!69695 () Bool)

(declare-datatypes ((SeekEntryResult!6403 0))(
  ( (MissingZero!6403 (index!27895 (_ BitVec 32))) (Found!6403 (index!27896 (_ BitVec 32))) (Intermediate!6403 (undefined!7215 Bool) (index!27897 (_ BitVec 32)) (x!56724 (_ BitVec 32))) (Undefined!6403) (MissingVacant!6403 (index!27898 (_ BitVec 32))) )
))
(declare-fun lt!282154 () SeekEntryResult!6403)

(assert (=> b!614631 (= c!69695 (= lt!282154 (Found!6403 index!984)))))

(declare-fun lt!282148 () Unit!19850)

(assert (=> b!614631 (= lt!282148 e!352397)))

(declare-fun c!69692 () Bool)

(assert (=> b!614631 (= c!69692 (= lt!282154 Undefined!6403))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!282146 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37427 (_ BitVec 32)) SeekEntryResult!6403)

(assert (=> b!614631 (= lt!282154 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282146 lt!282141 mask!3053))))

(declare-fun e!352399 () Bool)

(assert (=> b!614631 e!352399))

(declare-fun res!395972 () Bool)

(assert (=> b!614631 (=> (not res!395972) (not e!352399))))

(declare-fun lt!282150 () SeekEntryResult!6403)

(declare-fun lt!282137 () (_ BitVec 32))

(assert (=> b!614631 (= res!395972 (= lt!282150 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282137 vacantSpotIndex!68 lt!282146 lt!282141 mask!3053)))))

(assert (=> b!614631 (= lt!282150 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282137 vacantSpotIndex!68 (select (arr!17956 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!614631 (= lt!282146 (select (store (arr!17956 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!282156 () Unit!19850)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37427 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19850)

(assert (=> b!614631 (= lt!282156 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282137 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!614631 (= lt!282137 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!614632 () Bool)

(declare-fun res!395984 () Bool)

(declare-fun e!352407 () Bool)

(assert (=> b!614632 (=> (not res!395984) (not e!352407))))

(assert (=> b!614632 (= res!395984 (and (= (size!18320 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18320 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18320 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!614633 () Bool)

(declare-fun res!395980 () Bool)

(assert (=> b!614633 (=> (not res!395980) (not e!352407))))

(assert (=> b!614633 (= res!395980 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!614634 () Bool)

(declare-fun res!395986 () Bool)

(assert (=> b!614634 (=> (not res!395986) (not e!352395))))

(assert (=> b!614634 (= res!395986 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12047))))

(declare-fun b!614635 () Bool)

(assert (=> b!614635 (= e!352407 e!352395)))

(declare-fun res!395975 () Bool)

(assert (=> b!614635 (=> (not res!395975) (not e!352395))))

(declare-fun lt!282139 () SeekEntryResult!6403)

(assert (=> b!614635 (= res!395975 (or (= lt!282139 (MissingZero!6403 i!1108)) (= lt!282139 (MissingVacant!6403 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37427 (_ BitVec 32)) SeekEntryResult!6403)

(assert (=> b!614635 (= lt!282139 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!614636 () Bool)

(declare-fun e!352403 () Bool)

(assert (=> b!614636 (= e!352403 e!352404)))

(declare-fun res!395979 () Bool)

(assert (=> b!614636 (=> (not res!395979) (not e!352404))))

(declare-fun lt!282153 () SeekEntryResult!6403)

(assert (=> b!614636 (= res!395979 (and (= lt!282153 (Found!6403 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17956 a!2986) index!984) (select (arr!17956 a!2986) j!136))) (not (= (select (arr!17956 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!614636 (= lt!282153 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17956 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!614637 () Bool)

(declare-fun res!395987 () Bool)

(assert (=> b!614637 (=> (not res!395987) (not e!352395))))

(assert (=> b!614637 (= res!395987 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17956 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!614638 () Bool)

(assert (=> b!614638 (= e!352399 (= lt!282153 lt!282150))))

(declare-fun b!614639 () Bool)

(declare-fun e!352402 () Bool)

(assert (=> b!614639 (= e!352402 (arrayContainsKey!0 lt!282141 (select (arr!17956 a!2986) j!136) index!984))))

(declare-fun b!614640 () Bool)

(declare-fun res!395978 () Bool)

(assert (=> b!614640 (=> (not res!395978) (not e!352407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!614640 (= res!395978 (validKeyInArray!0 (select (arr!17956 a!2986) j!136)))))

(declare-fun b!614641 () Bool)

(assert (=> b!614641 (= e!352395 e!352403)))

(declare-fun res!395985 () Bool)

(assert (=> b!614641 (=> (not res!395985) (not e!352403))))

(assert (=> b!614641 (= res!395985 (= (select (store (arr!17956 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!614641 (= lt!282141 (array!37428 (store (arr!17956 a!2986) i!1108 k0!1786) (size!18320 a!2986)))))

(declare-fun b!614642 () Bool)

(declare-fun Unit!19858 () Unit!19850)

(assert (=> b!614642 (= e!352405 Unit!19858)))

(declare-fun res!395974 () Bool)

(assert (=> b!614642 (= res!395974 (= (select (store (arr!17956 a!2986) i!1108 k0!1786) index!984) (select (arr!17956 a!2986) j!136)))))

(assert (=> b!614642 (=> (not res!395974) (not e!352406))))

(assert (=> b!614642 e!352406))

(declare-fun c!69693 () Bool)

(assert (=> b!614642 (= c!69693 (bvslt j!136 index!984))))

(declare-fun lt!282140 () Unit!19850)

(assert (=> b!614642 (= lt!282140 e!352398)))

(declare-fun c!69694 () Bool)

(assert (=> b!614642 (= c!69694 (bvslt index!984 j!136))))

(declare-fun lt!282143 () Unit!19850)

(assert (=> b!614642 (= lt!282143 e!352400)))

(assert (=> b!614642 false))

(declare-fun b!614643 () Bool)

(assert (=> b!614643 (= e!352401 (arrayContainsKey!0 lt!282141 (select (arr!17956 a!2986) j!136) index!984))))

(declare-fun res!395977 () Bool)

(assert (=> start!55994 (=> (not res!395977) (not e!352407))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55994 (= res!395977 (validMask!0 mask!3053))))

(assert (=> start!55994 e!352407))

(assert (=> start!55994 true))

(declare-fun array_inv!13730 (array!37427) Bool)

(assert (=> start!55994 (array_inv!13730 a!2986)))

(declare-fun b!614644 () Bool)

(assert (=> b!614644 false))

(declare-fun lt!282152 () Unit!19850)

(assert (=> b!614644 (= lt!282152 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282141 (select (arr!17956 a!2986) j!136) index!984 Nil!12047))))

(assert (=> b!614644 (arrayNoDuplicates!0 lt!282141 index!984 Nil!12047)))

(declare-fun lt!282149 () Unit!19850)

(assert (=> b!614644 (= lt!282149 (lemmaNoDuplicateFromThenFromBigger!0 lt!282141 #b00000000000000000000000000000000 index!984))))

(assert (=> b!614644 (arrayNoDuplicates!0 lt!282141 #b00000000000000000000000000000000 Nil!12047)))

(declare-fun lt!282145 () Unit!19850)

(assert (=> b!614644 (= lt!282145 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12047))))

(assert (=> b!614644 (arrayContainsKey!0 lt!282141 (select (arr!17956 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282144 () Unit!19850)

(assert (=> b!614644 (= lt!282144 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282141 (select (arr!17956 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!614644 e!352402))

(declare-fun res!395983 () Bool)

(assert (=> b!614644 (=> (not res!395983) (not e!352402))))

(assert (=> b!614644 (= res!395983 (arrayContainsKey!0 lt!282141 (select (arr!17956 a!2986) j!136) j!136))))

(declare-fun Unit!19859 () Unit!19850)

(assert (=> b!614644 (= e!352400 Unit!19859)))

(declare-fun b!614645 () Bool)

(declare-fun res!395981 () Bool)

(assert (=> b!614645 (=> (not res!395981) (not e!352407))))

(assert (=> b!614645 (= res!395981 (validKeyInArray!0 k0!1786))))

(assert (= (and start!55994 res!395977) b!614632))

(assert (= (and b!614632 res!395984) b!614640))

(assert (= (and b!614640 res!395978) b!614645))

(assert (= (and b!614645 res!395981) b!614633))

(assert (= (and b!614633 res!395980) b!614635))

(assert (= (and b!614635 res!395975) b!614630))

(assert (= (and b!614630 res!395982) b!614634))

(assert (= (and b!614634 res!395986) b!614637))

(assert (= (and b!614637 res!395987) b!614641))

(assert (= (and b!614641 res!395985) b!614636))

(assert (= (and b!614636 res!395979) b!614631))

(assert (= (and b!614631 res!395972) b!614638))

(assert (= (and b!614631 c!69692) b!614625))

(assert (= (and b!614631 (not c!69692)) b!614622))

(assert (= (and b!614631 c!69695) b!614642))

(assert (= (and b!614631 (not c!69695)) b!614623))

(assert (= (and b!614642 res!395974) b!614627))

(assert (= (and b!614627 (not res!395976)) b!614624))

(assert (= (and b!614624 res!395973) b!614643))

(assert (= (and b!614642 c!69693) b!614628))

(assert (= (and b!614642 (not c!69693)) b!614626))

(assert (= (and b!614642 c!69694) b!614644))

(assert (= (and b!614642 (not c!69694)) b!614629))

(assert (= (and b!614644 res!395983) b!614639))

(declare-fun m!590893 () Bool)

(assert (=> start!55994 m!590893))

(declare-fun m!590895 () Bool)

(assert (=> start!55994 m!590895))

(declare-fun m!590897 () Bool)

(assert (=> b!614637 m!590897))

(declare-fun m!590899 () Bool)

(assert (=> b!614644 m!590899))

(declare-fun m!590901 () Bool)

(assert (=> b!614644 m!590901))

(assert (=> b!614644 m!590901))

(declare-fun m!590903 () Bool)

(assert (=> b!614644 m!590903))

(assert (=> b!614644 m!590901))

(declare-fun m!590905 () Bool)

(assert (=> b!614644 m!590905))

(declare-fun m!590907 () Bool)

(assert (=> b!614644 m!590907))

(declare-fun m!590909 () Bool)

(assert (=> b!614644 m!590909))

(assert (=> b!614644 m!590901))

(declare-fun m!590911 () Bool)

(assert (=> b!614644 m!590911))

(assert (=> b!614644 m!590901))

(declare-fun m!590913 () Bool)

(assert (=> b!614644 m!590913))

(declare-fun m!590915 () Bool)

(assert (=> b!614644 m!590915))

(assert (=> b!614639 m!590901))

(assert (=> b!614639 m!590901))

(declare-fun m!590917 () Bool)

(assert (=> b!614639 m!590917))

(declare-fun m!590919 () Bool)

(assert (=> b!614634 m!590919))

(assert (=> b!614643 m!590901))

(assert (=> b!614643 m!590901))

(assert (=> b!614643 m!590917))

(declare-fun m!590921 () Bool)

(assert (=> b!614636 m!590921))

(assert (=> b!614636 m!590901))

(assert (=> b!614636 m!590901))

(declare-fun m!590923 () Bool)

(assert (=> b!614636 m!590923))

(declare-fun m!590925 () Bool)

(assert (=> b!614642 m!590925))

(declare-fun m!590927 () Bool)

(assert (=> b!614642 m!590927))

(assert (=> b!614642 m!590901))

(declare-fun m!590929 () Bool)

(assert (=> b!614645 m!590929))

(declare-fun m!590931 () Bool)

(assert (=> b!614635 m!590931))

(assert (=> b!614641 m!590925))

(declare-fun m!590933 () Bool)

(assert (=> b!614641 m!590933))

(assert (=> b!614640 m!590901))

(assert (=> b!614640 m!590901))

(declare-fun m!590935 () Bool)

(assert (=> b!614640 m!590935))

(declare-fun m!590937 () Bool)

(assert (=> b!614631 m!590937))

(declare-fun m!590939 () Bool)

(assert (=> b!614631 m!590939))

(assert (=> b!614631 m!590901))

(declare-fun m!590941 () Bool)

(assert (=> b!614631 m!590941))

(assert (=> b!614631 m!590925))

(declare-fun m!590943 () Bool)

(assert (=> b!614631 m!590943))

(declare-fun m!590945 () Bool)

(assert (=> b!614631 m!590945))

(assert (=> b!614631 m!590901))

(declare-fun m!590947 () Bool)

(assert (=> b!614631 m!590947))

(declare-fun m!590949 () Bool)

(assert (=> b!614633 m!590949))

(assert (=> b!614628 m!590901))

(assert (=> b!614628 m!590901))

(declare-fun m!590951 () Bool)

(assert (=> b!614628 m!590951))

(assert (=> b!614628 m!590901))

(declare-fun m!590953 () Bool)

(assert (=> b!614628 m!590953))

(declare-fun m!590955 () Bool)

(assert (=> b!614628 m!590955))

(declare-fun m!590957 () Bool)

(assert (=> b!614628 m!590957))

(assert (=> b!614628 m!590901))

(declare-fun m!590959 () Bool)

(assert (=> b!614628 m!590959))

(assert (=> b!614628 m!590909))

(assert (=> b!614628 m!590915))

(declare-fun m!590961 () Bool)

(assert (=> b!614630 m!590961))

(assert (=> b!614624 m!590901))

(assert (=> b!614624 m!590901))

(assert (=> b!614624 m!590903))

(check-sat (not b!614630) (not start!55994) (not b!614644) (not b!614645) (not b!614639) (not b!614643) (not b!614628) (not b!614636) (not b!614633) (not b!614624) (not b!614634) (not b!614640) (not b!614635) (not b!614631))
(check-sat)
