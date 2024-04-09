; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57104 () Bool)

(assert start!57104)

(declare-fun b!631713 () Bool)

(declare-fun e!361182 () Bool)

(declare-fun e!361181 () Bool)

(assert (=> b!631713 (= e!361182 (not e!361181))))

(declare-fun res!408568 () Bool)

(assert (=> b!631713 (=> res!408568 e!361181)))

(declare-datatypes ((SeekEntryResult!6718 0))(
  ( (MissingZero!6718 (index!29164 (_ BitVec 32))) (Found!6718 (index!29165 (_ BitVec 32))) (Intermediate!6718 (undefined!7530 Bool) (index!29166 (_ BitVec 32)) (x!57930 (_ BitVec 32))) (Undefined!6718) (MissingVacant!6718 (index!29167 (_ BitVec 32))) )
))
(declare-fun lt!291934 () SeekEntryResult!6718)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!631713 (= res!408568 (not (= lt!291934 (Found!6718 index!984))))))

(declare-datatypes ((Unit!21230 0))(
  ( (Unit!21231) )
))
(declare-fun lt!291937 () Unit!21230)

(declare-fun e!361178 () Unit!21230)

(assert (=> b!631713 (= lt!291937 e!361178)))

(declare-fun c!71945 () Bool)

(assert (=> b!631713 (= c!71945 (= lt!291934 Undefined!6718))))

(declare-fun lt!291936 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38084 0))(
  ( (array!38085 (arr!18271 (Array (_ BitVec 32) (_ BitVec 64))) (size!18635 (_ BitVec 32))) )
))
(declare-fun lt!291940 () array!38084)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38084 (_ BitVec 32)) SeekEntryResult!6718)

(assert (=> b!631713 (= lt!291934 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!291936 lt!291940 mask!3053))))

(declare-fun e!361176 () Bool)

(assert (=> b!631713 e!361176))

(declare-fun res!408566 () Bool)

(assert (=> b!631713 (=> (not res!408566) (not e!361176))))

(declare-fun lt!291941 () SeekEntryResult!6718)

(declare-fun lt!291935 () (_ BitVec 32))

(assert (=> b!631713 (= res!408566 (= lt!291941 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291935 vacantSpotIndex!68 lt!291936 lt!291940 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38084)

(assert (=> b!631713 (= lt!291941 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291935 vacantSpotIndex!68 (select (arr!18271 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!631713 (= lt!291936 (select (store (arr!18271 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!291939 () Unit!21230)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38084 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21230)

(assert (=> b!631713 (= lt!291939 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291935 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!631713 (= lt!291935 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!631714 () Bool)

(assert (=> b!631714 (= e!361181 true)))

(assert (=> b!631714 (= (select (store (arr!18271 a!2986) i!1108 k0!1786) index!984) (select (arr!18271 a!2986) j!136))))

(declare-fun b!631716 () Bool)

(declare-fun res!408560 () Bool)

(declare-fun e!361177 () Bool)

(assert (=> b!631716 (=> (not res!408560) (not e!361177))))

(assert (=> b!631716 (= res!408560 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18271 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!631717 () Bool)

(declare-fun Unit!21232 () Unit!21230)

(assert (=> b!631717 (= e!361178 Unit!21232)))

(declare-fun b!631718 () Bool)

(declare-fun res!408562 () Bool)

(assert (=> b!631718 (=> (not res!408562) (not e!361177))))

(declare-datatypes ((List!12365 0))(
  ( (Nil!12362) (Cons!12361 (h!13406 (_ BitVec 64)) (t!18601 List!12365)) )
))
(declare-fun arrayNoDuplicates!0 (array!38084 (_ BitVec 32) List!12365) Bool)

(assert (=> b!631718 (= res!408562 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12362))))

(declare-fun b!631719 () Bool)

(declare-fun e!361179 () Bool)

(assert (=> b!631719 (= e!361177 e!361179)))

(declare-fun res!408563 () Bool)

(assert (=> b!631719 (=> (not res!408563) (not e!361179))))

(assert (=> b!631719 (= res!408563 (= (select (store (arr!18271 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!631719 (= lt!291940 (array!38085 (store (arr!18271 a!2986) i!1108 k0!1786) (size!18635 a!2986)))))

(declare-fun b!631720 () Bool)

(declare-fun res!408557 () Bool)

(declare-fun e!361183 () Bool)

(assert (=> b!631720 (=> (not res!408557) (not e!361183))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!631720 (= res!408557 (validKeyInArray!0 (select (arr!18271 a!2986) j!136)))))

(declare-fun b!631721 () Bool)

(assert (=> b!631721 (= e!361183 e!361177)))

(declare-fun res!408564 () Bool)

(assert (=> b!631721 (=> (not res!408564) (not e!361177))))

(declare-fun lt!291938 () SeekEntryResult!6718)

(assert (=> b!631721 (= res!408564 (or (= lt!291938 (MissingZero!6718 i!1108)) (= lt!291938 (MissingVacant!6718 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38084 (_ BitVec 32)) SeekEntryResult!6718)

(assert (=> b!631721 (= lt!291938 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!631722 () Bool)

(declare-fun res!408565 () Bool)

(assert (=> b!631722 (=> (not res!408565) (not e!361183))))

(assert (=> b!631722 (= res!408565 (and (= (size!18635 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18635 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18635 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!631715 () Bool)

(declare-fun lt!291942 () SeekEntryResult!6718)

(assert (=> b!631715 (= e!361176 (= lt!291942 lt!291941))))

(declare-fun res!408558 () Bool)

(assert (=> start!57104 (=> (not res!408558) (not e!361183))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57104 (= res!408558 (validMask!0 mask!3053))))

(assert (=> start!57104 e!361183))

(assert (=> start!57104 true))

(declare-fun array_inv!14045 (array!38084) Bool)

(assert (=> start!57104 (array_inv!14045 a!2986)))

(declare-fun b!631723 () Bool)

(assert (=> b!631723 (= e!361179 e!361182)))

(declare-fun res!408569 () Bool)

(assert (=> b!631723 (=> (not res!408569) (not e!361182))))

(assert (=> b!631723 (= res!408569 (and (= lt!291942 (Found!6718 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18271 a!2986) index!984) (select (arr!18271 a!2986) j!136))) (not (= (select (arr!18271 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!631723 (= lt!291942 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18271 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!631724 () Bool)

(declare-fun res!408561 () Bool)

(assert (=> b!631724 (=> (not res!408561) (not e!361183))))

(declare-fun arrayContainsKey!0 (array!38084 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!631724 (= res!408561 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!631725 () Bool)

(declare-fun Unit!21233 () Unit!21230)

(assert (=> b!631725 (= e!361178 Unit!21233)))

(assert (=> b!631725 false))

(declare-fun b!631726 () Bool)

(declare-fun res!408559 () Bool)

(assert (=> b!631726 (=> (not res!408559) (not e!361183))))

(assert (=> b!631726 (= res!408559 (validKeyInArray!0 k0!1786))))

(declare-fun b!631727 () Bool)

(declare-fun res!408567 () Bool)

(assert (=> b!631727 (=> (not res!408567) (not e!361177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38084 (_ BitVec 32)) Bool)

(assert (=> b!631727 (= res!408567 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!57104 res!408558) b!631722))

(assert (= (and b!631722 res!408565) b!631720))

(assert (= (and b!631720 res!408557) b!631726))

(assert (= (and b!631726 res!408559) b!631724))

(assert (= (and b!631724 res!408561) b!631721))

(assert (= (and b!631721 res!408564) b!631727))

(assert (= (and b!631727 res!408567) b!631718))

(assert (= (and b!631718 res!408562) b!631716))

(assert (= (and b!631716 res!408560) b!631719))

(assert (= (and b!631719 res!408563) b!631723))

(assert (= (and b!631723 res!408569) b!631713))

(assert (= (and b!631713 res!408566) b!631715))

(assert (= (and b!631713 c!71945) b!631725))

(assert (= (and b!631713 (not c!71945)) b!631717))

(assert (= (and b!631713 (not res!408568)) b!631714))

(declare-fun m!606633 () Bool)

(assert (=> b!631719 m!606633))

(declare-fun m!606635 () Bool)

(assert (=> b!631719 m!606635))

(declare-fun m!606637 () Bool)

(assert (=> start!57104 m!606637))

(declare-fun m!606639 () Bool)

(assert (=> start!57104 m!606639))

(declare-fun m!606641 () Bool)

(assert (=> b!631716 m!606641))

(declare-fun m!606643 () Bool)

(assert (=> b!631721 m!606643))

(declare-fun m!606645 () Bool)

(assert (=> b!631723 m!606645))

(declare-fun m!606647 () Bool)

(assert (=> b!631723 m!606647))

(assert (=> b!631723 m!606647))

(declare-fun m!606649 () Bool)

(assert (=> b!631723 m!606649))

(declare-fun m!606651 () Bool)

(assert (=> b!631718 m!606651))

(assert (=> b!631714 m!606633))

(declare-fun m!606653 () Bool)

(assert (=> b!631714 m!606653))

(assert (=> b!631714 m!606647))

(declare-fun m!606655 () Bool)

(assert (=> b!631726 m!606655))

(assert (=> b!631720 m!606647))

(assert (=> b!631720 m!606647))

(declare-fun m!606657 () Bool)

(assert (=> b!631720 m!606657))

(declare-fun m!606659 () Bool)

(assert (=> b!631727 m!606659))

(declare-fun m!606661 () Bool)

(assert (=> b!631713 m!606661))

(assert (=> b!631713 m!606647))

(assert (=> b!631713 m!606633))

(declare-fun m!606663 () Bool)

(assert (=> b!631713 m!606663))

(declare-fun m!606665 () Bool)

(assert (=> b!631713 m!606665))

(declare-fun m!606667 () Bool)

(assert (=> b!631713 m!606667))

(declare-fun m!606669 () Bool)

(assert (=> b!631713 m!606669))

(assert (=> b!631713 m!606647))

(declare-fun m!606671 () Bool)

(assert (=> b!631713 m!606671))

(declare-fun m!606673 () Bool)

(assert (=> b!631724 m!606673))

(check-sat (not b!631724) (not b!631718) (not start!57104) (not b!631713) (not b!631726) (not b!631723) (not b!631721) (not b!631720) (not b!631727))
(check-sat)
