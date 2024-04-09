; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56132 () Bool)

(assert start!56132)

(declare-fun b!619739 () Bool)

(declare-fun e!355452 () Bool)

(declare-fun e!355455 () Bool)

(assert (=> b!619739 (= e!355452 (not e!355455))))

(declare-fun res!399434 () Bool)

(assert (=> b!619739 (=> res!399434 e!355455)))

(declare-datatypes ((SeekEntryResult!6472 0))(
  ( (MissingZero!6472 (index!28171 (_ BitVec 32))) (Found!6472 (index!28172 (_ BitVec 32))) (Intermediate!6472 (undefined!7284 Bool) (index!28173 (_ BitVec 32)) (x!56977 (_ BitVec 32))) (Undefined!6472) (MissingVacant!6472 (index!28174 (_ BitVec 32))) )
))
(declare-fun lt!286279 () SeekEntryResult!6472)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!619739 (= res!399434 (not (= lt!286279 (MissingVacant!6472 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!20540 0))(
  ( (Unit!20541) )
))
(declare-fun lt!286277 () Unit!20540)

(declare-fun e!355449 () Unit!20540)

(assert (=> b!619739 (= lt!286277 e!355449)))

(declare-fun c!70522 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!619739 (= c!70522 (= lt!286279 (Found!6472 index!984)))))

(declare-fun lt!286286 () Unit!20540)

(declare-fun e!355447 () Unit!20540)

(assert (=> b!619739 (= lt!286286 e!355447)))

(declare-fun c!70521 () Bool)

(assert (=> b!619739 (= c!70521 (= lt!286279 Undefined!6472))))

(declare-fun lt!286288 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!37565 0))(
  ( (array!37566 (arr!18025 (Array (_ BitVec 32) (_ BitVec 64))) (size!18389 (_ BitVec 32))) )
))
(declare-fun lt!286292 () array!37565)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37565 (_ BitVec 32)) SeekEntryResult!6472)

(assert (=> b!619739 (= lt!286279 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286288 lt!286292 mask!3053))))

(declare-fun e!355456 () Bool)

(assert (=> b!619739 e!355456))

(declare-fun res!399447 () Bool)

(assert (=> b!619739 (=> (not res!399447) (not e!355456))))

(declare-fun lt!286278 () (_ BitVec 32))

(declare-fun lt!286282 () SeekEntryResult!6472)

(assert (=> b!619739 (= res!399447 (= lt!286282 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286278 vacantSpotIndex!68 lt!286288 lt!286292 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!37565)

(assert (=> b!619739 (= lt!286282 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286278 vacantSpotIndex!68 (select (arr!18025 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!619739 (= lt!286288 (select (store (arr!18025 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!286296 () Unit!20540)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37565 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20540)

(assert (=> b!619739 (= lt!286296 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286278 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619739 (= lt!286278 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619740 () Bool)

(declare-fun res!399442 () Bool)

(declare-fun e!355453 () Bool)

(assert (=> b!619740 (=> (not res!399442) (not e!355453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619740 (= res!399442 (validKeyInArray!0 (select (arr!18025 a!2986) j!136)))))

(declare-fun b!619741 () Bool)

(declare-fun e!355442 () Bool)

(declare-fun arrayContainsKey!0 (array!37565 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619741 (= e!355442 (arrayContainsKey!0 lt!286292 (select (arr!18025 a!2986) j!136) index!984))))

(declare-fun res!399439 () Bool)

(declare-fun b!619742 () Bool)

(assert (=> b!619742 (= res!399439 (arrayContainsKey!0 lt!286292 (select (arr!18025 a!2986) j!136) j!136))))

(declare-fun e!355446 () Bool)

(assert (=> b!619742 (=> (not res!399439) (not e!355446))))

(declare-fun e!355451 () Bool)

(assert (=> b!619742 (= e!355451 e!355446)))

(declare-fun b!619744 () Bool)

(assert (=> b!619744 false))

(declare-fun lt!286287 () Unit!20540)

(declare-datatypes ((List!12119 0))(
  ( (Nil!12116) (Cons!12115 (h!13160 (_ BitVec 64)) (t!18355 List!12119)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37565 (_ BitVec 64) (_ BitVec 32) List!12119) Unit!20540)

(assert (=> b!619744 (= lt!286287 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286292 (select (arr!18025 a!2986) j!136) index!984 Nil!12116))))

(declare-fun arrayNoDuplicates!0 (array!37565 (_ BitVec 32) List!12119) Bool)

(assert (=> b!619744 (arrayNoDuplicates!0 lt!286292 index!984 Nil!12116)))

(declare-fun lt!286291 () Unit!20540)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37565 (_ BitVec 32) (_ BitVec 32)) Unit!20540)

(assert (=> b!619744 (= lt!286291 (lemmaNoDuplicateFromThenFromBigger!0 lt!286292 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619744 (arrayNoDuplicates!0 lt!286292 #b00000000000000000000000000000000 Nil!12116)))

(declare-fun lt!286283 () Unit!20540)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37565 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12119) Unit!20540)

(assert (=> b!619744 (= lt!286283 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12116))))

(assert (=> b!619744 (arrayContainsKey!0 lt!286292 (select (arr!18025 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286293 () Unit!20540)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37565 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20540)

(assert (=> b!619744 (= lt!286293 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286292 (select (arr!18025 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619744 e!355442))

(declare-fun res!399445 () Bool)

(assert (=> b!619744 (=> (not res!399445) (not e!355442))))

(assert (=> b!619744 (= res!399445 (arrayContainsKey!0 lt!286292 (select (arr!18025 a!2986) j!136) j!136))))

(declare-fun e!355443 () Unit!20540)

(declare-fun Unit!20542 () Unit!20540)

(assert (=> b!619744 (= e!355443 Unit!20542)))

(declare-fun b!619745 () Bool)

(declare-fun res!399444 () Bool)

(assert (=> b!619745 (=> (not res!399444) (not e!355453))))

(assert (=> b!619745 (= res!399444 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619746 () Bool)

(assert (=> b!619746 (= e!355455 true)))

(assert (=> b!619746 (= (select (store (arr!18025 a!2986) i!1108 k0!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619747 () Bool)

(declare-fun Unit!20543 () Unit!20540)

(assert (=> b!619747 (= e!355449 Unit!20543)))

(declare-fun res!399435 () Bool)

(assert (=> b!619747 (= res!399435 (= (select (store (arr!18025 a!2986) i!1108 k0!1786) index!984) (select (arr!18025 a!2986) j!136)))))

(declare-fun e!355445 () Bool)

(assert (=> b!619747 (=> (not res!399435) (not e!355445))))

(assert (=> b!619747 e!355445))

(declare-fun c!70523 () Bool)

(assert (=> b!619747 (= c!70523 (bvslt j!136 index!984))))

(declare-fun lt!286285 () Unit!20540)

(declare-fun e!355450 () Unit!20540)

(assert (=> b!619747 (= lt!286285 e!355450)))

(declare-fun c!70520 () Bool)

(assert (=> b!619747 (= c!70520 (bvslt index!984 j!136))))

(declare-fun lt!286295 () Unit!20540)

(assert (=> b!619747 (= lt!286295 e!355443)))

(assert (=> b!619747 false))

(declare-fun b!619748 () Bool)

(declare-fun res!399443 () Bool)

(declare-fun e!355444 () Bool)

(assert (=> b!619748 (=> (not res!399443) (not e!355444))))

(assert (=> b!619748 (= res!399443 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12116))))

(declare-fun b!619749 () Bool)

(declare-fun e!355454 () Bool)

(assert (=> b!619749 (= e!355454 e!355452)))

(declare-fun res!399436 () Bool)

(assert (=> b!619749 (=> (not res!399436) (not e!355452))))

(declare-fun lt!286281 () SeekEntryResult!6472)

(assert (=> b!619749 (= res!399436 (and (= lt!286281 (Found!6472 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18025 a!2986) index!984) (select (arr!18025 a!2986) j!136))) (not (= (select (arr!18025 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!619749 (= lt!286281 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18025 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619750 () Bool)

(declare-fun res!399449 () Bool)

(assert (=> b!619750 (=> (not res!399449) (not e!355444))))

(assert (=> b!619750 (= res!399449 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18025 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!619751 () Bool)

(declare-fun Unit!20544 () Unit!20540)

(assert (=> b!619751 (= e!355447 Unit!20544)))

(declare-fun b!619752 () Bool)

(assert (=> b!619752 (= e!355453 e!355444)))

(declare-fun res!399433 () Bool)

(assert (=> b!619752 (=> (not res!399433) (not e!355444))))

(declare-fun lt!286284 () SeekEntryResult!6472)

(assert (=> b!619752 (= res!399433 (or (= lt!286284 (MissingZero!6472 i!1108)) (= lt!286284 (MissingVacant!6472 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37565 (_ BitVec 32)) SeekEntryResult!6472)

(assert (=> b!619752 (= lt!286284 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!619753 () Bool)

(assert (=> b!619753 (= e!355456 (= lt!286281 lt!286282))))

(declare-fun b!619754 () Bool)

(declare-fun res!399448 () Bool)

(assert (=> b!619754 (= res!399448 (bvsge j!136 index!984))))

(assert (=> b!619754 (=> res!399448 e!355451)))

(assert (=> b!619754 (= e!355445 e!355451)))

(declare-fun b!619755 () Bool)

(assert (=> b!619755 false))

(declare-fun lt!286289 () Unit!20540)

(assert (=> b!619755 (= lt!286289 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286292 (select (arr!18025 a!2986) j!136) j!136 Nil!12116))))

(assert (=> b!619755 (arrayNoDuplicates!0 lt!286292 j!136 Nil!12116)))

(declare-fun lt!286280 () Unit!20540)

(assert (=> b!619755 (= lt!286280 (lemmaNoDuplicateFromThenFromBigger!0 lt!286292 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619755 (arrayNoDuplicates!0 lt!286292 #b00000000000000000000000000000000 Nil!12116)))

(declare-fun lt!286294 () Unit!20540)

(assert (=> b!619755 (= lt!286294 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12116))))

(assert (=> b!619755 (arrayContainsKey!0 lt!286292 (select (arr!18025 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286290 () Unit!20540)

(assert (=> b!619755 (= lt!286290 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286292 (select (arr!18025 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20545 () Unit!20540)

(assert (=> b!619755 (= e!355450 Unit!20545)))

(declare-fun b!619756 () Bool)

(declare-fun res!399437 () Bool)

(assert (=> b!619756 (=> (not res!399437) (not e!355453))))

(assert (=> b!619756 (= res!399437 (validKeyInArray!0 k0!1786))))

(declare-fun b!619757 () Bool)

(declare-fun Unit!20546 () Unit!20540)

(assert (=> b!619757 (= e!355449 Unit!20546)))

(declare-fun b!619758 () Bool)

(declare-fun Unit!20547 () Unit!20540)

(assert (=> b!619758 (= e!355447 Unit!20547)))

(assert (=> b!619758 false))

(declare-fun b!619759 () Bool)

(declare-fun Unit!20548 () Unit!20540)

(assert (=> b!619759 (= e!355450 Unit!20548)))

(declare-fun b!619743 () Bool)

(assert (=> b!619743 (= e!355444 e!355454)))

(declare-fun res!399441 () Bool)

(assert (=> b!619743 (=> (not res!399441) (not e!355454))))

(assert (=> b!619743 (= res!399441 (= (select (store (arr!18025 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!619743 (= lt!286292 (array!37566 (store (arr!18025 a!2986) i!1108 k0!1786) (size!18389 a!2986)))))

(declare-fun res!399438 () Bool)

(assert (=> start!56132 (=> (not res!399438) (not e!355453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56132 (= res!399438 (validMask!0 mask!3053))))

(assert (=> start!56132 e!355453))

(assert (=> start!56132 true))

(declare-fun array_inv!13799 (array!37565) Bool)

(assert (=> start!56132 (array_inv!13799 a!2986)))

(declare-fun b!619760 () Bool)

(declare-fun res!399446 () Bool)

(assert (=> b!619760 (=> (not res!399446) (not e!355453))))

(assert (=> b!619760 (= res!399446 (and (= (size!18389 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18389 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18389 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619761 () Bool)

(assert (=> b!619761 (= e!355446 (arrayContainsKey!0 lt!286292 (select (arr!18025 a!2986) j!136) index!984))))

(declare-fun b!619762 () Bool)

(declare-fun res!399440 () Bool)

(assert (=> b!619762 (=> (not res!399440) (not e!355444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37565 (_ BitVec 32)) Bool)

(assert (=> b!619762 (= res!399440 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619763 () Bool)

(declare-fun Unit!20549 () Unit!20540)

(assert (=> b!619763 (= e!355443 Unit!20549)))

(assert (= (and start!56132 res!399438) b!619760))

(assert (= (and b!619760 res!399446) b!619740))

(assert (= (and b!619740 res!399442) b!619756))

(assert (= (and b!619756 res!399437) b!619745))

(assert (= (and b!619745 res!399444) b!619752))

(assert (= (and b!619752 res!399433) b!619762))

(assert (= (and b!619762 res!399440) b!619748))

(assert (= (and b!619748 res!399443) b!619750))

(assert (= (and b!619750 res!399449) b!619743))

(assert (= (and b!619743 res!399441) b!619749))

(assert (= (and b!619749 res!399436) b!619739))

(assert (= (and b!619739 res!399447) b!619753))

(assert (= (and b!619739 c!70521) b!619758))

(assert (= (and b!619739 (not c!70521)) b!619751))

(assert (= (and b!619739 c!70522) b!619747))

(assert (= (and b!619739 (not c!70522)) b!619757))

(assert (= (and b!619747 res!399435) b!619754))

(assert (= (and b!619754 (not res!399448)) b!619742))

(assert (= (and b!619742 res!399439) b!619761))

(assert (= (and b!619747 c!70523) b!619755))

(assert (= (and b!619747 (not c!70523)) b!619759))

(assert (= (and b!619747 c!70520) b!619744))

(assert (= (and b!619747 (not c!70520)) b!619763))

(assert (= (and b!619744 res!399445) b!619741))

(assert (= (and b!619739 (not res!399434)) b!619746))

(declare-fun m!595729 () Bool)

(assert (=> b!619739 m!595729))

(declare-fun m!595731 () Bool)

(assert (=> b!619739 m!595731))

(declare-fun m!595733 () Bool)

(assert (=> b!619739 m!595733))

(declare-fun m!595735 () Bool)

(assert (=> b!619739 m!595735))

(assert (=> b!619739 m!595733))

(declare-fun m!595737 () Bool)

(assert (=> b!619739 m!595737))

(declare-fun m!595739 () Bool)

(assert (=> b!619739 m!595739))

(declare-fun m!595741 () Bool)

(assert (=> b!619739 m!595741))

(declare-fun m!595743 () Bool)

(assert (=> b!619739 m!595743))

(declare-fun m!595745 () Bool)

(assert (=> b!619748 m!595745))

(assert (=> b!619742 m!595733))

(assert (=> b!619742 m!595733))

(declare-fun m!595747 () Bool)

(assert (=> b!619742 m!595747))

(declare-fun m!595749 () Bool)

(assert (=> b!619755 m!595749))

(assert (=> b!619755 m!595733))

(declare-fun m!595751 () Bool)

(assert (=> b!619755 m!595751))

(declare-fun m!595753 () Bool)

(assert (=> b!619755 m!595753))

(assert (=> b!619755 m!595733))

(declare-fun m!595755 () Bool)

(assert (=> b!619755 m!595755))

(declare-fun m!595757 () Bool)

(assert (=> b!619755 m!595757))

(declare-fun m!595759 () Bool)

(assert (=> b!619755 m!595759))

(assert (=> b!619755 m!595733))

(declare-fun m!595761 () Bool)

(assert (=> b!619755 m!595761))

(assert (=> b!619755 m!595733))

(assert (=> b!619744 m!595733))

(declare-fun m!595763 () Bool)

(assert (=> b!619744 m!595763))

(assert (=> b!619744 m!595753))

(assert (=> b!619744 m!595733))

(assert (=> b!619744 m!595733))

(declare-fun m!595765 () Bool)

(assert (=> b!619744 m!595765))

(assert (=> b!619744 m!595733))

(declare-fun m!595767 () Bool)

(assert (=> b!619744 m!595767))

(declare-fun m!595769 () Bool)

(assert (=> b!619744 m!595769))

(declare-fun m!595771 () Bool)

(assert (=> b!619744 m!595771))

(assert (=> b!619744 m!595733))

(assert (=> b!619744 m!595747))

(assert (=> b!619744 m!595759))

(declare-fun m!595773 () Bool)

(assert (=> b!619756 m!595773))

(assert (=> b!619746 m!595735))

(declare-fun m!595775 () Bool)

(assert (=> b!619746 m!595775))

(declare-fun m!595777 () Bool)

(assert (=> b!619750 m!595777))

(declare-fun m!595779 () Bool)

(assert (=> b!619745 m!595779))

(declare-fun m!595781 () Bool)

(assert (=> b!619749 m!595781))

(assert (=> b!619749 m!595733))

(assert (=> b!619749 m!595733))

(declare-fun m!595783 () Bool)

(assert (=> b!619749 m!595783))

(assert (=> b!619740 m!595733))

(assert (=> b!619740 m!595733))

(declare-fun m!595785 () Bool)

(assert (=> b!619740 m!595785))

(declare-fun m!595787 () Bool)

(assert (=> start!56132 m!595787))

(declare-fun m!595789 () Bool)

(assert (=> start!56132 m!595789))

(declare-fun m!595791 () Bool)

(assert (=> b!619752 m!595791))

(assert (=> b!619747 m!595735))

(assert (=> b!619747 m!595775))

(assert (=> b!619747 m!595733))

(declare-fun m!595793 () Bool)

(assert (=> b!619762 m!595793))

(assert (=> b!619741 m!595733))

(assert (=> b!619741 m!595733))

(declare-fun m!595795 () Bool)

(assert (=> b!619741 m!595795))

(assert (=> b!619761 m!595733))

(assert (=> b!619761 m!595733))

(assert (=> b!619761 m!595795))

(assert (=> b!619743 m!595735))

(declare-fun m!595797 () Bool)

(assert (=> b!619743 m!595797))

(check-sat (not b!619761) (not b!619740) (not b!619741) (not b!619744) (not b!619748) (not b!619752) (not b!619745) (not start!56132) (not b!619739) (not b!619749) (not b!619756) (not b!619742) (not b!619755) (not b!619762))
(check-sat)
