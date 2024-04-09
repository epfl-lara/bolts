; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53692 () Bool)

(assert start!53692)

(declare-fun b!584847 () Bool)

(declare-fun res!372819 () Bool)

(declare-fun e!334746 () Bool)

(assert (=> b!584847 (=> (not res!372819) (not e!334746))))

(declare-datatypes ((array!36547 0))(
  ( (array!36548 (arr!17544 (Array (_ BitVec 32) (_ BitVec 64))) (size!17908 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36547)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36547 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584847 (= res!372819 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584848 () Bool)

(declare-fun res!372815 () Bool)

(declare-fun e!334745 () Bool)

(assert (=> b!584848 (=> (not res!372815) (not e!334745))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584848 (= res!372815 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17544 a!2986) index!984) (select (arr!17544 a!2986) j!136))) (not (= (select (arr!17544 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584849 () Bool)

(declare-fun res!372822 () Bool)

(assert (=> b!584849 (=> (not res!372822) (not e!334745))))

(declare-datatypes ((List!11638 0))(
  ( (Nil!11635) (Cons!11634 (h!12679 (_ BitVec 64)) (t!17874 List!11638)) )
))
(declare-fun arrayNoDuplicates!0 (array!36547 (_ BitVec 32) List!11638) Bool)

(assert (=> b!584849 (= res!372822 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11635))))

(declare-fun b!584850 () Bool)

(declare-fun res!372821 () Bool)

(assert (=> b!584850 (=> (not res!372821) (not e!334745))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36547 (_ BitVec 32)) Bool)

(assert (=> b!584850 (= res!372821 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584851 () Bool)

(declare-fun res!372814 () Bool)

(assert (=> b!584851 (=> (not res!372814) (not e!334746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584851 (= res!372814 (validKeyInArray!0 k!1786))))

(declare-fun res!372817 () Bool)

(assert (=> start!53692 (=> (not res!372817) (not e!334746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53692 (= res!372817 (validMask!0 mask!3053))))

(assert (=> start!53692 e!334746))

(assert (=> start!53692 true))

(declare-fun array_inv!13318 (array!36547) Bool)

(assert (=> start!53692 (array_inv!13318 a!2986)))

(declare-fun b!584852 () Bool)

(declare-fun e!334744 () Bool)

(assert (=> b!584852 (= e!334744 false)))

(declare-datatypes ((SeekEntryResult!5991 0))(
  ( (MissingZero!5991 (index!26191 (_ BitVec 32))) (Found!5991 (index!26192 (_ BitVec 32))) (Intermediate!5991 (undefined!6803 Bool) (index!26193 (_ BitVec 32)) (x!55047 (_ BitVec 32))) (Undefined!5991) (MissingVacant!5991 (index!26194 (_ BitVec 32))) )
))
(declare-fun lt!265687 () SeekEntryResult!5991)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun lt!265688 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36547 (_ BitVec 32)) SeekEntryResult!5991)

(assert (=> b!584852 (= lt!265687 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265688 vacantSpotIndex!68 (select (arr!17544 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584853 () Bool)

(assert (=> b!584853 (= e!334746 e!334745)))

(declare-fun res!372823 () Bool)

(assert (=> b!584853 (=> (not res!372823) (not e!334745))))

(declare-fun lt!265686 () SeekEntryResult!5991)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!584853 (= res!372823 (or (= lt!265686 (MissingZero!5991 i!1108)) (= lt!265686 (MissingVacant!5991 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36547 (_ BitVec 32)) SeekEntryResult!5991)

(assert (=> b!584853 (= lt!265686 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!584854 () Bool)

(declare-fun res!372816 () Bool)

(assert (=> b!584854 (=> (not res!372816) (not e!334745))))

(assert (=> b!584854 (= res!372816 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17544 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17544 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584855 () Bool)

(declare-fun res!372820 () Bool)

(assert (=> b!584855 (=> (not res!372820) (not e!334746))))

(assert (=> b!584855 (= res!372820 (and (= (size!17908 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17908 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17908 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584856 () Bool)

(declare-fun res!372813 () Bool)

(assert (=> b!584856 (=> (not res!372813) (not e!334746))))

(assert (=> b!584856 (= res!372813 (validKeyInArray!0 (select (arr!17544 a!2986) j!136)))))

(declare-fun b!584857 () Bool)

(declare-fun res!372818 () Bool)

(assert (=> b!584857 (=> (not res!372818) (not e!334745))))

(assert (=> b!584857 (= res!372818 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17544 a!2986) j!136) a!2986 mask!3053) (Found!5991 j!136)))))

(declare-fun b!584858 () Bool)

(assert (=> b!584858 (= e!334745 e!334744)))

(declare-fun res!372824 () Bool)

(assert (=> b!584858 (=> (not res!372824) (not e!334744))))

(assert (=> b!584858 (= res!372824 (and (bvsge lt!265688 #b00000000000000000000000000000000) (bvslt lt!265688 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584858 (= lt!265688 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53692 res!372817) b!584855))

(assert (= (and b!584855 res!372820) b!584856))

(assert (= (and b!584856 res!372813) b!584851))

(assert (= (and b!584851 res!372814) b!584847))

(assert (= (and b!584847 res!372819) b!584853))

(assert (= (and b!584853 res!372823) b!584850))

(assert (= (and b!584850 res!372821) b!584849))

(assert (= (and b!584849 res!372822) b!584854))

(assert (= (and b!584854 res!372816) b!584857))

(assert (= (and b!584857 res!372818) b!584848))

(assert (= (and b!584848 res!372815) b!584858))

(assert (= (and b!584858 res!372824) b!584852))

(declare-fun m!563185 () Bool)

(assert (=> b!584850 m!563185))

(declare-fun m!563187 () Bool)

(assert (=> b!584849 m!563187))

(declare-fun m!563189 () Bool)

(assert (=> b!584858 m!563189))

(declare-fun m!563191 () Bool)

(assert (=> b!584851 m!563191))

(declare-fun m!563193 () Bool)

(assert (=> b!584856 m!563193))

(assert (=> b!584856 m!563193))

(declare-fun m!563195 () Bool)

(assert (=> b!584856 m!563195))

(declare-fun m!563197 () Bool)

(assert (=> b!584847 m!563197))

(declare-fun m!563199 () Bool)

(assert (=> b!584853 m!563199))

(assert (=> b!584857 m!563193))

(assert (=> b!584857 m!563193))

(declare-fun m!563201 () Bool)

(assert (=> b!584857 m!563201))

(declare-fun m!563203 () Bool)

(assert (=> start!53692 m!563203))

(declare-fun m!563205 () Bool)

(assert (=> start!53692 m!563205))

(assert (=> b!584852 m!563193))

(assert (=> b!584852 m!563193))

(declare-fun m!563207 () Bool)

(assert (=> b!584852 m!563207))

(declare-fun m!563209 () Bool)

(assert (=> b!584854 m!563209))

(declare-fun m!563211 () Bool)

(assert (=> b!584854 m!563211))

(declare-fun m!563213 () Bool)

(assert (=> b!584854 m!563213))

(declare-fun m!563215 () Bool)

(assert (=> b!584848 m!563215))

(assert (=> b!584848 m!563193))

(push 1)

