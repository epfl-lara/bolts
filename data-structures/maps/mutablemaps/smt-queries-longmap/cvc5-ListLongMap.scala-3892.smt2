; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53380 () Bool)

(assert start!53380)

(declare-fun b!580206 () Bool)

(declare-fun res!368176 () Bool)

(declare-fun e!333213 () Bool)

(assert (=> b!580206 (=> (not res!368176) (not e!333213))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36235 0))(
  ( (array!36236 (arr!17388 (Array (_ BitVec 32) (_ BitVec 64))) (size!17752 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36235)

(assert (=> b!580206 (= res!368176 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17388 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17388 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!580207 () Bool)

(declare-fun res!368179 () Bool)

(declare-fun e!333214 () Bool)

(assert (=> b!580207 (=> (not res!368179) (not e!333214))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!580207 (= res!368179 (and (= (size!17752 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17752 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17752 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580208 () Bool)

(declare-fun res!368177 () Bool)

(assert (=> b!580208 (=> (not res!368177) (not e!333213))))

(declare-datatypes ((List!11482 0))(
  ( (Nil!11479) (Cons!11478 (h!12523 (_ BitVec 64)) (t!17718 List!11482)) )
))
(declare-fun arrayNoDuplicates!0 (array!36235 (_ BitVec 32) List!11482) Bool)

(assert (=> b!580208 (= res!368177 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11479))))

(declare-fun b!580209 () Bool)

(declare-fun res!368175 () Bool)

(assert (=> b!580209 (=> (not res!368175) (not e!333214))))

(declare-fun arrayContainsKey!0 (array!36235 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580209 (= res!368175 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!368180 () Bool)

(assert (=> start!53380 (=> (not res!368180) (not e!333214))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53380 (= res!368180 (validMask!0 mask!3053))))

(assert (=> start!53380 e!333214))

(assert (=> start!53380 true))

(declare-fun array_inv!13162 (array!36235) Bool)

(assert (=> start!53380 (array_inv!13162 a!2986)))

(declare-fun b!580210 () Bool)

(assert (=> b!580210 (= e!333214 e!333213)))

(declare-fun res!368172 () Bool)

(assert (=> b!580210 (=> (not res!368172) (not e!333213))))

(declare-datatypes ((SeekEntryResult!5835 0))(
  ( (MissingZero!5835 (index!25567 (_ BitVec 32))) (Found!5835 (index!25568 (_ BitVec 32))) (Intermediate!5835 (undefined!6647 Bool) (index!25569 (_ BitVec 32)) (x!54475 (_ BitVec 32))) (Undefined!5835) (MissingVacant!5835 (index!25570 (_ BitVec 32))) )
))
(declare-fun lt!264659 () SeekEntryResult!5835)

(assert (=> b!580210 (= res!368172 (or (= lt!264659 (MissingZero!5835 i!1108)) (= lt!264659 (MissingVacant!5835 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36235 (_ BitVec 32)) SeekEntryResult!5835)

(assert (=> b!580210 (= lt!264659 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580211 () Bool)

(declare-fun res!368178 () Bool)

(assert (=> b!580211 (=> (not res!368178) (not e!333214))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580211 (= res!368178 (validKeyInArray!0 k!1786))))

(declare-fun b!580212 () Bool)

(declare-fun res!368173 () Bool)

(assert (=> b!580212 (=> (not res!368173) (not e!333214))))

(assert (=> b!580212 (= res!368173 (validKeyInArray!0 (select (arr!17388 a!2986) j!136)))))

(declare-fun b!580213 () Bool)

(assert (=> b!580213 (= e!333213 false)))

(declare-fun lt!264658 () SeekEntryResult!5835)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36235 (_ BitVec 32)) SeekEntryResult!5835)

(assert (=> b!580213 (= lt!264658 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17388 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580214 () Bool)

(declare-fun res!368174 () Bool)

(assert (=> b!580214 (=> (not res!368174) (not e!333213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36235 (_ BitVec 32)) Bool)

(assert (=> b!580214 (= res!368174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53380 res!368180) b!580207))

(assert (= (and b!580207 res!368179) b!580212))

(assert (= (and b!580212 res!368173) b!580211))

(assert (= (and b!580211 res!368178) b!580209))

(assert (= (and b!580209 res!368175) b!580210))

(assert (= (and b!580210 res!368172) b!580214))

(assert (= (and b!580214 res!368174) b!580208))

(assert (= (and b!580208 res!368177) b!580206))

(assert (= (and b!580206 res!368176) b!580213))

(declare-fun m!558841 () Bool)

(assert (=> start!53380 m!558841))

(declare-fun m!558843 () Bool)

(assert (=> start!53380 m!558843))

(declare-fun m!558845 () Bool)

(assert (=> b!580206 m!558845))

(declare-fun m!558847 () Bool)

(assert (=> b!580206 m!558847))

(declare-fun m!558849 () Bool)

(assert (=> b!580206 m!558849))

(declare-fun m!558851 () Bool)

(assert (=> b!580212 m!558851))

(assert (=> b!580212 m!558851))

(declare-fun m!558853 () Bool)

(assert (=> b!580212 m!558853))

(declare-fun m!558855 () Bool)

(assert (=> b!580209 m!558855))

(assert (=> b!580213 m!558851))

(assert (=> b!580213 m!558851))

(declare-fun m!558857 () Bool)

(assert (=> b!580213 m!558857))

(declare-fun m!558859 () Bool)

(assert (=> b!580210 m!558859))

(declare-fun m!558861 () Bool)

(assert (=> b!580211 m!558861))

(declare-fun m!558863 () Bool)

(assert (=> b!580214 m!558863))

(declare-fun m!558865 () Bool)

(assert (=> b!580208 m!558865))

(push 1)

