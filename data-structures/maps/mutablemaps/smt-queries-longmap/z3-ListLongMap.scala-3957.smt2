; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53772 () Bool)

(assert start!53772)

(declare-fun b!586211 () Bool)

(declare-fun res!374186 () Bool)

(declare-fun e!335147 () Bool)

(assert (=> b!586211 (=> (not res!374186) (not e!335147))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!586211 (= res!374186 (validKeyInArray!0 k0!1786))))

(declare-fun b!586212 () Bool)

(declare-fun res!374180 () Bool)

(declare-fun e!335148 () Bool)

(assert (=> b!586212 (=> (not res!374180) (not e!335148))))

(declare-datatypes ((array!36627 0))(
  ( (array!36628 (arr!17584 (Array (_ BitVec 32) (_ BitVec 64))) (size!17948 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36627)

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36627 (_ BitVec 32)) Bool)

(assert (=> b!586212 (= res!374180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!586213 () Bool)

(declare-fun res!374181 () Bool)

(assert (=> b!586213 (=> (not res!374181) (not e!335148))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6031 0))(
  ( (MissingZero!6031 (index!26351 (_ BitVec 32))) (Found!6031 (index!26352 (_ BitVec 32))) (Intermediate!6031 (undefined!6843 Bool) (index!26353 (_ BitVec 32)) (x!55191 (_ BitVec 32))) (Undefined!6031) (MissingVacant!6031 (index!26354 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36627 (_ BitVec 32)) SeekEntryResult!6031)

(assert (=> b!586213 (= res!374181 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17584 a!2986) j!136) a!2986 mask!3053) (Found!6031 j!136)))))

(declare-fun b!586214 () Bool)

(assert (=> b!586214 (= e!335148 (not true))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun lt!266046 () (_ BitVec 32))

(assert (=> b!586214 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266046 vacantSpotIndex!68 (select (arr!17584 a!2986) j!136) a!2986 mask!3053) (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!266046 vacantSpotIndex!68 (select (store (arr!17584 a!2986) i!1108 k0!1786) j!136) (array!36628 (store (arr!17584 a!2986) i!1108 k0!1786) (size!17948 a!2986)) mask!3053))))

(declare-datatypes ((Unit!18186 0))(
  ( (Unit!18187) )
))
(declare-fun lt!266048 () Unit!18186)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!36627 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18186)

(assert (=> b!586214 (= lt!266048 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k0!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!266046 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!586214 (= lt!266046 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!586215 () Bool)

(declare-fun res!374176 () Bool)

(assert (=> b!586215 (=> (not res!374176) (not e!335147))))

(declare-fun arrayContainsKey!0 (array!36627 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!586215 (= res!374176 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!586216 () Bool)

(declare-fun res!374182 () Bool)

(assert (=> b!586216 (=> (not res!374182) (not e!335147))))

(assert (=> b!586216 (= res!374182 (validKeyInArray!0 (select (arr!17584 a!2986) j!136)))))

(declare-fun b!586217 () Bool)

(declare-fun res!374184 () Bool)

(assert (=> b!586217 (=> (not res!374184) (not e!335147))))

(assert (=> b!586217 (= res!374184 (and (= (size!17948 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17948 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17948 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!586218 () Bool)

(assert (=> b!586218 (= e!335147 e!335148)))

(declare-fun res!374183 () Bool)

(assert (=> b!586218 (=> (not res!374183) (not e!335148))))

(declare-fun lt!266047 () SeekEntryResult!6031)

(assert (=> b!586218 (= res!374183 (or (= lt!266047 (MissingZero!6031 i!1108)) (= lt!266047 (MissingVacant!6031 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36627 (_ BitVec 32)) SeekEntryResult!6031)

(assert (=> b!586218 (= lt!266047 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!586219 () Bool)

(declare-fun res!374185 () Bool)

(assert (=> b!586219 (=> (not res!374185) (not e!335148))))

(declare-datatypes ((List!11678 0))(
  ( (Nil!11675) (Cons!11674 (h!12719 (_ BitVec 64)) (t!17914 List!11678)) )
))
(declare-fun arrayNoDuplicates!0 (array!36627 (_ BitVec 32) List!11678) Bool)

(assert (=> b!586219 (= res!374185 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11675))))

(declare-fun b!586220 () Bool)

(declare-fun res!374179 () Bool)

(assert (=> b!586220 (=> (not res!374179) (not e!335148))))

(assert (=> b!586220 (= res!374179 (and (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!17584 a!2986) index!984) (select (arr!17584 a!2986) j!136))) (not (= (select (arr!17584 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun res!374178 () Bool)

(assert (=> start!53772 (=> (not res!374178) (not e!335147))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53772 (= res!374178 (validMask!0 mask!3053))))

(assert (=> start!53772 e!335147))

(assert (=> start!53772 true))

(declare-fun array_inv!13358 (array!36627) Bool)

(assert (=> start!53772 (array_inv!13358 a!2986)))

(declare-fun b!586210 () Bool)

(declare-fun res!374177 () Bool)

(assert (=> b!586210 (=> (not res!374177) (not e!335148))))

(assert (=> b!586210 (= res!374177 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17584 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17584 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53772 res!374178) b!586217))

(assert (= (and b!586217 res!374184) b!586216))

(assert (= (and b!586216 res!374182) b!586211))

(assert (= (and b!586211 res!374186) b!586215))

(assert (= (and b!586215 res!374176) b!586218))

(assert (= (and b!586218 res!374183) b!586212))

(assert (= (and b!586212 res!374180) b!586219))

(assert (= (and b!586219 res!374185) b!586210))

(assert (= (and b!586210 res!374177) b!586213))

(assert (= (and b!586213 res!374181) b!586220))

(assert (= (and b!586220 res!374179) b!586214))

(declare-fun m!564615 () Bool)

(assert (=> b!586210 m!564615))

(declare-fun m!564617 () Bool)

(assert (=> b!586210 m!564617))

(declare-fun m!564619 () Bool)

(assert (=> b!586210 m!564619))

(declare-fun m!564621 () Bool)

(assert (=> b!586211 m!564621))

(declare-fun m!564623 () Bool)

(assert (=> b!586220 m!564623))

(declare-fun m!564625 () Bool)

(assert (=> b!586220 m!564625))

(declare-fun m!564627 () Bool)

(assert (=> b!586218 m!564627))

(declare-fun m!564629 () Bool)

(assert (=> b!586214 m!564629))

(assert (=> b!586214 m!564625))

(assert (=> b!586214 m!564617))

(declare-fun m!564631 () Bool)

(assert (=> b!586214 m!564631))

(assert (=> b!586214 m!564625))

(declare-fun m!564633 () Bool)

(assert (=> b!586214 m!564633))

(declare-fun m!564635 () Bool)

(assert (=> b!586214 m!564635))

(declare-fun m!564637 () Bool)

(assert (=> b!586214 m!564637))

(assert (=> b!586214 m!564635))

(assert (=> b!586213 m!564625))

(assert (=> b!586213 m!564625))

(declare-fun m!564639 () Bool)

(assert (=> b!586213 m!564639))

(declare-fun m!564641 () Bool)

(assert (=> b!586219 m!564641))

(assert (=> b!586216 m!564625))

(assert (=> b!586216 m!564625))

(declare-fun m!564643 () Bool)

(assert (=> b!586216 m!564643))

(declare-fun m!564645 () Bool)

(assert (=> b!586215 m!564645))

(declare-fun m!564647 () Bool)

(assert (=> b!586212 m!564647))

(declare-fun m!564649 () Bool)

(assert (=> start!53772 m!564649))

(declare-fun m!564651 () Bool)

(assert (=> start!53772 m!564651))

(check-sat (not start!53772) (not b!586213) (not b!586215) (not b!586216) (not b!586214) (not b!586212) (not b!586211) (not b!586219) (not b!586218))
(check-sat)
