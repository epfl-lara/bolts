; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!55916 () Bool)

(assert start!55916)

(declare-fun b!611683 () Bool)

(declare-fun res!393529 () Bool)

(declare-fun e!350575 () Bool)

(assert (=> b!611683 (=> (not res!393529) (not e!350575))))

(declare-datatypes ((array!37349 0))(
  ( (array!37350 (arr!17917 (Array (_ BitVec 32) (_ BitVec 64))) (size!18281 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37349)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37349 (_ BitVec 32)) Bool)

(assert (=> b!611683 (= res!393529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!611684 () Bool)

(declare-datatypes ((Unit!19612 0))(
  ( (Unit!19613) )
))
(declare-fun e!350569 () Unit!19612)

(declare-fun Unit!19614 () Unit!19612)

(assert (=> b!611684 (= e!350569 Unit!19614)))

(assert (=> b!611684 false))

(declare-fun b!611685 () Bool)

(declare-fun e!350577 () Unit!19612)

(declare-fun Unit!19615 () Unit!19612)

(assert (=> b!611685 (= e!350577 Unit!19615)))

(declare-fun b!611686 () Bool)

(declare-fun res!393533 () Bool)

(declare-fun e!350566 () Bool)

(assert (=> b!611686 (=> (not res!393533) (not e!350566))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!611686 (= res!393533 (validKeyInArray!0 k0!1786))))

(declare-fun b!611687 () Bool)

(declare-fun e!350565 () Bool)

(declare-fun e!350572 () Bool)

(assert (=> b!611687 (= e!350565 e!350572)))

(declare-fun res!393523 () Bool)

(assert (=> b!611687 (=> (not res!393523) (not e!350572))))

(declare-fun lt!279981 () array!37349)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!611687 (= res!393523 (arrayContainsKey!0 lt!279981 (select (arr!17917 a!2986) j!136) j!136))))

(declare-fun b!611688 () Bool)

(assert (=> b!611688 (= e!350566 e!350575)))

(declare-fun res!393526 () Bool)

(assert (=> b!611688 (=> (not res!393526) (not e!350575))))

(declare-datatypes ((SeekEntryResult!6364 0))(
  ( (MissingZero!6364 (index!27739 (_ BitVec 32))) (Found!6364 (index!27740 (_ BitVec 32))) (Intermediate!6364 (undefined!7176 Bool) (index!27741 (_ BitVec 32)) (x!56581 (_ BitVec 32))) (Undefined!6364) (MissingVacant!6364 (index!27742 (_ BitVec 32))) )
))
(declare-fun lt!279974 () SeekEntryResult!6364)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!611688 (= res!393526 (or (= lt!279974 (MissingZero!6364 i!1108)) (= lt!279974 (MissingVacant!6364 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37349 (_ BitVec 32)) SeekEntryResult!6364)

(assert (=> b!611688 (= lt!279974 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!611689 () Bool)

(declare-fun res!393536 () Bool)

(assert (=> b!611689 (=> (not res!393536) (not e!350566))))

(assert (=> b!611689 (= res!393536 (and (= (size!18281 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18281 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18281 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!611690 () Bool)

(declare-fun Unit!19616 () Unit!19612)

(assert (=> b!611690 (= e!350577 Unit!19616)))

(declare-fun lt!279980 () Unit!19612)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37349 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!19612)

(assert (=> b!611690 (= lt!279980 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279981 (select (arr!17917 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!611690 (arrayContainsKey!0 lt!279981 (select (arr!17917 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!279973 () Unit!19612)

(declare-datatypes ((List!12011 0))(
  ( (Nil!12008) (Cons!12007 (h!13052 (_ BitVec 64)) (t!18247 List!12011)) )
))
(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37349 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12011) Unit!19612)

(assert (=> b!611690 (= lt!279973 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12008))))

(declare-fun arrayNoDuplicates!0 (array!37349 (_ BitVec 32) List!12011) Bool)

(assert (=> b!611690 (arrayNoDuplicates!0 lt!279981 #b00000000000000000000000000000000 Nil!12008)))

(declare-fun lt!279971 () Unit!19612)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!37349 (_ BitVec 32) (_ BitVec 32)) Unit!19612)

(assert (=> b!611690 (= lt!279971 (lemmaNoDuplicateFromThenFromBigger!0 lt!279981 #b00000000000000000000000000000000 j!136))))

(assert (=> b!611690 (arrayNoDuplicates!0 lt!279981 j!136 Nil!12008)))

(declare-fun lt!279987 () Unit!19612)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!37349 (_ BitVec 64) (_ BitVec 32) List!12011) Unit!19612)

(assert (=> b!611690 (= lt!279987 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!279981 (select (arr!17917 a!2986) j!136) j!136 Nil!12008))))

(assert (=> b!611690 false))

(declare-fun b!611691 () Bool)

(declare-fun res!393532 () Bool)

(assert (=> b!611691 (=> (not res!393532) (not e!350575))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!611691 (= res!393532 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!17917 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!611692 () Bool)

(declare-fun e!350571 () Bool)

(assert (=> b!611692 (= e!350571 e!350565)))

(declare-fun res!393525 () Bool)

(assert (=> b!611692 (=> res!393525 e!350565)))

(declare-fun lt!279979 () (_ BitVec 64))

(declare-fun lt!279977 () (_ BitVec 64))

(assert (=> b!611692 (= res!393525 (or (not (= (select (arr!17917 a!2986) j!136) lt!279979)) (not (= (select (arr!17917 a!2986) j!136) lt!279977)) (bvsge j!136 index!984)))))

(declare-fun b!611693 () Bool)

(declare-fun e!350564 () Bool)

(assert (=> b!611693 (= e!350564 true)))

(assert (=> b!611693 (arrayNoDuplicates!0 lt!279981 #b00000000000000000000000000000000 Nil!12008)))

(declare-fun lt!279978 () Unit!19612)

(assert (=> b!611693 (= lt!279978 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12008))))

(assert (=> b!611693 (arrayContainsKey!0 lt!279981 (select (arr!17917 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!279985 () Unit!19612)

(assert (=> b!611693 (= lt!279985 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!279981 (select (arr!17917 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!350578 () Bool)

(assert (=> b!611693 e!350578))

(declare-fun res!393528 () Bool)

(assert (=> b!611693 (=> (not res!393528) (not e!350578))))

(assert (=> b!611693 (= res!393528 (arrayContainsKey!0 lt!279981 (select (arr!17917 a!2986) j!136) j!136))))

(declare-fun b!611694 () Bool)

(declare-fun e!350567 () Bool)

(assert (=> b!611694 (= e!350575 e!350567)))

(declare-fun res!393534 () Bool)

(assert (=> b!611694 (=> (not res!393534) (not e!350567))))

(assert (=> b!611694 (= res!393534 (= (select (store (arr!17917 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!611694 (= lt!279981 (array!37350 (store (arr!17917 a!2986) i!1108 k0!1786) (size!18281 a!2986)))))

(declare-fun res!393524 () Bool)

(assert (=> start!55916 (=> (not res!393524) (not e!350566))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!55916 (= res!393524 (validMask!0 mask!3053))))

(assert (=> start!55916 e!350566))

(assert (=> start!55916 true))

(declare-fun array_inv!13691 (array!37349) Bool)

(assert (=> start!55916 (array_inv!13691 a!2986)))

(declare-fun b!611695 () Bool)

(declare-fun Unit!19617 () Unit!19612)

(assert (=> b!611695 (= e!350569 Unit!19617)))

(declare-fun b!611696 () Bool)

(declare-fun res!393527 () Bool)

(assert (=> b!611696 (=> (not res!393527) (not e!350566))))

(assert (=> b!611696 (= res!393527 (validKeyInArray!0 (select (arr!17917 a!2986) j!136)))))

(declare-fun b!611697 () Bool)

(assert (=> b!611697 (= e!350578 (arrayContainsKey!0 lt!279981 (select (arr!17917 a!2986) j!136) index!984))))

(declare-fun b!611698 () Bool)

(declare-fun e!350576 () Bool)

(declare-fun e!350568 () Bool)

(assert (=> b!611698 (= e!350576 (not e!350568))))

(declare-fun res!393531 () Bool)

(assert (=> b!611698 (=> res!393531 e!350568)))

(declare-fun lt!279975 () SeekEntryResult!6364)

(assert (=> b!611698 (= res!393531 (not (= lt!279975 (Found!6364 index!984))))))

(declare-fun lt!279976 () Unit!19612)

(assert (=> b!611698 (= lt!279976 e!350569)))

(declare-fun c!69449 () Bool)

(assert (=> b!611698 (= c!69449 (= lt!279975 Undefined!6364))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37349 (_ BitVec 32)) SeekEntryResult!6364)

(assert (=> b!611698 (= lt!279975 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!279979 lt!279981 mask!3053))))

(declare-fun e!350573 () Bool)

(assert (=> b!611698 e!350573))

(declare-fun res!393539 () Bool)

(assert (=> b!611698 (=> (not res!393539) (not e!350573))))

(declare-fun lt!279984 () (_ BitVec 32))

(declare-fun lt!279982 () SeekEntryResult!6364)

(assert (=> b!611698 (= res!393539 (= lt!279982 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279984 vacantSpotIndex!68 lt!279979 lt!279981 mask!3053)))))

(assert (=> b!611698 (= lt!279982 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!279984 vacantSpotIndex!68 (select (arr!17917 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!611698 (= lt!279979 (select (store (arr!17917 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!279986 () Unit!19612)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37349 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!19612)

(assert (=> b!611698 (= lt!279986 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!279984 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!611698 (= lt!279984 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!611699 () Bool)

(assert (=> b!611699 (= e!350572 (arrayContainsKey!0 lt!279981 (select (arr!17917 a!2986) j!136) index!984))))

(declare-fun b!611700 () Bool)

(declare-fun e!350574 () Bool)

(assert (=> b!611700 (= e!350574 e!350564)))

(declare-fun res!393521 () Bool)

(assert (=> b!611700 (=> res!393521 e!350564)))

(assert (=> b!611700 (= res!393521 (bvsge index!984 j!136))))

(declare-fun lt!279983 () Unit!19612)

(assert (=> b!611700 (= lt!279983 e!350577)))

(declare-fun c!69448 () Bool)

(assert (=> b!611700 (= c!69448 (bvslt j!136 index!984))))

(declare-fun b!611701 () Bool)

(declare-fun lt!279972 () SeekEntryResult!6364)

(assert (=> b!611701 (= e!350573 (= lt!279972 lt!279982))))

(declare-fun b!611702 () Bool)

(assert (=> b!611702 (= e!350567 e!350576)))

(declare-fun res!393530 () Bool)

(assert (=> b!611702 (=> (not res!393530) (not e!350576))))

(assert (=> b!611702 (= res!393530 (and (= lt!279972 (Found!6364 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17917 a!2986) index!984) (select (arr!17917 a!2986) j!136))) (not (= (select (arr!17917 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!611702 (= lt!279972 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17917 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!611703 () Bool)

(declare-fun res!393535 () Bool)

(assert (=> b!611703 (=> (not res!393535) (not e!350566))))

(assert (=> b!611703 (= res!393535 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!611704 () Bool)

(assert (=> b!611704 (= e!350568 e!350574)))

(declare-fun res!393522 () Bool)

(assert (=> b!611704 (=> res!393522 e!350574)))

(assert (=> b!611704 (= res!393522 (or (not (= (select (arr!17917 a!2986) j!136) lt!279979)) (not (= (select (arr!17917 a!2986) j!136) lt!279977))))))

(assert (=> b!611704 e!350571))

(declare-fun res!393537 () Bool)

(assert (=> b!611704 (=> (not res!393537) (not e!350571))))

(assert (=> b!611704 (= res!393537 (= lt!279977 (select (arr!17917 a!2986) j!136)))))

(assert (=> b!611704 (= lt!279977 (select (store (arr!17917 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!611705 () Bool)

(declare-fun res!393538 () Bool)

(assert (=> b!611705 (=> (not res!393538) (not e!350575))))

(assert (=> b!611705 (= res!393538 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12008))))

(assert (= (and start!55916 res!393524) b!611689))

(assert (= (and b!611689 res!393536) b!611696))

(assert (= (and b!611696 res!393527) b!611686))

(assert (= (and b!611686 res!393533) b!611703))

(assert (= (and b!611703 res!393535) b!611688))

(assert (= (and b!611688 res!393526) b!611683))

(assert (= (and b!611683 res!393529) b!611705))

(assert (= (and b!611705 res!393538) b!611691))

(assert (= (and b!611691 res!393532) b!611694))

(assert (= (and b!611694 res!393534) b!611702))

(assert (= (and b!611702 res!393530) b!611698))

(assert (= (and b!611698 res!393539) b!611701))

(assert (= (and b!611698 c!69449) b!611684))

(assert (= (and b!611698 (not c!69449)) b!611695))

(assert (= (and b!611698 (not res!393531)) b!611704))

(assert (= (and b!611704 res!393537) b!611692))

(assert (= (and b!611692 (not res!393525)) b!611687))

(assert (= (and b!611687 res!393523) b!611699))

(assert (= (and b!611704 (not res!393522)) b!611700))

(assert (= (and b!611700 c!69448) b!611690))

(assert (= (and b!611700 (not c!69448)) b!611685))

(assert (= (and b!611700 (not res!393521)) b!611693))

(assert (= (and b!611693 res!393528) b!611697))

(declare-fun m!588121 () Bool)

(assert (=> b!611687 m!588121))

(assert (=> b!611687 m!588121))

(declare-fun m!588123 () Bool)

(assert (=> b!611687 m!588123))

(declare-fun m!588125 () Bool)

(assert (=> b!611705 m!588125))

(assert (=> b!611704 m!588121))

(declare-fun m!588127 () Bool)

(assert (=> b!611704 m!588127))

(declare-fun m!588129 () Bool)

(assert (=> b!611704 m!588129))

(declare-fun m!588131 () Bool)

(assert (=> start!55916 m!588131))

(declare-fun m!588133 () Bool)

(assert (=> start!55916 m!588133))

(declare-fun m!588135 () Bool)

(assert (=> b!611690 m!588135))

(declare-fun m!588137 () Bool)

(assert (=> b!611690 m!588137))

(declare-fun m!588139 () Bool)

(assert (=> b!611690 m!588139))

(assert (=> b!611690 m!588121))

(declare-fun m!588141 () Bool)

(assert (=> b!611690 m!588141))

(assert (=> b!611690 m!588121))

(assert (=> b!611690 m!588121))

(declare-fun m!588143 () Bool)

(assert (=> b!611690 m!588143))

(assert (=> b!611690 m!588121))

(declare-fun m!588145 () Bool)

(assert (=> b!611690 m!588145))

(declare-fun m!588147 () Bool)

(assert (=> b!611690 m!588147))

(assert (=> b!611694 m!588127))

(declare-fun m!588149 () Bool)

(assert (=> b!611694 m!588149))

(assert (=> b!611696 m!588121))

(assert (=> b!611696 m!588121))

(declare-fun m!588151 () Bool)

(assert (=> b!611696 m!588151))

(declare-fun m!588153 () Bool)

(assert (=> b!611703 m!588153))

(assert (=> b!611699 m!588121))

(assert (=> b!611699 m!588121))

(declare-fun m!588155 () Bool)

(assert (=> b!611699 m!588155))

(assert (=> b!611693 m!588121))

(declare-fun m!588157 () Bool)

(assert (=> b!611693 m!588157))

(assert (=> b!611693 m!588121))

(assert (=> b!611693 m!588121))

(declare-fun m!588159 () Bool)

(assert (=> b!611693 m!588159))

(assert (=> b!611693 m!588137))

(assert (=> b!611693 m!588121))

(assert (=> b!611693 m!588123))

(assert (=> b!611693 m!588147))

(declare-fun m!588161 () Bool)

(assert (=> b!611686 m!588161))

(declare-fun m!588163 () Bool)

(assert (=> b!611698 m!588163))

(declare-fun m!588165 () Bool)

(assert (=> b!611698 m!588165))

(declare-fun m!588167 () Bool)

(assert (=> b!611698 m!588167))

(assert (=> b!611698 m!588127))

(assert (=> b!611698 m!588121))

(declare-fun m!588169 () Bool)

(assert (=> b!611698 m!588169))

(declare-fun m!588171 () Bool)

(assert (=> b!611698 m!588171))

(assert (=> b!611698 m!588121))

(declare-fun m!588173 () Bool)

(assert (=> b!611698 m!588173))

(assert (=> b!611692 m!588121))

(assert (=> b!611697 m!588121))

(assert (=> b!611697 m!588121))

(assert (=> b!611697 m!588155))

(declare-fun m!588175 () Bool)

(assert (=> b!611683 m!588175))

(declare-fun m!588177 () Bool)

(assert (=> b!611688 m!588177))

(declare-fun m!588179 () Bool)

(assert (=> b!611702 m!588179))

(assert (=> b!611702 m!588121))

(assert (=> b!611702 m!588121))

(declare-fun m!588181 () Bool)

(assert (=> b!611702 m!588181))

(declare-fun m!588183 () Bool)

(assert (=> b!611691 m!588183))

(check-sat (not b!611688) (not b!611703) (not start!55916) (not b!611699) (not b!611693) (not b!611683) (not b!611698) (not b!611696) (not b!611690) (not b!611705) (not b!611687) (not b!611686) (not b!611702) (not b!611697))
(check-sat)
