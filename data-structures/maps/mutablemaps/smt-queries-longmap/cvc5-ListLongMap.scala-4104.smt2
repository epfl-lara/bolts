; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56130 () Bool)

(assert start!56130)

(declare-fun b!619664 () Bool)

(declare-fun res!399395 () Bool)

(declare-fun e!355403 () Bool)

(assert (=> b!619664 (=> (not res!399395) (not e!355403))))

(declare-datatypes ((array!37563 0))(
  ( (array!37564 (arr!18024 (Array (_ BitVec 32) (_ BitVec 64))) (size!18388 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37563)

(declare-datatypes ((List!12118 0))(
  ( (Nil!12115) (Cons!12114 (h!13159 (_ BitVec 64)) (t!18354 List!12118)) )
))
(declare-fun arrayNoDuplicates!0 (array!37563 (_ BitVec 32) List!12118) Bool)

(assert (=> b!619664 (= res!399395 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12115))))

(declare-fun b!619665 () Bool)

(declare-fun res!399398 () Bool)

(declare-fun e!355410 () Bool)

(assert (=> b!619665 (=> (not res!399398) (not e!355410))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!37563 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!619665 (= res!399398 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!619666 () Bool)

(declare-datatypes ((Unit!20530 0))(
  ( (Unit!20531) )
))
(declare-fun e!355411 () Unit!20530)

(declare-fun Unit!20532 () Unit!20530)

(assert (=> b!619666 (= e!355411 Unit!20532)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun res!399393 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!619666 (= res!399393 (= (select (store (arr!18024 a!2986) i!1108 k!1786) index!984) (select (arr!18024 a!2986) j!136)))))

(declare-fun e!355398 () Bool)

(assert (=> b!619666 (=> (not res!399393) (not e!355398))))

(assert (=> b!619666 e!355398))

(declare-fun c!70509 () Bool)

(assert (=> b!619666 (= c!70509 (bvslt j!136 index!984))))

(declare-fun lt!286227 () Unit!20530)

(declare-fun e!355408 () Unit!20530)

(assert (=> b!619666 (= lt!286227 e!355408)))

(declare-fun c!70511 () Bool)

(assert (=> b!619666 (= c!70511 (bvslt index!984 j!136))))

(declare-fun lt!286231 () Unit!20530)

(declare-fun e!355397 () Unit!20530)

(assert (=> b!619666 (= lt!286231 e!355397)))

(assert (=> b!619666 false))

(declare-fun b!619667 () Bool)

(declare-fun e!355399 () Bool)

(assert (=> b!619667 (= e!355403 e!355399)))

(declare-fun res!399384 () Bool)

(assert (=> b!619667 (=> (not res!399384) (not e!355399))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!619667 (= res!399384 (= (select (store (arr!18024 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!286217 () array!37563)

(assert (=> b!619667 (= lt!286217 (array!37564 (store (arr!18024 a!2986) i!1108 k!1786) (size!18388 a!2986)))))

(declare-fun e!355404 () Bool)

(declare-fun b!619668 () Bool)

(assert (=> b!619668 (= e!355404 (arrayContainsKey!0 lt!286217 (select (arr!18024 a!2986) j!136) index!984))))

(declare-fun b!619669 () Bool)

(declare-fun res!399394 () Bool)

(assert (=> b!619669 (=> (not res!399394) (not e!355410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!619669 (= res!399394 (validKeyInArray!0 (select (arr!18024 a!2986) j!136)))))

(declare-fun b!619670 () Bool)

(declare-fun res!399388 () Bool)

(assert (=> b!619670 (= res!399388 (arrayContainsKey!0 lt!286217 (select (arr!18024 a!2986) j!136) j!136))))

(assert (=> b!619670 (=> (not res!399388) (not e!355404))))

(declare-fun e!355405 () Bool)

(assert (=> b!619670 (= e!355405 e!355404)))

(declare-fun e!355406 () Bool)

(declare-fun b!619671 () Bool)

(assert (=> b!619671 (= e!355406 (arrayContainsKey!0 lt!286217 (select (arr!18024 a!2986) j!136) index!984))))

(declare-fun res!399392 () Bool)

(assert (=> start!56130 (=> (not res!399392) (not e!355410))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56130 (= res!399392 (validMask!0 mask!3053))))

(assert (=> start!56130 e!355410))

(assert (=> start!56130 true))

(declare-fun array_inv!13798 (array!37563) Bool)

(assert (=> start!56130 (array_inv!13798 a!2986)))

(declare-fun b!619672 () Bool)

(declare-fun res!399397 () Bool)

(assert (=> b!619672 (=> (not res!399397) (not e!355410))))

(assert (=> b!619672 (= res!399397 (and (= (size!18388 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18388 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18388 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!619673 () Bool)

(declare-fun e!355402 () Unit!20530)

(declare-fun Unit!20533 () Unit!20530)

(assert (=> b!619673 (= e!355402 Unit!20533)))

(assert (=> b!619673 false))

(declare-fun b!619674 () Bool)

(assert (=> b!619674 false))

(declare-fun lt!286222 () Unit!20530)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37563 (_ BitVec 64) (_ BitVec 32) List!12118) Unit!20530)

(assert (=> b!619674 (= lt!286222 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286217 (select (arr!18024 a!2986) j!136) index!984 Nil!12115))))

(assert (=> b!619674 (arrayNoDuplicates!0 lt!286217 index!984 Nil!12115)))

(declare-fun lt!286220 () Unit!20530)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37563 (_ BitVec 32) (_ BitVec 32)) Unit!20530)

(assert (=> b!619674 (= lt!286220 (lemmaNoDuplicateFromThenFromBigger!0 lt!286217 #b00000000000000000000000000000000 index!984))))

(assert (=> b!619674 (arrayNoDuplicates!0 lt!286217 #b00000000000000000000000000000000 Nil!12115)))

(declare-fun lt!286233 () Unit!20530)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37563 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12118) Unit!20530)

(assert (=> b!619674 (= lt!286233 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12115))))

(assert (=> b!619674 (arrayContainsKey!0 lt!286217 (select (arr!18024 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!286221 () Unit!20530)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37563 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!20530)

(assert (=> b!619674 (= lt!286221 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286217 (select (arr!18024 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(assert (=> b!619674 e!355406))

(declare-fun res!399389 () Bool)

(assert (=> b!619674 (=> (not res!399389) (not e!355406))))

(assert (=> b!619674 (= res!399389 (arrayContainsKey!0 lt!286217 (select (arr!18024 a!2986) j!136) j!136))))

(declare-fun Unit!20534 () Unit!20530)

(assert (=> b!619674 (= e!355397 Unit!20534)))

(declare-fun b!619675 () Bool)

(declare-fun e!355400 () Bool)

(assert (=> b!619675 (= e!355400 true)))

(assert (=> b!619675 (= (select (store (arr!18024 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!619676 () Bool)

(declare-fun Unit!20535 () Unit!20530)

(assert (=> b!619676 (= e!355408 Unit!20535)))

(declare-fun b!619677 () Bool)

(declare-fun Unit!20536 () Unit!20530)

(assert (=> b!619677 (= e!355402 Unit!20536)))

(declare-fun b!619678 () Bool)

(declare-fun Unit!20537 () Unit!20530)

(assert (=> b!619678 (= e!355411 Unit!20537)))

(declare-fun b!619679 () Bool)

(declare-fun Unit!20538 () Unit!20530)

(assert (=> b!619679 (= e!355397 Unit!20538)))

(declare-fun b!619680 () Bool)

(assert (=> b!619680 (= e!355410 e!355403)))

(declare-fun res!399386 () Bool)

(assert (=> b!619680 (=> (not res!399386) (not e!355403))))

(declare-datatypes ((SeekEntryResult!6471 0))(
  ( (MissingZero!6471 (index!28167 (_ BitVec 32))) (Found!6471 (index!28168 (_ BitVec 32))) (Intermediate!6471 (undefined!7283 Bool) (index!28169 (_ BitVec 32)) (x!56976 (_ BitVec 32))) (Undefined!6471) (MissingVacant!6471 (index!28170 (_ BitVec 32))) )
))
(declare-fun lt!286224 () SeekEntryResult!6471)

(assert (=> b!619680 (= res!399386 (or (= lt!286224 (MissingZero!6471 i!1108)) (= lt!286224 (MissingVacant!6471 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37563 (_ BitVec 32)) SeekEntryResult!6471)

(assert (=> b!619680 (= lt!286224 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!619681 () Bool)

(declare-fun e!355401 () Bool)

(assert (=> b!619681 (= e!355401 (not e!355400))))

(declare-fun res!399396 () Bool)

(assert (=> b!619681 (=> res!399396 e!355400)))

(declare-fun lt!286230 () SeekEntryResult!6471)

(assert (=> b!619681 (= res!399396 (not (= lt!286230 (MissingVacant!6471 vacantSpotIndex!68))))))

(declare-fun lt!286228 () Unit!20530)

(assert (=> b!619681 (= lt!286228 e!355411)))

(declare-fun c!70510 () Bool)

(assert (=> b!619681 (= c!70510 (= lt!286230 (Found!6471 index!984)))))

(declare-fun lt!286223 () Unit!20530)

(assert (=> b!619681 (= lt!286223 e!355402)))

(declare-fun c!70508 () Bool)

(assert (=> b!619681 (= c!70508 (= lt!286230 Undefined!6471))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!286234 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37563 (_ BitVec 32)) SeekEntryResult!6471)

(assert (=> b!619681 (= lt!286230 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!286234 lt!286217 mask!3053))))

(declare-fun e!355407 () Bool)

(assert (=> b!619681 e!355407))

(declare-fun res!399383 () Bool)

(assert (=> b!619681 (=> (not res!399383) (not e!355407))))

(declare-fun lt!286236 () SeekEntryResult!6471)

(declare-fun lt!286225 () (_ BitVec 32))

(assert (=> b!619681 (= res!399383 (= lt!286236 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286225 vacantSpotIndex!68 lt!286234 lt!286217 mask!3053)))))

(assert (=> b!619681 (= lt!286236 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!286225 vacantSpotIndex!68 (select (arr!18024 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!619681 (= lt!286234 (select (store (arr!18024 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!286229 () Unit!20530)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37563 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!20530)

(assert (=> b!619681 (= lt!286229 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!286225 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!619681 (= lt!286225 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!619682 () Bool)

(declare-fun lt!286235 () SeekEntryResult!6471)

(assert (=> b!619682 (= e!355407 (= lt!286235 lt!286236))))

(declare-fun b!619683 () Bool)

(assert (=> b!619683 false))

(declare-fun lt!286219 () Unit!20530)

(assert (=> b!619683 (= lt!286219 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!286217 (select (arr!18024 a!2986) j!136) j!136 Nil!12115))))

(assert (=> b!619683 (arrayNoDuplicates!0 lt!286217 j!136 Nil!12115)))

(declare-fun lt!286226 () Unit!20530)

(assert (=> b!619683 (= lt!286226 (lemmaNoDuplicateFromThenFromBigger!0 lt!286217 #b00000000000000000000000000000000 j!136))))

(assert (=> b!619683 (arrayNoDuplicates!0 lt!286217 #b00000000000000000000000000000000 Nil!12115)))

(declare-fun lt!286232 () Unit!20530)

(assert (=> b!619683 (= lt!286232 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12115))))

(assert (=> b!619683 (arrayContainsKey!0 lt!286217 (select (arr!18024 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!286218 () Unit!20530)

(assert (=> b!619683 (= lt!286218 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!286217 (select (arr!18024 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!20539 () Unit!20530)

(assert (=> b!619683 (= e!355408 Unit!20539)))

(declare-fun b!619684 () Bool)

(declare-fun res!399385 () Bool)

(assert (=> b!619684 (=> (not res!399385) (not e!355410))))

(assert (=> b!619684 (= res!399385 (validKeyInArray!0 k!1786))))

(declare-fun b!619685 () Bool)

(assert (=> b!619685 (= e!355399 e!355401)))

(declare-fun res!399391 () Bool)

(assert (=> b!619685 (=> (not res!399391) (not e!355401))))

(assert (=> b!619685 (= res!399391 (and (= lt!286235 (Found!6471 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18024 a!2986) index!984) (select (arr!18024 a!2986) j!136))) (not (= (select (arr!18024 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!619685 (= lt!286235 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18024 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!619686 () Bool)

(declare-fun res!399390 () Bool)

(assert (=> b!619686 (=> (not res!399390) (not e!355403))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37563 (_ BitVec 32)) Bool)

(assert (=> b!619686 (= res!399390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!619687 () Bool)

(declare-fun res!399382 () Bool)

(assert (=> b!619687 (= res!399382 (bvsge j!136 index!984))))

(assert (=> b!619687 (=> res!399382 e!355405)))

(assert (=> b!619687 (= e!355398 e!355405)))

(declare-fun b!619688 () Bool)

(declare-fun res!399387 () Bool)

(assert (=> b!619688 (=> (not res!399387) (not e!355403))))

(assert (=> b!619688 (= res!399387 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18024 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56130 res!399392) b!619672))

(assert (= (and b!619672 res!399397) b!619669))

(assert (= (and b!619669 res!399394) b!619684))

(assert (= (and b!619684 res!399385) b!619665))

(assert (= (and b!619665 res!399398) b!619680))

(assert (= (and b!619680 res!399386) b!619686))

(assert (= (and b!619686 res!399390) b!619664))

(assert (= (and b!619664 res!399395) b!619688))

(assert (= (and b!619688 res!399387) b!619667))

(assert (= (and b!619667 res!399384) b!619685))

(assert (= (and b!619685 res!399391) b!619681))

(assert (= (and b!619681 res!399383) b!619682))

(assert (= (and b!619681 c!70508) b!619673))

(assert (= (and b!619681 (not c!70508)) b!619677))

(assert (= (and b!619681 c!70510) b!619666))

(assert (= (and b!619681 (not c!70510)) b!619678))

(assert (= (and b!619666 res!399393) b!619687))

(assert (= (and b!619687 (not res!399382)) b!619670))

(assert (= (and b!619670 res!399388) b!619668))

(assert (= (and b!619666 c!70509) b!619683))

(assert (= (and b!619666 (not c!70509)) b!619676))

(assert (= (and b!619666 c!70511) b!619674))

(assert (= (and b!619666 (not c!70511)) b!619679))

(assert (= (and b!619674 res!399389) b!619671))

(assert (= (and b!619681 (not res!399396)) b!619675))

(declare-fun m!595659 () Bool)

(assert (=> b!619688 m!595659))

(declare-fun m!595661 () Bool)

(assert (=> b!619669 m!595661))

(assert (=> b!619669 m!595661))

(declare-fun m!595663 () Bool)

(assert (=> b!619669 m!595663))

(declare-fun m!595665 () Bool)

(assert (=> b!619686 m!595665))

(declare-fun m!595667 () Bool)

(assert (=> b!619684 m!595667))

(declare-fun m!595669 () Bool)

(assert (=> b!619666 m!595669))

(declare-fun m!595671 () Bool)

(assert (=> b!619666 m!595671))

(assert (=> b!619666 m!595661))

(declare-fun m!595673 () Bool)

(assert (=> b!619683 m!595673))

(assert (=> b!619683 m!595661))

(declare-fun m!595675 () Bool)

(assert (=> b!619683 m!595675))

(declare-fun m!595677 () Bool)

(assert (=> b!619683 m!595677))

(declare-fun m!595679 () Bool)

(assert (=> b!619683 m!595679))

(assert (=> b!619683 m!595661))

(declare-fun m!595681 () Bool)

(assert (=> b!619683 m!595681))

(declare-fun m!595683 () Bool)

(assert (=> b!619683 m!595683))

(assert (=> b!619683 m!595661))

(declare-fun m!595685 () Bool)

(assert (=> b!619683 m!595685))

(assert (=> b!619683 m!595661))

(assert (=> b!619667 m!595669))

(declare-fun m!595687 () Bool)

(assert (=> b!619667 m!595687))

(assert (=> b!619675 m!595669))

(assert (=> b!619675 m!595671))

(declare-fun m!595689 () Bool)

(assert (=> b!619664 m!595689))

(declare-fun m!595691 () Bool)

(assert (=> start!56130 m!595691))

(declare-fun m!595693 () Bool)

(assert (=> start!56130 m!595693))

(declare-fun m!595695 () Bool)

(assert (=> b!619665 m!595695))

(assert (=> b!619674 m!595661))

(declare-fun m!595697 () Bool)

(assert (=> b!619674 m!595697))

(assert (=> b!619674 m!595661))

(declare-fun m!595699 () Bool)

(assert (=> b!619674 m!595699))

(declare-fun m!595701 () Bool)

(assert (=> b!619674 m!595701))

(assert (=> b!619674 m!595661))

(declare-fun m!595703 () Bool)

(assert (=> b!619674 m!595703))

(assert (=> b!619674 m!595683))

(declare-fun m!595705 () Bool)

(assert (=> b!619674 m!595705))

(assert (=> b!619674 m!595661))

(assert (=> b!619674 m!595661))

(declare-fun m!595707 () Bool)

(assert (=> b!619674 m!595707))

(assert (=> b!619674 m!595677))

(assert (=> b!619670 m!595661))

(assert (=> b!619670 m!595661))

(assert (=> b!619670 m!595707))

(declare-fun m!595709 () Bool)

(assert (=> b!619680 m!595709))

(assert (=> b!619668 m!595661))

(assert (=> b!619668 m!595661))

(declare-fun m!595711 () Bool)

(assert (=> b!619668 m!595711))

(assert (=> b!619671 m!595661))

(assert (=> b!619671 m!595661))

(assert (=> b!619671 m!595711))

(declare-fun m!595713 () Bool)

(assert (=> b!619685 m!595713))

(assert (=> b!619685 m!595661))

(assert (=> b!619685 m!595661))

(declare-fun m!595715 () Bool)

(assert (=> b!619685 m!595715))

(declare-fun m!595717 () Bool)

(assert (=> b!619681 m!595717))

(declare-fun m!595719 () Bool)

(assert (=> b!619681 m!595719))

(assert (=> b!619681 m!595661))

(assert (=> b!619681 m!595669))

(declare-fun m!595721 () Bool)

(assert (=> b!619681 m!595721))

(declare-fun m!595723 () Bool)

(assert (=> b!619681 m!595723))

(assert (=> b!619681 m!595661))

(declare-fun m!595725 () Bool)

(assert (=> b!619681 m!595725))

(declare-fun m!595727 () Bool)

(assert (=> b!619681 m!595727))

(push 1)

