; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54880 () Bool)

(assert start!54880)

(declare-fun res!384920 () Bool)

(declare-fun e!342944 () Bool)

(assert (=> start!54880 (=> (not res!384920) (not e!342944))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54880 (= res!384920 (validMask!0 mask!3053))))

(assert (=> start!54880 e!342944))

(assert (=> start!54880 true))

(declare-datatypes ((array!37078 0))(
  ( (array!37079 (arr!17795 (Array (_ BitVec 32) (_ BitVec 64))) (size!18159 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37078)

(declare-fun array_inv!13569 (array!37078) Bool)

(assert (=> start!54880 (array_inv!13569 a!2986)))

(declare-fun b!599819 () Bool)

(declare-fun res!384932 () Bool)

(assert (=> b!599819 (=> (not res!384932) (not e!342944))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599819 (= res!384932 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599820 () Bool)

(declare-fun e!342937 () Bool)

(declare-fun e!342942 () Bool)

(assert (=> b!599820 (= e!342937 (not e!342942))))

(declare-fun res!384928 () Bool)

(assert (=> b!599820 (=> res!384928 e!342942)))

(declare-datatypes ((SeekEntryResult!6242 0))(
  ( (MissingZero!6242 (index!27224 (_ BitVec 32))) (Found!6242 (index!27225 (_ BitVec 32))) (Intermediate!6242 (undefined!7054 Bool) (index!27226 (_ BitVec 32)) (x!56050 (_ BitVec 32))) (Undefined!6242) (MissingVacant!6242 (index!27227 (_ BitVec 32))) )
))
(declare-fun lt!272834 () SeekEntryResult!6242)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599820 (= res!384928 (not (= lt!272834 (Found!6242 index!984))))))

(declare-datatypes ((Unit!18912 0))(
  ( (Unit!18913) )
))
(declare-fun lt!272837 () Unit!18912)

(declare-fun e!342940 () Unit!18912)

(assert (=> b!599820 (= lt!272837 e!342940)))

(declare-fun c!67817 () Bool)

(assert (=> b!599820 (= c!67817 (= lt!272834 Undefined!6242))))

(declare-fun lt!272830 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!272836 () array!37078)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37078 (_ BitVec 32)) SeekEntryResult!6242)

(assert (=> b!599820 (= lt!272834 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272830 lt!272836 mask!3053))))

(declare-fun e!342945 () Bool)

(assert (=> b!599820 e!342945))

(declare-fun res!384929 () Bool)

(assert (=> b!599820 (=> (not res!384929) (not e!342945))))

(declare-fun lt!272838 () SeekEntryResult!6242)

(declare-fun lt!272835 () (_ BitVec 32))

(assert (=> b!599820 (= res!384929 (= lt!272838 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272835 vacantSpotIndex!68 lt!272830 lt!272836 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!599820 (= lt!272838 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272835 vacantSpotIndex!68 (select (arr!17795 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!599820 (= lt!272830 (select (store (arr!17795 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272829 () Unit!18912)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37078 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18912)

(assert (=> b!599820 (= lt!272829 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272835 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599820 (= lt!272835 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599821 () Bool)

(declare-fun e!342934 () Bool)

(assert (=> b!599821 (= e!342934 true)))

(declare-fun lt!272825 () Bool)

(declare-datatypes ((List!11889 0))(
  ( (Nil!11886) (Cons!11885 (h!12930 (_ BitVec 64)) (t!18125 List!11889)) )
))
(declare-fun contains!2974 (List!11889 (_ BitVec 64)) Bool)

(assert (=> b!599821 (= lt!272825 (contains!2974 Nil!11886 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599822 () Bool)

(declare-fun e!342939 () Bool)

(assert (=> b!599822 (= e!342942 e!342939)))

(declare-fun res!384936 () Bool)

(assert (=> b!599822 (=> res!384936 e!342939)))

(declare-fun lt!272833 () (_ BitVec 64))

(assert (=> b!599822 (= res!384936 (or (not (= (select (arr!17795 a!2986) j!136) lt!272830)) (not (= (select (arr!17795 a!2986) j!136) lt!272833)) (bvsge j!136 index!984)))))

(declare-fun e!342946 () Bool)

(assert (=> b!599822 e!342946))

(declare-fun res!384938 () Bool)

(assert (=> b!599822 (=> (not res!384938) (not e!342946))))

(assert (=> b!599822 (= res!384938 (= lt!272833 (select (arr!17795 a!2986) j!136)))))

(assert (=> b!599822 (= lt!272833 (select (store (arr!17795 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!599823 () Bool)

(declare-fun res!384934 () Bool)

(declare-fun e!342943 () Bool)

(assert (=> b!599823 (=> (not res!384934) (not e!342943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37078 (_ BitVec 32)) Bool)

(assert (=> b!599823 (= res!384934 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!599824 () Bool)

(declare-fun Unit!18914 () Unit!18912)

(assert (=> b!599824 (= e!342940 Unit!18914)))

(declare-fun b!599825 () Bool)

(declare-fun res!384921 () Bool)

(assert (=> b!599825 (=> (not res!384921) (not e!342943))))

(assert (=> b!599825 (= res!384921 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17795 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599826 () Bool)

(declare-fun e!342938 () Bool)

(assert (=> b!599826 (= e!342946 e!342938)))

(declare-fun res!384924 () Bool)

(assert (=> b!599826 (=> res!384924 e!342938)))

(assert (=> b!599826 (= res!384924 (or (not (= (select (arr!17795 a!2986) j!136) lt!272830)) (not (= (select (arr!17795 a!2986) j!136) lt!272833)) (bvsge j!136 index!984)))))

(declare-fun b!599827 () Bool)

(declare-fun res!384919 () Bool)

(assert (=> b!599827 (=> res!384919 e!342934)))

(assert (=> b!599827 (= res!384919 (contains!2974 Nil!11886 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599828 () Bool)

(declare-fun Unit!18915 () Unit!18912)

(assert (=> b!599828 (= e!342940 Unit!18915)))

(assert (=> b!599828 false))

(declare-fun b!599829 () Bool)

(declare-fun res!384926 () Bool)

(assert (=> b!599829 (=> (not res!384926) (not e!342944))))

(assert (=> b!599829 (= res!384926 (and (= (size!18159 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18159 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18159 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599830 () Bool)

(declare-fun lt!272831 () SeekEntryResult!6242)

(assert (=> b!599830 (= e!342945 (= lt!272831 lt!272838))))

(declare-fun b!599831 () Bool)

(declare-fun e!342935 () Bool)

(assert (=> b!599831 (= e!342938 e!342935)))

(declare-fun res!384925 () Bool)

(assert (=> b!599831 (=> (not res!384925) (not e!342935))))

(assert (=> b!599831 (= res!384925 (arrayContainsKey!0 lt!272836 (select (arr!17795 a!2986) j!136) j!136))))

(declare-fun b!599832 () Bool)

(declare-fun res!384937 () Bool)

(assert (=> b!599832 (=> (not res!384937) (not e!342944))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599832 (= res!384937 (validKeyInArray!0 (select (arr!17795 a!2986) j!136)))))

(declare-fun b!599833 () Bool)

(declare-fun e!342936 () Bool)

(assert (=> b!599833 (= e!342943 e!342936)))

(declare-fun res!384930 () Bool)

(assert (=> b!599833 (=> (not res!384930) (not e!342936))))

(assert (=> b!599833 (= res!384930 (= (select (store (arr!17795 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599833 (= lt!272836 (array!37079 (store (arr!17795 a!2986) i!1108 k!1786) (size!18159 a!2986)))))

(declare-fun b!599834 () Bool)

(declare-fun res!384923 () Bool)

(assert (=> b!599834 (=> res!384923 e!342934)))

(declare-fun noDuplicate!288 (List!11889) Bool)

(assert (=> b!599834 (= res!384923 (not (noDuplicate!288 Nil!11886)))))

(declare-fun b!599835 () Bool)

(assert (=> b!599835 (= e!342936 e!342937)))

(declare-fun res!384922 () Bool)

(assert (=> b!599835 (=> (not res!384922) (not e!342937))))

(assert (=> b!599835 (= res!384922 (and (= lt!272831 (Found!6242 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17795 a!2986) index!984) (select (arr!17795 a!2986) j!136))) (not (= (select (arr!17795 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599835 (= lt!272831 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17795 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599836 () Bool)

(assert (=> b!599836 (= e!342935 (arrayContainsKey!0 lt!272836 (select (arr!17795 a!2986) j!136) index!984))))

(declare-fun b!599837 () Bool)

(assert (=> b!599837 (= e!342944 e!342943)))

(declare-fun res!384935 () Bool)

(assert (=> b!599837 (=> (not res!384935) (not e!342943))))

(declare-fun lt!272828 () SeekEntryResult!6242)

(assert (=> b!599837 (= res!384935 (or (= lt!272828 (MissingZero!6242 i!1108)) (= lt!272828 (MissingVacant!6242 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37078 (_ BitVec 32)) SeekEntryResult!6242)

(assert (=> b!599837 (= lt!272828 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!599838 () Bool)

(assert (=> b!599838 (= e!342939 e!342934)))

(declare-fun res!384927 () Bool)

(assert (=> b!599838 (=> res!384927 e!342934)))

(assert (=> b!599838 (= res!384927 (or (bvsge (size!18159 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18159 a!2986))))))

(declare-fun arrayNoDuplicates!0 (array!37078 (_ BitVec 32) List!11889) Bool)

(assert (=> b!599838 (arrayNoDuplicates!0 lt!272836 j!136 Nil!11886)))

(declare-fun lt!272827 () Unit!18912)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37078 (_ BitVec 32) (_ BitVec 32)) Unit!18912)

(assert (=> b!599838 (= lt!272827 (lemmaNoDuplicateFromThenFromBigger!0 lt!272836 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599838 (arrayNoDuplicates!0 lt!272836 #b00000000000000000000000000000000 Nil!11886)))

(declare-fun lt!272826 () Unit!18912)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37078 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11889) Unit!18912)

(assert (=> b!599838 (= lt!272826 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11886))))

(assert (=> b!599838 (arrayContainsKey!0 lt!272836 (select (arr!17795 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272832 () Unit!18912)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37078 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18912)

(assert (=> b!599838 (= lt!272832 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272836 (select (arr!17795 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599839 () Bool)

(declare-fun res!384931 () Bool)

(assert (=> b!599839 (=> (not res!384931) (not e!342944))))

(assert (=> b!599839 (= res!384931 (validKeyInArray!0 k!1786))))

(declare-fun b!599840 () Bool)

(declare-fun res!384933 () Bool)

(assert (=> b!599840 (=> (not res!384933) (not e!342943))))

(assert (=> b!599840 (= res!384933 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11886))))

(assert (= (and start!54880 res!384920) b!599829))

(assert (= (and b!599829 res!384926) b!599832))

(assert (= (and b!599832 res!384937) b!599839))

(assert (= (and b!599839 res!384931) b!599819))

(assert (= (and b!599819 res!384932) b!599837))

(assert (= (and b!599837 res!384935) b!599823))

(assert (= (and b!599823 res!384934) b!599840))

(assert (= (and b!599840 res!384933) b!599825))

(assert (= (and b!599825 res!384921) b!599833))

(assert (= (and b!599833 res!384930) b!599835))

(assert (= (and b!599835 res!384922) b!599820))

(assert (= (and b!599820 res!384929) b!599830))

(assert (= (and b!599820 c!67817) b!599828))

(assert (= (and b!599820 (not c!67817)) b!599824))

(assert (= (and b!599820 (not res!384928)) b!599822))

(assert (= (and b!599822 res!384938) b!599826))

(assert (= (and b!599826 (not res!384924)) b!599831))

(assert (= (and b!599831 res!384925) b!599836))

(assert (= (and b!599822 (not res!384936)) b!599838))

(assert (= (and b!599838 (not res!384927)) b!599834))

(assert (= (and b!599834 (not res!384923)) b!599827))

(assert (= (and b!599827 (not res!384919)) b!599821))

(declare-fun m!577103 () Bool)

(assert (=> b!599826 m!577103))

(assert (=> b!599832 m!577103))

(assert (=> b!599832 m!577103))

(declare-fun m!577105 () Bool)

(assert (=> b!599832 m!577105))

(declare-fun m!577107 () Bool)

(assert (=> b!599833 m!577107))

(declare-fun m!577109 () Bool)

(assert (=> b!599833 m!577109))

(assert (=> b!599831 m!577103))

(assert (=> b!599831 m!577103))

(declare-fun m!577111 () Bool)

(assert (=> b!599831 m!577111))

(declare-fun m!577113 () Bool)

(assert (=> b!599825 m!577113))

(declare-fun m!577115 () Bool)

(assert (=> b!599834 m!577115))

(declare-fun m!577117 () Bool)

(assert (=> b!599835 m!577117))

(assert (=> b!599835 m!577103))

(assert (=> b!599835 m!577103))

(declare-fun m!577119 () Bool)

(assert (=> b!599835 m!577119))

(declare-fun m!577121 () Bool)

(assert (=> b!599838 m!577121))

(assert (=> b!599838 m!577103))

(declare-fun m!577123 () Bool)

(assert (=> b!599838 m!577123))

(assert (=> b!599838 m!577103))

(assert (=> b!599838 m!577103))

(declare-fun m!577125 () Bool)

(assert (=> b!599838 m!577125))

(declare-fun m!577127 () Bool)

(assert (=> b!599838 m!577127))

(declare-fun m!577129 () Bool)

(assert (=> b!599838 m!577129))

(declare-fun m!577131 () Bool)

(assert (=> b!599838 m!577131))

(declare-fun m!577133 () Bool)

(assert (=> b!599819 m!577133))

(declare-fun m!577135 () Bool)

(assert (=> b!599839 m!577135))

(declare-fun m!577137 () Bool)

(assert (=> b!599837 m!577137))

(declare-fun m!577139 () Bool)

(assert (=> b!599827 m!577139))

(assert (=> b!599822 m!577103))

(assert (=> b!599822 m!577107))

(declare-fun m!577141 () Bool)

(assert (=> b!599822 m!577141))

(assert (=> b!599836 m!577103))

(assert (=> b!599836 m!577103))

(declare-fun m!577143 () Bool)

(assert (=> b!599836 m!577143))

(declare-fun m!577145 () Bool)

(assert (=> b!599823 m!577145))

(declare-fun m!577147 () Bool)

(assert (=> b!599840 m!577147))

(declare-fun m!577149 () Bool)

(assert (=> b!599821 m!577149))

(declare-fun m!577151 () Bool)

(assert (=> b!599820 m!577151))

(declare-fun m!577153 () Bool)

(assert (=> b!599820 m!577153))

(assert (=> b!599820 m!577103))

(assert (=> b!599820 m!577107))

(assert (=> b!599820 m!577103))

(declare-fun m!577155 () Bool)

(assert (=> b!599820 m!577155))

(declare-fun m!577157 () Bool)

(assert (=> b!599820 m!577157))

(declare-fun m!577159 () Bool)

(assert (=> b!599820 m!577159))

(declare-fun m!577161 () Bool)

(assert (=> b!599820 m!577161))

(declare-fun m!577163 () Bool)

(assert (=> start!54880 m!577163))

(declare-fun m!577165 () Bool)

(assert (=> start!54880 m!577165))

(push 1)

