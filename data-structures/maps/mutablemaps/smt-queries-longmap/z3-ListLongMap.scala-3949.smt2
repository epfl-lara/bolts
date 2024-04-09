; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53724 () Bool)

(assert start!53724)

(declare-fun b!585418 () Bool)

(declare-fun res!373385 () Bool)

(declare-fun e!334933 () Bool)

(assert (=> b!585418 (=> (not res!373385) (not e!334933))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(declare-datatypes ((array!36579 0))(
  ( (array!36580 (arr!17560 (Array (_ BitVec 32) (_ BitVec 64))) (size!17924 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36579)

(assert (=> b!585418 (= res!373385 (and (= (size!17924 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17924 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17924 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585419 () Bool)

(declare-fun res!373394 () Bool)

(declare-fun e!334931 () Bool)

(assert (=> b!585419 (=> (not res!373394) (not e!334931))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36579 (_ BitVec 32)) Bool)

(assert (=> b!585419 (= res!373394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585420 () Bool)

(declare-fun res!373393 () Bool)

(assert (=> b!585420 (=> (not res!373393) (not e!334933))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585420 (= res!373393 (validKeyInArray!0 k0!1786))))

(declare-fun b!585421 () Bool)

(declare-fun res!373387 () Bool)

(assert (=> b!585421 (=> (not res!373387) (not e!334931))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6007 0))(
  ( (MissingZero!6007 (index!26255 (_ BitVec 32))) (Found!6007 (index!26256 (_ BitVec 32))) (Intermediate!6007 (undefined!6819 Bool) (index!26257 (_ BitVec 32)) (x!55103 (_ BitVec 32))) (Undefined!6007) (MissingVacant!6007 (index!26258 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36579 (_ BitVec 32)) SeekEntryResult!6007)

(assert (=> b!585421 (= res!373387 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17560 a!2986) j!136) a!2986 mask!3053) (Found!6007 j!136)))))

(declare-fun b!585422 () Bool)

(declare-fun res!373388 () Bool)

(assert (=> b!585422 (=> (not res!373388) (not e!334931))))

(assert (=> b!585422 (= res!373388 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17560 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17560 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!585423 () Bool)

(declare-fun res!373384 () Bool)

(assert (=> b!585423 (=> (not res!373384) (not e!334933))))

(declare-fun arrayContainsKey!0 (array!36579 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585423 (= res!373384 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun res!373390 () Bool)

(assert (=> start!53724 (=> (not res!373390) (not e!334933))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53724 (= res!373390 (validMask!0 mask!3053))))

(assert (=> start!53724 e!334933))

(assert (=> start!53724 true))

(declare-fun array_inv!13334 (array!36579) Bool)

(assert (=> start!53724 (array_inv!13334 a!2986)))

(declare-fun b!585424 () Bool)

(declare-fun res!373386 () Bool)

(assert (=> b!585424 (=> (not res!373386) (not e!334933))))

(assert (=> b!585424 (= res!373386 (validKeyInArray!0 (select (arr!17560 a!2986) j!136)))))

(declare-fun b!585425 () Bool)

(declare-fun res!373392 () Bool)

(assert (=> b!585425 (=> (not res!373392) (not e!334931))))

(declare-datatypes ((List!11654 0))(
  ( (Nil!11651) (Cons!11650 (h!12695 (_ BitVec 64)) (t!17890 List!11654)) )
))
(declare-fun arrayNoDuplicates!0 (array!36579 (_ BitVec 32) List!11654) Bool)

(assert (=> b!585425 (= res!373392 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11651))))

(declare-fun b!585426 () Bool)

(assert (=> b!585426 (= e!334931 (not true))))

(declare-fun lt!265831 () (_ BitVec 32))

(assert (=> b!585426 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265831 vacantSpotIndex!68 (select (arr!17560 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265831 vacantSpotIndex!68 (select (store (arr!17560 a!2986) i!1108 k0!1786) j!136) (array!36580 (store (arr!17560 a!2986) i!1108 k0!1786) (size!17924 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18138 0))(
  ( (Unit!18139) )
))
(declare-fun lt!265832 () Unit!18138)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36579 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18138)

(assert (=> b!585426 (= lt!265832 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!265831 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585426 (= lt!265831 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585427 () Bool)

(declare-fun res!373391 () Bool)

(assert (=> b!585427 (=> (not res!373391) (not e!334931))))

(assert (=> b!585427 (= res!373391 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17560 a!2986) index!984) (select (arr!17560 a!2986) j!136))) (not (= (select (arr!17560 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585428 () Bool)

(assert (=> b!585428 (= e!334933 e!334931)))

(declare-fun res!373389 () Bool)

(assert (=> b!585428 (=> (not res!373389) (not e!334931))))

(declare-fun lt!265830 () SeekEntryResult!6007)

(assert (=> b!585428 (= res!373389 (or (= lt!265830 (MissingZero!6007 i!1108)) (= lt!265830 (MissingVacant!6007 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36579 (_ BitVec 32)) SeekEntryResult!6007)

(assert (=> b!585428 (= lt!265830 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(assert (= (and start!53724 res!373390) b!585418))

(assert (= (and b!585418 res!373385) b!585424))

(assert (= (and b!585424 res!373386) b!585420))

(assert (= (and b!585420 res!373393) b!585423))

(assert (= (and b!585423 res!373384) b!585428))

(assert (= (and b!585428 res!373389) b!585419))

(assert (= (and b!585419 res!373394) b!585425))

(assert (= (and b!585425 res!373392) b!585422))

(assert (= (and b!585422 res!373388) b!585421))

(assert (= (and b!585421 res!373387) b!585427))

(assert (= (and b!585427 res!373391) b!585426))

(declare-fun m!563703 () Bool)

(assert (=> b!585428 m!563703))

(declare-fun m!563705 () Bool)

(assert (=> b!585424 m!563705))

(assert (=> b!585424 m!563705))

(declare-fun m!563707 () Bool)

(assert (=> b!585424 m!563707))

(declare-fun m!563709 () Bool)

(assert (=> b!585420 m!563709))

(declare-fun m!563711 () Bool)

(assert (=> b!585423 m!563711))

(declare-fun m!563713 () Bool)

(assert (=> b!585419 m!563713))

(assert (=> b!585421 m!563705))

(assert (=> b!585421 m!563705))

(declare-fun m!563715 () Bool)

(assert (=> b!585421 m!563715))

(declare-fun m!563717 () Bool)

(assert (=> b!585422 m!563717))

(declare-fun m!563719 () Bool)

(assert (=> b!585422 m!563719))

(declare-fun m!563721 () Bool)

(assert (=> b!585422 m!563721))

(declare-fun m!563723 () Bool)

(assert (=> b!585425 m!563723))

(declare-fun m!563725 () Bool)

(assert (=> b!585426 m!563725))

(declare-fun m!563727 () Bool)

(assert (=> b!585426 m!563727))

(assert (=> b!585426 m!563705))

(assert (=> b!585426 m!563719))

(declare-fun m!563729 () Bool)

(assert (=> b!585426 m!563729))

(assert (=> b!585426 m!563705))

(declare-fun m!563731 () Bool)

(assert (=> b!585426 m!563731))

(assert (=> b!585426 m!563727))

(declare-fun m!563733 () Bool)

(assert (=> b!585426 m!563733))

(declare-fun m!563735 () Bool)

(assert (=> start!53724 m!563735))

(declare-fun m!563737 () Bool)

(assert (=> start!53724 m!563737))

(declare-fun m!563739 () Bool)

(assert (=> b!585427 m!563739))

(assert (=> b!585427 m!563705))

(check-sat (not b!585425) (not b!585424) (not b!585420) (not b!585423) (not b!585428) (not b!585426) (not start!53724) (not b!585421) (not b!585419))
(check-sat)
