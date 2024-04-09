; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56054 () Bool)

(assert start!56054)

(declare-fun b!616814 () Bool)

(declare-datatypes ((Unit!20150 0))(
  ( (Unit!20151) )
))
(declare-fun e!353697 () Unit!20150)

(declare-fun Unit!20152 () Unit!20150)

(assert (=> b!616814 (= e!353697 Unit!20152)))

(declare-fun b!616815 () Bool)

(declare-fun res!397456 () Bool)

(declare-fun e!353689 () Bool)

(assert (=> b!616815 (=> (not res!397456) (not e!353689))))

(declare-datatypes ((array!37487 0))(
  ( (array!37488 (arr!17986 (Array (_ BitVec 32) (_ BitVec 64))) (size!18350 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37487)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!616815 (= res!397456 (validKeyInArray!0 (select (arr!17986 a!2986) j!136)))))

(declare-fun b!616816 () Bool)

(declare-fun res!397449 () Bool)

(declare-fun e!353691 () Bool)

(assert (=> b!616816 (=> (not res!397449) (not e!353691))))

(declare-datatypes ((List!12080 0))(
  ( (Nil!12077) (Cons!12076 (h!13121 (_ BitVec 64)) (t!18316 List!12080)) )
))
(declare-fun arrayNoDuplicates!0 (array!37487 (_ BitVec 32) List!12080) Bool)

(assert (=> b!616816 (= res!397449 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12077))))

(declare-fun b!616817 () Bool)

(assert (=> b!616817 (= e!353689 e!353691)))

(declare-fun res!397444 () Bool)

(assert (=> b!616817 (=> (not res!397444) (not e!353691))))

(declare-datatypes ((SeekEntryResult!6433 0))(
  ( (MissingZero!6433 (index!28015 (_ BitVec 32))) (Found!6433 (index!28016 (_ BitVec 32))) (Intermediate!6433 (undefined!7245 Bool) (index!28017 (_ BitVec 32)) (x!56834 (_ BitVec 32))) (Undefined!6433) (MissingVacant!6433 (index!28018 (_ BitVec 32))) )
))
(declare-fun lt!283944 () SeekEntryResult!6433)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!616817 (= res!397444 (or (= lt!283944 (MissingZero!6433 i!1108)) (= lt!283944 (MissingVacant!6433 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37487 (_ BitVec 32)) SeekEntryResult!6433)

(assert (=> b!616817 (= lt!283944 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!397460 () Bool)

(declare-fun lt!283951 () array!37487)

(declare-fun b!616818 () Bool)

(declare-fun arrayContainsKey!0 (array!37487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!616818 (= res!397460 (arrayContainsKey!0 lt!283951 (select (arr!17986 a!2986) j!136) j!136))))

(declare-fun e!353692 () Bool)

(assert (=> b!616818 (=> (not res!397460) (not e!353692))))

(declare-fun e!353696 () Bool)

(assert (=> b!616818 (= e!353696 e!353692)))

(declare-fun e!353687 () Bool)

(declare-fun b!616819 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!616819 (= e!353687 (arrayContainsKey!0 lt!283951 (select (arr!17986 a!2986) j!136) index!984))))

(declare-fun b!616820 () Bool)

(declare-fun e!353688 () Unit!20150)

(declare-fun Unit!20153 () Unit!20150)

(assert (=> b!616820 (= e!353688 Unit!20153)))

(declare-fun res!397451 () Bool)

(assert (=> start!56054 (=> (not res!397451) (not e!353689))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56054 (= res!397451 (validMask!0 mask!3053))))

(assert (=> start!56054 e!353689))

(assert (=> start!56054 true))

(declare-fun array_inv!13760 (array!37487) Bool)

(assert (=> start!56054 (array_inv!13760 a!2986)))

(declare-fun b!616821 () Bool)

(declare-fun res!397455 () Bool)

(assert (=> b!616821 (=> (not res!397455) (not e!353691))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37487 (_ BitVec 32)) Bool)

(assert (=> b!616821 (= res!397455 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!616822 () Bool)

(declare-fun e!353690 () Unit!20150)

(declare-fun Unit!20154 () Unit!20150)

(assert (=> b!616822 (= e!353690 Unit!20154)))

(declare-fun b!616823 () Bool)

(declare-fun res!397448 () Bool)

(assert (=> b!616823 (=> (not res!397448) (not e!353689))))

(assert (=> b!616823 (= res!397448 (validKeyInArray!0 k0!1786))))

(declare-fun b!616824 () Bool)

(assert (=> b!616824 (= e!353692 (arrayContainsKey!0 lt!283951 (select (arr!17986 a!2986) j!136) index!984))))

(declare-fun b!616825 () Bool)

(declare-fun e!353694 () Bool)

(declare-fun lt!283948 () SeekEntryResult!6433)

(declare-fun lt!283940 () SeekEntryResult!6433)

(assert (=> b!616825 (= e!353694 (= lt!283948 lt!283940))))

(declare-fun b!616826 () Bool)

(declare-fun res!397450 () Bool)

(assert (=> b!616826 (=> (not res!397450) (not e!353689))))

(assert (=> b!616826 (= res!397450 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!616827 () Bool)

(declare-fun Unit!20155 () Unit!20150)

(assert (=> b!616827 (= e!353688 Unit!20155)))

(declare-fun res!397457 () Bool)

(assert (=> b!616827 (= res!397457 (= (select (store (arr!17986 a!2986) i!1108 k0!1786) index!984) (select (arr!17986 a!2986) j!136)))))

(declare-fun e!353700 () Bool)

(assert (=> b!616827 (=> (not res!397457) (not e!353700))))

(assert (=> b!616827 e!353700))

(declare-fun c!70054 () Bool)

(assert (=> b!616827 (= c!70054 (bvslt j!136 index!984))))

(declare-fun lt!283949 () Unit!20150)

(assert (=> b!616827 (= lt!283949 e!353690)))

(declare-fun c!70052 () Bool)

(assert (=> b!616827 (= c!70052 (bvslt index!984 j!136))))

(declare-fun lt!283954 () Unit!20150)

(assert (=> b!616827 (= lt!283954 e!353697)))

(assert (=> b!616827 false))

(declare-fun b!616828 () Bool)

(assert (=> b!616828 false))

(declare-fun lt!283956 () Unit!20150)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37487 (_ BitVec 64) (_ BitVec 32) List!12080) Unit!20150)

(assert (=> b!616828 (= lt!283956 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283951 (select (arr!17986 a!2986) j!136) index!984 Nil!12077))))

(assert (=> b!616828 (arrayNoDuplicates!0 lt!283951 index!984 Nil!12077)))

(declare-fun lt!283946 () Unit!20150)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37487 (_ BitVec 32) (_ BitVec 32)) Unit!20150)

(assert (=> b!616828 (= lt!283946 (lemmaNoDuplicateFromThenFromBigger!0 lt!283951 #b00000000000000000000000000000000 index!984))))

(assert (=> b!616828 (arrayNoDuplicates!0 lt!283951 #b00000000000000000000000000000000 Nil!12077)))

(declare-fun lt!283941 () Unit!20150)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37487 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12080) Unit!20150)

(assert (=> b!616828 (= lt!283941 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12077))))

(assert (=> b!616828 (arrayContainsKey!0 lt!283951 (select (arr!17986 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!283937 () Unit!20150)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37487 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20150)

(assert (=> b!616828 (= lt!283937 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283951 (select (arr!17986 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!616828 e!353687))

(declare-fun res!397447 () Bool)

(assert (=> b!616828 (=> (not res!397447) (not e!353687))))

(assert (=> b!616828 (= res!397447 (arrayContainsKey!0 lt!283951 (select (arr!17986 a!2986) j!136) j!136))))

(declare-fun Unit!20156 () Unit!20150)

(assert (=> b!616828 (= e!353697 Unit!20156)))

(declare-fun b!616829 () Bool)

(declare-fun e!353693 () Unit!20150)

(declare-fun Unit!20157 () Unit!20150)

(assert (=> b!616829 (= e!353693 Unit!20157)))

(assert (=> b!616829 false))

(declare-fun b!616830 () Bool)

(declare-fun e!353698 () Bool)

(declare-fun e!353695 () Bool)

(assert (=> b!616830 (= e!353698 e!353695)))

(declare-fun res!397458 () Bool)

(assert (=> b!616830 (=> (not res!397458) (not e!353695))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!616830 (= res!397458 (and (= lt!283948 (Found!6433 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17986 a!2986) index!984) (select (arr!17986 a!2986) j!136))) (not (= (select (arr!17986 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37487 (_ BitVec 32)) SeekEntryResult!6433)

(assert (=> b!616830 (= lt!283948 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17986 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!616831 () Bool)

(assert (=> b!616831 false))

(declare-fun lt!283942 () Unit!20150)

(assert (=> b!616831 (= lt!283942 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!283951 (select (arr!17986 a!2986) j!136) j!136 Nil!12077))))

(assert (=> b!616831 (arrayNoDuplicates!0 lt!283951 j!136 Nil!12077)))

(declare-fun lt!283952 () Unit!20150)

(assert (=> b!616831 (= lt!283952 (lemmaNoDuplicateFromThenFromBigger!0 lt!283951 #b00000000000000000000000000000000 j!136))))

(assert (=> b!616831 (arrayNoDuplicates!0 lt!283951 #b00000000000000000000000000000000 Nil!12077)))

(declare-fun lt!283939 () Unit!20150)

(assert (=> b!616831 (= lt!283939 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12077))))

(assert (=> b!616831 (arrayContainsKey!0 lt!283951 (select (arr!17986 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!283953 () Unit!20150)

(assert (=> b!616831 (= lt!283953 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!283951 (select (arr!17986 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20158 () Unit!20150)

(assert (=> b!616831 (= e!353690 Unit!20158)))

(declare-fun b!616832 () Bool)

(declare-fun Unit!20159 () Unit!20150)

(assert (=> b!616832 (= e!353693 Unit!20159)))

(declare-fun b!616833 () Bool)

(declare-fun e!353701 () Bool)

(assert (=> b!616833 (= e!353695 (not e!353701))))

(declare-fun res!397445 () Bool)

(assert (=> b!616833 (=> res!397445 e!353701)))

(declare-fun lt!283955 () SeekEntryResult!6433)

(assert (=> b!616833 (= res!397445 (not (= lt!283955 (MissingVacant!6433 vacantSpotIndex!68))))))

(declare-fun lt!283943 () Unit!20150)

(assert (=> b!616833 (= lt!283943 e!353688)))

(declare-fun c!70055 () Bool)

(assert (=> b!616833 (= c!70055 (= lt!283955 (Found!6433 index!984)))))

(declare-fun lt!283947 () Unit!20150)

(assert (=> b!616833 (= lt!283947 e!353693)))

(declare-fun c!70053 () Bool)

(assert (=> b!616833 (= c!70053 (= lt!283955 Undefined!6433))))

(declare-fun lt!283938 () (_ BitVec 64))

(assert (=> b!616833 (= lt!283955 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!283938 lt!283951 mask!3053))))

(assert (=> b!616833 e!353694))

(declare-fun res!397459 () Bool)

(assert (=> b!616833 (=> (not res!397459) (not e!353694))))

(declare-fun lt!283945 () (_ BitVec 32))

(assert (=> b!616833 (= res!397459 (= lt!283940 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283945 vacantSpotIndex!68 lt!283938 lt!283951 mask!3053)))))

(assert (=> b!616833 (= lt!283940 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!283945 vacantSpotIndex!68 (select (arr!17986 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!616833 (= lt!283938 (select (store (arr!17986 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!283950 () Unit!20150)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37487 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20150)

(assert (=> b!616833 (= lt!283950 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!283945 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!616833 (= lt!283945 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!616834 () Bool)

(declare-fun res!397453 () Bool)

(assert (=> b!616834 (=> (not res!397453) (not e!353691))))

(assert (=> b!616834 (= res!397453 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17986 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!616835 () Bool)

(declare-fun res!397454 () Bool)

(assert (=> b!616835 (=> (not res!397454) (not e!353689))))

(assert (=> b!616835 (= res!397454 (and (= (size!18350 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18350 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18350 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!616836 () Bool)

(declare-fun res!397452 () Bool)

(assert (=> b!616836 (= res!397452 (bvsge j!136 index!984))))

(assert (=> b!616836 (=> res!397452 e!353696)))

(assert (=> b!616836 (= e!353700 e!353696)))

(declare-fun b!616837 () Bool)

(assert (=> b!616837 (= e!353701 true)))

(assert (=> b!616837 (= (select (store (arr!17986 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!616838 () Bool)

(assert (=> b!616838 (= e!353691 e!353698)))

(declare-fun res!397446 () Bool)

(assert (=> b!616838 (=> (not res!397446) (not e!353698))))

(assert (=> b!616838 (= res!397446 (= (select (store (arr!17986 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!616838 (= lt!283951 (array!37488 (store (arr!17986 a!2986) i!1108 k0!1786) (size!18350 a!2986)))))

(assert (= (and start!56054 res!397451) b!616835))

(assert (= (and b!616835 res!397454) b!616815))

(assert (= (and b!616815 res!397456) b!616823))

(assert (= (and b!616823 res!397448) b!616826))

(assert (= (and b!616826 res!397450) b!616817))

(assert (= (and b!616817 res!397444) b!616821))

(assert (= (and b!616821 res!397455) b!616816))

(assert (= (and b!616816 res!397449) b!616834))

(assert (= (and b!616834 res!397453) b!616838))

(assert (= (and b!616838 res!397446) b!616830))

(assert (= (and b!616830 res!397458) b!616833))

(assert (= (and b!616833 res!397459) b!616825))

(assert (= (and b!616833 c!70053) b!616829))

(assert (= (and b!616833 (not c!70053)) b!616832))

(assert (= (and b!616833 c!70055) b!616827))

(assert (= (and b!616833 (not c!70055)) b!616820))

(assert (= (and b!616827 res!397457) b!616836))

(assert (= (and b!616836 (not res!397452)) b!616818))

(assert (= (and b!616818 res!397460) b!616824))

(assert (= (and b!616827 c!70054) b!616831))

(assert (= (and b!616827 (not c!70054)) b!616822))

(assert (= (and b!616827 c!70052) b!616828))

(assert (= (and b!616827 (not c!70052)) b!616814))

(assert (= (and b!616828 res!397447) b!616819))

(assert (= (and b!616833 (not res!397445)) b!616837))

(declare-fun m!592999 () Bool)

(assert (=> b!616819 m!592999))

(assert (=> b!616819 m!592999))

(declare-fun m!593001 () Bool)

(assert (=> b!616819 m!593001))

(declare-fun m!593003 () Bool)

(assert (=> b!616826 m!593003))

(declare-fun m!593005 () Bool)

(assert (=> b!616833 m!593005))

(declare-fun m!593007 () Bool)

(assert (=> b!616833 m!593007))

(assert (=> b!616833 m!592999))

(declare-fun m!593009 () Bool)

(assert (=> b!616833 m!593009))

(declare-fun m!593011 () Bool)

(assert (=> b!616833 m!593011))

(declare-fun m!593013 () Bool)

(assert (=> b!616833 m!593013))

(assert (=> b!616833 m!592999))

(declare-fun m!593015 () Bool)

(assert (=> b!616833 m!593015))

(declare-fun m!593017 () Bool)

(assert (=> b!616833 m!593017))

(assert (=> b!616815 m!592999))

(assert (=> b!616815 m!592999))

(declare-fun m!593019 () Bool)

(assert (=> b!616815 m!593019))

(assert (=> b!616828 m!592999))

(assert (=> b!616828 m!592999))

(declare-fun m!593021 () Bool)

(assert (=> b!616828 m!593021))

(declare-fun m!593023 () Bool)

(assert (=> b!616828 m!593023))

(assert (=> b!616828 m!592999))

(declare-fun m!593025 () Bool)

(assert (=> b!616828 m!593025))

(assert (=> b!616828 m!592999))

(declare-fun m!593027 () Bool)

(assert (=> b!616828 m!593027))

(declare-fun m!593029 () Bool)

(assert (=> b!616828 m!593029))

(declare-fun m!593031 () Bool)

(assert (=> b!616828 m!593031))

(declare-fun m!593033 () Bool)

(assert (=> b!616828 m!593033))

(assert (=> b!616828 m!592999))

(declare-fun m!593035 () Bool)

(assert (=> b!616828 m!593035))

(assert (=> b!616824 m!592999))

(assert (=> b!616824 m!592999))

(assert (=> b!616824 m!593001))

(assert (=> b!616837 m!593017))

(declare-fun m!593037 () Bool)

(assert (=> b!616837 m!593037))

(assert (=> b!616831 m!592999))

(declare-fun m!593039 () Bool)

(assert (=> b!616831 m!593039))

(assert (=> b!616831 m!592999))

(declare-fun m!593041 () Bool)

(assert (=> b!616831 m!593041))

(declare-fun m!593043 () Bool)

(assert (=> b!616831 m!593043))

(assert (=> b!616831 m!592999))

(declare-fun m!593045 () Bool)

(assert (=> b!616831 m!593045))

(assert (=> b!616831 m!593023))

(assert (=> b!616831 m!592999))

(declare-fun m!593047 () Bool)

(assert (=> b!616831 m!593047))

(assert (=> b!616831 m!593031))

(assert (=> b!616827 m!593017))

(assert (=> b!616827 m!593037))

(assert (=> b!616827 m!592999))

(assert (=> b!616838 m!593017))

(declare-fun m!593049 () Bool)

(assert (=> b!616838 m!593049))

(declare-fun m!593051 () Bool)

(assert (=> b!616816 m!593051))

(declare-fun m!593053 () Bool)

(assert (=> b!616834 m!593053))

(declare-fun m!593055 () Bool)

(assert (=> b!616830 m!593055))

(assert (=> b!616830 m!592999))

(assert (=> b!616830 m!592999))

(declare-fun m!593057 () Bool)

(assert (=> b!616830 m!593057))

(declare-fun m!593059 () Bool)

(assert (=> b!616823 m!593059))

(assert (=> b!616818 m!592999))

(assert (=> b!616818 m!592999))

(assert (=> b!616818 m!593021))

(declare-fun m!593061 () Bool)

(assert (=> b!616817 m!593061))

(declare-fun m!593063 () Bool)

(assert (=> b!616821 m!593063))

(declare-fun m!593065 () Bool)

(assert (=> start!56054 m!593065))

(declare-fun m!593067 () Bool)

(assert (=> start!56054 m!593067))

(check-sat (not b!616817) (not b!616818) (not b!616826) (not b!616824) (not b!616833) (not b!616815) (not start!56054) (not b!616831) (not b!616828) (not b!616821) (not b!616830) (not b!616823) (not b!616816) (not b!616819))
(check-sat)
