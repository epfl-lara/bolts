; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53712 () Bool)

(assert start!53712)

(declare-fun b!585207 () Bool)

(declare-fun res!373175 () Bool)

(declare-fun e!334865 () Bool)

(assert (=> b!585207 (=> (not res!373175) (not e!334865))))

(declare-datatypes ((array!36567 0))(
  ( (array!36568 (arr!17554 (Array (_ BitVec 32) (_ BitVec 64))) (size!17918 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36567)

(declare-datatypes ((List!11648 0))(
  ( (Nil!11645) (Cons!11644 (h!12689 (_ BitVec 64)) (t!17884 List!11648)) )
))
(declare-fun arrayNoDuplicates!0 (array!36567 (_ BitVec 32) List!11648) Bool)

(assert (=> b!585207 (= res!373175 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11645))))

(declare-fun b!585208 () Bool)

(declare-fun res!373178 () Bool)

(assert (=> b!585208 (=> (not res!373178) (not e!334865))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!585208 (= res!373178 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17554 a!2986) index!984) (select (arr!17554 a!2986) j!136))) (not (= (select (arr!17554 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun b!585209 () Bool)

(declare-fun e!334866 () Bool)

(assert (=> b!585209 (= e!334865 e!334866)))

(declare-fun res!373177 () Bool)

(assert (=> b!585209 (=> (not res!373177) (not e!334866))))

(declare-fun lt!265777 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(assert (=> b!585209 (= res!373177 (and (bvsge lt!265777 #b00000000000000000000000000000000) (bvslt lt!265777 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge (bvadd #b00000000000000000000000000000001 x!910) #b00000000000000000000000000000000)))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!585209 (= lt!265777 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!585210 () Bool)

(declare-fun res!373173 () Bool)

(declare-fun e!334867 () Bool)

(assert (=> b!585210 (=> (not res!373173) (not e!334867))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36567 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!585210 (= res!373173 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!585211 () Bool)

(declare-fun res!373180 () Bool)

(assert (=> b!585211 (=> (not res!373180) (not e!334867))))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!585211 (= res!373180 (and (= (size!17918 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17918 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17918 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!585212 () Bool)

(declare-fun res!373184 () Bool)

(assert (=> b!585212 (=> (not res!373184) (not e!334865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36567 (_ BitVec 32)) Bool)

(assert (=> b!585212 (= res!373184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!585213 () Bool)

(declare-fun res!373179 () Bool)

(assert (=> b!585213 (=> (not res!373179) (not e!334865))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6001 0))(
  ( (MissingZero!6001 (index!26231 (_ BitVec 32))) (Found!6001 (index!26232 (_ BitVec 32))) (Intermediate!6001 (undefined!6813 Bool) (index!26233 (_ BitVec 32)) (x!55081 (_ BitVec 32))) (Undefined!6001) (MissingVacant!6001 (index!26234 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36567 (_ BitVec 32)) SeekEntryResult!6001)

(assert (=> b!585213 (= res!373179 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17554 a!2986) j!136) a!2986 mask!3053) (Found!6001 j!136)))))

(declare-fun res!373181 () Bool)

(assert (=> start!53712 (=> (not res!373181) (not e!334867))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53712 (= res!373181 (validMask!0 mask!3053))))

(assert (=> start!53712 e!334867))

(assert (=> start!53712 true))

(declare-fun array_inv!13328 (array!36567) Bool)

(assert (=> start!53712 (array_inv!13328 a!2986)))

(declare-fun b!585214 () Bool)

(declare-fun res!373174 () Bool)

(assert (=> b!585214 (=> (not res!373174) (not e!334867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!585214 (= res!373174 (validKeyInArray!0 k0!1786))))

(declare-fun b!585215 () Bool)

(assert (=> b!585215 (= e!334866 false)))

(declare-fun lt!265776 () SeekEntryResult!6001)

(assert (=> b!585215 (= lt!265776 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!265777 vacantSpotIndex!68 (select (arr!17554 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!585216 () Bool)

(assert (=> b!585216 (= e!334867 e!334865)))

(declare-fun res!373182 () Bool)

(assert (=> b!585216 (=> (not res!373182) (not e!334865))))

(declare-fun lt!265778 () SeekEntryResult!6001)

(assert (=> b!585216 (= res!373182 (or (= lt!265778 (MissingZero!6001 i!1108)) (= lt!265778 (MissingVacant!6001 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36567 (_ BitVec 32)) SeekEntryResult!6001)

(assert (=> b!585216 (= lt!265778 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!585217 () Bool)

(declare-fun res!373176 () Bool)

(assert (=> b!585217 (=> (not res!373176) (not e!334867))))

(assert (=> b!585217 (= res!373176 (validKeyInArray!0 (select (arr!17554 a!2986) j!136)))))

(declare-fun b!585218 () Bool)

(declare-fun res!373183 () Bool)

(assert (=> b!585218 (=> (not res!373183) (not e!334865))))

(assert (=> b!585218 (= res!373183 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17554 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17554 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53712 res!373181) b!585211))

(assert (= (and b!585211 res!373180) b!585217))

(assert (= (and b!585217 res!373176) b!585214))

(assert (= (and b!585214 res!373174) b!585210))

(assert (= (and b!585210 res!373173) b!585216))

(assert (= (and b!585216 res!373182) b!585212))

(assert (= (and b!585212 res!373184) b!585207))

(assert (= (and b!585207 res!373175) b!585218))

(assert (= (and b!585218 res!373183) b!585213))

(assert (= (and b!585213 res!373179) b!585208))

(assert (= (and b!585208 res!373178) b!585209))

(assert (= (and b!585209 res!373177) b!585215))

(declare-fun m!563505 () Bool)

(assert (=> b!585209 m!563505))

(declare-fun m!563507 () Bool)

(assert (=> b!585216 m!563507))

(declare-fun m!563509 () Bool)

(assert (=> b!585217 m!563509))

(assert (=> b!585217 m!563509))

(declare-fun m!563511 () Bool)

(assert (=> b!585217 m!563511))

(declare-fun m!563513 () Bool)

(assert (=> b!585210 m!563513))

(declare-fun m!563515 () Bool)

(assert (=> b!585212 m!563515))

(declare-fun m!563517 () Bool)

(assert (=> b!585218 m!563517))

(declare-fun m!563519 () Bool)

(assert (=> b!585218 m!563519))

(declare-fun m!563521 () Bool)

(assert (=> b!585218 m!563521))

(declare-fun m!563523 () Bool)

(assert (=> b!585214 m!563523))

(declare-fun m!563525 () Bool)

(assert (=> b!585207 m!563525))

(assert (=> b!585215 m!563509))

(assert (=> b!585215 m!563509))

(declare-fun m!563527 () Bool)

(assert (=> b!585215 m!563527))

(declare-fun m!563529 () Bool)

(assert (=> start!53712 m!563529))

(declare-fun m!563531 () Bool)

(assert (=> start!53712 m!563531))

(assert (=> b!585213 m!563509))

(assert (=> b!585213 m!563509))

(declare-fun m!563533 () Bool)

(assert (=> b!585213 m!563533))

(declare-fun m!563535 () Bool)

(assert (=> b!585208 m!563535))

(assert (=> b!585208 m!563509))

(check-sat (not b!585215) (not b!585217) (not b!585210) (not b!585212) (not start!53712) (not b!585214) (not b!585209) (not b!585216) (not b!585213) (not b!585207))
(check-sat)
