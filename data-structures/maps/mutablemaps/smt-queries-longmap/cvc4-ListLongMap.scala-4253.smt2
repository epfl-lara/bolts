; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59008 () Bool)

(assert start!59008)

(declare-fun b!650692 () Bool)

(declare-datatypes ((Unit!22192 0))(
  ( (Unit!22193) )
))
(declare-fun e!373351 () Unit!22192)

(declare-fun Unit!22194 () Unit!22192)

(assert (=> b!650692 (= e!373351 Unit!22194)))

(assert (=> b!650692 false))

(declare-fun b!650693 () Bool)

(declare-fun e!373343 () Bool)

(declare-fun e!373344 () Bool)

(assert (=> b!650693 (= e!373343 (not e!373344))))

(declare-fun res!421973 () Bool)

(assert (=> b!650693 (=> res!421973 e!373344)))

(declare-datatypes ((SeekEntryResult!6920 0))(
  ( (MissingZero!6920 (index!30029 (_ BitVec 32))) (Found!6920 (index!30030 (_ BitVec 32))) (Intermediate!6920 (undefined!7732 Bool) (index!30031 (_ BitVec 32)) (x!58839 (_ BitVec 32))) (Undefined!6920) (MissingVacant!6920 (index!30032 (_ BitVec 32))) )
))
(declare-fun lt!302491 () SeekEntryResult!6920)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!650693 (= res!421973 (not (= lt!302491 (Found!6920 index!984))))))

(declare-fun lt!302483 () Unit!22192)

(assert (=> b!650693 (= lt!302483 e!373351)))

(declare-fun c!74735 () Bool)

(assert (=> b!650693 (= c!74735 (= lt!302491 Undefined!6920))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38545 0))(
  ( (array!38546 (arr!18473 (Array (_ BitVec 32) (_ BitVec 64))) (size!18837 (_ BitVec 32))) )
))
(declare-fun lt!302496 () array!38545)

(declare-fun lt!302494 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38545 (_ BitVec 32)) SeekEntryResult!6920)

(assert (=> b!650693 (= lt!302491 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302494 lt!302496 mask!3053))))

(declare-fun e!373352 () Bool)

(assert (=> b!650693 e!373352))

(declare-fun res!421976 () Bool)

(assert (=> b!650693 (=> (not res!421976) (not e!373352))))

(declare-fun lt!302487 () SeekEntryResult!6920)

(declare-fun lt!302495 () (_ BitVec 32))

(assert (=> b!650693 (= res!421976 (= lt!302487 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302495 vacantSpotIndex!68 lt!302494 lt!302496 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38545)

(assert (=> b!650693 (= lt!302487 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302495 vacantSpotIndex!68 (select (arr!18473 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!650693 (= lt!302494 (select (store (arr!18473 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!302488 () Unit!22192)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38545 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22192)

(assert (=> b!650693 (= lt!302488 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302495 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650693 (= lt!302495 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!373350 () Bool)

(declare-fun b!650694 () Bool)

(declare-fun arrayContainsKey!0 (array!38545 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650694 (= e!373350 (arrayContainsKey!0 lt!302496 (select (arr!18473 a!2986) j!136) index!984))))

(declare-fun b!650695 () Bool)

(declare-fun res!421969 () Bool)

(declare-fun e!373355 () Bool)

(assert (=> b!650695 (=> (not res!421969) (not e!373355))))

(assert (=> b!650695 (= res!421969 (and (= (size!18837 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18837 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18837 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650696 () Bool)

(declare-fun e!373348 () Bool)

(declare-fun e!373353 () Bool)

(assert (=> b!650696 (= e!373348 e!373353)))

(declare-fun res!421967 () Bool)

(assert (=> b!650696 (=> (not res!421967) (not e!373353))))

(assert (=> b!650696 (= res!421967 (= (select (store (arr!18473 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650696 (= lt!302496 (array!38546 (store (arr!18473 a!2986) i!1108 k!1786) (size!18837 a!2986)))))

(declare-fun b!650697 () Bool)

(declare-fun Unit!22195 () Unit!22192)

(assert (=> b!650697 (= e!373351 Unit!22195)))

(declare-fun b!650698 () Bool)

(declare-fun res!421968 () Bool)

(assert (=> b!650698 (=> (not res!421968) (not e!373348))))

(declare-datatypes ((List!12567 0))(
  ( (Nil!12564) (Cons!12563 (h!13608 (_ BitVec 64)) (t!18803 List!12567)) )
))
(declare-fun arrayNoDuplicates!0 (array!38545 (_ BitVec 32) List!12567) Bool)

(assert (=> b!650698 (= res!421968 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12564))))

(declare-fun b!650699 () Bool)

(declare-fun res!421958 () Bool)

(assert (=> b!650699 (=> (not res!421958) (not e!373348))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38545 (_ BitVec 32)) Bool)

(assert (=> b!650699 (= res!421958 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650700 () Bool)

(assert (=> b!650700 (= e!373353 e!373343)))

(declare-fun res!421974 () Bool)

(assert (=> b!650700 (=> (not res!421974) (not e!373343))))

(declare-fun lt!302490 () SeekEntryResult!6920)

(assert (=> b!650700 (= res!421974 (and (= lt!302490 (Found!6920 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18473 a!2986) index!984) (select (arr!18473 a!2986) j!136))) (not (= (select (arr!18473 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!650700 (= lt!302490 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18473 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650701 () Bool)

(declare-fun e!373349 () Bool)

(declare-fun e!373346 () Bool)

(assert (=> b!650701 (= e!373349 e!373346)))

(declare-fun res!421963 () Bool)

(assert (=> b!650701 (=> res!421963 e!373346)))

(assert (=> b!650701 (= res!421963 (bvsge index!984 j!136))))

(declare-fun lt!302497 () Unit!22192)

(declare-fun e!373345 () Unit!22192)

(assert (=> b!650701 (= lt!302497 e!373345)))

(declare-fun c!74734 () Bool)

(assert (=> b!650701 (= c!74734 (bvslt j!136 index!984))))

(declare-fun e!373356 () Bool)

(declare-fun b!650702 () Bool)

(assert (=> b!650702 (= e!373356 (arrayContainsKey!0 lt!302496 (select (arr!18473 a!2986) j!136) index!984))))

(declare-fun b!650704 () Bool)

(assert (=> b!650704 (= e!373346 (or (bvsge (size!18837 a!2986) #b01111111111111111111111111111111) (bvsgt #b00000000000000000000000000000000 (size!18837 a!2986)) (bvsle index!984 (size!18837 a!2986))))))

(assert (=> b!650704 (arrayNoDuplicates!0 lt!302496 #b00000000000000000000000000000000 Nil!12564)))

(declare-fun lt!302499 () Unit!22192)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38545 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12567) Unit!22192)

(assert (=> b!650704 (= lt!302499 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12564))))

(assert (=> b!650704 (arrayContainsKey!0 lt!302496 (select (arr!18473 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302498 () Unit!22192)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38545 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22192)

(assert (=> b!650704 (= lt!302498 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302496 (select (arr!18473 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!650704 e!373350))

(declare-fun res!421959 () Bool)

(assert (=> b!650704 (=> (not res!421959) (not e!373350))))

(assert (=> b!650704 (= res!421959 (arrayContainsKey!0 lt!302496 (select (arr!18473 a!2986) j!136) j!136))))

(declare-fun b!650705 () Bool)

(assert (=> b!650705 (= e!373344 e!373349)))

(declare-fun res!421966 () Bool)

(assert (=> b!650705 (=> res!421966 e!373349)))

(declare-fun lt!302493 () (_ BitVec 64))

(assert (=> b!650705 (= res!421966 (or (not (= (select (arr!18473 a!2986) j!136) lt!302494)) (not (= (select (arr!18473 a!2986) j!136) lt!302493))))))

(declare-fun e!373347 () Bool)

(assert (=> b!650705 e!373347))

(declare-fun res!421961 () Bool)

(assert (=> b!650705 (=> (not res!421961) (not e!373347))))

(assert (=> b!650705 (= res!421961 (= lt!302493 (select (arr!18473 a!2986) j!136)))))

(assert (=> b!650705 (= lt!302493 (select (store (arr!18473 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!650706 () Bool)

(assert (=> b!650706 (= e!373352 (= lt!302490 lt!302487))))

(declare-fun b!650707 () Bool)

(declare-fun res!421965 () Bool)

(assert (=> b!650707 (=> (not res!421965) (not e!373348))))

(assert (=> b!650707 (= res!421965 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18473 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650708 () Bool)

(declare-fun e!373354 () Bool)

(assert (=> b!650708 (= e!373347 e!373354)))

(declare-fun res!421972 () Bool)

(assert (=> b!650708 (=> res!421972 e!373354)))

(assert (=> b!650708 (= res!421972 (or (not (= (select (arr!18473 a!2986) j!136) lt!302494)) (not (= (select (arr!18473 a!2986) j!136) lt!302493)) (bvsge j!136 index!984)))))

(declare-fun b!650709 () Bool)

(declare-fun Unit!22196 () Unit!22192)

(assert (=> b!650709 (= e!373345 Unit!22196)))

(declare-fun b!650710 () Bool)

(declare-fun res!421971 () Bool)

(assert (=> b!650710 (=> (not res!421971) (not e!373355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650710 (= res!421971 (validKeyInArray!0 (select (arr!18473 a!2986) j!136)))))

(declare-fun b!650711 () Bool)

(assert (=> b!650711 (= e!373354 e!373356)))

(declare-fun res!421970 () Bool)

(assert (=> b!650711 (=> (not res!421970) (not e!373356))))

(assert (=> b!650711 (= res!421970 (arrayContainsKey!0 lt!302496 (select (arr!18473 a!2986) j!136) j!136))))

(declare-fun b!650712 () Bool)

(declare-fun Unit!22197 () Unit!22192)

(assert (=> b!650712 (= e!373345 Unit!22197)))

(declare-fun lt!302492 () Unit!22192)

(assert (=> b!650712 (= lt!302492 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302496 (select (arr!18473 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!650712 (arrayContainsKey!0 lt!302496 (select (arr!18473 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302486 () Unit!22192)

(assert (=> b!650712 (= lt!302486 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12564))))

(assert (=> b!650712 (arrayNoDuplicates!0 lt!302496 #b00000000000000000000000000000000 Nil!12564)))

(declare-fun lt!302484 () Unit!22192)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38545 (_ BitVec 32) (_ BitVec 32)) Unit!22192)

(assert (=> b!650712 (= lt!302484 (lemmaNoDuplicateFromThenFromBigger!0 lt!302496 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650712 (arrayNoDuplicates!0 lt!302496 j!136 Nil!12564)))

(declare-fun lt!302485 () Unit!22192)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38545 (_ BitVec 64) (_ BitVec 32) List!12567) Unit!22192)

(assert (=> b!650712 (= lt!302485 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302496 (select (arr!18473 a!2986) j!136) j!136 Nil!12564))))

(assert (=> b!650712 false))

(declare-fun b!650713 () Bool)

(assert (=> b!650713 (= e!373355 e!373348)))

(declare-fun res!421975 () Bool)

(assert (=> b!650713 (=> (not res!421975) (not e!373348))))

(declare-fun lt!302489 () SeekEntryResult!6920)

(assert (=> b!650713 (= res!421975 (or (= lt!302489 (MissingZero!6920 i!1108)) (= lt!302489 (MissingVacant!6920 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38545 (_ BitVec 32)) SeekEntryResult!6920)

(assert (=> b!650713 (= lt!302489 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!650714 () Bool)

(declare-fun res!421964 () Bool)

(assert (=> b!650714 (=> (not res!421964) (not e!373355))))

(assert (=> b!650714 (= res!421964 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!421960 () Bool)

(assert (=> start!59008 (=> (not res!421960) (not e!373355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59008 (= res!421960 (validMask!0 mask!3053))))

(assert (=> start!59008 e!373355))

(assert (=> start!59008 true))

(declare-fun array_inv!14247 (array!38545) Bool)

(assert (=> start!59008 (array_inv!14247 a!2986)))

(declare-fun b!650703 () Bool)

(declare-fun res!421962 () Bool)

(assert (=> b!650703 (=> (not res!421962) (not e!373355))))

(assert (=> b!650703 (= res!421962 (validKeyInArray!0 k!1786))))

(assert (= (and start!59008 res!421960) b!650695))

(assert (= (and b!650695 res!421969) b!650710))

(assert (= (and b!650710 res!421971) b!650703))

(assert (= (and b!650703 res!421962) b!650714))

(assert (= (and b!650714 res!421964) b!650713))

(assert (= (and b!650713 res!421975) b!650699))

(assert (= (and b!650699 res!421958) b!650698))

(assert (= (and b!650698 res!421968) b!650707))

(assert (= (and b!650707 res!421965) b!650696))

(assert (= (and b!650696 res!421967) b!650700))

(assert (= (and b!650700 res!421974) b!650693))

(assert (= (and b!650693 res!421976) b!650706))

(assert (= (and b!650693 c!74735) b!650692))

(assert (= (and b!650693 (not c!74735)) b!650697))

(assert (= (and b!650693 (not res!421973)) b!650705))

(assert (= (and b!650705 res!421961) b!650708))

(assert (= (and b!650708 (not res!421972)) b!650711))

(assert (= (and b!650711 res!421970) b!650702))

(assert (= (and b!650705 (not res!421966)) b!650701))

(assert (= (and b!650701 c!74734) b!650712))

(assert (= (and b!650701 (not c!74734)) b!650709))

(assert (= (and b!650701 (not res!421963)) b!650704))

(assert (= (and b!650704 res!421959) b!650694))

(declare-fun m!623933 () Bool)

(assert (=> b!650693 m!623933))

(declare-fun m!623935 () Bool)

(assert (=> b!650693 m!623935))

(declare-fun m!623937 () Bool)

(assert (=> b!650693 m!623937))

(declare-fun m!623939 () Bool)

(assert (=> b!650693 m!623939))

(declare-fun m!623941 () Bool)

(assert (=> b!650693 m!623941))

(declare-fun m!623943 () Bool)

(assert (=> b!650693 m!623943))

(declare-fun m!623945 () Bool)

(assert (=> b!650693 m!623945))

(assert (=> b!650693 m!623935))

(declare-fun m!623947 () Bool)

(assert (=> b!650693 m!623947))

(declare-fun m!623949 () Bool)

(assert (=> start!59008 m!623949))

(declare-fun m!623951 () Bool)

(assert (=> start!59008 m!623951))

(assert (=> b!650705 m!623935))

(assert (=> b!650705 m!623937))

(declare-fun m!623953 () Bool)

(assert (=> b!650705 m!623953))

(assert (=> b!650696 m!623937))

(declare-fun m!623955 () Bool)

(assert (=> b!650696 m!623955))

(assert (=> b!650702 m!623935))

(assert (=> b!650702 m!623935))

(declare-fun m!623957 () Bool)

(assert (=> b!650702 m!623957))

(declare-fun m!623959 () Bool)

(assert (=> b!650713 m!623959))

(assert (=> b!650704 m!623935))

(declare-fun m!623961 () Bool)

(assert (=> b!650704 m!623961))

(assert (=> b!650704 m!623935))

(declare-fun m!623963 () Bool)

(assert (=> b!650704 m!623963))

(assert (=> b!650704 m!623935))

(declare-fun m!623965 () Bool)

(assert (=> b!650704 m!623965))

(declare-fun m!623967 () Bool)

(assert (=> b!650704 m!623967))

(declare-fun m!623969 () Bool)

(assert (=> b!650704 m!623969))

(assert (=> b!650704 m!623935))

(assert (=> b!650711 m!623935))

(assert (=> b!650711 m!623935))

(assert (=> b!650711 m!623965))

(declare-fun m!623971 () Bool)

(assert (=> b!650707 m!623971))

(declare-fun m!623973 () Bool)

(assert (=> b!650700 m!623973))

(assert (=> b!650700 m!623935))

(assert (=> b!650700 m!623935))

(declare-fun m!623975 () Bool)

(assert (=> b!650700 m!623975))

(declare-fun m!623977 () Bool)

(assert (=> b!650699 m!623977))

(assert (=> b!650712 m!623935))

(declare-fun m!623979 () Bool)

(assert (=> b!650712 m!623979))

(declare-fun m!623981 () Bool)

(assert (=> b!650712 m!623981))

(assert (=> b!650712 m!623935))

(declare-fun m!623983 () Bool)

(assert (=> b!650712 m!623983))

(declare-fun m!623985 () Bool)

(assert (=> b!650712 m!623985))

(assert (=> b!650712 m!623935))

(declare-fun m!623987 () Bool)

(assert (=> b!650712 m!623987))

(assert (=> b!650712 m!623967))

(assert (=> b!650712 m!623969))

(assert (=> b!650712 m!623935))

(assert (=> b!650710 m!623935))

(assert (=> b!650710 m!623935))

(declare-fun m!623989 () Bool)

(assert (=> b!650710 m!623989))

(assert (=> b!650708 m!623935))

(declare-fun m!623991 () Bool)

(assert (=> b!650698 m!623991))

(declare-fun m!623993 () Bool)

(assert (=> b!650703 m!623993))

(declare-fun m!623995 () Bool)

(assert (=> b!650714 m!623995))

(assert (=> b!650694 m!623935))

(assert (=> b!650694 m!623935))

(assert (=> b!650694 m!623957))

(push 1)

(assert (not b!650710))

(assert (not b!650711))

(assert (not b!650703))

(assert (not b!650712))

(assert (not b!650693))

(assert (not b!650698))

(assert (not b!650702))

(assert (not b!650713))

(assert (not b!650704))

(assert (not b!650694))

(assert (not start!59008))

(assert (not b!650700))

(assert (not b!650699))

(assert (not b!650714))

(check-sat)

(pop 1)

(push 1)

(check-sat)

