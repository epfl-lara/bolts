; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58566 () Bool)

(assert start!58566)

(declare-fun b!646380 () Bool)

(declare-fun res!418944 () Bool)

(declare-fun e!370549 () Bool)

(assert (=> b!646380 (=> (not res!418944) (not e!370549))))

(declare-datatypes ((array!38457 0))(
  ( (array!38458 (arr!18435 (Array (_ BitVec 32) (_ BitVec 64))) (size!18799 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38457)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!646380 (= res!418944 (validKeyInArray!0 (select (arr!18435 a!2986) j!136)))))

(declare-fun b!646381 () Bool)

(declare-fun e!370534 () Bool)

(declare-fun e!370541 () Bool)

(assert (=> b!646381 (= e!370534 e!370541)))

(declare-fun res!418945 () Bool)

(assert (=> b!646381 (=> (not res!418945) (not e!370541))))

(declare-fun lt!299955 () array!38457)

(declare-fun arrayContainsKey!0 (array!38457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!646381 (= res!418945 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) j!136))))

(declare-fun b!646383 () Bool)

(declare-fun e!370539 () Bool)

(assert (=> b!646383 (= e!370539 e!370534)))

(declare-fun res!418952 () Bool)

(assert (=> b!646383 (=> res!418952 e!370534)))

(declare-fun lt!299966 () (_ BitVec 64))

(declare-fun lt!299969 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!646383 (= res!418952 (or (not (= (select (arr!18435 a!2986) j!136) lt!299966)) (not (= (select (arr!18435 a!2986) j!136) lt!299969)) (bvsge j!136 index!984)))))

(declare-fun b!646384 () Bool)

(declare-datatypes ((Unit!21964 0))(
  ( (Unit!21965) )
))
(declare-fun e!370537 () Unit!21964)

(declare-fun Unit!21966 () Unit!21964)

(assert (=> b!646384 (= e!370537 Unit!21966)))

(declare-fun b!646385 () Bool)

(declare-fun e!370540 () Bool)

(assert (=> b!646385 (= e!370549 e!370540)))

(declare-fun res!418947 () Bool)

(assert (=> b!646385 (=> (not res!418947) (not e!370540))))

(declare-datatypes ((SeekEntryResult!6882 0))(
  ( (MissingZero!6882 (index!29865 (_ BitVec 32))) (Found!6882 (index!29866 (_ BitVec 32))) (Intermediate!6882 (undefined!7694 Bool) (index!29867 (_ BitVec 32)) (x!58669 (_ BitVec 32))) (Undefined!6882) (MissingVacant!6882 (index!29868 (_ BitVec 32))) )
))
(declare-fun lt!299963 () SeekEntryResult!6882)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!646385 (= res!418947 (or (= lt!299963 (MissingZero!6882 i!1108)) (= lt!299963 (MissingVacant!6882 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38457 (_ BitVec 32)) SeekEntryResult!6882)

(assert (=> b!646385 (= lt!299963 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!646386 () Bool)

(declare-fun res!418949 () Bool)

(assert (=> b!646386 (=> (not res!418949) (not e!370540))))

(declare-datatypes ((List!12529 0))(
  ( (Nil!12526) (Cons!12525 (h!13570 (_ BitVec 64)) (t!18765 List!12529)) )
))
(declare-fun arrayNoDuplicates!0 (array!38457 (_ BitVec 32) List!12529) Bool)

(assert (=> b!646386 (= res!418949 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12526))))

(declare-fun b!646387 () Bool)

(declare-fun res!418950 () Bool)

(assert (=> b!646387 (=> (not res!418950) (not e!370540))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!646387 (= res!418950 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18435 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646388 () Bool)

(declare-fun e!370546 () Bool)

(declare-fun e!370545 () Bool)

(assert (=> b!646388 (= e!370546 e!370545)))

(declare-fun res!418954 () Bool)

(assert (=> b!646388 (=> (not res!418954) (not e!370545))))

(declare-fun lt!299960 () SeekEntryResult!6882)

(assert (=> b!646388 (= res!418954 (and (= lt!299960 (Found!6882 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18435 a!2986) index!984) (select (arr!18435 a!2986) j!136))) (not (= (select (arr!18435 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38457 (_ BitVec 32)) SeekEntryResult!6882)

(assert (=> b!646388 (= lt!299960 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18435 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!646389 () Bool)

(declare-fun res!418953 () Bool)

(assert (=> b!646389 (=> (not res!418953) (not e!370549))))

(assert (=> b!646389 (= res!418953 (validKeyInArray!0 k!1786))))

(declare-fun b!646390 () Bool)

(declare-fun e!370544 () Bool)

(assert (=> b!646390 (= e!370545 (not e!370544))))

(declare-fun res!418951 () Bool)

(assert (=> b!646390 (=> res!418951 e!370544)))

(declare-fun lt!299967 () SeekEntryResult!6882)

(assert (=> b!646390 (= res!418951 (not (= lt!299967 (Found!6882 index!984))))))

(declare-fun lt!299964 () Unit!21964)

(declare-fun e!370548 () Unit!21964)

(assert (=> b!646390 (= lt!299964 e!370548)))

(declare-fun c!74087 () Bool)

(assert (=> b!646390 (= c!74087 (= lt!299967 Undefined!6882))))

(assert (=> b!646390 (= lt!299967 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299966 lt!299955 mask!3053))))

(declare-fun e!370543 () Bool)

(assert (=> b!646390 e!370543))

(declare-fun res!418961 () Bool)

(assert (=> b!646390 (=> (not res!418961) (not e!370543))))

(declare-fun lt!299956 () SeekEntryResult!6882)

(declare-fun lt!299957 () (_ BitVec 32))

(assert (=> b!646390 (= res!418961 (= lt!299956 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299957 vacantSpotIndex!68 lt!299966 lt!299955 mask!3053)))))

(assert (=> b!646390 (= lt!299956 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299957 vacantSpotIndex!68 (select (arr!18435 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!646390 (= lt!299966 (select (store (arr!18435 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!299970 () Unit!21964)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38457 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21964)

(assert (=> b!646390 (= lt!299970 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299957 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!646390 (= lt!299957 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!646391 () Bool)

(declare-fun res!418960 () Bool)

(assert (=> b!646391 (=> (not res!418960) (not e!370549))))

(assert (=> b!646391 (= res!418960 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!646392 () Bool)

(declare-fun Unit!21967 () Unit!21964)

(assert (=> b!646392 (= e!370537 Unit!21967)))

(declare-fun lt!299965 () Unit!21964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38457 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21964)

(assert (=> b!646392 (= lt!299965 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299955 (select (arr!18435 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!646392 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299962 () Unit!21964)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38457 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12529) Unit!21964)

(assert (=> b!646392 (= lt!299962 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12526))))

(assert (=> b!646392 (arrayNoDuplicates!0 lt!299955 #b00000000000000000000000000000000 Nil!12526)))

(declare-fun lt!299961 () Unit!21964)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38457 (_ BitVec 32) (_ BitVec 32)) Unit!21964)

(assert (=> b!646392 (= lt!299961 (lemmaNoDuplicateFromThenFromBigger!0 lt!299955 #b00000000000000000000000000000000 j!136))))

(assert (=> b!646392 (arrayNoDuplicates!0 lt!299955 j!136 Nil!12526)))

(declare-fun lt!299968 () Unit!21964)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38457 (_ BitVec 64) (_ BitVec 32) List!12529) Unit!21964)

(assert (=> b!646392 (= lt!299968 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299955 (select (arr!18435 a!2986) j!136) j!136 Nil!12526))))

(assert (=> b!646392 false))

(declare-fun b!646393 () Bool)

(declare-fun Unit!21968 () Unit!21964)

(assert (=> b!646393 (= e!370548 Unit!21968)))

(assert (=> b!646393 false))

(declare-fun e!370542 () Bool)

(declare-fun b!646394 () Bool)

(assert (=> b!646394 (= e!370542 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) index!984))))

(declare-fun b!646395 () Bool)

(declare-fun e!370536 () Bool)

(declare-fun noDuplicate!412 (List!12529) Bool)

(assert (=> b!646395 (= e!370536 (noDuplicate!412 Nil!12526))))

(declare-fun b!646396 () Bool)

(assert (=> b!646396 (= e!370543 (= lt!299960 lt!299956))))

(declare-fun b!646397 () Bool)

(assert (=> b!646397 (= e!370541 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) index!984))))

(declare-fun b!646398 () Bool)

(declare-fun Unit!21969 () Unit!21964)

(assert (=> b!646398 (= e!370548 Unit!21969)))

(declare-fun b!646399 () Bool)

(declare-fun e!370535 () Bool)

(assert (=> b!646399 (= e!370535 e!370536)))

(declare-fun res!418958 () Bool)

(assert (=> b!646399 (=> res!418958 e!370536)))

(assert (=> b!646399 (= res!418958 (or (bvsge (size!18799 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18799 a!2986))))))

(assert (=> b!646399 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299958 () Unit!21964)

(assert (=> b!646399 (= lt!299958 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299955 (select (arr!18435 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!646399 e!370542))

(declare-fun res!418956 () Bool)

(assert (=> b!646399 (=> (not res!418956) (not e!370542))))

(assert (=> b!646399 (= res!418956 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) j!136))))

(declare-fun res!418946 () Bool)

(assert (=> start!58566 (=> (not res!418946) (not e!370549))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58566 (= res!418946 (validMask!0 mask!3053))))

(assert (=> start!58566 e!370549))

(assert (=> start!58566 true))

(declare-fun array_inv!14209 (array!38457) Bool)

(assert (=> start!58566 (array_inv!14209 a!2986)))

(declare-fun b!646382 () Bool)

(declare-fun e!370538 () Bool)

(assert (=> b!646382 (= e!370538 e!370535)))

(declare-fun res!418943 () Bool)

(assert (=> b!646382 (=> res!418943 e!370535)))

(assert (=> b!646382 (= res!418943 (bvsge index!984 j!136))))

(declare-fun lt!299959 () Unit!21964)

(assert (=> b!646382 (= lt!299959 e!370537)))

(declare-fun c!74086 () Bool)

(assert (=> b!646382 (= c!74086 (bvslt j!136 index!984))))

(declare-fun b!646400 () Bool)

(declare-fun res!418948 () Bool)

(assert (=> b!646400 (=> (not res!418948) (not e!370540))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38457 (_ BitVec 32)) Bool)

(assert (=> b!646400 (= res!418948 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!646401 () Bool)

(assert (=> b!646401 (= e!370544 e!370538)))

(declare-fun res!418955 () Bool)

(assert (=> b!646401 (=> res!418955 e!370538)))

(assert (=> b!646401 (= res!418955 (or (not (= (select (arr!18435 a!2986) j!136) lt!299966)) (not (= (select (arr!18435 a!2986) j!136) lt!299969))))))

(assert (=> b!646401 e!370539))

(declare-fun res!418957 () Bool)

(assert (=> b!646401 (=> (not res!418957) (not e!370539))))

(assert (=> b!646401 (= res!418957 (= lt!299969 (select (arr!18435 a!2986) j!136)))))

(assert (=> b!646401 (= lt!299969 (select (store (arr!18435 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!646402 () Bool)

(declare-fun res!418959 () Bool)

(assert (=> b!646402 (=> (not res!418959) (not e!370549))))

(assert (=> b!646402 (= res!418959 (and (= (size!18799 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18799 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18799 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!646403 () Bool)

(assert (=> b!646403 (= e!370540 e!370546)))

(declare-fun res!418942 () Bool)

(assert (=> b!646403 (=> (not res!418942) (not e!370546))))

(assert (=> b!646403 (= res!418942 (= (select (store (arr!18435 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646403 (= lt!299955 (array!38458 (store (arr!18435 a!2986) i!1108 k!1786) (size!18799 a!2986)))))

(assert (= (and start!58566 res!418946) b!646402))

(assert (= (and b!646402 res!418959) b!646380))

(assert (= (and b!646380 res!418944) b!646389))

(assert (= (and b!646389 res!418953) b!646391))

(assert (= (and b!646391 res!418960) b!646385))

(assert (= (and b!646385 res!418947) b!646400))

(assert (= (and b!646400 res!418948) b!646386))

(assert (= (and b!646386 res!418949) b!646387))

(assert (= (and b!646387 res!418950) b!646403))

(assert (= (and b!646403 res!418942) b!646388))

(assert (= (and b!646388 res!418954) b!646390))

(assert (= (and b!646390 res!418961) b!646396))

(assert (= (and b!646390 c!74087) b!646393))

(assert (= (and b!646390 (not c!74087)) b!646398))

(assert (= (and b!646390 (not res!418951)) b!646401))

(assert (= (and b!646401 res!418957) b!646383))

(assert (= (and b!646383 (not res!418952)) b!646381))

(assert (= (and b!646381 res!418945) b!646397))

(assert (= (and b!646401 (not res!418955)) b!646382))

(assert (= (and b!646382 c!74086) b!646392))

(assert (= (and b!646382 (not c!74086)) b!646384))

(assert (= (and b!646382 (not res!418943)) b!646399))

(assert (= (and b!646399 res!418956) b!646394))

(assert (= (and b!646399 (not res!418958)) b!646395))

(declare-fun m!619905 () Bool)

(assert (=> b!646397 m!619905))

(assert (=> b!646397 m!619905))

(declare-fun m!619907 () Bool)

(assert (=> b!646397 m!619907))

(assert (=> b!646394 m!619905))

(assert (=> b!646394 m!619905))

(assert (=> b!646394 m!619907))

(declare-fun m!619909 () Bool)

(assert (=> b!646386 m!619909))

(assert (=> b!646381 m!619905))

(assert (=> b!646381 m!619905))

(declare-fun m!619911 () Bool)

(assert (=> b!646381 m!619911))

(declare-fun m!619913 () Bool)

(assert (=> b!646400 m!619913))

(declare-fun m!619915 () Bool)

(assert (=> b!646390 m!619915))

(declare-fun m!619917 () Bool)

(assert (=> b!646390 m!619917))

(assert (=> b!646390 m!619905))

(declare-fun m!619919 () Bool)

(assert (=> b!646390 m!619919))

(declare-fun m!619921 () Bool)

(assert (=> b!646390 m!619921))

(declare-fun m!619923 () Bool)

(assert (=> b!646390 m!619923))

(assert (=> b!646390 m!619905))

(declare-fun m!619925 () Bool)

(assert (=> b!646390 m!619925))

(declare-fun m!619927 () Bool)

(assert (=> b!646390 m!619927))

(declare-fun m!619929 () Bool)

(assert (=> b!646392 m!619929))

(assert (=> b!646392 m!619905))

(declare-fun m!619931 () Bool)

(assert (=> b!646392 m!619931))

(assert (=> b!646392 m!619905))

(declare-fun m!619933 () Bool)

(assert (=> b!646392 m!619933))

(declare-fun m!619935 () Bool)

(assert (=> b!646392 m!619935))

(assert (=> b!646392 m!619905))

(declare-fun m!619937 () Bool)

(assert (=> b!646392 m!619937))

(declare-fun m!619939 () Bool)

(assert (=> b!646392 m!619939))

(assert (=> b!646392 m!619905))

(declare-fun m!619941 () Bool)

(assert (=> b!646392 m!619941))

(declare-fun m!619943 () Bool)

(assert (=> b!646387 m!619943))

(assert (=> b!646401 m!619905))

(assert (=> b!646401 m!619921))

(declare-fun m!619945 () Bool)

(assert (=> b!646401 m!619945))

(declare-fun m!619947 () Bool)

(assert (=> b!646395 m!619947))

(assert (=> b!646380 m!619905))

(assert (=> b!646380 m!619905))

(declare-fun m!619949 () Bool)

(assert (=> b!646380 m!619949))

(declare-fun m!619951 () Bool)

(assert (=> b!646388 m!619951))

(assert (=> b!646388 m!619905))

(assert (=> b!646388 m!619905))

(declare-fun m!619953 () Bool)

(assert (=> b!646388 m!619953))

(assert (=> b!646403 m!619921))

(declare-fun m!619955 () Bool)

(assert (=> b!646403 m!619955))

(declare-fun m!619957 () Bool)

(assert (=> b!646391 m!619957))

(declare-fun m!619959 () Bool)

(assert (=> b!646385 m!619959))

(assert (=> b!646399 m!619905))

(assert (=> b!646399 m!619905))

(declare-fun m!619961 () Bool)

(assert (=> b!646399 m!619961))

(assert (=> b!646399 m!619905))

(declare-fun m!619963 () Bool)

(assert (=> b!646399 m!619963))

(assert (=> b!646399 m!619905))

(assert (=> b!646399 m!619911))

(declare-fun m!619965 () Bool)

(assert (=> b!646389 m!619965))

(declare-fun m!619967 () Bool)

(assert (=> start!58566 m!619967))

(declare-fun m!619969 () Bool)

(assert (=> start!58566 m!619969))

(assert (=> b!646383 m!619905))

(push 1)

(assert (not b!646389))

(assert (not b!646386))

(assert (not b!646390))

(assert (not b!646391))

(assert (not b!646385))

(assert (not b!646394))

(assert (not b!646392))

(assert (not start!58566))

(assert (not b!646399))

(assert (not b!646400))

(assert (not b!646380))

(assert (not b!646395))

(assert (not b!646388))

(assert (not b!646397))

(assert (not b!646381))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!91273 () Bool)

(declare-fun res!419120 () Bool)

(declare-fun e!370691 () Bool)

(assert (=> d!91273 (=> res!419120 e!370691)))

(assert (=> d!91273 (= res!419120 (= (select (arr!18435 lt!299955) index!984) (select (arr!18435 a!2986) j!136)))))

(assert (=> d!91273 (= (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) index!984) e!370691)))

(declare-fun b!646600 () Bool)

(declare-fun e!370692 () Bool)

(assert (=> b!646600 (= e!370691 e!370692)))

(declare-fun res!419121 () Bool)

(assert (=> b!646600 (=> (not res!419121) (not e!370692))))

(assert (=> b!646600 (= res!419121 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18799 lt!299955)))))

(declare-fun b!646601 () Bool)

(assert (=> b!646601 (= e!370692 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91273 (not res!419120)) b!646600))

(assert (= (and b!646600 res!419121) b!646601))

(declare-fun m!620147 () Bool)

(assert (=> d!91273 m!620147))

(assert (=> b!646601 m!619905))

(declare-fun m!620149 () Bool)

(assert (=> b!646601 m!620149))

(assert (=> b!646397 d!91273))

(declare-fun d!91275 () Bool)

(declare-fun res!419139 () Bool)

(declare-fun e!370726 () Bool)

(assert (=> d!91275 (=> res!419139 e!370726)))

(assert (=> d!91275 (= res!419139 (bvsge #b00000000000000000000000000000000 (size!18799 a!2986)))))

(assert (=> d!91275 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12526) e!370726)))

(declare-fun b!646647 () Bool)

(declare-fun e!370724 () Bool)

(declare-fun contains!3154 (List!12529 (_ BitVec 64)) Bool)

(assert (=> b!646647 (= e!370724 (contains!3154 Nil!12526 (select (arr!18435 a!2986) #b00000000000000000000000000000000)))))

(declare-fun bm!33661 () Bool)

(declare-fun call!33664 () Bool)

(declare-fun c!74122 () Bool)

(assert (=> bm!33661 (= call!33664 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74122 (Cons!12525 (select (arr!18435 a!2986) #b00000000000000000000000000000000) Nil!12526) Nil!12526)))))

(declare-fun b!646648 () Bool)

(declare-fun e!370725 () Bool)

(assert (=> b!646648 (= e!370725 call!33664)))

(declare-fun b!646649 () Bool)

(declare-fun e!370723 () Bool)

(assert (=> b!646649 (= e!370726 e!370723)))

(declare-fun res!419138 () Bool)

(assert (=> b!646649 (=> (not res!419138) (not e!370723))))

(assert (=> b!646649 (= res!419138 (not e!370724))))

(declare-fun res!419137 () Bool)

(assert (=> b!646649 (=> (not res!419137) (not e!370724))))

(assert (=> b!646649 (= res!419137 (validKeyInArray!0 (select (arr!18435 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!646650 () Bool)

(assert (=> b!646650 (= e!370723 e!370725)))

(assert (=> b!646650 (= c!74122 (validKeyInArray!0 (select (arr!18435 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!646651 () Bool)

(assert (=> b!646651 (= e!370725 call!33664)))

(assert (= (and d!91275 (not res!419139)) b!646649))

(assert (= (and b!646649 res!419137) b!646647))

(assert (= (and b!646649 res!419138) b!646650))

(assert (= (and b!646650 c!74122) b!646651))

(assert (= (and b!646650 (not c!74122)) b!646648))

(assert (= (or b!646651 b!646648) bm!33661))

(declare-fun m!620179 () Bool)

(assert (=> b!646647 m!620179))

(assert (=> b!646647 m!620179))

(declare-fun m!620181 () Bool)

(assert (=> b!646647 m!620181))

(assert (=> bm!33661 m!620179))

(declare-fun m!620183 () Bool)

(assert (=> bm!33661 m!620183))

(assert (=> b!646649 m!620179))

(assert (=> b!646649 m!620179))

(declare-fun m!620185 () Bool)

(assert (=> b!646649 m!620185))

(assert (=> b!646650 m!620179))

(assert (=> b!646650 m!620179))

(assert (=> b!646650 m!620185))

(assert (=> b!646386 d!91275))

(declare-fun d!91287 () Bool)

(declare-fun res!419144 () Bool)

(declare-fun e!370731 () Bool)

(assert (=> d!91287 (=> res!419144 e!370731)))

(assert (=> d!91287 (= res!419144 (= (select (arr!18435 lt!299955) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18435 a!2986) j!136)))))

(assert (=> d!91287 (= (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!370731)))

(declare-fun b!646656 () Bool)

(declare-fun e!370732 () Bool)

(assert (=> b!646656 (= e!370731 e!370732)))

(declare-fun res!419145 () Bool)

(assert (=> b!646656 (=> (not res!419145) (not e!370732))))

(assert (=> b!646656 (= res!419145 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18799 lt!299955)))))

(declare-fun b!646657 () Bool)

(assert (=> b!646657 (= e!370732 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!91287 (not res!419144)) b!646656))

(assert (= (and b!646656 res!419145) b!646657))

(declare-fun m!620187 () Bool)

(assert (=> d!91287 m!620187))

(assert (=> b!646657 m!619905))

(declare-fun m!620189 () Bool)

(assert (=> b!646657 m!620189))

(assert (=> b!646399 d!91287))

(declare-fun d!91289 () Bool)

(assert (=> d!91289 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!300089 () Unit!21964)

(declare-fun choose!114 (array!38457 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21964)

(assert (=> d!91289 (= lt!300089 (choose!114 lt!299955 (select (arr!18435 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!91289 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!91289 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299955 (select (arr!18435 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!300089)))

(declare-fun bs!19316 () Bool)

(assert (= bs!19316 d!91289))

(assert (=> bs!19316 m!619905))

(assert (=> bs!19316 m!619961))

(assert (=> bs!19316 m!619905))

(declare-fun m!620199 () Bool)

(assert (=> bs!19316 m!620199))

(assert (=> b!646399 d!91289))

(declare-fun d!91297 () Bool)

(declare-fun res!419150 () Bool)

(declare-fun e!370737 () Bool)

(assert (=> d!91297 (=> res!419150 e!370737)))

(assert (=> d!91297 (= res!419150 (= (select (arr!18435 lt!299955) j!136) (select (arr!18435 a!2986) j!136)))))

(assert (=> d!91297 (= (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) j!136) e!370737)))

(declare-fun b!646662 () Bool)

(declare-fun e!370738 () Bool)

(assert (=> b!646662 (= e!370737 e!370738)))

(declare-fun res!419151 () Bool)

(assert (=> b!646662 (=> (not res!419151) (not e!370738))))

(assert (=> b!646662 (= res!419151 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18799 lt!299955)))))

(declare-fun b!646663 () Bool)

(assert (=> b!646663 (= e!370738 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91297 (not res!419150)) b!646662))

(assert (= (and b!646662 res!419151) b!646663))

(declare-fun m!620201 () Bool)

(assert (=> d!91297 m!620201))

(assert (=> b!646663 m!619905))

(declare-fun m!620203 () Bool)

(assert (=> b!646663 m!620203))

(assert (=> b!646399 d!91297))

(declare-fun e!370763 () SeekEntryResult!6882)

(declare-fun b!646698 () Bool)

(assert (=> b!646698 (= e!370763 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18435 a!2986) j!136) a!2986 mask!3053))))

(declare-fun d!91299 () Bool)

(declare-fun lt!300115 () SeekEntryResult!6882)

(assert (=> d!91299 (and (or (is-Undefined!6882 lt!300115) (not (is-Found!6882 lt!300115)) (and (bvsge (index!29866 lt!300115) #b00000000000000000000000000000000) (bvslt (index!29866 lt!300115) (size!18799 a!2986)))) (or (is-Undefined!6882 lt!300115) (is-Found!6882 lt!300115) (not (is-MissingVacant!6882 lt!300115)) (not (= (index!29868 lt!300115) vacantSpotIndex!68)) (and (bvsge (index!29868 lt!300115) #b00000000000000000000000000000000) (bvslt (index!29868 lt!300115) (size!18799 a!2986)))) (or (is-Undefined!6882 lt!300115) (ite (is-Found!6882 lt!300115) (= (select (arr!18435 a!2986) (index!29866 lt!300115)) (select (arr!18435 a!2986) j!136)) (and (is-MissingVacant!6882 lt!300115) (= (index!29868 lt!300115) vacantSpotIndex!68) (= (select (arr!18435 a!2986) (index!29868 lt!300115)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370762 () SeekEntryResult!6882)

(assert (=> d!91299 (= lt!300115 e!370762)))

(declare-fun c!74136 () Bool)

(assert (=> d!91299 (= c!74136 (bvsge x!910 #b01111111111111111111111111111110))))

(declare-fun lt!300114 () (_ BitVec 64))

(assert (=> d!91299 (= lt!300114 (select (arr!18435 a!2986) index!984))))

(assert (=> d!91299 (validMask!0 mask!3053)))

(assert (=> d!91299 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18435 a!2986) j!136) a!2986 mask!3053) lt!300115)))

(declare-fun b!646699 () Bool)

(declare-fun e!370764 () SeekEntryResult!6882)

(assert (=> b!646699 (= e!370764 (Found!6882 index!984))))

(declare-fun b!646700 () Bool)

(assert (=> b!646700 (= e!370763 (MissingVacant!6882 vacantSpotIndex!68))))

(declare-fun b!646701 () Bool)

(assert (=> b!646701 (= e!370762 Undefined!6882)))

(declare-fun b!646702 () Bool)

(declare-fun c!74135 () Bool)

(assert (=> b!646702 (= c!74135 (= lt!300114 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646702 (= e!370764 e!370763)))

(declare-fun b!646703 () Bool)

(assert (=> b!646703 (= e!370762 e!370764)))

(declare-fun c!74134 () Bool)

(assert (=> b!646703 (= c!74134 (= lt!300114 (select (arr!18435 a!2986) j!136)))))

(assert (= (and d!91299 c!74136) b!646701))

(assert (= (and d!91299 (not c!74136)) b!646703))

(assert (= (and b!646703 c!74134) b!646699))

(assert (= (and b!646703 (not c!74134)) b!646702))

(assert (= (and b!646702 c!74135) b!646700))

(assert (= (and b!646702 (not c!74135)) b!646698))

(assert (=> b!646698 m!619915))

(assert (=> b!646698 m!619915))

(assert (=> b!646698 m!619905))

(declare-fun m!620245 () Bool)

(assert (=> b!646698 m!620245))

(declare-fun m!620247 () Bool)

(assert (=> d!91299 m!620247))

(declare-fun m!620249 () Bool)

(assert (=> d!91299 m!620249))

(assert (=> d!91299 m!619951))

(assert (=> d!91299 m!619967))

(assert (=> b!646388 d!91299))

(declare-fun d!91321 () Bool)

(declare-fun res!419174 () Bool)

(declare-fun e!370775 () Bool)

(assert (=> d!91321 (=> res!419174 e!370775)))

(assert (=> d!91321 (= res!419174 (is-Nil!12526 Nil!12526))))

(assert (=> d!91321 (= (noDuplicate!412 Nil!12526) e!370775)))

(declare-fun b!646714 () Bool)

(declare-fun e!370776 () Bool)

(assert (=> b!646714 (= e!370775 e!370776)))

(declare-fun res!419175 () Bool)

(assert (=> b!646714 (=> (not res!419175) (not e!370776))))

(assert (=> b!646714 (= res!419175 (not (contains!3154 (t!18765 Nil!12526) (h!13570 Nil!12526))))))

(declare-fun b!646715 () Bool)

(assert (=> b!646715 (= e!370776 (noDuplicate!412 (t!18765 Nil!12526)))))

(assert (= (and d!91321 (not res!419174)) b!646714))

(assert (= (and b!646714 res!419175) b!646715))

(declare-fun m!620254 () Bool)

(assert (=> b!646714 m!620254))

(declare-fun m!620257 () Bool)

(assert (=> b!646715 m!620257))

(assert (=> b!646395 d!91321))

(assert (=> b!646394 d!91273))

(declare-fun b!646776 () Bool)

(declare-fun e!370808 () SeekEntryResult!6882)

(declare-fun lt!300144 () SeekEntryResult!6882)

(assert (=> b!646776 (= e!370808 (MissingZero!6882 (index!29867 lt!300144)))))

(declare-fun b!646777 () Bool)

(declare-fun e!370807 () SeekEntryResult!6882)

(declare-fun e!370809 () SeekEntryResult!6882)

(assert (=> b!646777 (= e!370807 e!370809)))

(declare-fun lt!300145 () (_ BitVec 64))

(assert (=> b!646777 (= lt!300145 (select (arr!18435 a!2986) (index!29867 lt!300144)))))

(declare-fun c!74167 () Bool)

(assert (=> b!646777 (= c!74167 (= lt!300145 k!1786))))

(declare-fun b!646778 () Bool)

(declare-fun c!74169 () Bool)

(assert (=> b!646778 (= c!74169 (= lt!300145 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646778 (= e!370809 e!370808)))

(declare-fun d!91325 () Bool)

(declare-fun lt!300143 () SeekEntryResult!6882)

(assert (=> d!91325 (and (or (is-Undefined!6882 lt!300143) (not (is-Found!6882 lt!300143)) (and (bvsge (index!29866 lt!300143) #b00000000000000000000000000000000) (bvslt (index!29866 lt!300143) (size!18799 a!2986)))) (or (is-Undefined!6882 lt!300143) (is-Found!6882 lt!300143) (not (is-MissingZero!6882 lt!300143)) (and (bvsge (index!29865 lt!300143) #b00000000000000000000000000000000) (bvslt (index!29865 lt!300143) (size!18799 a!2986)))) (or (is-Undefined!6882 lt!300143) (is-Found!6882 lt!300143) (is-MissingZero!6882 lt!300143) (not (is-MissingVacant!6882 lt!300143)) (and (bvsge (index!29868 lt!300143) #b00000000000000000000000000000000) (bvslt (index!29868 lt!300143) (size!18799 a!2986)))) (or (is-Undefined!6882 lt!300143) (ite (is-Found!6882 lt!300143) (= (select (arr!18435 a!2986) (index!29866 lt!300143)) k!1786) (ite (is-MissingZero!6882 lt!300143) (= (select (arr!18435 a!2986) (index!29865 lt!300143)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6882 lt!300143) (= (select (arr!18435 a!2986) (index!29868 lt!300143)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!91325 (= lt!300143 e!370807)))

(declare-fun c!74168 () Bool)

(assert (=> d!91325 (= c!74168 (and (is-Intermediate!6882 lt!300144) (undefined!7694 lt!300144)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38457 (_ BitVec 32)) SeekEntryResult!6882)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!91325 (= lt!300144 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!91325 (validMask!0 mask!3053)))

(assert (=> d!91325 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!300143)))

(declare-fun b!646779 () Bool)

(assert (=> b!646779 (= e!370809 (Found!6882 (index!29867 lt!300144)))))

(declare-fun b!646780 () Bool)

(assert (=> b!646780 (= e!370807 Undefined!6882)))

(declare-fun b!646781 () Bool)

(assert (=> b!646781 (= e!370808 (seekKeyOrZeroReturnVacant!0 (x!58669 lt!300144) (index!29867 lt!300144) (index!29867 lt!300144) k!1786 a!2986 mask!3053))))

(assert (= (and d!91325 c!74168) b!646780))

(assert (= (and d!91325 (not c!74168)) b!646777))

(assert (= (and b!646777 c!74167) b!646779))

(assert (= (and b!646777 (not c!74167)) b!646778))

(assert (= (and b!646778 c!74169) b!646776))

(assert (= (and b!646778 (not c!74169)) b!646781))

(declare-fun m!620291 () Bool)

(assert (=> b!646777 m!620291))

(declare-fun m!620293 () Bool)

(assert (=> d!91325 m!620293))

(declare-fun m!620295 () Bool)

(assert (=> d!91325 m!620295))

(declare-fun m!620297 () Bool)

(assert (=> d!91325 m!620297))

(declare-fun m!620299 () Bool)

(assert (=> d!91325 m!620299))

(assert (=> d!91325 m!620297))

(assert (=> d!91325 m!619967))

(declare-fun m!620301 () Bool)

(assert (=> d!91325 m!620301))

(declare-fun m!620303 () Bool)

(assert (=> b!646781 m!620303))

(assert (=> b!646385 d!91325))

(declare-fun d!91337 () Bool)

(declare-fun res!419178 () Bool)

(declare-fun e!370813 () Bool)

(assert (=> d!91337 (=> res!419178 e!370813)))

(assert (=> d!91337 (= res!419178 (bvsge j!136 (size!18799 lt!299955)))))

(assert (=> d!91337 (= (arrayNoDuplicates!0 lt!299955 j!136 Nil!12526) e!370813)))

(declare-fun b!646782 () Bool)

(declare-fun e!370811 () Bool)

(assert (=> b!646782 (= e!370811 (contains!3154 Nil!12526 (select (arr!18435 lt!299955) j!136)))))

(declare-fun bm!33664 () Bool)

(declare-fun call!33667 () Bool)

(declare-fun c!74170 () Bool)

(assert (=> bm!33664 (= call!33667 (arrayNoDuplicates!0 lt!299955 (bvadd j!136 #b00000000000000000000000000000001) (ite c!74170 (Cons!12525 (select (arr!18435 lt!299955) j!136) Nil!12526) Nil!12526)))))

(declare-fun b!646783 () Bool)

(declare-fun e!370812 () Bool)

(assert (=> b!646783 (= e!370812 call!33667)))

(declare-fun b!646784 () Bool)

(declare-fun e!370810 () Bool)

(assert (=> b!646784 (= e!370813 e!370810)))

(declare-fun res!419177 () Bool)

(assert (=> b!646784 (=> (not res!419177) (not e!370810))))

(assert (=> b!646784 (= res!419177 (not e!370811))))

(declare-fun res!419176 () Bool)

(assert (=> b!646784 (=> (not res!419176) (not e!370811))))

(assert (=> b!646784 (= res!419176 (validKeyInArray!0 (select (arr!18435 lt!299955) j!136)))))

(declare-fun b!646785 () Bool)

(assert (=> b!646785 (= e!370810 e!370812)))

(assert (=> b!646785 (= c!74170 (validKeyInArray!0 (select (arr!18435 lt!299955) j!136)))))

(declare-fun b!646786 () Bool)

(assert (=> b!646786 (= e!370812 call!33667)))

(assert (= (and d!91337 (not res!419178)) b!646784))

(assert (= (and b!646784 res!419176) b!646782))

(assert (= (and b!646784 res!419177) b!646785))

(assert (= (and b!646785 c!74170) b!646786))

(assert (= (and b!646785 (not c!74170)) b!646783))

(assert (= (or b!646786 b!646783) bm!33664))

(assert (=> b!646782 m!620201))

(assert (=> b!646782 m!620201))

(declare-fun m!620305 () Bool)

(assert (=> b!646782 m!620305))

(assert (=> bm!33664 m!620201))

(declare-fun m!620307 () Bool)

(assert (=> bm!33664 m!620307))

(assert (=> b!646784 m!620201))

(assert (=> b!646784 m!620201))

(declare-fun m!620309 () Bool)

(assert (=> b!646784 m!620309))

(assert (=> b!646785 m!620201))

(assert (=> b!646785 m!620201))

(assert (=> b!646785 m!620309))

(assert (=> b!646392 d!91337))

(declare-fun d!91339 () Bool)

(assert (=> d!91339 (arrayNoDuplicates!0 lt!299955 j!136 Nil!12526)))

(declare-fun lt!300148 () Unit!21964)

(declare-fun choose!39 (array!38457 (_ BitVec 32) (_ BitVec 32)) Unit!21964)

(assert (=> d!91339 (= lt!300148 (choose!39 lt!299955 #b00000000000000000000000000000000 j!136))))

(assert (=> d!91339 (bvslt (size!18799 lt!299955) #b01111111111111111111111111111111)))

(assert (=> d!91339 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!299955 #b00000000000000000000000000000000 j!136) lt!300148)))

(declare-fun bs!19322 () Bool)

(assert (= bs!19322 d!91339))

(assert (=> bs!19322 m!619935))

(declare-fun m!620311 () Bool)

(assert (=> bs!19322 m!620311))

(assert (=> b!646392 d!91339))

(declare-fun d!91341 () Bool)

(declare-fun res!419181 () Bool)

(declare-fun e!370820 () Bool)

(assert (=> d!91341 (=> res!419181 e!370820)))

(assert (=> d!91341 (= res!419181 (bvsge #b00000000000000000000000000000000 (size!18799 lt!299955)))))

(assert (=> d!91341 (= (arrayNoDuplicates!0 lt!299955 #b00000000000000000000000000000000 Nil!12526) e!370820)))

(declare-fun b!646793 () Bool)

(declare-fun e!370818 () Bool)

(assert (=> b!646793 (= e!370818 (contains!3154 Nil!12526 (select (arr!18435 lt!299955) #b00000000000000000000000000000000)))))

(declare-fun bm!33665 () Bool)

(declare-fun call!33668 () Bool)

(declare-fun c!74174 () Bool)

(assert (=> bm!33665 (= call!33668 (arrayNoDuplicates!0 lt!299955 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!74174 (Cons!12525 (select (arr!18435 lt!299955) #b00000000000000000000000000000000) Nil!12526) Nil!12526)))))

(declare-fun b!646794 () Bool)

(declare-fun e!370819 () Bool)

(assert (=> b!646794 (= e!370819 call!33668)))

(declare-fun b!646795 () Bool)

(declare-fun e!370817 () Bool)

(assert (=> b!646795 (= e!370820 e!370817)))

(declare-fun res!419180 () Bool)

(assert (=> b!646795 (=> (not res!419180) (not e!370817))))

(assert (=> b!646795 (= res!419180 (not e!370818))))

(declare-fun res!419179 () Bool)

(assert (=> b!646795 (=> (not res!419179) (not e!370818))))

(assert (=> b!646795 (= res!419179 (validKeyInArray!0 (select (arr!18435 lt!299955) #b00000000000000000000000000000000)))))

(declare-fun b!646796 () Bool)

(assert (=> b!646796 (= e!370817 e!370819)))

(assert (=> b!646796 (= c!74174 (validKeyInArray!0 (select (arr!18435 lt!299955) #b00000000000000000000000000000000)))))

(declare-fun b!646797 () Bool)

(assert (=> b!646797 (= e!370819 call!33668)))

(assert (= (and d!91341 (not res!419181)) b!646795))

(assert (= (and b!646795 res!419179) b!646793))

(assert (= (and b!646795 res!419180) b!646796))

(assert (= (and b!646796 c!74174) b!646797))

(assert (= (and b!646796 (not c!74174)) b!646794))

(assert (= (or b!646797 b!646794) bm!33665))

(declare-fun m!620315 () Bool)

(assert (=> b!646793 m!620315))

(assert (=> b!646793 m!620315))

(declare-fun m!620321 () Bool)

(assert (=> b!646793 m!620321))

(assert (=> bm!33665 m!620315))

(declare-fun m!620329 () Bool)

(assert (=> bm!33665 m!620329))

(assert (=> b!646795 m!620315))

(assert (=> b!646795 m!620315))

(declare-fun m!620333 () Bool)

(assert (=> b!646795 m!620333))

(assert (=> b!646796 m!620315))

(assert (=> b!646796 m!620315))

(assert (=> b!646796 m!620333))

(assert (=> b!646392 d!91341))

(declare-fun d!91345 () Bool)

(assert (=> d!91345 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!300154 () Unit!21964)

(assert (=> d!91345 (= lt!300154 (choose!114 lt!299955 (select (arr!18435 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!91345 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!91345 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299955 (select (arr!18435 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!300154)))

(declare-fun bs!19323 () Bool)

(assert (= bs!19323 d!91345))

(assert (=> bs!19323 m!619905))

(assert (=> bs!19323 m!619931))

(assert (=> bs!19323 m!619905))

(declare-fun m!620335 () Bool)

(assert (=> bs!19323 m!620335))

(assert (=> b!646392 d!91345))

(declare-fun d!91347 () Bool)

(declare-fun res!419184 () Bool)

(declare-fun e!370823 () Bool)

(assert (=> d!91347 (=> res!419184 e!370823)))

(assert (=> d!91347 (= res!419184 (= (select (arr!18435 lt!299955) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18435 a!2986) j!136)))))

(assert (=> d!91347 (= (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!370823)))

(declare-fun b!646800 () Bool)

(declare-fun e!370824 () Bool)

(assert (=> b!646800 (= e!370823 e!370824)))

(declare-fun res!419185 () Bool)

(assert (=> b!646800 (=> (not res!419185) (not e!370824))))

(assert (=> b!646800 (= res!419185 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18799 lt!299955)))))

(declare-fun b!646801 () Bool)

(assert (=> b!646801 (= e!370824 (arrayContainsKey!0 lt!299955 (select (arr!18435 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!91347 (not res!419184)) b!646800))

(assert (= (and b!646800 res!419185) b!646801))

(declare-fun m!620337 () Bool)

(assert (=> d!91347 m!620337))

(assert (=> b!646801 m!619905))

(declare-fun m!620339 () Bool)

(assert (=> b!646801 m!620339))

(assert (=> b!646392 d!91347))

(declare-fun d!91349 () Bool)

(assert (=> d!91349 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18799 lt!299955)) (not (= (select (arr!18435 lt!299955) j!136) (select (arr!18435 a!2986) j!136))))))

(declare-fun lt!300158 () Unit!21964)

(declare-fun choose!21 (array!38457 (_ BitVec 64) (_ BitVec 32) List!12529) Unit!21964)

(assert (=> d!91349 (= lt!300158 (choose!21 lt!299955 (select (arr!18435 a!2986) j!136) j!136 Nil!12526))))

(assert (=> d!91349 (bvslt (size!18799 lt!299955) #b01111111111111111111111111111111)))

(assert (=> d!91349 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299955 (select (arr!18435 a!2986) j!136) j!136 Nil!12526) lt!300158)))

(declare-fun bs!19324 () Bool)

(assert (= bs!19324 d!91349))

(assert (=> bs!19324 m!620201))

(assert (=> bs!19324 m!619905))

(declare-fun m!620347 () Bool)

(assert (=> bs!19324 m!620347))

(assert (=> b!646392 d!91349))

(declare-fun d!91355 () Bool)

(declare-fun e!370836 () Bool)

(assert (=> d!91355 e!370836))

(declare-fun res!419195 () Bool)

(assert (=> d!91355 (=> (not res!419195) (not e!370836))))

(assert (=> d!91355 (= res!419195 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18799 a!2986))))))

(declare-fun lt!300167 () Unit!21964)

(declare-fun choose!41 (array!38457 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12529) Unit!21964)

(assert (=> d!91355 (= lt!300167 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12526))))

(assert (=> d!91355 (bvslt (size!18799 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!91355 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12526) lt!300167)))

(declare-fun b!646815 () Bool)

(assert (=> b!646815 (= e!370836 (arrayNoDuplicates!0 (array!38458 (store (arr!18435 a!2986) i!1108 k!1786) (size!18799 a!2986)) #b00000000000000000000000000000000 Nil!12526))))

(assert (= (and d!91355 res!419195) b!646815))

(declare-fun m!620349 () Bool)

(assert (=> d!91355 m!620349))

(assert (=> b!646815 m!619921))

(declare-fun m!620351 () Bool)

(assert (=> b!646815 m!620351))

(assert (=> b!646392 d!91355))

(assert (=> b!646381 d!91297))

(declare-fun d!91357 () Bool)

(assert (=> d!91357 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58566 d!91357))

(declare-fun d!91367 () Bool)

(assert (=> d!91367 (= (array_inv!14209 a!2986) (bvsge (size!18799 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58566 d!91367))

(declare-fun bm!33671 () Bool)

(declare-fun call!33674 () Bool)

(assert (=> bm!33671 (= call!33674 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun d!91369 () Bool)

(declare-fun res!419207 () Bool)

(declare-fun e!370854 () Bool)

(assert (=> d!91369 (=> res!419207 e!370854)))

(assert (=> d!91369 (= res!419207 (bvsge #b00000000000000000000000000000000 (size!18799 a!2986)))))

(assert (=> d!91369 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!370854)))

(declare-fun b!646838 () Bool)

(declare-fun e!370855 () Bool)

(assert (=> b!646838 (= e!370855 call!33674)))

(declare-fun b!646839 () Bool)

(assert (=> b!646839 (= e!370854 e!370855)))

(declare-fun c!74183 () Bool)

(assert (=> b!646839 (= c!74183 (validKeyInArray!0 (select (arr!18435 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!646840 () Bool)

(declare-fun e!370853 () Bool)

(assert (=> b!646840 (= e!370853 call!33674)))

(declare-fun b!646841 () Bool)

(assert (=> b!646841 (= e!370855 e!370853)))

(declare-fun lt!300180 () (_ BitVec 64))

(assert (=> b!646841 (= lt!300180 (select (arr!18435 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!300181 () Unit!21964)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38457 (_ BitVec 64) (_ BitVec 32)) Unit!21964)

(assert (=> b!646841 (= lt!300181 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!300180 #b00000000000000000000000000000000))))

(assert (=> b!646841 (arrayContainsKey!0 a!2986 lt!300180 #b00000000000000000000000000000000)))

(declare-fun lt!300182 () Unit!21964)

(assert (=> b!646841 (= lt!300182 lt!300181)))

(declare-fun res!419206 () Bool)

(assert (=> b!646841 (= res!419206 (= (seekEntryOrOpen!0 (select (arr!18435 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6882 #b00000000000000000000000000000000)))))

(assert (=> b!646841 (=> (not res!419206) (not e!370853))))

(assert (= (and d!91369 (not res!419207)) b!646839))

(assert (= (and b!646839 c!74183) b!646841))

(assert (= (and b!646839 (not c!74183)) b!646838))

(assert (= (and b!646841 res!419206) b!646840))

(assert (= (or b!646840 b!646838) bm!33671))

(declare-fun m!620375 () Bool)

(assert (=> bm!33671 m!620375))

(assert (=> b!646839 m!620179))

(assert (=> b!646839 m!620179))

(assert (=> b!646839 m!620185))

(assert (=> b!646841 m!620179))

(declare-fun m!620377 () Bool)

(assert (=> b!646841 m!620377))

(declare-fun m!620379 () Bool)

(assert (=> b!646841 m!620379))

(assert (=> b!646841 m!620179))

(declare-fun m!620381 () Bool)

(assert (=> b!646841 m!620381))

(assert (=> b!646400 d!91369))

(declare-fun d!91381 () Bool)

(assert (=> d!91381 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!646389 d!91381))

(declare-fun d!91383 () Bool)

(declare-fun res!419208 () Bool)

(declare-fun e!370862 () Bool)

(assert (=> d!91383 (=> res!419208 e!370862)))

(assert (=> d!91383 (= res!419208 (= (select (arr!18435 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!91383 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!370862)))

(declare-fun b!646854 () Bool)

(declare-fun e!370863 () Bool)

(assert (=> b!646854 (= e!370862 e!370863)))

(declare-fun res!419209 () Bool)

(assert (=> b!646854 (=> (not res!419209) (not e!370863))))

(assert (=> b!646854 (= res!419209 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18799 a!2986)))))

(declare-fun b!646855 () Bool)

(assert (=> b!646855 (= e!370863 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!91383 (not res!419208)) b!646854))

(assert (= (and b!646854 res!419209) b!646855))

(assert (=> d!91383 m!620179))

(declare-fun m!620383 () Bool)

(assert (=> b!646855 m!620383))

(assert (=> b!646391 d!91383))

(declare-fun d!91385 () Bool)

(assert (=> d!91385 (= (validKeyInArray!0 (select (arr!18435 a!2986) j!136)) (and (not (= (select (arr!18435 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18435 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!646380 d!91385))

(declare-fun e!370865 () SeekEntryResult!6882)

(declare-fun b!646856 () Bool)

(assert (=> b!646856 (= e!370865 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!299957 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!299966 lt!299955 mask!3053))))

(declare-fun lt!300190 () SeekEntryResult!6882)

(declare-fun d!91387 () Bool)

(assert (=> d!91387 (and (or (is-Undefined!6882 lt!300190) (not (is-Found!6882 lt!300190)) (and (bvsge (index!29866 lt!300190) #b00000000000000000000000000000000) (bvslt (index!29866 lt!300190) (size!18799 lt!299955)))) (or (is-Undefined!6882 lt!300190) (is-Found!6882 lt!300190) (not (is-MissingVacant!6882 lt!300190)) (not (= (index!29868 lt!300190) vacantSpotIndex!68)) (and (bvsge (index!29868 lt!300190) #b00000000000000000000000000000000) (bvslt (index!29868 lt!300190) (size!18799 lt!299955)))) (or (is-Undefined!6882 lt!300190) (ite (is-Found!6882 lt!300190) (= (select (arr!18435 lt!299955) (index!29866 lt!300190)) lt!299966) (and (is-MissingVacant!6882 lt!300190) (= (index!29868 lt!300190) vacantSpotIndex!68) (= (select (arr!18435 lt!299955) (index!29868 lt!300190)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!370864 () SeekEntryResult!6882)

(assert (=> d!91387 (= lt!300190 e!370864)))

(declare-fun c!74192 () Bool)

(assert (=> d!91387 (= c!74192 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(declare-fun lt!300189 () (_ BitVec 64))

(assert (=> d!91387 (= lt!300189 (select (arr!18435 lt!299955) lt!299957))))

(assert (=> d!91387 (validMask!0 mask!3053)))

(assert (=> d!91387 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299957 vacantSpotIndex!68 lt!299966 lt!299955 mask!3053) lt!300190)))

(declare-fun b!646857 () Bool)

