; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!58140 () Bool)

(assert start!58140)

(declare-fun b!642020 () Bool)

(declare-fun res!415939 () Bool)

(declare-fun e!367681 () Bool)

(assert (=> b!642020 (=> (not res!415939) (not e!367681))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!642020 (= res!415939 (validKeyInArray!0 k!1786))))

(declare-fun b!642021 () Bool)

(declare-fun res!415941 () Bool)

(assert (=> b!642021 (=> (not res!415941) (not e!367681))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38355 0))(
  ( (array!38356 (arr!18390 (Array (_ BitVec 32) (_ BitVec 64))) (size!18754 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38355)

(assert (=> b!642021 (= res!415941 (and (= (size!18754 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18754 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18754 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!642022 () Bool)

(declare-fun e!367677 () Bool)

(declare-fun e!367682 () Bool)

(assert (=> b!642022 (= e!367677 (not e!367682))))

(declare-fun res!415930 () Bool)

(assert (=> b!642022 (=> res!415930 e!367682)))

(declare-datatypes ((SeekEntryResult!6837 0))(
  ( (MissingZero!6837 (index!29673 (_ BitVec 32))) (Found!6837 (index!29674 (_ BitVec 32))) (Intermediate!6837 (undefined!7649 Bool) (index!29675 (_ BitVec 32)) (x!58468 (_ BitVec 32))) (Undefined!6837) (MissingVacant!6837 (index!29676 (_ BitVec 32))) )
))
(declare-fun lt!297325 () SeekEntryResult!6837)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!642022 (= res!415930 (not (= lt!297325 (Found!6837 index!984))))))

(declare-datatypes ((Unit!21706 0))(
  ( (Unit!21707) )
))
(declare-fun lt!297327 () Unit!21706)

(declare-fun e!367675 () Unit!21706)

(assert (=> b!642022 (= lt!297327 e!367675)))

(declare-fun c!73412 () Bool)

(assert (=> b!642022 (= c!73412 (= lt!297325 Undefined!6837))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!297332 () array!38355)

(declare-fun lt!297326 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38355 (_ BitVec 32)) SeekEntryResult!6837)

(assert (=> b!642022 (= lt!297325 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!297326 lt!297332 mask!3053))))

(declare-fun e!367684 () Bool)

(assert (=> b!642022 e!367684))

(declare-fun res!415934 () Bool)

(assert (=> b!642022 (=> (not res!415934) (not e!367684))))

(declare-fun lt!297324 () SeekEntryResult!6837)

(declare-fun lt!297329 () (_ BitVec 32))

(assert (=> b!642022 (= res!415934 (= lt!297324 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297329 vacantSpotIndex!68 lt!297326 lt!297332 mask!3053)))))

(assert (=> b!642022 (= lt!297324 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!297329 vacantSpotIndex!68 (select (arr!18390 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!642022 (= lt!297326 (select (store (arr!18390 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!297331 () Unit!21706)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38355 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21706)

(assert (=> b!642022 (= lt!297331 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!297329 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!642022 (= lt!297329 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!642023 () Bool)

(declare-fun e!367673 () Bool)

(assert (=> b!642023 (= e!367673 e!367677)))

(declare-fun res!415937 () Bool)

(assert (=> b!642023 (=> (not res!415937) (not e!367677))))

(declare-fun lt!297322 () SeekEntryResult!6837)

(assert (=> b!642023 (= res!415937 (and (= lt!297322 (Found!6837 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18390 a!2986) index!984) (select (arr!18390 a!2986) j!136))) (not (= (select (arr!18390 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!642023 (= lt!297322 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18390 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!642024 () Bool)

(declare-fun res!415931 () Bool)

(declare-fun e!367672 () Bool)

(assert (=> b!642024 (=> res!415931 e!367672)))

(declare-datatypes ((List!12484 0))(
  ( (Nil!12481) (Cons!12480 (h!13525 (_ BitVec 64)) (t!18720 List!12484)) )
))
(declare-fun contains!3138 (List!12484 (_ BitVec 64)) Bool)

(assert (=> b!642024 (= res!415931 (contains!3138 Nil!12481 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!642025 () Bool)

(declare-fun res!415943 () Bool)

(assert (=> b!642025 (=> res!415943 e!367672)))

(declare-fun noDuplicate!409 (List!12484) Bool)

(assert (=> b!642025 (= res!415943 (not (noDuplicate!409 Nil!12481)))))

(declare-fun b!642026 () Bool)

(declare-fun e!367679 () Bool)

(declare-fun e!367680 () Bool)

(assert (=> b!642026 (= e!367679 e!367680)))

(declare-fun res!415946 () Bool)

(assert (=> b!642026 (=> (not res!415946) (not e!367680))))

(declare-fun arrayContainsKey!0 (array!38355 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!642026 (= res!415946 (arrayContainsKey!0 lt!297332 (select (arr!18390 a!2986) j!136) j!136))))

(declare-fun b!642027 () Bool)

(declare-fun res!415936 () Bool)

(declare-fun e!367674 () Bool)

(assert (=> b!642027 (=> (not res!415936) (not e!367674))))

(declare-fun arrayNoDuplicates!0 (array!38355 (_ BitVec 32) List!12484) Bool)

(assert (=> b!642027 (= res!415936 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12481))))

(declare-fun b!642028 () Bool)

(assert (=> b!642028 (= e!367680 (arrayContainsKey!0 lt!297332 (select (arr!18390 a!2986) j!136) index!984))))

(declare-fun b!642029 () Bool)

(declare-fun res!415940 () Bool)

(assert (=> b!642029 (=> (not res!415940) (not e!367681))))

(assert (=> b!642029 (= res!415940 (validKeyInArray!0 (select (arr!18390 a!2986) j!136)))))

(declare-fun b!642030 () Bool)

(assert (=> b!642030 (= e!367672 true)))

(declare-fun lt!297330 () Bool)

(assert (=> b!642030 (= lt!297330 (contains!3138 Nil!12481 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!642031 () Bool)

(declare-fun res!415947 () Bool)

(assert (=> b!642031 (=> (not res!415947) (not e!367674))))

(assert (=> b!642031 (= res!415947 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18390 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!642032 () Bool)

(declare-fun Unit!21708 () Unit!21706)

(assert (=> b!642032 (= e!367675 Unit!21708)))

(assert (=> b!642032 false))

(declare-fun b!642033 () Bool)

(assert (=> b!642033 (= e!367674 e!367673)))

(declare-fun res!415945 () Bool)

(assert (=> b!642033 (=> (not res!415945) (not e!367673))))

(assert (=> b!642033 (= res!415945 (= (select (store (arr!18390 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!642033 (= lt!297332 (array!38356 (store (arr!18390 a!2986) i!1108 k!1786) (size!18754 a!2986)))))

(declare-fun b!642034 () Bool)

(assert (=> b!642034 (= e!367684 (= lt!297322 lt!297324))))

(declare-fun b!642035 () Bool)

(declare-fun e!367678 () Bool)

(assert (=> b!642035 (= e!367678 e!367672)))

(declare-fun res!415935 () Bool)

(assert (=> b!642035 (=> res!415935 e!367672)))

(assert (=> b!642035 (= res!415935 (or (bvsge (size!18754 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18754 a!2986))))))

(assert (=> b!642035 (arrayNoDuplicates!0 lt!297332 j!136 Nil!12481)))

(declare-fun lt!297328 () Unit!21706)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38355 (_ BitVec 32) (_ BitVec 32)) Unit!21706)

(assert (=> b!642035 (= lt!297328 (lemmaNoDuplicateFromThenFromBigger!0 lt!297332 #b00000000000000000000000000000000 j!136))))

(assert (=> b!642035 (arrayNoDuplicates!0 lt!297332 #b00000000000000000000000000000000 Nil!12481)))

(declare-fun lt!297320 () Unit!21706)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38355 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12484) Unit!21706)

(assert (=> b!642035 (= lt!297320 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12481))))

(assert (=> b!642035 (arrayContainsKey!0 lt!297332 (select (arr!18390 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!297333 () Unit!21706)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38355 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21706)

(assert (=> b!642035 (= lt!297333 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!297332 (select (arr!18390 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!642036 () Bool)

(declare-fun res!415938 () Bool)

(assert (=> b!642036 (=> (not res!415938) (not e!367681))))

(assert (=> b!642036 (= res!415938 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!642037 () Bool)

(declare-fun res!415944 () Bool)

(assert (=> b!642037 (=> (not res!415944) (not e!367674))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38355 (_ BitVec 32)) Bool)

(assert (=> b!642037 (= res!415944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!642038 () Bool)

(assert (=> b!642038 (= e!367681 e!367674)))

(declare-fun res!415933 () Bool)

(assert (=> b!642038 (=> (not res!415933) (not e!367674))))

(declare-fun lt!297323 () SeekEntryResult!6837)

(assert (=> b!642038 (= res!415933 (or (= lt!297323 (MissingZero!6837 i!1108)) (= lt!297323 (MissingVacant!6837 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38355 (_ BitVec 32)) SeekEntryResult!6837)

(assert (=> b!642038 (= lt!297323 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!642039 () Bool)

(assert (=> b!642039 (= e!367682 e!367678)))

(declare-fun res!415932 () Bool)

(assert (=> b!642039 (=> res!415932 e!367678)))

(declare-fun lt!297321 () (_ BitVec 64))

(assert (=> b!642039 (= res!415932 (or (not (= (select (arr!18390 a!2986) j!136) lt!297326)) (not (= (select (arr!18390 a!2986) j!136) lt!297321)) (bvsge j!136 index!984)))))

(declare-fun e!367683 () Bool)

(assert (=> b!642039 e!367683))

(declare-fun res!415948 () Bool)

(assert (=> b!642039 (=> (not res!415948) (not e!367683))))

(assert (=> b!642039 (= res!415948 (= lt!297321 (select (arr!18390 a!2986) j!136)))))

(assert (=> b!642039 (= lt!297321 (select (store (arr!18390 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!642040 () Bool)

(assert (=> b!642040 (= e!367683 e!367679)))

(declare-fun res!415942 () Bool)

(assert (=> b!642040 (=> res!415942 e!367679)))

(assert (=> b!642040 (= res!415942 (or (not (= (select (arr!18390 a!2986) j!136) lt!297326)) (not (= (select (arr!18390 a!2986) j!136) lt!297321)) (bvsge j!136 index!984)))))

(declare-fun res!415949 () Bool)

(assert (=> start!58140 (=> (not res!415949) (not e!367681))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58140 (= res!415949 (validMask!0 mask!3053))))

(assert (=> start!58140 e!367681))

(assert (=> start!58140 true))

(declare-fun array_inv!14164 (array!38355) Bool)

(assert (=> start!58140 (array_inv!14164 a!2986)))

(declare-fun b!642041 () Bool)

(declare-fun Unit!21709 () Unit!21706)

(assert (=> b!642041 (= e!367675 Unit!21709)))

(assert (= (and start!58140 res!415949) b!642021))

(assert (= (and b!642021 res!415941) b!642029))

(assert (= (and b!642029 res!415940) b!642020))

(assert (= (and b!642020 res!415939) b!642036))

(assert (= (and b!642036 res!415938) b!642038))

(assert (= (and b!642038 res!415933) b!642037))

(assert (= (and b!642037 res!415944) b!642027))

(assert (= (and b!642027 res!415936) b!642031))

(assert (= (and b!642031 res!415947) b!642033))

(assert (= (and b!642033 res!415945) b!642023))

(assert (= (and b!642023 res!415937) b!642022))

(assert (= (and b!642022 res!415934) b!642034))

(assert (= (and b!642022 c!73412) b!642032))

(assert (= (and b!642022 (not c!73412)) b!642041))

(assert (= (and b!642022 (not res!415930)) b!642039))

(assert (= (and b!642039 res!415948) b!642040))

(assert (= (and b!642040 (not res!415942)) b!642026))

(assert (= (and b!642026 res!415946) b!642028))

(assert (= (and b!642039 (not res!415932)) b!642035))

(assert (= (and b!642035 (not res!415935)) b!642025))

(assert (= (and b!642025 (not res!415943)) b!642024))

(assert (= (and b!642024 (not res!415931)) b!642030))

(declare-fun m!615867 () Bool)

(assert (=> b!642026 m!615867))

(assert (=> b!642026 m!615867))

(declare-fun m!615869 () Bool)

(assert (=> b!642026 m!615869))

(declare-fun m!615871 () Bool)

(assert (=> b!642036 m!615871))

(assert (=> b!642029 m!615867))

(assert (=> b!642029 m!615867))

(declare-fun m!615873 () Bool)

(assert (=> b!642029 m!615873))

(declare-fun m!615875 () Bool)

(assert (=> b!642031 m!615875))

(assert (=> b!642028 m!615867))

(assert (=> b!642028 m!615867))

(declare-fun m!615877 () Bool)

(assert (=> b!642028 m!615877))

(declare-fun m!615879 () Bool)

(assert (=> start!58140 m!615879))

(declare-fun m!615881 () Bool)

(assert (=> start!58140 m!615881))

(declare-fun m!615883 () Bool)

(assert (=> b!642020 m!615883))

(declare-fun m!615885 () Bool)

(assert (=> b!642022 m!615885))

(assert (=> b!642022 m!615867))

(declare-fun m!615887 () Bool)

(assert (=> b!642022 m!615887))

(declare-fun m!615889 () Bool)

(assert (=> b!642022 m!615889))

(declare-fun m!615891 () Bool)

(assert (=> b!642022 m!615891))

(declare-fun m!615893 () Bool)

(assert (=> b!642022 m!615893))

(declare-fun m!615895 () Bool)

(assert (=> b!642022 m!615895))

(assert (=> b!642022 m!615867))

(declare-fun m!615897 () Bool)

(assert (=> b!642022 m!615897))

(declare-fun m!615899 () Bool)

(assert (=> b!642025 m!615899))

(assert (=> b!642040 m!615867))

(declare-fun m!615901 () Bool)

(assert (=> b!642027 m!615901))

(assert (=> b!642035 m!615867))

(assert (=> b!642035 m!615867))

(declare-fun m!615903 () Bool)

(assert (=> b!642035 m!615903))

(assert (=> b!642035 m!615867))

(declare-fun m!615905 () Bool)

(assert (=> b!642035 m!615905))

(declare-fun m!615907 () Bool)

(assert (=> b!642035 m!615907))

(declare-fun m!615909 () Bool)

(assert (=> b!642035 m!615909))

(declare-fun m!615911 () Bool)

(assert (=> b!642035 m!615911))

(declare-fun m!615913 () Bool)

(assert (=> b!642035 m!615913))

(declare-fun m!615915 () Bool)

(assert (=> b!642024 m!615915))

(declare-fun m!615917 () Bool)

(assert (=> b!642038 m!615917))

(declare-fun m!615919 () Bool)

(assert (=> b!642023 m!615919))

(assert (=> b!642023 m!615867))

(assert (=> b!642023 m!615867))

(declare-fun m!615921 () Bool)

(assert (=> b!642023 m!615921))

(declare-fun m!615923 () Bool)

(assert (=> b!642037 m!615923))

(assert (=> b!642033 m!615887))

(declare-fun m!615925 () Bool)

(assert (=> b!642033 m!615925))

(declare-fun m!615927 () Bool)

(assert (=> b!642030 m!615927))

(assert (=> b!642039 m!615867))

(assert (=> b!642039 m!615887))

(declare-fun m!615929 () Bool)

(assert (=> b!642039 m!615929))

(push 1)

