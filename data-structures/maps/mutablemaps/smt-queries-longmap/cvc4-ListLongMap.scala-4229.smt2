; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58246 () Bool)

(assert start!58246)

(declare-fun b!643046 () Bool)

(declare-fun res!416662 () Bool)

(declare-fun e!368341 () Bool)

(assert (=> b!643046 (=> (not res!416662) (not e!368341))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38380 0))(
  ( (array!38381 (arr!18401 (Array (_ BitVec 32) (_ BitVec 64))) (size!18765 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38380)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!643046 (= res!416662 (and (= (size!18765 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18765 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18765 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!643048 () Bool)

(declare-datatypes ((Unit!21760 0))(
  ( (Unit!21761) )
))
(declare-fun e!368336 () Unit!21760)

(declare-fun Unit!21762 () Unit!21760)

(assert (=> b!643048 (= e!368336 Unit!21762)))

(assert (=> b!643048 false))

(declare-fun b!643049 () Bool)

(declare-fun e!368337 () Bool)

(assert (=> b!643049 (= e!368341 e!368337)))

(declare-fun res!416646 () Bool)

(assert (=> b!643049 (=> (not res!416646) (not e!368337))))

(declare-datatypes ((SeekEntryResult!6848 0))(
  ( (MissingZero!6848 (index!29720 (_ BitVec 32))) (Found!6848 (index!29721 (_ BitVec 32))) (Intermediate!6848 (undefined!7660 Bool) (index!29722 (_ BitVec 32)) (x!58512 (_ BitVec 32))) (Undefined!6848) (MissingVacant!6848 (index!29723 (_ BitVec 32))) )
))
(declare-fun lt!297957 () SeekEntryResult!6848)

(assert (=> b!643049 (= res!416646 (or (= lt!297957 (MissingZero!6848 i!1108)) (= lt!297957 (MissingVacant!6848 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38380 (_ BitVec 32)) SeekEntryResult!6848)

(assert (=> b!643049 (= lt!297957 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!643050 () Bool)

(declare-fun e!368334 () Bool)

(declare-fun e!368333 () Bool)

(assert (=> b!643050 (= e!368334 e!368333)))

(declare-fun res!416649 () Bool)

(assert (=> b!643050 (=> res!416649 e!368333)))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!643050 (= res!416649 (bvsge index!984 j!136))))

(declare-fun lt!297947 () Unit!21760)

(declare-fun e!368331 () Unit!21760)

(assert (=> b!643050 (= lt!297947 e!368331)))

(declare-fun c!73568 () Bool)

(assert (=> b!643050 (= c!73568 (bvslt j!136 index!984))))

(declare-fun b!643051 () Bool)

(declare-fun res!416647 () Bool)

(assert (=> b!643051 (=> (not res!416647) (not e!368341))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!643051 (= res!416647 (validKeyInArray!0 (select (arr!18401 a!2986) j!136)))))

(declare-fun lt!297954 () array!38380)

(declare-fun b!643052 () Bool)

(declare-fun arrayContainsKey!0 (array!38380 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!643052 (= e!368333 (arrayContainsKey!0 lt!297954 (select (arr!18401 a!2986) j!136) index!984))))

(assert (=> b!643052 (arrayContainsKey!0 lt!297954 (select (arr!18401 a!2986) j!136) j!136)))

(declare-fun b!643053 () Bool)

(declare-fun e!368344 () Bool)

(declare-fun lt!297945 () SeekEntryResult!6848)

(declare-fun lt!297943 () SeekEntryResult!6848)

(assert (=> b!643053 (= e!368344 (= lt!297945 lt!297943))))

(declare-fun b!643054 () Bool)

(declare-fun e!368335 () Bool)

(declare-fun e!368342 () Bool)

(assert (=> b!643054 (= e!368335 e!368342)))

(declare-fun res!416653 () Bool)

(assert (=> b!643054 (=> (not res!416653) (not e!368342))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!643054 (= res!416653 (and (= lt!297945 (Found!6848 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18401 a!2986) index!984) (select (arr!18401 a!2986) j!136))) (not (= (select (arr!18401 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38380 (_ BitVec 32)) SeekEntryResult!6848)

(assert (=> b!643054 (= lt!297945 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18401 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643055 () Bool)

(declare-fun Unit!21763 () Unit!21760)

(assert (=> b!643055 (= e!368331 Unit!21763)))

(declare-fun lt!297953 () Unit!21760)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38380 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21760)

(assert (=> b!643055 (= lt!297953 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297954 (select (arr!18401 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!643055 (arrayContainsKey!0 lt!297954 (select (arr!18401 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297950 () Unit!21760)

(declare-datatypes ((List!12495 0))(
  ( (Nil!12492) (Cons!12491 (h!13536 (_ BitVec 64)) (t!18731 List!12495)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38380 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12495) Unit!21760)

(assert (=> b!643055 (= lt!297950 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12492))))

(declare-fun arrayNoDuplicates!0 (array!38380 (_ BitVec 32) List!12495) Bool)

(assert (=> b!643055 (arrayNoDuplicates!0 lt!297954 #b00000000000000000000000000000000 Nil!12492)))

(declare-fun lt!297951 () Unit!21760)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38380 (_ BitVec 32) (_ BitVec 32)) Unit!21760)

(assert (=> b!643055 (= lt!297951 (lemmaNoDuplicateFromThenFromBigger!0 lt!297954 #b00000000000000000000000000000000 j!136))))

(assert (=> b!643055 (arrayNoDuplicates!0 lt!297954 j!136 Nil!12492)))

(declare-fun lt!297956 () Unit!21760)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38380 (_ BitVec 64) (_ BitVec 32) List!12495) Unit!21760)

(assert (=> b!643055 (= lt!297956 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!297954 (select (arr!18401 a!2986) j!136) j!136 Nil!12492))))

(assert (=> b!643055 false))

(declare-fun b!643056 () Bool)

(declare-fun res!416655 () Bool)

(assert (=> b!643056 (=> (not res!416655) (not e!368341))))

(assert (=> b!643056 (= res!416655 (validKeyInArray!0 k!1786))))

(declare-fun b!643047 () Bool)

(declare-fun e!368338 () Bool)

(declare-fun e!368340 () Bool)

(assert (=> b!643047 (= e!368338 e!368340)))

(declare-fun res!416656 () Bool)

(assert (=> b!643047 (=> res!416656 e!368340)))

(declare-fun lt!297948 () (_ BitVec 64))

(declare-fun lt!297949 () (_ BitVec 64))

(assert (=> b!643047 (= res!416656 (or (not (= (select (arr!18401 a!2986) j!136) lt!297949)) (not (= (select (arr!18401 a!2986) j!136) lt!297948)) (bvsge j!136 index!984)))))

(declare-fun res!416651 () Bool)

(assert (=> start!58246 (=> (not res!416651) (not e!368341))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58246 (= res!416651 (validMask!0 mask!3053))))

(assert (=> start!58246 e!368341))

(assert (=> start!58246 true))

(declare-fun array_inv!14175 (array!38380) Bool)

(assert (=> start!58246 (array_inv!14175 a!2986)))

(declare-fun b!643057 () Bool)

(declare-fun res!416658 () Bool)

(assert (=> b!643057 (=> (not res!416658) (not e!368337))))

(assert (=> b!643057 (= res!416658 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12492))))

(declare-fun b!643058 () Bool)

(declare-fun res!416657 () Bool)

(assert (=> b!643058 (=> (not res!416657) (not e!368337))))

(assert (=> b!643058 (= res!416657 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18401 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!643059 () Bool)

(declare-fun Unit!21764 () Unit!21760)

(assert (=> b!643059 (= e!368336 Unit!21764)))

(declare-fun b!643060 () Bool)

(assert (=> b!643060 (= e!368337 e!368335)))

(declare-fun res!416659 () Bool)

(assert (=> b!643060 (=> (not res!416659) (not e!368335))))

(assert (=> b!643060 (= res!416659 (= (select (store (arr!18401 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643060 (= lt!297954 (array!38381 (store (arr!18401 a!2986) i!1108 k!1786) (size!18765 a!2986)))))

(declare-fun b!643061 () Bool)

(declare-fun res!416660 () Bool)

(assert (=> b!643061 (=> (not res!416660) (not e!368341))))

(assert (=> b!643061 (= res!416660 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!643062 () Bool)

(declare-fun e!368339 () Bool)

(assert (=> b!643062 (= e!368339 e!368334)))

(declare-fun res!416648 () Bool)

(assert (=> b!643062 (=> res!416648 e!368334)))

(assert (=> b!643062 (= res!416648 (or (not (= (select (arr!18401 a!2986) j!136) lt!297949)) (not (= (select (arr!18401 a!2986) j!136) lt!297948))))))

(assert (=> b!643062 e!368338))

(declare-fun res!416650 () Bool)

(assert (=> b!643062 (=> (not res!416650) (not e!368338))))

(assert (=> b!643062 (= res!416650 (= lt!297948 (select (arr!18401 a!2986) j!136)))))

(assert (=> b!643062 (= lt!297948 (select (store (arr!18401 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!643063 () Bool)

(declare-fun e!368343 () Bool)

(assert (=> b!643063 (= e!368340 e!368343)))

(declare-fun res!416654 () Bool)

(assert (=> b!643063 (=> (not res!416654) (not e!368343))))

(assert (=> b!643063 (= res!416654 (arrayContainsKey!0 lt!297954 (select (arr!18401 a!2986) j!136) j!136))))

(declare-fun b!643064 () Bool)

(declare-fun res!416663 () Bool)

(assert (=> b!643064 (=> (not res!416663) (not e!368337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38380 (_ BitVec 32)) Bool)

(assert (=> b!643064 (= res!416663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!643065 () Bool)

(assert (=> b!643065 (= e!368342 (not e!368339))))

(declare-fun res!416661 () Bool)

(assert (=> b!643065 (=> res!416661 e!368339)))

(declare-fun lt!297946 () SeekEntryResult!6848)

(assert (=> b!643065 (= res!416661 (not (= lt!297946 (Found!6848 index!984))))))

(declare-fun lt!297944 () Unit!21760)

(assert (=> b!643065 (= lt!297944 e!368336)))

(declare-fun c!73567 () Bool)

(assert (=> b!643065 (= c!73567 (= lt!297946 Undefined!6848))))

(assert (=> b!643065 (= lt!297946 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297949 lt!297954 mask!3053))))

(assert (=> b!643065 e!368344))

(declare-fun res!416652 () Bool)

(assert (=> b!643065 (=> (not res!416652) (not e!368344))))

(declare-fun lt!297955 () (_ BitVec 32))

(assert (=> b!643065 (= res!416652 (= lt!297943 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297955 vacantSpotIndex!68 lt!297949 lt!297954 mask!3053)))))

(assert (=> b!643065 (= lt!297943 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297955 vacantSpotIndex!68 (select (arr!18401 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!643065 (= lt!297949 (select (store (arr!18401 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297952 () Unit!21760)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38380 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21760)

(assert (=> b!643065 (= lt!297952 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297955 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!643065 (= lt!297955 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!643066 () Bool)

(declare-fun Unit!21765 () Unit!21760)

(assert (=> b!643066 (= e!368331 Unit!21765)))

(declare-fun b!643067 () Bool)

(assert (=> b!643067 (= e!368343 (arrayContainsKey!0 lt!297954 (select (arr!18401 a!2986) j!136) index!984))))

(assert (= (and start!58246 res!416651) b!643046))

(assert (= (and b!643046 res!416662) b!643051))

(assert (= (and b!643051 res!416647) b!643056))

(assert (= (and b!643056 res!416655) b!643061))

(assert (= (and b!643061 res!416660) b!643049))

(assert (= (and b!643049 res!416646) b!643064))

(assert (= (and b!643064 res!416663) b!643057))

(assert (= (and b!643057 res!416658) b!643058))

(assert (= (and b!643058 res!416657) b!643060))

(assert (= (and b!643060 res!416659) b!643054))

(assert (= (and b!643054 res!416653) b!643065))

(assert (= (and b!643065 res!416652) b!643053))

(assert (= (and b!643065 c!73567) b!643048))

(assert (= (and b!643065 (not c!73567)) b!643059))

(assert (= (and b!643065 (not res!416661)) b!643062))

(assert (= (and b!643062 res!416650) b!643047))

(assert (= (and b!643047 (not res!416656)) b!643063))

(assert (= (and b!643063 res!416654) b!643067))

(assert (= (and b!643062 (not res!416648)) b!643050))

(assert (= (and b!643050 c!73568) b!643055))

(assert (= (and b!643050 (not c!73568)) b!643066))

(assert (= (and b!643050 (not res!416649)) b!643052))

(declare-fun m!616851 () Bool)

(assert (=> b!643052 m!616851))

(assert (=> b!643052 m!616851))

(declare-fun m!616853 () Bool)

(assert (=> b!643052 m!616853))

(assert (=> b!643052 m!616851))

(declare-fun m!616855 () Bool)

(assert (=> b!643052 m!616855))

(assert (=> b!643055 m!616851))

(declare-fun m!616857 () Bool)

(assert (=> b!643055 m!616857))

(declare-fun m!616859 () Bool)

(assert (=> b!643055 m!616859))

(declare-fun m!616861 () Bool)

(assert (=> b!643055 m!616861))

(declare-fun m!616863 () Bool)

(assert (=> b!643055 m!616863))

(assert (=> b!643055 m!616851))

(declare-fun m!616865 () Bool)

(assert (=> b!643055 m!616865))

(assert (=> b!643055 m!616851))

(declare-fun m!616867 () Bool)

(assert (=> b!643055 m!616867))

(assert (=> b!643055 m!616851))

(declare-fun m!616869 () Bool)

(assert (=> b!643055 m!616869))

(assert (=> b!643047 m!616851))

(declare-fun m!616871 () Bool)

(assert (=> b!643061 m!616871))

(declare-fun m!616873 () Bool)

(assert (=> b!643054 m!616873))

(assert (=> b!643054 m!616851))

(assert (=> b!643054 m!616851))

(declare-fun m!616875 () Bool)

(assert (=> b!643054 m!616875))

(declare-fun m!616877 () Bool)

(assert (=> b!643057 m!616877))

(declare-fun m!616879 () Bool)

(assert (=> b!643060 m!616879))

(declare-fun m!616881 () Bool)

(assert (=> b!643060 m!616881))

(declare-fun m!616883 () Bool)

(assert (=> b!643064 m!616883))

(declare-fun m!616885 () Bool)

(assert (=> b!643056 m!616885))

(declare-fun m!616887 () Bool)

(assert (=> b!643058 m!616887))

(declare-fun m!616889 () Bool)

(assert (=> b!643049 m!616889))

(declare-fun m!616891 () Bool)

(assert (=> b!643065 m!616891))

(declare-fun m!616893 () Bool)

(assert (=> b!643065 m!616893))

(assert (=> b!643065 m!616851))

(assert (=> b!643065 m!616879))

(declare-fun m!616895 () Bool)

(assert (=> b!643065 m!616895))

(declare-fun m!616897 () Bool)

(assert (=> b!643065 m!616897))

(declare-fun m!616899 () Bool)

(assert (=> b!643065 m!616899))

(assert (=> b!643065 m!616851))

(declare-fun m!616901 () Bool)

(assert (=> b!643065 m!616901))

(assert (=> b!643063 m!616851))

(assert (=> b!643063 m!616851))

(assert (=> b!643063 m!616855))

(declare-fun m!616903 () Bool)

(assert (=> start!58246 m!616903))

(declare-fun m!616905 () Bool)

(assert (=> start!58246 m!616905))

(assert (=> b!643067 m!616851))

(assert (=> b!643067 m!616851))

(assert (=> b!643067 m!616853))

(assert (=> b!643062 m!616851))

(assert (=> b!643062 m!616879))

(declare-fun m!616907 () Bool)

(assert (=> b!643062 m!616907))

(assert (=> b!643051 m!616851))

(assert (=> b!643051 m!616851))

(declare-fun m!616909 () Bool)

(assert (=> b!643051 m!616909))

(push 1)

(assert (not b!643065))

(assert (not b!643056))

(assert (not b!643054))

(assert (not b!643049))

(assert (not start!58246))

(assert (not b!643052))

(assert (not b!643067))

(assert (not b!643055))

(assert (not b!643063))

(assert (not b!643057))

(assert (not b!643061))

(assert (not b!643051))

(assert (not b!643064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!643147 () Bool)

(declare-fun e!368399 () Bool)

(declare-fun call!33587 () Bool)

(assert (=> b!643147 (= e!368399 call!33587)))

(declare-fun bm!33584 () Bool)

(assert (=> bm!33584 (= call!33587 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2986 mask!3053))))

(declare-fun b!643148 () Bool)

(declare-fun e!368400 () Bool)

(assert (=> b!643148 (= e!368400 e!368399)))

(declare-fun lt!297985 () (_ BitVec 64))

(assert (=> b!643148 (= lt!297985 (select (arr!18401 a!2986) #b00000000000000000000000000000000))))

(declare-fun lt!297984 () Unit!21760)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38380 (_ BitVec 64) (_ BitVec 32)) Unit!21760)

(assert (=> b!643148 (= lt!297984 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2986 lt!297985 #b00000000000000000000000000000000))))

(assert (=> b!643148 (arrayContainsKey!0 a!2986 lt!297985 #b00000000000000000000000000000000)))

(declare-fun lt!297983 () Unit!21760)

(assert (=> b!643148 (= lt!297983 lt!297984)))

(declare-fun res!416692 () Bool)

(assert (=> b!643148 (= res!416692 (= (seekEntryOrOpen!0 (select (arr!18401 a!2986) #b00000000000000000000000000000000) a!2986 mask!3053) (Found!6848 #b00000000000000000000000000000000)))))

(assert (=> b!643148 (=> (not res!416692) (not e!368399))))

(declare-fun b!643149 () Bool)

(assert (=> b!643149 (= e!368400 call!33587)))

(declare-fun d!90815 () Bool)

(declare-fun res!416691 () Bool)

(declare-fun e!368398 () Bool)

(assert (=> d!90815 (=> res!416691 e!368398)))

(assert (=> d!90815 (= res!416691 (bvsge #b00000000000000000000000000000000 (size!18765 a!2986)))))

(assert (=> d!90815 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053) e!368398)))

(declare-fun b!643150 () Bool)

(assert (=> b!643150 (= e!368398 e!368400)))

(declare-fun c!73595 () Bool)

(assert (=> b!643150 (= c!73595 (validKeyInArray!0 (select (arr!18401 a!2986) #b00000000000000000000000000000000)))))

(assert (= (and d!90815 (not res!416691)) b!643150))

(assert (= (and b!643150 c!73595) b!643148))

(assert (= (and b!643150 (not c!73595)) b!643149))

(assert (= (and b!643148 res!416692) b!643147))

(assert (= (or b!643147 b!643149) bm!33584))

(declare-fun m!616961 () Bool)

(assert (=> bm!33584 m!616961))

(declare-fun m!616963 () Bool)

(assert (=> b!643148 m!616963))

(declare-fun m!616965 () Bool)

(assert (=> b!643148 m!616965))

(declare-fun m!616967 () Bool)

(assert (=> b!643148 m!616967))

(assert (=> b!643148 m!616963))

(declare-fun m!616971 () Bool)

(assert (=> b!643148 m!616971))

(assert (=> b!643150 m!616963))

(assert (=> b!643150 m!616963))

(declare-fun m!616973 () Bool)

(assert (=> b!643150 m!616973))

(assert (=> b!643064 d!90815))

(declare-fun d!90827 () Bool)

(declare-fun res!416700 () Bool)

(declare-fun e!368409 () Bool)

(assert (=> d!90827 (=> res!416700 e!368409)))

(assert (=> d!90827 (= res!416700 (= (select (arr!18401 lt!297954) index!984) (select (arr!18401 a!2986) j!136)))))

(assert (=> d!90827 (= (arrayContainsKey!0 lt!297954 (select (arr!18401 a!2986) j!136) index!984) e!368409)))

(declare-fun b!643160 () Bool)

(declare-fun e!368410 () Bool)

(assert (=> b!643160 (= e!368409 e!368410)))

(declare-fun res!416701 () Bool)

(assert (=> b!643160 (=> (not res!416701) (not e!368410))))

(assert (=> b!643160 (= res!416701 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18765 lt!297954)))))

(declare-fun b!643161 () Bool)

(assert (=> b!643161 (= e!368410 (arrayContainsKey!0 lt!297954 (select (arr!18401 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!90827 (not res!416700)) b!643160))

(assert (= (and b!643160 res!416701) b!643161))

(declare-fun m!616983 () Bool)

(assert (=> d!90827 m!616983))

(assert (=> b!643161 m!616851))

(declare-fun m!616985 () Bool)

(assert (=> b!643161 m!616985))

(assert (=> b!643052 d!90827))

(declare-fun d!90831 () Bool)

(declare-fun res!416702 () Bool)

(declare-fun e!368411 () Bool)

(assert (=> d!90831 (=> res!416702 e!368411)))

(assert (=> d!90831 (= res!416702 (= (select (arr!18401 lt!297954) j!136) (select (arr!18401 a!2986) j!136)))))

(assert (=> d!90831 (= (arrayContainsKey!0 lt!297954 (select (arr!18401 a!2986) j!136) j!136) e!368411)))

(declare-fun b!643162 () Bool)

(declare-fun e!368412 () Bool)

(assert (=> b!643162 (= e!368411 e!368412)))

(declare-fun res!416703 () Bool)

(assert (=> b!643162 (=> (not res!416703) (not e!368412))))

(assert (=> b!643162 (= res!416703 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18765 lt!297954)))))

(declare-fun b!643163 () Bool)

(assert (=> b!643163 (= e!368412 (arrayContainsKey!0 lt!297954 (select (arr!18401 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!90831 (not res!416702)) b!643162))

(assert (= (and b!643162 res!416703) b!643163))

(declare-fun m!616987 () Bool)

(assert (=> d!90831 m!616987))

(assert (=> b!643163 m!616851))

(declare-fun m!616989 () Bool)

(assert (=> b!643163 m!616989))

(assert (=> b!643052 d!90831))

(assert (=> b!643063 d!90831))

(declare-fun d!90833 () Bool)

(declare-fun res!416704 () Bool)

(declare-fun e!368413 () Bool)

(assert (=> d!90833 (=> res!416704 e!368413)))

(assert (=> d!90833 (= res!416704 (= (select (arr!18401 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!90833 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!368413)))

(declare-fun b!643164 () Bool)

(declare-fun e!368414 () Bool)

(assert (=> b!643164 (= e!368413 e!368414)))

(declare-fun res!416705 () Bool)

(assert (=> b!643164 (=> (not res!416705) (not e!368414))))

(assert (=> b!643164 (= res!416705 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18765 a!2986)))))

(declare-fun b!643165 () Bool)

(assert (=> b!643165 (= e!368414 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!90833 (not res!416704)) b!643164))

(assert (= (and b!643164 res!416705) b!643165))

(assert (=> d!90833 m!616963))

(declare-fun m!616991 () Bool)

(assert (=> b!643165 m!616991))

(assert (=> b!643061 d!90833))

(declare-fun d!90835 () Bool)

(assert (=> d!90835 (= (validKeyInArray!0 (select (arr!18401 a!2986) j!136)) (and (not (= (select (arr!18401 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18401 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!643051 d!90835))

(declare-fun b!643234 () Bool)

(declare-fun e!368462 () SeekEntryResult!6848)

(declare-fun lt!298023 () SeekEntryResult!6848)

(assert (=> b!643234 (= e!368462 (Found!6848 (index!29722 lt!298023)))))

(declare-fun b!643235 () Bool)

(declare-fun e!368461 () SeekEntryResult!6848)

(assert (=> b!643235 (= e!368461 e!368462)))

(declare-fun lt!298021 () (_ BitVec 64))

(assert (=> b!643235 (= lt!298021 (select (arr!18401 a!2986) (index!29722 lt!298023)))))

(declare-fun c!73620 () Bool)

(assert (=> b!643235 (= c!73620 (= lt!298021 k!1786))))

(declare-fun d!90839 () Bool)

(declare-fun lt!298022 () SeekEntryResult!6848)

(assert (=> d!90839 (and (or (is-Undefined!6848 lt!298022) (not (is-Found!6848 lt!298022)) (and (bvsge (index!29721 lt!298022) #b00000000000000000000000000000000) (bvslt (index!29721 lt!298022) (size!18765 a!2986)))) (or (is-Undefined!6848 lt!298022) (is-Found!6848 lt!298022) (not (is-MissingZero!6848 lt!298022)) (and (bvsge (index!29720 lt!298022) #b00000000000000000000000000000000) (bvslt (index!29720 lt!298022) (size!18765 a!2986)))) (or (is-Undefined!6848 lt!298022) (is-Found!6848 lt!298022) (is-MissingZero!6848 lt!298022) (not (is-MissingVacant!6848 lt!298022)) (and (bvsge (index!29723 lt!298022) #b00000000000000000000000000000000) (bvslt (index!29723 lt!298022) (size!18765 a!2986)))) (or (is-Undefined!6848 lt!298022) (ite (is-Found!6848 lt!298022) (= (select (arr!18401 a!2986) (index!29721 lt!298022)) k!1786) (ite (is-MissingZero!6848 lt!298022) (= (select (arr!18401 a!2986) (index!29720 lt!298022)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6848 lt!298022) (= (select (arr!18401 a!2986) (index!29723 lt!298022)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!90839 (= lt!298022 e!368461)))

(declare-fun c!73619 () Bool)

(assert (=> d!90839 (= c!73619 (and (is-Intermediate!6848 lt!298023) (undefined!7660 lt!298023)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38380 (_ BitVec 32)) SeekEntryResult!6848)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!90839 (= lt!298023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!90839 (validMask!0 mask!3053)))

(assert (=> d!90839 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!298022)))

(declare-fun b!643236 () Bool)

(declare-fun c!73621 () Bool)

(assert (=> b!643236 (= c!73621 (= lt!298021 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!368463 () SeekEntryResult!6848)

(assert (=> b!643236 (= e!368462 e!368463)))

(declare-fun b!643237 () Bool)

(assert (=> b!643237 (= e!368463 (seekKeyOrZeroReturnVacant!0 (x!58512 lt!298023) (index!29722 lt!298023) (index!29722 lt!298023) k!1786 a!2986 mask!3053))))

(declare-fun b!643238 () Bool)

(assert (=> b!643238 (= e!368461 Undefined!6848)))

(declare-fun b!643239 () Bool)

(assert (=> b!643239 (= e!368463 (MissingZero!6848 (index!29722 lt!298023)))))

(assert (= (and d!90839 c!73619) b!643238))

(assert (= (and d!90839 (not c!73619)) b!643235))

(assert (= (and b!643235 c!73620) b!643234))

(assert (= (and b!643235 (not c!73620)) b!643236))

(assert (= (and b!643236 c!73621) b!643239))

(assert (= (and b!643236 (not c!73621)) b!643237))

(declare-fun m!617051 () Bool)

(assert (=> b!643235 m!617051))

(declare-fun m!617053 () Bool)

(assert (=> d!90839 m!617053))

(declare-fun m!617055 () Bool)

(assert (=> d!90839 m!617055))

(declare-fun m!617057 () Bool)

(assert (=> d!90839 m!617057))

(declare-fun m!617059 () Bool)

(assert (=> d!90839 m!617059))

(assert (=> d!90839 m!616903))

(assert (=> d!90839 m!617053))

(declare-fun m!617061 () Bool)

(assert (=> d!90839 m!617061))

(declare-fun m!617063 () Bool)

(assert (=> b!643237 m!617063))

(assert (=> b!643049 d!90839))

(declare-fun d!90867 () Bool)

(assert (=> d!90867 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!58246 d!90867))

(declare-fun d!90877 () Bool)

(assert (=> d!90877 (= (array_inv!14175 a!2986) (bvsge (size!18765 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!58246 d!90877))

(declare-fun b!643302 () Bool)

(declare-fun e!368510 () Bool)

(declare-fun e!368509 () Bool)

(assert (=> b!643302 (= e!368510 e!368509)))

(declare-fun c!73640 () Bool)

(assert (=> b!643302 (= c!73640 (validKeyInArray!0 (select (arr!18401 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!643303 () Bool)

(declare-fun e!368511 () Bool)

(declare-fun contains!3146 (List!12495 (_ BitVec 64)) Bool)

(assert (=> b!643303 (= e!368511 (contains!3146 Nil!12492 (select (arr!18401 a!2986) #b00000000000000000000000000000000)))))

(declare-fun d!90879 () Bool)

(declare-fun res!416757 () Bool)

(declare-fun e!368508 () Bool)

(assert (=> d!90879 (=> res!416757 e!368508)))

(assert (=> d!90879 (= res!416757 (bvsge #b00000000000000000000000000000000 (size!18765 a!2986)))))

(assert (=> d!90879 (= (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12492) e!368508)))

(declare-fun b!643304 () Bool)

(assert (=> b!643304 (= e!368508 e!368510)))

(declare-fun res!416756 () Bool)

(assert (=> b!643304 (=> (not res!416756) (not e!368510))))

(assert (=> b!643304 (= res!416756 (not e!368511))))

(declare-fun res!416758 () Bool)

(assert (=> b!643304 (=> (not res!416758) (not e!368511))))

(assert (=> b!643304 (= res!416758 (validKeyInArray!0 (select (arr!18401 a!2986) #b00000000000000000000000000000000)))))

(declare-fun b!643305 () Bool)

(declare-fun call!33602 () Bool)

(assert (=> b!643305 (= e!368509 call!33602)))

(declare-fun b!643306 () Bool)

(assert (=> b!643306 (= e!368509 call!33602)))

(declare-fun bm!33599 () Bool)

(assert (=> bm!33599 (= call!33602 (arrayNoDuplicates!0 a!2986 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!73640 (Cons!12491 (select (arr!18401 a!2986) #b00000000000000000000000000000000) Nil!12492) Nil!12492)))))

(assert (= (and d!90879 (not res!416757)) b!643304))

(assert (= (and b!643304 res!416758) b!643303))

(assert (= (and b!643304 res!416756) b!643302))

(assert (= (and b!643302 c!73640) b!643306))

(assert (= (and b!643302 (not c!73640)) b!643305))

(assert (= (or b!643306 b!643305) bm!33599))

(assert (=> b!643302 m!616963))

(assert (=> b!643302 m!616963))

(assert (=> b!643302 m!616973))

(assert (=> b!643303 m!616963))

(assert (=> b!643303 m!616963))

(declare-fun m!617125 () Bool)

(assert (=> b!643303 m!617125))

(assert (=> b!643304 m!616963))

(assert (=> b!643304 m!616963))

(assert (=> b!643304 m!616973))

(assert (=> bm!33599 m!616963))

(declare-fun m!617127 () Bool)

(assert (=> bm!33599 m!617127))

(assert (=> b!643057 d!90879))

(declare-fun d!90893 () Bool)

(assert (=> d!90893 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!643056 d!90893))

(assert (=> b!643067 d!90827))

(declare-fun b!643333 () Bool)

(declare-fun e!368528 () SeekEntryResult!6848)

(assert (=> b!643333 (= e!368528 (Found!6848 index!984))))

(declare-fun b!643334 () Bool)

(declare-fun e!368529 () SeekEntryResult!6848)

(assert (=> b!643334 (= e!368529 Undefined!6848)))

(declare-fun b!643335 () Bool)

(declare-fun e!368530 () SeekEntryResult!6848)

(assert (=> b!643335 (= e!368530 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18401 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!643336 () Bool)

(assert (=> b!643336 (= e!368530 (MissingVacant!6848 vacantSpotIndex!68))))

(declare-fun b!643338 () Bool)

(assert (=> b!643338 (= e!368529 e!368528)))

(declare-fun lt!298067 () (_ BitVec 64))

(declare-fun c!73651 () Bool)

(assert (=> b!643338 (= c!73651 (= lt!298067 (select (arr!18401 a!2986) j!136)))))

(declare-fun b!643337 () Bool)

(declare-fun c!73652 () Bool)

(assert (=> b!643337 (= c!73652 (= lt!298067 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643337 (= e!368528 e!368530)))

(declare-fun d!90895 () Bool)

(declare-fun lt!298068 () SeekEntryResult!6848)

(assert (=> d!90895 (and (or (is-Undefined!6848 lt!298068) (not (is-Found!6848 lt!298068)) (and (bvsge (index!29721 lt!298068) #b00000000000000000000000000000000) (bvslt (index!29721 lt!298068) (size!18765 a!2986)))) (or (is-Undefined!6848 lt!298068) (is-Found!6848 lt!298068) (not (is-MissingVacant!6848 lt!298068)) (not (= (index!29723 lt!298068) vacantSpotIndex!68)) (and (bvsge (index!29723 lt!298068) #b00000000000000000000000000000000) (bvslt (index!29723 lt!298068) (size!18765 a!2986)))) (or (is-Undefined!6848 lt!298068) (ite (is-Found!6848 lt!298068) (= (select (arr!18401 a!2986) (index!29721 lt!298068)) (select (arr!18401 a!2986) j!136)) (and (is-MissingVacant!6848 lt!298068) (= (index!29723 lt!298068) vacantSpotIndex!68) (= (select (arr!18401 a!2986) (index!29723 lt!298068)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90895 (= lt!298068 e!368529)))

(declare-fun c!73653 () Bool)

(assert (=> d!90895 (= c!73653 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90895 (= lt!298067 (select (arr!18401 a!2986) index!984))))

(assert (=> d!90895 (validMask!0 mask!3053)))

(assert (=> d!90895 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18401 a!2986) j!136) a!2986 mask!3053) lt!298068)))

(assert (= (and d!90895 c!73653) b!643334))

(assert (= (and d!90895 (not c!73653)) b!643338))

(assert (= (and b!643338 c!73651) b!643333))

(assert (= (and b!643338 (not c!73651)) b!643337))

(assert (= (and b!643337 c!73652) b!643336))

(assert (= (and b!643337 (not c!73652)) b!643335))

(assert (=> b!643335 m!616891))

(assert (=> b!643335 m!616891))

(assert (=> b!643335 m!616851))

(declare-fun m!617143 () Bool)

(assert (=> b!643335 m!617143))

(declare-fun m!617145 () Bool)

(assert (=> d!90895 m!617145))

(declare-fun m!617147 () Bool)

(assert (=> d!90895 m!617147))

(assert (=> d!90895 m!616873))

(assert (=> d!90895 m!616903))

(assert (=> b!643054 d!90895))

(declare-fun b!643339 () Bool)

(declare-fun e!368531 () SeekEntryResult!6848)

(assert (=> b!643339 (= e!368531 (Found!6848 index!984))))

(declare-fun b!643340 () Bool)

(declare-fun e!368532 () SeekEntryResult!6848)

(assert (=> b!643340 (= e!368532 Undefined!6848)))

(declare-fun e!368533 () SeekEntryResult!6848)

(declare-fun b!643341 () Bool)

(assert (=> b!643341 (= e!368533 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 lt!297949 lt!297954 mask!3053))))

(declare-fun b!643342 () Bool)

(assert (=> b!643342 (= e!368533 (MissingVacant!6848 vacantSpotIndex!68))))

(declare-fun b!643344 () Bool)

(assert (=> b!643344 (= e!368532 e!368531)))

(declare-fun c!73654 () Bool)

(declare-fun lt!298069 () (_ BitVec 64))

(assert (=> b!643344 (= c!73654 (= lt!298069 lt!297949))))

(declare-fun b!643343 () Bool)

(declare-fun c!73655 () Bool)

(assert (=> b!643343 (= c!73655 (= lt!298069 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!643343 (= e!368531 e!368533)))

(declare-fun d!90903 () Bool)

(declare-fun lt!298070 () SeekEntryResult!6848)

(assert (=> d!90903 (and (or (is-Undefined!6848 lt!298070) (not (is-Found!6848 lt!298070)) (and (bvsge (index!29721 lt!298070) #b00000000000000000000000000000000) (bvslt (index!29721 lt!298070) (size!18765 lt!297954)))) (or (is-Undefined!6848 lt!298070) (is-Found!6848 lt!298070) (not (is-MissingVacant!6848 lt!298070)) (not (= (index!29723 lt!298070) vacantSpotIndex!68)) (and (bvsge (index!29723 lt!298070) #b00000000000000000000000000000000) (bvslt (index!29723 lt!298070) (size!18765 lt!297954)))) (or (is-Undefined!6848 lt!298070) (ite (is-Found!6848 lt!298070) (= (select (arr!18401 lt!297954) (index!29721 lt!298070)) lt!297949) (and (is-MissingVacant!6848 lt!298070) (= (index!29723 lt!298070) vacantSpotIndex!68) (= (select (arr!18401 lt!297954) (index!29723 lt!298070)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!90903 (= lt!298070 e!368532)))

(declare-fun c!73656 () Bool)

(assert (=> d!90903 (= c!73656 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!90903 (= lt!298069 (select (arr!18401 lt!297954) index!984))))

(assert (=> d!90903 (validMask!0 mask!3053)))

(assert (=> d!90903 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297949 lt!297954 mask!3053) lt!298070)))

(assert (= (and d!90903 c!73656) b!643340))

(assert (= (and d!90903 (not c!73656)) b!643344))

(assert (= (and b!643344 c!73654) b!643339))

(assert (= (and b!643344 (not c!73654)) b!643343))

