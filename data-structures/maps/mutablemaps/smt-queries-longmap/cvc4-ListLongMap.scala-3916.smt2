; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53528 () Bool)

(assert start!53528)

(declare-fun b!582240 () Bool)

(declare-fun res!370210 () Bool)

(declare-fun e!333879 () Bool)

(assert (=> b!582240 (=> (not res!370210) (not e!333879))))

(declare-datatypes ((array!36383 0))(
  ( (array!36384 (arr!17462 (Array (_ BitVec 32) (_ BitVec 64))) (size!17826 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36383)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36383 (_ BitVec 32)) Bool)

(assert (=> b!582240 (= res!370210 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582241 () Bool)

(declare-fun res!370211 () Bool)

(assert (=> b!582241 (=> (not res!370211) (not e!333879))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582241 (= res!370211 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17462 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17462 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!370213 () Bool)

(declare-fun e!333878 () Bool)

(assert (=> start!53528 (=> (not res!370213) (not e!333878))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53528 (= res!370213 (validMask!0 mask!3053))))

(assert (=> start!53528 e!333878))

(assert (=> start!53528 true))

(declare-fun array_inv!13236 (array!36383) Bool)

(assert (=> start!53528 (array_inv!13236 a!2986)))

(declare-fun b!582242 () Bool)

(declare-fun res!370208 () Bool)

(assert (=> b!582242 (=> (not res!370208) (not e!333878))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582242 (= res!370208 (validKeyInArray!0 (select (arr!17462 a!2986) j!136)))))

(declare-fun b!582243 () Bool)

(declare-fun res!370206 () Bool)

(assert (=> b!582243 (=> (not res!370206) (not e!333879))))

(declare-datatypes ((List!11556 0))(
  ( (Nil!11553) (Cons!11552 (h!12597 (_ BitVec 64)) (t!17792 List!11556)) )
))
(declare-fun arrayNoDuplicates!0 (array!36383 (_ BitVec 32) List!11556) Bool)

(assert (=> b!582243 (= res!370206 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11553))))

(declare-fun b!582244 () Bool)

(assert (=> b!582244 (= e!333879 false)))

(declare-datatypes ((SeekEntryResult!5909 0))(
  ( (MissingZero!5909 (index!25863 (_ BitVec 32))) (Found!5909 (index!25864 (_ BitVec 32))) (Intermediate!5909 (undefined!6721 Bool) (index!25865 (_ BitVec 32)) (x!54741 (_ BitVec 32))) (Undefined!5909) (MissingVacant!5909 (index!25866 (_ BitVec 32))) )
))
(declare-fun lt!265075 () SeekEntryResult!5909)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36383 (_ BitVec 32)) SeekEntryResult!5909)

(assert (=> b!582244 (= lt!265075 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17462 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582245 () Bool)

(declare-fun res!370214 () Bool)

(assert (=> b!582245 (=> (not res!370214) (not e!333878))))

(assert (=> b!582245 (= res!370214 (validKeyInArray!0 k!1786))))

(declare-fun b!582246 () Bool)

(declare-fun res!370207 () Bool)

(assert (=> b!582246 (=> (not res!370207) (not e!333878))))

(assert (=> b!582246 (= res!370207 (and (= (size!17826 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17826 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17826 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582247 () Bool)

(assert (=> b!582247 (= e!333878 e!333879)))

(declare-fun res!370212 () Bool)

(assert (=> b!582247 (=> (not res!370212) (not e!333879))))

(declare-fun lt!265076 () SeekEntryResult!5909)

(assert (=> b!582247 (= res!370212 (or (= lt!265076 (MissingZero!5909 i!1108)) (= lt!265076 (MissingVacant!5909 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36383 (_ BitVec 32)) SeekEntryResult!5909)

(assert (=> b!582247 (= lt!265076 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582248 () Bool)

(declare-fun res!370209 () Bool)

(assert (=> b!582248 (=> (not res!370209) (not e!333878))))

(declare-fun arrayContainsKey!0 (array!36383 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582248 (= res!370209 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53528 res!370213) b!582246))

(assert (= (and b!582246 res!370207) b!582242))

(assert (= (and b!582242 res!370208) b!582245))

(assert (= (and b!582245 res!370214) b!582248))

(assert (= (and b!582248 res!370209) b!582247))

(assert (= (and b!582247 res!370212) b!582240))

(assert (= (and b!582240 res!370210) b!582243))

(assert (= (and b!582243 res!370206) b!582241))

(assert (= (and b!582241 res!370211) b!582244))

(declare-fun m!560795 () Bool)

(assert (=> b!582248 m!560795))

(declare-fun m!560797 () Bool)

(assert (=> b!582242 m!560797))

(assert (=> b!582242 m!560797))

(declare-fun m!560799 () Bool)

(assert (=> b!582242 m!560799))

(declare-fun m!560801 () Bool)

(assert (=> b!582240 m!560801))

(declare-fun m!560803 () Bool)

(assert (=> b!582247 m!560803))

(declare-fun m!560805 () Bool)

(assert (=> b!582243 m!560805))

(assert (=> b!582244 m!560797))

(assert (=> b!582244 m!560797))

(declare-fun m!560807 () Bool)

(assert (=> b!582244 m!560807))

(declare-fun m!560809 () Bool)

(assert (=> start!53528 m!560809))

(declare-fun m!560811 () Bool)

(assert (=> start!53528 m!560811))

(declare-fun m!560813 () Bool)

(assert (=> b!582241 m!560813))

(declare-fun m!560815 () Bool)

(assert (=> b!582241 m!560815))

(declare-fun m!560817 () Bool)

(assert (=> b!582241 m!560817))

(declare-fun m!560819 () Bool)

(assert (=> b!582245 m!560819))

(push 1)

(assert (not b!582247))

(assert (not b!582243))

(assert (not b!582244))

(assert (not b!582248))

(assert (not start!53528))

(assert (not b!582240))

(assert (not b!582242))

