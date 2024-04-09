; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57202 () Bool)

(assert start!57202)

(declare-fun b!632877 () Bool)

(declare-datatypes ((Unit!21306 0))(
  ( (Unit!21307) )
))
(declare-fun e!361851 () Unit!21306)

(declare-fun Unit!21308 () Unit!21306)

(assert (=> b!632877 (= e!361851 Unit!21308)))

(declare-fun res!409411 () Bool)

(declare-fun e!361842 () Bool)

(assert (=> start!57202 (=> (not res!409411) (not e!361842))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57202 (= res!409411 (validMask!0 mask!3053))))

(assert (=> start!57202 e!361842))

(assert (=> start!57202 true))

(declare-datatypes ((array!38125 0))(
  ( (array!38126 (arr!18290 (Array (_ BitVec 32) (_ BitVec 64))) (size!18654 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38125)

(declare-fun array_inv!14064 (array!38125) Bool)

(assert (=> start!57202 (array_inv!14064 a!2986)))

(declare-fun b!632878 () Bool)

(declare-fun res!409412 () Bool)

(assert (=> b!632878 (=> (not res!409412) (not e!361842))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!632878 (= res!409412 (validKeyInArray!0 (select (arr!18290 a!2986) j!136)))))

(declare-fun lt!292567 () array!38125)

(declare-fun b!632879 () Bool)

(declare-fun e!361848 () Bool)

(declare-fun arrayContainsKey!0 (array!38125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!632879 (= e!361848 (arrayContainsKey!0 lt!292567 (select (arr!18290 a!2986) j!136) j!136))))

(declare-fun b!632880 () Bool)

(declare-fun e!361850 () Bool)

(assert (=> b!632880 (= e!361850 e!361848)))

(declare-fun res!409424 () Bool)

(assert (=> b!632880 (=> res!409424 e!361848)))

(declare-fun lt!292570 () (_ BitVec 64))

(declare-fun lt!292563 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!632880 (= res!409424 (or (not (= (select (arr!18290 a!2986) j!136) lt!292563)) (not (= (select (arr!18290 a!2986) j!136) lt!292570)) (bvsge j!136 index!984)))))

(declare-fun b!632881 () Bool)

(declare-fun Unit!21309 () Unit!21306)

(assert (=> b!632881 (= e!361851 Unit!21309)))

(assert (=> b!632881 false))

(declare-fun b!632882 () Bool)

(declare-fun res!409416 () Bool)

(assert (=> b!632882 (=> (not res!409416) (not e!361842))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!632882 (= res!409416 (and (= (size!18654 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18654 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18654 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!632883 () Bool)

(declare-fun res!409413 () Bool)

(declare-fun e!361845 () Bool)

(assert (=> b!632883 (=> (not res!409413) (not e!361845))))

(declare-datatypes ((List!12384 0))(
  ( (Nil!12381) (Cons!12380 (h!13425 (_ BitVec 64)) (t!18620 List!12384)) )
))
(declare-fun arrayNoDuplicates!0 (array!38125 (_ BitVec 32) List!12384) Bool)

(assert (=> b!632883 (= res!409413 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12381))))

(declare-fun b!632884 () Bool)

(declare-fun e!361846 () Bool)

(declare-fun e!361849 () Bool)

(assert (=> b!632884 (= e!361846 (not e!361849))))

(declare-fun res!409418 () Bool)

(assert (=> b!632884 (=> res!409418 e!361849)))

(declare-datatypes ((SeekEntryResult!6737 0))(
  ( (MissingZero!6737 (index!29243 (_ BitVec 32))) (Found!6737 (index!29244 (_ BitVec 32))) (Intermediate!6737 (undefined!7549 Bool) (index!29245 (_ BitVec 32)) (x!58006 (_ BitVec 32))) (Undefined!6737) (MissingVacant!6737 (index!29246 (_ BitVec 32))) )
))
(declare-fun lt!292565 () SeekEntryResult!6737)

(assert (=> b!632884 (= res!409418 (not (= lt!292565 (Found!6737 index!984))))))

(declare-fun lt!292571 () Unit!21306)

(assert (=> b!632884 (= lt!292571 e!361851)))

(declare-fun c!72101 () Bool)

(assert (=> b!632884 (= c!72101 (= lt!292565 Undefined!6737))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38125 (_ BitVec 32)) SeekEntryResult!6737)

(assert (=> b!632884 (= lt!292565 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!292563 lt!292567 mask!3053))))

(declare-fun e!361847 () Bool)

(assert (=> b!632884 e!361847))

(declare-fun res!409420 () Bool)

(assert (=> b!632884 (=> (not res!409420) (not e!361847))))

(declare-fun lt!292564 () (_ BitVec 32))

(declare-fun lt!292572 () SeekEntryResult!6737)

(assert (=> b!632884 (= res!409420 (= lt!292572 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292564 vacantSpotIndex!68 lt!292563 lt!292567 mask!3053)))))

(assert (=> b!632884 (= lt!292572 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!292564 vacantSpotIndex!68 (select (arr!18290 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!632884 (= lt!292563 (select (store (arr!18290 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!292568 () Unit!21306)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38125 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21306)

(assert (=> b!632884 (= lt!292568 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!292564 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!632884 (= lt!292564 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!632885 () Bool)

(declare-fun e!361844 () Bool)

(assert (=> b!632885 (= e!361844 e!361846)))

(declare-fun res!409417 () Bool)

(assert (=> b!632885 (=> (not res!409417) (not e!361846))))

(declare-fun lt!292566 () SeekEntryResult!6737)

(assert (=> b!632885 (= res!409417 (and (= lt!292566 (Found!6737 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18290 a!2986) index!984) (select (arr!18290 a!2986) j!136))) (not (= (select (arr!18290 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!632885 (= lt!292566 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18290 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!632886 () Bool)

(declare-fun res!409415 () Bool)

(assert (=> b!632886 (=> (not res!409415) (not e!361842))))

(assert (=> b!632886 (= res!409415 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!632887 () Bool)

(assert (=> b!632887 (= e!361845 e!361844)))

(declare-fun res!409409 () Bool)

(assert (=> b!632887 (=> (not res!409409) (not e!361844))))

(assert (=> b!632887 (= res!409409 (= (select (store (arr!18290 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!632887 (= lt!292567 (array!38126 (store (arr!18290 a!2986) i!1108 k!1786) (size!18654 a!2986)))))

(declare-fun b!632888 () Bool)

(assert (=> b!632888 (= e!361842 e!361845)))

(declare-fun res!409421 () Bool)

(assert (=> b!632888 (=> (not res!409421) (not e!361845))))

(declare-fun lt!292569 () SeekEntryResult!6737)

(assert (=> b!632888 (= res!409421 (or (= lt!292569 (MissingZero!6737 i!1108)) (= lt!292569 (MissingVacant!6737 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38125 (_ BitVec 32)) SeekEntryResult!6737)

(assert (=> b!632888 (= lt!292569 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!632889 () Bool)

(declare-fun e!361852 () Bool)

(assert (=> b!632889 (= e!361852 (arrayContainsKey!0 lt!292567 (select (arr!18290 a!2986) j!136) index!984))))

(declare-fun b!632890 () Bool)

(declare-fun res!409419 () Bool)

(assert (=> b!632890 (=> (not res!409419) (not e!361845))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38125 (_ BitVec 32)) Bool)

(assert (=> b!632890 (= res!409419 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!632891 () Bool)

(declare-fun res!409410 () Bool)

(assert (=> b!632891 (=> (not res!409410) (not e!361842))))

(assert (=> b!632891 (= res!409410 (validKeyInArray!0 k!1786))))

(declare-fun b!632892 () Bool)

(assert (=> b!632892 (= e!361849 e!361852)))

(declare-fun res!409422 () Bool)

(assert (=> b!632892 (=> res!409422 e!361852)))

(assert (=> b!632892 (= res!409422 (or (not (= (select (arr!18290 a!2986) j!136) lt!292563)) (not (= (select (arr!18290 a!2986) j!136) lt!292570)) (bvsge j!136 index!984)))))

(assert (=> b!632892 e!361850))

(declare-fun res!409414 () Bool)

(assert (=> b!632892 (=> (not res!409414) (not e!361850))))

(assert (=> b!632892 (= res!409414 (= lt!292570 (select (arr!18290 a!2986) j!136)))))

(assert (=> b!632892 (= lt!292570 (select (store (arr!18290 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!632893 () Bool)

(declare-fun res!409423 () Bool)

(assert (=> b!632893 (=> (not res!409423) (not e!361845))))

(assert (=> b!632893 (= res!409423 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18290 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!632894 () Bool)

(assert (=> b!632894 (= e!361847 (= lt!292566 lt!292572))))

(assert (= (and start!57202 res!409411) b!632882))

(assert (= (and b!632882 res!409416) b!632878))

(assert (= (and b!632878 res!409412) b!632891))

(assert (= (and b!632891 res!409410) b!632886))

(assert (= (and b!632886 res!409415) b!632888))

(assert (= (and b!632888 res!409421) b!632890))

(assert (= (and b!632890 res!409419) b!632883))

(assert (= (and b!632883 res!409413) b!632893))

(assert (= (and b!632893 res!409423) b!632887))

(assert (= (and b!632887 res!409409) b!632885))

(assert (= (and b!632885 res!409417) b!632884))

(assert (= (and b!632884 res!409420) b!632894))

(assert (= (and b!632884 c!72101) b!632881))

(assert (= (and b!632884 (not c!72101)) b!632877))

(assert (= (and b!632884 (not res!409418)) b!632892))

(assert (= (and b!632892 res!409414) b!632880))

(assert (= (and b!632880 (not res!409424)) b!632879))

(assert (= (and b!632892 (not res!409422)) b!632889))

(declare-fun m!607667 () Bool)

(assert (=> start!57202 m!607667))

(declare-fun m!607669 () Bool)

(assert (=> start!57202 m!607669))

(declare-fun m!607671 () Bool)

(assert (=> b!632880 m!607671))

(declare-fun m!607673 () Bool)

(assert (=> b!632888 m!607673))

(declare-fun m!607675 () Bool)

(assert (=> b!632884 m!607675))

(declare-fun m!607677 () Bool)

(assert (=> b!632884 m!607677))

(assert (=> b!632884 m!607671))

(declare-fun m!607679 () Bool)

(assert (=> b!632884 m!607679))

(declare-fun m!607681 () Bool)

(assert (=> b!632884 m!607681))

(declare-fun m!607683 () Bool)

(assert (=> b!632884 m!607683))

(assert (=> b!632884 m!607671))

(declare-fun m!607685 () Bool)

(assert (=> b!632884 m!607685))

(declare-fun m!607687 () Bool)

(assert (=> b!632884 m!607687))

(assert (=> b!632892 m!607671))

(assert (=> b!632892 m!607679))

(declare-fun m!607689 () Bool)

(assert (=> b!632892 m!607689))

(declare-fun m!607691 () Bool)

(assert (=> b!632883 m!607691))

(declare-fun m!607693 () Bool)

(assert (=> b!632893 m!607693))

(assert (=> b!632878 m!607671))

(assert (=> b!632878 m!607671))

(declare-fun m!607695 () Bool)

(assert (=> b!632878 m!607695))

(declare-fun m!607697 () Bool)

(assert (=> b!632886 m!607697))

(assert (=> b!632887 m!607679))

(declare-fun m!607699 () Bool)

(assert (=> b!632887 m!607699))

(declare-fun m!607701 () Bool)

(assert (=> b!632890 m!607701))

(declare-fun m!607703 () Bool)

(assert (=> b!632891 m!607703))

(assert (=> b!632879 m!607671))

(assert (=> b!632879 m!607671))

(declare-fun m!607705 () Bool)

(assert (=> b!632879 m!607705))

(assert (=> b!632889 m!607671))

(assert (=> b!632889 m!607671))

(declare-fun m!607707 () Bool)

(assert (=> b!632889 m!607707))

(declare-fun m!607709 () Bool)

(assert (=> b!632885 m!607709))

(assert (=> b!632885 m!607671))

(assert (=> b!632885 m!607671))

(declare-fun m!607711 () Bool)

(assert (=> b!632885 m!607711))

(push 1)

(assert (not b!632879))

(assert (not b!632878))

(assert (not b!632889))

(assert (not b!632885))

(assert (not b!632886))

(assert (not b!632884))

(assert (not b!632883))

(assert (not b!632890))

(assert (not b!632891))

(assert (not b!632888))

(assert (not start!57202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!89389 () Bool)

(declare-fun res!409441 () Bool)

(declare-fun e!361890 () Bool)

(assert (=> d!89389 (=> res!409441 e!361890)))

(assert (=> d!89389 (= res!409441 (= (select (arr!18290 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!89389 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!361890)))

(declare-fun b!632953 () Bool)

(declare-fun e!361891 () Bool)

(assert (=> b!632953 (= e!361890 e!361891)))

(declare-fun res!409442 () Bool)

(assert (=> b!632953 (=> (not res!409442) (not e!361891))))

(assert (=> b!632953 (= res!409442 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18654 a!2986)))))

(declare-fun b!632954 () Bool)

(assert (=> b!632954 (= e!361891 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!89389 (not res!409441)) b!632953))

(assert (= (and b!632953 res!409442) b!632954))

(declare-fun m!607749 () Bool)

(assert (=> d!89389 m!607749))

(declare-fun m!607751 () Bool)

(assert (=> b!632954 m!607751))

(assert (=> b!632886 d!89389))

(declare-fun d!89393 () Bool)

(assert (=> d!89393 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!57202 d!89393))

(declare-fun d!89403 () Bool)

(assert (=> d!89403 (= (array_inv!14064 a!2986) (bvsge (size!18654 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!57202 d!89403))

(declare-fun b!633047 () Bool)

(declare-fun e!361952 () SeekEntryResult!6737)

(assert (=> b!633047 (= e!361952 (MissingVacant!6737 vacantSpotIndex!68))))

(declare-fun b!633048 () Bool)

(declare-fun e!361953 () SeekEntryResult!6737)

(assert (=> b!633048 (= e!361953 Undefined!6737)))

(declare-fun b!633049 () Bool)

(declare-fun e!361951 () SeekEntryResult!6737)

(assert (=> b!633049 (= e!361951 (Found!6737 index!984))))

(declare-fun b!633050 () Bool)

(assert (=> b!633050 (= e!361952 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18290 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!633052 () Bool)

(declare-fun c!72157 () Bool)

(declare-fun lt!292631 () (_ BitVec 64))

(assert (=> b!633052 (= c!72157 (= lt!292631 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!633052 (= e!361951 e!361952)))

(declare-fun lt!292630 () SeekEntryResult!6737)

(declare-fun d!89407 () Bool)

(assert (=> d!89407 (and (or (is-Undefined!6737 lt!292630) (not (is-Found!6737 lt!292630)) (and (bvsge (index!29244 lt!292630) #b00000000000000000000000000000000) (bvslt (index!29244 lt!292630) (size!18654 a!2986)))) (or (is-Undefined!6737 lt!292630) (is-Found!6737 lt!292630) (not (is-MissingVacant!6737 lt!292630)) (not (= (index!29246 lt!292630) vacantSpotIndex!68)) (and (bvsge (index!29246 lt!292630) #b00000000000000000000000000000000) (bvslt (index!29246 lt!292630) (size!18654 a!2986)))) (or (is-Undefined!6737 lt!292630) (ite (is-Found!6737 lt!292630) (= (select (arr!18290 a!2986) (index!29244 lt!292630)) (select (arr!18290 a!2986) j!136)) (and (is-MissingVacant!6737 lt!292630) (= (index!29246 lt!292630) vacantSpotIndex!68) (= (select (arr!18290 a!2986) (index!29246 lt!292630)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!89407 (= lt!292630 e!361953)))

(declare-fun c!72156 () Bool)

(assert (=> d!89407 (= c!72156 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!89407 (= lt!292631 (select (arr!18290 a!2986) index!984))))

(assert (=> d!89407 (validMask!0 mask!3053)))

(assert (=> d!89407 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18290 a!2986) j!136) a!2986 mask!3053) lt!292630)))

(declare-fun b!633051 () Bool)

(assert (=> b!633051 (= e!361953 e!361951)))

(declare-fun c!72158 () Bool)

(assert (=> b!633051 (= c!72158 (= lt!292631 (select (arr!18290 a!2986) j!136)))))

(assert (= (and d!89407 c!72156) b!633048))

(assert (= (and d!89407 (not c!72156)) b!633051))

(assert (= (and b!633051 c!72158) b!633049))

(assert (= (and b!633051 (not c!72158)) b!633052))

(assert (= (and b!633052 c!72157) b!633047))

(assert (= (and b!633052 (not c!72157)) b!633050))

(assert (=> b!633050 m!607675))

(assert (=> b!633050 m!607675))

(assert (=> b!633050 m!607671))

(declare-fun m!607827 () Bool)

(assert (=> b!633050 m!607827))

(declare-fun m!607829 () Bool)

(assert (=> d!89407 m!607829))

(declare-fun m!607831 () Bool)

(assert (=> d!89407 m!607831))

(assert (=> d!89407 m!607709))

(assert (=> d!89407 m!607667))

(assert (=> b!632885 d!89407))

(declare-fun bm!33365 () Bool)

(declare-fun call!33368 () Bool)

(assert (=> bm!33365 (= call!33368 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!633067 () Bool)

(declare-fun e!361964 () Bool)

(declare-fun e!361965 () Bool)

(assert (=> b!633067 (= e!361964 e!361965)))

(declare-fun lt!292643 () (_ BitVec 64))

(assert (=> b!633067 (= lt!292643 (select (arr!18290 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!292644 () Unit!21306)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38125 (_ BitVec 64) (_ BitVec 32)) Unit!21306)

(assert (=> b!633067 (= lt!292644 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!292643 #b00000000000000000000000000000000))))

(assert (=> b!633067 (arrayContainsKey!0 a!2986 lt!292643 #b00000000000000000000000000000000)))

(declare-fun lt!292645 () Unit!21306)

(assert (=> b!633067 (= lt!292645 lt!292644)))

(declare-fun res!409473 () Bool)

(assert (=> b!633067 (= res!409473 (= (seekEntryOrOpen!0 (select (arr!18290 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6737 #b00000000000000000000000000000000)))))

(assert (=> b!633067 (=> (not res!409473) (not e!361965))))

(declare-fun b!633068 () Bool)

(assert (=> b!633068 (= e!361965 call!33368)))

(declare-fun b!633069 () Bool)

(assert (=> b!633069 (= e!361964 call!33368)))

(declare-fun d!89421 () Bool)

(declare-fun res!409474 () Bool)

(declare-fun e!361963 () Bool)

(assert (=> d!89421 (=> res!409474 e!361963)))

(assert (=> d!89421 (= res!409474 (bvsge #b00000000000000000000000000000000 (size!18654 a!2986)))))

(assert (=> d!89421 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!361963)))

(declare-fun b!633070 () Bool)

(assert (=> b!633070 (= e!361963 e!361964)))

(declare-fun c!72164 () Bool)

(assert (=> b!633070 (= c!72164 (validKeyInArray!0 (select (arr!18290 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!89421 (not res!409474)) b!633070))

(assert (= (and b!633070 c!72164) b!633067))

(assert (= (and b!633070 (not c!72164)) b!633069))

(assert (= (and b!633067 res!409473) b!633068))

(assert (= (or b!633068 b!633069) bm!33365))

(declare-fun m!607841 () Bool)

(assert (=> bm!33365 m!607841))

(assert (=> b!633067 m!607749))

(declare-fun m!607843 () Bool)

(assert (=> b!633067 m!607843))

(declare-fun m!607845 () Bool)

(assert (=> b!633067 m!607845))

(assert (=> b!633067 m!607749))

(declare-fun m!607847 () Bool)

(assert (=> b!633067 m!607847))

