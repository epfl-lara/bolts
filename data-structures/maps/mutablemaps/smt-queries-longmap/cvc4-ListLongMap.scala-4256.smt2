; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59110 () Bool)

(assert start!59110)

(declare-fun b!651661 () Bool)

(declare-fun res!422612 () Bool)

(declare-fun e!374001 () Bool)

(assert (=> b!651661 (=> (not res!422612) (not e!374001))))

(declare-datatypes ((array!38566 0))(
  ( (array!38567 (arr!18482 (Array (_ BitVec 32) (_ BitVec 64))) (size!18846 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38566)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38566 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!651661 (= res!422612 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!651662 () Bool)

(declare-fun e!373993 () Bool)

(declare-fun e!373994 () Bool)

(assert (=> b!651662 (= e!373993 e!373994)))

(declare-fun res!422618 () Bool)

(assert (=> b!651662 (=> res!422618 e!373994)))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!651662 (= res!422618 (bvsge index!984 j!136))))

(declare-datatypes ((Unit!22246 0))(
  ( (Unit!22247) )
))
(declare-fun lt!303120 () Unit!22246)

(declare-fun e!373990 () Unit!22246)

(assert (=> b!651662 (= lt!303120 e!373990)))

(declare-fun c!74897 () Bool)

(assert (=> b!651662 (= c!74897 (bvslt j!136 index!984))))

(declare-fun b!651663 () Bool)

(assert (=> b!651663 (= e!373994 true)))

(declare-fun lt!303110 () array!38566)

(declare-datatypes ((List!12576 0))(
  ( (Nil!12573) (Cons!12572 (h!13617 (_ BitVec 64)) (t!18812 List!12576)) )
))
(declare-fun arrayNoDuplicates!0 (array!38566 (_ BitVec 32) List!12576) Bool)

(assert (=> b!651663 (arrayNoDuplicates!0 lt!303110 index!984 Nil!12573)))

(declare-fun lt!303114 () Unit!22246)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!38566 (_ BitVec 32) (_ BitVec 32)) Unit!22246)

(assert (=> b!651663 (= lt!303114 (lemmaNoDuplicateFromThenFromBigger!0 lt!303110 #b00000000000000000000000000000000 index!984))))

(assert (=> b!651663 (arrayNoDuplicates!0 lt!303110 #b00000000000000000000000000000000 Nil!12573)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!303119 () Unit!22246)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38566 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12576) Unit!22246)

(assert (=> b!651663 (= lt!303119 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12573))))

(assert (=> b!651663 (arrayContainsKey!0 lt!303110 (select (arr!18482 a!2986) j!136) (bvadd #b00000000000000000000000000000001 index!984))))

(declare-fun lt!303109 () Unit!22246)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38566 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!22246)

(assert (=> b!651663 (= lt!303109 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303110 (select (arr!18482 a!2986) j!136) j!136 (bvadd #b00000000000000000000000000000001 index!984)))))

(declare-fun e!373992 () Bool)

(assert (=> b!651663 e!373992))

(declare-fun res!422619 () Bool)

(assert (=> b!651663 (=> (not res!422619) (not e!373992))))

(assert (=> b!651663 (= res!422619 (arrayContainsKey!0 lt!303110 (select (arr!18482 a!2986) j!136) j!136))))

(declare-fun b!651664 () Bool)

(declare-fun e!373989 () Bool)

(declare-fun e!373996 () Bool)

(assert (=> b!651664 (= e!373989 e!373996)))

(declare-fun res!422607 () Bool)

(assert (=> b!651664 (=> (not res!422607) (not e!373996))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6929 0))(
  ( (MissingZero!6929 (index!30068 (_ BitVec 32))) (Found!6929 (index!30069 (_ BitVec 32))) (Intermediate!6929 (undefined!7741 Bool) (index!30070 (_ BitVec 32)) (x!58881 (_ BitVec 32))) (Undefined!6929) (MissingVacant!6929 (index!30071 (_ BitVec 32))) )
))
(declare-fun lt!303122 () SeekEntryResult!6929)

(assert (=> b!651664 (= res!422607 (and (= lt!303122 (Found!6929 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18482 a!2986) index!984) (select (arr!18482 a!2986) j!136))) (not (= (select (arr!18482 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38566 (_ BitVec 32)) SeekEntryResult!6929)

(assert (=> b!651664 (= lt!303122 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18482 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!651665 () Bool)

(declare-fun res!422610 () Bool)

(assert (=> b!651665 (=> (not res!422610) (not e!374001))))

(assert (=> b!651665 (= res!422610 (and (= (size!18846 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18846 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18846 a!2986)) (not (= i!1108 j!136))))))

(declare-fun e!374002 () Bool)

(declare-fun b!651666 () Bool)

(assert (=> b!651666 (= e!374002 (arrayContainsKey!0 lt!303110 (select (arr!18482 a!2986) j!136) index!984))))

(declare-fun b!651667 () Bool)

(declare-fun Unit!22248 () Unit!22246)

(assert (=> b!651667 (= e!373990 Unit!22248)))

(declare-fun b!651668 () Bool)

(declare-fun res!422605 () Bool)

(declare-fun e!373998 () Bool)

(assert (=> b!651668 (=> (not res!422605) (not e!373998))))

(assert (=> b!651668 (= res!422605 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12573))))

(declare-fun b!651669 () Bool)

(declare-fun res!422614 () Bool)

(assert (=> b!651669 (=> (not res!422614) (not e!373998))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38566 (_ BitVec 32)) Bool)

(assert (=> b!651669 (= res!422614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!651670 () Bool)

(declare-fun e!373988 () Bool)

(assert (=> b!651670 (= e!373988 e!373993)))

(declare-fun res!422617 () Bool)

(assert (=> b!651670 (=> res!422617 e!373993)))

(declare-fun lt!303124 () (_ BitVec 64))

(declare-fun lt!303125 () (_ BitVec 64))

(assert (=> b!651670 (= res!422617 (or (not (= (select (arr!18482 a!2986) j!136) lt!303124)) (not (= (select (arr!18482 a!2986) j!136) lt!303125))))))

(declare-fun e!373991 () Bool)

(assert (=> b!651670 e!373991))

(declare-fun res!422621 () Bool)

(assert (=> b!651670 (=> (not res!422621) (not e!373991))))

(assert (=> b!651670 (= res!422621 (= lt!303125 (select (arr!18482 a!2986) j!136)))))

(assert (=> b!651670 (= lt!303125 (select (store (arr!18482 a!2986) i!1108 k!1786) index!984))))

(declare-fun res!422616 () Bool)

(assert (=> start!59110 (=> (not res!422616) (not e!374001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!59110 (= res!422616 (validMask!0 mask!3053))))

(assert (=> start!59110 e!374001))

(assert (=> start!59110 true))

(declare-fun array_inv!14256 (array!38566) Bool)

(assert (=> start!59110 (array_inv!14256 a!2986)))

(declare-fun b!651671 () Bool)

(declare-fun e!373995 () Bool)

(declare-fun lt!303115 () SeekEntryResult!6929)

(assert (=> b!651671 (= e!373995 (= lt!303122 lt!303115))))

(declare-fun b!651672 () Bool)

(declare-fun Unit!22249 () Unit!22246)

(assert (=> b!651672 (= e!373990 Unit!22249)))

(declare-fun lt!303112 () Unit!22246)

(assert (=> b!651672 (= lt!303112 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!303110 (select (arr!18482 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(assert (=> b!651672 (arrayContainsKey!0 lt!303110 (select (arr!18482 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!303121 () Unit!22246)

(assert (=> b!651672 (= lt!303121 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!12573))))

(assert (=> b!651672 (arrayNoDuplicates!0 lt!303110 #b00000000000000000000000000000000 Nil!12573)))

(declare-fun lt!303123 () Unit!22246)

(assert (=> b!651672 (= lt!303123 (lemmaNoDuplicateFromThenFromBigger!0 lt!303110 #b00000000000000000000000000000000 j!136))))

(assert (=> b!651672 (arrayNoDuplicates!0 lt!303110 j!136 Nil!12573)))

(declare-fun lt!303126 () Unit!22246)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!38566 (_ BitVec 64) (_ BitVec 32) List!12576) Unit!22246)

(assert (=> b!651672 (= lt!303126 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 lt!303110 (select (arr!18482 a!2986) j!136) j!136 Nil!12573))))

(assert (=> b!651672 false))

(declare-fun b!651673 () Bool)

(declare-fun res!422613 () Bool)

(assert (=> b!651673 (=> (not res!422613) (not e!374001))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!651673 (= res!422613 (validKeyInArray!0 (select (arr!18482 a!2986) j!136)))))

(declare-fun b!651674 () Bool)

(assert (=> b!651674 (= e!374001 e!373998)))

(declare-fun res!422620 () Bool)

(assert (=> b!651674 (=> (not res!422620) (not e!373998))))

(declare-fun lt!303117 () SeekEntryResult!6929)

(assert (=> b!651674 (= res!422620 (or (= lt!303117 (MissingZero!6929 i!1108)) (= lt!303117 (MissingVacant!6929 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38566 (_ BitVec 32)) SeekEntryResult!6929)

(assert (=> b!651674 (= lt!303117 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!651675 () Bool)

(assert (=> b!651675 (= e!373998 e!373989)))

(declare-fun res!422604 () Bool)

(assert (=> b!651675 (=> (not res!422604) (not e!373989))))

(assert (=> b!651675 (= res!422604 (= (select (store (arr!18482 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!651675 (= lt!303110 (array!38567 (store (arr!18482 a!2986) i!1108 k!1786) (size!18846 a!2986)))))

(declare-fun b!651676 () Bool)

(declare-fun res!422603 () Bool)

(assert (=> b!651676 (=> (not res!422603) (not e!374001))))

(assert (=> b!651676 (= res!422603 (validKeyInArray!0 k!1786))))

(declare-fun b!651677 () Bool)

(declare-fun e!373997 () Bool)

(assert (=> b!651677 (= e!373997 e!374002)))

(declare-fun res!422608 () Bool)

(assert (=> b!651677 (=> (not res!422608) (not e!374002))))

(assert (=> b!651677 (= res!422608 (arrayContainsKey!0 lt!303110 (select (arr!18482 a!2986) j!136) j!136))))

(declare-fun b!651678 () Bool)

(declare-fun res!422606 () Bool)

(assert (=> b!651678 (=> (not res!422606) (not e!373998))))

(assert (=> b!651678 (= res!422606 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18482 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!651679 () Bool)

(assert (=> b!651679 (= e!373992 (arrayContainsKey!0 lt!303110 (select (arr!18482 a!2986) j!136) index!984))))

(declare-fun b!651680 () Bool)

(declare-fun e!373999 () Unit!22246)

(declare-fun Unit!22250 () Unit!22246)

(assert (=> b!651680 (= e!373999 Unit!22250)))

(assert (=> b!651680 false))

(declare-fun b!651681 () Bool)

(assert (=> b!651681 (= e!373991 e!373997)))

(declare-fun res!422615 () Bool)

(assert (=> b!651681 (=> res!422615 e!373997)))

(assert (=> b!651681 (= res!422615 (or (not (= (select (arr!18482 a!2986) j!136) lt!303124)) (not (= (select (arr!18482 a!2986) j!136) lt!303125)) (bvsge j!136 index!984)))))

(declare-fun b!651682 () Bool)

(declare-fun Unit!22251 () Unit!22246)

(assert (=> b!651682 (= e!373999 Unit!22251)))

(declare-fun b!651683 () Bool)

(assert (=> b!651683 (= e!373996 (not e!373988))))

(declare-fun res!422609 () Bool)

(assert (=> b!651683 (=> res!422609 e!373988)))

(declare-fun lt!303111 () SeekEntryResult!6929)

(assert (=> b!651683 (= res!422609 (not (= lt!303111 (Found!6929 index!984))))))

(declare-fun lt!303113 () Unit!22246)

(assert (=> b!651683 (= lt!303113 e!373999)))

(declare-fun c!74896 () Bool)

(assert (=> b!651683 (= c!74896 (= lt!303111 Undefined!6929))))

(assert (=> b!651683 (= lt!303111 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!303124 lt!303110 mask!3053))))

(assert (=> b!651683 e!373995))

(declare-fun res!422611 () Bool)

(assert (=> b!651683 (=> (not res!422611) (not e!373995))))

(declare-fun lt!303116 () (_ BitVec 32))

(assert (=> b!651683 (= res!422611 (= lt!303115 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303116 vacantSpotIndex!68 lt!303124 lt!303110 mask!3053)))))

(assert (=> b!651683 (= lt!303115 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!303116 vacantSpotIndex!68 (select (arr!18482 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!651683 (= lt!303124 (select (store (arr!18482 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!303118 () Unit!22246)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38566 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!22246)

(assert (=> b!651683 (= lt!303118 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!303116 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!651683 (= lt!303116 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!59110 res!422616) b!651665))

(assert (= (and b!651665 res!422610) b!651673))

(assert (= (and b!651673 res!422613) b!651676))

(assert (= (and b!651676 res!422603) b!651661))

(assert (= (and b!651661 res!422612) b!651674))

(assert (= (and b!651674 res!422620) b!651669))

(assert (= (and b!651669 res!422614) b!651668))

(assert (= (and b!651668 res!422605) b!651678))

(assert (= (and b!651678 res!422606) b!651675))

(assert (= (and b!651675 res!422604) b!651664))

(assert (= (and b!651664 res!422607) b!651683))

(assert (= (and b!651683 res!422611) b!651671))

(assert (= (and b!651683 c!74896) b!651680))

(assert (= (and b!651683 (not c!74896)) b!651682))

(assert (= (and b!651683 (not res!422609)) b!651670))

(assert (= (and b!651670 res!422621) b!651681))

(assert (= (and b!651681 (not res!422615)) b!651677))

(assert (= (and b!651677 res!422608) b!651666))

(assert (= (and b!651670 (not res!422617)) b!651662))

(assert (= (and b!651662 c!74897) b!651672))

(assert (= (and b!651662 (not c!74897)) b!651667))

(assert (= (and b!651662 (not res!422618)) b!651663))

(assert (= (and b!651663 res!422619) b!651679))

(declare-fun m!624883 () Bool)

(assert (=> b!651670 m!624883))

(declare-fun m!624885 () Bool)

(assert (=> b!651670 m!624885))

(declare-fun m!624887 () Bool)

(assert (=> b!651670 m!624887))

(declare-fun m!624889 () Bool)

(assert (=> b!651668 m!624889))

(declare-fun m!624891 () Bool)

(assert (=> b!651683 m!624891))

(assert (=> b!651683 m!624883))

(assert (=> b!651683 m!624885))

(declare-fun m!624893 () Bool)

(assert (=> b!651683 m!624893))

(declare-fun m!624895 () Bool)

(assert (=> b!651683 m!624895))

(declare-fun m!624897 () Bool)

(assert (=> b!651683 m!624897))

(assert (=> b!651683 m!624883))

(declare-fun m!624899 () Bool)

(assert (=> b!651683 m!624899))

(declare-fun m!624901 () Bool)

(assert (=> b!651683 m!624901))

(declare-fun m!624903 () Bool)

(assert (=> b!651664 m!624903))

(assert (=> b!651664 m!624883))

(assert (=> b!651664 m!624883))

(declare-fun m!624905 () Bool)

(assert (=> b!651664 m!624905))

(declare-fun m!624907 () Bool)

(assert (=> b!651678 m!624907))

(declare-fun m!624909 () Bool)

(assert (=> start!59110 m!624909))

(declare-fun m!624911 () Bool)

(assert (=> start!59110 m!624911))

(assert (=> b!651672 m!624883))

(declare-fun m!624913 () Bool)

(assert (=> b!651672 m!624913))

(assert (=> b!651672 m!624883))

(declare-fun m!624915 () Bool)

(assert (=> b!651672 m!624915))

(assert (=> b!651672 m!624883))

(declare-fun m!624917 () Bool)

(assert (=> b!651672 m!624917))

(declare-fun m!624919 () Bool)

(assert (=> b!651672 m!624919))

(assert (=> b!651672 m!624883))

(declare-fun m!624921 () Bool)

(assert (=> b!651672 m!624921))

(declare-fun m!624923 () Bool)

(assert (=> b!651672 m!624923))

(declare-fun m!624925 () Bool)

(assert (=> b!651672 m!624925))

(assert (=> b!651681 m!624883))

(declare-fun m!624927 () Bool)

(assert (=> b!651676 m!624927))

(assert (=> b!651666 m!624883))

(assert (=> b!651666 m!624883))

(declare-fun m!624929 () Bool)

(assert (=> b!651666 m!624929))

(assert (=> b!651663 m!624883))

(declare-fun m!624931 () Bool)

(assert (=> b!651663 m!624931))

(assert (=> b!651663 m!624883))

(assert (=> b!651663 m!624883))

(declare-fun m!624933 () Bool)

(assert (=> b!651663 m!624933))

(declare-fun m!624935 () Bool)

(assert (=> b!651663 m!624935))

(assert (=> b!651663 m!624923))

(assert (=> b!651663 m!624925))

(declare-fun m!624937 () Bool)

(assert (=> b!651663 m!624937))

(assert (=> b!651663 m!624883))

(declare-fun m!624939 () Bool)

(assert (=> b!651663 m!624939))

(declare-fun m!624941 () Bool)

(assert (=> b!651661 m!624941))

(assert (=> b!651673 m!624883))

(assert (=> b!651673 m!624883))

(declare-fun m!624943 () Bool)

(assert (=> b!651673 m!624943))

(assert (=> b!651679 m!624883))

(assert (=> b!651679 m!624883))

(assert (=> b!651679 m!624929))

(declare-fun m!624945 () Bool)

(assert (=> b!651674 m!624945))

(declare-fun m!624947 () Bool)

(assert (=> b!651669 m!624947))

(assert (=> b!651675 m!624885))

(declare-fun m!624949 () Bool)

(assert (=> b!651675 m!624949))

(assert (=> b!651677 m!624883))

(assert (=> b!651677 m!624883))

(assert (=> b!651677 m!624939))

(push 1)

