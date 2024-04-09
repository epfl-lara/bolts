; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54526 () Bool)

(assert start!54526)

(declare-fun b!595006 () Bool)

(declare-fun res!381087 () Bool)

(declare-fun e!339966 () Bool)

(assert (=> b!595006 (=> (not res!381087) (not e!339966))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36949 0))(
  ( (array!36950 (arr!17735 (Array (_ BitVec 32) (_ BitVec 64))) (size!18099 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36949)

(assert (=> b!595006 (= res!381087 (and (= (size!18099 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18099 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18099 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595007 () Bool)

(declare-datatypes ((Unit!18672 0))(
  ( (Unit!18673) )
))
(declare-fun e!339961 () Unit!18672)

(declare-fun Unit!18674 () Unit!18672)

(assert (=> b!595007 (= e!339961 Unit!18674)))

(assert (=> b!595007 false))

(declare-fun b!595008 () Bool)

(declare-fun res!381097 () Bool)

(declare-fun e!339963 () Bool)

(assert (=> b!595008 (=> (not res!381097) (not e!339963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36949 (_ BitVec 32)) Bool)

(assert (=> b!595008 (= res!381097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595010 () Bool)

(declare-fun res!381080 () Bool)

(declare-fun e!339965 () Bool)

(assert (=> b!595010 (=> res!381080 e!339965)))

(declare-datatypes ((List!11829 0))(
  ( (Nil!11826) (Cons!11825 (h!12870 (_ BitVec 64)) (t!18065 List!11829)) )
))
(declare-fun noDuplicate!249 (List!11829) Bool)

(assert (=> b!595010 (= res!381080 (not (noDuplicate!249 Nil!11826)))))

(declare-fun b!595011 () Bool)

(declare-fun e!339969 () Bool)

(assert (=> b!595011 (= e!339963 e!339969)))

(declare-fun res!381090 () Bool)

(assert (=> b!595011 (=> (not res!381090) (not e!339969))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!595011 (= res!381090 (= (select (store (arr!17735 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!270209 () array!36949)

(assert (=> b!595011 (= lt!270209 (array!36950 (store (arr!17735 a!2986) i!1108 k!1786) (size!18099 a!2986)))))

(declare-fun b!595012 () Bool)

(declare-fun Unit!18675 () Unit!18672)

(assert (=> b!595012 (= e!339961 Unit!18675)))

(declare-fun b!595013 () Bool)

(assert (=> b!595013 (= e!339965 true)))

(declare-fun lt!270212 () Bool)

(declare-fun contains!2933 (List!11829 (_ BitVec 64)) Bool)

(assert (=> b!595013 (= lt!270212 (contains!2933 Nil!11826 k!1786))))

(declare-fun b!595014 () Bool)

(declare-fun res!381085 () Bool)

(assert (=> b!595014 (=> res!381085 e!339965)))

(assert (=> b!595014 (= res!381085 (contains!2933 Nil!11826 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595015 () Bool)

(declare-fun e!339960 () Bool)

(declare-fun e!339958 () Bool)

(assert (=> b!595015 (= e!339960 e!339958)))

(declare-fun res!381096 () Bool)

(assert (=> b!595015 (=> res!381096 e!339958)))

(declare-fun lt!270210 () (_ BitVec 64))

(declare-fun lt!270213 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!595015 (= res!381096 (or (not (= (select (arr!17735 a!2986) j!136) lt!270213)) (not (= (select (arr!17735 a!2986) j!136) lt!270210)) (bvsge j!136 index!984)))))

(declare-fun b!595016 () Bool)

(assert (=> b!595016 (= e!339966 e!339963)))

(declare-fun res!381091 () Bool)

(assert (=> b!595016 (=> (not res!381091) (not e!339963))))

(declare-datatypes ((SeekEntryResult!6182 0))(
  ( (MissingZero!6182 (index!26975 (_ BitVec 32))) (Found!6182 (index!26976 (_ BitVec 32))) (Intermediate!6182 (undefined!6994 Bool) (index!26977 (_ BitVec 32)) (x!55803 (_ BitVec 32))) (Undefined!6182) (MissingVacant!6182 (index!26978 (_ BitVec 32))) )
))
(declare-fun lt!270211 () SeekEntryResult!6182)

(assert (=> b!595016 (= res!381091 (or (= lt!270211 (MissingZero!6182 i!1108)) (= lt!270211 (MissingVacant!6182 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36949 (_ BitVec 32)) SeekEntryResult!6182)

(assert (=> b!595016 (= lt!270211 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!595017 () Bool)

(declare-fun e!339967 () Bool)

(declare-fun lt!270205 () SeekEntryResult!6182)

(declare-fun lt!270216 () SeekEntryResult!6182)

(assert (=> b!595017 (= e!339967 (= lt!270205 lt!270216))))

(declare-fun b!595018 () Bool)

(declare-fun res!381083 () Bool)

(assert (=> b!595018 (=> res!381083 e!339965)))

(assert (=> b!595018 (= res!381083 (contains!2933 Nil!11826 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595019 () Bool)

(declare-fun res!381098 () Bool)

(assert (=> b!595019 (=> (not res!381098) (not e!339966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595019 (= res!381098 (validKeyInArray!0 k!1786))))

(declare-fun b!595020 () Bool)

(declare-fun res!381092 () Bool)

(assert (=> b!595020 (=> (not res!381092) (not e!339966))))

(declare-fun arrayContainsKey!0 (array!36949 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595020 (= res!381092 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595021 () Bool)

(declare-fun e!339964 () Bool)

(assert (=> b!595021 (= e!339964 e!339965)))

(declare-fun res!381095 () Bool)

(assert (=> b!595021 (=> res!381095 e!339965)))

(assert (=> b!595021 (= res!381095 (or (bvsge (size!18099 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18099 a!2986))))))

(assert (=> b!595021 (arrayContainsKey!0 lt!270209 (select (arr!17735 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270208 () Unit!18672)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36949 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18672)

(assert (=> b!595021 (= lt!270208 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270209 (select (arr!17735 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!595009 () Bool)

(declare-fun e!339970 () Bool)

(assert (=> b!595009 (= e!339970 e!339964)))

(declare-fun res!381093 () Bool)

(assert (=> b!595009 (=> res!381093 e!339964)))

(assert (=> b!595009 (= res!381093 (or (not (= (select (arr!17735 a!2986) j!136) lt!270213)) (not (= (select (arr!17735 a!2986) j!136) lt!270210)) (bvsge j!136 index!984)))))

(assert (=> b!595009 e!339960))

(declare-fun res!381082 () Bool)

(assert (=> b!595009 (=> (not res!381082) (not e!339960))))

(assert (=> b!595009 (= res!381082 (= lt!270210 (select (arr!17735 a!2986) j!136)))))

(assert (=> b!595009 (= lt!270210 (select (store (arr!17735 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!381086 () Bool)

(assert (=> start!54526 (=> (not res!381086) (not e!339966))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54526 (= res!381086 (validMask!0 mask!3053))))

(assert (=> start!54526 e!339966))

(assert (=> start!54526 true))

(declare-fun array_inv!13509 (array!36949) Bool)

(assert (=> start!54526 (array_inv!13509 a!2986)))

(declare-fun b!595022 () Bool)

(declare-fun e!339968 () Bool)

(assert (=> b!595022 (= e!339968 (not e!339970))))

(declare-fun res!381089 () Bool)

(assert (=> b!595022 (=> res!381089 e!339970)))

(declare-fun lt!270214 () SeekEntryResult!6182)

(assert (=> b!595022 (= res!381089 (not (= lt!270214 (Found!6182 index!984))))))

(declare-fun lt!270207 () Unit!18672)

(assert (=> b!595022 (= lt!270207 e!339961)))

(declare-fun c!67331 () Bool)

(assert (=> b!595022 (= c!67331 (= lt!270214 Undefined!6182))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36949 (_ BitVec 32)) SeekEntryResult!6182)

(assert (=> b!595022 (= lt!270214 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270213 lt!270209 mask!3053))))

(assert (=> b!595022 e!339967))

(declare-fun res!381088 () Bool)

(assert (=> b!595022 (=> (not res!381088) (not e!339967))))

(declare-fun lt!270206 () (_ BitVec 32))

(assert (=> b!595022 (= res!381088 (= lt!270216 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270206 vacantSpotIndex!68 lt!270213 lt!270209 mask!3053)))))

(assert (=> b!595022 (= lt!270216 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270206 vacantSpotIndex!68 (select (arr!17735 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!595022 (= lt!270213 (select (store (arr!17735 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270215 () Unit!18672)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36949 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18672)

(assert (=> b!595022 (= lt!270215 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270206 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595022 (= lt!270206 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595023 () Bool)

(declare-fun res!381079 () Bool)

(assert (=> b!595023 (=> (not res!381079) (not e!339963))))

(declare-fun arrayNoDuplicates!0 (array!36949 (_ BitVec 32) List!11829) Bool)

(assert (=> b!595023 (= res!381079 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11826))))

(declare-fun b!595024 () Bool)

(declare-fun res!381084 () Bool)

(assert (=> b!595024 (=> (not res!381084) (not e!339966))))

(assert (=> b!595024 (= res!381084 (validKeyInArray!0 (select (arr!17735 a!2986) j!136)))))

(declare-fun b!595025 () Bool)

(declare-fun e!339959 () Bool)

(assert (=> b!595025 (= e!339958 e!339959)))

(declare-fun res!381081 () Bool)

(assert (=> b!595025 (=> (not res!381081) (not e!339959))))

(assert (=> b!595025 (= res!381081 (arrayContainsKey!0 lt!270209 (select (arr!17735 a!2986) j!136) j!136))))

(declare-fun b!595026 () Bool)

(assert (=> b!595026 (= e!339959 (arrayContainsKey!0 lt!270209 (select (arr!17735 a!2986) j!136) index!984))))

(declare-fun b!595027 () Bool)

(declare-fun res!381094 () Bool)

(assert (=> b!595027 (=> (not res!381094) (not e!339963))))

(assert (=> b!595027 (= res!381094 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17735 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595028 () Bool)

(assert (=> b!595028 (= e!339969 e!339968)))

(declare-fun res!381078 () Bool)

(assert (=> b!595028 (=> (not res!381078) (not e!339968))))

(assert (=> b!595028 (= res!381078 (and (= lt!270205 (Found!6182 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17735 a!2986) index!984) (select (arr!17735 a!2986) j!136))) (not (= (select (arr!17735 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!595028 (= lt!270205 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17735 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!54526 res!381086) b!595006))

(assert (= (and b!595006 res!381087) b!595024))

(assert (= (and b!595024 res!381084) b!595019))

(assert (= (and b!595019 res!381098) b!595020))

(assert (= (and b!595020 res!381092) b!595016))

(assert (= (and b!595016 res!381091) b!595008))

(assert (= (and b!595008 res!381097) b!595023))

(assert (= (and b!595023 res!381079) b!595027))

(assert (= (and b!595027 res!381094) b!595011))

(assert (= (and b!595011 res!381090) b!595028))

(assert (= (and b!595028 res!381078) b!595022))

(assert (= (and b!595022 res!381088) b!595017))

(assert (= (and b!595022 c!67331) b!595007))

(assert (= (and b!595022 (not c!67331)) b!595012))

(assert (= (and b!595022 (not res!381089)) b!595009))

(assert (= (and b!595009 res!381082) b!595015))

(assert (= (and b!595015 (not res!381096)) b!595025))

(assert (= (and b!595025 res!381081) b!595026))

(assert (= (and b!595009 (not res!381093)) b!595021))

(assert (= (and b!595021 (not res!381095)) b!595010))

(assert (= (and b!595010 (not res!381080)) b!595018))

(assert (= (and b!595018 (not res!381083)) b!595014))

(assert (= (and b!595014 (not res!381085)) b!595013))

(declare-fun m!572741 () Bool)

(assert (=> b!595027 m!572741))

(declare-fun m!572743 () Bool)

(assert (=> b!595026 m!572743))

(assert (=> b!595026 m!572743))

(declare-fun m!572745 () Bool)

(assert (=> b!595026 m!572745))

(declare-fun m!572747 () Bool)

(assert (=> b!595013 m!572747))

(declare-fun m!572749 () Bool)

(assert (=> b!595023 m!572749))

(declare-fun m!572751 () Bool)

(assert (=> b!595019 m!572751))

(declare-fun m!572753 () Bool)

(assert (=> b!595018 m!572753))

(declare-fun m!572755 () Bool)

(assert (=> b!595014 m!572755))

(assert (=> b!595024 m!572743))

(assert (=> b!595024 m!572743))

(declare-fun m!572757 () Bool)

(assert (=> b!595024 m!572757))

(assert (=> b!595021 m!572743))

(assert (=> b!595021 m!572743))

(declare-fun m!572759 () Bool)

(assert (=> b!595021 m!572759))

(assert (=> b!595021 m!572743))

(declare-fun m!572761 () Bool)

(assert (=> b!595021 m!572761))

(assert (=> b!595009 m!572743))

(declare-fun m!572763 () Bool)

(assert (=> b!595009 m!572763))

(declare-fun m!572765 () Bool)

(assert (=> b!595009 m!572765))

(assert (=> b!595025 m!572743))

(assert (=> b!595025 m!572743))

(declare-fun m!572767 () Bool)

(assert (=> b!595025 m!572767))

(assert (=> b!595011 m!572763))

(declare-fun m!572769 () Bool)

(assert (=> b!595011 m!572769))

(declare-fun m!572771 () Bool)

(assert (=> b!595028 m!572771))

(assert (=> b!595028 m!572743))

(assert (=> b!595028 m!572743))

(declare-fun m!572773 () Bool)

(assert (=> b!595028 m!572773))

(declare-fun m!572775 () Bool)

(assert (=> b!595010 m!572775))

(declare-fun m!572777 () Bool)

(assert (=> b!595016 m!572777))

(assert (=> b!595015 m!572743))

(declare-fun m!572779 () Bool)

(assert (=> b!595022 m!572779))

(declare-fun m!572781 () Bool)

(assert (=> b!595022 m!572781))

(assert (=> b!595022 m!572743))

(assert (=> b!595022 m!572743))

(declare-fun m!572783 () Bool)

(assert (=> b!595022 m!572783))

(assert (=> b!595022 m!572763))

(declare-fun m!572785 () Bool)

(assert (=> b!595022 m!572785))

(declare-fun m!572787 () Bool)

(assert (=> b!595022 m!572787))

(declare-fun m!572789 () Bool)

(assert (=> b!595022 m!572789))

(declare-fun m!572791 () Bool)

(assert (=> b!595020 m!572791))

(declare-fun m!572793 () Bool)

(assert (=> b!595008 m!572793))

(declare-fun m!572795 () Bool)

(assert (=> start!54526 m!572795))

(declare-fun m!572797 () Bool)

(assert (=> start!54526 m!572797))

(push 1)

