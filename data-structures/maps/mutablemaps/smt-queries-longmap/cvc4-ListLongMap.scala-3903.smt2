; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53450 () Bool)

(assert start!53450)

(declare-fun b!581168 () Bool)

(declare-fun res!369135 () Bool)

(declare-fun e!333527 () Bool)

(assert (=> b!581168 (=> (not res!369135) (not e!333527))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581168 (= res!369135 (validKeyInArray!0 k!1786))))

(declare-fun b!581169 () Bool)

(declare-fun res!369139 () Bool)

(assert (=> b!581169 (=> (not res!369139) (not e!333527))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36305 0))(
  ( (array!36306 (arr!17423 (Array (_ BitVec 32) (_ BitVec 64))) (size!17787 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36305)

(assert (=> b!581169 (= res!369139 (and (= (size!17787 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17787 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17787 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581170 () Bool)

(declare-fun res!369138 () Bool)

(declare-fun e!333528 () Bool)

(assert (=> b!581170 (=> (not res!369138) (not e!333528))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581170 (= res!369138 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17423 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17423 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581171 () Bool)

(declare-fun res!369137 () Bool)

(assert (=> b!581171 (=> (not res!369137) (not e!333528))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36305 (_ BitVec 32)) Bool)

(assert (=> b!581171 (= res!369137 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!369141 () Bool)

(assert (=> start!53450 (=> (not res!369141) (not e!333527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53450 (= res!369141 (validMask!0 mask!3053))))

(assert (=> start!53450 e!333527))

(assert (=> start!53450 true))

(declare-fun array_inv!13197 (array!36305) Bool)

(assert (=> start!53450 (array_inv!13197 a!2986)))

(declare-fun b!581172 () Bool)

(declare-fun res!369140 () Bool)

(assert (=> b!581172 (=> (not res!369140) (not e!333528))))

(declare-datatypes ((List!11517 0))(
  ( (Nil!11514) (Cons!11513 (h!12558 (_ BitVec 64)) (t!17753 List!11517)) )
))
(declare-fun arrayNoDuplicates!0 (array!36305 (_ BitVec 32) List!11517) Bool)

(assert (=> b!581172 (= res!369140 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11514))))

(declare-fun b!581173 () Bool)

(declare-fun res!369134 () Bool)

(assert (=> b!581173 (=> (not res!369134) (not e!333527))))

(assert (=> b!581173 (= res!369134 (validKeyInArray!0 (select (arr!17423 a!2986) j!136)))))

(declare-fun b!581174 () Bool)

(declare-fun res!369142 () Bool)

(assert (=> b!581174 (=> (not res!369142) (not e!333528))))

(declare-datatypes ((SeekEntryResult!5870 0))(
  ( (MissingZero!5870 (index!25707 (_ BitVec 32))) (Found!5870 (index!25708 (_ BitVec 32))) (Intermediate!5870 (undefined!6682 Bool) (index!25709 (_ BitVec 32)) (x!54598 (_ BitVec 32))) (Undefined!5870) (MissingVacant!5870 (index!25710 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36305 (_ BitVec 32)) SeekEntryResult!5870)

(assert (=> b!581174 (= res!369142 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17423 a!2986) j!136) a!2986 mask!3053) (Found!5870 j!136)))))

(declare-fun b!581175 () Bool)

(declare-fun res!369143 () Bool)

(assert (=> b!581175 (=> (not res!369143) (not e!333527))))

(declare-fun arrayContainsKey!0 (array!36305 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581175 (= res!369143 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581176 () Bool)

(assert (=> b!581176 (= e!333528 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!17423 a!2986) index!984) (select (arr!17423 a!2986) j!136)) (= index!984 j!136) (bvslt mask!3053 #b00000000000000000000000000000000)))))

(declare-fun b!581177 () Bool)

(assert (=> b!581177 (= e!333527 e!333528)))

(declare-fun res!369136 () Bool)

(assert (=> b!581177 (=> (not res!369136) (not e!333528))))

(declare-fun lt!264851 () SeekEntryResult!5870)

(assert (=> b!581177 (= res!369136 (or (= lt!264851 (MissingZero!5870 i!1108)) (= lt!264851 (MissingVacant!5870 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36305 (_ BitVec 32)) SeekEntryResult!5870)

(assert (=> b!581177 (= lt!264851 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53450 res!369141) b!581169))

(assert (= (and b!581169 res!369139) b!581173))

(assert (= (and b!581173 res!369134) b!581168))

(assert (= (and b!581168 res!369135) b!581175))

(assert (= (and b!581175 res!369143) b!581177))

(assert (= (and b!581177 res!369136) b!581171))

(assert (= (and b!581171 res!369137) b!581172))

(assert (= (and b!581172 res!369140) b!581170))

(assert (= (and b!581170 res!369138) b!581174))

(assert (= (and b!581174 res!369142) b!581176))

(declare-fun m!559761 () Bool)

(assert (=> b!581172 m!559761))

(declare-fun m!559763 () Bool)

(assert (=> b!581168 m!559763))

(declare-fun m!559765 () Bool)

(assert (=> b!581173 m!559765))

(assert (=> b!581173 m!559765))

(declare-fun m!559767 () Bool)

(assert (=> b!581173 m!559767))

(declare-fun m!559769 () Bool)

(assert (=> b!581177 m!559769))

(declare-fun m!559771 () Bool)

(assert (=> b!581175 m!559771))

(assert (=> b!581174 m!559765))

(assert (=> b!581174 m!559765))

(declare-fun m!559773 () Bool)

(assert (=> b!581174 m!559773))

(declare-fun m!559775 () Bool)

(assert (=> b!581176 m!559775))

(assert (=> b!581176 m!559765))

(declare-fun m!559777 () Bool)

(assert (=> b!581170 m!559777))

(declare-fun m!559779 () Bool)

(assert (=> b!581170 m!559779))

(declare-fun m!559781 () Bool)

(assert (=> b!581170 m!559781))

(declare-fun m!559783 () Bool)

(assert (=> start!53450 m!559783))

(declare-fun m!559785 () Bool)

(assert (=> start!53450 m!559785))

(declare-fun m!559787 () Bool)

(assert (=> b!581171 m!559787))

(push 1)

(assert (not b!581174))

(assert (not b!581171))

(assert (not b!581175))

(assert (not b!581173))

