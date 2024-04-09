; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54866 () Bool)

(assert start!54866)

(declare-fun b!599357 () Bool)

(declare-fun e!342661 () Bool)

(declare-fun e!342672 () Bool)

(assert (=> b!599357 (= e!342661 (not e!342672))))

(declare-fun res!384509 () Bool)

(assert (=> b!599357 (=> res!384509 e!342672)))

(declare-datatypes ((SeekEntryResult!6235 0))(
  ( (MissingZero!6235 (index!27196 (_ BitVec 32))) (Found!6235 (index!27197 (_ BitVec 32))) (Intermediate!6235 (undefined!7047 Bool) (index!27198 (_ BitVec 32)) (x!56027 (_ BitVec 32))) (Undefined!6235) (MissingVacant!6235 (index!27199 (_ BitVec 32))) )
))
(declare-fun lt!272536 () SeekEntryResult!6235)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!599357 (= res!384509 (not (= lt!272536 (Found!6235 index!984))))))

(declare-datatypes ((Unit!18884 0))(
  ( (Unit!18885) )
))
(declare-fun lt!272542 () Unit!18884)

(declare-fun e!342663 () Unit!18884)

(assert (=> b!599357 (= lt!272542 e!342663)))

(declare-fun c!67796 () Bool)

(assert (=> b!599357 (= c!67796 (= lt!272536 Undefined!6235))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((array!37064 0))(
  ( (array!37065 (arr!17788 (Array (_ BitVec 32) (_ BitVec 64))) (size!18152 (_ BitVec 32))) )
))
(declare-fun lt!272533 () array!37064)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!272534 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37064 (_ BitVec 32)) SeekEntryResult!6235)

(assert (=> b!599357 (= lt!272536 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272534 lt!272533 mask!3053))))

(declare-fun e!342664 () Bool)

(assert (=> b!599357 e!342664))

(declare-fun res!384506 () Bool)

(assert (=> b!599357 (=> (not res!384506) (not e!342664))))

(declare-fun lt!272543 () SeekEntryResult!6235)

(declare-fun lt!272540 () (_ BitVec 32))

(assert (=> b!599357 (= res!384506 (= lt!272543 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272540 vacantSpotIndex!68 lt!272534 lt!272533 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37064)

(assert (=> b!599357 (= lt!272543 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272540 vacantSpotIndex!68 (select (arr!17788 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!599357 (= lt!272534 (select (store (arr!17788 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!272535 () Unit!18884)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37064 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18884)

(assert (=> b!599357 (= lt!272535 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272540 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!599357 (= lt!272540 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!599358 () Bool)

(declare-fun Unit!18886 () Unit!18884)

(assert (=> b!599358 (= e!342663 Unit!18886)))

(declare-fun b!599359 () Bool)

(declare-fun e!342673 () Bool)

(declare-fun e!342662 () Bool)

(assert (=> b!599359 (= e!342673 e!342662)))

(declare-fun res!384513 () Bool)

(assert (=> b!599359 (=> (not res!384513) (not e!342662))))

(assert (=> b!599359 (= res!384513 (= (select (store (arr!17788 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!599359 (= lt!272533 (array!37065 (store (arr!17788 a!2986) i!1108 k0!1786) (size!18152 a!2986)))))

(declare-fun b!599360 () Bool)

(declare-fun res!384516 () Bool)

(declare-fun e!342665 () Bool)

(assert (=> b!599360 (=> (not res!384516) (not e!342665))))

(assert (=> b!599360 (= res!384516 (and (= (size!18152 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18152 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18152 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!599361 () Bool)

(assert (=> b!599361 (= e!342665 e!342673)))

(declare-fun res!384505 () Bool)

(assert (=> b!599361 (=> (not res!384505) (not e!342673))))

(declare-fun lt!272539 () SeekEntryResult!6235)

(assert (=> b!599361 (= res!384505 (or (= lt!272539 (MissingZero!6235 i!1108)) (= lt!272539 (MissingVacant!6235 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37064 (_ BitVec 32)) SeekEntryResult!6235)

(assert (=> b!599361 (= lt!272539 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!599362 () Bool)

(declare-fun e!342670 () Bool)

(declare-fun e!342669 () Bool)

(assert (=> b!599362 (= e!342670 e!342669)))

(declare-fun res!384507 () Bool)

(assert (=> b!599362 (=> (not res!384507) (not e!342669))))

(declare-fun arrayContainsKey!0 (array!37064 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!599362 (= res!384507 (arrayContainsKey!0 lt!272533 (select (arr!17788 a!2986) j!136) j!136))))

(declare-fun b!599363 () Bool)

(declare-fun Unit!18887 () Unit!18884)

(assert (=> b!599363 (= e!342663 Unit!18887)))

(assert (=> b!599363 false))

(declare-fun b!599365 () Bool)

(declare-fun res!384518 () Bool)

(assert (=> b!599365 (=> (not res!384518) (not e!342673))))

(declare-datatypes ((List!11882 0))(
  ( (Nil!11879) (Cons!11878 (h!12923 (_ BitVec 64)) (t!18118 List!11882)) )
))
(declare-fun arrayNoDuplicates!0 (array!37064 (_ BitVec 32) List!11882) Bool)

(assert (=> b!599365 (= res!384518 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11879))))

(declare-fun b!599366 () Bool)

(declare-fun e!342666 () Bool)

(assert (=> b!599366 (= e!342666 e!342670)))

(declare-fun res!384502 () Bool)

(assert (=> b!599366 (=> res!384502 e!342670)))

(declare-fun lt!272537 () (_ BitVec 64))

(assert (=> b!599366 (= res!384502 (or (not (= (select (arr!17788 a!2986) j!136) lt!272534)) (not (= (select (arr!17788 a!2986) j!136) lt!272537)) (bvsge j!136 index!984)))))

(declare-fun b!599367 () Bool)

(declare-fun e!342667 () Bool)

(assert (=> b!599367 (= e!342667 true)))

(declare-fun lt!272541 () Bool)

(declare-fun contains!2967 (List!11882 (_ BitVec 64)) Bool)

(assert (=> b!599367 (= lt!272541 (contains!2967 Nil!11879 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599368 () Bool)

(declare-fun res!384500 () Bool)

(assert (=> b!599368 (=> (not res!384500) (not e!342665))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!599368 (= res!384500 (validKeyInArray!0 k0!1786))))

(declare-fun b!599369 () Bool)

(declare-fun res!384503 () Bool)

(assert (=> b!599369 (=> (not res!384503) (not e!342665))))

(assert (=> b!599369 (= res!384503 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!599370 () Bool)

(assert (=> b!599370 (= e!342669 (arrayContainsKey!0 lt!272533 (select (arr!17788 a!2986) j!136) index!984))))

(declare-fun b!599371 () Bool)

(declare-fun e!342668 () Bool)

(assert (=> b!599371 (= e!342672 e!342668)))

(declare-fun res!384517 () Bool)

(assert (=> b!599371 (=> res!384517 e!342668)))

(assert (=> b!599371 (= res!384517 (or (not (= (select (arr!17788 a!2986) j!136) lt!272534)) (not (= (select (arr!17788 a!2986) j!136) lt!272537)) (bvsge j!136 index!984)))))

(assert (=> b!599371 e!342666))

(declare-fun res!384512 () Bool)

(assert (=> b!599371 (=> (not res!384512) (not e!342666))))

(assert (=> b!599371 (= res!384512 (= lt!272537 (select (arr!17788 a!2986) j!136)))))

(assert (=> b!599371 (= lt!272537 (select (store (arr!17788 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!599372 () Bool)

(declare-fun res!384499 () Bool)

(assert (=> b!599372 (=> res!384499 e!342667)))

(assert (=> b!599372 (= res!384499 (contains!2967 Nil!11879 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!599373 () Bool)

(assert (=> b!599373 (= e!342662 e!342661)))

(declare-fun res!384504 () Bool)

(assert (=> b!599373 (=> (not res!384504) (not e!342661))))

(declare-fun lt!272531 () SeekEntryResult!6235)

(assert (=> b!599373 (= res!384504 (and (= lt!272531 (Found!6235 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17788 a!2986) index!984) (select (arr!17788 a!2986) j!136))) (not (= (select (arr!17788 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!599373 (= lt!272531 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17788 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!599374 () Bool)

(assert (=> b!599374 (= e!342668 e!342667)))

(declare-fun res!384501 () Bool)

(assert (=> b!599374 (=> res!384501 e!342667)))

(assert (=> b!599374 (= res!384501 (or (bvsge (size!18152 a!2986) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 j!136) (size!18152 a!2986))))))

(assert (=> b!599374 (arrayNoDuplicates!0 lt!272533 j!136 Nil!11879)))

(declare-fun lt!272532 () Unit!18884)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37064 (_ BitVec 32) (_ BitVec 32)) Unit!18884)

(assert (=> b!599374 (= lt!272532 (lemmaNoDuplicateFromThenFromBigger!0 lt!272533 #b00000000000000000000000000000000 j!136))))

(assert (=> b!599374 (arrayNoDuplicates!0 lt!272533 #b00000000000000000000000000000000 Nil!11879)))

(declare-fun lt!272538 () Unit!18884)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37064 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11882) Unit!18884)

(assert (=> b!599374 (= lt!272538 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11879))))

(assert (=> b!599374 (arrayContainsKey!0 lt!272533 (select (arr!17788 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272544 () Unit!18884)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37064 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18884)

(assert (=> b!599374 (= lt!272544 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272533 (select (arr!17788 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!599375 () Bool)

(declare-fun res!384514 () Bool)

(assert (=> b!599375 (=> (not res!384514) (not e!342665))))

(assert (=> b!599375 (= res!384514 (validKeyInArray!0 (select (arr!17788 a!2986) j!136)))))

(declare-fun b!599376 () Bool)

(assert (=> b!599376 (= e!342664 (= lt!272531 lt!272543))))

(declare-fun res!384508 () Bool)

(assert (=> start!54866 (=> (not res!384508) (not e!342665))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54866 (= res!384508 (validMask!0 mask!3053))))

(assert (=> start!54866 e!342665))

(assert (=> start!54866 true))

(declare-fun array_inv!13562 (array!37064) Bool)

(assert (=> start!54866 (array_inv!13562 a!2986)))

(declare-fun b!599364 () Bool)

(declare-fun res!384511 () Bool)

(assert (=> b!599364 (=> (not res!384511) (not e!342673))))

(assert (=> b!599364 (= res!384511 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17788 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!599377 () Bool)

(declare-fun res!384510 () Bool)

(assert (=> b!599377 (=> res!384510 e!342667)))

(declare-fun noDuplicate!281 (List!11882) Bool)

(assert (=> b!599377 (= res!384510 (not (noDuplicate!281 Nil!11879)))))

(declare-fun b!599378 () Bool)

(declare-fun res!384515 () Bool)

(assert (=> b!599378 (=> (not res!384515) (not e!342673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37064 (_ BitVec 32)) Bool)

(assert (=> b!599378 (= res!384515 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!54866 res!384508) b!599360))

(assert (= (and b!599360 res!384516) b!599375))

(assert (= (and b!599375 res!384514) b!599368))

(assert (= (and b!599368 res!384500) b!599369))

(assert (= (and b!599369 res!384503) b!599361))

(assert (= (and b!599361 res!384505) b!599378))

(assert (= (and b!599378 res!384515) b!599365))

(assert (= (and b!599365 res!384518) b!599364))

(assert (= (and b!599364 res!384511) b!599359))

(assert (= (and b!599359 res!384513) b!599373))

(assert (= (and b!599373 res!384504) b!599357))

(assert (= (and b!599357 res!384506) b!599376))

(assert (= (and b!599357 c!67796) b!599363))

(assert (= (and b!599357 (not c!67796)) b!599358))

(assert (= (and b!599357 (not res!384509)) b!599371))

(assert (= (and b!599371 res!384512) b!599366))

(assert (= (and b!599366 (not res!384502)) b!599362))

(assert (= (and b!599362 res!384507) b!599370))

(assert (= (and b!599371 (not res!384517)) b!599374))

(assert (= (and b!599374 (not res!384501)) b!599377))

(assert (= (and b!599377 (not res!384510)) b!599372))

(assert (= (and b!599372 (not res!384499)) b!599367))

(declare-fun m!576655 () Bool)

(assert (=> start!54866 m!576655))

(declare-fun m!576657 () Bool)

(assert (=> start!54866 m!576657))

(declare-fun m!576659 () Bool)

(assert (=> b!599361 m!576659))

(declare-fun m!576661 () Bool)

(assert (=> b!599364 m!576661))

(declare-fun m!576663 () Bool)

(assert (=> b!599371 m!576663))

(declare-fun m!576665 () Bool)

(assert (=> b!599371 m!576665))

(declare-fun m!576667 () Bool)

(assert (=> b!599371 m!576667))

(declare-fun m!576669 () Bool)

(assert (=> b!599357 m!576669))

(declare-fun m!576671 () Bool)

(assert (=> b!599357 m!576671))

(assert (=> b!599357 m!576663))

(declare-fun m!576673 () Bool)

(assert (=> b!599357 m!576673))

(assert (=> b!599357 m!576663))

(declare-fun m!576675 () Bool)

(assert (=> b!599357 m!576675))

(declare-fun m!576677 () Bool)

(assert (=> b!599357 m!576677))

(declare-fun m!576679 () Bool)

(assert (=> b!599357 m!576679))

(assert (=> b!599357 m!576665))

(declare-fun m!576681 () Bool)

(assert (=> b!599368 m!576681))

(declare-fun m!576683 () Bool)

(assert (=> b!599367 m!576683))

(declare-fun m!576685 () Bool)

(assert (=> b!599378 m!576685))

(assert (=> b!599375 m!576663))

(assert (=> b!599375 m!576663))

(declare-fun m!576687 () Bool)

(assert (=> b!599375 m!576687))

(declare-fun m!576689 () Bool)

(assert (=> b!599369 m!576689))

(declare-fun m!576691 () Bool)

(assert (=> b!599365 m!576691))

(assert (=> b!599362 m!576663))

(assert (=> b!599362 m!576663))

(declare-fun m!576693 () Bool)

(assert (=> b!599362 m!576693))

(declare-fun m!576695 () Bool)

(assert (=> b!599373 m!576695))

(assert (=> b!599373 m!576663))

(assert (=> b!599373 m!576663))

(declare-fun m!576697 () Bool)

(assert (=> b!599373 m!576697))

(assert (=> b!599366 m!576663))

(declare-fun m!576699 () Bool)

(assert (=> b!599377 m!576699))

(assert (=> b!599359 m!576665))

(declare-fun m!576701 () Bool)

(assert (=> b!599359 m!576701))

(declare-fun m!576703 () Bool)

(assert (=> b!599372 m!576703))

(declare-fun m!576705 () Bool)

(assert (=> b!599374 m!576705))

(declare-fun m!576707 () Bool)

(assert (=> b!599374 m!576707))

(assert (=> b!599374 m!576663))

(declare-fun m!576709 () Bool)

(assert (=> b!599374 m!576709))

(assert (=> b!599374 m!576663))

(declare-fun m!576711 () Bool)

(assert (=> b!599374 m!576711))

(declare-fun m!576713 () Bool)

(assert (=> b!599374 m!576713))

(assert (=> b!599374 m!576663))

(declare-fun m!576715 () Bool)

(assert (=> b!599374 m!576715))

(assert (=> b!599370 m!576663))

(assert (=> b!599370 m!576663))

(declare-fun m!576717 () Bool)

(assert (=> b!599370 m!576717))

(check-sat (not b!599367) (not b!599378) (not b!599368) (not b!599372) (not b!599370) (not b!599365) (not b!599377) (not start!54866) (not b!599361) (not b!599362) (not b!599373) (not b!599374) (not b!599369) (not b!599357) (not b!599375))
(check-sat)
