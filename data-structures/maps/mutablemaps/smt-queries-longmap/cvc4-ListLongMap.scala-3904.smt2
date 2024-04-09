; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53456 () Bool)

(assert start!53456)

(declare-fun b!581250 () Bool)

(declare-fun res!369224 () Bool)

(declare-fun e!333554 () Bool)

(assert (=> b!581250 (=> (not res!369224) (not e!333554))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36311 0))(
  ( (array!36312 (arr!17426 (Array (_ BitVec 32) (_ BitVec 64))) (size!17790 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36311)

(assert (=> b!581250 (= res!369224 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17426 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17426 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581251 () Bool)

(declare-fun res!369223 () Bool)

(assert (=> b!581251 (=> (not res!369223) (not e!333554))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36311 (_ BitVec 32)) Bool)

(assert (=> b!581251 (= res!369223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581252 () Bool)

(assert (=> b!581252 (= e!333554 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5873 0))(
  ( (MissingZero!5873 (index!25719 (_ BitVec 32))) (Found!5873 (index!25720 (_ BitVec 32))) (Intermediate!5873 (undefined!6685 Bool) (index!25721 (_ BitVec 32)) (x!54609 (_ BitVec 32))) (Undefined!5873) (MissingVacant!5873 (index!25722 (_ BitVec 32))) )
))
(declare-fun lt!264869 () SeekEntryResult!5873)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36311 (_ BitVec 32)) SeekEntryResult!5873)

(assert (=> b!581252 (= lt!264869 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17426 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581253 () Bool)

(declare-fun res!369222 () Bool)

(declare-fun e!333555 () Bool)

(assert (=> b!581253 (=> (not res!369222) (not e!333555))))

(declare-fun arrayContainsKey!0 (array!36311 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581253 (= res!369222 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581254 () Bool)

(declare-fun res!369218 () Bool)

(assert (=> b!581254 (=> (not res!369218) (not e!333554))))

(declare-datatypes ((List!11520 0))(
  ( (Nil!11517) (Cons!11516 (h!12561 (_ BitVec 64)) (t!17756 List!11520)) )
))
(declare-fun arrayNoDuplicates!0 (array!36311 (_ BitVec 32) List!11520) Bool)

(assert (=> b!581254 (= res!369218 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11517))))

(declare-fun b!581255 () Bool)

(declare-fun res!369217 () Bool)

(assert (=> b!581255 (=> (not res!369217) (not e!333555))))

(assert (=> b!581255 (= res!369217 (and (= (size!17790 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17790 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17790 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!369220 () Bool)

(assert (=> start!53456 (=> (not res!369220) (not e!333555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53456 (= res!369220 (validMask!0 mask!3053))))

(assert (=> start!53456 e!333555))

(assert (=> start!53456 true))

(declare-fun array_inv!13200 (array!36311) Bool)

(assert (=> start!53456 (array_inv!13200 a!2986)))

(declare-fun b!581256 () Bool)

(declare-fun res!369221 () Bool)

(assert (=> b!581256 (=> (not res!369221) (not e!333555))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581256 (= res!369221 (validKeyInArray!0 (select (arr!17426 a!2986) j!136)))))

(declare-fun b!581257 () Bool)

(declare-fun res!369219 () Bool)

(assert (=> b!581257 (=> (not res!369219) (not e!333555))))

(assert (=> b!581257 (= res!369219 (validKeyInArray!0 k!1786))))

(declare-fun b!581258 () Bool)

(assert (=> b!581258 (= e!333555 e!333554)))

(declare-fun res!369216 () Bool)

(assert (=> b!581258 (=> (not res!369216) (not e!333554))))

(declare-fun lt!264868 () SeekEntryResult!5873)

(assert (=> b!581258 (= res!369216 (or (= lt!264868 (MissingZero!5873 i!1108)) (= lt!264868 (MissingVacant!5873 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36311 (_ BitVec 32)) SeekEntryResult!5873)

(assert (=> b!581258 (= lt!264868 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53456 res!369220) b!581255))

(assert (= (and b!581255 res!369217) b!581256))

(assert (= (and b!581256 res!369221) b!581257))

(assert (= (and b!581257 res!369219) b!581253))

(assert (= (and b!581253 res!369222) b!581258))

(assert (= (and b!581258 res!369216) b!581251))

(assert (= (and b!581251 res!369223) b!581254))

(assert (= (and b!581254 res!369218) b!581250))

(assert (= (and b!581250 res!369224) b!581252))

(declare-fun m!559841 () Bool)

(assert (=> b!581250 m!559841))

(declare-fun m!559843 () Bool)

(assert (=> b!581250 m!559843))

(declare-fun m!559845 () Bool)

(assert (=> b!581250 m!559845))

(declare-fun m!559847 () Bool)

(assert (=> b!581254 m!559847))

(declare-fun m!559849 () Bool)

(assert (=> start!53456 m!559849))

(declare-fun m!559851 () Bool)

(assert (=> start!53456 m!559851))

(declare-fun m!559853 () Bool)

(assert (=> b!581251 m!559853))

(declare-fun m!559855 () Bool)

(assert (=> b!581257 m!559855))

(declare-fun m!559857 () Bool)

(assert (=> b!581252 m!559857))

(assert (=> b!581252 m!559857))

(declare-fun m!559859 () Bool)

(assert (=> b!581252 m!559859))

(assert (=> b!581256 m!559857))

(assert (=> b!581256 m!559857))

(declare-fun m!559861 () Bool)

(assert (=> b!581256 m!559861))

(declare-fun m!559863 () Bool)

(assert (=> b!581258 m!559863))

(declare-fun m!559865 () Bool)

(assert (=> b!581253 m!559865))

(push 1)

(assert (not b!581252))

(assert (not start!53456))

(assert (not b!581258))

(assert (not b!581253))

(assert (not b!581251))

(assert (not b!581257))

