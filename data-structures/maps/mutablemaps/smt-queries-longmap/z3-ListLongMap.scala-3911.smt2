; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53496 () Bool)

(assert start!53496)

(declare-fun b!581808 () Bool)

(declare-fun res!369782 () Bool)

(declare-fun e!333736 () Bool)

(assert (=> b!581808 (=> (not res!369782) (not e!333736))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36351 0))(
  ( (array!36352 (arr!17446 (Array (_ BitVec 32) (_ BitVec 64))) (size!17810 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36351)

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!581808 (= res!369782 (and (= (size!17810 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17810 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17810 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581809 () Bool)

(declare-fun e!333734 () Bool)

(assert (=> b!581809 (= e!333736 e!333734)))

(declare-fun res!369774 () Bool)

(assert (=> b!581809 (=> (not res!369774) (not e!333734))))

(declare-datatypes ((SeekEntryResult!5893 0))(
  ( (MissingZero!5893 (index!25799 (_ BitVec 32))) (Found!5893 (index!25800 (_ BitVec 32))) (Intermediate!5893 (undefined!6705 Bool) (index!25801 (_ BitVec 32)) (x!54685 (_ BitVec 32))) (Undefined!5893) (MissingVacant!5893 (index!25802 (_ BitVec 32))) )
))
(declare-fun lt!264979 () SeekEntryResult!5893)

(assert (=> b!581809 (= res!369774 (or (= lt!264979 (MissingZero!5893 i!1108)) (= lt!264979 (MissingVacant!5893 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36351 (_ BitVec 32)) SeekEntryResult!5893)

(assert (=> b!581809 (= lt!264979 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!581810 () Bool)

(declare-fun res!369775 () Bool)

(assert (=> b!581810 (=> (not res!369775) (not e!333736))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581810 (= res!369775 (validKeyInArray!0 k0!1786))))

(declare-fun res!369780 () Bool)

(assert (=> start!53496 (=> (not res!369780) (not e!333736))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53496 (= res!369780 (validMask!0 mask!3053))))

(assert (=> start!53496 e!333736))

(assert (=> start!53496 true))

(declare-fun array_inv!13220 (array!36351) Bool)

(assert (=> start!53496 (array_inv!13220 a!2986)))

(declare-fun b!581811 () Bool)

(declare-fun res!369781 () Bool)

(assert (=> b!581811 (=> (not res!369781) (not e!333736))))

(declare-fun arrayContainsKey!0 (array!36351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581811 (= res!369781 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581812 () Bool)

(declare-fun res!369778 () Bool)

(assert (=> b!581812 (=> (not res!369778) (not e!333734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36351 (_ BitVec 32)) Bool)

(assert (=> b!581812 (= res!369778 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581813 () Bool)

(declare-fun res!369777 () Bool)

(assert (=> b!581813 (=> (not res!369777) (not e!333734))))

(declare-datatypes ((List!11540 0))(
  ( (Nil!11537) (Cons!11536 (h!12581 (_ BitVec 64)) (t!17776 List!11540)) )
))
(declare-fun arrayNoDuplicates!0 (array!36351 (_ BitVec 32) List!11540) Bool)

(assert (=> b!581813 (= res!369777 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11537))))

(declare-fun b!581814 () Bool)

(declare-fun res!369776 () Bool)

(assert (=> b!581814 (=> (not res!369776) (not e!333734))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581814 (= res!369776 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17446 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17446 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581815 () Bool)

(declare-fun res!369779 () Bool)

(assert (=> b!581815 (=> (not res!369779) (not e!333736))))

(assert (=> b!581815 (= res!369779 (validKeyInArray!0 (select (arr!17446 a!2986) j!136)))))

(declare-fun b!581816 () Bool)

(assert (=> b!581816 (= e!333734 false)))

(declare-fun lt!264980 () SeekEntryResult!5893)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36351 (_ BitVec 32)) SeekEntryResult!5893)

(assert (=> b!581816 (= lt!264980 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17446 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53496 res!369780) b!581808))

(assert (= (and b!581808 res!369782) b!581815))

(assert (= (and b!581815 res!369779) b!581810))

(assert (= (and b!581810 res!369775) b!581811))

(assert (= (and b!581811 res!369781) b!581809))

(assert (= (and b!581809 res!369774) b!581812))

(assert (= (and b!581812 res!369778) b!581813))

(assert (= (and b!581813 res!369777) b!581814))

(assert (= (and b!581814 res!369776) b!581816))

(declare-fun m!560379 () Bool)

(assert (=> b!581813 m!560379))

(declare-fun m!560381 () Bool)

(assert (=> b!581809 m!560381))

(declare-fun m!560383 () Bool)

(assert (=> b!581814 m!560383))

(declare-fun m!560385 () Bool)

(assert (=> b!581814 m!560385))

(declare-fun m!560387 () Bool)

(assert (=> b!581814 m!560387))

(declare-fun m!560389 () Bool)

(assert (=> b!581810 m!560389))

(declare-fun m!560391 () Bool)

(assert (=> b!581815 m!560391))

(assert (=> b!581815 m!560391))

(declare-fun m!560393 () Bool)

(assert (=> b!581815 m!560393))

(declare-fun m!560395 () Bool)

(assert (=> b!581811 m!560395))

(assert (=> b!581816 m!560391))

(assert (=> b!581816 m!560391))

(declare-fun m!560397 () Bool)

(assert (=> b!581816 m!560397))

(declare-fun m!560399 () Bool)

(assert (=> b!581812 m!560399))

(declare-fun m!560401 () Bool)

(assert (=> start!53496 m!560401))

(declare-fun m!560403 () Bool)

(assert (=> start!53496 m!560403))

(check-sat (not b!581809) (not start!53496) (not b!581811) (not b!581813) (not b!581815) (not b!581816) (not b!581810) (not b!581812))
(check-sat)
