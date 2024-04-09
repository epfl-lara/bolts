; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!58556 () Bool)

(assert start!58556)

(declare-fun b!646033 () Bool)

(declare-fun e!370321 () Bool)

(declare-datatypes ((SeekEntryResult!6877 0))(
  ( (MissingZero!6877 (index!29845 (_ BitVec 32))) (Found!6877 (index!29846 (_ BitVec 32))) (Intermediate!6877 (undefined!7689 Bool) (index!29847 (_ BitVec 32)) (x!58648 (_ BitVec 32))) (Undefined!6877) (MissingVacant!6877 (index!29848 (_ BitVec 32))) )
))
(declare-fun lt!299729 () SeekEntryResult!6877)

(declare-fun lt!299730 () SeekEntryResult!6877)

(assert (=> b!646033 (= e!370321 (= lt!299729 lt!299730))))

(declare-fun b!646034 () Bool)

(declare-fun res!418663 () Bool)

(declare-fun e!370319 () Bool)

(assert (=> b!646034 (=> (not res!418663) (not e!370319))))

(declare-datatypes ((array!38447 0))(
  ( (array!38448 (arr!18430 (Array (_ BitVec 32) (_ BitVec 64))) (size!18794 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38447)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38447 (_ BitVec 32)) Bool)

(assert (=> b!646034 (= res!418663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!646035 () Bool)

(declare-fun e!370311 () Bool)

(declare-fun e!370314 () Bool)

(assert (=> b!646035 (= e!370311 (not e!370314))))

(declare-fun res!418658 () Bool)

(assert (=> b!646035 (=> res!418658 e!370314)))

(declare-fun lt!299717 () SeekEntryResult!6877)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!646035 (= res!418658 (not (= lt!299717 (Found!6877 index!984))))))

(declare-datatypes ((Unit!21934 0))(
  ( (Unit!21935) )
))
(declare-fun lt!299722 () Unit!21934)

(declare-fun e!370317 () Unit!21934)

(assert (=> b!646035 (= lt!299722 e!370317)))

(declare-fun c!74056 () Bool)

(assert (=> b!646035 (= c!74056 (= lt!299717 Undefined!6877))))

(declare-fun lt!299728 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!299719 () array!38447)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38447 (_ BitVec 32)) SeekEntryResult!6877)

(assert (=> b!646035 (= lt!299717 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!299728 lt!299719 mask!3053))))

(assert (=> b!646035 e!370321))

(declare-fun res!418656 () Bool)

(assert (=> b!646035 (=> (not res!418656) (not e!370321))))

(declare-fun lt!299716 () (_ BitVec 32))

(assert (=> b!646035 (= res!418656 (= lt!299730 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299716 vacantSpotIndex!68 lt!299728 lt!299719 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!646035 (= lt!299730 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!299716 vacantSpotIndex!68 (select (arr!18430 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!646035 (= lt!299728 (select (store (arr!18430 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!299726 () Unit!21934)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38447 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21934)

(assert (=> b!646035 (= lt!299726 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!299716 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!646035 (= lt!299716 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun e!370313 () Bool)

(declare-fun b!646036 () Bool)

(declare-fun arrayContainsKey!0 (array!38447 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!646036 (= e!370313 (arrayContainsKey!0 lt!299719 (select (arr!18430 a!2986) j!136) index!984))))

(declare-fun b!646037 () Bool)

(declare-fun e!370316 () Bool)

(assert (=> b!646037 (= e!370316 e!370313)))

(declare-fun res!418662 () Bool)

(assert (=> b!646037 (=> (not res!418662) (not e!370313))))

(assert (=> b!646037 (= res!418662 (arrayContainsKey!0 lt!299719 (select (arr!18430 a!2986) j!136) j!136))))

(declare-fun b!646039 () Bool)

(declare-fun e!370320 () Bool)

(declare-fun e!370310 () Bool)

(assert (=> b!646039 (= e!370320 e!370310)))

(declare-fun res!418657 () Bool)

(assert (=> b!646039 (=> res!418657 e!370310)))

(assert (=> b!646039 (= res!418657 (bvsge index!984 j!136))))

(declare-fun lt!299720 () Unit!21934)

(declare-fun e!370315 () Unit!21934)

(assert (=> b!646039 (= lt!299720 e!370315)))

(declare-fun c!74057 () Bool)

(assert (=> b!646039 (= c!74057 (bvslt j!136 index!984))))

(declare-fun b!646040 () Bool)

(declare-fun res!418668 () Bool)

(declare-fun e!370309 () Bool)

(assert (=> b!646040 (=> (not res!418668) (not e!370309))))

(assert (=> b!646040 (= res!418668 (and (= (size!18794 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18794 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18794 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!646041 () Bool)

(declare-fun e!370312 () Bool)

(assert (=> b!646041 (= e!370312 e!370316)))

(declare-fun res!418665 () Bool)

(assert (=> b!646041 (=> res!418665 e!370316)))

(declare-fun lt!299724 () (_ BitVec 64))

(assert (=> b!646041 (= res!418665 (or (not (= (select (arr!18430 a!2986) j!136) lt!299728)) (not (= (select (arr!18430 a!2986) j!136) lt!299724)) (bvsge j!136 index!984)))))

(declare-fun b!646042 () Bool)

(declare-fun res!418672 () Bool)

(assert (=> b!646042 (=> (not res!418672) (not e!370309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!646042 (= res!418672 (validKeyInArray!0 (select (arr!18430 a!2986) j!136)))))

(declare-fun b!646043 () Bool)

(declare-fun res!418671 () Bool)

(assert (=> b!646043 (=> (not res!418671) (not e!370319))))

(assert (=> b!646043 (= res!418671 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18430 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!646044 () Bool)

(declare-fun Unit!21936 () Unit!21934)

(assert (=> b!646044 (= e!370315 Unit!21936)))

(declare-fun b!646045 () Bool)

(declare-fun e!370308 () Bool)

(assert (=> b!646045 (= e!370308 e!370311)))

(declare-fun res!418660 () Bool)

(assert (=> b!646045 (=> (not res!418660) (not e!370311))))

(assert (=> b!646045 (= res!418660 (and (= lt!299729 (Found!6877 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18430 a!2986) index!984) (select (arr!18430 a!2986) j!136))) (not (= (select (arr!18430 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!646045 (= lt!299729 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18430 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!646046 () Bool)

(assert (=> b!646046 (= e!370310 true)))

(assert (=> b!646046 (arrayContainsKey!0 lt!299719 (select (arr!18430 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!299721 () Unit!21934)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38447 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21934)

(assert (=> b!646046 (= lt!299721 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299719 (select (arr!18430 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!370307 () Bool)

(assert (=> b!646046 e!370307))

(declare-fun res!418667 () Bool)

(assert (=> b!646046 (=> (not res!418667) (not e!370307))))

(assert (=> b!646046 (= res!418667 (arrayContainsKey!0 lt!299719 (select (arr!18430 a!2986) j!136) j!136))))

(declare-fun b!646047 () Bool)

(declare-fun res!418666 () Bool)

(assert (=> b!646047 (=> (not res!418666) (not e!370309))))

(assert (=> b!646047 (= res!418666 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!646048 () Bool)

(declare-fun Unit!21937 () Unit!21934)

(assert (=> b!646048 (= e!370317 Unit!21937)))

(assert (=> b!646048 false))

(declare-fun b!646049 () Bool)

(declare-fun res!418670 () Bool)

(assert (=> b!646049 (=> (not res!418670) (not e!370319))))

(declare-datatypes ((List!12524 0))(
  ( (Nil!12521) (Cons!12520 (h!13565 (_ BitVec 64)) (t!18760 List!12524)) )
))
(declare-fun arrayNoDuplicates!0 (array!38447 (_ BitVec 32) List!12524) Bool)

(assert (=> b!646049 (= res!418670 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12521))))

(declare-fun b!646050 () Bool)

(declare-fun Unit!21938 () Unit!21934)

(assert (=> b!646050 (= e!370317 Unit!21938)))

(declare-fun b!646051 () Bool)

(assert (=> b!646051 (= e!370319 e!370308)))

(declare-fun res!418655 () Bool)

(assert (=> b!646051 (=> (not res!418655) (not e!370308))))

(assert (=> b!646051 (= res!418655 (= (select (store (arr!18430 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!646051 (= lt!299719 (array!38448 (store (arr!18430 a!2986) i!1108 k0!1786) (size!18794 a!2986)))))

(declare-fun b!646038 () Bool)

(assert (=> b!646038 (= e!370309 e!370319)))

(declare-fun res!418661 () Bool)

(assert (=> b!646038 (=> (not res!418661) (not e!370319))))

(declare-fun lt!299725 () SeekEntryResult!6877)

(assert (=> b!646038 (= res!418661 (or (= lt!299725 (MissingZero!6877 i!1108)) (= lt!299725 (MissingVacant!6877 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38447 (_ BitVec 32)) SeekEntryResult!6877)

(assert (=> b!646038 (= lt!299725 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!418669 () Bool)

(assert (=> start!58556 (=> (not res!418669) (not e!370309))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!58556 (= res!418669 (validMask!0 mask!3053))))

(assert (=> start!58556 e!370309))

(assert (=> start!58556 true))

(declare-fun array_inv!14204 (array!38447) Bool)

(assert (=> start!58556 (array_inv!14204 a!2986)))

(declare-fun b!646052 () Bool)

(declare-fun res!418659 () Bool)

(assert (=> b!646052 (=> (not res!418659) (not e!370309))))

(assert (=> b!646052 (= res!418659 (validKeyInArray!0 k0!1786))))

(declare-fun b!646053 () Bool)

(declare-fun Unit!21939 () Unit!21934)

(assert (=> b!646053 (= e!370315 Unit!21939)))

(declare-fun lt!299718 () Unit!21934)

(assert (=> b!646053 (= lt!299718 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!299719 (select (arr!18430 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!646053 (arrayContainsKey!0 lt!299719 (select (arr!18430 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!299727 () Unit!21934)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38447 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12524) Unit!21934)

(assert (=> b!646053 (= lt!299727 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12521))))

(assert (=> b!646053 (arrayNoDuplicates!0 lt!299719 #b00000000000000000000000000000000 Nil!12521)))

(declare-fun lt!299715 () Unit!21934)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38447 (_ BitVec 32) (_ BitVec 32)) Unit!21934)

(assert (=> b!646053 (= lt!299715 (lemmaNoDuplicateFromThenFromBigger!0 lt!299719 #b00000000000000000000000000000000 j!136))))

(assert (=> b!646053 (arrayNoDuplicates!0 lt!299719 j!136 Nil!12521)))

(declare-fun lt!299723 () Unit!21934)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38447 (_ BitVec 64) (_ BitVec 32) List!12524) Unit!21934)

(assert (=> b!646053 (= lt!299723 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!299719 (select (arr!18430 a!2986) j!136) j!136 Nil!12521))))

(assert (=> b!646053 false))

(declare-fun b!646054 () Bool)

(assert (=> b!646054 (= e!370307 (arrayContainsKey!0 lt!299719 (select (arr!18430 a!2986) j!136) index!984))))

(declare-fun b!646055 () Bool)

(assert (=> b!646055 (= e!370314 e!370320)))

(declare-fun res!418664 () Bool)

(assert (=> b!646055 (=> res!418664 e!370320)))

(assert (=> b!646055 (= res!418664 (or (not (= (select (arr!18430 a!2986) j!136) lt!299728)) (not (= (select (arr!18430 a!2986) j!136) lt!299724))))))

(assert (=> b!646055 e!370312))

(declare-fun res!418673 () Bool)

(assert (=> b!646055 (=> (not res!418673) (not e!370312))))

(assert (=> b!646055 (= res!418673 (= lt!299724 (select (arr!18430 a!2986) j!136)))))

(assert (=> b!646055 (= lt!299724 (select (store (arr!18430 a!2986) i!1108 k0!1786) index!984))))

(assert (= (and start!58556 res!418669) b!646040))

(assert (= (and b!646040 res!418668) b!646042))

(assert (= (and b!646042 res!418672) b!646052))

(assert (= (and b!646052 res!418659) b!646047))

(assert (= (and b!646047 res!418666) b!646038))

(assert (= (and b!646038 res!418661) b!646034))

(assert (= (and b!646034 res!418663) b!646049))

(assert (= (and b!646049 res!418670) b!646043))

(assert (= (and b!646043 res!418671) b!646051))

(assert (= (and b!646051 res!418655) b!646045))

(assert (= (and b!646045 res!418660) b!646035))

(assert (= (and b!646035 res!418656) b!646033))

(assert (= (and b!646035 c!74056) b!646048))

(assert (= (and b!646035 (not c!74056)) b!646050))

(assert (= (and b!646035 (not res!418658)) b!646055))

(assert (= (and b!646055 res!418673) b!646041))

(assert (= (and b!646041 (not res!418665)) b!646037))

(assert (= (and b!646037 res!418662) b!646036))

(assert (= (and b!646055 (not res!418664)) b!646039))

(assert (= (and b!646039 c!74057) b!646053))

(assert (= (and b!646039 (not c!74057)) b!646044))

(assert (= (and b!646039 (not res!418657)) b!646046))

(assert (= (and b!646046 res!418667) b!646054))

(declare-fun m!619585 () Bool)

(assert (=> b!646049 m!619585))

(declare-fun m!619587 () Bool)

(assert (=> b!646034 m!619587))

(declare-fun m!619589 () Bool)

(assert (=> b!646053 m!619589))

(declare-fun m!619591 () Bool)

(assert (=> b!646053 m!619591))

(declare-fun m!619593 () Bool)

(assert (=> b!646053 m!619593))

(declare-fun m!619595 () Bool)

(assert (=> b!646053 m!619595))

(declare-fun m!619597 () Bool)

(assert (=> b!646053 m!619597))

(assert (=> b!646053 m!619593))

(declare-fun m!619599 () Bool)

(assert (=> b!646053 m!619599))

(declare-fun m!619601 () Bool)

(assert (=> b!646053 m!619601))

(assert (=> b!646053 m!619593))

(assert (=> b!646053 m!619593))

(declare-fun m!619603 () Bool)

(assert (=> b!646053 m!619603))

(assert (=> b!646041 m!619593))

(declare-fun m!619605 () Bool)

(assert (=> b!646047 m!619605))

(declare-fun m!619607 () Bool)

(assert (=> b!646045 m!619607))

(assert (=> b!646045 m!619593))

(assert (=> b!646045 m!619593))

(declare-fun m!619609 () Bool)

(assert (=> b!646045 m!619609))

(assert (=> b!646055 m!619593))

(declare-fun m!619611 () Bool)

(assert (=> b!646055 m!619611))

(declare-fun m!619613 () Bool)

(assert (=> b!646055 m!619613))

(assert (=> b!646051 m!619611))

(declare-fun m!619615 () Bool)

(assert (=> b!646051 m!619615))

(assert (=> b!646035 m!619593))

(declare-fun m!619617 () Bool)

(assert (=> b!646035 m!619617))

(declare-fun m!619619 () Bool)

(assert (=> b!646035 m!619619))

(assert (=> b!646035 m!619593))

(assert (=> b!646035 m!619611))

(declare-fun m!619621 () Bool)

(assert (=> b!646035 m!619621))

(declare-fun m!619623 () Bool)

(assert (=> b!646035 m!619623))

(declare-fun m!619625 () Bool)

(assert (=> b!646035 m!619625))

(declare-fun m!619627 () Bool)

(assert (=> b!646035 m!619627))

(assert (=> b!646037 m!619593))

(assert (=> b!646037 m!619593))

(declare-fun m!619629 () Bool)

(assert (=> b!646037 m!619629))

(assert (=> b!646036 m!619593))

(assert (=> b!646036 m!619593))

(declare-fun m!619631 () Bool)

(assert (=> b!646036 m!619631))

(assert (=> b!646042 m!619593))

(assert (=> b!646042 m!619593))

(declare-fun m!619633 () Bool)

(assert (=> b!646042 m!619633))

(assert (=> b!646054 m!619593))

(assert (=> b!646054 m!619593))

(assert (=> b!646054 m!619631))

(declare-fun m!619635 () Bool)

(assert (=> b!646043 m!619635))

(declare-fun m!619637 () Bool)

(assert (=> start!58556 m!619637))

(declare-fun m!619639 () Bool)

(assert (=> start!58556 m!619639))

(declare-fun m!619641 () Bool)

(assert (=> b!646052 m!619641))

(declare-fun m!619643 () Bool)

(assert (=> b!646038 m!619643))

(assert (=> b!646046 m!619593))

(assert (=> b!646046 m!619593))

(declare-fun m!619645 () Bool)

(assert (=> b!646046 m!619645))

(assert (=> b!646046 m!619593))

(declare-fun m!619647 () Bool)

(assert (=> b!646046 m!619647))

(assert (=> b!646046 m!619593))

(assert (=> b!646046 m!619629))

(check-sat (not b!646042) (not b!646052) (not b!646047) (not b!646037) (not b!646053) (not b!646034) (not b!646036) (not b!646054) (not b!646049) (not b!646035) (not start!58556) (not b!646046) (not b!646045) (not b!646038))
(check-sat)
