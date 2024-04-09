; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59000 () Bool)

(assert start!59000)

(declare-fun b!650416 () Bool)

(declare-fun res!421733 () Bool)

(declare-fun e!373165 () Bool)

(assert (=> b!650416 (=> (not res!421733) (not e!373165))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38537 0))(
  ( (array!38538 (arr!18469 (Array (_ BitVec 32) (_ BitVec 64))) (size!18833 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38537)

(assert (=> b!650416 (= res!421733 (and (= (size!18833 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18833 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18833 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!650417 () Bool)

(declare-fun lt!302293 () array!38537)

(declare-fun e!373164 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!650417 (= e!373164 (arrayContainsKey!0 lt!302293 (select (arr!18469 a!2986) j!136) index!984))))

(declare-fun b!650418 () Bool)

(declare-fun e!373174 () Bool)

(declare-fun e!373170 () Bool)

(assert (=> b!650418 (= e!373174 e!373170)))

(declare-fun res!421744 () Bool)

(assert (=> b!650418 (=> res!421744 e!373170)))

(declare-fun lt!302291 () (_ BitVec 64))

(declare-fun lt!302280 () (_ BitVec 64))

(assert (=> b!650418 (= res!421744 (or (not (= (select (arr!18469 a!2986) j!136) lt!302280)) (not (= (select (arr!18469 a!2986) j!136) lt!302291)) (bvsge j!136 index!984)))))

(declare-fun b!650419 () Bool)

(declare-fun e!373167 () Bool)

(declare-fun e!373173 () Bool)

(assert (=> b!650419 (= e!373167 e!373173)))

(declare-fun res!421732 () Bool)

(assert (=> b!650419 (=> (not res!421732) (not e!373173))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!650419 (= res!421732 (= (select (store (arr!18469 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!650419 (= lt!302293 (array!38538 (store (arr!18469 a!2986) i!1108 k0!1786) (size!18833 a!2986)))))

(declare-fun b!650420 () Bool)

(assert (=> b!650420 (= e!373165 e!373167)))

(declare-fun res!421731 () Bool)

(assert (=> b!650420 (=> (not res!421731) (not e!373167))))

(declare-datatypes ((SeekEntryResult!6916 0))(
  ( (MissingZero!6916 (index!30013 (_ BitVec 32))) (Found!6916 (index!30014 (_ BitVec 32))) (Intermediate!6916 (undefined!7728 Bool) (index!30015 (_ BitVec 32)) (x!58827 (_ BitVec 32))) (Undefined!6916) (MissingVacant!6916 (index!30016 (_ BitVec 32))) )
))
(declare-fun lt!302279 () SeekEntryResult!6916)

(assert (=> b!650420 (= res!421731 (or (= lt!302279 (MissingZero!6916 i!1108)) (= lt!302279 (MissingVacant!6916 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38537 (_ BitVec 32)) SeekEntryResult!6916)

(assert (=> b!650420 (= lt!302279 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!650421 () Bool)

(declare-fun e!373163 () Bool)

(assert (=> b!650421 (= e!373170 e!373163)))

(declare-fun res!421730 () Bool)

(assert (=> b!650421 (=> (not res!421730) (not e!373163))))

(assert (=> b!650421 (= res!421730 (arrayContainsKey!0 lt!302293 (select (arr!18469 a!2986) j!136) j!136))))

(declare-fun b!650422 () Bool)

(declare-fun e!373169 () Bool)

(declare-fun e!373168 () Bool)

(assert (=> b!650422 (= e!373169 (not e!373168))))

(declare-fun res!421739 () Bool)

(assert (=> b!650422 (=> res!421739 e!373168)))

(declare-fun lt!302286 () SeekEntryResult!6916)

(assert (=> b!650422 (= res!421739 (not (= lt!302286 (Found!6916 index!984))))))

(declare-datatypes ((Unit!22168 0))(
  ( (Unit!22169) )
))
(declare-fun lt!302283 () Unit!22168)

(declare-fun e!373175 () Unit!22168)

(assert (=> b!650422 (= lt!302283 e!373175)))

(declare-fun c!74711 () Bool)

(assert (=> b!650422 (= c!74711 (= lt!302286 Undefined!6916))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38537 (_ BitVec 32)) SeekEntryResult!6916)

(assert (=> b!650422 (= lt!302286 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!302280 lt!302293 mask!3053))))

(declare-fun e!373176 () Bool)

(assert (=> b!650422 e!373176))

(declare-fun res!421740 () Bool)

(assert (=> b!650422 (=> (not res!421740) (not e!373176))))

(declare-fun lt!302285 () SeekEntryResult!6916)

(declare-fun lt!302287 () (_ BitVec 32))

(assert (=> b!650422 (= res!421740 (= lt!302285 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302287 vacantSpotIndex!68 lt!302280 lt!302293 mask!3053)))))

(assert (=> b!650422 (= lt!302285 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!302287 vacantSpotIndex!68 (select (arr!18469 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!650422 (= lt!302280 (select (store (arr!18469 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!302284 () Unit!22168)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38537 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22168)

(assert (=> b!650422 (= lt!302284 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!302287 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!650422 (= lt!302287 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!650423 () Bool)

(declare-fun res!421738 () Bool)

(assert (=> b!650423 (=> (not res!421738) (not e!373167))))

(assert (=> b!650423 (= res!421738 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18469 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!650424 () Bool)

(declare-fun e!373172 () Bool)

(assert (=> b!650424 (= e!373172 (or (bvsge (size!18833 a!2986) #b01111111111111111111111111111111) (bvsle #b00000000000000000000000000000000 (size!18833 a!2986))))))

(declare-datatypes ((List!12563 0))(
  ( (Nil!12560) (Cons!12559 (h!13604 (_ BitVec 64)) (t!18799 List!12563)) )
))
(declare-fun arrayNoDuplicates!0 (array!38537 (_ BitVec 32) List!12563) Bool)

(assert (=> b!650424 (arrayNoDuplicates!0 lt!302293 #b00000000000000000000000000000000 Nil!12560)))

(declare-fun lt!302282 () Unit!22168)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38537 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12563) Unit!22168)

(assert (=> b!650424 (= lt!302282 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12560))))

(assert (=> b!650424 (arrayContainsKey!0 lt!302293 (select (arr!18469 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!302292 () Unit!22168)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38537 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22168)

(assert (=> b!650424 (= lt!302292 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302293 (select (arr!18469 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!650424 e!373164))

(declare-fun res!421737 () Bool)

(assert (=> b!650424 (=> (not res!421737) (not e!373164))))

(assert (=> b!650424 (= res!421737 (arrayContainsKey!0 lt!302293 (select (arr!18469 a!2986) j!136) j!136))))

(declare-fun res!421748 () Bool)

(assert (=> start!59000 (=> (not res!421748) (not e!373165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59000 (= res!421748 (validMask!0 mask!3053))))

(assert (=> start!59000 e!373165))

(assert (=> start!59000 true))

(declare-fun array_inv!14243 (array!38537) Bool)

(assert (=> start!59000 (array_inv!14243 a!2986)))

(declare-fun b!650425 () Bool)

(declare-fun e!373177 () Unit!22168)

(declare-fun Unit!22170 () Unit!22168)

(assert (=> b!650425 (= e!373177 Unit!22170)))

(declare-fun b!650426 () Bool)

(assert (=> b!650426 (= e!373173 e!373169)))

(declare-fun res!421747 () Bool)

(assert (=> b!650426 (=> (not res!421747) (not e!373169))))

(declare-fun lt!302289 () SeekEntryResult!6916)

(assert (=> b!650426 (= res!421747 (and (= lt!302289 (Found!6916 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18469 a!2986) index!984) (select (arr!18469 a!2986) j!136))) (not (= (select (arr!18469 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!650426 (= lt!302289 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18469 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!650427 () Bool)

(declare-fun res!421742 () Bool)

(assert (=> b!650427 (=> (not res!421742) (not e!373165))))

(assert (=> b!650427 (= res!421742 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!650428 () Bool)

(declare-fun res!421745 () Bool)

(assert (=> b!650428 (=> (not res!421745) (not e!373167))))

(assert (=> b!650428 (= res!421745 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12560))))

(declare-fun b!650429 () Bool)

(declare-fun Unit!22171 () Unit!22168)

(assert (=> b!650429 (= e!373177 Unit!22171)))

(declare-fun lt!302288 () Unit!22168)

(assert (=> b!650429 (= lt!302288 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!302293 (select (arr!18469 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!650429 (arrayContainsKey!0 lt!302293 (select (arr!18469 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!302294 () Unit!22168)

(assert (=> b!650429 (= lt!302294 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12560))))

(assert (=> b!650429 (arrayNoDuplicates!0 lt!302293 #b00000000000000000000000000000000 Nil!12560)))

(declare-fun lt!302281 () Unit!22168)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38537 (_ BitVec 32) (_ BitVec 32)) Unit!22168)

(assert (=> b!650429 (= lt!302281 (lemmaNoDuplicateFromThenFromBigger!0 lt!302293 #b00000000000000000000000000000000 j!136))))

(assert (=> b!650429 (arrayNoDuplicates!0 lt!302293 j!136 Nil!12560)))

(declare-fun lt!302295 () Unit!22168)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38537 (_ BitVec 64) (_ BitVec 32) List!12563) Unit!22168)

(assert (=> b!650429 (= lt!302295 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!302293 (select (arr!18469 a!2986) j!136) j!136 Nil!12560))))

(assert (=> b!650429 false))

(declare-fun b!650430 () Bool)

(declare-fun Unit!22172 () Unit!22168)

(assert (=> b!650430 (= e!373175 Unit!22172)))

(declare-fun b!650431 () Bool)

(declare-fun e!373166 () Bool)

(assert (=> b!650431 (= e!373168 e!373166)))

(declare-fun res!421743 () Bool)

(assert (=> b!650431 (=> res!421743 e!373166)))

(assert (=> b!650431 (= res!421743 (or (not (= (select (arr!18469 a!2986) j!136) lt!302280)) (not (= (select (arr!18469 a!2986) j!136) lt!302291))))))

(assert (=> b!650431 e!373174))

(declare-fun res!421741 () Bool)

(assert (=> b!650431 (=> (not res!421741) (not e!373174))))

(assert (=> b!650431 (= res!421741 (= lt!302291 (select (arr!18469 a!2986) j!136)))))

(assert (=> b!650431 (= lt!302291 (select (store (arr!18469 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!650432 () Bool)

(assert (=> b!650432 (= e!373163 (arrayContainsKey!0 lt!302293 (select (arr!18469 a!2986) j!136) index!984))))

(declare-fun b!650433 () Bool)

(assert (=> b!650433 (= e!373166 e!373172)))

(declare-fun res!421734 () Bool)

(assert (=> b!650433 (=> res!421734 e!373172)))

(assert (=> b!650433 (= res!421734 (bvsge index!984 j!136))))

(declare-fun lt!302290 () Unit!22168)

(assert (=> b!650433 (= lt!302290 e!373177)))

(declare-fun c!74710 () Bool)

(assert (=> b!650433 (= c!74710 (bvslt j!136 index!984))))

(declare-fun b!650434 () Bool)

(declare-fun res!421736 () Bool)

(assert (=> b!650434 (=> (not res!421736) (not e!373167))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38537 (_ BitVec 32)) Bool)

(assert (=> b!650434 (= res!421736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!650435 () Bool)

(declare-fun Unit!22173 () Unit!22168)

(assert (=> b!650435 (= e!373175 Unit!22173)))

(assert (=> b!650435 false))

(declare-fun b!650436 () Bool)

(declare-fun res!421746 () Bool)

(assert (=> b!650436 (=> (not res!421746) (not e!373165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!650436 (= res!421746 (validKeyInArray!0 k0!1786))))

(declare-fun b!650437 () Bool)

(declare-fun res!421735 () Bool)

(assert (=> b!650437 (=> (not res!421735) (not e!373165))))

(assert (=> b!650437 (= res!421735 (validKeyInArray!0 (select (arr!18469 a!2986) j!136)))))

(declare-fun b!650438 () Bool)

(assert (=> b!650438 (= e!373176 (= lt!302289 lt!302285))))

(assert (= (and start!59000 res!421748) b!650416))

(assert (= (and b!650416 res!421733) b!650437))

(assert (= (and b!650437 res!421735) b!650436))

(assert (= (and b!650436 res!421746) b!650427))

(assert (= (and b!650427 res!421742) b!650420))

(assert (= (and b!650420 res!421731) b!650434))

(assert (= (and b!650434 res!421736) b!650428))

(assert (= (and b!650428 res!421745) b!650423))

(assert (= (and b!650423 res!421738) b!650419))

(assert (= (and b!650419 res!421732) b!650426))

(assert (= (and b!650426 res!421747) b!650422))

(assert (= (and b!650422 res!421740) b!650438))

(assert (= (and b!650422 c!74711) b!650435))

(assert (= (and b!650422 (not c!74711)) b!650430))

(assert (= (and b!650422 (not res!421739)) b!650431))

(assert (= (and b!650431 res!421741) b!650418))

(assert (= (and b!650418 (not res!421744)) b!650421))

(assert (= (and b!650421 res!421730) b!650432))

(assert (= (and b!650431 (not res!421743)) b!650433))

(assert (= (and b!650433 c!74710) b!650429))

(assert (= (and b!650433 (not c!74710)) b!650425))

(assert (= (and b!650433 (not res!421734)) b!650424))

(assert (= (and b!650424 res!421737) b!650417))

(declare-fun m!623677 () Bool)

(assert (=> b!650424 m!623677))

(declare-fun m!623679 () Bool)

(assert (=> b!650424 m!623679))

(assert (=> b!650424 m!623677))

(assert (=> b!650424 m!623677))

(declare-fun m!623681 () Bool)

(assert (=> b!650424 m!623681))

(declare-fun m!623683 () Bool)

(assert (=> b!650424 m!623683))

(assert (=> b!650424 m!623677))

(declare-fun m!623685 () Bool)

(assert (=> b!650424 m!623685))

(declare-fun m!623687 () Bool)

(assert (=> b!650424 m!623687))

(assert (=> b!650431 m!623677))

(declare-fun m!623689 () Bool)

(assert (=> b!650431 m!623689))

(declare-fun m!623691 () Bool)

(assert (=> b!650431 m!623691))

(assert (=> b!650421 m!623677))

(assert (=> b!650421 m!623677))

(assert (=> b!650421 m!623679))

(declare-fun m!623693 () Bool)

(assert (=> b!650434 m!623693))

(declare-fun m!623695 () Bool)

(assert (=> b!650427 m!623695))

(declare-fun m!623697 () Bool)

(assert (=> b!650436 m!623697))

(assert (=> b!650418 m!623677))

(declare-fun m!623699 () Bool)

(assert (=> b!650426 m!623699))

(assert (=> b!650426 m!623677))

(assert (=> b!650426 m!623677))

(declare-fun m!623701 () Bool)

(assert (=> b!650426 m!623701))

(declare-fun m!623703 () Bool)

(assert (=> b!650428 m!623703))

(assert (=> b!650437 m!623677))

(assert (=> b!650437 m!623677))

(declare-fun m!623705 () Bool)

(assert (=> b!650437 m!623705))

(declare-fun m!623707 () Bool)

(assert (=> b!650422 m!623707))

(declare-fun m!623709 () Bool)

(assert (=> b!650422 m!623709))

(assert (=> b!650422 m!623677))

(assert (=> b!650422 m!623677))

(declare-fun m!623711 () Bool)

(assert (=> b!650422 m!623711))

(declare-fun m!623713 () Bool)

(assert (=> b!650422 m!623713))

(declare-fun m!623715 () Bool)

(assert (=> b!650422 m!623715))

(assert (=> b!650422 m!623689))

(declare-fun m!623717 () Bool)

(assert (=> b!650422 m!623717))

(declare-fun m!623719 () Bool)

(assert (=> b!650423 m!623719))

(declare-fun m!623721 () Bool)

(assert (=> b!650420 m!623721))

(assert (=> b!650417 m!623677))

(assert (=> b!650417 m!623677))

(declare-fun m!623723 () Bool)

(assert (=> b!650417 m!623723))

(assert (=> b!650432 m!623677))

(assert (=> b!650432 m!623677))

(assert (=> b!650432 m!623723))

(assert (=> b!650419 m!623689))

(declare-fun m!623725 () Bool)

(assert (=> b!650419 m!623725))

(declare-fun m!623727 () Bool)

(assert (=> start!59000 m!623727))

(declare-fun m!623729 () Bool)

(assert (=> start!59000 m!623729))

(declare-fun m!623731 () Bool)

(assert (=> b!650429 m!623731))

(assert (=> b!650429 m!623677))

(declare-fun m!623733 () Bool)

(assert (=> b!650429 m!623733))

(declare-fun m!623735 () Bool)

(assert (=> b!650429 m!623735))

(assert (=> b!650429 m!623683))

(assert (=> b!650429 m!623677))

(declare-fun m!623737 () Bool)

(assert (=> b!650429 m!623737))

(assert (=> b!650429 m!623687))

(assert (=> b!650429 m!623677))

(assert (=> b!650429 m!623677))

(declare-fun m!623739 () Bool)

(assert (=> b!650429 m!623739))

(check-sat (not b!650426) (not b!650424) (not b!650428) (not b!650437) (not b!650417) (not b!650429) (not b!650420) (not b!650436) (not b!650422) (not start!59000) (not b!650432) (not b!650421) (not b!650427) (not b!650434))
(check-sat)
