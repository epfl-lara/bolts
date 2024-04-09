; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53778 () Bool)

(assert start!53778)

(declare-fun b!586309 () Bool)

(declare-fun res!374280 () Bool)

(declare-fun e!335175 () Bool)

(assert (=> b!586309 (=> (not res!374280) (not e!335175))))

(declare-datatypes ((array!36633 0))(
  ( (array!36634 (arr!17587 (Array (_ BitVec 32) (_ BitVec 64))) (size!17951 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36633)

(declare-datatypes ((List!11681 0))(
  ( (Nil!11678) (Cons!11677 (h!12722 (_ BitVec 64)) (t!17917 List!11681)) )
))
(declare-fun arrayNoDuplicates!0 (array!36633 (_ BitVec 32) List!11681) Bool)

(assert (=> b!586309 (= res!374280 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11678))))

(declare-fun res!374279 () Bool)

(declare-fun e!335174 () Bool)

(assert (=> start!53778 (=> (not res!374279) (not e!335174))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53778 (= res!374279 (validMask!0 mask!3053))))

(assert (=> start!53778 e!335174))

(assert (=> start!53778 true))

(declare-fun array_inv!13361 (array!36633) Bool)

(assert (=> start!53778 (array_inv!13361 a!2986)))

(declare-fun b!586310 () Bool)

(declare-fun res!374275 () Bool)

(assert (=> b!586310 (=> (not res!374275) (not e!335175))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6034 0))(
  ( (MissingZero!6034 (index!26363 (_ BitVec 32))) (Found!6034 (index!26364 (_ BitVec 32))) (Intermediate!6034 (undefined!6846 Bool) (index!26365 (_ BitVec 32)) (x!55202 (_ BitVec 32))) (Undefined!6034) (MissingVacant!6034 (index!26366 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36633 (_ BitVec 32)) SeekEntryResult!6034)

(assert (=> b!586310 (= res!374275 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17587 a!2986) j!136) a!2986 mask!3053) (Found!6034 j!136)))))

(declare-fun b!586311 () Bool)

(declare-fun res!374283 () Bool)

(assert (=> b!586311 (=> (not res!374283) (not e!335175))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(assert (=> b!586311 (= res!374283 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17587 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17587 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586312 () Bool)

(declare-fun res!374282 () Bool)

(assert (=> b!586312 (=> (not res!374282) (not e!335174))))

(assert (=> b!586312 (= res!374282 (and (= (size!17951 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17951 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17951 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586313 () Bool)

(declare-fun res!374285 () Bool)

(assert (=> b!586313 (=> (not res!374285) (not e!335175))))

(assert (=> b!586313 (= res!374285 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17587 a!2986) index!984) (select (arr!17587 a!2986) j!136))) (not (= (select (arr!17587 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586314 () Bool)

(declare-fun res!374276 () Bool)

(assert (=> b!586314 (=> (not res!374276) (not e!335174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586314 (= res!374276 (validKeyInArray!0 k0!1786))))

(declare-fun b!586315 () Bool)

(declare-fun res!374281 () Bool)

(assert (=> b!586315 (=> (not res!374281) (not e!335174))))

(assert (=> b!586315 (= res!374281 (validKeyInArray!0 (select (arr!17587 a!2986) j!136)))))

(declare-fun b!586316 () Bool)

(declare-fun res!374278 () Bool)

(assert (=> b!586316 (=> (not res!374278) (not e!335174))))

(declare-fun arrayContainsKey!0 (array!36633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586316 (= res!374278 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586317 () Bool)

(declare-fun res!374284 () Bool)

(assert (=> b!586317 (=> (not res!374284) (not e!335175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36633 (_ BitVec 32)) Bool)

(assert (=> b!586317 (= res!374284 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586318 () Bool)

(assert (=> b!586318 (= e!335175 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!266075 () (_ BitVec 32))

(assert (=> b!586318 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266075 vacantSpotIndex!68 (select (arr!17587 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266075 vacantSpotIndex!68 (select (store (arr!17587 a!2986) i!1108 k0!1786) j!136) (array!36634 (store (arr!17587 a!2986) i!1108 k0!1786) (size!17951 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18192 0))(
  ( (Unit!18193) )
))
(declare-fun lt!266073 () Unit!18192)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36633 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18192)

(assert (=> b!586318 (= lt!266073 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266075 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586318 (= lt!266075 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586319 () Bool)

(assert (=> b!586319 (= e!335174 e!335175)))

(declare-fun res!374277 () Bool)

(assert (=> b!586319 (=> (not res!374277) (not e!335175))))

(declare-fun lt!266074 () SeekEntryResult!6034)

(assert (=> b!586319 (= res!374277 (or (= lt!266074 (MissingZero!6034 i!1108)) (= lt!266074 (MissingVacant!6034 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36633 (_ BitVec 32)) SeekEntryResult!6034)

(assert (=> b!586319 (= lt!266074 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53778 res!374279) b!586312))

(assert (= (and b!586312 res!374282) b!586315))

(assert (= (and b!586315 res!374281) b!586314))

(assert (= (and b!586314 res!374276) b!586316))

(assert (= (and b!586316 res!374278) b!586319))

(assert (= (and b!586319 res!374277) b!586317))

(assert (= (and b!586317 res!374284) b!586309))

(assert (= (and b!586309 res!374280) b!586311))

(assert (= (and b!586311 res!374283) b!586310))

(assert (= (and b!586310 res!374275) b!586313))

(assert (= (and b!586313 res!374285) b!586318))

(declare-fun m!564729 () Bool)

(assert (=> b!586316 m!564729))

(declare-fun m!564731 () Bool)

(assert (=> b!586314 m!564731))

(declare-fun m!564733 () Bool)

(assert (=> b!586313 m!564733))

(declare-fun m!564735 () Bool)

(assert (=> b!586313 m!564735))

(declare-fun m!564737 () Bool)

(assert (=> b!586309 m!564737))

(declare-fun m!564739 () Bool)

(assert (=> start!53778 m!564739))

(declare-fun m!564741 () Bool)

(assert (=> start!53778 m!564741))

(declare-fun m!564743 () Bool)

(assert (=> b!586318 m!564743))

(declare-fun m!564745 () Bool)

(assert (=> b!586318 m!564745))

(assert (=> b!586318 m!564745))

(declare-fun m!564747 () Bool)

(assert (=> b!586318 m!564747))

(assert (=> b!586318 m!564735))

(declare-fun m!564749 () Bool)

(assert (=> b!586318 m!564749))

(assert (=> b!586318 m!564735))

(declare-fun m!564751 () Bool)

(assert (=> b!586318 m!564751))

(declare-fun m!564753 () Bool)

(assert (=> b!586318 m!564753))

(assert (=> b!586315 m!564735))

(assert (=> b!586315 m!564735))

(declare-fun m!564755 () Bool)

(assert (=> b!586315 m!564755))

(declare-fun m!564757 () Bool)

(assert (=> b!586319 m!564757))

(declare-fun m!564759 () Bool)

(assert (=> b!586311 m!564759))

(assert (=> b!586311 m!564749))

(declare-fun m!564761 () Bool)

(assert (=> b!586311 m!564761))

(assert (=> b!586310 m!564735))

(assert (=> b!586310 m!564735))

(declare-fun m!564763 () Bool)

(assert (=> b!586310 m!564763))

(declare-fun m!564765 () Bool)

(assert (=> b!586317 m!564765))

(check-sat (not b!586318) (not b!586314) (not b!586310) (not b!586315) (not b!586319) (not b!586317) (not b!586316) (not start!53778) (not b!586309))
(check-sat)
