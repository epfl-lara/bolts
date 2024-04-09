; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53686 () Bool)

(assert start!53686)

(declare-fun b!584739 () Bool)

(declare-fun e!334711 () Bool)

(assert (=> b!584739 (= e!334711 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5988 0))(
  ( (MissingZero!5988 (index!26179 (_ BitVec 32))) (Found!5988 (index!26180 (_ BitVec 32))) (Intermediate!5988 (undefined!6800 Bool) (index!26181 (_ BitVec 32)) (x!55036 (_ BitVec 32))) (Undefined!5988) (MissingVacant!5988 (index!26182 (_ BitVec 32))) )
))
(declare-fun lt!265661 () SeekEntryResult!5988)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((array!36541 0))(
  ( (array!36542 (arr!17541 (Array (_ BitVec 32) (_ BitVec 64))) (size!17905 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36541)

(declare-fun lt!265659 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36541 (_ BitVec 32)) SeekEntryResult!5988)

(assert (=> b!584739 (= lt!265661 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265659 vacantSpotIndex!68 (select (arr!17541 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584740 () Bool)

(declare-fun res!372714 () Bool)

(declare-fun e!334709 () Bool)

(assert (=> b!584740 (=> (not res!372714) (not e!334709))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584740 (= res!372714 (validKeyInArray!0 (select (arr!17541 a!2986) j!136)))))

(declare-fun b!584741 () Bool)

(declare-fun res!372710 () Bool)

(declare-fun e!334708 () Bool)

(assert (=> b!584741 (=> (not res!372710) (not e!334708))))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584741 (= res!372710 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17541 a!2986) index!984) (select (arr!17541 a!2986) j!136))) (not (= (select (arr!17541 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584742 () Bool)

(declare-fun res!372715 () Bool)

(assert (=> b!584742 (=> (not res!372715) (not e!334708))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!584742 (= res!372715 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17541 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17541 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584743 () Bool)

(assert (=> b!584743 (= e!334709 e!334708)))

(declare-fun res!372713 () Bool)

(assert (=> b!584743 (=> (not res!372713) (not e!334708))))

(declare-fun lt!265660 () SeekEntryResult!5988)

(assert (=> b!584743 (= res!372713 (or (= lt!265660 (MissingZero!5988 i!1108)) (= lt!265660 (MissingVacant!5988 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36541 (_ BitVec 32)) SeekEntryResult!5988)

(assert (=> b!584743 (= lt!265660 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584744 () Bool)

(declare-fun res!372707 () Bool)

(assert (=> b!584744 (=> (not res!372707) (not e!334709))))

(assert (=> b!584744 (= res!372707 (validKeyInArray!0 k!1786))))

(declare-fun b!584745 () Bool)

(declare-fun res!372711 () Bool)

(assert (=> b!584745 (=> (not res!372711) (not e!334708))))

(assert (=> b!584745 (= res!372711 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17541 a!2986) j!136) a!2986 mask!3053) (Found!5988 j!136)))))

(declare-fun b!584746 () Bool)

(declare-fun res!372716 () Bool)

(assert (=> b!584746 (=> (not res!372716) (not e!334708))))

(declare-datatypes ((List!11635 0))(
  ( (Nil!11632) (Cons!11631 (h!12676 (_ BitVec 64)) (t!17871 List!11635)) )
))
(declare-fun arrayNoDuplicates!0 (array!36541 (_ BitVec 32) List!11635) Bool)

(assert (=> b!584746 (= res!372716 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11632))))

(declare-fun b!584747 () Bool)

(assert (=> b!584747 (= e!334708 e!334711)))

(declare-fun res!372705 () Bool)

(assert (=> b!584747 (=> (not res!372705) (not e!334711))))

(assert (=> b!584747 (= res!372705 (and (bvsge lt!265659 #b00000000000000000000000000000000) (bvslt lt!265659 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584747 (= lt!265659 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!584748 () Bool)

(declare-fun res!372709 () Bool)

(assert (=> b!584748 (=> (not res!372709) (not e!334709))))

(declare-fun arrayContainsKey!0 (array!36541 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584748 (= res!372709 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584749 () Bool)

(declare-fun res!372712 () Bool)

(assert (=> b!584749 (=> (not res!372712) (not e!334708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36541 (_ BitVec 32)) Bool)

(assert (=> b!584749 (= res!372712 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!372708 () Bool)

(assert (=> start!53686 (=> (not res!372708) (not e!334709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53686 (= res!372708 (validMask!0 mask!3053))))

(assert (=> start!53686 e!334709))

(assert (=> start!53686 true))

(declare-fun array_inv!13315 (array!36541) Bool)

(assert (=> start!53686 (array_inv!13315 a!2986)))

(declare-fun b!584750 () Bool)

(declare-fun res!372706 () Bool)

(assert (=> b!584750 (=> (not res!372706) (not e!334709))))

(assert (=> b!584750 (= res!372706 (and (= (size!17905 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17905 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17905 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53686 res!372708) b!584750))

(assert (= (and b!584750 res!372706) b!584740))

(assert (= (and b!584740 res!372714) b!584744))

(assert (= (and b!584744 res!372707) b!584748))

(assert (= (and b!584748 res!372709) b!584743))

(assert (= (and b!584743 res!372713) b!584749))

(assert (= (and b!584749 res!372712) b!584746))

(assert (= (and b!584746 res!372716) b!584742))

(assert (= (and b!584742 res!372715) b!584745))

(assert (= (and b!584745 res!372711) b!584741))

(assert (= (and b!584741 res!372710) b!584747))

(assert (= (and b!584747 res!372705) b!584739))

(declare-fun m!563089 () Bool)

(assert (=> start!53686 m!563089))

(declare-fun m!563091 () Bool)

(assert (=> start!53686 m!563091))

(declare-fun m!563093 () Bool)

(assert (=> b!584742 m!563093))

(declare-fun m!563095 () Bool)

(assert (=> b!584742 m!563095))

(declare-fun m!563097 () Bool)

(assert (=> b!584742 m!563097))

(declare-fun m!563099 () Bool)

(assert (=> b!584749 m!563099))

(declare-fun m!563101 () Bool)

(assert (=> b!584740 m!563101))

(assert (=> b!584740 m!563101))

(declare-fun m!563103 () Bool)

(assert (=> b!584740 m!563103))

(assert (=> b!584739 m!563101))

(assert (=> b!584739 m!563101))

(declare-fun m!563105 () Bool)

(assert (=> b!584739 m!563105))

(assert (=> b!584745 m!563101))

(assert (=> b!584745 m!563101))

(declare-fun m!563107 () Bool)

(assert (=> b!584745 m!563107))

(declare-fun m!563109 () Bool)

(assert (=> b!584747 m!563109))

(declare-fun m!563111 () Bool)

(assert (=> b!584741 m!563111))

(assert (=> b!584741 m!563101))

(declare-fun m!563113 () Bool)

(assert (=> b!584748 m!563113))

(declare-fun m!563115 () Bool)

(assert (=> b!584746 m!563115))

(declare-fun m!563117 () Bool)

(assert (=> b!584743 m!563117))

(declare-fun m!563119 () Bool)

(assert (=> b!584744 m!563119))

(push 1)

