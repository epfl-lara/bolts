; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59226 () Bool)

(assert start!59226)

(declare-fun b!652939 () Bool)

(declare-fun res!423519 () Bool)

(declare-fun e!374854 () Bool)

(assert (=> b!652939 (=> (not res!423519) (not e!374854))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!38595 0))(
  ( (array!38596 (arr!18495 (Array (_ BitVec 32) (_ BitVec 64))) (size!18859 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38595)

(assert (=> b!652939 (= res!423519 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18495 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652940 () Bool)

(declare-datatypes ((Unit!22324 0))(
  ( (Unit!22325) )
))
(declare-fun e!374845 () Unit!22324)

(declare-fun Unit!22326 () Unit!22324)

(assert (=> b!652940 (= e!374845 Unit!22326)))

(assert (=> b!652940 false))

(declare-fun b!652941 () Bool)

(declare-fun e!374847 () Bool)

(declare-fun e!374856 () Bool)

(assert (=> b!652941 (= e!374847 e!374856)))

(declare-fun res!423509 () Bool)

(assert (=> b!652941 (=> (not res!423509) (not e!374856))))

(declare-datatypes ((List!12589 0))(
  ( (Nil!12586) (Cons!12585 (h!13630 (_ BitVec 64)) (t!18825 List!12589)) )
))
(declare-fun contains!3183 (List!12589 (_ BitVec 64)) Bool)

(assert (=> b!652941 (= res!423509 (not (contains!3183 Nil!12586 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652942 () Bool)

(declare-fun e!374846 () Bool)

(assert (=> b!652942 (= e!374846 e!374854)))

(declare-fun res!423524 () Bool)

(assert (=> b!652942 (=> (not res!423524) (not e!374854))))

(declare-datatypes ((SeekEntryResult!6942 0))(
  ( (MissingZero!6942 (index!30123 (_ BitVec 32))) (Found!6942 (index!30124 (_ BitVec 32))) (Intermediate!6942 (undefined!7754 Bool) (index!30125 (_ BitVec 32)) (x!58943 (_ BitVec 32))) (Undefined!6942) (MissingVacant!6942 (index!30126 (_ BitVec 32))) )
))
(declare-fun lt!303961 () SeekEntryResult!6942)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!652942 (= res!423524 (or (= lt!303961 (MissingZero!6942 i!1108)) (= lt!303961 (MissingVacant!6942 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38595 (_ BitVec 32)) SeekEntryResult!6942)

(assert (=> b!652942 (= lt!303961 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!652943 () Bool)

(assert (=> b!652943 (= e!374856 (not (contains!3183 Nil!12586 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!652944 () Bool)

(declare-fun e!374852 () Bool)

(declare-fun e!374858 () Bool)

(assert (=> b!652944 (= e!374852 e!374858)))

(declare-fun res!423517 () Bool)

(assert (=> b!652944 (=> res!423517 e!374858)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!303976 () (_ BitVec 64))

(declare-fun lt!303964 () (_ BitVec 64))

(assert (=> b!652944 (= res!423517 (or (not (= (select (arr!18495 a!2986) j!136) lt!303976)) (not (= (select (arr!18495 a!2986) j!136) lt!303964))))))

(declare-fun e!374848 () Bool)

(assert (=> b!652944 e!374848))

(declare-fun res!423526 () Bool)

(assert (=> b!652944 (=> (not res!423526) (not e!374848))))

(assert (=> b!652944 (= res!423526 (= lt!303964 (select (arr!18495 a!2986) j!136)))))

(assert (=> b!652944 (= lt!303964 (select (store (arr!18495 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!652945 () Bool)

(declare-fun e!374859 () Bool)

(assert (=> b!652945 (= e!374858 e!374859)))

(declare-fun res!423518 () Bool)

(assert (=> b!652945 (=> res!423518 e!374859)))

(assert (=> b!652945 (= res!423518 (bvsge index!984 j!136))))

(declare-fun lt!303962 () Unit!22324)

(declare-fun e!374855 () Unit!22324)

(assert (=> b!652945 (= lt!303962 e!374855)))

(declare-fun c!75082 () Bool)

(assert (=> b!652945 (= c!75082 (bvslt j!136 index!984))))

(declare-fun b!652946 () Bool)

(declare-fun e!374844 () Bool)

(assert (=> b!652946 (= e!374848 e!374844)))

(declare-fun res!423523 () Bool)

(assert (=> b!652946 (=> res!423523 e!374844)))

(assert (=> b!652946 (= res!423523 (or (not (= (select (arr!18495 a!2986) j!136) lt!303976)) (not (= (select (arr!18495 a!2986) j!136) lt!303964)) (bvsge j!136 index!984)))))

(declare-fun b!652947 () Bool)

(declare-fun Unit!22327 () Unit!22324)

(assert (=> b!652947 (= e!374855 Unit!22327)))

(declare-fun b!652948 () Bool)

(declare-fun res!423516 () Bool)

(assert (=> b!652948 (=> (not res!423516) (not e!374846))))

(assert (=> b!652948 (= res!423516 (and (= (size!18859 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18859 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18859 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!652949 () Bool)

(declare-fun e!374860 () Bool)

(assert (=> b!652949 (= e!374844 e!374860)))

(declare-fun res!423528 () Bool)

(assert (=> b!652949 (=> (not res!423528) (not e!374860))))

(declare-fun lt!303975 () array!38595)

(declare-fun arrayContainsKey!0 (array!38595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!652949 (= res!423528 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) j!136))))

(declare-fun res!423512 () Bool)

(assert (=> start!59226 (=> (not res!423512) (not e!374846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59226 (= res!423512 (validMask!0 mask!3053))))

(assert (=> start!59226 e!374846))

(assert (=> start!59226 true))

(declare-fun array_inv!14269 (array!38595) Bool)

(assert (=> start!59226 (array_inv!14269 a!2986)))

(declare-fun b!652950 () Bool)

(declare-fun e!374853 () Bool)

(assert (=> b!652950 (= e!374853 (not e!374852))))

(declare-fun res!423521 () Bool)

(assert (=> b!652950 (=> res!423521 e!374852)))

(declare-fun lt!303970 () SeekEntryResult!6942)

(assert (=> b!652950 (= res!423521 (not (= lt!303970 (Found!6942 index!984))))))

(declare-fun lt!303978 () Unit!22324)

(assert (=> b!652950 (= lt!303978 e!374845)))

(declare-fun c!75083 () Bool)

(assert (=> b!652950 (= c!75083 (= lt!303970 Undefined!6942))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38595 (_ BitVec 32)) SeekEntryResult!6942)

(assert (=> b!652950 (= lt!303970 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303976 lt!303975 mask!3053))))

(declare-fun e!374850 () Bool)

(assert (=> b!652950 e!374850))

(declare-fun res!423525 () Bool)

(assert (=> b!652950 (=> (not res!423525) (not e!374850))))

(declare-fun lt!303972 () (_ BitVec 32))

(declare-fun lt!303974 () SeekEntryResult!6942)

(assert (=> b!652950 (= res!423525 (= lt!303974 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303972 vacantSpotIndex!68 lt!303976 lt!303975 mask!3053)))))

(assert (=> b!652950 (= lt!303974 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303972 vacantSpotIndex!68 (select (arr!18495 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!652950 (= lt!303976 (select (store (arr!18495 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303963 () Unit!22324)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38595 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22324)

(assert (=> b!652950 (= lt!303963 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303972 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!652950 (= lt!303972 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!652951 () Bool)

(declare-fun res!423513 () Bool)

(assert (=> b!652951 (=> (not res!423513) (not e!374854))))

(declare-fun arrayNoDuplicates!0 (array!38595 (_ BitVec 32) List!12589) Bool)

(assert (=> b!652951 (= res!423513 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12586))))

(declare-fun b!652952 () Bool)

(declare-fun Unit!22328 () Unit!22324)

(assert (=> b!652952 (= e!374845 Unit!22328)))

(declare-fun b!652953 () Bool)

(declare-fun e!374857 () Bool)

(assert (=> b!652953 (= e!374854 e!374857)))

(declare-fun res!423511 () Bool)

(assert (=> b!652953 (=> (not res!423511) (not e!374857))))

(assert (=> b!652953 (= res!423511 (= (select (store (arr!18495 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!652953 (= lt!303975 (array!38596 (store (arr!18495 a!2986) i!1108 k!1786) (size!18859 a!2986)))))

(declare-fun b!652954 () Bool)

(assert (=> b!652954 (= e!374860 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) index!984))))

(declare-fun b!652955 () Bool)

(declare-fun lt!303973 () SeekEntryResult!6942)

(assert (=> b!652955 (= e!374850 (= lt!303973 lt!303974))))

(declare-fun b!652956 () Bool)

(declare-fun res!423514 () Bool)

(assert (=> b!652956 (=> res!423514 e!374847)))

(declare-fun noDuplicate!439 (List!12589) Bool)

(assert (=> b!652956 (= res!423514 (not (noDuplicate!439 Nil!12586)))))

(declare-fun e!374849 () Bool)

(declare-fun b!652957 () Bool)

(assert (=> b!652957 (= e!374849 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) index!984))))

(declare-fun b!652958 () Bool)

(declare-fun Unit!22329 () Unit!22324)

(assert (=> b!652958 (= e!374855 Unit!22329)))

(declare-fun lt!303971 () Unit!22324)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38595 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22324)

(assert (=> b!652958 (= lt!303971 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303975 (select (arr!18495 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!652958 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303977 () Unit!22324)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38595 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12589) Unit!22324)

(assert (=> b!652958 (= lt!303977 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12586))))

(assert (=> b!652958 (arrayNoDuplicates!0 lt!303975 #b00000000000000000000000000000000 Nil!12586)))

(declare-fun lt!303966 () Unit!22324)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38595 (_ BitVec 32) (_ BitVec 32)) Unit!22324)

(assert (=> b!652958 (= lt!303966 (lemmaNoDuplicateFromThenFromBigger!0 lt!303975 #b00000000000000000000000000000000 j!136))))

(assert (=> b!652958 (arrayNoDuplicates!0 lt!303975 j!136 Nil!12586)))

(declare-fun lt!303968 () Unit!22324)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38595 (_ BitVec 64) (_ BitVec 32) List!12589) Unit!22324)

(assert (=> b!652958 (= lt!303968 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303975 (select (arr!18495 a!2986) j!136) j!136 Nil!12586))))

(assert (=> b!652958 false))

(declare-fun b!652959 () Bool)

(declare-fun res!423522 () Bool)

(assert (=> b!652959 (=> (not res!423522) (not e!374846))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!652959 (= res!423522 (validKeyInArray!0 k!1786))))

(declare-fun b!652960 () Bool)

(declare-fun res!423529 () Bool)

(assert (=> b!652960 (=> (not res!423529) (not e!374846))))

(assert (=> b!652960 (= res!423529 (validKeyInArray!0 (select (arr!18495 a!2986) j!136)))))

(declare-fun b!652961 () Bool)

(assert (=> b!652961 (= e!374859 e!374847)))

(declare-fun res!423515 () Bool)

(assert (=> b!652961 (=> res!423515 e!374847)))

(assert (=> b!652961 (= res!423515 (or (bvsge (size!18859 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 index!984) (size!18859 a!2986)) (bvsge index!984 (size!18859 a!2986))))))

(assert (=> b!652961 (arrayNoDuplicates!0 lt!303975 index!984 Nil!12586)))

(declare-fun lt!303969 () Unit!22324)

(assert (=> b!652961 (= lt!303969 (lemmaNoDuplicateFromThenFromBigger!0 lt!303975 #b00000000000000000000000000000000 index!984))))

(assert (=> b!652961 (arrayNoDuplicates!0 lt!303975 #b00000000000000000000000000000000 Nil!12586)))

(declare-fun lt!303965 () Unit!22324)

(assert (=> b!652961 (= lt!303965 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12586))))

(assert (=> b!652961 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303967 () Unit!22324)

(assert (=> b!652961 (= lt!303967 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303975 (select (arr!18495 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!652961 e!374849))

(declare-fun res!423530 () Bool)

(assert (=> b!652961 (=> (not res!423530) (not e!374849))))

(assert (=> b!652961 (= res!423530 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) j!136))))

(declare-fun b!652962 () Bool)

(declare-fun res!423527 () Bool)

(assert (=> b!652962 (=> (not res!423527) (not e!374854))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38595 (_ BitVec 32)) Bool)

(assert (=> b!652962 (= res!423527 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!652963 () Bool)

(assert (=> b!652963 (= e!374857 e!374853)))

(declare-fun res!423520 () Bool)

(assert (=> b!652963 (=> (not res!423520) (not e!374853))))

(assert (=> b!652963 (= res!423520 (and (= lt!303973 (Found!6942 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18495 a!2986) index!984) (select (arr!18495 a!2986) j!136))) (not (= (select (arr!18495 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!652963 (= lt!303973 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18495 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!652964 () Bool)

(declare-fun res!423510 () Bool)

(assert (=> b!652964 (=> (not res!423510) (not e!374846))))

(assert (=> b!652964 (= res!423510 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!59226 res!423512) b!652948))

(assert (= (and b!652948 res!423516) b!652960))

(assert (= (and b!652960 res!423529) b!652959))

(assert (= (and b!652959 res!423522) b!652964))

(assert (= (and b!652964 res!423510) b!652942))

(assert (= (and b!652942 res!423524) b!652962))

(assert (= (and b!652962 res!423527) b!652951))

(assert (= (and b!652951 res!423513) b!652939))

(assert (= (and b!652939 res!423519) b!652953))

(assert (= (and b!652953 res!423511) b!652963))

(assert (= (and b!652963 res!423520) b!652950))

(assert (= (and b!652950 res!423525) b!652955))

(assert (= (and b!652950 c!75083) b!652940))

(assert (= (and b!652950 (not c!75083)) b!652952))

(assert (= (and b!652950 (not res!423521)) b!652944))

(assert (= (and b!652944 res!423526) b!652946))

(assert (= (and b!652946 (not res!423523)) b!652949))

(assert (= (and b!652949 res!423528) b!652954))

(assert (= (and b!652944 (not res!423517)) b!652945))

(assert (= (and b!652945 c!75082) b!652958))

(assert (= (and b!652945 (not c!75082)) b!652947))

(assert (= (and b!652945 (not res!423518)) b!652961))

(assert (= (and b!652961 res!423530) b!652957))

(assert (= (and b!652961 (not res!423515)) b!652956))

(assert (= (and b!652956 (not res!423514)) b!652941))

(assert (= (and b!652941 res!423509) b!652943))

(declare-fun m!626139 () Bool)

(assert (=> b!652950 m!626139))

(declare-fun m!626141 () Bool)

(assert (=> b!652950 m!626141))

(declare-fun m!626143 () Bool)

(assert (=> b!652950 m!626143))

(declare-fun m!626145 () Bool)

(assert (=> b!652950 m!626145))

(declare-fun m!626147 () Bool)

(assert (=> b!652950 m!626147))

(declare-fun m!626149 () Bool)

(assert (=> b!652950 m!626149))

(assert (=> b!652950 m!626145))

(declare-fun m!626151 () Bool)

(assert (=> b!652950 m!626151))

(declare-fun m!626153 () Bool)

(assert (=> b!652950 m!626153))

(assert (=> b!652946 m!626145))

(assert (=> b!652957 m!626145))

(assert (=> b!652957 m!626145))

(declare-fun m!626155 () Bool)

(assert (=> b!652957 m!626155))

(assert (=> b!652953 m!626147))

(declare-fun m!626157 () Bool)

(assert (=> b!652953 m!626157))

(declare-fun m!626159 () Bool)

(assert (=> b!652951 m!626159))

(declare-fun m!626161 () Bool)

(assert (=> b!652963 m!626161))

(assert (=> b!652963 m!626145))

(assert (=> b!652963 m!626145))

(declare-fun m!626163 () Bool)

(assert (=> b!652963 m!626163))

(assert (=> b!652954 m!626145))

(assert (=> b!652954 m!626145))

(assert (=> b!652954 m!626155))

(declare-fun m!626165 () Bool)

(assert (=> b!652959 m!626165))

(declare-fun m!626167 () Bool)

(assert (=> b!652964 m!626167))

(assert (=> b!652961 m!626145))

(declare-fun m!626169 () Bool)

(assert (=> b!652961 m!626169))

(assert (=> b!652961 m!626145))

(declare-fun m!626171 () Bool)

(assert (=> b!652961 m!626171))

(assert (=> b!652961 m!626145))

(declare-fun m!626173 () Bool)

(assert (=> b!652961 m!626173))

(declare-fun m!626175 () Bool)

(assert (=> b!652961 m!626175))

(declare-fun m!626177 () Bool)

(assert (=> b!652961 m!626177))

(assert (=> b!652961 m!626145))

(declare-fun m!626179 () Bool)

(assert (=> b!652961 m!626179))

(declare-fun m!626181 () Bool)

(assert (=> b!652961 m!626181))

(declare-fun m!626183 () Bool)

(assert (=> b!652956 m!626183))

(declare-fun m!626185 () Bool)

(assert (=> start!59226 m!626185))

(declare-fun m!626187 () Bool)

(assert (=> start!59226 m!626187))

(assert (=> b!652944 m!626145))

(assert (=> b!652944 m!626147))

(declare-fun m!626189 () Bool)

(assert (=> b!652944 m!626189))

(declare-fun m!626191 () Bool)

(assert (=> b!652943 m!626191))

(assert (=> b!652949 m!626145))

(assert (=> b!652949 m!626145))

(assert (=> b!652949 m!626171))

(assert (=> b!652958 m!626145))

(declare-fun m!626193 () Bool)

(assert (=> b!652958 m!626193))

(assert (=> b!652958 m!626145))

(declare-fun m!626195 () Bool)

(assert (=> b!652958 m!626195))

(assert (=> b!652958 m!626177))

(assert (=> b!652958 m!626181))

(declare-fun m!626197 () Bool)

(assert (=> b!652958 m!626197))

(assert (=> b!652958 m!626145))

(declare-fun m!626199 () Bool)

(assert (=> b!652958 m!626199))

(assert (=> b!652958 m!626145))

(declare-fun m!626201 () Bool)

(assert (=> b!652958 m!626201))

(declare-fun m!626203 () Bool)

(assert (=> b!652941 m!626203))

(declare-fun m!626205 () Bool)

(assert (=> b!652939 m!626205))

(assert (=> b!652960 m!626145))

(assert (=> b!652960 m!626145))

(declare-fun m!626207 () Bool)

(assert (=> b!652960 m!626207))

(declare-fun m!626209 () Bool)

(assert (=> b!652962 m!626209))

(declare-fun m!626211 () Bool)

(assert (=> b!652942 m!626211))

(push 1)

(assert (not b!652954))

(assert (not b!652949))

(assert (not b!652941))

(assert (not start!59226))

(assert (not b!652964))

(assert (not b!652957))

(assert (not b!652960))

(assert (not b!652959))

(assert (not b!652962))

(assert (not b!652951))

(assert (not b!652942))

(assert (not b!652943))

(assert (not b!652956))

(assert (not b!652963))

(assert (not b!652950))

(assert (not b!652958))

(assert (not b!652961))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!653222 () Bool)

(declare-fun e!375043 () Bool)

(declare-fun call!33809 () Bool)

(assert (=> b!653222 (= e!375043 call!33809)))

(declare-fun d!92291 () Bool)

(declare-fun res!423720 () Bool)

(declare-fun e!375042 () Bool)

(assert (=> d!92291 (=> res!423720 e!375042)))

(assert (=> d!92291 (= res!423720 (bvsge #b00000000000000000000000000000000 (size!18859 lt!303975)))))

(assert (=> d!92291 (= (arrayNoDuplicates!0 lt!303975 #b00000000000000000000000000000000 Nil!12586) e!375042)))

(declare-fun b!653223 () Bool)

(declare-fun e!375044 () Bool)

(assert (=> b!653223 (= e!375044 (contains!3183 Nil!12586 (select (arr!18495 lt!303975) #b00000000000000000000000000000000)))))

(declare-fun b!653224 () Bool)

(declare-fun e!375041 () Bool)

(assert (=> b!653224 (= e!375042 e!375041)))

(declare-fun res!423719 () Bool)

(assert (=> b!653224 (=> (not res!423719) (not e!375041))))

(assert (=> b!653224 (= res!423719 (not e!375044))))

(declare-fun res!423718 () Bool)

(assert (=> b!653224 (=> (not res!423718) (not e!375044))))

(assert (=> b!653224 (= res!423718 (validKeyInArray!0 (select (arr!18495 lt!303975) #b00000000000000000000000000000000)))))

(declare-fun b!653225 () Bool)

(assert (=> b!653225 (= e!375041 e!375043)))

(declare-fun c!75119 () Bool)

(assert (=> b!653225 (= c!75119 (validKeyInArray!0 (select (arr!18495 lt!303975) #b00000000000000000000000000000000)))))

(declare-fun b!653226 () Bool)

(assert (=> b!653226 (= e!375043 call!33809)))

(declare-fun bm!33806 () Bool)

(assert (=> bm!33806 (= call!33809 (arrayNoDuplicates!0 lt!303975 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!75119 (Cons!12585 (select (arr!18495 lt!303975) #b00000000000000000000000000000000) Nil!12586) Nil!12586)))))

(assert (= (and d!92291 (not res!423720)) b!653224))

(assert (= (and b!653224 res!423718) b!653223))

(assert (= (and b!653224 res!423719) b!653225))

(assert (= (and b!653225 c!75119) b!653222))

(assert (= (and b!653225 (not c!75119)) b!653226))

(assert (= (or b!653222 b!653226) bm!33806))

(declare-fun m!626425 () Bool)

(assert (=> b!653223 m!626425))

(assert (=> b!653223 m!626425))

(declare-fun m!626427 () Bool)

(assert (=> b!653223 m!626427))

(assert (=> b!653224 m!626425))

(assert (=> b!653224 m!626425))

(declare-fun m!626429 () Bool)

(assert (=> b!653224 m!626429))

(assert (=> b!653225 m!626425))

(assert (=> b!653225 m!626425))

(assert (=> b!653225 m!626429))

(assert (=> bm!33806 m!626425))

(declare-fun m!626431 () Bool)

(assert (=> bm!33806 m!626431))

(assert (=> b!652958 d!92291))

(declare-fun d!92295 () Bool)

(declare-fun res!423730 () Bool)

(declare-fun e!375055 () Bool)

(assert (=> d!92295 (=> res!423730 e!375055)))

(assert (=> d!92295 (= res!423730 (= (select (arr!18495 lt!303975) (bvadd #b00000000000000000000000000000001 j!136)) (select (arr!18495 a!2986) j!136)))))

(assert (=> d!92295 (= (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136)) e!375055)))

(declare-fun b!653238 () Bool)

(declare-fun e!375056 () Bool)

(assert (=> b!653238 (= e!375055 e!375056)))

(declare-fun res!423731 () Bool)

(assert (=> b!653238 (=> (not res!423731) (not e!375056))))

(assert (=> b!653238 (= res!423731 (bvslt (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001) (size!18859 lt!303975)))))

(declare-fun b!653239 () Bool)

(assert (=> b!653239 (= e!375056 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92295 (not res!423730)) b!653238))

(assert (= (and b!653238 res!423731) b!653239))

(declare-fun m!626439 () Bool)

(assert (=> d!92295 m!626439))

(assert (=> b!653239 m!626145))

(declare-fun m!626441 () Bool)

(assert (=> b!653239 m!626441))

(assert (=> b!652958 d!92295))

(declare-fun d!92301 () Bool)

(assert (=> d!92301 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!304114 () Unit!22324)

(declare-fun choose!114 (array!38595 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22324)

(assert (=> d!92301 (= lt!304114 (choose!114 lt!303975 (select (arr!18495 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> d!92301 (bvsge index!984 #b00000000000000000000000000000000)))

(assert (=> d!92301 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303975 (select (arr!18495 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)) lt!304114)))

(declare-fun bs!19470 () Bool)

(assert (= bs!19470 d!92301))

(assert (=> bs!19470 m!626145))

(assert (=> bs!19470 m!626193))

(assert (=> bs!19470 m!626145))

(declare-fun m!626451 () Bool)

(assert (=> bs!19470 m!626451))

(assert (=> b!652958 d!92301))

(declare-fun d!92305 () Bool)

(assert (=> d!92305 (arrayNoDuplicates!0 lt!303975 j!136 Nil!12586)))

(declare-fun lt!304119 () Unit!22324)

(declare-fun choose!39 (array!38595 (_ BitVec 32) (_ BitVec 32)) Unit!22324)

(assert (=> d!92305 (= lt!304119 (choose!39 lt!303975 #b00000000000000000000000000000000 j!136))))

(assert (=> d!92305 (bvslt (size!18859 lt!303975) #b01111111111111111111111111111111)))

(assert (=> d!92305 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!303975 #b00000000000000000000000000000000 j!136) lt!304119)))

(declare-fun bs!19471 () Bool)

(assert (= bs!19471 d!92305))

(assert (=> bs!19471 m!626199))

(declare-fun m!626453 () Bool)

(assert (=> bs!19471 m!626453))

(assert (=> b!652958 d!92305))

(declare-fun b!653243 () Bool)

(declare-fun e!375062 () Bool)

(declare-fun call!33811 () Bool)

(assert (=> b!653243 (= e!375062 call!33811)))

(declare-fun d!92307 () Bool)

(declare-fun res!423737 () Bool)

(declare-fun e!375061 () Bool)

(assert (=> d!92307 (=> res!423737 e!375061)))

(assert (=> d!92307 (= res!423737 (bvsge j!136 (size!18859 lt!303975)))))

(assert (=> d!92307 (= (arrayNoDuplicates!0 lt!303975 j!136 Nil!12586) e!375061)))

(declare-fun b!653244 () Bool)

(declare-fun e!375063 () Bool)

(assert (=> b!653244 (= e!375063 (contains!3183 Nil!12586 (select (arr!18495 lt!303975) j!136)))))

(declare-fun b!653245 () Bool)

(declare-fun e!375060 () Bool)

(assert (=> b!653245 (= e!375061 e!375060)))

(declare-fun res!423736 () Bool)

(assert (=> b!653245 (=> (not res!423736) (not e!375060))))

(assert (=> b!653245 (= res!423736 (not e!375063))))

(declare-fun res!423735 () Bool)

(assert (=> b!653245 (=> (not res!423735) (not e!375063))))

(assert (=> b!653245 (= res!423735 (validKeyInArray!0 (select (arr!18495 lt!303975) j!136)))))

(declare-fun b!653246 () Bool)

(assert (=> b!653246 (= e!375060 e!375062)))

(declare-fun c!75121 () Bool)

(assert (=> b!653246 (= c!75121 (validKeyInArray!0 (select (arr!18495 lt!303975) j!136)))))

(declare-fun b!653247 () Bool)

(assert (=> b!653247 (= e!375062 call!33811)))

(declare-fun bm!33808 () Bool)

(assert (=> bm!33808 (= call!33811 (arrayNoDuplicates!0 lt!303975 (bvadd j!136 #b00000000000000000000000000000001) (ite c!75121 (Cons!12585 (select (arr!18495 lt!303975) j!136) Nil!12586) Nil!12586)))))

(assert (= (and d!92307 (not res!423737)) b!653245))

(assert (= (and b!653245 res!423735) b!653244))

(assert (= (and b!653245 res!423736) b!653246))

(assert (= (and b!653246 c!75121) b!653243))

(assert (= (and b!653246 (not c!75121)) b!653247))

(assert (= (or b!653243 b!653247) bm!33808))

(declare-fun m!626459 () Bool)

(assert (=> b!653244 m!626459))

(assert (=> b!653244 m!626459))

(declare-fun m!626461 () Bool)

(assert (=> b!653244 m!626461))

(assert (=> b!653245 m!626459))

(assert (=> b!653245 m!626459))

(declare-fun m!626463 () Bool)

(assert (=> b!653245 m!626463))

(assert (=> b!653246 m!626459))

(assert (=> b!653246 m!626459))

(assert (=> b!653246 m!626463))

(assert (=> bm!33808 m!626459))

(declare-fun m!626465 () Bool)

(assert (=> bm!33808 m!626465))

(assert (=> b!652958 d!92307))

(declare-fun d!92311 () Bool)

(declare-fun e!375072 () Bool)

(assert (=> d!92311 e!375072))

(declare-fun res!423740 () Bool)

(assert (=> d!92311 (=> (not res!423740) (not e!375072))))

(assert (=> d!92311 (= res!423740 (and (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18859 a!2986))))))

(declare-fun lt!304134 () Unit!22324)

(declare-fun choose!41 (array!38595 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12589) Unit!22324)

(assert (=> d!92311 (= lt!304134 (choose!41 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12586))))

(assert (=> d!92311 (bvslt (size!18859 a!2986) #b01111111111111111111111111111111)))

(assert (=> d!92311 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12586) lt!304134)))

(declare-fun b!653262 () Bool)

(assert (=> b!653262 (= e!375072 (arrayNoDuplicates!0 (array!38596 (store (arr!18495 a!2986) i!1108 k!1786) (size!18859 a!2986)) #b00000000000000000000000000000000 Nil!12586))))

(assert (= (and d!92311 res!423740) b!653262))

(declare-fun m!626469 () Bool)

(assert (=> d!92311 m!626469))

(assert (=> b!653262 m!626147))

(declare-fun m!626471 () Bool)

(assert (=> b!653262 m!626471))

(assert (=> b!652958 d!92311))

(declare-fun d!92315 () Bool)

(assert (=> d!92315 (and (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18859 lt!303975)) (not (= (select (arr!18495 lt!303975) j!136) (select (arr!18495 a!2986) j!136))))))

(declare-fun lt!304138 () Unit!22324)

(declare-fun choose!21 (array!38595 (_ BitVec 64) (_ BitVec 32) List!12589) Unit!22324)

(assert (=> d!92315 (= lt!304138 (choose!21 lt!303975 (select (arr!18495 a!2986) j!136) j!136 Nil!12586))))

(assert (=> d!92315 (bvslt (size!18859 lt!303975) #b01111111111111111111111111111111)))

(assert (=> d!92315 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303975 (select (arr!18495 a!2986) j!136) j!136 Nil!12586) lt!304138)))

(declare-fun bs!19474 () Bool)

(assert (= bs!19474 d!92315))

(assert (=> bs!19474 m!626459))

(assert (=> bs!19474 m!626145))

(declare-fun m!626475 () Bool)

(assert (=> bs!19474 m!626475))

(assert (=> b!652958 d!92315))

(declare-fun d!92319 () Bool)

(assert (=> d!92319 (= (validKeyInArray!0 (select (arr!18495 a!2986) j!136)) (and (not (= (select (arr!18495 a!2986) j!136) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18495 a!2986) j!136) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!652960 d!92319))

(declare-fun d!92321 () Bool)

(declare-fun res!423741 () Bool)

(declare-fun e!375076 () Bool)

(assert (=> d!92321 (=> res!423741 e!375076)))

(assert (=> d!92321 (= res!423741 (= (select (arr!18495 lt!303975) j!136) (select (arr!18495 a!2986) j!136)))))

(assert (=> d!92321 (= (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) j!136) e!375076)))

(declare-fun b!653269 () Bool)

(declare-fun e!375077 () Bool)

(assert (=> b!653269 (= e!375076 e!375077)))

(declare-fun res!423742 () Bool)

(assert (=> b!653269 (=> (not res!423742) (not e!375077))))

(assert (=> b!653269 (= res!423742 (bvslt (bvadd j!136 #b00000000000000000000000000000001) (size!18859 lt!303975)))))

(declare-fun b!653270 () Bool)

(assert (=> b!653270 (= e!375077 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd j!136 #b00000000000000000000000000000001)))))

(assert (= (and d!92321 (not res!423741)) b!653269))

(assert (= (and b!653269 res!423742) b!653270))

(assert (=> d!92321 m!626459))

(assert (=> b!653270 m!626145))

(declare-fun m!626491 () Bool)

(assert (=> b!653270 m!626491))

(assert (=> b!652949 d!92321))

(declare-fun d!92325 () Bool)

(assert (=> d!92325 (= (validKeyInArray!0 k!1786) (and (not (= k!1786 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1786 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!652959 d!92325))

(declare-fun d!92327 () Bool)

(declare-fun res!423747 () Bool)

(declare-fun e!375082 () Bool)

(assert (=> d!92327 (=> res!423747 e!375082)))

(assert (=> d!92327 (= res!423747 (is-Nil!12586 Nil!12586))))

(assert (=> d!92327 (= (noDuplicate!439 Nil!12586) e!375082)))

(declare-fun b!653275 () Bool)

(declare-fun e!375083 () Bool)

(assert (=> b!653275 (= e!375082 e!375083)))

(declare-fun res!423748 () Bool)

(assert (=> b!653275 (=> (not res!423748) (not e!375083))))

(assert (=> b!653275 (= res!423748 (not (contains!3183 (t!18825 Nil!12586) (h!13630 Nil!12586))))))

(declare-fun b!653276 () Bool)

(assert (=> b!653276 (= e!375083 (noDuplicate!439 (t!18825 Nil!12586)))))

(assert (= (and d!92327 (not res!423747)) b!653275))

(assert (= (and b!653275 res!423748) b!653276))

(declare-fun m!626493 () Bool)

(assert (=> b!653275 m!626493))

(declare-fun m!626495 () Bool)

(assert (=> b!653276 m!626495))

(assert (=> b!652956 d!92327))

(declare-fun d!92329 () Bool)

(declare-fun res!423749 () Bool)

(declare-fun e!375084 () Bool)

(assert (=> d!92329 (=> res!423749 e!375084)))

(assert (=> d!92329 (= res!423749 (= (select (arr!18495 lt!303975) index!984) (select (arr!18495 a!2986) j!136)))))

(assert (=> d!92329 (= (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) index!984) e!375084)))

(declare-fun b!653277 () Bool)

(declare-fun e!375085 () Bool)

(assert (=> b!653277 (= e!375084 e!375085)))

(declare-fun res!423750 () Bool)

(assert (=> b!653277 (=> (not res!423750) (not e!375085))))

(assert (=> b!653277 (= res!423750 (bvslt (bvadd index!984 #b00000000000000000000000000000001) (size!18859 lt!303975)))))

(declare-fun b!653278 () Bool)

(assert (=> b!653278 (= e!375085 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92329 (not res!423749)) b!653277))

(assert (= (and b!653277 res!423750) b!653278))

(declare-fun m!626497 () Bool)

(assert (=> d!92329 m!626497))

(assert (=> b!653278 m!626145))

(declare-fun m!626499 () Bool)

(assert (=> b!653278 m!626499))

(assert (=> b!652957 d!92329))

(declare-fun d!92331 () Bool)

(declare-fun res!423751 () Bool)

(declare-fun e!375086 () Bool)

(assert (=> d!92331 (=> res!423751 e!375086)))

(assert (=> d!92331 (= res!423751 (= (select (arr!18495 a!2986) #b00000000000000000000000000000000) k!1786))))

(assert (=> d!92331 (= (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000) e!375086)))

(declare-fun b!653279 () Bool)

(declare-fun e!375087 () Bool)

(assert (=> b!653279 (= e!375086 e!375087)))

(declare-fun res!423752 () Bool)

(assert (=> b!653279 (=> (not res!423752) (not e!375087))))

(assert (=> b!653279 (= res!423752 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!18859 a!2986)))))

(declare-fun b!653280 () Bool)

(assert (=> b!653280 (= e!375087 (arrayContainsKey!0 a!2986 k!1786 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!92331 (not res!423751)) b!653279))

(assert (= (and b!653279 res!423752) b!653280))

(declare-fun m!626501 () Bool)

(assert (=> d!92331 m!626501))

(declare-fun m!626503 () Bool)

(assert (=> b!653280 m!626503))

(assert (=> b!652964 d!92331))

(declare-fun b!653355 () Bool)

(declare-fun e!375136 () SeekEntryResult!6942)

(declare-fun lt!304171 () SeekEntryResult!6942)

(assert (=> b!653355 (= e!375136 (Found!6942 (index!30125 lt!304171)))))

(declare-fun b!653356 () Bool)

(declare-fun e!375135 () SeekEntryResult!6942)

(assert (=> b!653356 (= e!375135 e!375136)))

(declare-fun lt!304170 () (_ BitVec 64))

(assert (=> b!653356 (= lt!304170 (select (arr!18495 a!2986) (index!30125 lt!304171)))))

(declare-fun c!75161 () Bool)

(assert (=> b!653356 (= c!75161 (= lt!304170 k!1786))))

(declare-fun b!653357 () Bool)

(declare-fun c!75160 () Bool)

(assert (=> b!653357 (= c!75160 (= lt!304170 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!375134 () SeekEntryResult!6942)

(assert (=> b!653357 (= e!375136 e!375134)))

(declare-fun d!92333 () Bool)

(declare-fun lt!304172 () SeekEntryResult!6942)

(assert (=> d!92333 (and (or (is-Undefined!6942 lt!304172) (not (is-Found!6942 lt!304172)) (and (bvsge (index!30124 lt!304172) #b00000000000000000000000000000000) (bvslt (index!30124 lt!304172) (size!18859 a!2986)))) (or (is-Undefined!6942 lt!304172) (is-Found!6942 lt!304172) (not (is-MissingZero!6942 lt!304172)) (and (bvsge (index!30123 lt!304172) #b00000000000000000000000000000000) (bvslt (index!30123 lt!304172) (size!18859 a!2986)))) (or (is-Undefined!6942 lt!304172) (is-Found!6942 lt!304172) (is-MissingZero!6942 lt!304172) (not (is-MissingVacant!6942 lt!304172)) (and (bvsge (index!30126 lt!304172) #b00000000000000000000000000000000) (bvslt (index!30126 lt!304172) (size!18859 a!2986)))) (or (is-Undefined!6942 lt!304172) (ite (is-Found!6942 lt!304172) (= (select (arr!18495 a!2986) (index!30124 lt!304172)) k!1786) (ite (is-MissingZero!6942 lt!304172) (= (select (arr!18495 a!2986) (index!30123 lt!304172)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6942 lt!304172) (= (select (arr!18495 a!2986) (index!30126 lt!304172)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!92333 (= lt!304172 e!375135)))

(declare-fun c!75159 () Bool)

(assert (=> d!92333 (= c!75159 (and (is-Intermediate!6942 lt!304171) (undefined!7754 lt!304171)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38595 (_ BitVec 32)) SeekEntryResult!6942)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!92333 (= lt!304171 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!1786 mask!3053) k!1786 a!2986 mask!3053))))

(assert (=> d!92333 (validMask!0 mask!3053)))

(assert (=> d!92333 (= (seekEntryOrOpen!0 k!1786 a!2986 mask!3053) lt!304172)))

(declare-fun b!653358 () Bool)

(assert (=> b!653358 (= e!375135 Undefined!6942)))

(declare-fun b!653359 () Bool)

(assert (=> b!653359 (= e!375134 (MissingZero!6942 (index!30125 lt!304171)))))

(declare-fun b!653360 () Bool)

(assert (=> b!653360 (= e!375134 (seekKeyOrZeroReturnVacant!0 (x!58943 lt!304171) (index!30125 lt!304171) (index!30125 lt!304171) k!1786 a!2986 mask!3053))))

(assert (= (and d!92333 c!75159) b!653358))

(assert (= (and d!92333 (not c!75159)) b!653356))

(assert (= (and b!653356 c!75161) b!653355))

(assert (= (and b!653356 (not c!75161)) b!653357))

(assert (= (and b!653357 c!75160) b!653359))

(assert (= (and b!653357 (not c!75160)) b!653360))

(declare-fun m!626553 () Bool)

(assert (=> b!653356 m!626553))

(declare-fun m!626555 () Bool)

(assert (=> d!92333 m!626555))

(declare-fun m!626557 () Bool)

(assert (=> d!92333 m!626557))

(assert (=> d!92333 m!626185))

(declare-fun m!626559 () Bool)

(assert (=> d!92333 m!626559))

(declare-fun m!626561 () Bool)

(assert (=> d!92333 m!626561))

(declare-fun m!626563 () Bool)

(assert (=> d!92333 m!626563))

(assert (=> d!92333 m!626559))

(declare-fun m!626565 () Bool)

(assert (=> b!653360 m!626565))

(assert (=> b!652942 d!92333))

(declare-fun b!653403 () Bool)

(declare-fun e!375164 () SeekEntryResult!6942)

(declare-fun e!375165 () SeekEntryResult!6942)

(assert (=> b!653403 (= e!375164 e!375165)))

(declare-fun lt!304191 () (_ BitVec 64))

(declare-fun c!75178 () Bool)

(assert (=> b!653403 (= c!75178 (= lt!304191 (select (arr!18495 a!2986) j!136)))))

(declare-fun e!375163 () SeekEntryResult!6942)

(declare-fun b!653404 () Bool)

(assert (=> b!653404 (= e!375163 (seekKeyOrZeroReturnVacant!0 (bvadd x!910 #b00000000000000000000000000000001) (nextIndex!0 index!984 x!910 mask!3053) vacantSpotIndex!68 (select (arr!18495 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!653405 () Bool)

(declare-fun c!75180 () Bool)

(assert (=> b!653405 (= c!75180 (= lt!304191 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!653405 (= e!375165 e!375163)))

(declare-fun b!653407 () Bool)

(assert (=> b!653407 (= e!375165 (Found!6942 index!984))))

(declare-fun b!653408 () Bool)

(assert (=> b!653408 (= e!375164 Undefined!6942)))

(declare-fun b!653406 () Bool)

(assert (=> b!653406 (= e!375163 (MissingVacant!6942 vacantSpotIndex!68))))

(declare-fun d!92357 () Bool)

(declare-fun lt!304192 () SeekEntryResult!6942)

(assert (=> d!92357 (and (or (is-Undefined!6942 lt!304192) (not (is-Found!6942 lt!304192)) (and (bvsge (index!30124 lt!304192) #b00000000000000000000000000000000) (bvslt (index!30124 lt!304192) (size!18859 a!2986)))) (or (is-Undefined!6942 lt!304192) (is-Found!6942 lt!304192) (not (is-MissingVacant!6942 lt!304192)) (not (= (index!30126 lt!304192) vacantSpotIndex!68)) (and (bvsge (index!30126 lt!304192) #b00000000000000000000000000000000) (bvslt (index!30126 lt!304192) (size!18859 a!2986)))) (or (is-Undefined!6942 lt!304192) (ite (is-Found!6942 lt!304192) (= (select (arr!18495 a!2986) (index!30124 lt!304192)) (select (arr!18495 a!2986) j!136)) (and (is-MissingVacant!6942 lt!304192) (= (index!30126 lt!304192) vacantSpotIndex!68) (= (select (arr!18495 a!2986) (index!30126 lt!304192)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!92357 (= lt!304192 e!375164)))

(declare-fun c!75179 () Bool)

(assert (=> d!92357 (= c!75179 (bvsge x!910 #b01111111111111111111111111111110))))

(assert (=> d!92357 (= lt!304191 (select (arr!18495 a!2986) index!984))))

(assert (=> d!92357 (validMask!0 mask!3053)))

(assert (=> d!92357 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18495 a!2986) j!136) a!2986 mask!3053) lt!304192)))

(assert (= (and d!92357 c!75179) b!653408))

(assert (= (and d!92357 (not c!75179)) b!653403))

(assert (= (and b!653403 c!75178) b!653407))

(assert (= (and b!653403 (not c!75178)) b!653405))

(assert (= (and b!653405 c!75180) b!653406))

(assert (= (and b!653405 (not c!75180)) b!653404))

(assert (=> b!653404 m!626141))

(assert (=> b!653404 m!626141))

(assert (=> b!653404 m!626145))

(declare-fun m!626613 () Bool)

(assert (=> b!653404 m!626613))

(declare-fun m!626615 () Bool)

(assert (=> d!92357 m!626615))

(declare-fun m!626617 () Bool)

(assert (=> d!92357 m!626617))

(assert (=> d!92357 m!626161))

(assert (=> d!92357 m!626185))

(assert (=> b!652963 d!92357))

(declare-fun d!92377 () Bool)

(assert (=> d!92377 (= (validMask!0 mask!3053) (and (or (= mask!3053 #b00000000000000000000000000000111) (= mask!3053 #b00000000000000000000000000001111) (= mask!3053 #b00000000000000000000000000011111) (= mask!3053 #b00000000000000000000000000111111) (= mask!3053 #b00000000000000000000000001111111) (= mask!3053 #b00000000000000000000000011111111) (= mask!3053 #b00000000000000000000000111111111) (= mask!3053 #b00000000000000000000001111111111) (= mask!3053 #b00000000000000000000011111111111) (= mask!3053 #b00000000000000000000111111111111) (= mask!3053 #b00000000000000000001111111111111) (= mask!3053 #b00000000000000000011111111111111) (= mask!3053 #b00000000000000000111111111111111) (= mask!3053 #b00000000000000001111111111111111) (= mask!3053 #b00000000000000011111111111111111) (= mask!3053 #b00000000000000111111111111111111) (= mask!3053 #b00000000000001111111111111111111) (= mask!3053 #b00000000000011111111111111111111) (= mask!3053 #b00000000000111111111111111111111) (= mask!3053 #b00000000001111111111111111111111) (= mask!3053 #b00000000011111111111111111111111) (= mask!3053 #b00000000111111111111111111111111) (= mask!3053 #b00000001111111111111111111111111) (= mask!3053 #b00000011111111111111111111111111) (= mask!3053 #b00000111111111111111111111111111) (= mask!3053 #b00001111111111111111111111111111) (= mask!3053 #b00011111111111111111111111111111) (= mask!3053 #b00111111111111111111111111111111)) (bvsle mask!3053 #b00111111111111111111111111111111)))))

(assert (=> start!59226 d!92377))

(declare-fun d!92383 () Bool)

(assert (=> d!92383 (= (array_inv!14269 a!2986) (bvsge (size!18859 a!2986) #b00000000000000000000000000000000))))

(assert (=> start!59226 d!92383))

(assert (=> b!652954 d!92329))

(declare-fun d!92387 () Bool)

(declare-fun lt!304201 () Bool)

(declare-fun content!255 (List!12589) (Set (_ BitVec 64)))

(assert (=> d!92387 (= lt!304201 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!255 Nil!12586)))))

(declare-fun e!375182 () Bool)

(assert (=> d!92387 (= lt!304201 e!375182)))

(declare-fun res!423796 () Bool)

(assert (=> d!92387 (=> (not res!423796) (not e!375182))))

(assert (=> d!92387 (= res!423796 (is-Cons!12585 Nil!12586))))

(assert (=> d!92387 (= (contains!3183 Nil!12586 #b1000000000000000000000000000000000000000000000000000000000000000) lt!304201)))

(declare-fun b!653425 () Bool)

(declare-fun e!375181 () Bool)

(assert (=> b!653425 (= e!375182 e!375181)))

(declare-fun res!423795 () Bool)

(assert (=> b!653425 (=> res!423795 e!375181)))

(assert (=> b!653425 (= res!423795 (= (h!13630 Nil!12586) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!653426 () Bool)

(assert (=> b!653426 (= e!375181 (contains!3183 (t!18825 Nil!12586) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!92387 res!423796) b!653425))

(assert (= (and b!653425 (not res!423795)) b!653426))

(declare-fun m!626639 () Bool)

(assert (=> d!92387 m!626639))

(declare-fun m!626641 () Bool)

(assert (=> d!92387 m!626641))

(declare-fun m!626643 () Bool)

(assert (=> b!653426 m!626643))

(assert (=> b!652943 d!92387))

(assert (=> b!652961 d!92291))

(declare-fun d!92393 () Bool)

(assert (=> d!92393 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!304202 () Unit!22324)

(assert (=> d!92393 (= lt!304202 (choose!114 lt!303975 (select (arr!18495 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> d!92393 (bvsge j!136 #b00000000000000000000000000000000)))

(assert (=> d!92393 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303975 (select (arr!18495 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)) lt!304202)))

(declare-fun bs!19480 () Bool)

(assert (= bs!19480 d!92393))

(assert (=> bs!19480 m!626145))

(assert (=> bs!19480 m!626173))

(assert (=> bs!19480 m!626145))

(declare-fun m!626649 () Bool)

(assert (=> bs!19480 m!626649))

(assert (=> b!652961 d!92393))

(declare-fun b!653432 () Bool)

(declare-fun e!375189 () Bool)

(declare-fun call!33822 () Bool)

(assert (=> b!653432 (= e!375189 call!33822)))

(declare-fun d!92395 () Bool)

(declare-fun res!423802 () Bool)

(declare-fun e!375188 () Bool)

(assert (=> d!92395 (=> res!423802 e!375188)))

(assert (=> d!92395 (= res!423802 (bvsge index!984 (size!18859 lt!303975)))))

(assert (=> d!92395 (= (arrayNoDuplicates!0 lt!303975 index!984 Nil!12586) e!375188)))

(declare-fun b!653433 () Bool)

(declare-fun e!375190 () Bool)

(assert (=> b!653433 (= e!375190 (contains!3183 Nil!12586 (select (arr!18495 lt!303975) index!984)))))

(declare-fun b!653434 () Bool)

(declare-fun e!375187 () Bool)

(assert (=> b!653434 (= e!375188 e!375187)))

(declare-fun res!423801 () Bool)

(assert (=> b!653434 (=> (not res!423801) (not e!375187))))

(assert (=> b!653434 (= res!423801 (not e!375190))))

(declare-fun res!423800 () Bool)

(assert (=> b!653434 (=> (not res!423800) (not e!375190))))

(assert (=> b!653434 (= res!423800 (validKeyInArray!0 (select (arr!18495 lt!303975) index!984)))))

(declare-fun b!653435 () Bool)

(assert (=> b!653435 (= e!375187 e!375189)))

(declare-fun c!75183 () Bool)

(assert (=> b!653435 (= c!75183 (validKeyInArray!0 (select (arr!18495 lt!303975) index!984)))))

(declare-fun b!653436 () Bool)

(assert (=> b!653436 (= e!375189 call!33822)))

(declare-fun bm!33819 () Bool)

(assert (=> bm!33819 (= call!33822 (arrayNoDuplicates!0 lt!303975 (bvadd index!984 #b00000000000000000000000000000001) (ite c!75183 (Cons!12585 (select (arr!18495 lt!303975) index!984) Nil!12586) Nil!12586)))))

(assert (= (and d!92395 (not res!423802)) b!653434))

(assert (= (and b!653434 res!423800) b!653433))

(assert (= (and b!653434 res!423801) b!653435))

(assert (= (and b!653435 c!75183) b!653432))

(assert (= (and b!653435 (not c!75183)) b!653436))

(assert (= (or b!653432 b!653436) bm!33819))

(assert (=> b!653433 m!626497))

(assert (=> b!653433 m!626497))

(declare-fun m!626655 () Bool)

(assert (=> b!653433 m!626655))

(assert (=> b!653434 m!626497))

(assert (=> b!653434 m!626497))

(declare-fun m!626657 () Bool)

(assert (=> b!653434 m!626657))

(assert (=> b!653435 m!626497))

(assert (=> b!653435 m!626497))

(assert (=> b!653435 m!626657))

(assert (=> bm!33819 m!626497))

(declare-fun m!626659 () Bool)

(assert (=> bm!33819 m!626659))

(assert (=> b!652961 d!92395))

(declare-fun d!92399 () Bool)

(assert (=> d!92399 (arrayNoDuplicates!0 lt!303975 index!984 Nil!12586)))

(declare-fun lt!304203 () Unit!22324)

(assert (=> d!92399 (= lt!304203 (choose!39 lt!303975 #b00000000000000000000000000000000 index!984))))

(assert (=> d!92399 (bvslt (size!18859 lt!303975) #b01111111111111111111111111111111)))

(assert (=> d!92399 (= (lemmaNoDuplicateFromThenFromBigger!0 lt!303975 #b00000000000000000000000000000000 index!984) lt!304203)))

(declare-fun bs!19481 () Bool)

(assert (= bs!19481 d!92399))

(assert (=> bs!19481 m!626175))

(declare-fun m!626661 () Bool)

(assert (=> bs!19481 m!626661))

(assert (=> b!652961 d!92399))

(declare-fun d!92401 () Bool)

(declare-fun res!423803 () Bool)

(declare-fun e!375191 () Bool)

(assert (=> d!92401 (=> res!423803 e!375191)))

(assert (=> d!92401 (= res!423803 (= (select (arr!18495 lt!303975) (bvadd #b00000000000000000000000000000001 index!984)) (select (arr!18495 a!2986) j!136)))))

(assert (=> d!92401 (= (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984)) e!375191)))

(declare-fun b!653437 () Bool)

(declare-fun e!375192 () Bool)

(assert (=> b!653437 (= e!375191 e!375192)))

(declare-fun res!423804 () Bool)

(assert (=> b!653437 (=> (not res!423804) (not e!375192))))

(assert (=> b!653437 (= res!423804 (bvslt (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001) (size!18859 lt!303975)))))

(declare-fun b!653438 () Bool)

(assert (=> b!653438 (= e!375192 (arrayContainsKey!0 lt!303975 (select (arr!18495 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984 #b00000000000000000000000000000001)))))

(assert (= (and d!92401 (not res!423803)) b!653437))

(assert (= (and b!653437 res!423804) b!653438))

(declare-fun m!626663 () Bool)

(assert (=> d!92401 m!626663))

(assert (=> b!653438 m!626145))

(declare-fun m!626665 () Bool)

(assert (=> b!653438 m!626665))

(assert (=> b!652961 d!92401))

(assert (=> b!652961 d!92321))

(assert (=> b!652961 d!92311))

(declare-fun b!653439 () Bool)

(declare-fun e!375194 () SeekEntryResult!6942)

(declare-fun e!375195 () SeekEntryResult!6942)

(assert (=> b!653439 (= e!375194 e!375195)))

(declare-fun c!75184 () Bool)

(declare-fun lt!304204 () (_ BitVec 64))

(assert (=> b!653439 (= c!75184 (= lt!304204 lt!303976))))

(declare-fun e!375193 () SeekEntryResult!6942)

(declare-fun b!653440 () Bool)

(assert (=> b!653440 (= e!375193 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910 #b00000000000000000000000000000001) (nextIndex!0 lt!303972 (bvadd #b00000000000000000000000000000001 x!910) mask!3053) vacantSpotIndex!68 lt!303976 lt!303975 mask!3053))))

(declare-fun b!653441 () Bool)

(declare-fun c!75186 () Bool)

(assert (=> b!653441 (= c!75186 (= lt!304204 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!653441 (= e!375195 e!375193)))

(declare-fun b!653443 () Bool)

(assert (=> b!653443 (= e!375195 (Found!6942 lt!303972))))

(declare-fun b!653444 () Bool)

(assert (=> b!653444 (= e!375194 Undefined!6942)))

(declare-fun b!653442 () Bool)

(assert (=> b!653442 (= e!375193 (MissingVacant!6942 vacantSpotIndex!68))))

(declare-fun d!92403 () Bool)

(declare-fun lt!304205 () SeekEntryResult!6942)

