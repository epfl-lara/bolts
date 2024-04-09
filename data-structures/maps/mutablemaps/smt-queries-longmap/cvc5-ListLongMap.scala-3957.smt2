; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53770 () Bool)

(assert start!53770)

(declare-fun b!586177 () Bool)

(declare-fun res!374153 () Bool)

(declare-fun e!335139 () Bool)

(assert (=> b!586177 (=> (not res!374153) (not e!335139))))

(declare-datatypes ((array!36625 0))(
  ( (array!36626 (arr!17583 (Array (_ BitVec 32) (_ BitVec 64))) (size!17947 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36625)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36625 (_ BitVec 32)) Bool)

(assert (=> b!586177 (= res!374153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586178 () Bool)

(declare-fun res!374150 () Bool)

(assert (=> b!586178 (=> (not res!374150) (not e!335139))))

(declare-datatypes ((List!11677 0))(
  ( (Nil!11674) (Cons!11673 (h!12718 (_ BitVec 64)) (t!17913 List!11677)) )
))
(declare-fun arrayNoDuplicates!0 (array!36625 (_ BitVec 32) List!11677) Bool)

(assert (=> b!586178 (= res!374150 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11674))))

(declare-fun b!586179 () Bool)

(declare-fun res!374147 () Bool)

(assert (=> b!586179 (=> (not res!374147) (not e!335139))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!586179 (= res!374147 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17583 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17583 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586180 () Bool)

(declare-fun res!374152 () Bool)

(declare-fun e!335140 () Bool)

(assert (=> b!586180 (=> (not res!374152) (not e!335140))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586180 (= res!374152 (validKeyInArray!0 (select (arr!17583 a!2986) j!136)))))

(declare-fun res!374148 () Bool)

(assert (=> start!53770 (=> (not res!374148) (not e!335140))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53770 (= res!374148 (validMask!0 mask!3053))))

(assert (=> start!53770 e!335140))

(assert (=> start!53770 true))

(declare-fun array_inv!13357 (array!36625) Bool)

(assert (=> start!53770 (array_inv!13357 a!2986)))

(declare-fun b!586181 () Bool)

(declare-fun res!374151 () Bool)

(assert (=> b!586181 (=> (not res!374151) (not e!335139))))

(declare-datatypes ((SeekEntryResult!6030 0))(
  ( (MissingZero!6030 (index!26347 (_ BitVec 32))) (Found!6030 (index!26348 (_ BitVec 32))) (Intermediate!6030 (undefined!6842 Bool) (index!26349 (_ BitVec 32)) (x!55190 (_ BitVec 32))) (Undefined!6030) (MissingVacant!6030 (index!26350 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36625 (_ BitVec 32)) SeekEntryResult!6030)

(assert (=> b!586181 (= res!374151 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17583 a!2986) j!136) a!2986 mask!3053) (Found!6030 j!136)))))

(declare-fun b!586182 () Bool)

(declare-fun res!374143 () Bool)

(assert (=> b!586182 (=> (not res!374143) (not e!335140))))

(declare-fun arrayContainsKey!0 (array!36625 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586182 (= res!374143 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586183 () Bool)

(declare-fun res!374144 () Bool)

(assert (=> b!586183 (=> (not res!374144) (not e!335139))))

(assert (=> b!586183 (= res!374144 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17583 a!2986) index!984) (select (arr!17583 a!2986) j!136))) (not (= (select (arr!17583 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586184 () Bool)

(declare-fun res!374149 () Bool)

(assert (=> b!586184 (=> (not res!374149) (not e!335140))))

(assert (=> b!586184 (= res!374149 (validKeyInArray!0 k!1786))))

(declare-fun b!586185 () Bool)

(assert (=> b!586185 (= e!335139 (not true))))

(declare-fun lt!266039 () (_ BitVec 32))

(assert (=> b!586185 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266039 vacantSpotIndex!68 (select (arr!17583 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266039 vacantSpotIndex!68 (select (store (arr!17583 a!2986) i!1108 k!1786) j!136) (array!36626 (store (arr!17583 a!2986) i!1108 k!1786) (size!17947 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18184 0))(
  ( (Unit!18185) )
))
(declare-fun lt!266037 () Unit!18184)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36625 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18184)

(assert (=> b!586185 (= lt!266037 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266039 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586185 (= lt!266039 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586186 () Bool)

(declare-fun res!374145 () Bool)

(assert (=> b!586186 (=> (not res!374145) (not e!335140))))

(assert (=> b!586186 (= res!374145 (and (= (size!17947 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17947 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17947 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586187 () Bool)

(assert (=> b!586187 (= e!335140 e!335139)))

(declare-fun res!374146 () Bool)

(assert (=> b!586187 (=> (not res!374146) (not e!335139))))

(declare-fun lt!266038 () SeekEntryResult!6030)

(assert (=> b!586187 (= res!374146 (or (= lt!266038 (MissingZero!6030 i!1108)) (= lt!266038 (MissingVacant!6030 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36625 (_ BitVec 32)) SeekEntryResult!6030)

(assert (=> b!586187 (= lt!266038 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!53770 res!374148) b!586186))

(assert (= (and b!586186 res!374145) b!586180))

(assert (= (and b!586180 res!374152) b!586184))

(assert (= (and b!586184 res!374149) b!586182))

(assert (= (and b!586182 res!374143) b!586187))

(assert (= (and b!586187 res!374146) b!586177))

(assert (= (and b!586177 res!374153) b!586178))

(assert (= (and b!586178 res!374150) b!586179))

(assert (= (and b!586179 res!374147) b!586181))

(assert (= (and b!586181 res!374151) b!586183))

(assert (= (and b!586183 res!374144) b!586185))

(declare-fun m!564577 () Bool)

(assert (=> b!586177 m!564577))

(declare-fun m!564579 () Bool)

(assert (=> b!586184 m!564579))

(declare-fun m!564581 () Bool)

(assert (=> b!586178 m!564581))

(declare-fun m!564583 () Bool)

(assert (=> b!586179 m!564583))

(declare-fun m!564585 () Bool)

(assert (=> b!586179 m!564585))

(declare-fun m!564587 () Bool)

(assert (=> b!586179 m!564587))

(declare-fun m!564589 () Bool)

(assert (=> b!586180 m!564589))

(assert (=> b!586180 m!564589))

(declare-fun m!564591 () Bool)

(assert (=> b!586180 m!564591))

(declare-fun m!564593 () Bool)

(assert (=> start!53770 m!564593))

(declare-fun m!564595 () Bool)

(assert (=> start!53770 m!564595))

(declare-fun m!564597 () Bool)

(assert (=> b!586185 m!564597))

(declare-fun m!564599 () Bool)

(assert (=> b!586185 m!564599))

(declare-fun m!564601 () Bool)

(assert (=> b!586185 m!564601))

(assert (=> b!586185 m!564589))

(assert (=> b!586185 m!564585))

(assert (=> b!586185 m!564589))

(declare-fun m!564603 () Bool)

(assert (=> b!586185 m!564603))

(assert (=> b!586185 m!564601))

(declare-fun m!564605 () Bool)

(assert (=> b!586185 m!564605))

(assert (=> b!586181 m!564589))

(assert (=> b!586181 m!564589))

(declare-fun m!564607 () Bool)

(assert (=> b!586181 m!564607))

(declare-fun m!564609 () Bool)

(assert (=> b!586183 m!564609))

(assert (=> b!586183 m!564589))

(declare-fun m!564611 () Bool)

(assert (=> b!586187 m!564611))

(declare-fun m!564613 () Bool)

(assert (=> b!586182 m!564613))

(push 1)

