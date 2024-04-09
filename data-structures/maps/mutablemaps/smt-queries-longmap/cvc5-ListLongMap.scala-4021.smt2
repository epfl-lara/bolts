; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!54840 () Bool)

(assert start!54840)

(declare-fun b!598574 () Bool)

(declare-fun res!383800 () Bool)

(declare-fun e!342179 () Bool)

(assert (=> b!598574 (=> (not res!383800) (not e!342179))))

(declare-datatypes ((array!37038 0))(
  ( (array!37039 (arr!17775 (Array (_ BitVec 32) (_ BitVec 64))) (size!18139 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37038)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37038 (_ BitVec 32)) Bool)

(assert (=> b!598574 (= res!383800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598575 () Bool)

(declare-fun res!383808 () Bool)

(declare-fun e!342186 () Bool)

(assert (=> b!598575 (=> (not res!383808) (not e!342186))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598575 (= res!383808 (validKeyInArray!0 k!1786))))

(declare-fun b!598576 () Bool)

(declare-fun e!342183 () Bool)

(declare-fun e!342184 () Bool)

(assert (=> b!598576 (= e!342183 e!342184)))

(declare-fun res!383810 () Bool)

(assert (=> b!598576 (=> (not res!383810) (not e!342184))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!272036 () array!37038)

(declare-fun arrayContainsKey!0 (array!37038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598576 (= res!383810 (arrayContainsKey!0 lt!272036 (select (arr!17775 a!2986) j!136) j!136))))

(declare-fun b!598577 () Bool)

(declare-fun e!342189 () Bool)

(assert (=> b!598577 (= e!342189 true)))

(declare-datatypes ((List!11869 0))(
  ( (Nil!11866) (Cons!11865 (h!12910 (_ BitVec 64)) (t!18105 List!11869)) )
))
(declare-fun arrayNoDuplicates!0 (array!37038 (_ BitVec 32) List!11869) Bool)

(assert (=> b!598577 (arrayNoDuplicates!0 lt!272036 #b00000000000000000000000000000000 Nil!11866)))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((Unit!18832 0))(
  ( (Unit!18833) )
))
(declare-fun lt!272042 () Unit!18832)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37038 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11869) Unit!18832)

(assert (=> b!598577 (= lt!272042 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k!1786 i!1108 #b00000000000000000000000000000000 Nil!11866))))

(assert (=> b!598577 (arrayContainsKey!0 lt!272036 (select (arr!17775 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272045 () Unit!18832)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37038 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18832)

(assert (=> b!598577 (= lt!272045 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272036 (select (arr!17775 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598578 () Bool)

(declare-fun e!342180 () Bool)

(assert (=> b!598578 (= e!342180 e!342189)))

(declare-fun res!383794 () Bool)

(assert (=> b!598578 (=> res!383794 e!342189)))

(declare-fun lt!272035 () (_ BitVec 64))

(declare-fun lt!272038 () (_ BitVec 64))

(assert (=> b!598578 (= res!383794 (or (not (= (select (arr!17775 a!2986) j!136) lt!272035)) (not (= (select (arr!17775 a!2986) j!136) lt!272038)) (bvsge j!136 index!984)))))

(declare-fun e!342182 () Bool)

(assert (=> b!598578 e!342182))

(declare-fun res!383796 () Bool)

(assert (=> b!598578 (=> (not res!383796) (not e!342182))))

(assert (=> b!598578 (= res!383796 (= lt!272038 (select (arr!17775 a!2986) j!136)))))

(assert (=> b!598578 (= lt!272038 (select (store (arr!17775 a!2986) i!1108 k!1786) index!984))))

(declare-fun b!598579 () Bool)

(declare-fun e!342187 () Bool)

(declare-fun e!342190 () Bool)

(assert (=> b!598579 (= e!342187 e!342190)))

(declare-fun res!383797 () Bool)

(assert (=> b!598579 (=> (not res!383797) (not e!342190))))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6222 0))(
  ( (MissingZero!6222 (index!27144 (_ BitVec 32))) (Found!6222 (index!27145 (_ BitVec 32))) (Intermediate!6222 (undefined!7034 Bool) (index!27146 (_ BitVec 32)) (x!55982 (_ BitVec 32))) (Undefined!6222) (MissingVacant!6222 (index!27147 (_ BitVec 32))) )
))
(declare-fun lt!272037 () SeekEntryResult!6222)

(assert (=> b!598579 (= res!383797 (and (= lt!272037 (Found!6222 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17775 a!2986) index!984) (select (arr!17775 a!2986) j!136))) (not (= (select (arr!17775 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37038 (_ BitVec 32)) SeekEntryResult!6222)

(assert (=> b!598579 (= lt!272037 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17775 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598580 () Bool)

(declare-fun res!383807 () Bool)

(assert (=> b!598580 (=> (not res!383807) (not e!342186))))

(assert (=> b!598580 (= res!383807 (and (= (size!18139 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18139 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18139 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598581 () Bool)

(declare-fun res!383801 () Bool)

(assert (=> b!598581 (=> (not res!383801) (not e!342179))))

(assert (=> b!598581 (= res!383801 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11866))))

(declare-fun b!598582 () Bool)

(assert (=> b!598582 (= e!342184 (arrayContainsKey!0 lt!272036 (select (arr!17775 a!2986) j!136) index!984))))

(declare-fun b!598583 () Bool)

(assert (=> b!598583 (= e!342179 e!342187)))

(declare-fun res!383806 () Bool)

(assert (=> b!598583 (=> (not res!383806) (not e!342187))))

(assert (=> b!598583 (= res!383806 (= (select (store (arr!17775 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598583 (= lt!272036 (array!37039 (store (arr!17775 a!2986) i!1108 k!1786) (size!18139 a!2986)))))

(declare-fun b!598584 () Bool)

(declare-fun e!342188 () Unit!18832)

(declare-fun Unit!18834 () Unit!18832)

(assert (=> b!598584 (= e!342188 Unit!18834)))

(declare-fun res!383802 () Bool)

(assert (=> start!54840 (=> (not res!383802) (not e!342186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54840 (= res!383802 (validMask!0 mask!3053))))

(assert (=> start!54840 e!342186))

(assert (=> start!54840 true))

(declare-fun array_inv!13549 (array!37038) Bool)

(assert (=> start!54840 (array_inv!13549 a!2986)))

(declare-fun b!598585 () Bool)

(declare-fun res!383803 () Bool)

(assert (=> b!598585 (=> (not res!383803) (not e!342179))))

(assert (=> b!598585 (= res!383803 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17775 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598586 () Bool)

(assert (=> b!598586 (= e!342182 e!342183)))

(declare-fun res!383804 () Bool)

(assert (=> b!598586 (=> res!383804 e!342183)))

(assert (=> b!598586 (= res!383804 (or (not (= (select (arr!17775 a!2986) j!136) lt!272035)) (not (= (select (arr!17775 a!2986) j!136) lt!272038)) (bvsge j!136 index!984)))))

(declare-fun b!598587 () Bool)

(declare-fun Unit!18835 () Unit!18832)

(assert (=> b!598587 (= e!342188 Unit!18835)))

(assert (=> b!598587 false))

(declare-fun b!598588 () Bool)

(assert (=> b!598588 (= e!342190 (not e!342180))))

(declare-fun res!383795 () Bool)

(assert (=> b!598588 (=> res!383795 e!342180)))

(declare-fun lt!272043 () SeekEntryResult!6222)

(assert (=> b!598588 (= res!383795 (not (= lt!272043 (Found!6222 index!984))))))

(declare-fun lt!272044 () Unit!18832)

(assert (=> b!598588 (= lt!272044 e!342188)))

(declare-fun c!67757 () Bool)

(assert (=> b!598588 (= c!67757 (= lt!272043 Undefined!6222))))

(assert (=> b!598588 (= lt!272043 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272035 lt!272036 mask!3053))))

(declare-fun e!342185 () Bool)

(assert (=> b!598588 e!342185))

(declare-fun res!383798 () Bool)

(assert (=> b!598588 (=> (not res!383798) (not e!342185))))

(declare-fun lt!272040 () (_ BitVec 32))

(declare-fun lt!272046 () SeekEntryResult!6222)

(assert (=> b!598588 (= res!383798 (= lt!272046 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272040 vacantSpotIndex!68 lt!272035 lt!272036 mask!3053)))))

(assert (=> b!598588 (= lt!272046 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272040 vacantSpotIndex!68 (select (arr!17775 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598588 (= lt!272035 (select (store (arr!17775 a!2986) i!1108 k!1786) j!136))))

(declare-fun lt!272039 () Unit!18832)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37038 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18832)

(assert (=> b!598588 (= lt!272039 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272040 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598588 (= lt!272040 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598589 () Bool)

(declare-fun res!383809 () Bool)

(assert (=> b!598589 (=> (not res!383809) (not e!342186))))

(assert (=> b!598589 (= res!383809 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598590 () Bool)

(assert (=> b!598590 (= e!342185 (= lt!272037 lt!272046))))

(declare-fun b!598591 () Bool)

(assert (=> b!598591 (= e!342186 e!342179)))

(declare-fun res!383805 () Bool)

(assert (=> b!598591 (=> (not res!383805) (not e!342179))))

(declare-fun lt!272041 () SeekEntryResult!6222)

(assert (=> b!598591 (= res!383805 (or (= lt!272041 (MissingZero!6222 i!1108)) (= lt!272041 (MissingVacant!6222 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37038 (_ BitVec 32)) SeekEntryResult!6222)

(assert (=> b!598591 (= lt!272041 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!598592 () Bool)

(declare-fun res!383799 () Bool)

(assert (=> b!598592 (=> (not res!383799) (not e!342186))))

(assert (=> b!598592 (= res!383799 (validKeyInArray!0 (select (arr!17775 a!2986) j!136)))))

(assert (= (and start!54840 res!383802) b!598580))

(assert (= (and b!598580 res!383807) b!598592))

(assert (= (and b!598592 res!383799) b!598575))

(assert (= (and b!598575 res!383808) b!598589))

(assert (= (and b!598589 res!383809) b!598591))

(assert (= (and b!598591 res!383805) b!598574))

(assert (= (and b!598574 res!383800) b!598581))

(assert (= (and b!598581 res!383801) b!598585))

(assert (= (and b!598585 res!383803) b!598583))

(assert (= (and b!598583 res!383806) b!598579))

(assert (= (and b!598579 res!383797) b!598588))

(assert (= (and b!598588 res!383798) b!598590))

(assert (= (and b!598588 c!67757) b!598587))

(assert (= (and b!598588 (not c!67757)) b!598584))

(assert (= (and b!598588 (not res!383795)) b!598578))

(assert (= (and b!598578 res!383796) b!598586))

(assert (= (and b!598586 (not res!383804)) b!598576))

(assert (= (and b!598576 res!383810) b!598582))

(assert (= (and b!598578 (not res!383794)) b!598577))

(declare-fun m!575913 () Bool)

(assert (=> b!598585 m!575913))

(declare-fun m!575915 () Bool)

(assert (=> b!598586 m!575915))

(declare-fun m!575917 () Bool)

(assert (=> b!598579 m!575917))

(assert (=> b!598579 m!575915))

(assert (=> b!598579 m!575915))

(declare-fun m!575919 () Bool)

(assert (=> b!598579 m!575919))

(declare-fun m!575921 () Bool)

(assert (=> b!598591 m!575921))

(assert (=> b!598576 m!575915))

(assert (=> b!598576 m!575915))

(declare-fun m!575923 () Bool)

(assert (=> b!598576 m!575923))

(assert (=> b!598582 m!575915))

(assert (=> b!598582 m!575915))

(declare-fun m!575925 () Bool)

(assert (=> b!598582 m!575925))

(declare-fun m!575927 () Bool)

(assert (=> b!598581 m!575927))

(declare-fun m!575929 () Bool)

(assert (=> b!598588 m!575929))

(assert (=> b!598588 m!575915))

(declare-fun m!575931 () Bool)

(assert (=> b!598588 m!575931))

(assert (=> b!598588 m!575915))

(declare-fun m!575933 () Bool)

(assert (=> b!598588 m!575933))

(declare-fun m!575935 () Bool)

(assert (=> b!598588 m!575935))

(declare-fun m!575937 () Bool)

(assert (=> b!598588 m!575937))

(declare-fun m!575939 () Bool)

(assert (=> b!598588 m!575939))

(declare-fun m!575941 () Bool)

(assert (=> b!598588 m!575941))

(assert (=> b!598592 m!575915))

(assert (=> b!598592 m!575915))

(declare-fun m!575943 () Bool)

(assert (=> b!598592 m!575943))

(declare-fun m!575945 () Bool)

(assert (=> b!598575 m!575945))

(assert (=> b!598583 m!575939))

(declare-fun m!575947 () Bool)

(assert (=> b!598583 m!575947))

(assert (=> b!598578 m!575915))

(assert (=> b!598578 m!575939))

(declare-fun m!575949 () Bool)

(assert (=> b!598578 m!575949))

(declare-fun m!575951 () Bool)

(assert (=> b!598574 m!575951))

(declare-fun m!575953 () Bool)

(assert (=> start!54840 m!575953))

(declare-fun m!575955 () Bool)

(assert (=> start!54840 m!575955))

(declare-fun m!575957 () Bool)

(assert (=> b!598589 m!575957))

(declare-fun m!575959 () Bool)

(assert (=> b!598577 m!575959))

(assert (=> b!598577 m!575915))

(declare-fun m!575961 () Bool)

(assert (=> b!598577 m!575961))

(assert (=> b!598577 m!575915))

(declare-fun m!575963 () Bool)

(assert (=> b!598577 m!575963))

(assert (=> b!598577 m!575915))

(declare-fun m!575965 () Bool)

(assert (=> b!598577 m!575965))

(push 1)

