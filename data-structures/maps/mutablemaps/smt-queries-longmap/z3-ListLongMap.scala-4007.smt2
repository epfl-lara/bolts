; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54524 () Bool)

(assert start!54524)

(declare-fun b!594937 () Bool)

(declare-fun e!339929 () Bool)

(declare-fun e!339930 () Bool)

(assert (=> b!594937 (= e!339929 e!339930)))

(declare-fun res!381026 () Bool)

(assert (=> b!594937 (=> res!381026 e!339930)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!270177 () (_ BitVec 64))

(declare-fun lt!270180 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36947 0))(
  ( (array!36948 (arr!17734 (Array (_ BitVec 32) (_ BitVec 64))) (size!18098 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36947)

(assert (=> b!594937 (= res!381026 (or (not (= (select (arr!17734 a!2986) j!136) lt!270177)) (not (= (select (arr!17734 a!2986) j!136) lt!270180)) (bvsge j!136 index!984)))))

(declare-fun b!594938 () Bool)

(declare-fun res!381025 () Bool)

(declare-fun e!339928 () Bool)

(assert (=> b!594938 (=> res!381025 e!339928)))

(declare-datatypes ((List!11828 0))(
  ( (Nil!11825) (Cons!11824 (h!12869 (_ BitVec 64)) (t!18064 List!11828)) )
))
(declare-fun contains!2932 (List!11828 (_ BitVec 64)) Bool)

(assert (=> b!594938 (= res!381025 (contains!2932 Nil!11825 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!594939 () Bool)

(declare-fun e!339925 () Bool)

(declare-fun e!339919 () Bool)

(assert (=> b!594939 (= e!339925 (not e!339919))))

(declare-fun res!381032 () Bool)

(assert (=> b!594939 (=> res!381032 e!339919)))

(declare-datatypes ((SeekEntryResult!6181 0))(
  ( (MissingZero!6181 (index!26971 (_ BitVec 32))) (Found!6181 (index!26972 (_ BitVec 32))) (Intermediate!6181 (undefined!6993 Bool) (index!26973 (_ BitVec 32)) (x!55802 (_ BitVec 32))) (Undefined!6181) (MissingVacant!6181 (index!26974 (_ BitVec 32))) )
))
(declare-fun lt!270176 () SeekEntryResult!6181)

(assert (=> b!594939 (= res!381032 (not (= lt!270176 (Found!6181 index!984))))))

(declare-datatypes ((Unit!18668 0))(
  ( (Unit!18669) )
))
(declare-fun lt!270173 () Unit!18668)

(declare-fun e!339920 () Unit!18668)

(assert (=> b!594939 (= lt!270173 e!339920)))

(declare-fun c!67328 () Bool)

(assert (=> b!594939 (= c!67328 (= lt!270176 Undefined!6181))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!270178 () array!36947)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36947 (_ BitVec 32)) SeekEntryResult!6181)

(assert (=> b!594939 (= lt!270176 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270177 lt!270178 mask!3053))))

(declare-fun e!339921 () Bool)

(assert (=> b!594939 e!339921))

(declare-fun res!381019 () Bool)

(assert (=> b!594939 (=> (not res!381019) (not e!339921))))

(declare-fun lt!270171 () SeekEntryResult!6181)

(declare-fun lt!270175 () (_ BitVec 32))

(assert (=> b!594939 (= res!381019 (= lt!270171 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270175 vacantSpotIndex!68 lt!270177 lt!270178 mask!3053)))))

(assert (=> b!594939 (= lt!270171 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270175 vacantSpotIndex!68 (select (arr!17734 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!594939 (= lt!270177 (select (store (arr!17734 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!270174 () Unit!18668)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36947 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18668)

(assert (=> b!594939 (= lt!270174 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270175 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!594939 (= lt!270175 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!594940 () Bool)

(declare-fun e!339922 () Bool)

(declare-fun e!339931 () Bool)

(assert (=> b!594940 (= e!339922 e!339931)))

(declare-fun res!381029 () Bool)

(assert (=> b!594940 (=> (not res!381029) (not e!339931))))

(declare-fun lt!270170 () SeekEntryResult!6181)

(assert (=> b!594940 (= res!381029 (or (= lt!270170 (MissingZero!6181 i!1108)) (= lt!270170 (MissingVacant!6181 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36947 (_ BitVec 32)) SeekEntryResult!6181)

(assert (=> b!594940 (= lt!270170 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun e!339924 () Bool)

(declare-fun b!594941 () Bool)

(declare-fun arrayContainsKey!0 (array!36947 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!594941 (= e!339924 (arrayContainsKey!0 lt!270178 (select (arr!17734 a!2986) j!136) index!984))))

(declare-fun b!594942 () Bool)

(declare-fun res!381035 () Bool)

(assert (=> b!594942 (=> (not res!381035) (not e!339922))))

(assert (=> b!594942 (= res!381035 (and (= (size!18098 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18098 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18098 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!594943 () Bool)

(declare-fun Unit!18670 () Unit!18668)

(assert (=> b!594943 (= e!339920 Unit!18670)))

(declare-fun b!594944 () Bool)

(declare-fun res!381024 () Bool)

(assert (=> b!594944 (=> (not res!381024) (not e!339931))))

(declare-fun arrayNoDuplicates!0 (array!36947 (_ BitVec 32) List!11828) Bool)

(assert (=> b!594944 (= res!381024 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11825))))

(declare-fun b!594945 () Bool)

(declare-fun e!339923 () Bool)

(assert (=> b!594945 (= e!339931 e!339923)))

(declare-fun res!381022 () Bool)

(assert (=> b!594945 (=> (not res!381022) (not e!339923))))

(assert (=> b!594945 (= res!381022 (= (select (store (arr!17734 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!594945 (= lt!270178 (array!36948 (store (arr!17734 a!2986) i!1108 k0!1786) (size!18098 a!2986)))))

(declare-fun b!594946 () Bool)

(declare-fun res!381020 () Bool)

(assert (=> b!594946 (=> (not res!381020) (not e!339922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!594946 (= res!381020 (validKeyInArray!0 (select (arr!17734 a!2986) j!136)))))

(declare-fun b!594947 () Bool)

(declare-fun e!339927 () Bool)

(assert (=> b!594947 (= e!339927 e!339928)))

(declare-fun res!381027 () Bool)

(assert (=> b!594947 (=> res!381027 e!339928)))

(assert (=> b!594947 (= res!381027 (or (bvsge (size!18098 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18098 a!2986))))))

(assert (=> b!594947 (arrayContainsKey!0 lt!270178 (select (arr!17734 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270172 () Unit!18668)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36947 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18668)

(assert (=> b!594947 (= lt!270172 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270178 (select (arr!17734 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!594948 () Bool)

(declare-fun res!381018 () Bool)

(assert (=> b!594948 (=> (not res!381018) (not e!339922))))

(assert (=> b!594948 (= res!381018 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!594949 () Bool)

(declare-fun res!381028 () Bool)

(assert (=> b!594949 (=> (not res!381028) (not e!339931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36947 (_ BitVec 32)) Bool)

(assert (=> b!594949 (= res!381028 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!594950 () Bool)

(declare-fun res!381021 () Bool)

(assert (=> b!594950 (=> res!381021 e!339928)))

(declare-fun noDuplicate!248 (List!11828) Bool)

(assert (=> b!594950 (= res!381021 (not (noDuplicate!248 Nil!11825)))))

(declare-fun b!594951 () Bool)

(declare-fun Unit!18671 () Unit!18668)

(assert (=> b!594951 (= e!339920 Unit!18671)))

(assert (=> b!594951 false))

(declare-fun b!594952 () Bool)

(declare-fun res!381034 () Bool)

(assert (=> b!594952 (=> (not res!381034) (not e!339931))))

(assert (=> b!594952 (= res!381034 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17734 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!594953 () Bool)

(assert (=> b!594953 (= e!339930 e!339924)))

(declare-fun res!381023 () Bool)

(assert (=> b!594953 (=> (not res!381023) (not e!339924))))

(assert (=> b!594953 (= res!381023 (arrayContainsKey!0 lt!270178 (select (arr!17734 a!2986) j!136) j!136))))

(declare-fun b!594954 () Bool)

(assert (=> b!594954 (= e!339919 e!339927)))

(declare-fun res!381016 () Bool)

(assert (=> b!594954 (=> res!381016 e!339927)))

(assert (=> b!594954 (= res!381016 (or (not (= (select (arr!17734 a!2986) j!136) lt!270177)) (not (= (select (arr!17734 a!2986) j!136) lt!270180)) (bvsge j!136 index!984)))))

(assert (=> b!594954 e!339929))

(declare-fun res!381015 () Bool)

(assert (=> b!594954 (=> (not res!381015) (not e!339929))))

(assert (=> b!594954 (= res!381015 (= lt!270180 (select (arr!17734 a!2986) j!136)))))

(assert (=> b!594954 (= lt!270180 (select (store (arr!17734 a!2986) i!1108 k0!1786) index!984))))

(declare-fun res!381017 () Bool)

(assert (=> start!54524 (=> (not res!381017) (not e!339922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54524 (= res!381017 (validMask!0 mask!3053))))

(assert (=> start!54524 e!339922))

(assert (=> start!54524 true))

(declare-fun array_inv!13508 (array!36947) Bool)

(assert (=> start!54524 (array_inv!13508 a!2986)))

(declare-fun b!594955 () Bool)

(declare-fun res!381033 () Bool)

(assert (=> b!594955 (=> (not res!381033) (not e!339922))))

(assert (=> b!594955 (= res!381033 (validKeyInArray!0 k0!1786))))

(declare-fun b!594956 () Bool)

(assert (=> b!594956 (= e!339923 e!339925)))

(declare-fun res!381031 () Bool)

(assert (=> b!594956 (=> (not res!381031) (not e!339925))))

(declare-fun lt!270179 () SeekEntryResult!6181)

(assert (=> b!594956 (= res!381031 (and (= lt!270179 (Found!6181 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17734 a!2986) index!984) (select (arr!17734 a!2986) j!136))) (not (= (select (arr!17734 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!594956 (= lt!270179 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17734 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!594957 () Bool)

(assert (=> b!594957 (= e!339921 (= lt!270179 lt!270171))))

(declare-fun b!594958 () Bool)

(assert (=> b!594958 (= e!339928 true)))

(declare-fun lt!270169 () Bool)

(assert (=> b!594958 (= lt!270169 (contains!2932 Nil!11825 k0!1786))))

(declare-fun b!594959 () Bool)

(declare-fun res!381030 () Bool)

(assert (=> b!594959 (=> res!381030 e!339928)))

(assert (=> b!594959 (= res!381030 (contains!2932 Nil!11825 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!54524 res!381017) b!594942))

(assert (= (and b!594942 res!381035) b!594946))

(assert (= (and b!594946 res!381020) b!594955))

(assert (= (and b!594955 res!381033) b!594948))

(assert (= (and b!594948 res!381018) b!594940))

(assert (= (and b!594940 res!381029) b!594949))

(assert (= (and b!594949 res!381028) b!594944))

(assert (= (and b!594944 res!381024) b!594952))

(assert (= (and b!594952 res!381034) b!594945))

(assert (= (and b!594945 res!381022) b!594956))

(assert (= (and b!594956 res!381031) b!594939))

(assert (= (and b!594939 res!381019) b!594957))

(assert (= (and b!594939 c!67328) b!594951))

(assert (= (and b!594939 (not c!67328)) b!594943))

(assert (= (and b!594939 (not res!381032)) b!594954))

(assert (= (and b!594954 res!381015) b!594937))

(assert (= (and b!594937 (not res!381026)) b!594953))

(assert (= (and b!594953 res!381023) b!594941))

(assert (= (and b!594954 (not res!381016)) b!594947))

(assert (= (and b!594947 (not res!381027)) b!594950))

(assert (= (and b!594950 (not res!381021)) b!594938))

(assert (= (and b!594938 (not res!381025)) b!594959))

(assert (= (and b!594959 (not res!381030)) b!594958))

(declare-fun m!572683 () Bool)

(assert (=> b!594958 m!572683))

(declare-fun m!572685 () Bool)

(assert (=> b!594946 m!572685))

(assert (=> b!594946 m!572685))

(declare-fun m!572687 () Bool)

(assert (=> b!594946 m!572687))

(declare-fun m!572689 () Bool)

(assert (=> b!594945 m!572689))

(declare-fun m!572691 () Bool)

(assert (=> b!594945 m!572691))

(assert (=> b!594941 m!572685))

(assert (=> b!594941 m!572685))

(declare-fun m!572693 () Bool)

(assert (=> b!594941 m!572693))

(declare-fun m!572695 () Bool)

(assert (=> start!54524 m!572695))

(declare-fun m!572697 () Bool)

(assert (=> start!54524 m!572697))

(declare-fun m!572699 () Bool)

(assert (=> b!594952 m!572699))

(declare-fun m!572701 () Bool)

(assert (=> b!594944 m!572701))

(assert (=> b!594954 m!572685))

(assert (=> b!594954 m!572689))

(declare-fun m!572703 () Bool)

(assert (=> b!594954 m!572703))

(declare-fun m!572705 () Bool)

(assert (=> b!594956 m!572705))

(assert (=> b!594956 m!572685))

(assert (=> b!594956 m!572685))

(declare-fun m!572707 () Bool)

(assert (=> b!594956 m!572707))

(declare-fun m!572709 () Bool)

(assert (=> b!594948 m!572709))

(declare-fun m!572711 () Bool)

(assert (=> b!594939 m!572711))

(declare-fun m!572713 () Bool)

(assert (=> b!594939 m!572713))

(assert (=> b!594939 m!572685))

(assert (=> b!594939 m!572689))

(declare-fun m!572715 () Bool)

(assert (=> b!594939 m!572715))

(declare-fun m!572717 () Bool)

(assert (=> b!594939 m!572717))

(assert (=> b!594939 m!572685))

(declare-fun m!572719 () Bool)

(assert (=> b!594939 m!572719))

(declare-fun m!572721 () Bool)

(assert (=> b!594939 m!572721))

(assert (=> b!594953 m!572685))

(assert (=> b!594953 m!572685))

(declare-fun m!572723 () Bool)

(assert (=> b!594953 m!572723))

(declare-fun m!572725 () Bool)

(assert (=> b!594950 m!572725))

(declare-fun m!572727 () Bool)

(assert (=> b!594955 m!572727))

(assert (=> b!594947 m!572685))

(assert (=> b!594947 m!572685))

(declare-fun m!572729 () Bool)

(assert (=> b!594947 m!572729))

(assert (=> b!594947 m!572685))

(declare-fun m!572731 () Bool)

(assert (=> b!594947 m!572731))

(assert (=> b!594937 m!572685))

(declare-fun m!572733 () Bool)

(assert (=> b!594940 m!572733))

(declare-fun m!572735 () Bool)

(assert (=> b!594938 m!572735))

(declare-fun m!572737 () Bool)

(assert (=> b!594949 m!572737))

(declare-fun m!572739 () Bool)

(assert (=> b!594959 m!572739))

(check-sat (not b!594959) (not b!594958) (not b!594940) (not b!594939) (not b!594938) (not b!594949) (not b!594950) (not start!54524) (not b!594944) (not b!594956) (not b!594946) (not b!594948) (not b!594941) (not b!594947) (not b!594955) (not b!594953))
(check-sat)
