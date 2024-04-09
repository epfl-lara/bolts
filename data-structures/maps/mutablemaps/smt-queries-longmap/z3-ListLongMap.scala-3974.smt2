; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53934 () Bool)

(assert start!53934)

(declare-fun res!375933 () Bool)

(declare-fun e!335868 () Bool)

(assert (=> start!53934 (=> (not res!375933) (not e!335868))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53934 (= res!375933 (validMask!0 mask!3053))))

(assert (=> start!53934 e!335868))

(assert (=> start!53934 true))

(declare-datatypes ((array!36732 0))(
  ( (array!36733 (arr!17635 (Array (_ BitVec 32) (_ BitVec 64))) (size!17999 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36732)

(declare-fun array_inv!13409 (array!36732) Bool)

(assert (=> start!53934 (array_inv!13409 a!2986)))

(declare-fun b!588145 () Bool)

(declare-fun res!375938 () Bool)

(assert (=> b!588145 (=> (not res!375938) (not e!335868))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!588145 (= res!375938 (validKeyInArray!0 k0!1786))))

(declare-fun b!588146 () Bool)

(declare-fun e!335872 () Bool)

(assert (=> b!588146 (= e!335872 (not true))))

(declare-fun e!335869 () Bool)

(assert (=> b!588146 e!335869))

(declare-fun res!375935 () Bool)

(assert (=> b!588146 (=> (not res!375935) (not e!335869))))

(declare-datatypes ((SeekEntryResult!6082 0))(
  ( (MissingZero!6082 (index!26558 (_ BitVec 32))) (Found!6082 (index!26559 (_ BitVec 32))) (Intermediate!6082 (undefined!6894 Bool) (index!26560 (_ BitVec 32)) (x!55387 (_ BitVec 32))) (Undefined!6082) (MissingVacant!6082 (index!26561 (_ BitVec 32))) )
))
(declare-fun lt!266709 () SeekEntryResult!6082)

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun lt!266708 () (_ BitVec 32))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36732 (_ BitVec 32)) SeekEntryResult!6082)

(assert (=> b!588146 (= res!375935 (= lt!266709 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266708 vacantSpotIndex!68 (select (store (arr!17635 a!2986) i!1108 k0!1786) j!136) (array!36733 (store (arr!17635 a!2986) i!1108 k0!1786) (size!17999 a!2986)) mask!3053)))))

(assert (=> b!588146 (= lt!266709 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266708 vacantSpotIndex!68 (select (arr!17635 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!18288 0))(
  ( (Unit!18289) )
))
(declare-fun lt!266711 () Unit!18288)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36732 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18288)

(assert (=> b!588146 (= lt!266711 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266708 vacantSpotIndex!68 mask!3053))))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!588146 (= lt!266708 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!588147 () Bool)

(declare-fun lt!266707 () SeekEntryResult!6082)

(assert (=> b!588147 (= e!335869 (= lt!266707 lt!266709))))

(declare-fun b!588148 () Bool)

(declare-fun res!375936 () Bool)

(declare-fun e!335871 () Bool)

(assert (=> b!588148 (=> (not res!375936) (not e!335871))))

(declare-datatypes ((List!11729 0))(
  ( (Nil!11726) (Cons!11725 (h!12770 (_ BitVec 64)) (t!17965 List!11729)) )
))
(declare-fun arrayNoDuplicates!0 (array!36732 (_ BitVec 32) List!11729) Bool)

(assert (=> b!588148 (= res!375936 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11726))))

(declare-fun b!588149 () Bool)

(declare-fun res!375939 () Bool)

(assert (=> b!588149 (=> (not res!375939) (not e!335868))))

(assert (=> b!588149 (= res!375939 (validKeyInArray!0 (select (arr!17635 a!2986) j!136)))))

(declare-fun b!588150 () Bool)

(declare-fun res!375940 () Bool)

(assert (=> b!588150 (=> (not res!375940) (not e!335871))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36732 (_ BitVec 32)) Bool)

(assert (=> b!588150 (= res!375940 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!588151 () Bool)

(assert (=> b!588151 (= e!335871 e!335872)))

(declare-fun res!375937 () Bool)

(assert (=> b!588151 (=> (not res!375937) (not e!335872))))

(assert (=> b!588151 (= res!375937 (and (= lt!266707 (Found!6082 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17635 a!2986) index!984) (select (arr!17635 a!2986) j!136))) (not (= (select (arr!17635 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(assert (=> b!588151 (= lt!266707 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17635 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!588152 () Bool)

(declare-fun res!375941 () Bool)

(assert (=> b!588152 (=> (not res!375941) (not e!335868))))

(declare-fun arrayContainsKey!0 (array!36732 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!588152 (= res!375941 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!588153 () Bool)

(assert (=> b!588153 (= e!335868 e!335871)))

(declare-fun res!375934 () Bool)

(assert (=> b!588153 (=> (not res!375934) (not e!335871))))

(declare-fun lt!266710 () SeekEntryResult!6082)

(assert (=> b!588153 (= res!375934 (or (= lt!266710 (MissingZero!6082 i!1108)) (= lt!266710 (MissingVacant!6082 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36732 (_ BitVec 32)) SeekEntryResult!6082)

(assert (=> b!588153 (= lt!266710 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!588154 () Bool)

(declare-fun res!375932 () Bool)

(assert (=> b!588154 (=> (not res!375932) (not e!335871))))

(assert (=> b!588154 (= res!375932 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17635 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17635 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!588155 () Bool)

(declare-fun res!375931 () Bool)

(assert (=> b!588155 (=> (not res!375931) (not e!335868))))

(assert (=> b!588155 (= res!375931 (and (= (size!17999 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17999 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17999 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53934 res!375933) b!588155))

(assert (= (and b!588155 res!375931) b!588149))

(assert (= (and b!588149 res!375939) b!588145))

(assert (= (and b!588145 res!375938) b!588152))

(assert (= (and b!588152 res!375941) b!588153))

(assert (= (and b!588153 res!375934) b!588150))

(assert (= (and b!588150 res!375940) b!588148))

(assert (= (and b!588148 res!375936) b!588154))

(assert (= (and b!588154 res!375932) b!588151))

(assert (= (and b!588151 res!375937) b!588146))

(assert (= (and b!588146 res!375935) b!588147))

(declare-fun m!566733 () Bool)

(assert (=> start!53934 m!566733))

(declare-fun m!566735 () Bool)

(assert (=> start!53934 m!566735))

(declare-fun m!566737 () Bool)

(assert (=> b!588148 m!566737))

(declare-fun m!566739 () Bool)

(assert (=> b!588145 m!566739))

(declare-fun m!566741 () Bool)

(assert (=> b!588146 m!566741))

(declare-fun m!566743 () Bool)

(assert (=> b!588146 m!566743))

(declare-fun m!566745 () Bool)

(assert (=> b!588146 m!566745))

(assert (=> b!588146 m!566741))

(declare-fun m!566747 () Bool)

(assert (=> b!588146 m!566747))

(declare-fun m!566749 () Bool)

(assert (=> b!588146 m!566749))

(assert (=> b!588146 m!566747))

(declare-fun m!566751 () Bool)

(assert (=> b!588146 m!566751))

(declare-fun m!566753 () Bool)

(assert (=> b!588146 m!566753))

(assert (=> b!588149 m!566747))

(assert (=> b!588149 m!566747))

(declare-fun m!566755 () Bool)

(assert (=> b!588149 m!566755))

(declare-fun m!566757 () Bool)

(assert (=> b!588153 m!566757))

(declare-fun m!566759 () Bool)

(assert (=> b!588151 m!566759))

(assert (=> b!588151 m!566747))

(assert (=> b!588151 m!566747))

(declare-fun m!566761 () Bool)

(assert (=> b!588151 m!566761))

(declare-fun m!566763 () Bool)

(assert (=> b!588150 m!566763))

(declare-fun m!566765 () Bool)

(assert (=> b!588152 m!566765))

(declare-fun m!566767 () Bool)

(assert (=> b!588154 m!566767))

(assert (=> b!588154 m!566749))

(declare-fun m!566769 () Bool)

(assert (=> b!588154 m!566769))

(check-sat (not start!53934) (not b!588150) (not b!588152) (not b!588146) (not b!588145) (not b!588148) (not b!588153) (not b!588149) (not b!588151))
(check-sat)
