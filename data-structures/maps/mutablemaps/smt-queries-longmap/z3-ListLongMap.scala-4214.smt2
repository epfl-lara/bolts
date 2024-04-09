; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!57818 () Bool)

(assert start!57818)

(declare-fun b!638915 () Bool)

(declare-fun res!413665 () Bool)

(declare-fun e!365651 () Bool)

(assert (=> b!638915 (=> (not res!413665) (not e!365651))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!638915 (= res!413665 (validKeyInArray!0 k0!1786))))

(declare-fun b!638916 () Bool)

(declare-fun e!365653 () Bool)

(declare-fun e!365658 () Bool)

(assert (=> b!638916 (= e!365653 e!365658)))

(declare-fun res!413667 () Bool)

(assert (=> b!638916 (=> (not res!413667) (not e!365658))))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((array!38276 0))(
  ( (array!38277 (arr!18355 (Array (_ BitVec 32) (_ BitVec 64))) (size!18719 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38276)

(declare-fun lt!295568 () array!38276)

(declare-fun arrayContainsKey!0 (array!38276 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!638916 (= res!413667 (arrayContainsKey!0 lt!295568 (select (arr!18355 a!2986) j!136) j!136))))

(declare-fun b!638917 () Bool)

(declare-fun res!413678 () Bool)

(declare-fun e!365648 () Bool)

(assert (=> b!638917 (=> (not res!413678) (not e!365648))))

(declare-datatypes ((List!12449 0))(
  ( (Nil!12446) (Cons!12445 (h!13490 (_ BitVec 64)) (t!18685 List!12449)) )
))
(declare-fun arrayNoDuplicates!0 (array!38276 (_ BitVec 32) List!12449) Bool)

(assert (=> b!638917 (= res!413678 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12446))))

(declare-fun b!638918 () Bool)

(declare-datatypes ((Unit!21566 0))(
  ( (Unit!21567) )
))
(declare-fun e!365649 () Unit!21566)

(declare-fun Unit!21568 () Unit!21566)

(assert (=> b!638918 (= e!365649 Unit!21568)))

(declare-fun b!638920 () Bool)

(declare-fun res!413668 () Bool)

(assert (=> b!638920 (=> (not res!413668) (not e!365648))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38276 (_ BitVec 32)) Bool)

(assert (=> b!638920 (= res!413668 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!638921 () Bool)

(declare-fun res!413676 () Bool)

(assert (=> b!638921 (=> (not res!413676) (not e!365651))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!638921 (= res!413676 (and (= (size!18719 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18719 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18719 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!638922 () Bool)

(assert (=> b!638922 (= e!365651 e!365648)))

(declare-fun res!413680 () Bool)

(assert (=> b!638922 (=> (not res!413680) (not e!365648))))

(declare-datatypes ((SeekEntryResult!6802 0))(
  ( (MissingZero!6802 (index!29524 (_ BitVec 32))) (Found!6802 (index!29525 (_ BitVec 32))) (Intermediate!6802 (undefined!7614 Bool) (index!29526 (_ BitVec 32)) (x!58310 (_ BitVec 32))) (Undefined!6802) (MissingVacant!6802 (index!29527 (_ BitVec 32))) )
))
(declare-fun lt!295567 () SeekEntryResult!6802)

(assert (=> b!638922 (= res!413680 (or (= lt!295567 (MissingZero!6802 i!1108)) (= lt!295567 (MissingVacant!6802 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38276 (_ BitVec 32)) SeekEntryResult!6802)

(assert (=> b!638922 (= lt!295567 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!638923 () Bool)

(declare-fun res!413681 () Bool)

(assert (=> b!638923 (=> (not res!413681) (not e!365651))))

(assert (=> b!638923 (= res!413681 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!638924 () Bool)

(declare-fun res!413671 () Bool)

(assert (=> b!638924 (=> (not res!413671) (not e!365648))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!638924 (= res!413671 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18355 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!638925 () Bool)

(declare-fun res!413675 () Bool)

(assert (=> b!638925 (=> (not res!413675) (not e!365651))))

(assert (=> b!638925 (= res!413675 (validKeyInArray!0 (select (arr!18355 a!2986) j!136)))))

(declare-fun b!638926 () Bool)

(declare-fun e!365657 () Bool)

(assert (=> b!638926 (= e!365657 e!365653)))

(declare-fun res!413672 () Bool)

(assert (=> b!638926 (=> res!413672 e!365653)))

(declare-fun lt!295561 () (_ BitVec 64))

(declare-fun lt!295559 () (_ BitVec 64))

(assert (=> b!638926 (= res!413672 (or (not (= (select (arr!18355 a!2986) j!136) lt!295559)) (not (= (select (arr!18355 a!2986) j!136) lt!295561)) (bvsge j!136 index!984)))))

(declare-fun b!638919 () Bool)

(declare-fun e!365659 () Bool)

(declare-fun e!365654 () Bool)

(assert (=> b!638919 (= e!365659 e!365654)))

(declare-fun res!413679 () Bool)

(assert (=> b!638919 (=> res!413679 e!365654)))

(assert (=> b!638919 (= res!413679 (or (not (= (select (arr!18355 a!2986) j!136) lt!295559)) (not (= (select (arr!18355 a!2986) j!136) lt!295561)) (bvsge j!136 index!984)))))

(assert (=> b!638919 e!365657))

(declare-fun res!413669 () Bool)

(assert (=> b!638919 (=> (not res!413669) (not e!365657))))

(assert (=> b!638919 (= res!413669 (= lt!295561 (select (arr!18355 a!2986) j!136)))))

(assert (=> b!638919 (= lt!295561 (select (store (arr!18355 a!2986) i!1108 k0!1786) index!984))))

(declare-fun res!413677 () Bool)

(assert (=> start!57818 (=> (not res!413677) (not e!365651))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57818 (= res!413677 (validMask!0 mask!3053))))

(assert (=> start!57818 e!365651))

(assert (=> start!57818 true))

(declare-fun array_inv!14129 (array!38276) Bool)

(assert (=> start!57818 (array_inv!14129 a!2986)))

(declare-fun b!638927 () Bool)

(assert (=> b!638927 (= e!365654 true)))

(assert (=> b!638927 (arrayNoDuplicates!0 lt!295568 #b00000000000000000000000000000000 Nil!12446)))

(declare-fun lt!295562 () Unit!21566)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!38276 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12449) Unit!21566)

(assert (=> b!638927 (= lt!295562 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!12446))))

(assert (=> b!638927 (arrayContainsKey!0 lt!295568 (select (arr!18355 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!295565 () Unit!21566)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38276 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21566)

(assert (=> b!638927 (= lt!295565 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!295568 (select (arr!18355 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!638928 () Bool)

(declare-fun e!365655 () Bool)

(assert (=> b!638928 (= e!365655 (not e!365659))))

(declare-fun res!413674 () Bool)

(assert (=> b!638928 (=> res!413674 e!365659)))

(declare-fun lt!295563 () SeekEntryResult!6802)

(assert (=> b!638928 (= res!413674 (not (= lt!295563 (Found!6802 index!984))))))

(declare-fun lt!295566 () Unit!21566)

(assert (=> b!638928 (= lt!295566 e!365649)))

(declare-fun c!72992 () Bool)

(assert (=> b!638928 (= c!72992 (= lt!295563 Undefined!6802))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38276 (_ BitVec 32)) SeekEntryResult!6802)

(assert (=> b!638928 (= lt!295563 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!295559 lt!295568 mask!3053))))

(declare-fun e!365656 () Bool)

(assert (=> b!638928 e!365656))

(declare-fun res!413670 () Bool)

(assert (=> b!638928 (=> (not res!413670) (not e!365656))))

(declare-fun lt!295558 () (_ BitVec 32))

(declare-fun lt!295569 () SeekEntryResult!6802)

(assert (=> b!638928 (= res!413670 (= lt!295569 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295558 vacantSpotIndex!68 lt!295559 lt!295568 mask!3053)))))

(assert (=> b!638928 (= lt!295569 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!295558 vacantSpotIndex!68 (select (arr!18355 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!638928 (= lt!295559 (select (store (arr!18355 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!295560 () Unit!21566)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38276 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21566)

(assert (=> b!638928 (= lt!295560 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!295558 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!638928 (= lt!295558 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!638929 () Bool)

(declare-fun e!365650 () Bool)

(assert (=> b!638929 (= e!365650 e!365655)))

(declare-fun res!413673 () Bool)

(assert (=> b!638929 (=> (not res!413673) (not e!365655))))

(declare-fun lt!295564 () SeekEntryResult!6802)

(assert (=> b!638929 (= res!413673 (and (= lt!295564 (Found!6802 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18355 a!2986) index!984) (select (arr!18355 a!2986) j!136))) (not (= (select (arr!18355 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!638929 (= lt!295564 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18355 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!638930 () Bool)

(assert (=> b!638930 (= e!365658 (arrayContainsKey!0 lt!295568 (select (arr!18355 a!2986) j!136) index!984))))

(declare-fun b!638931 () Bool)

(declare-fun Unit!21569 () Unit!21566)

(assert (=> b!638931 (= e!365649 Unit!21569)))

(assert (=> b!638931 false))

(declare-fun b!638932 () Bool)

(assert (=> b!638932 (= e!365656 (= lt!295564 lt!295569))))

(declare-fun b!638933 () Bool)

(assert (=> b!638933 (= e!365648 e!365650)))

(declare-fun res!413666 () Bool)

(assert (=> b!638933 (=> (not res!413666) (not e!365650))))

(assert (=> b!638933 (= res!413666 (= (select (store (arr!18355 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!638933 (= lt!295568 (array!38277 (store (arr!18355 a!2986) i!1108 k0!1786) (size!18719 a!2986)))))

(assert (= (and start!57818 res!413677) b!638921))

(assert (= (and b!638921 res!413676) b!638925))

(assert (= (and b!638925 res!413675) b!638915))

(assert (= (and b!638915 res!413665) b!638923))

(assert (= (and b!638923 res!413681) b!638922))

(assert (= (and b!638922 res!413680) b!638920))

(assert (= (and b!638920 res!413668) b!638917))

(assert (= (and b!638917 res!413678) b!638924))

(assert (= (and b!638924 res!413671) b!638933))

(assert (= (and b!638933 res!413666) b!638929))

(assert (= (and b!638929 res!413673) b!638928))

(assert (= (and b!638928 res!413670) b!638932))

(assert (= (and b!638928 c!72992) b!638931))

(assert (= (and b!638928 (not c!72992)) b!638918))

(assert (= (and b!638928 (not res!413674)) b!638919))

(assert (= (and b!638919 res!413669) b!638926))

(assert (= (and b!638926 (not res!413672)) b!638916))

(assert (= (and b!638916 res!413667) b!638930))

(assert (= (and b!638919 (not res!413679)) b!638927))

(declare-fun m!612867 () Bool)

(assert (=> b!638926 m!612867))

(declare-fun m!612869 () Bool)

(assert (=> b!638917 m!612869))

(declare-fun m!612871 () Bool)

(assert (=> start!57818 m!612871))

(declare-fun m!612873 () Bool)

(assert (=> start!57818 m!612873))

(assert (=> b!638919 m!612867))

(declare-fun m!612875 () Bool)

(assert (=> b!638919 m!612875))

(declare-fun m!612877 () Bool)

(assert (=> b!638919 m!612877))

(declare-fun m!612879 () Bool)

(assert (=> b!638924 m!612879))

(assert (=> b!638916 m!612867))

(assert (=> b!638916 m!612867))

(declare-fun m!612881 () Bool)

(assert (=> b!638916 m!612881))

(declare-fun m!612883 () Bool)

(assert (=> b!638915 m!612883))

(assert (=> b!638925 m!612867))

(assert (=> b!638925 m!612867))

(declare-fun m!612885 () Bool)

(assert (=> b!638925 m!612885))

(declare-fun m!612887 () Bool)

(assert (=> b!638928 m!612887))

(declare-fun m!612889 () Bool)

(assert (=> b!638928 m!612889))

(assert (=> b!638928 m!612867))

(assert (=> b!638928 m!612875))

(assert (=> b!638928 m!612867))

(declare-fun m!612891 () Bool)

(assert (=> b!638928 m!612891))

(declare-fun m!612893 () Bool)

(assert (=> b!638928 m!612893))

(declare-fun m!612895 () Bool)

(assert (=> b!638928 m!612895))

(declare-fun m!612897 () Bool)

(assert (=> b!638928 m!612897))

(declare-fun m!612899 () Bool)

(assert (=> b!638923 m!612899))

(assert (=> b!638930 m!612867))

(assert (=> b!638930 m!612867))

(declare-fun m!612901 () Bool)

(assert (=> b!638930 m!612901))

(declare-fun m!612903 () Bool)

(assert (=> b!638929 m!612903))

(assert (=> b!638929 m!612867))

(assert (=> b!638929 m!612867))

(declare-fun m!612905 () Bool)

(assert (=> b!638929 m!612905))

(assert (=> b!638927 m!612867))

(declare-fun m!612907 () Bool)

(assert (=> b!638927 m!612907))

(assert (=> b!638927 m!612867))

(declare-fun m!612909 () Bool)

(assert (=> b!638927 m!612909))

(assert (=> b!638927 m!612867))

(declare-fun m!612911 () Bool)

(assert (=> b!638927 m!612911))

(declare-fun m!612913 () Bool)

(assert (=> b!638927 m!612913))

(declare-fun m!612915 () Bool)

(assert (=> b!638920 m!612915))

(declare-fun m!612917 () Bool)

(assert (=> b!638922 m!612917))

(assert (=> b!638933 m!612875))

(declare-fun m!612919 () Bool)

(assert (=> b!638933 m!612919))

(check-sat (not b!638925) (not b!638916) (not b!638922) (not b!638920) (not b!638929) (not start!57818) (not b!638915) (not b!638917) (not b!638930) (not b!638928) (not b!638923) (not b!638927))
(check-sat)
