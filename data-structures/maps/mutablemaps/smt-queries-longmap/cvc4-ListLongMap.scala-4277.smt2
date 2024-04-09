; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59590 () Bool)

(assert start!59590)

(declare-fun b!657710 () Bool)

(declare-fun e!377835 () Bool)

(declare-fun e!377840 () Bool)

(assert (=> b!657710 (= e!377835 (not e!377840))))

(declare-fun res!426619 () Bool)

(assert (=> b!657710 (=> res!426619 e!377840)))

(declare-datatypes ((SeekEntryResult!6992 0))(
  ( (MissingZero!6992 (index!30332 (_ BitVec 32))) (Found!6992 (index!30333 (_ BitVec 32))) (Intermediate!6992 (undefined!7804 Bool) (index!30334 (_ BitVec 32)) (x!59148 (_ BitVec 32))) (Undefined!6992) (MissingVacant!6992 (index!30335 (_ BitVec 32))) )
))
(declare-fun lt!307404 () SeekEntryResult!6992)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!657710 (= res!426619 (not (= lt!307404 (MissingVacant!6992 vacantSpotIndex!68))))))

(declare-datatypes ((Unit!22764 0))(
  ( (Unit!22765) )
))
(declare-fun lt!307400 () Unit!22764)

(declare-fun e!377843 () Unit!22764)

(assert (=> b!657710 (= lt!307400 e!377843)))

(declare-fun c!75921 () Bool)

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!657710 (= c!75921 (= lt!307404 (Found!6992 index!984)))))

(declare-fun lt!307405 () Unit!22764)

(declare-fun e!377845 () Unit!22764)

(assert (=> b!657710 (= lt!307405 e!377845)))

(declare-fun c!75923 () Bool)

(assert (=> b!657710 (= c!75923 (= lt!307404 Undefined!6992))))

(declare-fun lt!307403 () (_ BitVec 64))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!38704 0))(
  ( (array!38705 (arr!18545 (Array (_ BitVec 32) (_ BitVec 64))) (size!18909 (_ BitVec 32))) )
))
(declare-fun lt!307392 () array!38704)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38704 (_ BitVec 32)) SeekEntryResult!6992)

(assert (=> b!657710 (= lt!307404 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!307403 lt!307392 mask!3053))))

(declare-fun e!377834 () Bool)

(assert (=> b!657710 e!377834))

(declare-fun res!426609 () Bool)

(assert (=> b!657710 (=> (not res!426609) (not e!377834))))

(declare-fun lt!307396 () (_ BitVec 32))

(declare-fun lt!307390 () SeekEntryResult!6992)

(assert (=> b!657710 (= res!426609 (= lt!307390 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307396 vacantSpotIndex!68 lt!307403 lt!307392 mask!3053)))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun a!2986 () array!38704)

(assert (=> b!657710 (= lt!307390 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!307396 vacantSpotIndex!68 (select (arr!18545 a!2986) j!136) a!2986 mask!3053))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!657710 (= lt!307403 (select (store (arr!18545 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!307389 () Unit!22764)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38704 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22764)

(assert (=> b!657710 (= lt!307389 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!307396 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!657710 (= lt!307396 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!657711 () Bool)

(declare-fun e!377847 () Unit!22764)

(declare-fun Unit!22766 () Unit!22764)

(assert (=> b!657711 (= e!377847 Unit!22766)))

(declare-fun b!657712 () Bool)

(declare-fun Unit!22767 () Unit!22764)

(assert (=> b!657712 (= e!377843 Unit!22767)))

(declare-fun b!657713 () Bool)

(assert (=> b!657713 (= e!377840 true)))

(assert (=> b!657713 (= (select (store (arr!18545 a!2986) i!1108 k!1786) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun b!657714 () Bool)

(declare-fun e!377841 () Bool)

(declare-fun arrayContainsKey!0 (array!38704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!657714 (= e!377841 (arrayContainsKey!0 lt!307392 (select (arr!18545 a!2986) j!136) index!984))))

(declare-fun res!426612 () Bool)

(declare-fun e!377846 () Bool)

(assert (=> start!59590 (=> (not res!426612) (not e!377846))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59590 (= res!426612 (validMask!0 mask!3053))))

(assert (=> start!59590 e!377846))

(assert (=> start!59590 true))

(declare-fun array_inv!14319 (array!38704) Bool)

(assert (=> start!59590 (array_inv!14319 a!2986)))

(declare-fun b!657715 () Bool)

(declare-fun Unit!22768 () Unit!22764)

(assert (=> b!657715 (= e!377845 Unit!22768)))

(declare-fun b!657716 () Bool)

(assert (=> b!657716 false))

(declare-fun lt!307398 () Unit!22764)

(declare-datatypes ((List!12639 0))(
  ( (Nil!12636) (Cons!12635 (h!13680 (_ BitVec 64)) (t!18875 List!12639)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38704 (_ BitVec 64) (_ BitVec 32) List!12639) Unit!22764)

(assert (=> b!657716 (= lt!307398 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307392 (select (arr!18545 a!2986) j!136) index!984 Nil!12636))))

(declare-fun arrayNoDuplicates!0 (array!38704 (_ BitVec 32) List!12639) Bool)

(assert (=> b!657716 (arrayNoDuplicates!0 lt!307392 index!984 Nil!12636)))

(declare-fun lt!307393 () Unit!22764)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38704 (_ BitVec 32) (_ BitVec 32)) Unit!22764)

(assert (=> b!657716 (= lt!307393 (lemmaNoDuplicateFromThenFromBigger!0 lt!307392 #b00000000000000000000000000000000 index!984))))

(assert (=> b!657716 (arrayNoDuplicates!0 lt!307392 #b00000000000000000000000000000000 Nil!12636)))

(declare-fun lt!307394 () Unit!22764)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38704 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12639) Unit!22764)

(assert (=> b!657716 (= lt!307394 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12636))))

(assert (=> b!657716 (arrayContainsKey!0 lt!307392 (select (arr!18545 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!307402 () Unit!22764)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38704 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22764)

(assert (=> b!657716 (= lt!307402 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307392 (select (arr!18545 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!377842 () Bool)

(assert (=> b!657716 e!377842))

(declare-fun res!426618 () Bool)

(assert (=> b!657716 (=> (not res!426618) (not e!377842))))

(assert (=> b!657716 (= res!426618 (arrayContainsKey!0 lt!307392 (select (arr!18545 a!2986) j!136) j!136))))

(declare-fun Unit!22769 () Unit!22764)

(assert (=> b!657716 (= e!377847 Unit!22769)))

(declare-fun b!657717 () Bool)

(declare-fun e!377836 () Unit!22764)

(declare-fun Unit!22770 () Unit!22764)

(assert (=> b!657717 (= e!377836 Unit!22770)))

(declare-fun b!657718 () Bool)

(declare-fun lt!307406 () SeekEntryResult!6992)

(assert (=> b!657718 (= e!377834 (= lt!307406 lt!307390))))

(declare-fun b!657719 () Bool)

(declare-fun res!426613 () Bool)

(declare-fun e!377837 () Bool)

(assert (=> b!657719 (=> (not res!426613) (not e!377837))))

(assert (=> b!657719 (= res!426613 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12636))))

(declare-fun b!657720 () Bool)

(assert (=> b!657720 false))

(declare-fun lt!307407 () Unit!22764)

(assert (=> b!657720 (= lt!307407 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!307392 (select (arr!18545 a!2986) j!136) j!136 Nil!12636))))

(assert (=> b!657720 (arrayNoDuplicates!0 lt!307392 j!136 Nil!12636)))

(declare-fun lt!307397 () Unit!22764)

(assert (=> b!657720 (= lt!307397 (lemmaNoDuplicateFromThenFromBigger!0 lt!307392 #b00000000000000000000000000000000 j!136))))

(assert (=> b!657720 (arrayNoDuplicates!0 lt!307392 #b00000000000000000000000000000000 Nil!12636)))

(declare-fun lt!307401 () Unit!22764)

(assert (=> b!657720 (= lt!307401 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12636))))

(assert (=> b!657720 (arrayContainsKey!0 lt!307392 (select (arr!18545 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!307399 () Unit!22764)

(assert (=> b!657720 (= lt!307399 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!307392 (select (arr!18545 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun Unit!22771 () Unit!22764)

(assert (=> b!657720 (= e!377836 Unit!22771)))

(declare-fun b!657721 () Bool)

(declare-fun Unit!22772 () Unit!22764)

(assert (=> b!657721 (= e!377845 Unit!22772)))

(assert (=> b!657721 false))

(declare-fun b!657722 () Bool)

(declare-fun e!377844 () Bool)

(assert (=> b!657722 (= e!377837 e!377844)))

(declare-fun res!426610 () Bool)

(assert (=> b!657722 (=> (not res!426610) (not e!377844))))

(assert (=> b!657722 (= res!426610 (= (select (store (arr!18545 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!657722 (= lt!307392 (array!38705 (store (arr!18545 a!2986) i!1108 k!1786) (size!18909 a!2986)))))

(declare-fun b!657723 () Bool)

(assert (=> b!657723 (= e!377846 e!377837)))

(declare-fun res!426615 () Bool)

(assert (=> b!657723 (=> (not res!426615) (not e!377837))))

(declare-fun lt!307391 () SeekEntryResult!6992)

(assert (=> b!657723 (= res!426615 (or (= lt!307391 (MissingZero!6992 i!1108)) (= lt!307391 (MissingVacant!6992 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38704 (_ BitVec 32)) SeekEntryResult!6992)

(assert (=> b!657723 (= lt!307391 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!657724 () Bool)

(declare-fun res!426620 () Bool)

(assert (=> b!657724 (= res!426620 (arrayContainsKey!0 lt!307392 (select (arr!18545 a!2986) j!136) j!136))))

(assert (=> b!657724 (=> (not res!426620) (not e!377841))))

(declare-fun e!377848 () Bool)

(assert (=> b!657724 (= e!377848 e!377841)))

(declare-fun b!657725 () Bool)

(assert (=> b!657725 (= e!377842 (arrayContainsKey!0 lt!307392 (select (arr!18545 a!2986) j!136) index!984))))

(declare-fun b!657726 () Bool)

(declare-fun res!426608 () Bool)

(assert (=> b!657726 (= res!426608 (bvsge j!136 index!984))))

(assert (=> b!657726 (=> res!426608 e!377848)))

(declare-fun e!377839 () Bool)

(assert (=> b!657726 (= e!377839 e!377848)))

(declare-fun b!657727 () Bool)

(declare-fun res!426611 () Bool)

(assert (=> b!657727 (=> (not res!426611) (not e!377846))))

(assert (=> b!657727 (= res!426611 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!657728 () Bool)

(declare-fun res!426616 () Bool)

(assert (=> b!657728 (=> (not res!426616) (not e!377846))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!657728 (= res!426616 (validKeyInArray!0 k!1786))))

(declare-fun b!657729 () Bool)

(assert (=> b!657729 (= e!377844 e!377835)))

(declare-fun res!426617 () Bool)

(assert (=> b!657729 (=> (not res!426617) (not e!377835))))

(assert (=> b!657729 (= res!426617 (and (= lt!307406 (Found!6992 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18545 a!2986) index!984) (select (arr!18545 a!2986) j!136))) (not (= (select (arr!18545 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!657729 (= lt!307406 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18545 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!657730 () Bool)

(declare-fun res!426605 () Bool)

(assert (=> b!657730 (=> (not res!426605) (not e!377837))))

(assert (=> b!657730 (= res!426605 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18545 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!657731 () Bool)

(declare-fun res!426604 () Bool)

(assert (=> b!657731 (=> (not res!426604) (not e!377846))))

(assert (=> b!657731 (= res!426604 (validKeyInArray!0 (select (arr!18545 a!2986) j!136)))))

(declare-fun b!657732 () Bool)

(declare-fun res!426614 () Bool)

(assert (=> b!657732 (=> (not res!426614) (not e!377837))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38704 (_ BitVec 32)) Bool)

(assert (=> b!657732 (= res!426614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!657733 () Bool)

(declare-fun Unit!22773 () Unit!22764)

(assert (=> b!657733 (= e!377843 Unit!22773)))

(declare-fun res!426606 () Bool)

(assert (=> b!657733 (= res!426606 (= (select (store (arr!18545 a!2986) i!1108 k!1786) index!984) (select (arr!18545 a!2986) j!136)))))

(assert (=> b!657733 (=> (not res!426606) (not e!377839))))

(assert (=> b!657733 e!377839))

(declare-fun c!75922 () Bool)

(assert (=> b!657733 (= c!75922 (bvslt j!136 index!984))))

(declare-fun lt!307395 () Unit!22764)

(assert (=> b!657733 (= lt!307395 e!377836)))

(declare-fun c!75920 () Bool)

(assert (=> b!657733 (= c!75920 (bvslt index!984 j!136))))

(declare-fun lt!307388 () Unit!22764)

(assert (=> b!657733 (= lt!307388 e!377847)))

(assert (=> b!657733 false))

(declare-fun b!657734 () Bool)

(declare-fun res!426607 () Bool)

(assert (=> b!657734 (=> (not res!426607) (not e!377846))))

(assert (=> b!657734 (= res!426607 (and (= (size!18909 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18909 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18909 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!59590 res!426612) b!657734))

(assert (= (and b!657734 res!426607) b!657731))

(assert (= (and b!657731 res!426604) b!657728))

(assert (= (and b!657728 res!426616) b!657727))

(assert (= (and b!657727 res!426611) b!657723))

(assert (= (and b!657723 res!426615) b!657732))

(assert (= (and b!657732 res!426614) b!657719))

(assert (= (and b!657719 res!426613) b!657730))

(assert (= (and b!657730 res!426605) b!657722))

(assert (= (and b!657722 res!426610) b!657729))

(assert (= (and b!657729 res!426617) b!657710))

(assert (= (and b!657710 res!426609) b!657718))

(assert (= (and b!657710 c!75923) b!657721))

(assert (= (and b!657710 (not c!75923)) b!657715))

(assert (= (and b!657710 c!75921) b!657733))

(assert (= (and b!657710 (not c!75921)) b!657712))

(assert (= (and b!657733 res!426606) b!657726))

(assert (= (and b!657726 (not res!426608)) b!657724))

(assert (= (and b!657724 res!426620) b!657714))

(assert (= (and b!657733 c!75922) b!657720))

(assert (= (and b!657733 (not c!75922)) b!657717))

(assert (= (and b!657733 c!75920) b!657716))

(assert (= (and b!657733 (not c!75920)) b!657711))

(assert (= (and b!657716 res!426618) b!657725))

(assert (= (and b!657710 (not res!426619)) b!657713))

(declare-fun m!630791 () Bool)

(assert (=> b!657714 m!630791))

(assert (=> b!657714 m!630791))

(declare-fun m!630793 () Bool)

(assert (=> b!657714 m!630793))

(declare-fun m!630795 () Bool)

(assert (=> b!657730 m!630795))

(declare-fun m!630797 () Bool)

(assert (=> b!657733 m!630797))

(declare-fun m!630799 () Bool)

(assert (=> b!657733 m!630799))

(assert (=> b!657733 m!630791))

(assert (=> b!657713 m!630797))

(assert (=> b!657713 m!630799))

(declare-fun m!630801 () Bool)

(assert (=> b!657727 m!630801))

(declare-fun m!630803 () Bool)

(assert (=> b!657716 m!630803))

(declare-fun m!630805 () Bool)

(assert (=> b!657716 m!630805))

(assert (=> b!657716 m!630791))

(declare-fun m!630807 () Bool)

(assert (=> b!657716 m!630807))

(assert (=> b!657716 m!630791))

(declare-fun m!630809 () Bool)

(assert (=> b!657716 m!630809))

(assert (=> b!657716 m!630791))

(declare-fun m!630811 () Bool)

(assert (=> b!657716 m!630811))

(declare-fun m!630813 () Bool)

(assert (=> b!657716 m!630813))

(declare-fun m!630815 () Bool)

(assert (=> b!657716 m!630815))

(assert (=> b!657716 m!630791))

(declare-fun m!630817 () Bool)

(assert (=> b!657716 m!630817))

(assert (=> b!657716 m!630791))

(assert (=> b!657725 m!630791))

(assert (=> b!657725 m!630791))

(assert (=> b!657725 m!630793))

(declare-fun m!630819 () Bool)

(assert (=> b!657723 m!630819))

(declare-fun m!630821 () Bool)

(assert (=> b!657732 m!630821))

(declare-fun m!630823 () Bool)

(assert (=> b!657710 m!630823))

(declare-fun m!630825 () Bool)

(assert (=> b!657710 m!630825))

(declare-fun m!630827 () Bool)

(assert (=> b!657710 m!630827))

(assert (=> b!657710 m!630791))

(assert (=> b!657710 m!630797))

(assert (=> b!657710 m!630791))

(declare-fun m!630829 () Bool)

(assert (=> b!657710 m!630829))

(declare-fun m!630831 () Bool)

(assert (=> b!657710 m!630831))

(declare-fun m!630833 () Bool)

(assert (=> b!657710 m!630833))

(assert (=> b!657731 m!630791))

(assert (=> b!657731 m!630791))

(declare-fun m!630835 () Bool)

(assert (=> b!657731 m!630835))

(declare-fun m!630837 () Bool)

(assert (=> b!657719 m!630837))

(assert (=> b!657722 m!630797))

(declare-fun m!630839 () Bool)

(assert (=> b!657722 m!630839))

(assert (=> b!657720 m!630791))

(declare-fun m!630841 () Bool)

(assert (=> b!657720 m!630841))

(declare-fun m!630843 () Bool)

(assert (=> b!657720 m!630843))

(assert (=> b!657720 m!630791))

(declare-fun m!630845 () Bool)

(assert (=> b!657720 m!630845))

(assert (=> b!657720 m!630791))

(declare-fun m!630847 () Bool)

(assert (=> b!657720 m!630847))

(assert (=> b!657720 m!630803))

(assert (=> b!657720 m!630815))

(assert (=> b!657720 m!630791))

(declare-fun m!630849 () Bool)

(assert (=> b!657720 m!630849))

(declare-fun m!630851 () Bool)

(assert (=> b!657728 m!630851))

(assert (=> b!657724 m!630791))

(assert (=> b!657724 m!630791))

(assert (=> b!657724 m!630811))

(declare-fun m!630853 () Bool)

(assert (=> b!657729 m!630853))

(assert (=> b!657729 m!630791))

(assert (=> b!657729 m!630791))

(declare-fun m!630855 () Bool)

(assert (=> b!657729 m!630855))

(declare-fun m!630857 () Bool)

(assert (=> start!59590 m!630857))

(declare-fun m!630859 () Bool)

(assert (=> start!59590 m!630859))

(push 1)

