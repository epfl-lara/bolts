; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55138 () Bool)

(assert start!55138)

(declare-fun b!603451 () Bool)

(declare-fun e!345230 () Bool)

(declare-datatypes ((SeekEntryResult!6287 0))(
  ( (MissingZero!6287 (index!27410 (_ BitVec 32))) (Found!6287 (index!27411 (_ BitVec 32))) (Intermediate!6287 (undefined!7099 Bool) (index!27412 (_ BitVec 32)) (x!56233 (_ BitVec 32))) (Undefined!6287) (MissingVacant!6287 (index!27413 (_ BitVec 32))) )
))
(declare-fun lt!275096 () SeekEntryResult!6287)

(declare-fun lt!275102 () SeekEntryResult!6287)

(assert (=> b!603451 (= e!345230 (= lt!275096 lt!275102))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!37174 0))(
  ( (array!37175 (arr!17840 (Array (_ BitVec 32) (_ BitVec 64))) (size!18204 (_ BitVec 32))) )
))
(declare-fun lt!275100 () array!37174)

(declare-fun b!603452 () Bool)

(declare-fun e!345243 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun a!2986 () array!37174)

(declare-fun arrayContainsKey!0 (array!37174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!603452 (= e!345243 (arrayContainsKey!0 lt!275100 (select (arr!17840 a!2986) j!136) index!984))))

(declare-fun b!603453 () Bool)

(declare-fun res!387686 () Bool)

(declare-fun e!345244 () Bool)

(assert (=> b!603453 (=> (not res!387686) (not e!345244))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!603453 (= res!387686 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!603454 () Bool)

(declare-fun e!345233 () Bool)

(declare-fun e!345232 () Bool)

(assert (=> b!603454 (= e!345233 e!345232)))

(declare-fun res!387694 () Bool)

(assert (=> b!603454 (=> res!387694 e!345232)))

(declare-fun lt!275099 () (_ BitVec 64))

(declare-fun lt!275098 () (_ BitVec 64))

(assert (=> b!603454 (= res!387694 (or (not (= (select (arr!17840 a!2986) j!136) lt!275098)) (not (= (select (arr!17840 a!2986) j!136) lt!275099))))))

(declare-fun e!345231 () Bool)

(assert (=> b!603454 e!345231))

(declare-fun res!387685 () Bool)

(assert (=> b!603454 (=> (not res!387685) (not e!345231))))

(assert (=> b!603454 (= res!387685 (= lt!275099 (select (arr!17840 a!2986) j!136)))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!603454 (= lt!275099 (select (store (arr!17840 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!603455 () Bool)

(declare-datatypes ((Unit!19150 0))(
  ( (Unit!19151) )
))
(declare-fun e!345241 () Unit!19150)

(declare-fun Unit!19152 () Unit!19150)

(assert (=> b!603455 (= e!345241 Unit!19152)))

(declare-fun lt!275101 () Unit!19150)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37174 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19150)

(assert (=> b!603455 (= lt!275101 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!275100 (select (arr!17840 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!603455 (arrayContainsKey!0 lt!275100 (select (arr!17840 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!275093 () Unit!19150)

(declare-datatypes ((List!11934 0))(
  ( (Nil!11931) (Cons!11930 (h!12975 (_ BitVec 64)) (t!18170 List!11934)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37174 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11934) Unit!19150)

(assert (=> b!603455 (= lt!275093 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11931))))

(declare-fun arrayNoDuplicates!0 (array!37174 (_ BitVec 32) List!11934) Bool)

(assert (=> b!603455 (arrayNoDuplicates!0 lt!275100 #b00000000000000000000000000000000 Nil!11931)))

(declare-fun lt!275097 () Unit!19150)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37174 (_ BitVec 32) (_ BitVec 32)) Unit!19150)

(assert (=> b!603455 (= lt!275097 (lemmaNoDuplicateFromThenFromBigger!0 lt!275100 #b00000000000000000000000000000000 j!136))))

(assert (=> b!603455 (arrayNoDuplicates!0 lt!275100 j!136 Nil!11931)))

(declare-fun lt!275092 () Unit!19150)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37174 (_ BitVec 64) (_ BitVec 32) List!11934) Unit!19150)

(assert (=> b!603455 (= lt!275092 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!275100 (select (arr!17840 a!2986) j!136) j!136 Nil!11931))))

(assert (=> b!603455 false))

(declare-fun b!603456 () Bool)

(declare-fun e!345242 () Bool)

(declare-fun e!345239 () Bool)

(assert (=> b!603456 (= e!345242 e!345239)))

(declare-fun res!387683 () Bool)

(assert (=> b!603456 (=> (not res!387683) (not e!345239))))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!603456 (= res!387683 (and (= lt!275096 (Found!6287 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17840 a!2986) index!984) (select (arr!17840 a!2986) j!136))) (not (= (select (arr!17840 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37174 (_ BitVec 32)) SeekEntryResult!6287)

(assert (=> b!603456 (= lt!275096 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17840 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!603457 () Bool)

(declare-fun res!387701 () Bool)

(assert (=> b!603457 (=> (not res!387701) (not e!345244))))

(assert (=> b!603457 (= res!387701 (and (= (size!18204 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18204 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18204 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!387690 () Bool)

(assert (=> start!55138 (=> (not res!387690) (not e!345244))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55138 (= res!387690 (validMask!0 mask!3053))))

(assert (=> start!55138 e!345244))

(assert (=> start!55138 true))

(declare-fun array_inv!13614 (array!37174) Bool)

(assert (=> start!55138 (array_inv!13614 a!2986)))

(declare-fun b!603458 () Bool)

(declare-fun res!387699 () Bool)

(assert (=> b!603458 (=> (not res!387699) (not e!345244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!603458 (= res!387699 (validKeyInArray!0 k!1786))))

(declare-fun b!603459 () Bool)

(declare-fun e!345236 () Bool)

(assert (=> b!603459 (= e!345236 e!345243)))

(declare-fun res!387688 () Bool)

(assert (=> b!603459 (=> (not res!387688) (not e!345243))))

(assert (=> b!603459 (= res!387688 (arrayContainsKey!0 lt!275100 (select (arr!17840 a!2986) j!136) j!136))))

(declare-fun b!603460 () Bool)

(assert (=> b!603460 (= e!345239 (not e!345233))))

(declare-fun res!387696 () Bool)

(assert (=> b!603460 (=> res!387696 e!345233)))

(declare-fun lt!275106 () SeekEntryResult!6287)

(assert (=> b!603460 (= res!387696 (not (= lt!275106 (Found!6287 index!984))))))

(declare-fun lt!275094 () Unit!19150)

(declare-fun e!345238 () Unit!19150)

(assert (=> b!603460 (= lt!275094 e!345238)))

(declare-fun c!68251 () Bool)

(assert (=> b!603460 (= c!68251 (= lt!275106 Undefined!6287))))

(assert (=> b!603460 (= lt!275106 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!275098 lt!275100 mask!3053))))

(assert (=> b!603460 e!345230))

(declare-fun res!387684 () Bool)

(assert (=> b!603460 (=> (not res!387684) (not e!345230))))

(declare-fun lt!275104 () (_ BitVec 32))

(assert (=> b!603460 (= res!387684 (= lt!275102 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275104 vacantSpotIndex!68 lt!275098 lt!275100 mask!3053)))))

(assert (=> b!603460 (= lt!275102 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!275104 vacantSpotIndex!68 (select (arr!17840 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!603460 (= lt!275098 (select (store (arr!17840 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!275095 () Unit!19150)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37174 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19150)

(assert (=> b!603460 (= lt!275095 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!275104 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!603460 (= lt!275104 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!603461 () Bool)

(declare-fun res!387691 () Bool)

(declare-fun e!345240 () Bool)

(assert (=> b!603461 (=> (not res!387691) (not e!345240))))

(assert (=> b!603461 (= res!387691 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11931))))

(declare-fun b!603462 () Bool)

(assert (=> b!603462 (= e!345240 e!345242)))

(declare-fun res!387698 () Bool)

(assert (=> b!603462 (=> (not res!387698) (not e!345242))))

(assert (=> b!603462 (= res!387698 (= (select (store (arr!17840 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!603462 (= lt!275100 (array!37175 (store (arr!17840 a!2986) i!1108 k!1786) (size!18204 a!2986)))))

(declare-fun b!603463 () Bool)

(declare-fun e!345237 () Bool)

(assert (=> b!603463 (= e!345237 true)))

(declare-fun e!345234 () Bool)

(assert (=> b!603463 e!345234))

(declare-fun res!387692 () Bool)

(assert (=> b!603463 (=> (not res!387692) (not e!345234))))

(assert (=> b!603463 (= res!387692 (arrayContainsKey!0 lt!275100 (select (arr!17840 a!2986) j!136) j!136))))

(declare-fun b!603464 () Bool)

(declare-fun Unit!19153 () Unit!19150)

(assert (=> b!603464 (= e!345241 Unit!19153)))

(declare-fun b!603465 () Bool)

(assert (=> b!603465 (= e!345231 e!345236)))

(declare-fun res!387697 () Bool)

(assert (=> b!603465 (=> res!387697 e!345236)))

(assert (=> b!603465 (= res!387697 (or (not (= (select (arr!17840 a!2986) j!136) lt!275098)) (not (= (select (arr!17840 a!2986) j!136) lt!275099)) (bvsge j!136 index!984)))))

(declare-fun b!603466 () Bool)

(assert (=> b!603466 (= e!345234 (arrayContainsKey!0 lt!275100 (select (arr!17840 a!2986) j!136) index!984))))

(declare-fun b!603467 () Bool)

(declare-fun res!387693 () Bool)

(assert (=> b!603467 (=> (not res!387693) (not e!345244))))

(assert (=> b!603467 (= res!387693 (validKeyInArray!0 (select (arr!17840 a!2986) j!136)))))

(declare-fun b!603468 () Bool)

(assert (=> b!603468 (= e!345244 e!345240)))

(declare-fun res!387687 () Bool)

(assert (=> b!603468 (=> (not res!387687) (not e!345240))))

(declare-fun lt!275105 () SeekEntryResult!6287)

(assert (=> b!603468 (= res!387687 (or (= lt!275105 (MissingZero!6287 i!1108)) (= lt!275105 (MissingVacant!6287 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37174 (_ BitVec 32)) SeekEntryResult!6287)

(assert (=> b!603468 (= lt!275105 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!603469 () Bool)

(declare-fun res!387695 () Bool)

(assert (=> b!603469 (=> (not res!387695) (not e!345240))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37174 (_ BitVec 32)) Bool)

(assert (=> b!603469 (= res!387695 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!603470 () Bool)

(declare-fun res!387689 () Bool)

(assert (=> b!603470 (=> (not res!387689) (not e!345240))))

(assert (=> b!603470 (= res!387689 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17840 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!603471 () Bool)

(assert (=> b!603471 (= e!345232 e!345237)))

(declare-fun res!387700 () Bool)

(assert (=> b!603471 (=> res!387700 e!345237)))

(assert (=> b!603471 (= res!387700 (bvsge index!984 j!136))))

(declare-fun lt!275103 () Unit!19150)

(assert (=> b!603471 (= lt!275103 e!345241)))

(declare-fun c!68252 () Bool)

(assert (=> b!603471 (= c!68252 (bvslt j!136 index!984))))

(declare-fun b!603472 () Bool)

(declare-fun Unit!19154 () Unit!19150)

(assert (=> b!603472 (= e!345238 Unit!19154)))

(declare-fun b!603473 () Bool)

(declare-fun Unit!19155 () Unit!19150)

(assert (=> b!603473 (= e!345238 Unit!19155)))

(assert (=> b!603473 false))

(assert (= (and start!55138 res!387690) b!603457))

(assert (= (and b!603457 res!387701) b!603467))

(assert (= (and b!603467 res!387693) b!603458))

(assert (= (and b!603458 res!387699) b!603453))

(assert (= (and b!603453 res!387686) b!603468))

(assert (= (and b!603468 res!387687) b!603469))

(assert (= (and b!603469 res!387695) b!603461))

(assert (= (and b!603461 res!387691) b!603470))

(assert (= (and b!603470 res!387689) b!603462))

(assert (= (and b!603462 res!387698) b!603456))

(assert (= (and b!603456 res!387683) b!603460))

(assert (= (and b!603460 res!387684) b!603451))

(assert (= (and b!603460 c!68251) b!603473))

(assert (= (and b!603460 (not c!68251)) b!603472))

(assert (= (and b!603460 (not res!387696)) b!603454))

(assert (= (and b!603454 res!387685) b!603465))

(assert (= (and b!603465 (not res!387697)) b!603459))

(assert (= (and b!603459 res!387688) b!603452))

(assert (= (and b!603454 (not res!387694)) b!603471))

(assert (= (and b!603471 c!68252) b!603455))

(assert (= (and b!603471 (not c!68252)) b!603464))

(assert (= (and b!603471 (not res!387700)) b!603463))

(assert (= (and b!603463 res!387692) b!603466))

(declare-fun m!580491 () Bool)

(assert (=> b!603467 m!580491))

(assert (=> b!603467 m!580491))

(declare-fun m!580493 () Bool)

(assert (=> b!603467 m!580493))

(declare-fun m!580495 () Bool)

(assert (=> start!55138 m!580495))

(declare-fun m!580497 () Bool)

(assert (=> start!55138 m!580497))

(assert (=> b!603463 m!580491))

(assert (=> b!603463 m!580491))

(declare-fun m!580499 () Bool)

(assert (=> b!603463 m!580499))

(assert (=> b!603454 m!580491))

(declare-fun m!580501 () Bool)

(assert (=> b!603454 m!580501))

(declare-fun m!580503 () Bool)

(assert (=> b!603454 m!580503))

(declare-fun m!580505 () Bool)

(assert (=> b!603461 m!580505))

(declare-fun m!580507 () Bool)

(assert (=> b!603470 m!580507))

(assert (=> b!603459 m!580491))

(assert (=> b!603459 m!580491))

(assert (=> b!603459 m!580499))

(declare-fun m!580509 () Bool)

(assert (=> b!603458 m!580509))

(declare-fun m!580511 () Bool)

(assert (=> b!603469 m!580511))

(assert (=> b!603452 m!580491))

(assert (=> b!603452 m!580491))

(declare-fun m!580513 () Bool)

(assert (=> b!603452 m!580513))

(declare-fun m!580515 () Bool)

(assert (=> b!603453 m!580515))

(assert (=> b!603455 m!580491))

(declare-fun m!580517 () Bool)

(assert (=> b!603455 m!580517))

(assert (=> b!603455 m!580491))

(declare-fun m!580519 () Bool)

(assert (=> b!603455 m!580519))

(declare-fun m!580521 () Bool)

(assert (=> b!603455 m!580521))

(assert (=> b!603455 m!580491))

(declare-fun m!580523 () Bool)

(assert (=> b!603455 m!580523))

(declare-fun m!580525 () Bool)

(assert (=> b!603455 m!580525))

(assert (=> b!603455 m!580491))

(declare-fun m!580527 () Bool)

(assert (=> b!603455 m!580527))

(declare-fun m!580529 () Bool)

(assert (=> b!603455 m!580529))

(declare-fun m!580531 () Bool)

(assert (=> b!603468 m!580531))

(assert (=> b!603462 m!580501))

(declare-fun m!580533 () Bool)

(assert (=> b!603462 m!580533))

(declare-fun m!580535 () Bool)

(assert (=> b!603460 m!580535))

(declare-fun m!580537 () Bool)

(assert (=> b!603460 m!580537))

(assert (=> b!603460 m!580491))

(assert (=> b!603460 m!580501))

(declare-fun m!580539 () Bool)

(assert (=> b!603460 m!580539))

(declare-fun m!580541 () Bool)

(assert (=> b!603460 m!580541))

(declare-fun m!580543 () Bool)

(assert (=> b!603460 m!580543))

(assert (=> b!603460 m!580491))

(declare-fun m!580545 () Bool)

(assert (=> b!603460 m!580545))

(assert (=> b!603466 m!580491))

(assert (=> b!603466 m!580491))

(assert (=> b!603466 m!580513))

(assert (=> b!603465 m!580491))

(declare-fun m!580547 () Bool)

(assert (=> b!603456 m!580547))

(assert (=> b!603456 m!580491))

(assert (=> b!603456 m!580491))

(declare-fun m!580549 () Bool)

(assert (=> b!603456 m!580549))

(push 1)

