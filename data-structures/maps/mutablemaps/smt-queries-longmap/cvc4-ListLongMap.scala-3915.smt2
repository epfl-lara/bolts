; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53522 () Bool)

(assert start!53522)

(declare-fun b!582159 () Bool)

(declare-fun res!370131 () Bool)

(declare-fun e!333851 () Bool)

(assert (=> b!582159 (=> (not res!370131) (not e!333851))))

(declare-datatypes ((array!36377 0))(
  ( (array!36378 (arr!17459 (Array (_ BitVec 32) (_ BitVec 64))) (size!17823 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36377)

(declare-datatypes ((List!11553 0))(
  ( (Nil!11550) (Cons!11549 (h!12594 (_ BitVec 64)) (t!17789 List!11553)) )
))
(declare-fun arrayNoDuplicates!0 (array!36377 (_ BitVec 32) List!11553) Bool)

(assert (=> b!582159 (= res!370131 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11550))))

(declare-fun b!582160 () Bool)

(declare-fun res!370127 () Bool)

(assert (=> b!582160 (=> (not res!370127) (not e!333851))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!582160 (= res!370127 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17459 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17459 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582161 () Bool)

(declare-fun res!370125 () Bool)

(declare-fun e!333852 () Bool)

(assert (=> b!582161 (=> (not res!370125) (not e!333852))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582161 (= res!370125 (validKeyInArray!0 (select (arr!17459 a!2986) j!136)))))

(declare-fun b!582162 () Bool)

(declare-fun res!370130 () Bool)

(assert (=> b!582162 (=> (not res!370130) (not e!333852))))

(assert (=> b!582162 (= res!370130 (validKeyInArray!0 k!1786))))

(declare-fun b!582163 () Bool)

(assert (=> b!582163 (= e!333852 e!333851)))

(declare-fun res!370133 () Bool)

(assert (=> b!582163 (=> (not res!370133) (not e!333851))))

(declare-datatypes ((SeekEntryResult!5906 0))(
  ( (MissingZero!5906 (index!25851 (_ BitVec 32))) (Found!5906 (index!25852 (_ BitVec 32))) (Intermediate!5906 (undefined!6718 Bool) (index!25853 (_ BitVec 32)) (x!54730 (_ BitVec 32))) (Undefined!5906) (MissingVacant!5906 (index!25854 (_ BitVec 32))) )
))
(declare-fun lt!265057 () SeekEntryResult!5906)

(assert (=> b!582163 (= res!370133 (or (= lt!265057 (MissingZero!5906 i!1108)) (= lt!265057 (MissingVacant!5906 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36377 (_ BitVec 32)) SeekEntryResult!5906)

(assert (=> b!582163 (= lt!265057 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!582164 () Bool)

(declare-fun res!370132 () Bool)

(assert (=> b!582164 (=> (not res!370132) (not e!333852))))

(assert (=> b!582164 (= res!370132 (and (= (size!17823 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17823 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17823 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582165 () Bool)

(declare-fun res!370129 () Bool)

(assert (=> b!582165 (=> (not res!370129) (not e!333851))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36377 (_ BitVec 32)) Bool)

(assert (=> b!582165 (= res!370129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!582166 () Bool)

(declare-fun res!370126 () Bool)

(assert (=> b!582166 (=> (not res!370126) (not e!333852))))

(declare-fun arrayContainsKey!0 (array!36377 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582166 (= res!370126 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun res!370128 () Bool)

(assert (=> start!53522 (=> (not res!370128) (not e!333852))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53522 (= res!370128 (validMask!0 mask!3053))))

(assert (=> start!53522 e!333852))

(assert (=> start!53522 true))

(declare-fun array_inv!13233 (array!36377) Bool)

(assert (=> start!53522 (array_inv!13233 a!2986)))

(declare-fun b!582167 () Bool)

(assert (=> b!582167 (= e!333851 false)))

(declare-fun lt!265058 () SeekEntryResult!5906)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36377 (_ BitVec 32)) SeekEntryResult!5906)

(assert (=> b!582167 (= lt!265058 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17459 a!2986) j!136) a!2986 mask!3053))))

(assert (= (and start!53522 res!370128) b!582164))

(assert (= (and b!582164 res!370132) b!582161))

(assert (= (and b!582161 res!370125) b!582162))

(assert (= (and b!582162 res!370130) b!582166))

(assert (= (and b!582166 res!370126) b!582163))

(assert (= (and b!582163 res!370133) b!582165))

(assert (= (and b!582165 res!370129) b!582159))

(assert (= (and b!582159 res!370131) b!582160))

(assert (= (and b!582160 res!370127) b!582167))

(declare-fun m!560717 () Bool)

(assert (=> b!582166 m!560717))

(declare-fun m!560719 () Bool)

(assert (=> b!582162 m!560719))

(declare-fun m!560721 () Bool)

(assert (=> start!53522 m!560721))

(declare-fun m!560723 () Bool)

(assert (=> start!53522 m!560723))

(declare-fun m!560725 () Bool)

(assert (=> b!582165 m!560725))

(declare-fun m!560727 () Bool)

(assert (=> b!582167 m!560727))

(assert (=> b!582167 m!560727))

(declare-fun m!560729 () Bool)

(assert (=> b!582167 m!560729))

(declare-fun m!560731 () Bool)

(assert (=> b!582159 m!560731))

(assert (=> b!582161 m!560727))

(assert (=> b!582161 m!560727))

(declare-fun m!560733 () Bool)

(assert (=> b!582161 m!560733))

(declare-fun m!560735 () Bool)

(assert (=> b!582160 m!560735))

(declare-fun m!560737 () Bool)

(assert (=> b!582160 m!560737))

(declare-fun m!560739 () Bool)

(assert (=> b!582160 m!560739))

(declare-fun m!560741 () Bool)

(assert (=> b!582163 m!560741))

(push 1)

(assert (not b!582163))

(assert (not b!582161))

(assert (not b!582165))

