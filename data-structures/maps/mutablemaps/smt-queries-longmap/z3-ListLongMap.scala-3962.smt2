; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53802 () Bool)

(assert start!53802)

(declare-fun res!374672 () Bool)

(declare-fun e!335282 () Bool)

(assert (=> start!53802 (=> (not res!374672) (not e!335282))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53802 (= res!374672 (validMask!0 mask!3053))))

(assert (=> start!53802 e!335282))

(assert (=> start!53802 true))

(declare-datatypes ((array!36657 0))(
  ( (array!36658 (arr!17599 (Array (_ BitVec 32) (_ BitVec 64))) (size!17963 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36657)

(declare-fun array_inv!13373 (array!36657) Bool)

(assert (=> start!53802 (array_inv!13373 a!2986)))

(declare-fun b!586705 () Bool)

(declare-fun res!374671 () Bool)

(declare-fun e!335284 () Bool)

(assert (=> b!586705 (=> (not res!374671) (not e!335284))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!586705 (= res!374671 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17599 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17599 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!586706 () Bool)

(assert (=> b!586706 (= e!335282 e!335284)))

(declare-fun res!374678 () Bool)

(assert (=> b!586706 (=> (not res!374678) (not e!335284))))

(declare-datatypes ((SeekEntryResult!6046 0))(
  ( (MissingZero!6046 (index!26411 (_ BitVec 32))) (Found!6046 (index!26412 (_ BitVec 32))) (Intermediate!6046 (undefined!6858 Bool) (index!26413 (_ BitVec 32)) (x!55246 (_ BitVec 32))) (Undefined!6046) (MissingVacant!6046 (index!26414 (_ BitVec 32))) )
))
(declare-fun lt!266183 () SeekEntryResult!6046)

(assert (=> b!586706 (= res!374678 (or (= lt!266183 (MissingZero!6046 i!1108)) (= lt!266183 (MissingVacant!6046 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36657 (_ BitVec 32)) SeekEntryResult!6046)

(assert (=> b!586706 (= lt!266183 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!586707 () Bool)

(declare-fun res!374676 () Bool)

(assert (=> b!586707 (=> (not res!374676) (not e!335282))))

(declare-fun arrayContainsKey!0 (array!36657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586707 (= res!374676 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586708 () Bool)

(declare-fun res!374677 () Bool)

(assert (=> b!586708 (=> (not res!374677) (not e!335282))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586708 (= res!374677 (validKeyInArray!0 (select (arr!17599 a!2986) j!136)))))

(declare-fun b!586709 () Bool)

(declare-fun res!374680 () Bool)

(assert (=> b!586709 (=> (not res!374680) (not e!335284))))

(declare-datatypes ((List!11693 0))(
  ( (Nil!11690) (Cons!11689 (h!12734 (_ BitVec 64)) (t!17929 List!11693)) )
))
(declare-fun arrayNoDuplicates!0 (array!36657 (_ BitVec 32) List!11693) Bool)

(assert (=> b!586709 (= res!374680 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11690))))

(declare-fun b!586710 () Bool)

(declare-fun res!374679 () Bool)

(assert (=> b!586710 (=> (not res!374679) (not e!335284))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36657 (_ BitVec 32)) SeekEntryResult!6046)

(assert (=> b!586710 (= res!374679 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17599 a!2986) j!136) a!2986 mask!3053) (Found!6046 j!136)))))

(declare-fun b!586711 () Bool)

(declare-fun res!374675 () Bool)

(assert (=> b!586711 (=> (not res!374675) (not e!335284))))

(assert (=> b!586711 (= res!374675 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17599 a!2986) index!984) (select (arr!17599 a!2986) j!136))) (not (= (select (arr!17599 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!586712 () Bool)

(declare-fun res!374673 () Bool)

(assert (=> b!586712 (=> (not res!374673) (not e!335282))))

(assert (=> b!586712 (= res!374673 (and (= (size!17963 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17963 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17963 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586713 () Bool)

(declare-fun res!374674 () Bool)

(assert (=> b!586713 (=> (not res!374674) (not e!335284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36657 (_ BitVec 32)) Bool)

(assert (=> b!586713 (= res!374674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586714 () Bool)

(declare-fun res!374681 () Bool)

(assert (=> b!586714 (=> (not res!374681) (not e!335282))))

(assert (=> b!586714 (= res!374681 (validKeyInArray!0 k0!1786))))

(declare-fun b!586715 () Bool)

(assert (=> b!586715 (= e!335284 (not (bvsge mask!3053 #b00000000000000000000000000000000)))))

(declare-fun lt!266182 () (_ BitVec 32))

(assert (=> b!586715 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266182 vacantSpotIndex!68 (select (arr!17599 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266182 vacantSpotIndex!68 (select (store (arr!17599 a!2986) i!1108 k0!1786) j!136) (array!36658 (store (arr!17599 a!2986) i!1108 k0!1786) (size!17963 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18216 0))(
  ( (Unit!18217) )
))
(declare-fun lt!266181 () Unit!18216)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36657 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18216)

(assert (=> b!586715 (= lt!266181 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266182 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586715 (= lt!266182 (nextIndex!0 index!984 x!910 mask!3053))))

(assert (= (and start!53802 res!374672) b!586712))

(assert (= (and b!586712 res!374673) b!586708))

(assert (= (and b!586708 res!374677) b!586714))

(assert (= (and b!586714 res!374681) b!586707))

(assert (= (and b!586707 res!374676) b!586706))

(assert (= (and b!586706 res!374678) b!586713))

(assert (= (and b!586713 res!374674) b!586709))

(assert (= (and b!586709 res!374680) b!586705))

(assert (= (and b!586705 res!374671) b!586710))

(assert (= (and b!586710 res!374679) b!586711))

(assert (= (and b!586711 res!374675) b!586715))

(declare-fun m!565185 () Bool)

(assert (=> b!586710 m!565185))

(assert (=> b!586710 m!565185))

(declare-fun m!565187 () Bool)

(assert (=> b!586710 m!565187))

(declare-fun m!565189 () Bool)

(assert (=> b!586705 m!565189))

(declare-fun m!565191 () Bool)

(assert (=> b!586705 m!565191))

(declare-fun m!565193 () Bool)

(assert (=> b!586705 m!565193))

(assert (=> b!586708 m!565185))

(assert (=> b!586708 m!565185))

(declare-fun m!565195 () Bool)

(assert (=> b!586708 m!565195))

(declare-fun m!565197 () Bool)

(assert (=> b!586713 m!565197))

(declare-fun m!565199 () Bool)

(assert (=> b!586706 m!565199))

(declare-fun m!565201 () Bool)

(assert (=> start!53802 m!565201))

(declare-fun m!565203 () Bool)

(assert (=> start!53802 m!565203))

(declare-fun m!565205 () Bool)

(assert (=> b!586709 m!565205))

(declare-fun m!565207 () Bool)

(assert (=> b!586714 m!565207))

(declare-fun m!565209 () Bool)

(assert (=> b!586711 m!565209))

(assert (=> b!586711 m!565185))

(declare-fun m!565211 () Bool)

(assert (=> b!586715 m!565211))

(declare-fun m!565213 () Bool)

(assert (=> b!586715 m!565213))

(assert (=> b!586715 m!565185))

(assert (=> b!586715 m!565191))

(assert (=> b!586715 m!565213))

(declare-fun m!565215 () Bool)

(assert (=> b!586715 m!565215))

(declare-fun m!565217 () Bool)

(assert (=> b!586715 m!565217))

(assert (=> b!586715 m!565185))

(declare-fun m!565219 () Bool)

(assert (=> b!586715 m!565219))

(declare-fun m!565221 () Bool)

(assert (=> b!586707 m!565221))

(check-sat (not b!586714) (not b!586707) (not b!586708) (not start!53802) (not b!586710) (not b!586709) (not b!586715) (not b!586713) (not b!586706))
(check-sat)
