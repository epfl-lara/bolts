; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!57718 () Bool)

(assert start!57718)

(declare-fun b!637730 () Bool)

(declare-fun e!364918 () Bool)

(declare-fun e!364917 () Bool)

(assert (=> b!637730 (= e!364918 e!364917)))

(declare-fun res!412771 () Bool)

(assert (=> b!637730 (=> res!412771 e!364917)))

(declare-datatypes ((array!38245 0))(
  ( (array!38246 (arr!18341 (Array (_ BitVec 32) (_ BitVec 64))) (size!18705 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38245)

(assert (=> b!637730 (= res!412771 (or (bvsge (size!18705 a!2986) #b01111111111111111111111111111111) (bvsge #b00000000000000000000000000000000 (size!18705 a!2986))))))

(declare-fun lt!294935 () array!38245)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!38245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!637730 (arrayContainsKey!0 lt!294935 (select (arr!18341 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-datatypes ((Unit!21510 0))(
  ( (Unit!21511) )
))
(declare-fun lt!294934 () Unit!21510)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!38245 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!21510)

(assert (=> b!637730 (= lt!294934 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!294935 (select (arr!18341 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!637731 () Bool)

(declare-fun res!412767 () Bool)

(declare-fun e!364923 () Bool)

(assert (=> b!637731 (=> (not res!412767) (not e!364923))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!637731 (= res!412767 (and (= (size!18705 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18705 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18705 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!637732 () Bool)

(declare-fun e!364924 () Bool)

(declare-fun e!364927 () Bool)

(assert (=> b!637732 (= e!364924 e!364927)))

(declare-fun res!412776 () Bool)

(assert (=> b!637732 (=> res!412776 e!364927)))

(declare-fun lt!294932 () (_ BitVec 64))

(declare-fun lt!294939 () (_ BitVec 64))

(assert (=> b!637732 (= res!412776 (or (not (= (select (arr!18341 a!2986) j!136) lt!294939)) (not (= (select (arr!18341 a!2986) j!136) lt!294932)) (bvsge j!136 index!984)))))

(declare-fun b!637733 () Bool)

(declare-fun res!412781 () Bool)

(assert (=> b!637733 (=> (not res!412781) (not e!364923))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!637733 (= res!412781 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!637734 () Bool)

(declare-fun res!412778 () Bool)

(declare-fun e!364919 () Bool)

(assert (=> b!637734 (=> (not res!412778) (not e!364919))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!637734 (= res!412778 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18341 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!637735 () Bool)

(declare-fun e!364921 () Unit!21510)

(declare-fun Unit!21512 () Unit!21510)

(assert (=> b!637735 (= e!364921 Unit!21512)))

(declare-fun b!637736 () Bool)

(declare-fun e!364916 () Bool)

(assert (=> b!637736 (= e!364916 e!364918)))

(declare-fun res!412783 () Bool)

(assert (=> b!637736 (=> res!412783 e!364918)))

(assert (=> b!637736 (= res!412783 (or (not (= (select (arr!18341 a!2986) j!136) lt!294939)) (not (= (select (arr!18341 a!2986) j!136) lt!294932)) (bvsge j!136 index!984)))))

(assert (=> b!637736 e!364924))

(declare-fun res!412775 () Bool)

(assert (=> b!637736 (=> (not res!412775) (not e!364924))))

(assert (=> b!637736 (= res!412775 (= lt!294932 (select (arr!18341 a!2986) j!136)))))

(assert (=> b!637736 (= lt!294932 (select (store (arr!18341 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!637737 () Bool)

(declare-fun res!412782 () Bool)

(assert (=> b!637737 (=> (not res!412782) (not e!364923))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!637737 (= res!412782 (validKeyInArray!0 k!1786))))

(declare-fun b!637738 () Bool)

(declare-fun res!412774 () Bool)

(assert (=> b!637738 (=> (not res!412774) (not e!364923))))

(assert (=> b!637738 (= res!412774 (validKeyInArray!0 (select (arr!18341 a!2986) j!136)))))

(declare-fun b!637739 () Bool)

(declare-fun Unit!21513 () Unit!21510)

(assert (=> b!637739 (= e!364921 Unit!21513)))

(assert (=> b!637739 false))

(declare-fun b!637740 () Bool)

(declare-fun e!364925 () Bool)

(assert (=> b!637740 (= e!364925 (arrayContainsKey!0 lt!294935 (select (arr!18341 a!2986) j!136) index!984))))

(declare-fun b!637741 () Bool)

(declare-fun res!412779 () Bool)

(assert (=> b!637741 (=> res!412779 e!364917)))

(declare-datatypes ((List!12435 0))(
  ( (Nil!12432) (Cons!12431 (h!13476 (_ BitVec 64)) (t!18671 List!12435)) )
))
(declare-fun contains!3118 (List!12435 (_ BitVec 64)) Bool)

(assert (=> b!637741 (= res!412779 (contains!3118 Nil!12432 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!637742 () Bool)

(declare-fun e!364926 () Bool)

(assert (=> b!637742 (= e!364919 e!364926)))

(declare-fun res!412777 () Bool)

(assert (=> b!637742 (=> (not res!412777) (not e!364926))))

(assert (=> b!637742 (= res!412777 (= (select (store (arr!18341 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!637742 (= lt!294935 (array!38246 (store (arr!18341 a!2986) i!1108 k!1786) (size!18705 a!2986)))))

(declare-fun b!637729 () Bool)

(declare-fun res!412786 () Bool)

(assert (=> b!637729 (=> res!412786 e!364917)))

(assert (=> b!637729 (= res!412786 (contains!3118 Nil!12432 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!412784 () Bool)

(assert (=> start!57718 (=> (not res!412784) (not e!364923))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!57718 (= res!412784 (validMask!0 mask!3053))))

(assert (=> start!57718 e!364923))

(assert (=> start!57718 true))

(declare-fun array_inv!14115 (array!38245) Bool)

(assert (=> start!57718 (array_inv!14115 a!2986)))

(declare-fun b!637743 () Bool)

(declare-fun res!412780 () Bool)

(assert (=> b!637743 (=> res!412780 e!364917)))

(declare-fun noDuplicate!393 (List!12435) Bool)

(assert (=> b!637743 (= res!412780 (not (noDuplicate!393 Nil!12432)))))

(declare-fun b!637744 () Bool)

(declare-fun res!412768 () Bool)

(assert (=> b!637744 (=> (not res!412768) (not e!364919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38245 (_ BitVec 32)) Bool)

(assert (=> b!637744 (= res!412768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!637745 () Bool)

(declare-fun e!364920 () Bool)

(assert (=> b!637745 (= e!364926 e!364920)))

(declare-fun res!412785 () Bool)

(assert (=> b!637745 (=> (not res!412785) (not e!364920))))

(declare-datatypes ((SeekEntryResult!6788 0))(
  ( (MissingZero!6788 (index!29465 (_ BitVec 32))) (Found!6788 (index!29466 (_ BitVec 32))) (Intermediate!6788 (undefined!7600 Bool) (index!29467 (_ BitVec 32)) (x!58247 (_ BitVec 32))) (Undefined!6788) (MissingVacant!6788 (index!29468 (_ BitVec 32))) )
))
(declare-fun lt!294937 () SeekEntryResult!6788)

(assert (=> b!637745 (= res!412785 (and (= lt!294937 (Found!6788 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18341 a!2986) index!984) (select (arr!18341 a!2986) j!136))) (not (= (select (arr!18341 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38245 (_ BitVec 32)) SeekEntryResult!6788)

(assert (=> b!637745 (= lt!294937 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18341 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!637746 () Bool)

(assert (=> b!637746 (= e!364923 e!364919)))

(declare-fun res!412769 () Bool)

(assert (=> b!637746 (=> (not res!412769) (not e!364919))))

(declare-fun lt!294931 () SeekEntryResult!6788)

(assert (=> b!637746 (= res!412769 (or (= lt!294931 (MissingZero!6788 i!1108)) (= lt!294931 (MissingVacant!6788 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38245 (_ BitVec 32)) SeekEntryResult!6788)

(assert (=> b!637746 (= lt!294931 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!637747 () Bool)

(assert (=> b!637747 (= e!364917 true)))

(declare-fun lt!294938 () Bool)

(assert (=> b!637747 (= lt!294938 (contains!3118 Nil!12432 k!1786))))

(declare-fun b!637748 () Bool)

(assert (=> b!637748 (= e!364920 (not e!364916))))

(declare-fun res!412787 () Bool)

(assert (=> b!637748 (=> res!412787 e!364916)))

(declare-fun lt!294929 () SeekEntryResult!6788)

(assert (=> b!637748 (= res!412787 (not (= lt!294929 (Found!6788 index!984))))))

(declare-fun lt!294928 () Unit!21510)

(assert (=> b!637748 (= lt!294928 e!364921)))

(declare-fun c!72848 () Bool)

(assert (=> b!637748 (= c!72848 (= lt!294929 Undefined!6788))))

(assert (=> b!637748 (= lt!294929 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!294939 lt!294935 mask!3053))))

(declare-fun e!364915 () Bool)

(assert (=> b!637748 e!364915))

(declare-fun res!412773 () Bool)

(assert (=> b!637748 (=> (not res!412773) (not e!364915))))

(declare-fun lt!294936 () SeekEntryResult!6788)

(declare-fun lt!294933 () (_ BitVec 32))

(assert (=> b!637748 (= res!412773 (= lt!294936 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294933 vacantSpotIndex!68 lt!294939 lt!294935 mask!3053)))))

(assert (=> b!637748 (= lt!294936 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!294933 vacantSpotIndex!68 (select (arr!18341 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!637748 (= lt!294939 (select (store (arr!18341 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!294930 () Unit!21510)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38245 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21510)

(assert (=> b!637748 (= lt!294930 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!294933 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!637748 (= lt!294933 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!637749 () Bool)

(assert (=> b!637749 (= e!364927 e!364925)))

(declare-fun res!412772 () Bool)

(assert (=> b!637749 (=> (not res!412772) (not e!364925))))

(assert (=> b!637749 (= res!412772 (arrayContainsKey!0 lt!294935 (select (arr!18341 a!2986) j!136) j!136))))

(declare-fun b!637750 () Bool)

(assert (=> b!637750 (= e!364915 (= lt!294937 lt!294936))))

(declare-fun b!637751 () Bool)

(declare-fun res!412770 () Bool)

(assert (=> b!637751 (=> (not res!412770) (not e!364919))))

(declare-fun arrayNoDuplicates!0 (array!38245 (_ BitVec 32) List!12435) Bool)

(assert (=> b!637751 (= res!412770 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12432))))

(assert (= (and start!57718 res!412784) b!637731))

(assert (= (and b!637731 res!412767) b!637738))

(assert (= (and b!637738 res!412774) b!637737))

(assert (= (and b!637737 res!412782) b!637733))

(assert (= (and b!637733 res!412781) b!637746))

(assert (= (and b!637746 res!412769) b!637744))

(assert (= (and b!637744 res!412768) b!637751))

(assert (= (and b!637751 res!412770) b!637734))

(assert (= (and b!637734 res!412778) b!637742))

(assert (= (and b!637742 res!412777) b!637745))

(assert (= (and b!637745 res!412785) b!637748))

(assert (= (and b!637748 res!412773) b!637750))

(assert (= (and b!637748 c!72848) b!637739))

(assert (= (and b!637748 (not c!72848)) b!637735))

(assert (= (and b!637748 (not res!412787)) b!637736))

(assert (= (and b!637736 res!412775) b!637732))

(assert (= (and b!637732 (not res!412776)) b!637749))

(assert (= (and b!637749 res!412772) b!637740))

(assert (= (and b!637736 (not res!412783)) b!637730))

(assert (= (and b!637730 (not res!412771)) b!637743))

(assert (= (and b!637743 (not res!412780)) b!637729))

(assert (= (and b!637729 (not res!412786)) b!637741))

(assert (= (and b!637741 (not res!412779)) b!637747))

(declare-fun m!611801 () Bool)

(assert (=> b!637747 m!611801))

(declare-fun m!611803 () Bool)

(assert (=> b!637738 m!611803))

(assert (=> b!637738 m!611803))

(declare-fun m!611805 () Bool)

(assert (=> b!637738 m!611805))

(declare-fun m!611807 () Bool)

(assert (=> b!637741 m!611807))

(declare-fun m!611809 () Bool)

(assert (=> b!637734 m!611809))

(declare-fun m!611811 () Bool)

(assert (=> b!637742 m!611811))

(declare-fun m!611813 () Bool)

(assert (=> b!637742 m!611813))

(assert (=> b!637730 m!611803))

(assert (=> b!637730 m!611803))

(declare-fun m!611815 () Bool)

(assert (=> b!637730 m!611815))

(assert (=> b!637730 m!611803))

(declare-fun m!611817 () Bool)

(assert (=> b!637730 m!611817))

(declare-fun m!611819 () Bool)

(assert (=> b!637743 m!611819))

(declare-fun m!611821 () Bool)

(assert (=> b!637746 m!611821))

(declare-fun m!611823 () Bool)

(assert (=> start!57718 m!611823))

(declare-fun m!611825 () Bool)

(assert (=> start!57718 m!611825))

(declare-fun m!611827 () Bool)

(assert (=> b!637729 m!611827))

(declare-fun m!611829 () Bool)

(assert (=> b!637745 m!611829))

(assert (=> b!637745 m!611803))

(assert (=> b!637745 m!611803))

(declare-fun m!611831 () Bool)

(assert (=> b!637745 m!611831))

(assert (=> b!637749 m!611803))

(assert (=> b!637749 m!611803))

(declare-fun m!611833 () Bool)

(assert (=> b!637749 m!611833))

(assert (=> b!637736 m!611803))

(assert (=> b!637736 m!611811))

(declare-fun m!611835 () Bool)

(assert (=> b!637736 m!611835))

(declare-fun m!611837 () Bool)

(assert (=> b!637744 m!611837))

(assert (=> b!637732 m!611803))

(assert (=> b!637740 m!611803))

(assert (=> b!637740 m!611803))

(declare-fun m!611839 () Bool)

(assert (=> b!637740 m!611839))

(declare-fun m!611841 () Bool)

(assert (=> b!637733 m!611841))

(declare-fun m!611843 () Bool)

(assert (=> b!637748 m!611843))

(declare-fun m!611845 () Bool)

(assert (=> b!637748 m!611845))

(assert (=> b!637748 m!611803))

(declare-fun m!611847 () Bool)

(assert (=> b!637748 m!611847))

(declare-fun m!611849 () Bool)

(assert (=> b!637748 m!611849))

(assert (=> b!637748 m!611803))

(declare-fun m!611851 () Bool)

(assert (=> b!637748 m!611851))

(declare-fun m!611853 () Bool)

(assert (=> b!637748 m!611853))

(assert (=> b!637748 m!611811))

(declare-fun m!611855 () Bool)

(assert (=> b!637737 m!611855))

(declare-fun m!611857 () Bool)

(assert (=> b!637751 m!611857))

(push 1)

