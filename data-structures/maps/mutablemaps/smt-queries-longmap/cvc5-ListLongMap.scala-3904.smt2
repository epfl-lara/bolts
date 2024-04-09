; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53452 () Bool)

(assert start!53452)

(declare-fun b!581196 () Bool)

(declare-fun res!369165 () Bool)

(declare-fun e!333538 () Bool)

(assert (=> b!581196 (=> (not res!369165) (not e!333538))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36307 0))(
  ( (array!36308 (arr!17424 (Array (_ BitVec 32) (_ BitVec 64))) (size!17788 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36307)

(assert (=> b!581196 (= res!369165 (and (= (size!17788 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17788 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17788 a!2986)) (not (= i!1108 j!136))))))

(declare-fun res!369162 () Bool)

(assert (=> start!53452 (=> (not res!369162) (not e!333538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53452 (= res!369162 (validMask!0 mask!3053))))

(assert (=> start!53452 e!333538))

(assert (=> start!53452 true))

(declare-fun array_inv!13198 (array!36307) Bool)

(assert (=> start!53452 (array_inv!13198 a!2986)))

(declare-fun b!581197 () Bool)

(declare-fun res!369169 () Bool)

(assert (=> b!581197 (=> (not res!369169) (not e!333538))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581197 (= res!369169 (validKeyInArray!0 k!1786))))

(declare-fun b!581198 () Bool)

(declare-fun res!369163 () Bool)

(declare-fun e!333537 () Bool)

(assert (=> b!581198 (=> (not res!369163) (not e!333537))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36307 (_ BitVec 32)) Bool)

(assert (=> b!581198 (= res!369163 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581199 () Bool)

(declare-fun res!369167 () Bool)

(assert (=> b!581199 (=> (not res!369167) (not e!333537))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!581199 (= res!369167 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17424 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17424 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581200 () Bool)

(assert (=> b!581200 (= e!333538 e!333537)))

(declare-fun res!369170 () Bool)

(assert (=> b!581200 (=> (not res!369170) (not e!333537))))

(declare-datatypes ((SeekEntryResult!5871 0))(
  ( (MissingZero!5871 (index!25711 (_ BitVec 32))) (Found!5871 (index!25712 (_ BitVec 32))) (Intermediate!5871 (undefined!6683 Bool) (index!25713 (_ BitVec 32)) (x!54607 (_ BitVec 32))) (Undefined!5871) (MissingVacant!5871 (index!25714 (_ BitVec 32))) )
))
(declare-fun lt!264856 () SeekEntryResult!5871)

(assert (=> b!581200 (= res!369170 (or (= lt!264856 (MissingZero!5871 i!1108)) (= lt!264856 (MissingVacant!5871 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36307 (_ BitVec 32)) SeekEntryResult!5871)

(assert (=> b!581200 (= lt!264856 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581201 () Bool)

(declare-fun res!369168 () Bool)

(assert (=> b!581201 (=> (not res!369168) (not e!333538))))

(assert (=> b!581201 (= res!369168 (validKeyInArray!0 (select (arr!17424 a!2986) j!136)))))

(declare-fun b!581202 () Bool)

(assert (=> b!581202 (= e!333537 false)))

(declare-fun lt!264857 () SeekEntryResult!5871)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36307 (_ BitVec 32)) SeekEntryResult!5871)

(assert (=> b!581202 (= lt!264857 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17424 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581203 () Bool)

(declare-fun res!369164 () Bool)

(assert (=> b!581203 (=> (not res!369164) (not e!333537))))

(declare-datatypes ((List!11518 0))(
  ( (Nil!11515) (Cons!11514 (h!12559 (_ BitVec 64)) (t!17754 List!11518)) )
))
(declare-fun arrayNoDuplicates!0 (array!36307 (_ BitVec 32) List!11518) Bool)

(assert (=> b!581203 (= res!369164 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11515))))

(declare-fun b!581204 () Bool)

(declare-fun res!369166 () Bool)

(assert (=> b!581204 (=> (not res!369166) (not e!333538))))

(declare-fun arrayContainsKey!0 (array!36307 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581204 (= res!369166 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(assert (= (and start!53452 res!369162) b!581196))

(assert (= (and b!581196 res!369165) b!581201))

(assert (= (and b!581201 res!369168) b!581197))

(assert (= (and b!581197 res!369169) b!581204))

(assert (= (and b!581204 res!369166) b!581200))

(assert (= (and b!581200 res!369170) b!581198))

(assert (= (and b!581198 res!369163) b!581203))

(assert (= (and b!581203 res!369164) b!581199))

(assert (= (and b!581199 res!369167) b!581202))

(declare-fun m!559789 () Bool)

(assert (=> b!581202 m!559789))

(assert (=> b!581202 m!559789))

(declare-fun m!559791 () Bool)

(assert (=> b!581202 m!559791))

(declare-fun m!559793 () Bool)

(assert (=> b!581204 m!559793))

(declare-fun m!559795 () Bool)

(assert (=> b!581198 m!559795))

(declare-fun m!559797 () Bool)

(assert (=> b!581203 m!559797))

(declare-fun m!559799 () Bool)

(assert (=> b!581199 m!559799))

(declare-fun m!559801 () Bool)

(assert (=> b!581199 m!559801))

(declare-fun m!559803 () Bool)

(assert (=> b!581199 m!559803))

(declare-fun m!559805 () Bool)

(assert (=> b!581200 m!559805))

(declare-fun m!559807 () Bool)

(assert (=> b!581197 m!559807))

(assert (=> b!581201 m!559789))

(assert (=> b!581201 m!559789))

(declare-fun m!559809 () Bool)

(assert (=> b!581201 m!559809))

(declare-fun m!559811 () Bool)

(assert (=> start!53452 m!559811))

(declare-fun m!559813 () Bool)

(assert (=> start!53452 m!559813))

(push 1)

