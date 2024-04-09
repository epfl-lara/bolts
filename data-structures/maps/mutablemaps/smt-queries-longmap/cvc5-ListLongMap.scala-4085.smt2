; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56016 () Bool)

(assert start!56016)

(declare-fun b!615414 () Bool)

(declare-fun e!352862 () Bool)

(declare-fun e!352870 () Bool)

(assert (=> b!615414 (= e!352862 e!352870)))

(declare-fun res!396501 () Bool)

(assert (=> b!615414 (=> (not res!396501) (not e!352870))))

(declare-datatypes ((SeekEntryResult!6414 0))(
  ( (MissingZero!6414 (index!27939 (_ BitVec 32))) (Found!6414 (index!27940 (_ BitVec 32))) (Intermediate!6414 (undefined!7226 Bool) (index!27941 (_ BitVec 32)) (x!56767 (_ BitVec 32))) (Undefined!6414) (MissingVacant!6414 (index!27942 (_ BitVec 32))) )
))
(declare-fun lt!282802 () SeekEntryResult!6414)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!615414 (= res!396501 (or (= lt!282802 (MissingZero!6414 i!1108)) (= lt!282802 (MissingVacant!6414 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37449 0))(
  ( (array!37450 (arr!17967 (Array (_ BitVec 32) (_ BitVec 64))) (size!18331 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37449)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37449 (_ BitVec 32)) SeekEntryResult!6414)

(assert (=> b!615414 (= lt!282802 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!615415 () Bool)

(declare-fun res!396500 () Bool)

(assert (=> b!615415 (=> (not res!396500) (not e!352870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37449 (_ BitVec 32)) Bool)

(assert (=> b!615415 (= res!396500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun e!352861 () Bool)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun b!615416 () Bool)

(declare-fun lt!282815 () array!37449)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37449 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!615416 (= e!352861 (arrayContainsKey!0 lt!282815 (select (arr!17967 a!2986) j!136) index!984))))

(declare-fun b!615417 () Bool)

(declare-fun e!352864 () Bool)

(assert (=> b!615417 (= e!352870 e!352864)))

(declare-fun res!396511 () Bool)

(assert (=> b!615417 (=> (not res!396511) (not e!352864))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!615417 (= res!396511 (= (select (store (arr!17967 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!615417 (= lt!282815 (array!37450 (store (arr!17967 a!2986) i!1108 k!1786) (size!18331 a!2986)))))

(declare-fun b!615418 () Bool)

(declare-datatypes ((Unit!19960 0))(
  ( (Unit!19961) )
))
(declare-fun e!352866 () Unit!19960)

(declare-fun Unit!19962 () Unit!19960)

(assert (=> b!615418 (= e!352866 Unit!19962)))

(declare-fun b!615419 () Bool)

(declare-fun e!352869 () Unit!19960)

(declare-fun Unit!19963 () Unit!19960)

(assert (=> b!615419 (= e!352869 Unit!19963)))

(declare-fun b!615420 () Bool)

(declare-fun res!396506 () Bool)

(assert (=> b!615420 (=> (not res!396506) (not e!352862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!615420 (= res!396506 (validKeyInArray!0 k!1786))))

(declare-fun res!396508 () Bool)

(declare-fun b!615421 () Bool)

(assert (=> b!615421 (= res!396508 (arrayContainsKey!0 lt!282815 (select (arr!17967 a!2986) j!136) j!136))))

(declare-fun e!352860 () Bool)

(assert (=> b!615421 (=> (not res!396508) (not e!352860))))

(declare-fun e!352858 () Bool)

(assert (=> b!615421 (= e!352858 e!352860)))

(declare-fun b!615422 () Bool)

(declare-fun res!396505 () Bool)

(assert (=> b!615422 (=> (not res!396505) (not e!352862))))

(assert (=> b!615422 (= res!396505 (and (= (size!18331 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18331 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18331 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!615423 () Bool)

(declare-fun e!352859 () Unit!19960)

(declare-fun Unit!19964 () Unit!19960)

(assert (=> b!615423 (= e!352859 Unit!19964)))

(declare-fun res!396514 () Bool)

(assert (=> b!615423 (= res!396514 (= (select (store (arr!17967 a!2986) i!1108 k!1786) index!984) (select (arr!17967 a!2986) j!136)))))

(declare-fun e!352863 () Bool)

(assert (=> b!615423 (=> (not res!396514) (not e!352863))))

(assert (=> b!615423 e!352863))

(declare-fun c!69826 () Bool)

(assert (=> b!615423 (= c!69826 (bvslt j!136 index!984))))

(declare-fun lt!282806 () Unit!19960)

(assert (=> b!615423 (= lt!282806 e!352869)))

(declare-fun c!69824 () Bool)

(assert (=> b!615423 (= c!69824 (bvslt index!984 j!136))))

(declare-fun lt!282813 () Unit!19960)

(assert (=> b!615423 (= lt!282813 e!352866)))

(assert (=> b!615423 false))

(declare-fun b!615424 () Bool)

(assert (=> b!615424 false))

(declare-fun lt!282805 () Unit!19960)

(declare-datatypes ((List!12061 0))(
  ( (Nil!12058) (Cons!12057 (h!13102 (_ BitVec 64)) (t!18297 List!12061)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37449 (_ BitVec 64) (_ BitVec 32) List!12061) Unit!19960)

(assert (=> b!615424 (= lt!282805 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282815 (select (arr!17967 a!2986) j!136) j!136 Nil!12058))))

(declare-fun arrayNoDuplicates!0 (array!37449 (_ BitVec 32) List!12061) Bool)

(assert (=> b!615424 (arrayNoDuplicates!0 lt!282815 j!136 Nil!12058)))

(declare-fun lt!282800 () Unit!19960)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37449 (_ BitVec 32) (_ BitVec 32)) Unit!19960)

(assert (=> b!615424 (= lt!282800 (lemmaNoDuplicateFromThenFromBigger!0 lt!282815 #b00000000000000000000000000000000 j!136))))

(assert (=> b!615424 (arrayNoDuplicates!0 lt!282815 #b00000000000000000000000000000000 Nil!12058)))

(declare-fun lt!282814 () Unit!19960)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37449 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12061) Unit!19960)

(assert (=> b!615424 (= lt!282814 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12058))))

(assert (=> b!615424 (arrayContainsKey!0 lt!282815 (select (arr!17967 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!282798 () Unit!19960)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37449 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19960)

(assert (=> b!615424 (= lt!282798 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282815 (select (arr!17967 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!19965 () Unit!19960)

(assert (=> b!615424 (= e!352869 Unit!19965)))

(declare-fun b!615425 () Bool)

(declare-fun res!396509 () Bool)

(assert (=> b!615425 (= res!396509 (bvsge j!136 index!984))))

(assert (=> b!615425 (=> res!396509 e!352858)))

(assert (=> b!615425 (= e!352863 e!352858)))

(declare-fun res!396513 () Bool)

(assert (=> start!56016 (=> (not res!396513) (not e!352862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56016 (= res!396513 (validMask!0 mask!3053))))

(assert (=> start!56016 e!352862))

(assert (=> start!56016 true))

(declare-fun array_inv!13741 (array!37449) Bool)

(assert (=> start!56016 (array_inv!13741 a!2986)))

(declare-fun b!615426 () Bool)

(declare-fun res!396507 () Bool)

(assert (=> b!615426 (=> (not res!396507) (not e!352870))))

(assert (=> b!615426 (= res!396507 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12058))))

(declare-fun b!615427 () Bool)

(declare-fun e!352857 () Bool)

(assert (=> b!615427 (= e!352864 e!352857)))

(declare-fun res!396512 () Bool)

(assert (=> b!615427 (=> (not res!396512) (not e!352857))))

(declare-fun lt!282803 () SeekEntryResult!6414)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!615427 (= res!396512 (and (= lt!282803 (Found!6414 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17967 a!2986) index!984) (select (arr!17967 a!2986) j!136))) (not (= (select (arr!17967 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37449 (_ BitVec 32)) SeekEntryResult!6414)

(assert (=> b!615427 (= lt!282803 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17967 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!615428 () Bool)

(declare-fun res!396515 () Bool)

(assert (=> b!615428 (=> (not res!396515) (not e!352862))))

(assert (=> b!615428 (= res!396515 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!615429 () Bool)

(declare-fun e!352867 () Unit!19960)

(declare-fun Unit!19966 () Unit!19960)

(assert (=> b!615429 (= e!352867 Unit!19966)))

(assert (=> b!615429 false))

(declare-fun b!615430 () Bool)

(assert (=> b!615430 false))

(declare-fun lt!282811 () Unit!19960)

(assert (=> b!615430 (= lt!282811 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!282815 (select (arr!17967 a!2986) j!136) index!984 Nil!12058))))

(assert (=> b!615430 (arrayNoDuplicates!0 lt!282815 index!984 Nil!12058)))

(declare-fun lt!282816 () Unit!19960)

(assert (=> b!615430 (= lt!282816 (lemmaNoDuplicateFromThenFromBigger!0 lt!282815 #b00000000000000000000000000000000 index!984))))

(assert (=> b!615430 (arrayNoDuplicates!0 lt!282815 #b00000000000000000000000000000000 Nil!12058)))

(declare-fun lt!282812 () Unit!19960)

(assert (=> b!615430 (= lt!282812 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12058))))

(assert (=> b!615430 (arrayContainsKey!0 lt!282815 (select (arr!17967 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!282797 () Unit!19960)

(assert (=> b!615430 (= lt!282797 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!282815 (select (arr!17967 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!615430 e!352861))

(declare-fun res!396510 () Bool)

(assert (=> b!615430 (=> (not res!396510) (not e!352861))))

(assert (=> b!615430 (= res!396510 (arrayContainsKey!0 lt!282815 (select (arr!17967 a!2986) j!136) j!136))))

(declare-fun Unit!19967 () Unit!19960)

(assert (=> b!615430 (= e!352866 Unit!19967)))

(declare-fun b!615431 () Bool)

(declare-fun Unit!19968 () Unit!19960)

(assert (=> b!615431 (= e!352867 Unit!19968)))

(declare-fun b!615432 () Bool)

(declare-fun e!352865 () Bool)

(declare-fun lt!282807 () SeekEntryResult!6414)

(assert (=> b!615432 (= e!352865 (= lt!282803 lt!282807))))

(declare-fun b!615433 () Bool)

(declare-fun res!396503 () Bool)

(assert (=> b!615433 (=> (not res!396503) (not e!352862))))

(assert (=> b!615433 (= res!396503 (validKeyInArray!0 (select (arr!17967 a!2986) j!136)))))

(declare-fun b!615434 () Bool)

(assert (=> b!615434 (= e!352857 (not true))))

(declare-fun lt!282804 () Unit!19960)

(assert (=> b!615434 (= lt!282804 e!352859)))

(declare-fun c!69827 () Bool)

(declare-fun lt!282808 () SeekEntryResult!6414)

(assert (=> b!615434 (= c!69827 (= lt!282808 (Found!6414 index!984)))))

(declare-fun lt!282810 () Unit!19960)

(assert (=> b!615434 (= lt!282810 e!352867)))

(declare-fun c!69825 () Bool)

(assert (=> b!615434 (= c!69825 (= lt!282808 Undefined!6414))))

(declare-fun lt!282801 () (_ BitVec 64))

(assert (=> b!615434 (= lt!282808 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!282801 lt!282815 mask!3053))))

(assert (=> b!615434 e!352865))

(declare-fun res!396504 () Bool)

(assert (=> b!615434 (=> (not res!396504) (not e!352865))))

(declare-fun lt!282809 () (_ BitVec 32))

(assert (=> b!615434 (= res!396504 (= lt!282807 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282809 vacantSpotIndex!68 lt!282801 lt!282815 mask!3053)))))

(assert (=> b!615434 (= lt!282807 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!282809 vacantSpotIndex!68 (select (arr!17967 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!615434 (= lt!282801 (select (store (arr!17967 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!282799 () Unit!19960)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37449 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19960)

(assert (=> b!615434 (= lt!282799 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!282809 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!615434 (= lt!282809 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!615435 () Bool)

(declare-fun Unit!19969 () Unit!19960)

(assert (=> b!615435 (= e!352859 Unit!19969)))

(declare-fun b!615436 () Bool)

(assert (=> b!615436 (= e!352860 (arrayContainsKey!0 lt!282815 (select (arr!17967 a!2986) j!136) index!984))))

(declare-fun b!615437 () Bool)

(declare-fun res!396502 () Bool)

(assert (=> b!615437 (=> (not res!396502) (not e!352870))))

(assert (=> b!615437 (= res!396502 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17967 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56016 res!396513) b!615422))

(assert (= (and b!615422 res!396505) b!615433))

(assert (= (and b!615433 res!396503) b!615420))

(assert (= (and b!615420 res!396506) b!615428))

(assert (= (and b!615428 res!396515) b!615414))

(assert (= (and b!615414 res!396501) b!615415))

(assert (= (and b!615415 res!396500) b!615426))

(assert (= (and b!615426 res!396507) b!615437))

(assert (= (and b!615437 res!396502) b!615417))

(assert (= (and b!615417 res!396511) b!615427))

(assert (= (and b!615427 res!396512) b!615434))

(assert (= (and b!615434 res!396504) b!615432))

(assert (= (and b!615434 c!69825) b!615429))

(assert (= (and b!615434 (not c!69825)) b!615431))

(assert (= (and b!615434 c!69827) b!615423))

(assert (= (and b!615434 (not c!69827)) b!615435))

(assert (= (and b!615423 res!396514) b!615425))

(assert (= (and b!615425 (not res!396509)) b!615421))

(assert (= (and b!615421 res!396508) b!615436))

(assert (= (and b!615423 c!69826) b!615424))

(assert (= (and b!615423 (not c!69826)) b!615419))

(assert (= (and b!615423 c!69824) b!615430))

(assert (= (and b!615423 (not c!69824)) b!615418))

(assert (= (and b!615430 res!396510) b!615416))

(declare-fun m!591663 () Bool)

(assert (=> b!615424 m!591663))

(declare-fun m!591665 () Bool)

(assert (=> b!615424 m!591665))

(assert (=> b!615424 m!591665))

(declare-fun m!591667 () Bool)

(assert (=> b!615424 m!591667))

(assert (=> b!615424 m!591665))

(declare-fun m!591669 () Bool)

(assert (=> b!615424 m!591669))

(assert (=> b!615424 m!591665))

(declare-fun m!591671 () Bool)

(assert (=> b!615424 m!591671))

(declare-fun m!591673 () Bool)

(assert (=> b!615424 m!591673))

(declare-fun m!591675 () Bool)

(assert (=> b!615424 m!591675))

(declare-fun m!591677 () Bool)

(assert (=> b!615424 m!591677))

(assert (=> b!615416 m!591665))

(assert (=> b!615416 m!591665))

(declare-fun m!591679 () Bool)

(assert (=> b!615416 m!591679))

(declare-fun m!591681 () Bool)

(assert (=> b!615426 m!591681))

(declare-fun m!591683 () Bool)

(assert (=> b!615430 m!591683))

(assert (=> b!615430 m!591665))

(declare-fun m!591685 () Bool)

(assert (=> b!615430 m!591685))

(assert (=> b!615430 m!591665))

(declare-fun m!591687 () Bool)

(assert (=> b!615430 m!591687))

(assert (=> b!615430 m!591665))

(declare-fun m!591689 () Bool)

(assert (=> b!615430 m!591689))

(assert (=> b!615430 m!591665))

(declare-fun m!591691 () Bool)

(assert (=> b!615430 m!591691))

(assert (=> b!615430 m!591665))

(declare-fun m!591693 () Bool)

(assert (=> b!615430 m!591693))

(assert (=> b!615430 m!591675))

(assert (=> b!615430 m!591677))

(declare-fun m!591695 () Bool)

(assert (=> b!615423 m!591695))

(declare-fun m!591697 () Bool)

(assert (=> b!615423 m!591697))

(assert (=> b!615423 m!591665))

(declare-fun m!591699 () Bool)

(assert (=> b!615434 m!591699))

(declare-fun m!591701 () Bool)

(assert (=> b!615434 m!591701))

(assert (=> b!615434 m!591665))

(assert (=> b!615434 m!591695))

(assert (=> b!615434 m!591665))

(declare-fun m!591703 () Bool)

(assert (=> b!615434 m!591703))

(declare-fun m!591705 () Bool)

(assert (=> b!615434 m!591705))

(declare-fun m!591707 () Bool)

(assert (=> b!615434 m!591707))

(declare-fun m!591709 () Bool)

(assert (=> b!615434 m!591709))

(assert (=> b!615433 m!591665))

(assert (=> b!615433 m!591665))

(declare-fun m!591711 () Bool)

(assert (=> b!615433 m!591711))

(assert (=> b!615436 m!591665))

(assert (=> b!615436 m!591665))

(assert (=> b!615436 m!591679))

(declare-fun m!591713 () Bool)

(assert (=> b!615415 m!591713))

(declare-fun m!591715 () Bool)

(assert (=> b!615428 m!591715))

(declare-fun m!591717 () Bool)

(assert (=> b!615437 m!591717))

(declare-fun m!591719 () Bool)

(assert (=> start!56016 m!591719))

(declare-fun m!591721 () Bool)

(assert (=> start!56016 m!591721))

(assert (=> b!615417 m!591695))

(declare-fun m!591723 () Bool)

(assert (=> b!615417 m!591723))

(declare-fun m!591725 () Bool)

(assert (=> b!615414 m!591725))

(assert (=> b!615421 m!591665))

(assert (=> b!615421 m!591665))

(assert (=> b!615421 m!591689))

(declare-fun m!591727 () Bool)

(assert (=> b!615420 m!591727))

(declare-fun m!591729 () Bool)

(assert (=> b!615427 m!591729))

(assert (=> b!615427 m!591665))

(assert (=> b!615427 m!591665))

(declare-fun m!591731 () Bool)

(assert (=> b!615427 m!591731))

(push 1)

