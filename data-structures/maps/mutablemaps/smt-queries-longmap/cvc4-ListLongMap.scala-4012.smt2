; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54556 () Bool)

(assert start!54556)

(declare-fun res!382032 () Bool)

(declare-fun e!340553 () Bool)

(assert (=> start!54556 (=> (not res!382032) (not e!340553))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54556 (= res!382032 (validMask!0 mask!3053))))

(assert (=> start!54556 e!340553))

(assert (=> start!54556 true))

(declare-datatypes ((array!36979 0))(
  ( (array!36980 (arr!17750 (Array (_ BitVec 32) (_ BitVec 64))) (size!18114 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36979)

(declare-fun array_inv!13524 (array!36979) Bool)

(assert (=> start!54556 (array_inv!13524 a!2986)))

(declare-fun b!596041 () Bool)

(declare-fun res!382038 () Bool)

(declare-fun e!340544 () Bool)

(assert (=> b!596041 (=> res!382038 e!340544)))

(declare-datatypes ((List!11844 0))(
  ( (Nil!11841) (Cons!11840 (h!12885 (_ BitVec 64)) (t!18080 List!11844)) )
))
(declare-fun noDuplicate!264 (List!11844) Bool)

(assert (=> b!596041 (= res!382038 (not (noDuplicate!264 Nil!11841)))))

(declare-fun b!596042 () Bool)

(declare-fun e!340543 () Bool)

(declare-datatypes ((SeekEntryResult!6197 0))(
  ( (MissingZero!6197 (index!27035 (_ BitVec 32))) (Found!6197 (index!27036 (_ BitVec 32))) (Intermediate!6197 (undefined!7009 Bool) (index!27037 (_ BitVec 32)) (x!55858 (_ BitVec 32))) (Undefined!6197) (MissingVacant!6197 (index!27038 (_ BitVec 32))) )
))
(declare-fun lt!270749 () SeekEntryResult!6197)

(declare-fun lt!270755 () SeekEntryResult!6197)

(assert (=> b!596042 (= e!340543 (= lt!270749 lt!270755))))

(declare-fun b!596043 () Bool)

(declare-fun res!382039 () Bool)

(assert (=> b!596043 (=> res!382039 e!340544)))

(declare-fun contains!2948 (List!11844 (_ BitVec 64)) Bool)

(assert (=> b!596043 (= res!382039 (contains!2948 Nil!11841 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596044 () Bool)

(declare-fun e!340546 () Bool)

(declare-fun e!340549 () Bool)

(assert (=> b!596044 (= e!340546 e!340549)))

(declare-fun res!382036 () Bool)

(assert (=> b!596044 (=> (not res!382036) (not e!340549))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!596044 (= res!382036 (= (select (store (arr!17750 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!270756 () array!36979)

(assert (=> b!596044 (= lt!270756 (array!36980 (store (arr!17750 a!2986) i!1108 k!1786) (size!18114 a!2986)))))

(declare-fun b!596045 () Bool)

(declare-fun e!340554 () Bool)

(assert (=> b!596045 (= e!340549 e!340554)))

(declare-fun res!382035 () Bool)

(assert (=> b!596045 (=> (not res!382035) (not e!340554))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!596045 (= res!382035 (and (= lt!270749 (Found!6197 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17750 a!2986) index!984) (select (arr!17750 a!2986) j!136))) (not (= (select (arr!17750 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36979 (_ BitVec 32)) SeekEntryResult!6197)

(assert (=> b!596045 (= lt!270749 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17750 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!596046 () Bool)

(declare-fun e!340552 () Bool)

(assert (=> b!596046 (= e!340554 (not e!340552))))

(declare-fun res!382042 () Bool)

(assert (=> b!596046 (=> res!382042 e!340552)))

(declare-fun lt!270745 () SeekEntryResult!6197)

(assert (=> b!596046 (= res!382042 (not (= lt!270745 (Found!6197 index!984))))))

(declare-datatypes ((Unit!18732 0))(
  ( (Unit!18733) )
))
(declare-fun lt!270753 () Unit!18732)

(declare-fun e!340551 () Unit!18732)

(assert (=> b!596046 (= lt!270753 e!340551)))

(declare-fun c!67376 () Bool)

(assert (=> b!596046 (= c!67376 (= lt!270745 Undefined!6197))))

(declare-fun lt!270747 () (_ BitVec 64))

(assert (=> b!596046 (= lt!270745 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!270747 lt!270756 mask!3053))))

(assert (=> b!596046 e!340543))

(declare-fun res!382025 () Bool)

(assert (=> b!596046 (=> (not res!382025) (not e!340543))))

(declare-fun lt!270746 () (_ BitVec 32))

(assert (=> b!596046 (= res!382025 (= lt!270755 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270746 vacantSpotIndex!68 lt!270747 lt!270756 mask!3053)))))

(assert (=> b!596046 (= lt!270755 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!270746 vacantSpotIndex!68 (select (arr!17750 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!596046 (= lt!270747 (select (store (arr!17750 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!270751 () Unit!18732)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36979 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18732)

(assert (=> b!596046 (= lt!270751 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!270746 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!596046 (= lt!270746 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!596047 () Bool)

(declare-fun res!382031 () Bool)

(assert (=> b!596047 (=> (not res!382031) (not e!340546))))

(assert (=> b!596047 (= res!382031 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17750 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!596048 () Bool)

(declare-fun e!340545 () Bool)

(declare-fun e!340547 () Bool)

(assert (=> b!596048 (= e!340545 e!340547)))

(declare-fun res!382037 () Bool)

(assert (=> b!596048 (=> res!382037 e!340547)))

(declare-fun lt!270752 () (_ BitVec 64))

(assert (=> b!596048 (= res!382037 (or (not (= (select (arr!17750 a!2986) j!136) lt!270747)) (not (= (select (arr!17750 a!2986) j!136) lt!270752)) (bvsge j!136 index!984)))))

(declare-fun b!596049 () Bool)

(assert (=> b!596049 (= e!340544 true)))

(declare-fun lt!270754 () Bool)

(assert (=> b!596049 (= lt!270754 (contains!2948 Nil!11841 k!1786))))

(declare-fun b!596050 () Bool)

(assert (=> b!596050 (= e!340553 e!340546)))

(declare-fun res!382043 () Bool)

(assert (=> b!596050 (=> (not res!382043) (not e!340546))))

(declare-fun lt!270750 () SeekEntryResult!6197)

(assert (=> b!596050 (= res!382043 (or (= lt!270750 (MissingZero!6197 i!1108)) (= lt!270750 (MissingVacant!6197 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36979 (_ BitVec 32)) SeekEntryResult!6197)

(assert (=> b!596050 (= lt!270750 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!596051 () Bool)

(declare-fun e!340550 () Bool)

(assert (=> b!596051 (= e!340552 e!340550)))

(declare-fun res!382041 () Bool)

(assert (=> b!596051 (=> res!382041 e!340550)))

(assert (=> b!596051 (= res!382041 (or (not (= (select (arr!17750 a!2986) j!136) lt!270747)) (not (= (select (arr!17750 a!2986) j!136) lt!270752)) (bvsge j!136 index!984)))))

(assert (=> b!596051 e!340545))

(declare-fun res!382033 () Bool)

(assert (=> b!596051 (=> (not res!382033) (not e!340545))))

(assert (=> b!596051 (= res!382033 (= lt!270752 (select (arr!17750 a!2986) j!136)))))

(assert (=> b!596051 (= lt!270752 (select (store (arr!17750 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!596052 () Bool)

(declare-fun res!382034 () Bool)

(assert (=> b!596052 (=> (not res!382034) (not e!340546))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36979 (_ BitVec 32)) Bool)

(assert (=> b!596052 (= res!382034 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!596053 () Bool)

(declare-fun res!382026 () Bool)

(assert (=> b!596053 (=> res!382026 e!340544)))

(assert (=> b!596053 (= res!382026 (contains!2948 Nil!11841 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!596054 () Bool)

(declare-fun res!382029 () Bool)

(assert (=> b!596054 (=> (not res!382029) (not e!340546))))

(declare-fun arrayNoDuplicates!0 (array!36979 (_ BitVec 32) List!11844) Bool)

(assert (=> b!596054 (= res!382029 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11841))))

(declare-fun b!596055 () Bool)

(declare-fun res!382027 () Bool)

(assert (=> b!596055 (=> (not res!382027) (not e!340553))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!596055 (= res!382027 (validKeyInArray!0 k!1786))))

(declare-fun b!596056 () Bool)

(assert (=> b!596056 (= e!340550 e!340544)))

(declare-fun res!382040 () Bool)

(assert (=> b!596056 (=> res!382040 e!340544)))

(assert (=> b!596056 (= res!382040 (or (bvsge (size!18114 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18114 a!2986))))))

(declare-fun arrayContainsKey!0 (array!36979 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!596056 (arrayContainsKey!0 lt!270756 (select (arr!17750 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!270748 () Unit!18732)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!36979 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18732)

(assert (=> b!596056 (= lt!270748 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!270756 (select (arr!17750 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!596057 () Bool)

(declare-fun e!340548 () Bool)

(assert (=> b!596057 (= e!340547 e!340548)))

(declare-fun res!382028 () Bool)

(assert (=> b!596057 (=> (not res!382028) (not e!340548))))

(assert (=> b!596057 (= res!382028 (arrayContainsKey!0 lt!270756 (select (arr!17750 a!2986) j!136) j!136))))

(declare-fun b!596058 () Bool)

(declare-fun res!382023 () Bool)

(assert (=> b!596058 (=> (not res!382023) (not e!340553))))

(assert (=> b!596058 (= res!382023 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!596059 () Bool)

(declare-fun Unit!18734 () Unit!18732)

(assert (=> b!596059 (= e!340551 Unit!18734)))

(assert (=> b!596059 false))

(declare-fun b!596060 () Bool)

(assert (=> b!596060 (= e!340548 (arrayContainsKey!0 lt!270756 (select (arr!17750 a!2986) j!136) index!984))))

(declare-fun b!596061 () Bool)

(declare-fun res!382024 () Bool)

(assert (=> b!596061 (=> (not res!382024) (not e!340553))))

(assert (=> b!596061 (= res!382024 (and (= (size!18114 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18114 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18114 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!596062 () Bool)

(declare-fun Unit!18735 () Unit!18732)

(assert (=> b!596062 (= e!340551 Unit!18735)))

(declare-fun b!596063 () Bool)

(declare-fun res!382030 () Bool)

(assert (=> b!596063 (=> (not res!382030) (not e!340553))))

(assert (=> b!596063 (= res!382030 (validKeyInArray!0 (select (arr!17750 a!2986) j!136)))))

(assert (= (and start!54556 res!382032) b!596061))

(assert (= (and b!596061 res!382024) b!596063))

(assert (= (and b!596063 res!382030) b!596055))

(assert (= (and b!596055 res!382027) b!596058))

(assert (= (and b!596058 res!382023) b!596050))

(assert (= (and b!596050 res!382043) b!596052))

(assert (= (and b!596052 res!382034) b!596054))

(assert (= (and b!596054 res!382029) b!596047))

(assert (= (and b!596047 res!382031) b!596044))

(assert (= (and b!596044 res!382036) b!596045))

(assert (= (and b!596045 res!382035) b!596046))

(assert (= (and b!596046 res!382025) b!596042))

(assert (= (and b!596046 c!67376) b!596059))

(assert (= (and b!596046 (not c!67376)) b!596062))

(assert (= (and b!596046 (not res!382042)) b!596051))

(assert (= (and b!596051 res!382033) b!596048))

(assert (= (and b!596048 (not res!382037)) b!596057))

(assert (= (and b!596057 res!382028) b!596060))

(assert (= (and b!596051 (not res!382041)) b!596056))

(assert (= (and b!596056 (not res!382040)) b!596041))

(assert (= (and b!596041 (not res!382038)) b!596053))

(assert (= (and b!596053 (not res!382026)) b!596043))

(assert (= (and b!596043 (not res!382039)) b!596049))

(declare-fun m!573611 () Bool)

(assert (=> b!596054 m!573611))

(declare-fun m!573613 () Bool)

(assert (=> b!596058 m!573613))

(declare-fun m!573615 () Bool)

(assert (=> b!596063 m!573615))

(assert (=> b!596063 m!573615))

(declare-fun m!573617 () Bool)

(assert (=> b!596063 m!573617))

(declare-fun m!573619 () Bool)

(assert (=> start!54556 m!573619))

(declare-fun m!573621 () Bool)

(assert (=> start!54556 m!573621))

(declare-fun m!573623 () Bool)

(assert (=> b!596047 m!573623))

(declare-fun m!573625 () Bool)

(assert (=> b!596044 m!573625))

(declare-fun m!573627 () Bool)

(assert (=> b!596044 m!573627))

(assert (=> b!596060 m!573615))

(assert (=> b!596060 m!573615))

(declare-fun m!573629 () Bool)

(assert (=> b!596060 m!573629))

(declare-fun m!573631 () Bool)

(assert (=> b!596053 m!573631))

(assert (=> b!596048 m!573615))

(declare-fun m!573633 () Bool)

(assert (=> b!596046 m!573633))

(declare-fun m!573635 () Bool)

(assert (=> b!596046 m!573635))

(assert (=> b!596046 m!573615))

(declare-fun m!573637 () Bool)

(assert (=> b!596046 m!573637))

(assert (=> b!596046 m!573615))

(assert (=> b!596046 m!573625))

(declare-fun m!573639 () Bool)

(assert (=> b!596046 m!573639))

(declare-fun m!573641 () Bool)

(assert (=> b!596046 m!573641))

(declare-fun m!573643 () Bool)

(assert (=> b!596046 m!573643))

(assert (=> b!596057 m!573615))

(assert (=> b!596057 m!573615))

(declare-fun m!573645 () Bool)

(assert (=> b!596057 m!573645))

(declare-fun m!573647 () Bool)

(assert (=> b!596052 m!573647))

(declare-fun m!573649 () Bool)

(assert (=> b!596049 m!573649))

(assert (=> b!596051 m!573615))

(assert (=> b!596051 m!573625))

(declare-fun m!573651 () Bool)

(assert (=> b!596051 m!573651))

(assert (=> b!596056 m!573615))

(assert (=> b!596056 m!573615))

(declare-fun m!573653 () Bool)

(assert (=> b!596056 m!573653))

(assert (=> b!596056 m!573615))

(declare-fun m!573655 () Bool)

(assert (=> b!596056 m!573655))

(declare-fun m!573657 () Bool)

(assert (=> b!596045 m!573657))

(assert (=> b!596045 m!573615))

(assert (=> b!596045 m!573615))

(declare-fun m!573659 () Bool)

(assert (=> b!596045 m!573659))

(declare-fun m!573661 () Bool)

(assert (=> b!596041 m!573661))

(declare-fun m!573663 () Bool)

(assert (=> b!596043 m!573663))

(declare-fun m!573665 () Bool)

(assert (=> b!596050 m!573665))

(declare-fun m!573667 () Bool)

(assert (=> b!596055 m!573667))

(push 1)

