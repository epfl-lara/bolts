; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54538 () Bool)

(assert start!54538)

(declare-fun b!595420 () Bool)

(declare-fun e!340200 () Bool)

(declare-fun e!340193 () Bool)

(assert (=> b!595420 (= e!340200 (not e!340193))))

(declare-fun res!381474 () Bool)

(assert (=> b!595420 (=> res!381474 e!340193)))

(declare-datatypes ((SeekEntryResult!6188 0))(
  ( (MissingZero!6188 (index!26999 (_ BitVec 32))) (Found!6188 (index!27000 (_ BitVec 32))) (Intermediate!6188 (undefined!7000 Bool) (index!27001 (_ BitVec 32)) (x!55825 (_ BitVec 32))) (Undefined!6188) (MissingVacant!6188 (index!27002 (_ BitVec 32))) )
))
(declare-fun lt!270426 () SeekEntryResult!6188)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!595420 (= res!381474 (not (= lt!270426 (Found!6188 index!984))))))

(declare-datatypes ((Unit!18696 0))(
  ( (Unit!18697) )
))
(declare-fun lt!270423 () Unit!18696)

(declare-fun e!340204 () Unit!18696)

(assert (=> b!595420 (= lt!270423 e!340204)))

(declare-fun c!67349 () Bool)

(assert (=> b!595420 (= c!67349 (= lt!270426 Undefined!6188))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!36961 0))(
  ( (array!36962 (arr!17741 (Array (_ BitVec 32) (_ BitVec 64))) (size!18105 (_ BitVec 32))) )
))
(declare-fun lt!270425 () array!36961)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!270429 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36961 (_ BitVec 32)) SeekEntryResult!6188)

(assert (=> b!595420 (= lt!270426 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270429 lt!270425 mask!3053))))

(declare-fun e!340202 () Bool)

(assert (=> b!595420 e!340202))

(declare-fun res!381458 () Bool)

(assert (=> b!595420 (=> (not res!381458) (not e!340202))))

(declare-fun lt!270431 () (_ BitVec 32))

(declare-fun lt!270421 () SeekEntryResult!6188)

(assert (=> b!595420 (= res!381458 (= lt!270421 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270431 vacantSpotIndex!68 lt!270429 lt!270425 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!36961)

(assert (=> b!595420 (= lt!270421 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270431 vacantSpotIndex!68 (select (arr!17741 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!595420 (= lt!270429 (select (store (arr!17741 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270428 () Unit!18696)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36961 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18696)

(assert (=> b!595420 (= lt!270428 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270431 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!595420 (= lt!270431 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!595421 () Bool)

(declare-fun res!381472 () Bool)

(declare-fun e!340194 () Bool)

(assert (=> b!595421 (=> (not res!381472) (not e!340194))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!595421 (= res!381472 (validKeyInArray!0 k!1786))))

(declare-fun b!595422 () Bool)

(declare-fun lt!270422 () SeekEntryResult!6188)

(assert (=> b!595422 (= e!340202 (= lt!270422 lt!270421))))

(declare-fun b!595423 () Bool)

(declare-fun res!381473 () Bool)

(assert (=> b!595423 (=> (not res!381473) (not e!340194))))

(assert (=> b!595423 (= res!381473 (and (= (size!18105 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18105 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18105 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!595424 () Bool)

(declare-fun e!340192 () Bool)

(declare-fun e!340196 () Bool)

(assert (=> b!595424 (= e!340192 e!340196)))

(declare-fun res!381469 () Bool)

(assert (=> b!595424 (=> (not res!381469) (not e!340196))))

(declare-fun arrayContainsKey!0 (array!36961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!595424 (= res!381469 (arrayContainsKey!0 lt!270425 (select (arr!17741 a!2986) j!136) j!136))))

(declare-fun b!595425 () Bool)

(declare-fun Unit!18698 () Unit!18696)

(assert (=> b!595425 (= e!340204 Unit!18698)))

(declare-fun res!381465 () Bool)

(assert (=> start!54538 (=> (not res!381465) (not e!340194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54538 (= res!381465 (validMask!0 mask!3053))))

(assert (=> start!54538 e!340194))

(assert (=> start!54538 true))

(declare-fun array_inv!13515 (array!36961) Bool)

(assert (=> start!54538 (array_inv!13515 a!2986)))

(declare-fun b!595426 () Bool)

(declare-fun res!381463 () Bool)

(declare-fun e!340198 () Bool)

(assert (=> b!595426 (=> (not res!381463) (not e!340198))))

(declare-datatypes ((List!11835 0))(
  ( (Nil!11832) (Cons!11831 (h!12876 (_ BitVec 64)) (t!18071 List!11835)) )
))
(declare-fun arrayNoDuplicates!0 (array!36961 (_ BitVec 32) List!11835) Bool)

(assert (=> b!595426 (= res!381463 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11832))))

(declare-fun b!595427 () Bool)

(declare-fun res!381466 () Bool)

(assert (=> b!595427 (=> (not res!381466) (not e!340194))))

(assert (=> b!595427 (= res!381466 (validKeyInArray!0 (select (arr!17741 a!2986) j!136)))))

(declare-fun b!595428 () Bool)

(declare-fun res!381459 () Bool)

(assert (=> b!595428 (=> (not res!381459) (not e!340198))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36961 (_ BitVec 32)) Bool)

(assert (=> b!595428 (= res!381459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!595429 () Bool)

(declare-fun res!381462 () Bool)

(declare-fun e!340203 () Bool)

(assert (=> b!595429 (=> res!381462 e!340203)))

(declare-fun contains!2939 (List!11835 (_ BitVec 64)) Bool)

(assert (=> b!595429 (= res!381462 (contains!2939 Nil!11832 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595430 () Bool)

(declare-fun res!381470 () Bool)

(assert (=> b!595430 (=> res!381470 e!340203)))

(declare-fun noDuplicate!255 (List!11835) Bool)

(assert (=> b!595430 (= res!381470 (not (noDuplicate!255 Nil!11832)))))

(declare-fun b!595431 () Bool)

(declare-fun res!381471 () Bool)

(assert (=> b!595431 (=> res!381471 e!340203)))

(assert (=> b!595431 (= res!381471 (contains!2939 Nil!11832 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!595432 () Bool)

(declare-fun e!340201 () Bool)

(assert (=> b!595432 (= e!340201 e!340192)))

(declare-fun res!381457 () Bool)

(assert (=> b!595432 (=> res!381457 e!340192)))

(declare-fun lt!270424 () (_ BitVec 64))

(assert (=> b!595432 (= res!381457 (or (not (= (select (arr!17741 a!2986) j!136) lt!270429)) (not (= (select (arr!17741 a!2986) j!136) lt!270424)) (bvsge j!136 index!984)))))

(declare-fun b!595433 () Bool)

(declare-fun Unit!18699 () Unit!18696)

(assert (=> b!595433 (= e!340204 Unit!18699)))

(assert (=> b!595433 false))

(declare-fun b!595434 () Bool)

(declare-fun e!340199 () Bool)

(assert (=> b!595434 (= e!340198 e!340199)))

(declare-fun res!381461 () Bool)

(assert (=> b!595434 (=> (not res!381461) (not e!340199))))

(assert (=> b!595434 (= res!381461 (= (select (store (arr!17741 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!595434 (= lt!270425 (array!36962 (store (arr!17741 a!2986) i!1108 k!1786) (size!18105 a!2986)))))

(declare-fun b!595435 () Bool)

(declare-fun res!381464 () Bool)

(assert (=> b!595435 (=> (not res!381464) (not e!340198))))

(assert (=> b!595435 (= res!381464 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17741 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!595436 () Bool)

(assert (=> b!595436 (= e!340196 (arrayContainsKey!0 lt!270425 (select (arr!17741 a!2986) j!136) index!984))))

(declare-fun b!595437 () Bool)

(declare-fun e!340195 () Bool)

(assert (=> b!595437 (= e!340193 e!340195)))

(declare-fun res!381476 () Bool)

(assert (=> b!595437 (=> res!381476 e!340195)))

(assert (=> b!595437 (= res!381476 (or (not (= (select (arr!17741 a!2986) j!136) lt!270429)) (not (= (select (arr!17741 a!2986) j!136) lt!270424)) (bvsge j!136 index!984)))))

(assert (=> b!595437 e!340201))

(declare-fun res!381475 () Bool)

(assert (=> b!595437 (=> (not res!381475) (not e!340201))))

(assert (=> b!595437 (= res!381475 (= lt!270424 (select (arr!17741 a!2986) j!136)))))

(assert (=> b!595437 (= lt!270424 (select (store (arr!17741 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!595438 () Bool)

(assert (=> b!595438 (= e!340199 e!340200)))

(declare-fun res!381456 () Bool)

(assert (=> b!595438 (=> (not res!381456) (not e!340200))))

(assert (=> b!595438 (= res!381456 (and (= lt!270422 (Found!6188 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17741 a!2986) index!984) (select (arr!17741 a!2986) j!136))) (not (= (select (arr!17741 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!595438 (= lt!270422 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17741 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!595439 () Bool)

(declare-fun res!381468 () Bool)

(assert (=> b!595439 (=> (not res!381468) (not e!340194))))

(assert (=> b!595439 (= res!381468 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!595440 () Bool)

(assert (=> b!595440 (= e!340194 e!340198)))

(declare-fun res!381460 () Bool)

(assert (=> b!595440 (=> (not res!381460) (not e!340198))))

(declare-fun lt!270430 () SeekEntryResult!6188)

(assert (=> b!595440 (= res!381460 (or (= lt!270430 (MissingZero!6188 i!1108)) (= lt!270430 (MissingVacant!6188 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36961 (_ BitVec 32)) SeekEntryResult!6188)

(assert (=> b!595440 (= lt!270430 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!595441 () Bool)

(assert (=> b!595441 (= e!340203 true)))

(declare-fun lt!270427 () Bool)

(assert (=> b!595441 (= lt!270427 (contains!2939 Nil!11832 k!1786))))

(declare-fun b!595442 () Bool)

(assert (=> b!595442 (= e!340195 e!340203)))

(declare-fun res!381467 () Bool)

(assert (=> b!595442 (=> res!381467 e!340203)))

(assert (=> b!595442 (= res!381467 (or (bvsge (size!18105 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18105 a!2986))))))

(assert (=> b!595442 (arrayContainsKey!0 lt!270425 (select (arr!17741 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270432 () Unit!18696)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36961 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18696)

(assert (=> b!595442 (= lt!270432 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270425 (select (arr!17741 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (= (and start!54538 res!381465) b!595423))

(assert (= (and b!595423 res!381473) b!595427))

(assert (= (and b!595427 res!381466) b!595421))

(assert (= (and b!595421 res!381472) b!595439))

(assert (= (and b!595439 res!381468) b!595440))

(assert (= (and b!595440 res!381460) b!595428))

(assert (= (and b!595428 res!381459) b!595426))

(assert (= (and b!595426 res!381463) b!595435))

(assert (= (and b!595435 res!381464) b!595434))

(assert (= (and b!595434 res!381461) b!595438))

(assert (= (and b!595438 res!381456) b!595420))

(assert (= (and b!595420 res!381458) b!595422))

(assert (= (and b!595420 c!67349) b!595433))

(assert (= (and b!595420 (not c!67349)) b!595425))

(assert (= (and b!595420 (not res!381474)) b!595437))

(assert (= (and b!595437 res!381475) b!595432))

(assert (= (and b!595432 (not res!381457)) b!595424))

(assert (= (and b!595424 res!381469) b!595436))

(assert (= (and b!595437 (not res!381476)) b!595442))

(assert (= (and b!595442 (not res!381467)) b!595430))

(assert (= (and b!595430 (not res!381470)) b!595431))

(assert (= (and b!595431 (not res!381471)) b!595429))

(assert (= (and b!595429 (not res!381462)) b!595441))

(declare-fun m!573089 () Bool)

(assert (=> b!595437 m!573089))

(declare-fun m!573091 () Bool)

(assert (=> b!595437 m!573091))

(declare-fun m!573093 () Bool)

(assert (=> b!595437 m!573093))

(declare-fun m!573095 () Bool)

(assert (=> b!595420 m!573095))

(declare-fun m!573097 () Bool)

(assert (=> b!595420 m!573097))

(assert (=> b!595420 m!573091))

(declare-fun m!573099 () Bool)

(assert (=> b!595420 m!573099))

(declare-fun m!573101 () Bool)

(assert (=> b!595420 m!573101))

(declare-fun m!573103 () Bool)

(assert (=> b!595420 m!573103))

(assert (=> b!595420 m!573089))

(declare-fun m!573105 () Bool)

(assert (=> b!595420 m!573105))

(assert (=> b!595420 m!573089))

(declare-fun m!573107 () Bool)

(assert (=> b!595435 m!573107))

(assert (=> b!595442 m!573089))

(assert (=> b!595442 m!573089))

(declare-fun m!573109 () Bool)

(assert (=> b!595442 m!573109))

(assert (=> b!595442 m!573089))

(declare-fun m!573111 () Bool)

(assert (=> b!595442 m!573111))

(declare-fun m!573113 () Bool)

(assert (=> b!595438 m!573113))

(assert (=> b!595438 m!573089))

(assert (=> b!595438 m!573089))

(declare-fun m!573115 () Bool)

(assert (=> b!595438 m!573115))

(declare-fun m!573117 () Bool)

(assert (=> b!595426 m!573117))

(declare-fun m!573119 () Bool)

(assert (=> b!595421 m!573119))

(assert (=> b!595424 m!573089))

(assert (=> b!595424 m!573089))

(declare-fun m!573121 () Bool)

(assert (=> b!595424 m!573121))

(declare-fun m!573123 () Bool)

(assert (=> b!595430 m!573123))

(declare-fun m!573125 () Bool)

(assert (=> b!595440 m!573125))

(assert (=> b!595436 m!573089))

(assert (=> b!595436 m!573089))

(declare-fun m!573127 () Bool)

(assert (=> b!595436 m!573127))

(assert (=> b!595432 m!573089))

(assert (=> b!595434 m!573091))

(declare-fun m!573129 () Bool)

(assert (=> b!595434 m!573129))

(declare-fun m!573131 () Bool)

(assert (=> b!595439 m!573131))

(declare-fun m!573133 () Bool)

(assert (=> start!54538 m!573133))

(declare-fun m!573135 () Bool)

(assert (=> start!54538 m!573135))

(declare-fun m!573137 () Bool)

(assert (=> b!595429 m!573137))

(declare-fun m!573139 () Bool)

(assert (=> b!595428 m!573139))

(declare-fun m!573141 () Bool)

(assert (=> b!595441 m!573141))

(declare-fun m!573143 () Bool)

(assert (=> b!595431 m!573143))

(assert (=> b!595427 m!573089))

(assert (=> b!595427 m!573089))

(declare-fun m!573145 () Bool)

(assert (=> b!595427 m!573145))

(push 1)

