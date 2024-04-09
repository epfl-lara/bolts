; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53558 () Bool)

(assert start!53558)

(declare-fun b!582645 () Bool)

(declare-fun res!370612 () Bool)

(declare-fun e!334013 () Bool)

(assert (=> b!582645 (=> (not res!370612) (not e!334013))))

(declare-datatypes ((array!36413 0))(
  ( (array!36414 (arr!17477 (Array (_ BitVec 32) (_ BitVec 64))) (size!17841 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36413)

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36413 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582645 (= res!370612 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582646 () Bool)

(declare-fun e!334014 () Bool)

(assert (=> b!582646 (= e!334014 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5924 0))(
  ( (MissingZero!5924 (index!25923 (_ BitVec 32))) (Found!5924 (index!25924 (_ BitVec 32))) (Intermediate!5924 (undefined!6736 Bool) (index!25925 (_ BitVec 32)) (x!54796 (_ BitVec 32))) (Undefined!5924) (MissingVacant!5924 (index!25926 (_ BitVec 32))) )
))
(declare-fun lt!265165 () SeekEntryResult!5924)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36413 (_ BitVec 32)) SeekEntryResult!5924)

(assert (=> b!582646 (= lt!265165 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17477 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582647 () Bool)

(declare-fun res!370618 () Bool)

(assert (=> b!582647 (=> (not res!370618) (not e!334014))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36413 (_ BitVec 32)) Bool)

(assert (=> b!582647 (= res!370618 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582648 () Bool)

(declare-fun res!370611 () Bool)

(assert (=> b!582648 (=> (not res!370611) (not e!334013))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582648 (= res!370611 (validKeyInArray!0 k!1786))))

(declare-fun res!370613 () Bool)

(assert (=> start!53558 (=> (not res!370613) (not e!334013))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53558 (= res!370613 (validMask!0 mask!3053))))

(assert (=> start!53558 e!334013))

(assert (=> start!53558 true))

(declare-fun array_inv!13251 (array!36413) Bool)

(assert (=> start!53558 (array_inv!13251 a!2986)))

(declare-fun b!582649 () Bool)

(declare-fun res!370617 () Bool)

(assert (=> b!582649 (=> (not res!370617) (not e!334013))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582649 (= res!370617 (and (= (size!17841 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17841 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17841 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582650 () Bool)

(declare-fun res!370615 () Bool)

(assert (=> b!582650 (=> (not res!370615) (not e!334014))))

(declare-datatypes ((List!11571 0))(
  ( (Nil!11568) (Cons!11567 (h!12612 (_ BitVec 64)) (t!17807 List!11571)) )
))
(declare-fun arrayNoDuplicates!0 (array!36413 (_ BitVec 32) List!11571) Bool)

(assert (=> b!582650 (= res!370615 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11568))))

(declare-fun b!582651 () Bool)

(declare-fun res!370614 () Bool)

(assert (=> b!582651 (=> (not res!370614) (not e!334014))))

(assert (=> b!582651 (= res!370614 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17477 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17477 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582652 () Bool)

(assert (=> b!582652 (= e!334013 e!334014)))

(declare-fun res!370619 () Bool)

(assert (=> b!582652 (=> (not res!370619) (not e!334014))))

(declare-fun lt!265166 () SeekEntryResult!5924)

(assert (=> b!582652 (= res!370619 (or (= lt!265166 (MissingZero!5924 i!1108)) (= lt!265166 (MissingVacant!5924 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36413 (_ BitVec 32)) SeekEntryResult!5924)

(assert (=> b!582652 (= lt!265166 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582653 () Bool)

(declare-fun res!370616 () Bool)

(assert (=> b!582653 (=> (not res!370616) (not e!334013))))

(assert (=> b!582653 (= res!370616 (validKeyInArray!0 (select (arr!17477 a!2986) j!136)))))

(assert (= (and start!53558 res!370613) b!582649))

(assert (= (and b!582649 res!370617) b!582653))

(assert (= (and b!582653 res!370616) b!582648))

(assert (= (and b!582648 res!370611) b!582645))

(assert (= (and b!582645 res!370612) b!582652))

(assert (= (and b!582652 res!370619) b!582647))

(assert (= (and b!582647 res!370618) b!582650))

(assert (= (and b!582650 res!370615) b!582651))

(assert (= (and b!582651 res!370614) b!582646))

(declare-fun m!561185 () Bool)

(assert (=> b!582652 m!561185))

(declare-fun m!561187 () Bool)

(assert (=> b!582647 m!561187))

(declare-fun m!561189 () Bool)

(assert (=> b!582651 m!561189))

(declare-fun m!561191 () Bool)

(assert (=> b!582651 m!561191))

(declare-fun m!561193 () Bool)

(assert (=> b!582651 m!561193))

(declare-fun m!561195 () Bool)

(assert (=> start!53558 m!561195))

(declare-fun m!561197 () Bool)

(assert (=> start!53558 m!561197))

(declare-fun m!561199 () Bool)

(assert (=> b!582653 m!561199))

(assert (=> b!582653 m!561199))

(declare-fun m!561201 () Bool)

(assert (=> b!582653 m!561201))

(assert (=> b!582646 m!561199))

(assert (=> b!582646 m!561199))

(declare-fun m!561203 () Bool)

(assert (=> b!582646 m!561203))

(declare-fun m!561205 () Bool)

(assert (=> b!582645 m!561205))

(declare-fun m!561207 () Bool)

(assert (=> b!582650 m!561207))

(declare-fun m!561209 () Bool)

(assert (=> b!582648 m!561209))

(push 1)

(assert (not b!582648))

(assert (not b!582650))

(assert (not b!582647))

(assert (not b!582652))

(assert (not start!53558))

(assert (not b!582645))

