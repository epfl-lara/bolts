; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56912 () Bool)

(assert start!56912)

(declare-fun b!629731 () Bool)

(declare-fun res!407128 () Bool)

(declare-fun e!360121 () Bool)

(assert (=> b!629731 (=> (not res!407128) (not e!360121))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!38006 0))(
  ( (array!38007 (arr!18235 (Array (_ BitVec 32) (_ BitVec 64))) (size!18599 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38006)

(assert (=> b!629731 (= res!407128 (and (= (size!18599 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18599 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18599 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629732 () Bool)

(declare-fun res!407129 () Bool)

(assert (=> b!629732 (=> (not res!407129) (not e!360121))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38006 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629732 (= res!407129 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629733 () Bool)

(declare-fun res!407133 () Bool)

(assert (=> b!629733 (=> (not res!407133) (not e!360121))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629733 (= res!407133 (validKeyInArray!0 (select (arr!18235 a!2986) j!136)))))

(declare-fun b!629734 () Bool)

(declare-fun e!360119 () Bool)

(assert (=> b!629734 (= e!360119 (not true))))

(declare-fun e!360117 () Bool)

(assert (=> b!629734 e!360117))

(declare-fun res!407135 () Bool)

(assert (=> b!629734 (=> (not res!407135) (not e!360117))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!290901 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6682 0))(
  ( (MissingZero!6682 (index!29014 (_ BitVec 32))) (Found!6682 (index!29015 (_ BitVec 32))) (Intermediate!6682 (undefined!7494 Bool) (index!29016 (_ BitVec 32)) (x!57780 (_ BitVec 32))) (Undefined!6682) (MissingVacant!6682 (index!29017 (_ BitVec 32))) )
))
(declare-fun lt!290898 () SeekEntryResult!6682)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38006 (_ BitVec 32)) SeekEntryResult!6682)

(assert (=> b!629734 (= res!407135 (= lt!290898 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290901 vacantSpotIndex!68 (select (store (arr!18235 a!2986) i!1108 k0!1786) j!136) (array!38007 (store (arr!18235 a!2986) i!1108 k0!1786) (size!18599 a!2986)) mask!3053)))))

(assert (=> b!629734 (= lt!290898 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!290901 vacantSpotIndex!68 (select (arr!18235 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21108 0))(
  ( (Unit!21109) )
))
(declare-fun lt!290900 () Unit!21108)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38006 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21108)

(assert (=> b!629734 (= lt!290900 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!290901 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629734 (= lt!290901 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629735 () Bool)

(declare-fun res!407132 () Bool)

(declare-fun e!360120 () Bool)

(assert (=> b!629735 (=> (not res!407132) (not e!360120))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38006 (_ BitVec 32)) Bool)

(assert (=> b!629735 (= res!407132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!629736 () Bool)

(declare-fun res!407134 () Bool)

(assert (=> b!629736 (=> (not res!407134) (not e!360120))))

(declare-datatypes ((List!12329 0))(
  ( (Nil!12326) (Cons!12325 (h!13370 (_ BitVec 64)) (t!18565 List!12329)) )
))
(declare-fun arrayNoDuplicates!0 (array!38006 (_ BitVec 32) List!12329) Bool)

(assert (=> b!629736 (= res!407134 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12326))))

(declare-fun b!629737 () Bool)

(assert (=> b!629737 (= e!360121 e!360120)))

(declare-fun res!407127 () Bool)

(assert (=> b!629737 (=> (not res!407127) (not e!360120))))

(declare-fun lt!290897 () SeekEntryResult!6682)

(assert (=> b!629737 (= res!407127 (or (= lt!290897 (MissingZero!6682 i!1108)) (= lt!290897 (MissingVacant!6682 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38006 (_ BitVec 32)) SeekEntryResult!6682)

(assert (=> b!629737 (= lt!290897 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!407130 () Bool)

(assert (=> start!56912 (=> (not res!407130) (not e!360121))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56912 (= res!407130 (validMask!0 mask!3053))))

(assert (=> start!56912 e!360121))

(assert (=> start!56912 true))

(declare-fun array_inv!14009 (array!38006) Bool)

(assert (=> start!56912 (array_inv!14009 a!2986)))

(declare-fun b!629738 () Bool)

(declare-fun lt!290899 () SeekEntryResult!6682)

(assert (=> b!629738 (= e!360117 (= lt!290899 lt!290898))))

(declare-fun b!629739 () Bool)

(assert (=> b!629739 (= e!360120 e!360119)))

(declare-fun res!407131 () Bool)

(assert (=> b!629739 (=> (not res!407131) (not e!360119))))

(assert (=> b!629739 (= res!407131 (and (= lt!290899 (Found!6682 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18235 a!2986) index!984) (select (arr!18235 a!2986) j!136))) (not (= (select (arr!18235 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!629739 (= lt!290899 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18235 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629740 () Bool)

(declare-fun res!407126 () Bool)

(assert (=> b!629740 (=> (not res!407126) (not e!360120))))

(assert (=> b!629740 (= res!407126 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18235 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18235 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629741 () Bool)

(declare-fun res!407125 () Bool)

(assert (=> b!629741 (=> (not res!407125) (not e!360121))))

(assert (=> b!629741 (= res!407125 (validKeyInArray!0 k0!1786))))

(assert (= (and start!56912 res!407130) b!629731))

(assert (= (and b!629731 res!407128) b!629733))

(assert (= (and b!629733 res!407133) b!629741))

(assert (= (and b!629741 res!407125) b!629732))

(assert (= (and b!629732 res!407129) b!629737))

(assert (= (and b!629737 res!407127) b!629735))

(assert (= (and b!629735 res!407132) b!629736))

(assert (= (and b!629736 res!407134) b!629740))

(assert (= (and b!629740 res!407126) b!629739))

(assert (= (and b!629739 res!407131) b!629734))

(assert (= (and b!629734 res!407135) b!629738))

(declare-fun m!604775 () Bool)

(assert (=> b!629737 m!604775))

(declare-fun m!604777 () Bool)

(assert (=> start!56912 m!604777))

(declare-fun m!604779 () Bool)

(assert (=> start!56912 m!604779))

(declare-fun m!604781 () Bool)

(assert (=> b!629734 m!604781))

(declare-fun m!604783 () Bool)

(assert (=> b!629734 m!604783))

(declare-fun m!604785 () Bool)

(assert (=> b!629734 m!604785))

(declare-fun m!604787 () Bool)

(assert (=> b!629734 m!604787))

(assert (=> b!629734 m!604785))

(declare-fun m!604789 () Bool)

(assert (=> b!629734 m!604789))

(declare-fun m!604791 () Bool)

(assert (=> b!629734 m!604791))

(assert (=> b!629734 m!604783))

(declare-fun m!604793 () Bool)

(assert (=> b!629734 m!604793))

(declare-fun m!604795 () Bool)

(assert (=> b!629739 m!604795))

(assert (=> b!629739 m!604785))

(assert (=> b!629739 m!604785))

(declare-fun m!604797 () Bool)

(assert (=> b!629739 m!604797))

(declare-fun m!604799 () Bool)

(assert (=> b!629735 m!604799))

(declare-fun m!604801 () Bool)

(assert (=> b!629741 m!604801))

(declare-fun m!604803 () Bool)

(assert (=> b!629732 m!604803))

(declare-fun m!604805 () Bool)

(assert (=> b!629736 m!604805))

(declare-fun m!604807 () Bool)

(assert (=> b!629740 m!604807))

(assert (=> b!629740 m!604787))

(declare-fun m!604809 () Bool)

(assert (=> b!629740 m!604809))

(assert (=> b!629733 m!604785))

(assert (=> b!629733 m!604785))

(declare-fun m!604811 () Bool)

(assert (=> b!629733 m!604811))

(check-sat (not b!629732) (not b!629734) (not start!56912) (not b!629736) (not b!629739) (not b!629741) (not b!629735) (not b!629737) (not b!629733))
(check-sat)
