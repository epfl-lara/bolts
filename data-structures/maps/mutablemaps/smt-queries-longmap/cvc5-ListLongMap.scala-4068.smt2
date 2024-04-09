; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!55914 () Bool)

(assert start!55914)

(declare-fun b!611614 () Bool)

(declare-fun e!350521 () Bool)

(declare-fun e!350528 () Bool)

(assert (=> b!611614 (= e!350521 e!350528)))

(declare-fun res!393467 () Bool)

(assert (=> b!611614 (=> res!393467 e!350528)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!611614 (= res!393467 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!19606 0))(
  ( (Unit!19607) )
))
(declare-fun lt!279935 () Unit!19606)

(declare-fun e!350527 () Unit!19606)

(assert (=> b!611614 (= lt!279935 e!350527)))

(declare-fun c!69443 () Bool)

(assert (=> b!611614 (= c!69443 (bvslt j!136 index!984))))

(declare-fun b!611615 () Bool)

(assert (=> b!611615 (= e!350528 true)))

(declare-datatypes ((array!37347 0))(
  ( (array!37348 (arr!17916 (Array (_ BitVec 32) (_ BitVec 64))) (size!18280 (_ BitVec 32))) )
))
(declare-fun lt!279930 () array!37347)

(declare-datatypes ((List!12010 0))(
  ( (Nil!12007) (Cons!12006 (h!13051 (_ BitVec 64)) (t!18246 List!12010)) )
))
(declare-fun arrayNoDuplicates!0 (array!37347 (_ BitVec 32) List!12010) Bool)

(assert (=> b!611615 (arrayNoDuplicates!0 lt!279930 #b00000000000000000000000000000000 Nil!12007)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun lt!279929 () Unit!19606)

(declare-fun a!2986 () array!37347)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37347 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12010) Unit!19606)

(assert (=> b!611615 (= lt!279929 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12007))))

(declare-fun arrayContainsKey!0 (array!37347 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!611615 (arrayContainsKey!0 lt!279930 (select (arr!17916 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279928 () Unit!19606)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37347 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19606)

(assert (=> b!611615 (= lt!279928 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279930 (select (arr!17916 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!350525 () Bool)

(assert (=> b!611615 e!350525))

(declare-fun res!393482 () Bool)

(assert (=> b!611615 (=> (not res!393482) (not e!350525))))

(assert (=> b!611615 (= res!393482 (arrayContainsKey!0 lt!279930 (select (arr!17916 a!2986) j!136) j!136))))

(declare-fun b!611616 () Bool)

(declare-fun e!350520 () Bool)

(declare-datatypes ((SeekEntryResult!6363 0))(
  ( (MissingZero!6363 (index!27735 (_ BitVec 32))) (Found!6363 (index!27736 (_ BitVec 32))) (Intermediate!6363 (undefined!7175 Bool) (index!27737 (_ BitVec 32)) (x!56580 (_ BitVec 32))) (Undefined!6363) (MissingVacant!6363 (index!27738 (_ BitVec 32))) )
))
(declare-fun lt!279921 () SeekEntryResult!6363)

(declare-fun lt!279931 () SeekEntryResult!6363)

(assert (=> b!611616 (= e!350520 (= lt!279921 lt!279931))))

(declare-fun res!393469 () Bool)

(declare-fun e!350529 () Bool)

(assert (=> start!55914 (=> (not res!393469) (not e!350529))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55914 (= res!393469 (validMask!0 mask!3053))))

(assert (=> start!55914 e!350529))

(assert (=> start!55914 true))

(declare-fun array_inv!13690 (array!37347) Bool)

(assert (=> start!55914 (array_inv!13690 a!2986)))

(declare-fun b!611617 () Bool)

(declare-fun res!393475 () Bool)

(assert (=> b!611617 (=> (not res!393475) (not e!350529))))

(assert (=> b!611617 (= res!393475 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!611618 () Bool)

(declare-fun res!393466 () Bool)

(assert (=> b!611618 (=> (not res!393466) (not e!350529))))

(assert (=> b!611618 (= res!393466 (and (= (size!18280 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18280 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18280 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!611619 () Bool)

(declare-fun Unit!19608 () Unit!19606)

(assert (=> b!611619 (= e!350527 Unit!19608)))

(declare-fun lt!279932 () Unit!19606)

(assert (=> b!611619 (= lt!279932 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279930 (select (arr!17916 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!611619 (arrayContainsKey!0 lt!279930 (select (arr!17916 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279924 () Unit!19606)

(assert (=> b!611619 (= lt!279924 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12007))))

(assert (=> b!611619 (arrayNoDuplicates!0 lt!279930 #b00000000000000000000000000000000 Nil!12007)))

(declare-fun lt!279936 () Unit!19606)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37347 (_ BitVec 32) (_ BitVec 32)) Unit!19606)

(assert (=> b!611619 (= lt!279936 (lemmaNoDuplicateFromThenFromBigger!0 lt!279930 #b00000000000000000000000000000000 j!136))))

(assert (=> b!611619 (arrayNoDuplicates!0 lt!279930 j!136 Nil!12007)))

(declare-fun lt!279922 () Unit!19606)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37347 (_ BitVec 64) (_ BitVec 32) List!12010) Unit!19606)

(assert (=> b!611619 (= lt!279922 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279930 (select (arr!17916 a!2986) j!136) j!136 Nil!12007))))

(assert (=> b!611619 false))

(declare-fun b!611620 () Bool)

(declare-fun res!393472 () Bool)

(assert (=> b!611620 (=> (not res!393472) (not e!350529))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!611620 (= res!393472 (validKeyInArray!0 (select (arr!17916 a!2986) j!136)))))

(declare-fun b!611621 () Bool)

(declare-fun Unit!19609 () Unit!19606)

(assert (=> b!611621 (= e!350527 Unit!19609)))

(declare-fun b!611622 () Bool)

(declare-fun e!350532 () Bool)

(assert (=> b!611622 (= e!350529 e!350532)))

(declare-fun res!393465 () Bool)

(assert (=> b!611622 (=> (not res!393465) (not e!350532))))

(declare-fun lt!279920 () SeekEntryResult!6363)

(assert (=> b!611622 (= res!393465 (or (= lt!279920 (MissingZero!6363 i!1108)) (= lt!279920 (MissingVacant!6363 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37347 (_ BitVec 32)) SeekEntryResult!6363)

(assert (=> b!611622 (= lt!279920 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!611623 () Bool)

(declare-fun e!350523 () Unit!19606)

(declare-fun Unit!19610 () Unit!19606)

(assert (=> b!611623 (= e!350523 Unit!19610)))

(assert (=> b!611623 false))

(declare-fun b!611624 () Bool)

(declare-fun e!350530 () Bool)

(declare-fun e!350533 () Bool)

(assert (=> b!611624 (= e!350530 (not e!350533))))

(declare-fun res!393481 () Bool)

(assert (=> b!611624 (=> res!393481 e!350533)))

(declare-fun lt!279925 () SeekEntryResult!6363)

(assert (=> b!611624 (= res!393481 (not (= lt!279925 (Found!6363 index!984))))))

(declare-fun lt!279923 () Unit!19606)

(assert (=> b!611624 (= lt!279923 e!350523)))

(declare-fun c!69442 () Bool)

(assert (=> b!611624 (= c!69442 (= lt!279925 Undefined!6363))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!279934 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37347 (_ BitVec 32)) SeekEntryResult!6363)

(assert (=> b!611624 (= lt!279925 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279934 lt!279930 mask!3053))))

(assert (=> b!611624 e!350520))

(declare-fun res!393479 () Bool)

(assert (=> b!611624 (=> (not res!393479) (not e!350520))))

(declare-fun lt!279933 () (_ BitVec 32))

(assert (=> b!611624 (= res!393479 (= lt!279931 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279933 vacantSpotIndex!68 lt!279934 lt!279930 mask!3053)))))

(assert (=> b!611624 (= lt!279931 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279933 vacantSpotIndex!68 (select (arr!17916 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!611624 (= lt!279934 (select (store (arr!17916 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!279926 () Unit!19606)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37347 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19606)

(assert (=> b!611624 (= lt!279926 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279933 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!611624 (= lt!279933 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!611625 () Bool)

(declare-fun e!350526 () Bool)

(assert (=> b!611625 (= e!350526 e!350530)))

(declare-fun res!393474 () Bool)

(assert (=> b!611625 (=> (not res!393474) (not e!350530))))

(assert (=> b!611625 (= res!393474 (and (= lt!279921 (Found!6363 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17916 a!2986) index!984) (select (arr!17916 a!2986) j!136))) (not (= (select (arr!17916 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!611625 (= lt!279921 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17916 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611626 () Bool)

(declare-fun res!393471 () Bool)

(assert (=> b!611626 (=> (not res!393471) (not e!350529))))

(assert (=> b!611626 (= res!393471 (validKeyInArray!0 k!1786))))

(declare-fun b!611627 () Bool)

(declare-fun res!393464 () Bool)

(assert (=> b!611627 (=> (not res!393464) (not e!350532))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37347 (_ BitVec 32)) Bool)

(assert (=> b!611627 (= res!393464 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!611628 () Bool)

(assert (=> b!611628 (= e!350533 e!350521)))

(declare-fun res!393477 () Bool)

(assert (=> b!611628 (=> res!393477 e!350521)))

(declare-fun lt!279927 () (_ BitVec 64))

(assert (=> b!611628 (= res!393477 (or (not (= (select (arr!17916 a!2986) j!136) lt!279934)) (not (= (select (arr!17916 a!2986) j!136) lt!279927))))))

(declare-fun e!350522 () Bool)

(assert (=> b!611628 e!350522))

(declare-fun res!393476 () Bool)

(assert (=> b!611628 (=> (not res!393476) (not e!350522))))

(assert (=> b!611628 (= res!393476 (= lt!279927 (select (arr!17916 a!2986) j!136)))))

(assert (=> b!611628 (= lt!279927 (select (store (arr!17916 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!611629 () Bool)

(declare-fun e!350519 () Bool)

(declare-fun e!350524 () Bool)

(assert (=> b!611629 (= e!350519 e!350524)))

(declare-fun res!393480 () Bool)

(assert (=> b!611629 (=> (not res!393480) (not e!350524))))

(assert (=> b!611629 (= res!393480 (arrayContainsKey!0 lt!279930 (select (arr!17916 a!2986) j!136) j!136))))

(declare-fun b!611630 () Bool)

(declare-fun Unit!19611 () Unit!19606)

(assert (=> b!611630 (= e!350523 Unit!19611)))

(declare-fun b!611631 () Bool)

(declare-fun res!393468 () Bool)

(assert (=> b!611631 (=> (not res!393468) (not e!350532))))

(assert (=> b!611631 (= res!393468 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12007))))

(declare-fun b!611632 () Bool)

(assert (=> b!611632 (= e!350524 (arrayContainsKey!0 lt!279930 (select (arr!17916 a!2986) j!136) index!984))))

(declare-fun b!611633 () Bool)

(assert (=> b!611633 (= e!350522 e!350519)))

(declare-fun res!393478 () Bool)

(assert (=> b!611633 (=> res!393478 e!350519)))

(assert (=> b!611633 (= res!393478 (or (not (= (select (arr!17916 a!2986) j!136) lt!279934)) (not (= (select (arr!17916 a!2986) j!136) lt!279927)) (bvsge j!136 index!984)))))

(declare-fun b!611634 () Bool)

(declare-fun res!393470 () Bool)

(assert (=> b!611634 (=> (not res!393470) (not e!350532))))

(assert (=> b!611634 (= res!393470 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17916 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!611635 () Bool)

(assert (=> b!611635 (= e!350525 (arrayContainsKey!0 lt!279930 (select (arr!17916 a!2986) j!136) index!984))))

(declare-fun b!611636 () Bool)

(assert (=> b!611636 (= e!350532 e!350526)))

(declare-fun res!393473 () Bool)

(assert (=> b!611636 (=> (not res!393473) (not e!350526))))

(assert (=> b!611636 (= res!393473 (= (select (store (arr!17916 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611636 (= lt!279930 (array!37348 (store (arr!17916 a!2986) i!1108 k!1786) (size!18280 a!2986)))))

(assert (= (and start!55914 res!393469) b!611618))

(assert (= (and b!611618 res!393466) b!611620))

(assert (= (and b!611620 res!393472) b!611626))

(assert (= (and b!611626 res!393471) b!611617))

(assert (= (and b!611617 res!393475) b!611622))

(assert (= (and b!611622 res!393465) b!611627))

(assert (= (and b!611627 res!393464) b!611631))

(assert (= (and b!611631 res!393468) b!611634))

(assert (= (and b!611634 res!393470) b!611636))

(assert (= (and b!611636 res!393473) b!611625))

(assert (= (and b!611625 res!393474) b!611624))

(assert (= (and b!611624 res!393479) b!611616))

(assert (= (and b!611624 c!69442) b!611623))

(assert (= (and b!611624 (not c!69442)) b!611630))

(assert (= (and b!611624 (not res!393481)) b!611628))

(assert (= (and b!611628 res!393476) b!611633))

(assert (= (and b!611633 (not res!393478)) b!611629))

(assert (= (and b!611629 res!393480) b!611632))

(assert (= (and b!611628 (not res!393477)) b!611614))

(assert (= (and b!611614 c!69443) b!611619))

(assert (= (and b!611614 (not c!69443)) b!611621))

(assert (= (and b!611614 (not res!393467)) b!611615))

(assert (= (and b!611615 res!393482) b!611635))

(declare-fun m!588057 () Bool)

(assert (=> b!611625 m!588057))

(declare-fun m!588059 () Bool)

(assert (=> b!611625 m!588059))

(assert (=> b!611625 m!588059))

(declare-fun m!588061 () Bool)

(assert (=> b!611625 m!588061))

(declare-fun m!588063 () Bool)

(assert (=> b!611627 m!588063))

(declare-fun m!588065 () Bool)

(assert (=> start!55914 m!588065))

(declare-fun m!588067 () Bool)

(assert (=> start!55914 m!588067))

(assert (=> b!611619 m!588059))

(declare-fun m!588069 () Bool)

(assert (=> b!611619 m!588069))

(assert (=> b!611619 m!588059))

(declare-fun m!588071 () Bool)

(assert (=> b!611619 m!588071))

(assert (=> b!611619 m!588059))

(declare-fun m!588073 () Bool)

(assert (=> b!611619 m!588073))

(declare-fun m!588075 () Bool)

(assert (=> b!611619 m!588075))

(assert (=> b!611619 m!588059))

(declare-fun m!588077 () Bool)

(assert (=> b!611619 m!588077))

(declare-fun m!588079 () Bool)

(assert (=> b!611619 m!588079))

(declare-fun m!588081 () Bool)

(assert (=> b!611619 m!588081))

(assert (=> b!611628 m!588059))

(declare-fun m!588083 () Bool)

(assert (=> b!611628 m!588083))

(declare-fun m!588085 () Bool)

(assert (=> b!611628 m!588085))

(assert (=> b!611629 m!588059))

(assert (=> b!611629 m!588059))

(declare-fun m!588087 () Bool)

(assert (=> b!611629 m!588087))

(assert (=> b!611632 m!588059))

(assert (=> b!611632 m!588059))

(declare-fun m!588089 () Bool)

(assert (=> b!611632 m!588089))

(declare-fun m!588091 () Bool)

(assert (=> b!611622 m!588091))

(declare-fun m!588093 () Bool)

(assert (=> b!611631 m!588093))

(assert (=> b!611635 m!588059))

(assert (=> b!611635 m!588059))

(assert (=> b!611635 m!588089))

(declare-fun m!588095 () Bool)

(assert (=> b!611617 m!588095))

(declare-fun m!588097 () Bool)

(assert (=> b!611634 m!588097))

(declare-fun m!588099 () Bool)

(assert (=> b!611626 m!588099))

(assert (=> b!611620 m!588059))

(assert (=> b!611620 m!588059))

(declare-fun m!588101 () Bool)

(assert (=> b!611620 m!588101))

(assert (=> b!611636 m!588083))

(declare-fun m!588103 () Bool)

(assert (=> b!611636 m!588103))

(assert (=> b!611615 m!588059))

(assert (=> b!611615 m!588059))

(declare-fun m!588105 () Bool)

(assert (=> b!611615 m!588105))

(assert (=> b!611615 m!588079))

(assert (=> b!611615 m!588059))

(assert (=> b!611615 m!588087))

(assert (=> b!611615 m!588059))

(declare-fun m!588107 () Bool)

(assert (=> b!611615 m!588107))

(assert (=> b!611615 m!588075))

(assert (=> b!611633 m!588059))

(declare-fun m!588109 () Bool)

(assert (=> b!611624 m!588109))

(declare-fun m!588111 () Bool)

(assert (=> b!611624 m!588111))

(declare-fun m!588113 () Bool)

(assert (=> b!611624 m!588113))

(assert (=> b!611624 m!588059))

(assert (=> b!611624 m!588083))

(assert (=> b!611624 m!588059))

(declare-fun m!588115 () Bool)

(assert (=> b!611624 m!588115))

(declare-fun m!588117 () Bool)

(assert (=> b!611624 m!588117))

(declare-fun m!588119 () Bool)

(assert (=> b!611624 m!588119))

(push 1)

