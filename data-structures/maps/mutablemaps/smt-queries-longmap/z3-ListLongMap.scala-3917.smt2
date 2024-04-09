; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53532 () Bool)

(assert start!53532)

(declare-fun res!370264 () Bool)

(declare-fun e!333898 () Bool)

(assert (=> start!53532 (=> (not res!370264) (not e!333898))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53532 (= res!370264 (validMask!0 mask!3053))))

(assert (=> start!53532 e!333898))

(assert (=> start!53532 true))

(declare-datatypes ((array!36387 0))(
  ( (array!36388 (arr!17464 (Array (_ BitVec 32) (_ BitVec 64))) (size!17828 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36387)

(declare-fun array_inv!13238 (array!36387) Bool)

(assert (=> start!53532 (array_inv!13238 a!2986)))

(declare-fun b!582294 () Bool)

(declare-fun res!370262 () Bool)

(assert (=> b!582294 (=> (not res!370262) (not e!333898))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582294 (= res!370262 (and (= (size!17828 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17828 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17828 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582295 () Bool)

(declare-fun res!370268 () Bool)

(assert (=> b!582295 (=> (not res!370268) (not e!333898))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582295 (= res!370268 (validKeyInArray!0 (select (arr!17464 a!2986) j!136)))))

(declare-fun b!582296 () Bool)

(declare-fun res!370265 () Bool)

(assert (=> b!582296 (=> (not res!370265) (not e!333898))))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!582296 (= res!370265 (validKeyInArray!0 k0!1786))))

(declare-fun b!582297 () Bool)

(declare-fun res!370267 () Bool)

(declare-fun e!333897 () Bool)

(assert (=> b!582297 (=> (not res!370267) (not e!333897))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582297 (= res!370267 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17464 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17464 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582298 () Bool)

(declare-fun res!370261 () Bool)

(assert (=> b!582298 (=> (not res!370261) (not e!333897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36387 (_ BitVec 32)) Bool)

(assert (=> b!582298 (= res!370261 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582299 () Bool)

(assert (=> b!582299 (= e!333898 e!333897)))

(declare-fun res!370266 () Bool)

(assert (=> b!582299 (=> (not res!370266) (not e!333897))))

(declare-datatypes ((SeekEntryResult!5911 0))(
  ( (MissingZero!5911 (index!25871 (_ BitVec 32))) (Found!5911 (index!25872 (_ BitVec 32))) (Intermediate!5911 (undefined!6723 Bool) (index!25873 (_ BitVec 32)) (x!54751 (_ BitVec 32))) (Undefined!5911) (MissingVacant!5911 (index!25874 (_ BitVec 32))) )
))
(declare-fun lt!265088 () SeekEntryResult!5911)

(assert (=> b!582299 (= res!370266 (or (= lt!265088 (MissingZero!5911 i!1108)) (= lt!265088 (MissingVacant!5911 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36387 (_ BitVec 32)) SeekEntryResult!5911)

(assert (=> b!582299 (= lt!265088 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!582300 () Bool)

(assert (=> b!582300 (= e!333897 false)))

(declare-fun lt!265087 () SeekEntryResult!5911)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36387 (_ BitVec 32)) SeekEntryResult!5911)

(assert (=> b!582300 (= lt!265087 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17464 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582301 () Bool)

(declare-fun res!370260 () Bool)

(assert (=> b!582301 (=> (not res!370260) (not e!333898))))

(declare-fun arrayContainsKey!0 (array!36387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582301 (= res!370260 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582302 () Bool)

(declare-fun res!370263 () Bool)

(assert (=> b!582302 (=> (not res!370263) (not e!333897))))

(declare-datatypes ((List!11558 0))(
  ( (Nil!11555) (Cons!11554 (h!12599 (_ BitVec 64)) (t!17794 List!11558)) )
))
(declare-fun arrayNoDuplicates!0 (array!36387 (_ BitVec 32) List!11558) Bool)

(assert (=> b!582302 (= res!370263 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11555))))

(assert (= (and start!53532 res!370264) b!582294))

(assert (= (and b!582294 res!370262) b!582295))

(assert (= (and b!582295 res!370268) b!582296))

(assert (= (and b!582296 res!370265) b!582301))

(assert (= (and b!582301 res!370260) b!582299))

(assert (= (and b!582299 res!370266) b!582298))

(assert (= (and b!582298 res!370261) b!582302))

(assert (= (and b!582302 res!370263) b!582297))

(assert (= (and b!582297 res!370267) b!582300))

(declare-fun m!560847 () Bool)

(assert (=> b!582296 m!560847))

(declare-fun m!560849 () Bool)

(assert (=> start!53532 m!560849))

(declare-fun m!560851 () Bool)

(assert (=> start!53532 m!560851))

(declare-fun m!560853 () Bool)

(assert (=> b!582299 m!560853))

(declare-fun m!560855 () Bool)

(assert (=> b!582298 m!560855))

(declare-fun m!560857 () Bool)

(assert (=> b!582297 m!560857))

(declare-fun m!560859 () Bool)

(assert (=> b!582297 m!560859))

(declare-fun m!560861 () Bool)

(assert (=> b!582297 m!560861))

(declare-fun m!560863 () Bool)

(assert (=> b!582295 m!560863))

(assert (=> b!582295 m!560863))

(declare-fun m!560865 () Bool)

(assert (=> b!582295 m!560865))

(declare-fun m!560867 () Bool)

(assert (=> b!582302 m!560867))

(declare-fun m!560869 () Bool)

(assert (=> b!582301 m!560869))

(assert (=> b!582300 m!560863))

(assert (=> b!582300 m!560863))

(declare-fun m!560871 () Bool)

(assert (=> b!582300 m!560871))

(check-sat (not b!582298) (not b!582296) (not b!582295) (not start!53532) (not b!582300) (not b!582302) (not b!582301) (not b!582299))
(check-sat)
