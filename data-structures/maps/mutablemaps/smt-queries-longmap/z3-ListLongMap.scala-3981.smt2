; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53976 () Bool)

(assert start!53976)

(declare-fun b!588970 () Bool)

(declare-fun e!336275 () Bool)

(assert (=> b!588970 (= e!336275 (not true))))

(declare-datatypes ((Unit!18356 0))(
  ( (Unit!18357) )
))
(declare-fun lt!267151 () Unit!18356)

(declare-fun e!336276 () Unit!18356)

(assert (=> b!588970 (= lt!267151 e!336276)))

(declare-fun c!66515 () Bool)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36774 0))(
  ( (array!36775 (arr!17656 (Array (_ BitVec 32) (_ BitVec 64))) (size!18020 (_ BitVec 32))) )
))
(declare-fun lt!267147 () array!36774)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!267149 () (_ BitVec 64))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6103 0))(
  ( (MissingZero!6103 (index!26642 (_ BitVec 32))) (Found!6103 (index!26643 (_ BitVec 32))) (Intermediate!6103 (undefined!6915 Bool) (index!26644 (_ BitVec 32)) (x!55464 (_ BitVec 32))) (Undefined!6103) (MissingVacant!6103 (index!26645 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36774 (_ BitVec 32)) SeekEntryResult!6103)

(assert (=> b!588970 (= c!66515 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 lt!267149 lt!267147 mask!3053) Undefined!6103))))

(declare-fun e!336278 () Bool)

(assert (=> b!588970 e!336278))

(declare-fun res!376674 () Bool)

(assert (=> b!588970 (=> (not res!376674) (not e!336278))))

(declare-fun lt!267148 () (_ BitVec 32))

(declare-fun lt!267146 () SeekEntryResult!6103)

(assert (=> b!588970 (= res!376674 (= lt!267146 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267148 vacantSpotIndex!68 lt!267149 lt!267147 mask!3053)))))

(declare-fun a!2986 () array!36774)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!588970 (= lt!267146 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!267148 vacantSpotIndex!68 (select (arr!17656 a!2986) j!136) a!2986 mask!3053))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!588970 (= lt!267149 (select (store (arr!17656 a!2986) i!1108 k0!1786) j!136))))

(declare-fun lt!267152 () Unit!18356)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36774 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18356)

(assert (=> b!588970 (= lt!267152 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!267148 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588970 (= lt!267148 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588971 () Bool)

(declare-fun res!376677 () Bool)

(declare-fun e!336280 () Bool)

(assert (=> b!588971 (=> (not res!376677) (not e!336280))))

(declare-datatypes ((List!11750 0))(
  ( (Nil!11747) (Cons!11746 (h!12791 (_ BitVec 64)) (t!17986 List!11750)) )
))
(declare-fun arrayNoDuplicates!0 (array!36774 (_ BitVec 32) List!11750) Bool)

(assert (=> b!588971 (= res!376677 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11747))))

(declare-fun b!588972 () Bool)

(declare-fun res!376683 () Bool)

(assert (=> b!588972 (=> (not res!376683) (not e!336280))))

(assert (=> b!588972 (= res!376683 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17656 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588973 () Bool)

(declare-fun Unit!18358 () Unit!18356)

(assert (=> b!588973 (= e!336276 Unit!18358)))

(assert (=> b!588973 false))

(declare-fun b!588974 () Bool)

(declare-fun lt!267145 () SeekEntryResult!6103)

(assert (=> b!588974 (= e!336278 (= lt!267145 lt!267146))))

(declare-fun b!588975 () Bool)

(declare-fun e!336274 () Bool)

(assert (=> b!588975 (= e!336280 e!336274)))

(declare-fun res!376679 () Bool)

(assert (=> b!588975 (=> (not res!376679) (not e!336274))))

(assert (=> b!588975 (= res!376679 (= (select (store (arr!17656 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!588975 (= lt!267147 (array!36775 (store (arr!17656 a!2986) i!1108 k0!1786) (size!18020 a!2986)))))

(declare-fun b!588976 () Bool)

(declare-fun res!376676 () Bool)

(declare-fun e!336279 () Bool)

(assert (=> b!588976 (=> (not res!376676) (not e!336279))))

(assert (=> b!588976 (= res!376676 (and (= (size!18020 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18020 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18020 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!588977 () Bool)

(declare-fun res!376684 () Bool)

(assert (=> b!588977 (=> (not res!376684) (not e!336279))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588977 (= res!376684 (validKeyInArray!0 (select (arr!17656 a!2986) j!136)))))

(declare-fun b!588978 () Bool)

(assert (=> b!588978 (= e!336279 e!336280)))

(declare-fun res!376685 () Bool)

(assert (=> b!588978 (=> (not res!376685) (not e!336280))))

(declare-fun lt!267150 () SeekEntryResult!6103)

(assert (=> b!588978 (= res!376685 (or (= lt!267150 (MissingZero!6103 i!1108)) (= lt!267150 (MissingVacant!6103 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36774 (_ BitVec 32)) SeekEntryResult!6103)

(assert (=> b!588978 (= lt!267150 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!588979 () Bool)

(declare-fun Unit!18359 () Unit!18356)

(assert (=> b!588979 (= e!336276 Unit!18359)))

(declare-fun b!588981 () Bool)

(declare-fun res!376678 () Bool)

(assert (=> b!588981 (=> (not res!376678) (not e!336280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36774 (_ BitVec 32)) Bool)

(assert (=> b!588981 (= res!376678 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588982 () Bool)

(assert (=> b!588982 (= e!336274 e!336275)))

(declare-fun res!376675 () Bool)

(assert (=> b!588982 (=> (not res!376675) (not e!336275))))

(assert (=> b!588982 (= res!376675 (and (= lt!267145 (Found!6103 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17656 a!2986) index!984) (select (arr!17656 a!2986) j!136))) (not (= (select (arr!17656 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588982 (= lt!267145 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17656 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588983 () Bool)

(declare-fun res!376682 () Bool)

(assert (=> b!588983 (=> (not res!376682) (not e!336279))))

(declare-fun arrayContainsKey!0 (array!36774 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588983 (= res!376682 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588980 () Bool)

(declare-fun res!376680 () Bool)

(assert (=> b!588980 (=> (not res!376680) (not e!336279))))

(assert (=> b!588980 (= res!376680 (validKeyInArray!0 k0!1786))))

(declare-fun res!376681 () Bool)

(assert (=> start!53976 (=> (not res!376681) (not e!336279))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53976 (= res!376681 (validMask!0 mask!3053))))

(assert (=> start!53976 e!336279))

(assert (=> start!53976 true))

(declare-fun array_inv!13430 (array!36774) Bool)

(assert (=> start!53976 (array_inv!13430 a!2986)))

(assert (= (and start!53976 res!376681) b!588976))

(assert (= (and b!588976 res!376676) b!588977))

(assert (= (and b!588977 res!376684) b!588980))

(assert (= (and b!588980 res!376680) b!588983))

(assert (= (and b!588983 res!376682) b!588978))

(assert (= (and b!588978 res!376685) b!588981))

(assert (= (and b!588981 res!376678) b!588971))

(assert (= (and b!588971 res!376677) b!588972))

(assert (= (and b!588972 res!376683) b!588975))

(assert (= (and b!588975 res!376679) b!588982))

(assert (= (and b!588982 res!376675) b!588970))

(assert (= (and b!588970 res!376674) b!588974))

(assert (= (and b!588970 c!66515) b!588973))

(assert (= (and b!588970 (not c!66515)) b!588979))

(declare-fun m!567563 () Bool)

(assert (=> b!588971 m!567563))

(declare-fun m!567565 () Bool)

(assert (=> b!588982 m!567565))

(declare-fun m!567567 () Bool)

(assert (=> b!588982 m!567567))

(assert (=> b!588982 m!567567))

(declare-fun m!567569 () Bool)

(assert (=> b!588982 m!567569))

(declare-fun m!567571 () Bool)

(assert (=> b!588972 m!567571))

(declare-fun m!567573 () Bool)

(assert (=> start!53976 m!567573))

(declare-fun m!567575 () Bool)

(assert (=> start!53976 m!567575))

(assert (=> b!588977 m!567567))

(assert (=> b!588977 m!567567))

(declare-fun m!567577 () Bool)

(assert (=> b!588977 m!567577))

(declare-fun m!567579 () Bool)

(assert (=> b!588980 m!567579))

(declare-fun m!567581 () Bool)

(assert (=> b!588970 m!567581))

(declare-fun m!567583 () Bool)

(assert (=> b!588970 m!567583))

(assert (=> b!588970 m!567567))

(declare-fun m!567585 () Bool)

(assert (=> b!588970 m!567585))

(declare-fun m!567587 () Bool)

(assert (=> b!588970 m!567587))

(assert (=> b!588970 m!567567))

(declare-fun m!567589 () Bool)

(assert (=> b!588970 m!567589))

(declare-fun m!567591 () Bool)

(assert (=> b!588970 m!567591))

(declare-fun m!567593 () Bool)

(assert (=> b!588970 m!567593))

(declare-fun m!567595 () Bool)

(assert (=> b!588978 m!567595))

(declare-fun m!567597 () Bool)

(assert (=> b!588983 m!567597))

(declare-fun m!567599 () Bool)

(assert (=> b!588981 m!567599))

(assert (=> b!588975 m!567587))

(declare-fun m!567601 () Bool)

(assert (=> b!588975 m!567601))

(check-sat (not b!588982) (not b!588977) (not b!588983) (not b!588970) (not b!588971) (not b!588978) (not b!588981) (not start!53976) (not b!588980))
(check-sat)
