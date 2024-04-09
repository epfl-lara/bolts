; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53694 () Bool)

(assert start!53694)

(declare-fun b!584883 () Bool)

(declare-fun res!372849 () Bool)

(declare-fun e!334758 () Bool)

(assert (=> b!584883 (=> (not res!372849) (not e!334758))))

(declare-datatypes ((array!36549 0))(
  ( (array!36550 (arr!17545 (Array (_ BitVec 32) (_ BitVec 64))) (size!17909 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36549)

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!584883 (= res!372849 (validKeyInArray!0 (select (arr!17545 a!2986) j!136)))))

(declare-fun res!372856 () Bool)

(assert (=> start!53694 (=> (not res!372856) (not e!334758))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53694 (= res!372856 (validMask!0 mask!3053))))

(assert (=> start!53694 e!334758))

(assert (=> start!53694 true))

(declare-fun array_inv!13319 (array!36549) Bool)

(assert (=> start!53694 (array_inv!13319 a!2986)))

(declare-fun b!584884 () Bool)

(declare-fun res!372855 () Bool)

(declare-fun e!334756 () Bool)

(assert (=> b!584884 (=> (not res!372855) (not e!334756))))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!584884 (= res!372855 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17545 a!2986) index!984) (select (arr!17545 a!2986) j!136))) (not (= (select (arr!17545 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!584885 () Bool)

(declare-fun res!372852 () Bool)

(assert (=> b!584885 (=> (not res!372852) (not e!334756))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(assert (=> b!584885 (= res!372852 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17545 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17545 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!584886 () Bool)

(declare-fun res!372854 () Bool)

(assert (=> b!584886 (=> (not res!372854) (not e!334756))))

(declare-datatypes ((List!11639 0))(
  ( (Nil!11636) (Cons!11635 (h!12680 (_ BitVec 64)) (t!17875 List!11639)) )
))
(declare-fun arrayNoDuplicates!0 (array!36549 (_ BitVec 32) List!11639) Bool)

(assert (=> b!584886 (= res!372854 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11636))))

(declare-fun b!584887 () Bool)

(declare-fun res!372860 () Bool)

(assert (=> b!584887 (=> (not res!372860) (not e!334756))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36549 (_ BitVec 32)) Bool)

(assert (=> b!584887 (= res!372860 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!584888 () Bool)

(declare-fun res!372858 () Bool)

(assert (=> b!584888 (=> (not res!372858) (not e!334758))))

(assert (=> b!584888 (= res!372858 (validKeyInArray!0 k0!1786))))

(declare-fun b!584889 () Bool)

(declare-fun e!334757 () Bool)

(assert (=> b!584889 (= e!334757 false)))

(declare-fun lt!265696 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5992 0))(
  ( (MissingZero!5992 (index!26195 (_ BitVec 32))) (Found!5992 (index!26196 (_ BitVec 32))) (Intermediate!5992 (undefined!6804 Bool) (index!26197 (_ BitVec 32)) (x!55048 (_ BitVec 32))) (Undefined!5992) (MissingVacant!5992 (index!26198 (_ BitVec 32))) )
))
(declare-fun lt!265697 () SeekEntryResult!5992)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36549 (_ BitVec 32)) SeekEntryResult!5992)

(assert (=> b!584889 (= lt!265697 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265696 vacantSpotIndex!68 (select (arr!17545 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!584890 () Bool)

(assert (=> b!584890 (= e!334758 e!334756)))

(declare-fun res!372857 () Bool)

(assert (=> b!584890 (=> (not res!372857) (not e!334756))))

(declare-fun lt!265695 () SeekEntryResult!5992)

(assert (=> b!584890 (= res!372857 (or (= lt!265695 (MissingZero!5992 i!1108)) (= lt!265695 (MissingVacant!5992 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36549 (_ BitVec 32)) SeekEntryResult!5992)

(assert (=> b!584890 (= lt!265695 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!584891 () Bool)

(declare-fun res!372850 () Bool)

(assert (=> b!584891 (=> (not res!372850) (not e!334758))))

(assert (=> b!584891 (= res!372850 (and (= (size!17909 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17909 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17909 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!584892 () Bool)

(declare-fun res!372859 () Bool)

(assert (=> b!584892 (=> (not res!372859) (not e!334756))))

(assert (=> b!584892 (= res!372859 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17545 a!2986) j!136) a!2986 mask!3053) (Found!5992 j!136)))))

(declare-fun b!584893 () Bool)

(declare-fun res!372851 () Bool)

(assert (=> b!584893 (=> (not res!372851) (not e!334758))))

(declare-fun arrayContainsKey!0 (array!36549 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!584893 (= res!372851 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!584894 () Bool)

(assert (=> b!584894 (= e!334756 e!334757)))

(declare-fun res!372853 () Bool)

(assert (=> b!584894 (=> (not res!372853) (not e!334757))))

(assert (=> b!584894 (= res!372853 (and (bvsge lt!265696 #b00000000000000000000000000000000) (bvslt lt!265696 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!584894 (= lt!265696 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53694 res!372856) b!584891))

(assert (= (and b!584891 res!372850) b!584883))

(assert (= (and b!584883 res!372849) b!584888))

(assert (= (and b!584888 res!372858) b!584893))

(assert (= (and b!584893 res!372851) b!584890))

(assert (= (and b!584890 res!372857) b!584887))

(assert (= (and b!584887 res!372860) b!584886))

(assert (= (and b!584886 res!372854) b!584885))

(assert (= (and b!584885 res!372852) b!584892))

(assert (= (and b!584892 res!372859) b!584884))

(assert (= (and b!584884 res!372855) b!584894))

(assert (= (and b!584894 res!372853) b!584889))

(declare-fun m!563217 () Bool)

(assert (=> start!53694 m!563217))

(declare-fun m!563219 () Bool)

(assert (=> start!53694 m!563219))

(declare-fun m!563221 () Bool)

(assert (=> b!584887 m!563221))

(declare-fun m!563223 () Bool)

(assert (=> b!584892 m!563223))

(assert (=> b!584892 m!563223))

(declare-fun m!563225 () Bool)

(assert (=> b!584892 m!563225))

(declare-fun m!563227 () Bool)

(assert (=> b!584890 m!563227))

(declare-fun m!563229 () Bool)

(assert (=> b!584885 m!563229))

(declare-fun m!563231 () Bool)

(assert (=> b!584885 m!563231))

(declare-fun m!563233 () Bool)

(assert (=> b!584885 m!563233))

(declare-fun m!563235 () Bool)

(assert (=> b!584884 m!563235))

(assert (=> b!584884 m!563223))

(declare-fun m!563237 () Bool)

(assert (=> b!584893 m!563237))

(declare-fun m!563239 () Bool)

(assert (=> b!584888 m!563239))

(assert (=> b!584883 m!563223))

(assert (=> b!584883 m!563223))

(declare-fun m!563241 () Bool)

(assert (=> b!584883 m!563241))

(declare-fun m!563243 () Bool)

(assert (=> b!584886 m!563243))

(declare-fun m!563245 () Bool)

(assert (=> b!584894 m!563245))

(assert (=> b!584889 m!563223))

(assert (=> b!584889 m!563223))

(declare-fun m!563247 () Bool)

(assert (=> b!584889 m!563247))

(check-sat (not b!584888) (not b!584893) (not b!584886) (not b!584889) (not b!584894) (not b!584883) (not b!584890) (not b!584887) (not start!53694) (not b!584892))
(check-sat)
