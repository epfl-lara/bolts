; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!54842 () Bool)

(assert start!54842)

(declare-fun b!598631 () Bool)

(declare-fun e!342225 () Bool)

(declare-fun e!342215 () Bool)

(assert (=> b!598631 (= e!342225 e!342215)))

(declare-fun res!383861 () Bool)

(assert (=> b!598631 (=> (not res!383861) (not e!342215))))

(declare-datatypes ((SeekEntryResult!6223 0))(
  ( (MissingZero!6223 (index!27148 (_ BitVec 32))) (Found!6223 (index!27149 (_ BitVec 32))) (Intermediate!6223 (undefined!7035 Bool) (index!27150 (_ BitVec 32)) (x!55983 (_ BitVec 32))) (Undefined!6223) (MissingVacant!6223 (index!27151 (_ BitVec 32))) )
))
(declare-fun lt!272076 () SeekEntryResult!6223)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!598631 (= res!383861 (or (= lt!272076 (MissingZero!6223 i!1108)) (= lt!272076 (MissingVacant!6223 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((array!37040 0))(
  ( (array!37041 (arr!17776 (Array (_ BitVec 32) (_ BitVec 64))) (size!18140 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37040)

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37040 (_ BitVec 32)) SeekEntryResult!6223)

(assert (=> b!598631 (= lt!272076 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!598632 () Bool)

(declare-datatypes ((Unit!18836 0))(
  ( (Unit!18837) )
))
(declare-fun e!342219 () Unit!18836)

(declare-fun Unit!18838 () Unit!18836)

(assert (=> b!598632 (= e!342219 Unit!18838)))

(declare-fun res!383856 () Bool)

(assert (=> start!54842 (=> (not res!383856) (not e!342225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!54842 (= res!383856 (validMask!0 mask!3053))))

(assert (=> start!54842 e!342225))

(assert (=> start!54842 true))

(declare-fun array_inv!13550 (array!37040) Bool)

(assert (=> start!54842 (array_inv!13550 a!2986)))

(declare-fun b!598633 () Bool)

(declare-fun res!383858 () Bool)

(assert (=> b!598633 (=> (not res!383858) (not e!342215))))

(declare-datatypes ((List!11870 0))(
  ( (Nil!11867) (Cons!11866 (h!12911 (_ BitVec 64)) (t!18106 List!11870)) )
))
(declare-fun arrayNoDuplicates!0 (array!37040 (_ BitVec 32) List!11870) Bool)

(assert (=> b!598633 (= res!383858 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11867))))

(declare-fun b!598634 () Bool)

(declare-fun Unit!18839 () Unit!18836)

(assert (=> b!598634 (= e!342219 Unit!18839)))

(assert (=> b!598634 false))

(declare-fun b!598635 () Bool)

(declare-fun e!342223 () Bool)

(assert (=> b!598635 (= e!342223 true)))

(declare-fun lt!272080 () array!37040)

(assert (=> b!598635 (arrayNoDuplicates!0 lt!272080 #b00000000000000000000000000000000 Nil!11867)))

(declare-fun lt!272075 () Unit!18836)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!37040 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!11870) Unit!18836)

(assert (=> b!598635 (= lt!272075 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!2986 k0!1786 i!1108 #b00000000000000000000000000000000 Nil!11867))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!37040 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!598635 (arrayContainsKey!0 lt!272080 (select (arr!17776 a!2986) j!136) (bvadd #b00000000000000000000000000000001 j!136))))

(declare-fun lt!272078 () Unit!18836)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!37040 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!18836)

(assert (=> b!598635 (= lt!272078 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 lt!272080 (select (arr!17776 a!2986) j!136) index!984 (bvadd #b00000000000000000000000000000001 j!136)))))

(declare-fun b!598636 () Bool)

(declare-fun e!342226 () Bool)

(assert (=> b!598636 (= e!342226 e!342223)))

(declare-fun res!383851 () Bool)

(assert (=> b!598636 (=> res!383851 e!342223)))

(declare-fun lt!272074 () (_ BitVec 64))

(declare-fun lt!272081 () (_ BitVec 64))

(assert (=> b!598636 (= res!383851 (or (not (= (select (arr!17776 a!2986) j!136) lt!272081)) (not (= (select (arr!17776 a!2986) j!136) lt!272074)) (bvsge j!136 index!984)))))

(declare-fun e!342224 () Bool)

(assert (=> b!598636 e!342224))

(declare-fun res!383847 () Bool)

(assert (=> b!598636 (=> (not res!383847) (not e!342224))))

(assert (=> b!598636 (= res!383847 (= lt!272074 (select (arr!17776 a!2986) j!136)))))

(assert (=> b!598636 (= lt!272074 (select (store (arr!17776 a!2986) i!1108 k0!1786) index!984))))

(declare-fun b!598637 () Bool)

(declare-fun e!342220 () Bool)

(declare-fun e!342222 () Bool)

(assert (=> b!598637 (= e!342220 e!342222)))

(declare-fun res!383850 () Bool)

(assert (=> b!598637 (=> (not res!383850) (not e!342222))))

(declare-fun lt!272072 () SeekEntryResult!6223)

(declare-fun x!910 () (_ BitVec 32))

(assert (=> b!598637 (= res!383850 (and (= lt!272072 (Found!6223 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17776 a!2986) index!984) (select (arr!17776 a!2986) j!136))) (not (= (select (arr!17776 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37040 (_ BitVec 32)) SeekEntryResult!6223)

(assert (=> b!598637 (= lt!272072 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17776 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!598638 () Bool)

(declare-fun res!383860 () Bool)

(assert (=> b!598638 (=> (not res!383860) (not e!342225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!598638 (= res!383860 (validKeyInArray!0 (select (arr!17776 a!2986) j!136)))))

(declare-fun e!342217 () Bool)

(declare-fun b!598639 () Bool)

(assert (=> b!598639 (= e!342217 (arrayContainsKey!0 lt!272080 (select (arr!17776 a!2986) j!136) index!984))))

(declare-fun b!598640 () Bool)

(declare-fun e!342218 () Bool)

(assert (=> b!598640 (= e!342218 e!342217)))

(declare-fun res!383848 () Bool)

(assert (=> b!598640 (=> (not res!383848) (not e!342217))))

(assert (=> b!598640 (= res!383848 (arrayContainsKey!0 lt!272080 (select (arr!17776 a!2986) j!136) j!136))))

(declare-fun b!598641 () Bool)

(declare-fun e!342216 () Bool)

(declare-fun lt!272079 () SeekEntryResult!6223)

(assert (=> b!598641 (= e!342216 (= lt!272072 lt!272079))))

(declare-fun b!598642 () Bool)

(declare-fun res!383859 () Bool)

(assert (=> b!598642 (=> (not res!383859) (not e!342215))))

(assert (=> b!598642 (= res!383859 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17776 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!598643 () Bool)

(declare-fun res!383855 () Bool)

(assert (=> b!598643 (=> (not res!383855) (not e!342225))))

(assert (=> b!598643 (= res!383855 (and (= (size!18140 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18140 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18140 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!598644 () Bool)

(declare-fun res!383852 () Bool)

(assert (=> b!598644 (=> (not res!383852) (not e!342215))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37040 (_ BitVec 32)) Bool)

(assert (=> b!598644 (= res!383852 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!598645 () Bool)

(assert (=> b!598645 (= e!342222 (not e!342226))))

(declare-fun res!383845 () Bool)

(assert (=> b!598645 (=> res!383845 e!342226)))

(declare-fun lt!272071 () SeekEntryResult!6223)

(assert (=> b!598645 (= res!383845 (not (= lt!272071 (Found!6223 index!984))))))

(declare-fun lt!272077 () Unit!18836)

(assert (=> b!598645 (= lt!272077 e!342219)))

(declare-fun c!67760 () Bool)

(assert (=> b!598645 (= c!67760 (= lt!272071 Undefined!6223))))

(assert (=> b!598645 (= lt!272071 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!272081 lt!272080 mask!3053))))

(assert (=> b!598645 e!342216))

(declare-fun res!383846 () Bool)

(assert (=> b!598645 (=> (not res!383846) (not e!342216))))

(declare-fun lt!272073 () (_ BitVec 32))

(assert (=> b!598645 (= res!383846 (= lt!272079 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272073 vacantSpotIndex!68 lt!272081 lt!272080 mask!3053)))))

(assert (=> b!598645 (= lt!272079 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!272073 vacantSpotIndex!68 (select (arr!17776 a!2986) j!136) a!2986 mask!3053))))

(assert (=> b!598645 (= lt!272081 (select (store (arr!17776 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!272082 () Unit!18836)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!37040 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18836)

(assert (=> b!598645 (= lt!272082 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!272073 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!598645 (= lt!272073 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!598646 () Bool)

(assert (=> b!598646 (= e!342224 e!342218)))

(declare-fun res!383857 () Bool)

(assert (=> b!598646 (=> res!383857 e!342218)))

(assert (=> b!598646 (= res!383857 (or (not (= (select (arr!17776 a!2986) j!136) lt!272081)) (not (= (select (arr!17776 a!2986) j!136) lt!272074)) (bvsge j!136 index!984)))))

(declare-fun b!598647 () Bool)

(declare-fun res!383854 () Bool)

(assert (=> b!598647 (=> (not res!383854) (not e!342225))))

(assert (=> b!598647 (= res!383854 (validKeyInArray!0 k0!1786))))

(declare-fun b!598648 () Bool)

(declare-fun res!383853 () Bool)

(assert (=> b!598648 (=> (not res!383853) (not e!342225))))

(assert (=> b!598648 (= res!383853 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!598649 () Bool)

(assert (=> b!598649 (= e!342215 e!342220)))

(declare-fun res!383849 () Bool)

(assert (=> b!598649 (=> (not res!383849) (not e!342220))))

(assert (=> b!598649 (= res!383849 (= (select (store (arr!17776 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!598649 (= lt!272080 (array!37041 (store (arr!17776 a!2986) i!1108 k0!1786) (size!18140 a!2986)))))

(assert (= (and start!54842 res!383856) b!598643))

(assert (= (and b!598643 res!383855) b!598638))

(assert (= (and b!598638 res!383860) b!598647))

(assert (= (and b!598647 res!383854) b!598648))

(assert (= (and b!598648 res!383853) b!598631))

(assert (= (and b!598631 res!383861) b!598644))

(assert (= (and b!598644 res!383852) b!598633))

(assert (= (and b!598633 res!383858) b!598642))

(assert (= (and b!598642 res!383859) b!598649))

(assert (= (and b!598649 res!383849) b!598637))

(assert (= (and b!598637 res!383850) b!598645))

(assert (= (and b!598645 res!383846) b!598641))

(assert (= (and b!598645 c!67760) b!598634))

(assert (= (and b!598645 (not c!67760)) b!598632))

(assert (= (and b!598645 (not res!383845)) b!598636))

(assert (= (and b!598636 res!383847) b!598646))

(assert (= (and b!598646 (not res!383857)) b!598640))

(assert (= (and b!598640 res!383848) b!598639))

(assert (= (and b!598636 (not res!383851)) b!598635))

(declare-fun m!575967 () Bool)

(assert (=> b!598642 m!575967))

(declare-fun m!575969 () Bool)

(assert (=> b!598631 m!575969))

(declare-fun m!575971 () Bool)

(assert (=> b!598647 m!575971))

(declare-fun m!575973 () Bool)

(assert (=> b!598644 m!575973))

(declare-fun m!575975 () Bool)

(assert (=> b!598638 m!575975))

(assert (=> b!598638 m!575975))

(declare-fun m!575977 () Bool)

(assert (=> b!598638 m!575977))

(assert (=> b!598646 m!575975))

(declare-fun m!575979 () Bool)

(assert (=> b!598645 m!575979))

(declare-fun m!575981 () Bool)

(assert (=> b!598645 m!575981))

(declare-fun m!575983 () Bool)

(assert (=> b!598645 m!575983))

(assert (=> b!598645 m!575975))

(declare-fun m!575985 () Bool)

(assert (=> b!598645 m!575985))

(assert (=> b!598645 m!575975))

(declare-fun m!575987 () Bool)

(assert (=> b!598645 m!575987))

(declare-fun m!575989 () Bool)

(assert (=> b!598645 m!575989))

(declare-fun m!575991 () Bool)

(assert (=> b!598645 m!575991))

(declare-fun m!575993 () Bool)

(assert (=> b!598633 m!575993))

(assert (=> b!598636 m!575975))

(assert (=> b!598636 m!575991))

(declare-fun m!575995 () Bool)

(assert (=> b!598636 m!575995))

(assert (=> b!598640 m!575975))

(assert (=> b!598640 m!575975))

(declare-fun m!575997 () Bool)

(assert (=> b!598640 m!575997))

(declare-fun m!575999 () Bool)

(assert (=> start!54842 m!575999))

(declare-fun m!576001 () Bool)

(assert (=> start!54842 m!576001))

(assert (=> b!598639 m!575975))

(assert (=> b!598639 m!575975))

(declare-fun m!576003 () Bool)

(assert (=> b!598639 m!576003))

(assert (=> b!598649 m!575991))

(declare-fun m!576005 () Bool)

(assert (=> b!598649 m!576005))

(declare-fun m!576007 () Bool)

(assert (=> b!598648 m!576007))

(assert (=> b!598635 m!575975))

(assert (=> b!598635 m!575975))

(declare-fun m!576009 () Bool)

(assert (=> b!598635 m!576009))

(assert (=> b!598635 m!575975))

(declare-fun m!576011 () Bool)

(assert (=> b!598635 m!576011))

(declare-fun m!576013 () Bool)

(assert (=> b!598635 m!576013))

(declare-fun m!576015 () Bool)

(assert (=> b!598635 m!576015))

(declare-fun m!576017 () Bool)

(assert (=> b!598637 m!576017))

(assert (=> b!598637 m!575975))

(assert (=> b!598637 m!575975))

(declare-fun m!576019 () Bool)

(assert (=> b!598637 m!576019))

(check-sat (not b!598633) (not b!598644) (not b!598638) (not b!598635) (not b!598637) (not b!598647) (not b!598640) (not b!598631) (not b!598645) (not b!598648) (not b!598639) (not start!54842))
(check-sat)
