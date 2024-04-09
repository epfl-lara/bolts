; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53748 () Bool)

(assert start!53748)

(declare-fun res!373785 () Bool)

(declare-fun e!335041 () Bool)

(assert (=> start!53748 (=> (not res!373785) (not e!335041))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53748 (= res!373785 (validMask!0 mask!3053))))

(assert (=> start!53748 e!335041))

(assert (=> start!53748 true))

(declare-datatypes ((array!36603 0))(
  ( (array!36604 (arr!17572 (Array (_ BitVec 32) (_ BitVec 64))) (size!17936 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36603)

(declare-fun array_inv!13346 (array!36603) Bool)

(assert (=> start!53748 (array_inv!13346 a!2986)))

(declare-fun b!585814 () Bool)

(declare-fun res!373787 () Bool)

(declare-fun e!335040 () Bool)

(assert (=> b!585814 (=> (not res!373787) (not e!335040))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585814 (= res!373787 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17572 a!2986) index!984) (select (arr!17572 a!2986) j!136))) (not (= (select (arr!17572 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585815 () Bool)

(declare-fun res!373782 () Bool)

(assert (=> b!585815 (=> (not res!373782) (not e!335041))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585815 (= res!373782 (and (= (size!17936 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17936 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17936 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585816 () Bool)

(declare-fun res!373784 () Bool)

(assert (=> b!585816 (=> (not res!373784) (not e!335041))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585816 (= res!373784 (validKeyInArray!0 (select (arr!17572 a!2986) j!136)))))

(declare-fun b!585817 () Bool)

(declare-fun res!373783 () Bool)

(assert (=> b!585817 (=> (not res!373783) (not e!335041))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!585817 (= res!373783 (validKeyInArray!0 k0!1786))))

(declare-fun b!585818 () Bool)

(declare-fun res!373788 () Bool)

(assert (=> b!585818 (=> (not res!373788) (not e!335040))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!585818 (= res!373788 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17572 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17572 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585819 () Bool)

(declare-fun res!373786 () Bool)

(assert (=> b!585819 (=> (not res!373786) (not e!335040))))

(declare-datatypes ((SeekEntryResult!6019 0))(
  ( (MissingZero!6019 (index!26303 (_ BitVec 32))) (Found!6019 (index!26304 (_ BitVec 32))) (Intermediate!6019 (undefined!6831 Bool) (index!26305 (_ BitVec 32)) (x!55147 (_ BitVec 32))) (Undefined!6019) (MissingVacant!6019 (index!26306 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36603 (_ BitVec 32)) SeekEntryResult!6019)

(assert (=> b!585819 (= res!373786 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17572 a!2986) j!136) a!2986 mask!3053) (Found!6019 j!136)))))

(declare-fun b!585820 () Bool)

(declare-fun res!373781 () Bool)

(assert (=> b!585820 (=> (not res!373781) (not e!335040))))

(declare-datatypes ((List!11666 0))(
  ( (Nil!11663) (Cons!11662 (h!12707 (_ BitVec 64)) (t!17902 List!11666)) )
))
(declare-fun arrayNoDuplicates!0 (array!36603 (_ BitVec 32) List!11666) Bool)

(assert (=> b!585820 (= res!373781 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11663))))

(declare-fun b!585821 () Bool)

(declare-fun res!373789 () Bool)

(assert (=> b!585821 (=> (not res!373789) (not e!335041))))

(declare-fun arrayContainsKey!0 (array!36603 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585821 (= res!373789 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585822 () Bool)

(assert (=> b!585822 (= e!335041 e!335040)))

(declare-fun res!373790 () Bool)

(assert (=> b!585822 (=> (not res!373790) (not e!335040))))

(declare-fun lt!265938 () SeekEntryResult!6019)

(assert (=> b!585822 (= res!373790 (or (= lt!265938 (MissingZero!6019 i!1108)) (= lt!265938 (MissingVacant!6019 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36603 (_ BitVec 32)) SeekEntryResult!6019)

(assert (=> b!585822 (= lt!265938 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!585823 () Bool)

(declare-fun res!373780 () Bool)

(assert (=> b!585823 (=> (not res!373780) (not e!335040))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36603 (_ BitVec 32)) Bool)

(assert (=> b!585823 (= res!373780 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585824 () Bool)

(assert (=> b!585824 (= e!335040 (not true))))

(declare-fun lt!265939 () (_ BitVec 32))

(assert (=> b!585824 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265939 vacantSpotIndex!68 (select (arr!17572 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265939 vacantSpotIndex!68 (select (store (arr!17572 a!2986) i!1108 k0!1786) j!136) (array!36604 (store (arr!17572 a!2986) i!1108 k0!1786) (size!17936 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18162 0))(
  ( (Unit!18163) )
))
(declare-fun lt!265940 () Unit!18162)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36603 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18162)

(assert (=> b!585824 (= lt!265940 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265939 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585824 (= lt!265939 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53748 res!373785) b!585815))

(assert (= (and b!585815 res!373782) b!585816))

(assert (= (and b!585816 res!373784) b!585817))

(assert (= (and b!585817 res!373783) b!585821))

(assert (= (and b!585821 res!373789) b!585822))

(assert (= (and b!585822 res!373790) b!585823))

(assert (= (and b!585823 res!373780) b!585820))

(assert (= (and b!585820 res!373781) b!585818))

(assert (= (and b!585818 res!373788) b!585819))

(assert (= (and b!585819 res!373786) b!585814))

(assert (= (and b!585814 res!373787) b!585824))

(declare-fun m!564159 () Bool)

(assert (=> b!585814 m!564159))

(declare-fun m!564161 () Bool)

(assert (=> b!585814 m!564161))

(declare-fun m!564163 () Bool)

(assert (=> b!585821 m!564163))

(assert (=> b!585819 m!564161))

(assert (=> b!585819 m!564161))

(declare-fun m!564165 () Bool)

(assert (=> b!585819 m!564165))

(declare-fun m!564167 () Bool)

(assert (=> b!585823 m!564167))

(declare-fun m!564169 () Bool)

(assert (=> b!585817 m!564169))

(declare-fun m!564171 () Bool)

(assert (=> start!53748 m!564171))

(declare-fun m!564173 () Bool)

(assert (=> start!53748 m!564173))

(declare-fun m!564175 () Bool)

(assert (=> b!585824 m!564175))

(declare-fun m!564177 () Bool)

(assert (=> b!585824 m!564177))

(assert (=> b!585824 m!564161))

(assert (=> b!585824 m!564177))

(declare-fun m!564179 () Bool)

(assert (=> b!585824 m!564179))

(declare-fun m!564181 () Bool)

(assert (=> b!585824 m!564181))

(declare-fun m!564183 () Bool)

(assert (=> b!585824 m!564183))

(assert (=> b!585824 m!564161))

(declare-fun m!564185 () Bool)

(assert (=> b!585824 m!564185))

(declare-fun m!564187 () Bool)

(assert (=> b!585820 m!564187))

(assert (=> b!585816 m!564161))

(assert (=> b!585816 m!564161))

(declare-fun m!564189 () Bool)

(assert (=> b!585816 m!564189))

(declare-fun m!564191 () Bool)

(assert (=> b!585818 m!564191))

(assert (=> b!585818 m!564181))

(declare-fun m!564193 () Bool)

(assert (=> b!585818 m!564193))

(declare-fun m!564195 () Bool)

(assert (=> b!585822 m!564195))

(check-sat (not b!585822) (not b!585820) (not b!585817) (not b!585819) (not b!585821) (not start!53748) (not b!585823) (not b!585816) (not b!585824))
(check-sat)
