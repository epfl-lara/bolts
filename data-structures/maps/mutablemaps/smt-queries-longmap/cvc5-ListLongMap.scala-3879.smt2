; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53302 () Bool)

(assert start!53302)

(declare-fun b!579153 () Bool)

(declare-fun res!367125 () Bool)

(declare-fun e!332863 () Bool)

(assert (=> b!579153 (=> (not res!367125) (not e!332863))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36157 0))(
  ( (array!36158 (arr!17349 (Array (_ BitVec 32) (_ BitVec 64))) (size!17713 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36157)

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!579153 (= res!367125 (and (= (size!17713 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17713 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17713 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!579154 () Bool)

(declare-fun res!367120 () Bool)

(declare-fun e!332862 () Bool)

(assert (=> b!579154 (=> (not res!367120) (not e!332862))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!579154 (= res!367120 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17349 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17349 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579155 () Bool)

(declare-fun res!367126 () Bool)

(assert (=> b!579155 (=> (not res!367126) (not e!332863))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579155 (= res!367126 (validKeyInArray!0 (select (arr!17349 a!2986) j!136)))))

(declare-fun b!579156 () Bool)

(declare-fun res!367122 () Bool)

(assert (=> b!579156 (=> (not res!367122) (not e!332862))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36157 (_ BitVec 32)) Bool)

(assert (=> b!579156 (= res!367122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579157 () Bool)

(declare-fun res!367124 () Bool)

(assert (=> b!579157 (=> (not res!367124) (not e!332862))))

(declare-datatypes ((List!11443 0))(
  ( (Nil!11440) (Cons!11439 (h!12484 (_ BitVec 64)) (t!17679 List!11443)) )
))
(declare-fun arrayNoDuplicates!0 (array!36157 (_ BitVec 32) List!11443) Bool)

(assert (=> b!579157 (= res!367124 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11440))))

(declare-fun b!579158 () Bool)

(assert (=> b!579158 (= e!332862 false)))

(declare-datatypes ((SeekEntryResult!5796 0))(
  ( (MissingZero!5796 (index!25411 (_ BitVec 32))) (Found!5796 (index!25412 (_ BitVec 32))) (Intermediate!5796 (undefined!6608 Bool) (index!25413 (_ BitVec 32)) (x!54332 (_ BitVec 32))) (Undefined!5796) (MissingVacant!5796 (index!25414 (_ BitVec 32))) )
))
(declare-fun lt!264425 () SeekEntryResult!5796)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36157 (_ BitVec 32)) SeekEntryResult!5796)

(assert (=> b!579158 (= lt!264425 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17349 a!2986) j!136) a!2986 mask!3053))))

(declare-fun res!367127 () Bool)

(assert (=> start!53302 (=> (not res!367127) (not e!332863))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53302 (= res!367127 (validMask!0 mask!3053))))

(assert (=> start!53302 e!332863))

(assert (=> start!53302 true))

(declare-fun array_inv!13123 (array!36157) Bool)

(assert (=> start!53302 (array_inv!13123 a!2986)))

(declare-fun b!579159 () Bool)

(declare-fun res!367121 () Bool)

(assert (=> b!579159 (=> (not res!367121) (not e!332863))))

(declare-fun arrayContainsKey!0 (array!36157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579159 (= res!367121 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579160 () Bool)

(declare-fun res!367123 () Bool)

(assert (=> b!579160 (=> (not res!367123) (not e!332863))))

(assert (=> b!579160 (= res!367123 (validKeyInArray!0 k!1786))))

(declare-fun b!579161 () Bool)

(assert (=> b!579161 (= e!332863 e!332862)))

(declare-fun res!367119 () Bool)

(assert (=> b!579161 (=> (not res!367119) (not e!332862))))

(declare-fun lt!264424 () SeekEntryResult!5796)

(assert (=> b!579161 (= res!367119 (or (= lt!264424 (MissingZero!5796 i!1108)) (= lt!264424 (MissingVacant!5796 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36157 (_ BitVec 32)) SeekEntryResult!5796)

(assert (=> b!579161 (= lt!264424 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53302 res!367127) b!579153))

(assert (= (and b!579153 res!367125) b!579155))

(assert (= (and b!579155 res!367126) b!579160))

(assert (= (and b!579160 res!367123) b!579159))

(assert (= (and b!579159 res!367121) b!579161))

(assert (= (and b!579161 res!367119) b!579156))

(assert (= (and b!579156 res!367122) b!579157))

(assert (= (and b!579157 res!367124) b!579154))

(assert (= (and b!579154 res!367120) b!579158))

(declare-fun m!557827 () Bool)

(assert (=> b!579155 m!557827))

(assert (=> b!579155 m!557827))

(declare-fun m!557829 () Bool)

(assert (=> b!579155 m!557829))

(declare-fun m!557831 () Bool)

(assert (=> b!579156 m!557831))

(declare-fun m!557833 () Bool)

(assert (=> b!579154 m!557833))

(declare-fun m!557835 () Bool)

(assert (=> b!579154 m!557835))

(declare-fun m!557837 () Bool)

(assert (=> b!579154 m!557837))

(declare-fun m!557839 () Bool)

(assert (=> b!579160 m!557839))

(declare-fun m!557841 () Bool)

(assert (=> b!579161 m!557841))

(declare-fun m!557843 () Bool)

(assert (=> b!579157 m!557843))

(assert (=> b!579158 m!557827))

(assert (=> b!579158 m!557827))

(declare-fun m!557845 () Bool)

(assert (=> b!579158 m!557845))

(declare-fun m!557847 () Bool)

(assert (=> b!579159 m!557847))

(declare-fun m!557849 () Bool)

(assert (=> start!53302 m!557849))

(declare-fun m!557851 () Bool)

(assert (=> start!53302 m!557851))

(push 1)

