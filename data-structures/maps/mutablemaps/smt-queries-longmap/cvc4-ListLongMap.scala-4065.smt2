; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55714 () Bool)

(assert start!55714)

(declare-fun b!610377 () Bool)

(declare-fun e!349679 () Bool)

(declare-fun e!349678 () Bool)

(assert (=> b!610377 (= e!349679 e!349678)))

(declare-fun res!392748 () Bool)

(assert (=> b!610377 (=> res!392748 e!349678)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!610377 (= res!392748 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19564 0))(
  ( (Unit!19565) )
))
(declare-fun lt!279266 () Unit!19564)

(declare-fun e!349671 () Unit!19564)

(assert (=> b!610377 (= lt!279266 e!349671)))

(declare-fun c!69191 () Bool)

(assert (=> b!610377 (= c!69191 (bvslt j!136 index!984))))

(declare-fun b!610378 () Bool)

(declare-fun res!392740 () Bool)

(declare-fun e!349669 () Bool)

(assert (=> b!610378 (=> (not res!392740) (not e!349669))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!610378 (= res!392740 (validKeyInArray!0 k!1786))))

(declare-fun b!610379 () Bool)

(declare-fun res!392750 () Bool)

(assert (=> b!610379 (=> (not res!392750) (not e!349669))))

(declare-datatypes ((array!37327 0))(
  ( (array!37328 (arr!17909 (Array (_ BitVec 32) (_ BitVec 64))) (size!18273 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37327)

(assert (=> b!610379 (= res!392750 (validKeyInArray!0 (select (arr!17909 a!2986) j!136)))))

(declare-fun b!610380 () Bool)

(declare-fun e!349680 () Bool)

(assert (=> b!610380 (= e!349680 e!349679)))

(declare-fun res!392749 () Bool)

(assert (=> b!610380 (=> res!392749 e!349679)))

(declare-fun lt!279272 () (_ BitVec 64))

(declare-fun lt!279258 () (_ BitVec 64))

(assert (=> b!610380 (= res!392749 (or (not (= (select (arr!17909 a!2986) j!136) lt!279258)) (not (= (select (arr!17909 a!2986) j!136) lt!279272))))))

(declare-fun e!349672 () Bool)

(assert (=> b!610380 e!349672))

(declare-fun res!392733 () Bool)

(assert (=> b!610380 (=> (not res!392733) (not e!349672))))

(assert (=> b!610380 (= res!392733 (= lt!279272 (select (arr!17909 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!610380 (= lt!279272 (select (store (arr!17909 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!610381 () Bool)

(declare-fun Unit!19566 () Unit!19564)

(assert (=> b!610381 (= e!349671 Unit!19566)))

(declare-fun b!610382 () Bool)

(declare-fun e!349675 () Unit!19564)

(declare-fun Unit!19567 () Unit!19564)

(assert (=> b!610382 (= e!349675 Unit!19567)))

(declare-fun b!610383 () Bool)

(declare-fun e!349684 () Bool)

(declare-fun e!349677 () Bool)

(assert (=> b!610383 (= e!349684 e!349677)))

(declare-fun res!392735 () Bool)

(assert (=> b!610383 (=> (not res!392735) (not e!349677))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!610383 (= res!392735 (= (select (store (arr!17909 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!279259 () array!37327)

(assert (=> b!610383 (= lt!279259 (array!37328 (store (arr!17909 a!2986) i!1108 k!1786) (size!18273 a!2986)))))

(declare-fun b!610384 () Bool)

(declare-fun e!349681 () Bool)

(declare-fun e!349670 () Bool)

(assert (=> b!610384 (= e!349681 e!349670)))

(declare-fun res!392741 () Bool)

(assert (=> b!610384 (=> (not res!392741) (not e!349670))))

(declare-fun arrayContainsKey!0 (array!37327 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!610384 (= res!392741 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) j!136))))

(declare-fun b!610385 () Bool)

(assert (=> b!610385 (= e!349672 e!349681)))

(declare-fun res!392746 () Bool)

(assert (=> b!610385 (=> res!392746 e!349681)))

(assert (=> b!610385 (= res!392746 (or (not (= (select (arr!17909 a!2986) j!136) lt!279258)) (not (= (select (arr!17909 a!2986) j!136) lt!279272)) (bvsge j!136 index!984)))))

(declare-fun b!610386 () Bool)

(declare-fun res!392743 () Bool)

(assert (=> b!610386 (=> (not res!392743) (not e!349669))))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!610386 (= res!392743 (and (= (size!18273 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18273 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18273 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!392734 () Bool)

(assert (=> start!55714 (=> (not res!392734) (not e!349669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55714 (= res!392734 (validMask!0 mask!3053))))

(assert (=> start!55714 e!349669))

(assert (=> start!55714 true))

(declare-fun array_inv!13683 (array!37327) Bool)

(assert (=> start!55714 (array_inv!13683 a!2986)))

(declare-fun b!610387 () Bool)

(declare-fun res!392738 () Bool)

(assert (=> b!610387 (=> (not res!392738) (not e!349669))))

(assert (=> b!610387 (= res!392738 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!610388 () Bool)

(declare-fun res!392737 () Bool)

(assert (=> b!610388 (=> (not res!392737) (not e!349684))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!610388 (= res!392737 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17909 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!610389 () Bool)

(assert (=> b!610389 (= e!349670 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) index!984))))

(declare-fun b!610390 () Bool)

(declare-fun e!349674 () Bool)

(declare-datatypes ((SeekEntryResult!6356 0))(
  ( (MissingZero!6356 (index!27701 (_ BitVec 32))) (Found!6356 (index!27702 (_ BitVec 32))) (Intermediate!6356 (undefined!7168 Bool) (index!27703 (_ BitVec 32)) (x!56531 (_ BitVec 32))) (Undefined!6356) (MissingVacant!6356 (index!27704 (_ BitVec 32))) )
))
(declare-fun lt!279269 () SeekEntryResult!6356)

(declare-fun lt!279267 () SeekEntryResult!6356)

(assert (=> b!610390 (= e!349674 (= lt!279269 lt!279267))))

(declare-fun b!610391 () Bool)

(declare-fun res!392739 () Bool)

(assert (=> b!610391 (=> (not res!392739) (not e!349684))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37327 (_ BitVec 32)) Bool)

(assert (=> b!610391 (= res!392739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!610392 () Bool)

(declare-fun Unit!19568 () Unit!19564)

(assert (=> b!610392 (= e!349675 Unit!19568)))

(assert (=> b!610392 false))

(declare-fun b!610393 () Bool)

(declare-fun Unit!19569 () Unit!19564)

(assert (=> b!610393 (= e!349671 Unit!19569)))

(declare-fun lt!279268 () Unit!19564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37327 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19564)

(assert (=> b!610393 (= lt!279268 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279259 (select (arr!17909 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!610393 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279271 () Unit!19564)

(declare-datatypes ((List!12003 0))(
  ( (Nil!12000) (Cons!11999 (h!13044 (_ BitVec 64)) (t!18239 List!12003)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37327 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12003) Unit!19564)

(assert (=> b!610393 (= lt!279271 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12000))))

(declare-fun arrayNoDuplicates!0 (array!37327 (_ BitVec 32) List!12003) Bool)

(assert (=> b!610393 (arrayNoDuplicates!0 lt!279259 #b00000000000000000000000000000000 Nil!12000)))

(declare-fun lt!279261 () Unit!19564)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37327 (_ BitVec 32) (_ BitVec 32)) Unit!19564)

(assert (=> b!610393 (= lt!279261 (lemmaNoDuplicateFromThenFromBigger!0 lt!279259 #b00000000000000000000000000000000 j!136))))

(assert (=> b!610393 (arrayNoDuplicates!0 lt!279259 j!136 Nil!12000)))

(declare-fun lt!279265 () Unit!19564)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37327 (_ BitVec 64) (_ BitVec 32) List!12003) Unit!19564)

(assert (=> b!610393 (= lt!279265 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279259 (select (arr!17909 a!2986) j!136) j!136 Nil!12000))))

(assert (=> b!610393 false))

(declare-fun b!610394 () Bool)

(declare-fun e!349676 () Bool)

(assert (=> b!610394 (= e!349676 (not e!349680))))

(declare-fun res!392744 () Bool)

(assert (=> b!610394 (=> res!392744 e!349680)))

(declare-fun lt!279270 () SeekEntryResult!6356)

(assert (=> b!610394 (= res!392744 (not (= lt!279270 (Found!6356 index!984))))))

(declare-fun lt!279264 () Unit!19564)

(assert (=> b!610394 (= lt!279264 e!349675)))

(declare-fun c!69190 () Bool)

(assert (=> b!610394 (= c!69190 (= lt!279270 Undefined!6356))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37327 (_ BitVec 32)) SeekEntryResult!6356)

(assert (=> b!610394 (= lt!279270 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279258 lt!279259 mask!3053))))

(assert (=> b!610394 e!349674))

(declare-fun res!392742 () Bool)

(assert (=> b!610394 (=> (not res!392742) (not e!349674))))

(declare-fun lt!279257 () (_ BitVec 32))

(assert (=> b!610394 (= res!392742 (= lt!279267 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279257 vacantSpotIndex!68 lt!279258 lt!279259 mask!3053)))))

(assert (=> b!610394 (= lt!279267 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279257 vacantSpotIndex!68 (select (arr!17909 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!610394 (= lt!279258 (select (store (arr!17909 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!279260 () Unit!19564)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37327 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19564)

(assert (=> b!610394 (= lt!279260 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279257 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!610394 (= lt!279257 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!610395 () Bool)

(declare-fun e!349673 () Bool)

(declare-fun noDuplicate!345 (List!12003) Bool)

(assert (=> b!610395 (= e!349673 (noDuplicate!345 Nil!12000))))

(declare-fun b!610396 () Bool)

(declare-fun res!392736 () Bool)

(assert (=> b!610396 (=> (not res!392736) (not e!349684))))

(assert (=> b!610396 (= res!392736 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12000))))

(declare-fun b!610397 () Bool)

(assert (=> b!610397 (= e!349669 e!349684)))

(declare-fun res!392745 () Bool)

(assert (=> b!610397 (=> (not res!392745) (not e!349684))))

(declare-fun lt!279263 () SeekEntryResult!6356)

(assert (=> b!610397 (= res!392745 (or (= lt!279263 (MissingZero!6356 i!1108)) (= lt!279263 (MissingVacant!6356 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37327 (_ BitVec 32)) SeekEntryResult!6356)

(assert (=> b!610397 (= lt!279263 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!610398 () Bool)

(assert (=> b!610398 (= e!349678 e!349673)))

(declare-fun res!392732 () Bool)

(assert (=> b!610398 (=> res!392732 e!349673)))

(assert (=> b!610398 (= res!392732 (or (bvsgt #b00000000000000000000000000000000 (size!18273 a!2986)) (bvsge (size!18273 a!2986) #b01111111111111111111111111111111)))))

(assert (=> b!610398 (arrayNoDuplicates!0 lt!279259 #b00000000000000000000000000000000 Nil!12000)))

(declare-fun lt!279273 () Unit!19564)

(assert (=> b!610398 (= lt!279273 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12000))))

(assert (=> b!610398 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279262 () Unit!19564)

(assert (=> b!610398 (= lt!279262 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279259 (select (arr!17909 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!349683 () Bool)

(assert (=> b!610398 e!349683))

(declare-fun res!392731 () Bool)

(assert (=> b!610398 (=> (not res!392731) (not e!349683))))

(assert (=> b!610398 (= res!392731 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) j!136))))

(declare-fun b!610399 () Bool)

(assert (=> b!610399 (= e!349677 e!349676)))

(declare-fun res!392747 () Bool)

(assert (=> b!610399 (=> (not res!392747) (not e!349676))))

(assert (=> b!610399 (= res!392747 (and (= lt!279269 (Found!6356 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17909 a!2986) index!984) (select (arr!17909 a!2986) j!136))) (not (= (select (arr!17909 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!610399 (= lt!279269 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17909 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!610400 () Bool)

(assert (=> b!610400 (= e!349683 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) index!984))))

(assert (= (and start!55714 res!392734) b!610386))

(assert (= (and b!610386 res!392743) b!610379))

(assert (= (and b!610379 res!392750) b!610378))

(assert (= (and b!610378 res!392740) b!610387))

(assert (= (and b!610387 res!392738) b!610397))

(assert (= (and b!610397 res!392745) b!610391))

(assert (= (and b!610391 res!392739) b!610396))

(assert (= (and b!610396 res!392736) b!610388))

(assert (= (and b!610388 res!392737) b!610383))

(assert (= (and b!610383 res!392735) b!610399))

(assert (= (and b!610399 res!392747) b!610394))

(assert (= (and b!610394 res!392742) b!610390))

(assert (= (and b!610394 c!69190) b!610392))

(assert (= (and b!610394 (not c!69190)) b!610382))

(assert (= (and b!610394 (not res!392744)) b!610380))

(assert (= (and b!610380 res!392733) b!610385))

(assert (= (and b!610385 (not res!392746)) b!610384))

(assert (= (and b!610384 res!392741) b!610389))

(assert (= (and b!610380 (not res!392749)) b!610377))

(assert (= (and b!610377 c!69191) b!610393))

(assert (= (and b!610377 (not c!69191)) b!610381))

(assert (= (and b!610377 (not res!392748)) b!610398))

(assert (= (and b!610398 res!392731) b!610400))

(assert (= (and b!610398 (not res!392732)) b!610395))

(declare-fun m!586875 () Bool)

(assert (=> b!610391 m!586875))

(declare-fun m!586877 () Bool)

(assert (=> b!610393 m!586877))

(declare-fun m!586879 () Bool)

(assert (=> b!610393 m!586879))

(declare-fun m!586881 () Bool)

(assert (=> b!610393 m!586881))

(assert (=> b!610393 m!586879))

(declare-fun m!586883 () Bool)

(assert (=> b!610393 m!586883))

(assert (=> b!610393 m!586879))

(declare-fun m!586885 () Bool)

(assert (=> b!610393 m!586885))

(declare-fun m!586887 () Bool)

(assert (=> b!610393 m!586887))

(declare-fun m!586889 () Bool)

(assert (=> b!610393 m!586889))

(assert (=> b!610393 m!586879))

(declare-fun m!586891 () Bool)

(assert (=> b!610393 m!586891))

(declare-fun m!586893 () Bool)

(assert (=> b!610388 m!586893))

(assert (=> b!610398 m!586877))

(assert (=> b!610398 m!586879))

(assert (=> b!610398 m!586879))

(declare-fun m!586895 () Bool)

(assert (=> b!610398 m!586895))

(assert (=> b!610398 m!586879))

(declare-fun m!586897 () Bool)

(assert (=> b!610398 m!586897))

(assert (=> b!610398 m!586879))

(declare-fun m!586899 () Bool)

(assert (=> b!610398 m!586899))

(assert (=> b!610398 m!586887))

(declare-fun m!586901 () Bool)

(assert (=> b!610378 m!586901))

(assert (=> b!610389 m!586879))

(assert (=> b!610389 m!586879))

(declare-fun m!586903 () Bool)

(assert (=> b!610389 m!586903))

(assert (=> b!610384 m!586879))

(assert (=> b!610384 m!586879))

(assert (=> b!610384 m!586899))

(declare-fun m!586905 () Bool)

(assert (=> b!610394 m!586905))

(declare-fun m!586907 () Bool)

(assert (=> b!610394 m!586907))

(assert (=> b!610394 m!586879))

(declare-fun m!586909 () Bool)

(assert (=> b!610394 m!586909))

(assert (=> b!610394 m!586879))

(declare-fun m!586911 () Bool)

(assert (=> b!610394 m!586911))

(declare-fun m!586913 () Bool)

(assert (=> b!610394 m!586913))

(declare-fun m!586915 () Bool)

(assert (=> b!610394 m!586915))

(declare-fun m!586917 () Bool)

(assert (=> b!610394 m!586917))

(assert (=> b!610380 m!586879))

(assert (=> b!610380 m!586909))

(declare-fun m!586919 () Bool)

(assert (=> b!610380 m!586919))

(declare-fun m!586921 () Bool)

(assert (=> b!610395 m!586921))

(declare-fun m!586923 () Bool)

(assert (=> b!610399 m!586923))

(assert (=> b!610399 m!586879))

(assert (=> b!610399 m!586879))

(declare-fun m!586925 () Bool)

(assert (=> b!610399 m!586925))

(declare-fun m!586927 () Bool)

(assert (=> b!610397 m!586927))

(assert (=> b!610400 m!586879))

(assert (=> b!610400 m!586879))

(assert (=> b!610400 m!586903))

(assert (=> b!610385 m!586879))

(declare-fun m!586929 () Bool)

(assert (=> b!610396 m!586929))

(declare-fun m!586931 () Bool)

(assert (=> start!55714 m!586931))

(declare-fun m!586933 () Bool)

(assert (=> start!55714 m!586933))

(assert (=> b!610379 m!586879))

(assert (=> b!610379 m!586879))

(declare-fun m!586935 () Bool)

(assert (=> b!610379 m!586935))

(declare-fun m!586937 () Bool)

(assert (=> b!610387 m!586937))

(assert (=> b!610383 m!586909))

(declare-fun m!586939 () Bool)

(assert (=> b!610383 m!586939))

(push 1)

(assert (not b!610379))

(assert (not b!610394))

(assert (not start!55714))

(assert (not b!610396))

(assert (not b!610391))

(assert (not b!610397))

(assert (not b!610393))

(assert (not b!610395))

(assert (not b!610378))

(assert (not b!610387))

(assert (not b!610384))

(assert (not b!610389))

(assert (not b!610400))

(assert (not b!610398))

(assert (not b!610399))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!88135 () Bool)

(declare-fun res!392776 () Bool)

(declare-fun e!349714 () Bool)

(assert (=> d!88135 (=> res!392776 e!349714)))

(assert (=> d!88135 (= res!392776 (is-Nil!12000 Nil!12000))))

(assert (=> d!88135 (= (noDuplicate!345 Nil!12000) e!349714)))

(declare-fun b!610434 () Bool)

(declare-fun e!349715 () Bool)

(assert (=> b!610434 (= e!349714 e!349715)))

(declare-fun res!392777 () Bool)

(assert (=> b!610434 (=> (not res!392777) (not e!349715))))

(declare-fun contains!3044 (List!12003 (_ BitVec 64)) Bool)

(assert (=> b!610434 (= res!392777 (not (contains!3044 (t!18239 Nil!12000) (h!13044 Nil!12000))))))

(declare-fun b!610435 () Bool)

(assert (=> b!610435 (= e!349715 (noDuplicate!345 (t!18239 Nil!12000)))))

(assert (= (and d!88135 (not res!392776)) b!610434))

(assert (= (and b!610434 res!392777) b!610435))

(declare-fun m!586971 () Bool)

(assert (=> b!610434 m!586971))

(declare-fun m!586973 () Bool)

(assert (=> b!610435 m!586973))

(assert (=> b!610395 d!88135))

(declare-fun d!88137 () Bool)

(declare-fun res!392782 () Bool)

(declare-fun e!349726 () Bool)

(assert (=> d!88137 (=> res!392782 e!349726)))

(assert (=> d!88137 (= res!392782 (= (select (arr!17909 lt!279259) j!136) (select (arr!17909 a!2986) j!136)))))

(assert (=> d!88137 (= (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) j!136) e!349726)))

(declare-fun b!610452 () Bool)

(declare-fun e!349727 () Bool)

(assert (=> b!610452 (= e!349726 e!349727)))

(declare-fun res!392783 () Bool)

(assert (=> b!610452 (=> (not res!392783) (not e!349727))))

(assert (=> b!610452 (= res!392783 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18273 lt!279259)))))

(declare-fun b!610453 () Bool)

(assert (=> b!610453 (= e!349727 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88137 (not res!392782)) b!610452))

(assert (= (and b!610452 res!392783) b!610453))

(declare-fun m!586975 () Bool)

(assert (=> d!88137 m!586975))

(assert (=> b!610453 m!586879))

(declare-fun m!586977 () Bool)

(assert (=> b!610453 m!586977))

(assert (=> b!610384 d!88137))

(declare-fun d!88141 () Bool)

(declare-fun lt!279294 () (_ BitVec 32))

(assert (=> d!88141 (and (bvsge lt!279294 #b00000000000000000000000000000000) (bvslt lt!279294 (bvadd mask!3053 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!88141 (= lt!279294 (choose!52 index!984 x!910 mask!3053))))

(assert (=> d!88141 (validMask!0 mask!3053)))

(assert (=> d!88141 (= (nextIndex!0 index!984 x!910 mask!3053) lt!279294)))

(declare-fun bs!18626 () Bool)

(assert (= bs!18626 d!88141))

(declare-fun m!586979 () Bool)

(assert (=> bs!18626 m!586979))

(assert (=> bs!18626 m!586931))

(assert (=> b!610394 d!88141))

(declare-fun b!610489 () Bool)

(declare-fun e!349749 () SeekEntryResult!6356)

(declare-fun e!349750 () SeekEntryResult!6356)

(assert (=> b!610489 (= e!349749 e!349750)))

(declare-fun c!69217 () Bool)

(declare-fun lt!279310 () (_ BitVec 64))

(assert (=> b!610489 (= c!69217 (= lt!279310 lt!279258))))

(declare-fun b!610490 () Bool)

(declare-fun c!69218 () Bool)

(assert (=> b!610490 (= c!69218 (= lt!279310 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349748 () SeekEntryResult!6356)

(assert (=> b!610490 (= e!349750 e!349748)))

(declare-fun b!610491 () Bool)

(assert (=> b!610491 (= e!349749 Undefined!6356)))

(declare-fun lt!279309 () SeekEntryResult!6356)

(declare-fun d!88143 () Bool)

(assert (=> d!88143 (and (or (is-Undefined!6356 lt!279309) (not (is-Found!6356 lt!279309)) (and (bvsge (index!27702 lt!279309) #b00000000000000000000000000000000) (bvslt (index!27702 lt!279309) (size!18273 lt!279259)))) (or (is-Undefined!6356 lt!279309) (is-Found!6356 lt!279309) (not (is-MissingVacant!6356 lt!279309)) (not (= (index!27704 lt!279309) vacantSpotIndex!68)) (and (bvsge (index!27704 lt!279309) #b00000000000000000000000000000000) (bvslt (index!27704 lt!279309) (size!18273 lt!279259)))) (or (is-Undefined!6356 lt!279309) (ite (is-Found!6356 lt!279309) (= (select (arr!17909 lt!279259) (index!27702 lt!279309)) lt!279258) (and (is-MissingVacant!6356 lt!279309) (= (index!27704 lt!279309) vacantSpotIndex!68) (= (select (arr!17909 lt!279259) (index!27704 lt!279309)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88143 (= lt!279309 e!349749)))

(declare-fun c!69219 () Bool)

(assert (=> d!88143 (= c!69219 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88143 (= lt!279310 (select (arr!17909 lt!279259) lt!279257))))

(assert (=> d!88143 (validMask!0 mask!3053)))

(assert (=> d!88143 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279257 vacantSpotIndex!68 lt!279258 lt!279259 mask!3053) lt!279309)))

(declare-fun b!610492 () Bool)

(assert (=> b!610492 (= e!349748 (MissingVacant!6356 vacantSpotIndex!68))))

(declare-fun b!610493 () Bool)

(assert (=> b!610493 (= e!349750 (Found!6356 lt!279257))))

(declare-fun b!610494 () Bool)

(assert (=> b!610494 (= e!349748 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279257 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!279258 lt!279259 mask!3053))))

(assert (= (and d!88143 c!69219) b!610491))

(assert (= (and d!88143 (not c!69219)) b!610489))

(assert (= (and b!610489 c!69217) b!610493))

(assert (= (and b!610489 (not c!69217)) b!610490))

(assert (= (and b!610490 c!69218) b!610492))

(assert (= (and b!610490 (not c!69218)) b!610494))

(declare-fun m!587003 () Bool)

(assert (=> d!88143 m!587003))

(declare-fun m!587005 () Bool)

(assert (=> d!88143 m!587005))

(declare-fun m!587007 () Bool)

(assert (=> d!88143 m!587007))

(assert (=> d!88143 m!586931))

(declare-fun m!587009 () Bool)

(assert (=> b!610494 m!587009))

(assert (=> b!610494 m!587009))

(declare-fun m!587011 () Bool)

(assert (=> b!610494 m!587011))

(assert (=> b!610394 d!88143))

(declare-fun b!610495 () Bool)

(declare-fun e!349752 () SeekEntryResult!6356)

(declare-fun e!349753 () SeekEntryResult!6356)

(assert (=> b!610495 (= e!349752 e!349753)))

(declare-fun c!69220 () Bool)

(declare-fun lt!279312 () (_ BitVec 64))

(assert (=> b!610495 (= c!69220 (= lt!279312 lt!279258))))

(declare-fun b!610496 () Bool)

(declare-fun c!69221 () Bool)

(assert (=> b!610496 (= c!69221 (= lt!279312 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349751 () SeekEntryResult!6356)

(assert (=> b!610496 (= e!349753 e!349751)))

(declare-fun b!610497 () Bool)

(assert (=> b!610497 (= e!349752 Undefined!6356)))

(declare-fun lt!279311 () SeekEntryResult!6356)

(declare-fun d!88153 () Bool)

(assert (=> d!88153 (and (or (is-Undefined!6356 lt!279311) (not (is-Found!6356 lt!279311)) (and (bvsge (index!27702 lt!279311) #b00000000000000000000000000000000) (bvslt (index!27702 lt!279311) (size!18273 lt!279259)))) (or (is-Undefined!6356 lt!279311) (is-Found!6356 lt!279311) (not (is-MissingVacant!6356 lt!279311)) (not (= (index!27704 lt!279311) vacantSpotIndex!68)) (and (bvsge (index!27704 lt!279311) #b00000000000000000000000000000000) (bvslt (index!27704 lt!279311) (size!18273 lt!279259)))) (or (is-Undefined!6356 lt!279311) (ite (is-Found!6356 lt!279311) (= (select (arr!17909 lt!279259) (index!27702 lt!279311)) lt!279258) (and (is-MissingVacant!6356 lt!279311) (= (index!27704 lt!279311) vacantSpotIndex!68) (= (select (arr!17909 lt!279259) (index!27704 lt!279311)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88153 (= lt!279311 e!349752)))

(declare-fun c!69222 () Bool)

(assert (=> d!88153 (= c!69222 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88153 (= lt!279312 (select (arr!17909 lt!279259) index!984))))

(assert (=> d!88153 (validMask!0 mask!3053)))

(assert (=> d!88153 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279258 lt!279259 mask!3053) lt!279311)))

(declare-fun b!610498 () Bool)

(assert (=> b!610498 (= e!349751 (MissingVacant!6356 vacantSpotIndex!68))))

(declare-fun b!610499 () Bool)

(assert (=> b!610499 (= e!349753 (Found!6356 index!984))))

(declare-fun b!610500 () Bool)

(assert (=> b!610500 (= e!349751 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!279258 lt!279259 mask!3053))))

(assert (= (and d!88153 c!69222) b!610497))

(assert (= (and d!88153 (not c!69222)) b!610495))

(assert (= (and b!610495 c!69220) b!610499))

(assert (= (and b!610495 (not c!69220)) b!610496))

(assert (= (and b!610496 c!69221) b!610498))

(assert (= (and b!610496 (not c!69221)) b!610500))

(declare-fun m!587013 () Bool)

(assert (=> d!88153 m!587013))

(declare-fun m!587015 () Bool)

(assert (=> d!88153 m!587015))

(declare-fun m!587017 () Bool)

(assert (=> d!88153 m!587017))

(assert (=> d!88153 m!586931))

(assert (=> b!610500 m!586905))

(assert (=> b!610500 m!586905))

(declare-fun m!587019 () Bool)

(assert (=> b!610500 m!587019))

(assert (=> b!610394 d!88153))

(declare-fun b!610507 () Bool)

(declare-fun e!349758 () SeekEntryResult!6356)

(declare-fun e!349759 () SeekEntryResult!6356)

(assert (=> b!610507 (= e!349758 e!349759)))

(declare-fun lt!279316 () (_ BitVec 64))

(declare-fun c!69226 () Bool)

(assert (=> b!610507 (= c!69226 (= lt!279316 (select (arr!17909 a!2986) j!136)))))

(declare-fun b!610508 () Bool)

(declare-fun c!69227 () Bool)

(assert (=> b!610508 (= c!69227 (= lt!279316 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349757 () SeekEntryResult!6356)

(assert (=> b!610508 (= e!349759 e!349757)))

(declare-fun b!610509 () Bool)

(assert (=> b!610509 (= e!349758 Undefined!6356)))

(declare-fun d!88155 () Bool)

(declare-fun lt!279315 () SeekEntryResult!6356)

(assert (=> d!88155 (and (or (is-Undefined!6356 lt!279315) (not (is-Found!6356 lt!279315)) (and (bvsge (index!27702 lt!279315) #b00000000000000000000000000000000) (bvslt (index!27702 lt!279315) (size!18273 a!2986)))) (or (is-Undefined!6356 lt!279315) (is-Found!6356 lt!279315) (not (is-MissingVacant!6356 lt!279315)) (not (= (index!27704 lt!279315) vacantSpotIndex!68)) (and (bvsge (index!27704 lt!279315) #b00000000000000000000000000000000) (bvslt (index!27704 lt!279315) (size!18273 a!2986)))) (or (is-Undefined!6356 lt!279315) (ite (is-Found!6356 lt!279315) (= (select (arr!17909 a!2986) (index!27702 lt!279315)) (select (arr!17909 a!2986) j!136)) (and (is-MissingVacant!6356 lt!279315) (= (index!27704 lt!279315) vacantSpotIndex!68) (= (select (arr!17909 a!2986) (index!27704 lt!279315)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88155 (= lt!279315 e!349758)))

(declare-fun c!69228 () Bool)

(assert (=> d!88155 (= c!69228 (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b01111111111111111111111111111110))))

(assert (=> d!88155 (= lt!279316 (select (arr!17909 a!2986) lt!279257))))

(assert (=> d!88155 (validMask!0 mask!3053)))

(assert (=> d!88155 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279257 vacantSpotIndex!68 (select (arr!17909 a!2986) j!136) a!2986 mask!3053) lt!279315)))

(declare-fun b!610510 () Bool)

(assert (=> b!610510 (= e!349757 (MissingVacant!6356 vacantSpotIndex!68))))

(declare-fun b!610511 () Bool)

(assert (=> b!610511 (= e!349759 (Found!6356 lt!279257))))

(declare-fun b!610512 () Bool)

(assert (=> b!610512 (= e!349757 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!279257 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 (select (arr!17909 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!88155 c!69228) b!610509))

(assert (= (and d!88155 (not c!69228)) b!610507))

(assert (= (and b!610507 c!69226) b!610511))

(assert (= (and b!610507 (not c!69226)) b!610508))

(assert (= (and b!610508 c!69227) b!610510))

(assert (= (and b!610508 (not c!69227)) b!610512))

(declare-fun m!587027 () Bool)

(assert (=> d!88155 m!587027))

(declare-fun m!587029 () Bool)

(assert (=> d!88155 m!587029))

(declare-fun m!587031 () Bool)

(assert (=> d!88155 m!587031))

(assert (=> d!88155 m!586931))

(assert (=> b!610512 m!587009))

(assert (=> b!610512 m!587009))

(assert (=> b!610512 m!586879))

(declare-fun m!587033 () Bool)

(assert (=> b!610512 m!587033))

(assert (=> b!610394 d!88155))

(declare-fun d!88159 () Bool)

(declare-fun e!349783 () Bool)

(assert (=> d!88159 e!349783))

(declare-fun res!392791 () Bool)

(assert (=> d!88159 (=> (not res!392791) (not e!349783))))

(assert (=> d!88159 (= res!392791 (and (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18273 a!2986)) (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18273 a!2986)))) (or (bvslt i!1108 #b00000000000000000000000000000000) (bvsge i!1108 (size!18273 a!2986)) (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18273 a!2986)))) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18273 a!2986))))))

(declare-fun lt!279339 () Unit!19564)

(declare-fun choose!9 (array!37327 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19564)

(assert (=> d!88159 (= lt!279339 (choose!9 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279257 vacantSpotIndex!68 mask!3053))))

(assert (=> d!88159 (validMask!0 mask!3053)))

(assert (=> d!88159 (= (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279257 vacantSpotIndex!68 mask!3053) lt!279339)))

(declare-fun b!610557 () Bool)

(assert (=> b!610557 (= e!349783 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279257 vacantSpotIndex!68 (select (arr!17909 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279257 vacantSpotIndex!68 (select (store (arr!17909 a!2986) i!1108 k!1786) j!136) (array!37328 (store (arr!17909 a!2986) i!1108 k!1786) (size!18273 a!2986)) mask!3053)))))

(assert (= (and d!88159 res!392791) b!610557))

(declare-fun m!587083 () Bool)

(assert (=> d!88159 m!587083))

(assert (=> d!88159 m!586931))

(assert (=> b!610557 m!586909))

(assert (=> b!610557 m!586907))

(declare-fun m!587085 () Bool)

(assert (=> b!610557 m!587085))

(assert (=> b!610557 m!586879))

(assert (=> b!610557 m!586879))

(assert (=> b!610557 m!586911))

(assert (=> b!610557 m!586907))

(assert (=> b!610394 d!88159))

(declare-fun b!610592 () Bool)

(declare-fun e!349814 () Bool)

(assert (=> b!610592 (= e!349814 (contains!3044 Nil!12000 (select (arr!17909 lt!279259) #b00000000000000000000000000000000)))))

(declare-fun b!610593 () Bool)

(declare-fun e!349816 () Bool)

(declare-fun call!33138 () Bool)

(assert (=> b!610593 (= e!349816 call!33138)))

(declare-fun b!610594 () Bool)

(declare-fun e!349813 () Bool)

(assert (=> b!610594 (= e!349813 e!349816)))

(declare-fun c!69255 () Bool)

(assert (=> b!610594 (= c!69255 (validKeyInArray!0 (select (arr!17909 lt!279259) #b00000000000000000000000000000000)))))

(declare-fun b!610595 () Bool)

(declare-fun e!349815 () Bool)

(assert (=> b!610595 (= e!349815 e!349813)))

(declare-fun res!392818 () Bool)

(assert (=> b!610595 (=> (not res!392818) (not e!349813))))

(assert (=> b!610595 (= res!392818 (not e!349814))))

(declare-fun res!392816 () Bool)

(assert (=> b!610595 (=> (not res!392816) (not e!349814))))

(assert (=> b!610595 (= res!392816 (validKeyInArray!0 (select (arr!17909 lt!279259) #b00000000000000000000000000000000)))))

(declare-fun bm!33135 () Bool)

(assert (=> bm!33135 (= call!33138 (arrayNoDuplicates!0 lt!279259 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!69255 (Cons!11999 (select (arr!17909 lt!279259) #b00000000000000000000000000000000) Nil!12000) Nil!12000)))))

(declare-fun d!88177 () Bool)

(declare-fun res!392817 () Bool)

(assert (=> d!88177 (=> res!392817 e!349815)))

(assert (=> d!88177 (= res!392817 (bvsge #b00000000000000000000000000000000 (size!18273 lt!279259)))))

(assert (=> d!88177 (= (arrayNoDuplicates!0 lt!279259 #b00000000000000000000000000000000 Nil!12000) e!349815)))

(declare-fun b!610596 () Bool)

(assert (=> b!610596 (= e!349816 call!33138)))

(assert (= (and d!88177 (not res!392817)) b!610595))

(assert (= (and b!610595 res!392816) b!610592))

(assert (= (and b!610595 res!392818) b!610594))

(assert (= (and b!610594 c!69255) b!610596))

(assert (= (and b!610594 (not c!69255)) b!610593))

(assert (= (or b!610596 b!610593) bm!33135))

(declare-fun m!587103 () Bool)

(assert (=> b!610592 m!587103))

(assert (=> b!610592 m!587103))

(declare-fun m!587105 () Bool)

(assert (=> b!610592 m!587105))

(assert (=> b!610594 m!587103))

(assert (=> b!610594 m!587103))

(declare-fun m!587107 () Bool)

(assert (=> b!610594 m!587107))

(assert (=> b!610595 m!587103))

(assert (=> b!610595 m!587103))

(assert (=> b!610595 m!587107))

(assert (=> bm!33135 m!587103))

(declare-fun m!587109 () Bool)

(assert (=> bm!33135 m!587109))

(assert (=> b!610393 d!88177))

(declare-fun b!610597 () Bool)

(declare-fun e!349818 () Bool)

(assert (=> b!610597 (= e!349818 (contains!3044 Nil!12000 (select (arr!17909 lt!279259) j!136)))))

(declare-fun b!610598 () Bool)

(declare-fun e!349820 () Bool)

(declare-fun call!33139 () Bool)

(assert (=> b!610598 (= e!349820 call!33139)))

(declare-fun b!610599 () Bool)

(declare-fun e!349817 () Bool)

(assert (=> b!610599 (= e!349817 e!349820)))

(declare-fun c!69256 () Bool)

(assert (=> b!610599 (= c!69256 (validKeyInArray!0 (select (arr!17909 lt!279259) j!136)))))

(declare-fun b!610600 () Bool)

(declare-fun e!349819 () Bool)

(assert (=> b!610600 (= e!349819 e!349817)))

(declare-fun res!392821 () Bool)

(assert (=> b!610600 (=> (not res!392821) (not e!349817))))

(assert (=> b!610600 (= res!392821 (not e!349818))))

(declare-fun res!392819 () Bool)

(assert (=> b!610600 (=> (not res!392819) (not e!349818))))

(assert (=> b!610600 (= res!392819 (validKeyInArray!0 (select (arr!17909 lt!279259) j!136)))))

(declare-fun bm!33136 () Bool)

(assert (=> bm!33136 (= call!33139 (arrayNoDuplicates!0 lt!279259 (bvadd j!136 #b00000000000000000000000000000001) (ite c!69256 (Cons!11999 (select (arr!17909 lt!279259) j!136) Nil!12000) Nil!12000)))))

(declare-fun d!88185 () Bool)

(declare-fun res!392820 () Bool)

(assert (=> d!88185 (=> res!392820 e!349819)))

(assert (=> d!88185 (= res!392820 (bvsge j!136 (size!18273 lt!279259)))))

(assert (=> d!88185 (= (arrayNoDuplicates!0 lt!279259 j!136 Nil!12000) e!349819)))

(declare-fun b!610601 () Bool)

(assert (=> b!610601 (= e!349820 call!33139)))

(assert (= (and d!88185 (not res!392820)) b!610600))

(assert (= (and b!610600 res!392819) b!610597))

(assert (= (and b!610600 res!392821) b!610599))

(assert (= (and b!610599 c!69256) b!610601))

(assert (= (and b!610599 (not c!69256)) b!610598))

(assert (= (or b!610601 b!610598) bm!33136))

(assert (=> b!610597 m!586975))

(assert (=> b!610597 m!586975))

(declare-fun m!587111 () Bool)

(assert (=> b!610597 m!587111))

(assert (=> b!610599 m!586975))

(assert (=> b!610599 m!586975))

(declare-fun m!587113 () Bool)

(assert (=> b!610599 m!587113))

(assert (=> b!610600 m!586975))

(assert (=> b!610600 m!586975))

(assert (=> b!610600 m!587113))

(assert (=> bm!33136 m!586975))

(declare-fun m!587115 () Bool)

(assert (=> bm!33136 m!587115))

(assert (=> b!610393 d!88185))

(declare-fun d!88187 () Bool)

(assert (=> d!88187 (arrayNoDuplicates!0 lt!279259 j!136 Nil!12000)))

(declare-fun lt!279347 () Unit!19564)

(declare-fun choose!39 (array!37327 (_ BitVec 32) (_ BitVec 32)) Unit!19564)

(assert (=> d!88187 (= lt!279347 (choose!39 lt!279259 #b00000000000000000000000000000000 j!136))))

(assert (=> d!88187 (bvslt (size!18273 lt!279259) #b01111111111111111111111111111111)))

(assert (=> d!88187 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!279259 #b00000000000000000000000000000000 j!136) lt!279347)))

(declare-fun bs!18629 () Bool)

(assert (= bs!18629 d!88187))

(assert (=> bs!18629 m!586881))

(declare-fun m!587135 () Bool)

(assert (=> bs!18629 m!587135))

(assert (=> b!610393 d!88187))

(declare-fun d!88197 () Bool)

(declare-fun res!392833 () Bool)

(declare-fun e!349838 () Bool)

(assert (=> d!88197 (=> res!392833 e!349838)))

(assert (=> d!88197 (= res!392833 (= (select (arr!17909 lt!279259) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!17909 a!2986) j!136)))))

(assert (=> d!88197 (= (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!349838)))

(declare-fun b!610623 () Bool)

(declare-fun e!349839 () Bool)

(assert (=> b!610623 (= e!349838 e!349839)))

(declare-fun res!392834 () Bool)

(assert (=> b!610623 (=> (not res!392834) (not e!349839))))

(assert (=> b!610623 (= res!392834 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18273 lt!279259)))))

(declare-fun b!610624 () Bool)

(assert (=> b!610624 (= e!349839 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!88197 (not res!392833)) b!610623))

(assert (= (and b!610623 res!392834) b!610624))

(declare-fun m!587137 () Bool)

(assert (=> d!88197 m!587137))

(assert (=> b!610624 m!586879))

(declare-fun m!587139 () Bool)

(assert (=> b!610624 m!587139))

(assert (=> b!610393 d!88197))

(declare-fun d!88199 () Bool)

(assert (=> d!88199 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279356 () Unit!19564)

(declare-fun choose!114 (array!37327 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19564)

(assert (=> d!88199 (= lt!279356 (choose!114 lt!279259 (select (arr!17909 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!88199 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!88199 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279259 (select (arr!17909 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!279356)))

(declare-fun bs!18630 () Bool)

(assert (= bs!18630 d!88199))

(assert (=> bs!18630 m!586879))

(assert (=> bs!18630 m!586883))

(assert (=> bs!18630 m!586879))

(declare-fun m!587145 () Bool)

(assert (=> bs!18630 m!587145))

(assert (=> b!610393 d!88199))

(declare-fun d!88203 () Bool)

(declare-fun e!349860 () Bool)

(assert (=> d!88203 e!349860))

(declare-fun res!392851 () Bool)

(assert (=> d!88203 (=> (not res!392851) (not e!349860))))

(assert (=> d!88203 (= res!392851 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18273 a!2986))))))

(declare-fun lt!279365 () Unit!19564)

(declare-fun choose!41 (array!37327 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12003) Unit!19564)

(assert (=> d!88203 (= lt!279365 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12000))))

(assert (=> d!88203 (bvslt (size!18273 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!88203 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12000) lt!279365)))

(declare-fun b!610651 () Bool)

(assert (=> b!610651 (= e!349860 (arrayNoDuplicates!0 (array!37328 (store (arr!17909 a!2986) i!1108 k!1786) (size!18273 a!2986)) #b00000000000000000000000000000000 Nil!12000))))

(assert (= (and d!88203 res!392851) b!610651))

(declare-fun m!587171 () Bool)

(assert (=> d!88203 m!587171))

(assert (=> b!610651 m!586909))

(declare-fun m!587173 () Bool)

(assert (=> b!610651 m!587173))

(assert (=> b!610393 d!88203))

(declare-fun d!88217 () Bool)

(assert (=> d!88217 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18273 lt!279259)) (not (= (select (arr!17909 lt!279259) j!136) (select (arr!17909 a!2986) j!136))))))

(declare-fun lt!279368 () Unit!19564)

(declare-fun choose!21 (array!37327 (_ BitVec 64) (_ BitVec 32) List!12003) Unit!19564)

(assert (=> d!88217 (= lt!279368 (choose!21 lt!279259 (select (arr!17909 a!2986) j!136) j!136 Nil!12000))))

(assert (=> d!88217 (bvslt (size!18273 lt!279259) #b01111111111111111111111111111111)))

(assert (=> d!88217 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279259 (select (arr!17909 a!2986) j!136) j!136 Nil!12000) lt!279368)))

(declare-fun bs!18632 () Bool)

(assert (= bs!18632 d!88217))

(assert (=> bs!18632 m!586975))

(assert (=> bs!18632 m!586879))

(declare-fun m!587179 () Bool)

(assert (=> bs!18632 m!587179))

(assert (=> b!610393 d!88217))

(declare-fun b!610666 () Bool)

(declare-fun e!349874 () Bool)

(declare-fun call!33146 () Bool)

(assert (=> b!610666 (= e!349874 call!33146)))

(declare-fun b!610667 () Bool)

(declare-fun e!349875 () Bool)

(assert (=> b!610667 (= e!349874 e!349875)))

(declare-fun lt!279376 () (_ BitVec 64))

(assert (=> b!610667 (= lt!279376 (select (arr!17909 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!279375 () Unit!19564)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!37327 (_ BitVec 64) (_ BitVec 32)) Unit!19564)

(assert (=> b!610667 (= lt!279375 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!279376 #b00000000000000000000000000000000))))

(assert (=> b!610667 (arrayContainsKey!0 a!2986 lt!279376 #b00000000000000000000000000000000)))

(declare-fun lt!279377 () Unit!19564)

(assert (=> b!610667 (= lt!279377 lt!279375)))

(declare-fun res!392863 () Bool)

(assert (=> b!610667 (= res!392863 (= (seekEntryOrOpen!0 (select (arr!17909 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6356 #b00000000000000000000000000000000)))))

(assert (=> b!610667 (=> (not res!392863) (not e!349875))))

(declare-fun b!610668 () Bool)

(declare-fun e!349873 () Bool)

(assert (=> b!610668 (= e!349873 e!349874)))

(declare-fun c!69269 () Bool)

(assert (=> b!610668 (= c!69269 (validKeyInArray!0 (select (arr!17909 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!610669 () Bool)

(assert (=> b!610669 (= e!349875 call!33146)))

(declare-fun d!88219 () Bool)

(declare-fun res!392862 () Bool)

(assert (=> d!88219 (=> res!392862 e!349873)))

(assert (=> d!88219 (= res!392862 (bvsge #b00000000000000000000000000000000 (size!18273 a!2986)))))

(assert (=> d!88219 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!349873)))

(declare-fun bm!33143 () Bool)

(assert (=> bm!33143 (= call!33146 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(assert (= (and d!88219 (not res!392862)) b!610668))

(assert (= (and b!610668 c!69269) b!610667))

(assert (= (and b!610668 (not c!69269)) b!610666))

(assert (= (and b!610667 res!392863) b!610669))

(assert (= (or b!610669 b!610666) bm!33143))

(declare-fun m!587181 () Bool)

(assert (=> b!610667 m!587181))

(declare-fun m!587183 () Bool)

(assert (=> b!610667 m!587183))

(declare-fun m!587185 () Bool)

(assert (=> b!610667 m!587185))

(assert (=> b!610667 m!587181))

(declare-fun m!587187 () Bool)

(assert (=> b!610667 m!587187))

(assert (=> b!610668 m!587181))

(assert (=> b!610668 m!587181))

(declare-fun m!587189 () Bool)

(assert (=> b!610668 m!587189))

(declare-fun m!587191 () Bool)

(assert (=> bm!33143 m!587191))

(assert (=> b!610391 d!88219))

(declare-fun d!88225 () Bool)

(assert (=> d!88225 (= (validKeyInArray!0 (select (arr!17909 a!2986) j!136)) (and (not (= (select (arr!17909 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!17909 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!610379 d!88225))

(declare-fun d!88227 () Bool)

(declare-fun res!392864 () Bool)

(declare-fun e!349876 () Bool)

(assert (=> d!88227 (=> res!392864 e!349876)))

(assert (=> d!88227 (= res!392864 (= (select (arr!17909 lt!279259) index!984) (select (arr!17909 a!2986) j!136)))))

(assert (=> d!88227 (= (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) index!984) e!349876)))

(declare-fun b!610670 () Bool)

(declare-fun e!349877 () Bool)

(assert (=> b!610670 (= e!349876 e!349877)))

(declare-fun res!392865 () Bool)

(assert (=> b!610670 (=> (not res!392865) (not e!349877))))

(assert (=> b!610670 (= res!392865 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18273 lt!279259)))))

(declare-fun b!610671 () Bool)

(assert (=> b!610671 (= e!349877 (arrayContainsKey!0 lt!279259 (select (arr!17909 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!88227 (not res!392864)) b!610670))

(assert (= (and b!610670 res!392865) b!610671))

(assert (=> d!88227 m!587017))

(assert (=> b!610671 m!586879))

(declare-fun m!587193 () Bool)

(assert (=> b!610671 m!587193))

(assert (=> b!610389 d!88227))

(assert (=> b!610400 d!88227))

(declare-fun b!610672 () Bool)

(declare-fun e!349879 () SeekEntryResult!6356)

(declare-fun e!349880 () SeekEntryResult!6356)

(assert (=> b!610672 (= e!349879 e!349880)))

(declare-fun lt!279379 () (_ BitVec 64))

(declare-fun c!69270 () Bool)

(assert (=> b!610672 (= c!69270 (= lt!279379 (select (arr!17909 a!2986) j!136)))))

(declare-fun b!610673 () Bool)

(declare-fun c!69271 () Bool)

(assert (=> b!610673 (= c!69271 (= lt!279379 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!349878 () SeekEntryResult!6356)

(assert (=> b!610673 (= e!349880 e!349878)))

(declare-fun b!610674 () Bool)

(assert (=> b!610674 (= e!349879 Undefined!6356)))

(declare-fun lt!279378 () SeekEntryResult!6356)

(declare-fun d!88229 () Bool)

(assert (=> d!88229 (and (or (is-Undefined!6356 lt!279378) (not (is-Found!6356 lt!279378)) (and (bvsge (index!27702 lt!279378) #b00000000000000000000000000000000) (bvslt (index!27702 lt!279378) (size!18273 a!2986)))) (or (is-Undefined!6356 lt!279378) (is-Found!6356 lt!279378) (not (is-MissingVacant!6356 lt!279378)) (not (= (index!27704 lt!279378) vacantSpotIndex!68)) (and (bvsge (index!27704 lt!279378) #b00000000000000000000000000000000) (bvslt (index!27704 lt!279378) (size!18273 a!2986)))) (or (is-Undefined!6356 lt!279378) (ite (is-Found!6356 lt!279378) (= (select (arr!17909 a!2986) (index!27702 lt!279378)) (select (arr!17909 a!2986) j!136)) (and (is-MissingVacant!6356 lt!279378) (= (index!27704 lt!279378) vacantSpotIndex!68) (= (select (arr!17909 a!2986) (index!27704 lt!279378)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!88229 (= lt!279378 e!349879)))

(declare-fun c!69272 () Bool)

(assert (=> d!88229 (= c!69272 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!88229 (= lt!279379 (select (arr!17909 a!2986) index!984))))

(assert (=> d!88229 (validMask!0 mask!3053)))

(assert (=> d!88229 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17909 a!2986) j!136) a!2986 mask!3053) lt!279378)))

(declare-fun b!610675 () Bool)

(assert (=> b!610675 (= e!349878 (MissingVacant!6356 vacantSpotIndex!68))))

(declare-fun b!610676 () Bool)

(assert (=> b!610676 (= e!349880 (Found!6356 index!984))))

(declare-fun b!610677 () Bool)

(assert (=> b!610677 (= e!349878 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!17909 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and d!88229 c!69272) b!610674))

(assert (= (and d!88229 (not c!69272)) b!610672))

(assert (= (and b!610672 c!69270) b!610676))

(assert (= (and b!610672 (not c!69270)) b!610673))

(assert (= (and b!610673 c!69271) b!610675))

(assert (= (and b!610673 (not c!69271)) b!610677))

(declare-fun m!587195 () Bool)

(assert (=> d!88229 m!587195))

(declare-fun m!587197 () Bool)

(assert (=> d!88229 m!587197))

(assert (=> d!88229 m!586923))

(assert (=> d!88229 m!586931))

(assert (=> b!610677 m!586905))

(assert (=> b!610677 m!586905))

(assert (=> b!610677 m!586879))

(declare-fun m!587199 () Bool)

